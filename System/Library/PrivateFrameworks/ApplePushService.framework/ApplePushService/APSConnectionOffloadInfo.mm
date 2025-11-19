@interface APSConnectionOffloadInfo
- (APSConnectionOffloadInfo)init;
- (APSConnectionOffloadInfo)initWithTlsCipher:(unsigned __int16)a3 ticketLifeTime:(unint64_t)a4 ticketAgeAdd:(unsigned int)a5 ticketCreationTime:(unint64_t)a6 preShareKey:(id)a7 preShareKeyID:(id)a8;
- (BOOL)isExpired;
- (OS_dispatch_data)preShareKey;
- (OS_dispatch_data)preShareKeyID;
- (unint64_t)ticketCreationTime;
- (unint64_t)ticketLifeTime;
- (unsigned)ticketAgeAdd;
- (unsigned)tlsCipher;
- (void)setPreShareKey:(id)a3;
- (void)setPreShareKeyID:(id)a3;
- (void)setTicketAgeAdd:(unsigned int)a3;
- (void)setTicketCreationTime:(unint64_t)a3;
- (void)setTicketLifeTime:(unint64_t)a3;
- (void)setTlsCipher:(unsigned __int16)a3;
@end

@implementation APSConnectionOffloadInfo

- (unsigned)tlsCipher
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTlsCipher:(unsigned __int16)a3
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)ticketLifeTime
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTicketLifeTime:(unint64_t)a3
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unsigned)ticketAgeAdd
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTicketAgeAdd:(unsigned int)a3
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)ticketCreationTime
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTicketCreationTime:(unint64_t)a3
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (OS_dispatch_data)preShareKey
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKey;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreShareKey:(id)a3
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKey;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (OS_dispatch_data)preShareKeyID
{
  v3 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreShareKeyID:(id)a3
{
  v5 = OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)isExpired
{
  v2 = self;
  v3 = sub_1000E3390();

  return v3;
}

- (APSConnectionOffloadInfo)initWithTlsCipher:(unsigned __int16)a3 ticketLifeTime:(unint64_t)a4 ticketAgeAdd:(unsigned int)a5 ticketCreationTime:(unint64_t)a6 preShareKey:(id)a7 preShareKeyID:(id)a8
{
  v14 = a7;
  v15 = a8;
  sub_1000D19F8(1);
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_tlsCipher) = a3;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_ticketLifeTime) = a4;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_ticketAgeAdd) = a5;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_ticketCreationTime) = a6;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_preShareKey) = v14;
  *(&self->super.isa + OBJC_IVAR___APSConnectionOffloadInfo_preShareKeyID) = v15;
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