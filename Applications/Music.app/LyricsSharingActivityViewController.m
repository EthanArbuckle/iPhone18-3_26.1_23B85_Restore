@interface LyricsSharingActivityViewController
- (UIViewControllerTransitioningDelegate)transitioningDelegate;
- (_TtC5Music35LyricsSharingActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_prepareActivity:(id)a3;
- (void)setTransitioningDelegate:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation LyricsSharingActivityViewController

- (UIViewControllerTransitioningDelegate)transitioningDelegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LyricsSharingActivityViewController();
  v2 = [(LyricsSharingActivityViewController *)&v4 transitioningDelegate];

  return v2;
}

- (void)setTransitioningDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1001E0B14(a3);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LyricsSharingActivityViewController();
  v2 = v3.receiver;
  [(LyricsSharingActivityViewController *)&v3 viewDidLoad];
  [v2 setCustomViewControllerVerticalInset:{0.0, v3.receiver, v3.super_class}];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1001E1BFC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001E2A04(a3);
}

- (void)_prepareActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E2AFC(v4);
}

- (_TtC5Music35LyricsSharingActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end