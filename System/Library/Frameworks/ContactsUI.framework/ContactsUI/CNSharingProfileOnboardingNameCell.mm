@interface CNSharingProfileOnboardingNameCell
- (CNSharingProfileOnboardingNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)separatorHeight;
- (id)textFieldForIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAvatarImage:(id)image;
- (void)setFamilyName:(id)name;
- (void)setGivenName:(id)name;
- (void)setGivenNameField:(id)field familyNameField:(id)nameField;
@end

@implementation CNSharingProfileOnboardingNameCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CNSharingProfileOnboardingNameCell;
  [(CNSharingProfileOnboardingNameCell *)&v5 prepareForReuse];
  [(UIImageView *)self->_avatarImageView setImage:0];
  [(UITextField *)self->_familyNameField removeFromSuperview];
  familyNameField = self->_familyNameField;
  self->_familyNameField = 0;

  [(UITextField *)self->_givenNameField removeFromSuperview];
  givenNameField = self->_givenNameField;
  self->_givenNameField = 0;
}

- (void)setFamilyName:(id)name
{
  v4 = [name copy];
  [(UITextField *)self->_familyNameField setText:v4];
}

- (void)setGivenName:(id)name
{
  v4 = [name copy];
  [(UITextField *)self->_givenNameField setText:v4];
}

- (void)setGivenNameField:(id)field familyNameField:(id)nameField
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  givenNameField = self->_givenNameField;
  if (givenNameField != fieldCopy)
  {
    superview = [(UITextField *)givenNameField superview];
    contentView = [(CNSharingProfileOnboardingNameCell *)self contentView];

    if (superview == contentView)
    {
      [(UITextField *)self->_givenNameField removeFromSuperview];
    }

    objc_storeStrong(&self->_givenNameField, field);
    contentView2 = [(CNSharingProfileOnboardingNameCell *)self contentView];
    [contentView2 addSubview:self->_givenNameField];
  }

  familyNameField = self->_familyNameField;
  if (familyNameField != nameFieldCopy)
  {
    superview2 = [(UITextField *)familyNameField superview];
    contentView3 = [(CNSharingProfileOnboardingNameCell *)self contentView];

    if (superview2 == contentView3)
    {
      [(UITextField *)self->_familyNameField removeFromSuperview];
    }

    objc_storeStrong(&self->_familyNameField, nameField);
    contentView4 = [(CNSharingProfileOnboardingNameCell *)self contentView];
    [contentView4 addSubview:self->_familyNameField];
  }

  [(CNSharingProfileOnboardingNameCell *)self setNeedsLayout];
}

- (void)setAvatarImage:(id)image
{
  imageCopy = image;
  if (self->_avatarImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_avatarImage, image);
    [(UIImageView *)self->_avatarImageView setImage:v6];
    imageCopy = v6;
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CNSharingProfileOnboardingNameCell;
  [(CNSharingProfileOnboardingNameCell *)&v27 layoutSubviews];
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = 24.0;
  if (userInterfaceLayoutDirection == 1)
  {
    contentView = [(CNSharingProfileOnboardingNameCell *)self contentView];
    [contentView bounds];
    v4 = CGRectGetWidth(v28) + -84.0;

    v6 = 24.0;
  }

  else
  {
    v6 = 24.0 + 60.0 + 15.0;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4 + 60.0 + 15.0;
  }

  contentView2 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [contentView2 bounds];
  v9 = CGRectGetWidth(v29) + -123.0;

  contentView3 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [contentView3 bounds];
  v11 = CGRectGetWidth(v30) + -99.0;

  contentView4 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [contentView4 bounds];
  [(UIImageView *)self->_avatarImageView setFrame:v4, (CGRectGetHeight(v31) + -60.0) * 0.5, 60.0, 60.0];

  layer = [(UIImageView *)self->_avatarImageView layer];
  [layer setCornerRadius:30.0];

  v14 = [(CNSharingProfileOnboardingNameCell *)self textFieldForIndex:0];
  v15 = [(CNSharingProfileOnboardingNameCell *)self textFieldForIndex:1];
  contentView5 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [contentView5 bounds];
  v18 = v17 * 0.5;
  [(CNSharingProfileOnboardingNameCell *)self separatorHeight];
  [v14 setFrame:{v6, 0.0, v9, v18 - v19}];

  [v14 frame];
  MaxY = CGRectGetMaxY(v32);
  contentView6 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [contentView6 bounds];
  Height = CGRectGetHeight(v33);
  [v14 bounds];
  v23 = Height - CGRectGetHeight(v34);
  [(CNSharingProfileOnboardingNameCell *)self separatorHeight];
  [v15 setFrame:{v6, MaxY, v9, v23 - v24}];

  [v14 frame];
  v25 = CGRectGetMaxY(v35);
  [(CNSharingProfileOnboardingNameCell *)self separatorHeight];
  [(UIView *)self->_fakeSeparator setFrame:v7, v25, v11, v26];
}

- (id)textFieldForIndex:(int64_t)index
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self->_nameOrder == 2)
  {
    v10[0] = self->_familyNameField;
    v4 = &OBJC_IVAR___CNSharingProfileOnboardingNameCell__givenNameField;
    p_givenNameField = v10;
  }

  else
  {
    givenNameField = self->_givenNameField;
    v4 = &OBJC_IVAR___CNSharingProfileOnboardingNameCell__familyNameField;
    p_givenNameField = &givenNameField;
  }

  p_givenNameField[1] = *(&self->super.super.super.super.isa + *v4);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v7 = [v6 objectAtIndexedSubscript:index];

  return v7;
}

- (double)separatorHeight
{
  window = [(CNSharingProfileOnboardingNameCell *)self window];

  v4 = 0.5;
  if (window)
  {
    superview = [(CNSharingProfileOnboardingNameCell *)self superview];

    if (superview)
    {
      window2 = [(CNSharingProfileOnboardingNameCell *)self window];
      screen = [window2 screen];
      [screen scale];
      v4 = 1.0 / v8;
    }
  }

  return v4;
}

- (CNSharingProfileOnboardingNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = CNSharingProfileOnboardingNameCell;
  v4 = [(CNSharingProfileOnboardingNameCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    avatarImageView = v4->_avatarImageView;
    v4->_avatarImageView = v10;

    [(UIImageView *)v4->_avatarImageView setClipsToBounds:1];
    contentView = [(CNSharingProfileOnboardingNameCell *)v4 contentView];
    [contentView addSubview:v4->_avatarImageView];

    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    fakeSeparator = v4->_fakeSeparator;
    v4->_fakeSeparator = v13;

    v15 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
    [(UIView *)v4->_fakeSeparator setBackgroundColor:v15];

    contentView2 = [(CNSharingProfileOnboardingNameCell *)v4 contentView];
    [contentView2 addSubview:v4->_fakeSeparator];

    v17 = v4;
  }

  return v4;
}

@end