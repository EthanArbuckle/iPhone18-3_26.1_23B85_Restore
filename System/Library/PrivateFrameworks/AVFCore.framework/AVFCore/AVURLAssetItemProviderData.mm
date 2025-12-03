@interface AVURLAssetItemProviderData
+ (id)itemProviderDataWithURL:(id)l assetInitializationOptions:(id)options;
- (AVURLAssetItemProviderData)initWithCoder:(id)coder;
- (AVURLAssetItemProviderData)initWithURL:(id)l assetInitializationOptions:(id)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVURLAssetItemProviderData

- (AVURLAssetItemProviderData)initWithURL:(id)l assetInitializationOptions:(id)options
{
  v9.receiver = self;
  v9.super_class = AVURLAssetItemProviderData;
  v6 = [(AVURLAssetItemProviderData *)&v9 init];
  v7 = v6;
  if (l && v6)
  {
    v6->_securityScopedURLWrapper = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:l readonly:1];
    v7->_assetInitializationOptions = [options copy];
  }

  else
  {

    return 0;
  }

  return v7;
}

+ (id)itemProviderDataWithURL:(id)l assetInitializationOptions:(id)options
{
  v4 = [[AVURLAssetItemProviderData alloc] initWithURL:l assetInitializationOptions:options];

  return v4;
}

- (AVURLAssetItemProviderData)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVURLAssetItemProviderData;
  v4 = [(AVURLAssetItemProviderData *)&v6 init];
  if (v4)
  {
    v4->_securityScopedURLWrapper = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVURLAssetItemProviderURLWrapperKey"];
    v4->_assetInitializationOptions = [coder decodeObjectOfClasses:+[AVURLAsset _initializationOptionsClasses](AVURLAsset forKey:{"_initializationOptionsClasses"), @"AVURLAssetItemProviderAssetInitializationOptionsKey"}];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVURLAssetItemProviderData;
  [(AVURLAssetItemProviderData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_securityScopedURLWrapper forKey:@"AVURLAssetItemProviderURLWrapperKey"];
  assetInitializationOptions = self->_assetInitializationOptions;

  [coder encodeObject:assetInitializationOptions forKey:@"AVURLAssetItemProviderAssetInitializationOptionsKey"];
}

@end