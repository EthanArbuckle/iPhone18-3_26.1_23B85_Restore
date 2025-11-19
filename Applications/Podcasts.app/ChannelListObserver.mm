@interface ChannelListObserver
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
@end

@implementation ChannelListObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver);
  v3 = self;
  [v2 setDelegate:0];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ChannelListObserver();
  [(ChannelListObserver *)&v4 dealloc];
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001A3164();
}

@end