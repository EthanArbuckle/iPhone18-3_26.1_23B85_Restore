@interface GladiatorValidationViewController
- (_TtC8AppStore33GladiatorValidationViewController)initWithCoder:(id)a3;
- (_TtC8AppStore33GladiatorValidationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8AppStore33GladiatorValidationViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation GladiatorValidationViewController

- (_TtC8AppStore33GladiatorValidationViewController)initWithCoder:(id)a3
{
  v4 = type metadata accessor for GladiatorRules();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore33GladiatorValidationViewController_gladiator;
  type metadata accessor for Gladiator();
  *(&self->super.super.super.super.isa + v8) = Gladiator.__allocating_init()();
  v9 = OBJC_IVAR____TtC8AppStore33GladiatorValidationViewController_rules;
  GladiatorRules.init()();
  v10 = GladiatorRules.rules.getter();
  (*(v5 + 8))(v7, v4);
  *(&self->super.super.super.super.isa + v9) = v10;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1001F8BE8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1001F903C();

  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStore33GladiatorValidationViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore33GladiatorValidationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end