@interface CustomScrollViewAssistant
- (_TtC15AppProtectionUI25CustomScrollViewAssistant)init;
- (_TtC15AppProtectionUI25CustomScrollViewAssistant)initWithDelegate:(id)delegate;
- (void)performAdjustmentsForScrollView:(id)view;
@end

@implementation CustomScrollViewAssistant

- (void)performAdjustmentsForScrollView:(id)view
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for CustomScrollViewAssistant();
  viewCopy = view;
  v5 = v14.receiver;
  [(APButtonTrayScrollViewAssistant *)&v14 performAdjustmentsForScrollView:viewCopy];
  [viewCopy contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12 + *&v5[OBJC_IVAR____TtC15AppProtectionUI25CustomScrollViewAssistant_extraTopInset];
  [viewCopy setContentInset_];
  [viewCopy setScrollIndicatorInsets_];
  [viewCopy contentOffset];
  [viewCopy setContentOffset:0 animated:?];
}

- (_TtC15AppProtectionUI25CustomScrollViewAssistant)initWithDelegate:(id)delegate
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