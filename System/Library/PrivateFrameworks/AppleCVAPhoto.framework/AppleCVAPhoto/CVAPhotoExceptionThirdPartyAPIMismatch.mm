@interface CVAPhotoExceptionThirdPartyAPIMismatch
- (CVAPhotoExceptionThirdPartyAPIMismatch)initWithReason:(id)a3;
@end

@implementation CVAPhotoExceptionThirdPartyAPIMismatch

- (CVAPhotoExceptionThirdPartyAPIMismatch)initWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = CVAPhotoExceptionThirdPartyAPIMismatch;
  return [(CVAPhotoExceptionBase *)&v4 initWithName:@"CVAPhotoExceptionThirdPartyAPIMismatch" reason:a3 userInfo:0];
}

@end