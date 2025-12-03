@interface CRCarPlayUltraConfirmationViewController
- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithEnableUltra:(BOOL)ultra vehicleSettingManager:(id)manager confirmAction:(id)action;
- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancel;
- (void)confirm;
- (void)viewDidLoad;
@end

@implementation CRCarPlayUltraConfirmationViewController

- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithEnableUltra:(BOOL)ultra vehicleSettingManager:(id)manager confirmAction:(id)action
{
  v7 = _Block_copy(action);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return CRCarPlayUltraConfirmationViewController.init(enableUltra:vehicleSettingManager:confirmAction:)(ultra, manager, sub_1564C, v8);
}

- (void)viewDidLoad
{
  selfCopy = self;
  CRCarPlayUltraConfirmationViewController.viewDidLoad()();
}

- (void)confirm
{
  selfCopy = self;
  sub_14DF8();
}

- (void)cancel
{
  selfCopy = self;
  sub_15124();
}

- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end