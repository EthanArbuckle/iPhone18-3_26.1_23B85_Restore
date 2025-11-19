@interface InterestSyncProcessor
+ (BOOL)canSyncInterests;
- (BOOL)hasLocalChanges;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
- (id)versionForGetTransaction:(id)a3 key:(id)a4;
- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7;
- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4;
@end

@implementation InterestSyncProcessor

- (BOOL)hasLocalChanges
{
  v3 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  sub_100004428(self + v3, v7);
  v4 = v8;
  v5 = v9;
  sub_1000044A0(v7, v8);
  LOBYTE(v4) = (*(v5 + 16))(v4, v5);
  sub_100004590(v7);
  return v4 & 1;
}

- (id)versionForGetTransaction:(id)a3 key:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_100213A18(v6, v8);
  v12 = v11;

  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = self;
  v13 = sub_100213F38(v8, v10, a5);
  v15 = v14;

  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1001F6D60(v13, v15);
    v16 = isa;
  }

  return v16;
}

- (void)successfulGetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  if (a4)
  {
    v16 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (a6)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v11)
    {
LABEL_6:
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = sub_100202D10;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_9:
  sub_1002152E4(a4, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(a4, v18);
}

- (void)successfulSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  if (a4)
  {
    v16 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (a6)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v11)
    {
LABEL_6:
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = sub_100202D10;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_9:
  sub_1002154C8(v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(a4, v18);
}

- (void)conflictForSetTransaction:(id)a3 withData:(id)a4 forKey:(id)a5 version:(id)a6 finishedBlock:(id)a7
{
  v11 = _Block_copy(a7);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = self;
  if (a4)
  {
    v16 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (a6)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v11)
    {
LABEL_6:
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = sub_100202CB8;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_9:
  sub_1002156A8(a4, v18, v19, v21, v22, v24, v26, v25);
  sub_1000112B4(v26);

  sub_1001F6D60(a4, v18);
}

- (void)transaction:(id)a3 didProcessResponseWithDomainVersion:(id)a4
{
  if (a4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  v9 = *(v8 + 3);
  v10 = *(v8 + 4);
  sub_100010C38(v8, v9);
  v11 = *(v10 + 96);
  v12 = self;
  v11(v5, v7, v9, v10);
  swift_endAccess();
}

+ (BOOL)canSyncInterests
{
  v2 = objc_opt_self();
  if ([v2 isRunningOnHomepod])
  {
    return 0;
  }

  else
  {
    return [v2 isRunningOnTV] ^ 1;
  }
}

@end