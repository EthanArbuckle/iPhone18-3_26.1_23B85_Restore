@interface PFEIWidgetDelegate
+ (void)delegateMap;
@end

@implementation PFEIWidgetDelegate

+ (void)delegateMap
{
  result = qword_567958;
  if (!qword_567958)
  {
    objc_sync_enter(self);
    if (!qword_567958)
    {
      operator new();
    }

    objc_sync_exit(self);
    return qword_567958;
  }

  return result;
}

@end