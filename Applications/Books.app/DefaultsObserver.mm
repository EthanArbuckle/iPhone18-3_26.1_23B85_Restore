@interface DefaultsObserver
- (_TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DefaultsObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (!object)
  {
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  changeCopy2 = change;
  selfCopy2 = self;
  swift_unknownObjectRetain();
  sub_1007A3504();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10044419C(&qword_100AD3690, type metadata accessor for NSKeyValueChangeKey);
  v10 = sub_1007A2044();

LABEL_6:
  (*(&self->super.isa + OBJC_IVAR____TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver_callback))(v10);

  sub_100007840(v13, &unk_100AD5B40);
}

- (_TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end