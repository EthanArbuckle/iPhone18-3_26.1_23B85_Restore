@interface MFUIDebuggingOverlayViewController
- (MFUIDebuggingOverlayViewController)initWithSpecImage:(id)image;
- (void)setSpecImage:(id)image;
- (void)viewDidLoad;
@end

@implementation MFUIDebuggingOverlayViewController

- (MFUIDebuggingOverlayViewController)initWithSpecImage:(id)image
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = MFUIDebuggingOverlayViewController;
  v5 = [(MFUIDebuggingOverlayViewController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MFUIDebuggingOverlayViewController *)v5 setSpecImage:imageCopy];
    v7 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:"doubleTappedView:"];
    [v7 setNumberOfTapsRequired:2];
    view = [(MFUIDebuggingOverlayViewController *)v6 view];
    [view addGestureRecognizer:v7];

    view2 = [(MFUIDebuggingOverlayViewController *)v6 view];
    [view2 setAlpha:0.5];

    [(MFUIDebuggingOverlayViewController *)v6 setModalPresentationStyle:4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = MFUIDebuggingOverlayViewController;
  [(MFUIDebuggingOverlayViewController *)&v11 viewDidLoad];
  v3 = [UIImageView alloc];
  view = [(MFUIDebuggingOverlayViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  specImageView = self->_specImageView;
  self->_specImageView = v5;

  [(UIImageView *)self->_specImageView setAutoresizingMask:18];
  view2 = [(MFUIDebuggingOverlayViewController *)self view];
  LODWORD(v3) = [view2 mf_prefersRightToLeftInterfaceLayout];

  if (v3)
  {
    [(UIImageView *)self->_specImageView setContentMode:10];
  }

  v8 = self->_specImageView;
  specImage = [(MFUIDebuggingOverlayViewController *)self specImage];
  [(UIImageView *)v8 setImage:specImage];

  view3 = [(MFUIDebuggingOverlayViewController *)self view];
  [view3 addSubview:self->_specImageView];
}

- (void)setSpecImage:(id)image
{
  imageCopy = image;
  if (self->_specImage != imageCopy)
  {
    objc_storeStrong(&self->_specImage, image);
    [(UIImageView *)self->_specImageView setImage:self->_specImage];
  }
}

@end