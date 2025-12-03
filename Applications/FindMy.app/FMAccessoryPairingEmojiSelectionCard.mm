@interface FMAccessoryPairingEmojiSelectionCard
- (_TtC6FindMy36FMAccessoryPairingEmojiSelectionCard)initWithContentView:(id)view;
- (void)updateButtonState;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMAccessoryPairingEmojiSelectionCard

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionCard();
  v4 = v5.receiver;
  [(FMAccessoryPairingEmojiSelectionCard *)&v5 viewWillAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView] becomeFirstResponder];
}

- (void)updateButtonState
{
  selfCopy = self;
  sub_100340630();
}

- (_TtC6FindMy36FMAccessoryPairingEmojiSelectionCard)initWithContentView:(id)view
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView;
  v6 = objc_allocWithZone(type metadata accessor for FMAccessoryPairingEmojiSelectionTextField());
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v5] = [v6 init];
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_continueAction] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionCard();
  v8 = [(FMAccessoryPairingEmojiSelectionCard *)&v10 initWithContentView:viewCopy];

  return v8;
}

@end