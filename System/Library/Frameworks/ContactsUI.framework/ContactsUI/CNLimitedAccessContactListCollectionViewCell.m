@interface CNLimitedAccessContactListCollectionViewCell
- (CNLimitedAccessContactListCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyContactListStyleWithAvatarImage;
- (void)layoutSubviews;
- (void)setAvatarImage:(id)a3;
- (void)setContact:(id)a3;
- (void)setIsShowingSearchResult:(BOOL)a3;
@end

@implementation CNLimitedAccessContactListCollectionViewCell

- (void)applyContactListStyleWithAvatarImage
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DB648];
  v42[0] = *MEMORY[0x1E69DB648];
  v4 = +[CNUIFontRepository contactStyleDefaultTextFont];
  v43[0] = v4;
  v42[1] = *MEMORY[0x1E695C2F8];
  v5 = +[CNUIFontRepository contactStyleDefaultBoldTextFont];
  v43[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

  v7 = [(CNContactFormatter *)self->_contactFormatter attributedStringForObjectValue:self->_contact withDefaultAttributes:v6];
  v38 = v6;
  if (![v7 length])
  {
    v8 = [v6 mutableCopy];
    v9 = +[CNUIFontRepository contactStyleDefaultTextFont];
    v10 = [v9 fontDescriptor];
    v11 = [v10 fontDescriptorWithSymbolicTraits:1];

    v12 = MEMORY[0x1E69DB878];
    v13 = +[CNUIFontRepository contactStyleDefaultTextFont];
    [v13 pointSize];
    v14 = [v12 fontWithDescriptor:v11 size:?];
    [v8 setObject:v14 forKeyedSubscript:v3];

    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16 = CNContactsUIBundle();
    v17 = [v16 localizedStringForKey:@"NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    v18 = [v15 initWithString:v17 attributes:v8];

    v7 = v18;
  }

  objc_opt_class();
  v19 = [(CNLimitedAccessContactListCollectionViewCell *)self contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (!v21)
  {
    v19 = [MEMORY[0x1E69DCC28] cellConfiguration];
  }

  [v19 setAttributedText:{v7, v38}];
  v22 = [(CNContact *)self->_contact phoneNumbers];
  v23 = [v22 count];

  contact = self->_contact;
  if (v23)
  {
    v25 = [(CNContact *)contact phoneNumbers];
    v26 = [v25 firstObject];
    v27 = [v26 value];
    v28 = [v27 formattedStringValue];

    v29 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v30 = [(CNContact *)contact emailAddresses];
  v29 = [v30 count];

  if (v29)
  {
    v25 = [(CNContact *)self->_contact emailAddresses];
    v26 = [v25 firstObject];
    v29 = [v26 value];
    v28 = 0;
    goto LABEL_12;
  }

  v28 = 0;
LABEL_13:
  v40[0] = v3;
  v31 = +[CNUIFontRepository navigationListDetailCellSubtitleFontRegular];
  v41[0] = v31;
  v40[1] = *MEMORY[0x1E69DB650];
  v32 = +[CNUIColorRepository navigationListDetailCellSubtitleTextColorRegular];
  v41[1] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

  caption = self->_caption;
  if (caption == 1)
  {
    v35 = v29;
    if (!(*(*MEMORY[0x1E6996570] + 16))())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (caption == 2)
  {
    v35 = v28;
    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
LABEL_16:
      v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v35 attributes:v33];
      [v19 setSecondaryAttributedText:v36];
    }
  }

LABEL_17:
  v37 = [(CNLimitedAccessContactListCollectionViewCell *)self avatarImage];
  [v19 setImage:v37];

  [(CNLimitedAccessContactListCollectionViewCell *)self setContentConfiguration:v19];
}

- (void)setAvatarImage:(id)a3
{
  objc_storeStrong(&self->_avatarImage, a3);

  [(CNLimitedAccessContactListCollectionViewCell *)self applyContactListStyleWithAvatarImage];
}

- (void)setIsShowingSearchResult:(BOOL)a3
{
  self->_isShowingSearchResult = a3;
  if (a3)
  {
    v9 = [(CNLimitedAccessContactListCollectionViewCell *)self separatorLayoutGuide];
    v4 = [v9 leadingAnchor];
    v5 = [(CNLimitedAccessContactListCollectionViewCell *)self contentView];
    v6 = [v5 layoutMarginsGuide];
    v7 = [v6 leadingAnchor];
    v8 = [v4 constraintEqualToAnchor:v7];
    [v8 setActive:1];
  }
}

- (void)setContact:(id)a3
{
  v5 = a3;
  if (self->_contact != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contact, a3);
    [(CNLimitedAccessContactListCollectionViewCell *)self applyContactListStyleWithAvatarImage];
    [(UIView *)self provideOnscreenContactToAppItents:v6];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CNLimitedAccessContactListCollectionViewCell;
  [(CNLimitedAccessContactListCollectionViewCell *)&v2 layoutSubviews];
}

- (CNLimitedAccessContactListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNLimitedAccessContactListCollectionViewCell;
  v3 = [(CNLimitedAccessContactListCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end