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
- (void)setTitle:(id)a3;
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

- (void)setContentViewLayout:(int64_t)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1C555DC98(a3);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)image
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555DF28();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setImage:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C555E000(a3);
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

- (void)setContentView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C555E828(a3);
  MEMORY[0x1E69E5920](self);
}

- (UIView)secondaryView
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C555EAF4();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setSecondaryView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C555EBCC(a3);
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

  sub_1C555F4C0(v6, v7);
  MEMORY[0x1E69E5920](self);
}

@end