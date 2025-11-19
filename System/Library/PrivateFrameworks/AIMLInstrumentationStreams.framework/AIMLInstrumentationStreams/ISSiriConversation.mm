@interface ISSiriConversation
- (ISSiriConversation)init;
- (ISSiriConversation)initWithTurns:(id)a3;
- (NSArray)turns;
- (NSDate)date;
- (NSUUID)firstTurnId;
- (double)timestamp;
@end

@implementation ISSiriConversation

- (NSArray)turns
{
  v2 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  type metadata accessor for SiriTurn();

  v3 = sub_23C871894();

  return v3;
}

- (double)timestamp
{
  v2 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 0)
  {
    v6 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  }

  v7 = self;
  v8 = sub_23C871C34();
  self = v7;
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v9 = self;
    v10 = MEMORY[0x23EED7610](0, v2);

    v3 = v10;
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
LABEL_6:
    v4 = *&v3[OBJC_IVAR___ISEventGraph_timestamp];

    return v4;
  }

  __break(1u);
  return result;
}

- (NSDate)date
{
  v3 = sub_23C870AE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 < 0)
  {
    v15 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v16 = self;
    v12 = MEMORY[0x23EED7610](0, v8);
    goto LABEL_6;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v10 = *(v8 + 32);
  v11 = self;
  v12 = v10;
LABEL_6:
  v13 = *&v12[OBJC_IVAR___ISEventGraph_timestamp];

  sub_23C870A54();
  v14 = sub_23C870A84();
  (*(v4 + 8))(v7, v3);

  return v14;
}

- (NSUUID)firstTurnId
{
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < 0)
  {
    v16 = *(self + OBJC_IVAR___ISSiriConversation_turns);
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v17 = self;
    v12 = MEMORY[0x23EED7610](0, v8);
    goto LABEL_6;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v8 + 32);
  v11 = self;
  v12 = v10;
LABEL_6:
  v13 = v12;
  result = EventGraph.uei.getter();
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v14 = sub_23C62FC3C();

  sub_23C870E24();

  v15 = sub_23C870B24();
  (*(v4 + 8))(v7, v3);

  return v15;
}

- (ISSiriConversation)initWithTurns:(id)a3
{
  type metadata accessor for SiriTurn();
  sub_23C8718A4();

  v7 = sub_23C5A3EBC(v4);
  sub_23C63084C(&v7);

  *(self + OBJC_IVAR___ISSiriConversation_turns) = v7;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SiriConversation();
  return [(ISSiriConversation *)&v6 init];
}

- (ISSiriConversation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end