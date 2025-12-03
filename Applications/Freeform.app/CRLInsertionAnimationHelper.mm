@interface CRLInsertionAnimationHelper
+ (void)addAnchorAnimations:(id)animations tableRep:(id)rep interactiveCanvasController:(id)controller;
+ (void)addChangeShapeAnimationsWithAnimateOutInfos:(id)infos animateInInfos:(id)inInfos interactiveCanvasController:(id)controller completionHandler:(id)handler;
+ (void)addCommitDuplicateAnimationsWithCommittedBoardItem:(id)item committedConnectionLineLayout:(id)layout interactiveCanvasController:(id)controller;
+ (void)addGhostDuplicatePreviewAnimationsWithGhostGroupItem:(id)item invisibleAnchorItem:(id)anchorItem ghostDuplicatedItem:(id)duplicatedItem ghostConnectionLineLayout:(id)layout interactiveCanvasController:(id)controller;
+ (void)addInsertionAnimationsToInfo:(id)info connectionLineLayout:(id)layout onInteractiveCanvasController:(id)controller;
+ (void)addInsertionAnimationsToInfo:(id)info onInteractiveCanvasController:(id)controller;
+ (void)addInsertionAnimationsToInfos:(id)infos onInteractiveCanvasController:(id)controller;
- (_TtC8Freeform27CRLInsertionAnimationHelper)init;
@end

@implementation CRLInsertionAnimationHelper

+ (void)addInsertionAnimationsToInfo:(id)info onInteractiveCanvasController:(id)controller
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  controllerCopy = controller;
  sub_1009812B0(info, controllerCopy);
  swift_unknownObjectRelease();
}

+ (void)addInsertionAnimationsToInfo:(id)info connectionLineLayout:(id)layout onInteractiveCanvasController:(id)controller
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  layoutCopy = layout;
  controllerCopy = controller;
  sub_10098AF20(info, layoutCopy, controllerCopy, ObjCClassMetadata);
  swift_unknownObjectRelease();
}

+ (void)addInsertionAnimationsToInfos:(id)infos onInteractiveCanvasController:(id)controller
{
  sub_1005B981C(&qword_1019F5720);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  controllerCopy = controller;
  canvas = [controllerCopy canvas];
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = controllerCopy;
  v9[4] = 0;
  v9[5] = ObjCClassMetadata;
  v12[4] = sub_10098C808;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_100007638;
  v12[3] = &unk_10188F020;
  v10 = _Block_copy(v12);
  v11 = controllerCopy;

  [canvas afterLayoutIncludingLayers:1 performBlock:v10];

  _Block_release(v10);
}

+ (void)addChangeShapeAnimationsWithAnimateOutInfos:(id)infos animateInInfos:(id)inInfos interactiveCanvasController:(id)controller completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  sub_1005B981C(&qword_1019F5720);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  controllerCopy = controller;
  canvas = [controllerCopy canvas];
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = controllerCopy;
  v13[4] = v9;
  v13[5] = sub_100685EBC;
  v13[6] = v10;
  v16[4] = sub_10098C788;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = *"";
  v16[2] = sub_100007638;
  v16[3] = &unk_10188EFD0;
  v14 = _Block_copy(v16);
  v15 = controllerCopy;

  [canvas afterLayoutIncludingLayers:1 performBlock:v14];

  _Block_release(v14);
}

+ (void)addGhostDuplicatePreviewAnimationsWithGhostGroupItem:(id)item invisibleAnchorItem:(id)anchorItem ghostDuplicatedItem:(id)duplicatedItem ghostConnectionLineLayout:(id)layout interactiveCanvasController:(id)controller
{
  swift_getObjCClassMetadata();
  itemCopy = item;
  anchorItemCopy = anchorItem;
  duplicatedItemCopy = duplicatedItem;
  layoutCopy = layout;
  controllerCopy = controller;
  sub_100983FAC(itemCopy, anchorItemCopy, duplicatedItemCopy, layoutCopy, controllerCopy);
}

+ (void)addCommitDuplicateAnimationsWithCommittedBoardItem:(id)item committedConnectionLineLayout:(id)layout interactiveCanvasController:(id)controller
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  itemCopy = item;
  layoutCopy = layout;
  controllerCopy = controller;
  canvas = [controllerCopy canvas];
  v13 = swift_allocObject();
  v13[2] = layoutCopy;
  v13[3] = controllerCopy;
  v13[4] = itemCopy;
  v13[5] = ObjCClassMetadata;
  v18[4] = sub_10098C77C;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = *"";
  v18[2] = sub_100007638;
  v18[3] = &unk_10188EF58;
  v14 = _Block_copy(v18);
  v15 = itemCopy;
  v16 = layoutCopy;
  v17 = controllerCopy;

  [canvas afterLayoutIncludingLayers:1 performBlock:v14];

  _Block_release(v14);
}

+ (void)addAnchorAnimations:(id)animations tableRep:(id)rep interactiveCanvasController:(id)controller
{
  type metadata accessor for CRLBoardItem(0);
  sub_10098B468(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  repCopy = rep;
  controllerCopy = controller;
  canvas = [controllerCopy canvas];
  v11 = swift_allocObject();
  v11[2] = repCopy;
  v11[3] = v7;
  v11[4] = controllerCopy;
  v15[4] = sub_10098C770;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_100007638;
  v15[3] = &unk_10188EF08;
  v12 = _Block_copy(v15);
  v13 = repCopy;
  v14 = controllerCopy;

  [canvas afterLayoutIncludingLayers:1 performBlock:v12];

  _Block_release(v12);
}

- (_TtC8Freeform27CRLInsertionAnimationHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLInsertionAnimationHelper();
  return [(CRLInsertionAnimationHelper *)&v3 init];
}

@end