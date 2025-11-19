@interface CNSharingProfileOnboardingNameCell
- (CNSharingProfileOnboardingNameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)separatorHeight;
- (id)textFieldForIndex:(int64_t)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAvatarImage:(id)a3;
- (void)setFamilyName:(id)a3;
- (void)setGivenName:(id)a3;
- (void)setGivenNameField:(id)a3 familyNameField:(id)a4;
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

- (void)setFamilyName:(id)a3
{
  v4 = [a3 copy];
  [(UITextField *)self->_familyNameField setText:v4];
}

- (void)setGivenName:(id)a3
{
  v4 = [a3 copy];
  [(UITextField *)self->_givenNameField setText:v4];
}

- (void)setGivenNameField:(id)a3 familyNameField:(id)a4
{
  v16 = a3;
  v7 = a4;
  givenNameField = self->_givenNameField;
  if (givenNameField != v16)
  {
    v9 = [(UITextField *)givenNameField superview];
    v10 = [(CNSharingProfileOnboardingNameCell *)self contentView];

    if (v9 == v10)
    {
      [(UITextField *)self->_givenNameField removeFromSuperview];
    }

    objc_storeStrong(&self->_givenNameField, a3);
    v11 = [(CNSharingProfileOnboardingNameCell *)self contentView];
    [v11 addSubview:self->_givenNameField];
  }

  familyNameField = self->_familyNameField;
  if (familyNameField != v7)
  {
    v13 = [(UITextField *)familyNameField superview];
    v14 = [(CNSharingProfileOnboardingNameCell *)self contentView];

    if (v13 == v14)
    {
      [(UITextField *)self->_familyNameField removeFromSuperview];
    }

    objc_storeStrong(&self->_familyNameField, a4);
    v15 = [(CNSharingProfileOnboardingNameCell *)self contentView];
    [v15 addSubview:self->_familyNameField];
  }

  [(CNSharingProfileOnboardingNameCell *)self setNeedsLayout];
}

- (void)setAvatarImage:(id)a3
{
  v5 = a3;
  if (self->_avatarImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_avatarImage, a3);
    [(UIImageView *)self->_avatarImageView setImage:v6];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CNSharingProfileOnboardingNameCell;
  [(CNSharingProfileOnboardingNameCell *)&v27 layoutSubviews];
  v3 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v4 = 24.0;
  if (v3 == 1)
  {
    v5 = [(CNSharingProfileOnboardingNameCell *)self contentView];
    [v5 bounds];
    v4 = CGRectGetWidth(v28) + -84.0;

    v6 = 24.0;
  }

  else
  {
    v6 = 24.0 + 60.0 + 15.0;
  }

  if (v3 == 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4 + 60.0 + 15.0;
  }

  v8 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [v8 bounds];
  v9 = CGRectGetWidth(v29) + -123.0;

  v10 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [v10 bounds];
  v11 = CGRectGetWidth(v30) + -99.0;

  v12 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [v12 bounds];
  [(UIImageView *)self->_avatarImageView setFrame:v4, (CGRectGetHeight(v31) + -60.0) * 0.5, 60.0, 60.0];

  v13 = [(UIImageView *)self->_avatarImageView layer];
  [v13 setCornerRadius:30.0];

  v14 = [(CNSharingProfileOnboardingNameCell *)self textFieldForIndex:0];
  v15 = [(CNSharingProfileOnboardingNameCell *)self textFieldForIndex:1];
  v16 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [v16 bounds];
  v18 = v17 * 0.5;
  [(CNSharingProfileOnboardingNameCell *)self separatorHeight];
  [v14 setFrame:{v6, 0.0, v9, v18 - v19}];

  [v14 frame];
  MaxY = CGRectGetMaxY(v32);
  v21 = [(CNSharingProfileOnboardingNameCell *)self contentView];
  [v21 bounds];
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

- (id)textFieldForIndex:(int64_t)a3
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
  v7 = [v6 objectAtIndexedSubscript:a3];

  return v7;
}

- (double)separatorHeight
{
  v3 = [(CNSharingProfileOnboardingNameCell *)self window];

  v4 = 0.5;
  if (v3)
  {
    v5 = [(CNSharingProfileOnboardingNameCell *)self superview];

    if (v5)
    {
      v6 = [(CNSharingProfileOnboardingNameCell *)self window];
      v7 = [v6 screen];
      [v7 scale];
      v4 = 1.0 / v8;
    }
  }

  return v4;
}

- (CNSharingProfileOnboardingNameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = CNSharingProfileOnboardingNameCell;
  v4 = [(CNSharingProfileOnboardingNameCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
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
    v12 = [(CNSharingProfileOnboardingNameCell *)v4 contentView];
    [v12 addSubview:v4->_avatarImageView];

    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    fakeSeparator = v4->_fakeSeparator;
    v4->_fakeSeparator = v13;

    v15 = +[CNUIColorRepository contactStyleDefaultSeparatorColor];
    [(UIView *)v4->_fakeSeparator setBackgroundColor:v15];

    v16 = [(CNSharingProfileOnboardingNameCell *)v4 contentView];
    [v16 addSubview:v4->_fakeSeparator];

    v17 = v4;
  }

  return v4;
}

@end