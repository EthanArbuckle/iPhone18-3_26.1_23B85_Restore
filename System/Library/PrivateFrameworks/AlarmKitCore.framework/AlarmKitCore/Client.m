@interface Client
- (BOOL)cancelAllAndReturnError:(id *)a3;
- (BOOL)cancelWithOwnerIDWithParameters:(id)a3 error:(id *)a4;
- (BOOL)cancelWithParameters:(id)a3 error:(id *)a4;
- (BOOL)countdownWithOwnerIDWithParameters:(id)a3 error:(id *)a4;
- (BOOL)countdownWithParameters:(id)a3 error:(id *)a4;
- (BOOL)executeIntentWithOwnerIDWithParameters:(id)a3 error:(id *)a4;
- (BOOL)pauseWithOwnerIDWithParameters:(id)a3 error:(id *)a4;
- (BOOL)pauseWithParameters:(id)a3 error:(id *)a4;
- (BOOL)removeWithParameters:(id)a3 error:(id *)a4;
- (BOOL)resumeWithOwnerIDWithParameters:(id)a3 error:(id *)a4;
- (BOOL)resumeWithParameters:(id)a3 error:(id *)a4;
- (BOOL)setStateWithParameters:(id)a3 error:(id *)a4;
- (BOOL)stopWithOwnerIDWithParameters:(id)a3 error:(id *)a4;
- (BOOL)stopWithParameters:(id)a3 error:(id *)a4;
- (BOOL)unsubscribeFromAlarmUpdatesAndReturnError:(id *)a3;
- (BOOL)unsubscribeFromAuthorizationUpdatesAndReturnError:(id *)a3;
- (NSString)description;
- (_TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client)init;
- (_TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client)init;
- (id)allAlarmsAndReturnError:(id *)a3;
- (id)stateWithParameters:(id)a3 error:(id *)a4;
- (id)subscribeToAuthorizationUpdatesAndReturnError:(id *)a3;
- (id)supportsAlarmKitWithParameters:(id)a3 error:(id *)a4;
- (void)requestWithCompletion:(id)a3;
- (void)scheduleWithParameters:(id)a3 completion:(id)a4;
@end

@implementation Client

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  v3 = self;
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

- (void)scheduleWithParameters:(id)a3 completion:(id)a4
{
  v6 = sub_22D72E020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_22D70D554(&qword_27D9FF980, MEMORY[0x277CB9A78]);
  sub_22D72E210();
  _Block_copy(v11);
  v12 = self;
  sub_22D70CEC0(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)countdownWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  v10 = self;
  sub_22D7064A4();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)stopWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  v10 = self;
  sub_22D70698C();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)cancelWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  v10 = self;
  sub_22D706E74();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)cancelAllAndReturnError:(id *)a3
{
  v3 = self;
  sub_22D70735C();

  return 1;
}

- (BOOL)pauseWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  v10 = self;
  sub_22D707690();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)resumeWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF978, MEMORY[0x277CB9A98]);
  sub_22D72E210();
  v10 = self;
  sub_22D707B78();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)allAlarmsAndReturnError:(id *)a3
{
  v4 = sub_22D72E000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_22D708310();

  sub_22D70D554(&qword_27D9FF970, MEMORY[0x277CB9A68]);
  v10 = sub_22D72E220();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)countdownWithOwnerIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  v10 = self;
  sub_22D708760(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)stopWithOwnerIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  v10 = self;
  sub_22D708C88(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)cancelWithOwnerIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  v10 = self;
  sub_22D7091B0(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)pauseWithOwnerIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  v10 = self;
  sub_22D7096D8(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)resumeWithOwnerIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF968, MEMORY[0x277CB9AA8]);
  sub_22D72E210();
  v10 = self;
  sub_22D709C00(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)executeIntentWithOwnerIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E060();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D70D554(&qword_27D9FF960, MEMORY[0x277CB9A88]);
  sub_22D72E210();
  v10 = self;
  sub_22D70A128(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)unsubscribeFromAlarmUpdatesAndReturnError:(id *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  v4 = self;
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

- (id)stateWithParameters:(id)a3 error:(id *)a4
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
  v15 = self;
  sub_22D70F590(v14);
  (*(v6 + 8))(v9, v5);

  sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
  v16 = sub_22D72E220();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (void)requestWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_22D713090(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)removeWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E2F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D7135D8(&qword_27D9FFAA0, MEMORY[0x277CB9B48]);
  sub_22D72E210();
  v10 = self;
  sub_22D710150();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)setStateWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_22D72E2D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D7135D8(&qword_27D9FFAB0, MEMORY[0x277CB9B38]);
  sub_22D72E210();
  v10 = self;
  sub_22D7105E0(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)supportsAlarmKitWithParameters:(id)a3 error:(id *)a4
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
  v15 = self;
  sub_22D710B08(v14);
  (*(v6 + 8))(v9, v5);

  sub_22D7135D8(&qword_27D9FFAA8, MEMORY[0x277CB9B18]);
  v16 = sub_22D72E220();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)subscribeToAuthorizationUpdatesAndReturnError:(id *)a3
{
  v4 = sub_22D72E2A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_22D711054(v8);

  sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28]);
  v10 = sub_22D72E220();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)unsubscribeFromAuthorizationUpdatesAndReturnError:(id *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  v4 = self;
  os_unfair_lock_lock(v3 + 4);
  sub_22D6F4510(v5);
  os_unfair_lock_unlock(v3 + 4);

  return 1;
}

@end