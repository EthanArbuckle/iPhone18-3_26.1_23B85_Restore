@interface AXSSSystemLocale
- (AXSSSystemLocale)init;
- (AXSSSystemLocale)initWithPreferredLanguages:(id)a3;
- (NSArray)preferredLanguages;
@end

@implementation AXSSSystemLocale

- (AXSSSystemLocale)init
{
  v3.receiver = self;
  v3.super_class = AXSSSystemLocale;
  return [(AXSSSystemLocale *)&v3 init];
}

- (AXSSSystemLocale)initWithPreferredLanguages:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXSSSystemLocale;
  v5 = [(AXSSSystemLocale *)&v8 init];
  preferredLanguages = v5->_preferredLanguages;
  v5->_preferredLanguages = v4;

  return v5;
}

- (NSArray)preferredLanguages
{
  preferredLanguages = self->_preferredLanguages;
  if (preferredLanguages)
  {
    v3 = preferredLanguages;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  }

  return v3;
}

@end