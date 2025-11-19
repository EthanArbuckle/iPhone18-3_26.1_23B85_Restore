@interface Music_SSMetricsComponentRenderEvent
+ (NSString)Topic;
- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)init;
- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)initWithBodyDictionary:(id)a3;
- (void)setStandardPropertiesWith:(id)a3 completionHandler:(id)a4;
@end

@implementation Music_SSMetricsComponentRenderEvent

+ (NSString)Topic
{
  v2 = sub_AB9260();

  return v2;
}

- (void)setStandardPropertiesWith:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_AB9260();
  [(Music_SSMetricsComponentRenderEvent *)v9 setEventType:v10];

  v11 = v8;
  v12 = v9;

  sub_5D1690(a3, v12, v12, a3, sub_15AB00, v7);
}

- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return [(Music_SSMetricsComponentRenderEvent *)&v3 init];
}

- (_TtC9MusicCore35Music_SSMetricsComponentRenderEvent)initWithBodyDictionary:(id)a3
{
  sub_AB8FF0();
  isa = sub_AB8FD0().super.isa;

  v7.receiver = self;
  v7.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  v5 = [(Music_SSMetricsComponentRenderEvent *)&v7 initWithBodyDictionary:isa];

  return v5;
}

@end