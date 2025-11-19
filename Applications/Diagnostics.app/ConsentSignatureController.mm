@interface ConsentSignatureController
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)validateRequiredFields;
- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelConsent;
- (void)clearSignature;
- (void)generateConsentDocument;
- (void)handleTapOutside:(id)a3;
- (void)viewDidLoad;
@end

@implementation ConsentSignatureController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ConsentSignatureController();
  v2 = v6.receiver;
  [(ConsentSignatureController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

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
  v2 = self;
  v3 = sub_10014DD58();

  return v3 & 1;
}

- (void)cancelConsent
{
  v2 = self;
  sub_10014E2C8();
}

- (void)generateConsentDocument
{
  v2 = self;
  sub_10014E440();
}

- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics26ConsentSignatureController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10014F6C4(v4);

  return 1;
}

- (void)handleTapOutside:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10014F820(v4);
}

@end