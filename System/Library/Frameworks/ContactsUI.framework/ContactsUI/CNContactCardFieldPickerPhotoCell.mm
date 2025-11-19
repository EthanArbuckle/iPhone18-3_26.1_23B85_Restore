@interface CNContactCardFieldPickerPhotoCell
- (CNAvatarView)avatarView;
- (CNContactCardFieldPickerPhotoCell)init;
- (void)prepareCellWithContact:(id)a3;
- (void)prepareForReuse;
- (void)setConfiguration;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CNContactCardFieldPickerPhotoCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNContactCardFieldPickerPhotoCell;
  [(CNContactCardFieldPickerPhotoCell *)&v4 prepareForReuse];
  v3 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [v3 removeFromSuperview];

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

    v7 = [(CNContactCardFieldPickerPhotoCell *)self contentView];
    [v7 addSubview:self->_avatarView];

    avatarView = self->_avatarView;
  }

  return avatarView;
}

- (void)prepareCellWithContact:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v21 = [(CNContactCardFieldPickerPhotoCell *)self defaultContentConfiguration];
  v4 = [(CNContactCardFieldPickerPhotoCell *)self contentView];
  v33[0] = v31;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v6 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [v6 setContacts:v5];

  v7 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  v28 = [v30 topAnchor];
  v29 = [v4 layoutMarginsGuide];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  [v25 bottomAnchor];
  v23 = v22 = v4;
  v24 = [v4 layoutMarginsGuide];
  v20 = [v24 bottomAnchor];
  v19 = [v23 constraintEqualToAnchor:v20];
  v32[1] = v19;
  v18 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  v8 = [v18 widthAnchor];
  v9 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  v10 = [v9 heightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v32[2] = v11;
  v12 = [(CNContactCardFieldPickerPhotoCell *)self avatarView];
  v13 = [v12 leadingAnchor];
  v14 = [v4 imageLayoutGuide];
  v15 = [v14 trailingAnchor];
  [v21 imageToTextPadding];
  v16 = [v13 constraintEqualToAnchor:v15 constant:?];
  v32[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v17];
}

- (void)setConfiguration
{
  v5 = [(CNContactCardFieldPickerPhotoCell *)self defaultContentConfiguration];
  if ([(CNContactCardFieldPickerPhotoCell *)self isSelected])
  {
    v3 = @"checkmark.circle.fill";
  }

  else
  {
    v3 = @"circle";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  [v5 setImage:v4];

  [(CNContactCardFieldPickerPhotoCell *)self setContentConfiguration:v5];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CNContactCardFieldPickerPhotoCell;
  [(CNContactCardFieldPickerPhotoCell *)&v5 setSelected:a3 animated:a4];
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