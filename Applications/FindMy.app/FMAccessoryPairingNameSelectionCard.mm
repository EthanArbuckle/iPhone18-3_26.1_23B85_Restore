@interface FMAccessoryPairingNameSelectionCard
- (_TtC6FindMy35FMAccessoryPairingNameSelectionCard)initWithContentView:(id)a3;
- (void)updateButtonState;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMAccessoryPairingNameSelectionCard

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryPairingNameSelectionCard();
  v4 = v5.receiver;
  [(FMAccessoryPairingNameSelectionCard *)&v5 viewWillAppear:v3];
  [*&v4[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel] becomeFirstResponder];
}

- (void)updateButtonState
{
  v2 = self;
  sub_10017C5FC();
}

- (_TtC6FindMy35FMAccessoryPairingNameSelectionCard)initWithContentView:(id)a3
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel;
  v6 = objc_allocWithZone(type metadata accessor for FMAccessoryNameTextField());
  v7 = a3;
  *&self->PRXCardContentViewController_opaque[v5] = [v6 init];
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_backAction] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_continueAction] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryPairingNameSelectionCard();
  v8 = [(FMAccessoryPairingNameSelectionCard *)&v10 initWithContentView:v7];

  return v8;
}

@end