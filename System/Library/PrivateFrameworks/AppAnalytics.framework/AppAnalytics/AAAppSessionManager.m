@interface AAAppSessionManager
- (AAAppSessionManager)initWithTrackingConsent:(id)a3;
- (AAAppSessionManager)initWithTrackingConsent:(id)a3 userDataConfiguration:(id)a4;
- (id)createSessionManager;
- (id)userEventsID;
- (void)appSessionDidTerminate;
- (void)endAppSession:(id)a3;
- (void)startAppSession;
- (void)startAppSessionWithShouldCorrelateSceneSessions:(BOOL)a3;
@end

@implementation AAAppSessionManager

- (AAAppSessionManager)initWithTrackingConsent:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for SummaryEventConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EDBCAC70;
  v11 = a3;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1EDBCA728);
  sub_1B6980548(v12, v9, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1EDBCADE8;

  v14 = sub_1B6A9968C(v11, v13, v9);

  *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager) = v14;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v15 = [(AAAppSessionManager *)&v18 init];

  return v15;
}

- (AAAppSessionManager)initWithTrackingConsent:(id)a3 userDataConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1B6A99B38(v5, v6);

  return v7;
}

- (id)createSessionManager
{
  v3 = type metadata accessor for SessionManagerConfiguration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v8 = self;
  sub_1B6A97CCC(v6);
  v9 = AppSessionManager.createSessionManager(with:)(v6);
  sub_1B6A9A254(v6, type metadata accessor for SessionManagerConfiguration);
  v10 = objc_allocWithZone(type metadata accessor for BridgedSessionManager());
  v11 = sub_1B6AA700C(v9);

  return v11;
}

- (void)startAppSession
{
  v3 = *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = v3;
  v7 = self;

  sub_1B69877A4(v5, sub_1B6A90A48, v6);
}

- (void)startAppSessionWithShouldCorrelateSceneSessions:(BOOL)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v5;
  v9 = self;

  sub_1B69877A4(v7, sub_1B6A90A48, v8);
}

- (void)endAppSession:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B69D72B0;
  *(v7 + 24) = v5;
  v8 = self;

  AppSessionManager.endAppSession(_:)(sub_1B6A0BE38, v7);
}

- (void)appSessionDidTerminate
{
  v2 = self;
  BridgedAppSessionManager.appSessionDidTerminate()();
}

- (id)userEventsID
{
  sub_1B6A9A194(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  if ((*(&self->super.isa + OBJC_IVAR___AAAppSessionManager_appSessionManager))[5])
  {
    v7 = self;
    sub_1B6A81954(v6);
    v8 = sub_1B6AB8E40();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v6, 0, 1, v8);

    v10 = (*(v9 + 48))(v6, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = sub_1B6AB8DE0();
      (*(v9 + 8))(v6, v8);
      v11 = v12;
    }
  }

  else
  {
    v13 = sub_1B6AB8E40();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v11 = 0;
  }

  return v11;
}

@end