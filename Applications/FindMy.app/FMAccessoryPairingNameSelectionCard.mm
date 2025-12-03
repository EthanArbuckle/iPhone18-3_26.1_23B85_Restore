@interface FMAccessoryPairingNameSelectionCard
- (_TtC6FindMy35FMAccessoryPairingNameSelectionCard)initWithContentView:(id)view;
- (void)updateButtonState;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMAccessoryPairingNameSelectionCard

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryPairingNameSelectionCard();
  v4 = v5.receiver;
  [(FMAccessoryPairingNameSelectionCard *)&v5 viewWillAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel] becomeFirstResponder];
}

- (void)updateButtonState
{
  selfCopy = self;
  sub_10017C5FC();
}

- (_TtC6FindMy35FMAccessoryPairingNameSelectionCard)initWithContentView:(id)view
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel;
  v6 = objc_allocWithZone(type metadata accessor for FMAccessoryNameTextField());
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v5] = [v6 init];
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_backAction] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_continueAction] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryPairingNameSelectionCard();
  v8 = [(FMAccessoryPairingNameSelectionCard *)&v10 initWithContentView:viewCopy];

  return v8;
}

@end