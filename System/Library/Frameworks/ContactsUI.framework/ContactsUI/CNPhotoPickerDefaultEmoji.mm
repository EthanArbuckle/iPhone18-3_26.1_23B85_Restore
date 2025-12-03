@interface CNPhotoPickerDefaultEmoji
- (CNPhotoPickerDefaultEmoji)initWithEmojiString:(id)string colorVariant:(id)variant;
@end

@implementation CNPhotoPickerDefaultEmoji

- (CNPhotoPickerDefaultEmoji)initWithEmojiString:(id)string colorVariant:(id)variant
{
  stringCopy = string;
  variantCopy = variant;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerDefaultEmoji;
  v9 = [(CNPhotoPickerDefaultEmoji *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_emojiString, string);
    objc_storeStrong(&v10->_colorVariant, variant);
    v11 = v10;
  }

  return v10;
}

@end