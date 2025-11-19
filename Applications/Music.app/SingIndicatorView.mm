@interface SingIndicatorView
- (_TtC5Music17SingIndicatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)showSingIndicator;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SingIndicatorView

- (void)showSingIndicator
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1001F4CB8(0, 0, v5, &unk_100EBF450, v9);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10035CA90();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10035CEF4(a3);
}

- (_TtC5Music17SingIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end