@interface HeadphoneAdaptiveControlsConversationAwarenessViewController
- (_TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneAdaptiveControlsConversationAwarenessViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10001E664();
}

- (_TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService60HeadphoneAdaptiveControlsConversationAwarenessViewController_type] = 11;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAdaptiveControlsConversationAwarenessViewController *)&v7 initWithContentView:a3];
}

@end