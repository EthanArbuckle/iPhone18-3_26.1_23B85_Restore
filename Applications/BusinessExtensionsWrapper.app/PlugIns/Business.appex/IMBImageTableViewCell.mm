@interface IMBImageTableViewCell
- (_TtC8Business21IMBImageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation IMBImageTableViewCell

- (_TtC8Business21IMBImageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100083984(style, identifier, v6);
}

@end