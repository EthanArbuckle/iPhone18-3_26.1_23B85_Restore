@interface AddLanguagesCell
- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation AddLanguagesCell

- (void)layoutSubviews
{
  v2 = self;
  sub_9724();
}

- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_21EF4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_9914(a3, v7, v9, a5);
}

- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_21EF4();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_9A2C(a3, a4, v6);
}

@end