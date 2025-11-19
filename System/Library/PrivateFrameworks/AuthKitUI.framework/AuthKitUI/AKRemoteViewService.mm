@interface AKRemoteViewService
@end

@implementation AKRemoteViewService

void __92___AKRemoteViewService__onxpcqueue_continueAuthenticationWithSurrogateID_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end