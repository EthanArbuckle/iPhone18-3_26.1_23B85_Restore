@interface MFContactInfoCell
- (MFContactInfoCell)initWithFrame:(CGRect)frame;
@end

@implementation MFContactInfoCell

- (MFContactInfoCell)initWithFrame:(CGRect)frame
{
  v51.receiver = self;
  v51.super_class = MFContactInfoCell;
  v3 = [(MFContactInfoCell *)&v51 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(MFContactInfoCell *)v3 contentView];
    [contentView addSubview:v3->_avatarView];

    contentView2 = [(MFContactInfoCell *)v3 contentView];
    [contentView2 addSubview:v3->_contactLabel];

    v11 = +[UIColor tableCellGroupedBackgroundColor];
    contentView3 = [(MFContactInfoCell *)v3 contentView];
    [contentView3 setBackgroundColor:v11];

    v13 = [UIImageView alloc];
    v14 = [UIImage systemImageNamed:MFImageGlyphExpandContact];
    v50 = [v13 initWithImage:v14];

    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor systemWhiteColor];
    [v50 setTintColor:v15];

    contentView4 = [(MFContactInfoCell *)v3 contentView];
    [contentView4 addSubview:v50];

    [(MFContactInfoCell *)v3 setChevronView:v50];
    leadingAnchor = [(MFAvatarView *)v3->_avatarView leadingAnchor];
    contentView5 = [(MFContactInfoCell *)v3 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
    v52[0] = v41;
    bottomAnchor = [(MFAvatarView *)v3->_avatarView bottomAnchor];
    contentView6 = [(MFContactInfoCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:-20.0 constant:?];
    v52[1] = v38;
    widthAnchor = [(MFAvatarView *)v3->_avatarView widthAnchor];
    v36 = [widthAnchor constraintEqualToConstant:32.0];
    v52[2] = v36;
    heightAnchor = [(MFAvatarView *)v3->_avatarView heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:32.0];
    v52[3] = v34;
    topAnchor = [(MFAvatarView *)v3->_avatarView topAnchor];
    contentView7 = [(MFContactInfoCell *)v3 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:20.0 constant:?];
    v52[4] = v31;
    leadingAnchor3 = [(UILabel *)v3->_contactLabel leadingAnchor];
    trailingAnchor = [(MFAvatarView *)v3->_avatarView trailingAnchor];
    v29 = [leadingAnchor3 constraintEqualToAnchor:20.0 constant:?];
    v52[5] = v29;
    centerYAnchor = [(UILabel *)v3->_contactLabel centerYAnchor];
    contentView8 = [(MFContactInfoCell *)v3 contentView];
    centerYAnchor2 = [contentView8 centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:?];
    v52[6] = v26;
    centerYAnchor3 = [(UIImageView *)v3->_chevronView centerYAnchor];
    contentView9 = [(MFContactInfoCell *)v3 contentView];
    centerYAnchor4 = [contentView9 centerYAnchor];
    v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v52[7] = v19;
    trailingAnchor2 = [(UIImageView *)v3->_chevronView trailingAnchor];
    contentView10 = [(MFContactInfoCell *)v3 contentView];
    trailingAnchor3 = [contentView10 trailingAnchor];
    v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-20.0];
    v52[8] = v23;
    v24 = [NSArray arrayWithObjects:v52 count:9];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v3;
}

@end