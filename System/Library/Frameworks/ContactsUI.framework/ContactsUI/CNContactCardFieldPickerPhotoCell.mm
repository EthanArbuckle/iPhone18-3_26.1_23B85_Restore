@interface CNContactCardFieldPickerPhotoCell
- (CNAvatarView)avatarView;
- (CNContactCardFieldPickerPhotoCell)init;
- (void)prepareCellWithContact:(id)contact;
- (void)prepareForReuse;
- (void)setConfiguration;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation CNContactCardFieldPickerPhotoCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNContactCardFieldPickerPhotoCell;
  [(CNContactCardFieldPickerPhotoCell *)&v4 prepareForReuse];
  avatarView = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [avatarView removeFromSuperview];

  [(CNContactCardFieldPickerPhotoCell *)self setAvatarView:0];
}

- (CNAvatarView)avatarView
{
  avatarView = self->_avatarView;
  if (!avatarView)
  {
    v4 = [CNAvatarView alloc];
    v5 = [(CNAvatarView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_avatarView;
    self->_avatarView = v5;

    contentView = [(CNContactCardFieldPickerPhotoCell *)self contentView];
    [contentView addSubview:self->_avatarView];

    avatarView = self->_avatarView;
  }

  return avatarView;
}

- (void)prepareCellWithContact:(id)contact
{
  v33[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  defaultContentConfiguration = [(CNContactCardFieldPickerPhotoCell *)self defaultContentConfiguration];
  contentView = [(CNContactCardFieldPickerPhotoCell *)self contentView];
  v33[0] = contactCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  avatarView = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [avatarView setContacts:v5];

  avatarView2 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [avatarView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  avatarView3 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  topAnchor = [avatarView3 topAnchor];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[0] = v26;
  avatarView4 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [avatarView4 bottomAnchor];
  v23 = v22 = contentView;
  layoutMarginsGuide2 = [contentView layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  v19 = [v23 constraintEqualToAnchor:bottomAnchor];
  v32[1] = v19;
  avatarView5 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  widthAnchor = [avatarView5 widthAnchor];
  avatarView6 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  heightAnchor = [avatarView6 heightAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v32[2] = v11;
  avatarView7 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  leadingAnchor = [avatarView7 leadingAnchor];
  imageLayoutGuide = [contentView imageLayoutGuide];
  trailingAnchor = [imageLayoutGuide trailingAnchor];
  [defaultContentConfiguration imageToTextPadding];
  v16 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:?];
  v32[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v17];
}

- (void)setConfiguration
{
  defaultContentConfiguration = [(CNContactCardFieldPickerPhotoCell *)self defaultContentConfiguration];
  if ([(CNContactCardFieldPickerPhotoCell *)self isSelected])
  {
    v3 = @"checkmark.circle.fill";
  }

  else
  {
    v3 = @"circle";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  [defaultContentConfiguration setImage:v4];

  [(CNContactCardFieldPickerPhotoCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CNContactCardFieldPickerPhotoCell;
  [(CNContactCardFieldPickerPhotoCell *)&v5 setSelected:selected animated:animated];
  [(CNContactCardFieldPickerPhotoCell *)self setConfiguration];
}

- (CNContactCardFieldPickerPhotoCell)init
{
  v6.receiver = self;
  v6.super_class = CNContactCardFieldPickerPhotoCell;
  v2 = [(CNContactCardFieldPickerPhotoCell *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end