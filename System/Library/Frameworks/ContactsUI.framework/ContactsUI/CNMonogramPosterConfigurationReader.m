@interface CNMonogramPosterConfigurationReader
+ (id)monogramPosterConfigurationDataFromUserInfo:(id)a3;
- (NSString)initials;
- (UIColor)backgroundColor;
- (_TtC10ContactsUI35CNMonogramPosterConfigurationReader)init;
@end

@implementation CNMonogramPosterConfigurationReader

- (UIColor)backgroundColor
{
  sub_199A9E488();
  v3 = self;
  sub_199DF7E7C();
  v4 = sub_199DFA4AC();

  return v4;
}

- (NSString)initials
{
  v2 = self;
  sub_199DF7E8C();
  v3 = sub_199DF9F5C();

  return v3;
}

+ (id)monogramPosterConfigurationDataFromUserInfo:(id)a3
{
  v3 = sub_199DF9E9C();
  v4 = sub_199A9ED44(v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_199DF71DC();
    sub_199A9EF20(v4, v6);
    v7 = v8;
  }

  return v7;
}

- (_TtC10ContactsUI35CNMonogramPosterConfigurationReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end