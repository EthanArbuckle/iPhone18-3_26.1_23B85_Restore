@interface GradientPosterController
- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5;
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)trailingMenuElementsForEditor:(id)a3;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidFinishInitialLayout:(id)a3;
- (void)editorDidInvalidate:(id)a3;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation GradientPosterController

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100006974(v6, a4);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000B29C();
}

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor);
  *(&self->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor) = a3;
  v6 = a3;
  swift_unknownObjectRetain();
  v8 = self;

  swift_getObjectType();
  v7 = sub_10000AED4();

  swift_unknownObjectRelease();
  *(&v8->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle) = v7;
}

- (void)editorDidFinishInitialLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006DD8(v4);
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000B3C8();

  sub_1000041F0(0, &qword_100019208, PREditingLook_ptr);
  v6.super.isa = sub_10000CF80().super.isa;

  return v6.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000074A0(v4);

  v6 = sub_10000CF00();

  return v6;
}

- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_10000BC8C(v8);

  return v10;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100007980(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10000C1E0(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  v3 = self;
  sub_1000064E8();
  v4 = *(&v3->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor);
  *(&v3->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor) = 0;
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000C85C(v7);
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)a3
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100008374(v4);

  return v6;
}

@end