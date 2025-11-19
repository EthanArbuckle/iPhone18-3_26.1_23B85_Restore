@interface FMAccessoryPairingEmojiSelectionCard
- (_TtC6FindMy36FMAccessoryPairingEmojiSelectionCard)initWithContentView:(id)a3;
- (void)updateButtonState;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMAccessoryPairingEmojiSelectionCard

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionCard();
  v4 = v5.receiver;
  [(FMAccessoryPairingEmojiSelectionCard *)&v5 viewWillAppear:v3];
  [*&v4[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView] becomeFirstResponder];
}

- (void)updateButtonState
{
  v2 = self;
  sub_100340630();
}

- (_TtC6FindMy36FMAccessoryPairingEmojiSelectionCard)initWithContentView:(id)a3
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView;
  v6 = objc_allocWithZone(type metadata accessor for FMAccessoryPairingEmojiSelectionTextField());
  v7 = a3;
  *&self->PRXCardContentViewController_opaque[v5] = [v6 init];
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_continueAction] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionCard();
  v8 = [(FMAccessoryPairingEmojiSelectionCard *)&v10 initWithContentView:v7];

  return v8;
}

@end