@interface _ARViewerViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (BOOL)isIgnoringInteractionEvents;
- (int64_t)statusBarOrientation;
- (void)setStatusBarOrientation:(int64_t)a3;
@end

@implementation _ARViewerViewController

+ (id)_remoteViewControllerInterface
{
  if (_remoteViewControllerInterface_onceToken != -1)
  {
    +[_ARViewerViewController _remoteViewControllerInterface];
  }

  v3 = _remoteViewControllerInterface_sHostInterface;

  return v3;
}

+ (id)_exportedInterface
{
  if (_exportedInterface_onceToken != -1)
  {
    +[_ARViewerViewController _exportedInterface];
  }

  v3 = _exportedInterface_sVendorInterface;

  return v3;
}

- (BOOL)isIgnoringInteractionEvents
{
  v2 = [(_ARViewerViewController *)self _remoteViewControllerProxy];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___ARViewerViewController_isIgnoringInteractionEvents__block_invoke;
  v5[3] = &unk_278CCB1A0;
  v5[4] = &v6;
  [v2 isIgnoringInteractionEvents:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)statusBarOrientation
{
  v2 = [(_ARViewerViewController *)self _remoteViewControllerProxy];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47___ARViewerViewController_statusBarOrientation__block_invoke;
  v5[3] = &unk_278CCB1C8;
  v5[4] = &v6;
  [v2 statusBarOrientation:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setStatusBarOrientation:(int64_t)a3
{
  v4 = [(_ARViewerViewController *)self _remoteViewControllerProxy];
  [v4 setStatusBarOrientation:a3];
}

@end