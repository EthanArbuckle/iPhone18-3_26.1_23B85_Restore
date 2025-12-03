@interface AFUtilities
+ (BOOL)isInternalBuild;
+ (id)bundleIdentifier;
+ (id)bundleVersion;
+ (id)currentApplicationIdentifier;
+ (id)currentApplicationVersion;
@end

@implementation AFUtilities

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[AFUtilities isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

+ (id)bundleIdentifier
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

+ (id)bundleVersion
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];

  return v4;
}

+ (id)currentApplicationIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processIdentifier = [processInfo processIdentifier];

  LODWORD(processInfo) = proc_pidpath(processIdentifier, buffer, 0x1000u);
  v4 = MEMORY[0x1E695DFF8];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:processInfo encoding:4];
  v6 = [v4 fileURLWithPath:v5];

  if (v6)
  {
    v7 = _CFBundleCopyBundleURLForExecutableURL();
    v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
    v9 = [v8 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F0]];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)currentApplicationVersion
{
  currentApplicationIdentifier = [self currentApplicationIdentifier];
  if (currentApplicationIdentifier)
  {
    v4 = MEMORY[0x1E696AAE8];
    currentApplicationIdentifier2 = [self currentApplicationIdentifier];
    v6 = [v4 bundleWithIdentifier:currentApplicationIdentifier2];

    infoDictionary = [v6 infoDictionary];
    v8 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __30__AFUtilities_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalBuild_isInternalBuild = result;
  return result;
}

@end