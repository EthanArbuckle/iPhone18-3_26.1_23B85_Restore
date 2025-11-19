@interface MFContactInfoCell
- (MFContactInfoCell)initWithFrame:(CGRect)a3;
@end

@implementation MFContactInfoCell

- (MFContactInfoCell)initWithFrame:(CGRect)a3
{
  v51.receiver = self;
  v51.super_class = MFContactInfoCell;
  v3 = [(MFContactInfoCell *)&v51 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[MFAvatarView alloc] initWithFrame:0.0, 0.0, 32.0, 32.0];
    avatarView = v3->_avatarView;
    v3->_avatarView = v4;

    [(MFAvatarView *)v3->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    contactLabel = v3->_contactLabel;
    v3->_contactLabel = v6;

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_contactLabel setFont:v8];

    [(UILabel *)v3->_contactLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(MFContactInfoCell *)v3 contentView];
    [v9 addSubview:v3->_avatarView];

    v10 = [(MFContactInfoCell *)v3 contentView];
    [v10 addSubview:v3->_contactLabel];

    v11 = +[UIColor tableCellGroupedBackgroundColor];
    v12 = [(MFContactInfoCell *)v3 contentView];
    [v12 setBackgroundColor:v11];

    v13 = [UIImageView alloc];
    v14 = [UIImage systemImageNamed:MFImageGlyphExpandContact];
    v50 = [v13 initWithImage:v14];

    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor systemWhiteColor];
    [v50 setTintColor:v15];

    v16 = [(MFContactInfoCell *)v3 contentView];
    [v16 addSubview:v50];

    [(MFContactInfoCell *)v3 setChevronView:v50];
    v49 = [(MFAvatarView *)v3->_avatarView leadingAnchor];
    v43 = [(MFContactInfoCell *)v3 contentView];
    v42 = [v43 leadingAnchor];
    v41 = [v49 constraintEqualToAnchor:20.0 constant:?];
    v52[0] = v41;
    v48 = [(MFAvatarView *)v3->_avatarView bottomAnchor];
    v40 = [(MFContactInfoCell *)v3 contentView];
    v39 = [v40 bottomAnchor];
    v38 = [v48 constraintEqualToAnchor:-20.0 constant:?];
    v52[1] = v38;
    v37 = [(MFAvatarView *)v3->_avatarView widthAnchor];
    v36 = [v37 constraintEqualToConstant:32.0];
    v52[2] = v36;
    v35 = [(MFAvatarView *)v3->_avatarView heightAnchor];
    v34 = [v35 constraintEqualToConstant:32.0];
    v52[3] = v34;
    v47 = [(MFAvatarView *)v3->_avatarView topAnchor];
    v33 = [(MFContactInfoCell *)v3 contentView];
    v32 = [v33 topAnchor];
    v31 = [v47 constraintEqualToAnchor:20.0 constant:?];
    v52[4] = v31;
    v46 = [(UILabel *)v3->_contactLabel leadingAnchor];
    v30 = [(MFAvatarView *)v3->_avatarView trailingAnchor];
    v29 = [v46 constraintEqualToAnchor:20.0 constant:?];
    v52[5] = v29;
    v45 = [(UILabel *)v3->_contactLabel centerYAnchor];
    v28 = [(MFContactInfoCell *)v3 contentView];
    v27 = [v28 centerYAnchor];
    v26 = [v45 constraintEqualToAnchor:?];
    v52[6] = v26;
    v44 = [(UIImageView *)v3->_chevronView centerYAnchor];
    v17 = [(MFContactInfoCell *)v3 contentView];
    v18 = [v17 centerYAnchor];
    v19 = [v44 constraintEqualToAnchor:v18];
    v52[7] = v19;
    v20 = [(UIImageView *)v3->_chevronView trailingAnchor];
    v21 = [(MFContactInfoCell *)v3 contentView];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:-20.0];
    v52[8] = v23;
    v24 = [NSArray arrayWithObjects:v52 count:9];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v3;
}

@end