@interface CardStackView
- (_TtC11Diagnostics13CardStackView)initWithCoder:(id)coder;
- (_TtC11Diagnostics13CardStackView)initWithFrame:(CGRect)frame;
- (void)addArrangedSubview:(id)subview;
- (void)insertArrangedSubview:(id)subview atIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)removeArrangedSubview:(id)subview;
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
  selfCopy = self;

  [v4 animateWithDuration:1 delay:v5 options:0 animations:0.25 completion:0.0];
  _Block_release(v5);
}

- (void)addArrangedSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  arrangedSubviews = [(CardStackView *)selfCopy arrangedSubviews];
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

  sub_1000E9D04(subviewCopy, v7, 0);
}

- (void)insertArrangedSubview:(id)subview atIndex:(int64_t)index
{
  subviewCopy = subview;
  selfCopy = self;
  sub_1000E9D04(subviewCopy, index, 0);
}

- (void)removeArrangedSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  sub_1000E9EE4(subviewCopy, 0);
}

- (_TtC11Diagnostics13CardStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints) = _swiftEmptyArrayStorage;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CardStackView();
  return [(BaseStackView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11Diagnostics13CardStackView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints) = _swiftEmptyArrayStorage;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CardStackView();
  return [(BaseStackView *)&v6 initWithCoder:coder];
}

@end