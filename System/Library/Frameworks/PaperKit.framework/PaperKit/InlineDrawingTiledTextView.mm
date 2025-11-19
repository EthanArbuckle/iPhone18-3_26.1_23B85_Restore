@interface InlineDrawingTiledTextView
- (BOOL)selectionInteraction:(id)a3 canPerformAction:(SEL)a4 withSender:(id)a5 inAttachment:(id)a6;
- (_TtC8PaperKit26InlineDrawingTiledTextView)initWithCoder:(id)a3;
- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6;
- (void)didMoveToWindow;
- (void)selectionInteractionDidPaste:(id)a3 atPoint:(CGPoint)a4 inAttachment:(id)a5;
@end

@implementation InlineDrawingTiledTextView

- (void)didMoveToWindow
{
  v2 = self;
  InlineDrawingTiledTextView.didMoveToWindow()();
}

- (BOOL)selectionInteraction:(id)a3 canPerformAction:(SEL)a4 withSender:(id)a5 inAttachment:(id)a6
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a6;
  v10 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized InlineDrawingTiledTextView.inlineDrawingCanvasElementControllerCurrentAttachment(_:)();
  if (v11)
  {
    v12 = v11;
    v13 = specialized InlineDrawingTextAttachmentView.selectionInteraction(_:canPerformAction:withSender:inAttachment:)();

    v8 = v9;
    v9 = v10;
    v10 = v12;
  }

  else
  {
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v15);
  return v13;
}

- (void)selectionInteractionDidPaste:(id)a3 atPoint:(CGPoint)a4 inAttachment:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v13 = self;
  specialized InlineDrawingTiledTextView.inlineDrawingCanvasElementControllerCurrentAttachment(_:)();
  if (v11)
  {
    v12 = v11;
    specialized InlineDrawingTextAttachmentView.selectionInteractionDidPaste(_:at:in:)(x, y);
  }
}

- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5 readOnly:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v11 = OBJC_IVAR____TtC8PaperKit26InlineDrawingTiledTextView_inlineDrawingCanvasElementController;
  v12 = objc_allocWithZone(type metadata accessor for InlineDrawingCanvasElementController());
  v13 = a3;
  *(&self->super.super.super.super.super.isa + v11) = [v12 init];
  v16.receiver = self;
  v16.super_class = type metadata accessor for InlineDrawingTiledTextView();
  v14 = [(PKTiledView *)&v16 initInScrollView:v13 sixChannelBlending:v8 defaultDrawingClass:a5 readOnly:v6];

  return v14;
}

- (_TtC8PaperKit26InlineDrawingTiledTextView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC8PaperKit26InlineDrawingTiledTextView_inlineDrawingCanvasElementController;
  v6 = objc_allocWithZone(type metadata accessor for InlineDrawingCanvasElementController());
  v7 = a3;
  *(&self->super.super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for InlineDrawingTiledTextView();
  v8 = [(InlineDrawingTiledTextView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end