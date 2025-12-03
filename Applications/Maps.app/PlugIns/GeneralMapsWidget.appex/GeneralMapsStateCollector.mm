@interface GeneralMapsStateCollector
- (NSString)uniqueName;
- (_TtC17GeneralMapsWidget25GeneralMapsStateCollector)init;
- (void)invalidateForMapsSuggestionsManager:(id)manager;
- (void)navigationServiceDidSynchronize:(id)synchronize;
@end

@implementation GeneralMapsStateCollector

- (NSString)uniqueName
{
  swift_getObjectType();
  sub_100015240(&qword_1000DEA58, &unk_1000829F0);
  sub_10007E168();
  v2 = sub_10007E138();

  return v2;
}

- (void)invalidateForMapsSuggestionsManager:(id)manager
{
  if (manager)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007E3D8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100025BA0();

  sub_1000256C0(v6, &qword_1000DE930, &unk_100083CC0);
}

- (void)navigationServiceDidSynchronize:(id)synchronize
{
  synchronizeCopy = synchronize;
  selfCopy = self;
  sub_100025C88();
}

- (_TtC17GeneralMapsWidget25GeneralMapsStateCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end