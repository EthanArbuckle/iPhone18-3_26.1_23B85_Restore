@interface HapticMusicSiriActionSource
- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)init;
- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)initWithDelegate:(id)a3;
- (void)activeChangedToValue:(id)a3;
@end

@implementation HapticMusicSiriActionSource

- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)initWithDelegate:(id)a3
{
  *&self->SiriDirectActionSource_opaque[OBJC_IVAR____TtC19AXHapticMusicServer27HapticMusicSiriActionSource_hmDelegate] = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HapticMusicSiriActionSource();
  swift_unknownObjectRetain();
  return [(HapticMusicSiriActionSource *)&v5 initWithDelegate:a3];
}

- (void)activeChangedToValue:(id)a3
{
  v4 = a3;
  v5 = self;
  HapticMusicSiriActionSource.activeChangedTo(value:)(v4);
}

- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end