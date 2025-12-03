@interface Music_SSMetricsComponentRenderEvent
+ (NSString)Topic;
- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)init;
- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)initWithBodyDictionary:(id)dictionary;
- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler;
@end

@implementation Music_SSMetricsComponentRenderEvent

+ (NSString)Topic
{
  v2 = sub_AB9260();

  return v2;
}

- (void)setStandardPropertiesWith:(id)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  withCopy = with;
  selfCopy = self;
  v10 = sub_AB9260();
  [(Music_SSMetricsComponentRenderEvent *)selfCopy setEventType:v10];

  v11 = withCopy;
  v12 = selfCopy;

  sub_5D1690(with, v12, v12, with, sub_15AB00, v7);
}

- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return [(Music_SSMetricsComponentRenderEvent *)&v3 init];
}

- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)initWithBodyDictionary:(id)dictionary
{
  sub_AB8FF0();
  isa = sub_AB8FD0().super.isa;

  v7.receiver = self;
  v7.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  v5 = [(Music_SSMetricsComponentRenderEvent *)&v7 initWithBodyDictionary:isa];

  return v5;
}

@end