@interface IMBInfoTableViewCell
- (_TtC8Business20IMBInfoTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation IMBInfoTableViewCell

- (_TtC8Business20IMBInfoTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1000AC06C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10008545C(style, identifier, v6);
}

@end