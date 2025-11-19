@interface _NSCloudKitDataFileBackedFuture
- (_NSCloudKitDataFileBackedFuture)initWithStoreMetadata:(id)a3 directory:(id)a4 originalFileURL:(id)a5;
- (void)_copyToInterimLocation;
- (void)_moveToPermanentLocation;
@end

@implementation _NSCloudKitDataFileBackedFuture

- (_NSCloudKitDataFileBackedFuture)initWithStoreMetadata:(id)a3 directory:(id)a4 originalFileURL:(id)a5
{
  v6.receiver = self;
  v6.super_class = _NSCloudKitDataFileBackedFuture;
  return [(_NSDataFileBackedFuture *)&v6 initWithStoreMetadata:a3 directory:a4 originalFileURL:a5];
}

- (void)_copyToInterimLocation
{
  if (self)
  {
    if (objc_getProperty(self, a2, 16, 1))
    {
      v3.receiver = self;
      v3.super_class = _NSCloudKitDataFileBackedFuture;
      [(_NSDataFileBackedFuture *)&v3 _copyToInterimLocation];
    }
  }
}

- (void)_moveToPermanentLocation
{
  if (self)
  {
    if (objc_getProperty(self, a2, 16, 1))
    {
      v3.receiver = self;
      v3.super_class = _NSCloudKitDataFileBackedFuture;
      [(_NSDataFileBackedFuture *)&v3 _moveToPermanentLocation];
    }
  }
}

@end