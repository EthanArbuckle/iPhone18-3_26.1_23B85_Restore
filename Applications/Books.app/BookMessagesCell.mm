@interface BookMessagesCell
- (_TtC5Books16BookMessagesCell)initWithCoder:(id)coder;
- (_TtC5Books16BookMessagesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BookMessagesCell

- (_TtC5Books16BookMessagesCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1007A2254();
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for BookMessagesCell();
  v7 = [(BookMessagesCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC5Books16BookMessagesCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BookMessagesCell();
  coderCopy = coder;
  v5 = [(BookMessagesCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end