@interface OnBoardingController
- (NSArray)keyCommands;
- (_TtC17SequoiaTranslator20OnBoardingController)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator20OnBoardingController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC17SequoiaTranslator20OnBoardingController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC17SequoiaTranslator20OnBoardingController)initWithRootViewController:(id)controller;
- (void)_primaryActionKeyTriggered;
- (void)continueButtonPressed;
- (void)viewDidLoad;
@end

@implementation OnBoardingController

- (_TtC17SequoiaTranslator20OnBoardingController)initWithCoder:(id)coder
{
  v4 = type metadata accessor for TranslationTaskHint();
  __chkstk_darwin(v4);
  v6 = OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_languagesService;
  (*(v7 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TranslationTaskHint.speech(_:));
  type metadata accessor for LanguagesService();
  swift_allocObject();
  *(&self->super.super.super.super.isa + v6) = LanguagesService.init(task:)();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController____lazy_storage___onBoardingController) = 0;
  *&self->languagesService[OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_oBDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for OnBoardingController();
  v2 = v5.receiver;
  [(OnBoardingController *)&v5 viewDidLoad];
  [v2 setNavigationBarHidden:{1, v5.receiver, v5.super_class}];
  sub_100005AD4(&unk_1003AFCC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002D95A0;
  *(v3 + 32) = sub_10019A6F4();
  sub_10000A2CC(0, &qword_1003B5470);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setViewControllers:isa];
}

- (NSArray)keyCommands
{
  sub_100005AD4(&unk_1003AFCC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002D95A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() keyCommandWithInput:v3 modifierFlags:0 action:"_primaryActionKeyTriggered"];

  *(v2 + 32) = v4;
  sub_10000A2CC(0, &qword_1003BB710);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)_primaryActionKeyTriggered
{
  selfCopy = self;
  sub_10019BAF8();
}

- (void)continueButtonPressed
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator20OnBoardingController_whatsNew);
  selfCopy = self;
  if (v2 == 1)
  {
    sub_10019BCF4();
  }

  else
  {
    sub_10019BED8();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10019DE48(selfCopy);
      swift_unknownObjectRelease();
    }
  }
}

- (_TtC17SequoiaTranslator20OnBoardingController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17SequoiaTranslator20OnBoardingController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17SequoiaTranslator20OnBoardingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end