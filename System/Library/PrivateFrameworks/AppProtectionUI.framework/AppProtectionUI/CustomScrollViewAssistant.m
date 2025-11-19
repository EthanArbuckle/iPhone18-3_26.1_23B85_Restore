@interface CustomScrollViewAssistant
- (_TtC15AppProtectionUI25CustomScrollViewAssistant)init;
- (_TtC15AppProtectionUI25CustomScrollViewAssistant)initWithDelegate:(id)a3;
- (void)performAdjustmentsForScrollView:(id)a3;
@end

@implementation CustomScrollViewAssistant

- (void)performAdjustmentsForScrollView:(id)a3
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for CustomScrollViewAssistant();
  v4 = a3;
  v5 = v14.receiver;
  [(APButtonTrayScrollViewAssistant *)&v14 performAdjustmentsForScrollView:v4];
  [v4 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12 + *&v5[OBJC_IVAR____TtC15AppProtectionUI25CustomScrollViewAssistant_extraTopInset];
  [v4 setContentInset_];
  [v4 setScrollIndicatorInsets_];
  [v4 contentOffset];
  [v4 setContentOffset:0 animated:?];
}

- (_TtC15AppProtectionUI25CustomScrollViewAssistant)initWithDelegate:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15AppProtectionUI25CustomScrollViewAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end