@interface IMBActionTableViewCell
- (_TtC8Business22IMBActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation IMBActionTableViewCell

- (_TtC8Business22IMBActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100054BF4(style, identifier, v6);
}

@end