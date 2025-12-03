@interface _SFDownloadCurrentPageActivity
- (_SFDownloadCurrentPageActivity)initWithWebView:(id)view;
@end

@implementation _SFDownloadCurrentPageActivity

- (_SFDownloadCurrentPageActivity)initWithWebView:(id)view
{
  viewCopy = view;
  v6 = *MEMORY[0x1E69CDB00];
  v16 = 0;
  v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v6 error:&v16];
  v8 = v16;
  if (!v7)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_SFDownloadCurrentPageActivity *)v13 initWithWebView:v8];
    }

    goto LABEL_6;
  }

  _plugIn = [v7 _plugIn];
  userElection = [_plugIn userElection];

  if (userElection == 2)
  {
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = _SFDownloadCurrentPageActivity;
  v11 = [(UIApplicationExtensionActivity *)&v15 initWithApplicationExtension:v7];
  objc_storeStrong(&v11->_webView, view);
  self = v11;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)initWithWebView:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to find 'Save to Files' extension: %{public}@", &v5, 0xCu);
}

@end