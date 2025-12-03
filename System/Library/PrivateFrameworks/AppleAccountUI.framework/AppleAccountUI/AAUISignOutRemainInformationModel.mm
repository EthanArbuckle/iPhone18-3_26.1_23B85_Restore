@interface AAUISignOutRemainInformationModel
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

@implementation AAUISignOutRemainInformationModel

- (NSString)title
{
  MEMORY[0x1E69E5928](self);
  sub_1C555CA58();
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

  sub_1C555CBA0(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)detailText
{
  MEMORY[0x1E69E5928](self);
  sub_1C555CECC();
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

  sub_1C555D014(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)primaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C555D340();
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

  sub_1C555D488(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)secondaryButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C555D7C4();
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

  sub_1C555D90C(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (int64_t)contentViewLayout
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555DBDC();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setContentViewLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](self);
  sub_1C555DC98(layout);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)image
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555DF28();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setImage:(id)image
{
  MEMORY[0x1E69E5928](image);
  MEMORY[0x1E69E5928](self);
  sub_1C555E000(image);
  MEMORY[0x1E69E5920](self);
}

- (NSString)imageName
{
  MEMORY[0x1E69E5928](self);
  sub_1C555E328();
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

  sub_1C555E470(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (UIView)contentView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555E750();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setContentView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C555E828(view);
  MEMORY[0x1E69E5920](self);
}

- (UIView)secondaryView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555EAF4();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setSecondaryView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C555EBCC(view);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkTitle
{
  MEMORY[0x1E69E5928](self);
  sub_1C555EEF4();
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

  sub_1C555F03C(v6, v7);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkURL
{
  MEMORY[0x1E69E5928](self);
  sub_1C555F378();
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

  sub_1C555F4C0(v6, v7);
  MEMORY[0x1E69E5920](self);
}

@end