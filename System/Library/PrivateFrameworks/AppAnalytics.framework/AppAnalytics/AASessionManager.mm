@interface AASessionManager
- (AASessionManager)initWithAccessQueue:(id)a3 privacyValidationProvider:(id)a4 diagnosticsConsentProvider:(id)a5;
- (AASessionManager)initWithPrivacyValidationProvider:(id)a3 diagnosticsConsentProvider:(id)a4;
- (void)endSession;
- (void)endSessionWithCompletion:(id)a3;
- (void)endSessionWithEndDate:(id)a3 completion:(id)a4;
- (void)endSync;
- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4;
- (void)pushSessionData:(id)a3;
- (void)pushSessionData:(id)a3 submitEventQueues:(BOOL)a4;
- (void)pushSessionData:(id)a3 traits:(id)a4;
- (void)startSessionForKind:(int64_t)a3 withName:(id)a4;
- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5;
- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5 startDate:(id)a6;
- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5 startDate:(id)a6 timestampJitter:(id)a7;
- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5 startDate:(id)a6 timestampJitter:(id)a7 timeDurationGranularity:(int64_t)a8;
- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 startDate:(id)a5;
- (void)transaction:(id)a3;
@end

@implementation AASessionManager

- (AASessionManager)initWithAccessQueue:(id)a3 privacyValidationProvider:(id)a4 diagnosticsConsentProvider:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1B6AA8300(v7, v8, v9);

  return v10;
}

- (AASessionManager)initWithPrivacyValidationProvider:(id)a3 diagnosticsConsentProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1B6AA92C0(v5, v6);

  return v7;
}

- (void)pushSessionData:(id)a3
{
  v5 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  v6 = a3;
  v8 = self;
  v7 = [v5 init];
  [(AASessionManager *)v8 pushSessionData:v6 traits:v7];
}

- (void)pushSessionData:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  BridgedSessionManager.push(_:traits:)(v6);
}

- (void)pushSessionData:(id)a3 submitEventQueues:(BOOL)a4
{
  v6 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  v7 = a3;
  v9 = self;
  v8 = [v6 init];
  [(AASessionManager *)v9 pushSessionData:v7 traits:v8];
}

- (void)transaction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___AASessionManager_sessionManager);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B6A3FBB8;
  *(v7 + 24) = v5;
  v9 = *(v6 + 48);
  v8 = *(v6 + 56);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = sub_1B6AA9B58;
  v10[4] = v7;
  v11 = self;

  sub_1B69877A4(v9, sub_1B6AA9B5C, v10);
}

- (void)startSessionForKind:(int64_t)a3 withName:(id)a4
{
  if (a4)
  {
    v6 = sub_1B6AB92E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  BridgedSessionManager.start(for:name:)(a3, v6, v8);
}

- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5
{
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_1B6AB92E0();
    v14 = a5;
    v15 = self;
    v16 = sub_1B6AB92B0();
  }

  else
  {
    v17 = a5;
    v18 = self;
    v16 = 0;
  }

  sub_1B6AB8DA0();
  v19 = sub_1B6AB8D20();
  (*(v10 + 8))(v13, v9);
  [(AASessionManager *)self startSessionForKind:a3 withName:v16 identifier:a5 startDate:v19];
}

- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 startDate:(id)a5
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v13 = sub_1B6AB92E0();
    a4 = v14;
  }

  else
  {
    v13 = 0;
  }

  sub_1B6AB8D80();
  v15 = self;
  BridgedSessionManager.start(for:name:startDate:)(a3, v13, a4);

  (*(v9 + 8))(v12, v8);
}

- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5 startDate:(id)a6
{
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_1B6AB92E0();
    v16 = v15;
    sub_1B6AB8D80();
    if (v16)
    {
      v17 = a5;
      v18 = self;
      v19 = sub_1B6AB92B0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6AB8D80();
  }

  v20 = a5;
  v21 = self;
  v19 = 0;
LABEL_6:
  v22 = sub_1B6AB8D20();
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  [(AASessionManager *)self startSessionForKind:a3 withName:v19 identifier:a5 startDate:v22 timestampJitter:qword_1EDBC8A38];

  (*(v11 + 8))(v14, v10);
}

- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5 startDate:(id)a6 timestampJitter:(id)a7
{
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    sub_1B6AB8D80();
    goto LABEL_5;
  }

  sub_1B6AB92E0();
  v18 = v17;
  sub_1B6AB8D80();
  if (!v18)
  {
LABEL_5:
    v23 = a5;
    v24 = a7;
    v25 = self;
    v22 = 0;
    goto LABEL_6;
  }

  v19 = a5;
  v20 = a7;
  v21 = self;
  v22 = sub_1B6AB92B0();
LABEL_6:
  v26 = sub_1B6AB8D20();
  [(AASessionManager *)self startSessionForKind:a3 withName:v22 identifier:a5 startDate:v26 timestampJitter:a7 timeDurationGranularity:0];

  (*(v13 + 8))(v16, v12);
}

- (void)startSessionForKind:(int64_t)a3 withName:(id)a4 identifier:(id)a5 startDate:(id)a6 timestampJitter:(id)a7 timeDurationGranularity:(int64_t)a8
{
  v23 = a3;
  v24 = a8;
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v16 = sub_1B6AB92E0();
    a4 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_1B6AB92E0();
  v20 = v19;
  sub_1B6AB8D80();
  v21 = a7;
  v22 = self;
  BridgedSessionManager.start(for:name:identifier:startDate:timestampJitter:timeDurationGranularity:)(v23, v16, a4, v18, v20, v15, v21, v24);

  (*(v12 + 8))(v15, v11);
}

- (void)endSession
{
  v2 = self;
  BridgedSessionManager.end()();
}

- (void)endSync
{
  v2 = *(&self->super.isa + OBJC_IVAR___AASessionManager_sessionManager);
  v3 = self;
  SessionManager.endSync(timeout:)(4.0);
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  BridgedSessionManager.end(completion:)(sub_1B6AA9B54, v5);
}

- (void)endSessionWithEndDate:(id)a3 completion:(id)a4
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = _Block_copy(a4);
  sub_1B6AB8D80();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *(&self->super.isa + OBJC_IVAR___AASessionManager_sessionManager);
  v16 = *(v15 + 48);
  v23 = self;
  sub_1B6A2ACC8();
  v17 = *(v15 + 48);
  v22 = *(v15 + 56);
  (*(v7 + 16))(v10, v12, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  (*(v7 + 32))(v20 + v18, v10, v6);
  v21 = (v20 + v19);
  *v21 = sub_1B6AA9B54;
  v21[1] = v14;

  sub_1B69877A4(v17, sub_1B6AA9B4C, v20);

  (*(v7 + 8))(v12, v6);
}

- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B69D72B0;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  BridgedSessionManager.flush(callbackQueue:completion:)(v8, v6, v7);
  sub_1B69A3100(v6);
}

@end