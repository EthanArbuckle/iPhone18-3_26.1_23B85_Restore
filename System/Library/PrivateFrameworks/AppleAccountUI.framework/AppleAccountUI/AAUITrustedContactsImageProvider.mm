@interface AAUITrustedContactsImageProvider
+ (id)addContactImage;
+ (id)iCloudDataRecoveryServiceImage;
+ (id)imageForLocalContact:(id)a3;
@end

@implementation AAUITrustedContactsImageProvider

+ (id)imageForLocalContact:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 profilePictureForLocalContact:v3];

  v6 = [v5 imageByPreparingThumbnailOfSize:{35.0, 35.0}];

  return v6;
}

+ (id)iCloudDataRecoveryServiceImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"apple_icon_circle" inBundle:v3];

  v5 = [v4 imageByPreparingThumbnailOfSize:{35.0, 35.0}];

  return v5;
}

+ (id)addContactImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"add_button" inBundle:v3];

  v5 = [v4 imageByPreparingThumbnailOfSize:{35.0, 35.0}];

  return v5;
}

@end