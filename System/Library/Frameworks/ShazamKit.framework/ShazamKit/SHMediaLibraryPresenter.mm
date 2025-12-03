@interface SHMediaLibraryPresenter
- (BOOL)isShazamAppInstalled;
- (SHMediaLibraryPresenter)initWithBundleIdentifier:(id)identifier;
- (void)openShazamAppLibrary:(id)library;
- (void)presentMediaLibraryWithCompletionHandler:(id)handler;
@end

@implementation SHMediaLibraryPresenter

- (SHMediaLibraryPresenter)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SHMediaLibraryPresenter;
  v6 = [(SHMediaLibraryPresenter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = objc_alloc_init(SHMediaLibraryInfoFetcher);
    libraryInfoFetcher = v7->_libraryInfoFetcher;
    v7->_libraryInfoFetcher = v8;
  }

  return v7;
}

- (void)presentMediaLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  libraryInfoFetcher = [(SHMediaLibraryPresenter *)self libraryInfoFetcher];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D7A0;
  v7[3] = &unk_10007DEC0;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [libraryInfoFetcher fetchLibraryInfoWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)openShazamAppLibrary:(id)library
{
  libraryCopy = library;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Attempting to open Shazam App Library", buf, 2u);
  }

  v5 = objc_alloc_init(_LSOpenConfiguration);
  v13[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v13[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v14[0] = &__kCFBooleanTrue;
  v14[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v5 setFrontBoardOptions:v6];

  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [NSURL URLWithString:@"https://www.shazam.com/myshazam?referrer=shazam-module"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003DAA4;
  v10[3] = &unk_10007D400;
  v11 = libraryCopy;
  v9 = libraryCopy;
  [v7 openURL:v8 configuration:v5 completionHandler:v10];
}

- (BOOL)isShazamAppInstalled
{
  v6 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.shazam.Shazam" allowPlaceholder:0 error:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v8 = @"com.shazam.Shazam";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No application record for %@ found with error: %@", buf, 0x16u);
    }
  }

  return v2 != 0;
}

@end