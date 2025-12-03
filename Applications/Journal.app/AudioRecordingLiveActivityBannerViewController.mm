@interface AudioRecordingLiveActivityBannerViewController
- (_TtC7Journal46AudioRecordingLiveActivityBannerViewController)initWithCoder:(id)coder;
- (void)handleTap:(id)tap;
- (void)viewDidLoad;
@end

@implementation AudioRecordingLiveActivityBannerViewController

- (_TtC7Journal46AudioRecordingLiveActivityBannerViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView) = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(AudioRecordingLiveActivityViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100110D18();
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_100111578(tapCopy);
}

@end