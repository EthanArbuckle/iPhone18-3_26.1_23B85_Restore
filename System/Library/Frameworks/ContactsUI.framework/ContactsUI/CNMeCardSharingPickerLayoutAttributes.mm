@interface CNMeCardSharingPickerLayoutAttributes
+ (id)buddyHeaderFont;
+ (id)layoutAttributesForBuddy;
+ (id)layoutAttributesForSettings;
+ (id)settingsHeaderFont;
- (CGSize)avatarViewSize;
- (CNMeCardSharingPickerLayoutAttributes)initWithTopToAvatarPadding:(double)padding headerFont:(id)font avatarViewSize:(CGSize)size avatarViewToNamePadding:(double)namePadding backgroundColor:(id)color;
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

- (CNMeCardSharingPickerLayoutAttributes)initWithTopToAvatarPadding:(double)padding headerFont:(id)font avatarViewSize:(CGSize)size avatarViewToNamePadding:(double)namePadding backgroundColor:(id)color
{
  height = size.height;
  width = size.width;
  fontCopy = font;
  colorCopy = color;
  v20.receiver = self;
  v20.super_class = CNMeCardSharingPickerLayoutAttributes;
  v16 = [(CNMeCardSharingPickerLayoutAttributes *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_topToAvatarPadding = padding;
    objc_storeStrong(&v16->_headerFont, font);
    v17->_avatarViewSize.width = width;
    v17->_avatarViewSize.height = height;
    v17->_avatarViewToNamePadding = namePadding;
    objc_storeStrong(&v17->_backgroundColor, color);
    v18 = v17;
  }

  return v17;
}

+ (id)layoutAttributesForSettings
{
  settingsHeaderFont = [self settingsHeaderFont];
  v4 = [[self alloc] initWithTopToAvatarPadding:settingsHeaderFont headerFont:0 avatarViewSize:10.0 avatarViewToNamePadding:80.0 backgroundColor:{80.0, 5.0}];

  return v4;
}

+ (id)layoutAttributesForBuddy
{
  buddyHeaderFont = [self buddyHeaderFont];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [[self alloc] initWithTopToAvatarPadding:buddyHeaderFont headerFont:systemBackgroundColor avatarViewSize:20.0 avatarViewToNamePadding:100.0 backgroundColor:{100.0, 20.0}];

  return v5;
}

+ (id)settingsHeaderFont
{
  v2 = *MEMORY[0x1E69DDDB0];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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