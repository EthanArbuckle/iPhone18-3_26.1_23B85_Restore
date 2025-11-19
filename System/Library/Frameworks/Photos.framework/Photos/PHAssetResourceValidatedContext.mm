@interface PHAssetResourceValidatedContext
- (PHAssetResourceValidatedContext)initWithResource:(id)a3 validatedURL:(id)a4 validatedData:(id)a5;
@end

@implementation PHAssetResourceValidatedContext

- (PHAssetResourceValidatedContext)initWithResource:(id)a3 validatedURL:(id)a4 validatedData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PHAssetResourceValidatedContext;
  v12 = [(PHAssetResourceValidatedContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resource, a3);
    objc_storeStrong(&v13->_validatedURL, a4);
    objc_storeStrong(&v13->_validatedData, a5);
  }

  return v13;
}

@end