@interface AudioRecordingLiveActivityBannerViewController
- (_TtC7Journal46AudioRecordingLiveActivityBannerViewController)initWithCoder:(id)a3;
- (void)handleTap:(id)a3;
- (void)viewDidLoad;
@end

@implementation AudioRecordingLiveActivityBannerViewController

- (_TtC7Journal46AudioRecordingLiveActivityBannerViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView) = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(AudioRecordingLiveActivityViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100110D18();
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100111578(v4);
}

@end