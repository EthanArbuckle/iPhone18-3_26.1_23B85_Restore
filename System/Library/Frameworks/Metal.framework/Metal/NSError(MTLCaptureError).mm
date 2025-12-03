@interface NSError(MTLCaptureError)
+ (id)errorWithMTLCaptureErrorCode:()MTLCaptureError;
@end

@implementation NSError(MTLCaptureError)

+ (id)errorWithMTLCaptureErrorCode:()MTLCaptureError
{
  v4 = objc_autoreleasePoolPush();
  v5 = @"Already capturing.";
  v6 = @"Enable GPU Frame Capture in your Xcode scheme or run with MTL_CAPTURE_ENABLED=1.";
  v7 = @"Capture layer is not inserted.";
  if (a3 != 1)
  {
    v7 = 0;
    v6 = 0;
  }

  if (a3 == 2)
  {
    v8 = 1;
  }

  else
  {
    v5 = v7;
    v8 = a3 != 1;
  }

  if (a3 == 2)
  {
    v6 = 0;
  }

  if (a3 == 3)
  {
    v9 = @"Invalid Descriptor.";
  }

  else
  {
    v9 = v5;
  }

  v10 = a3 == 3 || v8;
  if (a3 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];
  if ((v10 & 1) == 0)
  {
    [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A598]];
  }

  v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLCaptureError" code:a3 userInfo:dictionary];
  objc_autoreleasePoolPop(v4);

  return v13;
}

@end