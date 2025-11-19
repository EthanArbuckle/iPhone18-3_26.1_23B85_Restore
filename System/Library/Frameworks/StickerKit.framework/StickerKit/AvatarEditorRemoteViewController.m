@interface AvatarEditorRemoteViewController
- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithCoder:(id)a3;
- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation AvatarEditorRemoteViewController

- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19A7AB014();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = sub_19A7AAFE4();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  v9 = [(RemoteBaseSceneHostingController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC10StickerKit32AvatarEditorRemoteViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  v5 = a3;
  v6 = [(RemoteBaseSceneHostingController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end