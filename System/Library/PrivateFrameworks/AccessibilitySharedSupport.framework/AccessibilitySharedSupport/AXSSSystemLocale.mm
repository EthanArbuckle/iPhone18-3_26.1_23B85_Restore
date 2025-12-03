@interface AXSSSystemLocale
- (AXSSSystemLocale)init;
- (AXSSSystemLocale)initWithPreferredLanguages:(id)languages;
- (NSArray)preferredLanguages;
@end

@implementation AXSSSystemLocale

- (AXSSSystemLocale)init
{
  v3.receiver = self;
  v3.super_class = AXSSSystemLocale;
  return [(AXSSSystemLocale *)&v3 init];
}

- (AXSSSystemLocale)initWithPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  v8.receiver = self;
  v8.super_class = AXSSSystemLocale;
  v5 = [(AXSSSystemLocale *)&v8 init];
  preferredLanguages = v5->_preferredLanguages;
  v5->_preferredLanguages = languagesCopy;

  return v5;
}

- (NSArray)preferredLanguages
{
  preferredLanguages = self->_preferredLanguages;
  if (preferredLanguages)
  {
    preferredLanguages = preferredLanguages;
  }

  else
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  }

  return preferredLanguages;
}

@end