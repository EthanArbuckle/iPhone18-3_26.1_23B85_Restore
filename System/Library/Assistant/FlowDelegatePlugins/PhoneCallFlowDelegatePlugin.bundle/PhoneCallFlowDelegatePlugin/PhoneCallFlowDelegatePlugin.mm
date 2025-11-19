uint64_t RestrictionCheckGuardFlow.__deallocating_deinit()
{
  RestrictionCheckGuardFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RestrictionCheckGuardFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse;
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals));
  v4 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_phoneCallCommonCATsSimple);

  return v0;
}

uint64_t OUTLINED_FUNCTION_11()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_14()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21_5()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
}

BOOL OUTLINED_FUNCTION_10_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v2 = *(v0 - 176);

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_21_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_10()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_21_11()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  _StringGuts.grow(_:)(23);
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return Loggable.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_21_13()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  v4 = *(v0 - 128);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_21_14()
{
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
}

void OUTLINED_FUNCTION_21_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_21_16(void *a1)
{
  v3 = *(v1 + 1520);

  return [a1 v3];
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_22@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_21_23()
{
  result = v0 - 264;
  v2 = *(v0 - 288);
  return result;
}

BOOL OUTLINED_FUNCTION_86_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_21_25()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return specialized Sequence.first(where:)(v5, v6, a4, a5, (v7 + 16));
}

uint64_t OUTLINED_FUNCTION_21_33()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_21_37()
{
  v1 = v0[569];
  v2 = v0[561];
  v3 = v0[555];
  v4 = v0[537];
  v5 = v0[531];
  v6 = v0[513];
  v7 = v0[495];
  v8 = v0[483];
  v9 = v0[471];
  v10 = *(v0[567] + 8);
  return v0[568];
}

void *OUTLINED_FUNCTION_21_43()
{
  v1 = v0[53];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  v5 = v0[52] + 8;
  return v0 + 10;
}

uint64_t OUTLINED_FUNCTION_21_44@<X0>(uint64_t a1@<X8>)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, (a1 - 32) | 0x8000000000000000, (v1 - 272));
}

void OUTLINED_FUNCTION_21_45()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;
  *(v1 + 14) = 28;
}

uint64_t OUTLINED_FUNCTION_21_46()
{

  return SPHCallCenter.onQueue<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_21_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *(v17 + 12) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, va);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.__deallocating_deinit()
{
  CATWrapperSimple.deinit();

  return swift_deallocClassInstance();
}

uint64_t CallingIntentRCHFlowStrategy.__deallocating_deinit()
{
  CallingIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t *CallingIntentRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t ContactNeedsValueGuardFlow.__deallocating_deinit()
{
  ContactNeedsValueGuardFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *ContactNeedsValueGuardFlow.deinit()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 96);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  OUTLINED_FUNCTION_23_5(v8);
  (*(v9 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_2_0();
  v11 = *&v0[*(v10 + 104)];

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v12 + 112)]);
  OUTLINED_FUNCTION_2_0();
  v14 = *&v0[*(v13 + 120)];

  return v0;
}

uint64_t OUTLINED_FUNCTION_46(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_46_1()
{
}

id OUTLINED_FUNCTION_46_3()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_14_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_146()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_147()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46_5()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[38];
  v13 = v0[43];
  v14 = v0[37];
  v10 = v0[36];
  v15 = v0[33];
  v11 = *(v0[39] + 8);
  return v0[40];
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_46_8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_46_13()
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD00000000000002DLL, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_46_17()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_46_22(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_46_23()
{
  v2 = *(v0 + 48);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_46_25()
{
  v5 = *(v2 + 24);
  *(v1 + 1384) = v3;
  *(v1 + 1392) = v0;

  return Loggable.init(wrappedValue:)();
}

void OUTLINED_FUNCTION_46_26()
{

  static Signpost.begin(_:)();
}

uint64_t OUTLINED_FUNCTION_46_29(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v2, v1);
}

BOOL OUTLINED_FUNCTION_46_30()
{

  return PhoneCallNLIntent.isEmergencyCall()();
}

uint64_t OUTLINED_FUNCTION_26_0()
{
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_3_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656369766564;
  a1[2].n128_u64[1] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 32);
  return result;
}

void OUTLINED_FUNCTION_15_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_8_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  **(v0 + 216) = *(v0 + 168);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *(v3[1] + 8);
  result = v2 + v1;
  v6 = *v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_35()
{
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD000000000000041, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_18_20(float a1)
{
  *v2 = a1;
  result = v1[45];
  v4 = v1[46];
  v5 = v1[47];
  v6 = v1[48];
  return result;
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &a9);
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

__n128 *OUTLINED_FUNCTION_18_22@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = v3 | 6;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return type metadata accessor for OSSignpostID();
}

void *OUTLINED_FUNCTION_18_31(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_18_36(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 - 332) = a4;
}

void OUTLINED_FUNCTION_18_40(uint64_t a1@<X8>)
{
  v2[15] = v1;
  v2[16] = v3;
  v2[17] = (a1 - 32) | 0x8000000000000000;
}

void *OUTLINED_FUNCTION_18_42()
{
  v2 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[10] = v1;
  return result;
}

uint64_t *CallingIntentBaseFlowStrategy.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v6 = v0[22];

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 38);
  v7 = direct field offset for CallingIntentBaseFlowStrategy.completionOutputManifest;
  v8 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_1(v8);
  (*(v9 + 8))(v0 + v7);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 136);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_3()
{
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52()
{
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v1 = v0[455];
  v2 = v0[449];
  v3 = v0[437];
  v4 = v0[419];
  v5 = v0[401];
  v6 = v0[395];
  v7 = *(v0[461] + 8);
  return v0[467];
}

__n128 *OUTLINED_FUNCTION_0_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  *(v9 + 56) = a8;
  *(v9 + 64) = v8;
  *(v9 + 106) = v11;
  *(v9 + 105) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a6;
  *(v9 + 104) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_11@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0x69616D6563696F76;
  *(v2 + 136) = 0xE90000000000006CLL;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return static _SetStorage.allocate(capacity:)();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_18()
{
  result = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = *(v0[21] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1)
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(char a1@<W8>)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
}

uint64_t OUTLINED_FUNCTION_3_42()
{
  v2 = v0[242];
  v3 = v0[240];
  v4 = v0[237];
  v5 = v0[231];
}

uint64_t OUTLINED_FUNCTION_3_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_5(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_3_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_50()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_52@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 224) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v2;
  *(v3 - 176) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  v2 = v0[366];
  v3 = v0[365];
  v4 = v0[364];
  v5 = v0[357];
  v6 = v0[345];
  v7 = v0[327];
}

uint64_t OUTLINED_FUNCTION_3_57(float a1)
{
  *v2 = a1;
  result = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return outlined init with take of PhoneCallFeatureFlagProviding(va, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = (a2 - 32) | 0x8000000000000000;

  return outlined init with copy of PhoneCallNLIntent?(v3, v2, v4, v5);
}

BOOL OUTLINED_FUNCTION_3_66(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 *OUTLINED_FUNCTION_0_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E707061;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_70()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_74()
{

  return specialized PhoneContactResolver.init(configCache:queryCache:resolver:)(v2, v1, v5, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_3_75()
{
}

uint64_t OUTLINED_FUNCTION_3_77(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2 + *v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_80()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_82()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_83()
{

  return static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
}

uint64_t OUTLINED_FUNCTION_3_85(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_3_86(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
  v4 = *v1;
  return result;
}

id OUTLINED_FUNCTION_3_89()
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);

  return v0;
}

uint64_t OUTLINED_FUNCTION_5_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_93(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_3_98(uint64_t result)
{
  *(result + 32) = 0x61507473614C7369;
  *(result + 40) = 0xEA00000000006567;
  return result;
}

__n128 *OUTLINED_FUNCTION_12_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E65746E69;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_3_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v20 = a18;
  v21 = a19;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &a17);
}

uint64_t OUTLINED_FUNCTION_3_102()
{
  v2 = *(*v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_3_105()
{
  *(v3 - 96) = v1;
  v4 = *(v2 + 8);
  return v0;
}

void OUTLINED_FUNCTION_3_106()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

__n128 OUTLINED_FUNCTION_3_109@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 88) = *(v1 + 208);
  *(v1 + 104) = *(v1 + 224);
  *(v1 + 112) = a1;
  *(v1 + 120) = *(v1 + 152);
  result = *(v1 + 168);
  *(v1 + 136) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 360) = a5;
  *(v5 - 368) = a4;
  *(v5 - 376) = a3;
  *(v5 - 384) = a2;

  return type metadata accessor for PhoneCallNLv3Intent(0);
}

uint64_t OUTLINED_FUNCTION_3_111(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, a2, a3);
}

_OWORD *OUTLINED_FUNCTION_3_112@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  a11 = v12;
  *&a9 = v11;
  *(&a9 + 1) = a1;

  return outlined init with take of Any(&a9, &a6);
}

uint64_t OUTLINED_FUNCTION_3_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a8;
  v11 = *(v9 + 16);
  v12 = **(v8 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_116(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, va);
}

id OUTLINED_FUNCTION_3_117()
{
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v0[49] = v1;
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v6 = *(v5 + 136);

  return v1;
}

uint64_t OUTLINED_FUNCTION_3_118()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[48];
  v9 = v0[44];
  v8 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_3_119(uint64_t a1)
{

  return outlined init with copy of ButtonConfigurationModel(v1, a1, type metadata accessor for PhoneSnippetDataModels);
}

uint64_t OUTLINED_FUNCTION_3_120()
{
  v2 = *(v0 + 48);

  return outlined destroy of UnsupportedFlowSearchCallHistoryParameters();
}

uint64_t CallingIntentNeedsValueFlowStrategy.__deallocating_deinit()
{
  v0 = *CallingIntentBaseFlowStrategy.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.__deallocating_deinit()
{
  CATWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t *CallingIntentContactNeedsDisambiguationFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();
  v1 = *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate);

  return v0;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.__deallocating_deinit()
{
  v0 = *CallingIntentContactNeedsDisambiguationFlowStrategy.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_104_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return outlined init with copy of SignalProviding(v1 + 24, v0 + 248);
}

void *OUTLINED_FUNCTION_104_4()
{
  v0[2] = 0;
  v1 = v0[4];
  v2 = v0[5];
  v0[3] = 0;
  return v0 + 2;
}

__n128 *OUTLINED_FUNCTION_42_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "relationship");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  return result;
}

uint64_t PhoneTCCFlowStrategy.__deallocating_deinit()
{
  PhoneTCCFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t *PhoneCallStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  return v0;
}

uint64_t CallingIntentConfirmationFlowStrategy.__deallocating_deinit()
{
  v0 = *CallingIntentConfirmationFlowStrategy.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *CallingIntentConfirmationFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);

  return v0;
}

uint64_t outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v3 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t objectdestroy_9Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for Transformer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 7);

  (*(v4 + 8))(&v0[v6], v3);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t objectdestroy_2Tm_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t *PhoneTCCFlowStrategy.deinit()
{
  v0 = PhoneCallStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  return v0;
}

uint64_t *CallingIntentHandleIntentFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();
  v1 = *(v0 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable);

  return v0;
}

uint64_t StartCallRCHFlowDelegate.__deallocating_deinit()
{
  StartCallRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t StartCallRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  v1 = *(v0 + direct field offset for StartCallRCHFlowDelegate.dialogTemplatingContainer);

  v2 = *(v0 + direct field offset for StartCallRCHFlowDelegate.appResolved);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals));
  return v0;
}

uint64_t LazyContainer.__deallocating_deinit()
{
  LazyContainer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *LazyContainer.deinit()
{
  v1 = *v0;

  v2 = v0[4];

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_40(v5);
  (*(v6 + 8))(v0 + v3);
  return v0;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE700000000000000;
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_task_switch(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_41_9(uint64_t a1)
{
  *(a1 + 8) = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
  v2 = *(v1 + 832);
  return *(v1 + 672);
}

BOOL OUTLINED_FUNCTION_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a15;
  v18 = a16;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &a14);
}

uint64_t OUTLINED_FUNCTION_41_16()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, v1, v2);
}

double OUTLINED_FUNCTION_41_17()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_18()
{
  v2 = *(v0 + 48);
  result = *(v0 + 32);
  *(v1 + 128) = 1701869940;
  *(v1 + 136) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_19()
{

  return type metadata accessor for TypedValue();
}

uint64_t OUTLINED_FUNCTION_41_20(uint64_t a1, uint64_t a2)
{
  *v4 = v2;
  v4[1] = v3;
  v4[2] = a1;
  v4[3] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_41_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_24()
{
  v2 = *(v0 + 408);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_41_26@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return outlined init with take of SingleResultCallHistoryModel(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_41_27(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_41_29(void *a1)
{

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, 0, v1, v4, v3, v5 & 0x1FF, v2);
}

void *OUTLINED_FUNCTION_41_31@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[9] = a2;
  result[10] = 0x64657373694D7369;
  result[11] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_32()
{
  result = v0[7];
  v2 = v0[5];
  v3 = *(v0[6] + 8);
  return result;
}

void OUTLINED_FUNCTION_41_33()
{
  v1 = v0[80];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[70];
}

uint64_t specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v60 = a3;
  v55 = a2;
  v3 = type metadata accessor for ParameterIdentifier();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v56 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DialogPhase();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v52 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v49[0] = v13;
  v51 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v49[1] = type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v50 = CATWrapperSimple.__allocating_init(options:globals:)();
  static SiriKitEventSender.current.getter();
  v17 = type metadata accessor for AppInfoBuilder();
  v18 = swift_allocObject();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v54 = v19;
  v22 = swift_allocObject();
  v77[3] = v11;
  v77[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v49[4] = v12;
  v77[0] = v12;
  v75 = v14;
  v76 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v49[3] = v15;
  v74[0] = v15;
  v72 = v17;
  v73 = &protocol witness table for AppInfoBuilder;
  v71[0] = v18;
  v49[2] = v16;
  *(v22 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = v16;
  outlined init with copy of SignalProviding(v77, v70);
  outlined init with copy of SignalProviding(v74, v69);
  outlined init with copy of SignalProviding(v61, v68);
  outlined init with copy of SignalProviding(v71, v67);

  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v25 = type metadata accessor for ResponseFactory();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = ResponseFactory.init()();
  v66[3] = v25;
  v66[4] = &protocol witness table for ResponseFactory;
  v66[0] = v28;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v29 = v60;
  v22[2] = v60;
  v53 = direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v29 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, (v22 + 3));
  v22[8] = v52;
  outlined init with copy of SignalProviding(v70, (v22 + 9));
  v30 = v51;
  v22[14] = v23;
  v22[15] = v30;
  v22[16] = v24;
  outlined init with copy of SignalProviding(v69, (v22 + 17));
  v22[22] = v50;
  outlined init with copy of SignalProviding(v66, (v22 + 23));
  outlined init with copy of SignalProviding(v68, (v22 + 28));
  outlined init with copy of SignalProviding((v22 + 3), v63);
  v31 = v64;
  v32 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v33 = *(v32 + 72);

  v34 = v33(v31, v32);

  v35 = v55;

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v66);
  outlined init with copy of SignalProviding(v34 + 160, v62);

  outlined init with take of SPHConversation(v62, (v22 + 33));
  __swift_destroy_boxed_opaque_existential_1(v63);
  outlined init with take of SPHConversation(v67, (v22 + 38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMR);
  v36 = v56;
  ParameterResolutionRecord.parameter.getter();
  v37 = ParameterIdentifier.name.getter();
  v39 = v38;
  (*(v57 + 8))(v36, v58);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  if ((PhoneCallSlotNames.init(rawValue:)(v40).value & 0xFE) != 4)
  {
    v61[0] = v22;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartAudioCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
    v46 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
LABEL_6:
    v45 = v46;
    goto LABEL_7;
  }

  if ((specialized ParameterResolutionRecord<>.isUnsetRelationship.getter() & 1) == 0)
  {
    v61[0] = v22;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartAudioCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
    v46 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    goto LABEL_6;
  }

  outlined init with copy of SignalProviding(&v53[v60], v77);
  v41 = [objc_allocWithZone(CNContactStore) init];
  v75 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v76 = &protocol witness table for CNContactStore;
  v74[0] = v41;
  v72 = &type metadata for LabelTemplatesProvider;
  v73 = &protocol witness table for LabelTemplatesProvider;
  v42 = swift_allocObject();
  v71[0] = v42;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  v43 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v44 = swift_allocObject();
  v70[3] = v43;
  v70[4] = &protocol witness table for UnsetRelationshipTemplatesWrapper;
  v70[0] = v44;
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntentResponse, INStartAudioCallIntentResponse_ptr);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INStartAudioCallIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMR);
  v45 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartAudioB6IntentCGMR);
LABEL_7:

  v47 = v45(v59, v35);

  return v47;
}

{
  v59 = a1;
  v60 = a3;
  v55 = a2;
  v3 = type metadata accessor for ParameterIdentifier();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v56 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DialogPhase();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v52 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v49[0] = v13;
  v51 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v49[1] = type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v50 = CATWrapperSimple.__allocating_init(options:globals:)();
  static SiriKitEventSender.current.getter();
  v17 = type metadata accessor for AppInfoBuilder();
  v18 = swift_allocObject();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v54 = v19;
  v22 = swift_allocObject();
  v77[3] = v11;
  v77[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v49[4] = v12;
  v77[0] = v12;
  v75 = v14;
  v76 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v49[3] = v15;
  v74[0] = v15;
  v72 = v17;
  v73 = &protocol witness table for AppInfoBuilder;
  v71[0] = v18;
  v49[2] = v16;
  *(v22 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = v16;
  outlined init with copy of SignalProviding(v77, v70);
  outlined init with copy of SignalProviding(v74, v69);
  outlined init with copy of SignalProviding(v61, v68);
  outlined init with copy of SignalProviding(v71, v67);

  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v25 = type metadata accessor for ResponseFactory();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = ResponseFactory.init()();
  v66[3] = v25;
  v66[4] = &protocol witness table for ResponseFactory;
  v66[0] = v28;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v29 = v60;
  v22[2] = v60;
  v53 = direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v29 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, (v22 + 3));
  v22[8] = v52;
  outlined init with copy of SignalProviding(v70, (v22 + 9));
  v30 = v51;
  v22[14] = v23;
  v22[15] = v30;
  v22[16] = v24;
  outlined init with copy of SignalProviding(v69, (v22 + 17));
  v22[22] = v50;
  outlined init with copy of SignalProviding(v66, (v22 + 23));
  outlined init with copy of SignalProviding(v68, (v22 + 28));
  outlined init with copy of SignalProviding((v22 + 3), v63);
  v31 = v64;
  v32 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v33 = *(v32 + 72);

  v34 = v33(v31, v32);

  v35 = v55;

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v66);
  outlined init with copy of SignalProviding(v34 + 160, v62);

  outlined init with take of SPHConversation(v62, (v22 + 33));
  __swift_destroy_boxed_opaque_existential_1(v63);
  outlined init with take of SPHConversation(v67, (v22 + 38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMR);
  v36 = v56;
  ParameterResolutionRecord.parameter.getter();
  v37 = ParameterIdentifier.name.getter();
  v39 = v38;
  (*(v57 + 8))(v36, v58);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  if ((PhoneCallSlotNames.init(rawValue:)(v40).value & 0xFE) != 4)
  {
    v61[0] = v22;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartVideoCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
    v46 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
LABEL_6:
    v45 = v46;
    goto LABEL_7;
  }

  if ((specialized ParameterResolutionRecord<>.isUnsetRelationship.getter() & 1) == 0)
  {
    v61[0] = v22;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartVideoCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
    v46 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    goto LABEL_6;
  }

  outlined init with copy of SignalProviding(&v53[v60], v77);
  v41 = [objc_allocWithZone(CNContactStore) init];
  v75 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v76 = &protocol witness table for CNContactStore;
  v74[0] = v41;
  v72 = &type metadata for LabelTemplatesProvider;
  v73 = &protocol witness table for LabelTemplatesProvider;
  v42 = swift_allocObject();
  v71[0] = v42;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  v43 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v44 = swift_allocObject();
  v70[3] = v43;
  v70[4] = &protocol witness table for UnsetRelationshipTemplatesWrapper;
  v70[0] = v44;
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntentResponse, INStartVideoCallIntentResponse_ptr);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INStartVideoCallIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMR);
  v45 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo012INStartVideoB6IntentCGMR);
LABEL_7:

  v47 = v45(v59, v35);

  return v47;
}

{
  v59 = a1;
  v60 = a3;
  v55 = a2;
  v3 = type metadata accessor for ParameterIdentifier();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v56 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DialogPhase();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v52 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v49[0] = v13;
  v51 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v49[1] = type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v50 = CATWrapperSimple.__allocating_init(options:globals:)();
  static SiriKitEventSender.current.getter();
  v17 = type metadata accessor for AppInfoBuilder();
  v18 = swift_allocObject();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v54 = v19;
  v22 = swift_allocObject();
  v77[3] = v11;
  v77[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v49[4] = v12;
  v77[0] = v12;
  v75 = v14;
  v76 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v49[3] = v15;
  v74[0] = v15;
  v72 = v17;
  v73 = &protocol witness table for AppInfoBuilder;
  v71[0] = v18;
  v49[2] = v16;
  *(v22 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = v16;
  outlined init with copy of SignalProviding(v77, v70);
  outlined init with copy of SignalProviding(v74, v69);
  outlined init with copy of SignalProviding(v61, v68);
  outlined init with copy of SignalProviding(v71, v67);

  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v25 = type metadata accessor for ResponseFactory();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = ResponseFactory.init()();
  v66[3] = v25;
  v66[4] = &protocol witness table for ResponseFactory;
  v66[0] = v28;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v29 = v60;
  v22[2] = v60;
  v53 = direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v29 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, (v22 + 3));
  v22[8] = v52;
  outlined init with copy of SignalProviding(v70, (v22 + 9));
  v30 = v51;
  v22[14] = v23;
  v22[15] = v30;
  v22[16] = v24;
  outlined init with copy of SignalProviding(v69, (v22 + 17));
  v22[22] = v50;
  outlined init with copy of SignalProviding(v66, (v22 + 23));
  outlined init with copy of SignalProviding(v68, (v22 + 28));
  outlined init with copy of SignalProviding((v22 + 3), v63);
  v31 = v64;
  v32 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v33 = *(v32 + 72);

  v34 = v33(v31, v32);

  v35 = v55;

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v66);
  outlined init with copy of SignalProviding(v34 + 160, v62);

  outlined init with take of SPHConversation(v62, (v22 + 33));
  __swift_destroy_boxed_opaque_existential_1(v63);
  outlined init with take of SPHConversation(v67, (v22 + 38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  v36 = v56;
  ParameterResolutionRecord.parameter.getter();
  v37 = ParameterIdentifier.name.getter();
  v39 = v38;
  (*(v57 + 8))(v36, v58);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  if ((PhoneCallSlotNames.init(rawValue:)(v40).value & 0xFE) != 4)
  {
    v61[0] = v22;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
    v46 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
LABEL_6:
    v45 = v46;
    goto LABEL_7;
  }

  if ((specialized ParameterResolutionRecord<>.isUnsetRelationship.getter() & 1) == 0)
  {
    v61[0] = v22;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentUnsupportedValueFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentUnsupportedValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin029CallingIntentUnsupportedValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
    v46 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    goto LABEL_6;
  }

  outlined init with copy of SignalProviding(&v53[v60], v77);
  v41 = [objc_allocWithZone(CNContactStore) init];
  v75 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v76 = &protocol witness table for CNContactStore;
  v74[0] = v41;
  v72 = &type metadata for LabelTemplatesProvider;
  v73 = &protocol witness table for LabelTemplatesProvider;
  v42 = swift_allocObject();
  v71[0] = v42;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  v43 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v44 = swift_allocObject();
  v70[3] = v43;
  v70[4] = &protocol witness table for UnsetRelationshipTemplatesWrapper;
  v70[0] = v44;
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INStartCallIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMR);
  v45 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo07INStartB6IntentCGMR);
LABEL_7:

  v47 = v45(v59, v35);

  return v47;
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v1 + 24) = v0;

  return type metadata accessor for SimpleOutputFlowAsync();
}

uint64_t OUTLINED_FUNCTION_67_5()
{
  result = *(v0 - 336);
  v2 = *(v0 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_7()
{
  v2 = *(v0 + 88);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_10()
{

  return type metadata accessor for NonTerminalIntentNode();
}

void OUTLINED_FUNCTION_105(uint64_t a1@<X8>)
{
  *(v5 + 360) = a1;
  *(v5 + 368) = v6 + 16;
  *(v5 + 376) = v1;
  *(v5 + 384) = v3;
  *(v5 + 408) = v4;
  strcpy((v5 + 416), "isNewVoicemail");
  *(v5 + 431) = -18;
  *(v5 + 456) = v4;
  *(v5 + 432) = v2;
}

uint64_t OUTLINED_FUNCTION_67_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_67_15()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t NLTransformer.__deallocating_deinit()
{
  NLTransformer.deinit();

  return swift_deallocClassInstance();
}

void *NLTransformer.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];
  v4 = v0[7];

  v5 = v0[8];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 9), &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  return v0;
}

uint64_t NLv4Transformer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t HandleIntentSubmitter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

BOOL OUTLINED_FUNCTION_126()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_12()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_49_13()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 187);
  __swift_destroy_boxed_opaque_existential_1(v0 + 212);
  __swift_destroy_boxed_opaque_existential_1(v0 + 207);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 202);
}

uint64_t OUTLINED_FUNCTION_49_15()
{

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_49_17()
{

  return static PersonIntentNode.getProcessedNameField(person:terminalNode:)();
}

uint64_t OUTLINED_FUNCTION_49_19()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_49_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a14;
  v17 = a15;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &a13);
}

uint64_t OUTLINED_FUNCTION_49_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_24()
{
  v2 = *(v0 + 48);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_49_26(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 32);
}

BOOL OUTLINED_FUNCTION_49_27()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t PhoneCallControlNLTransformer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];
  v2 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t SingleIntentCacheProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TransformationResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t ThirdPartyAnnotatedAppStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t DictionaryBackedCache.__deallocating_deinit()
{
  DictionaryBackedCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t DictionaryBackedCache.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return v0;
}

void *PhoneContactResolver.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  return v0;
}

uint64_t outlined destroy of AppResolverResult?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhoneAppSelectionSignalsGatherer.__deallocating_deinit()
{
  PhoneAppSelectionSignalsGatherer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SharedConfirmationRepromptContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CallingIntentHandleIntentFlowStrategy.__deallocating_deinit()
{
  v0 = *CallingIntentHandleIntentFlowStrategy.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized SharedGlobalsProviding.featureManager.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v0 = swift_allocObject();
  v3 = &type metadata for PhoneCallFeatureFlags;
  v4 = &protocol witness table for PhoneCallFeatureFlags;
  *&v2 = swift_allocObject();
  memcpy((v2 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v2, v0 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v2);
  return v0;
}

uint64_t PhoneContactResolver.__deallocating_deinit()
{
  PhoneContactResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t AppSelectionState.__deallocating_deinit()
{
  outlined destroy of AppResolverResult?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PhoneAppSelectionSignalsGatherer.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_uuid;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t PhoneCallFlowDelegatePlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67[2] = a2;
  v5 = type metadata accessor for Parse();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v67 - v15;
  v17 = v2[7];
  v18 = v2[8];
  v17(v71, v14);
  v19 = v72;
  v20 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v21 = (*(v20 + 72))(v19, v20);
  v22 = *(v8 + 16);
  v22(v16, a1, v5);
  v23 = (*(v8 + 88))(v16, v5);
  if (v23 != enum case for Parse.NLv4IntentOnly(_:) && v23 != enum case for Parse.uso(_:) && v23 != enum case for Parse.ifClientAction(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v27, static Logger.siriPhone);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v29))
    {
      v30 = OUTLINED_FUNCTION_65_0();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "#PhoneCallFlowDelegatePlugin expected pass-through as only handles .NLv4IntentOnly and .uso", v30, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    (*(v8 + 8))(v16, v5);
LABEL_18:
    PhoneCallFlowDelegatePlugin.makeFlowForCommon(parse:sharedGlobals:)(a1);
    goto LABEL_19;
  }

  (*(v8 + 8))(v16, v5);
  v26 = static ExecutionPath.choosePath(for:sharedGlobals:app:)(a1, v71, 0);
  if (v26 == 5)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v38))
    {
      v39 = OUTLINED_FUNCTION_65_0();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "#PhoneCallFlowDelegatePlugin - executing flow locally", v39, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v40 = v72;
    v41 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v41 + 24))(v70, v40, v41);
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    started = dispatch thunk of AceServiceInvoker.currentStartRequestId()();
    if (v43)
    {
      v44 = started;
      v45 = v43;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v46 = v3[12];
      v47 = v3[13];
      __swift_project_boxed_opaque_existential_1(v3 + 9, v46);
      (*(v47 + 8))(v44, v45, v46, v47);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    goto LABEL_46;
  }

  if (v26 == 4)
  {
    if (PhoneCallFlowDelegatePlugin.makeFlowForEmergencyResourceCall(parse:nlTransformer:)(a1, v21))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v34))
      {
        v35 = OUTLINED_FUNCTION_65_0();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "#PhoneCallFlowDelegatePlugin Invoking SiriEmergency flow to handle call to emergency resource", v35, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      static FlowSearchResult.flow(_:)();

      goto LABEL_21;
    }

LABEL_46:
    (*(*v21 + 192))(&v68, a1);
    if (v69)
    {
      outlined init with take of SPHConversation(&v68, v70);
      type metadata accessor for SiriEnvironment();
      if (static SiriEnvironment.forCurrentTask.getter())
      {
        SiriEnvironment.currentRequest.getter();

        v62 = CurrentRequest.resultCandidateId.getter();
        v64 = v63;

        if (v64)
        {
          v65 = v72;
          v66 = v73;
          __swift_project_boxed_opaque_existential_1(v71, v72);
          (*(v66 + 24))(&v68, v65, v66);
          (*(*v3 + 136))(v62, v64, v70, &v68);

          __swift_destroy_boxed_opaque_existential_1(&v68);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v68, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    goto LABEL_18;
  }

  if (v26 != 3)
  {
    v48 = v26;
    v67[1] = v21;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_65_0();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "#PhoneCallFlowDelegatePlugin Encountered unknown common_Person entity to call. Falling back to server for execution.", v52, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    v55 = OUTLINED_FUNCTION_16_4(v54);
    if (v48 != 2)
    {
      if (v55)
      {
        v61 = OUTLINED_FUNCTION_65_0();
        *v61 = 0;
        _os_log_impl(&dword_0, v53, v54, "#PhoneCallFlowDelegatePlugin using RedirectToServerFlow.", v61, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      outlined init with copy of SignalProviding(v71, v70);
      type metadata accessor for RedirectToServerFlow();
      swift_allocObject();
      v70[0] = RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(v48, v70, 1);
      lazy protocol witness table accessor for type RedirectToServerFlow and conformance RedirectToServerFlow(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, 255, type metadata accessor for RedirectToServerFlow);
      Flow.eraseToAnyFlow()();
      OUTLINED_FUNCTION_11_0();

      static FlowSearchResult.flow(_:)();
      goto LABEL_20;
    }

    if (v55)
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_9_47();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    type metadata accessor for BusinessCompositionFlow();
    v22(v13, a1, v5);
    outlined init with copy of SignalProviding(v71, v70);
    v70[0] = BusinessCompositionFlow.__allocating_init(parse:sharedGlobals:)(v13, v70);
    lazy protocol witness table accessor for type RedirectToServerFlow and conformance RedirectToServerFlow(&lazy protocol witness table cache variable for type BusinessCompositionFlow and conformance BusinessCompositionFlow, 255, type metadata accessor for BusinessCompositionFlow);
    Flow.eraseToAnyFlow()();

LABEL_19:
    static FlowSearchResult.flow(_:)();
LABEL_20:

    goto LABEL_21;
  }

  static FlowSearchResult.noFlow.getter();
LABEL_21:

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t outlined init with take of SPHConversation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 *OUTLINED_FUNCTION_7_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E6F697461636F6CLL;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v3[6] = a2;
  v3[9] = a1;
  v3[10] = 0x656369766564;
  v3[11] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[39];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];
}

uint64_t OUTLINED_FUNCTION_8_3@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  result = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 104) = v5;
  v8 = *(a5 + 32);
  v9 = *(a5 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(a5, v9);
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_8()
{
}

BOOL OUTLINED_FUNCTION_16_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_7_17()
{
  v1 = *(v0 + 240);
  v2 = v1[27];
  return __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
}

uint64_t OUTLINED_FUNCTION_5_7()
{
}

void OUTLINED_FUNCTION_7_20()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_7_25()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_45_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t result)
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0xE000000000000000;
  *(v1 - 88) = result;
  return result;
}

void OUTLINED_FUNCTION_7_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v13, 0, v14, a12, a13, v15 & 0x1FF, a11);
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return outlined init with take of SPHConversation(&a10, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_7_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_38()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_7_39(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_2()
{
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_41()
{
  v1 = *(*(v0 - 520) + 8);
  result = *(v0 - 496);
  v3 = *(v0 - 512);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_42(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

void OUTLINED_FUNCTION_7_45(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 - 208));

  specialized Array.append<A>(contentsOf:)(a1);
}

uint64_t OUTLINED_FUNCTION_7_48(float a1)
{
  *v1 = a1;
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[10];
  *(v3 - 112) = 0;
  *(v3 - 104) = 0xE000000000000000;

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_50()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_7_51()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7_54()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
}

uint64_t OUTLINED_FUNCTION_7_55()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 20);
}

uint64_t OUTLINED_FUNCTION_7_58()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_62()
{
  v2 = v0[278];
  v3 = v0[275];
  v4 = v0[274];
  v5 = v0[273];
  v6 = v0[270];
  v7 = v0[267];
  v8 = v0[266];
  v9 = v0[262];
  v10 = v0[261];
}

uint64_t OUTLINED_FUNCTION_7_64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 - 47) = a8;
  *(v8 - 17) = a7;
  *(v8 - 43) = a3;
  *(v8 - 21) = a2;
  v10 = v8[5];
  v11 = v8[6];
  v12 = v8[4];

  return type metadata accessor for Locale();
}

uint64_t OUTLINED_FUNCTION_7_67@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_68@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = 0x746E65746E69;
  v3[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_69(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCallHistoryModel();
}

uint64_t OUTLINED_FUNCTION_7_70()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_71()
{
  v2 = *(v0 + 48);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_75()
{
}

void OUTLINED_FUNCTION_7_77()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
}

void OUTLINED_FUNCTION_7_78()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  Signpost.OpenSignpost.end()();
}

uint64_t OUTLINED_FUNCTION_7_79(uint64_t a1, uint64_t a2, unint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, va);
}

void OUTLINED_FUNCTION_7_80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_7_82@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_83(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = closure #1 in Signpost.OpenSignpost.end(_:)partial apply;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_87()
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 73);
  *(v2 + 128) = 0x6D6563696F567369;
  *(v2 + 136) = 0xEB000000006C6961;
  *(v2 + 144) = v4;
  *(v2 + 168) = v0;
  *(v2 + 176) = 0x656369766564;
  *(v2 + 184) = 0xE600000000000000;
  return 0;
}

uint64_t SharedGlobals.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for SiriKitContactResolver();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReferenceResolutionClient();
  v11 = ReferenceResolutionClient.__allocating_init()();
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(v35, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  type metadata accessor for PhoneCallFeatureManager();
  v12 = OUTLINED_FUNCTION_67();
  v33 = &type metadata for PhoneCallFeatureFlags;
  v34 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v32 = swift_allocObject();
  memcpy((v32 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v32, v12 + 16);
  type metadata accessor for NLTransformer();
  v13 = swift_allocObject();
  outlined init with copy of PhoneCallFeatureFlags(v35, &v32);
  *a1 = specialized NLTransformer.init(referenceResolver:featureManager:)(v11, v12, v13);
  v14 = type metadata accessor for CallNotificationContextProvider();
  v15 = OUTLINED_FUNCTION_6_82();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  OUTLINED_FUNCTION_67();
  *(v15 + 16) = specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, closure #1 in default argument 2 of DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:), 0, 30.0);
  a1[4] = v14;
  a1[5] = &protocol witness table for CallNotificationContextProvider;
  a1[1] = v15;
  type metadata accessor for ContactResolverConfigHashable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(&lazy protocol witness table cache variable for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable, type metadata accessor for ContactResolverConfigHashable);
  v16 = Dictionary.init(minimumCapacity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference08ResolvedA10KitContactVGMd, &_sSay13SiriInference08ResolvedA10KitContactVGMR);
  lazy protocol witness table accessor for type [ContactQuery] and conformance <A> [A]();
  v17 = Dictionary.init(minimumCapacity:)();
  SiriKitContactResolver.init()();
  v18 = type metadata accessor for PhoneContactResolver();
  v19 = swift_allocObject();
  v33 = v6;
  v34 = &protocol witness table for SiriKitContactResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(v7 + 32))(boxed_opaque_existential_1, v10, v6);
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  outlined init with take of SPHConversation(&v32, v19 + 32);
  a1[9] = v18;
  a1[10] = &protocol witness table for PhoneContactResolver;
  a1[6] = v19;
  v21 = type metadata accessor for AppResolverResult();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
  v22 = type metadata accessor for AppSelectionState();
  v23 = OUTLINED_FUNCTION_41_1(v22);
  v24 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  __swift_storeEnumTagSinglePayload(v23 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction, 1, 1, v21);
  swift_beginAccess();
  outlined assign with take of AppResolverResult?(v5, v23 + v24);
  swift_endAccess();
  a1[11] = v23;
  v25 = [objc_opt_self() sharedAnalytics];
  v26 = [v25 defaultMessageStream];

  v27 = type metadata accessor for PhoneAppSelectionSignalsGatherer();
  OUTLINED_FUNCTION_41_1(v27);
  a1[12] = PhoneAppSelectionSignalsGatherer.init(messageStream:)(v26);
  type metadata accessor for SharedConfirmationRepromptContext();
  v28 = OUTLINED_FUNCTION_6_82();
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  *(v28 + 16) = Dictionary.init(dictionaryLiteral:)();
  a1[13] = v28;
  type metadata accessor for SharedNeedsValueContext();
  v29 = OUTLINED_FUNCTION_6_82();
  *(v29 + 16) = _swiftEmptySetSingleton;
  a1[14] = v29;
  type metadata accessor for StartCallDisplayModeContext();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[15] = result;
  return result;
}

uint64_t sub_9328()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  OUTLINED_FUNCTION_48_3();

  return _swift_deallocObject(v20, v21, v22);
}

uint64_t specialized NLTransformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[3] = type metadata accessor for ReferenceResolutionClient();
  v29[4] = &protocol witness table for ReferenceResolutionClient;
  v29[0] = a1;
  *(a3 + 32) = type metadata accessor for NLTransformer();
  *(a3 + 40) = &outlined read-only object #0 of specialized NLTransformer.init(referenceResolver:featureManager:);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = _swiftEmptyArrayStorage;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  v6 = one-time initialization token for siriPhone;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v27 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v12 = *(a3 + 32);
    v13 = *(a3 + 40);
    v26 = a1;
    v14 = *(a3 + 48);
    v15 = *(a3 + 56);
    v28 = v11;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v12, v13, v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v28);

    *(v10 + 4) = v16;
    a1 = v26;
    _os_log_impl(&dword_0, v8, v9, "%s is initialized, this function should be only be called once for each makeFlowFor", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    a2 = v27;
  }

  v17 = type metadata accessor for NLv4Transformer(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();

  *(a3 + 16) = specialized NLv4Transformer.init(referenceResolver:featureManager:)(a1, a2, v20);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v29, a3 + 160);
  v21 = type metadata accessor for SingleIntentCacheProvider();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_424FE0;
  v23 = type metadata accessor for PhoneCallControlNLTransformer();
  v24 = swift_allocObject();
  v24[5] = v21;
  v24[6] = &protocol witness table for SingleIntentCacheProvider;
  v24[2] = v22;
  v24[7] = v23;
  v24[8] = &outlined read-only object #0 of specialized PhoneCallControlNLTransformer.init(cacheProvider:);
  v24[9] = 0;
  v24[10] = 0;

  __swift_destroy_boxed_opaque_existential_1(v29);
  *(a3 + 24) = v24;
  return a3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized NLv4Transformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v14[3] = type metadata accessor for ReferenceResolutionClient();
  v14[4] = &protocol witness table for ReferenceResolutionClient;
  v14[0] = a1;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  outlined init with take of SPHConversation(v13, v11 + 24);
  type metadata accessor for TransformerInput(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  Transformer.init(transform:)();
  __swift_destroy_boxed_opaque_existential_1(v14);
  (*(v7 + 32))(a3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer, v10, v6);
  return a3;
}

uint64_t sub_9A80()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t outlined init with copy of SignalProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of SharedGlobalsProviding()
{
  OUTLINED_FUNCTION_38();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0);
  return v0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_40(v3);
  (*v4)(a2);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1()
{
  OUTLINED_FUNCTION_38();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  OUTLINED_FUNCTION_40(v2);
  (*v3)(v0);
  return v0;
}

uint64_t specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin0B27NotificationContextProviderC0bF0VSg5value_10Foundation4DateV010expirationK0tMd, &_s27PhoneCallFlowDelegatePlugin0B27NotificationContextProviderC0bF0VSg5value_10Foundation4DateV010expirationK0tMR, a4);
}

{
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSg5value_10Foundation4DateV010expirationJ0tMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSg5value_10Foundation4DateV010expirationJ0tMR, a4);
}

uint64_t specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(v6 + 16) = Dictionary.init(minimumCapacity:)();
  *(v6 + 24) = a6;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  return v6;
}

uint64_t type metadata accessor for ContactResolverConfigHashable()
{
  result = type metadata singleton initialization cache for ContactResolverConfigHashable;
  if (!type metadata singleton initialization cache for ContactResolverConfigHashable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [ContactQuery] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ContactQuery] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ContactQuery] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContactQuery] and conformance <A> [A]);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

double OUTLINED_FUNCTION_42_2@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 128) = 0xD000000000000015;
  return result;
}

void OUTLINED_FUNCTION_42_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_79()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

id OUTLINED_FUNCTION_42_14(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

double OUTLINED_FUNCTION_42_15()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_43_2()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t OUTLINED_FUNCTION_42_20()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 208, v1, v2);
}

uint64_t OUTLINED_FUNCTION_42_22()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_62_0()
{
  v2[21] = v1;
  v2[22] = v3 + 1;
  v2[23] = (v0 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_42_24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t type metadata accessor for AppSelectionState()
{
  result = type metadata singleton initialization cache for AppSelectionState;
  if (!type metadata singleton initialization cache for AppSelectionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of AppResolverResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PhoneAppSelectionSignalsGatherer()
{
  result = type metadata singleton initialization cache for PhoneAppSelectionSignalsGatherer;
  if (!type metadata singleton initialization cache for PhoneAppSelectionSignalsGatherer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneAppSelectionSignalsGatherer.init(messageStream:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_timeout) = 0x4024000000000000;
  UUID.init()();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_uuid, v11, v3);
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_messageStream) = a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

BOOL OUTLINED_FUNCTION_51_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_14@<X0>(uint64_t a1@<X8>)
{
  v2[57] = v1;
  v4 = v2[35];
  v6 = v2[31];
  v5 = v2[32];
  *(v1 + 32) = a1;

  return static DialogPhase.completion.getter();
}

uint64_t OUTLINED_FUNCTION_0_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v2;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

void *OUTLINED_FUNCTION_5_16()
{

  return specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(v3, v2, v1, v6, v0, v4, v5);
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_5_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

BOOL OUTLINED_FUNCTION_5_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_5_22@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = v2;
  v4 = *(a1 + 32);
  return v1 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_5_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 840);
  return *(v2 + 672);
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
}

uint64_t OUTLINED_FUNCTION_5_29()
{
  result = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[3];
  v5 = *(v0[16] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
}

uint64_t OUTLINED_FUNCTION_5_33()
{
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[68];
  v7 = v0[65];
  v9 = v0[61];
  v8 = v0[62];
  v11 = v0[59];
  v10 = v0[60];
  v13 = v0[57];
  v14 = v0[56];
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return swift_asyncLet_begin();
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_40()
{
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_5_46(void *a1)
{
  v2 = a1[4];
  v3 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v3);
}

uint64_t OUTLINED_FUNCTION_5_51()
{
  v1 = *(*(v0 - 456) + 8);
  result = *(v0 - 432);
  v3 = *(v0 - 448);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_57()
{
}

uint64_t OUTLINED_FUNCTION_5_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 104) = 0;
  *(v4 - 96) = 0xE000000000000000;

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_5_61()
{
  outlined init with take of SPHConversation((v0 + 208), v1 + 264);
  __swift_destroy_boxed_opaque_existential_1((v0 + 248));
  outlined init with take of SPHConversation((v0 + 328), v1 + 304);
  __swift_destroy_boxed_opaque_existential_1((v2 - 248));
  __swift_destroy_boxed_opaque_existential_1((v2 - 208));
  result = __swift_destroy_boxed_opaque_existential_1((v2 - 168));
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_67(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
  v4 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_69()
{
  v2 = *(v0 - 88);
}

void *OUTLINED_FUNCTION_5_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t OUTLINED_FUNCTION_5_71()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_5_72()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_74(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for PlayVoicemailModel();
}

uint64_t OUTLINED_FUNCTION_5_80()
{

  return swift_getObjCClassFromMetadata();
}

void OUTLINED_FUNCTION_5_82()
{
  v2 = *(v0 + 98);
  *(v1 + 272) = 0x726F63655277656ELL;
  *(v1 + 280) = 0xEF746E756F437364;
}

uint64_t OUTLINED_FUNCTION_5_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a5;
  v7 = **(v5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_92()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_96(uint64_t a1@<X8>)
{
  v2 = v1[39];
  v3 = v1[13];
  v4 = v1[36];
  v5 = v1[37];
  v7 = v1[34];
  v6 = v1[35];
  v10 = v1[33];
  v11 = v1[32];
  v8 = v1[29];
  v9 = v1[26];
  v1[46] = a1;
}

uint64_t OUTLINED_FUNCTION_5_97(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for YesNoConfirmationModel();
}

unint64_t lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType()
{
  result = lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType;
  if (!lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType;
  if (!lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_63_1()
{
}

uint64_t OUTLINED_FUNCTION_62_3()
{
}

uint64_t OUTLINED_FUNCTION_62_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_8()
{
  v3 = v1[110];
  v4 = v1[109];
  v5 = v1[107];
  v6 = v1[106];
  v7 = v1[104];
  v8 = v1[89];
  v9 = v1[86];
  v1[154] = v0;

  return default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v5, v6);
}

uint64_t OUTLINED_FUNCTION_62_10()
{
  result = *(v0 - 344);
  v2 = *(v0 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = v11[30];
  v17 = v11[18];
  v16 = v11[19];
  v21 = v11[17];
  v19 = v11[13];
  v18 = v11[14];
  *v16 = a11;
  v16[1] = v13;
  v16[2] = v12;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_62_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_62_15()
{
}

uint64_t OUTLINED_FUNCTION_62_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_62_20(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{

  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a15, a11, a12, a6, a13);
}

uint64_t OUTLINED_FUNCTION_62_21()
{
  v2 = *(v0 + 40);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_106_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[15] = a1;
  v2[16] = v3;
  v2[17] = a2 | 0x8000000000000000;
  return 0;
}

void *OUTLINED_FUNCTION_62_22()
{
  v1 = *(v0 - 96);
  result = __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));
  v3 = *(v1 + 16);
  return result;
}

void static Signpost.begin(_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_18_27();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_75();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_42_13();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v8, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_13:
    v18 = OUTLINED_FUNCTION_8_61();
    v19(v18);
    v20 = type metadata accessor for OSSignpostIntervalState();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_16_45();
    v23 = OUTLINED_FUNCTION_15_45();
    v24(v23, v3);
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_65();
    return;
  }

  if ((v2 & 1) == 0)
  {
    if (v0)
    {
      v25 = v0;
LABEL_12:
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      v14 = StaticString.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

      *(v12 + 4) = v16;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v9, v10, v17, v25, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_6_68();

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v0 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v11)
  {
    if (v0 >> 16 <= 0x10)
    {
      v25 = &v27;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t OUTLINED_FUNCTION_1_10@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_9_7(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0x43746E6572727563;
  *(v2 + 136) = 0xEB000000006C6C61;
}

uint64_t OUTLINED_FUNCTION_33_2()
{
}

void OUTLINED_FUNCTION_6_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_9_12(uint64_t a1@<X8>)
{
  v2[33] = a1;
  v2[34] = v3 + 15;
  v2[35] = (v1 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_10_8(uint64_t a1@<X8>)
{
  v2[27] = a1;
  v2[28] = v3 + 3;
  v2[29] = (v1 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_9_13@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_9_17()
{
  v1 = (*(v0 + 176) + *(v0 + 368));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

void OUTLINED_FUNCTION_9_22(uint64_t a1@<X8>)
{
  *(v1 + 768) = a1;
  v2 = *(v1 + 392);
  v3 = *(v1 + 352);
  v4 = *(v1 + 320);
  v5 = *(v1 + 272);
  v6 = *(v1 + 232);
  v7 = *(v1 + 224);
  v8 = **(v1 + 240);
}

uint64_t OUTLINED_FUNCTION_9_23()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_9_25()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_28()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_9_29()
{

  return Loggable.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_9_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return outlined init with take of SPHConversation(&a14, &a9);
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_9_33()
{
  v2 = v0[7];
  v3 = v0[6];

  return __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_36()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_9_39()
{
  v2 = *(v0 + 8);
  result = *(v1 - 384);
  v4 = *(v1 - 416);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_43()
{
  result = v0[45];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[48];
  return result;
}

void *OUTLINED_FUNCTION_9_46(uint64_t a1, uint64_t a2)
{

  return UnsupportedCallControlIntentOutputProvider.init(intent:sharedGlobals:callControlCats:unsupportedCats:)(v2, a2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_4_5()
{
}

uint64_t OUTLINED_FUNCTION_9_48@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of SpeakableString?(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_9_49()
{
}

uint64_t OUTLINED_FUNCTION_9_53()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_55()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_9_56()
{

  return _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v0, type metadata accessor for PhoneCallNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_9_58()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_60()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_9_61()
{
  v2 = *(v0 + 3864);

  return _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v2, type metadata accessor for PhoneSnippetDataModels);
}

uint64_t OUTLINED_FUNCTION_9_62()
{
  v2 = v0[258];
  v3 = v0[255];
  v4 = v0[254];
  v5 = v0[251];
  v6 = v0[248];
  v7 = v0[247];
  v8 = v0[243];
  v9 = v0[242];
}

uint64_t OUTLINED_FUNCTION_9_63()
{
  v1 = *(v0 + 16);
  *(v0 - 216) = *(v0 + 24);
  v2 = *(v0 - 144);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_9_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18)
{
  *(a1 + 32) = v18;
  *(a1 + 40) = a15;
  *(a1 + 56) = a16;
  *(a1 + 72) = a17;
  *(a1 + 88) = a18;
}

uint64_t OUTLINED_FUNCTION_9_65@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = v2 | 0xEF746E756F430000;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_69()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_9_71()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_9_73(uint64_t result)
{
  *(v2 - 352) = v1;
  *(v2 - 272) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_9_74(unint64_t a1)
{
  v2[3].n128_u64[0] = a1;
  result = v2[2];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &a9);
}

uint64_t OUTLINED_FUNCTION_9_77()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_83()
{
  *v0 = v1;
  *(v0 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_9_84()
{
}

uint64_t OUTLINED_FUNCTION_15_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x656369766564;
  v2[11] = 0xE600000000000000;
  return result;
}

void OUTLINED_FUNCTION_15_10(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_15_13(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_15_22()
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v1, v3, v2, v0);
}

uint64_t OUTLINED_FUNCTION_15_23()
{
}

uint64_t OUTLINED_FUNCTION_15_24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = v1;
  v5 = *(v2 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_25()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 88));
}

uint64_t OUTLINED_FUNCTION_15_29()
{
  result = v0[12];
  v3 = v0[13];
  v4 = v0[14];
  v0[14] = 0;
  v0[12] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_32()
{
  v1 = *(*(v0 - 336) + 8);
  result = *(v0 - 312);
  v3 = *(v0 - 328);
  return result;
}

double OUTLINED_FUNCTION_35_2()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_34()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return UsoTask.description.getter();
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

uint64_t OUTLINED_FUNCTION_16_8()
{
}

uint64_t OUTLINED_FUNCTION_15_37(uint64_t a1, uint64_t a2)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_15_42()
{
  type metadata accessor for PhoneIntentRCHFlow();
}

unint64_t OUTLINED_FUNCTION_15_43()
{
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  if (v0 == 1)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void OUTLINED_FUNCTION_15_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_15_49(uint64_t result)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 48);
  v6 = *(v2 + 98);
  v3[24] = v1;
  v3[27] = result;
  v3[28] = 0x5074737269467369;
  v3[29] = 0xEF70704179747261;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_50()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

void OUTLINED_FUNCTION_15_54()
{
  v1 = v0[247];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[237];
}

id OUTLINED_FUNCTION_15_55()
{
  *(v1 + 22) = 2112;
  *(v1 + 24) = v0;
  *v2 = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_15_56()
{
}

void OUTLINED_FUNCTION_15_61(float a1)
{
  *v2 = a1;
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v41 = v2;
  v4 = type metadata accessor for MainFlow();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_2();
  v42 = v7;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for CATOption();
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = type metadata accessor for Parse();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_68_0();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_427BB0;
  v25 = *(v18 + 16);
  v25(v23, v3, v15);
  outlined init with copy of SignalProviding(v1, v43);
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v26 = CATWrapperSimple.__allocating_init(options:globals:)();
  v27 = type metadata accessor for RestrictionCheckGuardFlow();
  OUTLINED_FUNCTION_12_8(v27);
  swift_allocObject();
  v43[0] = RestrictionCheckGuardFlow.init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(v23, v43, v26);
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow, type metadata accessor for RestrictionCheckGuardFlow);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_109();

  *(v24 + 32) = v43;
  v28 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v29 = *(v28 + 104);
  v30 = OUTLINED_FUNCTION_109();
  v31(v30, v28);
  v32 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v33 = *(v32 + 88);
  v34 = OUTLINED_FUNCTION_109();
  *(v24 + 40) = v35(v34, v32);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v36 = type metadata accessor for GuardFlow();
  OUTLINED_FUNCTION_12_8(v36);
  swift_allocObject();
  OUTLINED_FUNCTION_64();
  GuardFlow.init(preconditionFlows:)();
  v25(v10, v41, v15);
  outlined init with copy of SignalProviding(v1, &v10[*(v5 + 28)]);
  v37 = v42;
  outlined init with copy of MainFlow(v10, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMd, &_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_64();

  v39 = specialized SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(v38, v37);
  outlined destroy of MainFlow(v10);
  v43[0] = v39;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type SentinelConditionalFlow<()> and conformance SentinelConditionalFlow<A>, &_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMd, &_s27PhoneCallFlowDelegatePlugin019SentinelConditionalC0CyytGMR);
  Flow.eraseToAnyFlow()();

  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

uint64_t type metadata accessor for MainFlow()
{
  result = type metadata singleton initialization cache for MainFlow;
  if (!type metadata singleton initialization cache for MainFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t implicit closure #1 in PhoneCallFlowDelegatePlugin.init()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SharedGlobals;
  a1[4] = &protocol witness table for SharedGlobals;
  v2 = swift_allocObject();
  *a1 = v2;
  return SharedGlobals.init()((v2 + 16));
}

uint64_t sub_CC34()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

void *OUTLINED_FUNCTION_75(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = (a1 + 16);

  return memcpy(v11, v9, 0xC0uLL);
}

void OUTLINED_FUNCTION_75_0()
{
  v1 = v0[29];
  v2 = v0[26];
  v5 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
}

void OUTLINED_FUNCTION_75_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_75_5()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_75_7()
{
  v3 = *(v0 + 200);
  *(v1 + 16) = v3;
  v4 = v3 + *(v0 + 184);

  return outlined init with copy of SignalProviding(v4, v1 + 24);
}

uint64_t OUTLINED_FUNCTION_75_11()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, v2, v0);
}

void OUTLINED_FUNCTION_6_11()
{
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[21];

  AnnounceCallFlow.state.setter(0);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return swift_once();
}

double OUTLINED_FUNCTION_6_14()
{
  result = v1;
  v3 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  v2 = v0[35];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[25];
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
  v2 = *(v1 + 776);
  return *(v1 + 664);
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_6_24@<X0>(void *a1@<X8>)
{
  v1 = a1[7];
  result = __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
  v3 = *(v1 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v5 + 4) = a1;
  *(v5 + 12) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_6_26()
{
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return swift_once();
}

void OUTLINED_FUNCTION_47_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_34()
{
  v1 = *(v0 - 200);
  v2 = *(*(v0 - 208) + 8);
  return *(v0 - 192);
}

uint64_t OUTLINED_FUNCTION_6_36()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_6_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return outlined init with take of SPHConversation(&a10, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_40()
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_6_42(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

BOOL OUTLINED_FUNCTION_6_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_45()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void *OUTLINED_FUNCTION_6_46(void *a1)
{
  v2 = a1[4];
  v3 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v3);
}

uint64_t OUTLINED_FUNCTION_6_47()
{

  return outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v0, type metadata accessor for MessageFlowDirectInvocation);
}

uint64_t OUTLINED_FUNCTION_6_50()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_6_53(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v1 + 17);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return specialized PhoneCallFeatureManager.init(featureFlags:)(v3, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_58()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_6_61()
{
  *(v1 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_6_65(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_6_70()
{
  v2 = v0[141];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[133];
  v8 = v0[132];
  v9 = v0[131];
  v10 = v0[130];
}

id OUTLINED_FUNCTION_6_74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

void OUTLINED_FUNCTION_6_75(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_6_79()
{

  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_6_80@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v2 + *(a1 + 40);

  return outlined init with copy of SignalProviding(v4, va);
}

uint64_t OUTLINED_FUNCTION_6_81()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_82()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_85(uint64_t a1)
{
  *(a1 + 8) = SingleCallResultFlow.makeOutput();
  v2 = *(v1 + 2000);
  return v1 + 1336;
}

uint64_t OUTLINED_FUNCTION_6_87(uint64_t result, uint64_t a2)
{
  *(v2 - 328) = result;
  *(v2 - 320) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_88()
{
  result = *(v0 + 16);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_89()
{

  return specialized CallStateProvider.onCallCenterQueue<A>(_:)(closure #1 in TUCall.isSpeakerphoneEnabled.getter, 0);
}

unint64_t OUTLINED_FUNCTION_6_90()
{

  return type metadata accessor for SAAceView();
}

void OUTLINED_FUNCTION_6_94()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[33];
}

void OUTLINED_FUNCTION_6_95()
{
  v2 = *(v1 - 184);
  v3 = *(v2 + 16);
  v4 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
}

uint64_t OUTLINED_FUNCTION_6_96()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_97()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_10_9(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_13(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_11_7@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_10_16(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_10_18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 111);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 131);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 126);
}

BOOL OUTLINED_FUNCTION_10_19()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void OUTLINED_FUNCTION_10_23(uint64_t a1@<X8>)
{
  *(v1 + 768) = a1;
  v2 = *(v1 + 392);
  v3 = *(v1 + 352);
  v4 = *(v1 + 320);
  v5 = *(v1 + 272);
  v6 = *(v1 + 232);
  v7 = *(v1 + 224);
  v8 = **(v1 + 240);
}

uint64_t OUTLINED_FUNCTION_94()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_10_25(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v4, v2, 1, a1);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, v1, v3);
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_29()
{

  return outlined destroy of PersonNameComponents?(v0);
}

uint64_t OUTLINED_FUNCTION_10_30()
{
  *(v2 - 128) = v1;
  v3 = *(*(v2 - 208) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_31()
{
  *(v1 - 160) = v0;
  v2 = *(v1 - 216);
  v3 = *(*(v1 - 224) + 8);
  return *(v1 - 168);
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return outlined init with copy of SignalProviding(v5, va);
}

uint64_t OUTLINED_FUNCTION_10_33@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_35(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

char *OUTLINED_FUNCTION_10_39@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_10_41@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v3[6] = a2;
  v3[9] = a1;
  v3[10] = 0x6143746567726174;
  v3[11] = 0xEA00000000006C6CLL;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_49(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_10_50(__int128 *a1, uint64_t a2)
{
  outlined init with take of SPHConversation(a1, a2);
  __swift_destroy_boxed_opaque_existential_1((v2 - 248));
  __swift_destroy_boxed_opaque_existential_1((v2 - 208));

  return __swift_destroy_boxed_opaque_existential_1((v2 - 168));
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_10_52()
{
}

uint64_t OUTLINED_FUNCTION_10_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 128);
  v4 = *(v1 - 120);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_10_61()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_10_62(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_10_64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

id OUTLINED_FUNCTION_10_65(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_66(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_67(uint64_t result)
{
  v1[9] = result;
  v1[10] = 0x746E65746E69;
  v1[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_70()
{
  v2 = v0[42];
  v5 = v0[43];
  v3 = v0[41];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_71(uint64_t a1, unint64_t a2)
{
  *(v3 - 344) = v2;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v3 - 272));
}

uint64_t OUTLINED_FUNCTION_10_74()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&a15, &a9, v15, v16);
}

uint64_t OUTLINED_FUNCTION_10_80()
{

  return ButtonConfigurationModel.init(label:url:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_17_8()
{
}

uint64_t OUTLINED_FUNCTION_17_9()
{
}

void OUTLINED_FUNCTION_17_10(uint64_t a1@<X8>)
{
  v2[123] = v1;
  v3 = v2[111];
  v4 = v2[110];
  v5 = v2[109];
  v6 = v2[106];
  v7 = v2[85];
  v2[124] = a1;
}

uint64_t OUTLINED_FUNCTION_17_12()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

void OUTLINED_FUNCTION_17_16()
{
  v2 = *(v0 + 5896);
  v3 = *(v0 + 5848);
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_27()
{
  result = v0[45];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[48];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_29@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[6] = v2;
  v3[9] = result;
  v3[10] = v4;
  v3[11] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_30()
{
  *(v1 - 184) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_32()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_17_35()
{
  result = *(v0 - 248);
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_39()
{
  v2 = **(v1 - 200);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_42()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_43()
{
  v2 = *(*(v1 - 184) + 8);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_47()
{
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #6 in SingleCallResultFlow.makeOutput());
}

uint64_t OUTLINED_FUNCTION_17_48()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

void OUTLINED_FUNCTION_17_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void OUTLINED_FUNCTION_17_50()
{
  v2 = *(v0 - 332) & 0x1FF;

  Signpost.OpenSignpost.end()();
}

uint64_t OUTLINED_FUNCTION_17_51(uint64_t result)
{
  *(v2 + 16) = result;
  *(v2 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_17_58()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_8()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_28_9()
{
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  v6 = v0[41];
  v5 = v0[42];
}

id OUTLINED_FUNCTION_28_11(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 2512);

  return [a1 v9];
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return Loggable.wrappedValue.setter();
}

uint64_t OUTLINED_FUNCTION_28_15()
{
  result = *(v0 - 336);
  v2 = *(v0 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_16()
{
  result = v1 - 224;
  v3 = *(v0 + 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_17@<X0>(uint64_t a1@<X8>)
{
  v4 = __clz(__rbit64(v2)) | (a1 << 6);
  v5 = (*(v1 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(*(v1 + 56) + 8 * v4);
}

uint64_t OUTLINED_FUNCTION_28_20()
{

  return outlined init with copy of PhoneCallNLIntent?(v0 + 208, v0 + 272, v1, v2);
}

uint64_t OUTLINED_FUNCTION_28_21@<X0>(uint64_t a1@<X8>)
{
  if (v1 == 1)
  {
    return a1 + 1;
  }

  else
  {
    return a1;
  }
}

void OUTLINED_FUNCTION_28_26(uint64_t a1@<X8>)
{
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = v4;
  v3[11] = (v2 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_28_27(void *a1@<X8>)
{
  *a1 = 0xD000000000000021;
  a1[1] = (v1 - 32) | 0x8000000000000000;
  *(v2 + 1368) = v4;
  *(v2 + 1376) = v3;
}

__n128 *OUTLINED_FUNCTION_28_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x73746361746E6F63;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

void OUTLINED_FUNCTION_28_30()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
}

uint64_t PhoneCallFlowDelegatePlugin.makeFlowForCommon(parse:sharedGlobals:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for Parse.DirectInvocation();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  static Signpost.begin(_:)();
  (*(v5 + 16))(v10, a1, v2);
  if ((*(v5 + 88))(v10, v2) == enum case for Parse.directInvocation(_:))
  {
    (*(v5 + 96))(v10, v2);
    (*(v14 + 32))(v19, v10, v11);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003CLL && 0x80000000004527B0 == v20)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
LABEL_13:
        v29 = OUTLINED_FUNCTION_5_60();
        v30(v29);
        goto LABEL_14;
      }
    }

    v23 = Parse.DirectInvocation.userData.getter();
    if (v23)
    {
      v41 = VoiceCommandsStartCallDirectAction.init(from:)(v23);
      if (v41.value.appId._object)
      {
        isa = v41.value.intent.super.super.isa;
        type metadata accessor for App();

        App.__allocating_init(appIdentifier:)();
        static PhoneCallFlowFactory.makeVoiceCommandsParityFlow(app:intent:sharedGlobals:)();
        v26 = v25;

        v27 = OUTLINED_FUNCTION_5_60();
        v28(v27);
        goto LABEL_19;
      }
    }

    goto LABEL_13;
  }

  (*(v5 + 8))(v10, v2);
LABEL_14:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v33))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_9_47();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)();
  v26 = v39;
LABEL_19:
  Signpost.OpenSignpost.end()();

  return v26;
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_57_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
  v4 = *(v2 + 56);

  return PhoneCallControlAction.description.getter(v4);
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void OUTLINED_FUNCTION_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_12(uint64_t result, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_16@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_19(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v4, v3, v5);
}

uint64_t OUTLINED_FUNCTION_57_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v8 = *(v6 + 8);

  return outlined init with copy of CallCancelSlotConfirmationButtonsBuilder(v6, va);
}

uint64_t OUTLINED_FUNCTION_57_22(uint64_t result)
{
  *(v1 + 120) = result;
  *(v1 + 128) = v2 | 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_23()
{
  v3 = v0 + *(v1 + 28);

  return CodableAceObject.init(wrappedValue:)();
}

void OUTLINED_FUNCTION_57_24()
{

  static Signpost.begin(_:string1:)();
}

uint64_t OUTLINED_FUNCTION_57_26()
{
  result = v0[75];
  v2 = v0[56];
  v3 = v0[57];
  return result;
}

uint64_t OUTLINED_FUNCTION_90_4(uint64_t result)
{
  v4 = *(v2 + 56);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x656772656D457369;
  v3[11] = 0xEB0000000079636ELL;
  return result;
}

__n128 *OUTLINED_FUNCTION_22_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  v4 = *(v3 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_22_5@<X0>(uint64_t a1@<X8>)
{
  v4 = (a1 + v1);
  v5 = *v4;
  *v4 = v2;
  v6 = *(v4 + 8);
  *(v4 + 8) = 1;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

void OUTLINED_FUNCTION_22_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_12()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_14(float a1)
{
  *v1 = a1;
  result = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return outlined destroy of TransformerInput(v0, type metadata accessor for TransformerInput);
}

uint64_t OUTLINED_FUNCTION_22_16()
{
  v2 = *(v0 - 328);

  return outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_87()
{
}

uint64_t OUTLINED_FUNCTION_22_24()
{
  *(v1 - 360) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_26(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return OSSignposter.logHandle.getter();
}

uint64_t OUTLINED_FUNCTION_22_29()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

__n128 *OUTLINED_FUNCTION_22_30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "isFirstWindow");
  result[2].n128_u16[7] = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, v8, va);
}

uint64_t OUTLINED_FUNCTION_22_34()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_35()
{
  v2 = *(v0 - 408);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_22_36()
{
}

uint64_t OUTLINED_FUNCTION_22_38()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);

  return Hasher.init(_seed:)();
}

void OUTLINED_FUNCTION_12_14()
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 65);
  *(v2 + 48) = v0;
}

uint64_t OUTLINED_FUNCTION_12_19(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_12_22@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v3 + a1, v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_26@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = a1;
  *(v1 + 56) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_28@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of CommonDirectAction(v2, v1 - a1);
}

uint64_t *OUTLINED_FUNCTION_12_30()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[10] = v1;
  v0[11] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0 + 7);
}

uint64_t OUTLINED_FUNCTION_12_31()
{
  *(v2 - 128) = v0;
  v3 = *(v1 + 8);
  return *(v2 - 192);
}

uint64_t OUTLINED_FUNCTION_12_35()
{
  result = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  return result;
}

BOOL OUTLINED_FUNCTION_108()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_41()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 *OUTLINED_FUNCTION_1_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736D657469;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_44()
{
  v3 = v0[4];
  v1[14] = v0[5];
  v1[15] = v3;
  v1[16] = v0[3];

  return outlined init with copy of SignalProviding((v0 + 51), (v1 + 17));
}

__n128 OUTLINED_FUNCTION_12_45@<Q0>(uint64_t a1@<X8>)
{
  *(v5 - 200) = a1;
  *(v5 - 192) = v1;
  v6 = *(v3 + 32);
  *(v5 - 184) = *(v3 + 16);
  *(v5 - 168) = v6;
  *(v5 - 152) = *(v3 + 48);
  *(v5 - 136) = v4;
  *(v5 - 128) = v2;
  result = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v5 - 120) = result;
  *(v5 - 104) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_54()
{
  v2 = *(v0 - 136);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_12_55()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[38];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
}

BOOL OUTLINED_FUNCTION_19_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_59(uint64_t a1)
{
  *(a1 + 8) = static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:);
  v3 = *(v2 + 56);
  return v1;
}

__n128 OUTLINED_FUNCTION_12_62()
{
  *(v0 + 152) = *(v0 + 56);
  result = *(v0 + 72);
  *(v0 + 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_63()
{
  v2 = *(v0 - 344);
}

uint64_t OUTLINED_FUNCTION_12_64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_65()
{
  v3 = *(v0 + 16);
  result = v1;
  v6 = *(v2 - 152);
  v5 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_68()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
  v4 = *v1;
  return result;
}

__n128 *OUTLINED_FUNCTION_8_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = **(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return specialized AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)(v2, v1, v5, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

__n128 *OUTLINED_FUNCTION_1_14(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x646E497473727562;
  result[2].n128_u64[1] = 0xEA00000000007865;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[38];
  v4 = v2[16];
  return v2[14];
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
  v3 = *(v2 + 728);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_28()
{
}

_OWORD *OUTLINED_FUNCTION_8_31()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;

  return outlined init with take of Any((v2 - 80), (v2 - 112));
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return dispatch thunk of DeviceState.siriLocale.getter();
}

uint64_t OUTLINED_FUNCTION_8_37(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for EmergencyCountdownModel();
}

uint64_t OUTLINED_FUNCTION_8_40()
{

  return static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
}

uint64_t OUTLINED_FUNCTION_8_41()
{

  return App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_8_45()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_47()
{
  v1 = *(*(v0 - 488) + 8);
  result = *(v0 - 464);
  v3 = *(v0 - 480);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_48()
{

  return outlined destroy of TransformerInput(v0 - 224, type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult);
}

uint64_t OUTLINED_FUNCTION_8_50()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_56()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_8_62(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

void OUTLINED_FUNCTION_8_66(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = 0x746E65746E69;
  v1[17] = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_8_67(uint64_t a1)
{
  v4 = *(v2 + 24);
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = 0x746E65746E69;
  v3[11] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_72()
{
  result = *(v0 - 144);
  v2 = *(*(v0 - 152) + 8);
  v3 = *(v0 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_75()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;

  return Array.count.getter();
}

uint64_t OUTLINED_FUNCTION_8_76@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

__n128 OUTLINED_FUNCTION_8_77(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_78@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_8_79()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[59];
  v7 = v0[60];
}

uint64_t OUTLINED_FUNCTION_8_83()
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t OUTLINED_FUNCTION_8_84()
{

  return static _SetStorage.resize(original:capacity:move:)();
}

uint64_t OUTLINED_FUNCTION_16_15@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0x43746E6572727563;
  *(v2 + 136) = 0xEB000000006C6C61;
  return 0;
}

uint64_t OUTLINED_FUNCTION_16_17()
{
  v2 = *(v0 + 136);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_19()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_16_20()
{
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[28];
  v10 = v0[25];
}

uint64_t OUTLINED_FUNCTION_16_22@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return type metadata accessor for PhoneError();
}

uint64_t OUTLINED_FUNCTION_16_23()
{
  v1 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_16_30()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 296);
  return result;
}

double OUTLINED_FUNCTION_16_31(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t *OUTLINED_FUNCTION_16_35()
{

  return specialized PhoneCallControlNLTransformer.init(cacheProvider:)(v3, v0, v1, v2);
}

void OUTLINED_FUNCTION_16_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_39()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_16_40()
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

uint64_t OUTLINED_FUNCTION_16_42()
{
  v1 = *(v0 - 136);
  v2 = *(*(v0 - 144) + 8);
  return *(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_16_43()
{

  return type metadata accessor for Image();
}

uint64_t OUTLINED_FUNCTION_16_44()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_16_45()
{

  return OSSignpostIntervalState.init(id:isOpen:)(v0, 1);
}

uint64_t OUTLINED_FUNCTION_16_46(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

void *OUTLINED_FUNCTION_16_48(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_49(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  return 0;
}

void OUTLINED_FUNCTION_16_50(char a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X5>, char a4@<W6>, uint64_t a5@<X7>, char a6@<W8>)
{
  *(v7 + 99) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 98) = a4;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 97) = a1;
}

uint64_t OUTLINED_FUNCTION_16_52()
{
  v2 = *(v0 - 176);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_16_53(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_16_54()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_16_55()
{
  result = *(v0 - 208);
  v2 = *(v0 - 200) + 8;
  v3 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_11@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[4];
  v4 = v2[5];
  return v2[3];
}

uint64_t OUTLINED_FUNCTION_52_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 144) = result;
  *(v4 - 136) = a2;
  *(v4 - 168) = v3;
  v5 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_52_10()
{

  return Reducer.init(builder:)();
}

uint64_t OUTLINED_FUNCTION_52_13()
{
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_52_16()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_52_17()
{
  v1 = *(v0 - 248);
  v3 = *(v0 - 224);
  v2 = *(v0 - 216);
  v4 = *(v0 - 232);
  v5 = *(v0 - 176);
  v6 = *(v0 - 168);
}

uint64_t OUTLINED_FUNCTION_52_18()
{
  v2 = *(v0 + 56);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

void *OUTLINED_FUNCTION_52_19@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[15] = a2;
  result[16] = 0x74736574614C7369;
  result[17] = v2;
  return result;
}

void OUTLINED_FUNCTION_52_23(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

__n128 *OUTLINED_FUNCTION_2_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x69766E496C6C6163;
  result[2].n128_u64[1] = 0xEA00000000006574;
  return result;
}

__n128 *OUTLINED_FUNCTION_2_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7069636974726170;
  result[2].n128_u64[1] = 0xEB00000000746E61;
  return result;
}

void *OUTLINED_FUNCTION_4_9()
{
  v1 = v0[16];
  result = __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  result = type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_4_11()
{
  v2 = *(v0 + 24);
  *(v1 + 80) = 0x72656C6C6163;
  *(v1 + 88) = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[5];
  result = v2[2];
  v5 = v2[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *(a1 + 8) = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
  v2 = *(v1 + 320);
  return *(v1 + 208);
}

void OUTLINED_FUNCTION_4_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_4_25(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + 120) = a1;
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, v9 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_4_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return outlined init with take of SPHConversation(&a9, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_34(uint64_t a1)
{
  *(a1 + 8) = HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
  v2 = *(v1 + 152);
  return *(v1 + 104);
}

uint64_t OUTLINED_FUNCTION_4_39()
{
  result = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  return result;
}

double OUTLINED_FUNCTION_4_42()
{
  *(v0 + 80) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_43()
{
  v1 = *(*(v0 - 360) + 8);
  result = *(v0 - 328);
  v3 = *(v0 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_45()
{
  v0 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_4_46()
{
  v2 = *(v0 + 16);
  v3 = v2[7];
  v4 = *v2;
  v5 = v2[1];

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_4_47()
{
  result = v0[45];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[48];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_49()
{
  v2 = *(v0 + 48);
  result = *(v0 + 32);
  *(v1 + 128) = 0x636E657265666E69;
  *(v1 + 136) = 0xEF656372756F5365;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = (a2 - 32) | 0x8000000000000000;

  return outlined init with copy of PhoneCallNLIntent?(v3, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_4_55()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_58()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_4_59()
{
  v3 = *(v2 + 8);
  result = v1;
  v5 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_67()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_4_69(uint64_t a1, ...)
{
  va_start(va, a1);

  return outlined init with copy of SignalProviding(v1, va);
}

uint64_t OUTLINED_FUNCTION_4_70()
{
  v1 = v0[581];
  v2 = v0[471];
  v3 = v0[569];
  v4 = v0[561];
  v5 = v0[555];
  v6 = v0[537];
  v7 = v0[531];
  v8 = v0[513];
  v9 = v0[495];
  v12 = v0[483];
  v10 = *(v0[567] + 8);
  return v0[568];
}

uint64_t OUTLINED_FUNCTION_4_72()
{
  v0 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

void OUTLINED_FUNCTION_4_73()
{
  v5 = *(v0 - 352);
  v4 = *(v0 - 344);
  v3 = *(v0 - 336);
  v2 = *(v0 - 328);
  v1 = *(v0 - 320);
}

id OUTLINED_FUNCTION_4_74(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_4_76(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SearchCallHistoryBinaryButtonModel();
}

uint64_t OUTLINED_FUNCTION_4_80(uint64_t a1)
{
  v3 = -1 << *(v1 + 32);
  v4 = a1 & ~v3;

  return _HashTable.nextHole(atOrAfter:)(v4, v1 + 56, ~v3);
}

uint64_t OUTLINED_FUNCTION_4_81@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_4_83(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  v4 = *(a3 + 104);
  return result;
}

uint64_t *OUTLINED_FUNCTION_4_84@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 - 344) = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v4 - 128));
}

uint64_t OUTLINED_FUNCTION_4_85()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_4_90(uint64_t a1, uint64_t a2, unint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, va);
}

uint64_t OUTLINED_FUNCTION_4_91()
{

  return outlined init with copy of ButtonConfigurationModel(v1, v0, type metadata accessor for ButtonConfigurationModel);
}

uint64_t OUTLINED_FUNCTION_4_93()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_25_2(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6E6F697461636F6CLL;
  a1[2].n128_u64[1] = 0xE800000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return specialized AddOrCallPromptForValueStrategy.init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)(v4, v3, v2, v1, v7, v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v5 = v2[40];
  v6 = v2[24];
  result = v2[21];
  v4[3] = v2[32];
  v4[4] = v1;
  v4[2] = v3;
  v8 = v4[5];
  return result;
}

void OUTLINED_FUNCTION_25_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, va);
}

void OUTLINED_FUNCTION_25_11(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *(v2 - 192) = v1;
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return type metadata accessor for EmergencyCountdownModel();
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return Loggable.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_25_14()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_17()
{
  result = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 - 240) = 0;
  *(v1 - 232) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_20(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_25_22@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + *(a1 + 40));
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);

  return DeviceState.isAuthenticatedForPhone.getter();
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of PhoneCallNLIntent?(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_25_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_25@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_27()
{

  return outlined init with copy of SignalProviding(v1, v0 + 208);
}

uint64_t OUTLINED_FUNCTION_25_33@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = 0x656369766564;
  v3[17] = 0xE600000000000000;
  return 0;
}

void OUTLINED_FUNCTION_25_34()
{
  v1 = v0[218];
  v2 = v0[217];
  v3 = v0[205];
  v4 = v0[199];
  v5 = v0[193];
  v6 = v0[187];
  v7 = v0[175];
}

uint64_t OUTLINED_FUNCTION_25_36(float a1)
{
  *v2 = a1;
  *(v1 + 304) = v3;

  return swift_getMetatypeMetadata();
}

uint64_t OUTLINED_FUNCTION_25_37(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 272));
}

uint64_t OUTLINED_FUNCTION_25_38()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_39()
{
  v1 = *(v0 - 88);
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return static Date.distantPast.getter();
}

uint64_t OUTLINED_FUNCTION_25_40@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 232);
  return result;
}

uint64_t type metadata accessor for PhoneCallCommonCATsSimple()
{
  result = type metadata singleton initialization cache for PhoneCallCommonCATsSimple;
  if (!type metadata singleton initialization cache for PhoneCallCommonCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallCommonCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t PhoneCallCommonCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  outlined init with copy of PhoneCallNLIntent?(a1, &v19 - v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v17 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v17;
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

void OUTLINED_FUNCTION_14_13(uint64_t a1@<X8>)
{
  v2[9] = a1;
  v2[10] = v3;
  v2[11] = (v1 - 32) | 0x8000000000000000;
}

__n128 *OUTLINED_FUNCTION_14_19(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  result[1] = a2;
  result[2].n128_u64[0] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_14_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_24()
{
  v1 = v0[68];
  v2 = v0[66];
  result = v0[54];
  v4 = *(v0[67] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_25()
{
  result = *(v0 - 352);
  v2 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

void OUTLINED_FUNCTION_13_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1)
{

  return specialized DefaultDisambiguationBuilder.shouldShowOpenContactsAppButton(parameterName:rawItems:)(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_14_29()
{

  return Loggable.wrappedValue.modify();
}

void OUTLINED_FUNCTION_14_31()
{
}

uint64_t OUTLINED_FUNCTION_14_34()
{
  v2 = v0[214];
  v3 = v0[213];
  v4 = v0[207];
  v5 = v0[201];
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_14_41(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_14_48(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 400);
  return *(v2 + 392);
}

uint64_t OUTLINED_FUNCTION_14_50()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_14_51(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_14_52@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x746E65746E69;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_53@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char a9@<W8>)
{
  *(v10 + 99) = a9;
  *(v10 + 48) = a8;
  *(v10 + 56) = v9;
  *(v10 + 98) = a7;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  *(v10 + 97) = a4;
  *(v10 + 96) = a3;
  *(v10 + 16) = result;
  *(v10 + 24) = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_14_56@<Q0>(uint64_t a1@<X8>)
{
  *(v5 - 200) = a1;
  *(v5 - 192) = v1;
  v6 = *(v4 + 32);
  *(v5 - 184) = *(v4 + 16);
  *(v5 - 168) = v6;
  *(v5 - 152) = *(v4 + 48);
  *(v5 - 136) = v3;
  *(v5 - 128) = v2;
  result = *(v4 + 80);
  v8 = *(v4 + 96);
  *(v5 - 120) = result;
  *(v5 - 104) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_57()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 304);
  v4 = *(v0 - 296);

  return Error.localizedDescription.getter();
}

uint64_t OUTLINED_FUNCTION_14_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return static DialogPhase.completion.getter();
}

uint64_t OUTLINED_FUNCTION_14_62()
{
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[46];
  v5 = v0[44];
  v6 = v0[42];
  v7 = v0[40];
  v8 = v0[37];
}

uint64_t OUTLINED_FUNCTION_14_64()
{

  return Hasher.init(_seed:)();
}

uint64_t outlined init with copy of SpeakableString?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_40(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PhoneCallNLIntent?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of PersonNameComponents?()
{
  OUTLINED_FUNCTION_1_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  return v0;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_40(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of PhoneCallNLIntent?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_9()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
}

void OUTLINED_FUNCTION_13_11(uint64_t a1@<X8>)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = 0xE900000000000074;
}

uint64_t OUTLINED_FUNCTION_13_13()
{
  result = *(v1 + 16);
  *(v1 + 16) = v0;
  v3 = *(v1 + 24);
  return result;
}

void OUTLINED_FUNCTION_13_18()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_13_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 56) = a3;
  *(v3 - 80) = a1;
  *(v3 - 72) = a2;

  return outlined init with take of Any((v3 - 80), (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_13_21()
{
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];
}

uint64_t OUTLINED_FUNCTION_13_23()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v0, 0, v1);
}

BOOL OUTLINED_FUNCTION_13_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_28(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2);
}

void OUTLINED_FUNCTION_13_31(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_13_35()
{
  result = v0[345];
  v2 = v0[333];
  v3 = *(v0[339] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_36()
{
  v3 = *(v1 - 240);
  v4 = *(v1 - 232);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, (v0 + 216));
}

uint64_t OUTLINED_FUNCTION_13_38()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_162()
{
}

uint64_t OUTLINED_FUNCTION_13_39()
{

  return String.lowercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_13_46()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_13_48()
{
  v2 = *(v0 - 256);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_80_0()
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v5 = *(v1 + 97);
  v6 = *(v1 + 96);
  *(v2 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_13_55()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_13_57()
{

  Signpost.OpenSignpost.end()();
}

uint64_t OUTLINED_FUNCTION_13_58()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_13_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, &a9, v9, v10);
}

uint64_t OUTLINED_FUNCTION_13_61@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 24);
  v3[15] = v1;
  v3[16] = v4;
  v3[17] = (a1 - 32) | 0x8000000000000000;
  return 0;
}

void *OUTLINED_FUNCTION_61_2(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

__n128 *OUTLINED_FUNCTION_13_63(__n128 *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  result[1] = a2;
  result[2].n128_u64[0] = a12;
  v13 = *(v12 + 8);
  return result;
}

uint64_t type metadata accessor for RestrictionCheckGuardFlow()
{
  result = type metadata singleton initialization cache for RestrictionCheckGuardFlow;
  if (!type metadata singleton initialization cache for RestrictionCheckGuardFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestrictionCheckGuardFlow.init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue) = 1;
  v7 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse;
  v8 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1(v8);
  (*(v9 + 32))(v3 + v7, a1);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals);
  *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_phoneCallCommonCATsSimple) = a3;
  return v3;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_166(uint64_t result)
{
  *(v2 + 144) = v1;
  *(v2 + 168) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v8 + 40) = a4;
  *(v8 + 48) = v7;
  *(v8 + 90) = a7;
  *(v8 + 89) = a6;
  *(v8 + 88) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_4()
{

  return Logger.logObject.getter();
}

uint64_t specialized SharedGlobalsProviding.flowFinder.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t SiriKitFlowFactory.makeSharingPolicyFlow()()
{
  v0 = type metadata accessor for SharingPolicyCheckFlow();
  SharingPolicyCheckFlow.__allocating_init()();
  OUTLINED_FUNCTION_8_74();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_7_75();
  return v0;
}

void OUTLINED_FUNCTION_63_2(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2] = a2;
  *a1 = a2;
}

uint64_t OUTLINED_FUNCTION_63_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v9, &a9);
}

uint64_t OUTLINED_FUNCTION_63_6()
{
  result = *(v0 - 304);
  v2 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_7()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_63_8()
{
  v3 = v0[18];
  v1[14] = v0[19];
  v1[15] = v3;
  v1[16] = v0[17];

  return outlined init with copy of SignalProviding((v0 + 51), (v1 + 17));
}

uint64_t OUTLINED_FUNCTION_63_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void OUTLINED_FUNCTION_63_14(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v3 + 144) = a2;
  *(v3 + 168) = v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = 0xEB00000000736472;
  v5 = *(v4 + 28);
}

uint64_t OUTLINED_FUNCTION_63_15()
{
  v2 = *(v0 + 40);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t outlined init with copy of MainFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainFlow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MainFlow();
  type metadata accessor for GuardFlow();
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type MainFlow and conformance MainFlow, type metadata accessor for MainFlow);
  v5 = Flow.guarded<A>(by:)();
  outlined destroy of MainFlow(a2);

  *(v3 + 16) = v5;
  return v3;
}

uint64_t outlined destroy of MainFlow(uint64_t a1)
{
  v2 = type metadata accessor for MainFlow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  OUTLINED_FUNCTION_66();
  v28 = v0;
  v2 = v1;
  v3 = type metadata accessor for OSSignpostError();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = type metadata accessor for OSSignpostID();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v21 = type metadata accessor for OSSignposter();
  v22 = OUTLINED_FUNCTION_22_26(v21, static OSSignposter.siriPhone);
  OSSignpostIntervalState.signpostID.getter();
  v27 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v28 & 1) == 0)
  {
    if (v2)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v11, v3) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v11, v3);
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v22, v27, v26, v2, v24, v25, 2u);
      OUTLINED_FUNCTION_8();

LABEL_15:

      (*(v15 + 8))(v20, v12);
      OUTLINED_FUNCTION_65();
      return;
    }

    __break(1u);
  }

  if (v2 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v23)
  {
    if (v2 >> 16 <= 0x10)
    {
      v2 = &v29;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_44_1()
{
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
}

uint64_t OUTLINED_FUNCTION_44_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{
  *(v1 + 120) = a1;
  *(v1 + 128) = 0xD000000000000015;
}

uint64_t OUTLINED_FUNCTION_44_5()
{
}

uint64_t OUTLINED_FUNCTION_44_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_16()
{
  v2 = *(v0 + 440);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_17()
{

  return specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(v2, v1, v5, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44_18()
{
  v2 = *(v0 + 48);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_44_21()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_44_22(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, v2 | 0x8000000000000000, (v3 - 120));
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallStateGuardFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance CallStateGuardFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallStateGuardFlow(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for Flow.execute() in conformance SentinelConditionalFlow<A>(uint64_t a1)
{
  v4 = *(**v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t SentinelConditionalFlow.execute()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(SentinelConditionalFlow.execute(), 0, 0);
}

uint64_t SentinelConditionalFlow.execute()()
{
  v1 = v0[5];
  v2 = v0[3];
  v0[2] = *(v0[4] + 16);
  v3 = *(v1 + 80);
  type metadata accessor for ConditionalFlow();
  swift_getWitnessTable();
  static ExecuteResponse.complete<A>(next:)();
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for Flow.execute() in conformance RestrictionCheckGuardFlow(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v8(a1);
}

uint64_t RestrictionCheckGuardFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[32] = v2;
  v1[33] = v0;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v4 = type metadata accessor for DeviceRestrictions();
  v1[35] = v4;
  v5 = *(v4 - 8);
  v1[36] = v5;
  v6 = *(v5 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = type metadata accessor for Restrictions();
  v1[39] = v7;
  v8 = *(v7 - 8);
  v1[40] = v8;
  v9 = *(v8 + 64) + 15;
  v1[41] = swift_task_alloc();

  return _swift_task_switch(RestrictionCheckGuardFlow.execute(), 0, 0);
}

{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = (v0[33] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 8))(v7, v8);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.restrictedCommands.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  Restrictions.deviceRestrictions.getter();
  static DeviceRestrictions.phoneFeaturesUnavailable.getter();
  lazy protocol witness table accessor for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, &type metadata accessor for DeviceRestrictions);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v5 + 8);
  v11(v3, v4);
  v12 = OUTLINED_FUNCTION_92();
  (v11)(v12);
  if (v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_65_0();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#RestrictionCheckFlow Encountered phoneFeaturesUnavailable restriction, serving unsupported dialog.", v16, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v18 = v0[40];
    v17 = v0[41];
    v19 = v0[39];
    v21 = v0[33];
    v20 = v0[34];
    v22 = v0[32];

    v23 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
    swift_beginAccess();
    *(v21 + v23) = 1;
    swift_retain_n();
    static DialogPhase.error.getter();
    outlined init with copy of SignalProviding(v6, (v0 + 17));
    v24 = type metadata accessor for DialogOutputFactory();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
    v28 = (*(*v27 + 112))(v27);

    v0[31] = v28;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    v29 = *(v18 + 8);
    v30 = OUTLINED_FUNCTION_92();
    v31(v30);
  }

  else
  {
    v32 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v33 = *(v32 + 8);
    v34 = OUTLINED_FUNCTION_92();
    v35(v34);
    v36 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v37 = DeviceState.isAuthenticatedForPhone.getter();
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (v37)
    {
      goto LABEL_17;
    }

    v38 = v0[41];
    v39 = Restrictions.restrictedCommands.getter();
    if (one-time initialization token for phoneCallCommand != -1)
    {
      OUTLINED_FUNCTION_1_99();
    }

    v40 = specialized Set.contains(_:)(static RestrictionCheckGuardFlow.phoneCallCommand, *algn_59A258, v39);

    if (v40 && (v41 = v0[33], (RestrictionCheckGuardFlow.isVoiceDialRestrictedRequest()() & 1) != 0))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriPhone);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v44))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_15_3(&dword_0, v45, v46, "#RestrictionCheckFlow Encountered phoneCall command restriction, prompting user to unlock before continuing.");
        OUTLINED_FUNCTION_26_0();
      }

      v48 = v0[40];
      v47 = v0[41];
      v49 = v0[39];
      v50 = v0[32];
      v51 = v0[33];

      v52 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
      swift_beginAccess();
      *(v51 + v52) = 0;
      v53 = v6[3];
      v54 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v53);
      (*(v54 + 104))(v53, v54);
      v56 = v0[15];
      v55 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v56);
      SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(v56, v55);
      static ExecuteResponse.ongoing<A>(next:)();

      v57 = *(v48 + 8);
      v58 = OUTLINED_FUNCTION_92();
      v59(v58);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    else
    {
LABEL_17:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.siriPhone);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_65_0();
        *v63 = 0;
        _os_log_impl(&dword_0, v61, v62, "#RestrictionCheckFlow All restrictions passed!", v63, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v65 = v0[40];
      v64 = v0[41];
      v66 = v0[39];
      v67 = v0[32];
      v68 = v0[33];

      v69 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
      swift_beginAccess();
      *(v68 + v69) = 0;
      static ExecuteResponse.complete()();
      (*(v65 + 8))(v64, v66);
    }
  }

  v70 = v0[41];
  v71 = v0[37];
  v72 = v0[38];
  v73 = v0[34];

  v74 = v0[1];

  return v74();
}

uint64_t OUTLINED_FUNCTION_19_15@<X0>(uint64_t a1@<X8>)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, a1 | 0x8000000000000000, (v1 - 128));
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_19_17()
{
  v1 = v0[108];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[102];
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_19_23()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_27()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[43];
  v6 = v0[39];
  v5 = v0[40];
}

uint64_t OUTLINED_FUNCTION_19_28()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, v1, v2);
}

void OUTLINED_FUNCTION_19_31(int a1@<W8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 264);

  return outlined init with take of SearchCallHistoryBinaryButtonModel(a1, a2, type metadata accessor for SearchCallHistoryBinaryButtonModel);
}

void *OUTLINED_FUNCTION_19_38(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_40(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  *(v3 - 168) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_19_42(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_45()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v5 = v0[32];
  v8 = v0 + 28;
  v6 = v0[28];
  v7 = v8[1];
}

void OUTLINED_FUNCTION_19_46(float a1)
{
  *v2 = a1;
  v3 = *(v1 + 296);
  v4 = *(v1 + 304);
}

uint64_t lazy protocol witness table accessor for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_83_0()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_83_3()
{
  result = *(v1 - 360);
  *(v1 - 472) = v0;
  v3 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_83_4()
{

  return outlined init with copy of SignalProviding(v1 - 128, v0 + 368);
}

void OUTLINED_FUNCTION_83_6()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
}

uint64_t DeviceState.isAuthenticatedForPhone.getter()
{
  v0 = type metadata accessor for UnlockDevicePolicy();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UnlockDevicePolicy.default.getter();
  v5 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t OUTLINED_FUNCTION_30_4(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_5()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return static DialogPhase.summary.getter();
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  v1 = v0[241];
  v2 = v0[240];
  v3 = v0[239];
  v4 = v0[237];
  v5 = v0[236];
  v6 = v0[230];
  v7 = v0[229];
  v8 = v0[226];
  v11 = v0[223];
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(&async function pointer to partial apply for implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

uint64_t OUTLINED_FUNCTION_30_10()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_30_12()
{
  v1 = *(v0 - 136);
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));
  v2 = *(v1 + 16);
  return *(v0 - 432);
}

uint64_t OUTLINED_FUNCTION_30_13@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(v1 - 80) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_30_14()
{
  *(v0 - 200) = 0;
  *(v0 - 208) = 0;
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
}

uint64_t OUTLINED_FUNCTION_30_18()
{

  return static CATOption.defaultMode.getter();
}

id OUTLINED_FUNCTION_30_19(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_30_21()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_30_22()
{
  *(v1 + 64) = *(v0 + 48);

  return outlined init with copy of SignalProviding(v0 + 448, v1 + 72);
}

uint64_t OUTLINED_FUNCTION_30_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_26(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_31()
{

  return outlined destroy of PhoneSnippetDataModels(v0, type metadata accessor for PhoneSnippetDataModels);
}

void OUTLINED_FUNCTION_30_32()
{
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[284];
  v5 = v0[282];
  v6 = v0[278];
  v7 = v0[277];
  v8 = v0[276];
  v9 = v0[275];
  v10 = v0[257];
}

uint64_t OUTLINED_FUNCTION_30_34()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 89);
  v7 = *(v0 + 88);

  return type metadata accessor for SpeakableString();
}

void OUTLINED_FUNCTION_33_5(uint64_t a1@<X8>)
{
  v3[36] = v1;
  v3[39] = a1;
  v3[40] = v4;
  v3[41] = (v2 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_30_35()
{
}

uint64_t OUTLINED_FUNCTION_30_36()
{
}

void OUTLINED_FUNCTION_30_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_30_38()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void OUTLINED_FUNCTION_30_39()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_30_41()
{

  return static DialogPhase.completion.getter();
}

uint64_t _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t RestrictionCheckGuardFlow.exitValue.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RestrictionCheckGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for Flow.execute() in conformance MainFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return MainFlow.execute()(a1);
}

uint64_t MainFlow.execute()(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for ExecuteResponse();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(MainFlow.execute(), 0, 0);
}

uint64_t MainFlow.execute()()
{
  v21 = v0;
  v1 = v0[20];
  MainFlow.makeNextFlow()(v0 + 2);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  outlined init with copy of SignalProviding((v0 + 2), (v0 + 7));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    swift_getDynamicType();
    v7 = _typeName(_:qualified:)();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v20);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "#MainFlow Pushing %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  outlined init with copy of SignalProviding((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0_pMd, &_s11SiriKitFlow0C0_pMR);
  type metadata accessor for AnyFlow();
  v11 = swift_dynamicCast();
  v12 = v0[24];
  if (v11)
  {
    v13 = v0[18];
    v14 = v0[24];
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v15 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    static ExecuteResponse.complete<A>(next:)();
  }

  (*(v0[23] + 32))(v0[19], v0[24], v0[22]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t MainFlow.makeNextFlow()@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v2 = v1;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhoneError();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v75 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v65 - v15;
  v16 = type metadata accessor for MainFlow();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v70 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v65 - v20;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.siriPhone);
  outlined init with copy of MainFlow(v2, v21, type metadata accessor for MainFlow);
  v74 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v69 = v6;
    v27 = v26;
    v67 = swift_slowAlloc();
    v78 = v67;
    *v27 = 136315138;
    v65 = v10;
    v28 = *(v10 + 16);
    v66 = v25;
    v29 = v76;
    v28(v76, v21, v9);
    v30 = String.init(describing:)(v29);
    v31 = v2;
    v32 = v30;
    v68 = v14;
    v34 = v33;
    outlined destroy of MainFlow(v21, type metadata accessor for MainFlow);
    v35 = v32;
    v2 = v31;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v78);
    v14 = v68;

    *(v27 + 4) = v36;
    v37 = v65;
    _os_log_impl(&dword_0, v24, v66, "#MainFlow Executing MainFlow with parse: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {

    outlined destroy of MainFlow(v21, type metadata accessor for MainFlow);
    v37 = v10;
    v28 = *(v10 + 16);
  }

  v28(v14, v2, v9);
  v38 = (*(v37 + 88))(v14, v9);
  if (v38 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_7;
  }

  if (v38 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v37 + 96))(v14, v9);
    v40 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "#MainFlow Encountered NLv3PlusServerConversion. This is unexpected!!!", v43, 2u);
    }

    v44 = v75;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v45);
    outlined destroy of MainFlow(v44, type metadata accessor for PhoneError);
    swift_willThrow();
    v46 = type metadata accessor for NLIntent();
    return (*(*(v46 - 8) + 8))(v14, v46);
  }

  else if (v38 == enum case for Parse.directInvocation(_:))
  {
    (*(v37 + 96))(v14, v9);
    v48 = v71;
    v47 = v72;
    v49 = v14;
    v50 = v73;
    (*(v72 + 32))(v71, v49, v73);
    MainFlow.makeFlowForDirectInvocation(_:)(v48);
    return (*(v47 + 8))(v48, v50);
  }

  else
  {
    if (v38 == enum case for Parse.NLv4IntentOnly(_:) || v38 == enum case for Parse.uso(_:) || v38 == enum case for Parse.ifClientAction(_:))
    {
LABEL_7:
      (*(v37 + 8))(v14, v9);
      return MainFlow.makeFlowForIntent()(v77);
    }

    (*(v37 + 8))(v14, v9);
    v53 = v70;
    outlined init with copy of MainFlow(v2, v70, type metadata accessor for MainFlow);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v78 = v57;
      *v56 = 136315138;
      v58 = v76;
      v28(v76, v53, v9);
      v59 = String.init(describing:)(v58);
      v61 = v60;
      outlined destroy of MainFlow(v53, type metadata accessor for MainFlow);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v78);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_0, v54, v55, "#MainFlow No flow for parse: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    else
    {

      outlined destroy of MainFlow(v53, type metadata accessor for MainFlow);
    }

    v63 = v75;
    *v75 = xmmword_42D060;
    *(v63 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v64);
    outlined destroy of MainFlow(v63, type metadata accessor for PhoneError);
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for PhoneError()
{
  result = type metadata singleton initialization cache for PhoneError;
  if (!type metadata singleton initialization cache for PhoneError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of MainFlow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_23_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t String.init(describing:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for USOParse();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v5 + 16))(v10, a1, v2);
  v20 = *(v5 + 88);
  v21 = OUTLINED_FUNCTION_43_3();
  if (v22(v21) == enum case for Parse.uso(_:))
  {
    v23 = *(v5 + 96);
    v24 = OUTLINED_FUNCTION_43_3();
    v25(v24);
    (*(v14 + 32))(v19, v10, v11);
    strcpy(v41, ".uso parse: ");
    BYTE5(v41[1]) = 0;
    HIWORD(v41[1]) = -5120;
    type metadata accessor for SiriNLUTypesPrintUtils();
    v39 = type metadata accessor for Siri_Nlu_External_UserParse();
    v40 = lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, &type metadata accessor for Siri_Nlu_External_UserParse);
    __swift_allocate_boxed_opaque_existential_1(&v37);
    USOParse.userParse.getter();
    v26 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v37 = v41[0];
    v38 = v41[1];
    v30 = String.init<A>(_:)();
    (*(v5 + 8))(a1, v2);
    v31 = *(v14 + 8);
    v32 = OUTLINED_FUNCTION_14_6();
    v33(v32);
  }

  else
  {
    v34 = *(v5 + 8);
    v35 = OUTLINED_FUNCTION_43_3();
    v34(v35);
    v37 = 0;
    v38 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v30 = String.init<A>(_:)();
    (v34)(a1, v2);
  }

  return v30;
}

int8x16_t OUTLINED_FUNCTION_71_1(int8x16_t *a1)
{
  result = vextq_s8(*(v1 + 152), *(v1 + 152), 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_71_7()
{
  v2 = *(v0 + 440);

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_71_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v3;
  *(result + 72) = a2;
  *(result + 80) = 0x64657373694D7369;
  *(result + 88) = 0xE800000000000000;
  *(result + 96) = v2;
  *(result + 120) = a2;
  *(result + 128) = 0x74736574614C7369;
  *(result + 136) = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_10()
{
}

uint64_t OUTLINED_FUNCTION_71_11()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_71_12()
{
  result = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  return result;
}

id OUTLINED_FUNCTION_71_13()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

uint64_t outlined destroy of MainFlow(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

PhoneCallFlowDelegatePlugin::StartCallDirectAction_optional __swiftcall StartCallDirectAction.init(from:)(Swift::OpaquePointer from)
{
  if (!*(from._rawValue + 2) || (v2 = OUTLINED_FUNCTION_0_116(), v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3), (v5 & 1) == 0))
  {
    v11 = 0u;
    v12 = 0u;

    goto LABEL_7;
  }

  outlined init with copy of Any(*(from._rawValue + 7) + 32 * v4, &v11);

  if (!*(&v12 + 1))
  {
LABEL_7:
    outlined destroy of Any?(&v11);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  v7 = v9;
  v8 = v10;
LABEL_9:
  result.value.appBundleId._object = v8;
  result.value.appBundleId._countAndFlagsBits = v7;
  result.is_nil = v6;
  return result;
}

__n128 *OUTLINED_FUNCTION_0_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x43746E6572727563;
  result[2].n128_u64[1] = 0xEB000000006C6C61;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{
  *(a1 + 8) = AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v2 = *(v1 + 280);
  return *(v1 + 232);
}

uint64_t OUTLINED_FUNCTION_0_19()
{
  v2 = *(v0 + 48);

  return outlined destroy of AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters();
}

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 96) = a2;
  *(v2 + 120) = result;
  strcpy((v2 + 128), "participants");
  *(v2 + 141) = 0;
  *(v2 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_0_28(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  v11 = (a1 + 32);

  return memcpy(v11, &__src, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_0_29()
{
  *(v3 - 152) = v2;
  *(v3 - 144) = v0;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return dispatch thunk of DeviceState.siriLocale.getter();
}

void OUTLINED_FUNCTION_0_32()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[87];
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{
  *(a1 + 8) = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
  v2 = *(v1 + 320);
  return *(v1 + 208);
}

uint64_t OUTLINED_FUNCTION_0_34()
{
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = a8;
  v11 = *(v9 + 16);
  v12 = **(v8 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, a4);
  v5 = v4[43];
  v6 = v4[40];
  v7 = v4[37];
  __swift_destroy_boxed_opaque_existential_1(v4 + 10);
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_52(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_0_53()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 192) = 0;
}

uint64_t OUTLINED_FUNCTION_0_56()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_57@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
}

uint64_t OUTLINED_FUNCTION_0_64()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_82()
{
}

void OUTLINED_FUNCTION_0_84()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}