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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

+ (id)bundleVersion
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKey:*MEMORY[0x1E695E500]];

  return v4;
}

+ (id)currentApplicationIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processIdentifier];

  LODWORD(v2) = proc_pidpath(v3, buffer, 0x1000u);
  v4 = MEMORY[0x1E695DFF8];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v2 encoding:4];
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
  v3 = [a1 currentApplicationIdentifier];
  if (v3)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = [a1 currentApplicationIdentifier];
    v6 = [v4 bundleWithIdentifier:v5];

    v7 = [v6 infoDictionary];
    v8 = [v7 objectForKey:*MEMORY[0x1E695E500]];
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