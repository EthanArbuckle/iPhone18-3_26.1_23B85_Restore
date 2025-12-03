@interface AddLanguagesCell
- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation AddLanguagesCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_9724();
}

- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_21EF4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_9914(style, v7, v9, specifier);
}

- (_TtC20SiriMessagesSettings16AddLanguagesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_21EF4();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_9A2C(style, identifier, v6);
}

@end