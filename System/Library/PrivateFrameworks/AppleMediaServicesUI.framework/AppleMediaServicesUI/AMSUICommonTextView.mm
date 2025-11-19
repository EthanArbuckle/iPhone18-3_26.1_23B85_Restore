@interface AMSUICommonTextView
- (AMSUICommonTextViewDelegate)ams_delegate;
- (void)_centerTextIfNeeded;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AMSUICommonTextView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUICommonTextView;
  [(AMSUICommonTextView *)&v3 layoutSubviews];
  [(AMSUICommonTextView *)self _centerTextIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSUICommonTextView;
  [(AMSUICommonTextView *)&v9 traitCollectionDidChange:v4];
  v5 = [(AMSUICommonTextView *)self ams_delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = [(AMSUICommonTextView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v4 preferredContentSizeCategory];

  if (v7 != v8)
  {
    v5 = [(AMSUICommonTextView *)self ams_delegate];
    [v5 ams_textViewDidUpdatePreferredContentSizeCategory:self];
LABEL_4:
  }
}

- (void)_centerTextIfNeeded
{
  if ([(AMSUICommonTextView *)self centerText])
  {
    [(AMSUICommonTextView *)self bounds];
    [(AMSUICommonTextView *)self sizeThatFits:v3, 1.79769313e308];
    v5 = v4;
    [(AMSUICommonTextView *)self bounds];
    v7 = v6;
    [(AMSUICommonTextView *)self zoomScale];
    v9 = (v7 - v5 * v8) * 0.5;
    v10 = -0.0;
    if (v9 > 0.0)
    {
      v10 = -v9;
    }

    [(AMSUICommonTextView *)self setContentOffset:0.0, v10];
  }
}

- (AMSUICommonTextViewDelegate)ams_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ams_delegate);

  return WeakRetained;
}

@end