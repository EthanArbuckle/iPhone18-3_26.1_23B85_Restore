@interface CARIconCustomizationPanel
- (CARIconCustomizationPanel)initWithPanelController:(id)controller;
- (CARSettingsCellSpecifier)cellSpecifier;
- (UINavigationItem)navigationItem;
- (void)invalidate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CARIconCustomizationPanel

- (CARSettingsCellSpecifier)cellSpecifier
{
  selfCopy = self;
  v3 = IconCustomizationPanel.cellSpecifier.getter();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  IconCustomizationPanel.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for IconCustomizationPanel();
  v4 = v7.receiver;
  [(CARSettingsTablePanel *)&v7 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel];
  if (v5)
  {
    v6 = v5;
    sub_100036998();
  }
}

- (UINavigationItem)navigationItem
{
  v2 = [objc_allocWithZone(UINavigationItem) init];

  return v2;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconCustomizationPanel();
  v2 = v5.receiver;
  [(CARSettingsPanel *)&v5 invalidate];
  v3 = *&v2[OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel];
  if (v3)
  {
    v4 = v3;
    sub_100037484();
  }
}

- (CARIconCustomizationPanel)initWithPanelController:(id)controller
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CARIconCustomizationPanel_iconCustomizationModel) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconCustomizationPanel();
  return [(CARSettingsPanel *)&v5 initWithPanelController:controller];
}

@end