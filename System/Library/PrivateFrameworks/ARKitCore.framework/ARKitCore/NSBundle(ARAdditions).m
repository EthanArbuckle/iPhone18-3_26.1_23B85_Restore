@interface NSBundle(ARAdditions)
- (id)ar_pathForPrivateResource:()ARAdditions ofType:;
@end

@implementation NSBundle(ARAdditions)

- (id)ar_pathForPrivateResource:()ARAdditions ofType:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.ARKitInternalExtras"];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = ARKitCoreBundle();
    v11 = [v10 bundlePath];
    v12 = [v11 stringByDeletingLastPathComponent];
    v13 = [v12 stringByAppendingPathComponent:@"ARKitInternalExtras.bundle"];

    v9 = [MEMORY[0x1E696AAE8] bundleWithPath:v13];

    if (!v9)
    {
      v14 = MEMORY[0x1E696AAE8];
      v15 = [a1 ar_pathForPrivateResourceBundlePath];
      v9 = [v14 bundleWithPath:v15];
    }
  }

  v16 = [v9 pathForResource:v6 ofType:v7];

  return v16;
}

@end