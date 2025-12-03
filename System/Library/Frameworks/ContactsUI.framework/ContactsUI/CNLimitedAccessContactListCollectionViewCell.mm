@interface CNLimitedAccessContactListCollectionViewCell
- (CNLimitedAccessContactListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyContactListStyleWithAvatarImage;
- (void)layoutSubviews;
- (void)setAvatarImage:(id)image;
- (void)setContact:(id)contact;
- (void)setIsShowingSearchResult:(BOOL)result;
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
    fontDescriptor = [v9 fontDescriptor];
    v11 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

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
  contentConfiguration = [(CNLimitedAccessContactListCollectionViewCell *)self contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v20 = contentConfiguration;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (!v21)
  {
    contentConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  }

  [contentConfiguration setAttributedText:{v7, v38}];
  phoneNumbers = [(CNContact *)self->_contact phoneNumbers];
  v23 = [phoneNumbers count];

  contact = self->_contact;
  if (v23)
  {
    phoneNumbers2 = [(CNContact *)contact phoneNumbers];
    firstObject = [phoneNumbers2 firstObject];
    value = [firstObject value];
    formattedStringValue = [value formattedStringValue];

    value2 = 0;
LABEL_12:

    goto LABEL_13;
  }

  emailAddresses = [(CNContact *)contact emailAddresses];
  value2 = [emailAddresses count];

  if (value2)
  {
    phoneNumbers2 = [(CNContact *)self->_contact emailAddresses];
    firstObject = [phoneNumbers2 firstObject];
    value2 = [firstObject value];
    formattedStringValue = 0;
    goto LABEL_12;
  }

  formattedStringValue = 0;
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
    v35 = value2;
    if (!(*(*MEMORY[0x1E6996570] + 16))())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (caption == 2)
  {
    v35 = formattedStringValue;
    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
LABEL_16:
      v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v35 attributes:v33];
      [contentConfiguration setSecondaryAttributedText:v36];
    }
  }

LABEL_17:
  avatarImage = [(CNLimitedAccessContactListCollectionViewCell *)self avatarImage];
  [contentConfiguration setImage:avatarImage];

  [(CNLimitedAccessContactListCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

- (void)setAvatarImage:(id)image
{
  objc_storeStrong(&self->_avatarImage, image);

  [(CNLimitedAccessContactListCollectionViewCell *)self applyContactListStyleWithAvatarImage];
}

- (void)setIsShowingSearchResult:(BOOL)result
{
  self->_isShowingSearchResult = result;
  if (result)
  {
    separatorLayoutGuide = [(CNLimitedAccessContactListCollectionViewCell *)self separatorLayoutGuide];
    leadingAnchor = [separatorLayoutGuide leadingAnchor];
    contentView = [(CNLimitedAccessContactListCollectionViewCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v8 setActive:1];
  }
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_contact, contact);
    [(CNLimitedAccessContactListCollectionViewCell *)self applyContactListStyleWithAvatarImage];
    [(UIView *)self provideOnscreenContactToAppItents:v6];
    contactCopy = v6;
  }
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CNLimitedAccessContactListCollectionViewCell;
  [(CNLimitedAccessContactListCollectionViewCell *)&v2 layoutSubviews];
}

- (CNLimitedAccessContactListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNLimitedAccessContactListCollectionViewCell;
  v3 = [(CNLimitedAccessContactListCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end