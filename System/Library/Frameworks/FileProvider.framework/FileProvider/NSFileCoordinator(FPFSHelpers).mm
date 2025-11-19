@interface NSFileCoordinator(FPFSHelpers)
+ (id)fp_fileCoordinatorForCurrentProcess:()FPFSHelpers;
@end

@implementation NSFileCoordinator(FPFSHelpers)

+ (id)fp_fileCoordinatorForCurrentProcess:()FPFSHelpers
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 infoDictionary];
  v7 = [v6 valueForKeyPath:@"NSExtension.NSExtensionPointIdentifier"];
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
    v11 = [v5 bundleIdentifier];
    v12 = [v11 fp_isiCloudDriveIdentifier];

    if (v12)
    {
      v10 = @"com.apple.bird";
      v9 = v4;
      goto LABEL_3;
    }

    v13 = [v5 bundleIdentifier];
    [v4 setPurposeIdentifier:v13];
  }

LABEL_8:

  return v4;
}

@end