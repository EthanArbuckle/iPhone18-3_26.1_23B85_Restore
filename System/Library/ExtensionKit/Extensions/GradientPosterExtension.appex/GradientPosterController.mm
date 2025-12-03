@interface GradientPosterController
- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect;
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidFinishInitialLayout:(id)layout;
- (void)editorDidInvalidate:(id)invalidate;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation GradientPosterController

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100006974(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10000B29C();
}

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor);
  *(&self->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor) = editor;
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;

  swift_getObjectType();
  v7 = sub_10000AED4();

  swift_unknownObjectRelease();
  *(&selfCopy->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle) = v7;
}

- (void)editorDidFinishInitialLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_100006DD8(layoutCopy);
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000B3C8();

  sub_1000041F0(0, &qword_100019208, PREditingLook_ptr);
  v6.super.isa = sub_10000CF80().super.isa;

  return v6.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_10000B8A0();

  if (v6)
  {
    sub_1000041F0(0, &qword_1000191F0, UIMenuElement_ptr);
    v7.super.isa = sub_10000CF80().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_1000074A0(editorCopy);

  v6 = sub_10000CF00();

  return v6;
}

- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  v10 = sub_10000BC8C(lookCopy);

  return v10;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100007980(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10000C1E0(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  selfCopy = self;
  sub_1000064E8();
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor) = 0;
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10000C85C(lookCopy);
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_100008374(editorCopy);

  return v6;
}

@end