@interface RPModalPresentationWindow
- (RPModalPresentationWindow)init;
- (id)_presentationViewController;
- (id)mainWindow;
- (void)dealloc;
@end

@implementation RPModalPresentationWindow

- (RPModalPresentationWindow)init
{
  v8.receiver = self;
  v8.super_class = RPModalPresentationWindow;
  v2 = [(UIApplicationRotationFollowingWindow *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(RPModalPresentationWindow *)v2 setOpaque:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(RPModalPresentationWindow *)v3 setBackgroundColor:clearColor];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [(RPModalPresentationWindow *)v3 setScreen:mainScreen];

    [(RPModalPresentationWindow *)v3 setWindowLevel:*MEMORY[0x277D772A8]];
    [(RPModalPresentationWindow *)v3 setHidden:1];
    mainWindow = [(RPModalPresentationWindow *)v3 mainWindow];
    [mainWindow beginDisablingInterfaceAutorotation];
  }

  return v3;
}

- (void)dealloc
{
  mainWindow = [(RPModalPresentationWindow *)self mainWindow];
  [mainWindow endDisablingInterfaceAutorotation];

  v4.receiver = self;
  v4.super_class = RPModalPresentationWindow;
  [(RPModalPresentationWindow *)&v4 dealloc];
}

- (id)mainWindow
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  firstObject = [windows firstObject];

  return firstObject;
}

uint64_t __71__RPModalPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (id)_presentationViewController
{
  rootViewController = [(RPModalPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75150]);
    [v4 setSizesWindowToScene:1];
    [(RPModalPresentationWindow *)self setRootViewController:v4];
  }

  return [(RPModalPresentationWindow *)self rootViewController];
}

@end