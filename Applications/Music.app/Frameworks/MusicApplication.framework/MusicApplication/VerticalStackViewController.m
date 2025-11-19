@interface VerticalStackViewController
- (CGRect)scrollViewVisibleBounds;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (_TtC16MusicApplication27VerticalStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VerticalStackViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VerticalStackViewController();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillAppear:v3];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState];
  v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState] = v3;
  sub_4D9A30(v5);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VerticalStackViewController();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewDidAppear:v3];
  v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState);
  *(v4 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState) = -127;
  sub_4D9A30(v5);
  (*&stru_158.segname[swift_isaMask & *v4])(1);
  sub_4D7AA8();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VerticalStackViewController();
  v4 = v6.receiver;
  [(VerticalStackViewController *)&v6 viewWillDisappear:v3];
  v5 = v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState];
  v4[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState] = v3 | 0x40;
  sub_4D9A30(v5);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_4D9818(a3);
}

- (id)contentScrollView
{
  v2 = self;
  v3 = sub_4D3DD0();

  return v3;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v3 = self;
  v4 = sub_4D3DD0();

  return v4;
}

- (CGRect)scrollViewVisibleBounds
{
  v2 = self;
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
  v2 = self;
  sub_4DA7BC();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_4DABAC();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_4DACC4(a3, a4);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_4DB044(a3);
  swift_unknownObjectRelease();
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_4DF37C();
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_4DF434();
}

- (_TtC16MusicApplication27VerticalStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end