@interface JSSplitWidgetViewController
- (CGSize)preferredContentSize;
- (_TtC16MusicApplication27JSSplitWidgetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation JSSplitWidgetViewController

- (void)viewDidLoad
{
  v2 = self;
  JSSplitWidgetViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  JSSplitWidgetViewController.viewDidLayoutSubviews()();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(JSSplitWidgetViewController *)&v5 music_viewInheritedLayoutInsetsDidChange];
  sub_CE094();
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSSplitWidgetViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  JSSplitWidgetViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(JSSplitWidgetViewController *)&v4 preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  ObjectType = swift_getObjectType();
  v13.receiver = self;
  v13.super_class = ObjectType;
  v7 = self;
  [(JSSplitWidgetViewController *)&v13 preferredContentSize];
  v9 = v8;
  v11 = v10;
  v12.receiver = v7;
  v12.super_class = ObjectType;
  [(JSSplitWidgetViewController *)&v12 setPreferredContentSize:width, height];
  sub_CF4D8(v9, v11);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSSplitWidgetViewController *)&v5 viewWillAppear:v3];
  sub_CF788(v3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSSplitWidgetViewController *)&v5 viewWillDisappear:v3];
  sub_CF788(v3 | 0x40);
}

- (_TtC16MusicApplication27JSSplitWidgetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end