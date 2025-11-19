@interface ResizableAttachmentView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (CGRect)frame;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)selectAttachment:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)viewPannedWithSender:(id)a3;
- (void)viewTappedWithSender:(id)a3;
@end

@implementation ResizableAttachmentView

- (void)selectAttachment:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007CAD08(v4);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ResizableAttachmentView();
  [(ResizableAttachmentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1007CAF7C(x, y, width, height);
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ResizableAttachmentView();
  v2 = v5.receiver;
  [(ResizableAttachmentView *)&v5 didMoveToSuperview];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v3 setClipsToBounds:0];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1007CB15C();
}

- (void)viewPannedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007CC8AC(v4);
}

- (void)viewTappedWithSender:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1007CCC3C(v6, v7);

  return v9 & 1;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = self + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 48);
    v8 = self;
    v9 = v7();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v6 = self;
  if ([(ResizableAttachmentView *)v8 menuAppearance]== 1)
  {
    *(&v6->super.super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview) = 1;
    [*(&v6->super.super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView) setAlpha:0.0];
    [*(&v6->super.super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton) setAlpha:0.0];
    v7 = v6;
  }

  else
  {
    v7 = v8;
    v8 = v6;
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1007CDD08(a5);

  swift_unknownObjectRelease();
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1007CE038();

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1007CD444(a4, x, y);

  return v10;
}

@end