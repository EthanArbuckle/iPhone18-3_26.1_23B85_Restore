@interface InlineDrawingTextAttachmentView
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithAttachment:(id)attachment drawingClass:(Class)class inserted:(BOOL)inserted;
- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithFrame:(CGRect)frame drawing:(id)drawing;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)didMoveToWindow;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
@end

@implementation InlineDrawingTextAttachmentView

- (void)didMoveToWindow
{
  selfCopy = self;
  InlineDrawingTextAttachmentView.didMoveToWindow()();
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized InlineDrawingTextAttachmentView.dropInteraction(_:canHandle:)(session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized InlineDrawingTextAttachmentView.dropInteraction(_:sessionDidUpdate:)(update);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized InlineDrawingTextAttachmentView.dropInteraction(_:performDrop:)(drop);

  swift_unknownObjectRelease();
}

- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithAttachment:(id)attachment drawingClass:(Class)class inserted:(BOOL)inserted
{
  insertedCopy = inserted;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType) = 3;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for InlineDrawingTextAttachmentView();
  return [(PKTextAttachmentDrawingView *)&v9 initWithAttachment:attachment drawingClass:class inserted:insertedCopy];
}

- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithFrame:(CGRect)frame drawing:(id)drawing
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  if (drawing)
  {
    drawingCopy = drawing;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for PKDrawing();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for PKDrawing();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  return InlineDrawingTextAttachmentView.init(frame:drawing:)(v11, x, y, width, height);
}

@end