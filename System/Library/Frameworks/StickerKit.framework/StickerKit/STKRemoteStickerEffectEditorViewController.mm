@interface STKRemoteStickerEffectEditorViewController
- (STKRemoteStickerEffectEditorViewController)initWithCoder:(id)a3;
- (STKRemoteStickerEffectEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (STKRemoteStickerEffectEditorViewController)initWithStickerIdentifier:(id)a3;
- (STKStickerEffectEditorViewControllerDelegate)delegate;
- (void)showStickerEffectViewWithSourceRect:(CGRect)a3 showing:(BOOL)a4;
- (void)stickerEffectEditorViewControllerControllerDidTapDone;
@end

@implementation STKRemoteStickerEffectEditorViewController

- (STKRemoteStickerEffectEditorViewController)initWithStickerIdentifier:(id)a3
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

- (STKRemoteStickerEffectEditorViewController)initWithCoder:(id)a3
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

- (void)showStickerEffectViewWithSourceRect:(CGRect)a3 showing:(BOOL)a4
{
  *&v7 = a3.origin.x;
  *(&v7 + 1) = *&a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  v10 = a4;
  v4 = self;
  v5 = sub_19A626D64(0, &v7, 0, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  [v6 sendAction_];
}

- (STKRemoteStickerEffectEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end