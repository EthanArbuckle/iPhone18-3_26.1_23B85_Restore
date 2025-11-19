@interface NowPlayingContextMenuConfiguration
- (_TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration)init;
@end

@implementation NowPlayingContextMenuConfiguration

- (_TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_config) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_previewProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_actionProvider);
  v5 = type metadata accessor for NowPlayingContextMenuConfiguration();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(NowPlayingContextMenuConfiguration *)&v7 init];
}

@end