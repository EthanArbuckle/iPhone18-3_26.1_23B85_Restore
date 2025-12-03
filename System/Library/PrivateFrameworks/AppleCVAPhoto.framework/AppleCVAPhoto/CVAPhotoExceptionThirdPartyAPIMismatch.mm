@interface CVAPhotoExceptionThirdPartyAPIMismatch
- (CVAPhotoExceptionThirdPartyAPIMismatch)initWithReason:(id)reason;
@end

@implementation CVAPhotoExceptionThirdPartyAPIMismatch

- (CVAPhotoExceptionThirdPartyAPIMismatch)initWithReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = CVAPhotoExceptionThirdPartyAPIMismatch;
  return [(CVAPhotoExceptionBase *)&v4 initWithName:@"CVAPhotoExceptionThirdPartyAPIMismatch" reason:reason userInfo:0];
}

@end