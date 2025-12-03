@interface PreviewWithFooterViewController
- (PreviewWithFooterViewController)initWithPreviewViewController:(id)controller footerTitle:(id)title footerSubtitle:(id)subtitle;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PreviewWithFooterViewController

- (PreviewWithFooterViewController)initWithPreviewViewController:(id)controller footerTitle:(id)title footerSubtitle:(id)subtitle
{
  controllerCopy = controller;
  titleCopy = title;
  subtitleCopy = subtitle;
  v20.receiver = self;
  v20.super_class = PreviewWithFooterViewController;
  v12 = [(PreviewWithFooterViewController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewViewController, controller);
    v14 = [titleCopy copy];
    footerTitle = v13->_footerTitle;
    v13->_footerTitle = v14;

    v16 = [subtitleCopy copy];
    footerSubtitle = v13->_footerSubtitle;
    v13->_footerSubtitle = v16;

    v18 = v13;
  }

  return v13;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PreviewWithFooterViewController;
  [(PreviewWithFooterViewController *)&v8 viewDidLoad];
  [(PreviewWithFooterViewController *)self addChildViewController:self->_previewViewController];
  view = [(PreviewWithFooterViewController *)self view];
  view2 = [(UIViewController *)self->_previewViewController view];
  [view addSubview:view2];

  [(UIViewController *)self->_previewViewController didMoveToParentViewController:self];
  if ([(NSString *)self->_footerTitle length])
  {
    v5 = [[PreviewFooterView alloc] initWithTitle:self->_footerTitle subtitle:self->_footerSubtitle];
    footerView = self->_footerView;
    self->_footerView = &v5->super;

    view3 = [(PreviewWithFooterViewController *)self view];
    [view3 addSubview:self->_footerView];
  }
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PreviewWithFooterViewController;
  [(PreviewWithFooterViewController *)&v17 viewWillLayoutSubviews];
  view = [(PreviewWithFooterViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  Width = CGRectGetWidth(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Height = CGRectGetHeight(v19);
  [(UIView *)self->_footerView sizeThatFits:Width, 1.79769313e308];
  v15 = Height - v14;
  [(UIView *)self->_footerView setFrame:0.0, v15, Width, v14];
  view2 = [(UIViewController *)self->_previewViewController view];
  [view2 setFrame:{0.0, 0.0, Width, v15}];
}

@end