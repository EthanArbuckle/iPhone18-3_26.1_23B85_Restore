@interface StickerRemotePhotosViewController
- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithCoder:(id)a3;
- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)stickerPhotosViewControllerShouldDismiss;
- (void)stickerPhotosViewControllerWithDidCreate:(id)a3 isLive:(BOOL)a4 sourceFrame:(CGRect)a5;
- (void)stickerPhotosViewControllerWithDidCreate:(id)a3 sourceFrame:(CGRect)a4;
@end

@implementation StickerRemotePhotosViewController

- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19A7AB014();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = sub_19A7AAFE4();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StickerRemotePhotosViewController();
  v9 = [(RemoteBaseSceneHostingController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for StickerRemotePhotosViewController();
  v5 = a3;
  v6 = [(RemoteBaseSceneHostingController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (void)stickerPhotosViewControllerShouldDismiss
{
  v3 = self + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)stickerPhotosViewControllerWithDidCreate:(id)a3 sourceFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  sub_19A7AAD24();
  sub_19A7AB254();
  v9 = self + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    swift_getObjectType();
    v11 = *(v10 + 16);
    v12 = self;
    v11(x, y, width, height);
    swift_unknownObjectRelease();
  }
}

- (void)stickerPhotosViewControllerWithDidCreate:(id)a3 isLive:(BOOL)a4 sourceFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = self + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    swift_getObjectType();
    v13 = *(v12 + 24);
    v14 = a3;
    v15 = self;
    v13(x, y, width, height);
    swift_unknownObjectRelease();
  }
}

@end