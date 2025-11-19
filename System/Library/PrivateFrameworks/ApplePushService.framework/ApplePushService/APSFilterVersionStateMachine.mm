@interface APSFilterVersionStateMachine
- (APSFilterVersionStateMachine)initWithInitialVersion:(unint64_t)a3;
- (BOOL)everHadAckOn:(id)a3;
- (BOOL)everSentFilterOn:(id)a3;
- (BOOL)hasStaleStateOn:(id)a3 comparedTo:(id)a4;
- (BOOL)hasUnAckedVersionOn:(id)a3;
- (BOOL)isOutOfDateOn:(id)a3;
- (id)aps_prettyDescription;
- (id)noteInvalidWithVersion:(unint64_t)a3;
- (unint64_t)versionToSendFor:(id)a3 error:(id *)a4;
- (void)clearInfoFor:(id)a3;
- (void)noteAckedWithVersion:(unint64_t)a3 on:(id)a4;
- (void)noteSentWithVersion:(unint64_t)a3 on:(id)a4;
@end

@implementation APSFilterVersionStateMachine

- (unint64_t)versionToSendFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1000061B8(v6, a4);

  return v8;
}

- (BOOL)everSentFilterOn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100006A28(v4);

  return self & 1;
}

- (void)noteAckedWithVersion:(unint64_t)a3 on:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_10000DE94(a3, v6);
}

- (void)noteSentWithVersion:(unint64_t)a3 on:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_10000E014(a3, v6);
}

- (id)aps_prettyDescription
{
  v2 = self;
  sub_10000E724();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isOutOfDateOn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100013074(v4);

  return self & 1;
}

- (APSFilterVersionStateMachine)initWithInitialVersion:(unint64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) = a3;
  *(&self->super.isa + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion) = a3;
  *(&self->super.isa + OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface) = sub_1000DA120(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilterVersionStateMachine();
  return [(APSFilterVersionStateMachine *)&v5 init];
}

- (id)noteInvalidWithVersion:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1000D95C4(a3);

  return v5;
}

- (BOOL)everHadAckOn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000D96C8(v4);

  return self & 1;
}

- (BOOL)hasUnAckedVersionOn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000D97B0(v4);

  return self & 1;
}

- (BOOL)hasStaleStateOn:(id)a3 comparedTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000D989C(v6, v7);

  return v9;
}

- (void)clearInfoFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000D99E8(v4);
}

@end