@interface GPMessagesAppHelper
+ (BOOL)getHostAuditToken:(id *)a3;
@end

@implementation GPMessagesAppHelper

+ (BOOL)getHostAuditToken:(id *)a3
{
  v4 = +[_MSMessageAppContext activeExtensionContext];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    if (v4)
    {
      [v4 balloonHostAuditToken];
    }

    *a3->var0 = 0u;
    *&a3->var0[4] = 0u;
  }

  return v5 & 1;
}

@end