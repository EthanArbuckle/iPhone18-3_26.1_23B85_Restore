@interface AvatarEditorRemoteViewController
- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithCoder:(id)coder;
- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation AvatarEditorRemoteViewController

- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19A7AB014();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = sub_19A7AAFE4();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  v9 = [(RemoteBaseSceneHostingController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  coderCopy = coder;
  v6 = [(RemoteBaseSceneHostingController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end