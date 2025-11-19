@interface AAUISignInDataclassActionModel
- (NSString)detailText;
- (NSString)helpLinkTitle;
- (NSString)helpLinkURL;
- (NSString)imageName;
- (NSString)primaryButton;
- (NSString)secondaryButton;
- (NSString)symbolAccessibilityLabel;
- (NSString)symbolName;
- (NSString)title;
- (UIImage)image;
- (UIView)contentView;
- (UIView)secondaryView;
- (int64_t)contentViewLayout;
- (void)setContentView:(id)a3;
- (void)setContentViewLayout:(int64_t)a3;
- (void)setDetailText:(id)a3;
- (void)setHelpLinkTitle:(id)a3;
- (void)setHelpLinkURL:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageName:(id)a3;
- (void)setPrimaryButton:(id)a3;
- (void)setSecondaryButton:(id)a3;
- (void)setSecondaryView:(id)a3;
- (void)setSymbolAccessibilityLabel:(id)a3;
- (void)setSymbolName:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation AAUISignInDataclassActionModel

- (NSString)title
{
  MEMORY[0x1E69E5928](self);
  sub_1C53FE758();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C53FE8A0(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)detailText
{
  MEMORY[0x1E69E5928](self);
  sub_1C53FEC0C();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDetailText:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C53FED54(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)primaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C53FF080();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPrimaryButton:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C53FF1C8(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)secondaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C53FF4F4();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSecondaryButton:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C53FF63C(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (int64_t)contentViewLayout
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C53FF90C();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setContentViewLayout:(int64_t)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1C53FF9C8(a3);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)image
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C53FFC58();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setImage:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C53FFD30(a3);
  MEMORY[0x1E69E5920](self);
}

- (NSString)imageName
{
  MEMORY[0x1E69E5928](self);
  sub_1C5400058();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setImageName:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C54001A0(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)symbolName
{
  MEMORY[0x1E69E5928](self);
  sub_1C54004DC();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSymbolName:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C5400624(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)symbolAccessibilityLabel
{
  MEMORY[0x1E69E5928](self);
  sub_1C5400960();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSymbolAccessibilityLabel:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C5400AA8(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (UIView)contentView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C5400D88();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setContentView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5400E60(a3);
  MEMORY[0x1E69E5920](self);
}

- (UIView)secondaryView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C540112C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setSecondaryView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5401204(a3);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1C540152C();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHelpLinkTitle:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C5401674(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkURL
{
  MEMORY[0x1E69E5928](self);
  sub_1C54019B0();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHelpLinkURL:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C5401AF8(v6, v7);
  MEMORY[0x1E69E5920](self);
}

@end