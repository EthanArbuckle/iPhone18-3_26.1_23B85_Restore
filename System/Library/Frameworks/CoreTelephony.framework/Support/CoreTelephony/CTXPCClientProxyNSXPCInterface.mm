@interface CTXPCClientProxyNSXPCInterface
+ (NSXPCInterface)exportedInterface;
+ (NSXPCInterface)remoteInterface;
@end

@implementation CTXPCClientProxyNSXPCInterface

+ (NSXPCInterface)exportedInterface
{
  if (qword_101FC8C80 != -1)
  {
    dispatch_once(&qword_101FC8C80, &stru_101F11328);
  }

  v3 = qword_101FC8C78;

  return v3;
}

+ (NSXPCInterface)remoteInterface
{
  if (qword_101FC8C90 != -1)
  {
    dispatch_once(&qword_101FC8C90, &stru_101F11348);
  }

  v3 = qword_101FC8C88;

  return v3;
}

@end