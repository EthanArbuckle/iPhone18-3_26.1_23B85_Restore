@interface CHFriendEmptyListView
- (CHFriendEmptyListView)initWithOutgoingInvites:(unint64_t)invites;
- (id)_descriptionForOutgoingInvites:(unint64_t)invites;
- (void)updateOutgoingInvites:(unint64_t)invites;
@end

@implementation CHFriendEmptyListView

- (CHFriendEmptyListView)initWithOutgoingInvites:(unint64_t)invites
{
  v50.receiver = self;
  v50.super_class = CHFriendEmptyListView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CHFriendEmptyListView *)&v50 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = height->titleLabel;
    height->titleLabel = v8;

    [(UILabel *)height->titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"SHARING_SETUP_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)height->titleLabel setText:v11];

    v12 = +[UIColor labelColor];
    [(UILabel *)height->titleLabel setTextColor:v12];

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    [(UILabel *)height->titleLabel setFont:v13];

    [(UILabel *)height->titleLabel setNumberOfLines:0];
    [(UILabel *)height->titleLabel setTextAlignment:1];
    [(CHFriendEmptyListView *)height addSubview:height->titleLabel];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = height->descriptionLabel;
    height->descriptionLabel = v14;

    [(UILabel *)height->descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(CHFriendEmptyListView *)height _descriptionForOutgoingInvites:invites];
    [(UILabel *)height->descriptionLabel setText:v16];

    v17 = +[UIColor labelColor];
    [(UILabel *)height->descriptionLabel setTextColor:v17];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)height->descriptionLabel setFont:v18];

    [(UILabel *)height->descriptionLabel setNumberOfLines:0];
    [(UILabel *)height->descriptionLabel setTextAlignment:1];
    [(CHFriendEmptyListView *)height addSubview:height->descriptionLabel];
    v19 = objc_alloc_init(UILayoutGuide);
    [(CHFriendEmptyListView *)height addLayoutGuide:v19];
    leadingAnchor = [v19 leadingAnchor];
    leadingAnchor2 = [(UILabel *)height->titleLabel leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v47;
    bottomAnchor = [v19 bottomAnchor];
    centerYAnchor = [(CHFriendEmptyListView *)height centerYAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:centerYAnchor];
    v51[1] = v44;
    v40 = v19;
    heightAnchor = [v19 heightAnchor];
    heightAnchor2 = [(UILabel *)height->titleLabel heightAnchor];
    v41 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v51[2] = v41;
    leadingAnchor3 = [(UILabel *)height->titleLabel leadingAnchor];
    leadingAnchor4 = [(CHFriendEmptyListView *)height leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    v51[3] = v37;
    trailingAnchor = [(UILabel *)height->titleLabel trailingAnchor];
    trailingAnchor2 = [(CHFriendEmptyListView *)height trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v51[4] = v34;
    centerYAnchor2 = [(UILabel *)height->titleLabel centerYAnchor];
    topAnchor = [v19 topAnchor];
    v31 = [centerYAnchor2 constraintEqualToAnchor:topAnchor];
    v51[5] = v31;
    topAnchor2 = [(UILabel *)height->descriptionLabel topAnchor];
    bottomAnchor2 = [(UILabel *)height->titleLabel bottomAnchor];
    v21 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
    v51[6] = v21;
    widthAnchor = [(UILabel *)height->descriptionLabel widthAnchor];
    widthAnchor2 = [(CHFriendEmptyListView *)height widthAnchor];
    v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.75];
    v51[7] = v24;
    centerXAnchor = [(UILabel *)height->descriptionLabel centerXAnchor];
    centerXAnchor2 = [(CHFriendEmptyListView *)height centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v51[8] = v27;
    v28 = [NSArray arrayWithObjects:v51 count:9];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return height;
}

- (void)updateOutgoingInvites:(unint64_t)invites
{
  v4 = [(CHFriendEmptyListView *)self _descriptionForOutgoingInvites:invites];
  [(UILabel *)self->descriptionLabel setText:v4];
}

- (id)_descriptionForOutgoingInvites:(unint64_t)invites
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (invites)
  {
    v6 = @"SHARING_LIST_PENDING";
  }

  else
  {
    v6 = @"SHARING_LIST_EMPTY";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1008680E8 table:@"Localizable"];

  return v7;
}

@end