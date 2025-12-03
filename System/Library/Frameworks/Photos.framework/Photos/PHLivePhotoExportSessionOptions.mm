@interface PHLivePhotoExportSessionOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PHLivePhotoExportSessionOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v4[1] = [(PHLivePhotoExportSessionOptions *)self format];
  return v4;
}

@end