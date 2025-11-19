@interface CVAPhotoExceptionMetalResourceUnavailable
+ (id)error;
+ (id)throwIfNil:(id)a3;
- (CVAPhotoExceptionMetalResourceUnavailable)init;
@end

@implementation CVAPhotoExceptionMetalResourceUnavailable

- (CVAPhotoExceptionMetalResourceUnavailable)init
{
  v3.receiver = self;
  v3.super_class = CVAPhotoExceptionMetalResourceUnavailable;
  return [(CVAPhotoExceptionBase *)&v3 initWithName:@"CVAPhotoExceptionMetalResourceUnavailable" reason:@"Metal resource allocation failed!" userInfo:0];
}

+ (id)error
{
  v8 = 0;
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Metal resource allocation failed!"];
  v4 = [v2 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAPhotoExceptionMetalResourceUnavailable error]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAError.mm", 92, v3];
  sub_1DED25D64(1, &v8, 4294944382, v4);
  v5 = v8;
  v6 = v8;

  return v5;
}

+ (id)throwIfNil:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v5 = objc_opt_new();
    objc_exception_throw(v5);
  }

  return v3;
}

@end