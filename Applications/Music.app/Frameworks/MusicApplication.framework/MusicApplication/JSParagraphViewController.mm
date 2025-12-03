@interface JSParagraphViewController
- (_TtC16MusicApplication25JSParagraphViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication25JSParagraphViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation JSParagraphViewController

- (_TtC16MusicApplication25JSParagraphViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_37E3B4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_37EB0C();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_37ECFC(coordinator, width, height);
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_37F068(change);
}

- (_TtC16MusicApplication25JSParagraphViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end