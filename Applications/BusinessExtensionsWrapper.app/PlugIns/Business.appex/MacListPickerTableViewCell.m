@interface MacListPickerTableViewCell
- (_TtC8Business26MacListPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation MacListPickerTableViewCell

- (_TtC8Business26MacListPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100064F64(a3, a4, v6);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1000ABAEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000ABACC();
  v10 = self;
  sub_1000663F0(v9);

  (*(v5 + 8))(v9, v4);
}

@end