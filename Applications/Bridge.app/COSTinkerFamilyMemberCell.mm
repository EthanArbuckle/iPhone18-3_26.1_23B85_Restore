@interface COSTinkerFamilyMemberCell
+ (id)nameFormatter;
- (COSTinkerFamilyMemberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation COSTinkerFamilyMemberCell

+ (id)nameFormatter
{
  if (qword_1002BD6C0 != -1)
  {
    sub_10018C2E0();
  }

  v3 = qword_1002BD6B8;

  return v3;
}

- (COSTinkerFamilyMemberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v66.receiver = self;
  v66.super_class = COSTinkerFamilyMemberCell;
  v4 = [(COSTinkerFamilyMemberCell *)&v66 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    sub_10018B1A0(v4, v10);

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = BPSTextColor();
    [(UILabel *)v4->_titleLabel setTextColor:v11];

    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_titleLabel setFont:v12];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    sub_10018B1B4(v4, v13);

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = BPSDetailTextColor();
    [(UILabel *)v4->_subtitleLabel setTextColor:v14];

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v4->_subtitleLabel setFont:v15];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    v16 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    sub_10018B1C8(v4, v16);

    [(UIImageView *)v4->_profilePictureView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_profilePictureView setContentMode:1];
    LODWORD(v17) = 1148846080;
    [(UIImageView *)v4->_profilePictureView setContentHuggingPriority:0 forAxis:v17];
    widthAnchor = [(UIImageView *)v4->_profilePictureView widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:36.0];
    [v19 setActive:1];

    v20 = v4->_profilePictureView;
    heightAnchor = [(UIImageView *)v20 heightAnchor];
    widthAnchor2 = [(UIImageView *)v4->_profilePictureView widthAnchor];
    v23 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    [v23 setActive:1];

    objc_opt_self();
    v24 = objc_alloc_init(COSTinkerFamilyBadgeView);
    sub_10018B1DC(v4, v24);

    [(COSTinkerFamilyBadgeView *)v4->_profileWatchBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor3 = [(COSTinkerFamilyBadgeView *)v4->_profileWatchBadgeView widthAnchor];
    v26 = [widthAnchor3 constraintEqualToConstant:14.0];
    [v26 setActive:1];

    v27 = v4->_profileWatchBadgeView;
    heightAnchor2 = [(COSTinkerFamilyBadgeView *)v27 heightAnchor];
    widthAnchor4 = [(COSTinkerFamilyBadgeView *)v4->_profileWatchBadgeView widthAnchor];
    v30 = [heightAnchor2 constraintEqualToAnchor:widthAnchor4];
    [v30 setActive:1];

    contentView = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [contentView addSubview:v4->_profileWatchBadgeView];

    v32 = objc_alloc_init(UIStackView);
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v32 setAxis:1];
    [v32 setSpacing:2.0];
    [v32 addArrangedSubview:v4->_titleLabel];
    v65 = v32;
    [v32 addArrangedSubview:v4->_subtitleLabel];
    v33 = [UIStackView alloc];
    contentView2 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [contentView2 bounds];
    v35 = [v33 initWithFrame:?];

    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v35 setAxis:0];
    [v35 setAlignment:1];
    [v35 setSpacing:16.0];
    [v35 addArrangedSubview:v4->_profilePictureView];
    [v35 addArrangedSubview:v32];
    contentView3 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [contentView3 addSubview:v35];

    leadingAnchor = [v35 leadingAnchor];
    contentView4 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v67[0] = v61;
    trailingAnchor = [v35 trailingAnchor];
    contentView5 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
    v67[1] = v57;
    topAnchor = [v35 topAnchor];
    contentView6 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:11.0];
    v67[2] = v53;
    bottomAnchor = [v35 bottomAnchor];
    contentView7 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-11.0];
    v67[3] = v49;
    v48 = v4->_profileWatchBadgeView;
    trailingAnchor3 = [(COSTinkerFamilyBadgeView *)v48 trailingAnchor];
    v46 = v4->_profilePictureView;
    trailingAnchor4 = [(UIImageView *)v46 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:3.0];
    v67[4] = v38;
    v39 = v4->_profileWatchBadgeView;
    bottomAnchor3 = [(COSTinkerFamilyBadgeView *)v39 bottomAnchor];
    v41 = v4->_profilePictureView;
    bottomAnchor4 = [(UIImageView *)v41 bottomAnchor];
    v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:2.0];
    v67[5] = v43;
    v44 = [NSArray arrayWithObjects:v67 count:6];
    [NSLayoutConstraint activateConstraints:v44];

    contentView8 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [contentView8 bringSubviewToFront:v4->_profileWatchBadgeView];
  }

  return v4;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = COSTinkerFamilyMemberCell;
  [(COSTinkerFamilyMemberCell *)&v7 prepareForReuse];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  if (self)
  {
    titleLabel = self->_titleLabel;
  }

  else
  {
    titleLabel = 0;
  }

  [(UILabel *)titleLabel setFont:v3];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (self)
  {
    subtitleLabel = self->_subtitleLabel;
  }

  else
  {
    subtitleLabel = 0;
  }

  [(UILabel *)subtitleLabel setFont:v5];
}

@end