@interface UserDefaultsObserver
- (_TtC9BKLibraryP33_84E4C0E1EA001C26EA74B9C51B2F995820UserDefaultsObserver)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation UserDefaultsObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    sub_9202C();
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
  sub_922EC();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_8C480();
  v11 = sub_91FEC();

LABEL_8:
  sub_8C2C8(v14, v11);

  sub_87D24(v14);
}

- (_TtC9BKLibraryP33_84E4C0E1EA001C26EA74B9C51B2F995820UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end