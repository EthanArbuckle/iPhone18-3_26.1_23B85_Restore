@interface VerticalStackViewController
- (CGRect)scrollViewVisibleBounds;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (_TtC16MusicApplication27VerticalStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VerticalStackViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VerticalStackViewController();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillAppear:appearCopy];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState];
  v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState] = appearCopy;
  sub_4D9A30(v5);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VerticalStackViewController();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewDidAppear:appearCopy];
  v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState);
  *(v4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState) = -127;
  sub_4D9A30(v5);
  (*&stru_158.segname[swift_isaMask & *v4])(1);
  sub_4D7AA8();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VerticalStackViewController();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillDisappear:disappearCopy];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState];
  v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState] = disappearCopy | 0x40;
  sub_4D9A30(v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_4D9818(disappear);
}

- (id)contentScrollView
{
  selfCopy = self;
  v3 = sub_4D3DD0();

  return v3;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v4 = sub_4D3DD0();

  return v4;
}

- (CGRect)scrollViewVisibleBounds
{
  selfCopy = self;
  v3 = sub_4D3DD0();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_4DA7BC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_4DABAC();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_4DACC4(editing, animated);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_4DB044(container);
  swift_unknownObjectRelease();
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRetain_n();
    v6 = sub_4D3C64();
    width = sub_4DC0BC(0.0, 0.0, width, height, v6, 0x10000);
    height = v7;
    swift_unknownObjectRelease_n();
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_4DF37C();
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  selfCopy = self;
  sub_4DF434();
}

- (_TtC16MusicApplication27VerticalStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end