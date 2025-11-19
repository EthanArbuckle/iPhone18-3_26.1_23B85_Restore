@interface AKRemoteViewSession
@end

@implementation AKRemoteViewSession

void __33___AKRemoteViewSession__activate__block_invoke_2(id *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = objc_loadWeakRetained(a1 + 4);
  [v1[0] invalidate];
  objc_storeStrong(v1, 0);
}

void __54___AKRemoteViewSession_activateWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

@end