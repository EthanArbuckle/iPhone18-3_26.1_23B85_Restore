@interface HapticMusicSiriActionSource
- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)init;
- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)initWithDelegate:(id)delegate;
- (void)activeChangedToValue:(id)value;
@end

@implementation HapticMusicSiriActionSource

- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)initWithDelegate:(id)delegate
{
  *&self->SiriDirectActionSource_opaque[OBJC_IVAR____TtC19AXHapticMusicServer27HapticMusicSiriActionSource_hmDelegate] = delegate;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HapticMusicSiriActionSource();
  swift_unknownObjectRetain();
  return [(HapticMusicSiriActionSource *)&v5 initWithDelegate:delegate];
}

- (void)activeChangedToValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  HapticMusicSiriActionSource.activeChangedTo(value:)(valueCopy);
}

- (_TtC19AXHapticMusicServer27HapticMusicSiriActionSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end