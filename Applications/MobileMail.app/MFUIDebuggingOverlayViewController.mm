@interface MFUIDebuggingOverlayViewController
- (MFUIDebuggingOverlayViewController)initWithSpecImage:(id)a3;
- (void)setSpecImage:(id)a3;
- (void)viewDidLoad;
@end

@implementation MFUIDebuggingOverlayViewController

- (MFUIDebuggingOverlayViewController)initWithSpecImage:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFUIDebuggingOverlayViewController;
  v5 = [(MFUIDebuggingOverlayViewController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MFUIDebuggingOverlayViewController *)v5 setSpecImage:v4];
    v7 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:"doubleTappedView:"];
    [v7 setNumberOfTapsRequired:2];
    v8 = [(MFUIDebuggingOverlayViewController *)v6 view];
    [v8 addGestureRecognizer:v7];

    v9 = [(MFUIDebuggingOverlayViewController *)v6 view];
    [v9 setAlpha:0.5];

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
  v4 = [(MFUIDebuggingOverlayViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  specImageView = self->_specImageView;
  self->_specImageView = v5;

  [(UIImageView *)self->_specImageView setAutoresizingMask:18];
  v7 = [(MFUIDebuggingOverlayViewController *)self view];
  LODWORD(v3) = [v7 mf_prefersRightToLeftInterfaceLayout];

  if (v3)
  {
    [(UIImageView *)self->_specImageView setContentMode:10];
  }

  v8 = self->_specImageView;
  v9 = [(MFUIDebuggingOverlayViewController *)self specImage];
  [(UIImageView *)v8 setImage:v9];

  v10 = [(MFUIDebuggingOverlayViewController *)self view];
  [v10 addSubview:self->_specImageView];
}

- (void)setSpecImage:(id)a3
{
  v5 = a3;
  if (self->_specImage != v5)
  {
    objc_storeStrong(&self->_specImage, a3);
    [(UIImageView *)self->_specImageView setImage:self->_specImage];
  }
}

@end