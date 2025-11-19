@interface CRLInsertionAnimationHelper
+ (void)addAnchorAnimations:(id)a3 tableRep:(id)a4 interactiveCanvasController:(id)a5;
+ (void)addChangeShapeAnimationsWithAnimateOutInfos:(id)a3 animateInInfos:(id)a4 interactiveCanvasController:(id)a5 completionHandler:(id)a6;
+ (void)addCommitDuplicateAnimationsWithCommittedBoardItem:(id)a3 committedConnectionLineLayout:(id)a4 interactiveCanvasController:(id)a5;
+ (void)addGhostDuplicatePreviewAnimationsWithGhostGroupItem:(id)a3 invisibleAnchorItem:(id)a4 ghostDuplicatedItem:(id)a5 ghostConnectionLineLayout:(id)a6 interactiveCanvasController:(id)a7;
+ (void)addInsertionAnimationsToInfo:(id)a3 connectionLineLayout:(id)a4 onInteractiveCanvasController:(id)a5;
+ (void)addInsertionAnimationsToInfo:(id)a3 onInteractiveCanvasController:(id)a4;
+ (void)addInsertionAnimationsToInfos:(id)a3 onInteractiveCanvasController:(id)a4;
- (_TtC8Freeform27CRLInsertionAnimationHelper)init;
@end

@implementation CRLInsertionAnimationHelper

+ (void)addInsertionAnimationsToInfo:(id)a3 onInteractiveCanvasController:(id)a4
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v6 = a4;
  sub_1009812B0(a3, v6);
  swift_unknownObjectRelease();
}

+ (void)addInsertionAnimationsToInfo:(id)a3 connectionLineLayout:(id)a4 onInteractiveCanvasController:(id)a5
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  sub_10098AF20(a3, v9, v10, ObjCClassMetadata);
  swift_unknownObjectRelease();
}

+ (void)addInsertionAnimationsToInfos:(id)a3 onInteractiveCanvasController:(id)a4
{
  sub_1005B981C(&qword_1019F5720);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = a4;
  v8 = [v7 canvas];
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = 0;
  v9[5] = ObjCClassMetadata;
  v12[4] = sub_10098C808;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_100007638;
  v12[3] = &unk_10188F020;
  v10 = _Block_copy(v12);
  v11 = v7;

  [v8 afterLayoutIncludingLayers:1 performBlock:v10];

  _Block_release(v10);
}

+ (void)addChangeShapeAnimationsWithAnimateOutInfos:(id)a3 animateInInfos:(id)a4 interactiveCanvasController:(id)a5 completionHandler:(id)a6
{
  v7 = _Block_copy(a6);
  sub_1005B981C(&qword_1019F5720);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = a5;
  v12 = [v11 canvas];
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v11;
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
  v15 = v11;

  [v12 afterLayoutIncludingLayers:1 performBlock:v14];

  _Block_release(v14);
}

+ (void)addGhostDuplicatePreviewAnimationsWithGhostGroupItem:(id)a3 invisibleAnchorItem:(id)a4 ghostDuplicatedItem:(id)a5 ghostConnectionLineLayout:(id)a6 interactiveCanvasController:(id)a7
{
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  sub_100983FAC(v12, v13, v14, v15, v16);
}

+ (void)addCommitDuplicateAnimationsWithCommittedBoardItem:(id)a3 committedConnectionLineLayout:(id)a4 interactiveCanvasController:(id)a5
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 canvas];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v9;
  v13[5] = ObjCClassMetadata;
  v18[4] = sub_10098C77C;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = *"";
  v18[2] = sub_100007638;
  v18[3] = &unk_10188EF58;
  v14 = _Block_copy(v18);
  v15 = v9;
  v16 = v10;
  v17 = v11;

  [v12 afterLayoutIncludingLayers:1 performBlock:v14];

  _Block_release(v14);
}

+ (void)addAnchorAnimations:(id)a3 tableRep:(id)a4 interactiveCanvasController:(id)a5
{
  type metadata accessor for CRLBoardItem(0);
  sub_10098B468(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = a5;
  v10 = [v9 canvas];
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v9;
  v15[4] = sub_10098C770;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_100007638;
  v15[3] = &unk_10188EF08;
  v12 = _Block_copy(v15);
  v13 = v8;
  v14 = v9;

  [v10 afterLayoutIncludingLayers:1 performBlock:v12];

  _Block_release(v12);
}

- (_TtC8Freeform27CRLInsertionAnimationHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLInsertionAnimationHelper();
  return [(CRLInsertionAnimationHelper *)&v3 init];
}

@end