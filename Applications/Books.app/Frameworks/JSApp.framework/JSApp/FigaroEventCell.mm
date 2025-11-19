@interface FigaroEventCell
- (_TtC5JSApp15FigaroEventCell)initWithCoder:(id)a3;
- (_TtC5JSApp15FigaroEventCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation FigaroEventCell

- (_TtC5JSApp15FigaroEventCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_843AC();
    v5 = sub_8437C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for FigaroEventCell();
  v6 = [(FigaroEventCell *)&v8 initWithStyle:3 reuseIdentifier:v5];

  return v6;
}

- (_TtC5JSApp15FigaroEventCell)initWithCoder:(id)a3
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

@end