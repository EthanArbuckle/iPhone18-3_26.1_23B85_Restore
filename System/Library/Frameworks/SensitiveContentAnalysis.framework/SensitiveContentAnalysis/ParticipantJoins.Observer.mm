@interface ParticipantJoins.Observer
- (_TtCV24SensitiveContentAnalysis16ParticipantJoinsP33_A1B455ED37557BDC9F886674143C91148Observer)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ParticipantJoins.Observer

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
  sub_1AEAF9CCC();
  swift_unknownObjectRelease();
  if (!change)
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