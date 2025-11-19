@interface UIApplication
@end

@implementation UIApplication

void __97__UIApplication_SLUIApplicationAdditions__shouldShowNetworkActivityIndicatorInRemoteApplication___block_invoke(uint64_t a1)
{
  if (__activityRequestCounter == 1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_8;
    }

    v3 = &SLHideNetworkActivityIndicatorNotification;
  }

  else
  {
    if (__activityRequestCounter || (*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    v3 = &SLShowNetworkActivityIndicatorNotification;
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [MEMORY[0x1E696AD80] notificationWithName:*v3 object:0];
  [v4 postNotification:v5];

LABEL_8:
  if (*(a1 + 32))
  {
    v6 = __activityRequestCounter + 1;
  }

  else
  {
    v6 = __activityRequestCounter - 1;
  }

  __activityRequestCounter = v6;
  _SLLog(v1, 6, @"activityRequestCounter=%i");
}

@end