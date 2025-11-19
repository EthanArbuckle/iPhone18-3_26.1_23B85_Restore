@interface SafariViewServiceApplication
+ (void)initialize;
- (id)newSharedSiteMetadataManager;
- (void)applicationDidFinishLaunching:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SafariViewServiceApplication

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 addSuiteNamed:@"com.apple.mobilesafari"];

    v5 = +[NSUserDefaults safari_browserDefaults];
    [v5 safari_registerMobileSafariDefaults];
  }
}

- (void)applicationDidFinishLaunching:(id)a3
{
  [_SFSiteMetadataManager setSharedSiteMetadataManagerProvider:self];
  +[_SFReaderCustomProtocols registerReaderCustomProtocols];
  +[_SFBrowserContentViewController createDefaultWebsiteDataStore];

  [STDynamicActivityAttributionPublisher setCurrentAttributionKey:@"_SFGenericWebsiteName" andApp:0];
}

- (id)newSharedSiteMetadataManager
{
  v2 = [_SFSiteMetadataManager alloc];
  v3 = +[NSBundle safari_safariInjectedBundleURL];
  v4 = _SFSafariIconImageCacheDirectoryPath();
  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v6 = [v2 initWithInjectedBundleURL:v3 imageCacheDirectoryURL:v5 cacheIsReadOnly:1 metadataType:38];

  return v6;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  self->_currentKeyboardModifierFlags = [v6 modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesBegan:v7 withEvent:v6];
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  self->_currentKeyboardModifierFlags = [v6 modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesChanged:v7 withEvent:v6];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  self->_currentKeyboardModifierFlags = [v6 modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesEnded:v7 withEvent:v6];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  self->_currentKeyboardModifierFlags = [v6 modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesCancelled:v7 withEvent:v6];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = +[UIMenuSystem mainSystem];

  if (v5 == v6)
  {
    v7 = +[SFBrowserMenuProvider sharedProvider];
    [v7 setMenusIfNecessaryForSafariViewServiceWithBuilder:v4];
  }
}

@end