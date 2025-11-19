@interface STUIAppHeaderCell
- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithCoder:(id)a3;
- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STUIAppHeaderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7[3] = sub_147EC(&qword_BA420, &qword_8C660);
  v7[4] = sub_14F24(&qword_BA428, &qword_BA420, &qword_8C660);
  sub_7E490(v7);
  v5 = a3;
  v6 = self;
  sub_147EC(&qword_BA430, qword_8C668);
  sub_7E4F4();
  sub_81178();
  sub_81B48();
}

- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_81928();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return STUIAppHeaderCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_81928();
    v6 = sub_818E8();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for STUIAppHeaderCell();
  v7 = [(STUIAppHeaderCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for STUIAppHeaderCell();
  v4 = a3;
  v5 = [(STUIAppHeaderCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end