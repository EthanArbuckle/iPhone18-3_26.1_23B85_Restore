@interface ASCredentialRequestIconGenerator
+ (UIImage)alternativeSecurityKeysIcon;
+ (UIImage)passwordManagerIcon;
+ (UIImage)systemPasskeyIcon;
+ (UIImage)systemPasswordIcon;
+ (id)_iconForPasswordProviderBundleIdentifier:(id)a3;
+ (id)_imageForIcon:(id)a3 size:(CGSize)a4;
+ (id)_systemImageNamed:(id)a3;
+ (id)iconForApplicationIdentifier:(id)a3 size:(CGSize)a4;
+ (id)iconForData:(id)a3 scale:(double)a4 size:(CGSize)a5;
+ (id)passwordManagerIconWithSize:(CGSize)a3;
@end

@implementation ASCredentialRequestIconGenerator

+ (UIImage)passwordManagerIcon
{
  if (![MEMORY[0x1E69C8880] isPasswordsAppInstalled] || (objc_msgSend(a1, "iconForApplicationIdentifier:size:", *MEMORY[0x1E69C8CC0], 128.0, 128.0), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [a1 _keychainIcon];
  }

  return v3;
}

+ (UIImage)systemPasskeyIcon
{
  v2 = [a1 _systemImageNamed:@"person.badge.key.fill"];
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
  v3 = [MEMORY[0x1E696AAE8] as_authenticationServicesBundle];
  v4 = [v2 imageNamed:@"SecurityKeysIcon" inBundle:v3];

  return v4;
}

+ (id)iconForApplicationIdentifier:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([*MEMORY[0x1E69C8D30] isEqualToString:v7])
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
    v10 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:v7 error:&v17];
    v11 = v17;
    if (v10)
    {
      v12 = objc_alloc(MEMORY[0x1E69A8A00]);
      v13 = [v10 bundleIdentifier];
      v14 = [v12 initWithBundleIdentifier:v13];

      v9 = [a1 _imageForIcon:v14 size:{width, height}];
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

+ (id)passwordManagerIconWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [a1 passwordManagerIcon];
  v6 = [v5 imageByPreparingThumbnailOfSize:{width, height}];

  return v6;
}

+ (id)iconForData:(id)a3 scale:(double)a4 size:(CGSize)a5
{
  height = a5.height;
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69DCAB8] imageWithData:a3 scale:{a4, a5.width}];
  v8 = [v7 CGImage];
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
    v17 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v8 scale:v10];
    v18 = objc_alloc(MEMORY[0x1E69A8A00]);
    v24[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20 = [v18 initWithImages:v19];

    v21 = [a1 _imageForIcon:v20 size:{v16, height}];
  }

  else
  {
    v21 = [v7 imageByPreparingThumbnailOfSize:{v16, height}];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_imageForIcon:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a3;
  v8 = [v6 mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, v10}];
  v12 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v11 setAppearance:{objc_msgSend(v12, "userInterfaceStyle") == 2}];

  [v11 setShouldApplyMask:1];
  [v11 setShape:1];
  v20[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v7 prepareImagesForImageDescriptors:v13];

  v14 = [v7 imageForImageDescriptor:v11];

  v15 = MEMORY[0x1E69DCAB8];
  v16 = [v14 CGImage];
  [v14 scale];
  v17 = [v15 imageWithCGImage:v16 scale:0 orientation:?];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_iconForPasswordProviderBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = MEMORY[0x1E69DCEB0];
  v5 = a3;
  v6 = [v4 mainScreen];
  [v6 scale];
  v7 = [v3 _applicationIconImageForBundleIdentifier:v5 format:0 scale:?];

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

+ (id)_systemImageNamed:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E696AAE8] as_authenticationServicesBundle];
    v6 = [v7 imageNamed:v3 inBundle:v8];
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