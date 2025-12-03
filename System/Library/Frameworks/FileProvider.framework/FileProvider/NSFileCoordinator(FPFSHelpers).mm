@interface NSFileCoordinator(FPFSHelpers)
+ (id)fp_fileCoordinatorForCurrentProcess:()FPFSHelpers;
@end

@implementation NSFileCoordinator(FPFSHelpers)

+ (id)fp_fileCoordinatorForCurrentProcess:()FPFSHelpers
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v7 = [infoDictionary valueForKeyPath:@"NSExtension.NSExtensionPointIdentifier"];
  v8 = v7;
  if (v3)
  {
    v9 = v4;
    v10 = v3;
LABEL_3:
    [v9 setPurposeIdentifier:v10];
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"com.apple.fileprovider-nonui"])
  {
    bundleIdentifier = [mainBundle bundleIdentifier];
    fp_isiCloudDriveIdentifier = [bundleIdentifier fp_isiCloudDriveIdentifier];

    if (fp_isiCloudDriveIdentifier)
    {
      v10 = @"com.apple.bird";
      v9 = v4;
      goto LABEL_3;
    }

    bundleIdentifier2 = [mainBundle bundleIdentifier];
    [v4 setPurposeIdentifier:bundleIdentifier2];
  }

LABEL_8:

  return v4;
}

@end