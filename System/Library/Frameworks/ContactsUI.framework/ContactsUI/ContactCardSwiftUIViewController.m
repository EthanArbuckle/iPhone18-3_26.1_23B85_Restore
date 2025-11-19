@interface ContactCardSwiftUIViewController
+ (NSArray)descriptorsForRequiredKeys;
- (BOOL)forceReload;
- (CNContact)contact;
- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithContact:(id)a3 contactStore:(id)a4 actionsProvider:(id)a5 customViewConfiguration:(id)a6 propertyViewConfiguration:(id)a7 isInlineContactCard:(BOOL)a8 geminiManager:(id)a9;
- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)runPPTTestWithTestName:(id)a3 options:(id)a4;
- (void)setContact:(id)a3;
- (void)setCustomViewConfiguration:(id)a3;
- (void)setForceReload:(BOOL)a3;
- (void)setPropertyViewConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation ContactCardSwiftUIViewController

- (void)runPPTTestWithTestName:(id)a3 options:(id)a4
{
  v5 = sub_199DF9F8C();
  v7 = v6;
  v8 = sub_199DF9E9C();
  v9 = self;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  ContactCardSwiftUIViewController.runPPTTest(testName:options:)(v10, v8);
}

- (CNContact)contact
{
  v3 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContact:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_199AB4F30(v6);
}

- (BOOL)forceReload
{
  v3 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setForceReload:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

+ (NSArray)descriptorsForRequiredKeys
{
  if (qword_1EAF71E10 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v2 = sub_199DFA0BC();

  return v2;
}

- (void)setCustomViewConfiguration:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration) = a3;
  v3 = a3;
}

- (void)setPropertyViewConfiguration:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_199AB6B84(a3);
}

- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithContact:(id)a3 contactStore:(id)a4 actionsProvider:(id)a5 customViewConfiguration:(id)a6 propertyViewConfiguration:(id)a7 isInlineContactCard:(BOOL)a8 geminiManager:(id)a9
{
  v15 = a3;
  v16 = a4;
  swift_unknownObjectRetain();
  v17 = a6;
  v18 = a7;
  v19 = a9;
  return sub_199AB6E3C(a3, v16, a5, a6, a7, a8, a9);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ContactCardSwiftUIViewController *)&v3 viewDidLoad];
  sub_199AB5030();
}

- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end