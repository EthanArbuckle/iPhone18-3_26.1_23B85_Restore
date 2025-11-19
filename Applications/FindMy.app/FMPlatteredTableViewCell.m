@interface FMPlatteredTableViewCell
- (BOOL)isSelected;
- (_TtC6FindMy24FMPlatteredTableViewCell)initWithCoder:(id)a3;
- (_TtC6FindMy24FMPlatteredTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation FMPlatteredTableViewCell

- (_TtC6FindMy24FMPlatteredTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1001CBDBC(a3, a4, v6);
}

- (_TtC6FindMy24FMPlatteredTableViewCell)initWithCoder:(id)a3
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
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  [v2 setBackgroundColor:v3];
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPlatteredTableViewCell();
  return [(FMPlatteredTableViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMPlatteredTableViewCell();
  v4 = v5.receiver;
  [(FMPlatteredTableViewCell *)&v5 setSelected:v3];
  [v4 setNeedsLayout];
}

@end