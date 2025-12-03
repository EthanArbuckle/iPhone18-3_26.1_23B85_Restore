@interface AXLocalizationCaptionBackgroundControllerViewController
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AXLocalizationCaptionBackgroundControllerViewController

- (void)loadView
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AXLocalizationCaptionBackgroundControllerViewController *)self setView:v4];
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AXLocalizationCaptionBackgroundControllerViewController;
  [(AXLocalizationCaptionBackgroundControllerViewController *)&v7 viewDidLoad];
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  overlayLockView = self->_overlayLockView;
  self->_overlayLockView = v3;

  [(UIView *)self->_overlayLockView setUserInteractionEnabled:0];
  v5 = [UIColor colorWithRed:0.5 green:0.0 blue:0.0 alpha:0.25];
  [(UIView *)self->_overlayLockView setBackgroundColor:v5];

  view = [(AXLocalizationCaptionBackgroundControllerViewController *)self view];
  [view insertSubview:self->_overlayLockView atIndex:0];
}

- (void)viewDidLayoutSubviews
{
  view = [(AXLocalizationCaptionBackgroundControllerViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  overlayLockView = self->_overlayLockView;

  [(UIView *)overlayLockView setFrame:v5, v7, v9, v11];
}

@end