@interface CardStackView
- (_TtC11Diagnostics13CardStackView)initWithCoder:(id)a3;
- (_TtC11Diagnostics13CardStackView)initWithFrame:(CGRect)a3;
- (void)addArrangedSubview:(id)a3;
- (void)insertArrangedSubview:(id)a3 atIndex:(int64_t)a4;
- (void)layoutSubviews;
- (void)removeArrangedSubview:(id)a3;
@end

@implementation CardStackView

- (void)layoutSubviews
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v4 = objc_opt_self();
  v7[4] = sub_1000EBBA8;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031FA8;
  v7[3] = &unk_1001C5770;
  v5 = _Block_copy(v7);
  v6 = self;

  [v4 animateWithDuration:1 delay:v5 options:0 animations:0.25 completion:0.0];
  _Block_release(v5);
}

- (void)addArrangedSubview:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(CardStackView *)v8 arrangedSubviews];
  sub_1000EB998();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000E9D04(v4, v7, 0);
}

- (void)insertArrangedSubview:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000E9D04(v6, a4, 0);
}

- (void)removeArrangedSubview:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E9EE4(v4, 0);
}

- (_TtC11Diagnostics13CardStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints) = _swiftEmptyArrayStorage;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CardStackView();
  return [(BaseStackView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11Diagnostics13CardStackView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints) = _swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CardStackView();
  return [(BaseStackView *)&v6 initWithCoder:a3];
}

@end