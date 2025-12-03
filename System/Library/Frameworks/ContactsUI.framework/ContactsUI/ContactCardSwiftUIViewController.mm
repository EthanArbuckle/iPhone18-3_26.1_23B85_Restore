@interface ContactCardSwiftUIViewController
+ (NSArray)descriptorsForRequiredKeys;
- (BOOL)forceReload;
- (CNContact)contact;
- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithContact:(id)contact contactStore:(id)store actionsProvider:(id)provider customViewConfiguration:(id)configuration propertyViewConfiguration:(id)viewConfiguration isInlineContactCard:(BOOL)card geminiManager:(id)manager;
- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)runPPTTestWithTestName:(id)name options:(id)options;
- (void)setContact:(id)contact;
- (void)setCustomViewConfiguration:(id)configuration;
- (void)setForceReload:(BOOL)reload;
- (void)setPropertyViewConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation ContactCardSwiftUIViewController

- (void)runPPTTestWithTestName:(id)name options:(id)options
{
  v5 = sub_199DF9F8C();
  v7 = v6;
  v8 = sub_199DF9E9C();
  selfCopy = self;
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

- (void)setContact:(id)contact
{
  v5 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_contact;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = contact;
  contactCopy = contact;
  selfCopy = self;
  sub_199AB4F30(v6);
}

- (BOOL)forceReload
{
  v3 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setForceReload:(BOOL)reload
{
  v5 = OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_forceReload;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = reload;
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

- (void)setCustomViewConfiguration:(id)configuration
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI32ContactCardSwiftUIViewController_customViewConfiguration) = configuration;
  configurationCopy = configuration;
}

- (void)setPropertyViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_199AB6B84(configuration);
}

- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithContact:(id)contact contactStore:(id)store actionsProvider:(id)provider customViewConfiguration:(id)configuration propertyViewConfiguration:(id)viewConfiguration isInlineContactCard:(BOOL)card geminiManager:(id)manager
{
  contactCopy = contact;
  storeCopy = store;
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  viewConfigurationCopy = viewConfiguration;
  managerCopy = manager;
  return sub_199AB6E3C(contact, storeCopy, provider, configuration, viewConfiguration, card, manager);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ContactCardSwiftUIViewController *)&v3 viewDidLoad];
  sub_199AB5030();
}

- (_TtC10ContactsUI32ContactCardSwiftUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end