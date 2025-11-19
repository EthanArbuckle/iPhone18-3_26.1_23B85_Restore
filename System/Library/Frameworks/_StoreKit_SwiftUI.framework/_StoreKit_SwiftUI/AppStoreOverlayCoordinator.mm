@interface AppStoreOverlayCoordinator
- (void)storeOverlay:(id)a3 didFailToLoadWithError:(id)a4;
- (void)storeOverlay:(id)a3 didFinishDismissal:(id)a4;
- (void)storeOverlay:(id)a3 didFinishPresentation:(id)a4;
@end

@implementation AppStoreOverlayCoordinator

- (void)storeOverlay:(id)a3 didFinishPresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23BA186C0();
}

- (void)storeOverlay:(id)a3 didFailToLoadWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_23BA18864();
}

- (void)storeOverlay:(id)a3 didFinishDismissal:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23BA18864();
}

@end