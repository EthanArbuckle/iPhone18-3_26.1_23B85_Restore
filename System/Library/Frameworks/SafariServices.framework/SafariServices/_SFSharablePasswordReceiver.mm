@interface _SFSharablePasswordReceiver
+ (void)openPasswordManagerURL:(id)l;
@end

@implementation _SFSharablePasswordReceiver

+ (void)openPasswordManagerURL:(id)l
{
  v3 = MEMORY[0x1E6963608];
  lCopy = l;
  defaultWorkspace = [v3 defaultWorkspace];
  v9 = 0;
  v6 = [defaultWorkspace openSensitiveURL:lCopy withOptions:0 error:&v9];

  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_SFSharablePasswordReceiver *)v8 openPasswordManagerURL:v7];
    }
  }
}

+ (void)openPasswordManagerURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to open to password manager URL with error: %{public}@", &v5, 0xCu);
}

@end