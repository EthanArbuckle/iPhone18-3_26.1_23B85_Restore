@interface RecentItemCell
- (FPItem)accessibilityItem;
- (UILabel)accessibilitySubtitle;
- (UILabel)accessibilityTitle;
- (_TtC21DockFolderViewService14RecentItemCell)initWithFrame:(CGRect)a3;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)didMoveToWindow;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)thumbnailLoaded:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RecentItemCell

- (void)didMoveToWindow
{
  v2 = self;
  sub_100078A9C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100078D90();
}

- (void)handleTap:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1000792AC();

  sub_100006390(v6, &qword_1000BCA30, &unk_100090E80);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10007943C(a3);
}

- (FPItem)accessibilityItem
{
  v2 = self->layoutScale[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  if (v2 >= 2)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
    swift_getObjectType();
    v5 = self;
    sub_10007B494(v4, v2);
    v6 = DOCNode.fpfs_syncFetchFPItem()();

    sub_10007B4A8(v4, v2);
    v7 = v6;
  }

  return v7;
}

- (UILabel)accessibilityTitle
{
  v2 = self;
  v3 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);

  return v3;
}

- (UILabel)accessibilitySubtitle
{
  v2 = self;
  v3 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);

  return v3;
}

- (_TtC21DockFolderViewService14RecentItemCell)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)thumbnailLoaded:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100079FDC(a3);
  swift_unknownObjectRelease();
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
  sub_10007D008();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = 1;
  aBlock[4] = sub_10007D22C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000B0498;
  v9 = _Block_copy(aBlock);
  v10 = self;
  v11 = a4;

  [v7 animateWithDuration:v9 animations:0.1];
  _Block_release(v9);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v13.receiver = v10;
  v13.super_class = ObjectType;
  [(RecentItemCell *)&v13 touchesEnded:isa withEvent:v11];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
  sub_10007D008();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_10007AA48(v6, a4);
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_10007C650();

  swift_unknownObjectRelease();
  sub_10001A2A8(0, &qword_1000BC468, UIDragItem_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10007C8AC();

  swift_unknownObjectRelease();
  sub_10001A2A8(0, &qword_1000BC468, UIDragItem_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = sub_10007CCCC();

  swift_unknownObjectRelease();

  return v10;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v4 = self->layoutScale[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  if (v4 >= 2)
  {
    return 0;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
  swift_getObjectType();
  v7 = self;
  sub_10007B494(v6, v4);
  v8 = DOCNode.dataOwner.getter();

  sub_10007B4A8(v6, v4);
  return v8;
}

@end