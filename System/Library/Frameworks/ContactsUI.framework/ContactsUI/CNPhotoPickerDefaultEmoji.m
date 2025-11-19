@interface CNPhotoPickerDefaultEmoji
- (CNPhotoPickerDefaultEmoji)initWithEmojiString:(id)a3 colorVariant:(id)a4;
@end

@implementation CNPhotoPickerDefaultEmoji

- (CNPhotoPickerDefaultEmoji)initWithEmojiString:(id)a3 colorVariant:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerDefaultEmoji;
  v9 = [(CNPhotoPickerDefaultEmoji *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_emojiString, a3);
    objc_storeStrong(&v10->_colorVariant, a4);
    v11 = v10;
  }

  return v10;
}

@end