@interface ChannelListObserver
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
@end

@implementation ChannelListObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver);
  selfCopy = self;
  [v2 setDelegate:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ChannelListObserver();
  [(ChannelListObserver *)&v4 dealloc];
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1001A3164();
}

@end