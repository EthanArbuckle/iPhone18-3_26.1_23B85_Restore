@interface FigaroEventFieldCell
- (_TtC5JSApp20FigaroEventFieldCell)initWithCoder:(id)coder;
- (_TtC5JSApp20FigaroEventFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation FigaroEventFieldCell

- (_TtC5JSApp20FigaroEventFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_843AC();
    v5 = sub_8437C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for FigaroEventFieldCell();
  v6 = [(FigaroEventFieldCell *)&v8 initWithStyle:3 reuseIdentifier:v5];

  return v6;
}

- (_TtC5JSApp20FigaroEventFieldCell)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

@end