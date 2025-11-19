@interface AVURLAssetItemProviderData
+ (id)itemProviderDataWithURL:(id)a3 assetInitializationOptions:(id)a4;
- (AVURLAssetItemProviderData)initWithCoder:(id)a3;
- (AVURLAssetItemProviderData)initWithURL:(id)a3 assetInitializationOptions:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVURLAssetItemProviderData

- (AVURLAssetItemProviderData)initWithURL:(id)a3 assetInitializationOptions:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVURLAssetItemProviderData;
  v6 = [(AVURLAssetItemProviderData *)&v9 init];
  v7 = v6;
  if (a3 && v6)
  {
    v6->_securityScopedURLWrapper = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:a3 readonly:1];
    v7->_assetInitializationOptions = [a4 copy];
  }

  else
  {

    return 0;
  }

  return v7;
}

+ (id)itemProviderDataWithURL:(id)a3 assetInitializationOptions:(id)a4
{
  v4 = [[AVURLAssetItemProviderData alloc] initWithURL:a3 assetInitializationOptions:a4];

  return v4;
}

- (AVURLAssetItemProviderData)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVURLAssetItemProviderData;
  v4 = [(AVURLAssetItemProviderData *)&v6 init];
  if (v4)
  {
    v4->_securityScopedURLWrapper = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVURLAssetItemProviderURLWrapperKey"];
    v4->_assetInitializationOptions = [a3 decodeObjectOfClasses:+[AVURLAsset _initializationOptionsClasses](AVURLAsset forKey:{"_initializationOptionsClasses"), @"AVURLAssetItemProviderAssetInitializationOptionsKey"}];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVURLAssetItemProviderData;
  [(AVURLAssetItemProviderData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_securityScopedURLWrapper forKey:@"AVURLAssetItemProviderURLWrapperKey"];
  assetInitializationOptions = self->_assetInitializationOptions;

  [a3 encodeObject:assetInitializationOptions forKey:@"AVURLAssetItemProviderAssetInitializationOptionsKey"];
}

@end