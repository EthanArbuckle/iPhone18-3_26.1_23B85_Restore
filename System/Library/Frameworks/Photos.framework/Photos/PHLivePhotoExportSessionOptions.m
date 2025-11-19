@interface PHLivePhotoExportSessionOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PHLivePhotoExportSessionOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v4[1] = [(PHLivePhotoExportSessionOptions *)self format];
  return v4;
}

@end