@interface FMPlatteredTableViewCell
- (BOOL)isSelected;
- (_TtC6FindMy24FMPlatteredTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy24FMPlatteredTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation FMPlatteredTableViewCell

- (_TtC6FindMy24FMPlatteredTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1001CBDBC(style, identifier, v6);
}

- (_TtC6FindMy24FMPlatteredTableViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMPlatteredTableViewCell();
  v2 = v4.receiver;
  [(FMPlatteredTableViewCell *)&v4 layoutSubviews];
  secondarySystemBackgroundColor = [objc_opt_self() secondarySystemBackgroundColor];
  [v2 setBackgroundColor:secondarySystemBackgroundColor];
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPlatteredTableViewCell();
  return [(FMPlatteredTableViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMPlatteredTableViewCell();
  v4 = v5.receiver;
  [(FMPlatteredTableViewCell *)&v5 setSelected:selectedCopy];
  [v4 setNeedsLayout];
}

@end