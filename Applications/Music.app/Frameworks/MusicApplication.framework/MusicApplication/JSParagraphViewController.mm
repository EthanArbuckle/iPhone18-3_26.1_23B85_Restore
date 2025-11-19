@interface JSParagraphViewController
- (_TtC16MusicApplication25JSParagraphViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication25JSParagraphViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation JSParagraphViewController

- (_TtC16MusicApplication25JSParagraphViewController)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_37E3B4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_37EB0C();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_37ECFC(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSParagraphViewController();
  v2 = v3.receiver;
  [(JSParagraphViewController *)&v3 music_viewInheritedLayoutInsetsDidChange];
  sub_37F2C4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_37F068(a3);
}

- (_TtC16MusicApplication25JSParagraphViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end