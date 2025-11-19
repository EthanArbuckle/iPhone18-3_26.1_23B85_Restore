uint64_t sub_23DF0E128(uint64_t a1)
{
  v2 = sub_23DF0E250();

  return MEMORY[0x28210B538](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SetDataRoamingAction.SetDataRoamingOperation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23DF0E250()
{
  result = qword_280DAF300;
  if (!qword_280DAF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF300);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_23E1FBEEC();
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  result = v0;
  v3 = *(v1 - 212);
  v4 = *(v1 - 208);
  v5 = *(v1 - 224);
  v6 = *(v1 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_23E1FB76C();
}

uint64_t sub_23DF0E32C(char a1)
{
  v2 = [objc_opt_self() currentDevice];
  [v2 idiom];

  if (a1)
  {
    sub_23E1FDCBC();
    if (qword_280DAE1D8 != -1)
    {
      swift_once();
    }

    v3 = qword_280DAE278;
    v4 = sub_23E1FDBDC();
    v5 = sub_23E1FDBDC();

    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23E1FDC1C();
    sub_23E1FDCBC();
    if (qword_280DAE1D8 == -1)
    {
      goto LABEL_11;
    }

LABEL_12:
    swift_once();
    goto LABEL_11;
  }

  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v3 = qword_280DAE278;
  v7 = sub_23E1FDBDC();
  v8 = sub_23E1FDBDC();

  v9 = [v3 localizedStringForKey:v7 value:v8 table:0];

  sub_23E1FDC1C();
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    goto LABEL_12;
  }

LABEL_11:
  v10 = sub_23E1FDBDC();
  v11 = sub_23E1FDBDC();

  v12 = [v3 localizedStringForKey:v10 value:v11 table:0];

  v13 = sub_23E1FDC1C();
  return v13;
}

uint64_t sub_23DF0E734()
{
  v0 = sub_23E1FE6EC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DF0E788(char a1)
{
  if (a1)
  {
    return 0x74726174736552;
  }

  else
  {
    return 0x776F442074756853;
  }
}

uint64_t sub_23DF0E7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DF0E734();
  *a2 = result;
  return result;
}

uint64_t sub_23DF0E818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DF0E788(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23DF0E860(char a1)
{
  if (a1 == 2)
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_23DF0E874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v2;
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v3 = qword_280DAE278;
  v4 = sub_23E1FDBDC();
  v5 = sub_23E1FDBDC();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_23E1FDC1C();
  v9 = v8;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  return sub_23E1FDABC();
}

uint64_t sub_23DF0E9E8(uint64_t a1)
{
  v2 = sub_23DF0FD30();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DF0EA24(uint64_t a1)
{
  v2 = sub_23DF0FD30();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_23DF0EA74()
{
  v1 = v0;
  v2 = sub_23E1FD03C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  v8 = *&v0[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  v9 = *(v7 + 1);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v10 = sub_23E1FE3FC();
  if (v10 && (v11 = v10, v21 = 0, v22 = 0, sub_23E1FDC0C(), v11, v22) && (v12 = sub_23DF0E734(), v12 != 2))
  {
    v20 = v12 & 1;

    sub_23DF0ED24(v20);
  }

  else
  {
    v13 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v14 = sub_23E1FD02C();
    v15 = sub_23E1FE1BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23DE30000, v14, v15, "Unexpected or null mode parameter value.", v16, 2u);
      MEMORY[0x23EF074C0](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_23DF0FB28();
    v17 = swift_allocError();
    *v18 = 2;
    v19 = sub_23E1FBEBC();

    [v1 finishRunningWithError_];
  }
}

void sub_23DF0ED24(char a1)
{
  v2 = sub_23DF0E32C(a1 & 1);
  if (v3)
  {
    sub_23DF0EDA8(v2, v3, v4, v5, a1 & 1);
  }

  else
  {

    sub_23DF0F274(a1 & 1);
  }
}

void sub_23DF0EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = sub_23E1FD03C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v6 userInterface];
  if (v15)
  {
    v16 = v15;
    v31 = [objc_opt_self() alertWithPreferredStyle_];
    v17 = [objc_opt_self() cancelButtonWithHandler_];
    [v31 addButton_];

    v18 = sub_23E1FDBDC();
    [v31 setMessage_];

    sub_23DE38DA8(0, &qword_27E32D820, 0x277CFC220);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a5 & 1;
    sub_23E1FB7BC();
    v21 = sub_23DF0F178(a1, a2, 2, sub_23DF0FB04, v20);
    [v31 addButton_];

    [v16 presentAlert_];
    swift_unknownObjectRelease();
    v22 = v31;
  }

  else
  {
    v23 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v24 = sub_23E1FD02C();
    v25 = sub_23E1FE1CC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23DE30000, v24, v25, "Attempted to show an alert without a user interface", v26, 2u);
      MEMORY[0x23EF074C0](v26, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v27 = [objc_opt_self() wfUnsupportedUserInterfaceError];
    if (v27)
    {
      v28 = v27;
      v29 = sub_23E1FBEBC();
    }

    else
    {
      v29 = 0;
    }

    [v6 finishRunningWithError_];
  }
}

void sub_23DF0F11C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_23DF0F274(a2 & 1);
  }
}

id sub_23DF0F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_23DEEAB60;
    v12[3] = &block_descriptor_17;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() buttonWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_23DF0F274(char a1)
{
  sub_23DE38DA8(0, &qword_27E32D818, 0x277D0AE10);
  v3 = v1 + OBJC_IVAR___WFShutDownDeviceAction_shutdownReason;
  v4 = *(v1 + OBJC_IVAR___WFShutDownDeviceAction_shutdownReason);
  v5 = *(v3 + 8);
  sub_23E1FB7BC();
  v6 = sub_23DF0F35C();
  [v6 setSource_];
  [v6 setRebootType_];
  v7 = [objc_opt_self() sharedService];
  [v7 shutdownWithOptions_];
}

id sub_23DF0F35C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_23E1FDBDC();

  v2 = [v0 initWithReason_];

  return v2;
}

uint64_t sub_23DF0F448()
{
  v1 = v0;
  v2 = sub_23E1FD03C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  v8 = *&v1[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey + 8];
  v9 = sub_23E1FDBDC();
  v10 = [v1 parameterStateForKey_];

  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 value];
      swift_unknownObjectRelease();
      if (v12)
      {
        v23 = 0;
        v24 = 0;
        sub_23E1FDC0C();

        if (v24)
        {
          v13 = sub_23DF0E734();
          if (v13 != 2)
          {
            if (v13)
            {
              return 0x74726174736572;
            }

            else
            {
              return 0x7265776F70;
            }
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v15 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v16 = sub_23E1FD02C();
  v17 = sub_23E1FE1BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23DE30000, v16, v17, "Unexpected or null mode parameter value.", v18, 2u);
    MEMORY[0x23EF074C0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v19 = type metadata accessor for ShutDownDeviceAction();
  v25.receiver = v1;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, sel_iconSymbolName);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v14 = sub_23E1FDC1C();

  return v14;
}

id sub_23DF0F6D4(uint64_t a1)
{
  v3 = sub_23E1FDBDC();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ShutDownDeviceAction();
  v4 = objc_msgSendSuper2(&v6, sel_setParameterState_forKey_, a1, v3);

  [v1 iconUpdated];
  return v4;
}

id sub_23DF0F7CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFShutDownDeviceAction_shutdownReason];
  *v7 = 0xD000000000000010;
  *(v7 + 1) = 0x800000023E258260;
  v8 = &v4[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  strcpy(&v4[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey], "WFShutdownMode");
  v8[15] = -18;
  v9 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v10 = sub_23E1FDA9C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for ShutDownDeviceAction();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_definition_serializedParameters_, v9, a3, v10);

  if (v11)
  {
  }

  return v11;
}

id sub_23DF0F9A0()
{
  v1 = &v0[OBJC_IVAR___WFShutDownDeviceAction_shutdownReason];
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x800000023E258260;
  v2 = &v0[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  strcpy(&v0[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey], "WFShutdownMode");
  v2[15] = -18;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ShutDownDeviceAction();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_23DF0FA54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShutDownDeviceAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

unint64_t sub_23DF0FB28()
{
  result = qword_27E32D828;
  if (!qword_27E32D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D828);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ShutDownDeviceAction.ActionError(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShutDownDeviceAction.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23DF0FCFC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23DF0FD10(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_23DF0FD30()
{
  result = qword_27E32D830;
  if (!qword_27E32D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShutDownDeviceAction.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23DF0FE64()
{
  result = qword_27E32D840;
  if (!qword_27E32D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D840);
  }

  return result;
}

id sub_23DF0FEF0()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v142 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x800000023E258320;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v154 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v153 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v147 = v20;
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v152 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = [v154 bundleURL];
  v143 = v3;
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v28 = v153;
  *(v22 + 64) = v153;
  *(v22 + 40) = v29;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v30 = sub_23E1FDABC();
  v31 = v152;
  *(inited + 160) = sub_23DF3BE54(v30);
  v32 = *MEMORY[0x277D7CCC0];
  *(inited + 184) = v31;
  *(inited + 192) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_23E222350;
  v34 = MEMORY[0x277D839B0];
  *(v33 + 32) = 0x656C7069746C754DLL;
  *(v33 + 40) = 0xE800000000000000;
  *(v33 + 48) = 1;
  *(v33 + 72) = v34;
  strcpy((v33 + 80), "ParameterKey");
  v141 = 0x800000023E2583A0;
  *(v33 + 93) = 0;
  *(v33 + 94) = -5120;
  *(v33 + 96) = 0xD000000000000011;
  *(v33 + 104) = 0x800000023E2583A0;
  v35 = MEMORY[0x277D837D0];
  *(v33 + 120) = MEMORY[0x277D837D0];
  *(v33 + 128) = 0x6465726975716552;
  *(v33 + 136) = 0xE800000000000000;
  *(v33 + 144) = 1;
  *(v33 + 168) = v34;
  *(v33 + 176) = 0x7365707954;
  v36 = v34;
  *(v33 + 184) = 0xE500000000000000;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v33 + 216) = v150;
  *(v33 + 192) = &unk_285024F70;
  v37 = v32;
  v38 = sub_23E1FDABC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v38;
  v40 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v39;
  *(inited + 232) = v40;
  *(inited + 264) = v36;
  *(inited + 240) = 1;
  v41 = v40;
  *(inited + 272) = sub_23E1FDBDC();
  *(inited + 280) = 0xD000000000000023;
  *(inited + 288) = 0x800000023E2583C0;
  v42 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v35;
  *(inited + 312) = v42;
  v43 = v42;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v44 = [v154 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v46;
  v47 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v28;
  *(inited + 352) = v47;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_23E224C00;
  v152 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v48 = swift_allocObject();
  v140 = xmmword_23E224C10;
  *(v48 + 16) = xmmword_23E224C10;
  v49 = *MEMORY[0x277D7CDF8];
  *(v48 + 32) = *MEMORY[0x277D7CDF8];
  *(v48 + 40) = 0xD00000000000001ALL;
  *(v48 + 48) = 0x800000023E258410;
  v50 = *MEMORY[0x277D7CE00];
  v51 = MEMORY[0x277D837D0];
  *(v48 + 64) = MEMORY[0x277D837D0];
  *(v48 + 72) = v50;
  v52 = v49;
  v53 = v50;
  v148 = v52;
  v138 = v53;
  v54 = v47;
  v55 = sub_23E1FDABC();
  v56 = MEMORY[0x277D7CE40];
  *(v48 + 80) = v55;
  v57 = *v56;
  *(v48 + 104) = v147;
  *(v48 + 112) = v57;
  *(v48 + 144) = MEMORY[0x277D839B0];
  *(v48 + 120) = 1;
  v58 = v57;
  *(v48 + 152) = sub_23E1FDBDC();
  *(v48 + 160) = 0xD000000000000011;
  *(v48 + 168) = 0x800000023E258430;
  v59 = *MEMORY[0x277D7CE70];
  *(v48 + 184) = v51;
  *(v48 + 192) = v59;
  *(v48 + 200) = 0xD000000000000013;
  *(v48 + 208) = 0x800000023E258450;
  v60 = *MEMORY[0x277D7CE80];
  *(v48 + 224) = v51;
  *(v48 + 232) = v60;
  v61 = v59;
  v62 = v60;
  v63 = v61;
  v64 = v62;
  v145 = v63;
  v144 = v64;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v65 = [v154 bundleURL];
  sub_23E1FBF9C();

  v66 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v48 + 264) = v153;
  *(v48 + 240) = v67;
  _s3__C3KeyVMa_0(0);
  v147 = v68;
  v146 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v69 = sub_23E1FDABC();
  v70 = sub_23DF3BE9C(v69);
  *(v151 + 32) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_23E224700;
  *(v71 + 32) = v148;
  *(v71 + 40) = 0xD000000000000016;
  *(v71 + 48) = 0x800000023E24FDA0;
  v72 = MEMORY[0x277D837D0];
  v73 = v138;
  *(v71 + 64) = MEMORY[0x277D837D0];
  *(v71 + 72) = v73;
  v74 = MEMORY[0x277D7CE38];
  *(v71 + 80) = 0x6F65646956;
  *(v71 + 88) = 0xE500000000000000;
  v75 = *v74;
  *(v71 + 104) = v72;
  *(v71 + 112) = v75;
  *(v71 + 120) = &unk_285025000;
  v76 = *MEMORY[0x277D7CE30];
  *(v71 + 144) = v150;
  *(v71 + 152) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_23E2246F0;
  v138 = v77;
  v78 = v75;
  v79 = v76;
  v137[1] = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v139 = inited;
  v80 = v154;
  v81 = [v154 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v77 + 32) = v83;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v84 = [v80 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v86 = v138;
  v138[5] = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v71 + 160) = v86;
  v89 = v145;
  *(v71 + 184) = v88;
  *(v71 + 192) = v89;
  strcpy((v71 + 200), "WFFaceTimeType");
  *(v71 + 215) = -18;
  v90 = v144;
  *(v71 + 224) = MEMORY[0x277D837D0];
  *(v71 + 232) = v90;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v91 = v154;
  v92 = [v154 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v71 + 240) = v94;
  v95 = *MEMORY[0x277D7CEC8];
  v96 = v153;
  *(v71 + 264) = v153;
  *(v71 + 272) = v95;
  v138 = v95;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v97 = [v91 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v71 + 304) = v96;
  *(v71 + 280) = v99;
  v100 = sub_23E1FDABC();
  v101 = sub_23DF3BE9C(v100);
  *(v151 + 40) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = v140;
  v103 = *MEMORY[0x277D7CDE0];
  *(v102 + 32) = *MEMORY[0x277D7CDE0];
  *(v102 + 40) = 1;
  v104 = v148;
  *(v102 + 64) = MEMORY[0x277D839B0];
  *(v102 + 72) = v104;
  v105 = MEMORY[0x277D837D0];
  *(v102 + 104) = MEMORY[0x277D837D0];
  *(v102 + 80) = 0xD000000000000017;
  *(v102 + 88) = 0x800000023E258530;
  v106 = v103;
  *(v102 + 112) = sub_23E1FDBDC();
  *(v102 + 120) = 0x73746361746E6F63;
  *(v102 + 128) = 0xE800000000000000;
  v107 = v145;
  *(v102 + 144) = v105;
  *(v102 + 152) = v107;
  v108 = v141;
  *(v102 + 160) = 0xD000000000000011;
  *(v102 + 168) = v108;
  v109 = v144;
  *(v102 + 184) = v105;
  *(v102 + 192) = v109;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v110 = v154;
  v111 = [v154 bundleURL];
  sub_23E1FBF9C();

  v112 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v102 + 200) = v113;
  v114 = v153;
  v115 = v138;
  *(v102 + 224) = v153;
  *(v102 + 232) = v115;
  v149 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v116 = [v110 bundleURL];
  sub_23E1FBF9C();

  v117 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v102 + 264) = v114;
  *(v102 + 240) = v118;
  v119 = sub_23E1FDABC();
  v120 = sub_23DF3BE9C(v119);
  v121 = v151;
  *(v151 + 48) = v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v123 = v139;
  *(v139 + 360) = v121;
  v124 = *MEMORY[0x277D7CB98];
  v123[48] = v122;
  v123[49] = v124;
  v125 = v124;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v126 = [v154 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v129 = v128;
  v130 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v131 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v123[50] = v130;
  v132 = *MEMORY[0x277D7CF20];
  v123[53] = v131;
  v123[54] = v132;
  v123[58] = v150;
  v123[55] = &unk_285025040;
  v133 = v132;
  v134 = sub_23E1FDBDC();
  v123[63] = MEMORY[0x277D837D0];
  v123[59] = v134;
  v123[60] = 0x656D695465636146;
  v123[61] = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v135 = sub_23E1FDABC();
  return sub_23DF3BF9C(v135);
}

uint64_t static WFContentItem.toolkitTypeDefinition(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - v8;
  v9 = sub_23E1FD41C();
  v10 = OUTLINED_FUNCTION_6_0(v9);
  v51 = v11;
  v52 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = _s8CacheKeyVMa();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v22 = sub_23E1FD46C();
  v23 = OUTLINED_FUNCTION_6_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = a1;
  v32 = v55;
  result = sub_23E1FE15C();
  if (!v32)
  {
    v47 = v16;
    v49 = 0;
    v50 = v25;
    v35 = v52;
    v34 = v53;
    v55 = v2;
    (*(v25 + 16))(v21, v30, v22);
    v48 = v31;
    *(v21 + *(v17 + 20)) = sub_23E1FE0BC();
    if (qword_27E32B978 != -1)
    {
      swift_once();
    }

    v36 = v34;
    sub_23E1FDA4C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v35);
    v38 = v55;
    if (EnumTagSinglePayload == 1)
    {
      v39 = sub_23DE5CB68(v36, &qword_27E32BFE0, &unk_23E22A000);
      MEMORY[0x28223BE20](v39);
      v40 = v48;
      *(&v47 - 2) = v38;
      *(&v47 - 1) = v40;
      sub_23E1FDA2C();
      sub_23DF1230C(v21);
      v41 = OUTLINED_FUNCTION_4_15();
      return v42(v41);
    }

    else
    {
      sub_23DF1230C(v21);
      v43 = OUTLINED_FUNCTION_4_15();
      v44(v43);
      v45 = *(v51 + 32);
      v46 = v47;
      v45(v47, v36, v35);
      return (v45)(v54, v46, v35);
    }
  }

  return result;
}

uint64_t _s8CacheKeyVMa()
{
  result = qword_27E32D890;
  if (!qword_27E32D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_23DF114B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v7 = sub_23E1FE87C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_23E1FE75C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL sub_23DF115A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E1FBBDC();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v12 = *(a2 + 40);
  OUTLINED_FUNCTION_2_18();
  sub_23DF17560(v13, v14);
  v15 = sub_23E1FDADC();
  v16 = a2 + 56;
  v24 = a2;
  v17 = ~(-1 << *(a2 + 32));
  do
  {
    v18 = v15 & v17;
    v19 = (1 << (v15 & v17)) & *(v16 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8));
    v20 = v19 != 0;
    if (!v19)
    {
      break;
    }

    (*(v6 + 16))(v11, *(v24 + 48) + *(v6 + 72) * v18, v3);
    OUTLINED_FUNCTION_2_18();
    sub_23DF17560(&qword_27E32D8D0, v21);
    v22 = sub_23E1FDB2C();
    (*(v6 + 8))(v11, v3);
    v15 = v18 + 1;
  }

  while ((v22 & 1) == 0);
  return v20;
}

uint64_t static WFContentItem.toolkitPredicateTemplates(usage:seen:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D650, &qword_23E2296C8);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D658, &unk_23E2296D0);
  OUTLINED_FUNCTION_25(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D860, &qword_23E224060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v20 = sub_23DF12368();
  *(inited + 32) = v4;
  *(inited + 40) = v20;
  v25 = a2;
  sub_23E1FB7BC();
  sub_23DE57274(inited);
  sub_23DF15C60(a1, v25);

  if (!v3)
  {
    v22 = sub_23E1FD77C();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
    v23 = sub_23E1FD49C();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
    return sub_23E1FD4AC();
  }

  return result;
}

uint64_t sub_23DF11924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D930, &unk_23E22A190);
  result = sub_23E1FDA3C();
  qword_27E32D850 = result;
  return result;
}

uint64_t sub_23DF11964(uint64_t a1, uint64_t a2)
{
  if (sub_23E1FD45C())
  {
    v4 = *(_s8CacheKeyVMa() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_23DE38DA8(0, &unk_27E32D8A8, 0x277D7A048);
        v7 = v6;
        v8 = v5;
        v9 = sub_23E1FE3BC();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

void sub_23DF11A08()
{
  sub_23E1FD46C();
  sub_23DF17560(&unk_27E32D8C0, MEMORY[0x277D72D58]);
  sub_23E1FDAEC();
  v1 = *(v0 + *(_s8CacheKeyVMa() + 20));
  if (v1)
  {
    sub_23E1FE86C();
    v2 = v1;
    sub_23E1FE3CC();
  }

  else
  {
    sub_23E1FE86C();
  }
}

uint64_t sub_23DF11AF4()
{
  sub_23E1FE84C();
  sub_23DF11A08();
  return sub_23E1FE87C();
}

uint64_t sub_23DF11B3C()
{
  sub_23E1FE84C();
  sub_23DF11A08();
  return sub_23E1FE87C();
}

uint64_t static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6E0, &qword_23E224920);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = sub_23E1FC1DC();
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
  if (swift_dynamicCastMetatype())
  {
    v17 = [swift_getObjCClassFromMetadata() enumMetadata];
    v18 = [v17 displayRepresentation];

    v19 = [a1 locale];
LABEL_9:
    v28 = v19;
    sub_23E1FC15C();

    sub_23E1FC0FC();
    (*(v11 + 8))(v16, v8);
    return sub_23E1FD96C();
  }

  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (swift_dynamicCastMetatype())
  {
    v20 = [swift_getObjCClassFromMetadata() entityMetadata];
    v21 = [v20 displayRepresentation];

    v19 = [a1 locale];
    goto LABEL_9;
  }

  sub_23DE38DA8(0, &unk_27E32D870, 0x277D7C5A0);
  if (swift_dynamicCastMetatype())
  {
    v22 = [swift_getObjCClassFromMetadata() valueType];
    v23 = [v22 wf_displayRepresentation];

    if (!v23)
    {
      v24 = sub_23E1FBFBC();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
      v25 = objc_allocWithZone(MEMORY[0x277D23910]);
      v26 = sub_23DF17088(0x206E776F6E6B6E55, 0xEC00000065707954, 0, 0, v7);
      v27 = objc_allocWithZone(MEMORY[0x277D23948]);
      sub_23DF1718C(v26, 0, 0);
    }

    v19 = [a1 locale];
    goto LABEL_9;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [ObjCClassFromMetadata localizedTypeDescriptionWithContext_];
  sub_23E1FDC1C();

  v32 = [ObjCClassFromMetadata countDescription];
  sub_23E1FDC1C();

  return sub_23E1FD97C();
}

id sub_23DF11F4C(uint64_t a1)
{
  v3 = v1;
  v37 = a1;
  v36 = sub_23E1FD99C();
  v4 = OUTLINED_FUNCTION_6_0(v36);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = sub_23E1FD8FC();
  v13 = OUTLINED_FUNCTION_6_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v43 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v32 - v20;
  v38 = v3;
  v22 = [swift_getObjCClassFromMetadata() allProperties];
  sub_23DE38DA8(0, &qword_280DAE730, 0x277CFC330);
  v23 = sub_23E1FDDEC();

  result = sub_23DE4D8B0(v23);
  v25 = 0;
  v40 = v23 & 0xC000000000000001;
  v41 = result;
  v42 = v23;
  v39 = v23 & 0xFFFFFFFFFFFFFF8;
  v35 = (v6 + 8);
  v32[1] = v15 + 8;
  v33 = (v15 + 16);
  v32[0] = v15 + 32;
  v26 = MEMORY[0x277D84F90];
  for (i = v11; ; v11 = i)
  {
    if (v41 == v25)
    {

      return v26;
    }

    if (v40)
    {
      result = MEMORY[0x23EF04DD0](v25, v42);
    }

    else
    {
      if (v25 >= *(v39 + 16))
      {
        goto LABEL_18;
      }

      result = *(v42 + 8 * v25 + 32);
    }

    v27 = result;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    sub_23E1FE13C();
    sub_23E1FE25C();
    if (v2)
    {
      (*v35)(v11, v36);

      return v26;
    }

    (*v35)(v11, v36);
    (*v33)(v43, v21, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4D558(0, *(v26 + 16) + 1, 1, v26);
      v26 = v30;
    }

    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_23DE4D558(v28 > 1, v29 + 1, 1, v26);
      v26 = v31;
    }

    (*(v15 + 8))(v21, v12);
    *(v26 + 16) = v29 + 1;
    result = (*(v15 + 32))(v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v29, v43, v12);
    ++v25;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DF122E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_23DF123D0(v2, a1);
}

uint64_t sub_23DF1230C(uint64_t a1)
{
  v2 = _s8CacheKeyVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DF12368()
{
  result = qword_27E32D740;
  if (!qword_27E32D740)
  {
    sub_23DE38DA8(255, &unk_280DAE750, 0x277CFC2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D740);
  }

  return result;
}

uint64_t sub_23DF123D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v465 = a2;
  v464 = sub_23E1FD03C();
  v437 = *(v464 - 8);
  v4 = *(v437 + 64);
  v5 = MEMORY[0x28223BE20](v464);
  v470 = v413 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v453 = v413 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v436 = (v413 - v10);
  v473 = sub_23E1FD6CC();
  v457 = *(v473 - 8);
  v11 = *(v457 + 64);
  MEMORY[0x28223BE20](v473);
  v431 = v413 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_23E1FD55C();
  v445 = *(v446 - 8);
  v13 = *(v445 + 64);
  MEMORY[0x28223BE20](v446);
  v444 = v413 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = sub_23E1FD3DC();
  v441 = *(v443 - 8);
  v15 = *(v441 + 64);
  MEMORY[0x28223BE20](v443);
  v442 = (v413 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v448 = sub_23E1FD56C();
  v447 = *(v448 - 8);
  v17 = *(v447 + 64);
  v18 = MEMORY[0x28223BE20](v448);
  v440 = v413 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v430 = v413 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v434 = v413 - v23;
  MEMORY[0x28223BE20](v22);
  v433 = v413 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D8E8, qword_23E22A160);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v469 = v413 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v471 = v413 - v29;
  v475 = sub_23E1FCC8C();
  v449 = *(v475 - 1);
  v30 = *(v449 + 64);
  v31 = MEMORY[0x28223BE20](v475);
  v438 = v413 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v439 = v413 - v33;
  v34 = sub_23E1FD87C();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v474 = v413 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = sub_23E1FD6EC();
  v463 = *(v467 - 1);
  v37 = *(v463 + 64);
  v38 = MEMORY[0x28223BE20](v467);
  v435 = v413 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v466 = v413 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v458 = v413 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v432 = v413 - v45;
  MEMORY[0x28223BE20](v44);
  v454 = v413 - v46;
  v468 = sub_23E1FDA1C();
  v452 = *(v468 - 8);
  v47 = *(v452 + 64);
  MEMORY[0x28223BE20](v468);
  v451 = (v413 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_23E1FD98C();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v450 = v413 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23E1FD52C();
  v53 = *(v52 - 8);
  v461 = v52;
  v462 = v53;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v428 = v413 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v429 = v413 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v456 = v413 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v455 = v413 - v62;
  MEMORY[0x28223BE20](v61);
  v460 = v413 - v63;
  v64 = sub_23E1FD46C();
  v472 = *(v64 - 8);
  v65 = *(v472 + 64);
  v66 = MEMORY[0x28223BE20](v64);
  v68 = v413 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = v413 - v70;
  v72 = MEMORY[0x28223BE20](v69);
  v74 = v413 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = v413 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = (v413 - v79);
  MEMORY[0x28223BE20](v78);
  v82 = v413 - v81;
  v459 = a1;
  v83 = v2;
  v84 = v476;
  result = sub_23E1FE15C();
  v476 = v84;
  if (v84)
  {
    return result;
  }

  v424 = v77;
  *&v421 = v68;
  v422 = v71;
  v86 = v468;
  v423 = v74;
  v426 = v83;
  v87 = v472;
  v89 = v472 + 16;
  v88 = *(v472 + 16);
  v88(v80, v82, v64);
  v90 = (*(v87 + 88))(v80, v64);
  v91 = *MEMORY[0x277D72D50];
  if (v90 == *MEMORY[0x277D72D50])
  {
    (*(v87 + 8))(v82, v64);
    (*(v87 + 96))(v80, v64);
    v92 = *v80;
    v93 = sub_23E1FD43C();
    v94 = swift_projectBox();
    v95 = v465;
    (*(*(v93 - 8) + 16))(v465, v94, v93);
    v96 = *MEMORY[0x277D72B88];
    v97 = sub_23E1FD41C();
    (*(*(v97 - 8) + 104))(v95, v96, v97);
  }

  v425 = v82;
  v427 = v64;
  v98 = MEMORY[0x277D84F90];
  if (v90 == *MEMORY[0x277D72D30])
  {
    v99 = v427;
    v475 = *(v87 + 8);
    v475(v80, v427);
    v477 = v98;
    sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
    sub_23DF175A8();
    v100 = v461;
    sub_23E1FE4EC();
    v101 = v424;
    v88(v424, v425, v99);
    v102 = sub_23E1FE0BC();
    v103 = v476;
    v104 = sub_23DF11F4C(v102);
    if (v103)
    {
      v476 = v103;

      v105 = v101;
      v106 = v427;
      v107 = v475;
      v475(v105, v427);
      (*(v462 + 8))(v460, v100);
      return v107(v425, v106);
    }

    else
    {
      v476 = v104;

      v121 = sub_23E1FE0BC();
      static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v121);

      v122 = v462;
      v123 = v460;
      (*(v462 + 16))(v455, v460, v100);
      v124 = v465;
      sub_23E1FD50C();
      (*(v122 + 8))(v123, v100);
      v475(v425, v427);
      v125 = *MEMORY[0x277D72B68];
      v126 = sub_23E1FD41C();
      return (*(*(v126 - 8) + 104))(v124, v125, v126);
    }
  }

  v420 = v91;
  v417 = v88;
  v419 = v89;
  if (v90 != *MEMORY[0x277D72D28] && v90 != *MEMORY[0x277D72D18] && v90 != *MEMORY[0x277D72D38])
  {
    result = sub_23E1FE74C();
    __break(1u);
    return result;
  }

  v110 = v87 + 8;
  v424 = *(v87 + 8);
  v424(v80, v427);
  sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
  v111 = swift_dynamicCastMetatype();
  v113 = v461;
  v112 = v462;
  v114 = v455;
  if (v111)
  {
    v115 = [swift_getObjCClassFromMetadata() enumMetadata];
    v116 = v451;
    sub_23E1FE11C();
    v117 = sub_23E1FE0BC();
    v118 = v465;
    v119 = v425;
    v120 = v476;
    sub_23E1FE1EC();
    if (v120)
    {
      v476 = v120;

      (*(v452 + 8))(v116, v86);
      return (v424)(v119, v427);
    }

    else
    {

      (*(v452 + 8))(v116, v86);
      v424(v119, v427);
      v130 = *MEMORY[0x277D72B48];
      v131 = sub_23E1FD41C();
      return (*(*(v131 - 8) + 104))(v118, v130, v131);
    }
  }

  v415 = v110;
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (!swift_dynamicCastMetatype())
  {
    sub_23DE38DA8(0, &unk_27E32D8F0, 0x277CFC4C8);
    v132 = swift_dynamicCastMetatype();
    v133 = v465;
    v134 = v459;
    if (v132)
    {
      [swift_getObjCClassFromMetadata() entityContentItemClass];
      swift_getObjCClassMetadata();
      if (!swift_dynamicCastMetatype())
      {
        v475 = sub_23E1FD41C();
        __swift_storeEnumTagSinglePayload(v436, 1, 1, v475);
        v477 = v98;
        sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
        sub_23DF175A8();
        v364 = v429;
        sub_23E1FE4EC();
        v365 = v422;
        v366 = v427;
        v417(v422, v425, v427);
        v367 = sub_23E1FE0BC();
        v368 = v476;
        v369 = sub_23DF11F4C(v367);
        if (v368)
        {
          v476 = v368;

          v370 = v365;
          v371 = v424;
          v424(v370, v366);
          (*(v462 + 8))(v364, v113);
          v371(v425, v366);
          v372 = v436;
          result = __swift_getEnumTagSinglePayload(v436, 1, v475);
          if (result == 1)
          {
            return result;
          }
        }

        else
        {
          v476 = v369;

          v394 = sub_23E1FE0BC();
          static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v394);

          v395 = v462;
          (*(v462 + 16))(v455, v364, v113);
          v396 = v465;
          sub_23E1FD50C();
          (*(v395 + 8))(v364, v113);
          v424(v425, v366);
          v397 = v475;
          (*(*(v475 - 1) + 104))(v396, *MEMORY[0x277D72B68], v475);
          v372 = v436;
          result = __swift_getEnumTagSinglePayload(v436, 1, v397);
          if (result == 1)
          {
            return result;
          }
        }

        return sub_23DE5CB68(v372, &qword_27E32BFE0, &unk_23E22A000);
      }

      v135 = v436;
      v136 = v476;
      sub_23DF123D0(v134);
      if (v136)
      {
        v476 = v136;
        return (v424)(v425, v427);
      }

      else
      {
        v424(v425, v427);
        v385 = sub_23E1FD41C();
        __swift_storeEnumTagSinglePayload(v135, 0, 1, v385);
        return (*(*(v385 - 8) + 32))(v133, v135, v385);
      }
    }

    else
    {
      sub_23DE38DA8(0, &unk_27E32D870, 0x277D7C5A0);
      if (swift_dynamicCastMetatype())
      {
        v290 = [swift_getObjCClassFromMetadata() valueType];
        v291 = [v290 identifier];

        sub_23E1FDC1C();
        v292 = sub_23E1FE0BC();
        static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v292);

        sub_23E1FD53C();
        v424(v425, v427);
        v293 = *MEMORY[0x277D72B70];
        v294 = sub_23E1FD41C();
        return (*(*(v294 - 8) + 104))(v133, v293, v294);
      }

      else
      {
        v477 = v98;
        sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
        sub_23DF175A8();
        v386 = v428;
        sub_23E1FE4EC();
        v387 = v421;
        v388 = v425;
        v389 = v427;
        v417(v421, v425, v427);
        v390 = sub_23E1FE0BC();
        v391 = v476;
        v392 = sub_23DF11F4C(v390);
        v476 = v391;
        if (v391)
        {

          v393 = v424;
          v424(v387, v389);
          (*(v462 + 8))(v386, v461);
          return v393(v388, v389);
        }

        else
        {
          v475 = v392;

          v398 = sub_23E1FE0BC();
          static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v398);

          v400 = v461;
          v399 = v462;
          (*(v462 + 16))(v114, v386, v461);
          v401 = v465;
          sub_23E1FD50C();
          (*(v399 + 8))(v386, v400);
          v424(v388, v389);
          v402 = *MEMORY[0x277D72B68];
          v403 = sub_23E1FD41C();
          return (*(*(v403 - 8) + 104))(v401, v402, v403);
        }
      }
    }
  }

  v413[0] = swift_getObjCClassFromMetadata();
  v422 = [v413[0] entityMetadata];
  if ([v422 isTransient])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D920, &qword_23E22A188);
    v127 = *(v112 + 72);
    v128 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_23E222340;
    sub_23E1FD51C();
    v477 = v129;
  }

  else
  {
    v477 = v98;
  }

  sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
  sub_23DF175A8();
  sub_23E1FE4EC();
  v137 = v476;
  v138 = [v422 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  v140 = v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D900, &unk_23E22A178);
  v142 = sub_23DF17560(&unk_280DAE2C0, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v413[3] = v140;
  v413[2] = v141;
  v413[1] = v142;
  v143 = sub_23E1FDAAC();

  v145 = 0;
  v147 = v143 + 64;
  v146 = *(v143 + 64);
  v428 = v143;
  v148 = 1 << *(v143 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = v149 & v146;
  v151 = (v148 + 63) >> 6;
  v452 = *MEMORY[0x277D7A4E0];
  v451 = (v437 + 8);
  v436 = (v463 + 16);
  v429 = (v463 + 8);
  v437 = v463 + 32;
  *&v144 = 136315394;
  v414 = v144;
  v468 = MEMORY[0x277D84F90];
  v152 = v453;
  v418 = v151;
  *&v421 = v143 + 64;
LABEL_31:
  v153 = v145;
  v154 = v464;
  while (v150)
  {
    v145 = v153;
LABEL_37:
    v155 = __clz(__rbit64(v150));
    v150 &= v150 - 1;
    v156 = (v145 << 9) | (8 * v155);
    v157 = *(*(v428 + 7) + v156);
    v158 = *(*(v428 + 6) + v156);
    swift_unknownObjectRetain_n();
    v159 = v158;
    sub_23E1FD6DC();
    if (!v137)
    {
      (*v436)(v432, v454, v467);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D618(0, *(v468 + 16) + 1, 1, v468);
        v468 = v186;
      }

      v182 = *(v468 + 16);
      v181 = *(v468 + 24);
      if (v182 >= v181 >> 1)
      {
        sub_23DE4D618(v181 > 1, v182 + 1, 1, v468);
        v468 = v187;
      }

      swift_unknownObjectRelease();
      v183 = v463;
      v184 = v467;
      (*(v463 + 8))(v454, v467);
      v185 = v468;
      *(v468 + 16) = v182 + 1;
      (*(v183 + 32))(v185 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v182, v432, v184);
      v147 = v421;
      v151 = v418;
      goto LABEL_31;
    }

    sub_23E1FCB9C();
    v160 = v159;
    v161 = v152;
    v162 = v160;
    v163 = v137;
    v164 = sub_23E1FD02C();
    v165 = sub_23E1FE1BC();
    v166 = v162;

    v460 = v164;
    if (os_log_type_enabled(v164, v165))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v476 = v137;
      v169 = v168;
      v170 = swift_slowAlloc();
      v477 = v170;
      *v167 = v414;
      v416 = v166;
      v171 = sub_23E1FDC1C();
      v173 = sub_23DE56B40(v171, v172, &v477);

      *(v167 + 4) = v173;
      v174 = v453;
      *(v167 + 12) = 2112;
      v175 = v476;
      v176 = v476;
      v177 = _swift_stdlib_bridgeErrorToNSError();
      *(v167 + 14) = v177;
      *v169 = v177;
      v178 = v165;
      v179 = v460;
      _os_log_impl(&dword_23DE30000, v460, v178, "Failed to construct system protocol: %s due to %@", v167, 0x16u);
      sub_23DE5CB68(v169, &unk_27E32C190, &qword_23E224B70);
      MEMORY[0x23EF074C0](v169, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v170);
      MEMORY[0x23EF074C0](v170, -1, -1);
      v180 = v167;
      v152 = v174;
      MEMORY[0x23EF074C0](v180, -1, -1);

      swift_unknownObjectRelease();
      v154 = v464;
      (*v451)(v174, v464);
      v137 = 0;
      v153 = v145;
      v147 = v421;
      v151 = v418;
    }

    else
    {
      swift_unknownObjectRelease();

      v154 = v464;
      (*v451)(v161, v464);
      v137 = 0;
      v153 = v145;
      v147 = v421;
      v151 = v418;
      v152 = v161;
    }
  }

  while (1)
  {
    v145 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v145 >= v151)
    {
      break;
    }

    v150 = *(v147 + 8 * v145);
    ++v153;
    if (v150)
    {
      goto LABEL_37;
    }
  }

  v188 = sub_23DF17234(v422);
  if (!v188)
  {
    v188 = MEMORY[0x277D84F90];
  }

  v460 = v188;
  v189 = sub_23DE4D8B0(v188);
  if (v189)
  {
    if (v189 >= 1)
    {
      v191 = 0;
      v453 = (v460 & 0xC000000000000001);
      LODWORD(v432) = *MEMORY[0x277D73010];
      v428 = (v463 + 104);
      *&v190 = 138412546;
      v421 = v190;
      v454 = v189;
      while (1)
      {
        v192 = v453 ? MEMORY[0x23EF04DD0](v191, v460) : *(v460 + v191 + 4);
        v193 = v192;
        v194 = [v192 name];
        sub_23E1FDC1C();

        v195 = [v193 version];
        sub_23E1FDC1C();

        sub_23E1FD88C();
        if (!v137)
        {
          break;
        }

        v196 = v470;
        sub_23E1FCB9C();
        v197 = v193;
        v198 = v137;
        v199 = sub_23E1FD02C();
        v200 = sub_23E1FE1BC();

        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          *v201 = v421;
          *(v201 + 4) = v197;
          *v202 = v197;
          *(v201 + 12) = 2112;
          v203 = v197;
          v204 = v137;
          v205 = _swift_stdlib_bridgeErrorToNSError();
          *(v201 + 14) = v205;
          v202[1] = v205;
          _os_log_impl(&dword_23DE30000, v199, v200, "Failed to construct assistant schema conformance protocol: %@ due to %@", v201, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C190, &qword_23E224B70);
          swift_arrayDestroy();
          MEMORY[0x23EF074C0](v202, -1, -1);
          v206 = v201;
          v196 = v470;
          MEMORY[0x23EF074C0](v206, -1, -1);
        }

        else
        {
        }

        v150 = v473;
        v209 = v454;

        (*v451)(v196, v154);
        v137 = 0;
LABEL_71:
        if (v209 == ++v191)
        {
          goto LABEL_74;
        }
      }

      v476 = 0;
      sub_23DE5C91C(v193, &selRef_domain);
      if (v207)
      {
LABEL_58:
        v208 = v466;
      }

      else
      {
        v210 = sub_23E1FCA5C();
        v211 = [v193 name];
        v212 = sub_23E1FDC1C();
        v214 = v213;

        if (*(v210 + 16))
        {
          v215 = sub_23DF1E154(v212, v214);
          v217 = v216;

          if (v217)
          {
            v218 = (*(v210 + 56) + 16 * v215);
            v219 = *v218;
            v220 = v218[1];
            sub_23E1FB7BC();

            goto LABEL_58;
          }
        }

        else
        {
        }

        v208 = v466;
        sub_23E1FD90C();
      }

      v221 = v458;
      sub_23E1FD91C();
      v222 = v467;
      (*v428)(v221, v432, v467);
      (*v436)(v208, v221, v222);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D618(0, *(v468 + 16) + 1, 1, v468);
        v468 = v229;
      }

      v137 = v476;
      v150 = v473;
      v224 = *(v468 + 16);
      v223 = *(v468 + 24);
      v154 = v464;
      if (v224 >= v223 >> 1)
      {
        sub_23DE4D618(v223 > 1, v224 + 1, 1, v468);
        v468 = v230;
      }

      v225 = v463;
      v226 = v221;
      v227 = v467;
      (*(v463 + 8))(v226, v467);
      v228 = v468;
      *(v468 + 16) = v224 + 1;
      (*(v225 + 32))(v228 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v224, v466, v227);
      v209 = v454;
      goto LABEL_71;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    sub_23DE4D598(0, *(v469 + 16) + 1, 1, v469);
    v469 = v404;
    goto LABEL_136;
  }

  v150 = v473;
LABEL_74:

  if ([v422 isTransient])
  {
    v231 = v435;
    (*(v463 + 104))(v435, *MEMORY[0x277D73018], v467);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4D618(0, *(v468 + 16) + 1, 1, v468);
      v468 = v406;
    }

    v233 = *(v468 + 16);
    v232 = *(v468 + 24);
    if (v233 >= v232 >> 1)
    {
      sub_23DE4D618(v232 > 1, v233 + 1, 1, v468);
      v468 = v407;
    }

    v234 = v467;
    v235 = v468;
    *(v468 + 16) = v233 + 1;
    (*(v463 + 32))(v235 + ((*(v463 + 80) + 32) & ~*(v463 + 80)) + *(v463 + 72) * v233, v231, v234);
  }

  v466 = [v422 transferableContentTypes];
  if (v466)
  {
    v476 = v137;
    v236 = [v466 importableTypes];
    v464 = sub_23DE38DA8(0, &qword_280DAE3D8, 0x277D237C8);
    v237 = sub_23E1FDDEC();

    v150 = sub_23DE4D8B0(v237);
    v238 = 0;
    v474 = (v237 & 0xC000000000000001);
    v137 = v237 & 0xFFFFFFFFFFFFFF8;
    v470 = MEMORY[0x277D84F90];
    v467 = (v449 + 32);
    while (v150 != v238)
    {
      if (v474)
      {
        v239 = MEMORY[0x23EF04DD0](v238, v237);
      }

      else
      {
        if (v238 >= *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_164;
        }

        v239 = *(v237 + 8 * v238 + 32);
      }

      v240 = v239;
      if (__OFADD__(v238, 1))
      {
        goto LABEL_163;
      }

      v241 = [v239 contentType];
      sub_23E1FDC1C();

      v242 = v471;
      sub_23E1FCBFC();

      v243 = v242;
      v244 = v242;
      v245 = v475;
      if (__swift_getEnumTagSinglePayload(v244, 1, v475) == 1)
      {
        sub_23DE5CB68(v243, &qword_27E32D8E8, qword_23E22A160);
        ++v238;
      }

      else
      {
        v246 = *v467;
        (*v467)(v439, v243, v245);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D5D8(0, *(v470 + 16) + 1, 1, v470);
          v470 = v250;
        }

        v248 = *(v470 + 16);
        v247 = *(v470 + 24);
        if (v248 >= v247 >> 1)
        {
          sub_23DE4D5D8(v247 > 1, v248 + 1, 1, v470);
          v470 = v251;
        }

        v249 = v470;
        *(v470 + 16) = v248 + 1;
        v246(v249 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v248, v439, v475);
        ++v238;
      }
    }

    v252 = [v466 exportableTypes];
    v253 = sub_23E1FDDEC();

    v150 = sub_23DE4D8B0(v253);
    v137 = 0;
    v474 = (v253 & 0xC000000000000001);
    v471 = MEMORY[0x277D84F90];
    while (v150 != v137)
    {
      if (v474)
      {
        v254 = MEMORY[0x23EF04DD0](v137, v253);
      }

      else
      {
        if (v137 >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_166;
        }

        v254 = *(v253 + 8 * v137 + 32);
      }

      v255 = v254;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_165;
      }

      v256 = [v254 contentType];
      sub_23E1FDC1C();

      v257 = v469;
      sub_23E1FCBFC();

      v258 = v475;
      if (__swift_getEnumTagSinglePayload(v257, 1, v475) == 1)
      {
        sub_23DE5CB68(v257, &qword_27E32D8E8, qword_23E22A160);
        ++v137;
      }

      else
      {
        v259 = v257;
        v260 = *v467;
        (*v467)(v438, v259, v258);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D5D8(0, *(v471 + 16) + 1, 1, v471);
          v471 = v264;
        }

        v262 = *(v471 + 16);
        v261 = *(v471 + 24);
        if (v262 >= v261 >> 1)
        {
          sub_23DE4D5D8(v261 > 1, v262 + 1, 1, v471);
          v471 = v265;
        }

        v263 = v471;
        *(v471 + 16) = v262 + 1;
        v260(v263 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v262, v438, v475);
        ++v137;
      }
    }

    v266 = v470;
    v267 = MEMORY[0x277D72CC0];
    v268 = MEMORY[0x277D72E68];
    v269 = MEMORY[0x277D72AB8];
    if (*(v470 + 16))
    {
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
      v271 = swift_allocBox();
      v273 = v272;
      v274 = *(v270 + 48);
      v275 = sub_23E1FD43C();
      v276 = swift_allocBox();
      (*(*(v275 - 8) + 104))(v277, *v267, v275);
      *v273 = v276;
      (*(v472 + 104))(v273, v420, v427);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v278 = sub_23E1FD6BC();
      v279 = *(v278 - 8);
      v280 = *(v279 + 72);
      v281 = (*(v279 + 80) + 32) & ~*(v279 + 80);
      v282 = swift_allocObject();
      *(v282 + 16) = xmmword_23E222340;
      *(v282 + v281) = v266;
      (*(v279 + 104))(v282 + v281, *v268, v278);
      *(v273 + v274) = v282;
      v269 = MEMORY[0x277D72AB8];
      v283 = v442;
      *v442 = v271;
      (*(v441 + 104))(v283, *v269, v443);
      (*(v445 + 104))(v444, *MEMORY[0x277D72E10], v446);
      v284 = v433;
      sub_23E1FD54C();
      sub_23DE4D598(0, 1, 1, MEMORY[0x277D84F90]);
      v287 = *(v285 + 16);
      v286 = *(v285 + 24);
      v469 = v285;
      if (v287 >= v286 >> 1)
      {
        sub_23DE4D598(v286 > 1, v287 + 1, 1, v469);
        v469 = v408;
      }

      v150 = v473;
      v288 = v471;
      v289 = v469;
      *(v469 + 16) = v287 + 1;
      (*(v447 + 32))(v289 + ((*(v447 + 80) + 32) & ~*(v447 + 80)) + *(v447 + 72) * v287, v284, v448);
    }

    else
    {

      v469 = MEMORY[0x277D84F90];
      v150 = v473;
      v288 = v471;
    }

    if (*(v288 + 16))
    {
      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
      v475 = swift_allocBox();
      v296 = v269;
      v298 = v297;
      v299 = v268;
      v300 = *(v295 + 48);
      v301 = sub_23E1FD43C();
      v302 = swift_allocBox();
      (*(*(v301 - 8) + 104))(v303, *MEMORY[0x277D72CC0], v301);
      *v298 = v302;
      (*(v472 + 104))(v298, v420, v427);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v304 = sub_23E1FD6BC();
      v305 = *(v304 - 8);
      v306 = *(v305 + 72);
      v307 = (*(v305 + 80) + 32) & ~*(v305 + 80);
      v308 = swift_allocObject();
      *(v308 + 16) = xmmword_23E222340;
      *(v308 + v307) = v288;
      (*(v305 + 104))(v308 + v307, *v299, v304);
      *(v298 + v300) = v308;
      v309 = v442;
      *v442 = v475;
      (*(v441 + 104))(v309, *v296, v443);
      (*(v445 + 104))(v444, *MEMORY[0x277D72E08], v446);
      v310 = v434;
      sub_23E1FD54C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D598(0, *(v469 + 16) + 1, 1, v469);
        v469 = v409;
      }

      v312 = *(v469 + 16);
      v311 = *(v469 + 24);
      v137 = v476;
      v150 = v473;
      v313 = v456;
      v314 = v448;
      v315 = v447;
      if (v312 >= v311 >> 1)
      {
        sub_23DE4D598(v311 > 1, v312 + 1, 1, v469);
        v469 = v410;
      }

      v316 = v469;
      *(v469 + 16) = v312 + 1;
      (*(v315 + 32))(v316 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v312, v310, v314);
      goto LABEL_125;
    }

    v137 = v476;
  }

  else
  {
    v469 = MEMORY[0x277D84F90];
  }

  v313 = v456;
LABEL_125:
  v317 = [v422 systemProtocolMetadata];
  v318 = sub_23E1FDAAC();

  v319 = sub_23DE4693C(*MEMORY[0x277D236F8], v318);

  v320 = MEMORY[0x277D72AD0];
  if (v319)
  {
    objc_opt_self();
    v321 = swift_dynamicCastObjCClass();
    if (v321 && ([v321 structuredDataRepresentations] & 0x200) != 0)
    {
      v322 = v427;
      v323 = swift_allocBox();
      v325 = v324;
      v326 = sub_23E1FD43C();
      v327 = swift_allocBox();
      (*(*(v326 - 8) + 104))(v328, *MEMORY[0x277D72CD8], v326);
      *v325 = v327;
      (*(v472 + 104))(v325, v420, v322);
      v329 = v442;
      *v442 = v323;
      (*(v441 + 104))(v329, *v320, v443);
      (*(v445 + 104))(v444, *MEMORY[0x277D72E08], v446);
      v330 = v430;
      sub_23E1FD54C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D598(0, *(v469 + 16) + 1, 1, v469);
        v469 = v411;
      }

      v332 = *(v469 + 16);
      v331 = *(v469 + 24);
      v150 = v473;
      v313 = v456;
      if (v332 >= v331 >> 1)
      {
        sub_23DE4D598(v331 > 1, v332 + 1, 1, v469);
        v469 = v412;
      }

      swift_unknownObjectRelease();
      v333 = v469;
      *(v469 + 16) = v332 + 1;
      (*(v447 + 32))(v333 + ((*(v447 + 80) + 32) & ~*(v447 + 80)) + *(v447 + 72) * v332, v330, v448);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v334 = [v422 systemProtocolMetadata];
  v335 = sub_23E1FDAAC();

  v336 = sub_23DE4693C(*MEMORY[0x277D23700], v335);

  if (!v336)
  {
    v348 = v461;
    v347 = v462;
    goto LABEL_140;
  }

  swift_unknownObjectRelease();
  v337 = v427;
  v338 = swift_allocBox();
  v340 = v339;
  v341 = sub_23E1FD43C();
  v342 = swift_allocBox();
  (*(*(v341 - 8) + 104))(v343, *MEMORY[0x277D72CA8], v341);
  *v340 = v342;
  (*(v472 + 104))(v340, v420, v337);
  v344 = v442;
  *v442 = v338;
  (*(v441 + 104))(v344, *v320, v443);
  (*(v445 + 104))(v444, *MEMORY[0x277D72E08], v446);
  sub_23E1FD54C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_168;
  }

LABEL_136:
  v346 = *(v469 + 16);
  v345 = *(v469 + 24);
  v348 = v461;
  v347 = v462;
  v313 = v456;
  if (v346 >= v345 >> 1)
  {
    sub_23DE4D598(v345 > 1, v346 + 1, 1, v469);
    v469 = v405;
  }

  v349 = v469;
  *(v469 + 16) = v346 + 1;
  (*(v447 + 32))(v349 + ((*(v447 + 80) + 32) & ~*(v447 + 80)) + *(v447 + 72) * v346, v440, v448);
LABEL_140:
  sub_23DF172A4([v413[0] entityMetadata]);
  v350 = sub_23E1FD9CC();
  v351 = v137;
  if (v137)
  {
    v476 = v137;

    (*(v347 + 8))(v313, v348);
    v424(v425, v427);
  }

  else
  {
    v352 = v350;

    v353 = *(v352 + 16);
    if (v353)
    {
      v476 = 0;
      v477 = MEMORY[0x277D84F90];
      sub_23DE640D4();
      v354 = v477;
      v475 = sub_23E1FD9DC();
      v355 = *(v475 - 1);
      v356 = *(v355 + 16);
      v473 = v355 + 16;
      v474 = v356;
      v357 = *(v355 + 80);
      v467 = v352;
      v358 = v352 + ((v357 + 32) & ~v357);
      v472 = *(v355 + 72);
      LODWORD(v471) = *MEMORY[0x277D72FE0];
      v359 = (v457 + 104);
      v470 = v457 + 32;
      v360 = v427;
      v361 = v431;
      do
      {
        (v474)(v361, v358, v475);
        (*v359)(v361, v471, v150);
        v477 = v354;
        v362 = v150;
        v363 = *(v354 + 16);
        if (v363 >= *(v354 + 24) >> 1)
        {
          sub_23DE640D4();
          v360 = v427;
          v354 = v477;
        }

        *(v354 + 16) = v363 + 1;
        (*(v457 + 32))(v354 + ((*(v457 + 80) + 32) & ~*(v457 + 80)) + *(v457 + 72) * v363, v361, v362);
        v358 += v472;
        --v353;
        v150 = v362;
      }

      while (v353);

      v351 = v476;
    }

    else
    {

      v360 = v427;
    }

    v373 = v423;
    v374 = v425;
    v417(v423, v425, v360);
    v375 = sub_23E1FE0BC();
    v376 = sub_23DF11F4C(v375);
    if (v351)
    {
      v476 = v351;

      v377 = v427;
      v378 = v424;
      v424(v373, v427);
      (*(v462 + 8))(v456, v461);
      return v378(v374, v377);
    }

    else
    {
      v476 = v376;

      v379 = sub_23E1FE0BC();
      static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v379);

      v381 = v461;
      v380 = v462;
      v382 = v456;
      (*(v462 + 16))(v455, v456, v461);
      sub_23E1FD50C();

      (*(v380 + 8))(v382, v381);
      v424(v374, v427);
      v383 = *MEMORY[0x277D72B68];
      v384 = sub_23E1FD41C();
      return (*(*(v384 - 8) + 104))(v465, v383, v384);
    }
  }
}

BOOL static WFContentItem.isEffectiveBundleId(in:)(uint64_t a1)
{
  sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
  if (swift_dynamicCastMetatype())
  {
    v2 = [swift_getObjCClassFromMetadata() enumMetadata];
    v3 = [v2 effectiveBundleIdentifiers];

    v4 = [v3 firstObject];
    if (v4)
    {
      sub_23E1FE49C();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_23DE38DA8(0, &unk_27E32D880, 0x277D237E0);
      if (OUTLINED_FUNCTION_6_11())
      {
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_15;
  }

  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (!swift_dynamicCastMetatype())
  {
    return 0;
  }

  v5 = [swift_getObjCClassFromMetadata() entityMetadata];
  v6 = [v5 effectiveBundleIdentifiers];

  v7 = [v6 firstObject];
  if (v7)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
LABEL_15:
    sub_23DE5CB68(&v17, &qword_27E32C320, &unk_23E224B40);
    return 0;
  }

  sub_23DE38DA8(0, &unk_27E32D880, 0x277D237E0);
  if ((OUTLINED_FUNCTION_6_11() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v8 = [v14 bundleIdentifier];
  v9 = sub_23E1FDC1C();
  v11 = v10;

  v12 = sub_23DF114B4(v9, v11, a1);

  return v12;
}

void sub_23DF15C60(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = &v86 - v6;
  v7 = sub_23E1FD6FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_23E1FD71C();
  v114 = *(v129 - 8);
  v10 = *(v114 + 64);
  v11 = MEMORY[0x28223BE20](v129);
  v127 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v86 - v13;
  v125 = sub_23E1FD8FC();
  v14 = *(v125 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v125);
  v110 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v124 = &v86 - v18;
  v93 = sub_23E1FD99C();
  v19 = *(v93 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v93);
  v109 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v88 = &v86 - v23;
  v118 = sub_23E1FD3DC();
  v24 = *(v118 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v118);
  v108 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v119 = &v86 - v28;
  v113 = sub_23E1FC0EC();
  v87 = *(v113 - 8);
  v29 = *(v87 + 64);
  v30 = MEMORY[0x28223BE20](v113);
  v107 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v115 = &v86 - v32;
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  v33 = swift_dynamicCastMetatype();
  v117 = v2;
  v99 = v3;
  v122 = v19;
  v123 = v14;
  v121 = v24;
  if (v33)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [ObjCClassFromMetadata queryMetadata];
    v36 = [ObjCClassFromMetadata propertyBuildersForFilteringUsingQuery_];
    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      v38 = v36;
      sub_23DE38DA8(0, &unk_280DAE690, 0x277CFC338);
      v39 = sub_23E1FDDEC();
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v42 = sub_23DE4D8B0(v39);
    if (v42)
    {
      v43 = v42;
      v128[0] = v37;
      sub_23E1FE63C();
      if (v43 < 0)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v44 = 0;
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x23EF04DD0](v44, v39);
        }

        else
        {
          v45 = *(v39 + 8 * v44 + 32);
        }

        v46 = v45;
        ++v44;
        v47 = [v45 build];

        sub_23E1FE61C();
        v48 = *(v128[0] + 16);
        sub_23E1FE64C();
        sub_23E1FE65C();
        sub_23E1FE62C();
      }

      while (v43 != v44);

      v41 = v128[0];
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v40 = [swift_getObjCClassFromMetadata() properties];
    sub_23DE38DA8(0, &qword_280DAE730, 0x277CFC330);
    v41 = sub_23E1FDDEC();
  }

  v49 = MEMORY[0x277D84F90];
  sub_23E1FC0DC();
  v128[0] = v49;
  v50 = sub_23DE4D8B0(v41);
  for (i = 0; v50 != i; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x23EF04DD0](i, v41);
    }

    else
    {
      if (i >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v52 = *(v41 + 8 * i + 32);
    }

    v53 = v52;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if ([v52 isFilterable])
    {
      sub_23E1FE61C();
      v54 = *(v128[0] + 16);
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
    }

    else
    {
    }
  }

  v55 = v128[0];
  v95 = sub_23DE4D8B0(v128[0]);
  v56 = 0;
  v92 = v55 & 0xC000000000000001;
  v96 = v55;
  v90 = v55 + 32;
  v91 = (v122 + 8);
  v106 = (v121 + 16);
  v105 = (v123 + 16);
  v104 = (v87 + 16);
  v103 = (v114 + 16);
  v102 = v114 + 8;
  v101 = (v123 + 8);
  v100 = v114 + 32;
  v89 = (v121 + 8);
  v57 = MEMORY[0x277D84F90];
  v58 = &selRef_kilocalorieUnit;
  v59 = v99;
  v60 = v88;
  v61 = v124;
  while (1)
  {
    if (v56 == v95)
    {
      (*(v87 + 8))(v115, v113);

      return;
    }

    if (v92)
    {
      v62 = MEMORY[0x23EF04DD0](v56, v96);
    }

    else
    {
      if (v56 >= *(v96 + 16))
      {
        goto LABEL_51;
      }

      v62 = *(v90 + 8 * v56);
    }

    v63 = v62;
    if (__OFADD__(v56++, 1))
    {
      goto LABEL_50;
    }

    sub_23E1FE13C();
    sub_23E1FE27C();
    sub_23E1FE26C();
    if (v59)
    {
      break;
    }

    (*v91)(v60, v93);
    v65 = sub_23E1FC8CC();
    v66 = *(v65 + 16);
    if (v66)
    {
      v98 = v56;
      v99 = 0;
      v97 = v65;
      v67 = v65 + 32;
      v116 = v63;
      do
      {
        v121 = v67;
        v122 = v66;
        sub_23DE5DA0C(v67, v128);
        v68 = [v63 v58[295]];
        sub_23E1FDC1C();
        v120 = v69;

        sub_23DE5C91C(v63, &selRef_displayName);
        v123 = v57;
        if (!v70)
        {
          v71 = [v63 v58[295]];
          sub_23E1FDC1C();
        }

        v72 = *v106;
        v73 = v118;
        v74 = v119;
        (*v106)(v108, v119, v118);
        sub_23E1FD8EC();
        sub_23E1FE13C();
        (*v105)(v110, v61, v125);
        v75 = v128[4];
        __swift_project_boxed_opaque_existential_0(v128, v128[3]);
        v76 = *(v75 + 8);
        v77 = sub_23E1FC89C();
        v78 = v112;
        v72(v112, v74, v73);
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v73);
        sub_23DE83F48(v78, v77, v111);
        sub_23DE5CB68(v78, &qword_27E32D660, &qword_23E224C60);
        (*v104)(v107, v115, v113);
        v79 = v126;
        sub_23E1FD70C();
        (*v103)(v127, v79, v129);
        v57 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D38C(0, *(v57 + 16) + 1, 1, v57);
          v57 = v84;
        }

        v81 = *(v57 + 16);
        v80 = *(v57 + 24);
        v58 = &selRef_kilocalorieUnit;
        v63 = v116;
        if (v81 >= v80 >> 1)
        {
          sub_23DE4D38C(v80 > 1, v81 + 1, 1, v57);
          v57 = v85;
        }

        v82 = v114;
        v83 = v129;
        (*(v114 + 8))(v126, v129);
        (*v101)(v124, v125);
        *(v57 + 16) = v81 + 1;
        (*(v82 + 32))(v57 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81, v127, v83);
        __swift_destroy_boxed_opaque_existential_0(v128);
        v67 = v121 + 40;
        v66 = v122 - 1;
      }

      while (v122 != 1);

      v59 = v99;
      v60 = v88;
      v56 = v98;
    }

    else
    {
    }

    (*v89)(v119, v118);
  }

  (*v91)(v60, v93);
  (*(v87 + 8))(v115, v113);
}

uint64_t sub_23DF16900(uint64_t a1, uint64_t a2)
{
  static WFContentItem.toolkitTypeDefinition(context:)(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t WFShazamMediaContentItem.resolveContentItem(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v2[6] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FD46C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64);
  v2[9] = OUTLINED_FUNCTION_42();
  v9 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  v2[10] = OUTLINED_FUNCTION_42();
  v12 = sub_23E1FD82C();
  v2[11] = v12;
  v13 = *(v12 - 8);
  v2[12] = v13;
  v14 = *(v13 + 64);
  v2[13] = OUTLINED_FUNCTION_42();

  return MEMORY[0x2822009F8](sub_23DF16AFC, 0, 0);
}

uint64_t sub_23DF16AFC()
{
  v1 = v0[10];
  v2 = v0[4];
  sub_23E1FD9FC();
  sub_23E1FD79C();
  v4 = v3;
  v6 = v5;
  v7 = *(MEMORY[0x277D7C000] + 4);
  v8 = v2;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_23DF16BCC;
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[4];
  v13.n128_u64[0] = v4;
  v14.n128_u64[0] = v6;

  return MEMORY[0x2821E47F0](v10, v12, v11, v13, v14);
}

uint64_t sub_23DF16BCC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23DF16F60;
  }

  else
  {
    v3 = sub_23DF16CE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DF16CE0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_allocObject();
  v7 = *MEMORY[0x277D7A338];
  v6[2] = sub_23E1FDC1C();
  v6[3] = v8;
  *(v0 + 16) = v4;
  swift_getMetatypeMetadata();
  v6[4] = sub_23E1FDC7C();
  v6[5] = v9;
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277D72D28], v3);
  sub_23DF17370([v5 media]);
  if (!v10)
  {
    v11 = [*(v0 + 32) name];
    sub_23E1FDC1C();
  }

  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v23 = *(v0 + 80);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v22 = *(v0 + 24);
  sub_23E1FD31C();
  v21 = swift_allocBox();
  v17 = sub_23E1FD3AC();
  sub_23E1FDABC();
  (*(v12 + 16))(v16, v13, v14);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v14);
  sub_23E1FD30C();
  (*(v12 + 8))(v13, v14);
  *v22 = v21;
  v18 = *MEMORY[0x277D72A38];
  (*(*(v17 - 8) + 104))();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23DF16F60()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_23DF16FEC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DE662F0;

  return WFShazamMediaContentItem.resolveContentItem(with:)(a1);
}

id sub_23DF17088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_23E1FDBDC();

  if (a4)
  {
    v10 = sub_23E1FDBDC();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23E1FBFBC();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v11) != 1)
  {
    v12 = sub_23E1FBF6C();
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v13 = [v6 initWithKey:v9 table:v10 bundleURL:v12];

  return v13;
}

id sub_23DF1718C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_23DE38DA8(0, &unk_27E32D8D8, 0x277D23910);
    v7 = sub_23E1FDDCC();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithName:a1 numericFormat:a2 synonyms:v7];

  return v8;
}

uint64_t sub_23DF17234(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_23DE38DA8(0, &unk_280DAE298, 0x277D23768);
  v3 = sub_23E1FDDEC();

  return v3;
}

uint64_t sub_23DF172A4(void *a1)
{
  v2 = [a1 availabilityAnnotations];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for LNPlatformName(0);
  sub_23DE38DA8(0, &unk_280DAE338, 0x277D23790);
  sub_23DF17560(qword_280DAE3A0, type metadata accessor for LNPlatformName);
  v3 = sub_23E1FDAAC();

  return v3;
}

uint64_t sub_23DF17370(void *a1)
{
  v2 = [a1 shazamID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

void sub_23DF1742C()
{
  sub_23E1FD46C();
  if (v0 <= 0x3F)
  {
    sub_23DF174B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DF174B0()
{
  if (!qword_27E32D8A0)
  {
    sub_23DE38DA8(255, &unk_27E32D8A8, 0x277D7A048);
    v0 = sub_23E1FE42C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E32D8A0);
    }
  }
}

uint64_t sub_23DF17560(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DF175A8()
{
  result = qword_280DAE420;
  if (!qword_280DAE420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D6E0, &qword_23E223788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE420);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return swift_dynamicCast();
}

id sub_23DF17658(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for SleepDeviceAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DF177D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDeviceAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DF1782C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDeviceAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DF17888(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for DisplaySleepAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DF17A00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplaySleepAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DF17A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplaySleepAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WFAskLLMAction.populateSuccessfulRunEventProperties(_:)(void *a1)
{
  v118 = a1;
  v115 = sub_23E1FBBDC();
  v2 = OUTLINED_FUNCTION_6_0(v115);
  v114 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v113 = v7 - v6;
  v8 = sub_23E1FD03C();
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v121 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v108 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v108[0] = v108 - v18;
  MEMORY[0x28223BE20](v17);
  v110 = v108 - v19;
  v119 = sub_23E1FBC1C();
  v20 = OUTLINED_FUNCTION_6_0(v119);
  v112 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v117 = v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v108 - v26;
  v28 = sub_23E1FCA9C();
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15();
  v36 = v35 - v34;
  v37 = sub_23E1FBA7C();
  v38 = OUTLINED_FUNCTION_6_0(v37);
  v116 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15();
  v44 = v43 - v42;
  sub_23DE9E2E4();
  if (v125)
  {
    v108[1] = v37;
    v109 = v1;
    v111 = v8;
    sub_23DE36C8C(&v124, &v126);
    v120 = v44;
    sub_23E1FBA8C();
    __swift_project_boxed_opaque_existential_0(&v126, v127);
    sub_23E1FBA0C();
    v50 = sub_23E1FCA8C();
    v52 = v51;
    (*(v31 + 8))(v36, v28);
    v53 = v118;
    sub_23DF189D8(v50, v52, v118, &selRef_setBaseModel_);
    v54 = v111;
    v55 = sub_23E1FBA6C();
    __swift_project_boxed_opaque_existential_0(&v126, v127);
    sub_23E1FBA4C();
    v56 = sub_23DE4698C(v27, v55);
    v58 = v57;

    v59 = *(v112 + 8);
    v60 = v119;
    v59(v27, v119);
    if (v58)
    {
      sub_23DF189D8(v56, v58, v53, &selRef_setAdapterModel_);
    }

    else
    {
      v61 = *MEMORY[0x277D7A440];
      v62 = v110;
      sub_23E1FCB9C();
      sub_23DE5DA0C(&v126, &v124);
      v63 = sub_23E1FD02C();
      v64 = sub_23E1FE1BC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v122 = v66;
        *v65 = 136315138;
        __swift_project_boxed_opaque_existential_0(&v124, v125);
        v67 = v117;
        sub_23E1FBA4C();
        v68 = sub_23E1FBC0C();
        v70 = v69;
        v59(v67, v119);
        __swift_destroy_boxed_opaque_existential_0(&v124);
        v71 = sub_23DE56B40(v68, v70, &v122);
        v53 = v118;
        v54 = v111;

        *(v65 + 4) = v71;
        _os_log_impl(&dword_23DE30000, v63, v64, "Failed to populate adapterVersion, as no version is set for model %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        v60 = v119;
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_56();

        OUTLINED_FUNCTION_1_20();
        v72(v110, v54);
      }

      else
      {

        OUTLINED_FUNCTION_1_20();
        v73(v62, v54);
        __swift_destroy_boxed_opaque_existential_0(&v124);
      }
    }

    __swift_project_boxed_opaque_existential_0(&v126, v127);
    v74 = v117;
    OUTLINED_FUNCTION_2_19();
    sub_23E1FBA4C();
    v75 = sub_23E1FBC0C();
    v77 = v76;
    v59(v74, v60);
    sub_23DF189D8(v75, v77, v53, &selRef_setModelDestination_);
    v78 = OBJC_IVAR___WFAskLLMAction_runLatencies;
    v79 = v109;
    swift_beginAccess();
    v80 = *(v79 + v78);
    v81 = *(v80 + 16);
    if (v81)
    {
      v82 = 0;
      v83 = v80 + 32;
      v84 = 0.0;
      do
      {
        v85 = *(v83 + 8 * v82++);
        v84 = v84 + v85;
      }

      while (v81 != v82);
      v86 = sub_23E1FDF4C();
    }

    else
    {
      sub_23DEE37DC();
      v86 = sub_23E1FE3AC();
    }

    [v53 setRunLatency_];

    v87 = v113;
    sub_23DE9E5DC();
    v88 = sub_23DF18630();
    (*(v114 + 8))(v87, v115);
    [v53 setResultType_];
    v89 = [objc_opt_self() currentDevice];
    v90 = [v89 isChineseRegionDevice];

    [v53 setRegionEligibility_];
    v91 = OBJC_IVAR___WFAskLLMAction_sessionForMetrics;
    swift_beginAccess();
    sub_23DE7E098(v79 + v91, &v122);
    if (v123)
    {
      sub_23DE36C8C(&v122, &v124);
      if (sub_23DEABCF0())
      {
        __swift_project_boxed_opaque_existential_0(&v124, v125);
        OUTLINED_FUNCTION_2_19();
        v92 = sub_23E1FBD6C();
        v93 = sub_23E1FBB1C();

        v94 = *(v93 + 16);

        v95 = sub_23E1FDF7C();
      }

      else
      {
        sub_23DEE37DC();
        v95 = sub_23E1FE3AC();
      }

      v103 = v95;
      [v53 setNumFollowUp_];

      __swift_project_boxed_opaque_existential_0(&v124, v125);
      OUTLINED_FUNCTION_2_19();
      v104 = sub_23E1FBD6C();
      v105 = sub_23DF18828();

      [v53 setRequestType_];
      v106 = OUTLINED_FUNCTION_5_12();
      v107(v106);
      __swift_destroy_boxed_opaque_existential_0(&v124);
    }

    else
    {
      sub_23DE5CB68(&v122, &qword_27E32C730, &qword_23E224A80);
      v96 = *MEMORY[0x277D7A440];
      v97 = v108[0];
      sub_23E1FCB9C();
      v98 = sub_23E1FD02C();
      v99 = sub_23E1FE1BC();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_23DE30000, v98, v99, "Failed to fully populate WFRunActionEvent because the session was nil.", v100, 2u);
        OUTLINED_FUNCTION_56();
      }

      (*(v121 + 8))(v97, v54);
      v101 = OUTLINED_FUNCTION_5_12();
      v102(v101);
    }

    return __swift_destroy_boxed_opaque_existential_0(&v126);
  }

  else
  {
    sub_23DE5CB68(&v124, &unk_27E32CC40, &qword_23E2265E0);
    v45 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v46 = sub_23E1FD02C();
    v47 = sub_23E1FE1BC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_23DE30000, v46, v47, "Failed to populate WFRunActionEvent because the model was nil.", v48, 2u);
      OUTLINED_FUNCTION_56();
    }

    return (*(v121 + 8))(v16, v8);
  }
}

uint64_t sub_23DF18630()
{
  v1 = v0;
  v2 = sub_23E1FBBDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CFC0D8])
  {
    (*(v3 + 8))(v6, v2);
    return 7;
  }

  if (v7 == *MEMORY[0x277CFC110])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277CFC0F8])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CFC100])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277CFC108])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x277CFC0F0])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x277CFC0D0])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x277CFC0E0])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x277CFC0E8])
  {
    return 3;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

uint64_t sub_23DF18828()
{
  v0 = *(sub_23E1FBB5C() + 16);

  v1 = *(sub_23E1FBB6C() + 16);

  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return 2 * (v1 != 0);
  }
}

id WFAskLLMAction.populateFailedRunEventProperties(_:withRunError:)(void *a1)
{
  [v1 populateSuccessfulRunEventProperties_];
  v3 = sub_23E1FBEBC();
  v4 = [v3 wf_isUserCancelledError];

  return [a1 setCompleted_];
}

void sub_23DF189D8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_23E1FDBDC();

  [a3 *a4];
}

id sub_23DF18AAC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E224700;
  v6 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = v6;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v11 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v12 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v14 = v13;
  v15 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = v7;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v17 = v16;
  *(inited + 152) = sub_23E1FDBDC();
  v18 = MEMORY[0x277D839B0];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD000000000000055;
  *(inited + 208) = 0x800000023E258710;
  v19 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v7;
  *(inited + 232) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v23 = MEMORY[0x277D7CB78];
  *(inited + 240) = v21;
  v24 = *v23;
  *(inited + 264) = v22;
  *(inited + 272) = v24;
  *(inited + 304) = v18;
  *(inited + 280) = 1;
  type metadata accessor for Key(0);
  sub_23DE664D0();
  v25 = v24;
  v26 = sub_23E1FDABC();
  return sub_23DF3BF9C(v26);
}

uint64_t sub_23DF18E8C()
{
  sub_23E1FE84C();
  sub_23DF18FC8();
  return sub_23E1FE87C();
}

uint64_t sub_23DF18EE0(uint64_t a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a1);
  return sub_23E1FE87C();
}

uint64_t sub_23DF18F28()
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF18FC8()
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF190D0()
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF19130()
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF191A0()
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF19200()
{
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_46_4();

  return sub_23E1FE87C();
}

uint64_t sub_23DF19264()
{
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_46_4();

  return sub_23E1FE87C();
}

uint64_t sub_23DF192D8()
{
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_46_4();

  return sub_23E1FE87C();
}

uint64_t sub_23DF1933C()
{
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_46_4();

  return sub_23E1FE87C();
}

uint64_t sub_23DF193A0(uint64_t a1, unsigned __int8 a2)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a2);
  return sub_23E1FE87C();
}

uint64_t sub_23DF193E4()
{
  OUTLINED_FUNCTION_43_4();
  sub_23DF18FC8();
  return sub_23E1FE87C();
}

uint64_t sub_23DF19420(uint64_t a1, uint64_t a2)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a2);
  return sub_23E1FE87C();
}

uint64_t sub_23DF19464()
{
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_46_4();

  return sub_23E1FE87C();
}

uint64_t sub_23DF19598@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  result = sub_23DF21B74(a1);
  if (v10)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v11 = 1;
  }

  else
  {
    sub_23DF21BB4(result, v9, a1, a2, a4);
    v11 = 0;
  }

  v12 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, v12);
}

uint64_t sub_23DF19648@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_21(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

uint64_t sub_23DF196F0(uint64_t *a1)
{
  v2 = *(sub_23E1FC08C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF218B0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_23DF1EEAC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_23DF19798(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF21910(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23DF1EFDC(v6);
  *a1 = v2;
  return result;
}

size_t sub_23DF19804(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23DF1DFE8(*(a1 + 16), 0, &unk_27E32DB60, &qword_23E224230, MEMORY[0x277CFC118]);
  v4 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_25(v4);
  v6 = sub_23DF214E0(&v8, (v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a1);
  sub_23DF2195C();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_23DF198EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23DF1DDA0(*(a1 + 16), 0);
  v4 = sub_23DF21778(&v6, v3 + 4, v2, a1);
  sub_23DF2195C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_23DF199A4(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_23DF199D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23DF199A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23DF19A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ActionKit13WFPublicEvent_name);
  v2 = *(v0 + OBJC_IVAR____TtC9ActionKit13WFPublicEvent_name + 8);
  sub_23E1FB7BC();
  return v1;
}

id sub_23DF19AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC9ActionKit13WFPublicEvent_name];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9ActionKit13WFPublicEvent_type] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WFPublicEvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_23DF19BB4()
{
  result = [objc_allocWithZone(type metadata accessor for WFPublicEventsHelper()) init];
  qword_27E33E180 = result;
  return result;
}

id sub_23DF19BE8()
{
  if (qword_27E32B980 != -1)
  {
    swift_once();
  }

  v1 = qword_27E33E180;

  return v1;
}

id sub_23DF19C6C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_rawSqlConnection] = 0;
  v2 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_sqlConnectionCreatedAt;
  v3 = sub_23E1FC08C();
  __swift_storeEnumTagSinglePayload(&v1[v2], 1, 1, v3);
  v4 = &v1[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewName];
  strcpy(&v1[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewName], "holidayEvent");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v5 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_useCase;
  *&v1[v5] = sub_23E1FDBDC();
  v6 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewService;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D1F4B8]) init];
  v7 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_dateFormatter;
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23DF2147C(0x2D4D4D2D79797979, 0xEA00000000006464, v8);
  *&v1[v7] = v8;
  sub_23E1FCD5C();
  sub_23DF21C74(&qword_27E32DA08, MEMORY[0x277D20478]);
  sub_23E1FCA3C();
  sub_23DF21B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E222340;
  v10 = *(v4 + 1);
  *(v9 + 32) = *v4;
  *(v9 + 40) = v10;
  sub_23E1FB7BC();
  *&v1[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewQuery] = sub_23DF19E54(v9, 0);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WFPublicEventsHelper();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_23DF19E54(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_23E1FDDCC();

  v5 = [v3 initWithNames:v4 includeDependencies:a2 & 1];

  return v5;
}

void sub_23DF19EF4()
{
  OUTLINED_FUNCTION_90();
  v100 = *MEMORY[0x277D85DE8];
  v95 = sub_23E1FD03C();
  v1 = OUTLINED_FUNCTION_6_0(v95);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_59();
  v94 = (v6 - v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_94_0();
  v93 = v9;
  OUTLINED_FUNCTION_15_6();
  v10 = sub_23E1FDC6C();
  v11 = OUTLINED_FUNCTION_6_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  OUTLINED_FUNCTION_25(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v22);
  v24 = v87 - v23;
  v25 = sub_23E1FC08C();
  v26 = OUTLINED_FUNCTION_6_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_59();
  v91 = v31 - v32;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v33);
  v35 = v87 - v34;
  v36 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_sqlConnectionCreatedAt;
  swift_beginAccess();
  sub_23DF219F0(v0 + v36, v24);
  OUTLINED_FUNCTION_0_6(v24);
  if (v60)
  {
    sub_23DE58BD0(v24, &qword_27E32C180, &unk_23E224340);
    goto LABEL_36;
  }

  v90 = v3;
  v92 = v28;
  (*(v28 + 32))(v35, v24, v25);
  v37 = *(v0 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewService);
  v38 = *(v0 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewQuery);
  *&v98 = 0;
  v39 = [v37 viewValidateWithViewQuery:v38 applyFixes:1 verbose:5 error:&v98];
  v40 = v98;
  if (!v39)
  {
    v62 = v98;
    v63 = sub_23E1FBECC();

    swift_willThrow();
    v50 = v94;
    v43 = v95;
LABEL_27:
    v66 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v67 = v63;
    v68 = sub_23E1FD02C();
    v69 = sub_23E1FE1BC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_38_0();
      v71 = v35;
      v72 = OUTLINED_FUNCTION_48_0();
      *v70 = 138412290;
      v73 = v63;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v74;
      *v72 = v74;
      _os_log_impl(&dword_23DE30000, v68, v69, "WFPublicEventsHelper: error reading view state: %@. Will assume connection needs refresh", v70, 0xCu);
      sub_23DE58BD0(v72, &unk_27E32C190, &qword_23E224B70);
      v35 = v71;
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();
    }

    (*(v90 + 8))(v50, v43);
    (*(v92 + 8))(v35, v25);
    goto LABEL_36;
  }

  v41 = v39;
  v89 = v35;
  sub_23E1FDC1C();
  v42 = v40;

  sub_23E1FDC5C();
  v43 = v95;
  v44 = sub_23E1FDC2C();
  v46 = v45;

  (*(v13 + 8))(v18, v10);
  if (v46 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v47 = objc_opt_self();
  v48 = sub_23E1FBFCC();
  *&v98 = 0;
  v49 = [v47 JSONObjectWithData:v48 options:0 error:&v98];

  v50 = v94;
  if (!v49)
  {
    v65 = v98;
    v63 = sub_23E1FBECC();

    swift_willThrow();
    sub_23DF21AEC(v44, v46);
    v35 = v89;
    goto LABEL_27;
  }

  v51 = v98;
  sub_23E1FE49C();
  swift_unknownObjectRelease();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  OUTLINED_FUNCTION_36_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_23DE4682C(0x7377656956, 0xE500000000000000, v96, &v98);

  if (!v99)
  {
    v75 = v44;
LABEL_31:
    sub_23DF21AEC(v75, v46);
    sub_23DE58BD0(&v98, &qword_27E32C320, &unk_23E224B40);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  OUTLINED_FUNCTION_36_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v64 = v44;
    goto LABEL_25;
  }

  v87[1] = v52;
  v88 = v44;
  v53 = 0;
  v54 = v96;
  v55 = *(v96 + 16);
  v94 = (v0 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewName);
  while (1)
  {
    if (v55 == v53)
    {

      sub_23DF21AEC(v88, v46);
      v43 = v95;
      goto LABEL_33;
    }

    if (v53 >= *(v54 + 16))
    {
      __break(1u);
    }

    v56 = *(v54 + 8 * v53 + 32);
    if (*(v56 + 16))
    {
      break;
    }

LABEL_22:
    ++v53;
  }

  v57 = *(v54 + 8 * v53 + 32);
  sub_23E1FB7BC();
  v58 = sub_23DF1E154(0x656D614E77656976, 0xE800000000000000);
  if ((v59 & 1) == 0 || (sub_23DE48110(*(v56 + 56) + 32 * v58, &v98), OUTLINED_FUNCTION_36_6(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v60 = v96 == *v94 && v97 == v94[1];
  if (!v60)
  {
    v61 = sub_23E1FE75C();

    if (v61)
    {
      goto LABEL_38;
    }

    goto LABEL_21;
  }

LABEL_38:

  sub_23DE4682C(0xD000000000000012, 0x800000023E258D70, v56, &v98);

  v43 = v95;
  v82 = v88;
  if (!v99)
  {
    v75 = v88;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_36_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = v82;
    goto LABEL_25;
  }

  sub_23DE4682C(0xD000000000000014, 0x800000023E258D90, v96, &v98);

  v83 = v92;
  if (!v99)
  {
    v75 = v88;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_36_6();
  if (swift_dynamicCast())
  {
    v84 = v91;
    sub_23E1FBFFC();
    sub_23E1FC03C();
    sub_23DF21AEC(v88, v46);
    v85 = *(v83 + 8);
    v85(v84, v25);
    v86 = OUTLINED_FUNCTION_6_2();
    (v85)(v86);
    goto LABEL_36;
  }

  v64 = v88;
LABEL_25:
  sub_23DF21AEC(v64, v46);
LABEL_33:
  v76 = *MEMORY[0x277D7A440];
  v77 = v93;
  sub_23E1FCB9C();
  v78 = sub_23E1FD02C();
  v79 = sub_23E1FE1BC();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = OUTLINED_FUNCTION_74_0();
    *v80 = 0;
    _os_log_impl(&dword_23DE30000, v78, v79, "WFPublicEventsHelper: Couldn't read view state. Will assume connection needs refresh", v80, 2u);
    OUTLINED_FUNCTION_56();
  }

  (*(v90 + 8))(v77, v43);
  (*(v92 + 8))(v89, v25);
LABEL_36:
  v81 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_76();
}

void sub_23DF1A7F4()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v2 = sub_23E1FD03C();
  v3 = OUTLINED_FUNCTION_6_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_23DF19EF4();
  if (v12)
  {
    sub_23E1FC07C();
    v13 = sub_23E1FC08C();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    v14 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_sqlConnectionCreatedAt;
    swift_beginAccess();
    sub_23DF21A7C(v11, v1 + v14);
    swift_endAccess();
    sub_23E1FCCDC();
    v15 = *(v1 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_useCase);
    v16 = sub_23E1FCCCC();
    v17 = *(v1 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_rawSqlConnection);
    *(v1 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_rawSqlConnection) = v16;
  }

  v18 = *(v1 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_rawSqlConnection);
  sub_23E1FB7CC();
  OUTLINED_FUNCTION_76();
}

void sub_23DF1AA7C()
{
  OUTLINED_FUNCTION_90();
  v0 = sub_23E1FD03C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v50 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_59();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  sub_23DF1D260();
  v15 = MEMORY[0x277D84F90];
  if (v12)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v49 = v10;
    sub_23DF1A7F4();
    if (v20)
    {
      v48 = v0;
      v53 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9C8, &unk_23E22A340);
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_33_6(v21, xmmword_23E222370);
      v51 = v22;
      v52 = v23;
      MEMORY[0x23EF044F0](v18, v19);

      v24 = v51;
      v25 = v52;
      v26 = MEMORY[0x277D837D0];
      v27 = MEMORY[0x277D21228];
      v21[3].n128_u64[1] = MEMORY[0x277D837D0];
      v21[4].n128_u64[0] = v27;
      v21[2].n128_u64[0] = v24;
      v21[2].n128_u64[1] = v25;
      OUTLINED_FUNCTION_15_13();
      v51 = v28;
      v52 = v29;
      MEMORY[0x23EF044F0](v16, v17);

      v31 = v51;
      v32 = v52;
      v21[6].n128_u64[0] = v26;
      v21[6].n128_u64[1] = v27;
      v21[4].n128_u64[1] = v31;
      v21[5].n128_u64[0] = v32;
      MEMORY[0x28223BE20](v30);
      *(&v47 - 2) = &v53;
      sub_23E1FCCBC();
      v33 = MEMORY[0x277D7A440];

      v41 = v48;
      v40 = v49;
      if (sub_23DE4D8B0(v53))
      {
      }

      else
      {
        v42 = *v33;
        sub_23E1FB7BC();
        sub_23E1FCB9C();
        v43 = sub_23E1FD02C();
        v44 = sub_23E1FE1BC();
        if (OUTLINED_FUNCTION_20_6(v44))
        {
          v45 = OUTLINED_FUNCTION_74_0();
          *v45 = 0;
          _os_log_impl(&dword_23DE30000, v43, v40, "WFPublicEventsHelper: No events found", v45, 2u);
          OUTLINED_FUNCTION_56();
        }

        OUTLINED_FUNCTION_37_4();
        v46(v40, v41);
      }
    }

    else
    {

      v34 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v35 = sub_23E1FD02C();
      v36 = sub_23E1FE1BC();
      if (OUTLINED_FUNCTION_20_6(v36))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_27_8(&dword_23DE30000, v37, v38, "WFPublicEventsHelper: Error configuring IPSQL");
        OUTLINED_FUNCTION_56();
      }

      OUTLINED_FUNCTION_37_4();
      v39(v8, v0);
    }
  }

  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF1AF0C(uint64_t a1, void *a2)
{
  v4 = sub_23E1FCCAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  result = sub_23E1FCCFC();
  if (!v2)
  {
    sub_23E1FCCFC();
    v29 = v5;
    v30 = v4;
    while ((sub_23E1FCCEC() & 1) != 0)
    {
      v13 = sub_23E1FCC9C();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v17 = sub_23E1FCC9C();
        if (v18)
        {
          v19 = v17;
          v20 = v18;
          v21 = v17 == 926368339 && v18 == 0xE400000000000000;
          if (v21 || (sub_23E1FE75C() & 1) != 0)
          {

            v22 = 0;
          }

          else if (v19 == 892748371 && v20 == 0xE400000000000000)
          {

            v22 = 1;
          }

          else
          {
            v25 = sub_23E1FE75C();

            if (v25)
            {
              v22 = 1;
            }

            else
            {
              v22 = 2;
            }
          }

          v23 = objc_allocWithZone(type metadata accessor for WFPublicEvent());
          sub_23DF19AD4(v15, v16, v22);
          MEMORY[0x23EF045A0]();
          if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23E1FDE0C();
          }

          sub_23E1FDE3C();
        }

        else
        {
        }
      }
    }

    v26 = *(v29 + 8);
    v27 = v30;
    v26(v9, v30);
    return (v26)(v11, v27);
  }

  return result;
}

void sub_23DF1B254()
{
  OUTLINED_FUNCTION_90();
  v180 = v0;
  v164 = v2;
  v175 = v3;
  v166 = v4;
  v163 = v5;
  v7 = v6;
  v8 = sub_23E1FD03C();
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59();
  v171 = (v14 - v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_68_0();
  v173 = v17;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v149 - v19;
  v177 = sub_23E1FC21C();
  v21 = OUTLINED_FUNCTION_6_0(v177);
  v161 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v174 = v26 - v25;
  OUTLINED_FUNCTION_15_6();
  v178 = sub_23E1FC23C();
  v27 = OUTLINED_FUNCTION_6_0(v178);
  v162 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v176 = v32 - v31;
  OUTLINED_FUNCTION_15_6();
  v33 = sub_23E1FC08C();
  v34 = OUTLINED_FUNCTION_6_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_59();
  v155 = v39 - v40;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_68_0();
  v172 = v42;
  OUTLINED_FUNCTION_14_0();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v149 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_68_0();
  v158 = v48;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_94_0();
  v179 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v52 = OUTLINED_FUNCTION_25(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_59();
  v160 = v55 - v56;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_68_0();
  v159 = v58;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_94_0();
  v167 = v60;
  sub_23DF1D260();
  if (v62)
  {
    v65 = v62;
    v66 = v7;
    v67 = v63;
    v68 = v64;
    v156 = v66;
    v170 = v61;
    v157 = v8;
    sub_23DF1A7F4();
    v70 = MEMORY[0x277D7A440];
    if (v69)
    {
      v173 = v36;
      v152 = v20;
      v154 = v11;
      v183 = MEMORY[0x277D84F90];
      v169 = "tes.name = ?;\n    ";
      v71 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9C8, &unk_23E22A340);
      v72 = swift_allocObject();
      v151 = xmmword_23E222380;
      OUTLINED_FUNCTION_33_6(v72, xmmword_23E222380);
      v181 = v73;
      v182 = v74;
      MEMORY[0x23EF044F0](v67, v68);

      v75 = v181;
      v76 = v182;
      v77 = MEMORY[0x277D837D0];
      v78 = MEMORY[0x277D21228];
      v72[3].n128_u64[1] = MEMORY[0x277D837D0];
      v72[4].n128_u64[0] = v78;
      v72[2].n128_u64[0] = v75;
      v72[2].n128_u64[1] = v76;
      OUTLINED_FUNCTION_15_13();
      v181 = v79;
      v182 = v80;
      MEMORY[0x23EF044F0](v170, v65);

      v81 = v181;
      v82 = v182;
      v72[6].n128_u64[0] = v77;
      v72[6].n128_u64[1] = v78;
      v72[4].n128_u64[1] = v81;
      v72[5].n128_u64[0] = v82;
      v72[8].n128_u64[1] = v77;
      v72[9].n128_u64[0] = v78;
      v83 = v166;
      v72[7].n128_u64[0] = v163;
      v72[7].n128_u64[1] = v83;
      MEMORY[0x28223BE20](v83);
      *(&v149 - 2) = v180;
      *(&v149 - 1) = &v183;
      sub_23E1FB7BC();
      v153 = v71;
      v84 = 0;
      sub_23E1FCCBC();

      v97 = v173;
      v98 = v179;
      v181 = v183;
      sub_23E1FB7BC();
      sub_23DF196F0(&v181);

      v99 = v181;
      __swift_storeEnumTagSinglePayload(v167, 1, 1, v33);
      v179 = (v97 + 16);
      v180 = v99;
      if (v164)
      {
        v100 = 0;
        v101 = *(v99 + 16);
        v173 = v97 + 32;
        v174 = v101;
        v165 = MEMORY[0x277D84F90];
        while (v174 != v100)
        {
          if (v100 >= *(v99 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v102 = (v97[80] + 32) & ~v97[80];
          v84 = *(v97 + 9);
          (*(v97 + 2))(v1, v99 + v102 + v84 * v100, v33);
          sub_23E1FC07C();
          sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
          v103 = sub_23E1FDB1C();
          v104 = *(v97 + 1);
          v104(v46, v33);
          if (v103)
          {
            v104(v1, v33);
            ++v100;
            v99 = v180;
          }

          else
          {
            v171 = *v173;
            v171(v172, v1, v33);
            v105 = v165;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v181 = v105;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_42_4();
              v105 = v181;
            }

            v99 = v180;
            v107 = *(v105 + 16);
            v108 = (v107 + 1);
            if (v107 >= *(v105 + 24) >> 1)
            {
              v169 = *(v105 + 16);
              v170 = (v107 + 1);
              sub_23DE640F4();
              v107 = v169;
              v108 = v170;
              v105 = v181;
            }

            ++v100;
            *(v105 + 16) = v108;
            v165 = v105;
            v171(v105 + v102 + v107 * v84, v172, v33);
          }
        }
      }

      else
      {
        v109 = 0;
        v172 = *(v99 + 16);
        LODWORD(v171) = *MEMORY[0x277CC9988];
        v169 = (v161 + 8);
        v170 = (v161 + 104);
        v110 = (v162 + 8);
        v168 = (v97 + 8);
        v150 = (v97 + 32);
        v165 = MEMORY[0x277D84F90];
        while (v172 != v109)
        {
          if (v109 >= *(v99 + 16))
          {
LABEL_41:
            __break(1u);

            __break(1u);
            return;
          }

          v84 = (v97[80] + 32) & ~v97[80];
          v111 = v99 + v84;
          v112 = *(v97 + 9);
          (*(v97 + 2))(v98, v111 + v112 * v109, v33);
          v113 = v176;
          sub_23E1FC20C();
          v114 = v174;
          v115 = v177;
          (*v170)(v174, v171, v177);
          v116 = sub_23E1FC22C();
          (*v169)(v114, v115);
          (*v110)(v113, v178);
          if (v116 == v175)
          {
            v117 = *v150;
            (*v150)(v158, v98, v33);
            v118 = v165;
            v119 = swift_isUniquelyReferenced_nonNull_native();
            v181 = v118;
            if ((v119 & 1) == 0)
            {
              OUTLINED_FUNCTION_42_4();
              v118 = v181;
            }

            v97 = v173;
            v120 = *(v118 + 16);
            v121 = v120 + 1;
            if (v120 >= *(v118 + 24) >> 1)
            {
              v165 = v120 + 1;
              sub_23DE640F4();
              v121 = v165;
              v118 = v181;
            }

            ++v109;
            *(v118 + 16) = v121;
            v165 = v118;
            v117(v118 + v84 + v120 * v112, v158, v33);
            v99 = v180;
          }

          else
          {
            (*v168)(v98, v33);
            ++v109;
            v97 = v173;
            v99 = v180;
          }
        }
      }

      v122 = v159;
      sub_23DF19648(v165, MEMORY[0x277CC9578], v159);

      v123 = v167;
      sub_23DE58BD0(v167, &qword_27E32C180, &unk_23E224340);
      sub_23DF21980(v122, v123);
      v124 = v160;
      sub_23DF219F0(v123, v160);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v124, 1, v33);
      v126 = v154;
      v127 = v152;
      if (EnumTagSinglePayload == 1)
      {
        sub_23DE58BD0(v124, &qword_27E32C180, &unk_23E224340);
        v128 = *MEMORY[0x277D7A440];
        sub_23E1FCB9C();
        v129 = v166;
        sub_23E1FB7BC();
        v130 = sub_23E1FD02C();
        v131 = sub_23E1FE1BC();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v181 = v133;
          *v132 = 136380931;
          *(v132 + 4) = sub_23DE56B40(v163, v129, &v181);
          *(v132 + 12) = 2049;
          v134 = v175;
          if (v164)
          {
            v134 = -1;
          }

          *(v132 + 14) = v134;
          _os_log_impl(&dword_23DE30000, v130, v131, "WFPublicEventsHelper: No date found for event: %{private}s year: %{private}ld", v132, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v133);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_56();
        }

        (*(v126 + 8))(v127, v157);
        sub_23DE58BD0(v123, &qword_27E32C180, &unk_23E224340);
        v135 = v156;
        v136 = sub_23E1FBE0C();
        v137 = v135;
        v138 = 1;
      }

      else
      {
        v139 = v155;
        (*(v97 + 4))(v155, v124, v33);
        v140 = v176;
        sub_23E1FC20C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9D0, &qword_23E22A350);
        v141 = v161;
        v142 = *(v161 + 72);
        v143 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v144 = swift_allocObject();
        *(v144 + 16) = v151;
        v145 = v144 + v143;
        v146 = *(v141 + 104);
        v147 = v177;
        v146(v145, *MEMORY[0x277CC9988], v177);
        v146(v145 + v142, *MEMORY[0x277CC9998], v147);
        v146(v145 + 2 * v142, *MEMORY[0x277CC9968], v147);
        sub_23DF21138(v144);
        v148 = v156;
        sub_23E1FC1EC();

        (*(v162 + 8))(v140, v178);
        (*(v97 + 1))(v139, v33);
        sub_23DE58BD0(v167, &qword_27E32C180, &unk_23E224340);
        v136 = sub_23E1FBE0C();
        v137 = v148;
        v138 = 0;
      }

      __swift_storeEnumTagSinglePayload(v137, v138, 1, v136);
    }

    else
    {

      v90 = *v70;
      v91 = v173;
      sub_23E1FCB9C();
      v92 = sub_23E1FD02C();
      v93 = sub_23E1FE1BC();
      if (OUTLINED_FUNCTION_20_6(v93))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_27_8(&dword_23DE30000, v94, v95, "WFPublicEventsHelper: Error configuring IPSQL");
        OUTLINED_FUNCTION_56();
      }

      (*(v11 + 8))(v91, v157);
      v96 = sub_23E1FBE0C();
      __swift_storeEnumTagSinglePayload(v156, 1, 1, v96);
    }

    OUTLINED_FUNCTION_76();
  }

  else
  {
    sub_23E1FBE0C();
    OUTLINED_FUNCTION_76();

    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  }
}

uint64_t sub_23DF1C114(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = a2;
  v6 = sub_23E1FC08C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_23E1FCCAC();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23E1FCCFC();
  if (!v3)
  {
    v49 = v14;
    v40 = v15;
    v47 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_dateFormatter;
    v20 = (v46 + 32);
    v43 = (v46 + 16);
    v44 = v12;
    v42 = v46 + 8;
    v45 = a3;
    while ((sub_23E1FCCEC() & 1) != 0)
    {
      sub_23E1FCC9C();
      if (v21)
      {
        v22 = a1;
        v23 = *(v48 + v47);
        v24 = sub_23E1FDBDC();

        v25 = v23;
        a1 = v22;
        v26 = [v25 dateFromString_];

        if (v26)
        {
          v27 = v44;
          sub_23E1FC05C();

          v28 = *v20;
          v29 = v49;
          (*v20)(v49, v27, v6);
          (*v43)(v50, v29, v6);
          v30 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23DE4D658(0, *(v30 + 16) + 1, 1, v30);
            v30 = v38;
            *a3 = v38;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_23DE4D658(v32 > 1, v33 + 1, 1, v30);
            *v45 = v39;
          }

          v34 = v46;
          (*(v46 + 8))();
          v35 = v45;
          v36 = *v45;
          *(v36 + 16) = v33 + 1;
          v37 = v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33;
          a3 = v35;
          v28(v37, v50, v6);
          a1 = v22;
        }
      }
    }

    return (*(v41 + 8))(v18, v40);
  }

  return result;
}

uint64_t sub_23DF1C4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9F0, &unk_23E22A360);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_6_2();
  sub_23DF1B254();
  v10 = sub_23E1FBE0C();
  OUTLINED_FUNCTION_55_4(v10);
  if (!v11)
  {
    v4 = sub_23E1FBDEC();
    OUTLINED_FUNCTION_21(a3);
    (*(v12 + 8))(v3, a3);
  }

  return v4;
}

uint64_t sub_23DF1C5F0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9F0, &unk_23E22A360);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_5();
  sub_23DF1B254();
  v9 = sub_23E1FBE0C();
  OUTLINED_FUNCTION_55_4(v9);
  if (!v10)
  {
    v3 = sub_23E1FBDEC();
    OUTLINED_FUNCTION_21(a2);
    (*(v11 + 8))(v2, a2);
  }

  return v3;
}

void sub_23DF1C730()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v5 = sub_23E1FD03C();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  sub_23DF1D260();
  if (v17)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v52 = v15;
    v54 = v5;
    sub_23DF1A7F4();
    if (v24)
    {
      v59 = MEMORY[0x277D84FA0];
      v53 = "ice";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9C8, &unk_23E22A340);
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_33_6(v25, xmmword_23E222380);
      v57 = v26;
      v58 = v27;
      MEMORY[0x23EF044F0](v22, v23);

      v28 = v57;
      v29 = v58;
      v30 = MEMORY[0x277D837D0];
      v31 = MEMORY[0x277D21228];
      v25[3].n128_u64[1] = MEMORY[0x277D837D0];
      v25[4].n128_u64[0] = v31;
      v25[2].n128_u64[0] = v28;
      v25[2].n128_u64[1] = v29;
      OUTLINED_FUNCTION_15_13();
      v57 = v32;
      v58 = v33;
      MEMORY[0x23EF044F0](v20, v21);

      v35 = v57;
      v36 = v58;
      v25[6].n128_u64[0] = v30;
      v25[6].n128_u64[1] = v31;
      v25[4].n128_u64[1] = v35;
      v25[5].n128_u64[0] = v36;
      v25[8].n128_u64[1] = v30;
      v25[9].n128_u64[0] = v31;
      v25[7].n128_u64[0] = v55;
      v25[7].n128_u64[1] = v3;
      MEMORY[0x28223BE20](v34);
      *(&v51 - 2) = v1;
      *(&v51 - 1) = &v59;
      sub_23E1FB7BC();
      sub_23E1FCCBC();
      v37 = MEMORY[0x277D7A440];

      v44 = v59;
      if (*(v59 + 16))
      {
        sub_23E1FB7BC();
      }

      else
      {
        v45 = *v37;
        sub_23E1FB7BC();
        v46 = v52;
        sub_23E1FCB9C();
        v47 = sub_23E1FD02C();
        v48 = sub_23E1FE1BC();
        if (OUTLINED_FUNCTION_20_6(v48))
        {
          v49 = OUTLINED_FUNCTION_74_0();
          *v49 = 0;
          _os_log_impl(&dword_23DE30000, v47, v46, "WFPublicEventsHelper: No years found", v49, 2u);
          OUTLINED_FUNCTION_56();
        }

        OUTLINED_FUNCTION_37_4();
        v50(v46, v54);
      }

      v57 = sub_23DF198EC(v44);
      sub_23E1FB7BC();
      sub_23DF19798(&v57);
    }

    else
    {

      v38 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v39 = sub_23E1FD02C();
      v40 = sub_23E1FE1BC();
      if (OUTLINED_FUNCTION_20_6(v40))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_27_8(&dword_23DE30000, v41, v42, "WFPublicEventsHelper: Error configuring IPSQL");
        OUTLINED_FUNCTION_56();
      }

      OUTLINED_FUNCTION_37_4();
      v43(v13, v54);
    }
  }

  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF1CC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v57 = sub_23E1FC23C();
  v49 = *(v57 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v57);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23E1FBE0C();
  v48 = *(v56 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23E1FC08C();
  v47 = *(v44 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = sub_23E1FCCAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23E1FCCFC();
  if (!v3)
  {
    v52 = v15;
    v41 = v17;
    v42 = v16;
    v58 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_dateFormatter;
    v59 = v20;
    v51 = (v47 + 32);
    v50 = *MEMORY[0x277CC9988];
    v48 += 8;
    v49 += 8;
    v47 += 8;
    v46 = xmmword_23E222340;
    v22 = v43;
    v23 = v44;
    v53 = a2;
    v54 = a1;
    while ((sub_23E1FCCEC() & 1) != 0)
    {
      sub_23E1FCC9C();
      if (v24)
      {
        v25 = v8;
        v26 = *(a2 + v58);
        v27 = v22;
        v28 = sub_23E1FDBDC();

        v29 = v26;
        v8 = v25;
        v30 = [v29 dateFromString_];

        v22 = v27;
        if (v30)
        {
          sub_23E1FC05C();

          v31 = v52;
          (*v51)(v52, v27, v23);
          sub_23E1FC20C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9D0, &qword_23E22A350);
          v32 = sub_23E1FC21C();
          v33 = *(v32 - 8);
          v34 = *(v33 + 72);
          v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v36 = swift_allocObject();
          *(v36 + 16) = v46;
          (*(v33 + 104))(v36 + v35, v50, v32);
          v8 = v25;
          sub_23DF21138(v36);
          v37 = v55;
          sub_23E1FC1EC();

          (*v49)(v25, v57);
          v38 = sub_23E1FBDFC();
          LOBYTE(v36) = v39;
          (*v48)(v37, v56);
          if ((v36 & 1) == 0)
          {
            sub_23DF03AD4(&v60, v38);
          }

          (*v47)(v31, v23);
          a2 = v53;
          v22 = v27;
        }
      }
    }

    return (*(v41 + 8))(v59, v42);
  }

  return result;
}

BOOL sub_23DF1D1B4()
{
  v4[3] = &type metadata for IntelligencePlatformDataActionsFlags;
  v4[4] = sub_23DF1E0E4();
  v0 = sub_23E1FCA4C();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_23DF1AA7C();
  v2 = sub_23DE4D8B0(v1);

  return v2 != 0;
}

void sub_23DF1D260()
{
  OUTLINED_FUNCTION_90();
  v0 = sub_23E1FC1DC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v101 = (v7 - v6);
  OUTLINED_FUNCTION_15_6();
  v8 = sub_23E1FD03C();
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59();
  v103 = (v14 - v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_94_0();
  v100 = v17;
  OUTLINED_FUNCTION_15_6();
  v18 = sub_23E1FC1BC();
  v19 = OUTLINED_FUNCTION_6_0(v18);
  v98 = v20;
  v99 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9A8, &qword_23E22A328);
  OUTLINED_FUNCTION_25(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v29);
  v31 = &v97 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9B0, &qword_23E22A330);
  v33 = OUTLINED_FUNCTION_25(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_59();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v97 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9B8, &qword_23E22A338);
  OUTLINED_FUNCTION_25(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v45);
  v47 = &v97 - v46;
  sub_23E1FC12C();
  OUTLINED_FUNCTION_12_14();
  sub_23DF19648(v48, v49, v41);

  if (__swift_getEnumTagSinglePayload(v41, 1, v0) == 1)
  {
    v50 = v0;
    sub_23DE58BD0(v41, &qword_27E32D9B0, &qword_23E22A330);
    goto LABEL_6;
  }

  v97 = v11;
  v102 = v8;
  sub_23E1FC18C();
  v51 = *(v3 + 8);
  v51(v41, v0);
  v52 = sub_23E1FC17C();
  OUTLINED_FUNCTION_0_6(v47);
  if (v53)
  {
    v50 = v0;
    sub_23DE58BD0(v47, &qword_27E32D9B8, &qword_23E22A338);
    v8 = v102;
    v11 = v97;
LABEL_6:
    v54 = *MEMORY[0x277D7A440];
    v55 = v103;
    sub_23E1FCB9C();
    v56 = sub_23E1FD02C();
    v57 = sub_23E1FE1BC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_38_0();
      v59 = v11;
      v60 = swift_slowAlloc();
      v104 = v60;
      *v58 = 136380675;
      v61 = v101;
      sub_23E1FC19C();
      OUTLINED_FUNCTION_10_10();
      sub_23DF21C74(v62, v63);
      v64 = sub_23E1FE71C();
      v102 = v8;
      v66 = v65;
      (*(v3 + 8))(v61, v50);
      v67 = sub_23DE56B40(v64, v66, &v104);

      *(v58 + 4) = v67;
      _os_log_impl(&dword_23DE30000, v56, v57, "WFPublicEventsHelper: Error getting region: %{private}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v59 + 8))(v103, v102);
    }

    else
    {

      (*(v11 + 8))(v55, v8);
    }

    goto LABEL_17;
  }

  v103 = v51;
  sub_23E1FC10C();
  OUTLINED_FUNCTION_21(v52);
  v69 = *(v68 + 8);
  v70 = OUTLINED_FUNCTION_6_2();
  v71(v70);
  sub_23E1FC12C();
  OUTLINED_FUNCTION_12_14();
  sub_23DF19648(v72, v73, v38);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v0);
  if (EnumTagSinglePayload == 1)
  {
    v75 = v0;

    v76 = &qword_27E32D9B0;
    v77 = &qword_23E22A330;
    v78 = v38;
  }

  else
  {
    sub_23E1FC1CC();
    v103(v38, v0);
    sub_23E1FC1AC();
    (*(v98 + 8))(v25, v99);
    v79 = sub_23E1FC11C();
    OUTLINED_FUNCTION_0_6(v31);
    if (!v53)
    {
      sub_23E1FC10C();
      OUTLINED_FUNCTION_21(v79);
      v94 = *(v93 + 8);
      v95 = OUTLINED_FUNCTION_6_2();
      v96(v95);
      goto LABEL_17;
    }

    v75 = v0;

    v76 = &qword_27E32D9A8;
    v77 = &qword_23E22A328;
    v78 = v31;
  }

  sub_23DE58BD0(v78, v76, v77);
  v80 = *MEMORY[0x277D7A440];
  v81 = v100;
  sub_23E1FCB9C();
  v82 = sub_23E1FD02C();
  v83 = sub_23E1FE1BC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = OUTLINED_FUNCTION_38_0();
    v85 = swift_slowAlloc();
    v104 = v85;
    *v84 = 136380675;
    v86 = v101;
    sub_23E1FC19C();
    OUTLINED_FUNCTION_10_10();
    sub_23DF21C74(v87, v88);
    v89 = sub_23E1FE71C();
    v91 = v90;
    v103(v86, v75);
    v92 = sub_23DE56B40(v89, v91, &v104);

    *(v84 + 4) = v92;
    _os_log_impl(&dword_23DE30000, v82, v83, "WFPublicEventsHelper: Error getting language: %{private}s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();
  }

  (*(v97 + 8))(v81, v102);
LABEL_17:
  OUTLINED_FUNCTION_76();
}

id sub_23DF1D9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for WFPublicEventsHelper()
{
  result = qword_27E32D988;
  if (!qword_27E32D988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DF1DAF0()
{
  sub_23DF1DBB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DF1DBB0()
{
  if (!qword_27E32D998)
  {
    sub_23E1FC08C();
    v0 = sub_23E1FE42C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E32D998);
    }
  }
}

unint64_t sub_23DF1DC1C()
{
  result = qword_27E32D9A0;
  if (!qword_27E32D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D9A0);
  }

  return result;
}

uint64_t sub_23DF1DC70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_27E32D180;
    v2 = &qword_23E223780;
  }

  else
  {
    v1 = &unk_27E32DA18;
    v2 = &unk_23E22A380;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

void *sub_23DF1DDA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2B8, &qword_23E224040);
  v4 = OUTLINED_FUNCTION_25_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_7_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_23DF1DFE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23DF1E0E4()
{
  result = qword_280DAE438;
  if (!qword_280DAE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE438);
  }

  return result;
}

unint64_t sub_23DF1E154(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v6 = sub_23E1FE87C();

  return sub_23DF1E330(a1, a2, v6);
}

unint64_t sub_23DF1E1CC()
{
  v1 = *(v0 + 40);
  sub_23E1FE53C();
  v2 = OUTLINED_FUNCTION_20();

  return sub_23DF1E3E4(v2, v3);
}

void sub_23DF1E20C()
{
  v1 = *(v0 + 40);
  sub_23E1FDC1C();
  sub_23E1FE84C();
  sub_23E1FDCCC();
  sub_23E1FE87C();

  sub_23DF1E4A8();
}

unint64_t sub_23DF1E29C()
{
  v1 = *(v0 + 40);
  sub_23E1FBC1C();
  sub_23DF21C74(&qword_27E32DA38, MEMORY[0x277CFC148]);
  sub_23E1FDADC();
  v2 = OUTLINED_FUNCTION_20();

  return sub_23DF1E590(v2, v3);
}

unint64_t sub_23DF1E330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23E1FE75C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_23DF1E3E4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_23DE7E2AC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23EF04D30](v8, a1);
    sub_23DE7E308(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_23DF1E4A8()
{
  OUTLINED_FUNCTION_90();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = *(*(v0 + 48) + 8 * i);
    v5 = sub_23E1FDC1C();
    v7 = v6;
    if (v5 == sub_23E1FDC1C() && v7 == v8)
    {

      break;
    }

    v10 = sub_23E1FE75C();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_76();
}

unint64_t sub_23DF1E590(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_23E1FBC1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_23DF21C74(&qword_27E32CE08, MEMORY[0x277CFC148]);
    v10 = sub_23E1FDB2C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_23DF1E74C()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v9 = OUTLINED_FUNCTION_25_0();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 16);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF3175C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DF1E888()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E8, qword_23E224070);
      v9 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_7_0();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DE36A28(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F0, &qword_23E22A420);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DF1E978()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      v9 = sub_23DF1DC70();
      v10 = *(v9 + 52);
      v11 = (*(v9 + 48) + 7) & 0x1FFFFFFF8;
      v12 = swift_allocObject();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_7_0();
      v12[2] = v2;
      v12[3] = v13;
      if (v1)
      {
LABEL_9:
        v14 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v14);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v12 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DF1EA38()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C2D0, &unk_23E22A390);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_52_4(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_1();
        sub_23DF318CC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DF1EB00()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DA50, &qword_23E22A3C0);
      v9 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_7_0();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DF1EC30()
{
  OUTLINED_FUNCTION_90();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_3_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(v6(0) - 8);
  if (v10)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v4(v8 + v24, v15, v20 + v24);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_76();
}

void sub_23DF1EDD4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_7_0();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_23DF1EEAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23E1FE70C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23E1FC08C();
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23E1FC08C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23DF1F3E8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23DF1F0D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DF1EFDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E1FE70C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23DF1FE24(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23DF1F38C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DF1F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23E1FC08C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v37 = v20;
      v38 = a3;
      v35 = v22;
      v36 = v21;
      v23 = v20;
      do
      {
        v24 = v45;
        v25 = v43;
        v43(v45, v22, v8);
        v26 = v46;
        v25(v46, v23, v8);
        sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
        v27 = sub_23E1FDB1C();
        v28 = *v19;
        (*v19)(v26, v8);
        result = v28(v24, v8);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v41)
        {
          __break(1u);
          return result;
        }

        v29 = *v40;
        v30 = v42;
        (*v40)(v42, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v29)(v23, v30, v8);
        v23 += v39;
        v22 += v39;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v38 + 1;
      v20 = v37 + v33;
      v21 = v36 - 1;
      v22 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_23DF1F38C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DF1F3E8(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_23E1FC08C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v133 = &v117 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v117 - v15;
  MEMORY[0x28223BE20](v14);
  v138 = &v117 - v17;
  v130 = v9;
  v131 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_99:
    v140 = *v120;
    if (!v140)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v110 = (v20 + 16);
      v111 = *(v20 + 16);
      while (v111 >= 2)
      {
        if (!*v131)
        {
          goto LABEL_138;
        }

        v112 = a4;
        v113 = v20;
        v114 = (v20 + 16 * v111);
        v20 = *v114;
        a4 = &v110[2 * v111];
        v115 = *(a4 + 8);
        sub_23DF203F0(&(*v131)[v9[9] * *v114], &(*v131)[v9[9] * *a4], &(*v131)[v9[9] * v115], v140);
        v9 = v112;
        if (v112)
        {
          break;
        }

        if (v115 < v20)
        {
          goto LABEL_126;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_127;
        }

        *v114 = v20;
        v114[1] = v115;
        v116 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_128;
        }

        v111 = *v110 - 1;
        memmove(a4, (a4 + 16), 16 * v116);
        *v110 = v111;
        a4 = 0;
        v9 = v130;
        v20 = v113;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v20 = sub_23DF20AE8(v20);
    goto LABEL_101;
  }

  v118 = a4;
  v19 = 0;
  v136 = (v9 + 1);
  v137 = v9 + 2;
  v135 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v123 = v16;
  v140 = v8;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v122 = v19;
    if (v19 + 1 < v18)
    {
      v124 = v5;
      v119 = v20;
      v23 = v19;
      v24 = *v131;
      v25 = v9[9];
      a4 = &(*v131)[v25 * v22];
      v26 = v9[2];
      v129 = v19 + 1;
      v27 = v138;
      v132 = v18;
      v26(v138, a4, v8);
      v28 = &v24[v25 * v23];
      v29 = v8;
      v30 = v139;
      v127 = v26;
      v26(v139, v28, v29);
      v126 = sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
      LODWORD(v128) = sub_23E1FDB1C();
      v20 = v9[1];
      (v20)(v30, v29);
      v31 = v27;
      v22 = v129;
      v125 = v20;
      (v20)(v31, v29);
      v32 = v132;
      v33 = (v122 + 2);
      v134 = v25;
      v34 = &v24[v25 * (v122 + 2)];
      while (1)
      {
        v9 = v33;
        v35 = v22 + 1;
        if (v35 >= v32)
        {
          break;
        }

        v36 = v138;
        v37 = v140;
        v38 = v127;
        (v127)(v138, v34, v140);
        v39 = v35;
        v40 = v139;
        v38(v139, a4, v37);
        v41 = sub_23E1FDB1C() & 1;
        v42 = v40;
        v22 = v39;
        v20 = v125;
        v125(v42, v37);
        (v20)(v36, v37);
        v32 = v132;
        v34 += v134;
        a4 += v134;
        v33 = (v9 + 1);
        if ((v128 & 1) != v41)
        {
          goto LABEL_9;
        }
      }

      v22 = v32;
LABEL_9:
      if (v128)
      {
        v21 = v122;
        if (v22 < v122)
        {
          goto LABEL_132;
        }

        if (v122 >= v22)
        {
          v9 = v130;
          v20 = v119;
          v8 = v140;
          v5 = v124;
        }

        else
        {
          if (v32 >= v9)
          {
            v43 = v9;
          }

          else
          {
            v43 = v32;
          }

          v44 = v134 * (v43 - 1);
          v45 = v134 * v43;
          v46 = v122 * v134;
          v47 = v22;
          v48 = v122;
          v5 = v124;
          do
          {
            if (v48 != --v47)
            {
              v124 = v5;
              v49 = *v131;
              if (!*v131)
              {
                goto LABEL_139;
              }

              a4 = &v49[v46];
              v50 = v140;
              v132 = *v135;
              (v132)(v123, &v49[v46], v140);
              v51 = v46 < v44 || a4 >= &v49[v45];
              if (v51)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v132)(&v49[v44], v123, v50);
              v5 = v124;
              v21 = v122;
            }

            ++v48;
            v44 -= v134;
            v45 -= v134;
            v46 += v134;
          }

          while (v48 < v47);
          v9 = v130;
          v20 = v119;
          v8 = v140;
        }
      }

      else
      {
        v9 = v130;
        v20 = v119;
        v8 = v140;
        v5 = v124;
        v21 = v122;
      }
    }

    v52 = v131[1];
    if (v22 < v52)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v118)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4CE18(0, *(v20 + 16) + 1, 1, v20);
      v20 = v108;
    }

    v69 = *(v20 + 16);
    v68 = *(v20 + 24);
    a4 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      sub_23DE4CE18(v68 > 1, v69 + 1, 1, v20);
      v20 = v109;
    }

    *(v20 + 16) = a4;
    v70 = v20 + 32;
    v71 = (v20 + 32 + 16 * v69);
    *v71 = v21;
    v71[1] = v22;
    v134 = *v120;
    if (!v134)
    {
      goto LABEL_140;
    }

    v129 = v22;
    if (v69)
    {
      while (1)
      {
        v72 = a4 - 1;
        v73 = (v70 + 16 * (a4 - 1));
        v74 = (v20 + 16 * a4);
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v75 = *(v20 + 32);
          v76 = *(v20 + 40);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_67:
          if (v78)
          {
            goto LABEL_117;
          }

          v90 = *v74;
          v89 = v74[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_120;
          }

          v94 = v73[1];
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_125;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v97 = *v74;
        v96 = v74[1];
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_82:
        if (v93)
        {
          goto LABEL_122;
        }

        v99 = *v73;
        v98 = v73[1];
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_124;
        }

        if (v100 < v92)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v72 - 1 >= a4)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v131)
        {
          goto LABEL_137;
        }

        v104 = v20;
        v105 = (v70 + 16 * (v72 - 1));
        a4 = *v105;
        v106 = (v70 + 16 * v72);
        v20 = v106[1];
        sub_23DF203F0(&(*v131)[v9[9] * *v105], &(*v131)[v9[9] * *v106], &(*v131)[v9[9] * v20], v134);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v20 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v104 + 16);
        if (v72 > v9)
        {
          goto LABEL_113;
        }

        *v105 = a4;
        v105[1] = v20;
        if (v72 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        memmove((v70 + 16 * v72), v106 + 2, 16 * (v9 - v72 - 1));
        v20 = v104;
        *(v104 + 16) = v9 - 1;
        v107 = v9 > 2;
        v9 = v130;
        if (!v107)
        {
          goto LABEL_96;
        }
      }

      v79 = v70 + 16 * a4;
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_115;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_116;
      }

      v86 = v74[1];
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_118;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_121;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = v73[1];
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_129;
        }

        if (v77 < v103)
        {
          v72 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v131[1];
    v19 = v129;
    v8 = v140;
    if (v129 >= v18)
    {
      goto LABEL_99;
    }
  }

  v53 = (v21 + v118);
  if (__OFADD__(v21, v118))
  {
    goto LABEL_133;
  }

  if (v53 >= v52)
  {
    v53 = v131[1];
  }

  if (v53 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v53)
  {
    goto LABEL_47;
  }

  v119 = v20;
  v124 = v5;
  v125 = v53;
  v54 = *v131;
  v55 = v9[9];
  v134 = v9[2];
  v56 = &v54[v55 * (v22 - 1)];
  v57 = -v55;
  v58 = (v21 - v22);
  v132 = v54;
  v121 = v55;
  a4 = &v54[v22 * v55];
LABEL_40:
  v128 = v56;
  v129 = v22;
  v126 = a4;
  v127 = v58;
  v59 = v56;
  while (1)
  {
    v60 = v138;
    v61 = v134;
    (v134)(v138, a4, v8);
    v62 = v139;
    v61(v139, v59, v140);
    sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
    v63 = sub_23E1FDB1C();
    v64 = *v136;
    v65 = v62;
    v8 = v140;
    (*v136)(v65, v140);
    v64(v60, v8);
    if ((v63 & 1) == 0)
    {
LABEL_45:
      v22 = v129 + 1;
      v56 = &v128[v121];
      v58 = v127 - 1;
      a4 = v126 + v121;
      if ((v129 + 1) == v125)
      {
        v22 = v125;
        v5 = v124;
        v9 = v130;
        v20 = v119;
        v21 = v122;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v132)
    {
      break;
    }

    v66 = *v135;
    v67 = v133;
    (*v135)(v133, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v66(v59, v67, v8);
    v59 += v57;
    a4 += v57;
    v51 = __CFADD__(v58++, 1);
    if (v51)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_23DF1FE24(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4CE18(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_23DE4CE18(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_23DF20974((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_23DF202C4(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_23DF202C4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_23DF20AE8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_23DF20974((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_23DF203F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = a4;
  v7 = sub_23E1FC08C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v61 = &v52 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v19 = (a2 - a1) / v15;
  v67 = a1;
  v66 = v64;
  v59 = (v12 + 8);
  v60 = (v12 + 16);
  v20 = v15;
  v21 = v17 / v15;
  if (v19 >= v17 / v15)
  {
    v36 = v64;
    sub_23DF319B4(a2, v17 / v15, v64);
    v37 = v36 + v21 * v20;
    v38 = -v20;
    v39 = v37;
    v55 = -v20;
    v56 = a1;
LABEL_36:
    v57 = a2;
    v58 = a2 + v38;
    v40 = a3;
    v53 = v39;
    while (1)
    {
      if (v37 <= v64)
      {
        v67 = a2;
        v65 = v39;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v39;
      v63 = v40 + v38;
      v41 = v37 + v38;
      v42 = v37;
      v43 = v61;
      v44 = *v60;
      (*v60)(v61, v41, v7);
      v45 = v62;
      v44(v62, v58, v7);
      sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
      LOBYTE(v44) = sub_23E1FDB1C();
      v46 = *v59;
      (*v59)(v45, v7);
      v46(v43, v7);
      if (v44)
      {
        v37 = v42;
        a3 = v63;
        if (v40 < v57 || v63 >= v57)
        {
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v54;
          v38 = v55;
          a1 = v56;
        }

        else
        {
          v50 = v54;
          v38 = v55;
          v39 = v54;
          v16 = v40 == v57;
          v51 = v58;
          a2 = v58;
          a1 = v56;
          if (!v16)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v51;
            v39 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = v63;
      if (v40 < v42 || v63 >= v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v40 = v47;
        v37 = v41;
        v39 = v41;
        a1 = v56;
        a2 = v57;
        v38 = v55;
      }

      else
      {
        v39 = v41;
        v16 = v42 == v40;
        v40 = v63;
        v37 = v41;
        a1 = v56;
        a2 = v57;
        v38 = v55;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v40 = v47;
          v37 = v41;
          v39 = v41;
        }
      }
    }

    v67 = a2;
    v65 = v53;
  }

  else
  {
    v22 = v64;
    sub_23DF319B4(a1, (a2 - a1) / v15, v64);
    v58 = v22 + v19 * v20;
    v65 = v58;
    v23 = v20;
    v63 = a3;
    while (v64 < v58 && a2 < a3)
    {
      v25 = a1;
      v26 = v61;
      v27 = *v60;
      (*v60)(v61, a2, v7);
      v28 = a2;
      v29 = v62;
      v27(v62, v64, v7);
      sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
      v30 = sub_23E1FDB1C();
      v31 = *v59;
      (*v59)(v29, v7);
      v31(v26, v7);
      if (v30)
      {
        a2 = v28 + v23;
        v32 = v25;
        if (v25 < v28 || v25 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v63;
        }

        else
        {
          a3 = v63;
          if (v25 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v34 = v64 + v23;
        v32 = v25;
        if (v25 < v64 || v25 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v28;
          a3 = v63;
        }

        else
        {
          a3 = v63;
          a2 = v28;
          if (v25 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v66 = v34;
        v64 = v34;
      }

      a1 = v32 + v23;
      v67 = a1;
    }
  }

LABEL_58:
  sub_23DF20B2C(&v67, &v66, &v65, MEMORY[0x277CC9578]);
  return 1;
}

uint64_t sub_23DF20974(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_23DF31CF0(a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *a4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *a4;
    v13 = v7 == a4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_23DF31CF0(a2);
  v10 = &a4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > a4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v17])
  {
    memmove(v6, a4, 8 * v17);
  }

  return 1;
}

void sub_23DF20B2C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v5 + (v6 - v5) / v9 * v9;
  if (v4 < v5 || v4 >= v11)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_23DF20C0C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_23DF20C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C290, &unk_23E224020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_23DF20D38()
{
  OUTLINED_FUNCTION_90();
  v3 = v2;
  v4 = sub_23E1FBBDC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_94_0();
  v26 = v9;
  if (*(v3 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D710, &qword_23E229898), OUTLINED_FUNCTION_20(), v10 = sub_23E1FE57C(), *(v3 + 16)))
  {
    OUTLINED_FUNCTION_8_7();
    while (v11 < *(v3 + 16))
    {
      v12 = OUTLINED_FUNCTION_11_12(v11);
      (v3)(v12);
      v13 = *(v10 + 40);
      OUTLINED_FUNCTION_9_11();
      sub_23DF21C74(&qword_27E32CD30, v14);
      OUTLINED_FUNCTION_53_3();
      OUTLINED_FUNCTION_48_6();
      while (1)
      {
        OUTLINED_FUNCTION_24_6(v15);
        if (v17)
        {
          break;
        }

        v18 = OUTLINED_FUNCTION_29_4();
        (v3)(v18);
        OUTLINED_FUNCTION_9_11();
        sub_23DF21C74(&qword_27E32D8D0, v19);
        OUTLINED_FUNCTION_41_5();
        v20 = OUTLINED_FUNCTION_51_3();
        (v10)(v20);
        if (v13)
        {
          (v10)(v26, v4);
          v10 = v1;
          goto LABEL_12;
        }

        v15 = v0 + 1;
        v10 = v1;
      }

      v21 = OUTLINED_FUNCTION_18_13(v16);
      v22(v21);
      v23 = *(v10 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_16;
      }

      *(v10 + 16) = v25;
LABEL_12:
      OUTLINED_FUNCTION_39_4();
      if (v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_76();
  }
}

void sub_23DF20F38()
{
  OUTLINED_FUNCTION_90();
  v3 = v2;
  v4 = sub_23E1FD0EC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_94_0();
  v26 = v9;
  if (*(v3 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DA20, &qword_23E22A3A0), OUTLINED_FUNCTION_20(), v10 = sub_23E1FE57C(), *(v3 + 16)))
  {
    OUTLINED_FUNCTION_8_7();
    while (v11 < *(v3 + 16))
    {
      v12 = OUTLINED_FUNCTION_11_12(v11);
      (v3)(v12);
      v13 = *(v10 + 40);
      OUTLINED_FUNCTION_13_9();
      sub_23DF21C74(&qword_27E32DA28, v14);
      OUTLINED_FUNCTION_53_3();
      OUTLINED_FUNCTION_48_6();
      while (1)
      {
        OUTLINED_FUNCTION_24_6(v15);
        if (v17)
        {
          break;
        }

        v18 = OUTLINED_FUNCTION_29_4();
        (v3)(v18);
        OUTLINED_FUNCTION_13_9();
        sub_23DF21C74(&qword_27E32DA30, v19);
        OUTLINED_FUNCTION_41_5();
        v20 = OUTLINED_FUNCTION_51_3();
        (v10)(v20);
        if (v13)
        {
          (v10)(v26, v4);
          v10 = v1;
          goto LABEL_12;
        }

        v15 = v0 + 1;
        v10 = v1;
      }

      v21 = OUTLINED_FUNCTION_18_13(v16);
      v22(v21);
      v23 = *(v10 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_16;
      }

      *(v10 + 16) = v25;
LABEL_12:
      OUTLINED_FUNCTION_39_4();
      if (v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_76();
  }
}

uint64_t sub_23DF21138(uint64_t a1)
{
  v2 = sub_23E1FC21C();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9D8, &qword_23E22A358);
  result = sub_23E1FE57C();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_23DF21C74(&qword_27E32D9E0, MEMORY[0x277CC99D0]);
    v16 = sub_23E1FDADC();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_23DF21C74(&qword_27E32D9E8, MEMORY[0x277CC99D0]);
      v23 = sub_23E1FDB2C();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_23DF2147C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E1FDBDC();

  [a3 setDateFormat_];
}

unint64_t sub_23DF214E0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_23E1FBBDC();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23DF21778(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23DF21860(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_26_4();
  sub_23DF1EC30();
}

uint64_t sub_23DF21980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF219F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF21A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF21AEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23DE7E040(a1, a2);
  }

  return a1;
}

unint64_t sub_23DF21B00()
{
  result = qword_27E32DA10;
  if (!qword_27E32DA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32DA10);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DF21B74(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_23E1FE4FC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_23DF21BB4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 16);
  v12 = v7 + *(v10 + 72) * v5;

  return v11(a5, v12, v9);
}

uint64_t sub_23DF21C74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligencePlatformDataActionsFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_23DF21D68()
{
  result = qword_27E32DAC8;
  if (!qword_27E32DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DAC8);
  }

  return result;
}

void OUTLINED_FUNCTION_8_7()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_11_12@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_13@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

BOOL OUTLINED_FUNCTION_20_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_27_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

void OUTLINED_FUNCTION_39_4()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_41_5()
{
  v2 = *(v0 - 88);

  return sub_23E1FDB2C();
}

void OUTLINED_FUNCTION_42_4()
{
  v2 = *(v0 + 16) + 1;

  sub_23DE640F4();
}

uint64_t OUTLINED_FUNCTION_43_4()
{

  return sub_23E1FE84C();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return sub_23E1FDCCC();
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_23E1FDADC();
}

id sub_23DF220FC()
{
  v204 = sub_23E1FC77C();
  v207 = *(v204 - 8);
  v0 = *(v207 + 64);
  MEMORY[0x28223BE20](v204);
  v203 = (v180 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v11 = *MEMORY[0x277D7CB18];
  v12 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  v197 = 0xD000000000000016;
  *(inited + 48) = 0x800000023E258E70;
  v13 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = v11;
  v15 = v13;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v208 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v209 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v206 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  v199 = xmmword_23E222370;
  *(v22 + 16) = xmmword_23E222370;
  v23 = *MEMORY[0x277D7CC28];
  *(v22 + 32) = *MEMORY[0x277D7CC28];
  v24 = v21;
  v25 = v23;
  v202 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = v208;
  v27 = [v208 &selRef_characterIsMember_];
  v205 = v5;
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 40) = v29;
  v30 = *MEMORY[0x277D7CC30];
  v31 = v209;
  *(v22 + 64) = v209;
  *(v22 + 72) = v30;
  v32 = v30;
  v33 = sub_23E1FDCBC();
  v201 = v34;
  v202 = v33;
  sub_23E1FDCBC();
  v35 = v9;
  sub_23E1FC14C();
  v36 = [v26 bundleURL];
  sub_23E1FBF9C();

  v37 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 104) = v31;
  *(v22 + 80) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v39 = sub_23E1FDABC();
  v40 = v206;
  v41 = sub_23DF3BE54(v39);
  v42 = MEMORY[0x277D7CB48];
  *(inited + 120) = v41;
  v43 = *v42;
  *(inited + 144) = v40;
  *(inited + 152) = v43;
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v44 = *MEMORY[0x277D7CB60];
  v45 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v44;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000023E258F00;
  v46 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v45;
  *(inited + 232) = v46;
  v47 = v43;
  v48 = v44;
  v49 = v46;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v50 = [v26 bundleURL];
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 240) = v52;
  v53 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v209;
  *(inited + 272) = v53;
  v198 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_23E222350;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  v55 = MEMORY[0x277D839B0];
  *(v54 + 48) = 1;
  *(v54 + 72) = v55;
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v56 = v53;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v57 = [v26 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v59 = v35;
  sub_23DE477A0();
  *(v54 + 96) = v60;
  *(v54 + 120) = v209;
  *(v54 + 128) = 0x6465726975716552;
  *(v54 + 136) = 0xE800000000000000;
  *(v54 + 144) = 1;
  *(v54 + 168) = MEMORY[0x277D839B0];
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v54 + 216) = v187;
  *(v54 + 192) = &unk_2850250C0;
  v61 = MEMORY[0x277D837D0];
  v62 = sub_23E1FDABC();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v64 = v198;
  v198[35] = v62;
  v65 = *MEMORY[0x277D7CBA0];
  v64[38] = v63;
  v64[39] = v65;
  v180[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_23E225530;
  v206 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v66 = swift_allocObject();
  v193 = xmmword_23E224C10;
  *(v66 + 16) = xmmword_23E224C10;
  v67 = *MEMORY[0x277D7CDF8];
  v191 = 0x800000023E24FDA0;
  v68 = v197;
  *(v66 + 32) = v67;
  *(v66 + 40) = v68;
  *(v66 + 48) = 0x800000023E24FDA0;
  v69 = *MEMORY[0x277D7CE00];
  *(v66 + 64) = v61;
  *(v66 + 72) = v69;
  *(v66 + 80) = 0x726353206C6C7546;
  *(v66 + 88) = 0xEB000000006E6565;
  v70 = *MEMORY[0x277D7CE38];
  *(v66 + 104) = v61;
  *(v66 + 112) = v70;
  v200 = swift_allocObject();
  v190 = xmmword_23E2246F0;
  *(v200 + 16) = xmmword_23E2246F0;
  v71 = v67;
  v72 = v69;
  v73 = v71;
  v74 = v72;
  v75 = v70;
  v184 = v73;
  *&v183 = v74;
  v185 = v75;
  v76 = v65;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v77 = v59;
  sub_23E1FC14C();
  v78 = v208;
  v79 = [v208 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v81 = v77;
  sub_23DE477A0();
  v82 = v200;
  *(v200 + 32) = v83;
  v196 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v84 = [v78 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v82 + 40) = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v186 = v87;
  *(v66 + 120) = v82;
  v88 = *MEMORY[0x277D7CE70];
  *(v66 + 144) = v87;
  *(v66 + 152) = v88;
  *(v66 + 160) = 0xD00000000000001ELL;
  *(v66 + 168) = 0x800000023E24DC00;
  v89 = *MEMORY[0x277D7CE80];
  *(v66 + 184) = MEMORY[0x277D837D0];
  *(v66 + 192) = v89;
  v90 = v88;
  v91 = v89;
  v92 = v90;
  v93 = v91;
  v181 = v92;
  v182 = v93;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v94 = v81;
  sub_23E1FC14C();
  v95 = [v208 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v97 = v94;
  sub_23DE477A0();
  *(v66 + 200) = v98;
  v99 = *MEMORY[0x277D7CEE8];
  *(v66 + 224) = v209;
  *(v66 + 232) = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_23E2235B0;
  v101 = v203;
  *v203 = 2;
  LODWORD(v196) = *MEMORY[0x277D7BEE0];
  v102 = *(v207 + 104);
  v207 += 104;
  v195 = v102;
  v102(v101);
  v192 = sub_23E1FC79C();
  v103 = objc_allocWithZone(v192);
  v194 = v99;
  *(v100 + 32) = sub_23E1FC78C();
  *(v66 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(v66 + 240) = v100;
  _s3__C3KeyVMa_0(0);
  v189 = v104;
  v200 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v105 = sub_23E1FDABC();
  v106 = sub_23DF3BE9C(v105);
  *(v202 + 32) = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = v193;
  v108 = v184;
  v109 = v197;
  *(v107 + 32) = v184;
  *(v107 + 40) = v109;
  *(v107 + 48) = v191;
  v110 = MEMORY[0x277D837D0];
  v111 = v183;
  *(v107 + 64) = MEMORY[0x277D837D0];
  *(v107 + 72) = v111;
  *(v107 + 80) = 0x776F646E6957;
  *(v107 + 88) = 0xE600000000000000;
  v112 = v185;
  *(v107 + 104) = v110;
  *(v107 + 112) = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = v190;
  v197 = v108;
  *&v193 = v111;
  v191 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v114 = v97;
  sub_23E1FC14C();
  v115 = v208;
  v116 = [v208 bundleURL];
  sub_23E1FBF9C();

  v117 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v113 + 32) = v118;
  v191 = sub_23E1FDCBC();
  *&v190 = v119;
  sub_23E1FDCBC();
  v120 = v114;
  sub_23E1FC14C();
  v121 = [v115 bundleURL];
  sub_23E1FBF9C();

  v122 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v113 + 40) = v123;
  *(v107 + 120) = v113;
  v124 = v181;
  v125 = v182;
  *(v107 + 144) = v186;
  *(v107 + 152) = v124;
  *(v107 + 160) = 0xD00000000000002ELL;
  *(v107 + 168) = 0x800000023E2590D0;
  *(v107 + 184) = MEMORY[0x277D837D0];
  *(v107 + 192) = v125;
  *&v190 = v124;
  v191 = v125;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v180[0] = v120;
  sub_23E1FC14C();
  v126 = [v208 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v107 + 200) = v128;
  v129 = v194;
  *(v107 + 224) = v209;
  *(v107 + 232) = v129;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v130 = swift_allocObject();
  *(v130 + 16) = v199;
  v132 = v203;
  v131 = v204;
  *v203 = 2;
  v195(v132, v196, v131);
  v133 = v192;
  v134 = objc_allocWithZone(v192);
  v135 = sub_23E1FC78C();
  *(v130 + 56) = v133;
  *(v130 + 32) = v135;
  v136 = MEMORY[0x277D837D0];
  v137 = sub_23E1FDABC();
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v130 + 88) = v185;
  *(v130 + 64) = v137;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  *(v107 + 264) = v184;
  *(v107 + 240) = v130;
  v138 = sub_23E1FDABC();
  v139 = sub_23DF3BE9C(v138);
  *(v202 + 40) = v139;
  v140 = swift_initStackObject();
  v183 = xmmword_23E224710;
  *(v140 + 16) = xmmword_23E224710;
  v182 = 0x800000023E250E40;
  *(v140 + 32) = v197;
  *(v140 + 40) = 0xD000000000000011;
  *(v140 + 48) = 0x800000023E250E40;
  v141 = v193;
  *(v140 + 64) = v136;
  *(v140 + 72) = v141;
  *(v140 + 80) = 0;
  v142 = v190;
  *(v140 + 104) = MEMORY[0x277D839B0];
  *(v140 + 112) = v142;
  *(v140 + 120) = 0xD00000000000001FLL;
  *(v140 + 128) = 0x800000023E259150;
  v143 = v191;
  *(v140 + 144) = v136;
  *(v140 + 152) = v143;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v144 = [v208 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v140 + 160) = v146;
  v147 = v194;
  *(v140 + 184) = v209;
  *(v140 + 192) = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = v199;
  v150 = v203;
  v149 = v204;
  *v203 = 2;
  v195(v150, v196, v149);
  v151 = v192;
  v152 = objc_allocWithZone(v192);
  v153 = sub_23E1FC78C();
  *(v148 + 56) = v151;
  *(v148 + 32) = v153;
  v154 = MEMORY[0x277D837D0];
  v155 = sub_23E1FDABC();
  v156 = v184;
  *(v148 + 88) = v185;
  *(v148 + 64) = v155;
  *(v140 + 224) = v156;
  *(v140 + 200) = v148;
  v157 = sub_23E1FDABC();
  v158 = sub_23DF3BE9C(v157);
  v159 = v202;
  *(v202 + 48) = v158;
  v160 = swift_allocObject();
  *(v160 + 16) = v183;
  *(v160 + 32) = v197;
  *(v160 + 40) = 0xD000000000000011;
  *(v160 + 48) = v182;
  v161 = v193;
  *(v160 + 64) = v154;
  *(v160 + 72) = v161;
  *(v160 + 80) = 0;
  v162 = *MEMORY[0x277D7CE40];
  v163 = MEMORY[0x277D839B0];
  *(v160 + 104) = MEMORY[0x277D839B0];
  *(v160 + 112) = v162;
  *(v160 + 120) = 1;
  *(v160 + 144) = v163;
  *(v160 + 152) = v190;
  *(v160 + 160) = 0xD000000000000030;
  *(v160 + 168) = 0x800000023E2591D0;
  v164 = v191;
  *(v160 + 184) = v154;
  *(v160 + 192) = v164;
  v165 = v162;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v166 = [v208 bundleURL];
  sub_23E1FBF9C();

  v167 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v160 + 224) = v209;
  *(v160 + 200) = v168;
  v169 = sub_23E1FDABC();
  *(v159 + 56) = sub_23DF3BE9C(v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v171 = v198;
  v198[40] = v159;
  v172 = *MEMORY[0x277D7CCA8];
  v171[43] = v170;
  v171[44] = v172;
  v173 = v172;
  v174 = sub_23E1FDABC();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA30, &unk_23E225EB0);
  v171[45] = v174;
  v176 = *MEMORY[0x277D7CF20];
  v171[48] = v175;
  v171[49] = v176;
  v171[53] = v187;
  v171[50] = &unk_285025258;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v177 = v176;
  v178 = sub_23E1FDABC();
  return sub_23DF3BF9C(v178);
}