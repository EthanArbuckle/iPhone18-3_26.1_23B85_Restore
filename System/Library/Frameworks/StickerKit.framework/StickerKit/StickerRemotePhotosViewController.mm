@interface StickerRemotePhotosViewController
- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithCoder:(id)coder;
- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)stickerPhotosViewControllerShouldDismiss;
- (void)stickerPhotosViewControllerWithDidCreate:(id)create isLive:(BOOL)live sourceFrame:(CGRect)frame;
- (void)stickerPhotosViewControllerWithDidCreate:(id)create sourceFrame:(CGRect)frame;
@end

@implementation StickerRemotePhotosViewController

- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19A7AB014();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = sub_19A7AAFE4();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for StickerRemotePhotosViewController();
  v9 = [(RemoteBaseSceneHostingController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC10StickerKit33StickerRemotePhotosViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for StickerRemotePhotosViewController();
  coderCopy = coder;
  v6 = [(RemoteBaseSceneHostingController *)&v8 initWithCoder:coderCopy];

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
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)stickerPhotosViewControllerWithDidCreate:(id)create sourceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_19A7AAD24();
  sub_19A7AB254();
  v9 = self + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    swift_getObjectType();
    v11 = *(v10 + 16);
    selfCopy = self;
    v11(x, y, width, height);
    swift_unknownObjectRelease();
  }
}

- (void)stickerPhotosViewControllerWithDidCreate:(id)create isLive:(BOOL)live sourceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = self + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    swift_getObjectType();
    v13 = *(v12 + 24);
    createCopy = create;
    selfCopy = self;
    v13(x, y, width, height);
    swift_unknownObjectRelease();
  }
}

@end