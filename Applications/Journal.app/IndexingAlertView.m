@interface IndexingAlertView
- (_TtC7Journal17IndexingAlertView)init;
- (_TtC7Journal17IndexingAlertView)initWithCoder:(id)a3;
- (_TtC7Journal17IndexingAlertView)initWithFrame:(CGRect)a3;
@end

@implementation IndexingAlertView

- (_TtC7Journal17IndexingAlertView)init
{
  v3 = OBJC_IVAR____TtC7Journal17IndexingAlertView_bodyLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for IndexingAlertView();
  v4 = [(IndexingAlertView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_100886710();

  return v4;
}

- (_TtC7Journal17IndexingAlertView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7Journal17IndexingAlertView_bodyLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Journal17IndexingAlertView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end