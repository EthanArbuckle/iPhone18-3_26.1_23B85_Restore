@interface HeadphoneShareAudioDoneViewController
- (_TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation HeadphoneShareAudioDoneViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeadphoneShareAudioDoneViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (_TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneShareAudioDoneViewController_type] = 23;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneShareAudioDoneViewController *)&v7 initWithContentView:view];
}

@end