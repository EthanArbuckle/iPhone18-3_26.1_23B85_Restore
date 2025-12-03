@interface NSString(INJSONSerialization)
+ (INDeferredLocalizedString)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSString(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  if (selfCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _formatKey = [selfCopy _formatKey];
    [v9 if_setObjectIfNonNil:_formatKey forKey:@"formatKey"];

    _table = [selfCopy _table];
    [v9 if_setObjectIfNonNil:_table forKey:@"table"];

    _bundleIdentifier = [selfCopy _bundleIdentifier];
    [v9 if_setObjectIfNonNil:_bundleIdentifier forKey:@"bundleIdentifier"];

    _bundleURL = [selfCopy _bundleURL];
    v14 = [v6 encodeObject:_bundleURL];
    [v9 if_setObjectIfNonNil:v14 forKey:@"bundleURL"];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    _arguments = [selfCopy _arguments];
    v17 = [_arguments countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(_arguments);
          }

          v21 = [v6 encodeObject:*(*(&v31 + 1) + 8 * i)];
          [v15 if_addObjectIfNonNil:v21];
        }

        v18 = [_arguments countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }

    if (![v15 count])
    {

      v15 = 0;
    }

    v22 = [v15 copy];

    [v9 if_setObjectIfNonNil:v22 forKey:@"arguments"];
    _storedConfiguration = [v6 _storedConfiguration];
    languageCode = [_storedConfiguration languageCode];

    if (languageCode)
    {
      configuration = [v6 configuration];
      languageCode2 = [configuration languageCode];
      v27 = [selfCopy localizeForLanguage:languageCode2];
      [v9 if_setObjectIfNonNil:v27 forKey:@"localizedValue"];
    }

    v28 = [v9 copy];
  }

  else
  {

    v28 = selfCopy;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (INDeferredLocalizedString)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 objectForKeyedSubscript:@"formatKey"];
    v11 = [v9 objectForKeyedSubscript:@"table"];
    v12 = [v9 objectForKeyedSubscript:@"bundleIdentifier"];
    v13 = objc_opt_class();
    v14 = [v9 objectForKeyedSubscript:@"bundleURL"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = [v9 objectForKeyedSubscript:@"arguments"];
    v32 = v11;
    v33 = v10;
    v31 = v12;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = v18;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [v7 decodeObjectOfClass:objc_opt_class() from:*(*(&v34 + 1) + 8 * i)];
          [v16 if_addObjectIfNonNil:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v23);
    }

    if (v33)
    {
      v28 = v31;
      v27 = v32;
      v19 = [[INDeferredLocalizedString alloc] initWithDeferredFormat:v33 fromTable:v32 bundleIdentifier:v31 bundleURL:v15 arguments:v16];
    }

    else
    {
      v19 = 0;
      v28 = v31;
      v27 = v32;
    }
  }

  else
  {

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v9;
    }

    else
    {
      v19 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v19;
}

@end