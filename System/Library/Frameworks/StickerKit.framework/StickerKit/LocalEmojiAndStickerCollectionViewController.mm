@interface LocalEmojiAndStickerCollectionViewController
- (_TtC10StickerKit44LocalEmojiAndStickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)viewDidAppear:;
- (void)didBeginDragWithShouldDismiss:(BOOL)dismiss;
- (void)didSelectEmoji:(id)emoji;
- (void)didSelectEmoji:(id)emoji dismiss:(BOOL)dismiss;
- (void)didTapToPresentRestrictedContentAlertNotification:(id)notification;
- (void)handleKeyEvent:(id)event;
- (void)handleWithPinch:(id)pinch;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:;
@end

@implementation LocalEmojiAndStickerCollectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19A79ED84();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_19A7A689C();
}

- (void)handleKeyEvent:(id)event
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_uiEmojiAndStickerCollectionViewController);
  if (v3)
  {
    [v3 handleKeyEvent_];
  }
}

- (void)didSelectEmoji:(id)emoji
{
  v4 = sub_19A7AB014();
  v6 = v5;
  selfCopy = self;
  sub_19A7A096C(v4, v6);
}

- (void)didSelectEmoji:(id)emoji dismiss:(BOOL)dismiss
{
  v6 = sub_19A7AB014();
  v8 = v7;
  selfCopy = self;
  sub_19A7A0AF8(v6, v8, dismiss);
}

- (void)didBeginDragWithShouldDismiss:(BOOL)dismiss
{
  selfCopy = self;
  _hostedWindowScene = [(LocalEmojiAndStickerCollectionViewController *)selfCopy _hostedWindowScene];
  if (_hostedWindowScene)
  {
    v5 = _hostedWindowScene;
    v6 = sub_19A7A6270(9, dismiss, 0, 0);
    [v5 sendAction_];
  }
}

- (void)didTapToPresentRestrictedContentAlertNotification:(id)notification
{
  v4 = sub_19A7A8C04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8BC4();
  selfCopy = self;
  sub_19A7A2E40();

  (*(v5 + 8))(v7, v4);
}

- (void)handleWithPinch:(id)pinch
{
  pinchCopy = pinch;
  selfCopy = self;
  if ([pinchCopy state] == 3)
  {
    [pinchCopy scale];
    v6 = v5;
    _hostedWindowScene = [(LocalEmojiAndStickerCollectionViewController *)selfCopy _hostedWindowScene];
    if (_hostedWindowScene)
    {
      v8 = _hostedWindowScene;
      v9 = sub_19A7A657C(v6, 8, 0, 0);
      [v8 sendAction_];
    }
  }
}

- (_TtC10StickerKit44LocalEmojiAndStickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return LocalEmojiAndStickerCollectionViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewWillDisappear:
{
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v0 = sub_19A7A9384();
  __swift_project_value_buffer(v0, qword_1EAFCAA30);
  v1 = sub_19A7A9364();
  v2 = sub_19A7AB5A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19A5EE000, v1, v2, "viewWillDisappear", v3, 2u);
    MEMORY[0x19A907A30](v3, -1, -1);
  }

  if (qword_1EAFCAF58 != -1)
  {
    swift_once();
  }

  initWithMachName_ = [objc_allocWithZone(MEMORY[0x1E699BAF0]) initWithMachName_];
  [initWithMachName_ writeEmojiDefaults];
}

- (uint64_t)viewDidAppear:
{
  if (qword_1EAFCAA20 != -1)
  {
    swift_once();
  }

  v0 = sub_19A7A9384();
  __swift_project_value_buffer(v0, qword_1EAFCAA30);
  v1 = sub_19A7A9364();
  v2 = sub_19A7AB5A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19A5EE000, v1, v2, "viewDidAppear", v3, 2u);
    MEMORY[0x19A907A30](v3, -1, -1);
  }

  if (([objc_opt_self() useNewCollectionView] & 1) == 0)
  {
    if (qword_1ED8B2A98 != -1)
    {
      swift_once();
    }

    v4 = sub_19A759928();
    if ((*(*__swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56)) + OBJC_IVAR___STKImageGlyphDataSource_isConfiguring) & 1) != 0 || !sub_19A652488())
    {
      sub_19A7125D4();
    }

    else
    {
      sub_19A712A58();
    }
  }

  if (qword_1EAFCA8E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Signposts.Signpost();
  __swift_project_value_buffer(v5, qword_1EAFDD518);
  return sub_19A7140CC();
}

@end