@interface NavShareETAHeaderView
- (NavShareETAHeaderView)initWithFrame:(CGRect)a3;
- (id)_effectiveTraitCollection;
- (void)_updateFonts;
- (void)_updateText;
- (void)setActiveContacts:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NavShareETAHeaderView

- (void)_updateText
{
  v3 = [NSOrderedSet alloc];
  v4 = [(NavShareETAHeaderView *)self activeContacts];
  v21 = [v3 initWithArray:v4];

  v5 = [v21 count];
  if (v5)
  {
    v6 = v5;
    v7 = [v21 firstObject];
    v8 = [v7 contact];
    v9 = [CNContactFormatter stringFromContact:v8 style:1000];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v7 displayName];
    }

    v14 = v11;

    v15 = v6 - 1;
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"[SharedETA] Sharing ETA [Card Title value:Sharing]" table:{@"localized string not found", 0}];

    v18 = [NSString localizedStringWithFormat:v17, v15, v14];
    [(UILabel *)self->_titleLabel setText:v18];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"[SharedETA] Sharing ETA subtitle" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v20];
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Share ETA [Card Title value:Not Sharing]" table:{@"localized string not found", 0}];
    [(UILabel *)self->_titleLabel setText:v13];

    v7 = +[NSBundle mainBundle];
    v14 = [v7 localizedStringForKey:@"Share ETA [Card Subtitle]" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v14];
  }
}

- (void)setActiveContacts:(id)a3
{
  v5 = a3;
  v6 = self->_activeContacts;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_activeContacts, a3);
      [(NavShareETAHeaderView *)self _updateText];
      v7 = v9;
    }
  }
}

- (id)_effectiveTraitCollection
{
  v3 = [(NavShareETAHeaderView *)self traitCollection];
  v4 = [(NavShareETAHeaderView *)self _maximumContentSizeCategory];
  v5 = [v3 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:v4];

  return v5;
}

- (void)_updateFonts
{
  v5 = [(NavShareETAHeaderView *)self _effectiveTraitCollection];
  v3 = [UIFont system28BoldCompatibleWithTraitCollection:v5];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v5];
  [(UILabel *)self->_subtitleLabel setFont:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = NavShareETAHeaderView;
  v4 = a3;
  [(NavShareETAHeaderView *)&v9 traitCollectionDidChange:v4];
  v5 = [(NavShareETAHeaderView *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
  if (v8)
  {
    [(NavShareETAHeaderView *)self _updateFonts];
  }
}

- (NavShareETAHeaderView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = NavShareETAHeaderView;
  v3 = [(NavShareETAHeaderView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavShareETAHeaderView *)v3 setAccessibilityIdentifier:v5];

    [(NavShareETAHeaderView *)v3 setUserInteractionEnabled:0];
    v6 = objc_opt_new();
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    v8 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v8];

    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v3->_titleLabel setMinimumScaleFactor:0.75];
    [(UILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(NavShareETAHeaderView *)v3 addSubview:v3->_titleLabel];
    v9 = objc_opt_new();
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v9;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    v11 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v11];

    [(UILabel *)v3->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(NavShareETAHeaderView *)v3 addSubview:v3->_subtitleLabel];
    v34 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v33 = [(NavShareETAHeaderView *)v3 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:16.0];
    v36[0] = v32;
    v31 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v30 = [(NavShareETAHeaderView *)v3 trailingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v36[1] = v29;
    v28 = [(UILabel *)v3->_titleLabel topAnchor];
    v27 = [(NavShareETAHeaderView *)v3 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:17.0];
    v36[2] = v26;
    v25 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    v24 = [(NavShareETAHeaderView *)v3 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:16.0];
    v36[3] = v23;
    v22 = [(UILabel *)v3->_subtitleLabel trailingAnchor];
    v12 = [(NavShareETAHeaderView *)v3 trailingAnchor];
    v13 = [v22 constraintEqualToAnchor:v12];
    v36[4] = v13;
    v14 = [(UILabel *)v3->_subtitleLabel topAnchor];
    v15 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v36[5] = v16;
    v17 = [(NavShareETAHeaderView *)v3 bottomAnchor];
    v18 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:17.0];
    v36[6] = v19;
    v20 = [NSArray arrayWithObjects:v36 count:7];
    [NSLayoutConstraint activateConstraints:v20];

    [(NavShareETAHeaderView *)v3 _updateFonts];
  }

  return v3;
}

@end