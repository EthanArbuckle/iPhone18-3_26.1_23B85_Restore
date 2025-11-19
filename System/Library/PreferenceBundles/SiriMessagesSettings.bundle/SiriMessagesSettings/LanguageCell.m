@interface LanguageCell
- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation LanguageCell

- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_21EF4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_1EF3C(v4, v4, v6);
}

- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v7 = sub_21EF4();
  sub_1F3EC(a3, v7, v8, a5);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_202D8();
}

@end