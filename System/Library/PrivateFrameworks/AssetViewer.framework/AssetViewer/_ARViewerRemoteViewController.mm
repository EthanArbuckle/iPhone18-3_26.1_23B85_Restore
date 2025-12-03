@interface _ARViewerRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (void)isIgnoringInteractionEvents:(id)events;
- (void)setStatusBarOrientation:(int64_t)orientation;
- (void)statusBarOrientation:(id)orientation;
@end

@implementation _ARViewerRemoteViewController

+ (id)serviceViewControllerInterface
{
  if (serviceViewControllerInterface_onceToken != -1)
  {
    +[_ARViewerRemoteViewController serviceViewControllerInterface];
  }

  v3 = serviceViewControllerInterface_sVendorInterface;

  return v3;
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken != -1)
  {
    +[_ARViewerRemoteViewController exportedInterface];
  }

  v3 = exportedInterface_sHostInterface;

  return v3;
}

- (void)isIgnoringInteractionEvents:(id)events
{
  eventsCopy = events;
  arviewerDelegate = [(_ARViewerRemoteViewController *)self arviewerDelegate];
  [arviewerDelegate isIgnoringInteractionEvents:eventsCopy];
}

- (void)statusBarOrientation:(id)orientation
{
  orientationCopy = orientation;
  arviewerDelegate = [(_ARViewerRemoteViewController *)self arviewerDelegate];
  [arviewerDelegate statusBarOrientation:orientationCopy];
}

- (void)setStatusBarOrientation:(int64_t)orientation
{
  arviewerDelegate = [(_ARViewerRemoteViewController *)self arviewerDelegate];
  [arviewerDelegate setStatusBarOrientation:orientation];
}

@end