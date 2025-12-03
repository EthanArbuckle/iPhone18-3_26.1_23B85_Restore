@interface SafariViewServiceApplication
+ (void)initialize;
- (id)newSharedSiteMetadataManager;
- (void)applicationDidFinishLaunching:(id)launching;
- (void)buildMenuWithBuilder:(id)builder;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation SafariViewServiceApplication

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 addSuiteNamed:@"com.apple.mobilesafari"];

    v5 = +[NSUserDefaults safari_browserDefaults];
    [v5 safari_registerMobileSafariDefaults];
  }
}

- (void)applicationDidFinishLaunching:(id)launching
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

- (void)pressesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  eventCopy = event;
  changedCopy = changed;
  self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  self->_currentKeyboardModifierFlags = [eventCopy modifierFlags];
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = SafariViewServiceApplication;
  [(SafariViewServiceApplication *)&v8 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem mainSystem];

  if (system == v6)
  {
    v7 = +[SFBrowserMenuProvider sharedProvider];
    [v7 setMenusIfNecessaryForSafariViewServiceWithBuilder:builderCopy];
  }
}

@end