@interface AAUIAccountRecoveryContactUpsellSelectorVC
- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithSelectorViewModel:(id)a3 vcDelegate:(id)a4;
- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)addButton;
- (void)didSelectLearnMoreButton;
- (void)didSelectLocalContactFor:(id)a3;
- (void)dismissLearnMoreSheet;
- (void)setupLater;
- (void)viewDidLoad;
@end

@implementation AAUIAccountRecoveryContactUpsellSelectorVC

- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithSelectorViewModel:(id)a3 vcDelegate:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  return AccountRecoveryContactUpsellSelectorVC.init(selectorViewModel:vcDelegate:)(a3, a4);
}

- (void)viewDidLoad
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F17C0();
  MEMORY[0x1E69E5920](self);
}

- (void)addButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F269C();
  MEMORY[0x1E69E5920](self);
}

- (void)setupLater
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F2A70();
  MEMORY[0x1E69E5920](self);
}

- (void)didSelectLocalContactFor:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C54F2B40(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)didSelectLearnMoreButton
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F2EA4();
  MEMORY[0x1E69E5920](self);
}

- (void)dismissLearnMoreSheet
{
  MEMORY[0x1E69E5928](self);
  sub_1C54F333C();
  MEMORY[0x1E69E5920](self);
}

- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  sub_1C5596574();
  if (a4)
  {
    sub_1C5596574();
    MEMORY[0x1E69E5920](a4);
  }

  if (a5)
  {
    sub_1C5596574();
    v8 = v6;
    MEMORY[0x1E69E5920](a5);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  AccountRecoveryContactUpsellSelectorVC.init(title:detailText:symbolName:contentLayout:)(v7);
}

- (AAUIAccountRecoveryContactUpsellSelectorVC)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  sub_1C5596574();
  if (a4)
  {
    sub_1C5596574();
    v8 = v6;
    MEMORY[0x1E69E5920](a4);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  AccountRecoveryContactUpsellSelectorVC.init(title:detailText:icon:contentLayout:)(v7);
}

@end