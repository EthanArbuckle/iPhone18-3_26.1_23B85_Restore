@interface CompletedCellContentView
- (NSArray)accessibilityElements;
- (_TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView)initWithArrangedSubviews:(id)a3;
- (_TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView)initWithCoder:(id)a3;
- (_TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView)initWithFrame:(CGRect)a3;
- (void)showHideAction:(id)a3;
@end

@implementation CompletedCellContentView

- (_TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_1004D1CB0();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)showHideAction:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = *&v4->clearButton[OBJC_IVAR____TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView_internalConfiguration];
  if (v5)
  {

    v5(v6);
    sub_1000301AC(v5);

    sub_100004758(v7);
  }

  else
  {
    sub_100004758(v7);
  }
}

- (_TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9RemindersP33_C60407860759646D296FA14F7D6D1E3324CompletedCellContentView)initWithArrangedSubviews:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end