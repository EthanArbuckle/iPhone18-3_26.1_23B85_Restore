@interface Client
- (BOOL)cancelAllAndReturnError:(id *)error;
- (BOOL)cancelWithOwnerIDWithParameters:(id)parameters error:(id *)error;
- (BOOL)cancelWithParameters:(id)parameters error:(id *)error;
- (BOOL)countdownWithOwnerIDWithParameters:(id)parameters error:(id *)error;
- (BOOL)countdownWithParameters:(id)parameters error:(id *)error;
- (BOOL)executeIntentWithOwnerIDWithParameters:(id)parameters error:(id *)error;
- (BOOL)pauseWithOwnerIDWithParameters:(id)parameters error:(id *)error;
- (BOOL)pauseWithParameters:(id)parameters error:(id *)error;
- (BOOL)removeWithParameters:(id)parameters error:(id *)error;
- (BOOL)resumeWithOwnerIDWithParameters:(id)parameters error:(id *)error;
- (BOOL)resumeWithParameters:(id)parameters error:(id *)error;
- (BOOL)setStateWithParameters:(id)parameters error:(id *)error;
- (BOOL)stopWithOwnerIDWithParameters:(id)parameters error:(id *)error;
- (BOOL)stopWithParameters:(id)parameters error:(id *)error;
- (BOOL)unsubscribeFromAlarmUpdatesAndReturnError:(id *)error;
- (BOOL)unsubscribeFromAuthorizationUpdatesAndReturnError:(id *)error;
- (NSString)description;
- (_TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client)init;
- (_TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client)init;
- (id)allAlarmsAndReturnError:(id *)error;
- (id)stateWithParameters:(id)parameters error:(id *)error;
- (id)subscribeToAuthorizationUpdatesAndReturnError:(id *)error;
- (id)supportsAlarmKitWithParameters:(id)parameters error:(id *)error;
- (void)requestWithCompletion:(id)completion;
- (void)scheduleWithParameters:(id)parameters completion:(id)completion;
@end

@implementation Client

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_22D7134E0(&v6);
  os_unfair_lock_unlock(v2 + 4);

  v4 = sub_22D72E480();

  return v4;
}

- (_TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scheduleWithParameters:(id)parameters completion:(id)completion
{
  v6 = sub_22D72E020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_22D70D554(&qword_27D9FF980, MEMORY[0x277CB9A78]);
  sub_22D72E210();
  _Block_copy(v11);
  selfCopy = self;
  sub_22D70CEC0(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)countdownWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D7064A4();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)stopWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D70698C();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)cancelWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D706E74();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)cancelAllAndReturnError:(id *)error
{
  selfCopy = self;
  sub_22D70735C();

  return 1;
}

- (BOOL)pauseWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D707690();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)resumeWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D707B78();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)allAlarmsAndReturnError:(id *)error
{
  v4 = sub_22D72E000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_22D708310();

  sub_22D70D554(&qword_27D9FF970, MEMORY[0x277CB9A68]);
  v10 = sub_22D72E220();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)countdownWithOwnerIDWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D708760(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)stopWithOwnerIDWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D708C88(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)cancelWithOwnerIDWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D7091B0(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)pauseWithOwnerIDWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D7096D8(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)resumeWithOwnerIDWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D709C00(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)executeIntentWithOwnerIDWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E060();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF960, MEMORY[0x277CB9A88]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D70A128(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)unsubscribeFromAlarmUpdatesAndReturnError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_22D6F4510(v5);
  os_unfair_lock_unlock(v3 + 4);

  return 1;
}

- (_TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stateWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E2F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22D72E2A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22D7135D8(&qword_27D9FFAA0, MEMORY[0x277CB9B48]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D70F590(v14);
  (*(v6 + 8))(v9, v5);

  sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
  v16 = sub_22D72E220();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (void)requestWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_22D713090(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)removeWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E2F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D7135D8(&qword_27D9FFAA0, MEMORY[0x277CB9B48]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D710150();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)setStateWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E2D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D7135D8(&qword_27D9FFAB0, MEMORY[0x277CB9B38]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D7105E0(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)supportsAlarmKitWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_22D72E2F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22D72E280();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22D7135D8(&qword_27D9FFAA0, MEMORY[0x277CB9B48]);
  sub_22D72E210();
  selfCopy = self;
  sub_22D710B08(v14);
  (*(v6 + 8))(v9, v5);

  sub_22D7135D8(&qword_27D9FFAA8, MEMORY[0x277CB9B18]);
  v16 = sub_22D72E220();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)subscribeToAuthorizationUpdatesAndReturnError:(id *)error
{
  v4 = sub_22D72E2A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_22D711054(v8);

  sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
  v10 = sub_22D72E220();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)unsubscribeFromAuthorizationUpdatesAndReturnError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_22D6F4510(v5);
  os_unfair_lock_unlock(v3 + 4);

  return 1;
}

@end