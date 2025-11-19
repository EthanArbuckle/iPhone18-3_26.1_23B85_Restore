@interface FMAccessoryDiscoveryVideoCard
- (_TtC6FindMy29FMAccessoryDiscoveryVideoCard)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMAccessoryDiscoveryVideoCard

- (void)viewDidLoad
{
  v2 = self;
  sub_1001A60F8();
}

- (_TtC6FindMy29FMAccessoryDiscoveryVideoCard)initWithContentView:(id)a3
{
  v5 = OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer;
  v6 = objc_allocWithZone(type metadata accessor for FMAVPlayerView());
  v7 = a3;
  *&self->PRXCardContentViewController_opaque[v5] = sub_1002E7064(0, 0.25);
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryDiscoveryVideoCard();
  v8 = [(FMAccessoryDiscoveryVideoCard *)&v10 initWithContentView:v7];

  return v8;
}

@end