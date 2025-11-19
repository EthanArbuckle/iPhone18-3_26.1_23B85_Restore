@interface CRCarPlayUltraConfirmationViewController
- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithEnableUltra:(BOOL)a3 vehicleSettingManager:(id)a4 confirmAction:(id)a5;
- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancel;
- (void)confirm;
- (void)viewDidLoad;
@end

@implementation CRCarPlayUltraConfirmationViewController

- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithEnableUltra:(BOOL)a3 vehicleSettingManager:(id)a4 confirmAction:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return CRCarPlayUltraConfirmationViewController.init(enableUltra:vehicleSettingManager:confirmAction:)(a3, a4, sub_1564C, v8);
}

- (void)viewDidLoad
{
  v2 = self;
  CRCarPlayUltraConfirmationViewController.viewDidLoad()();
}

- (void)confirm
{
  v2 = self;
  sub_14DF8();
}

- (void)cancel
{
  v2 = self;
  sub_15124();
}

- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end