@interface SiriAcousticIdSpinnerView
- (CGSize)sizeThatFits:(CGSize)result;
- (SiriAcousticIdSpinnerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SiriAcousticIdSpinnerView

- (SiriAcousticIdSpinnerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriAcousticIdSpinnerView;
  v3 = [(SiriAcousticIdSpinnerView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[SiriUIAcousticIDSpinner alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    spinnerView = v3->_spinnerView;
    v3->_spinnerView = v4;

    [(SiriAcousticIdSpinnerView *)v3 addSubview:v3->_spinnerView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 54.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  [(SiriAcousticIdSpinnerView *)self bounds];
  [(SiriUIAcousticIDSpinner *)self->_spinnerView sizeToFit];
  spinnerView = self->_spinnerView;
  [(SiriUIAcousticIDSpinner *)spinnerView frame];
  UIRectCenteredIntegralRectScale();

  [(SiriUIAcousticIDSpinner *)spinnerView setFrame:?];
}

@end