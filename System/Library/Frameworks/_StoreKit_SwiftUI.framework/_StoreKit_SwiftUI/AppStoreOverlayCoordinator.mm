@interface AppStoreOverlayCoordinator
- (void)storeOverlay:(id)overlay didFailToLoadWithError:(id)error;
- (void)storeOverlay:(id)overlay didFinishDismissal:(id)dismissal;
- (void)storeOverlay:(id)overlay didFinishPresentation:(id)presentation;
@end

@implementation AppStoreOverlayCoordinator

- (void)storeOverlay:(id)overlay didFinishPresentation:(id)presentation
{
  overlayCopy = overlay;
  presentationCopy = presentation;
  selfCopy = self;
  sub_23BA186C0();
}

- (void)storeOverlay:(id)overlay didFailToLoadWithError:(id)error
{
  overlayCopy = overlay;
  errorCopy = error;
  selfCopy = self;
  sub_23BA18864();
}

- (void)storeOverlay:(id)overlay didFinishDismissal:(id)dismissal
{
  overlayCopy = overlay;
  dismissalCopy = dismissal;
  selfCopy = self;
  sub_23BA18864();
}

@end