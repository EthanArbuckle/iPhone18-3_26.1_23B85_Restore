@interface CLKLocalizableSimpleTextProvider
- (CLKLocalizableSimpleTextProvider)initWithTextKey:(id)key shortTextKey:(id)textKey;
- (id)_localizedTextProviderWithBundle:(id)bundle forLocalization:(id)localization;
@end

@implementation CLKLocalizableSimpleTextProvider

- (CLKLocalizableSimpleTextProvider)initWithTextKey:(id)key shortTextKey:(id)textKey
{
  v5.receiver = self;
  v5.super_class = CLKLocalizableSimpleTextProvider;
  return [(CLKSimpleTextProvider *)&v5 initWithText:key shortText:textKey];
}

- (id)_localizedTextProviderWithBundle:(id)bundle forLocalization:(id)localization
{
  v35 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  localizationCopy = localization;
  v8 = localizationCopy;
  if (!bundleCopy)
  {
    v29 = CLKLoggingObjectForDomain(4);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      bundlePath = [0 bundlePath];
      *buf = 138412290;
      v32 = bundlePath;
      _os_log_impl(&dword_23702D000, v29, OS_LOG_TYPE_DEFAULT, "Didn't find requested localization bundle at path %@", buf, 0xCu);
    }

    bundleCopy = 0;
    shortText = 0;
LABEL_24:
    text = [(CLKSimpleTextProvider *)self text];
    if (shortText)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (localizationCopy)
  {
    bundlePath2 = [bundleCopy bundlePath];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.lproj", v8];
    v11 = [bundlePath2 stringByAppendingPathComponent:v10];

    v12 = [MEMORY[0x277CCA8D8] bundleWithPath:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;

      bundleCopy = v14;
    }
  }

  text = [(CLKSimpleTextProvider *)self text];

  if (text)
  {
    text2 = [(CLKSimpleTextProvider *)self text];
    text3 = [(CLKSimpleTextProvider *)self text];
    text = [bundleCopy localizedStringForKey:text2 value:text3 table:@"ckcomplication"];

    if (!text)
    {
      v18 = CLKLoggingObjectForDomain(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        text4 = [(CLKSimpleTextProvider *)self text];
        bundlePath3 = [bundleCopy bundlePath];
        *buf = 138412546;
        v32 = text4;
        v33 = 2112;
        v34 = bundlePath3;
        _os_log_impl(&dword_23702D000, v18, OS_LOG_TYPE_DEFAULT, "Didn't find entry for '%@' in %@", buf, 0x16u);
      }

      text = 0;
    }
  }

  shortText = [(CLKSimpleTextProvider *)self shortText];

  if (shortText)
  {
    shortText2 = [(CLKSimpleTextProvider *)self shortText];
    shortText3 = [(CLKSimpleTextProvider *)self shortText];
    shortText = [bundleCopy localizedStringForKey:shortText2 value:shortText3 table:@"ckcomplication"];

    if (!shortText)
    {
      v24 = CLKLoggingObjectForDomain(4);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        shortText4 = [(CLKSimpleTextProvider *)self shortText];
        bundlePath4 = [bundleCopy bundlePath];
        *buf = 138412546;
        v32 = shortText4;
        v33 = 2112;
        v34 = bundlePath4;
        _os_log_impl(&dword_23702D000, v24, OS_LOG_TYPE_DEFAULT, "Didn't find entry for '%@' in %@", buf, 0x16u);
      }

      shortText = 0;
    }
  }

  if (!text)
  {
    goto LABEL_24;
  }

  if (shortText)
  {
    goto LABEL_18;
  }

LABEL_25:
  shortText = [(CLKSimpleTextProvider *)self shortText];
LABEL_18:
  v27 = [CLKSimpleTextProvider textProviderWithText:text shortText:shortText];

  return v27;
}

@end