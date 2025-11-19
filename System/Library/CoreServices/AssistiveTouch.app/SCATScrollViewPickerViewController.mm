@interface SCATScrollViewPickerViewController
- (void)loadView;
- (void)willPresentWithDisplayContext:(id)a3 animated:(BOOL)a4;
@end

@implementation SCATScrollViewPickerViewController

- (void)loadView
{
  v4 = objc_alloc_init(SCATPromptView);
  v3 = sub_100042B24(@"CHOOSE_SCROLL_VIEW");
  [(SCATPromptView *)v4 setPrompt:v3];

  [(SCATPromptView *)v4 setAutoresizingMask:18];
  [(SCATScrollViewPickerViewController *)self setView:v4];
}

- (void)willPresentWithDisplayContext:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SCATScrollViewPickerViewController *)self view];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16.receiver = self;
  v16.super_class = SCATScrollViewPickerViewController;
  [(SCATElementManagerViewController *)&v16 willPresentWithDisplayContext:v6 animated:v4];
}

@end