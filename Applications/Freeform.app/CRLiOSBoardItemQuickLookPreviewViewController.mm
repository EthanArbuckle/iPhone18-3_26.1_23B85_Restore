@interface CRLiOSBoardItemQuickLookPreviewViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithCoder:(id)a3;
- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithPreviewItems:(id)a3;
- (id)excludedActivityTypesForPreviewController:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (void)previewControllerDidDismiss:(id)a3;
- (void)previewControllerWillDismiss:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation CRLiOSBoardItemQuickLookPreviewViewController

- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewItem) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_shouldSaveMarkedUpItem) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_itemProvider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewOriginView) = 0;
  v3 = (self + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_onDismiss);
  *v3 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithPreviewItems:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)previewControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10084F498();
}

- (void)previewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10084FC24();
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_10084FC98(a4);

  swift_unknownObjectRelease();
  return v8;
}

- (id)excludedActivityTypesForPreviewController:(id)a3
{
  sub_1005B981C(&unk_101A23C50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10146C6B0;
  if (qword_1019F2750 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD8950;
  type metadata accessor for ActivityType(0);
  *(v3 + 56) = v5;
  *(v3 + 32) = v4;
  v6 = v4;
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController_previewItem);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_allocWithZone(NSURL) init];
  }

  swift_unknownObjectRetain();

  return v5;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10084F0BC(a3, v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController();
  v4 = a3;
  v5 = v7.receiver;
  [(CRLiOSBoardItemQuickLookPreviewViewController *)&v7 validateCommand:v4];
  [v4 action];
  v6 = String._bridgeToObjectiveC()();
  NSSelectorFromString(v6);

  if (static Selector.== infix(_:_:)())
  {
    [v4 setAttributes:1];
  }
}

@end