@interface UpdatesContext
- (BOOL)isBackgroundRequest;
- (BOOL)shouldPerformUpdates;
- (NSNumber)bridgedTargetedItemID;
- (NSString)humanReadableReason;
- (_TtC9appstored14UpdatesContext)initWithReason:(int64_t)a3 requestToken:(id)a4 logKey:(id)a5 callbackHandler:(id)a6 includeMetrics:(BOOL)a7 isVPPLookup:(BOOL)a8 userInitiated:(BOOL)a9 targetedItemID:(id)a10;
- (id)callbackHandler;
@end

@implementation UpdatesContext

- (BOOL)isBackgroundRequest
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  if (v2 >= 0xA)
  {
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    v5 = self;
    LOBYTE(v3) = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    return (0x2D6u >> v2) & 1;
  }

  return v3;
}

- (BOOL)shouldPerformUpdates
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  if (v2 >= 0xA)
  {
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    v5 = self;
    LOBYTE(v3) = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    return (0x242u >> v2) & 1;
  }

  return v3;
}

- (NSNumber)bridgedTargetedItemID
{
  if (self->callbackHandler[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID])
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithLongLong:*(&self->super.isa + OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID)];
  }

  return v3;
}

- (_TtC9appstored14UpdatesContext)initWithReason:(int64_t)a3 requestToken:(id)a4 logKey:(id)a5 callbackHandler:(id)a6 includeMetrics:(BOOL)a7 isVPPLookup:(BOOL)a8 userInitiated:(BOOL)a9 targetedItemID:(id)a10
{
  v13 = _Block_copy(a6);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_1001715CC;
  }

  else
  {
    v14 = 0;
  }

  v15 = a4;
  v16 = a5;
  v17 = a10;
  v18 = sub_1001713A0(a3, a4, a5, v13, v14, a7, a8, a9, a10);

  sub_100006F8C(v13);
  return v18;
}

- (id)callbackHandler
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler);
  if (v2)
  {
    v3 = *&self->callbackHandler[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v6[4] = sub_100171334;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100170F30;
    v6[3] = &unk_1005105F0;
    v2 = _Block_copy(v6);
  }

  return v2;
}

- (NSString)humanReadableReason
{
  v2 = self;
  sub_1001704BC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end