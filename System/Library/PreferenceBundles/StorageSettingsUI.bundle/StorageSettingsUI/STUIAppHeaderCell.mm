@interface STUIAppHeaderCell
- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithCoder:(id)coder;
- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STUIAppHeaderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7[3] = sub_147EC(&qword_BA420, &qword_8C660);
  v7[4] = sub_14F24(&qword_BA428, &qword_BA420, &qword_8C660);
  sub_7E490(v7);
  specifierCopy = specifier;
  selfCopy = self;
  sub_147EC(&qword_BA430, qword_8C668);
  sub_7E4F4();
  sub_81178();
  sub_81B48();
}

- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_81928();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return STUIAppHeaderCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(STUIAppHeaderCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC17StorageSettingsUI17STUIAppHeaderCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for STUIAppHeaderCell();
  coderCopy = coder;
  v5 = [(STUIAppHeaderCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end