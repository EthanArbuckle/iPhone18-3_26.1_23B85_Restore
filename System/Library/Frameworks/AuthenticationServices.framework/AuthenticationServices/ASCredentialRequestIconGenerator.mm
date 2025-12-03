@interface ASCredentialRequestIconGenerator
+ (UIImage)alternativeSecurityKeysIcon;
+ (UIImage)passwordManagerIcon;
+ (UIImage)systemPasskeyIcon;
+ (UIImage)systemPasswordIcon;
+ (id)_iconForPasswordProviderBundleIdentifier:(id)identifier;
+ (id)_imageForIcon:(id)icon size:(CGSize)size;
+ (id)_systemImageNamed:(id)named;
+ (id)iconForApplicationIdentifier:(id)identifier size:(CGSize)size;
+ (id)iconForData:(id)data scale:(double)scale size:(CGSize)size;
+ (id)passwordManagerIconWithSize:(CGSize)size;
@end

@implementation ASCredentialRequestIconGenerator

+ (UIImage)passwordManagerIcon
{
  if (![MEMORY[0x1E69C8880] isPasswordsAppInstalled] || (objc_msgSend(self, "iconForApplicationIdentifier:size:", *MEMORY[0x1E69C8CC0], 128.0, 128.0), (_keychainIcon = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _keychainIcon = [self _keychainIcon];
  }

  return _keychainIcon;
}

+ (UIImage)systemPasskeyIcon
{
  v2 = [self _systemImageNamed:@"person.badge.key.fill"];
  v3 = [v2 imageWithAlignmentRectInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v3;
}

+ (UIImage)systemPasswordIcon
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"key.fill"];
  v3 = [v2 imageWithAlignmentRectInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v3;
}

+ (UIImage)alternativeSecurityKeysIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  as_authenticationServicesBundle = [MEMORY[0x1E696AAE8] as_authenticationServicesBundle];
  v4 = [v2 imageNamed:@"SecurityKeysIcon" inBundle:as_authenticationServicesBundle];

  return v4;
}

+ (id)iconForApplicationIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  if ([*MEMORY[0x1E69C8D30] isEqualToString:identifierCopy])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ASCredentialRequestIconGenerator iconForApplicationIdentifier:v8 size:?];
    }

    v9 = 0;
  }

  else
  {
    v17 = 0;
    v10 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:identifierCopy error:&v17];
    v11 = v17;
    if (v10)
    {
      v12 = objc_alloc(MEMORY[0x1E69A8A00]);
      bundleIdentifier = [v10 bundleIdentifier];
      v14 = [v12 initWithBundleIdentifier:bundleIdentifier];

      v9 = [self _imageForIcon:v14 size:{width, height}];
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ASCredentialRequestIconGenerator iconForApplicationIdentifier:v15 size:v11];
      }

      v9 = 0;
    }
  }

  return v9;
}

+ (id)passwordManagerIconWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  passwordManagerIcon = [self passwordManagerIcon];
  v6 = [passwordManagerIcon imageByPreparingThumbnailOfSize:{width, height}];

  return v6;
}

+ (id)iconForData:(id)data scale:(double)scale size:(CGSize)size
{
  height = size.height;
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69DCAB8] imageWithData:data scale:{scale, size.width}];
  cGImage = [v7 CGImage];
  [v7 scale];
  v10 = v9;
  [v7 size];
  v11 = 1.0;
  if (v12 != 0.0)
  {
    [v7 size];
    v14 = v13;
    [v7 size];
    v11 = v14 / v15;
  }

  v16 = height * v11;
  if (CGFloatNearlyEqualToFloat())
  {
    v17 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:cGImage scale:v10];
    v18 = objc_alloc(MEMORY[0x1E69A8A00]);
    v24[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20 = [v18 initWithImages:v19];

    v21 = [self _imageForIcon:v20 size:{v16, height}];
  }

  else
  {
    v21 = [v7 imageByPreparingThumbnailOfSize:{v16, height}];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_imageForIcon:(id)icon size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DCEB0];
  iconCopy = icon;
  mainScreen = [v6 mainScreen];
  [mainScreen scale];
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, v10}];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v11 setAppearance:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") == 2}];

  [v11 setShouldApplyMask:1];
  [v11 setShape:1];
  v20[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [iconCopy prepareImagesForImageDescriptors:v13];

  v14 = [iconCopy imageForImageDescriptor:v11];

  v15 = MEMORY[0x1E69DCAB8];
  cGImage = [v14 CGImage];
  [v14 scale];
  v17 = [v15 imageWithCGImage:cGImage scale:0 orientation:?];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_iconForPasswordProviderBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = MEMORY[0x1E69DCEB0];
  identifierCopy = identifier;
  mainScreen = [v4 mainScreen];
  [mainScreen scale];
  v7 = [v3 _applicationIconImageForBundleIdentifier:identifierCopy format:0 scale:?];

  if (!v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASCredentialRequestIconGenerator _iconForPasswordProviderBundleIdentifier:v8];
    }
  }

  return v7;
}

+ (id)_systemImageNamed:(id)named
{
  namedCopy = named;
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:namedCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E69DCAB8];
    as_authenticationServicesBundle = [MEMORY[0x1E696AAE8] as_authenticationServicesBundle];
    v6 = [v7 imageNamed:namedCopy inBundle:as_authenticationServicesBundle];
  }

  return v6;
}

+ (void)iconForApplicationIdentifier:(void *)a1 size:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_ERROR, "Could not get bundle record to get icon for credential with error: %{public}@.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end