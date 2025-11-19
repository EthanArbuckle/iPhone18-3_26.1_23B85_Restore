@interface EditingController
- (_TtC22MercuryPosterExtension17EditingController)init;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (int64_t)activeAppearanceMenuSelectionForEditor:(id)a3;
- (void)editor:(id)a3 appearanceMenuDidChangeSelectedStyle:(int64_t)a4;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation EditingController

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10000D664(v6, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000DD6C(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000DF14(v4);

  v6 = sub_1000E98E4();

  return v6;
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000E448(v4);

  sub_100012904(0, &qword_10012FAF0);
  v6.super.isa = sub_1000E9A74().super.isa;

  return v6.super.isa;
}

- (int64_t)activeAppearanceMenuSelectionForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000EC4C(v4);

  return v6;
}

- (void)editor:(id)a3 appearanceMenuDidChangeSelectedStyle:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10000EE30(v6, a4);
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10000F040(v8, v9, a5);
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000F480(v6, v7);
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000F810(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_100010148(v7, sub_1000128F4);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100010710(v4);
}

- (_TtC22MercuryPosterExtension17EditingController)init
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  *(&self->super.isa + v3) = sub_1000A1738(_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for EditingController();
  return [(EditingController *)&v5 init];
}

@end