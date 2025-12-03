@interface AXCoreSettingsStore.Observation
- (_TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AXCoreSettingsStore.Observation

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    sub_19166B748();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_19166BFC8();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_19164347C(&qword_1EADAE670, type metadata accessor for NSKeyValueChangeKey);
  v11 = sub_19166B678();

LABEL_8:
  sub_1916433CC(v14, v11);

  sub_19159E780(v14, &unk_1EADB0270, &unk_191672C20);
}

- (_TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end