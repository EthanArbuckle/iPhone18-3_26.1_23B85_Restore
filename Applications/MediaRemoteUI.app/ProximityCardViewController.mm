@interface ProximityCardViewController
- (_TtC13MediaRemoteUI27ProximityCardViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ProximityCardViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000139B8();
}

- (_TtC13MediaRemoteUI27ProximityCardViewController)initWithContentView:(id)a3
{
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_image] = 0;
  v6 = OBJC_IVAR____TtC13MediaRemoteUI27ProximityCardViewController_url;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(&self->PRXCardContentViewController_opaque[v6], 1, 1, v7);
  v9.receiver = self;
  v9.super_class = type metadata accessor for ProximityCardViewController();
  return [(ProximityCardViewController *)&v9 initWithContentView:a3];
}

@end