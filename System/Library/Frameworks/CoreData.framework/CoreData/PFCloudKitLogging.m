@interface PFCloudKitLogging
- (PFCloudKitLogging)init;
- (void)dealloc;
@end

@implementation PFCloudKitLogging

- (PFCloudKitLogging)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PFCloudKitLogging;
  v2 = [(PFCloudKitLogging *)&v8 init];
  if (v2)
  {
    __ckLoggingOverride = 2;
    v3 = objc_autoreleasePoolPush();
    v4 = [_PFRoutines integerValueForOverride:?];
    switch(v4)
    {
      case 1:
        v5 = 1;
        break;
      case 2:
        __ckLoggingOverride = 0;
LABEL_10:
        objc_autoreleasePoolPop(v3);
        goto LABEL_11;
      case 3:
        v5 = 16;
        break;
      default:
        v5 = 2;
        break;
    }

    __ckLoggingOverride = v5;
    goto LABEL_10;
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PFCloudKitLogging;
  [(PFCloudKitLogging *)&v2 dealloc];
}

@end