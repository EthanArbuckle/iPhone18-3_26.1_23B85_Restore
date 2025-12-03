@interface SKFrameCaptureDelegate
+ (id)sharedInstance;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (void)archiver:(id)archiver didEncodeObject:(id)object;
@end

@implementation SKFrameCaptureDelegate

+ (id)sharedInstance
{
  {
    +[SKFrameCaptureDelegate sharedInstance]::instance = objc_alloc_init(SKFrameCaptureDelegate);
  }

  v2 = +[SKFrameCaptureDelegate sharedInstance]::instance;

  return v2;
}

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    [objectCopy setPerformFullCapture:1];
  }

  return objectCopy;
}

- (void)archiver:(id)archiver didEncodeObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    [objectCopy setPerformFullCapture:0];
  }
}

@end