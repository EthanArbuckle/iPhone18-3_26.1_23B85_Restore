@interface CLKLocalizableSimpleTextProvider
- (CLKLocalizableSimpleTextProvider)initWithTextKey:(id)a3 shortTextKey:(id)a4;
- (id)_localizedTextProviderWithBundle:(id)a3 forLocalization:(id)a4;
@end

@implementation CLKLocalizableSimpleTextProvider

- (CLKLocalizableSimpleTextProvider)initWithTextKey:(id)a3 shortTextKey:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLKLocalizableSimpleTextProvider;
  return [(CLKSimpleTextProvider *)&v5 initWithText:a3 shortText:a4];
}

- (id)_localizedTextProviderWithBundle:(id)a3 forLocalization:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v29 = CLKLoggingObjectForDomain(4);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [0 bundlePath];
      *buf = 138412290;
      v32 = v30;
      _os_log_impl(&dword_23702D000, v29, OS_LOG_TYPE_DEFAULT, "Didn't find requested localization bundle at path %@", buf, 0xCu);
    }

    v6 = 0;
    v21 = 0;
LABEL_24:
    v15 = [(CLKSimpleTextProvider *)self text];
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (v7)
  {
    v9 = [v6 bundlePath];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.lproj", v8];
    v11 = [v9 stringByAppendingPathComponent:v10];

    v12 = [MEMORY[0x277CCA8D8] bundleWithPath:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;

      v6 = v14;
    }
  }

  v15 = [(CLKSimpleTextProvider *)self text];

  if (v15)
  {
    v16 = [(CLKSimpleTextProvider *)self text];
    v17 = [(CLKSimpleTextProvider *)self text];
    v15 = [v6 localizedStringForKey:v16 value:v17 table:@"ckcomplication"];

    if (!v15)
    {
      v18 = CLKLoggingObjectForDomain(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(CLKSimpleTextProvider *)self text];
        v20 = [v6 bundlePath];
        *buf = 138412546;
        v32 = v19;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_23702D000, v18, OS_LOG_TYPE_DEFAULT, "Didn't find entry for '%@' in %@", buf, 0x16u);
      }

      v15 = 0;
    }
  }

  v21 = [(CLKSimpleTextProvider *)self shortText];

  if (v21)
  {
    v22 = [(CLKSimpleTextProvider *)self shortText];
    v23 = [(CLKSimpleTextProvider *)self shortText];
    v21 = [v6 localizedStringForKey:v22 value:v23 table:@"ckcomplication"];

    if (!v21)
    {
      v24 = CLKLoggingObjectForDomain(4);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CLKSimpleTextProvider *)self shortText];
        v26 = [v6 bundlePath];
        *buf = 138412546;
        v32 = v25;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_23702D000, v24, OS_LOG_TYPE_DEFAULT, "Didn't find entry for '%@' in %@", buf, 0x16u);
      }

      v21 = 0;
    }
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  if (v21)
  {
    goto LABEL_18;
  }

LABEL_25:
  v21 = [(CLKSimpleTextProvider *)self shortText];
LABEL_18:
  v27 = [CLKSimpleTextProvider textProviderWithText:v15 shortText:v21];

  return v27;
}

@end