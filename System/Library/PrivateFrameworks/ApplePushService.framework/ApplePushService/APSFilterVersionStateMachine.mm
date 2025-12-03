@interface APSFilterVersionStateMachine
- (APSFilterVersionStateMachine)initWithInitialVersion:(unint64_t)version;
- (BOOL)everHadAckOn:(id)on;
- (BOOL)everSentFilterOn:(id)on;
- (BOOL)hasStaleStateOn:(id)on comparedTo:(id)to;
- (BOOL)hasUnAckedVersionOn:(id)on;
- (BOOL)isOutOfDateOn:(id)on;
- (id)aps_prettyDescription;
- (id)noteInvalidWithVersion:(unint64_t)version;
- (unint64_t)versionToSendFor:(id)for error:(id *)error;
- (void)clearInfoFor:(id)for;
- (void)noteAckedWithVersion:(unint64_t)version on:(id)on;
- (void)noteSentWithVersion:(unint64_t)version on:(id)on;
@end

@implementation APSFilterVersionStateMachine

- (unint64_t)versionToSendFor:(id)for error:(id *)error
{
  forCopy = for;
  selfCopy = self;
  v8 = sub_1000061B8(forCopy, error);

  return v8;
}

- (BOOL)everSentFilterOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  LOBYTE(self) = sub_100006A28(onCopy);

  return self & 1;
}

- (void)noteAckedWithVersion:(unint64_t)version on:(id)on
{
  onCopy = on;
  selfCopy = self;
  sub_10000DE94(version, onCopy);
}

- (void)noteSentWithVersion:(unint64_t)version on:(id)on
{
  onCopy = on;
  selfCopy = self;
  sub_10000E014(version, onCopy);
}

- (id)aps_prettyDescription
{
  selfCopy = self;
  sub_10000E724();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isOutOfDateOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  LOBYTE(self) = sub_100013074(onCopy);

  return self & 1;
}

- (APSFilterVersionStateMachine)initWithInitialVersion:(unint64_t)version
{
  *(&self->super.isa + OBJC_IVAR___APSFilterVersionStateMachine__highestSentVersion) = version;
  *(&self->super.isa + OBJC_IVAR___APSFilterVersionStateMachine__highestAckedVersion) = version;
  *(&self->super.isa + OBJC_IVAR___APSFilterVersionStateMachine__stateByInterface) = sub_1000DA120(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for FilterVersionStateMachine();
  return [(APSFilterVersionStateMachine *)&v5 init];
}

- (id)noteInvalidWithVersion:(unint64_t)version
{
  selfCopy = self;
  v5 = sub_1000D95C4(version);

  return v5;
}

- (BOOL)everHadAckOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  LOBYTE(self) = sub_1000D96C8(onCopy);

  return self & 1;
}

- (BOOL)hasUnAckedVersionOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  LOBYTE(self) = sub_1000D97B0(onCopy);

  return self & 1;
}

- (BOOL)hasStaleStateOn:(id)on comparedTo:(id)to
{
  onCopy = on;
  toCopy = to;
  selfCopy = self;
  v9 = sub_1000D989C(onCopy, toCopy);

  return v9;
}

- (void)clearInfoFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1000D99E8(forCopy);
}

@end