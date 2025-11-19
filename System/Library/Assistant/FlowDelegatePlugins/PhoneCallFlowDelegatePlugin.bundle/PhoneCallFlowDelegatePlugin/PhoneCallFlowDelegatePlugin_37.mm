_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_58_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[9] = a1;
  v2[10] = a2;
  v2[11] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_73_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2;
  return 0;
}

void OUTLINED_FUNCTION_80_9()
{
  v2 = *(v0 + 72);
  strcpy((v1 + 80), "callTypesCount");
  *(v1 + 95) = -18;
}

uint64_t OUTLINED_FUNCTION_85_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v2;
  *(result + 72) = a2;
  strcpy((result + 80), "isLastWindow");
  *(result + 93) = 0;
  *(result + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = 0x746E65746E69;
  v3[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_120_3(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 90) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a5;
  *(v8 + 89) = a4;
  *(v8 + 88) = a2;
  *(v8 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_2@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[2].n128_u64[0] = v3 + 3;
  a1[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_127_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of PhoneCallNLIntent?(a3, v3, a1, a2);
}

void OUTLINED_FUNCTION_135_2()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
}

uint64_t OUTLINED_FUNCTION_144_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(result + 40) = 0xEC000000776F646ELL;
  return result;
}

uint64_t OUTLINED_FUNCTION_163_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[15] = result;
  v3[16] = v4;
  v3[17] = (a2 - 32) | 0x8000000000000000;
  v3[18] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_168_0(uint64_t result, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_171_0@<X0>(uint64_t a1@<X8>)
{
  v2[15] = v1;
  v2[16] = a1;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_182_0(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(v10 + 56) = a7;
  *(v10 + 64) = v9;
  *(v10 + 98) = a9;
  *(v10 + 97) = a8;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 96) = a2;
  *(v10 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_183_0(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = result;
  *(v6 + 24) = a3;
  return result;
}

uint64_t SearchCallHistoryHandleFlowStrategy.__allocating_init(sharedGlobals:searchCallHistoryCATsSimple:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_21();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_5();
  SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(v4, a2);
  return v2;
}

uint64_t SearchCallHistoryFlow.__allocating_init(delegate:rchFlow:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  *(v10 - v9) = a2;
  swift_storeEnumTagMultiPayload();

  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(v15, v12);
  v13 = (*(v2 + 144))(v11, a1, v15);

  return v13;
}

void SearchCallHistoryFlow.__allocating_init(delegate:input:app:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v8 = OUTLINED_FUNCTION_23_1(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMR) + 48);
  v15 = type metadata accessor for Input();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, v4, v15);
  *(v13 + v14) = v2;
  swift_storeEnumTagMultiPayload();

  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(v18, v17);
  (*(v0 + 144))(v13, v6, v18);
  OUTLINED_FUNCTION_5();

  (*(v16 + 8))(v4, v15);
  OUTLINED_FUNCTION_65();
}

uint64_t key path setter for SearchCallHistoryFlow.state : SearchCallHistoryFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchCallHistoryFlow.State(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  swift_beginAccess();
  outlined assign with take of SearchCallHistoryFlow.State(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t SearchCallHistoryFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  swift_beginAccess();
  return outlined init with copy of SearchCallHistoryFlow.State(v1 + v3, a1);
}

void SearchCallHistoryFlow.__allocating_init(intent:intentResponse:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  *v16 = v9;
  v16[1] = v7;
  v16[2] = v5;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(v3, v21);
  v17 = type metadata accessor for SearchCallHistoryRCHFlowDelegate();
  OUTLINED_FUNCTION_41_1(v17);
  v18 = v9;
  v19 = v7;

  v20 = SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(v21);
  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(v21, v20);
  (*(v1 + 144))(v16, v20, v21);

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryFlow.__allocating_init(state:delegate:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SearchCallHistoryFlow.init(state:delegate:searchCallHistorySharedGlobals:)(a1, a2, a3);
  return v9;
}

uint64_t SearchCallHistoryFlow.init(state:delegate:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix);
  *v7 = type metadata accessor for SearchCallHistoryFlow(0);
  v7[1] = &outlined read-only object #0 of SearchCallHistoryFlow.init(state:delegate:searchCallHistorySharedGlobals:);
  v7[2] = 0;
  v7[3] = 0;
  *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_delegate) = a2;
  outlined init with copy of SignalProviding(a2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals);
  memcpy((v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals), a3, 0xC8uLL);
  outlined init with take of SearchCallHistoryFlow.State(a1, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
  return v3;
}

uint64_t SearchCallHistoryFlow.on(input:)()
{
  v2 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v8 = (v7 - v6);
  (*(*v0 + 120))();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = *v8;
    v10 = dispatch thunk of AnyValueFlow.on(input:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    OUTLINED_FUNCTION_5();

    v12 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v13 = OUTLINED_FUNCTION_14_2();
      v23 = v13;
      *v1 = 136315138;
      v14 = OUTLINED_FUNCTION_5_5((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      v22 = v15;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v14, v16, v17, v18);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v22, &v23);
      OUTLINED_FUNCTION_17_21();

      *(v1 + 4) = v0;
      OUTLINED_FUNCTION_11_58(&dword_0, v19, v20, "%s: Flow is not in a state that will expect input.");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_14_0();
    }

    outlined destroy of SearchCallHistoryFlow.State(v8);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t SearchCallHistoryFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  OUTLINED_FUNCTION_36_4();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in SearchCallHistoryFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = type metadata accessor for ExecuteResponse();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[6] = v11;
  v12 = *(*a6 + 168);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v6[7] = v14;
  *v14 = v6;
  v14[1] = closure #1 in SearchCallHistoryFlow.execute(completion:);

  return v16(v11);
}

uint64_t closure #1 in SearchCallHistoryFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(v0 + 16))(*(v0 + 48));
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_55();
  v6(v5);

  OUTLINED_FUNCTION_11();

  return v7();
}

uint64_t SearchCallHistoryFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[26] = v2;
  v1[27] = v0;
  v3 = type metadata accessor for Input();
  v1[28] = v3;
  v4 = *(v3 - 8);
  v1[29] = v4;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v1[33] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[34] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];

  OUTLINED_FUNCTION_50_25();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  v24 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = v0[27];
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = OUTLINED_FUNCTION_42();
    v7 = OUTLINED_FUNCTION_36();
    v21 = v7;
    v22 = 0;
    *v6 = 136315138;
    v8 = OUTLINED_FUNCTION_5_5((v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
    v23 = v9;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v8, v10, v11, v12);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "%s needsDialog failed for RF", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_26_0();
  }

  v14 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v18 = v0[26];
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_50_25();

  OUTLINED_FUNCTION_11();

  return v19();
}

void SearchCallHistoryFlow.execute()()
{
  v165 = v0;
  v2 = (*(v0 + 216) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals);
  v3 = v2[3];
  v4 = v2[4];
  v5 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_5();
  v9(v8, v4);
  v10 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  OUTLINED_FUNCTION_43_3();
  v11 = DeviceState.isAuthenticatedForPhone.getter();
  v12 = __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if (v11)
  {
    v13 = *(v0 + 264);
    v14 = *(v0 + 272);
    (*(**(v0 + 216) + 120))(v12);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v105 = *(v0 + 272);
        v106 = *v105;
        v107 = v105[1];

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v108 = *(v0 + 216);
        v109 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v109, static Logger.siriPhone);

        v110 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();

        if (OUTLINED_FUNCTION_126())
        {
          v111 = *(v0 + 216);
          OUTLINED_FUNCTION_42();
          v164 = OUTLINED_FUNCTION_24_37();
          *v108 = 136315138;
          OUTLINED_FUNCTION_5_5((v111 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
          OUTLINED_FUNCTION_43_28();
          v116 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v112, v113, v114, v115);
          v124 = OUTLINED_FUNCTION_36_28(v116, v117, v118, v119, v120, v121, v122, v123, v156, v157);

          *(v108 + 4) = v124;
          OUTLINED_FUNCTION_12_58(&dword_0, v125, v126, "%s state:checkUnsupportedParameters, offer confirmation flow");
          OUTLINED_FUNCTION_15_50();
          OUTLINED_FUNCTION_5_7();
        }

        v128 = *(v0 + 208);
        v127 = *(v0 + 216);
        v129 = v2[3];
        v130 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v129);
        v131 = *(v130 + 16);

        v131(v129, v130);
        v132 = *(v0 + 40);
        v133 = *(v0 + 56);
        v134 = __swift_project_boxed_opaque_existential_1((v0 + 16), v132);
        *(v0 + 128) = v132;
        *(v0 + 136) = v133;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 104));
        (*(*(v132 - 8) + 16))(boxed_opaque_existential_1, v134, v132);
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
        OUTLINED_FUNCTION_41_1(v136);
        type metadata accessor for UnsupportedSearchParametersFlowStrategy();
        lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy, 255, type metadata accessor for UnsupportedSearchParametersFlowStrategy);
        v137 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        *(v0 + 184) = v137;
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_26;
      case 2u:
        v78 = **(v0 + 272);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v79 = *(v0 + 216);
        v80 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v80, static Logger.siriPhone);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = *(v0 + 216);
          OUTLINED_FUNCTION_42();
          v84 = OUTLINED_FUNCTION_14_2();
          v164 = v84;
          *v79 = 136315138;
          OUTLINED_FUNCTION_5_5((v83 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
          OUTLINED_FUNCTION_43_28();
          v89 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v85, v86, v87, v88);
          OUTLINED_FUNCTION_36_28(v89, v90, v91, v92, v93, v94, v95, v96, v156, v157);
          OUTLINED_FUNCTION_35_12();

          *(v79 + 4) = v1;
          _os_log_impl(&dword_0, v81, v82, "%s state: needsExecution", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          OUTLINED_FUNCTION_5_7();
          OUTLINED_FUNCTION_14_0();
        }

        v98 = *(v0 + 208);
        v97 = *(v0 + 216);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_26:

        break;
      case 3u:
        v99 = *(v0 + 272);
        *(v0 + 280) = *v99;
        *(v0 + 288) = v99[1];
        *(v0 + 296) = v99[2];
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 304) = v100;
        *v100 = v101;
        v100[1] = SearchCallHistoryFlow.execute();
        v102 = *(v0 + 208);
        v103 = *(v0 + 216);
        OUTLINED_FUNCTION_42_5();

        SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:)();
        return;
      case 4u:
        v56 = **(v0 + 272);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v57 = *(v0 + 216);
        v58 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v58, static Logger.siriPhone);

        swift_errorRetain();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = *(v0 + 216);
          v62 = OUTLINED_FUNCTION_86_1();
          v164 = OUTLINED_FUNCTION_16_13();
          *v62 = 136315394;
          OUTLINED_FUNCTION_5_5((v61 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
          OUTLINED_FUNCTION_43_28();
          v67 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v63, v64, v65, v66);
          OUTLINED_FUNCTION_36_28(v67, v68, v69, v70, v71, v72, v73, v74, v156, v157);
          OUTLINED_FUNCTION_35_12();

          *(v62 + 4) = v1;
          *(v62 + 12) = 2080;
          *(v0 + 200) = v56;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v75 = String.init<A>(describing:)();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v164);
          OUTLINED_FUNCTION_35_12();

          *(v62 + 14) = v1;
          _os_log_impl(&dword_0, v59, v60, "%s SearchCallHistoryIntent RCH Failed with error: %s", v62, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_7();
          OUTLINED_FUNCTION_14_0();
        }

        v77 = *(v0 + 208);
        static ExecuteResponse.complete()();

        break;
      case 5u:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v138 = *(v0 + 216);
        v139 = type metadata accessor for Logger();
        __swift_project_value_buffer(v139, static Logger.siriPhone);
        OUTLINED_FUNCTION_43_28();
        _StringGuts.grow(_:)(78);
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(*(v138 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix), *(v138 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 8), *(v138 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 16), *(v138 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 24));
        v140._object = 0x80000000004610C0;
        v140._countAndFlagsBits = 0xD00000000000004CLL;
        String.append(_:)(v140);
        swift_bridgeObjectRetain_n();
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = OUTLINED_FUNCTION_42();
          v144 = OUTLINED_FUNCTION_36();
          v164 = v144;
          *v143 = 136315138;
          *(v143 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, &v164);
          _os_log_impl(&dword_0, v141, v142, "%s", v143, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v144);
          OUTLINED_FUNCTION_14_0();
          OUTLINED_FUNCTION_26_0();
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)();
        _assertionFailure(_:_:file:line:flags:)();
        OUTLINED_FUNCTION_42_5();
        return;
      case 6u:
        v145 = *(v0 + 208);
        static ExecuteResponse.complete()();
        break;
      default:
        v15 = *(v0 + 272);
        v16 = *(v0 + 256);
        v18 = *(v0 + 224);
        v17 = *(v0 + 232);
        v161 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMR) + 48));
        (*(v17 + 32))(v16, v15, v18);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v20 = *(v0 + 248);
        v19 = *(v0 + 256);
        v21 = *(v0 + 224);
        v22 = *(v0 + 232);
        v23 = *(v0 + 216);
        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.siriPhone);
        v25 = *(v22 + 16);
        v25(v20, v19, v21);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();

        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 248);
        v31 = *(v0 + 224);
        v30 = *(v0 + 232);
        if (v28)
        {
          v158 = v27;
          v32 = *(v0 + 216);
          v33 = OUTLINED_FUNCTION_86_1();
          v164 = OUTLINED_FUNCTION_16_13();
          *v33 = 136315394;
          OUTLINED_FUNCTION_5_5((v32 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
          OUTLINED_FUNCTION_43_28();
          v38 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v34, v35, v36, v37);
          OUTLINED_FUNCTION_36_28(v38, v39, v40, v41, v42, v43, v44, v45, v156, v157);
          OUTLINED_FUNCTION_17_21();

          *(v33 + 4) = v25;
          *(v33 + 12) = 2080;
          OUTLINED_FUNCTION_18_32();
          lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(v46, 255, v47);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = OUTLINED_FUNCTION_35_24();
          v50(v49);
          v51 = OUTLINED_FUNCTION_43_3();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v53);
          OUTLINED_FUNCTION_5();

          *(v33 + 14) = v48;
          _os_log_impl(&dword_0, v26, v158, "%s Converting input: %s to INSearchCallHistoryIntent.", v33, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_5_7();
        }

        else
        {

          v146 = OUTLINED_FUNCTION_35_24();
          v147(v146);
        }

        v148 = *(v0 + 256);
        v149 = *(v0 + 240);
        v151 = *(v0 + 216);
        v150 = *(v0 + 224);
        v159 = *(v0 + 208);
        v25(v149, v148, v150);
        outlined init with copy of SignalProviding(v2, v0 + 144);
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMR);
        OUTLINED_FUNCTION_41_1(v152);
        *(v0 + 192) = specialized IntentConversionFlow.init(input:app:sharedGlobals:)(v149, v161, (v0 + 144));
        v153 = swift_allocObject();
        *(v153 + 16) = partial apply for implicit closure #6 in implicit closure #5 in SearchCallHistoryFlow.execute();
        *(v153 + 24) = v151;
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type IntentConversionFlow<INSearchCallHistoryIntent> and conformance IntentConversionFlow<A>, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INSearchb7HistoryF0CGMR);

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        v160(v148, v150);
        break;
    }
  }

  else
  {
    v54 = *(v0 + 208);
    v55 = *(v0 + 216);
    SearchCallHistoryFlow.pushUnlockFlow()();
  }

  OUTLINED_FUNCTION_50_25();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_42_5();

  __asm { BRAA            X1, X16 }
}

void SearchCallHistoryFlow.processIntentConversionResult(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v151 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v148 = v140 - v8;
  v9 = type metadata accessor for CATOption();
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7(v16);
  v152 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v21 = OUTLINED_FUNCTION_65_18();
  v22 = type metadata accessor for SearchCallHistoryFlow.State(v21);
  v23 = OUTLINED_FUNCTION_23_1(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_12_5();
  v155 = (v26 - v27);
  __chkstk_darwin(v28);
  v30 = v140 - v29;
  v31 = type metadata accessor for Input();
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_12_5();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_45_19();
  v42 = *(v41 + 120);
  v153 = v0;
  v149 = v41 + 120;
  v150 = v42;
  v42();
  v154 = v22;
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of SearchCallHistoryFlow.State(v30);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
    v44 = v153;

    v45 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_71_10();
    v46 = OUTLINED_FUNCTION_126();
    v47 = v155;
    if (v46)
    {
      v48 = OUTLINED_FUNCTION_86_1();
      v156[0] = OUTLINED_FUNCTION_16_13();
      *v48 = 136315394;
      v49 = OUTLINED_FUNCTION_5_5((v44 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      OUTLINED_FUNCTION_92_2(v49, v50, v51, v52, v53);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_17_21();

      *(v48 + 4) = v1;
      *(v48 + 12) = 2080;
      v150(v54);
      v55 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v156);
      OUTLINED_FUNCTION_17_21();

      *(v48 + 14) = v1;
      _os_log_impl(&dword_0, v45, v2, "%s Unexpected state, stopping: %s", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_26_0();
    }

    swift_storeEnumTagMultiPayload();
    v111 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_17_3();
    v112 = v44 + v111;
    v113 = v47;
  }

  else
  {
    v146 = v15;
    v149 = v2;
    v150 = v16;
    v57 = *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CtMR) + 48)];
    (*(v34 + 32))(v1, v30, v31);
    v58 = v1;
    if (v151)
    {
      v144 = v31;
      v59 = one-time initialization token for siriPhone;
      v60 = v151;
      if (v59 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v143 = v60;
      v147 = v58;
      v61 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v61, static Logger.siriPhone);
      v62 = v153;

      v140[1] = v59;
      v63 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      v64 = OUTLINED_FUNCTION_31_13();
      v151 = v57;
      v145 = v34;
      if (v64)
      {
        OUTLINED_FUNCTION_42();
        v65 = OUTLINED_FUNCTION_14_2();
        v156[0] = v65;
        *v2 = 136315138;
        v66 = OUTLINED_FUNCTION_5_5((v62 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
        OUTLINED_FUNCTION_92_2(v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_35_12();

        *(v2 + 4) = v22;
        OUTLINED_FUNCTION_11_58(&dword_0, v71, v72, "%s adding INSearchCallHistoryIntent which only generates dialogs using Response Framework");
        __swift_destroy_boxed_opaque_existential_1(v65);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_14_0();
      }

      v73 = *(v62 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_delegate);
      outlined init with copy of SignalProviding(v73 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, &v159);
      v74 = v161;
      __swift_project_boxed_opaque_existential_1(&v159, v160);
      v75 = *(v74 + 104);
      v76 = OUTLINED_FUNCTION_5();
      v77(v76, v74);
      v78 = v157;
      v79 = v158;
      __swift_project_boxed_opaque_existential_1(v156, v157);
      v80 = *(v79 + 56);
      v81 = type metadata accessor for SearchCallHistoryRCHFlowDelegate();
      v142 = v81;
      v141 = lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for SearchCallHistoryRCHFlowDelegate);
      v82 = v149;
      v80(v73, v81, v141, v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v156);
      __swift_destroy_boxed_opaque_existential_1(&v159);
      v83 = (v62 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals);
      outlined init with copy of SignalProviding(v62 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals, &v159);
      type metadata accessor for SearchCallHistoryCATsSimple();
      static CATOption.defaultMode.getter();
      v84 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for SearchCallHistoryHandleFlowStrategy();
      v85 = swift_allocObject();
      SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(&v159, v84);
      *&v159 = v85;
      lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy, v86, type metadata accessor for SearchCallHistoryHandleFlowStrategy);
      static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
      v87 = v150;
      RCHChildFlowProducers.handleIntentFlowCompletion.setter();
      v88 = v83[4];
      __swift_project_boxed_opaque_existential_1(v83, v83[3]);
      v89 = *(v88 + 104);
      v90 = OUTLINED_FUNCTION_5();
      v91(v90, v88);
      v92 = v161;
      __swift_project_boxed_opaque_existential_1(&v159, v160);
      v93 = v152;
      v94 = v148;
      (*(v152 + 16))(v148, v82, v87);
      __swift_storeEnumTagSinglePayload(v94, 0, 1, v87);
      v95 = v73;
      v96 = v151;
      v97 = v143;
      v98 = (*(v92 + 40))(v95, v151);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v94, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v159);
      v99 = v147;
      SearchCallHistoryFlow.getUnsupportedSearchParametersFlowStrategy(app:input:intent:)();
      if (v100)
      {
        v148 = v100;
        v101 = v98;

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v102, v103))
        {
          OUTLINED_FUNCTION_42();
          v104 = v97;
          v105 = OUTLINED_FUNCTION_24_37();
          v156[0] = v105;
          *v96 = 136315138;
          v106 = OUTLINED_FUNCTION_5_5((v62 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
          OUTLINED_FUNCTION_92_2(v106, v107, v108, v109, v110);
          OUTLINED_FUNCTION_38_13();
          OUTLINED_FUNCTION_35_12();

          *(v96 + 4) = v99;
          _os_log_impl(&dword_0, v102, v103, "%s unsupported search parameters are found, set state as checkUnsupportedParameters", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v105);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_5_7();

          (*(v152 + 8))(v149, v150);
          (*(v145 + 8))(v147, v144);
        }

        else
        {

          (*(v152 + 8))(v149, v150);
          (*(v145 + 8))(v99, v144);
        }

        v121 = v155;
        v136 = v148;
        *v155 = v101;
        v121[1] = v136;
      }

      else
      {

        (*(v93 + 8))(v82, v87);
        (*(v145 + 8))(v99, v144);
        v121 = v155;
        *v155 = v98;
      }

      swift_storeEnumTagMultiPayload();
      v137 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
      OUTLINED_FUNCTION_17_3();
      v112 = v62 + v137;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v114, static Logger.siriPhone);
      v115 = v39;
      (*(v34 + 16))(v39, v1, v31);
      v116 = v153;

      v117 = Logger.logObject.getter();
      v118 = v31;
      v119 = static os_log_type_t.error.getter();

      v120 = os_log_type_enabled(v117, v119);
      v121 = v155;
      if (v120)
      {
        v122 = OUTLINED_FUNCTION_86_1();
        v147 = v58;
        v123 = v122;
        v152 = OUTLINED_FUNCTION_16_13();
        v156[0] = v152;
        *v123 = 136315394;
        v124 = OUTLINED_FUNCTION_5_5((v116 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
        OUTLINED_FUNCTION_92_2(v124, v125, v126, v127, v128);
        OUTLINED_FUNCTION_38_13();
        OUTLINED_FUNCTION_17_21();

        *(v123 + 4) = v121;
        *(v123 + 12) = 2080;
        OUTLINED_FUNCTION_18_32();
        lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(v129, 255, v130);
        v131 = dispatch thunk of CustomStringConvertible.description.getter();
        v151 = v57;
        v132 = *(v34 + 8);
        v132(v115, v118);
        v133 = OUTLINED_FUNCTION_43_3();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v135);
        OUTLINED_FUNCTION_5();
        v121 = v155;

        *(v123 + 14) = v131;
        _os_log_impl(&dword_0, v117, v119, "%s Could not convert Input: %s to Intent, stopping", v123, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

        v132(v147, v118);
      }

      else
      {

        v138 = *(v34 + 8);
        v138(v115, v118);
        v138(v58, v118);
      }

      swift_storeEnumTagMultiPayload();
      v139 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
      OUTLINED_FUNCTION_17_3();
      v112 = v116 + v139;
    }

    v113 = v121;
  }

  outlined assign with take of SearchCallHistoryFlow.State(v113, v112);
  swift_endAccess();
  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryFlow.onCompleteProcessUnsupportedParameter(_:)()
{
  OUTLINED_FUNCTION_66();
  v134 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_65_18();
  v8 = type metadata accessor for ConfirmationResponse();
  v9 = OUTLINED_FUNCTION_7(v8);
  v130 = v10;
  v131 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v129 = v13 - v14;
  __chkstk_darwin(v15);
  v128 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  OUTLINED_FUNCTION_7(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v22);
  v24 = &v126 - v23;
  v25 = type metadata accessor for SimpleConfirmationResponseProvider();
  v26 = OUTLINED_FUNCTION_7(v25);
  v132 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4();
  v133 = v31 - v30;
  v32 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v33 = OUTLINED_FUNCTION_23_1(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_12_5();
  v135 = (v36 - v37);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_45_19();
  v40 = *(v39 + 120);
  v136 = v0;
  v40();
  v137 = v32;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of SearchCallHistoryFlow.State(v1);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v54, static Logger.siriPhone);
    v55 = v136;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v135;
    if (v58)
    {
      v60 = OUTLINED_FUNCTION_86_1();
      v138 = OUTLINED_FUNCTION_16_13();
      v139 = 0;
      *v60 = 136315394;
      v61 = OUTLINED_FUNCTION_5_5((v55 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      OUTLINED_FUNCTION_72_11(v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_17_21();

      *(v60 + 4) = v1;
      *(v60 + 12) = 2080;
      (v40)(v66);
      v67 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v138);
      OUTLINED_FUNCTION_17_21();

      *(v60 + 14) = v1;
      _os_log_impl(&dword_0, v56, v57, "%s Unexpected state, stopping: %s", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_14_0();
    }

    swift_storeEnumTagMultiPayload();
    v86 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_29_30();
    v84 = v55 + v86;
    v85 = v59;
    goto LABEL_16;
  }

  v42 = *v1;
  v41 = v1[1];

  (*(v19 + 16))(v24, v134, v17);
  v43 = *(v19 + 88);
  v44 = OUTLINED_FUNCTION_30_23();
  if (v45(v44) != enum case for PromptResult.answered<A>(_:))
  {
    v69 = *(v19 + 8);
    v70 = OUTLINED_FUNCTION_30_23();
    v71(v70);
    goto LABEL_10;
  }

  v46 = *(v19 + 96);
  v47 = OUTLINED_FUNCTION_30_23();
  v48(v47);
  v50 = v132;
  v49 = v133;
  v51 = v25;
  (*(v132 + 32))(v133, v24, v25);
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v52 = v131;
  if (__swift_getEnumTagSinglePayload(v2, 1, v131) == 1)
  {
    v53 = *(v50 + 8);
    v1 = (v50 + 8);
    v53(v49, v25);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_10:
    v73 = v135;
    v72 = v136;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v74, static Logger.siriPhone);

    v75 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_71_10();
    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_42();
      v138 = OUTLINED_FUNCTION_24_37();
      v139 = 0;
      *v24 = 136315138;
      v76 = OUTLINED_FUNCTION_5_5((v72 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      OUTLINED_FUNCTION_72_11(v76, v77, v78, v79, v80);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_17_21();

      *(v24 + 4) = v1;
      OUTLINED_FUNCTION_12_58(&dword_0, v81, v82, "%s Did not receive .answered from child confirmation flow");
      OUTLINED_FUNCTION_15_50();
      OUTLINED_FUNCTION_5_7();
    }

    swift_storeEnumTagMultiPayload();
    v83 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_29_30();
    v84 = v72 + v83;
    v85 = v73;
    goto LABEL_16;
  }

  v134 = v42;
  v87 = v130;
  v88 = v128;
  (*(v130 + 32))(v128, v2, v52);
  v89 = v129;
  (*(v87 + 16))(v129, v88, v52);
  v90 = (*(v87 + 88))(v89, v52);
  v91 = v135;
  if (v90 == enum case for ConfirmationResponse.confirmed(_:))
  {
    v92 = *(v87 + 8);
    v93 = OUTLINED_FUNCTION_64_15();
    v94(v93);
    (*(v50 + 8))(v49, v51);
    *v91 = v134;
    swift_storeEnumTagMultiPayload();
    v95 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    v96 = v136;
    OUTLINED_FUNCTION_29_30();
    v84 = v96 + v95;
LABEL_31:
    v85 = v91;
LABEL_16:
    outlined assign with take of SearchCallHistoryFlow.State(v85, v84);
    swift_endAccess();
    goto LABEL_17;
  }

  v97 = v136;
  if (v90 == enum case for ConfirmationResponse.rejected(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v98, static Logger.siriPhone);

    v99 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_71_10();
    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_42();
      v100 = OUTLINED_FUNCTION_24_37();
      v127 = v51;
      v138 = v100;
      v139 = 0;
      *v87 = 136315138;
      v101 = OUTLINED_FUNCTION_5_5((v97 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      OUTLINED_FUNCTION_72_11(v101, v102, v103, v104, v105);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_17_21();

      *(v87 + 4) = v50;
      OUTLINED_FUNCTION_12_58(&dword_0, v106, v107, "%s user want to cancel the search");
      OUTLINED_FUNCTION_15_50();
      OUTLINED_FUNCTION_5_7();

      (*(v130 + 8))(v128, v52);
      (*(v50 + 8))(v133, v127);
    }

    else
    {

      v120 = *(v87 + 8);
      v121 = OUTLINED_FUNCTION_64_15();
      v122(v121);
      (*(v50 + 8))(v133, v51);
    }

    swift_storeEnumTagMultiPayload();
    v123 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
    OUTLINED_FUNCTION_29_30();
    v84 = v97 + v123;
    goto LABEL_31;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v108, static Logger.siriPhone);

  v109 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_71_10();
  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_42();
    v110 = OUTLINED_FUNCTION_24_37();
    v127 = v51;
    v138 = v110;
    v139 = 0;
    *v87 = 136315138;
    v111 = OUTLINED_FUNCTION_5_5((v97 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
    OUTLINED_FUNCTION_72_11(v111, v112, v113, v114, v115);
    OUTLINED_FUNCTION_39_25();
    OUTLINED_FUNCTION_17_21();

    *(v87 + 4) = v50;
    OUTLINED_FUNCTION_12_58(&dword_0, v116, v117, "%s Received an unknown ConfirmationResponse");
    OUTLINED_FUNCTION_15_50();
    OUTLINED_FUNCTION_5_7();

    v118 = *(v130 + 8);
    v119 = OUTLINED_FUNCTION_64_15();
    v118(v119);
    (*(v132 + 8))(v133, v127);
  }

  else
  {

    v118 = *(v87 + 8);
    v124 = OUTLINED_FUNCTION_64_15();
    v118(v124);
    (*(v132 + 8))(v133, v51);
  }

  swift_storeEnumTagMultiPayload();
  v125 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  OUTLINED_FUNCTION_29_30();
  outlined assign with take of SearchCallHistoryFlow.State(v91, v97 + v125);
  swift_endAccess();
  (v118)(v129, v52);
LABEL_17:
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryFlow.pushUnlockFlow()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  OUTLINED_FUNCTION_5();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_31_13())
  {
    OUTLINED_FUNCTION_42();
    v5 = OUTLINED_FUNCTION_14_2();
    v20 = v5;
    v21 = 0;
    *v1 = 136315138;
    v6 = OUTLINED_FUNCTION_5_5((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
    v22 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v20);
    OUTLINED_FUNCTION_35_12();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_11_58(&dword_0, v11, v12, "%s Device is locked. Prompting user to unlock before continuing.");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

  v13 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals), *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 24));
  v14 = *(v13 + 104);
  v15 = OUTLINED_FUNCTION_5();
  v16(v15, v13);
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  v17 = OUTLINED_FUNCTION_43_3();
  SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(v17, v18);
  static ExecuteResponse.ongoing<A>(next:)();

  return __swift_destroy_boxed_opaque_existential_1(&v21);
}

uint64_t SearchCallHistoryFlow.onChildCompletion(flowResult:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  v17 = __chkstk_darwin(v16);
  v19 = (&v35 - v18);
  (*(v13 + 16))(&v35 - v18, a1, v11, v17);
  v20 = (*(v13 + 88))(v19, v11);
  if (v20 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v13 + 96))(v19, v11);
    v21 = *v19;
    v22 = v19[1];
    v23 = v19[2];
    if ([v23 code] == &dword_4 + 3)
    {
      *v10 = v22;
      v10[1] = v23;
      v10[2] = v21;
      OUTLINED_FUNCTION_43_3();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v24 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
      OUTLINED_FUNCTION_17_3();
      outlined assign with take of SearchCallHistoryFlow.State(v10, v2 + v24);
      return swift_endAccess();
    }

    goto LABEL_8;
  }

  if (v20 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    (*(v13 + 96))(v19, v11);
    *v10 = *v19;
    OUTLINED_FUNCTION_43_3();
    goto LABEL_9;
  }

  if (v20 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
LABEL_8:
    OUTLINED_FUNCTION_43_3();
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.siriPhone);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(*(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix), *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 8), *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 16), *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 24));
  v27._object = 0x8000000000461110;
  v27._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v27);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_42();
    v31 = OUTLINED_FUNCTION_36();
    v36 = v31;
    *v30 = 136315138;
    v32 = OUTLINED_FUNCTION_55();
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v34);
    _os_log_impl(&dword_0, v28, v29, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_55();
  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_15();
  v1[55] = v2;
  v1[56] = v0;
  v1[53] = v3;
  v1[54] = v4;
  v1[52] = v5;
  v6 = type metadata accessor for SearchCallHistoryFlow.State(0);
  v1[57] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[58] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v75 = v0;
  v1 = *(v0 + 448);
  v2 = [*(v0 + 424) callTypes];
  v3 = v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals;
  if ((v2 & 0x10) != 0)
  {
    v40 = *(v0 + 432);
    v39 = *(v0 + 440);
    v41 = *(v0 + 424);
    v42 = outlined init with copy of SignalProviding(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals, v0 + 296);
    default argument 4 of ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(&v72, v42);
    v43 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_41_1(v43);
    v44 = ResponseFactory.init()();
    v74[3] = v43;
    v74[4] = &protocol witness table for ResponseFactory;
    v74[0] = v44;
    VoicemailResultSetFlowProvider = type metadata accessor for ReadVoicemailResultSetFlowProvider();
    swift_allocObject();
    OUTLINED_FUNCTION_5();

    ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(v39, v41, v40, (v0 + 296), &v72, v74);
    *(v0 + 472) = v45;
    v46 = v45;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v47 = *(v0 + 448);
    v48 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v48, static Logger.siriPhone);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 448);
      v52 = OUTLINED_FUNCTION_42();
      v53 = OUTLINED_FUNCTION_36();
      v74[0] = v53;
      *v52 = 136315138;
      v54 = OUTLINED_FUNCTION_5_5((v51 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      v72 = 0;
      v73 = v55;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v54, v56, v57, v58);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v74);

      *(v52 + 4) = v59;
      OUTLINED_FUNCTION_69_13(&dword_0, v60, v61, "%s makeResultSetFlow for playing voicemails");
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v62 = *(v3 + 24);
    v63 = *(v3 + 32);
    v64 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v66 = *(v63 + 128);
    v67 = OUTLINED_FUNCTION_5();
    v68(v67, v63);
    v33 = *(v0 + 360);
    v34 = *(v0 + 368);
    OUTLINED_FUNCTION_7_0((v0 + 336));
    *(v0 + 408) = v46;
    v69 = async function pointer to dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)[1];
    v70 = swift_task_alloc();
    *(v0 + 480) = v70;
    v37 = lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type ReadVoicemailResultSetFlowProvider and conformance ReadVoicemailResultSetFlowProvider, 255, type metadata accessor for ReadVoicemailResultSetFlowProvider);
    *v70 = v0;
    v70[1] = SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:);
    v38 = v0 + 408;
  }

  else
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 448);
    v6 = *(v0 + 424);
    v7 = *(v0 + 432);
    outlined init with copy of SignalProviding(v3, v0 + 216);
    outlined init with copy of SearchCallHistorySharedGlobals(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals, v0 + 16);
    VoicemailResultSetFlowProvider = type metadata accessor for ReadCallHistoryResultSetFlowProvider();
    swift_allocObject();
    OUTLINED_FUNCTION_17_21();

    v9 = ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(v4, v6, v7, (v0 + 216), v0 + 16);
    *(v0 + 504) = v9;
    v10 = v9;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v11 = *(v0 + 448);
    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 448);
      v16 = OUTLINED_FUNCTION_42();
      v17 = OUTLINED_FUNCTION_36();
      v74[0] = v17;
      *v16 = 136315138;
      v18 = OUTLINED_FUNCTION_5_5((v15 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
      v72 = 0;
      v73 = v19;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v18, v20, v21, v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v73, v74);

      *(v16 + 4) = v23;
      OUTLINED_FUNCTION_69_13(&dword_0, v24, v25, "%s makeResultSetFlow for reading call history");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v26 = *(v3 + 24);
    v27 = *(v3 + 32);
    v28 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v30 = *(v27 + 128);
    v31 = OUTLINED_FUNCTION_5();
    v32(v31, v27);
    v33 = *(v0 + 280);
    v34 = *(v0 + 288);
    OUTLINED_FUNCTION_7_0((v0 + 256));
    *(v0 + 400) = v10;
    v35 = async function pointer to dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)[1];
    v36 = swift_task_alloc();
    *(v0 + 512) = v36;
    v37 = lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(&lazy protocol witness table cache variable for type ReadCallHistoryResultSetFlowProvider and conformance ReadCallHistoryResultSetFlowProvider, 255, type metadata accessor for ReadCallHistoryResultSetFlowProvider);
    *v36 = v0;
    v36[1] = SearchCallHistoryFlow.provideDialogForRF(intent:intentResponse:app:);
    v38 = v0 + 400;
  }

  return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v38, VoicemailResultSetFlowProvider, v37, v33, v34);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 480);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 488) = v0;

  if (!v0)
  {
    *(v5 + 496) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v1[62];
  v4 = v1[59];

  __swift_destroy_boxed_opaque_existential_1(v1 + 42);
  v5 = v1[62];
  OUTLINED_FUNCTION_48_23();
  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of SearchCallHistoryFlow.State(v0, v2 + v6);
  swift_endAccess();
  static ExecuteResponse.ongoing(next:)();

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 512);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 520) = v0;

  if (!v0)
  {
    *(v5 + 528) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v1[66];
  v4 = v1[63];

  __swift_destroy_boxed_opaque_existential_1(v1 + 32);
  v5 = v1[66];
  OUTLINED_FUNCTION_48_23();
  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state;
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of SearchCallHistoryFlow.State(v0, v2 + v6);
  swift_endAccess();
  static ExecuteResponse.ongoing(next:)();

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[59];

  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v2 = v0[61];
  v3 = v0[58];

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[63];

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v2 = v0[65];
  v3 = v0[58];

  OUTLINED_FUNCTION_11();

  return v4();
}

void SearchCallHistoryFlow.getUnsupportedSearchParametersFlowStrategy(app:input:intent:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for Parse();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v75 = v0;
  v16 = v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals;
  v17 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 24);
  v18 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals + 32);
  v19 = OUTLINED_FUNCTION_30_23();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = (*(v18 + 72))(v17, v18);
  Input.parse.getter();
  (*(*v21 + 192))(&v76, v15);

  (*(v10 + 8))(v15, v7);
  v22 = &type metadata singleton initialization cache for SearchCallHistoryCATsSimple;
  if (v77)
  {
    outlined init with take of SPHConversation(&v76, v79);
    INSearchCallHistoryIntent.contacts.getter();
    if (v23)
    {
      v24 = v23;
      if (specialized Array.count.getter(v23))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v24 & 0xC000000000000001) == 0, v24);
        if ((v24 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v24 + 32);
        }

        v26 = OUTLINED_FUNCTION_35_12();
        v27 = specialized Array.count.getter(v26);

        if (v27 >= 2)
        {
          v74 = v2;
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static Logger.siriPhone);
          OUTLINED_FUNCTION_5();

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = OUTLINED_FUNCTION_42();
            v32 = OUTLINED_FUNCTION_36();
            v78[0] = v32;
            *v31 = 136315138;
            v33 = OUTLINED_FUNCTION_5_5((v75 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
            *&v76 = 0;
            *(&v76 + 1) = v34;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v33, v35, v36, v37);
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, *(&v76 + 1), v78);

            *(v31 + 4) = v38;
            _os_log_impl(&dword_0, v29, v30, "%s don't support more than one contact", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            OUTLINED_FUNCTION_26_0();
            v22 = &type metadata singleton initialization cache for SearchCallHistoryCATsSimple;
            OUTLINED_FUNCTION_26_0();
          }

          v39 = 0;
          v2 = v74;
          goto LABEL_20;
        }

LABEL_19:
        v39 = 1;
LABEL_20:
        __swift_project_boxed_opaque_existential_1(v79, v80);
        OUTLINED_FUNCTION_41_4();
        v50 = PhoneCallNLIntent.hasUnsupportedSearchCallHistoryParameter()();
        if (v39 && v50)
        {
          __swift_project_boxed_opaque_existential_1(v79, v80);
          v51 = OUTLINED_FUNCTION_46_24();
          v53 = v52(v51);
          if (v53)
          {
            v54 = *(v53 + 16);
            v55 = (v53 + 32);
            while (2)
            {
              v56 = v54-- != 0;
              if (v56)
              {
                switch(*v55)
                {
                  case 1:
                  case 5:
                  case 6:
                  case 0xA:
                  case 0xB:
                  case 0xD:
                    goto LABEL_33;
                  case 2:
                  case 4:
                    OUTLINED_FUNCTION_61_1();
                    goto LABEL_33;
                  case 3:
                    OUTLINED_FUNCTION_4_7();
                    goto LABEL_33;
                  case 7:
                    OUTLINED_FUNCTION_6_59();
                    goto LABEL_33;
                  case 8:
                    OUTLINED_FUNCTION_9_52();
                    goto LABEL_33;
                  case 9:
                    OUTLINED_FUNCTION_5_64();
                    goto LABEL_33;
                  case 0xC:
                    OUTLINED_FUNCTION_8_9();
LABEL_33:
                    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    ++v55;
                    if (v57)
                    {
                      break;
                    }

                    continue;
                  default:

                    goto LABEL_34;
                }
              }

              break;
            }

LABEL_34:
          }

          __swift_project_boxed_opaque_existential_1(v79, v80);
          v68 = OUTLINED_FUNCTION_46_24();
          v70 = v69(v68);
          if (v70)
          {
            v71 = *(v70 + 16);
            v72 = (v70 + 32);
            while (2)
            {
              v56 = v71-- != 0;
              if (v56)
              {
                switch(*v72)
                {
                  case 2:
                  case 4:
                    OUTLINED_FUNCTION_61_1();
                    goto LABEL_51;
                  case 3:
                    OUTLINED_FUNCTION_4_7();
                    goto LABEL_51;
                  case 6:

                    break;
                  case 7:
                    OUTLINED_FUNCTION_6_59();
                    goto LABEL_51;
                  case 8:
                    OUTLINED_FUNCTION_9_52();
                    goto LABEL_51;
                  case 9:
                    OUTLINED_FUNCTION_5_64();
                    goto LABEL_51;
                  case 0xC:
                    OUTLINED_FUNCTION_8_9();
                    goto LABEL_51;
                  default:
LABEL_51:
                    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    ++v72;
                    if (v73)
                    {
                      break;
                    }

                    continue;
                }
              }

              break;
            }
          }

          __swift_project_boxed_opaque_existential_1(v79, v80);
          OUTLINED_FUNCTION_41_4();
          PhoneCallNLIntent.isPlayVoiceMail()();
          outlined init with copy of SignalProviding(v16, v78);
          outlined init with copy of SearchCallHistorySharedGlobals(v75 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals, &v76);
          type metadata accessor for SearchCallHistoryCATsSimple();
          static CATOption.defaultMode.getter();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedSearchParametersFlowStrategy();
          swift_allocObject();
          UnsupportedSearchParametersFlowStrategy.init(app:sharedGlobals:isMissed:isLatest:isVoicemail:contact:searchCallHistorySharedGlobals:searchCallHistoryCATsSimple:)();

          __swift_destroy_boxed_opaque_existential_1(v79);
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static Logger.siriPhone);
          OUTLINED_FUNCTION_5();

          v59 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();

          if (OUTLINED_FUNCTION_126())
          {
            OUTLINED_FUNCTION_42();
            v60 = OUTLINED_FUNCTION_24_37();
            v78[0] = v60;
            *v16 = 136315138;
            v61 = OUTLINED_FUNCTION_5_5((v75 + v22[11]));
            *&v76 = 0;
            *(&v76 + 1) = v62;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v61, v63, v64, v65);
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, *(&v76 + 1), v78);
            OUTLINED_FUNCTION_17_21();

            *(v16 + 4) = v75;
            OUTLINED_FUNCTION_12_58(&dword_0, v66, v67, "%s can't find unsupported search parameters skip offering unsupported search parameters flow");
            __swift_destroy_boxed_opaque_existential_1(v60);
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_5_7();
          }

          __swift_destroy_boxed_opaque_existential_1(v79);
        }

        goto LABEL_54;
      }
    }

    v2 = 0;
    goto LABEL_19;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v76, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v40, static Logger.siriPhone);

  v41 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_31_13())
  {
    OUTLINED_FUNCTION_42();
    v42 = OUTLINED_FUNCTION_14_2();
    v79[0] = v42;
    dword_54B000 = 136315138;
    v43 = OUTLINED_FUNCTION_5_5((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix));
    *&v76 = 0;
    *(&v76 + 1) = v44;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v43, v45, v46, v47);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, *(&v76 + 1), v79);
    OUTLINED_FUNCTION_17_21();

    *algn_54B004 = v0;
    OUTLINED_FUNCTION_11_58(&dword_0, v48, v49, "%s can't transform nlIntent, skip offering unsupported search parameters flow");
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_14_0();
  }

LABEL_54:
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryFlow.deinit()
{
  outlined destroy of SearchCallHistoryFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_state);
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_delegate);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_sharedGlobals));
  outlined destroy of SearchCallHistorySharedGlobals(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_searchCallHistorySharedGlobals);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 8);
  v3 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin21SearchCallHistoryFlow_logPrefix + 24);

  return v0;
}

uint64_t SearchCallHistoryFlow.__deallocating_deinit()
{
  SearchCallHistoryFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance SearchCallHistoryFlow(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance SearchCallHistoryFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchCallHistoryFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

void *SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(__int128 *a1, uint64_t a2)
{
  v2[8] = type metadata accessor for SearchCallHistoryHandleFlowStrategy();
  v2[9] = &outlined read-only object #0 of SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:);
  v2[10] = 0;
  v2[11] = 0;
  outlined init with take of SPHConversation(a1, (v2 + 2));
  v2[7] = a2;
  return v2;
}

uint64_t outlined init with copy of SearchCallHistoryFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchCallHistoryHandleFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_31_13())
  {
    OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_14_2();
    v16[0] = 0;
    *v5 = 136315138;
    v10 = *(v4 + 64);
    v9 = *(v4 + 72);
    v16[1] = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v9, 0xD000000000000037, 0x8000000000461130);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16[0], 0xE000000000000000, &v15);

    *(v5 + 4) = v11;
    OUTLINED_FUNCTION_11_58(&dword_0, v12, v13, "%s This should not provide any output.");
    OUTLINED_FUNCTION_15_50();
    OUTLINED_FUNCTION_14_0();
  }

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v17 = 0;
  a4(v16);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

void SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v40 = v0;
  if (v20)
  {
    OUTLINED_FUNCTION_42();
    v39 = v4;
    v21 = OUTLINED_FUNCTION_14_2();
    v37 = v21;
    v38 = v8;
    *v4 = 136315138;
    v22 = v6;
    v23 = v16;
    v24 = v10;
    v25 = v2;
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);
    v41 = 0;
    v42 = 0xE000000000000000;
    v43 = v21;

    v28 = v27;
    v2 = v25;
    v10 = v24;
    v16 = v23;
    v6 = v22;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v28, v26, 0xD00000000000003FLL, 0x8000000000461170);

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);

    *(v4 + 4) = v29;
    _os_log_impl(&dword_0, v18, v19, "%s This should not provide output.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v8 = v38;
    OUTLINED_FUNCTION_26_0();
    v4 = v39;
    OUTLINED_FUNCTION_26_0();
  }

  v30 = [v6 code];
  if ((v30 - 3) < 2)
  {
    v31 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_67_14(v31);
    OUTLINED_FUNCTION_36_4();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v40;
    v32[5] = v4;
    v32[6] = v2;

    v33 = &async function pointer to partial apply for closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
LABEL_9:
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v16, v33, v32);

    goto LABEL_10;
  }

  if (v30 == &dword_4 + 1)
  {
    v34 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_67_14(v34);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v40;
    v32[5] = v10;
    v32[6] = v8;
    v32[7] = v4;
    v32[8] = v2;

    v35 = v8;

    v33 = &async function pointer to partial apply for closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a5;
  v8[30] = a6;
  v8[28] = a4;
  v9 = type metadata accessor for Locale();
  v8[33] = v9;
  v10 = *(v9 - 8);
  v8[34] = v10;
  v11 = *(v10 + 64) + 15;
  v8[35] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v8[37] = swift_task_alloc();
  v14 = type metadata accessor for OutputGenerationManifest();
  v8[38] = v14;
  v15 = *(v14 - 8);
  v8[39] = v15;
  v16 = *(v15 + 64) + 15;
  v8[40] = swift_task_alloc();

  return _swift_task_switch(closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:), 0, 0);
}

uint64_t closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[29];
  v20 = v0[33];
  v21 = v0[30];
  v7 = v0[28];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_68_12();
  v9 = v7[6];
  v8 = v7[7];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v10);
  (*(v9 + 8))(v10, v9);
  v11 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v12 = type metadata accessor for AppInfoBuilder();
  v13 = swift_allocObject();
  v0[16] = v12;
  v0[17] = &protocol witness table for AppInfoBuilder;
  v0[13] = v13;
  App.toSpeakableStringAppName(forLocale:appInfoBuilder:)(v4, v0 + 13, v3);
  (*(v5 + 8))(v4, v20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v14 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(v21);
  v0[41] = v14;
  v15 = *(*v8 + class metadata base offset for SearchCallHistoryCATsSimple + 112);
  v22 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[42] = v17;
  *v17 = v0;
  v17[1] = closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
  v18 = v0[36];

  return v22(v18, v14);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v7 = v4[42];
  *v6 = *v1;
  v5[43] = v0;

  v8 = v4[41];
  v9 = v4[36];
  if (!v0)
  {
    v5[44] = v3;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[44];
  v2 = v0[28];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = *(v3 + 136);
  v5 = OUTLINED_FUNCTION_55();
  v6(v5);
  v7 = v0[26];
  v8 = v0[27];
  OUTLINED_FUNCTION_7_0(v0 + 23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v0[45] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v1;
  v10 = *(v8 + 8);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v12 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[46] = v13;
  *v13 = v14;
  v13[1] = closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
  v15 = v0[40];
  OUTLINED_FUNCTION_7_18();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 368);
  v3 = *(v1 + 360);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 352);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  outlined init with copy of SignalProviding(v0 + 144, v0 + 16);
  *(v0 + 56) = 0;
  v9(v0 + 16);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_55();
  v12(v11);

  OUTLINED_FUNCTION_11();

  return v13();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[37];
  v3 = v0[35];
  v2 = v0[36];
  (*(v0[39] + 8))(v0[40], v0[38]);

  OUTLINED_FUNCTION_11();
  v5 = v0[43];

  return v4();
}

uint64_t closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v6[22] = v8;
  v9 = *(v8 - 8);
  v6[23] = v9;
  v10 = *(v9 + 64) + 15;
  v6[24] = swift_task_alloc();

  return _swift_task_switch(closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:), 0, 0);
}

uint64_t closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_68_12();
  v4 = *(**(v3 + 56) + class metadata base offset for SearchCallHistoryCATsSimple + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);

  return v8();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[27];
  v2 = v0[18];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = *(v3 + 136);
  v5 = OUTLINED_FUNCTION_55();
  v6(v5);
  v7 = v0[16];
  v8 = v0[17];
  OUTLINED_FUNCTION_7_0(v0 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v0[28] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v1;
  v10 = *(v8 + 8);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v12 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v13;
  *v13 = v14;
  v13[1] = closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);
  v15 = v0[24];
  OUTLINED_FUNCTION_7_18();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 232);
  v3 = *(v1 + 224);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  outlined init with copy of SignalProviding(v0 + 64, v0 + 16);
  *(v0 + 56) = 0;
  v7(v0 + 16);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_55();
  v10(v9);

  OUTLINED_FUNCTION_11();

  return v11();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[21];
  (*(v0[23] + 8))(v0[24], v0[22]);

  OUTLINED_FUNCTION_11();
  v3 = v0[26];

  return v2();
}

uint64_t *SearchCallHistoryHandleFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[11];

  return v0;
}

uint64_t SearchCallHistoryHandleFlowStrategy.__deallocating_deinit()
{
  SearchCallHistoryHandleFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:) in conformance SearchCallHistoryHandleFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchCallHistoryHandleFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t outlined init with take of SearchCallHistoryFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in SearchCallHistoryFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_42_24();
  v2 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_76(v3);

  return closure #1 in SearchCallHistoryFlow.execute(completion:)(v5, v6, v7, v8, v9, v2);
}

uint64_t outlined assign with take of SearchCallHistoryFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_42_24();
  v2 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_76(v3);

  return closure #2 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(v5, v6, v7, v8, v9, v2);
}

uint64_t partial apply for closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_42_24();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_76(v5);

  return closure #1 in SearchCallHistoryHandleFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(v7, v8, v9, v10, v11, v2, v3, v4);
}

uint64_t type metadata completion function for SearchCallHistoryFlow()
{
  result = type metadata accessor for SearchCallHistoryFlow.State(319);
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

void type metadata completion function for SearchCallHistoryFlow.State()
{
  type metadata accessor for (Input, App)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Error();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (Input, App)()
{
  if (!lazy cache variable for type metadata for (Input, App))
  {
    type metadata accessor for Input();
    type metadata accessor for App();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Input, App));
    }
  }
}

void type metadata accessor for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy)()
{
  if (!lazy cache variable for type metadata for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGGMR);
    type metadata accessor for UnsupportedSearchParametersFlowStrategy();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (rchFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>, strategy: UnsupportedSearchParametersFlowStrategy));
    }
  }
}

void type metadata accessor for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>)()
{
  if (!lazy cache variable for type metadata for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>))
  {
    type metadata accessor for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (withFlow: AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>));
    }
  }
}

void type metadata accessor for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>()
{
  if (!lazy cache variable for type metadata for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
    v0 = type metadata accessor for AnyValueFlow();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyValueFlow<RCHFlowResult<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse>>);
    }
  }
}

void type metadata accessor for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App)()
{
  if (!lazy cache variable for type metadata for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App))
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSearchCallHistoryIntentResponse, INSearchCallHistoryIntentResponse_ptr);
    type metadata accessor for App();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (intent: INSearchCallHistoryIntent, intentResponse: INSearchCallHistoryIntentResponse, app: App));
    }
  }
}

uint64_t lazy protocol witness table accessor for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a9, a10, va);
}

uint64_t OUTLINED_FUNCTION_39_25()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_50_25()
{
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
}

uint64_t OUTLINED_FUNCTION_72_11@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 96) = a5;

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  result = INSearchCallHistoryIntentResponse.callRecordsCount.getter();
  if (result)
  {
    INSearchCallHistoryIntentResponse.newRecordsCount.getter();
    return !v5 && ([a3 callTypes] & 8) == 0;
  }

  return result;
}

uint64_t specialized PhoneCallRecordProperties<>.isVideo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, &v22 - v5);
  v7 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = SpeakableString.print.getter();
    v9 = v10;
    OUTLINED_FUNCTION_40(v7);
    (*(v11 + 8))(v6, v7);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v13 = @"VIDEO_CALL";
    goto LABEL_8;
  }

  if (BackingType == 1)
  {
    v13 = @"AUDIO_CALL";
LABEL_8:
    v14 = v13;
    goto LABEL_10;
  }

  v13 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
LABEL_10:
  v15 = v13;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v9)
  {
    if (v8 == v16 && v9 == v18)
    {
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 537) = v1;
  *(v0 + 536) = v2;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 256) = v5;
  *(v0 + 264) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_62_4();
  *(v0 + 296) = swift_task_alloc();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  v10 = type metadata accessor for SpeakableString();
  *(v0 + 320) = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_24_5();
  *(v0 + 328) = v12;
  v14 = *(v13 + 64) + 15;
  *(v0 + 336) = swift_task_alloc();
  v15 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  *(v0 + 344) = OUTLINED_FUNCTION_62_4();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  v18 = type metadata accessor for CommonDirectAction();
  *(v0 + 368) = v18;
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64) + 15;
  *(v0 + 376) = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v21, v22, v23);
}

{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[34];
  v3 = v0[35];
  swift_storeEnumTagMultiPayload();
  v5 = v3[3];
  v0[48] = v5;
  v6 = v3[4];
  v0[49] = v6;
  v0[50] = __swift_project_boxed_opaque_existential_1(v3, v5);
  v0[51] = *(v6 + 8);
  v0[52] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0xD386000000000000;
  v7 = OUTLINED_FUNCTION_7_1();
  v8(v7);
  v0[53] = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v2, v9);
  v10 = *(v4 + 192);
  v0[54] = v10;
  v11 = *(*v10 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 280);
  OUTLINED_FUNCTION_24_5();
  v17 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v0[55] = v15;
  *v15 = v0;
  v15[1] = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);

  return v17();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 440);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 448) = v0;

  if (v0)
  {
    v11 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  else
  {
    *(v5 + 456) = v3;
    v11 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 456);
  v2 = *(v0 + 537);
  v3 = *(v0 + 536);
  v4 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v6 = v5;
  *(v0 + 240) = v4;
  *(v0 + 248) = v5;

  *(v0 + 464) = v6;
  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  v11 = *(v0 + 384);
  if (v2 != 1 || (v3 & 1) != 0)
  {
    v8(v11, v9);
    v17 = swift_task_alloc();
    *(v0 + 488) = v17;
    *v17 = v0;
    v17[1] = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
    v19 = *(v0 + 424);
    v18 = *(v0 + 432);
    v20 = *(v0 + 344);

    return static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v20, v18, v19, v0 + 56);
  }

  else
  {
    v8(v11, v9);
    v12 = swift_task_alloc();
    *(v0 + 472) = v12;
    *v12 = v0;
    v12[1] = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 352);

    return static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v15, v13, v14, v0 + 176);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[60] = v0;

  __swift_destroy_boxed_opaque_existential_1(v3 + 22);
  if (v0)
  {
    v9 = v3[58];

    v10 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  else
  {
    v10 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  return _swift_task_switch(v10, 0, 0);
}

{
  OUTLINED_FUNCTION_19_36(v1[44], v1[45]);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_23_32(v2);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = OUTLINED_FUNCTION_37_26();
      v5(v4);
      SpeakableString.print.getter();
      v6 = OUTLINED_FUNCTION_11_59();
      v7(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = v3[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v11;
      }

      v8 = v3[3];
      if (v3[2] >= v8 >> 1)
      {
        OUTLINED_FUNCTION_22_31(v8);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v12;
      }

      OUTLINED_FUNCTION_35_25();
    }

    while (!v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v1[63] = v3;
  v13 = v1[39];
  v14 = v1[40];
  specialized Collection.first.getter(*(v1[33] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames));
  OUTLINED_FUNCTION_18_33();
  if (v9)
  {
    outlined destroy of SpeakableString?(v1[39], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v17 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v15 = v1[40];
    v16 = v1[41];
    v17 = v1[39];
    SpeakableString.print.getter();
    v18 = OUTLINED_FUNCTION_50_26();
    v19(v18);
  }

  v1[65] = v13;
  v1[64] = v17;
  v20 = v1[35];
  v21 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v22 = OUTLINED_FUNCTION_33_22();
  v23(v22);
  v24 = swift_task_alloc();
  v1[66] = v24;
  *v24 = v1;
  v25 = OUTLINED_FUNCTION_9_66(v24);

  return static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(v25, v26);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 488);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[62] = v0;

  __swift_destroy_boxed_opaque_existential_1(v3 + 7);
  if (v0)
  {
    v9 = v3[58];

    v10 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  else
  {
    v10 = static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:);
  }

  return _swift_task_switch(v10, 0, 0);
}

{
  OUTLINED_FUNCTION_19_36(v1[43], v1[45]);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_23_32(v2);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = OUTLINED_FUNCTION_37_26();
      v5(v4);
      SpeakableString.print.getter();
      v6 = OUTLINED_FUNCTION_11_59();
      v7(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = v3[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v11;
      }

      v8 = v3[3];
      if (v3[2] >= v8 >> 1)
      {
        OUTLINED_FUNCTION_22_31(v8);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v12;
      }

      OUTLINED_FUNCTION_35_25();
    }

    while (!v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v1[63] = v3;
  v13 = v1[39];
  v14 = v1[40];
  specialized Collection.first.getter(*(v1[33] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames));
  OUTLINED_FUNCTION_18_33();
  if (v9)
  {
    outlined destroy of SpeakableString?(v1[39], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v17 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v15 = v1[40];
    v16 = v1[41];
    v17 = v1[39];
    SpeakableString.print.getter();
    v18 = OUTLINED_FUNCTION_50_26();
    v19(v18);
  }

  v1[65] = v13;
  v1[64] = v17;
  v20 = v1[35];
  v21 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v22 = OUTLINED_FUNCTION_33_22();
  v23(v22);
  v24 = swift_task_alloc();
  v1[66] = v24;
  *v24 = v1;
  v25 = OUTLINED_FUNCTION_9_66(v24);

  return static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(v25, v26);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  v1[27] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v6 = *(v5 + 528);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 320);
  outlined init with copy of SpeakableString?(*(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail, *(v0 + 304));
  OUTLINED_FUNCTION_18_33();
  if (v2)
  {
    outlined destroy of SpeakableString?(*(v0 + 304), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v67 = 0xE000000000000000;
    v68 = 0;
  }

  else
  {
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    v5 = *(v0 + 304);
    v6 = SpeakableString.print.getter();
    v67 = v7;
    v68 = v6;
    v8 = *(v4 + 8);
    v9 = OUTLINED_FUNCTION_0();
    v10(v9);
  }

  if (!*(*(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated))
  {
    goto LABEL_7;
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 296);
  dispatch thunk of DialogCalendar.dateTimeDescriptive.getter();
  if (OUTLINED_FUNCTION_60_16(v12) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 296), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_7:
    v65 = 0xE000000000000000;
    v66 = 0;
    goto LABEL_9;
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v15 = *(v0 + 296);
  v16 = SpeakableString.print.getter();
  v65 = v17;
  v66 = v16;
  v18 = *(v14 + 8);
  v19 = OUTLINED_FUNCTION_0();
  v20(v19);
LABEL_9:
  v21 = *(v0 + 320);
  outlined init with copy of SpeakableString?(*(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration, *(v0 + 288));
  OUTLINED_FUNCTION_18_33();
  if (v2)
  {
    outlined destroy of SpeakableString?(*(v0 + 288), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v54 = 0xE000000000000000;
    v55 = 0;
  }

  else
  {
    v22 = *(v0 + 320);
    v23 = *(v0 + 328);
    v24 = *(v0 + 288);
    v25 = SpeakableString.print.getter();
    v54 = v26;
    v55 = v25;
    v27 = *(v23 + 8);
    v28 = OUTLINED_FUNCTION_0();
    v29(v28);
  }

  v53 = *(v0 + 224);
  v30 = *(v0 + 512);
  v52 = *(v0 + 464);
  v50 = *(v0 + 520);
  v51 = *(v0 + 240);
  v31 = *(v0 + 416);
  v56 = *(v0 + 504);
  v57 = *(v0 + 424);
  v32 = *(v0 + 400);
  v33 = *(v0 + 408);
  v35 = *(v0 + 384);
  v34 = *(v0 + 392);
  v36 = *(v0 + 368);
  v37 = *(v0 + 376);
  v38 = *(v0 + 360);
  v58 = *(v0 + 352);
  v59 = *(v0 + 344);
  v60 = *(v0 + 336);
  v61 = *(v0 + 312);
  v62 = *(v0 + 304);
  v63 = *(v0 + 296);
  v64 = *(v0 + 288);
  v39 = *(v0 + 256);
  v40 = *(v0 + 264) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
  if (*(v40 + 8))
  {
    v41 = 0.0;
  }

  else
  {
    v41 = *v40;
  }

  swift_storeEnumTagMultiPayload();
  v33(v35, v34);
  v42 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v37, v43);
  v44 = type metadata accessor for SingleResultVoicemailModel();
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v38, v39 + v44[15]);
  *v39 = 0xD000000000000015;
  *(v39 + 8) = 0x8000000000456D30;
  *(v39 + 16) = v30;
  *(v39 + 24) = v50;
  *(v39 + 32) = v68;
  *(v39 + 40) = v67;
  *(v39 + 48) = v66;
  *(v39 + 56) = v65;
  *(v39 + 64) = v55;
  *(v39 + 72) = v54;
  *(v39 + 80) = v41;
  *(v39 + 96) = v53;
  *(v39 + 112) = v51;
  *(v39 + 120) = v52;
  v45 = v44[14];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v46 = v42;
  CodableAceObject.init(wrappedValue:)();
  *(v39 + 88) = v56;
  v47 = v39 + v44[13];
  CodableAceObject.init(wrappedValue:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v38, type metadata accessor for SearchCallHistoryBinaryButtonModel);

  OUTLINED_FUNCTION_8_1();

  return v48();
}

uint64_t static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v13 = *(v12 + 448);
  OUTLINED_FUNCTION_20_41();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v13 = *(v12 + 480);
  OUTLINED_FUNCTION_20_41();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v13 = *(v12 + 496);
  OUTLINED_FUNCTION_20_41();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

void static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(unint64_t a1)
{
  v2 = *(type metadata accessor for SingleCallRecordModel() - 8);
  OUTLINED_FUNCTION_24_5();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v21;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1 & 0xC000000000000001;
    v13 = a1;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_16;
        }

        v15 = *(a1 + 8 * v11 + 32);
      }

      v20 = v15;
      closure #1 in static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(&v20, v9);

      v21 = v12;
      v16 = v12[2];
      if (v16 >= v12[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v21;
      }

      v12[2] = v16 + 1;
      outlined init with take of SearchCallHistoryBinaryButtonModel(v9, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for SingleCallRecordModel);
      ++v11;
      a1 = v13;
      if (v14 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

id @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() aceObjectWithPlistData:isa];

  return v5;
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[193] = a4;
  v4[187] = a3;
  v4[181] = a2;
  v4[175] = a1;
  v5 = type metadata accessor for CommonDirectAction();
  v4[199] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[205] = swift_task_alloc();

  return _swift_task_switch(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1448);

  OUTLINED_FUNCTION_33_7();

  OUTLINED_FUNCTION_33_7();
  v2 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_get_throwing(v2, v3, v4, v0 + 1296);
}

{
  OUTLINED_FUNCTION_15();
  v1[211] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v1 + 176);
  }

  else
  {
    v1[217] = v1[169];
    v1[218] = v1[170];

    return _swift_asyncLet_get_throwing(v1 + 2, v1 + 167, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v1 + 188);
  }
}

{
  *(v1 + 1752) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_25_34();
  v5 = *(v2 + 1336);
  v6 = *(v2 + 1344);
  swift_storeEnumTagMultiPayload();

  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v1);
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v3, v7);
  v8 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  OUTLINED_FUNCTION_28_27((v0 + *(v8 + 32)));
  Loggable.init(wrappedValue:)();
  v9 = *(v8 + 20);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseClientBoundCommand, SABaseClientBoundCommand_ptr);
  v10 = v4;
  CodableAceObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_46_25();
  OUTLINED_FUNCTION_57_23();
  OUTLINED_FUNCTION_7_40();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_finish(v11, v12, v13, v14);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1744);

  v2 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1552);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_16_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_15_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_14_54(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[193] = a4;
  v4[187] = a3;
  v4[181] = a2;
  v4[175] = a1;
  v5 = type metadata accessor for CommonDirectAction();
  v4[199] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[205] = swift_task_alloc();

  return _swift_task_switch(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1448);

  OUTLINED_FUNCTION_33_7();

  OUTLINED_FUNCTION_33_7();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1336, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v0 + 1296);
}

{
  OUTLINED_FUNCTION_15();
  v1[211] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), v1 + 176);
  }

  else
  {
    v1[217] = v1[167];
    v1[218] = v1[168];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 188);
  }
}

{
  *(v1 + 1752) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
  }
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_25_34();
  v5 = *(v2 + 1352);
  v6 = *(v2 + 1360);
  swift_storeEnumTagMultiPayload();

  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v1);
  OUTLINED_FUNCTION_1_107();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(v3, v7);
  v8 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  OUTLINED_FUNCTION_28_27((v0 + *(v8 + 32)));
  Loggable.init(wrappedValue:)();
  v9 = *(v8 + 20);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseClientBoundCommand, SABaseClientBoundCommand_ptr);
  v10 = v4;
  CodableAceObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_46_25();
  OUTLINED_FUNCTION_57_23();
  OUTLINED_FUNCTION_7_40();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_finish(v11, v12, v13, v14);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1448);

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[211];
  v2 = v0[205];
  v3 = v0[181];

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1744);

  v2 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1552);
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_0_1(static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[219];
  v2 = v0[205];
  v3 = v0[181];

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_16_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_15_51(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

{
  return OUTLINED_FUNCTION_14_54(a1, a2, static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:));
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:), 0, 0);
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_77_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[9];
  v28 = v24[2];
  v29 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier;
  outlined init with copy of SpeakableString?(&v28[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier], v27);
  v30 = type metadata accessor for SpeakableString();
  v31 = OUTLINED_FUNCTION_60_16(v27);
  v32 = v24[9];
  if (v31 == 1)
  {
    outlined destroy of SpeakableString?(v24[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v35 = v24[9];
    v33 = SpeakableString.print.getter();
    v34 = v36;
    OUTLINED_FUNCTION_40(v30);
    (*(v37 + 8))(v32, v30);
  }

  v24[10] = v33;
  v24[11] = v34;
  v39 = v24[4];
  v38 = v24[5];
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v39, 1, v38) == 1)
  {
    v40 = v24[4];

    outlined destroy of SpeakableString?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v41 = v24[2];
    v42 = type metadata accessor for Logger();
    v43 = __swift_project_value_buffer(v42, static Logger.siriPhone);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      a10 = v28;
      v46 = swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_16_13();
      a11 = a9;
      *v46 = 136315394;
      if (one-time initialization token for logPrefix != -1)
      {
        OUTLINED_FUNCTION_2_103();
      }

      v47 = v24[8];
      OUTLINED_FUNCTION_114();
      a12 = 0;
      a13 = v48;

      OUTLINED_FUNCTION_55_23(v49, v50, v51, v43 | 0x8000000000000000);

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, &a11);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      outlined init with copy of SpeakableString?(&a10[v29], v47);
      v53 = OUTLINED_FUNCTION_60_16(v47);
      v54 = v24[8];
      if (v53 == 1)
      {
        outlined destroy of SpeakableString?(v24[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v55 = 0;
        v56 = 0xE000000000000000;
      }

      else
      {
        v82 = v24[8];
        v55 = SpeakableString.print.getter();
        v56 = v83;
        OUTLINED_FUNCTION_40(v30);
        (*(v84 + 8))(v54, v30);
      }

      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &a11);

      *(v46 + 14) = v85;
      _os_log_impl(&dword_0, v44, v45, "%s Expected UUID vmIdentifier: %s", v46, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_26_0();
    }

    v87 = v24[8];
    v86 = v24[9];
    v88 = v24[7];
    v89 = v24[4];

    OUTLINED_FUNCTION_52_20();
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v58 = v24[6];
    v57 = v24[7];
    v59 = v24[5];
    v60 = v24[3];
    (*(v58 + 32))(v57, v24[4], v59);
    v61 = *(v60 + 24);
    v62 = *(v60 + 32);
    v63 = OUTLINED_FUNCTION_0();
    __swift_project_boxed_opaque_existential_1(v63, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v65 = *(v58 + 72);
    v66 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v67 = swift_allocObject();
    v24[12] = v67;
    *(v67 + 16) = xmmword_424FD0;
    (*(v58 + 16))(v67 + v66, v57, v59);
    v68 = *(v62 + 8);
    a9 = v62 + 8;
    OUTLINED_FUNCTION_24_5();
    a10 = v69 + *v69;
    v71 = *(v70 + 4);
    v72 = swift_task_alloc();
    v24[13] = v72;
    *v72 = v24;
    v72[1] = static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:);
    OUTLINED_FUNCTION_31_0();
  }

  return v76(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  if (v0)
  {
    v8 = static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:);
  }

  else
  {
    v9 = v3[12];

    v8 = static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  v57 = v0;
  v1 = specialized Array.count.getter(v0[14]);
  v2 = v0[14];
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if (v3)
    {
      v51 = v0[14];
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v52 = v0[14];
    }

    else
    {
      v4 = *(v0[14] + 32);
    }

    v5 = v0[15];

    Message.getTranscriptString()();
    if (!v6)
    {
      v36 = v0[11];
      v37 = OUTLINED_FUNCTION_41_32();
      v38(v37);

      goto LABEL_22;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = v0[11];
    v8 = type metadata accessor for Logger();
    v9 = __swift_project_value_buffer(v8, static Logger.siriPhone);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      v39 = v0[11];

      goto LABEL_21;
    }

    v12 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_16_13();
    *v12 = 136315650;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_2_103();
    }

    v14 = v0[10];
    v13 = v0[11];
    OUTLINED_FUNCTION_114();
    v55 = 0;
    v56 = v15;

    OUTLINED_FUNCTION_56_14(v16, v17, v18, v9 | 0x8000000000000000);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v56, &v54);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v54);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v53 = v21;
    _os_log_impl(&dword_0, v10, v11, "%s Error fetching voicemail transcript for: %s, error: %@", v12, 0x20u);
    outlined destroy of SpeakableString?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_1_8();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v22 = v0[14];

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v23 = v0[11];
    v24 = type metadata accessor for Logger();
    v25 = __swift_project_value_buffer(v24, static Logger.siriPhone);

    v10 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v26))
    {
      v40 = v0[11];

      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_16_13();
    *v27 = 136315394;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_2_103();
    }

    v29 = v0[10];
    v28 = v0[11];
    OUTLINED_FUNCTION_114();
    v55 = 0;
    v56 = v30;

    OUTLINED_FUNCTION_55_23(v31, v32, v33, v25 | 0x8000000000000000);

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v56, &v54);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v54);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_0, v10, v26, "%s MessageStore can't find any message for: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

LABEL_21:
  v41 = OUTLINED_FUNCTION_41_32();
  v42(v41);
LABEL_22:
  v44 = v0[8];
  v43 = v0[9];
  v45 = v0[7];
  v46 = v0[4];

  v47 = v0[1];
  v48 = OUTLINED_FUNCTION_0();

  return v49(v48);
}

uint64_t static SearchCallHistoryHelper.getVoicemailTranscript(item:messageStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_77_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[12];

  v28 = v24[15];
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v29 = v24[11];
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriPhone);

  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_16_13();
    a11 = a10;
    *v34 = 136315650;
    if (one-time initialization token for logPrefix != -1)
    {
      OUTLINED_FUNCTION_2_103();
    }

    v36 = v24[10];
    v35 = v24[11];
    OUTLINED_FUNCTION_114();
    a12 = 0;
    a13 = v37;

    OUTLINED_FUNCTION_56_14(v38, v39, v40, v31 | 0x8000000000000000);

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, &a11);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &a11);

    *(v34 + 14) = v42;
    *(v34 + 22) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v43;
    *a9 = v43;
    _os_log_impl(&dword_0, v32, v33, "%s Error fetching voicemail transcript for: %s, error: %@", v34, 0x20u);
    outlined destroy of SpeakableString?(a9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_1_8();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v44 = v24[11];
  }

  v45 = OUTLINED_FUNCTION_41_32();
  v46(v45);
  v48 = v24[8];
  v47 = v24[9];
  v49 = v24[7];
  v50 = v24[4];

  OUTLINED_FUNCTION_52_20();
  OUTLINED_FUNCTION_31_0();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

void closure #1 in static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v87 = &v81 - v12;
  __chkstk_darwin(v13);
  v86 = &v81 - v14;
  __chkstk_darwin(v15);
  v85 = &v81 - v16;
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = *a1;
  v90 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  outlined init with copy of SpeakableString?(v23 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v24 = v23;
    SpeakableString.print.getter();
    (*(v4 + 8))(v22, v3);
    v25 = Data.init(base64Encoded:options:)();
    if (v26 >> 60 == 15)
    {
    }

    else
    {
      v27 = v25;
      v28 = v26;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
      outlined copy of Data._Representation(v27, v28);
      v29 = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v27, v28);
      if (!v29)
      {
        __break(1u);
        goto LABEL_38;
      }

      v30 = v29;

      outlined consume of Data?(v27, v28);

      v90 = v30;
    }

    v23 = v24;
  }

  v31 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  outlined init with copy of SpeakableString?(v23 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction, v19);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v3);
  v84 = v10;
  v89 = v31;
  if (EnumTagSinglePayload != 1)
  {
    v33 = v23;
    SpeakableString.print.getter();
    (*(v4 + 8))(v19, v3);
    v34 = Data.init(base64Encoded:options:)();
    if (v35 >> 60 == 15)
    {

LABEL_14:
      v23 = v33;
      goto LABEL_15;
    }

    v36 = v34;
    v37 = v35;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
    outlined copy of Data._Representation(v36, v37);
    v38 = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v36, v37);
    if (v38)
    {
      v39 = v38;

      outlined consume of Data?(v36, v37);

      v89 = v39;
      goto LABEL_14;
    }

LABEL_38:
    __break(1u);
    return;
  }

  outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_15:
  v82 = v23;
  v83 = v4;
  v40 = *(v23 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v4 + 16);
    v43 = v40 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v91 = *(v4 + 72);
    v92 = v42;
    v44 = (v4 + 8);
    v45 = _swiftEmptyArrayStorage;
    v93 = v3;
    do
    {
      v46 = v94;
      v92(v94, v43, v3);
      v47 = SpeakableString.print.getter();
      v49 = v48;
      (*v44)(v46, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = v45[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v45 = v53;
      }

      v50 = v45[2];
      if (v50 >= v45[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v45 = v54;
      }

      v45[2] = v50 + 1;
      v51 = &v45[2 * v50];
      v51[4] = v47;
      v51[5] = v49;
      v43 += v91;
      --v41;
      v3 = v93;
    }

    while (v41);
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  v55 = v82;
  v56 = v85;
  outlined init with copy of SpeakableString?(v82 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName, v85);
  if (__swift_getEnumTagSinglePayload(v56, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v56, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v94 = 0;
    v93 = 0xE000000000000000;
    v57 = v83;
  }

  else
  {
    v94 = SpeakableString.print.getter();
    v93 = v58;
    v57 = v83;
    (*(v83 + 8))(v56, v3);
  }

  v59 = v84;
  v60 = v86;
  outlined init with copy of SpeakableString?(v55 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail, v86);
  if (__swift_getEnumTagSinglePayload(v60, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v60, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v91 = 0xE000000000000000;
    v92 = 0;
  }

  else
  {
    v61 = SpeakableString.print.getter();
    v91 = v62;
    v92 = v61;
    (*(v57 + 8))(v60, v3);
  }

  v63 = v87;
  outlined init with copy of SpeakableString?(v55 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime, v87);
  if (__swift_getEnumTagSinglePayload(v63, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v63, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  else
  {
    v66 = v63;
    v64 = SpeakableString.print.getter();
    v65 = v67;
    (*(v57 + 8))(v66, v3);
  }

  outlined init with copy of SpeakableString?(v55 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType, v59);
  if (__swift_getEnumTagSinglePayload(v59, 1, v3) == 1)
  {
    outlined destroy of SpeakableString?(v59, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v68 = SpeakableString.print.getter();
    v70 = v3;
    v69 = v71;
    (*(v57 + 8))(v59, v70);
  }

  v72 = specialized PhoneCallRecordProperties<>.isVideo.getter();
  v73 = v88;
  *v88 = 0xD000000000000010;
  v73[1] = 0x8000000000456CF0;
  v75 = v92;
  v74 = v93;
  v73[2] = v94;
  v73[3] = v74;
  v76 = v91;
  v73[4] = v75;
  v73[5] = v76;
  v73[6] = v64;
  v73[7] = v65;
  v77 = type metadata accessor for SingleCallRecordModel();
  v78 = *(v77 + 44);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v79 = v90;
  CodableAceObject.init(wrappedValue:)();
  v73[9] = v69;
  v73[10] = v45;
  v73[8] = v68;
  v80 = v73 + *(v77 + 48);
  CodableAceObject.init(wrappedValue:)();

  *(v73 + 88) = v72 & 1;
}

uint64_t static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v5 = type metadata accessor for SpeakableString();
  v0[10] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_24_5();
  v0[11] = v7;
  v9 = *(v8 + 64) + 15;
  v0[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v0[13] = OUTLINED_FUNCTION_62_4();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_62_4();
  v0[17] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 160) = v0;

  if (v0)
  {
    v9 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  else
  {
    v9 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  v3 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  outlined init with take of SearchCallHistoryBinaryButtonModel?(v2, v1);
  v4 = *(*(v0 + 64) + 184);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_12_59(v5);

  return static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v7 = *(v6 + 168);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v10 + 176) = v0;

  if (v0)
  {
    v11 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  else
  {
    v11 = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();

  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);

  OUTLINED_FUNCTION_11();

  return v8();
}

{
  OUTLINED_FUNCTION_23_0();
  outlined destroy of SpeakableString?(v0[17], &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  OUTLINED_FUNCTION_11();

  return v8();
}

id static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller))
  {
    v2 = v0[15];
    v3 = v0[10];
    outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction, v2);
    v4 = OUTLINED_FUNCTION_60_16(v2);
    v5 = v0[15];
    if (v4 == 1)
    {
      outlined destroy of SpeakableString?(v0[15], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    else
    {
      v13 = v0[10];
      v14 = v0[11];
      SpeakableString.print.getter();
      (*(v14 + 8))(v5, v13);
      v15 = Data.init(base64Encoded:options:)();
      if (v16 >> 60 != 15)
      {
        v17 = v15;
        v18 = v16;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
        v19 = OUTLINED_FUNCTION_7_1();
        outlined copy of Data._Representation(v19, v20);
        result = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v17, v18);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v21 = OUTLINED_FUNCTION_7_1();
        outlined consume of Data?(v21, v22);

        goto LABEL_12;
      }
    }

    v5 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
LABEL_12:
    v0[18] = v5;
    v23 = *(v0[8] + 192);
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
    v25 = v0[16];
    v26 = v0[9];

    return static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v25, v23, v5, v26);
  }

  v6 = v0[17];
  v7 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  OUTLINED_FUNCTION_31_27(v7);
  v8 = *(v0[8] + 184);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_12_59(v9);

  return static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(v10, v11);
}

uint64_t static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_77_0();
  v18 = v16[7];
  v19 = *(v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v16[11];
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v73 = *(v21 + 56);
    v75 = v22;
    v24 = _swiftEmptyArrayStorage;
    do
    {
      v25 = v16[12];
      v75(v25, v23, v16[10]);
      SpeakableString.print.getter();
      v26 = OUTLINED_FUNCTION_11_59();
      v27(v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = v24[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v32;
      }

      v29 = v24[2];
      v28 = v24[3];
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_22_31(v28);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v33;
      }

      v24[2] = v29 + 1;
      v30 = &v24[2 * v29];
      v30[4] = v25;
      v30[5] = v17;
      v23 += v73;
      --v20;
    }

    while (v20);
    v18 = v16[7];
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v34 = v16[14];
  v35 = v16[10];
  outlined init with copy of SpeakableString?(v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail, v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v35);
  v37 = v16[14];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v16[14], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v74 = 0xE000000000000000;
    v76 = 0;
  }

  else
  {
    v39 = v16[10];
    v38 = v16[11];
    v40 = SpeakableString.print.getter();
    v74 = v41;
    v76 = v40;
    (*(v38 + 8))(v37, v39);
  }

  if (!*(v16[7] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated))
  {
    goto LABEL_16;
  }

  v42 = v16[13];
  v43 = v16[10];
  dispatch thunk of DialogCalendar.dateTimeDescriptive.getter();
  v44 = __swift_getEnumTagSinglePayload(v42, 1, v43);
  v45 = v16[13];
  if (v44 == 1)
  {
    outlined destroy of SpeakableString?(v16[13], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_16:
    v71 = 0xE000000000000000;
    v72 = 0;
    goto LABEL_18;
  }

  v47 = v16[10];
  v46 = v16[11];
  v48 = v16[13];
  v49 = SpeakableString.print.getter();
  v71 = v50;
  v72 = v49;
  (*(v46 + 8))(v45, v47);
LABEL_18:
  v51 = v16[4];
  v53 = v16[16];
  v52 = v16[17];
  v55 = v16[14];
  v54 = v16[15];
  v56 = v16[13];
  v70 = v16[12];
  v57 = v16[6];
  if (v51)
  {
    v58 = v16[4];
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  if (v51)
  {
    v59 = v16[3];
  }

  else
  {
    v59 = 0;
  }

  v60 = type metadata accessor for SingleResultCallHistoryModel();
  outlined init with take of SearchCallHistoryBinaryButtonModel?(v52, v57 + *(v60 + 36));
  *v57 = 0xD000000000000017;
  v57[1] = 0x8000000000456D10;
  v57[2] = v59;
  v57[3] = v58;
  v57[4] = v76;
  v57[5] = v74;
  v57[6] = v72;
  v57[7] = v71;
  v57[8] = v24;

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_0();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, v72, v74, v76, a14, a15, a16);
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_31_27(v3);
  v4 = *(*v1 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 40);
  OUTLINED_FUNCTION_24_5();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_49_26(v8);

  return v10(v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v7 = *(v4 + 40);
  *v6 = *v1;
  *(v5 + 48) = v0;

  v8 = *(v4 + 32);
  if (v0)
  {
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = implicit closure #4 in static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    *(v5 + 56) = v3;
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  v4 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v6 = v5;

  *v3 = v4;
  v3[1] = v6;

  OUTLINED_FUNCTION_8_1();

  return v7();
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v3 = *(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);

  return v7();
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  OUTLINED_FUNCTION_8_1();

  return v6();
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v3 = *(*a2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 232);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);

  return v7();
}

uint64_t implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:), 0, 0);
}

uint64_t implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_31_27(v3);
  v4 = *(*v1 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 40);
  OUTLINED_FUNCTION_24_5();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_49_26(v8);

  return v10(v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v7 = *(v4 + 40);
  *v6 = *v1;
  *(v5 + 48) = v0;

  v8 = *(v4 + 32);
  if (v0)
  {
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  else
  {
    *(v5 + 56) = v3;
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:);
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_5(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_40(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_40(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallNextModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t partial apply for implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in static SearchCallHistoryHelper.buildSearchCallHistoryCallCancelModel(phoneCallDisplayTextCATsSimple:callbackDirectInvocation:deviceState:)(v3, v4);
}

uint64_t OUTLINED_FUNCTION_31_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_55_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v5, 0xD00000000000002ALL, a4);
}

uint64_t OUTLINED_FUNCTION_56_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v5, 0xD00000000000002ALL, a4);
}

uint64_t OUTLINED_FUNCTION_60_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id static SearchCallHistoryIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(a1, a2, a3);
  v8 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06Searchb7HistorygH0O_Tt3g5(v7, a3, a2, a4);

  return v8;
}

uint64_t static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(void *a1, uint64_t a2, void *a3)
{
  v166 = a3;
  v160 = a2;
  v4 = type metadata accessor for ContactGroupResolver();
  v5 = OUTLINED_FUNCTION_0_7(v4, &v176);
  v158 = v6;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v164 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = &v156 - v11;
  v12 = type metadata accessor for Locale();
  v13 = OUTLINED_FUNCTION_0_7(v12, &v177);
  v162 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v161 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v18;
  v21 = PhoneCallNLIntent.isPlayVoiceMail()();
  v22 = &selRef_setTriggerReason_;
  v23 = &unk_426000;
  v168 = a1;
  v169 = v20;
  if (!v21)
  {
    OUTLINED_FUNCTION_6_77();
    v47 = *(v46 + 40);
    v48 = OUTLINED_FUNCTION_4_3();
    v50 = v49(v48);
    if (!v50)
    {
      goto LABEL_61;
    }

    v51 = v50;
    v22 = 0;
    v167 = 0;
    v20 = *(v50 + 16);
    OUTLINED_FUNCTION_11_60();
    *&v52 = 136315138;
    v170 = v52;
    v23 = &dword_54B000;
    while (1)
    {
      if (v20 == v22)
      {

        if (v23[369] != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Logger.siriPhone);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        v67 = os_log_type_enabled(v65, v66);
        v68 = v169;
        v69 = v167;
        if (v67)
        {
          v70 = OUTLINED_FUNCTION_42();
          v71 = swift_slowAlloc();
          v175[0] = v71;
          *v70 = v170;
          v72 = swift_allocObject();
          *(v72 + 16) = _swiftEmptyArrayStorage;
          v73 = (v72 + 16);
          v173 = partial apply for closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter;
          v174 = v72;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
          v172 = &block_descriptor_9;
          v74 = _Block_copy(aBlock);

          INCallRecordTypeOptionsEnumerateBackingTypes();
          _Block_release(v74);
          swift_beginAccess();
          v75 = *v73;

          v76 = Array.description.getter();
          v78 = v77;

          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v175);

          *(v70 + 4) = v79;
          _os_log_impl(&dword_0, v65, v66, "#PhoneCallNLIntent->INSearchCallHistoryIntent Creating INSearchCallHistoryIntent to return the latest call record: %s.", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_26_0();
        }

        [v68 setCallTypes:v69];
        goto LABEL_61;
      }

      if (v22 >= *(v51 + 16))
      {
        goto LABEL_90;
      }

      v53 = *(v22 + v51 + 32);
      if (!*(v22 + v51 + 32))
      {
        break;
      }

      if (v53 == 6)
      {
        v63 = 8;
LABEL_54:
        v167 |= v63;
        goto LABEL_51;
      }

      if (v23[369] != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Logger.siriPhone);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_42();
        v58 = swift_slowAlloc();
        aBlock[0] = v58;
        *v57 = v170;
        v59 = 0xE300000000000000;
        v60 = v58;
        v61 = 7824750;
        switch(v53)
        {
          case 2:
            v59 = 0xE600000000000000;
            v61 = OUTLINED_FUNCTION_61_1() & 0xFFFF0000FFFFFFFFLL | 0x746E00000000;
            break;
          case 3:
            v59 = 0xE700000000000000;
            v61 = OUTLINED_FUNCTION_4_7();
            break;
          case 4:
            v59 = 0xE800000000000000;
            v61 = OUTLINED_FUNCTION_61_1() | 0x6465766900000000;
            break;
          case 5:
            v59 = 0xE800000000000000;
            v61 = OUTLINED_FUNCTION_18_34();
            break;
          case 6:
            v59 = 0xE400000000000000;
            v61 = 1953718636;
            break;
          case 7:
            v59 = 0xE800000000000000;
            v61 = OUTLINED_FUNCTION_6_59();
            break;
          case 8:
            v59 = 0xE700000000000000;
            v61 = OUTLINED_FUNCTION_9_52();
            break;
          case 9:
            v59 = 0xE700000000000000;
            v61 = OUTLINED_FUNCTION_5_64();
            break;
          case 10:
            v59 = 0xE600000000000000;
            v61 = 0x646C6F486E6FLL;
            break;
          case 11:
            v61 = OUTLINED_FUNCTION_9_67();
            v59 = 0xE900000000000065;
            break;
          case 12:
            v61 = OUTLINED_FUNCTION_8_9();
            v59 = 0xEC0000006C69616DLL;
            break;
          case 13:
            v61 = 0xD000000000000014;
            v59 = v157;
            break;
          default:
            break;
        }

        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v59, aBlock);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_0, v55, v56, "#PhoneCallNLIntent->INSearchCallHistoryIntent attribute: %s is not supported and will be ignored", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

        v23 = &dword_54B000;
      }

      else
      {
      }

LABEL_51:
      v22 = (v22 + 1);
    }

    v63 = 2;
    goto LABEL_54;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v28, v29, v30, v31, v27, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    [v20 v22[156]];
    OUTLINED_FUNCTION_6_77();
    v33 = *(v32 + 40);
    v34 = OUTLINED_FUNCTION_4_3();
    v36 = v35(v34);
    if (!v36)
    {
      break;
    }

    v37 = v36;
    v38 = 0;
    v167 = 0;
    v22 = *(v36 + 16);
    OUTLINED_FUNCTION_11_60();
    *&v39 = v23[70];
    v170 = v39;
    while (1)
    {
      if (v22 == v38)
      {

        v80 = v169;
        v81 = [v169 callTypes];
        [v80 setCallTypes:v81 | v167];
        goto LABEL_61;
      }

      if (v38 >= *(v37 + 16))
      {
        break;
      }

      v40 = *(v38 + v37 + 32);
      if (v40 == 6)
      {
        v38 = (v38 + 1);
        v167 = 8;
      }

      else
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v20 = OUTLINED_FUNCTION_42();
          v23 = swift_slowAlloc();
          aBlock[0] = v23;
          *v20 = v170;
          v43 = 0xE600000000000000;
          result = 0x64657373696DLL;
          switch(v40)
          {
            case 1:
              v43 = 0xE300000000000000;
              result = 7824750;
              goto LABEL_24;
            case 2:
              result = OUTLINED_FUNCTION_61_1() & 0xFFFF0000FFFFFFFFLL | 0x746E00000000;
              goto LABEL_24;
            case 3:
              v43 = 0xE700000000000000;
              result = OUTLINED_FUNCTION_4_7();
              goto LABEL_24;
            case 4:
              v43 = 0xE800000000000000;
              result = OUTLINED_FUNCTION_61_1() | 0x6465766900000000;
              goto LABEL_24;
            case 5:
              v43 = 0xE800000000000000;
              result = OUTLINED_FUNCTION_18_34();
              goto LABEL_24;
            case 6:
              __break(1u);
              return result;
            case 7:
              v43 = 0xE800000000000000;
              result = OUTLINED_FUNCTION_6_59();
              goto LABEL_24;
            case 8:
              v43 = 0xE700000000000000;
              result = OUTLINED_FUNCTION_9_52();
              goto LABEL_24;
            case 9:
              v43 = 0xE700000000000000;
              result = OUTLINED_FUNCTION_5_64();
              goto LABEL_24;
            case 10:
              result = 0x646C6F486E6FLL;
              goto LABEL_24;
            case 11:
              result = OUTLINED_FUNCTION_9_67();
              v43 = 0xE900000000000065;
              goto LABEL_24;
            case 12:
              result = OUTLINED_FUNCTION_8_9();
              v43 = 0xEC0000006C69616DLL;
              goto LABEL_24;
            case 13:
              result = 0xD000000000000014;
              v43 = v157;
              goto LABEL_24;
            default:
LABEL_24:
              v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(result, v43, aBlock);

              *(v20 + 4) = v45;
              _os_log_impl(&dword_0, v41, v42, "#PhoneCallNLIntent->INSearchCallHistoryIntent attribute: %s is not supported for play voicemail and will be ignored", v20, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v23);
              OUTLINED_FUNCTION_26_0();
              OUTLINED_FUNCTION_35();
              break;
          }
        }

        v38 = (v38 + 1);
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

LABEL_61:
  v82 = v168;
  OUTLINED_FUNCTION_6_77();
  v84 = *(v83 + 128);
  v85 = OUTLINED_FUNCTION_4_3();
  v87 = *(v86(v85) + 16);

  if (v87)
  {
    v88 = v166;
    v89 = v166[4];
    __swift_project_boxed_opaque_existential_1(v166, v166[3]);
    v90 = *(v89 + 56);
    v91 = OUTLINED_FUNCTION_4_3();
    v93 = v92(v91);
    v94 = (*(*v93 + 232))(v93);

    v95 = v82[3];
    v96 = v82[4];
    __swift_project_boxed_opaque_existential_1(v82, v95);
    v97 = *(v96 + 128);
    v98 = v169;
    v97(v95, v96);
    if ((v94 & 1) == 0)
    {
      v123 = v88[4];
      __swift_project_boxed_opaque_existential_1(v88, v88[3]);
      v124 = *(v123 + 8);
      v125 = OUTLINED_FUNCTION_4_3();
      v126(v125);
      __swift_project_boxed_opaque_existential_1(aBlock, v172);
      v127 = v161;
      OUTLINED_FUNCTION_4_3();
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v154 = swift_allocObject();
      v128 = OUTLINED_FUNCTION_5_83();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo08INSearchb7HistoryK0C_Tt9g5(v128, v129, v130, 0, v127, v82, v88, 0, v153, v175, v154);

      __swift_destroy_boxed_opaque_existential_1(v175);
      (*(v162 + 8))(v127, v163);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      return v169;
    }

    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    *&v170 = swift_allocObject();
    v99 = v165;
    ContactGroupResolver.init()();
    v100 = v88;
    v101 = v158;
    v102 = v159;
    (*(v158 + 16))(v164, v99, v159);
    v103 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo08INSearchb7HistoryW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5(v98, v160, v82, v100);
    v105 = v104;
    if (specialized Array.count.getter(v103))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, static Logger.siriPhone);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        OUTLINED_FUNCTION_40_3();
        _os_log_impl(v110, v111, v112, v113, v109, 2u);
        OUTLINED_FUNCTION_35();
      }

      INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v103);
    }

    if (specialized Array.count.getter(v105))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      __swift_project_value_buffer(v114, static Logger.siriPhone);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        OUTLINED_FUNCTION_40_3();
        _os_log_impl(v118, v119, v120, v121, v117, 2u);
        OUTLINED_FUNCTION_35();
      }
    }

    if (specialized Array.count.getter(v105))
    {
    }

    else
    {
      v131 = specialized Array.count.getter(v103);

      if (!v131)
      {
        v144 = v166;
        v145 = v166[4];
        __swift_project_boxed_opaque_existential_1(v166, v166[3]);
        v146 = *(v145 + 8);
        v147 = OUTLINED_FUNCTION_4_3();
        v148(v147);
        __swift_project_boxed_opaque_existential_1(v175, v175[3]);
        v149 = v161;
        OUTLINED_FUNCTION_4_3();
        dispatch thunk of DeviceState.siriLocale.getter();
        v155 = v170;
        v150 = OUTLINED_FUNCTION_5_83();
        _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo08INSearchb7HistoryK0C_Tt9g5(v150, v151, v152, v160, v149, v168, v144, 0, v153, aBlock, v155);
        (*(v162 + 8))(v149, v163);
        __swift_destroy_boxed_opaque_existential_1(v175);
LABEL_85:
        v143 = *(v101 + 8);
        v143(v164, v102);

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v143(v165, v102);
        return v169;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    __swift_project_value_buffer(v132, static Logger.siriPhone);
    v133 = v98;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = OUTLINED_FUNCTION_42();
      v137 = swift_slowAlloc();
      *v136 = 138412290;
      *(v136 + 4) = v133;
      *v137 = v133;
      v138 = v133;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v139, v140, v141, v142, v136, 0xCu);
      outlined destroy of PhoneCallNLIntent?(v137, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_26_0();
    }

    goto LABEL_85;
  }

  v122 = v169;

  return v122;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
    v17 = &type metadata for PhoneCallFeatureFlags;
    v18 = &protocol witness table for PhoneCallFeatureFlags;
    *&v16 = swift_allocObject();
    memcpy((v16 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
    outlined init with take of SPHConversation(&v16, v19);
    outlined init with copy of PhoneCallFeatureFlags(__dst, v14);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v6 + 8);
    v8 = OUTLINED_FUNCTION_25_0();
    v9(v8);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_25_0();
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        swift_once();
      }

      v10 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      OUTLINED_FUNCTION_25_0();
      if (dispatch thunk of DeviceState.isWatch.getter())
      {
        if (one-time initialization token for siriPhoneWatchExtension != -1)
        {
          swift_once();
        }

        v10 = &static DefaultPhoneApps.siriPhoneWatchExtension;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v14, v15);
        OUTLINED_FUNCTION_25_0();
        if (dispatch thunk of DeviceState.isXRDevice.getter())
        {
          if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
          {
            swift_once();
          }

          v10 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
        }

        else
        {
          if (one-time initialization token for siriPhoneExtension != -1)
          {
            swift_once();
          }

          v10 = &static DefaultPhoneApps.siriPhoneExtension;
        }
      }
    }

    v5 = *v10;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  outlined init with copy of SignalProviding(a1, __dst);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  outlined init with take of SPHConversation(__dst, v11 + 24);
  *(v11 + 64) = a3;
  v12 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(a1, a2, a3);
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a2, a4, a3);
  *a5 = v9;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo08INSearchb7HistoryK0C_Tt9g5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v178 = a8;
  v201 = a7;
  v182 = a5;
  v16 = type metadata accessor for ResolvedSiriKitContact();
  v180 = *(v16 - 8);
  v17 = *(v180 + 64);
  __chkstk_darwin(v16);
  v19 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for PhoneError();
  v20 = *(*(v177 - 8) + 64);
  v21 = __chkstk_darwin(v177);
  v23 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v176 = &v165 - v24;
  v196 = type metadata accessor for RecommenderType();
  v194 = *(v196 - 8);
  v25 = *(v194 + 64);
  __chkstk_darwin(v196);
  v195 = &v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for SearchSuggestedContacts();
  v189 = *(v190 - 8);
  v27 = *(v189 + 64);
  __chkstk_darwin(v190);
  v192 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ContactResolverDomain();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v188 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for ContactActionType();
  v191 = *(v193 - 8);
  v32 = *(v191 + 64);
  v33 = __chkstk_darwin(v193);
  v187 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v184 = &v165 - v36;
  __chkstk_darwin(v35);
  v186 = &v165 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v185 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v203 = &v165 - v42;
  v204 = type metadata accessor for Locale();
  v200 = *(v204 - 1);
  v43 = *(v200 + 64);
  v44 = __chkstk_darwin(v204);
  v183 = &v165 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v202 = &v165 - v46;
  v198 = type metadata accessor for ContactResolverConfigHashable();
  v47 = *(*(v198 - 8) + 64);
  v48 = __chkstk_darwin(v198);
  v199 = (&v165 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v51 = &v165 - v50;
  v179 = type metadata accessor for ContactResolution();
  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

  v197 = a2;
  v181 = a6;
  swift_getObjectType();
  v52 = dynamic_cast_existential_1_conditional(a1);
  v54 = one-time initialization token for siriPhone;
  if (!v52)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.siriPhone);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "#ContactResolution NL intent has an emergency contact but is not a CallingIntent!", v68, 2u);
    }

    a6 = v181;
    a2 = v197;
LABEL_13:
    result = _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo08INSearchb7HistoryT0C_Tt2g5(a6, a1, a2);
    if (result)
    {
      return result;
    }

    v69 = _swiftEmptyArrayStorage;
    v165 = v23;
    v181 = a6;
    v167 = v19;
    if (a4)
    {
      v70 = v16;
      v71 = App.appIdentifier.getter();
      if (v72)
      {
        v73 = v71;
        v74 = v72;
        v75 = v70;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v77 = v76[2];
        v78 = v76;
        if (v77 >= v76[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v78 = v164;
        }

        v78[2] = v77 + 1;
        v79 = &v78[2 * v77];
        v69 = v78;
        v79[4] = v73;
        v79[5] = v74;
        v16 = v75;
      }

      else
      {
        v69 = _swiftEmptyArrayStorage;
      }
    }

    v182 = v69;
    v168 = a4;
    v174 = v51;
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v197 = a2;
    v80 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = v201[3];
    v85 = v201[4];
    __swift_project_boxed_opaque_existential_1(v201, v84);
    (*(v85 + 8))(&v206, v84, v85);
    __swift_project_boxed_opaque_existential_1(&v206, v207);
    v86 = v202;
    DeviceState.siriInputLocale.getter();
    v87 = a1;
    v88 = v182;

    v89 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v87);
    if (v90)
    {
      v91 = v89;
    }

    else
    {
      v91 = 0;
    }

    if (v90)
    {
      v92 = v90;
    }

    else
    {
      v92 = 0xE000000000000000;
    }

    v93 = v199;
    v171 = v91;
    *v199 = v91;
    v93[1] = v92;
    v173 = v81;
    v93[2] = v81;
    v93[3] = v83;
    v94 = v198;
    v95 = v93 + *(v198 + 24);
    v169 = *(v200 + 16);
    v169(v95, v86, v204);
    *(v93 + *(v94 + 28)) = v88;

    v170 = v92;

    v172 = v83;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INSearchCallHistoryIntent, v203);
    v96 = [v87 preferredCallProvider];
    v175 = v87;
    v166 = v16;
    if (v96 == &dword_0 + 2)
    {
      swift_getObjectType();
      v98 = &enum case for ContactActionType.facetimeVideo(_:);
      if (dynamic_cast_existential_1_conditional(v87))
      {
        v99 = v97;
        ObjectType = swift_getObjectType();
        v101 = v87;
        v102 = *(v99 + 24);
        v103 = v101;
        v104 = v102(ObjectType, v99);

        if (v104 == 1)
        {
          v98 = &enum case for ContactActionType.facetimeAudio(_:);
        }
      }

      v94 = v198;
    }

    else
    {
      v98 = &enum case for ContactActionType.phoneCall(_:);
    }

    v105 = v169;
    v106 = *v98;
    v107 = v191;
    v108 = v184;
    v109 = v193;
    (*(v191 + 104))(v184, v106, v193);
    v110 = v186;
    (*(v107 + 32))(v186, v108, v109);
    v105(v183, v202, v204);
    static ContactResolverDomain.phone.getter();
    outlined init with copy of ContactHandleTypePreference?(v203, v185);
    (*(v189 + 104))(v192, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v190);
    (*(v194 + 104))(v195, enum case for RecommenderType.mlRecommender(_:), v196);
    v111 = *(v94 + 32);
    v112 = v199;
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    (*(v107 + 16))(v187, v110, v109);
    ContactResolverConfig.actionType.setter();
    (*(v107 + 8))(v110, v109);
    outlined destroy of PhoneCallNLIntent?(v203, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v200 + 8))(v202, v204);
    v113 = v174;
    outlined init with take of ContactResolverConfigHashable(v112, v174);
    __swift_destroy_boxed_opaque_existential_1(&v206);
    v114 = v201[3];
    v115 = v201[4];
    __swift_project_boxed_opaque_existential_1(v201, v114);
    (*(v115 + 96))(&v206, v114, v115);
    v116 = v207;
    v117 = v208;
    __swift_project_boxed_opaque_existential_1(&v206, v207);
    v118 = (v117[2])(v197, v113, v116, v117);
    __swift_destroy_boxed_opaque_existential_1(&v206);
    v119 = a10[4];
    __swift_project_boxed_opaque_existential_1(a10, a10[3]);
    type metadata accessor for SiriKitEvent();
    v120 = [v175 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of SignalProviding(v181, &v206);
    v121 = swift_allocObject();
    *(v121 + 16) = v168;
    outlined init with take of SPHConversation(&v206, v121 + 24);
    *(v121 + 64) = v118;

    LOBYTE(v205) = 0;
    SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v122 = *(v118 + 16);
    if (v122)
    {
      *&v206 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v123 = v167;
      v124 = v166;
      v125 = *(v180 + 16);
      v203 = v118;
      v204 = v125;
      v126 = v118 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
      v127 = *(v180 + 72);
      v128 = (v180 + 8);
      do
      {
        v204(v123, v126, v124);
        ResolvedSiriKitContact.person.getter();
        (*v128)(v123, v124);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v129 = *(v206 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v126 += v127;
        --v122;
      }

      while (v122);

      v130._rawValue = v206;
    }

    else
    {

      v130._rawValue = _swiftEmptyArrayStorage;
    }

    v131 = specialized Array.count.getter(v130._rawValue);
    v132 = v174;
    if (v131)
    {
      v133 = static ContactResolution.dedupeContacts(contacts:)();

      v130._rawValue = v133;
    }

    if (a9)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v134 = type metadata accessor for Logger();
      __swift_project_value_buffer(v134, static Logger.siriPhone);
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v135, v136))
      {
        goto LABEL_65;
      }

      v137 = swift_slowAlloc();
      *v137 = 0;
      v138 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_64:
      _os_log_impl(&dword_0, v135, v136, v138, v137, 2u);

LABEL_65:

      INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v130);

      return _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v132, type metadata accessor for ContactResolverConfigHashable);
    }

    INSearchCallHistoryIntent.contacts.getter();
    if (!v139)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v149 = type metadata accessor for Logger();
      __swift_project_value_buffer(v149, static Logger.siriPhone);
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v135, v136))
      {
        goto LABEL_65;
      }

      v137 = swift_slowAlloc();
      *v137 = 0;
      v138 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
      goto LABEL_64;
    }

    v140 = v139;
    if (specialized Array.count.getter(v130._rawValue))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v130._rawValue & 0xC000000000000001) == 0, v130._rawValue);
      if ((v130._rawValue & 0xC000000000000001) != 0)
      {
        v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v141 = *(v130._rawValue + 4);
      }

      v142 = v141;
      v143 = v178;
      if ((v178 & 0x8000000000000000) == 0 && specialized Array.count.getter(v140) > v143)
      {
        v144 = specialized Array.count.getter(v130._rawValue);
        if (specialized Array.count.getter(v140) >= v144)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v150 = type metadata accessor for Logger();
          __swift_project_value_buffer(v150, static Logger.siriPhone);
          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            *v153 = 134217984;
            *(v153 + 4) = v178;
            _os_log_impl(&dword_0, v151, v152, "#ContactResolution updating person at index %ld", v153, 0xCu);
          }

          v154 = specialized Array.count.getter(v140);
          v155 = v178;
          if (v154 <= v178)
          {
            v159 = v165;
            *v165 = v178;
            swift_storeEnumTagMultiPayload();
            v160 = v176;
            PhoneError.logged()(v176);
            _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v159, type metadata accessor for PhoneError);
            _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v160, type metadata accessor for PhoneError);
            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              *v163 = 134218240;
              *(v163 + 4) = v155;
              *(v163 + 12) = 2048;
              *(v163 + 14) = specialized Array.count.getter(v140);
              _os_log_impl(&dword_0, v161, v162, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v163, 0x16u);
            }

            INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v130);
          }

          else
          {

            v156 = v142;
            result = swift_isUniquelyReferenced_nonNull_bridgeObject();
            if (v140 >> 62 || (result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v140);
              v140 = result;
            }

            if (*(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8)) <= v178)
            {
              __break(1u);
              return result;
            }

            v157 = *(&stru_20.cmd + 8 * v178 + (v140 & 0xFFFFFFFFFFFFFF8));
            *(&stru_20.cmd + 8 * v178 + (v140 & 0xFFFFFFFFFFFFFF8)) = v156;

            INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v158);
          }

LABEL_59:

          _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(v132, type metadata accessor for ContactResolverConfigHashable);
        }
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    __swift_project_value_buffer(v145, static Logger.siriPhone);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_0, v146, v147, "#ContactResolution: overwriting contacts slot", v148, 2u);
    }

    INSearchCallHistoryIntent.overwriteContacts(newContacts:)(v130);
    goto LABEL_59;
  }

  v55 = v52;
  v56 = v53;
  v57 = a1;
  if (v54 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.siriPhone);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v61, 2u);
  }

  v62 = [objc_allocWithZone(HKHealthStore) init];
  v63 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v62];

  v207 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v208 = &protocol witness table for HKMedicalIDStore;
  *&v206 = v63;
  (*(*a11 + 80))(v55, v56, v182, &v206);

  return __swift_destroy_boxed_opaque_existential_1(&v206);
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo08INSearchb7HistoryT0C_Tt2g5(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    v10 = a2;
    if (v9(ObjectType, v7) == 2)
    {
      if (one-time initialization token for siriPhone != -1)
      {
LABEL_85:
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.siriPhone);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_0, v12, v13, "#ContactResolution intent is emergency call. bypassing contact resolution", v14, 2u);
      }

      return 1;
    }
  }

  if (a3)
  {
    if (*(a3 + 16))
    {
      return 0;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_35;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "#ContactResolution ContactQueries is empty, bypassing contact resolution";
    goto LABEL_34;
  }

  INSearchCallHistoryIntent.contacts.getter();
  if (v16)
  {
    v10 = v16;
    v17 = specialized Array.count.getter(v16);
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = v10 & 0xC000000000000001;
      while (v18 != v19)
      {
        if (v20)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_82;
          }

          v21 = *(v10 + 8 * v19 + 32);
        }

        v22 = v21;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v23 = INPerson.hasHandleValue.getter();

        ++v19;
        if (!v23)
        {
          v67 = a1;
          v31 = 0;
          while (1)
          {
            if (v20)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_84;
              }

              v32 = *(v10 + 8 * v31 + 32);
            }

            v33 = v32;
            v34 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_83;
            }

            v35 = [v32 personHandle];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 emergencyType];

              if (v37)
              {

                if (one-time initialization token for siriPhone != -1)
                {
LABEL_89:
                  swift_once();
                }

                v58 = type metadata accessor for Logger();
                __swift_project_value_buffer(v58, static Logger.siriPhone);
                v59 = Logger.logObject.getter();
                v60 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v59, v60))
                {
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  v70[0] = v62;
                  *v61 = 136315138;
                  *&v69[0] = v37;
                  type metadata accessor for INPersonHandleEmergencyType(0);
                  v63 = String.init<A>(describing:)();
                  v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v70);

                  *(v61 + 4) = v65;
                  _os_log_impl(&dword_0, v59, v60, "#ContactResolution contact has a handle with an emergency type %s. bypassing contact resolution", v61, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v62);
                }

                return 1;
              }
            }

            ++v31;
            if (v34 == v18)
            {
              v38 = v67[3];
              v39 = v67[4];
              __swift_project_boxed_opaque_existential_1(v67, v38);
              v37 = (v39 + 24);
              v40 = *(v39 + 24);
              v41 = *(v40(v38, v39) + 16);

              if (!v41)
              {
LABEL_74:

                return 0;
              }

              v42 = v40(v38, v39);
              v33 = 0;
              v43 = v42 + 32;
              v68 = *(v42 + 16);
              while (1)
              {
                if (v68 == v33)
                {

                  goto LABEL_77;
                }

                if (v33 >= *(v42 + 16))
                {
                  __break(1u);
                  goto LABEL_87;
                }

                outlined init with copy of SignalProviding(v43, v69);
                v44 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
                if (v33 == v44)
                {
                  break;
                }

                if (v20)
                {
                  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v33 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    goto LABEL_89;
                  }

                  v45 = *(v10 + 8 * v33 + 32);
                }

                v46 = v45;
                outlined init with take of SPHConversation(v69, v70);
                v73 = v46;
                v47 = v71;
                v37 = v72;
                __swift_project_boxed_opaque_existential_1(v70, v71);
                v48 = v37[4](v47, v37);
                if (!v49)
                {
                  goto LABEL_72;
                }

                v50 = v48;
                v51 = v49;

                v52 = HIBYTE(v51) & 0xF;
                if ((v51 & 0x2000000000000000) == 0)
                {
                  v52 = v50 & 0xFFFFFFFFFFFFLL;
                }

                if (!v52 || (v53 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v46), !v54))
                {
LABEL_72:
                  outlined destroy of PhoneCallNLIntent?(v70, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_73:

                  goto LABEL_74;
                }

                v55 = v53;
                v56 = v54;

                if ((v56 & 0x2000000000000000) != 0)
                {
                  v57 = HIBYTE(v56) & 0xF;
                }

                else
                {
                  v57 = v55 & 0xFFFFFFFFFFFFLL;
                }

                outlined destroy of PhoneCallNLIntent?(v70, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
                v43 += 40;
                ++v33;
                if (!v57)
                {
                  goto LABEL_73;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(v69);
LABEL_77:
              if (one-time initialization token for siriPhone != -1)
              {
                swift_once();
              }

              v66 = type metadata accessor for Logger();
              __swift_project_value_buffer(v66, static Logger.siriPhone);
              v25 = Logger.logObject.getter();
              v26 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                *v27 = 0;
                v28 = "#ContactResolution server has already expanded contacts into the SK intent. bypassing contact resolution";
                goto LABEL_34;
              }

              goto LABEL_35;
            }
          }
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_87:
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.siriPhone);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "#ContactResolution contacts have been fully resolved. bypassing contact resolution";
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "#ContactResolution no contacts to resolve. bypassing contact resolution";
LABEL_34:
    _os_log_impl(&dword_0, v25, v26, v28, v27, 2u);
  }

LABEL_35:

  return 1;
}

void *_s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo08INSearchb7HistoryW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v219 = a4;
  v213 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v193 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v198 = (&v190 - v10);
  v212 = type metadata accessor for RREntity();
  v194 = *(v212 - 8);
  v11 = *(v194 + 64);
  v12 = __chkstk_darwin(v212);
  v211 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v191 = &v190 - v15;
  v16 = __chkstk_darwin(v14);
  v192 = &v190 - v17;
  v18 = __chkstk_darwin(v16);
  v195 = &v190 - v19;
  __chkstk_darwin(v18);
  v196 = &v190 - v20;
  v218 = type metadata accessor for RRCandidate();
  v216 = *(v218 - 8);
  v21 = *(v216 + 64);
  v22 = __chkstk_darwin(v218);
  v210 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v197 = &v190 - v25;
  __chkstk_darwin(v24);
  v206 = &v190 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v217 = &v190 - v29;
  v202 = type metadata accessor for RRResult();
  v201 = *(v202 - 8);
  v30 = *(v201 + 64);
  v31 = __chkstk_darwin(v202);
  v203 = (&v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v199 = (&v190 - v34);
  __chkstk_darwin(v33);
  v200 = &v190 - v35;
  v36 = type metadata accessor for MatchedResultsSetting();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v41 = &v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v190 - v42;
  v44 = type metadata accessor for ContactGroupResolver();
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v204 = v47;
  v48 = *(v47 + 16);
  v207 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v49;
  v48();
  v50 = a3[3];
  v51 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v50);
  v52 = (*(v51 + 144))(v50, v51);
  v221 = v52;
  v208 = v37;
  v209 = v36;
  v53 = *(v37 + 104);
  v215 = v43;
  v53(v43, enum case for MatchedResultsSetting.defaultMatching(_:), v36);
  v54 = a3[3];
  v55 = a3[4];
  v214 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v54);
  if (PhoneCallNLIntent.hasOnlyCallVerb()())
  {
    v56 = a2;
    if (App.isFirstParty()() && static UsoUtils.buildDummyReferenceEntity()())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v221 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v221 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v221;
      v57 = v209;
      v58 = v215;
      (*(v208 + 8))(v215, v209);
      v53(v58, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v57);
    }
  }

  else
  {
    v56 = a2;
  }

  if (!specialized Array.count.getter(v52))
  {
    v74 = v215;
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_16;
  }

  v59 = v215;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_90:
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v61 = __swift_project_value_buffer(v60, static Logger.siriPhone);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v220 = v65;
    *v64 = 136315138;
    swift_beginAccess();
    (*(v208 + 16))(v41, v59, v209);
    v66 = String.init<A>(describing:)();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v220);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_0, v62, v63, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v69 = v217;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v71);
  *(&v190 - 4) = &v221;
  *(&v190 - 3) = v59;
  *(&v190 - 2) = v219;
  static SiriKitEventSender.current.getter();
  v72 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(&v220);
  specialized Collection.first.getter(v72);

  v73 = v202;
  if (__swift_getEnumTagSinglePayload(v69, 1, v202) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v69, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
    v56 = v207;
    goto LABEL_14;
  }

  v217 = v61;
  v82 = v201;
  v83 = v200;
  (*(v201 + 32))(v200, v69, v73);
  v84 = *(v82 + 16);
  v85 = v199;
  v84(v199, v83, v73);
  v86 = (*(v82 + 88))(v85, v73);
  if (v86 == enum case for RRResult.foundMatch(_:))
  {
    v203 = v56;
    (*(v82 + 96))(v85, v73);
    v87 = v216;
    v88 = v206;
    v89 = v218;
    (*(v216 + 32))(v206, v85, v218);
    v90 = *(v87 + 16);
    v91 = v197;
    v90(v197, v88, v89);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = v91;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v220 = v96;
      *v95 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = v94;
      v101 = *(v87 + 8);
      v101(v100, v218);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v220);
      v73 = v202;

      *(v95 + 4) = v102;
      _os_log_impl(&dword_0, v92, v93, "#ReferenceContactResolutionWrapper .foundMatch %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      v89 = v218;
    }

    else
    {

      v101 = *(v87 + 8);
      v101(v91, v89);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v137 = *(v87 + 72);
    v138 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_424FD0;
    v90((v139 + v138), v206, v89);
    v140 = v198;
    specialized Collection.first.getter(v139);

    if (__swift_getEnumTagSinglePayload(v140, 1, v89) == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v140, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.debug.getter();
      v143 = os_log_type_enabled(v141, v142);
      v144 = v215;
      v145 = v201;
      v146 = v200;
      if (v143)
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_0, v141, v142, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v147, 2u);
      }

      v80 = _swiftEmptyArrayStorage;
      v56 = v207;
      v148 = v218;
    }

    else
    {
      v148 = v89;
      v158 = v195;
      RRCandidate.entity.getter();
      v101(v140, v89);
      v159 = v194;
      v160 = v196;
      v161 = v212;
      (*(v194 + 32))(v196, v158, v212);
      v162 = v207;
      v80 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v160, v213, v203, v214, v219, v207);
      (*(v159 + 8))(v160, v161);
      v56 = v162;
      v144 = v215;
      v145 = v201;
      v146 = v200;
    }

    v101(v206, v148);
    (*(v145 + 8))(v146, v73);
    (*(v208 + 8))(v144, v209);
    goto LABEL_20;
  }

  if (v86 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v86 == enum case for RRResult.foundMatchPlural(_:))
    {
      v203 = v56;
      (*(v201 + 96))(v85, v73);
      v149 = *v85;

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v220 = v153;
        *v152 = 136315138;
        v154 = v218;
        v155 = Array.description.getter();
        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, &v220);
        v73 = v202;

        *(v152 + 4) = v157;
        _os_log_impl(&dword_0, v150, v151, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v153);
      }

      else
      {

        v154 = v218;
      }

      v169 = v216;
      v170 = v193;
      specialized Collection.first.getter(v149);

      if (__swift_getEnumTagSinglePayload(v170, 1, v154) == 1)
      {
        outlined destroy of PhoneCallNLIntent?(v170, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_0, v171, v172, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v173, 2u);
        }

        (*(v201 + 8))(v200, v73);
        (*(v208 + 8))(v59, v209);
        v80 = _swiftEmptyArrayStorage;
        v56 = v207;
      }

      else
      {
        v186 = v191;
        RRCandidate.entity.getter();
        (*(v169 + 8))(v170, v154);
        v187 = v194;
        v188 = v192;
        v189 = v212;
        (*(v194 + 32))(v192, v186, v212);
        v56 = v207;
        v80 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v188, v213, v203, v214, v219, v207);
        (*(v187 + 8))(v188, v189);
        (*(v201 + 8))(v200, v73);
        (*(v208 + 8))(v59, v209);
      }

      goto LABEL_20;
    }

    if (v86 == enum case for RRResult.noMatch(_:))
    {
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();
      v165 = os_log_type_enabled(v163, v164);
      v56 = v207;
      if (v165)
      {
        v166 = swift_slowAlloc();
        *v166 = 0;
        _os_log_impl(&dword_0, v163, v164, "#ReferenceContactResolutionWrapper found a .nomatch", v166, 2u);
      }

      (*(v201 + 8))(v200, v73);
    }

    else
    {
      v174 = v203;
      v175 = v200;
      v84(v203, v200, v73);
      v176 = Logger.logObject.getter();
      v177 = v73;
      v178 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v176, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v220 = v180;
        *v179 = 136315138;
        lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult);
        v181 = dispatch thunk of CustomStringConvertible.description.getter();
        v183 = v182;
        v184 = *(v201 + 8);
        v184(v174, v177);
        v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v183, &v220);

        *(v179 + 4) = v185;
        _os_log_impl(&dword_0, v176, v178, "#ReferenceContactResolutionWrapper dropping result of type %s!", v179, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v180);

        v184(v200, v177);
        v85 = v199;
      }

      else
      {

        v184 = *(v201 + 8);
        v184(v174, v177);
        v184(v175, v177);
      }

      v184(v85, v177);
      v56 = v207;
      v59 = v215;
    }

LABEL_14:
    (*(v208 + 8))(v59, v209);
    goto LABEL_19;
  }

  (*(v201 + 96))(v85, v73);
  v103 = *v85;

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v220 = v107;
    *v106 = 136315138;
    v108 = Array.description.getter();
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v220);

    *(v106 + 4) = v110;
    v73 = v202;
    _os_log_impl(&dword_0, v104, v105, "#ReferenceContactResolutionWrapper found a .needsDisambiguation match %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  v199 = *(v103 + 16);
  if (!v199)
  {

    v112 = _swiftEmptyArrayStorage;
    v56 = v207;
LABEL_77:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v112, v219);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v168 = v167;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_426260;
    v80[4] = v168;
    (*(v201 + 8))(v200, v73);
    (*(v208 + 8))(v59, v209);
    goto LABEL_20;
  }

  v203 = v56;
  v41 = 0;
  v198 = *(v216 + 16);
  v111 = (*(v216 + 80) + 32) & ~*(v216 + 80);
  v190 = v103;
  v197 = (v103 + v111);
  v112 = _swiftEmptyArrayStorage;
  v196 = (v216 + 8);
  v195 = *(v216 + 72);
  v194 += 8;
  v56 = v207;
  v113 = v218;
  v216 += 16;
  while (1)
  {
    v114 = v210;
    v198(v210, &v197[v195 * v41], v113);
    v115 = v211;
    RRCandidate.entity.getter();
    (*v196)(v114, v113);
    v116 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v115, v213, v203, v214, v219, v56);
    (*v194)(v115, v212);

    if (v116 >> 62)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v74 = *(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8));
    }

    v117 = v112 >> 62;
    if (v112 >> 62)
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v118 = *(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8));
    }

    v119 = v118 + v74;
    if (__OFADD__(v118, v74))
    {
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v117)
      {
        goto LABEL_41;
      }

      v120 = v112 & 0xFFFFFFFFFFFFFF8;
      if (v119 <= *(&dword_18 + (v112 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v117)
      {
LABEL_41:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_42;
      }

      v120 = v112 & 0xFFFFFFFFFFFFFF8;
    }

    v121 = *(v120 + 16);
LABEL_42:
    v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v120 = v112 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
    v217 = v112;
    v122 = *(v120 + 16);
    v123 = (*(v120 + 24) >> 1) - v122;
    v124 = v120 + 8 * v122;
    v206 = v120;
    if (v116 >> 62)
    {
      break;
    }

    v125 = *(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8));
    if (v125)
    {
      if (v123 < v125)
      {
        goto LABEL_93;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_53;
    }

LABEL_57:

    v112 = v217;
    v113 = v218;
    if (v74 > 0)
    {
      goto LABEL_89;
    }

LABEL_58:
    if (++v41 == v199)
    {

      v73 = v202;
      goto LABEL_77;
    }
  }

  v126 = _CocoaArrayWrapper.endIndex.getter();
  if (!v126)
  {
    goto LABEL_57;
  }

  v127 = v126;
  v128 = _CocoaArrayWrapper.endIndex.getter();
  if (v123 < v128)
  {
    goto LABEL_92;
  }

  if (v127 < 1)
  {
    goto LABEL_94;
  }

  v191 = v128;
  v192 = v74;
  v193 = v41;
  v129 = v124 + 32;
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v127; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v131 = specialized protocol witness for Collection.subscript.read in conformance [A](&v220, i, v116);
    v133 = *v132;
    v131(&v220, 0);
    *(v129 + 8 * i) = v133;
  }

  v56 = v207;
  v59 = v215;
  v41 = v193;
  v74 = v192;
  v125 = v191;
LABEL_53:

  v112 = v217;
  v113 = v218;
  if (v125 < v74)
  {
    goto LABEL_89;
  }

  if (v125 < 1)
  {
    goto LABEL_58;
  }

  v134 = *(v206 + 2);
  v135 = __OFADD__(v134, v125);
  v136 = v134 + v125;
  if (!v135)
  {
    *(v206 + 2) = v136;
    goto LABEL_58;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  swift_once();
LABEL_16:
  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Logger.siriPhone);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  v78 = os_log_type_enabled(v76, v77);
  v56 = v207;
  if (v78)
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v76, v77, "#ReferenceContactResolutionWrapper - No references found", v79, 2u);
  }

  (*(v208 + 8))(v74, v209);
LABEL_19:
  v80 = _swiftEmptyArrayStorage;
LABEL_20:

  (*(v204 + 8))(v56, v205);
  return v80;
}

uint64_t _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v62 = a4;
  v63 = a5;
  v60 = a2;
  v61 = a3;
  v8 = type metadata accessor for ContactGroupResolver();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a6, v8);
  static Signpost.begin(_:)();
  v64 = v13;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v14 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v14)
  {
    v15 = one-time initialization token for siriPhone;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#ReferenceContactResolutionWrapper resolved to an INPerson", v20, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 16) = xmmword_426260;
    *(v21 + 32) = v16;
    goto LABEL_14;
  }

  RREntity.usoEntity.getter();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v65)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#ReferenceContactResolutionWrapper resolved to a common_Person", v26, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v27 = *(type metadata accessor for ContactQuery() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_424FD0;
    UsoEntity_common_Person.toContactQuery()();
LABEL_13:
    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo08INSearchb7HistoryM0C_Tt4g5(v30, v60, v61, v62, v63, v31, v32, v33, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    v22 = v34;

    goto LABEL_14;
  }

  RREntity.usoEntity.getter();
  type metadata accessor for UsoEntity_common_Group();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v38 = v65;
  if (v65)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "#ReferenceContactResolutionWrapper resolved to a common_Group", v42, 2u);
    }

    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5(v38, v60, v61, v62, v63, v12);
    v22 = v43;
  }

  else
  {
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Agent();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v65)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.siriPhone);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper resolved to a common_Agent", v47, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      v48 = *(type metadata accessor for ContactQuery() - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_424FD0;
      UsoEntity_common_Agent.toContactQuery()();
      goto LABEL_13;
    }

    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_App();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v65)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.siriPhone);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_0, v52, v53, "#ReferenceContactResolutionWrapper resolved to a common_app - Not convertible to INPerson", v54, 2u);
      }
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.siriPhone);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_0, v56, v57, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v58, 2u);
      }
    }

    v22 = _swiftEmptyArrayStorage;
  }

LABEL_14:
  __chkstk_darwin(v21);
  *(&v59 - 2) = a1;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), (&v59 - 4), v22);
  v36 = v35;

  (*(v9 + 8))(v12, v8);
  return v36;
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo08INSearchb7HistoryW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v58 = type metadata accessor for ContactQuery();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v58);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContactGroupResolver();
  v64[3] = v17;
  v64[4] = &protocol witness table for ContactGroupResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a6, v17);
  v19 = dispatch thunk of UsoEntity_common_Group.name.getter();
  LOBYTE(a6) = specialized Optional<A>.isNilOrEmpty.getter(v19, v20);

  if ((a6 & 1) == 0 || (v21 = dispatch thunk of UsoEntity_common_Group.members.getter()) == 0)
  {
    v14 = v10;
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_37:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v28, 2u);
    }

    v29 = a5[3];
    v30 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v29);
    (*(v30 + 8))(v63, v29, v30);
    outlined init with copy of SignalProviding(v63, v62);
    outlined init with copy of SignalProviding(v64, &v60);
    v31 = swift_allocObject();
    outlined init with take of SPHConversation(v62, v31 + 16);
    outlined init with take of SPHConversation(&v60, v31 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v63);
    v32 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_424FD0;
    *(v33 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v33 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v33 + 32) = a1;
    v63[0] = v33;

    v32(v62, v63);

    (*(v14 + 8))(v13, v9);
    goto LABEL_34;
  }

  v22 = v21;
  v52 = a5;
  v63[0] = _swiftEmptyArrayStorage;
  v9 = specialized Array.count.getter(v21);
  v13 = 0;
  a5 = (v22 & 0xC000000000000001);
  a1 = v22 & 0xFFFFFFFFFFFFFF8;
  v56 = _swiftEmptyArrayStorage;
  while (v9 != v13)
  {
    if (a5)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_36;
      }

      v23 = *(v22 + 8 * v13 + 32);
    }

    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v13;
    if (*&v62[0])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v63[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56 = v63[0];
      v13 = v24;
    }
  }

  v34 = v56;
  v35 = specialized Array.count.getter(v56);
  if (!v35)
  {

    v38 = _swiftEmptyArrayStorage;
LABEL_29:
    v43 = v52;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.siriPhone);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group", v47, 2u);
    }

    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo08INSearchb7HistoryM0C_Tt4g5(v38, v53, v54, v55, v43, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61);

LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(v64);
    return;
  }

  v36 = v35;
  v63[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v63[0];
    v39 = v34 & 0xC000000000000001;
    v40 = v57;
    do
    {
      if (v39)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v34 + 8 * v37 + 32);
      }

      UsoEntity_common_Agent.toContactQuery()();

      v63[0] = v38;
      v42 = v38[2];
      if (v42 >= v38[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = v63[0];
      }

      ++v37;
      v38[2] = v42 + 1;
      (*(v14 + 32))(v38 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v42, v40, v58);
      v34 = v56;
    }

    while (v36 != v37);

    goto LABEL_29;
  }

  __break(1u);
}

uint64_t _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SearchCallHistoryModel.init(responseViewId:appId:callRecords:recentsText:openPhoneText:shouldShowBottomView:shouldReactOpenContact:openPhoneAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W5>, char a5@<W7>, void *a6@<X8>, uint64_t a7, char a8, unsigned __int8 a9, uint64_t a10)
{
  HIDWORD(v61) = a9;
  *a6 = a1;
  a6[1] = a2;
  v13 = type metadata accessor for SearchCallHistoryModel();
  v14 = v13[5];
  OUTLINED_FUNCTION_17_45(v13, v15, v16, v17, v18, v19, v20, v21, v61, a10, a3);
  Loggable.init(wrappedValue:)();
  v22 = v13[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
  v23 = Loggable.init(wrappedValue:)();
  v24 = v13[7];
  OUTLINED_FUNCTION_17_45(v23, v25, v26, v27, v28, v29, v30, v31, v62, v66, a4);
  v32 = Loggable.init(wrappedValue:)();
  v33 = v13[8];
  OUTLINED_FUNCTION_17_45(v32, v34, v35, v36, v37, v38, v39, v40, v63, v67, a5);
  v41 = Loggable.init(wrappedValue:)();
  v42 = v13[9];
  OUTLINED_FUNCTION_17_45(v41, v43, v44, v45, v46, v47, v48, v49, v64, v68, a8);
  v50 = Loggable.init(wrappedValue:)();
  v51 = v13[10];
  OUTLINED_FUNCTION_17_45(v50, v52, v53, v54, v55, v56, v57, v58, v65, v69, SBYTE4(v65));
  Loggable.init(wrappedValue:)();
  v59 = v13[11];
  type metadata accessor for SABaseCommand();
  return CodableAceObject.init(wrappedValue:)();
}

uint64_t type metadata accessor for SearchCallHistoryModel()
{
  result = type metadata singleton initialization cache for SearchCallHistoryModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryModel.appId.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path setter for SearchCallHistoryModel.appId : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchCallHistoryModel.appId.setter();
}

uint64_t SearchCallHistoryModel.appId.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*SearchCallHistoryModel.appId.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.callRecords.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path setter for SearchCallHistoryModel.callRecords : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;

  return SearchCallHistoryModel.callRecords.setter();
}

uint64_t SearchCallHistoryModel.callRecords.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.callRecords.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.recentsText.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path setter for SearchCallHistoryModel.recentsText : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchCallHistoryModel.recentsText.setter();
}

uint64_t SearchCallHistoryModel.recentsText.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*SearchCallHistoryModel.recentsText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.openPhoneText.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path setter for SearchCallHistoryModel.openPhoneText : SearchCallHistoryModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchCallHistoryModel.openPhoneText.setter();
}

uint64_t SearchCallHistoryModel.openPhoneText.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*SearchCallHistoryModel.openPhoneText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t SearchCallHistoryModel.shouldShowBottomView.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.shouldShowBottomView.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t SearchCallHistoryModel.shouldReactOpenContact.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.shouldReactOpenContact.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.openPhoneAction.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SearchCallHistoryModel.openPhoneAction.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryModel.openPhoneAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_69(v2) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6365526C6C6163 && a2 == 0xEB00000000736472;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5473746E65636572 && a2 == 0xEB00000000747865;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F68506E65706FLL && a2 == 0xED00007478655465;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000000004612B0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000000004612D0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E6F68506E65706FLL && a2 == 0xEF6E6F6974634165)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SearchCallHistoryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x6449707061;
      break;
    case 2:
      result = 0x6F6365526C6C6163;
      break;
    case 3:
      result = 0x5473746E65636572;
      break;
    case 4:
    case 7:
      result = 0x6E6F68506E65706FLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchCallHistoryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchCallHistoryModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchCallHistoryModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMR);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v38 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for SearchCallHistoryModel();
    v17 = *(v16 + 20);
    v37 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v18);
    OUTLINED_FUNCTION_2_6();
    v30 = v16;
    v19 = *(v16 + 24);
    v36 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(v20);
    OUTLINED_FUNCTION_20_42();
    v21 = v30;
    v22 = v30[7];
    v35 = 3;
    OUTLINED_FUNCTION_2_6();
    v23 = v21[8];
    v34 = 4;
    OUTLINED_FUNCTION_2_6();
    v24 = v21[9];
    v33 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v25);
    OUTLINED_FUNCTION_2_6();
    v26 = v21[10];
    v32 = 6;
    OUTLINED_FUNCTION_2_6();
    v27 = v21[11];
    v31 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_20_42();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
    lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SearchCallHistoryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_7(v84);
  v82 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v85 = v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v95 = OUTLINED_FUNCTION_7(v8);
  v96 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v95);
  v86 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v87 = v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
  v16 = OUTLINED_FUNCTION_7(v15);
  v91 = v17;
  v92 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v22 = v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v97 = OUTLINED_FUNCTION_7(v23);
  v98 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v97);
  v28 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v77 - v30;
  __chkstk_darwin(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE12HistoryModelV10CodingKeys33_D4828BC3AAEDC1217A1053FBEDA2939FLLOGMR);
  v34 = OUTLINED_FUNCTION_7(v33);
  v89 = v35;
  v90 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v38);
  v40 = v77 - v39;
  v100 = type metadata accessor for SearchCallHistoryModel();
  v41 = *(*(v100 - 1) + 64);
  __chkstk_darwin(v100);
  v99 = (v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = a1[3];
  v44 = a1[4];
  v94 = a1;
  v45 = __swift_project_boxed_opaque_existential_1(a1, v43);
  lazy protocol witness table accessor for type SearchCallHistoryModel.CodingKeys and conformance SearchCallHistoryModel.CodingKeys();
  v88 = v40;
  v46 = v93;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v46)
  {
    v93 = v31;
    v81 = v28;
    v108 = 0;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v99;
    *v99 = v48;
    v49[1] = v50;
    v80 = v50;
    v107 = 1;
    OUTLINED_FUNCTION_17_15();
    v52 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v51);
    OUTLINED_FUNCTION_15_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v79 = v52;
    v54 = *(v98 + 32);
    v53 = v98 + 32;
    v55 = OUTLINED_FUNCTION_14_55(v100[5]);
    v78 = v56;
    v56(v55);
    v106 = 2;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(v57);
    v58 = v92;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v95;
    v77[1] = v53;
    (*(v91 + 32))(v49 + v100[6], v22, v58);
    v105 = 3;
    OUTLINED_FUNCTION_15_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = OUTLINED_FUNCTION_14_55(v100[7]);
    v61 = v78;
    v78(v60);
    v104 = 4;
    OUTLINED_FUNCTION_15_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = v49;
    v63 = OUTLINED_FUNCTION_14_55(v100[8]);
    v61(v63);
    v103 = 5;
    OUTLINED_FUNCTION_17_15();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v64);
    v65 = v87;
    OUTLINED_FUNCTION_16_52();
    v66 = v100;
    v67 = *(v96 + 32);
    v67(v62 + v100[9], v65, v59);
    v102 = 6;
    v68 = v86;
    OUTLINED_FUNCTION_16_52();
    v67(v62 + v66[10], v68, v59);
    v101 = 7;
    lazy protocol witness table accessor for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    v69 = v84;
    v70 = v85;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v75 = OUTLINED_FUNCTION_9_68();
    v76(v75);
    (*(v82 + 32))(v62 + v66[11], v70, v69);
    outlined init with copy of SearchCallHistoryModel(v62, v83);
    __swift_destroy_boxed_opaque_existential_1(v94);
    return outlined destroy of SearchCallHistoryModel(v62);
  }

  OUTLINED_FUNCTION_3_99();
  v47 = v95;
  __swift_destroy_boxed_opaque_existential_1(v94);

  v72 = v97;
  v73 = v99;
  v74 = v100;
  if (v43)
  {
    result = (*(v98 + 8))(v99 + v100[7], v97);
    if (!v40)
    {
LABEL_6:
      if (!v45)
      {
        goto LABEL_7;
      }

LABEL_11:
      result = (*(v96 + 8))(v73 + v74[9], v47);
      if (!v28)
      {
        return result;
      }

      return (*(v96 + 8))(v73 + v74[10], v47);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  result = (*(v98 + 8))(v73 + v74[8], v72);
  if (v45)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v28)
  {
    return (*(v96 + 8))(v73 + v74[10], v47);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<[SingleCallRecordModel]> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A]);
    lazy protocol witness table accessor for type [SingleCallRecordModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [SingleCallRecordModel] and conformance <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined destroy of SearchCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for SearchCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SearchCallHistoryModel and conformance SearchCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryModel()
{
  type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for Loggable<[SingleCallRecordModel]>();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        type metadata accessor for CodableAceObject<SABaseCommand>();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for Loggable<[SingleCallRecordModel]>()
{
  if (!lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<[SingleCallRecordModel]>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t SearchCallHistoryRCHFlowDelegate.__allocating_init(sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_40_0();
  return SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(v3);
}

uint64_t SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(uint64_t a1)
{
  v3 = (v1 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix);
  *v3 = type metadata accessor for SearchCallHistoryRCHFlowDelegate();
  v3[1] = &outlined read-only object #0 of SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:);
  v3[2] = 0;
  v3[3] = 0;
  outlined init with copy of SignalProviding(a1, v1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals);
  BaseRCHFlowDelegate.init()();
  v4 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t type metadata accessor for SearchCallHistoryRCHFlowDelegate()
{
  result = type metadata singleton initialization cache for SearchCallHistoryRCHFlowDelegate;
  if (!type metadata singleton initialization cache for SearchCallHistoryRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeDialogTemplating()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v61 = v57 - v3;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v58 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CATOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68[0] = v14;
    *v13 = 136315138;
    v15 = OUTLINED_FUNCTION_5_5((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix));
    v71 = 0;
    v72 = v16;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v15, v17, v18, v19);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v68);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "%s Making SearchCallHistoryTemplatingService", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  outlined init with copy of SignalProviding(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, &v71);
  type metadata accessor for PhoneCallDisplayTextCATs();
  OUTLINED_FUNCTION_9_69();
  v21 = OUTLINED_FUNCTION_6_79();
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_9_69();
  v22 = OUTLINED_FUNCTION_6_79();
  type metadata accessor for SearchCallHistoryCATs();
  OUTLINED_FUNCTION_9_69();
  v23 = OUTLINED_FUNCTION_6_79();
  type metadata accessor for StartCallCATs();
  OUTLINED_FUNCTION_9_69();
  v24 = OUTLINED_FUNCTION_6_79();
  v57[4] = v24;
  v25 = type metadata accessor for AppInfoBuilder();
  v26 = swift_allocObject();
  v27 = type metadata accessor for SearchCallHistoryTemplatingService();
  v28 = OUTLINED_FUNCTION_41_1(v27);
  v57[5] = v23;
  *(v28 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily) = v23;
  *(v28 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily) = v24;
  v57[3] = "com.apple.camera";
  outlined init with copy of SignalProviding(&v71, v68);

  static CATOption.defaultMode.getter();
  v29 = OUTLINED_FUNCTION_6_79();
  v67[3] = v25;
  v67[4] = &protocol witness table for AppInfoBuilder;
  v67[0] = v26;
  v66[3] = &type metadata for LabelTemplatesProvider;
  v66[4] = &protocol witness table for LabelTemplatesProvider;
  v30 = swift_allocObject();
  v66[0] = v30;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  v31 = (v28 + *(*v28 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v31 = 0x3D65737561705C1BLL;
  v31[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_26_5();
  v34 = v28 + *(v33 + v32 + 56);
  *v34 = v35;
  *(v34 + 1) = v35;
  *(v34 + 4) = 0;
  OUTLINED_FUNCTION_26_5();
  outlined init with copy of SignalProviding(v68, v28 + *(v37 + v36 + 72));
  v38 = v69;
  v39 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  (*(v39 + 8))(&v64, v38, v39);
  OUTLINED_FUNCTION_26_5();
  v41 = *(v40 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v64, v28 + v41);
  OUTLINED_FUNCTION_26_5();
  v43 = *(v42 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v57[1] = v22;
  v57[2] = v21;
  *(v28 + v43) = v21;
  OUTLINED_FUNCTION_26_5();
  *(v28 + *(v45 + v44 + 32)) = v22;
  OUTLINED_FUNCTION_26_5();
  outlined init with copy of SignalProviding(v67, v28 + *(v47 + v46 + 48));
  OUTLINED_FUNCTION_26_5();
  outlined init with copy of SignalProviding(v66, v28 + *(v48 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_26_5();
  *(v28 + *(v49 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v29;
  outlined init with copy of SignalProviding(v28 + v41, &v64);
  __swift_project_boxed_opaque_existential_1(&v64, v65);

  v50 = v58;
  dispatch thunk of DeviceState.siriLocale.getter();
  v63[0] = Locale.identifier.getter();
  v63[1] = v51;
  v62[0] = 45;
  v62[1] = 0xE100000000000000;
  v63[5] = 95;
  v63[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  (*(v60 + 8))(v50, v59);
  type metadata accessor for INIntentSlotValueType(0);
  _sSo21INIntentSlotValueTypeVABSHSCWlTm_0(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v52 = v69;
  v53 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  (*(v53 + 24))(v63, v52, v53);
  outlined init with copy of SignalProviding(v28 + v41, v62);
  v54 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v54);
  v55 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(&v71);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(&v64);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v55;
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeAceViewProvider()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    v19 = 0;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_5_5((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix));
    v20 = v8;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v7, v9, v10, v11);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v18);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "%s Making SearchCallHistoryAceViewProvider", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v13 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  outlined init with copy of SignalProviding(v1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals, &v19);
  type metadata accessor for AppInfoBuilder();
  v14 = swift_allocObject();
  v15 = type metadata accessor for SearchCallHistoryAceViewProvider();
  v16 = OUTLINED_FUNCTION_41_1(v15);
  return specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(v13, &v19, v14, v16);
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeNLContextProvider()()
{
  v1 = (v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals);
  v2 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24);
  v3 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), v2);
  (*(v3 + 8))(v9, v2, v3);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 184))(v8, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v6);
  return specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(v9, v8);
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  if (PhoneCallSlotNames.init(rawValue:)(v14).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_recipient && (v15 = [a5 disambiguationItems], v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = specialized _arrayConditionalCast<A, B>(_:)(v16), , v17))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v42 = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_5_5((v8 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix));
      v45 = 0;
      v46 = v24;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v23, v25, v26, v27);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v46, &v42);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_0, v19, v20, "%s Building disambiguation list for recipient slot.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v29 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
    v43 = type metadata accessor for SearchCallHistoryTemplatingService();
    v44 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    *&v42 = v29;
    v30 = App.appIdentifier.getter();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = (v8 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals);
    v35 = v34[3];
    v36 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v36 + 184))(v50, v35, v36);
    v37 = v34[3];
    v38 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v37);
    (*(v38 + 8))(v51, v37, v38);
    v45 = v17;
    v46 = v17;
    outlined init with take of SPHConversation(&v42, &v52);
    v47 = 1;
    v48 = v32;
    v49 = v33;

    specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(a6, a7);
    return outlined destroy of PhoneContactDisambiguationItemFactory(&v45);
  }

  else
  {
    v40 = [a5 disambiguationItems];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = type metadata accessor for SiriKitDisambiguationList();
    OUTLINED_FUNCTION_41_1(v41);
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a6();
  }
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeErrorDialogBehavior(app:intent:intentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ErrorDialogBehavior.openAppButton(_:);
  v3 = type metadata accessor for ErrorDialogBehavior();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SearchCallHistoryRCHFlowDelegate.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24);
  v6 = *(v2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v2 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), v5);
  v7 = (*(v6 + 72))(v5, v6);
  (*(*v7 + 192))(v10, a1);

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMR);
  v8 = method lookup function for BaseRCHFlowDelegate();
  return v8(a1, a2);
}

uint64_t SearchCallHistoryRCHFlowDelegate.applyParameterValue(value:intent:parameterName:applicationStrategy:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t (*a7)(void *, void), uint64_t a8)
{

  v16._countAndFlagsBits = a3;
  v16._object = a4;
  value = PhoneCallSlotNames.init(rawValue:)(v16).value;
  if (value == 15)
  {
    outlined init with copy of Any(a1, v21);
    type metadata accessor for INCallCapabilityOptions(0);
    if (OUTLINED_FUNCTION_7_70())
    {
      [a2 setCallCapabilities:v20];
    }

    return a7(a2, 0);
  }

  if (value == 9)
  {
    outlined init with copy of Any(a1, v21);
    type metadata accessor for INCallRecordTypeOptions(0);
    if (OUTLINED_FUNCTION_7_70())
    {
      [a2 setCallTypes:v20];
    }

    return a7(a2, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMR);
  v19 = method lookup function for BaseRCHFlowDelegate();

  return v19(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
}

BOOL SearchCallHistoryRCHFlowDelegate.isReadRequest(intent:intentResponse:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  v7 = a3[3];
  v8 = a3[4];
  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 1;
  }

  v9 = a3[3];
  v10 = a3[4];
  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    return 1;
  }

  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  if (DeviceState.isVox.getter())
  {
    return 1;
  }

  v12 = a3[3];
  v13 = a3[4];
  OUTLINED_FUNCTION_1_108(a3);
  if (dispatch thunk of DeviceState.isEyesFree.getter())
  {
    return 1;
  }

  v15 = *(v3 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v3 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), *(v3 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24));
  v16 = *(v15 + 72);
  v17 = OUTLINED_FUNCTION_40_0();
  v19 = v18(v17, v15);
  v20 = (*(*v19 + 128))(v19);

  specialized BidirectionalCollection.last.getter(v20, v29);

  if (v29[4])
  {
    outlined init with copy of PhoneCallNLIntent?(&v30, v31);
    outlined destroy of TransformationResult(v29);
    if (v32)
    {
      v21 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v22 = *(v21 + 112);
      v23 = OUTLINED_FUNCTION_40_0();
      v25 = v24(v23, v21);
      __swift_destroy_boxed_opaque_existential_1(v31);
      return v25 != 6;
    }

    v26 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd;
    v27 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR;
    v28 = v31;
  }

  else
  {
    v26 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd;
    v27 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR;
    v28 = v29;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v28, v26, v27);
  return 0;
}

uint64_t SearchCallHistoryRCHFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals));
  v1 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix + 8);
  v2 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix + 24);
}

uint64_t SearchCallHistoryRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals));
  v1 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix + 8);
  v2 = *(v0 + direct field offset for SearchCallHistoryRCHFlowDelegate.logPrefix + 24);

  return v0;
}

uint64_t SearchCallHistoryRCHFlowDelegate.__deallocating_deinit()
{
  SearchCallHistoryRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10[3] = type metadata accessor for AppInfoBuilder();
  v10[4] = &protocol witness table for AppInfoBuilder;
  v10[0] = a3;
  *(a4 + direct field offset for SearchCallHistoryAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, a4 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals);
  outlined init with copy of SignalProviding(v10, a4 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder);
  v8 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryRCHFlowDelegate(uint64_t a1)
{
  result = _sSo21INIntentSlotValueTypeVABSHSCWlTm_0(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for SearchCallHistoryRCHFlowDelegate);
  *(a1 + 16) = result;
  return result;
}

uint64_t _sSo21INIntentSlotValueTypeVABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchCallHistorySharedGlobals.init(appInfoBuilder:searchCallCatPatterns:responseGenerator:phoneCommonCats:phoneCallCommonCatPatterns:callHistoryPromptDialogProvider:searchCallHistoryCATs:searchCallHistoryCATsSimple:phoneCallDisplayTextCATsSimple:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  outlined init with take of SPHConversation(a1, a9);
  outlined init with take of SPHConversation(a2, (a9 + 5));
  outlined init with take of SPHConversation(a3, (a9 + 10));
  a9[15] = a4;
  result = outlined init with take of SPHConversation(a5, (a9 + 16));
  a9[21] = a6;
  a9[22] = a7;
  a9[23] = a8;
  a9[24] = a10;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistorySharedGlobals(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchCallHistorySharedGlobals(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized PhoneCallBaseCatTemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();
  v1 = *(v0 + *(*v0 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16) + 8);

  OUTLINED_FUNCTION_41_0();
  v3 = *(v0 + *(v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24));

  OUTLINED_FUNCTION_41_0();
  v5 = *(v0 + *(v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32));

  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)));
  OUTLINED_FUNCTION_41_0();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + *(v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v10 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72)));
  OUTLINED_FUNCTION_41_0();
  v12 = *(v0 + *(v11 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80));

  return v0;
}