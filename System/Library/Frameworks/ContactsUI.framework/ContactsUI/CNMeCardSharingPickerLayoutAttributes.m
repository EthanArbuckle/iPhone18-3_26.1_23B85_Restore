@interface CNMeCardSharingPickerLayoutAttributes
+ (id)buddyHeaderFont;
+ (id)layoutAttributesForBuddy;
+ (id)layoutAttributesForSettings;
+ (id)settingsHeaderFont;
- (CGSize)avatarViewSize;
- (CNMeCardSharingPickerLayoutAttributes)initWithTopToAvatarPadding:(double)a3 headerFont:(id)a4 avatarViewSize:(CGSize)a5 avatarViewToNamePadding:(double)a6 backgroundColor:(id)a7;
@end

@implementation CNMeCardSharingPickerLayoutAttributes

- (CGSize)avatarViewSize
{
  width = self->_avatarViewSize.width;
  height = self->_avatarViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CNMeCardSharingPickerLayoutAttributes)initWithTopToAvatarPadding:(double)a3 headerFont:(id)a4 avatarViewSize:(CGSize)a5 avatarViewToNamePadding:(double)a6 backgroundColor:(id)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a4;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = CNMeCardSharingPickerLayoutAttributes;
  v16 = [(CNMeCardSharingPickerLayoutAttributes *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_topToAvatarPadding = a3;
    objc_storeStrong(&v16->_headerFont, a4);
    v17->_avatarViewSize.width = width;
    v17->_avatarViewSize.height = height;
    v17->_avatarViewToNamePadding = a6;
    objc_storeStrong(&v17->_backgroundColor, a7);
    v18 = v17;
  }

  return v17;
}

+ (id)layoutAttributesForSettings
{
  v3 = [a1 settingsHeaderFont];
  v4 = [[a1 alloc] initWithTopToAvatarPadding:v3 headerFont:0 avatarViewSize:10.0 avatarViewToNamePadding:80.0 backgroundColor:{80.0, 5.0}];

  return v4;
}

+ (id)layoutAttributesForBuddy
{
  v3 = [a1 buddyHeaderFont];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [[a1 alloc] initWithTopToAvatarPadding:v3 headerFont:v4 avatarViewSize:20.0 avatarViewToNamePadding:100.0 backgroundColor:{100.0, 20.0}];

  return v5;
}

+ (id)settingsHeaderFont
{
  v2 = *MEMORY[0x1E69DDDB0];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v5 <= 320.0)
  {
    v6 = *MEMORY[0x1E69DDDB8];

    v2 = v6;
  }

  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v2];
  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)buddyHeaderFont
{
  v2 = *MEMORY[0x1E69DDD58];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v5 <= 320.0)
  {
    v6 = *MEMORY[0x1E69DDDB8];

    v2 = v6;
  }

  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v2];
  v8 = MEMORY[0x1E69DB878];
  v9 = [v7 fontDescriptorWithSymbolicTraits:2];
  v10 = [v8 fontWithDescriptor:v9 size:0.0];

  return v10;
}

@end