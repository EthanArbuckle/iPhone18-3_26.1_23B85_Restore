@interface ConsentSignatureController
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)validateRequiredFields;
- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelConsent;
- (void)clearSignature;
- (void)generateConsentDocument;
- (void)handleTapOutside:(id)outside;
- (void)viewDidLoad;
@end

@implementation ConsentSignatureController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ConsentSignatureController();
  v2 = v6.receiver;
  [(ConsentSignatureController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:clearColor];

    sub_10014BE9C();
    sub_10014CB74();
    sub_10014BCAC();
  }

  else
  {
    __break(1u);
  }
}

- (void)clearSignature
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (v2)
  {
    [v2 clear];
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)validateRequiredFields
{
  selfCopy = self;
  v3 = sub_10014DD58();

  return v3 & 1;
}

- (void)cancelConsent
{
  selfCopy = self;
  sub_10014E2C8();
}

- (void)generateConsentDocument
{
  selfCopy = self;
  sub_10014E440();
}

- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  sub_10014F6C4(returnCopy);

  return 1;
}

- (void)handleTapOutside:(id)outside
{
  outsideCopy = outside;
  selfCopy = self;
  sub_10014F820(outsideCopy);
}

@end