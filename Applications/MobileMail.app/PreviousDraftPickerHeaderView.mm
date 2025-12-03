@interface PreviousDraftPickerHeaderView
- (PreviousDraftPickerHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHasDrafts:(BOOL)drafts;
- (void)setLoading:(BOOL)loading immediately:(BOOL)immediately;
- (void)updateUI;
@end

@implementation PreviousDraftPickerHeaderView

- (PreviousDraftPickerHeaderView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PreviousDraftPickerHeaderView;
  v3 = [(PreviousDraftPickerHeaderView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PreviousDraftPickerHeaderView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    [(PreviousDraftPickerHeaderView *)v4 setPreservesSuperviewLayoutMargins:1];
    v4->_completedFirstLoad = 0;
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v4->_label;
    v4->_label = v5;

    v7 = +[UIColor mailPreviousDraftPickerHeaderTextColor];
    [(UILabel *)v4->_label setTextColor:v7];

    v8 = +[UIColor clearColor];
    [(UILabel *)v4->_label setBackgroundColor:v8];

    [(PreviousDraftPickerHeaderView *)v4 addSubview:v4->_label];
    v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicatorView = v4->_activityIndicatorView;
    v4->_activityIndicatorView = v9;

    [(UIActivityIndicatorView *)v4->_activityIndicatorView setHidesWhenStopped:1];
    [(PreviousDraftPickerHeaderView *)v4 addSubview:v4->_activityIndicatorView];
    [(PreviousDraftPickerHeaderView *)v4 setLoading:1 immediately:1];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v4 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PreviousDraftPickerHeaderView;
  [(PreviousDraftPickerHeaderView *)&v14 layoutSubviews];
  [(PreviousDraftPickerHeaderView *)self layoutMargins];
  v4 = v3;
  [(PreviousDraftPickerHeaderView *)self layoutMargins];
  v6 = v5;
  [(PreviousDraftPickerHeaderView *)self bounds];
  v8 = v4 + v7;
  v10 = v9 + 0.0;
  v12 = v11 - (v4 + v6);
  [(UILabel *)self->_label setFrame:v8, v9 + 0.0, v12, 35.0];
  v15.origin.x = v8;
  v15.origin.y = v10;
  v15.size.width = v12;
  v15.size.height = 35.0;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = 35.0;
  [(UIActivityIndicatorView *)self->_activityIndicatorView setCenter:MidX, CGRectGetMidY(v16)];
}

- (void)setHasDrafts:(BOOL)drafts
{
  if (self->_hasDrafts != drafts)
  {
    self->_hasDrafts = drafts;
    [(PreviousDraftPickerHeaderView *)self updateUI];
  }
}

- (void)setLoading:(BOOL)loading immediately:(BOOL)immediately
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    if (loading && !self->_completedFirstLoad)
    {
      self->_completedFirstLoad = 1;
    }

    if (immediately)
    {

      [(PreviousDraftPickerHeaderView *)self updateUI];
    }

    else
    {
      if (self->_loading)
      {
        v5 = 2.0;
      }

      else
      {
        v5 = 1.0;
      }

      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateUI" object:0];

      [(PreviousDraftPickerHeaderView *)self performSelector:"updateUI" withObject:0 afterDelay:v5];
    }
  }
}

- (void)updateUI
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateUI" object:0];
  if (self->_hasDrafts)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"PREVIOUS_DRAFT_PICKER_PREVIOUS_DRAFTS" value:&stru_100662A88 table:@"Main"];
    localizedUppercaseString = [v4 localizedUppercaseString];
    [(UILabel *)self->_label setText:localizedUppercaseString];

    [(UILabel *)self->_label setTextAlignment:4];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline1];
    [(UILabel *)self->_label setFont:v6];

LABEL_6:
    activityIndicatorView = self->_activityIndicatorView;

    [(UIActivityIndicatorView *)activityIndicatorView stopAnimating];
    return;
  }

  if (!self->_loading && self->_completedFirstLoad)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"PREVIOUS_DRAFT_PICKER_NO_DRAFTS" value:&stru_100662A88 table:@"Main"];
    [(UILabel *)self->_label setText:v8];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [(UILabel *)self->_label setFont:v9];

    [(UILabel *)self->_label setTextAlignment:1];
    goto LABEL_6;
  }

  [(UILabel *)self->_label setText:&stru_100662A88];
  v11 = self->_activityIndicatorView;

  [(UIActivityIndicatorView *)v11 startAnimating];
}

@end