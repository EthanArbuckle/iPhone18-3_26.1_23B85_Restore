@interface _NSCloudKitDataFileBackedFuture
- (_NSCloudKitDataFileBackedFuture)initWithStoreMetadata:(id)metadata directory:(id)directory originalFileURL:(id)l;
- (void)_copyToInterimLocation;
- (void)_moveToPermanentLocation;
@end

@implementation _NSCloudKitDataFileBackedFuture

- (_NSCloudKitDataFileBackedFuture)initWithStoreMetadata:(id)metadata directory:(id)directory originalFileURL:(id)l
{
  v6.receiver = self;
  v6.super_class = _NSCloudKitDataFileBackedFuture;
  return [(_NSDataFileBackedFuture *)&v6 initWithStoreMetadata:metadata directory:directory originalFileURL:l];
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