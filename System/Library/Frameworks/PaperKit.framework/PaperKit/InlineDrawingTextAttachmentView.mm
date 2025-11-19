@interface InlineDrawingTextAttachmentView
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithAttachment:(id)a3 drawingClass:(Class)a4 inserted:(BOOL)a5;
- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithFrame:(CGRect)a3 drawing:(id)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)didMoveToWindow;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
@end

@implementation InlineDrawingTextAttachmentView

- (void)didMoveToWindow
{
  v2 = self;
  InlineDrawingTextAttachmentView.didMoveToWindow()();
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized InlineDrawingTextAttachmentView.dropInteraction(_:canHandle:)(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized InlineDrawingTextAttachmentView.dropInteraction(_:sessionDidUpdate:)(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized InlineDrawingTextAttachmentView.dropInteraction(_:performDrop:)(a4);

  swift_unknownObjectRelease();
}

- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithAttachment:(id)a3 drawingClass:(Class)a4 inserted:(BOOL)a5
{
  v5 = a5;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType) = 3;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for InlineDrawingTextAttachmentView();
  return [(PKTextAttachmentDrawingView *)&v9 initWithAttachment:a3 drawingClass:a4 inserted:v5];
}

- (_TtC8PaperKit31InlineDrawingTextAttachmentView)initWithFrame:(CGRect)a3 drawing:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  if (a4)
  {
    v12 = a4;
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