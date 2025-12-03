@interface PHAssetResourceValidatedContext
- (PHAssetResourceValidatedContext)initWithResource:(id)resource validatedURL:(id)l validatedData:(id)data;
@end

@implementation PHAssetResourceValidatedContext

- (PHAssetResourceValidatedContext)initWithResource:(id)resource validatedURL:(id)l validatedData:(id)data
{
  resourceCopy = resource;
  lCopy = l;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = PHAssetResourceValidatedContext;
  v12 = [(PHAssetResourceValidatedContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resource, resource);
    objc_storeStrong(&v13->_validatedURL, l);
    objc_storeStrong(&v13->_validatedData, data);
  }

  return v13;
}

@end