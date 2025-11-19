@interface COSTinkerFamilyMemberCell
+ (id)nameFormatter;
- (COSTinkerFamilyMemberCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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

- (COSTinkerFamilyMemberCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v66.receiver = self;
  v66.super_class = COSTinkerFamilyMemberCell;
  v4 = [(COSTinkerFamilyMemberCell *)&v66 initWithStyle:a3 reuseIdentifier:a4];
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
    v18 = [(UIImageView *)v4->_profilePictureView widthAnchor];
    v19 = [v18 constraintEqualToConstant:36.0];
    [v19 setActive:1];

    v20 = v4->_profilePictureView;
    v21 = [(UIImageView *)v20 heightAnchor];
    v22 = [(UIImageView *)v4->_profilePictureView widthAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    objc_opt_self();
    v24 = objc_alloc_init(COSTinkerFamilyBadgeView);
    sub_10018B1DC(v4, v24);

    [(COSTinkerFamilyBadgeView *)v4->_profileWatchBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(COSTinkerFamilyBadgeView *)v4->_profileWatchBadgeView widthAnchor];
    v26 = [v25 constraintEqualToConstant:14.0];
    [v26 setActive:1];

    v27 = v4->_profileWatchBadgeView;
    v28 = [(COSTinkerFamilyBadgeView *)v27 heightAnchor];
    v29 = [(COSTinkerFamilyBadgeView *)v4->_profileWatchBadgeView widthAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [v31 addSubview:v4->_profileWatchBadgeView];

    v32 = objc_alloc_init(UIStackView);
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v32 setAxis:1];
    [v32 setSpacing:2.0];
    [v32 addArrangedSubview:v4->_titleLabel];
    v65 = v32;
    [v32 addArrangedSubview:v4->_subtitleLabel];
    v33 = [UIStackView alloc];
    v34 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [v34 bounds];
    v35 = [v33 initWithFrame:?];

    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v35 setAxis:0];
    [v35 setAlignment:1];
    [v35 setSpacing:16.0];
    [v35 addArrangedSubview:v4->_profilePictureView];
    [v35 addArrangedSubview:v32];
    v36 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [v36 addSubview:v35];

    v63 = [v35 leadingAnchor];
    v64 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    v62 = [v64 leadingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:15.0];
    v67[0] = v61;
    v59 = [v35 trailingAnchor];
    v60 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    v58 = [v60 trailingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:-15.0];
    v67[1] = v57;
    v55 = [v35 topAnchor];
    v56 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    v54 = [v56 topAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:11.0];
    v67[2] = v53;
    v51 = [v35 bottomAnchor];
    v52 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    v50 = [v52 bottomAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:-11.0];
    v67[3] = v49;
    v48 = v4->_profileWatchBadgeView;
    v47 = [(COSTinkerFamilyBadgeView *)v48 trailingAnchor];
    v46 = v4->_profilePictureView;
    v37 = [(UIImageView *)v46 trailingAnchor];
    v38 = [v47 constraintEqualToAnchor:v37 constant:3.0];
    v67[4] = v38;
    v39 = v4->_profileWatchBadgeView;
    v40 = [(COSTinkerFamilyBadgeView *)v39 bottomAnchor];
    v41 = v4->_profilePictureView;
    v42 = [(UIImageView *)v41 bottomAnchor];
    v43 = [v40 constraintEqualToAnchor:v42 constant:2.0];
    v67[5] = v43;
    v44 = [NSArray arrayWithObjects:v67 count:6];
    [NSLayoutConstraint activateConstraints:v44];

    v45 = [(COSTinkerFamilyMemberCell *)v4 contentView];
    [v45 bringSubviewToFront:v4->_profileWatchBadgeView];
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