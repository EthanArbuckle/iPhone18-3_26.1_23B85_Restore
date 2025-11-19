@interface SKFrameCaptureDelegate
+ (id)sharedInstance;
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
- (void)archiver:(id)a3 didEncodeObject:(id)a4;
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

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v4 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v4 setPerformFullCapture:1];
  }

  return v4;
}

- (void)archiver:(id)a3 didEncodeObject:(id)a4
{
  v4 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v4 setPerformFullCapture:0];
  }
}

@end