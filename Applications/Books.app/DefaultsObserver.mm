@interface DefaultsObserver
- (_TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DefaultsObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (!a4)
  {
    memset(v13, 0, sizeof(v13));
    v11 = a5;
    v12 = self;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = a5;
  v9 = self;
  swift_unknownObjectRetain();
  sub_1007A3504();
  swift_unknownObjectRelease();
  if (!a5)
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