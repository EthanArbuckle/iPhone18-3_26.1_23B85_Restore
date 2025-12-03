@interface CVAPhotoExceptionBase
- (CVAPhotoExceptionBase)initWithName:(id)name reason:(id)reason userInfo:(id)info;
- (id)error;
- (void)log;
@end

@implementation CVAPhotoExceptionBase

- (void)log
{
  getReasonStr = [(CVAPhotoExceptionBase *)self getReasonStr];
  callStackSymbols = [(CVAPhotoExceptionBase *)self callStackSymbols];
  NSLog(&cfstr_Cvaphotoexcept_0.isa, getReasonStr, callStackSymbols);
}

- (id)error
{
  v11 = 0;
  getErrorCode = [(CVAPhotoExceptionBase *)self getErrorCode];
  v4 = MEMORY[0x1E696AEC0];
  getReasonStr = [(CVAPhotoExceptionBase *)self getReasonStr];
  v6 = [v4 stringWithFormat:@"%@", getReasonStr];
  v7 = [v4 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPhotoExceptionBase error]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAError.mm", 55, v6];
  sub_1DED25D64(1, &v11, getErrorCode, v7);
  v8 = v11;
  v9 = v11;

  return v8;
}

- (CVAPhotoExceptionBase)initWithName:(id)name reason:(id)reason userInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = CVAPhotoExceptionBase;
  return [(CVAPhotoExceptionBase *)&v6 initWithName:name reason:reason userInfo:info];
}

@end