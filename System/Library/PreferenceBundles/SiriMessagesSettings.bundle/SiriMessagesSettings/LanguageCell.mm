@interface LanguageCell
- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation LanguageCell

- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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

- (_TtC20SiriMessagesSettings12LanguageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v7 = sub_21EF4();
  sub_1F3EC(style, v7, v8, specifier);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_202D8();
}

@end