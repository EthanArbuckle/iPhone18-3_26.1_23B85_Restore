@interface BSUIFontProvider
+ (id)defaultFontProvider;
+ (id)preferredFontProvider;
- (id)preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4;
- (id)preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4 contentSizeCategory:(id)a5;
@end

@implementation BSUIFontProvider

+ (id)defaultFontProvider
{
  v2 = [a1 alloc];
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
  v2 = [a1 alloc];
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

- (id)preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4
{
  v6 = a3;
  if (self->_isDefault)
  {
    [MEMORY[0x1E69DB878] bsui_defaultFontForTextStyle:v6 hiFontStyle:a4];
  }

  else
  {
    [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:v6 hiFontStyle:a4];
  }
  v7 = ;

  return v7;
}

- (id)preferredFontForTextStyle:(id)a3 hiFontStyle:(int64_t)a4 contentSizeCategory:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_isDefault)
  {
    [MEMORY[0x1E69DB878] bsui_defaultFontForTextStyle:v8 hiFontStyle:a4];
  }

  else
  {
    [MEMORY[0x1E69DB878] bsui_preferredFontForTextStyle:v8 hiFontStyle:a4 contentSizeCategory:v9];
  }
  v10 = ;

  return v10;
}

@end