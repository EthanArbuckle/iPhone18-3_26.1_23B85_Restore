@interface _LSDIconService
+ (id)XPCInterface;
@end

@implementation _LSDIconService

+ (id)XPCInterface
{
  if (XPCInterface_onceToken != -1)
  {
    +[_LSDIconService XPCInterface];
  }

  v3 = XPCInterface_interface;

  return v3;
}

@end