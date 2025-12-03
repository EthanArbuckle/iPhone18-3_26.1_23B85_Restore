@interface CRLiOSBoardItemQuickLookPreviewViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithCoder:(id)coder;
- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithPreviewItems:(id)items;
- (id)excludedActivityTypesForPreviewController:(id)controller;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)validateCommand:(id)command;
@end

@implementation CRLiOSBoardItemQuickLookPreviewViewController

- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithCoder:(id)coder
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

- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform45CRLiOSBoardItemQuickLookPreviewViewController)initWithPreviewItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)previewControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10084F498();
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10084FC24();
}

- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_10084FC98(item);

  swift_unknownObjectRelease();
  return v8;
}

- (id)excludedActivityTypesForPreviewController:(id)controller
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

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10084F0BC(action, v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSBoardItemQuickLookPreviewViewController();
  commandCopy = command;
  v5 = v7.receiver;
  [(CRLiOSBoardItemQuickLookPreviewViewController *)&v7 validateCommand:commandCopy];
  [commandCopy action];
  v6 = String._bridgeToObjectiveC()();
  NSSelectorFromString(v6);

  if (static Selector.== infix(_:_:)())
  {
    [commandCopy setAttributes:1];
  }
}

@end