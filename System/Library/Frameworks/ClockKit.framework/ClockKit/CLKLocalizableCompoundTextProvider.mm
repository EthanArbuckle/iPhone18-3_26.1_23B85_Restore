@interface CLKLocalizableCompoundTextProvider
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CLKLocalizableCompoundTextProvider)initWithCoder:(id)coder;
- (CLKLocalizableCompoundTextProvider)initWithFormatKey:(id)key textProviders:(id)providers;
- (id)JSONObjectRepresentation;
- (id)_arrayOfTextProviderJSONObjectRepresentations;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_localizedStringForKey:(id)key withBundle:(id)bundle forLocalization:(id)localization;
- (id)_localizedTextProviderWithBundle:(id)bundle forLocalization:(id)localization;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKLocalizableCompoundTextProvider

- (CLKLocalizableCompoundTextProvider)initWithFormatKey:(id)key textProviders:(id)providers
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  providersCopy = providers;
  v25.receiver = self;
  v25.super_class = CLKLocalizableCompoundTextProvider;
  initPrivate = [(CLKTextProvider *)&v25 initPrivate];
  if (initPrivate)
  {
    v9 = [keyCopy copy];
    formatKey = initPrivate->_formatKey;
    initPrivate->_formatKey = v9;

    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = providersCopy;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          finalizedCopy = [*(*(&v21 + 1) + 8 * v16) finalizedCopy];
          [array addObject:finalizedCopy];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = [array copy];
    textProviders = initPrivate->_textProviders;
    initPrivate->_textProviders = v18;
  }

  return initPrivate;
}

- (id)_localizedStringForKey:(id)key withBundle:(id)bundle forLocalization:(id)localization
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  bundleCopy = bundle;
  localizationCopy = localization;
  v10 = localizationCopy;
  if (!keyCopy)
  {
    v17 = 0;
    goto LABEL_19;
  }

  if (!bundleCopy)
  {
    goto LABEL_18;
  }

  if (localizationCopy)
  {
    bundlePath = [bundleCopy bundlePath];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.lproj", v10];
    v13 = [bundlePath stringByAppendingPathComponent:v12];

    v14 = [MEMORY[0x277CCA8D8] bundleWithPath:v13];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 localizedStringForKey:keyCopy value:keyCopy table:@"ckcomplication"];
      if (v16)
      {
        v17 = v16;

        goto LABEL_19;
      }

      v18 = CLKLoggingObjectForDomain(4);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138412546;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v13;
      v19 = "Didn't find entry for '%@' in %@";
      v20 = v18;
      v21 = 22;
    }

    else
    {
      v18 = CLKLoggingObjectForDomain(4);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      *buf = 138412290;
      v26 = v13;
      v19 = "Didn't find requested localization bundle at path %@";
      v20 = v18;
      v21 = 12;
    }

    _os_log_impl(&dword_23702D000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_13;
  }

LABEL_14:
  v17 = [bundleCopy localizedStringForKey:keyCopy value:keyCopy table:@"ckcomplication"];
  if (v17)
  {
    goto LABEL_19;
  }

  v22 = CLKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    bundlePath2 = [bundleCopy bundlePath];
    *buf = 138412546;
    v26 = keyCopy;
    v27 = 2112;
    v28 = bundlePath2;
    _os_log_impl(&dword_23702D000, v22, OS_LOG_TYPE_DEFAULT, "Didn't find entry for '%@' in %@", buf, 0x16u);
  }

LABEL_18:
  v17 = keyCopy;
LABEL_19:

  return v17;
}

- (id)_localizedTextProviderWithBundle:(id)bundle forLocalization:(id)localization
{
  v32 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  localizationCopy = localization;
  v7 = [(CLKLocalizableCompoundTextProvider *)self _localizedStringForKey:self->_formatKey withBundle:bundleCopy forLocalization:?];
  v8 = CLKLoggingObjectForDomain(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    formatKey = self->_formatKey;
    *buf = 138412546;
    v29 = formatKey;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_23702D000, v8, OS_LOG_TYPE_DEFAULT, "Localized format '%@' to '%@'", buf, 0x16u);
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v10 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_textProviders;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v12)
  {

    goto LABEL_23;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v24;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 localizedTextProviderWithBundle:bundleCopy forLocalization:localizationCopy];
        if (v18)
        {
          [v10 addObject:v18];
          goto LABEL_18;
        }

        v19 = CLKLoggingObjectForDomain(4);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v17;
          _os_log_error_impl(&dword_23702D000, v19, OS_LOG_TYPE_ERROR, "Error: %@ returned nil when being localized", buf, 0xCu);
        }
      }

      else
      {
        v18 = CLKLoggingObjectForDomain(4);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v17;
          _os_log_error_impl(&dword_23702D000, v18, OS_LOG_TYPE_ERROR, "Error: %@ not a CLKTextProvider", buf, 0xCu);
        }
      }

      v14 = 1;
LABEL_18:
    }

    v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v13);

  if (v14)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_23:
  if (![v10 count])
  {
    goto LABEL_26;
  }

  v20 = [CLKCompoundTextProvider compoundProviderWithLocalizedFormat:v7 localizedTextProviders:v10];

  if (!v20)
  {
LABEL_27:
    v20 = [CLKSimpleTextProvider textProviderWithText:&stru_284A20458];
  }

  return v20;
}

- (BOOL)_validate
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = CLKLocalizableCompoundTextProvider;
  if (![(CLKTextProvider *)&v14 _validate])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_textProviders;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) validate])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CLKLocalizableCompoundTextProvider;
  v4 = [(CLKTextProvider *)&v8 copyWithZone:zone];
  if (v4 != self)
  {
    v5 = [(NSArray *)self->_textProviders copy];
    textProviders = v4->_textProviders;
    v4->_textProviders = v5;

    objc_storeStrong(&v4->_formatKey, self->_formatKey);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKLocalizableCompoundTextProvider;
  if ([(CLKTextProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_textProviders, equalCopy[16]))
  {
    v5 = CLKEqualObjects(self->_formatKey, equalCopy[17]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = CLKLocalizableCompoundTextProvider;
  v3 = [(CLKTextProvider *)&v6 hash];
  v4 = &v3[[(NSArray *)self->_textProviders hash]];
  return &v4[4 * [(NSString *)self->_formatKey hash]];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKLocalizableCompoundTextProvider;
  coderCopy = coder;
  [(CLKTextProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_textProviders forKey:{@"_textProviders", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_formatKey forKey:@"_formatKey"];
}

- (CLKLocalizableCompoundTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CLKLocalizableCompoundTextProvider;
  v5 = [(CLKTextProvider *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_textProviders"];
    textProviders = v5->_textProviders;
    v5->_textProviders = v9;

    v11 = v5->_textProviders;
    v12 = objc_opt_class();
    CLKValidateArray(v11, v12);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formatKey"];
    formatKey = v5->_formatKey;
    v5->_formatKey = v13;
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  v22 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v20.receiver = self;
  v20.super_class = CLKLocalizableCompoundTextProvider;
  v5 = [(CLKTextProvider *)&v20 _initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"formatKey"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary must be a string - invalid value: %@", @"formatKey", v6}];
    }

    objc_storeStrong(v5 + 17, v6);
    v7 = [representationCopy objectForKeyedSubscript:?];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary must be an array - invalid value: %@", @"textProviders", v7}];
    }

    v8 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [CLKTextProvider providerWithJSONObjectRepresentation:*(*(&v16 + 1) + 8 * i)];
          [v8 addObject:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = v5[16];
    v5[16] = v8;
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v6.receiver = self;
  v6.super_class = CLKLocalizableCompoundTextProvider;
  jSONObjectRepresentation = [(CLKTextProvider *)&v6 JSONObjectRepresentation];
  _arrayOfTextProviderJSONObjectRepresentations = [(CLKLocalizableCompoundTextProvider *)self _arrayOfTextProviderJSONObjectRepresentations];
  [jSONObjectRepresentation setObject:_arrayOfTextProviderJSONObjectRepresentations forKeyedSubscript:@"textProviders"];

  [jSONObjectRepresentation setObject:self->_formatKey forKeyedSubscript:@"formatKey"];

  return jSONObjectRepresentation;
}

- (id)_arrayOfTextProviderJSONObjectRepresentations
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_textProviders;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        jSONObjectRepresentation = [*(*(&v11 + 1) + 8 * i) JSONObjectRepresentation];
        [v3 addObject:jSONObjectRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end