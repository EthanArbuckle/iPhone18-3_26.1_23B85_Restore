@interface StickerPickerViewController
- (_TtC10StickerKit27StickerPickerViewController)init;
- (_TtC10StickerKit27StickerPickerViewController)initWithCoder:(id)a3;
- (_TtC10StickerKit27StickerPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation StickerPickerViewController

- (_TtC10StickerKit27StickerPickerViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(STKStickerPickerSceneViewController) init];
  v5 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for StickerPickerSceneViewControllerDelegateProxy()) init];
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (_TtC10StickerKit27StickerPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(STKStickerPickerSceneViewController) init];
  v6 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for StickerPickerSceneViewControllerDelegateProxy()) init];
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (_TtC10StickerKit27StickerPickerViewController)init
{
  v3 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(STKStickerPickerSceneViewController) init];
  v4 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for StickerPickerSceneViewControllerDelegateProxy()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for StickerPickerViewController();
  return [(StickerPickerViewController *)&v6 initWithNibName:0 bundle:0];
}

- (void)loadView
{
  v2 = self;
  sub_19A75537C();
}

@end