@interface ASNavigationController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation ASNavigationController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = ASNavigationController;
  [(ASNavigationController *)&v8 viewDidLoad];
  [(ASNavigationController *)self _setBuiltinTransitionStyle:1];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  navigationBar = [(ASNavigationController *)self navigationBar];
  [navigationBar setBackgroundImage:v3 forBarMetrics:0];

  navigationBar2 = [(ASNavigationController *)self navigationBar];
  [navigationBar2 setTranslucent:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(ASNavigationController *)self view];
  [view setBackgroundColor:clearColor];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  containerCopy = container;
  [(ASNavigationController *)self setPreferredContentSize:v4, v5];
  v7.receiver = self;
  v7.super_class = ASNavigationController;
  [(ASNavigationController *)&v7 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
}

@end