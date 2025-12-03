@interface JSSplitWidgetViewController
- (CGSize)preferredContentSize;
- (_TtC16MusicApplication27JSSplitWidgetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)setPreferredContentSize:(CGSize)size;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation JSSplitWidgetViewController

- (void)viewDidLoad
{
  selfCopy = self;
  JSSplitWidgetViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  JSSplitWidgetViewController.viewDidLayoutSubviews()();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(JSSplitWidgetViewController *)&v5 music_viewInheritedLayoutInsetsDidChange];
  sub_CE094();
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  JSSplitWidgetViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  JSSplitWidgetViewController.viewWillTransition(to:with:)(coordinator, width, height);
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  ObjectType = swift_getObjectType();
  v13.receiver = self;
  v13.super_class = ObjectType;
  selfCopy = self;
  [(JSSplitWidgetViewController *)&v13 preferredContentSize];
  v9 = v8;
  v11 = v10;
  v12.receiver = selfCopy;
  v12.super_class = ObjectType;
  [(JSSplitWidgetViewController *)&v12 setPreferredContentSize:width, height];
  sub_CF4D8(v9, v11);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSSplitWidgetViewController *)&v5 viewWillAppear:appearCopy];
  sub_CF788(appearCopy);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSSplitWidgetViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_CF788(disappearCopy | 0x40);
}

- (_TtC16MusicApplication27JSSplitWidgetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end