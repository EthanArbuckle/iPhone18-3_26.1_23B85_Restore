@interface BaseTableViewCell
- (_TtC11Diagnostics17BaseTableViewCell)initWithCoder:(id)a3;
- (_TtC11Diagnostics17BaseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation BaseTableViewCell

- (_TtC11Diagnostics17BaseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for BaseTableViewCell();
  v7 = [(BaseTableViewCell *)&v13 initWithStyle:a3 reuseIdentifier:v6];

  v8 = *((swift_isaMask & v7->super.super.super.super.isa) + 0x50);
  v9 = v7;
  v10 = v8();
  v11 = (*((swift_isaMask & v9->super.super.super.super.isa) + 0x58))(v10);
  (*((swift_isaMask & v9->super.super.super.super.isa) + 0x60))(v11);

  return v9;
}

- (_TtC11Diagnostics17BaseTableViewCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end