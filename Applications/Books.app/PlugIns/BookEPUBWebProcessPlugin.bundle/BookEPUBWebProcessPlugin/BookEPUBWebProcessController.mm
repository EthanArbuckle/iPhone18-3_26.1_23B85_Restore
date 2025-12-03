@interface BookEPUBWebProcessController
- (BookEPUBWebProcessPlugin)webProcessPlugin;
- (void)enableAXWithIdentifier:(id)identifier;
- (void)registerFontFamily:(id)family completion:(id)completion;
- (void)updateAXCurrentReadingStateWithMessage:(id)message forValue:(id)value;
@end

@implementation BookEPUBWebProcessController

- (void)registerFontFamily:(id)family completion:(id)completion
{
  familyCopy = family;
  completionCopy = completion;
  v23[0] = kCTFontFamilyNameAttribute;
  v23[1] = kCTFontDownloadedAttribute;
  v24[0] = familyCopy;
  v24[1] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v8 = CTFontDescriptorCreateWithAttributes(v7);

  v9 = _BookEPUBWebProcessPluginLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = familyCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Attempting registration for #fontFamily '%{public}@'", buf, 0xCu);
  }

  if (!v8)
  {
    v10 = _BookEPUBWebProcessPluginLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = familyCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to get font descriptor for #fontFamily:'%{public}@'", buf, 0xCu);
    }
  }

  v20 = v8;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9F58;
  v16[3] = &unk_20860;
  v12 = familyCopy;
  v17 = v12;
  v19 = v8;
  v13 = completionCopy;
  v18 = v13;
  matched = CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v11, 0, v16);

  if (!matched)
  {
    v15 = _BookEPUBWebProcessPluginLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_FAULT, "Failed to get font descriptor for #fontFamily: %{public}@", buf, 0xCu);
    }

    CFRelease(v8);
    (*(v13 + 2))(v13, 0);
  }
}

- (void)enableAXWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  webProcessPlugin = [(BookEPUBWebProcessController *)self webProcessPlugin];
  v6 = _BookEPUBWebProcessPluginLog();
  v7 = v6;
  if (webProcessPlugin)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = webProcessPlugin;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Enabling AX on:%@", &v9, 0xCu);
    }

    v8 = +[BEAccessibilityManager sharedInstance];
    [BEAXWebContentUtilities setWebProcessPlugin:webProcessPlugin];
    [webProcessPlugin setBe_identifier:identifierCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error initializing AX - no webProcessPlugin", &v9, 2u);
    }
  }
}

- (void)updateAXCurrentReadingStateWithMessage:(id)message forValue:(id)value
{
  messageCopy = message;
  valueCopy = value;
  webProcessPlugin = [(BookEPUBWebProcessController *)self webProcessPlugin];
  v9 = webProcessPlugin;
  if (webProcessPlugin)
  {
    [webProcessPlugin updateCurrentReadingState:valueCopy forKeyPath:messageCopy];
  }

  else
  {
    v10 = _BookEPUBWebProcessPluginLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error passing AX message - no webProcessPlugin", v11, 2u);
    }
  }
}

- (BookEPUBWebProcessPlugin)webProcessPlugin
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessPlugin);

  return WeakRetained;
}

@end