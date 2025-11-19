@interface InlineDrawingCanvasElementController
- (_TtC8PaperKit36InlineDrawingCanvasElementController)init;
- (void)toolPickerFramesObscuredDidChange:(id)a3;
@end

@implementation InlineDrawingCanvasElementController

- (void)toolPickerFramesObscuredDidChange:(id)a3
{
  v3 = self;
  InlineDrawingCanvasElementController.updateToolPickerUI()();
}

- (_TtC8PaperKit36InlineDrawingCanvasElementController)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC8PaperKit36InlineDrawingCanvasElementController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC8PaperKit36InlineDrawingCanvasElementController_toolPickerController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(InlineDrawingCanvasElementController *)&v5 init];
}

@end