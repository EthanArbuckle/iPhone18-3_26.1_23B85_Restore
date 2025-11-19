@interface _ARViewerRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (void)isIgnoringInteractionEvents:(id)a3;
- (void)setStatusBarOrientation:(int64_t)a3;
- (void)statusBarOrientation:(id)a3;
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

- (void)isIgnoringInteractionEvents:(id)a3
{
  v4 = a3;
  v5 = [(_ARViewerRemoteViewController *)self arviewerDelegate];
  [v5 isIgnoringInteractionEvents:v4];
}

- (void)statusBarOrientation:(id)a3
{
  v4 = a3;
  v5 = [(_ARViewerRemoteViewController *)self arviewerDelegate];
  [v5 statusBarOrientation:v4];
}

- (void)setStatusBarOrientation:(int64_t)a3
{
  v4 = [(_ARViewerRemoteViewController *)self arviewerDelegate];
  [v4 setStatusBarOrientation:a3];
}

@end