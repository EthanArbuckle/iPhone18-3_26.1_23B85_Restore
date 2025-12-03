@interface _SFWebProcessPlugIn
- (id)pageControllerWithBrowserContextController:(id)controller;
- (void)_installUIClientIfNecessaryWithPageController:(id)controller;
- (void)dealloc;
- (void)didCreatePageController:(id)controller forBrowserContextController:(id)contextController;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object;
@end

@implementation _SFWebProcessPlugIn

- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object
{
  inCopy = in;
  v20.receiver = self;
  v20.super_class = _SFWebProcessPlugIn;
  [(WBSWebProcessPlugIn *)&v20 webProcessPlugIn:inCopy initializeWithObject:object];
  parameters = [inCopy parameters];
  v8 = [parameters valueForKey:@"JavaScriptConsoleOutputURLBookmarkData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v8 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:0];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __61___SFWebProcessPlugIn_webProcessPlugIn_initializeWithObject___block_invoke;
    v17 = &unk_1E848F9B0;
    selfCopy = self;
    v10 = v9;
    v19 = v10;
    [v10 safari_accessingSecurityScopedResource:&v14];
    javaScriptConsoleOutputFile = self->_javaScriptConsoleOutputFile;
    if (javaScriptConsoleOutputFile)
    {
      setvbuf(javaScriptConsoleOutputFile, 0, 1, 0);
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_SFWebProcessPlugIn webProcessPlugIn:v10 initializeWithObject:v12];
      }
    }
  }

  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    parameters2 = [inCopy parameters];
    [parameters2 addObserver:self forKeyPath:*MEMORY[0x1E69C9188] options:4 context:0];
  }
}

- (void)dealloc
{
  plugInController = [(WBSWebProcessPlugIn *)self plugInController];
  parameters = [plugInController parameters];

  [parameters removeObserver:self forKeyPath:*MEMORY[0x1E69B1E60]];
  [parameters removeObserver:self forKeyPath:*MEMORY[0x1E69B1E68]];
  [parameters removeObserver:self forKeyPath:*MEMORY[0x1E69C91D0]];
  javaScriptConsoleOutputFile = self->_javaScriptConsoleOutputFile;
  if (javaScriptConsoleOutputFile)
  {
    fclose(javaScriptConsoleOutputFile);
  }

  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    plugInController2 = [(WBSWebProcessPlugIn *)self plugInController];
    parameters2 = [plugInController2 parameters];
    [parameters2 removeObserver:self forKeyPath:*MEMORY[0x1E69C9188]];
  }

  v8.receiver = self;
  v8.super_class = _SFWebProcessPlugIn;
  [(_SFWebProcessPlugIn *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([MEMORY[0x1E69C8880] isInternalInstall] && (v13 = *MEMORY[0x1E69C9188], objc_msgSend(pathCopy, "isEqualToString:", *MEMORY[0x1E69C9188])))
  {
    plugInController = [(WBSWebProcessPlugIn *)self plugInController];
    parameters = [plugInController parameters];
    v16 = [parameters valueForKey:v13];
    bOOLValue = [v16 BOOLValue];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setBool:bOOLValue forKey:v13];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _SFWebProcessPlugIn;
    [(_SFWebProcessPlugIn *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_installUIClientIfNecessaryWithPageController:(id)controller
{
  controllerCopy = controller;
  supportsWebpageStatusBar = [MEMORY[0x1E69B1B18] supportsWebpageStatusBar];
  javaScriptConsoleOutputFile = self->_javaScriptConsoleOutputFile;
  if (javaScriptConsoleOutputFile)
  {
    v7 = 1;
  }

  else
  {
    v7 = supportsWebpageStatusBar;
  }

  if (v7)
  {
    v8 = mouseDidMoveOverElementCallback;
    if (!supportsWebpageStatusBar)
    {
      v8 = 0;
    }

    if (javaScriptConsoleOutputFile)
    {
      v9 = willAddMessageWithDetailsToConsoleCallback;
    }

    else
    {
      v9 = 0;
    }

    browserContextController = [controllerCopy browserContextController];
    [browserContextController _bundlePageRef];
    WKBundlePageSetUIClient();
  }
}

- (void)didCreatePageController:(id)controller forBrowserContextController:(id)contextController
{
  value = controller;
  contextControllerCopy = contextController;
  objc_setAssociatedObject(contextControllerCopy, &kContextControllerToPlugInPageControllerAssociationKey, value, 0x301);
  [(_SFWebProcessPlugIn *)self _installUIClientIfNecessaryWithPageController:value];
}

- (id)pageControllerWithBrowserContextController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    _groupIdentifier = [controllerCopy _groupIdentifier];
  }

  else
  {
    pageGroup = [controllerCopy pageGroup];
    _groupIdentifier = [pageGroup identifier];
  }

  if ([_groupIdentifier isEqualToString:@"Reader"])
  {
    v7 = off_1E848D338;
  }

  else
  {
    v8 = [_groupIdentifier isEqualToString:*MEMORY[0x1E69C9A08]];
    v7 = off_1E848D430;
    if (v8)
    {
      v7 = 0x1E69C98A0;
    }
  }

  v9 = [objc_alloc(*v7) initWithPlugIn:self contextController:controllerCopy];

  return v9;
}

- (void)webProcessPlugIn:(uint64_t)a1 initializeWithObject:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Unable to open JavaScript output file at %{public}@", &v2, 0xCu);
}

@end