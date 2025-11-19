@interface BaseTableViewHeaderFooterView
- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithCoder:(id)a3;
- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3;
@end

@implementation BaseTableViewHeaderFooterView

- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTableViewHeaderFooterView();
  v5 = [(BaseTableViewHeaderFooterView *)&v7 initWithReuseIdentifier:v4];

  return v5;
}

- (_TtC11Diagnostics29BaseTableViewHeaderFooterView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end