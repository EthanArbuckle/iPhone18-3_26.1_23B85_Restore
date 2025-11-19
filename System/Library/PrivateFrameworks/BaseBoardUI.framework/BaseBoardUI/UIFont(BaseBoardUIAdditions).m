@interface UIFont(BaseBoardUIAdditions)
+ (id)bsui_defaultFontForTextStyle:()BaseBoardUIAdditions hiFontStyle:;
+ (id)bsui_preferredFontForTextStyle:()BaseBoardUIAdditions hiFontStyle:;
+ (id)bsui_preferredFontForTextStyle:()BaseBoardUIAdditions hiFontStyle:contentSizeCategory:;
@end

@implementation UIFont(BaseBoardUIAdditions)

+ (id)bsui_preferredFontForTextStyle:()BaseBoardUIAdditions hiFontStyle:
{
  v4 = [(UIFont *)MEMORY[0x1E69DB878] bsui_defaultFont:a3 forTextStyle:a4 hiFontStyle:0 contentSizeCategory:?];

  return v4;
}

+ (id)bsui_defaultFontForTextStyle:()BaseBoardUIAdditions hiFontStyle:
{
  v4 = [(UIFont *)MEMORY[0x1E69DB878] bsui_defaultFont:a3 forTextStyle:a4 hiFontStyle:0 contentSizeCategory:?];

  return v4;
}

+ (id)bsui_preferredFontForTextStyle:()BaseBoardUIAdditions hiFontStyle:contentSizeCategory:
{
  v5 = [(UIFont *)MEMORY[0x1E69DB878] bsui_defaultFont:a3 forTextStyle:a4 hiFontStyle:a5 contentSizeCategory:?];

  return v5;
}

@end