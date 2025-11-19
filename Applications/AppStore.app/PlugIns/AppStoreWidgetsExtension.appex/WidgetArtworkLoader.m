@interface WidgetArtworkLoader
- (_TtC24AppStoreWidgetsExtension19WidgetArtworkLoader)init;
@end

@implementation WidgetArtworkLoader

- (_TtC24AppStoreWidgetsExtension19WidgetArtworkLoader)init
{
  v3 = OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader_cache;
  sub_100003650(&qword_100066AD8, &qword_1000506C8);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_1000424FC();
  *(&self->super.isa + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetArtworkLoader();
  return [(WidgetArtworkLoader *)&v5 init];
}

@end