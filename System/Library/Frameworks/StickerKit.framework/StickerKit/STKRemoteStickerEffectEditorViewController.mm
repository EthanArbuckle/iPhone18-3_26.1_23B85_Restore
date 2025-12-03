@interface STKRemoteStickerEffectEditorViewController
- (STKRemoteStickerEffectEditorViewController)initWithCoder:(id)coder;
- (STKRemoteStickerEffectEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (STKRemoteStickerEffectEditorViewController)initWithStickerIdentifier:(id)identifier;
- (STKStickerEffectEditorViewControllerDelegate)delegate;
- (void)showStickerEffectViewWithSourceRect:(CGRect)rect showing:(BOOL)showing;
- (void)stickerEffectEditorViewControllerControllerDidTapDone;
@end

@implementation STKRemoteStickerEffectEditorViewController

- (STKRemoteStickerEffectEditorViewController)initWithStickerIdentifier:(id)identifier
{
  v4 = sub_19A7A8F64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8F44();
  v8 = OBJC_IVAR___STKRemoteStickerEffectEditorViewController_stickerIdentifier;
  sub_19A7A8F54();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  (*(v5 + 24))(self + v8, v7, v4);
  swift_endAccess();
  v9 = type metadata accessor for RemoteStickerEffectEditorViewController();
  v13.receiver = self;
  v13.super_class = v9;
  v10 = [(RemoteBaseSceneHostingController *)&v13 initWithNibName:0 bundle:0];
  (*(v5 + 8))(v7, v4);
  return v10;
}

- (STKRemoteStickerEffectEditorViewController)initWithCoder:(id)coder
{
  sub_19A7A8F54();
  swift_unknownObjectWeakInit();
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (STKStickerEffectEditorViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)stickerEffectEditorViewControllerControllerDidTapDone
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong stickerEffectEditorViewControllerControllerDidTapDone];
    swift_unknownObjectRelease();
  }
}

- (void)showStickerEffectViewWithSourceRect:(CGRect)rect showing:(BOOL)showing
{
  *&v7 = rect.origin.x;
  *(&v7 + 1) = *&rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  showingCopy = showing;
  selfCopy = self;
  v5 = sub_19A626D64(0, &v7, 0, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  [v6 sendAction_];
}

- (STKRemoteStickerEffectEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end