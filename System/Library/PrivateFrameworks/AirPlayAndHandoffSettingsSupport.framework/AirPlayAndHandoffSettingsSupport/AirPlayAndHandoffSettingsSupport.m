void AirPlayAndHandoffSettingsState.automaticallyAirPlayMode.getter(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  sub_23E868CEC(a1);
}

void sub_23E868A54(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  type metadata accessor for AirPlayAndHandoffSettingsState();
  sub_23E868CEC(&v4);
  *a2 = v4;
}

uint64_t sub_23E868B0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t type metadata accessor for AirPlayAndHandoffSettingsState()
{
  result = qword_27E35D4B0;
  if (!qword_27E35D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AirPlayAndHandoffSettingsState.automaticallyAirPlayMode.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void sub_23E868CEC(char *a1@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v2 = sub_23E87585C();
  v3 = sub_23E87585C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  v12 = 0;
  v7 = sub_23E87585C();
  v8 = sub_23E87585C();
  v9 = CFPreferencesGetAppBooleanValue(v7, v8, &v12);

  if (v9)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      if (v12)
      {
        v10 = 1;
        goto LABEL_15;
      }

LABEL_9:
      v10 = 2;
LABEL_15:
      *a1 = v10;
      v11 = *MEMORY[0x277D85DE8];
      return;
    }

    if (v12)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  sub_23E875A6C();
  __break(1u);
}

void sub_23E868E94()
{
  v0 = sub_23E87585C();
  v1 = sub_23E87591C();
  v2 = sub_23E87585C();
  CFPreferencesSetAppValue(v0, v1, v2);

  v3 = sub_23E87585C();
  v4 = sub_23E87591C();
  v5 = sub_23E87585C();
  CFPreferencesSetAppValue(v3, v4, v5);
}

void (*AirPlayAndHandoffSettingsState.automaticallyAirPlayMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  sub_23E868CEC((v4 + 32));
  return sub_23E8690B0;
}

void sub_23E8690B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

uint64_t AirPlayAndHandoffSettingsState.transferToHomePodEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled);
}

uint64_t sub_23E869220@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *a2 = *(v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled);
  return result;
}

unsigned __int8 *sub_23E8692D0(unsigned __int8 *result, void *a2)
{
  if (*result != *(*a2 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  return result;
}

uint64_t AirPlayAndHandoffSettingsState.transferToHomePodEnabled.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled) != (result & 1))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  return result;
}

void sub_23E8694F4(uint64_t a1, int a2)
{
  *(a1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled) = a2;
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v3 = qword_27E35D3D8;
  if (!qword_27E35D3D8)
  {
    v11 = 0u;
    v12 = 0u;
    sub_23E874E78(&v11, &qword_27E35D410, &qword_23E876198);
    return;
  }

  v4 = sub_23E87585C();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_23E8759EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  sub_23E874E78(&v11, &qword_27E35D410, &qword_23E876198);
  v6 = sub_23E87585C();
  v7 = [v3 BOOLForKey_];

  if (*(&v10 + 1))
  {
    if (((v7 ^ a2) & 1) == 0)
    {
      return;
    }
  }

  else if (a2)
  {
    return;
  }

  v8 = sub_23E87585C();
  [v3 setBool:a2 & 1 forKey:v8];
}

void (*AirPlayAndHandoffSettingsState.transferToHomePodEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v5 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled;
  *(v4 + 32) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled;
  *(v4 + 40) = *(v1 + v5);
  return sub_23E8697D0;
}

void sub_23E8697D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 40);
  v5 = v4 ^ *(v3 + *(*a1 + 32));
  if (a2)
  {
    if ((v4 ^ *(v3 + *(*a1 + 32))))
    {
      goto LABEL_5;
    }
  }

  else if ((v4 ^ *(v3 + *(*a1 + 32))))
  {
LABEL_5:
    v7 = v2[2];
    v6 = v2[3];
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *v2 = v3;
    sub_23E8756BC();
  }

  free(v2);
}

id AirPlayAndHandoffSettingsState.audioRoutingEnabled.getter()
{
  swift_getKeyPath();
  *&v15 = v0;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v2 = result;
    v3 = [result attributeForKey_];

    if (v3)
    {
      sub_23E8759EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      sub_23E8748A0(0, &qword_27E35D418, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v4 = [v12 BOOLValue];

        return v4;
      }
    }

    else
    {
      sub_23E874E78(&v15, &qword_27E35D410, &qword_23E876198);
    }

    v5 = [objc_opt_self() standardUserDefaults];
    v6 = sub_23E87585C();
    v7 = [v5 valueForKey_];

    if (v7)
    {
      sub_23E8759EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
      sub_23E874E78(&v15, &qword_27E35D410, &qword_23E876198);
    }

    if (qword_27E35D3E8 != -1)
    {
      swift_once();
    }

    v8 = sub_23E8757EC();
    __swift_project_value_buffer(v8, qword_27E35DF00);
    v9 = sub_23E8757CC();
    v10 = sub_23E87598C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23E867000, v9, v10, "Key does not exist!", v11, 2u);
      MEMORY[0x23EF17140](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23E869C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AirPlayAndHandoffSettingsState.audioRoutingEnabled.getter();
  *a2 = result & 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_23E869D08(char a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 sharedAVSystemController];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = *MEMORY[0x277D26C98];
  v6 = [v3 attributeForKey_];

  if (!v6)
  {
    memset(v25, 0, sizeof(v25));
    sub_23E874E78(v25, &qword_27E35D410, &qword_23E876198);
    if (qword_27E35D3E8 != -1)
    {
      swift_once();
    }

    v12 = sub_23E8757EC();
    __swift_project_value_buffer(v12, qword_27E35DF00);
    v13 = sub_23E8757CC();
    v14 = sub_23E87598C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23E867000, v13, v14, "Key does not exist", v15, 2u);
      MEMORY[0x23EF17140](v15, -1, -1);
    }

    v16 = [objc_opt_self() standardUserDefaults];
    v17 = sub_23E87585C();
    [v16 setBool:a1 & 1 forKey:v17];

    goto LABEL_16;
  }

  sub_23E8759EC();
  swift_unknownObjectRelease();
  sub_23E874E78(v25, &qword_27E35D410, &qword_23E876198);
  v7 = [v2 sharedAVSystemController];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23E87591C();
    *&v25[0] = 0;
    v10 = [v8 setAttribute:v9 forKey:v5 error:v25];

    if (v10)
    {
      v11 = *&v25[0];
    }

    else
    {
      v18 = *&v25[0];
      v19 = sub_23E87548C();

      swift_willThrow();
      if (qword_27E35D3E8 != -1)
      {
        swift_once();
      }

      v20 = sub_23E8757EC();
      __swift_project_value_buffer(v20, qword_27E35DF00);
      v21 = sub_23E8757CC();
      v22 = sub_23E87598C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_23E867000, v21, v22, "Could not set attribute", v23, 2u);
        MEMORY[0x23EF17140](v23, -1, -1);
      }
    }

LABEL_16:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

uint64_t (*AirPlayAndHandoffSettingsState.audioRoutingEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = AirPlayAndHandoffSettingsState.audioRoutingEnabled.getter() & 1;
  return sub_23E86A0D8;
}

uint64_t sub_23E86A0D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  *a1 = v2;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

id AirPlayAndHandoffSettingsState.handoffEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isActivityContinuationAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23E86A2B0(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isActivityContinuationAllowed];

    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t AirPlayAndHandoffSettingsState.handoffEnabled.setter(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (swift_getKeyPath(), sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState), sub_23E8756CC(), , v3 = [objc_opt_self() sharedPreferences], v4 = objc_msgSend(v3, sel_enabled), v3, !v4))
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  else
  {
    v5 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showTurnOffHandoffAlert;
    result = swift_beginAccess();
    if (*(v2 + v5) == 1)
    {
      *(v2 + v5) = 1;
    }

    else
    {
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      sub_23E8756BC();
    }
  }

  return result;
}

id AirPlayAndHandoffSettingsState.linkKeyboardAndMouseEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 enabled];

  return v1;
}

void sub_23E86A728(char a1)
{
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v3 = v2;
    [v2 setBoolValue:a1 & 1 forSetting:*MEMORY[0x277D25CD8]];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*AirPlayAndHandoffSettingsState.handoffEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isActivityContinuationAllowed];

    *(a1 + 16) = v5;
    return sub_23E86A89C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AirPlayAndHandoffSettingsState.userDidTapDontAllowHandoff()()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void sub_23E86A984()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    [v0 setBoolValue:0 forSetting:*MEMORY[0x277D25CD8]];
  }

  else
  {
    __break(1u);
  }
}

void (*AirPlayAndHandoffSettingsState.showTurnOffHandoffAlert.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86AB8C;
}

uint64_t AirPlayAndHandoffSettingsState.onenessDevices.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_23E86AC58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23E86AD20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return AirPlayAndHandoffSettingsState.onenessDevices.setter(v4);
}

uint64_t AirPlayAndHandoffSettingsState.onenessDevices.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_23E873768(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

uint64_t sub_23E86AE9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*AirPlayAndHandoffSettingsState.onenessDevices.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86B054;
}

uint64_t sub_23E86B060()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);
}

uint64_t sub_23E86B10C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *a2 = *(v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);
}

uint64_t sub_23E86B1C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23E86B1EC(v4);
}

uint64_t sub_23E86B1EC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

void sub_23E86B328(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = [objc_opt_self() sharedPreferences];
  v5 = [v4 enabled];

  *a2 = v5;
}

void sub_23E86B444(char a1)
{
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setEnabled_];
}

void (*AirPlayAndHandoffSettingsState.linkKeyboardAndMouseEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 enabled];

  *(v4 + 32) = v6;
  return sub_23E86B5D4;
}

void sub_23E86B5D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

uint64_t AirPlayAndHandoffSettingsState.continuityCameraEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return FigContinuityCaptureGetUserPreferenceDisabled() ^ 1;
}

uint64_t sub_23E86B73C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = FigContinuityCaptureGetUserPreferenceDisabled();
  *a2 = result ^ 1;
  return result;
}

void (*AirPlayAndHandoffSettingsState.continuityCameraEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *(v4 + 32) = FigContinuityCaptureGetUserPreferenceDisabled() ^ 1;
  return sub_23E86B920;
}

void sub_23E86B920(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

id sub_23E86B9E8()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);

  return v1;
}

id sub_23E86BAA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = *(v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);
  *a2 = v4;

  return v4;
}

void sub_23E86BB8C(void *a1)
{
  v3 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture;
  v4 = *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);
  sub_23E87588C();
  v5 = sub_23E87585C();

  sub_23E87588C();
  v6 = sub_23E87585C();

  v7 = sub_23E87588C();
  v9 = v8;
  if (v7 == sub_23E87588C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_23E875A9C();

    if ((v12 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
      sub_23E8756BC();

      return;
    }
  }

  v14 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AirPlayAndHandoffSettingsState.isContinuityCameraSupported.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);
  return AVGestaltGetBoolAnswer();
}

id AirPlayAndHandoffSettingsState.airPlayReceiverEnabled.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return [objc_opt_self() listeningForAlternateBonjourBrowsing];
}

id sub_23E86BED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() listeningForAlternateBonjourBrowsing];
  *a2 = result;
  return result;
}

uint64_t sub_23E86BFB4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t sub_23E86C090()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void (*AirPlayAndHandoffSettingsState.airPlayReceiverEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *(v4 + 32) = [objc_opt_self() listeningForAlternateBonjourBrowsing];
  return sub_23E86C250;
}

void sub_23E86C250(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[2];
  v3 = v1[3];
  *v1 = v1[1];
  sub_23E8756BC();

  free(v1);
}

id AirPlayAndHandoffSettingsState.accessMode.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  return [objc_opt_self() getAdvertisingAccessMode];
}

id sub_23E86C3C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = [objc_opt_self() getAdvertisingAccessMode];
  *a2 = result;
  return result;
}

uint64_t sub_23E86C484(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D438, &qword_23E8762E0);
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

uint64_t AirPlayAndHandoffSettingsState.accessMode.setter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D438, &qword_23E8762E0);
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();
}

void sub_23E86C640(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v3 = [objc_opt_self() setAdvertisingAccessMode:a1 withError:v9];
  v4 = v3;
  if (v3)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_23E87548C();

    swift_willThrow();
  }

  *a2 = v4 ^ 1;
  v8 = *MEMORY[0x277D85DE8];
}

void (*AirPlayAndHandoffSettingsState.accessMode.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  v4[1] = v1;
  v4[4] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = [objc_opt_self() getAdvertisingAccessMode];
  return sub_23E86C820;
}

void sub_23E86C820(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  swift_getKeyPath();
  v3 = v1[3];
  v4 = v1[4];
  v1[1] = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D438, &qword_23E8762E0);
  sub_23E8756BC();

  free(v1);
}

uint64_t AirPlayAndHandoffSettingsState.airPlayPassword.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = sub_23E873BC4();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23E86C9B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  result = sub_23E873BC4();
  if (v5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v5)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_23E86CA6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);

  sub_23E8756BC();

  return notify_post("com.apple.airplay.prefsChanged");
}

uint64_t AirPlayAndHandoffSettingsState.airPlayPassword.setter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();

  return notify_post("com.apple.airplay.prefsChanged");
}

void sub_23E86CC40(uint64_t a1, unint64_t a2)
{
  v5 = sub_23E8758AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v17 = sub_23E87585C();
    v18 = a1;
    v19 = a2;
    sub_23E87589C();
    sub_23E874ED8();
    sub_23E8759DC();
    v20 = v2;
    v11 = *(v6 + 8);
    v11(v9, v5);
    v18 = a1;
    v19 = a2;
    sub_23E87589C();
    sub_23E8759BC();
    v11(v9, v5);
    v12 = v17;
    APSSettingsSetCString();

    v13 = sub_23E87585C();
    v14 = *MEMORY[0x277CBED10];
    APSSettingsSetValue();

    v15 = sub_23E87585C();
    APSSettingsSetValue();
  }
}

void (*AirPlayAndHandoffSettingsState.airPlayPassword.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  v4[2] = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v5 = sub_23E873BC4();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  *v4 = v7;
  v4[1] = v8;
  return sub_23E86CF68;
}

void sub_23E86CF68(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  v6 = v3[4];
  v3[2] = v3[3];
  v7 = v3[5];
  if (a2)
  {

    sub_23E8756BC();

    notify_post("com.apple.airplay.prefsChanged");
    v8 = v3[1];
  }

  else
  {
    v9 = v3[5];
    sub_23E8756BC();

    notify_post("com.apple.airplay.prefsChanged");
  }

  free(v3);
}

uint64_t AirPlayAndHandoffSettingsState.secureFieldPassword.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v1 = (v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23E86D188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = (v3 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_23E86D254(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return AirPlayAndHandoffSettingsState.secureFieldPassword.setter(v2, v3);
}

uint64_t AirPlayAndHandoffSettingsState.secureFieldPassword.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (v7 = v5[1], (sub_23E875A9C() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

uint64_t sub_23E86D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*AirPlayAndHandoffSettingsState.secureFieldPassword.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86D5B0;
}

void (*AirPlayAndHandoffSettingsState.showPasswordAlert.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86D77C;
}

BOOL AirPlayAndHandoffSettingsState.requirePassword.getter()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0 = sub_23E873BC4();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

BOOL sub_23E86D858@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AirPlayAndHandoffSettingsState.requirePassword.getter();
  *a2 = result;
  return result;
}

uint64_t AirPlayAndHandoffSettingsState.requirePassword.setter(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showPasswordAlert;
    result = swift_beginAccess();
    if (*(v1 + v2) == 1)
    {
      *(v1 + v2) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
      sub_23E8756BC();
    }
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();

    return notify_post("com.apple.airplay.prefsChanged");
  }

  return result;
}

void sub_23E86DAB0()
{
  AirPlayAndHandoffSettingsState.secureFieldPassword.setter(0, 0xE000000000000000);
  v0 = sub_23E87585C();
  APSSettingsRemoveValue();

  v1 = sub_23E87585C();
  v2 = *MEMORY[0x277CBED10];
  APSSettingsSetValue();

  v3 = sub_23E87585C();
  v4 = *MEMORY[0x277CBED28];
  APSSettingsSetValue();
}

uint64_t (*AirPlayAndHandoffSettingsState.requirePassword.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = AirPlayAndHandoffSettingsState.requirePassword.getter();
  return sub_23E86DBBC;
}

Swift::Void __swiftcall AirPlayAndHandoffSettingsState.userDidTapCancelRequirePassword()()
{
  if (!AirPlayAndHandoffSettingsState.requirePassword.getter())
  {

    AirPlayAndHandoffSettingsState.secureFieldPassword.setter(0, 0xE000000000000000);
  }
}

Swift::Void __swiftcall AirPlayAndHandoffSettingsState.userDidOKRequirePassword()()
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756BC();

  notify_post("com.apple.airplay.prefsChanged");
}

uint64_t sub_23E86DCF0(uint64_t a1)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v2 = (a1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  swift_getKeyPath();

  sub_23E8756BC();

  return notify_post("com.apple.airplay.prefsChanged");
}

uint64_t sub_23E86DE5C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_23E86DF24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_23E86E03C(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }

  return result;
}

void (*AirPlayAndHandoffSettingsState.isContinuityRestricted.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23E8756EC();

  swift_beginAccess();
  return sub_23E86E2A0;
}

void sub_23E86E2AC(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_23E8756DC();

  free(v1);
}

id sub_23E86E330()
{
  result = [objc_allocWithZone(type metadata accessor for AirPlayAndHandoffSettingsState()) init];
  qword_27E35D3C8 = result;
  return result;
}

id AirPlayAndHandoffSettingsState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AirPlayAndHandoffSettingsState.shared.getter()
{
  if (qword_27E35D3C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D3C8;

  return v1;
}

void sub_23E86E3F4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23E87585C();
  v2 = [v0 initWithSuiteName_];

  qword_27E35D3D8 = v2;
}

uint64_t static AirPlayAndHandoffSettingsState.sharingUserDefaults.getter()
{
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E35D3D8;
  v1 = qword_27E35D3D8;
  return v0;
}

id AirPlayAndHandoffSettingsState.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D458, &qword_23E8763B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showTurnOffHandoffAlert] = 0;
  *&v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__onenessDevices] = MEMORY[0x277D84F90];
  sub_23E8757BC();
  *&v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager] = sub_23E8757AC();
  v7 = *MEMORY[0x277CE59F0];
  *&v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture] = *MEMORY[0x277CE59F0];
  v8 = v7;
  v9 = sub_23E873BC4();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v10)
  {
    v12 = v10;
  }

  v13 = &v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__secureFieldPassword];
  *v13 = v11;
  v13[1] = v12;
  v0[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__showPasswordAlert] = 0;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v15 = result;
    v16 = [result isBoolSettingLockedDownByRestrictions_];

    v1[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__isContinuityRestricted] = v16;
    sub_23E8756FC();
    v1[OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled] = sub_23E873A1C() & 1;
    v30.receiver = v1;
    v30.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v30, sel_init);
    v18 = sub_23E87595C();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v20 = v17;
    sub_23E86FB08(0, 0, v6, &unk_23E8763C0, v19);

    v21 = objc_opt_self();
    v22 = [v21 defaultCenter];
    v23 = sub_23E87585C();
    [v22 addObserver:v20 selector:sel_transferToHomePodEnabledDidChange name:v23 object:0];

    v24 = [v21 defaultCenter];
    v25 = v20;
    v26 = sub_23E87585C();
    [v24 addObserver:v25 selector:sel_profileNotification_ name:v26 object:0];

    v27 = [v21 defaultCenter];
    v28 = v25;
    v29 = sub_23E87585C();
    [v27 addObserver:v28 selector:sel_profileNotification_ name:v29 object:0];

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23E86E86C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E86E8FC;

  return sub_23E86E9F0();
}

uint64_t sub_23E86E8FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E86E9F0()
{
  v1[7] = v0;
  v2 = sub_23E87573C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D540, &qword_23E8767B8);
  v1[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D548, &qword_23E8767C0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = sub_23E87575C();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D550, &qword_23E8767C8);
  v1[20] = v11;
  v12 = *(v11 - 8);
  v1[21] = v12;
  v13 = *(v12 + 64) + 15;
  v1[22] = swift_task_alloc();
  v14 = sub_23E87578C();
  v1[23] = v14;
  v15 = *(v14 - 8);
  v1[24] = v15;
  v16 = *(v15 + 64) + 15;
  v1[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D558, &qword_23E8767D0);
  v1[26] = v17;
  v18 = *(v17 - 8);
  v1[27] = v18;
  v19 = *(v18 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E86ECDC, 0, 0);
}

uint64_t sub_23E86ECDC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[7];
  swift_getKeyPath();
  v0[2] = v4;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0[30] = *(v4 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D560, &qword_23E8767D8);
  v5 = *(v2 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23E8760E0;

  sub_23E87577C();
  sub_23E87576C();
  v0[3] = v7;
  sub_23E874050(&qword_27E35D568, MEMORY[0x277D4B7F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D570, &qword_23E8767E0);
  sub_23E874DC8(&qword_27E35D578, &qword_27E35D570, &qword_23E8767E0);
  sub_23E8759FC();
  sub_23E8757BC();
  sub_23E874050(&qword_27E35D580, MEMORY[0x277D4B808]);
  v9 = sub_23E87592C();

  return MEMORY[0x2822009F8](sub_23E86EF3C, v9, v8);
}

uint64_t sub_23E86EF3C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  sub_23E87579C();

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23E86EFD8, 0, 0);
}

uint64_t sub_23E86EFD8()
{
  if (qword_27E35D3E8 != -1)
  {
    swift_once();
  }

  v1 = sub_23E8757EC();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_27E35DF00);
  v2 = sub_23E8757CC();
  v3 = sub_23E87598C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23E867000, v2, v3, "Fetching for devices", v4, 2u);
    MEMORY[0x23EF17140](v4, -1, -1);
  }

  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 176);

  (*(v8 + 16))(v6, v5, v7);
  *(v0 + 256) = swift_getOpaqueTypeConformance2();
  sub_23E87596C();
  *(v0 + 272) = *MEMORY[0x277D4B7A0];
  v10 = *(v0 + 256);
  v11 = *(v0 + 208);
  v12 = *(v0 + 160);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(MEMORY[0x277D856D8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 264) = v15;
  *v15 = v0;
  v15[1] = sub_23E86F1E0;
  v16 = *(v0 + 176);
  v17 = *(v0 + 160);

  return MEMORY[0x282200310](v0 + 32, 0, 0, v0 + 40, v17, AssociatedConformanceWitness);
}

uint64_t sub_23E86F1E0()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_23E86F8F4;
  }

  else
  {
    v3 = sub_23E86F2F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E86F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v65 = MEMORY[0x277D84F90];
      v66 = *(v6 + 32);
      v67 = *(v7 + 16);
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
        }

        v12 = *(v6 + 136);
        v13 = *(v12 + 16);
        v12 += 16;
        v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
        v15 = *(v12 + 56);
        v13(*(v6 + 152), v7 + v14 + v15 * v9, *(v6 + 128));
        if ((sub_23E87572C() & 1) == 0)
        {
          goto LABEL_6;
        }

        v68 = v15;
        v69 = v14;
        v16 = *(v6 + 272);
        v17 = *(v6 + 152);
        v19 = *(v6 + 112);
        v18 = *(v6 + 120);
        v20 = *(v6 + 88);
        v21 = *(v6 + 96);
        v22 = *(v6 + 64);
        v23 = *(v6 + 72);
        sub_23E87571C();
        (*(v23 + 104))(v19, v16, v22);
        (*(v23 + 56))(v19, 0, 1, v22);
        v24 = *(v20 + 48);
        sub_23E874E10(v18, v21, &qword_27E35D548, &qword_23E8767C0);
        sub_23E874E10(v19, v21 + v24, &qword_27E35D548, &qword_23E8767C0);
        v25 = *(v23 + 48);
        v26 = v25(v21, 1, v22);
        v27 = *(v6 + 64);
        if (v26 == 1)
        {
          break;
        }

        sub_23E874E10(*(v6 + 96), *(v6 + 104), &qword_27E35D548, &qword_23E8767C0);
        v29 = v25(v21 + v24, 1, v27);
        v30 = *(v6 + 112);
        v31 = *(v6 + 120);
        v32 = *(v6 + 104);
        if (v29 == 1)
        {
          v10 = *(v6 + 64);
          v11 = *(v6 + 72);
          sub_23E874E78(*(v6 + 112), &qword_27E35D548, &qword_23E8767C0);
          sub_23E874E78(v31, &qword_27E35D548, &qword_23E8767C0);
          (*(v11 + 8))(v32, v10);
          v7 = v66;
LABEL_5:
          sub_23E874E78(*(v6 + 96), &qword_27E35D540, &qword_23E8767B8);
          v8 = v67;
          goto LABEL_6;
        }

        v63 = *(v6 + 120);
        v64 = *(v6 + 96);
        v34 = *(v6 + 72);
        v33 = *(v6 + 80);
        v35 = *(v6 + 64);
        (*(v34 + 32))(v33, v21 + v24, v35);
        sub_23E874050(&qword_27E35D588, MEMORY[0x277D4B7B0]);
        v36 = sub_23E87584C();
        v37 = *(v34 + 8);
        v37(v33, v35);
        sub_23E874E78(v30, &qword_27E35D548, &qword_23E8767C0);
        sub_23E874E78(v63, &qword_27E35D548, &qword_23E8767C0);
        v37(v32, v35);
        sub_23E874E78(v64, &qword_27E35D548, &qword_23E8767C0);
        v7 = v66;
        v8 = v67;
        if (v36)
        {
          goto LABEL_15;
        }

LABEL_6:
        a1 = (*(*(v6 + 136) + 8))(*(v6 + 152), *(v6 + 128));
LABEL_7:
        if (v8 == ++v9)
        {
          goto LABEL_24;
        }
      }

      v28 = *(v6 + 120);
      sub_23E874E78(*(v6 + 112), &qword_27E35D548, &qword_23E8767C0);
      sub_23E874E78(v28, &qword_27E35D548, &qword_23E8767C0);
      v7 = v66;
      if (v25(v21 + v24, 1, v27) == 1)
      {
        sub_23E874E78(*(v6 + 96), &qword_27E35D548, &qword_23E8767C0);
        v8 = v67;
LABEL_15:
        v38 = *(*(v6 + 136) + 32);
        v38(*(v6 + 144), *(v6 + 152), *(v6 + 128));
        v39 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 48) = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23E873464(0, *(v65 + 16) + 1, 1);
          v39 = *(v6 + 48);
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_23E873464(v41 > 1, v42 + 1, 1);
          v39 = *(v6 + 48);
          v8 = v67;
        }

        v43 = *(v6 + 144);
        v44 = *(v6 + 128);
        *(v39 + 16) = v42 + 1;
        v65 = v39;
        a1 = v38(v39 + v69 + v42 * v68, v43, v44);
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v65 = MEMORY[0x277D84F90];
LABEL_24:
    v55 = *(v6 + 56);

    AirPlayAndHandoffSettingsState.onenessDevices.setter(v65);
    v56 = *(v6 + 256);
    v57 = *(v6 + 208);
    v58 = *(v6 + 160);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v60 = *(MEMORY[0x277D856D8] + 4);
    v61 = swift_task_alloc();
    *(v6 + 264) = v61;
    *v61 = v6;
    v61[1] = sub_23E86F1E0;
    v62 = *(v6 + 176);
    a5 = *(v6 + 160);
    a4 = v6 + 40;
    a1 = v6 + 32;
    a2 = 0;
    a3 = 0;
    a6 = AssociatedConformanceWitness;

    return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
  }

  else
  {
    (*(*(v6 + 168) + 8))(*(v6 + 176), *(v6 + 160));
    v45 = *(v6 + 224);
    v46 = *(v6 + 200);
    v47 = *(v6 + 176);
    v49 = *(v6 + 144);
    v48 = *(v6 + 152);
    v51 = *(v6 + 112);
    v50 = *(v6 + 120);
    v52 = *(v6 + 96);
    v70 = *(v6 + 80);
    (*(*(v6 + 216) + 8))(*(v6 + 232), *(v6 + 208));

    v53 = *(v6 + 8);

    return v53();
  }
}

uint64_t sub_23E86F8F4()
{
  v1 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v2 = v0[5];
  v3 = v2;
  v4 = sub_23E8757CC();
  v5 = sub_23E87597C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23E867000, v4, v5, "Could not fetch devices %@", v6, 0xCu);
    sub_23E874E78(v7, &qword_27E35D468, &qword_23E8763F8);
    MEMORY[0x23EF17140](v7, -1, -1);
    MEMORY[0x23EF17140](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[22];
  v14 = v0[18];
  v13 = v0[19];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[12];
  v20 = v0[10];
  (*(v0[27] + 8))(v0[29], v0[26]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_23E86FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D458, &qword_23E8763B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E874E10(a3, v27 - v11, &qword_27E35D458, &qword_23E8763B0);
  v13 = sub_23E87595C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23E874E78(v12, &qword_27E35D458, &qword_23E8763B0);
  }

  else
  {
    sub_23E87594C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E87592C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E8758BC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23E874E78(a3, &qword_27E35D458, &qword_23E8763B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E874E78(a3, &qword_27E35D458, &qword_23E8763B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_23E86FE2C()
{
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D3D8;
  if (!qword_27E35D3D8)
  {
    v9 = 0u;
    v10 = 0u;
    sub_23E874E78(&v9, &qword_27E35D410, &qword_23E876198);
    goto LABEL_11;
  }

  v2 = sub_23E87585C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_23E8759EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  sub_23E874E78(&v9, &qword_27E35D410, &qword_23E876198);
  v4 = sub_23E87585C();
  v5 = [v1 BOOLForKey_];

  if (!*(&v8 + 1))
  {
LABEL_11:
    if (*(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled))
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5 != *(v0 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState_effectiveTransferToHomePodEnabled))
  {
LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v9 = v0;
    sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
    sub_23E8756BC();
  }
}

uint64_t sub_23E8700BC(uint64_t a1)
{
  v2 = sub_23E87580C();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E87582C();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E87545C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_23E8748A0(0, &qword_27E35D500, 0x277D85C78);
  v13 = sub_23E87599C();
  (*(v11 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = v20;
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_23E874984;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8707B4;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  sub_23E87581C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E874050(&qword_27E35D508, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D510, &qword_23E876780);
  sub_23E874DC8(&qword_27E35D518, &qword_27E35D510, &qword_23E876780);
  sub_23E8759FC();
  MEMORY[0x23EF16B40](0, v9, v5, v17);
  _Block_release(v17);

  (*(v23 + 8))(v5, v2);
  return (*(v21 + 8))(v9, v22);
}

void sub_23E870484(uint64_t a1, _BYTE *a2)
{
  v3 = sub_23E87544C();
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277D26180];
    *&v20[0] = sub_23E87588C();
    *(&v20[0] + 1) = v6;
    sub_23E875A2C();
    if (*(v4 + 16))
    {
      v7 = sub_23E87365C(v17);
      if (v8)
      {
        sub_23E874AD4(*(v4 + 56) + 32 * v7, v20);
        sub_23E874A80(v17);

        goto LABEL_7;
      }
    }

    sub_23E874A80(v17);
  }

  memset(v20, 0, sizeof(v20));
LABEL_7:
  sub_23E874E10(v20, v17, &qword_27E35D410, &qword_23E876198);
  if (!v18)
  {
    sub_23E874E78(v20, &qword_27E35D410, &qword_23E876198);
    v11 = v17;
LABEL_13:
    sub_23E874E78(v11, &qword_27E35D410, &qword_23E876198);
    return;
  }

  sub_23E8748A0(0, &qword_27E35D418, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = v20;
    goto LABEL_13;
  }

  v9 = v19;
  v10 = [v19 intValue];
  if (v10 == getpid())
  {
    sub_23E874E78(v20, &qword_27E35D410, &qword_23E876198);
  }

  else
  {
    v12 = [objc_opt_self() sharedConnection];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 isBoolSettingLockedDownByRestrictions_];

      v15 = OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__isContinuityRestricted;
      swift_beginAccess();
      if (v14 == a2[v15])
      {

        sub_23E874E78(v20, &qword_27E35D410, &qword_23E876198);
        a2[v15] = v14;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v19 = a2;
        sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
        sub_23E8756BC();

        sub_23E874E78(v20, &qword_27E35D410, &qword_23E876198);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23E8707B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t AirPlayAndHandoffSettingsState.unpair(device:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23E87564C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8709A0, 0, 0);
}

uint64_t sub_23E8709A0()
{
  if (qword_27E35D3E8 != -1)
  {
    swift_once();
  }

  v1 = sub_23E8757EC();
  v0[8] = __swift_project_value_buffer(v1, qword_27E35DF00);
  v2 = sub_23E8757CC();
  v3 = sub_23E87598C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23E867000, v2, v3, "Trying to unpair device", v4, 2u);
    MEMORY[0x23EF17140](v4, -1, -1);
  }

  v5 = v0[7];
  v6 = v0[3];
  v7 = v0[4];

  swift_getKeyPath();
  v0[2] = v7;
  sub_23E874050(&qword_27E35D400, type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_23E8756CC();

  v0[9] = *(v7 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);

  sub_23E87574C();
  v8 = *(MEMORY[0x277D4B7D8] + 4);
  v12 = (*MEMORY[0x277D4B7D8] + MEMORY[0x277D4B7D8]);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_23E870BB4;
  v10 = v0[7];

  return v12(v10);
}

uint64_t sub_23E870BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E870D8C, 0, 0);
  }

  else
  {
    v9 = *(v2 + 56);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_23E870D8C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v1;
  v4 = sub_23E8757CC();
  v5 = sub_23E87597C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E867000, v4, v5, "Error while trying to unpair device %@", v8, 0xCu);
    sub_23E874E78(v9, &qword_27E35D468, &qword_23E8763F8);
    MEMORY[0x23EF17140](v9, -1, -1);
    MEMORY[0x23EF17140](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t AirPlayAndHandoffSettingsState.durationOf(start:end:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E87563C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  v12 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v12 setAllowedUnits_];
  [v12 setUnitsStyle_];
  v13 = sub_23E87560C();
  v14 = sub_23E87560C();
  v15 = [v12 stringFromDate:v13 toDate:v14];

  if (v15)
  {
    v16 = sub_23E87588C();
  }

  else
  {
    if (qword_27E35D3E8 != -1)
    {
      swift_once();
    }

    v17 = sub_23E8757EC();
    __swift_project_value_buffer(v17, qword_27E35DF00);
    v18 = v5[2];
    v18(v11, a1, v4);
    v18(v9, a2, v4);
    v19 = sub_23E8757CC();
    v20 = sub_23E87597C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v21 = 136315394;
      sub_23E874050(&qword_27E35D470, MEMORY[0x277CC9578]);
      v37 = v19;
      v22 = sub_23E875A8C();
      v24 = v23;
      v36 = v20;
      v25 = v5[1];
      v25(v11, v4);
      v26 = sub_23E872EBC(v22, v24, &v39);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = sub_23E875A8C();
      v29 = v28;
      v25(v9, v4);
      v30 = sub_23E872EBC(v27, v29, &v39);

      *(v21 + 14) = v30;
      v31 = v37;
      _os_log_impl(&dword_23E867000, v37, v36, "Dates are invalid. Start: %s End: %s", v21, 0x16u);
      v32 = v38;
      swift_arrayDestroy();
      MEMORY[0x23EF17140](v32, -1, -1);
      MEMORY[0x23EF17140](v21, -1, -1);
    }

    else
    {

      v33 = v5[1];
      v33(v9, v4);
      v33(v11, v4);
    }

    return 0;
  }

  return v16;
}

uint64_t AirPlayAndHandoffSettingsState.formatStartDate(start:)(uint64_t a1)
{
  v107 = sub_23E87554C();
  v106 = *(v107 - 8);
  v2 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E87558C();
  v142 = *(v4 - 8);
  v143 = v4;
  v5 = *(v142 + 64);
  MEMORY[0x28223BE20](v4);
  v141 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_23E87551C();
  v136 = *(v138 - 8);
  v7 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v133 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_23E87552C();
  v137 = *(v139 - 8);
  v9 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  v134 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_23E8754EC();
  v130 = *(v131 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v128 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_23E87556C();
  v125 = *(v127 - 8);
  v13 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v124 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_23E8755AC();
  v122 = *(v140 - 8);
  v15 = *(v122 + 64);
  v16 = MEMORY[0x28223BE20](v140);
  v104 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v123 = &v103 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v126 = &v103 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v129 = &v103 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v132 = &v103 - v25;
  MEMORY[0x28223BE20](v24);
  v135 = &v103 - v26;
  v27 = sub_23E87568C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v119 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_23E8755CC();
  v117 = *(v118 - 8);
  v31 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v113 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_23E8755EC();
  v112 = *(v114 - 8);
  v33 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_23E8755FC();
  v115 = *(v116 - 8);
  v35 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23E87547C();
  v151 = *(v37 - 8);
  v152 = v37;
  v38 = *(v151 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23E87563C();
  v148 = *(v41 - 8);
  v149 = v41;
  v42 = *(v148 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v103 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v103 - v49;
  v51 = sub_23E8756AC();
  v146 = *(v51 - 8);
  v147 = v51;
  v52 = *(v146 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v103 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E87567C();
  sub_23E87561C();
  v150 = v50;
  sub_23E87565C();
  v153 = a1;
  sub_23E87565C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D478, &qword_23E876400);
  v55 = *(v28 + 72);
  v56 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_23E8760F0;
  v58 = *MEMORY[0x277CC9968];
  v109 = *(v28 + 104);
  v109(v57 + v56, v58, v27);
  sub_23E874098(v57);
  swift_setDeallocating();
  v59 = *(v28 + 8);
  v121 = v27;
  v120 = v28 + 8;
  v108 = v59;
  v59((v57 + v56), v27);
  swift_deallocClassInstance();
  v144 = v45;
  v145 = v48;
  sub_23E87566C();

  v60 = sub_23E87546C();
  LOBYTE(v28) = v61;
  result = (*(v151 + 8))(v40, v152);
  if (v28)
  {
    goto LABEL_12;
  }

  v63 = v150;
  if (v60 < 0)
  {
    v64 = __OFSUB__(0, v60);
    v60 = -v60;
    if (v64)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }
  }

  if (v60 <= 1)
  {
    v83 = v110;
    sub_23E8755DC();
    v84 = v113;
    sub_23E8755BC();
    v85 = v111;
    sub_23E8753FC();
    (*(v117 + 8))(v84, v118);
    (*(v112 + 8))(v83, v114);
    sub_23E874050(&qword_27E35D480, MEMORY[0x277CC94C0]);
    v86 = v116;
    sub_23E87562C();
    (*(v115 + 8))(v85, v86);
    v87 = v149;
    v88 = v63;
    v89 = *(v148 + 8);
    v89(v144, v149);
    v89(v145, v87);
    v89(v88, v87);
    (*(v146 + 8))(v54, v147);
  }

  else
  {
    v65 = *MEMORY[0x277CC9988];
    v66 = v119;
    v67 = v121;
    v68 = v109;
    v109(v119, v65, v121);
    v69 = v54;
    v70 = sub_23E87569C();
    v71 = v63;
    v72 = v108;
    v108(v66, v67);
    v68(v66, v65, v67);
    v73 = sub_23E87569C();
    v74 = v72(v66, v67);
    v75 = (v122 + 8);
    v76 = v69;
    v77 = v71;
    if (v70 == v73)
    {
      v78 = v123;
      MEMORY[0x23EF165A0](v74);
      v79 = v124;
      sub_23E87555C();
      v80 = v126;
      sub_23E8754CC();
      (*(v125 + 8))(v79, v127);
      v81 = *v75;
      v82 = v140;
      (*v75)(v78, v140);
    }

    else
    {
      v90 = v104;
      MEMORY[0x23EF165A0](v74);
      v91 = v105;
      sub_23E87553C();
      v92 = v123;
      sub_23E8754BC();
      (*(v106 + 8))(v91, v107);
      v81 = *v75;
      v82 = v140;
      (*v75)(v90, v140);
      v93 = v124;
      sub_23E87555C();
      v80 = v126;
      sub_23E8754CC();
      (*(v125 + 8))(v93, v127);
      v81(v92, v82);
    }

    v94 = v128;
    sub_23E8754DC();
    v95 = v129;
    sub_23E87549C();
    (*(v130 + 8))(v94, v131);
    v81(v80, v82);
    v96 = v133;
    sub_23E87550C();
    v97 = v134;
    sub_23E8754FC();
    (*(v136 + 8))(v96, v138);
    v98 = v132;
    sub_23E8754AC();
    (*(v137 + 8))(v97, v139);
    v81(v95, v82);
    v99 = v141;
    sub_23E87557C();
    v100 = v135;
    sub_23E87559C();
    (*(v142 + 8))(v99, v143);
    v81(v98, v82);
    sub_23E874050(&qword_27E35D488, MEMORY[0x277CC9428]);
    sub_23E87562C();
    v81(v100, v82);
    v101 = v149;
    v102 = *(v148 + 8);
    v102(v144, v149);
    v102(v145, v101);
    v102(v77, v101);
    (*(v146 + 8))(v76, v147);
  }

  return v154;
}

id AirPlayAndHandoffSettingsState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AirPlayMode.hashValue.getter()
{
  v1 = *v0;
  sub_23E875AAC();
  MEMORY[0x23EF16C50](v1);
  return sub_23E875ACC();
}

uint64_t sub_23E8723A4()
{
  v1 = *v0;
  sub_23E875AAC();
  MEMORY[0x23EF16C50](v1);
  return sub_23E875ACC();
}

uint64_t sub_23E872418()
{
  v1 = *v0;
  sub_23E875AAC();
  MEMORY[0x23EF16C50](v1);
  return sub_23E875ACC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23E8724C8(uint64_t a1, id *a2)
{
  result = sub_23E87586C();
  *a2 = 0;
  return result;
}

uint64_t sub_23E872540(uint64_t a1, id *a2)
{
  v3 = sub_23E87587C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23E8725C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23E87588C();
  v4 = sub_23E87585C();

  sub_23E87588C();
  v5 = sub_23E87585C();

  v6 = sub_23E87588C();
  v8 = v7;
  if (v6 == sub_23E87588C() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E875A9C();
  }

  return v11 & 1;
}

uint64_t sub_23E87269C@<X0>(uint64_t *a1@<X8>)
{
  sub_23E87588C();
  v2 = sub_23E87585C();

  *a1 = v2;
  return result;
}

uint64_t sub_23E8726EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_23E87588C();
  v4 = sub_23E87585C();

  *a1 = v4;
  return result;
}

uint64_t sub_23E872734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23E87588C();
  v6 = v5;
  if (v4 == sub_23E87588C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E875A9C();
  }

  return v9 & 1;
}

uint64_t sub_23E8727BC(uint64_t a1)
{
  v2 = sub_23E874050(&qword_27E35D4E8, type metadata accessor for AVGestaltBoolQuestion);
  v3 = sub_23E874050(&qword_27E35D4F0, type metadata accessor for AVGestaltBoolQuestion);
  v4 = sub_23E874050(&qword_27E35D4F8, type metadata accessor for AVGestaltQuestion);

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E8728AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23E87585C();

  *a2 = v5;
  return result;
}

uint64_t sub_23E8728F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23E87588C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23E872920()
{
  v1 = *v0;
  sub_23E87588C();
  v2 = sub_23E87585C();

  v3 = sub_23E87588C();
  v4 = MEMORY[0x23EF16A90](v3);

  return v4;
}

uint64_t sub_23E872984()
{
  v1 = *v0;
  sub_23E87588C();
  v2 = sub_23E87585C();

  sub_23E87588C();
  sub_23E8758DC();
}

uint64_t sub_23E872A00()
{
  v1 = *v0;
  sub_23E87588C();
  v2 = sub_23E87585C();

  sub_23E87588C();
  sub_23E875AAC();
  sub_23E8758DC();
  v3 = sub_23E875ACC();

  return v3;
}

uint64_t sub_23E872AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_23E87588C();
  v7 = a3(v6);

  return v7;
}

uint64_t sub_23E872AF0()
{
  v1 = *v0;
  sub_23E87588C();
  sub_23E8758DC();
}

uint64_t sub_23E872B44()
{
  v1 = *v0;
  sub_23E87588C();
  sub_23E875AAC();
  sub_23E8758DC();
  v2 = sub_23E875ACC();

  return v2;
}

uint64_t sub_23E872BB8(uint64_t a1)
{
  v2 = sub_23E874050(&qword_27E35D4F8, type metadata accessor for AVGestaltQuestion);
  v3 = sub_23E874050(&qword_27E35D5C8, type metadata accessor for AVGestaltQuestion);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E872CCC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E872DC4;

  return v7(a1);
}

uint64_t sub_23E872DC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E872EBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E872F88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23E874AD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23E872F88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23E873094(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23E875A5C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23E873094(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E8730E0(a1, a2);
  sub_23E873210(&unk_28511A570);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23E8730E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23E8732FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23E875A5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23E8758EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E8732FC(v10, 0);
        result = sub_23E875A4C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23E873210(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23E873370(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23E8732FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D538, &qword_23E876790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E873370(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D538, &qword_23E876790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_23E873464(size_t a1, int64_t a2, char a3)
{
  result = sub_23E873484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23E873484(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D590, &qword_23E8767E8);
  v10 = *(sub_23E87575C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23E87575C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_23E87365C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23E875A0C();

  return sub_23E8736A0(a1, v5);
}

unint64_t sub_23E8736A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23E874B30(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EF16BB0](v9, a1);
      sub_23E874A80(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23E873768(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E87575C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_23E874050(&qword_27E35D5A0, MEMORY[0x277D4B7C0]);
    v22 = sub_23E87584C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E873A1C()
{
  if (qword_27E35D3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E35D3D8;
  if (qword_27E35D3D8)
  {
    v1 = sub_23E87585C();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_23E8759EC();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    sub_23E874E78(&v8, &qword_27E35D410, &qword_23E876198);
    v3 = sub_23E87585C();
    v4 = [v0 BOOLForKey_];

    if (*(&v7 + 1))
    {
      return v4;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    sub_23E874E78(&v8, &qword_27E35D410, &qword_23E876198);
  }

  return 1;
}

uint64_t sub_23E873B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_23E873BC4()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = sub_23E87542C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E87590C();
  *(v5 + 16) = 64;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  v24 = sub_23E8757FC();
  v6 = sub_23E87585C();
  APSSettingsGetCString();

  v7 = v24;
  if (v7 != sub_23E8757FC())
  {
    if (qword_27E35D3F0 != -1)
    {
      swift_once();
    }

    v18 = sub_23E8757EC();
    __swift_project_value_buffer(v18, qword_27E35DF18);
    v19 = sub_23E8757CC();
    v20 = sub_23E87597C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23E867000, v19, v20, "Could not get AirPlay Receiver password", v21, 2u);
      MEMORY[0x23EF17140](v21, -1, -1);
    }

    goto LABEL_12;
  }

  v10 = sub_23E873B78(v8, v9);
  v12 = v11;

  v23[0] = v10;
  v23[1] = v12;

  sub_23E87541C();
  sub_23E874ED8();
  v13 = sub_23E8759CC();
  v15 = v14;
  (*(v1 + 8))(v4, v0);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = v10;
LABEL_13:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E873F5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E873F9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E86E8FC;

  return sub_23E86E86C();
}

uint64_t sub_23E874050(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E874098(uint64_t a1)
{
  v2 = sub_23E87568C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35D520, &qword_23E876788);
    v10 = sub_23E875A3C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_23E874050(&qword_27E35D528, MEMORY[0x277CC99D0]);
      v18 = sub_23E87583C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_23E874050(&qword_27E35D530, MEMORY[0x277CC99D0]);
          v25 = sub_23E87584C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_23E8743BC()
{
  result = qword_27E35D490;
  if (!qword_27E35D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35D490);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23E8744A0()
{
  result = qword_27E35D4A8;
  if (!qword_27E35D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35D4A8);
  }

  return result;
}

uint64_t sub_23E8744FC()
{
  result = sub_23E87570C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPlayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPlayMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23E874854(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23E8748A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23E8748E8()
{
  v1 = sub_23E87545C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23E874984()
{
  v1 = *(sub_23E87545C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23E870484(v0 + v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E874A28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_23E874AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23E874BDC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager);
  *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__companionDeviceManager) = *(v0 + 24);
}

uint64_t sub_23E874C20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E874C58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E875120;

  return sub_23E872CCC(a1, v5);
}

uint64_t sub_23E874D10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E86E8FC;

  return sub_23E872CCC(a1, v5);
}

uint64_t sub_23E874DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E874E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E874E78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23E874ED8()
{
  result = qword_27E35D598;
  if (!qword_27E35D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35D598);
  }

  return result;
}

void sub_23E874F70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture);
  *(v1 + OBJC_IVAR____TtC32AirPlayAndHandoffSettingsSupport30AirPlayAndHandoffSettingsState__AVGQDeviceSupportsContinuityCapture) = v2;
  v4 = v2;
}

id sub_23E8751AC()
{
  type metadata accessor for FindAirPlayAndHandoffSettingsSupportClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E35D5D0 = result;
  return result;
}

id static NSBundle.airPlayAndHandoffSettingsSupport.getter()
{
  if (qword_27E35D3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D5D0;

  return v1;
}

uint64_t sub_23E875284()
{
  v0 = sub_23E8757EC();
  __swift_allocate_value_buffer(v0, qword_27E35DF00);
  __swift_project_value_buffer(v0, qword_27E35DF00);

  return sub_23E8757DC();
}

uint64_t sub_23E87530C()
{
  v0 = sub_23E8757EC();
  __swift_allocate_value_buffer(v0, qword_27E35DF18);
  __swift_project_value_buffer(v0, qword_27E35DF18);

  return sub_23E8757DC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}