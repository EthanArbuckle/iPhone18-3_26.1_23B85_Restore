@interface AVMediaSelectionViewController
- (AVMediaSelectionViewController)initWithPlayerController:(id)controller doneButtonTarget:(id)target doneButtonAction:(SEL)action;
@end

@implementation AVMediaSelectionViewController

- (AVMediaSelectionViewController)initWithPlayerController:(id)controller doneButtonTarget:(id)target doneButtonAction:(SEL)action
{
  targetCopy = target;
  controllerCopy = controller;
  v10 = [[AVMediaSelectionTableViewController alloc] initWithStyle:1];
  [(AVMediaSelectionTableViewController *)v10 setPlayerController:controllerCopy];

  v19.receiver = self;
  v19.super_class = AVMediaSelectionViewController;
  v11 = [(AVMediaSelectionViewController *)&v19 initWithRootViewController:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaSelectionTableViewController, v10);
    navigationItem = [(AVMediaSelectionTableViewController *)v10 navigationItem];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:targetCopy action:action];
    [navigationItem setRightBarButtonItem:v14];

    [(AVMediaSelectionViewController *)v12 setModalPresentationStyle:7];
    [(AVMediaSelectionViewController *)v12 setModalPresentationCapturesStatusBarAppearance:1];
    navigationBar = [(AVMediaSelectionViewController *)v12 navigationBar];
    [navigationBar setBarStyle:1];

    navigationBar2 = [(AVMediaSelectionViewController *)v12 navigationBar];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [navigationBar2 setTintColor:whiteColor];

    [(AVMediaSelectionViewController *)v12 setOverrideUserInterfaceStyle:2];
  }

  return v12;
}

@end