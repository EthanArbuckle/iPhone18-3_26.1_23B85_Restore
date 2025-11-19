@interface UIKit
@end

@implementation UIKit

id __35__UIKit_PKSubsystem_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  _MergedGlobals_153 = result;
  return result;
}

uint64_t __43__UIKit_PKSubsystem_beginUsing_withBundle___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v1 = result;
    [*(result + 32) setInfoDictionary:{objc_msgSend(*(result + 40), "bundleInfoDictionary")}];
    v2 = [objc_msgSend(*(*(v1 + 32) + 16) objectForKey:{@"NSExtension", "mutableCopy"}];
    if ([v2 objectForKey:@"NSExtensionMainStoryboard"])
    {
      v3 = 0;
    }

    else
    {
      v3 = [v2 objectForKey:@"NSExtensionMainStoryboard~ipad"] == 0;
    }

    v4 = [v2 objectForKey:@"NSExtensionPrincipalClass"];
    if (v4)
    {
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = -[NSDictionary objectForKey:]([+[NSBundle mainBundle](NSBundle infoDictionary], "objectForKey:", @"NSExtensionPrincipalClass");
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    Class = objc_getClass([v4 UTF8String]);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![(objc_class *)Class _initializedByViewServices])
    {
      v6 = 1;
      goto LABEL_13;
    }

LABEL_11:
    [(objc_class *)objc_getClass("_UIViewServiceSessionManager") startViewServiceSessionManagerAsPlugin:1];
    v6 = 0;
LABEL_13:
    result = [_NSExtensionContextVendor _startListening:v6];
    *(*(v1 + 32) + 8) = 1;
  }

  return result;
}

@end