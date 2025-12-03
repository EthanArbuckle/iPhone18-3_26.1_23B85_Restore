@interface MPRecentsMapItemHeaderViewController
- (void)loadLayoutConstraints;
- (void)loadView;
- (void)setRecentCall:(id)call;
@end

@implementation MPRecentsMapItemHeaderViewController

- (void)loadView
{
  v22.receiver = self;
  v22.super_class = MPRecentsMapItemHeaderViewController;
  [(MPRecentsMapItemHeaderViewController *)&v22 loadView];
  view = [(MPRecentsMapItemHeaderViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [view setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [view setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [view setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [view setContentHuggingPriority:1 forAxis:v7];
  v8 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:1];
  v9 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  v15 = [UIFont fontWithDescriptor:v8 size:0.0];
  [(UILabel *)self->_titleLabel setFont:v15];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"RECENT_CALLS" value:&stru_10028F310 table:@"PHRecents"];
  [(UILabel *)self->_titleLabel setText:v17];

  tintColor = [view tintColor];
  [(UILabel *)self->_titleLabel setTextColor:tintColor];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_titleLabel];
  height = [[PHRecentCallDetailsView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  detailsView = self->_detailsView;
  self->_detailsView = height;

  [(PHRecentCallDetailsView *)self->_detailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  recentCall = [(MPRecentsMapItemHeaderViewController *)self recentCall];
  [(PHRecentCallDetailsView *)self->_detailsView setRecentCall:recentCall];

  [view addSubview:self->_detailsView];
  [(MPRecentsMapItemHeaderViewController *)self loadLayoutConstraints];
}

- (void)loadLayoutConstraints
{
  view = [(MPRecentsMapItemHeaderViewController *)self view];
  titleLabel = self->_titleLabel;
  view2 = [(MPRecentsMapItemHeaderViewController *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:titleLabel attribute:5 relatedBy:0 toItem:view2 attribute:5 multiplier:1.0 constant:16.0];
  [view addConstraint:v6];

  view3 = [(MPRecentsMapItemHeaderViewController *)self view];
  v8 = self->_titleLabel;
  view4 = [(MPRecentsMapItemHeaderViewController *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:view4 attribute:6 multiplier:1.0 constant:16.0];
  [view3 addConstraint:v10];

  font = [(UILabel *)self->_titleLabel font];
  [font _scaledValueForValue:16.0];
  v13 = v12;

  view5 = [(MPRecentsMapItemHeaderViewController *)self view];
  v15 = self->_titleLabel;
  view6 = [(MPRecentsMapItemHeaderViewController *)self view];
  v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:3 relatedBy:0 toItem:view6 attribute:3 multiplier:1.0 constant:v13];
  [view5 addConstraint:v17];

  view7 = [(MPRecentsMapItemHeaderViewController *)self view];
  detailsView = self->_detailsView;
  view8 = [(MPRecentsMapItemHeaderViewController *)self view];
  v21 = [NSLayoutConstraint constraintWithItem:detailsView attribute:5 relatedBy:0 toItem:view8 attribute:5 multiplier:1.0 constant:16.0];
  [view7 addConstraint:v21];

  view9 = [(MPRecentsMapItemHeaderViewController *)self view];
  v23 = self->_detailsView;
  view10 = [(MPRecentsMapItemHeaderViewController *)self view];
  v25 = [NSLayoutConstraint constraintWithItem:v23 attribute:6 relatedBy:0 toItem:view10 attribute:6 multiplier:1.0 constant:0.0];
  [view9 addConstraint:v25];

  view11 = [(MPRecentsMapItemHeaderViewController *)self view];
  v27 = [NSLayoutConstraint constraintWithItem:self->_detailsView attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:11 multiplier:1.0 constant:0.0];
  [view11 addConstraint:v27];

  font2 = [(UILabel *)self->_titleLabel font];
  [font2 _scaledValueForValue:4.0];
  v30 = -v29;

  view12 = [(MPRecentsMapItemHeaderViewController *)self view];
  v31 = self->_detailsView;
  view13 = [(MPRecentsMapItemHeaderViewController *)self view];
  v33 = [NSLayoutConstraint constraintWithItem:v31 attribute:4 relatedBy:0 toItem:view13 attribute:4 multiplier:1.0 constant:v30];
  [view12 addConstraint:v33];
}

- (void)setRecentCall:(id)call
{
  callCopy = call;
  if (self->_recentCall != callCopy)
  {
    objc_storeStrong(&self->_recentCall, call);
    detailsView = [(MPRecentsMapItemHeaderViewController *)self detailsView];

    if (detailsView)
    {
      recentCall = [(MPRecentsMapItemHeaderViewController *)self recentCall];
      detailsView2 = [(MPRecentsMapItemHeaderViewController *)self detailsView];
      [detailsView2 setRecentCall:recentCall];
    }
  }
}

@end