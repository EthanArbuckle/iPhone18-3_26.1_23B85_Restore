@interface APSConnectionOffloadInfo
- (APSConnectionOffloadInfo)init;
- (APSConnectionOffloadInfo)initWithTlsCipher:(unsigned __int16)cipher ticketLifeTime:(unint64_t)time ticketAgeAdd:(unsigned int)add ticketCreationTime:(unint64_t)creationTime preShareKey:(id)key preShareKeyID:(id)d;
- (BOOL)isExpired;
- (OS_dispatch_data)preShareKey;
- (OS_dispatch_data)preShareKeyID;
- (unint64_t)ticketCreationTime;
- (unint64_t)ticketLifeTime;
- (unsigned)ticketAgeAdd;
- (unsigned)tlsCipher;
- (void)setPreShareKey:(id)key;
- (void)setPreShareKeyID:(id)d;
- (void)setTicketAgeAdd:(unsigned int)add;
- (void)setTicketCreationTime:(unint64_t)time;
- (void)setTicketLifeTime:(unint64_t)time;
- (void)setTlsCipher:(unsigned __int16)cipher;
@end

@implementation APSConnectionOffloadInfo

- (unsigned)tlsCipher
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTlsCipher:(unsigned __int16)cipher
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher;
  swift_beginAccess();
  *(&self->super.isa + v5) = cipher;
}

- (unint64_t)ticketLifeTime
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTicketLifeTime:(unint64_t)time
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime;
  swift_beginAccess();
  *(&self->super.isa + v5) = time;
}

- (unsigned)ticketAgeAdd
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTicketAgeAdd:(unsigned int)add
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd;
  swift_beginAccess();
  *(&self->super.isa + v5) = add;
}

- (unint64_t)ticketCreationTime
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTicketCreationTime:(unint64_t)time
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime;
  swift_beginAccess();
  *(&self->super.isa + v5) = time;
}

- (OS_dispatch_data)preShareKey
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKey;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreShareKey:(id)key
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKey;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = key;
  keyCopy = key;
}

- (OS_dispatch_data)preShareKeyID
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreShareKeyID:(id)d
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = d;
  dCopy = d;
}

- (BOOL)isExpired
{
  selfCopy = self;
  v3 = sub_1000E3390();

  return v3;
}

- (APSConnectionOffloadInfo)initWithTlsCipher:(unsigned __int16)cipher ticketLifeTime:(unint64_t)time ticketAgeAdd:(unsigned int)add ticketCreationTime:(unint64_t)creationTime preShareKey:(id)key preShareKeyID:(id)d
{
  keyCopy = key;
  dCopy = d;
  sub_1000D19F8(1);
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher) = cipher;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime) = time;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd) = add;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime) = creationTime;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_preShareKey) = keyCopy;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID) = dCopy;
  v17.receiver = self;
  v17.super_class = type metadata accessor for ConnectionOffloadInfo();
  return [(APSConnectionOffloadInfo *)&v17 init];
}

- (APSConnectionOffloadInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end