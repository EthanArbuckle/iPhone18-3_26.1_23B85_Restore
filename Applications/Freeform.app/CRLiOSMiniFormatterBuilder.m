@interface CRLiOSMiniFormatterBuilder
+ (id)makeSmallButtonWith:(id)a3 title:(id)a4 action:(id)a5 backgroundColor:(id)a6 pressedBackgroundColor:(id)a7 foregroundColor:(id)a8 pressedForegroundColor:(id)a9 cornerRadius:(double)a10 italicTitle:(BOOL)a11;
- (_TtC8Freeform26CRLiOSMiniFormatterBuilder)init;
- (id)viewControllerForLargeContentViewerInteraction:(id)a3;
@end

@implementation CRLiOSMiniFormatterBuilder

+ (id)makeSmallButtonWith:(id)a3 title:(id)a4 action:(id)a5 backgroundColor:(id)a6 pressedBackgroundColor:(id)a7 foregroundColor:(id)a8 pressedForegroundColor:(id)a9 cornerRadius:(double)a10 italicTitle:(BOOL)a11
{
  v11 = a8;
  if (a4)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = a8;
    v27 = v17;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  swift_getObjCClassMetadata();
  v25 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v11;
  v22 = a9;
  v23 = sub_1005D48C8(a3, v26, v27, a5, a6, a7, v21, v22, a11);

  return v23;
}

- (id)viewControllerForLargeContentViewerInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1005D8B5C();

  return v6;
}

- (_TtC8Freeform26CRLiOSMiniFormatterBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end