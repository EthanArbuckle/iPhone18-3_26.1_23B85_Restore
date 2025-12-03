@interface FMAccessoryDiscoveryVideoCard
- (_TtC6FindMy29FMAccessoryDiscoveryVideoCard)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation FMAccessoryDiscoveryVideoCard

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001A60F8();
}

- (_TtC6FindMy29FMAccessoryDiscoveryVideoCard)initWithContentView:(id)view
{
  v5 = OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer;
  v6 = objc_allocWithZone(type metadata accessor for FMAVPlayerView());
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v5] = sub_1002E7064(0, 0.25);
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryDiscoveryVideoCard();
  v8 = [(FMAccessoryDiscoveryVideoCard *)&v10 initWithContentView:viewCopy];

  return v8;
}

@end