@interface BSUIFontProvider
+ (id)defaultFontProvider;
+ (id)preferredFontProvider;
- (id)preferredFontForTextStyle:(id)style hiFontStyle:(int64_t)fontStyle;
- (id)preferredFontForTextStyle:(id)style hiFontStyle:(int64_t)fontStyle contentSizeCategory:(id)category;
@end

@implementation BSUIFontProvider

+ (id)defaultFontProvider
{
  v2 = [self alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = BSUIFontProvider;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2[8] = 1;
    }
  }

  return v2;
}

+ (id)preferredFontProvider
{
  v2 = [self alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = BSUIFontProvider;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2[8] = 0;
    }
  }

  return v2;
}

- (id)preferredFontForTextStyle:(id)style hiFontStyle:(int64_t)fontStyle
{
  styleCopy = style;
  if (self->_isDefault)
  {
    [MEMORY[0x1E69DB878] bsui_defaultFontForTextStyle:styleCopy hiFontStyle:fontStyle];
  }

  else
  {
    [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:styleCopy hiFontStyle:fontStyle];
  }
  v7 = ;

  return v7;
}

- (id)preferredFontForTextStyle:(id)style hiFontStyle:(int64_t)fontStyle contentSizeCategory:(id)category
{
  styleCopy = style;
  categoryCopy = category;
  if (self->_isDefault)
  {
    [MEMORY[0x1E69DB878] bsui_defaultFontForTextStyle:styleCopy hiFontStyle:fontStyle];
  }

  else
  {
    [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:styleCopy hiFontStyle:fontStyle contentSizeCategory:categoryCopy];
  }
  v10 = ;

  return v10;
}

@end