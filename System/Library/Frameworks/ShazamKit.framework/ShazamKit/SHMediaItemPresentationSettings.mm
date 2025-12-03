@interface SHMediaItemPresentationSettings
- (SHMediaItemPresentationSettings)initWithCoder:(id)coder;
- (SHMediaItemPresentationSettings)initWithSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMediaItemPresentationSettings

- (SHMediaItemPresentationSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v8.receiver = self;
  v8.super_class = SHMediaItemPresentationSettings;
  v5 = [(SHMediaItemPresentationSettings *)&v8 init];
  if (v5)
  {
    v6 = [settingsCopy valueForKey:@"openResultInBrowserOnFailure"];
    v5->_openResultInBrowserOnFailure = [v6 BOOLValue];
  }

  return v5;
}

- (SHMediaItemPresentationSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SHMediaItemPresentationSettings *)self initWithSettings:MEMORY[0x277CBEC10]];
  v6 = [coderCopy decodeBoolForKey:@"openResultInBrowserOnFailure"];

  v5->_openResultInBrowserOnFailure = v6;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SHMediaItemPresentationSettings openResultInBrowserOnFailure](self forKey:{"openResultInBrowserOnFailure"), @"openResultInBrowserOnFailure"}];
}

@end