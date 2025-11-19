@interface AXRemoteNearbyDevicesViewController
@end

@implementation AXRemoteNearbyDevicesViewController

void __113___AXRemoteNearbyDevicesViewController_presentNearbyDevicesViewControllerWithConnectionHandler_dismissalHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v9 = v7;
  if (*(a1 + 32))
  {
    [v7 setDismissHandler:?];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v6);
  }
}

@end