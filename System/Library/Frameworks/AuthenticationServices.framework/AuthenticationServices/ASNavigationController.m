@interface ASNavigationController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
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
  v4 = [(ASNavigationController *)self navigationBar];
  [v4 setBackgroundImage:v3 forBarMetrics:0];

  v5 = [(ASNavigationController *)self navigationBar];
  [v5 setTranslucent:1];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  v7 = [(ASNavigationController *)self view];
  [v7 setBackgroundColor:v6];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = a3;
  [(ASNavigationController *)self setPreferredContentSize:v4, v5];
  v7.receiver = self;
  v7.super_class = ASNavigationController;
  [(ASNavigationController *)&v7 preferredContentSizeDidChangeForChildContentContainer:v6];
}

@end