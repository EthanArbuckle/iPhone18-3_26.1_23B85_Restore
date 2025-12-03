@interface ICRecentlyDeletedHeaderView
+ (double)heightForSuperview:(id)superview;
+ (id)sizingView;
- (ICRecentlyDeletedHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)registerForTraitChanges;
- (void)updateLabel;
@end

@implementation ICRecentlyDeletedHeaderView

- (ICRecentlyDeletedHeaderView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = ICRecentlyDeletedHeaderView;
  v3 = [(ICRecentlyDeletedHeaderView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    v6 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:v6];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Notes are available here for %d days. After that time value:notes will be permanently deleted. This may take up to %d days." table:{&stru_100661CF0, 0}];
    v9 = [NSString localizedStringWithFormat:v8, 30, 40];
    [(UILabel *)v3->_label setText:v9];

    LODWORD(v10) = 1148846080;
    [(UILabel *)v3->_label setContentCompressionResistancePriority:1 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UILabel *)v3->_label setContentHuggingPriority:1 forAxis:v11];
    [(ICRecentlyDeletedHeaderView *)v3 updateLabel];
    [(UILabel *)v3->_label setTextAlignment:4];
    [(ICRecentlyDeletedHeaderView *)v3 addSubview:v3->_label];
    topAnchor = [(UILabel *)v3->_label topAnchor];
    topAnchor2 = [(ICRecentlyDeletedHeaderView *)v3 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
    [(ICRecentlyDeletedHeaderView *)v3 setTopLabelConstraint:v14];

    bottomAnchor = [(UILabel *)v3->_label bottomAnchor];
    bottomAnchor2 = [(ICRecentlyDeletedHeaderView *)v3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    [(ICRecentlyDeletedHeaderView *)v3 setBottomLabelConstraint:v17];

    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    layoutMarginsGuide = [(ICRecentlyDeletedHeaderView *)v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:11.0];
    [(ICRecentlyDeletedHeaderView *)v3 setLeadingLabelConstraint:v21];

    trailingAnchor = [(UILabel *)v3->_label trailingAnchor];
    layoutMarginsGuide2 = [(ICRecentlyDeletedHeaderView *)v3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-11.0];
    [(ICRecentlyDeletedHeaderView *)v3 setTrailingLabelConstraint:v25];

    topLabelConstraint = [(ICRecentlyDeletedHeaderView *)v3 topLabelConstraint];
    v33[0] = topLabelConstraint;
    bottomLabelConstraint = [(ICRecentlyDeletedHeaderView *)v3 bottomLabelConstraint];
    v33[1] = bottomLabelConstraint;
    leadingLabelConstraint = [(ICRecentlyDeletedHeaderView *)v3 leadingLabelConstraint];
    v33[2] = leadingLabelConstraint;
    trailingLabelConstraint = [(ICRecentlyDeletedHeaderView *)v3 trailingLabelConstraint];
    v33[3] = trailingLabelConstraint;
    v30 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v30];

    [(ICRecentlyDeletedHeaderView *)v3 setPreservesSuperviewLayoutMargins:1];
    [(ICRecentlyDeletedHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICRecentlyDeletedHeaderView *)v3 registerForTraitChanges];
  }

  return v3;
}

- (void)updateLabel
{
  [(ICRecentlyDeletedHeaderView *)self frame];
  v4 = v3;
  if (v3 < 600.0)
  {
    v5 = 0;
    v6 = 4;
  }

  else
  {
    v5 = +[UIDevice ic_isiPad];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }
  }

  label = [(ICRecentlyDeletedHeaderView *)self label];
  [label setTextAlignment:v6];

  v8 = &UIFontTextStyleSubheadline;
  if ((v5 & 1) == 0)
  {
    v8 = &UIFontTextStyleFootnote;
  }

  v17 = [UIFont ic_preferredFontForTextStyle:*v8 maxContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  ic_fontWithSingleLineA = [v17 ic_fontWithSingleLineA];
  label2 = [(ICRecentlyDeletedHeaderView *)self label];
  [label2 setFont:ic_fontWithSingleLineA];

  topLabelConstraint = [(ICRecentlyDeletedHeaderView *)self topLabelConstraint];
  [topLabelConstraint setConstant:6.0];

  bottomLabelConstraint = [(ICRecentlyDeletedHeaderView *)self bottomLabelConstraint];
  [bottomLabelConstraint setConstant:-16.0];

  if (v4 >= 600.0 && (+[UIDevice ic_isiPhone]& 1) != 0)
  {
    v13 = -80.0;
    v14 = 80.0;
  }

  else
  {
    v13 = -11.0;
    v14 = 11.0;
  }

  leadingLabelConstraint = [(ICRecentlyDeletedHeaderView *)self leadingLabelConstraint];
  [leadingLabelConstraint setConstant:v14];

  trailingLabelConstraint = [(ICRecentlyDeletedHeaderView *)self trailingLabelConstraint];
  [trailingLabelConstraint setConstant:v13];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICRecentlyDeletedHeaderView;
  [(ICRecentlyDeletedHeaderView *)&v3 layoutSubviews];
  [(ICRecentlyDeletedHeaderView *)self updateLabel];
}

+ (id)sizingView
{
  if (qword_1006CB268 != -1)
  {
    sub_1004DB29C();
  }

  v3 = qword_1006CB270;

  return v3;
}

+ (double)heightForSuperview:(id)superview
{
  superviewCopy = superview;
  [superviewCopy bounds];
  v6 = v5;
  sizingView = [self sizingView];
  [superviewCopy frame];
  [sizingView setFrame:{0.0, 0.0}];
  [sizingView updateLabel];
  [superviewCopy layoutMargins];
  v9 = v6 + -22.0 - v8;
  [superviewCopy layoutMargins];
  v11 = v10;

  label = [sizingView label];
  LODWORD(v13) = 1148846080;
  LODWORD(v14) = 1112014848;
  [label systemLayoutSizeFittingSize:v9 - v11 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v13, v14}];
  v16 = v15;

  return v16 + 6.0 + 16.0;
}

- (void)registerForTraitChanges
{
  v4 = +[UITraitCollection ic_traitsAffectingSize];
  v3 = [(ICRecentlyDeletedHeaderView *)self registerForTraitChanges:v4 withAction:"updateLabel"];
}

@end