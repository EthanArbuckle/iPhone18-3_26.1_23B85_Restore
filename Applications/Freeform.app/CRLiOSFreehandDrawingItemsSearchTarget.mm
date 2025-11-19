@interface CRLiOSFreehandDrawingItemsSearchTarget
- (_TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget)init;
- (void)layoutSearchForString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 completionBlock:(id)a6;
@end

@implementation CRLiOSFreehandDrawingItemsSearchTarget

- (void)layoutSearchForString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 completionBlock:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  if (v10)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    v10 = sub_100685EBC;
  }

  else
  {
    v15 = 0;
  }

  v16 = self;
  sub_10070FB90(v11, v13, a4, sub_1007127A4, v14, v10, v15);
  sub_1000C1014(v10);
}

- (_TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end