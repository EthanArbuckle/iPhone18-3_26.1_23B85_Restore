@interface InlineDrawingTiledTextView
- (BOOL)selectionInteraction:(id)interaction canPerformAction:(SEL)action withSender:(id)sender inAttachment:(id)attachment;
- (_TtC8PaperKit26InlineDrawingTiledTextView)initWithCoder:(id)coder;
- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only;
- (void)didMoveToWindow;
- (void)selectionInteractionDidPaste:(id)paste atPoint:(CGPoint)point inAttachment:(id)attachment;
@end

@implementation InlineDrawingTiledTextView

- (void)didMoveToWindow
{
  selfCopy = self;
  InlineDrawingTiledTextView.didMoveToWindow()();
}

- (BOOL)selectionInteraction:(id)interaction canPerformAction:(SEL)action withSender:(id)sender inAttachment:(id)attachment
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  attachmentCopy = attachment;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  specialized InlineDrawingTiledTextView.inlineDrawingCanvasElementControllerCurrentAttachment(_:)();
  if (v11)
  {
    v12 = v11;
    v13 = specialized InlineDrawingTextAttachmentView.selectionInteraction(_:canPerformAction:withSender:inAttachment:)();

    interactionCopy = attachmentCopy;
    attachmentCopy = selfCopy;
    selfCopy = v12;
  }

  else
  {
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v15);
  return v13;
}

- (void)selectionInteractionDidPaste:(id)paste atPoint:(CGPoint)point inAttachment:(id)attachment
{
  y = point.y;
  x = point.x;
  pasteCopy = paste;
  attachmentCopy = attachment;
  selfCopy = self;
  specialized InlineDrawingTiledTextView.inlineDrawingCanvasElementControllerCurrentAttachment(_:)();
  if (v11)
  {
    v12 = v11;
    specialized InlineDrawingTextAttachmentView.selectionInteractionDidPaste(_:at:in:)(x, y);
  }
}

- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class readOnly:(BOOL)only
{
  onlyCopy = only;
  blendingCopy = blending;
  v11 = OBJC_IVAR____TtC8PaperKit26InlineDrawingTiledTextView_inlineDrawingCanvasElementController;
  v12 = objc_allocWithZone(type metadata accessor for InlineDrawingCanvasElementController());
  viewCopy = view;
  *(&self->super.super.super.super.super.isa + v11) = [v12 init];
  v16.receiver = self;
  v16.super_class = type metadata accessor for InlineDrawingTiledTextView();
  v14 = [(PKTiledView *)&v16 initInScrollView:viewCopy sixChannelBlending:blendingCopy defaultDrawingClass:class readOnly:onlyCopy];

  return v14;
}

- (_TtC8PaperKit26InlineDrawingTiledTextView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC8PaperKit26InlineDrawingTiledTextView_inlineDrawingCanvasElementController;
  v6 = objc_allocWithZone(type metadata accessor for InlineDrawingCanvasElementController());
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for InlineDrawingTiledTextView();
  v8 = [(InlineDrawingTiledTextView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end