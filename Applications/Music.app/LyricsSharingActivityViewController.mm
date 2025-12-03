@interface LyricsSharingActivityViewController
- (UIViewControllerTransitioningDelegate)transitioningDelegate;
- (_TtC5Music35LyricsSharingActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)_prepareActivity:(id)activity;
- (void)setTransitioningDelegate:(id)delegate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation LyricsSharingActivityViewController

- (UIViewControllerTransitioningDelegate)transitioningDelegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LyricsSharingActivityViewController();
  transitioningDelegate = [(LyricsSharingActivityViewController *)&v4 transitioningDelegate];

  return transitioningDelegate;
}

- (void)setTransitioningDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001E0B14(delegate);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LyricsSharingActivityViewController();
  v2 = v3.receiver;
  [(LyricsSharingActivityViewController *)&v3 viewDidLoad];
  [v2 setCustomViewControllerVerticalInset:{0.0, v3.receiver, v3.super_class}];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1001E1BFC(appearing);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001E2A04(disappear);
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  sub_1001E2AFC(activityCopy);
}

- (_TtC5Music35LyricsSharingActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end