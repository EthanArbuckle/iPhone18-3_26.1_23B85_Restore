@interface ParticipantJoins.Observer
- (_TtCV24SensitiveContentAnalysis16ParticipantJoinsP33_A1B455ED37557BDC9F886674143C91148Observer)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ParticipantJoins.Observer

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
  sub_1AEAF9CCC();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for NSKeyValueChangeKey();
  sub_1AEA8591C(&qword_1EB5E8D10);
  v10 = sub_1AEAF951C();

LABEL_6:
  (*(&self->super.isa + OBJC_IVAR____TtCV24SensitiveContentAnalysis16ParticipantJoinsP33_A1B455ED37557BDC9F886674143C91148Observer_block))(v10);

  sub_1AEA79B50(v13);
}

- (_TtCV24SensitiveContentAnalysis16ParticipantJoinsP33_A1B455ED37557BDC9F886674143C91148Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end