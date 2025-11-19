@interface CHFriendEmptyListView
- (CHFriendEmptyListView)initWithOutgoingInvites:(unint64_t)a3;
- (id)_descriptionForOutgoingInvites:(unint64_t)a3;
- (void)updateOutgoingInvites:(unint64_t)a3;
@end

@implementation CHFriendEmptyListView

- (CHFriendEmptyListView)initWithOutgoingInvites:(unint64_t)a3
{
  v50.receiver = self;
  v50.super_class = CHFriendEmptyListView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(CHFriendEmptyListView *)&v50 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v7)
  {
    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v7->titleLabel;
    v7->titleLabel = v8;

    [(UILabel *)v7->titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"SHARING_SETUP_TITLE" value:&stru_1008680E8 table:@"Localizable"];
    [(UILabel *)v7->titleLabel setText:v11];

    v12 = +[UIColor labelColor];
    [(UILabel *)v7->titleLabel setTextColor:v12];

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    [(UILabel *)v7->titleLabel setFont:v13];

    [(UILabel *)v7->titleLabel setNumberOfLines:0];
    [(UILabel *)v7->titleLabel setTextAlignment:1];
    [(CHFriendEmptyListView *)v7 addSubview:v7->titleLabel];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = v7->descriptionLabel;
    v7->descriptionLabel = v14;

    [(UILabel *)v7->descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(CHFriendEmptyListView *)v7 _descriptionForOutgoingInvites:a3];
    [(UILabel *)v7->descriptionLabel setText:v16];

    v17 = +[UIColor labelColor];
    [(UILabel *)v7->descriptionLabel setTextColor:v17];

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v7->descriptionLabel setFont:v18];

    [(UILabel *)v7->descriptionLabel setNumberOfLines:0];
    [(UILabel *)v7->descriptionLabel setTextAlignment:1];
    [(CHFriendEmptyListView *)v7 addSubview:v7->descriptionLabel];
    v19 = objc_alloc_init(UILayoutGuide);
    [(CHFriendEmptyListView *)v7 addLayoutGuide:v19];
    v49 = [v19 leadingAnchor];
    v48 = [(UILabel *)v7->titleLabel leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v51[0] = v47;
    v46 = [v19 bottomAnchor];
    v45 = [(CHFriendEmptyListView *)v7 centerYAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v51[1] = v44;
    v40 = v19;
    v43 = [v19 heightAnchor];
    v42 = [(UILabel *)v7->titleLabel heightAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v51[2] = v41;
    v39 = [(UILabel *)v7->titleLabel leadingAnchor];
    v38 = [(CHFriendEmptyListView *)v7 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:8.0];
    v51[3] = v37;
    v36 = [(UILabel *)v7->titleLabel trailingAnchor];
    v35 = [(CHFriendEmptyListView *)v7 trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:-8.0];
    v51[4] = v34;
    v33 = [(UILabel *)v7->titleLabel centerYAnchor];
    v32 = [v19 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v51[5] = v31;
    v30 = [(UILabel *)v7->descriptionLabel topAnchor];
    v20 = [(UILabel *)v7->titleLabel bottomAnchor];
    v21 = [v30 constraintEqualToAnchor:v20 constant:10.0];
    v51[6] = v21;
    v22 = [(UILabel *)v7->descriptionLabel widthAnchor];
    v23 = [(CHFriendEmptyListView *)v7 widthAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 multiplier:0.75];
    v51[7] = v24;
    v25 = [(UILabel *)v7->descriptionLabel centerXAnchor];
    v26 = [(CHFriendEmptyListView *)v7 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v51[8] = v27;
    v28 = [NSArray arrayWithObjects:v51 count:9];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v7;
}

- (void)updateOutgoingInvites:(unint64_t)a3
{
  v4 = [(CHFriendEmptyListView *)self _descriptionForOutgoingInvites:a3];
  [(UILabel *)self->descriptionLabel setText:v4];
}

- (id)_descriptionForOutgoingInvites:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (a3)
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