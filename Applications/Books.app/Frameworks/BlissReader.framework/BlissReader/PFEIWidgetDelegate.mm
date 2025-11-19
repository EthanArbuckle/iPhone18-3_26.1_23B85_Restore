@interface PFEIWidgetDelegate
+ (void)delegateMap;
@end

@implementation PFEIWidgetDelegate

+ (void)delegateMap
{
  result = qword_567958;
  if (!qword_567958)
  {
    objc_sync_enter(a1);
    if (!qword_567958)
    {
      operator new();
    }

    objc_sync_exit(a1);
    return qword_567958;
  }

  return result;
}

@end