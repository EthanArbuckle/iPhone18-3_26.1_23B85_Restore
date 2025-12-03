@interface AASessionManager
- (AASessionManager)initWithAccessQueue:(id)queue privacyValidationProvider:(id)provider diagnosticsConsentProvider:(id)consentProvider;
- (AASessionManager)initWithPrivacyValidationProvider:(id)provider diagnosticsConsentProvider:(id)consentProvider;
- (void)endSession;
- (void)endSessionWithCompletion:(id)completion;
- (void)endSessionWithEndDate:(id)date completion:(id)completion;
- (void)endSync;
- (void)flushWithCallbackQueue:(id)queue completion:(id)completion;
- (void)pushSessionData:(id)data;
- (void)pushSessionData:(id)data submitEventQueues:(BOOL)queues;
- (void)pushSessionData:(id)data traits:(id)traits;
- (void)startSessionForKind:(int64_t)kind withName:(id)name;
- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier;
- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier startDate:(id)date;
- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier startDate:(id)date timestampJitter:(id)jitter;
- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier startDate:(id)date timestampJitter:(id)jitter timeDurationGranularity:(int64_t)granularity;
- (void)startSessionForKind:(int64_t)kind withName:(id)name startDate:(id)date;
- (void)transaction:(id)transaction;
@end

@implementation AASessionManager

- (AASessionManager)initWithAccessQueue:(id)queue privacyValidationProvider:(id)provider diagnosticsConsentProvider:(id)consentProvider
{
  queueCopy = queue;
  providerCopy = provider;
  consentProviderCopy = consentProvider;
  v10 = sub_1B6AA8300(queueCopy, providerCopy, consentProviderCopy);

  return v10;
}

- (AASessionManager)initWithPrivacyValidationProvider:(id)provider diagnosticsConsentProvider:(id)consentProvider
{
  providerCopy = provider;
  consentProviderCopy = consentProvider;
  v7 = sub_1B6AA92C0(providerCopy, consentProviderCopy);

  return v7;
}

- (void)pushSessionData:(id)data
{
  v5 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  dataCopy = data;
  selfCopy = self;
  v7 = [v5 init];
  [(AASessionManager *)selfCopy pushSessionData:dataCopy traits:v7];
}

- (void)pushSessionData:(id)data traits:(id)traits
{
  dataCopy = data;
  traitsCopy = traits;
  selfCopy = self;
  BridgedSessionManager.push(_:traits:)(dataCopy);
}

- (void)pushSessionData:(id)data submitEventQueues:(BOOL)queues
{
  v6 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  dataCopy = data;
  selfCopy = self;
  v8 = [v6 init];
  [(AASessionManager *)selfCopy pushSessionData:dataCopy traits:v8];
}

- (void)transaction:(id)transaction
{
  v4 = _Block_copy(transaction);
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
  selfCopy = self;

  sub_1B69877A4(v9, sub_1B6AA9B5C, v10);
}

- (void)startSessionForKind:(int64_t)kind withName:(id)name
{
  if (name)
  {
    v6 = sub_1B6AB92E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  BridgedSessionManager.start(for:name:)(kind, v6, v8);
}

- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier
{
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (name)
  {
    sub_1B6AB92E0();
    identifierCopy = identifier;
    selfCopy = self;
    v16 = sub_1B6AB92B0();
  }

  else
  {
    identifierCopy2 = identifier;
    selfCopy2 = self;
    v16 = 0;
  }

  sub_1B6AB8DA0();
  v19 = sub_1B6AB8D20();
  (*(v10 + 8))(v13, v9);
  [(AASessionManager *)self startSessionForKind:kind withName:v16 identifier:identifier startDate:v19];
}

- (void)startSessionForKind:(int64_t)kind withName:(id)name startDate:(id)date
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (name)
  {
    v13 = sub_1B6AB92E0();
    name = v14;
  }

  else
  {
    v13 = 0;
  }

  sub_1B6AB8D80();
  selfCopy = self;
  BridgedSessionManager.start(for:name:startDate:)(kind, v13, name);

  (*(v9 + 8))(v12, v8);
}

- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier startDate:(id)date
{
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (name)
  {
    sub_1B6AB92E0();
    v16 = v15;
    sub_1B6AB8D80();
    if (v16)
    {
      identifierCopy = identifier;
      selfCopy = self;
      v19 = sub_1B6AB92B0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6AB8D80();
  }

  identifierCopy2 = identifier;
  selfCopy2 = self;
  v19 = 0;
LABEL_6:
  v22 = sub_1B6AB8D20();
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  [(AASessionManager *)self startSessionForKind:kind withName:v19 identifier:identifier startDate:v22 timestampJitter:qword_1EDBC8A38];

  (*(v11 + 8))(v14, v10);
}

- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier startDate:(id)date timestampJitter:(id)jitter
{
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!name)
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
    identifierCopy = identifier;
    jitterCopy = jitter;
    selfCopy = self;
    v22 = 0;
    goto LABEL_6;
  }

  identifierCopy2 = identifier;
  jitterCopy2 = jitter;
  selfCopy2 = self;
  v22 = sub_1B6AB92B0();
LABEL_6:
  v26 = sub_1B6AB8D20();
  [(AASessionManager *)self startSessionForKind:kind withName:v22 identifier:identifier startDate:v26 timestampJitter:jitter timeDurationGranularity:0];

  (*(v13 + 8))(v16, v12);
}

- (void)startSessionForKind:(int64_t)kind withName:(id)name identifier:(id)identifier startDate:(id)date timestampJitter:(id)jitter timeDurationGranularity:(int64_t)granularity
{
  kindCopy = kind;
  granularityCopy = granularity;
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &kindCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (name)
  {
    v16 = sub_1B6AB92E0();
    name = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_1B6AB92E0();
  v20 = v19;
  sub_1B6AB8D80();
  jitterCopy = jitter;
  selfCopy = self;
  BridgedSessionManager.start(for:name:identifier:startDate:timestampJitter:timeDurationGranularity:)(kindCopy, v16, name, v18, v20, v15, jitterCopy, granularityCopy);

  (*(v12 + 8))(v15, v11);
}

- (void)endSession
{
  selfCopy = self;
  BridgedSessionManager.end()();
}

- (void)endSync
{
  v2 = *(&self->super.isa + OBJC_IVAR___AASessionManager_sessionManager);
  selfCopy = self;
  SessionManager.endSync(timeout:)(4.0);
}

- (void)endSessionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  BridgedSessionManager.end(completion:)(sub_1B6AA9B54, v5);
}

- (void)endSessionWithEndDate:(id)date completion:(id)completion
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = _Block_copy(completion);
  sub_1B6AB8D80();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *(&self->super.isa + OBJC_IVAR___AASessionManager_sessionManager);
  v16 = *(v15 + 48);
  selfCopy = self;
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

- (void)flushWithCallbackQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  queueCopy = queue;
  selfCopy = self;
  BridgedSessionManager.flush(callbackQueue:completion:)(queueCopy, v6, v7);
  sub_1B69A3100(v6);
}

@end