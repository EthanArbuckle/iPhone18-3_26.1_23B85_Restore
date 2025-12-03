@interface _LSAppToUnregister
- (void)initWithContext:(uint64_t)context bundleUnit:(uint64_t)unit bundleData:;
@end

@implementation _LSAppToUnregister

- (void)initWithContext:(uint64_t)context bundleUnit:(uint64_t)unit bundleData:
{
  if (!self)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = _LSAppToUnregister;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  if (v7)
  {
    v8 = [LSApplicationProxy applicationProxyWithBundleUnitID:context withContext:a2];
    v9 = v7[1];
    v7[1] = v8;

    v10 = *a2;
    v11 = *(unit + 12);
    [(_LSDatabase *)v10 store];
    v12 = _CSStringCopyCFString();
    v13 = v7[2];
    v7[2] = v12;

    *(v7 + 24) = (*(unit + 172) & 0x40000) != 0;
  }

  return v7;
}

@end