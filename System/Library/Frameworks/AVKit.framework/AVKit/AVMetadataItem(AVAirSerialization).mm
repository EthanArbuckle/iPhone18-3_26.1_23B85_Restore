@interface AVMetadataItem(AVAirSerialization)
+ (id)airRepresentationForArray:()AVAirSerialization;
+ (id)itemArrayWithAirRepresentations:()AVAirSerialization;
+ (id)itemWithAirDictionaryRepresentation:()AVAirSerialization;
- (id)airDictionaryRepresentation;
@end

@implementation AVMetadataItem(AVAirSerialization)

- (id)airDictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [self identifier];
  [v2 setObject:identifier forKeyedSubscript:@"identifier"];

  extendedLanguageTag = [self extendedLanguageTag];
  [v2 setObject:extendedLanguageTag forKeyedSubscript:@"extendedLanguageTag"];

  locale = [self locale];
  localeIdentifier = [locale localeIdentifier];
  [v2 setObject:localeIdentifier forKeyedSubscript:@"localeIdentifier"];

  [self time];
  if (v43)
  {
    v7 = MEMORY[0x1E696AD98];
    [self time];
    v8 = [v7 numberWithDouble:CMTimeGetSeconds(&time)];
    [v2 setObject:v8 forKeyedSubscript:@"time"];
  }

  [self duration];
  if (v42)
  {
    v9 = MEMORY[0x1E696AD98];
    [self duration];
    v10 = [v9 numberWithDouble:CMTimeGetSeconds(&time)];
    [v2 setObject:v10 forKeyedSubscript:@"duration"];
  }

  dataType = [self dataType];
  [v2 setObject:dataType forKeyedSubscript:@"dataType"];

  if (![self statusOfValueForKey:@"value" error:0])
  {
    v12 = _avairlog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time.value) = 136315394;
      *(&time.value + 4) = "[AVMetadataItem(AVAirSerialization) airDictionaryRepresentation]";
      LOWORD(time.flags) = 2112;
      *(&time.flags + 2) = self;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s ** WARNING: the value of this metadata item %@ has not yet been loaded; we're about to force it", &time, 0x16u);
    }
  }

  value = [self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [value base64EncodedStringWithOptions:32];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"b64:%@", v14];

    value = v15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = +[AVInternetDateFormatter internetDateFormatter];
    v17 = [v16 stringFromDate:value];

    value = v17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [self stringValue];

    value = stringValue;
  }

  v37 = value;
  [v2 setObject:value forKeyedSubscript:@"value"];
  startDate = [self startDate];

  if (startDate)
  {
    v20 = +[AVInternetDateFormatter internetDateFormatter];
    startDate2 = [self startDate];
    v22 = [v20 stringFromDate:startDate2];
    [v2 setObject:v22 forKeyedSubscript:@"startDate"];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  extraAttributes = [self extraAttributes];
  allKeys = [extraAttributes allKeys];

  v25 = [allKeys countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(allKeys);
        }

        v29 = *(*(&v38 + 1) + 8 * i);
        extraAttributes3 = [v2 objectForKeyedSubscript:v29];
        if (!extraAttributes3)
        {
          extraAttributes2 = [self extraAttributes];
          [extraAttributes2 objectForKeyedSubscript:v29];
          v33 = v32 = self;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          self = v32;
          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          extraAttributes3 = [v32 extraAttributes];
          v35 = [extraAttributes3 objectForKeyedSubscript:v29];
          [v2 setObject:v35 forKeyedSubscript:v29];

          self = v32;
        }
      }

      v26 = [allKeys countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v26);
  }

  return v2;
}

+ (id)itemArrayWithAirRepresentations:()AVAirSerialization
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self itemWithAirDictionaryRepresentation:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)airRepresentationForArray:()AVAirSerialization
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          airDictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) airDictionaryRepresentation];
          if (airDictionaryRepresentation)
          {
            [v4 addObject:airDictionaryRepresentation];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)itemWithAirDictionaryRepresentation:()AVAirSerialization
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E6988050]);
  v5 = [v3 objectForKeyedSubscript:@"identifier"];

  if (!v5)
  {
    v8 = _avairlog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "+[AVMetadataItem(AVAirSerialization) itemWithAirDictionaryRepresentation:]";
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s ** AVMetadataItem representation has no identifier!", &buf, 0xCu);
    }

    goto LABEL_43;
  }

  v6 = [v3 objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 objectForKeyedSubscript:@"identifier"];
    [v4 setIdentifier:v7];
  }

  else
  {
    [v4 setIdentifier:0];
  }

  v9 = [v3 objectForKeyedSubscript:@"extendedLanguageTag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v3 objectForKeyedSubscript:@"extendedLanguageTag"];
    [v4 setExtendedLanguageTag:v10];
  }

  else
  {
    [v4 setExtendedLanguageTag:0];
  }

  v11 = [v3 objectForKeyedSubscript:@"localeIdentifier"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"localeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v3 objectForKeyedSubscript:@"localeIdentifier"];

      if (v13)
      {
        v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {

      v14 = 0;
      v13 = 0;
    }

    [v4 setLocale:v14];
  }

  v15 = [v3 objectForKeyedSubscript:@"time"];

  if (v15)
  {
    v16 = [v3 objectForKeyedSubscript:@"time"];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v3 objectForKeyedSubscript:@"time"];
      [v17 doubleValue];
      v19 = v18;

      if (v19 >= 0.0)
      {
        CMTimeMakeWithSeconds(&buf, v19, 1000);
        [v4 setTime:&buf];
      }
    }

    else
    {
    }
  }

  v20 = [v3 objectForKeyedSubscript:@"duration"];

  if (v20)
  {
    v21 = [v3 objectForKeyedSubscript:@"duration"];
    if (objc_opt_respondsToSelector())
    {
      v22 = [v3 objectForKeyedSubscript:@"duration"];
      [v22 doubleValue];
      v24 = v23;

      if (v24 > 0.0)
      {
        CMTimeMakeWithSeconds(&buf, v24, 1000);
        [v4 setDuration:&buf];
      }
    }

    else
    {
    }
  }

  v25 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  v26 = [v3 objectForKeyedSubscript:@"value"];
  v27 = [v26 hasPrefix:@"b64:"];

  if (!v27)
  {
    goto LABEL_37;
  }

  identifier = [v4 identifier];
  if (([identifier isEqualToString:*MEMORY[0x1E6987628]] & 1) == 0)
  {
    identifier2 = [v4 identifier];
    if (([identifier2 isEqualToString:*MEMORY[0x1E6987780]] & 1) == 0)
    {
      identifier3 = [v4 identifier];
      if (![identifier3 isEqualToString:*MEMORY[0x1E6987800]])
      {
        identifier4 = [v4 identifier];
        v58 = [identifier4 isEqualToString:*MEMORY[0x1E6987758]];

        if ((v58 & 1) == 0)
        {
          v8 = _avairlog();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_43;
          }

          identifier5 = [v4 identifier];
          LODWORD(buf.value) = 136315394;
          *(&buf.value + 4) = "+[AVMetadataItem(AVAirSerialization) itemWithAirDictionaryRepresentation:]";
          LOWORD(buf.flags) = 2114;
          *(&buf.flags + 2) = identifier5;
          v37 = "%s The value passed for '%{public}@' is raw data, but we do not expect it. Discarding.";
          goto LABEL_42;
        }

        goto LABEL_35;
      }
    }
  }

LABEL_35:
  v31 = [v3 objectForKeyedSubscript:@"value"];
  v25 = [v31 substringFromIndex:4];

  v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v25 options:0];
  [v4 setValue:v32];

LABEL_36:
LABEL_37:
  v33 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_40:
    v8 = _avairlog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:
      v38 = 0;
      goto LABEL_44;
    }

    identifier5 = [v4 identifier];
    LODWORD(buf.value) = 136315394;
    *(&buf.value + 4) = "+[AVMetadataItem(AVAirSerialization) itemWithAirDictionaryRepresentation:]";
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = identifier5;
    v37 = "%s Metadata values should not be arrays/dictionaries. Lookin' at you, '%@'.";
LABEL_42:
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, v37, &buf, 0x16u);

    goto LABEL_43;
  }

  v34 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_40;
  }

  value = [v4 value];

  if (!value)
  {
    v41 = [v3 objectForKeyedSubscript:@"value"];
    [v4 setValue:v41];
  }

  v42 = [v3 objectForKeyedSubscript:@"startDate"];

  if (v42)
  {
    v43 = [v3 objectForKeyedSubscript:@"startDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [v3 objectForKeyedSubscript:@"startDate"];
    }

    else
    {
      v44 = 0;
    }

    v45 = +[AVInternetDateFormatter internetDateFormatter];
    v46 = [v45 dateFromString:v44];

    [v4 setStartDate:v46];
  }

  v59 = v4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v47 = *MEMORY[0x1E69876C0];
  v64[0] = *MEMORY[0x1E69876D8];
  v64[1] = v47;
  v64[2] = *MEMORY[0x1E69876E8];
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  v49 = [v48 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v61;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v61 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v60 + 1) + 8 * i);
        v54 = [v3 objectForKeyedSubscript:v53];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = [v3 objectForKeyedSubscript:v53];
          [v8 setObject:v55 forKeyedSubscript:v53];
        }

        else
        {
          [v8 setObject:0 forKeyedSubscript:v53];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v50);
  }

  v4 = v59;
  if ([v8 count])
  {
    v56 = [v8 copy];
    [v59 setExtraAttributes:v56];
  }

  v38 = v59;
LABEL_44:

  return v38;
}

@end