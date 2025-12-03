@interface HeadphoneShareAudioViewController
- (_TtC20HeadphoneProxService33HeadphoneShareAudioViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HeadphoneShareAudioViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeadphoneShareAudioViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000A3F9C(appear, &selRef_viewWillAppear_, "Playing movie", &selRef_play);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000A3F9C(disappear, &selRef_viewDidDisappear_, "Stopping movie", &selRef_stop);
}

- (_TtC20HeadphoneProxService33HeadphoneShareAudioViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieContainer;
  sub_100062284(__src);
  memcpy(&self->PRXCardContentViewController_opaque[v6], __src, 0x130uLL);
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_movieView] = 0;
  *&self->movieContainer[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneShareAudioViewController_type] = 22;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(HeadphoneShareAudioViewController *)&v8 initWithContentView:view];
}

@end