@interface SHMediaItemPresentationSettings
- (SHMediaItemPresentationSettings)initWithCoder:(id)a3;
- (SHMediaItemPresentationSettings)initWithSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMediaItemPresentationSettings

- (SHMediaItemPresentationSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SHMediaItemPresentationSettings;
  v5 = [(SHMediaItemPresentationSettings *)&v8 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"openResultInBrowserOnFailure"];
    v5->_openResultInBrowserOnFailure = [v6 BOOLValue];
  }

  return v5;
}

- (SHMediaItemPresentationSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaItemPresentationSettings *)self initWithSettings:MEMORY[0x277CBEC10]];
  v6 = [v4 decodeBoolForKey:@"openResultInBrowserOnFailure"];

  v5->_openResultInBrowserOnFailure = v6;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SHMediaItemPresentationSettings openResultInBrowserOnFailure](self forKey:{"openResultInBrowserOnFailure"), @"openResultInBrowserOnFailure"}];
}

@end