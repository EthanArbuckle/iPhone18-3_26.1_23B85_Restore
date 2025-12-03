@interface AAUISignOutOrEraseOfferModel
- (NSString)detailText;
- (NSString)helpLinkTitle;
- (NSString)helpLinkURL;
- (NSString)imageName;
- (NSString)primaryButton;
- (NSString)secondaryButton;
- (NSString)title;
- (UIImage)image;
- (UIView)contentView;
- (UIView)secondaryView;
- (int64_t)contentViewLayout;
- (void)setContentView:(id)view;
- (void)setContentViewLayout:(int64_t)layout;
- (void)setDetailText:(id)text;
- (void)setHelpLinkTitle:(id)title;
- (void)setHelpLinkURL:(id)l;
- (void)setImage:(id)image;
- (void)setImageName:(id)name;
- (void)setPrimaryButton:(id)button;
- (void)setSecondaryButton:(id)button;
- (void)setSecondaryView:(id)view;
- (void)setTitle:(id)title;
@end

@implementation AAUISignOutOrEraseOfferModel

- (NSString)title
{
  MEMORY[0x1E69E5928](self);
  sub_1C5558694();
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

- (void)setTitle:(id)title
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](self);
  if (title)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](title);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C55587DC(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)detailText
{
  MEMORY[0x1E69E5928](self);
  sub_1C5558B08();
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

- (void)setDetailText:(id)text
{
  MEMORY[0x1E69E5928](text);
  MEMORY[0x1E69E5928](self);
  if (text)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](text);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C5558C50(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)primaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C5558F7C();
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

- (void)setPrimaryButton:(id)button
{
  MEMORY[0x1E69E5928](button);
  MEMORY[0x1E69E5928](self);
  if (button)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](button);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C55590C4(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)secondaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C55593F0();
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

- (void)setSecondaryButton:(id)button
{
  MEMORY[0x1E69E5928](button);
  MEMORY[0x1E69E5928](self);
  if (button)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](button);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C5559538(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (int64_t)contentViewLayout
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C55597F8();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setContentViewLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](self);
  sub_1C55598B4(layout);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)image
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C5559B44();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setImage:(id)image
{
  MEMORY[0x1E69E5928](image);
  MEMORY[0x1E69E5928](self);
  sub_1C5559C1C(image);
  MEMORY[0x1E69E5920](self);
}

- (NSString)imageName
{
  MEMORY[0x1E69E5928](self);
  sub_1C5559F44();
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

- (void)setImageName:(id)name
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](self);
  if (name)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](name);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C555A08C(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (UIView)contentView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555A36C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setContentView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C555A444(view);
  MEMORY[0x1E69E5920](self);
}

- (UIView)secondaryView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555A710();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setSecondaryView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C555A7E8(view);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1C555AB10();
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

- (void)setHelpLinkTitle:(id)title
{
  MEMORY[0x1E69E5928](title);
  MEMORY[0x1E69E5928](self);
  if (title)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](title);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C555AC58(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkURL
{
  MEMORY[0x1E69E5928](self);
  sub_1C555AF94();
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

- (void)setHelpLinkURL:(id)l
{
  MEMORY[0x1E69E5928](l);
  MEMORY[0x1E69E5928](self);
  if (l)
  {
    v4 = sub_1C5596574();
    v5 = v3;
    MEMORY[0x1E69E5920](l);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1C555B0DC(v6, v7);
  MEMORY[0x1E69E5920](self);
}

@end