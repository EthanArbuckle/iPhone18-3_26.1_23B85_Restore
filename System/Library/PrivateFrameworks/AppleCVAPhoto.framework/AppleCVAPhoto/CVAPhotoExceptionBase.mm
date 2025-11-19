@interface CVAPhotoExceptionBase
- (CVAPhotoExceptionBase)initWithName:(id)a3 reason:(id)a4 userInfo:(id)a5;
- (id)error;
- (void)log;
@end

@implementation CVAPhotoExceptionBase

- (void)log
{
  v4 = [(CVAPhotoExceptionBase *)self getReasonStr];
  v3 = [(CVAPhotoExceptionBase *)self callStackSymbols];
  NSLog(&cfstr_Cvaphotoexcept_0.isa, v4, v3);
}

- (id)error
{
  v11 = 0;
  v3 = [(CVAPhotoExceptionBase *)self getErrorCode];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(CVAPhotoExceptionBase *)self getReasonStr];
  v6 = [v4 stringWithFormat:@"%@", v5];
  v7 = [v4 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPhotoExceptionBase error]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAError.mm", 55, v6];
  sub_1DED25D64(1, &v11, v3, v7);
  v8 = v11;
  v9 = v11;

  return v8;
}

- (CVAPhotoExceptionBase)initWithName:(id)a3 reason:(id)a4 userInfo:(id)a5
{
  v6.receiver = self;
  v6.super_class = CVAPhotoExceptionBase;
  return [(CVAPhotoExceptionBase *)&v6 initWithName:a3 reason:a4 userInfo:a5];
}

@end