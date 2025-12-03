@interface NavShareETAHeaderView
- (NavShareETAHeaderView)initWithFrame:(CGRect)frame;
- (id)_effectiveTraitCollection;
- (void)_updateFonts;
- (void)_updateText;
- (void)setActiveContacts:(id)contacts;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NavShareETAHeaderView

- (void)_updateText
{
  v3 = [NSOrderedSet alloc];
  activeContacts = [(NavShareETAHeaderView *)self activeContacts];
  v21 = [v3 initWithArray:activeContacts];

  v5 = [v21 count];
  if (v5)
  {
    v6 = v5;
    firstObject = [v21 firstObject];
    contact = [firstObject contact];
    v9 = [CNContactFormatter stringFromContact:contact style:1000];
    v10 = v9;
    if (v9)
    {
      displayName = v9;
    }

    else
    {
      displayName = [firstObject displayName];
    }

    v14 = displayName;

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

    firstObject = +[NSBundle mainBundle];
    v14 = [firstObject localizedStringForKey:@"Share ETA [Card Subtitle]" value:@"localized string not found" table:0];
    [(UILabel *)self->_subtitleLabel setText:v14];
  }
}

- (void)setActiveContacts:(id)contacts
{
  contactsCopy = contacts;
  v6 = self->_activeContacts;
  v7 = contactsCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_activeContacts, contacts);
      [(NavShareETAHeaderView *)self _updateText];
      v7 = v9;
    }
  }
}

- (id)_effectiveTraitCollection
{
  traitCollection = [(NavShareETAHeaderView *)self traitCollection];
  _maximumContentSizeCategory = [(NavShareETAHeaderView *)self _maximumContentSizeCategory];
  v5 = [traitCollection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:_maximumContentSizeCategory];

  return v5;
}

- (void)_updateFonts
{
  _effectiveTraitCollection = [(NavShareETAHeaderView *)self _effectiveTraitCollection];
  v3 = [UIFont system28BoldCompatibleWithTraitCollection:_effectiveTraitCollection];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:_effectiveTraitCollection];
  [(UILabel *)self->_subtitleLabel setFont:v4];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NavShareETAHeaderView;
  changeCopy = change;
  [(NavShareETAHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(NavShareETAHeaderView *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(NavShareETAHeaderView *)self _updateFonts];
  }
}

- (NavShareETAHeaderView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = NavShareETAHeaderView;
  v3 = [(NavShareETAHeaderView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [(NavShareETAHeaderView *)v3 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v36[0] = v32;
    trailingAnchor = [(UILabel *)v3->_titleLabel trailingAnchor];
    trailingAnchor2 = [(NavShareETAHeaderView *)v3 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v36[1] = v29;
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [(NavShareETAHeaderView *)v3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:17.0];
    v36[2] = v26;
    leadingAnchor3 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    leadingAnchor4 = [(NavShareETAHeaderView *)v3 leadingAnchor];
    v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v36[3] = v23;
    trailingAnchor3 = [(UILabel *)v3->_subtitleLabel trailingAnchor];
    trailingAnchor4 = [(NavShareETAHeaderView *)v3 trailingAnchor];
    v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v36[4] = v13;
    topAnchor3 = [(UILabel *)v3->_subtitleLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v36[5] = v16;
    bottomAnchor2 = [(NavShareETAHeaderView *)v3 bottomAnchor];
    bottomAnchor3 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:17.0];
    v36[6] = v19;
    v20 = [NSArray arrayWithObjects:v36 count:7];
    [NSLayoutConstraint activateConstraints:v20];

    [(NavShareETAHeaderView *)v3 _updateFonts];
  }

  return v3;
}

@end