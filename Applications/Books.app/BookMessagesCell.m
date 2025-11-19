@interface BookMessagesCell
- (_TtC5Books16BookMessagesCell)initWithCoder:(id)a3;
- (_TtC5Books16BookMessagesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation BookMessagesCell

- (_TtC5Books16BookMessagesCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(BookMessagesCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC5Books16BookMessagesCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BookMessagesCell();
  v4 = a3;
  v5 = [(BookMessagesCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end