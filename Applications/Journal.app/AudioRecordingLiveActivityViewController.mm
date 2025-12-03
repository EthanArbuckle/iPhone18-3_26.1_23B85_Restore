@interface AudioRecordingLiveActivityViewController
- (_TtC7Journal40AudioRecordingLiveActivityViewController)initWithCoder:(id)coder;
- (_TtC7Journal40AudioRecordingLiveActivityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioRecordingLiveActivityViewController

- (_TtC7Journal40AudioRecordingLiveActivityViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingFinishedTask) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  v2 = v7.receiver;
  [(AudioRecordingLiveActivityViewController *)&v7 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  v4 = v5.receiver;
  [(AudioRecordingLiveActivityViewController *)&v5 viewIsAppearing:appearingCopy];
  withObservationTracking<A>(_:onChange:)();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  v2 = v3.receiver;
  [(AudioRecordingLiveActivityViewController *)&v3 viewWillLayoutSubviews];
  withObservationTracking<A>(_:onChange:)();
}

- (_TtC7Journal40AudioRecordingLiveActivityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end