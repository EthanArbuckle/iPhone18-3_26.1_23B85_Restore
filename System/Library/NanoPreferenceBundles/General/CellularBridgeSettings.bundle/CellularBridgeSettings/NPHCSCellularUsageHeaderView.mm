@interface NPHCSCellularUsageHeaderView
- (UIButton)sortToggle;
- (UILabel)sortingTypeLabel;
- (UILabel)titleLabel;
- (UIStackView)sortControlsStackView;
- (_TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)configureContents;
- (void)setSortControlsStackView:(id)view;
- (void)setSortToggle:(id)toggle;
- (void)setSortingTypeLabel:(id)label;
- (void)setTitleLabel:(id)label;
- (void)setTitles;
@end

@implementation NPHCSCellularUsageHeaderView

- (UILabel)titleLabel
{
  v2 = sub_C3DC();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_C444(labelCopy);
}

- (UIStackView)sortControlsStackView
{
  v2 = sub_C484();

  return v2;
}

- (void)setSortControlsStackView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_C4EC(viewCopy);
}

- (UILabel)sortingTypeLabel
{
  v2 = sub_C52C();

  return v2;
}

- (void)setSortingTypeLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_C594(labelCopy);
}

- (UIButton)sortToggle
{
  v2 = sub_C5D4();

  return v2;
}

- (void)setSortToggle:(id)toggle
{
  toggleCopy = toggle;
  selfCopy = self;
  sub_C63C(toggleCopy);
}

- (_TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
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
  selfCopy = self;
  sub_C808();
}

- (void)setTitles
{
  selfCopy = self;
  sub_D130();
}

@end