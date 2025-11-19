@interface AXCoreSettingsStore.Observation
- (_TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AXCoreSettingsStore.Observation

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    sub_19166B748();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v12 = a5;
    v13 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_19166BFC8();
  swift_unknownObjectRelease();
  if (!a5)
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