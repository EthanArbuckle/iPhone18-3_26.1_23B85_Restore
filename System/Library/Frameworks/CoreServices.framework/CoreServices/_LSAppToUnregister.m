@interface _LSAppToUnregister
- (void)initWithContext:(uint64_t)a3 bundleUnit:(uint64_t)a4 bundleData:;
@end

@implementation _LSAppToUnregister

- (void)initWithContext:(uint64_t)a3 bundleUnit:(uint64_t)a4 bundleData:
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = _LSAppToUnregister;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  if (v7)
  {
    v8 = [LSApplicationProxy applicationProxyWithBundleUnitID:a3 withContext:a2];
    v9 = v7[1];
    v7[1] = v8;

    v10 = *a2;
    v11 = *(a4 + 12);
    [(_LSDatabase *)v10 store];
    v12 = _CSStringCopyCFString();
    v13 = v7[2];
    v7[2] = v12;

    *(v7 + 24) = (*(a4 + 172) & 0x40000) != 0;
  }

  return v7;
}

@end