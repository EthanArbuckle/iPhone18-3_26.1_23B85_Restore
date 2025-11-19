@interface ListPickerTableViewCell
- (_TtC8Business23ListPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ListPickerTableViewCell

- (_TtC8Business23ListPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1000AC06C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100013AC0(a3, a4, v6);
}

@end