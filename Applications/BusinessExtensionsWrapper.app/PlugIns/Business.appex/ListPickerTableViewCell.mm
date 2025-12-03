@interface ListPickerTableViewCell
- (_TtC8Business23ListPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ListPickerTableViewCell

- (_TtC8Business23ListPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100013AC0(style, identifier, v6);
}

@end