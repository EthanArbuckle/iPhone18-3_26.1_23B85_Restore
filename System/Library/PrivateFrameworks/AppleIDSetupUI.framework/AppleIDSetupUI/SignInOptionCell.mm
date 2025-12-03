@interface SignInOptionCell
- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithCoder:(id)coder;
- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SignInOptionCell

- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_240A2BF4C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_240A0F1A4(style, identifier, v6);
}

- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithCoder:(id)coder
{
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

@end