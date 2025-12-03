@interface CNStarkContactNameView
- (CNStarkContactNameView)initWithName:(id)name;
- (void)setupAvatar;
- (void)setupConstraints;
- (void)setupNameLabel;
@end

@implementation CNStarkContactNameView

- (void)setupConstraints
{
  v41[3] = *MEMORY[0x1E69E9840];
  nameLabel = [(CNStarkContactNameView *)self nameLabel];
  centerYAnchor = [nameLabel centerYAnchor];
  centerYAnchor2 = [(CNStarkContactNameView *)self centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v41[0] = v30;
  nameLabel2 = [(CNStarkContactNameView *)self nameLabel];
  rightAnchor = [nameLabel2 rightAnchor];
  avatarViewController = [(CNStarkContactNameView *)self avatarViewController];
  view = [avatarViewController view];
  leftAnchor = [view leftAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-8.0];
  v41[1] = v7;
  nameLabel3 = [(CNStarkContactNameView *)self nameLabel];
  widthAnchor = [nameLabel3 widthAnchor];
  widthAnchor2 = [(CNStarkContactNameView *)self widthAnchor];
  v11 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-38.0];
  v41[2] = v11;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];

  avatarViewController2 = [(CNStarkContactNameView *)self avatarViewController];
  view2 = [avatarViewController2 view];
  centerYAnchor3 = [view2 centerYAnchor];
  centerYAnchor4 = [(CNStarkContactNameView *)self centerYAnchor];
  v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v40[0] = v29;
  avatarViewController3 = [(CNStarkContactNameView *)self avatarViewController];
  view3 = [avatarViewController3 view];
  rightAnchor2 = [view3 rightAnchor];
  rightAnchor3 = [(CNStarkContactNameView *)self rightAnchor];
  v12 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
  v40[1] = v12;
  avatarViewController4 = [(CNStarkContactNameView *)self avatarViewController];
  view4 = [avatarViewController4 view];
  widthAnchor3 = [view4 widthAnchor];
  v16 = [widthAnchor3 constraintEqualToConstant:30.0];
  v40[2] = v16;
  avatarViewController5 = [(CNStarkContactNameView *)self avatarViewController];
  view5 = [avatarViewController5 view];
  heightAnchor = [view5 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:30.0];
  v40[3] = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];

  v39[0] = v38;
  v39[1] = v23;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  _cn_flatten = [v21 _cn_flatten];
  [(CNStarkContactNameView *)self addConstraints:_cn_flatten];
}

- (void)setupAvatar
{
  v10[1] = *MEMORY[0x1E69E9840];
  avatarViewController = [(CNStarkContactNameView *)self avatarViewController];
  view = [avatarViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contact = [(CNStarkContactNameView *)self contact];
  v10[0] = contact;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  avatarViewController2 = [(CNStarkContactNameView *)self avatarViewController];
  [avatarViewController2 setContacts:v6];

  avatarViewController3 = [(CNStarkContactNameView *)self avatarViewController];
  view2 = [avatarViewController3 view];
  [(CNStarkContactNameView *)self addSubview:view2];
}

- (void)setupNameLabel
{
  nameLabel = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[CNUIFontRepository carPlayNavigationBarContactNameFont];
  nameLabel2 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel2 setFont:v4];

  v6 = +[CNUIColorRepository carPlayNavigationBarContactNameTextColor];
  nameLabel3 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel3 setTextColor:v6];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  nameLabel4 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel4 setBackgroundColor:clearColor];

  nameLabel5 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel5 setTextAlignment:2];

  nameLabel6 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel6 setLineBreakMode:4];

  v12 = MEMORY[0x1E695CD80];
  contact = [(CNStarkContactNameView *)self contact];
  v14 = [v12 stringFromContact:contact style:0];
  nameLabel7 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel7 setText:v14];

  nameLabel8 = [(CNStarkContactNameView *)self nameLabel];
  [nameLabel8 setAccessibilityIdentifier:@"CNStarkContactNameViewNameLabel"];

  nameLabel9 = [(CNStarkContactNameView *)self nameLabel];
  [(CNStarkContactNameView *)self addSubview:nameLabel9];
}

- (CNStarkContactNameView)initWithName:(id)name
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = CNStarkContactNameView;
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(CNStarkContactNameView *)&v19 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_contact, name);
    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    nameLabel = v11->_nameLabel;
    v11->_nameLabel = v12;

    v14 = [CNAvatarViewController alloc];
    v15 = +[CNAvatarViewControllerSettings defaultSettings];
    v16 = [(CNAvatarViewController *)v14 initWithSettings:v15];
    avatarViewController = v11->_avatarViewController;
    v11->_avatarViewController = v16;

    [(CNStarkContactNameView *)v11 setupNameLabel];
    [(CNStarkContactNameView *)v11 setupAvatar];
    [(CNStarkContactNameView *)v11 setupConstraints];
  }

  return v11;
}

@end