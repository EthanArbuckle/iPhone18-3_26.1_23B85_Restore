@interface CRLiOSFreehandDrawingItemsSearchTarget
- (_TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget)init;
- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation CRLiOSFreehandDrawingItemsSearchTarget

- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block completionBlock:(id)completionBlock
{
  v9 = _Block_copy(block);
  v10 = _Block_copy(completionBlock);
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

  selfCopy = self;
  sub_10070FB90(v11, v13, options, sub_1007127A4, v14, v10, v15);
  sub_1000C1014(v10);
}

- (_TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end