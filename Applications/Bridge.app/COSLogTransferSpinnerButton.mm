@interface COSLogTransferSpinnerButton
- (COSLogTransferSpinnerButton)initWithFrame:(CGRect)frame;
- (void)cancelDownload:(id)download;
- (void)layoutSubviews;
- (void)prepareProgressIndicatorIfNeeded;
- (void)setProgress:(double)progress animated:(BOOL)animated;
@end

@implementation COSLogTransferSpinnerButton

- (COSLogTransferSpinnerButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = COSLogTransferSpinnerButton;
  v3 = [(COSLogTransferSpinnerButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIImageView alloc] initWithImage:0];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v4;

    [(COSLogTransferSpinnerButton *)v3 addSubview:v3->_spinnerView];
    [(COSLogTransferSpinnerButton *)v3 setProgress:1 animated:1.0];
  }

  return v3;
}

- (void)prepareProgressIndicatorIfNeeded
{
  if (!self->_progressIndicator)
  {
    [(COSLogTransferSpinnerButton *)self bounds];
    v7 = [[SKUICircleProgressIndicator alloc] initWithFrame:{v3, v4, v5, v6}];
    progressIndicator = self->_progressIndicator;
    self->_progressIndicator = v7;

    [(SKUICircleProgressIndicator *)self->_progressIndicator setAutoresizingMask:18];
    v9 = self->_progressIndicator;
    v10 = +[UIColor clearColor];
    [(SKUICircleProgressIndicator *)v9 setBackgroundColor:v10];

    [(SKUICircleProgressIndicator *)self->_progressIndicator setUserInteractionEnabled:0];
    v11 = [UIImage systemImageNamed:@"stop.fill"];
    [(SKUICircleProgressIndicator *)self->_progressIndicator setImageInsets:0.0, 0.8, 0.0, 0.0];
    [(SKUICircleProgressIndicator *)self->_progressIndicator setImage:v11];
    [(COSLogTransferSpinnerButton *)self addTarget:self action:"cancelDownload:" forEvents:64];
    [(COSLogTransferSpinnerButton *)self addSubview:self->_progressIndicator];
    [(COSLogTransferSpinnerButton *)self layoutIfNeeded];
  }
}

- (void)cancelDownload:(id)download
{
  v4 = +[NSNotificationCenter defaultCenter];
  specifier = self->_specifier;
  v7 = @"Specifier";
  v8 = specifier;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"DiagnosticLogTransferTapped" object:0 userInfo:v6];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = COSLogTransferSpinnerButton;
  [(COSLogTransferSpinnerButton *)&v10 layoutSubviews];
  [(COSLogTransferSpinnerButton *)self bounds];
  v4 = v3 + -0.5;
  [(COSLogTransferSpinnerButton *)self bounds];
  v6 = v5 + -0.5;
  [(COSLogTransferSpinnerButton *)self bounds];
  v8 = v7 + 1.0;
  [(COSLogTransferSpinnerButton *)self bounds];
  [(UIImageView *)self->_spinnerView setFrame:v4, v6, v8, v9 + 1.0];
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  if (progress > 0.0)
  {
    [(COSLogTransferSpinnerButton *)self prepareProgressIndicatorIfNeeded];
  }

  progressIndicator = self->_progressIndicator;

  [(SKUICircleProgressIndicator *)progressIndicator setProgress:animatedCopy animated:progress / 100.0];
}

@end