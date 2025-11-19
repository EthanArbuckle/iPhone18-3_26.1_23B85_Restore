@interface Music_SSMetricsPageRenderEvent
- (_TtC9MusicCore30Music_SSMetricsPageRenderEvent)init;
- (_TtC9MusicCore30Music_SSMetricsPageRenderEvent)initWithBodyDictionary:(id)a3;
@end

@implementation Music_SSMetricsPageRenderEvent

- (_TtC9MusicCore30Music_SSMetricsPageRenderEvent)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(Music_SSMetricsPageRenderEvent *)&v3 init];
}

- (_TtC9MusicCore30Music_SSMetricsPageRenderEvent)initWithBodyDictionary:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_AB8FF0();
  isa = sub_AB8FD0().super.isa;

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(Music_SSMetricsPageRenderEvent *)&v8 initWithBodyDictionary:isa];

  return v6;
}

@end