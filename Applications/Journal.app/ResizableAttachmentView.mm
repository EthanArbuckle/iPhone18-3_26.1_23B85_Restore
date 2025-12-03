@interface ResizableAttachmentView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)selectAttachment:(id)attachment;
- (void)setFrame:(CGRect)frame;
- (void)viewPannedWithSender:(id)sender;
- (void)viewTappedWithSender:(id)sender;
@end

@implementation ResizableAttachmentView

- (void)selectAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  sub_1007CAD08(attachmentCopy);
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_1007CAF7C(x, y, width, height);
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ResizableAttachmentView();
  v2 = v5.receiver;
  [(ResizableAttachmentView *)&v5 didMoveToSuperview];
  superview = [v2 superview];
  if (superview)
  {
    v4 = superview;
    [superview setClipsToBounds:0];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1007CB15C();
}

- (void)viewPannedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1007CC8AC(senderCopy);
}

- (void)viewTappedWithSender:(id)sender
{
  v4 = self + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1007CCC3C(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = self + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 48);
    selfCopy = self;
    v9 = v7();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  selfCopy = self;
  if ([(ResizableAttachmentView *)interactionCopy menuAppearance]== 1)
  {
    *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview) = 1;
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView) setAlpha:0.0];
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton) setAlpha:0.0];
    v7 = selfCopy;
  }

  else
  {
    v7 = interactionCopy;
    interactionCopy = selfCopy;
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007CDD08(animator);

  swift_unknownObjectRelease();
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1007CE038();

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1007CD444(event, x, y);

  return v10;
}

@end