@interface AAUIProtoAccountShieldUI
- (NSString)detailText;
- (NSString)helpLinkTitle;
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
- (void)setImage:(id)image;
- (void)setImageName:(id)name;
- (void)setPrimaryButton:(id)button;
- (void)setSecondaryButton:(id)button;
- (void)setSecondaryView:(id)view;
- (void)setTitle:(id)title;
@end

@implementation AAUIProtoAccountShieldUI

- (NSString)imageName
{
  MEMORY[0x1E69E5928](self);
  sub_1C5463D10();
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

  sub_1C5463E58(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)title
{
  MEMORY[0x1E69E5928](self);
  sub_1C5464184();
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

  sub_1C54642CC(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)detailText
{
  MEMORY[0x1E69E5928](self);
  sub_1C54645F8();
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

  sub_1C5464740(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)primaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C5464A6C();
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

  sub_1C5464BB4(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)secondaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C5464EE0();
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

  sub_1C5465028(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (int64_t)contentViewLayout
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C54652F8();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setContentViewLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](self);
  sub_1C54653B4(layout);
  MEMORY[0x1E69E5920](self);
}

- (UIView)secondaryView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C5465644();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setSecondaryView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C546571C(view);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1C5465A44();
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

  sub_1C5465B8C(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (UIView)contentView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C5465E6C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setContentView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C5465F44(view);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)image
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C5466210();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setImage:(id)image
{
  MEMORY[0x1E69E5928](image);
  MEMORY[0x1E69E5928](self);
  sub_1C54662E8(image);
  MEMORY[0x1E69E5920](self);
}

@end