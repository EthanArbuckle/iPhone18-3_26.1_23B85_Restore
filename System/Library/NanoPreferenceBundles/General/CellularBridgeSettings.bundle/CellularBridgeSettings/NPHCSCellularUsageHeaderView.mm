@interface NPHCSCellularUsageHeaderView
- (UIButton)sortToggle;
- (UILabel)sortingTypeLabel;
- (UILabel)titleLabel;
- (UIStackView)sortControlsStackView;
- (_TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView)initWithReuseIdentifier:(id)a3;
- (void)configureContents;
- (void)setSortControlsStackView:(id)a3;
- (void)setSortToggle:(id)a3;
- (void)setSortingTypeLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)setTitles;
@end

@implementation NPHCSCellularUsageHeaderView

- (UILabel)titleLabel
{
  v2 = sub_C3DC();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_C444(v4);
}

- (UIStackView)sortControlsStackView
{
  v2 = sub_C484();

  return v2;
}

- (void)setSortControlsStackView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_C4EC(v4);
}

- (UILabel)sortingTypeLabel
{
  v2 = sub_C52C();

  return v2;
}

- (void)setSortingTypeLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_C594(v4);
}

- (UIButton)sortToggle
{
  v2 = sub_C5D4();

  return v2;
}

- (void)setSortToggle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_C63C(v4);
}

- (_TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_E418();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_C648(v3, v4);
}

- (void)configureContents
{
  v2 = self;
  sub_C808();
}

- (void)setTitles
{
  v2 = self;
  sub_D130();
}

@end