@interface _SFWebProcessPlugIn
- (id)pageControllerWithBrowserContextController:(id)a3;
- (void)_installUIClientIfNecessaryWithPageController:(id)a3;
- (void)dealloc;
- (void)didCreatePageController:(id)a3 forBrowserContextController:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4;
@end

@implementation _SFWebProcessPlugIn

- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = _SFWebProcessPlugIn;
  [(WBSWebProcessPlugIn *)&v20 webProcessPlugIn:v6 initializeWithObject:a4];
  v7 = [v6 parameters];
  v8 = [v7 valueForKey:@"JavaScriptConsoleOutputURLBookmarkData"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v8 options:0 relativeToURL:0 bookmarkDataIsStale:0 error:0];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __61___SFWebProcessPlugIn_webProcessPlugIn_initializeWithObject___block_invoke;
    v17 = &unk_1E848F9B0;
    v18 = self;
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
    v13 = [v6 parameters];
    [v13 addObserver:self forKeyPath:*MEMORY[0x1E69C9188] options:4 context:0];
  }
}

- (void)dealloc
{
  v3 = [(WBSWebProcessPlugIn *)self plugInController];
  v4 = [v3 parameters];

  [v4 removeObserver:self forKeyPath:*MEMORY[0x1E69B1E60]];
  [v4 removeObserver:self forKeyPath:*MEMORY[0x1E69B1E68]];
  [v4 removeObserver:self forKeyPath:*MEMORY[0x1E69C91D0]];
  javaScriptConsoleOutputFile = self->_javaScriptConsoleOutputFile;
  if (javaScriptConsoleOutputFile)
  {
    fclose(javaScriptConsoleOutputFile);
  }

  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v6 = [(WBSWebProcessPlugIn *)self plugInController];
    v7 = [v6 parameters];
    [v7 removeObserver:self forKeyPath:*MEMORY[0x1E69C9188]];
  }

  v8.receiver = self;
  v8.super_class = _SFWebProcessPlugIn;
  [(_SFWebProcessPlugIn *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([MEMORY[0x1E69C8880] isInternalInstall] && (v13 = *MEMORY[0x1E69C9188], objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E69C9188])))
  {
    v14 = [(WBSWebProcessPlugIn *)self plugInController];
    v15 = [v14 parameters];
    v16 = [v15 valueForKey:v13];
    v17 = [v16 BOOLValue];

    v18 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v18 setBool:v17 forKey:v13];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _SFWebProcessPlugIn;
    [(_SFWebProcessPlugIn *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_installUIClientIfNecessaryWithPageController:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B1B18] supportsWebpageStatusBar];
  javaScriptConsoleOutputFile = self->_javaScriptConsoleOutputFile;
  if (javaScriptConsoleOutputFile)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = mouseDidMoveOverElementCallback;
    if (!v5)
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

    v10 = [v4 browserContextController];
    [v10 _bundlePageRef];
    WKBundlePageSetUIClient();
  }
}

- (void)didCreatePageController:(id)a3 forBrowserContextController:(id)a4
{
  value = a3;
  v6 = a4;
  objc_setAssociatedObject(v6, &kContextControllerToPlugInPageControllerAssociationKey, value, 0x301);
  [(_SFWebProcessPlugIn *)self _installUIClientIfNecessaryWithPageController:value];
}

- (id)pageControllerWithBrowserContextController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 _groupIdentifier];
  }

  else
  {
    v6 = [v4 pageGroup];
    v5 = [v6 identifier];
  }

  if ([v5 isEqualToString:@"Reader"])
  {
    v7 = off_1E848D338;
  }

  else
  {
    v8 = [v5 isEqualToString:*MEMORY[0x1E69C9A08]];
    v7 = off_1E848D430;
    if (v8)
    {
      v7 = 0x1E69C98A0;
    }
  }

  v9 = [objc_alloc(*v7) initWithPlugIn:self contextController:v4];

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