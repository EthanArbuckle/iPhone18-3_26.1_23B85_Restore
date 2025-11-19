@interface JSInlineSocialUpsellViewController
- (_TtC16MusicApplication34JSInlineSocialUpsellViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication34JSInlineSocialUpsellViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation JSInlineSocialUpsellViewController

- (_TtC16MusicApplication34JSInlineSocialUpsellViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_socialUpsellView) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(&self->super.super.super.isa + v4) = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MusicApplication34JSInlineSocialUpsellViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = TextDrawing.Cache.init()();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  JSInlineSocialUpsellViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  JSInlineSocialUpsellViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(JSInlineSocialUpsellViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_378E90;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_CF24C;
  v11[3] = &block_descriptor_16_1;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSInlineSocialUpsellViewController.traitCollectionDidChange(_:)(v9);
}

- (_TtC16MusicApplication34JSInlineSocialUpsellViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end