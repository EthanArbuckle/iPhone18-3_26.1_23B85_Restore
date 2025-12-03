@interface HPRFSessionTrackerAboutViewController
- (HPRFSessionTrackerAboutViewController)initWithTitle:(id)title message:(id)message;
- (void)_dismiss;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation HPRFSessionTrackerAboutViewController

- (HPRFSessionTrackerAboutViewController)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = HPRFSessionTrackerAboutViewController;
  v9 = [(HPRFSessionTrackerAboutViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_message, message);
  }

  return v10;
}

- (void)loadView
{
  v38.receiver = self;
  v38.super_class = HPRFSessionTrackerAboutViewController;
  [(HPRFSessionTrackerAboutViewController *)&v38 loadView];
  v3 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  v5 = objc_alloc_init(UILabel);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v5;

  view = [(HPRFSessionTrackerAboutViewController *)self view];
  [view addSubview:self->_scrollView];

  [(UIScrollView *)self->_scrollView addSubview:self->_descriptionLabel];
  v8 = +[PSListController appearance];
  backgroundColor = [v8 backgroundColor];

  v10 = +[PSListController appearance];
  separatorColor = [v10 separatorColor];

  view2 = [(HPRFSessionTrackerAboutViewController *)self view];
  [view2 setBackgroundColor:backgroundColor];

  view3 = [(HPRFSessionTrackerAboutViewController *)self view];
  [view3 setTintColor:backgroundColor];

  [(UIScrollView *)self->_scrollView setBackgroundColor:backgroundColor];
  [(UIScrollView *)self->_scrollView setTintColor:backgroundColor];
  [(UIScrollView *)self->_scrollView setIndicatorStyle:2];
  [(UILabel *)self->_descriptionLabel setAttributedText:self->_message];
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_descriptionLabel setFont:v14];

  [(UILabel *)self->_descriptionLabel setLineBreakMode:0];
  [(UILabel *)self->_descriptionLabel setTextAlignment:4];
  v15 = +[PSListController appearance];
  textColor = [v15 textColor];
  [(UILabel *)self->_descriptionLabel setTextColor:textColor];

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismiss"];
  navigationItem = [(HPRFSessionTrackerAboutViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v17];

  title = self->_title;
  navigationItem2 = [(HPRFSessionTrackerAboutViewController *)self navigationItem];
  [navigationItem2 setTitle:title];

  navigationController = [(HPRFSessionTrackerAboutViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBarStyle:1];

  v23 = +[PSListController appearance];
  buttonTextColor = [v23 buttonTextColor];
  navigationItem3 = [(HPRFSessionTrackerAboutViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setTintColor:buttonTextColor];

  navigationController2 = [(HPRFSessionTrackerAboutViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setBackgroundColor:backgroundColor];

  navigationController3 = [(HPRFSessionTrackerAboutViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  v31 = BPSBridgeTintColor();
  [navigationBar3 setTintColor:v31];

  navigationController4 = [(HPRFSessionTrackerAboutViewController *)self navigationController];
  navigationBar4 = [navigationController4 navigationBar];
  v34 = HPRFPointImageWithColor(backgroundColor);
  [navigationBar4 setBackgroundImage:v34 forBarMetrics:0];

  navigationController5 = [(HPRFSessionTrackerAboutViewController *)self navigationController];
  navigationBar5 = [navigationController5 navigationBar];
  v37 = HPRFPointImageWithColor(separatorColor);
  [navigationBar5 setShadowImage:v37];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = HPRFSessionTrackerAboutViewController;
  [(HPRFSessionTrackerAboutViewController *)&v17 viewWillLayoutSubviews];
  view = [(HPRFSessionTrackerAboutViewController *)self view];
  [view bounds];
  v5 = v4 + -32.0;

  [(UILabel *)self->_descriptionLabel sizeThatFits:v5, 1.79769313e308];
  v7 = v6;
  view2 = [(HPRFSessionTrackerAboutViewController *)self view];
  [view2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(UILabel *)self->_descriptionLabel setFrame:16.0, 16.0, v5, v7];
  [(UIScrollView *)self->_scrollView setFrame:v10, v12, v14, v16];
  v18.origin.x = 16.0;
  v18.origin.y = 16.0;
  v18.size.width = v5;
  v18.size.height = v7;
  [(UIScrollView *)self->_scrollView setContentSize:v14, CGRectGetMaxY(v18) + 16.0];
}

- (void)_dismiss
{
  navigationController = [(HPRFSessionTrackerAboutViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end