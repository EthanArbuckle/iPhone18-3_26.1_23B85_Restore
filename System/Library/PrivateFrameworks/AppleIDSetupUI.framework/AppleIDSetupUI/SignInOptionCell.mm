@interface SignInOptionCell
- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithCoder:(id)a3;
- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SignInOptionCell

- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_240A2BF4C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_240A0F1A4(a3, a4, v6);
}

- (_TtC14AppleIDSetupUI16SignInOptionCell)initWithCoder:(id)a3
{
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

@end