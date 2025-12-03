@interface SCATScrollViewPickerViewController
- (void)loadView;
- (void)willPresentWithDisplayContext:(id)context animated:(BOOL)animated;
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

- (void)willPresentWithDisplayContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  [contextCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view = [(SCATScrollViewPickerViewController *)self view];
  [view setFrame:{v8, v10, v12, v14}];

  v16.receiver = self;
  v16.super_class = SCATScrollViewPickerViewController;
  [(SCATElementManagerViewController *)&v16 willPresentWithDisplayContext:contextCopy animated:animatedCopy];
}

@end