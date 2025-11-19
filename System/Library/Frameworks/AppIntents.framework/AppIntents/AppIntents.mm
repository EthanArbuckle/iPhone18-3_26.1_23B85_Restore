uint64_t sub_18F0EB2D4()
{
  type metadata accessor for AppDependencyManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD7588);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = result;
  qword_1ED6FD788 = v0;
  return result;
}

uint64_t static AppDependencyManager.shared.getter()
{
  if (qword_1ED6FD780 != -1)
  {
    OUTLINED_FUNCTION_9_48();
  }
}

double OUTLINED_FUNCTION_8()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

double OUTLINED_FUNCTION_0_0()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

void OUTLINED_FUNCTION_32()
{

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 96) = a7;
  *(v8 - 88) = v7;

  return sub_18F520B3C();
}

BOOL OUTLINED_FUNCTION_27(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_18F1B8B40(v0, type metadata accessor for IntentContext);
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1)
{

  return sub_18F0EF1A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_1@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_9_21(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result[2] = v12;
  result[3] = v14;
  result[4] = v16;
  result[5] = v15;
  result[6] = v17;
  result[7] = v13;
  result[8] = v11;
  result[9] = a10;
  result[10] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 16) = a11;

  return sub_18F5227EC();
}

uint64_t OUTLINED_FUNCTION_9_25()
{
  v1 = *(v0 + 128);
  sub_18F0F689C(*(v0 + 136));
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_26()
{
}

uint64_t OUTLINED_FUNCTION_9_27()
{
}

uint64_t OUTLINED_FUNCTION_9_29()
{
  v5 = *v2;
  *(v1 + 24) = v2[1];
  *(v1 + 8) = v5;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_33()
{
  *(v1 - 176) = 0u;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0;
  return v0;
}

unint64_t OUTLINED_FUNCTION_9_34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_38()
{

  return sub_18F521D0C();
}

double OUTLINED_FUNCTION_9_40()
{
  *(v1 - 96) = 0;
  result = 0.0;
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 151) = 0u;
  *(v1 - 176) = 0u;
  *(v1 - 160) = 0u;
  *(v1 - 192) = 0;
  *(v1 - 224) = 0u;
  *(v1 - 208) = 0u;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  return result;
}

void OUTLINED_FUNCTION_9_43()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_9_45(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    return a10;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_9_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_51(uint64_t a1)
{

  return sub_18F3939F8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_52()
{

  return sub_18F522F1C();
}

void OUTLINED_FUNCTION_9_56(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

__n128 OUTLINED_FUNCTION_9_61(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 217);
  v4 = *(v2 + 208);
  *a2 = *(v2 + 192);
  *(a2 + 16) = v4;
  *(a2 + 25) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v5 - 208) = 0;
  *(v5 - 240) = 0u;
  *(v5 - 224) = 0u;
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_64()
{
  *(v0 + 80) = *(v0 + 144);

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_9_65()
{
  result = *(v0 + 80);
  v2 = *(v0 + 96);
  v3 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v3;
  *(v0 + 272) = result;
  *(v0 + 288) = v2;
  return result;
}

void sub_18F0EBEFC(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_41_0()
{

  return sub_18F52279C();
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t a1)
{

  return sub_18F164CE8(a1);
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return sub_18F1E0984(v0, v1, v2 - 176);
}

double OUTLINED_FUNCTION_41_8()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_18F1F41D8(a1, v9, a3, v10, a9);
}

void OUTLINED_FUNCTION_41_11(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 224) = a1;
  *(v4 - 216) = a2;
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_15()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
  return __swift_getEnumTagSinglePayload(v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_41_17()
{

  return sub_18F0FD0B4((v0 + 56), v0 + 16);
}

double OUTLINED_FUNCTION_2_0()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_42(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_7()
{

  sub_18F141818();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_18F0F713C(0x6D6572757361656DLL, 0xEF74696E55746E65);
}

void OUTLINED_FUNCTION_4_14(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2].n128_u64[0] = 0;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_18F5225CC();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return sub_18F520B4C();
}

uint64_t OUTLINED_FUNCTION_4_32()
{
  **(v1 + 296) = v0;
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_34()
{
  sub_18F0FD0B4((v0 - 96), v0 - 144);
  v1 = *(v0 - 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 - 144), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return sub_18F522C2C();
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return dynamic_cast_existential_1_conditional(v0);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_18F522BFC();
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_4_48(uint64_t a1)
{
  result = *(v1 + 152);
  *(v1 + 104) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_49(uint64_t a1)
{
  *(a1 + 8) = v1;
  v5 = *(v3 + 56);
  *(v4 + 32) = *(v3 + 48);
  *(v4 + 40) = v5;
  *(v4 + 24) = v2 & 1;
  *(v4 + 16) = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_52()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_53()
{
  sub_18F0FD0B4(v0, v1 + 504);
  v2 = *(v1 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 504), v2);
  return v2;
}

double OUTLINED_FUNCTION_4_55()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

double OUTLINED_FUNCTION_4_56()
{
  v1 = *(v0 - 200);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

id OUTLINED_FUNCTION_4_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  a15 = 0;
  a13 = 0u;
  a14 = 0u;

  return sub_18F2662F8(&a13, v15, v16);
}

uint64_t OUTLINED_FUNCTION_4_59()
{
}

uint64_t OUTLINED_FUNCTION_4_62()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_4_64()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_4_65(unint64_t *a1)
{

  return sub_18F1B8B98(a1, v1);
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return MEMORY[0x1EEDC5D38](v2 - 88, 1684827173, 0xE400000000000000, v0, v1);
}

uint64_t OUTLINED_FUNCTION_4_67()
{

  return sub_18F522C2C();
}

uint64_t OUTLINED_FUNCTION_4_68()
{
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_74(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v5;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u8[0] = v6;
  a1[3].n128_u64[1] = v4;
  a1[4].n128_u64[0] = v7;
  a1[4].n128_u64[1] = v3;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_4_76(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

void OUTLINED_FUNCTION_4_83(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  *(v8 - 73) = a8;
  *(v8 - 74) = a7;
  *(v8 - 29) = a5;
  *(v8 - 77) = a4;
  *(v8 - 38) = a3;
  *(v8 - 30) = a2;
  *(v8 - 33) = v8[5];
  *(v8 - 36) = v8[4];
  *(v8 - 32) = v8[2];
}

uint64_t OUTLINED_FUNCTION_4_84()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_87@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  return a2;
}

uint64_t *OUTLINED_FUNCTION_4_91()
{
  v4 = *(v1 + 8);
  *(v2 - 96) = *(v0 + 88);
  *(v2 - 88) = v4;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 120));
}

uint64_t OUTLINED_FUNCTION_4_93()
{

  return sub_18F129FD4(v0);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return sub_18F520ACC();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{

  return sub_18F0EF148(a1, v1);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 0, 1, a4);

  return sub_18F1D57E0();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_16_20()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_23()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  JUMPOUT(0x193ADB000);
}

id OUTLINED_FUNCTION_16_26(uint64_t a1)
{
  *(v3 - 96) = a1;

  return static AppEntity.valueType.getter(v1, v2);
}

void OUTLINED_FUNCTION_16_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_29@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 224) = &a2 - a1;

  return sub_18F520F1C();
}

uint64_t OUTLINED_FUNCTION_16_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 904) = a1;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = a9;
  return a1 + v12;
}

void OUTLINED_FUNCTION_16_34()
{

  JUMPOUT(0x193ADB260);
}

double OUTLINED_FUNCTION_16_36()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 151) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void OUTLINED_FUNCTION_56_0()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_16_44(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 368);
  v6 = *(v3 - 360);

  return sub_18F3E233C(a1, a2, v2, v5, v6);
}

char *OUTLINED_FUNCTION_16_48@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3)
{
  result = &a3 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 - 232) = v3;
  *(v4 - 280) = a1;
  return result;
}

void OUTLINED_FUNCTION_16_49()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 312);
  v4 = *(v0 - 304);

  sub_18F11D6AC(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_16_53()
{

  return sub_18F1AAF80(v0 - 120);
}

uint64_t *OUTLINED_FUNCTION_22_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *(v2 - 104) = v1;
  *(v2 - 96) = v4;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 128));
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_18F52254C();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_18F520B3C();
}

void *OUTLINED_FUNCTION_18_17(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = (a1 + 16);

  return memcpy(v12, v10, 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_18_18()
{
}

id OUTLINED_FUNCTION_18_22()
{
  v3 = *(v1 + 72);
  *(v0 + 96) = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_18_28()
{
}

uint64_t OUTLINED_FUNCTION_18_32()
{

  return swift_once();
}

void OUTLINED_FUNCTION_18_34()
{
  v2 = *(v0 + 768);
  *(v1 - 144) = *(v0 + 776);
  *(v1 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_18_37(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

void OUTLINED_FUNCTION_18_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void *OUTLINED_FUNCTION_18_41(void *result)
{
  *(v3 + 192) = result;
  result[2] = v6;
  result[3] = v2;
  result[4] = v4;
  result[5] = v5;
  result[6] = v1;
  return result;
}

double OUTLINED_FUNCTION_18_46()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0;
  return result;
}

void OUTLINED_FUNCTION_18_49()
{
  *(v0 - 38) = v0[6];
  *(v0 - 40) = v0[5];
  *(v0 - 33) = v0[4];
  *(v0 - 36) = v0[3];
}

uint64_t OUTLINED_FUNCTION_18_55()
{
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_18F521DAC();
}

uint64_t OUTLINED_FUNCTION_19_7()
{
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return sub_18F1D56D8();
}

uint64_t OUTLINED_FUNCTION_19_13()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  *(v0 + 696) = 0;
  *(v0 + 704) = 0xE000000000000000;

  return swift_getAtPartialKeyPath();
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1)
{
  *(v1 + 288) = a1;

  return type metadata accessor for IntentParameterContext();
}

uint64_t OUTLINED_FUNCTION_19_17()
{
  v2 = v0[25];
  v3 = v0[13];
  v4 = v0[3];
  v0[36] = v0[2];
  v0[37] = v4;
  v0[38] = v0[6];

  return sub_18F15F1BC(v3, v2);
}

uint64_t OUTLINED_FUNCTION_19_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_25()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_27@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + 16 * a1;
  *(v2 + 264) = *(v4 + 32);
  *(v2 + 272) = *(v4 + 40);

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_35()
{

  return swift_dynamicCast();
}

char *OUTLINED_FUNCTION_19_48@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3)
{
  result = &a3 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 - 232) = v3;
  *(v4 - 328) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_49()
{

  return sub_18F522EFC();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return sub_18F520ACC();
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x193ADD350);
}

double OUTLINED_FUNCTION_10_10@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return sub_18F19633C(v4, a1, a2, a3, v5, a4);
}

uint64_t OUTLINED_FUNCTION_14_2(int a1)
{

  return __swift_storeEnumTagSinglePayload(v1, a1 ^ 1u, 1, v2);
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

double OUTLINED_FUNCTION_5_3()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_10_17()
{

  return __swift_project_boxed_opaque_existential_1Tm((v1 - 176), v0);
}

void OUTLINED_FUNCTION_10_20()
{

  sub_18F1FBA5C(v1, v0, 2u);
}

__n128 OUTLINED_FUNCTION_10_22(uint64_t a1)
{
  result.n128_u64[0] = v2;
  result.n128_u64[1] = v3;
  *&v6 = v4;
  *(&v6 + 1) = v1;
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  return result;
}

char *OUTLINED_FUNCTION_10_23(void *a1)
{
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v1;
  return a1 + v5;
}

uint64_t OUTLINED_FUNCTION_10_26()
{
}

id OUTLINED_FUNCTION_10_28(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);

  return AppEntity.asValue.getter(v1, v2);
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v13 + 24) = v12;
  *(v13 + 16) = a10;
  return a11;
}

uint64_t OUTLINED_FUNCTION_10_37()
{

  return sub_18F521D6C();
}

void OUTLINED_FUNCTION_10_39(__n128 a1)
{
  *(v2 - 151) = a1;
  *(v2 - 176) = a1;
  *(v2 - 160) = a1;
  *(v2 - 192) = 0;
  *(v2 - 224) = a1;
  *(v2 - 208) = a1;
  v1[11] = a1;
  v1[12] = a1;
  v1[9] = a1;
  v1[10] = a1;
}

uint64_t OUTLINED_FUNCTION_10_44()
{
}

uint64_t OUTLINED_FUNCTION_10_46()
{

  return type metadata accessor for IntentContext();
}

uint64_t OUTLINED_FUNCTION_10_49(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_10_53()
{
  v4 = *(v2 + 120);
  v5 = *(v2 + 136);
  v6 = *(v2 + 104);
  *(v1 + 48) = *(v2 + 152);
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *v1 = v6;
  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
}

double OUTLINED_FUNCTION_10_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
  *(v5 - 192) = 0;
  result = 0.0;
  *(v5 - 224) = 0u;
  *(v5 - 208) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_10_58()
{
  result = *(v0 + 80);
  v2 = *(v0 + 96);
  v3 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v3;
  *(v0 + 208) = result;
  *(v0 + 224) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_18F5218AC();
}

uint64_t OUTLINED_FUNCTION_57_2()
{
}

void OUTLINED_FUNCTION_52()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_57_3()
{
}

void OUTLINED_FUNCTION_57_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_57_11(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *(v2 + *(v1 + 16)) = 0;
  *(v2 + *(v3 + 112)) = 0;
}

uint64_t OUTLINED_FUNCTION_57_13()
{

  return swift_arrayDestroy();
}

uint64_t sub_18F0EF148(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18F0EF1A8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F0EF200()
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_35_4()
{
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_18F52288C();
}

uint64_t OUTLINED_FUNCTION_35_9()
{
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_18F1F41D8(a1, v8, va, a4, a5);
}

void OUTLINED_FUNCTION_65()
{

  JUMPOUT(0x193ADD350);
}

double OUTLINED_FUNCTION_35_13()
{
  *(v0 + 448) = 0;
  result = 0.0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  return result;
}

void OUTLINED_FUNCTION_35_17()
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_35_18(uint64_t result)
{
  v1[4] = result;
  *v1 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_20(float a1)
{
  *v1 = a1;

  return sub_18F5227FC();
}

uint64_t OUTLINED_FUNCTION_35_28@<X0>(char a1@<W8>)
{
  *(v2 - 128) = a1;
  *(v2 - 176) = v1;
  return v2 - 128;
}

void sub_18F0EF6A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AppDependencyManager.DependencyProvider();

  sub_18F0EF8E4(a3, a4, a5);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  sub_18F0EFC04();
  *a1 = v9;
}

uint64_t AppDependencyManager.add<A>(key:dependency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;

  _s10AppIntents0A17DependencyManagerC3add3key10dependencyys11AnyHashableVSg_xyYaKcts8SendableRzlF_0(a1, &unk_18F55B380, v8, a4);
}

uint64_t sub_18F0EF7E8()
{

  OUTLINED_FUNCTION_8_48();

  return swift_deallocObject();
}

void _s10AppIntents0A17DependencyManagerC3add3key10dependencyys11AnyHashableVSg_xyYaKcts8SendableRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_18F116970(a1, v11, &qword_1EACD0650);
  if (!v12)
  {
    sub_18F0EF1A8(v11, &qword_1EACD0650);
    sub_18F0EFA0C();
  }

  v9 = sub_18F52271C();
  sub_18F0EF654(v11);
  v10 = *(v5 + 16);
  os_unfair_lock_lock((v10 + 24));
  sub_18F0EF6A8((v10 + 16), v9, a2, a3, a4);
  os_unfair_lock_unlock((v10 + 24));
}

uint64_t sub_18F0EF8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_48();
  v6 = swift_allocObject();
  sub_18F0EFB1C(a1, a2, a3);
  return v6;
}

void sub_18F0EF934()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_60_6();
  v5 = v4;
  v7 = OUTLINED_FUNCTION_7_34(v6, v4);
  sub_18F0EFA5C(v7);
  OUTLINED_FUNCTION_0_68();
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  if (OUTLINED_FUNCTION_30_21())
  {
    v13 = OUTLINED_FUNCTION_59_4();
    sub_18F0EFA5C(v13);
    OUTLINED_FUNCTION_14_5();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  v16 = *v1;
  if (v12)
  {
    *(*(v16 + 56) + 8 * v11) = v0;
    OUTLINED_FUNCTION_16();
  }

  else
  {
    sub_18F0EFAF8(v11, v5, v0, v16);
    OUTLINED_FUNCTION_16();
  }
}

unint64_t sub_18F0EFA98(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_18F0EFAF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_45_10(a1, a2, a3, a4);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v6;
  }

  return result;
}

void *sub_18F0EFB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v10, 0, sizeof(v10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7610);
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  sub_18F116970(v10, v7 + 16, &qword_1EACD0430);
  sub_18F0EF1A8(v10, &qword_1EACD0430);
  v3[4] = v7;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v3[2] = &unk_18F55B560;
  v3[3] = v8;
  return v3;
}

__n128 OUTLINED_FUNCTION_88_0()
{
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  result = *(v1 + 32);
  *(v0 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_88_6(uint64_t a1)
{

  return sub_18F1A0DE4(a1, v1);
}

void OUTLINED_FUNCTION_88_7(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

BOOL OUTLINED_FUNCTION_88_11()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_59_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return sub_18F0FECD4(v0 - 152, v0 - 120);
}

BOOL OUTLINED_FUNCTION_59_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_59_11()
{
}

uint64_t OUTLINED_FUNCTION_59_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;
  *(v3 - 216) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_13()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_8_11()
{

  sub_18F166ED0();
}

double OUTLINED_FUNCTION_8_12()
{
  *(v0 + 184) = 0;
  result = 0.0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  v1 = *(v0 + 872);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, *(v0 + 848));
  return v1;
}

id OUTLINED_FUNCTION_8_16(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_8_23()
{

  return type metadata accessor for IntentReminderTask(0);
}

double OUTLINED_FUNCTION_11_2()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_18F5219CC();
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_39()
{

  return sub_18F521D6C();
}

void OUTLINED_FUNCTION_8_41(__n128 a1)
{
  v4 = v2 + v3[24];
  *(v4 + 32) = a1;
  *(v4 + 48) = a1;
  *v4 = a1;
  *(v4 + 16) = a1;
  *(v4 + 64) = *(v1 + 16);
  *(v4 + 80) = 0;
  v5 = (v2 + v3[25]);
  v5[2].n128_u64[0] = 0;
  *v5 = a1;
  v5[1] = a1;
  v6 = v3[27];
  *(v1 + 8) = v3[26];
  *(v1 + 16) = v6;
  *(v2 + v6) = 0;
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_45()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_8_46()
{

  return sub_18F0F713C(0x6F697463656C6573, 0xEE0074696D694C6ELL);
}

void OUTLINED_FUNCTION_8_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 16) = v12;
  v13 = a11 + 16 * v11;
  *(v13 + 32) = 1702125892;
  *(v13 + 40) = 0xE400000000000000;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_8_50()
{
}

uint64_t OUTLINED_FUNCTION_8_51()
{

  return sub_18F522EFC();
}

uint64_t OUTLINED_FUNCTION_8_53()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_8_55(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_8_56()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_8_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(v21 + 160) = a21;
  sub_18F0FD0B4((v21 + 232), v21 + 176);
  v22 = *(v21 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v21 + 176), v22);
  return v22;
}

uint64_t OUTLINED_FUNCTION_8_62()
{

  return sub_18F142A38(v0);
}

double OUTLINED_FUNCTION_8_63@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  __swift_storeEnumTagSinglePayload(*(a2 - 256), 1, 1, a1);
  *(v2 - 208) = 0;
  result = 0.0;
  *(v2 - 240) = 0u;
  *(v2 - 224) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_64()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_67()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_68(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a2;

  return sub_18F520B3C();
}

BOOL OUTLINED_FUNCTION_67_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_85_0()
{
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_89_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;

  return sub_18F520E6C();
}

double OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v4 - 192) = 0;
  result = 0.0;
  *(v4 - 224) = 0u;
  *(v4 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_18F16CC14(v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_10()
{

  sub_18F141818();
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return sub_18F103A00(v0, type metadata accessor for Annotation);
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return sub_18F522D5C();
}

void *OUTLINED_FUNCTION_0_25@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v4 - 176) = 0;
  result = 0.0;
  *(v4 - 208) = 0u;
  *(v4 - 192) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return sub_18F0F713C(0x79636E6572727563, 0xED00007365646F43);
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return sub_18F522BFC();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_18F10C138(sub_18F229340, v8, v9, v10, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6[5] = v4;
  v6[6] = v3;
  v6[4] = v2;
  return v5;
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1)
{
  *(v1 - 184) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t a1)
{
  *(v1 - 184) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return sub_18F522BFC();
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_64()
{

  return sub_18F522A3C();
}

void OUTLINED_FUNCTION_0_69()
{
  *(v0 - 120) = 43020312340000;
  *(v0 - 112) = 0xE600000000000000;

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18F2E683C(a5);
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_0_80()
{

  return sub_18F52288C();
}

uint64_t OUTLINED_FUNCTION_0_85@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;

  return sub_18F522BFC();
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_0_91(uint64_t a1)
{

  return sub_18F33A008(a1);
}

uint64_t OUTLINED_FUNCTION_0_94()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_99()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_102()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_105()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_0_114()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_115()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_116(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

size_t OUTLINED_FUNCTION_0_118(void *a1)
{
  result = _swift_stdlib_malloc_size_1(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

__n128 OUTLINED_FUNCTION_0_119()
{
  result = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v1 - 144) = result;
  *(v1 - 128) = 0x7FF8000000000000;
  *(v1 - 120) = v3;
  *(v1 - 104) = 0x7FF8000000000000;
  *(v1 - 152) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_121()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_122()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_123()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_127()
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_0_128()
{
  v3 = *(v2 - 72);
  *(v3 + 16) = v0;
  return v3 + ((*(*(v2 - 112) + 80) + 32) & ~*(*(v2 - 112) + 80)) + *(*(v2 - 112) + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_0_130()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_132()
{

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_0_134()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_136()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_137(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 - 32) = a7;
  *(v7 - 71) = a6;
  *(v7 - 75) = a5;
  *(v7 - 79) = a3;
  *(v7 - 41) = a2;
  *(v7 - 31) = result;
  *(v7 - 37) = v7[5];
  *(v7 - 39) = v7[4];
  *(v7 - 33) = v7[3];
  *(v7 - 35) = v7[2];
  return result;
}

__n128 OUTLINED_FUNCTION_0_138@<Q0>(__n128 *a1@<X8>)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u8[0];
  v4 = a1[2].n128_u8[1];
  v1->n128_u64[0] = a1->n128_u64[0];
  v1->n128_u64[1] = v2;
  result = a1[1];
  v1[1] = result;
  v1[2].n128_u8[0] = v3;
  v1[2].n128_u8[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_139()
{
  sub_18F11D6AC(*(v2 - 296), *(v2 - 288), *(v2 - 280));
  sub_18F11D6AC(v0, v1, *(v2 - 264));
  return *(v2 - 272);
}

uint64_t OUTLINED_FUNCTION_0_140()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_141()
{
  v1[12] = sub_18F10D6F4;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_0_143()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return sub_18F520B3C();
}

void OUTLINED_FUNCTION_22_5()
{
  sub_18F0F2164(v0, 1);

  sub_18F0F2164(v0, 1);
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_18F520B3C();
}

void OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_18F31CE34(a1, a2, a3, a4, a5, v23, v22, v21, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_18F18C388(a1, a1);
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t a1)
{
  result = *(v1 + 112);
  *(v1 + 32) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_18F522A7C();
}

uint64_t OUTLINED_FUNCTION_22_19()
{

  return sub_18F0FD724(v0 + 16, v0 + 136);
}

void OUTLINED_FUNCTION_22_23()
{
  v3 = v2[125];
  v4 = v2[124];
  v2[103] = v2[123];
  v2[104] = v4;
  v2[105] = v1;
  v2[106] = v0;
  v2[111] = v3;
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_27()
{

  return sub_18F520ACC();
}

uint64_t OUTLINED_FUNCTION_22_34()
{
}

uint64_t OUTLINED_FUNCTION_22_37()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_22_39()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_22_40()
{
  v2 = *(v0 + 80);

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 56), v2);
}

BOOL OUTLINED_FUNCTION_22_42(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_22_46(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(v8 - 248) = a8;
  *(v8 - 268) = a7;
  *(v8 - 272) = a6;
  *(v8 - 292) = a4;
  *(v8 - 288) = a3;
  *(v8 - 240) = a2;
}

uint64_t OUTLINED_FUNCTION_22_47()
{

  return sub_18F5219CC();
}

void sub_18F0F2164(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_18F0F2170(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F0F21A8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_18F0F21E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_18F520B3C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_18F0F2248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_18F0F22EC()
{
  result = _s5ImageV7StorageOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18F0F2358()
{
  sub_18F0F241C();
  if (v0 <= 0x3F)
  {
    sub_18F0F249C();
    if (v1 <= 0x3F)
    {
      sub_18F0F252C();
      if (v2 <= 0x3F)
      {
        sub_18F0F279C();
        if (v3 <= 0x3F)
        {
          sub_18F0F28C0();
          if (v4 <= 0x3F)
          {
            sub_18F0F293C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_18F0F241C()
{
  if (!qword_1ED6FF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DC8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FF058);
    }
  }
}

void sub_18F0F249C()
{
  if (!qword_1ED6FEF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9900);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FEF58);
    }
  }
}

void sub_18F0F252C()
{
  if (!qword_1ED6FEFC8)
  {
    sub_18F0F21A8(255, &qword_1ED6FEFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DC8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED6FEFC8);
    }
  }
}

uint64_t type metadata accessor for DisplayRepresentation()
{
  result = qword_1ED6FF1B8;
  if (!qword_1ED6FF1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F0F2610()
{
  v0 = sub_18F520B3C();
  if (v1 <= 0x3F)
  {
    sub_18F0F2248(319, qword_1ED6FF5F8, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_18F0F2248(319, &qword_1ED6FF220, type metadata accessor for DisplayRepresentation.Image, MEMORY[0x1E69E6720]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_18F0F2B68();
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_18F0F2BB8();
      if (v7 > 0x3F)
      {
        return v4;
      }

      sub_18F0F2248(319, &qword_1ED6FEFB0, MEMORY[0x1E6968E10], MEMORY[0x1E69E62F8]);
      if (v8 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_18F0F279C()
{
  if (!qword_1ED6FEF60)
  {
    MEMORY[0x1EEE9AC00]();
    sub_18F520C8C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DC8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED6FEF60);
    }
  }
}

void sub_18F0F28C0()
{
  if (!qword_1ED6FEFB8)
  {
    sub_18F0F21A8(255, &qword_1ED6FEFC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6FEFB8);
    }
  }
}

void sub_18F0F293C()
{
  if (!qword_1ED6FEFD8)
  {
    type metadata accessor for LNImageISIconType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6FEFD8);
    }
  }
}

void sub_18F0F29BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_53();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_18F0F2A24()
{
  sub_18F0F29BC(319, qword_1ED6FD8B8, &qword_1EACD3368);
  if (v0 <= 0x3F)
  {
    sub_18F0F2AEC();
    if (v1 <= 0x3F)
    {
      sub_18F0F29BC(319, qword_1ED6FD880, &qword_1EACD32D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_18F0F2AEC()
{
  result = qword_1ED6FD8B0;
  if (!qword_1ED6FD8B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED6FD8B0);
  }

  return result;
}

void sub_18F0F2B68()
{
  if (!qword_1ED6FEF40)
  {
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6FEF40);
    }
  }
}

void sub_18F0F2BB8()
{
  if (!qword_1ED6FEEC8)
  {
    sub_18F0F21A8(255, qword_1ED6FEED0);
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6FEEC8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return static AppValue._identifier.getter(v1, v0);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

uint64_t *OUTLINED_FUNCTION_17_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 296);
  *(v1 - 104) = v3;
  *(v1 - 96) = v4;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

void OUTLINED_FUNCTION_17_8(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 128) = v1;
  *(v2 - 120) = v3;
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t result)
{
  *(v2 + 40) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_18F522EFC();
}

uint64_t OUTLINED_FUNCTION_17_15()
{

  return sub_18F1D56D8();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  v1 = v0[39];
  __swift_storeEnumTagSinglePayload(v0[56], 0, 1, v0[47]);
  return v1;
}

uint64_t *OUTLINED_FUNCTION_17_19()
{
  v2 = *(v0 - 264);
  *(v0 - 104) = *(v0 - 272);
  *(v0 - 96) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_17_25@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 264) = v1;
  v3 = *(a1 + v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm((a1 + v1), *(a1 + v1 + 24));
  return v3 + 112;
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_33()
{

  return sub_18F52289C();
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_37()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_44@<X0>(uint64_t a1@<X8>)
{
  v1[66] = v2;
  v1[65] = a1;
  return v1[61];
}

char *OUTLINED_FUNCTION_17_47@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3)
{
  result = &a3 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 - 248) = v3;
  *(v4 - 304) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_49(uint64_t a1)
{
  *(a1 + 16) = *(v2 + 160);
  *(a1 + 32) = v1;

  return sub_18F521DBC();
}

uint64_t OUTLINED_FUNCTION_17_52()
{

  return sub_18F1AAF80(v0 - 120);
}

void OUTLINED_FUNCTION_1_14()
{

  sub_18F141818();
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_1_21@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *(v3 + 32) = *(v2 + 32);
  result = *(v2 + 16);
  *v3 = *v2;
  *(v3 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_18F0F713C(0x766973756C636E69, 0xEE0065676E615265);
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return sub_18F522C2C();
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_1_30(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  return a1 + v4;
}

uint64_t OUTLINED_FUNCTION_1_33(float a1)
{
  *v1 = a1;

  return EntityIdentifier.viewDebugDescription.getter();
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1)
{
  *(v1 + 288) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_1_40()
{
  sub_18F0FD0B4((v0 - 96), v0 - 144);
  v1 = *(v0 - 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 - 144), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_41@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_18F522BFC();
}

__n128 OUTLINED_FUNCTION_1_46()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  *(v1 - 32) = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return sub_18F26BF78(v0, type metadata accessor for IntentChoiceOption);
}

void OUTLINED_FUNCTION_1_55()
{
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
}

void OUTLINED_FUNCTION_1_58(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
  *(v2 + 12) = 2080;
}

uint64_t OUTLINED_FUNCTION_1_62()
{

  return sub_18F5228DC();
}

void OUTLINED_FUNCTION_1_68(__n128 a1)
{
  v4 = v2 + *(v3 + 96);
  *(v4 + 32) = a1;
  *(v4 + 48) = a1;
  *v4 = a1;
  *(v4 + 16) = a1;
  *(v4 + 64) = *v1;
  *(v4 + 80) = 0;
  v5 = (v2 + *(v3 + 100));
  v5[2].n128_u64[0] = 0;
  *v5 = a1;
  v5[1] = a1;
}

uint64_t OUTLINED_FUNCTION_1_70(uint64_t a1, uint64_t a2)
{
  *a2 = 6;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 7;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_75()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_77()
{
  v1[12] = sub_18F354F08;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_1_78()
{

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_1_80()
{
  v1 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v1);
  return v1;
}

void OUTLINED_FUNCTION_1_82()
{

  sub_18F141818();
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return sub_18F11CEE0(v0, type metadata accessor for DisplayRepresentation.Image);
}

void OUTLINED_FUNCTION_1_87()
{

  sub_18F13FE10();
}

double OUTLINED_FUNCTION_1_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v4 - 192) = 0;
  result = 0.0;
  *(v4 - 224) = 0u;
  *(v4 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_94(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

__n128 OUTLINED_FUNCTION_1_98()
{
  v3 = *(v1 + 56);
  *(v2 - 208) = v0;
  *(v2 - 200) = *(v1 + 24);
  result = *(v1 + 40);
  *(v2 - 184) = result;
  *(v2 - 168) = v3;
  return result;
}

void OUTLINED_FUNCTION_1_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 96) = &a9 - v9;
  *(v11 - 112) = v10;
  *(v11 - 104) = v10 + 32;
}

uint64_t OUTLINED_FUNCTION_1_102()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_1_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v11[v12[18]] = 1;
  v11[v12[20]] = 2;
  v13 = &v11[v12[21]];
  result = 0.0;
  *(v13 + 25) = 0u;
  *v13 = 0u;
  v13[1] = 0u;
  v15 = &v11[v12[22]];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = &v11[v12[23]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 1;
  v16[32] = 0;
  v17 = &v11[v12[24]];
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = a11;
  v17[80] = 0;
  v18 = &v11[v12[25]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *&v11[v12[27]] = 0;
  v19 = &v11[v12[29]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *v11 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_108()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_1_114(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(v8 - 33) = a8;
  *(v8 - 77) = a7;
  *(v8 - 81) = a6;
  *(v8 - 87) = a4;
  *(v8 - 45) = a3;
  *(v8 - 32) = a2;
  *(v8 - 31) = result;
  *(v8 - 40) = v8[6];
  *(v8 - 42) = v8[5];
  *(v8 - 35) = v8[4];
  *(v8 - 38) = v8[3];
  return result;
}

void OUTLINED_FUNCTION_1_115(uint64_t a1@<X8>)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  *(v1 + 32) = 2;
}

uint64_t OUTLINED_FUNCTION_1_120()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_126(uint64_t a1, void *a2)
{
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v3;
  a2[5] = v2;
}

void *sub_18F0F4374()
{
  type metadata accessor for AppManager();
  result = sub_18F0F4DA8();
  off_1ED6FF6C8 = result;
  return result;
}

id sub_18F0F43A4()
{
  if ([objc_opt_self() currentProcessHasMachLookup_])
  {
    return [objc_opt_self() isAppMetadataViaXPCEnabled];
  }

  if (qword_1ED6FED58 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707790);
  v2 = sub_18F52163C();
  v3 = sub_18F52222C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_126();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_18F5218DC();
    v8 = sub_18F11897C(v6, v7, &v11);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_24_45(&dword_18F0E9000, v9, v10, "Process sandbox does not have access to %s, this is needed for efficient metadata lookup");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  return 0;
}

uint64_t sub_18F0F4508(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_21_42();
  *(v5 + 16) = xmmword_18F540420;
  *(v5 + 32) = 0;
  v10 = type metadata accessor for AppNotificationEventClient();
  v11 = swift_allocObject();
  *(v4 + 64) = v10;
  *(v4 + 72) = &off_1F0314658;
  *(v4 + 40) = v11;
  type metadata accessor for AppViewBridgeAggregator();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 112) = MEMORY[0x1E69E7CC0];
  *(v4 + 80) = v12;
  *(v4 + 112) = &type metadata for IntentStatePersistenceClient;
  *(v4 + 120) = &off_1F0305648;
  _s9TypeCacheCMa();
  swift_allocObject();
  v14 = sub_18F0F47D4();
  *(v4 + 128) = 0;
  *(v4 + 136) = v14;
  *(v4 + 192) = 0;
  v15 = MEMORY[0x1E69E7CC8];
  *(v4 + 200) = MEMORY[0x1E69E7CC8];
  *(v4 + 208) = 0;
  *(v4 + 216) = v15;
  *(v4 + 224) = 0;
  *(v4 + 232) = v15;
  *(v4 + 240) = 0;
  *(v4 + 248) = v15;
  *(v4 + 256) = 0;
  type metadata accessor for UndoManagerCache();
  v16 = swift_allocObject();
  sub_18F520E6C();
  OUTLINED_FUNCTION_1_99();
  sub_18F0F48B8(v17, v18);
  *(v16 + 16) = sub_18F5216CC();
  *(v4 + 264) = v16;
  *(v4 + 272) = 0;
  *(v4 + 280) = v13;
  *(v4 + 288) = sub_18F5216CC();
  v22 = a2(0);
  v23 = sub_18F0F48B8(a3, a4);
  *&v21 = v6;
  *v24 = 0;
  memset(&v24[8], 0, 40);
  sub_18F0FD0B4(&v21, &v24[8]);
  v19 = *&v24[16];
  *(v4 + 144) = *v24;
  *(v4 + 160) = v19;
  *(v4 + 176) = *&v24[32];
  return v4;
}

uint64_t static AppManager.shared.getter()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }
}

uint64_t sub_18F0F47D4()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v2;
  *(v0 + 32) = v2;
  *(v0 + 40) = v2;
  *(v0 + 48) = v2;
  *(v0 + 56) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = v2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  *(v0 + 104) = 1;
  return result;
}

uint64_t sub_18F0F4828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F0F4870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18F0F48B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18F0F4900(uint64_t a1)
{
  result = sub_18F0F4928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F0F4928()
{
  result = qword_1ED6FF760;
  if (!qword_1ED6FF760)
  {
    type metadata accessor for AppManagerXPCCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FF760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_81()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return sub_18F5227FC();
}

unint64_t OUTLINED_FUNCTION_64_2()
{
  v2 = v0[88];
  v0[91] = v0[87];
  v0[92] = v2;

  return sub_18F12A000();
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_64_5(uint64_t result, uint64_t a2)
{
  v2[14] = v3;
  v2[15] = result;
  v2[16] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_7()
{

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

unint64_t OUTLINED_FUNCTION_64_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F11897C(0x7469746E45707041, 0xE900000000000079, va);
}

id OUTLINED_FUNCTION_64_12(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

double OUTLINED_FUNCTION_64_13()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 160) = 0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

void OUTLINED_FUNCTION_24_3()
{

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_18F0FF690(a19, v19 + a15, a3);
}

void OUTLINED_FUNCTION_52_4()
{

  sub_18F116B3C();
}

void OUTLINED_FUNCTION_52_10(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = a6;
  ++*(v6 + 16);
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return sub_18F5228DC();
}

void OUTLINED_FUNCTION_52_12(__n128 a1)
{
  v4 = v2 + *(v3 + 96);
  *(v4 + 32) = a1;
  *(v4 + 48) = a1;
  *v4 = a1;
  *(v4 + 16) = a1;
  *(v4 + 64) = *v1;
  *(v4 + 80) = 0;
  v5 = (v2 + *(v3 + 100));
  v5[2].n128_u64[0] = 0;
  *v5 = a1;
  v5[1] = a1;
}

uint64_t sub_18F0F4DA8()
{
  if (sub_18F0F43A4())
  {
    type metadata accessor for AppManagerXPCCache();
    OUTLINED_FUNCTION_4_29();
    swift_allocObject();
    v0 = sub_18F461440();
    swift_allocObject();
    v1 = &unk_1ED6FF318;
    v2 = type metadata accessor for AppManagerXPCCache;
    v3 = type metadata accessor for AppManagerXPCCache;
  }

  else
  {
    type metadata accessor for AppManagerStaticCache();
    OUTLINED_FUNCTION_4_29();
    v0 = swift_allocObject();
    *(v0 + 16) = 0;
    *(v0 + 24) = MEMORY[0x1E69E7CD0];
    swift_allocObject();
    v1 = &unk_1EACCEC88;
    v2 = type metadata accessor for AppManagerStaticCache;
    v3 = type metadata accessor for AppManagerStaticCache;
  }

  return sub_18F0F4508(v0, v2, v1, v3);
}

uint64_t sub_18F0F4ECC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9948);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

size_t OUTLINED_FUNCTION_3_5(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_3_12@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{

  return sub_18F1961EC(v4, a1, a2, a3, a3 + 1, a4);
}

double OUTLINED_FUNCTION_3_14@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_18F11CD84(v0, type metadata accessor for IntentPerson);
}

uint64_t *OUTLINED_FUNCTION_3_23()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 776);
  sub_18F0FD0B4((v0 + 256), v0 + 16);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
  *(v0 + 400) = v1;
  *(v0 + 408) = *(v2 + 24);

  return __swift_allocate_boxed_opaque_existential_1((v0 + 376));
}

void OUTLINED_FUNCTION_3_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_5(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_3_33()
{

  return sub_18F262604(sub_18F263CEC);
}

void OUTLINED_FUNCTION_3_41()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return sub_18F522CAC();
}

uint64_t OUTLINED_FUNCTION_3_48(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = v3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  a11 = &a14;

  sub_18F113CBC(v14, &a9, v15);
}

id OUTLINED_FUNCTION_3_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23)
{
  v37 = *(v30 - 104);
  v36 = *(v30 - 128);
  v33 = *(v30 - 120);
  v32 = *(v30 - 112);
  v34 = *(v30 - 96);

  return sub_18F316A78(a20, a21, a22, v32, v33, v34, v23, a19, v36, 0, a23, v37, v27, v28, v26, v25, v24, v29);
}

uint64_t OUTLINED_FUNCTION_3_52(uint64_t a1)
{
  v5 = *(a1 + 68);
  *(v1 + 24) = v5;
  result = __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v3);
  *(v2 + *(a1 + 72)) = 1;
  return result;
}

void OUTLINED_FUNCTION_3_54()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_3_56()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_59()
{
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v1);
  return v1;
}

void OUTLINED_FUNCTION_3_60(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_18F5218DC();
}

uint64_t OUTLINED_FUNCTION_3_72()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_76(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_3_79()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_84()
{
  *(v0 + 48) = v1;

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_3_85()
{
  *(v0 + 144) = 4;
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 7;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_87(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 - 30) = a7;
  *(v7 - 69) = a6;
  *(v7 - 73) = a5;
  *(v7 - 79) = a3;
  *(v7 - 39) = a2;
  *(v7 - 29) = result;
  *(v7 - 36) = v7[5];
  *(v7 - 38) = v7[4];
  v8 = v7[2];
  *(v7 - 31) = v7[3];
  *(v7 - 34) = v8;
  return result;
}

void OUTLINED_FUNCTION_3_88(uint64_t a1@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  *(a1 + 32) = 2;
}

__n128 OUTLINED_FUNCTION_3_90()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  result = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 112) = result;
  *(v0 + 128) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_96()
{

  return sub_18F52288C();
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_16()
{
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  *(v0 - 64) = 3;
  return result;
}

void OUTLINED_FUNCTION_2_17()
{
  *(v1 - 96) = v0;

  sub_18F3AA158();
}

__n128 OUTLINED_FUNCTION_2_26@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *v2;
  v5 = *(v2 + 16);
  *v3 = *v2;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_2_35()
{
  v1[83] = 0x7265706F72707B24;
  v1[84] = 0xEA00000000007974;
  v1[94] = v0;
}

void OUTLINED_FUNCTION_2_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_18F1239A0(v3, v2, v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_2_49()
{
  v2 = v0[27];
  v3 = v0[30];
  v4 = v0[26];

  return sub_18F2664B4(v3, (v0 + 2), v4, v2);
}

uint64_t OUTLINED_FUNCTION_2_50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v4 + 160);
  *(v3 + a2) = v2;

  return sub_18F26BFD8(a1, v6, type metadata accessor for _IntentChoiceOption);
}

uint64_t OUTLINED_FUNCTION_2_51()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_58()
{
  result = *(v2 - 112);
  *(v1 + *(v0 + 28)) = result;
  *(v1 + *(v0 + 32)) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_62@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;

  return type metadata accessor for AppIntentError.Context(0);
}

double OUTLINED_FUNCTION_2_70()
{
  v2 = (v0 + *(v1 + 84));
  result = 0.0;
  *(v2 + 25) = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v4 = v0 + *(v1 + 88);
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_2_71()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_2_72()
{

  return sub_18F522BFC();
}

uint64_t OUTLINED_FUNCTION_2_77()
{
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_79(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

id OUTLINED_FUNCTION_2_83(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  *(v15 + 16) = a14;
  *(v15 + 32) = a13;
  *(v15 + 48) = v21;
  *(v15 + 56) = v22;

  return [a1 a2];
}

__n128 OUTLINED_FUNCTION_2_85(uint64_t a1)
{
  *(v3 + 56) = a1;
  result = *(v3 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

void OUTLINED_FUNCTION_2_88()
{

  JUMPOUT(0x193ADC4F0);
}

uint64_t OUTLINED_FUNCTION_2_90(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_92()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_2_106(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(v8 - 31) = a8;
  *(v8 - 73) = a7;
  *(v8 - 77) = a6;
  *(v8 - 85) = a4;
  *(v8 - 42) = a3;
  *(v8 - 30) = a2;
  *(v8 - 38) = v8[6];
  *(v8 - 40) = v8[5];
  *(v8 - 33) = v8[4];
  *(v8 - 36) = v8[3];
}

uint64_t OUTLINED_FUNCTION_2_109(uint64_t result)
{
  *(v2 + 136) = result;
  *v1 = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_110()
{

  return sub_18F0F713C(0x707369446C6F6F62, 0xEF656D614E79616CLL);
}

uint64_t OUTLINED_FUNCTION_2_111()
{

  return sub_18F522D5C();
}

uint64_t sub_18F0F66DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_18F52165C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = *a3;
  if (*a3)
  {
    sub_18F521A2C();
    result = *MEMORY[0x1E69AC200];
    if (*MEMORY[0x1E69AC200])
    {
      sub_18F521A2C();
      return sub_18F52164C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F0F676C()
{
  result = sub_18F520E6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F0F67EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520E6C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t AppViewIntentNode.init<A>(intent:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v8 = sub_18F0F68AC(a3, a4, a5, a6);
  v10 = v9;
  v11 = OUTLINED_FUNCTION_22();
  result = sub_18F0F689C(v11);
  a7[2] = v8;
  a7[3] = v10;
  return result;
}

uint64_t sub_18F0F689C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_18F0F68AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = a1;
    v8[5] = a2;
    v9 = &unk_18F560B28;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_22();
  sub_18F0F693C(v10);
  return v9;
}

uint64_t sub_18F0F693C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18F0F694C()
{

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A6Intent_pAA0C6Result_ps5Error_pIeghHnrzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t AppManager.incrementViewIntentCount(_:)(uint64_t a1)
{
  v2 = static AppIntent._identifier.getter(a1);
  v4 = v3;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v1 + 288);
  *(v1 + 288) = 0x8000000000000000;
  v5 = sub_18F0F713C(v2, v4);
  if (__OFADD__(*(v18 + 16), (v6 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4818);
  if ((sub_18F5229DC() & 1) == 0)
  {
LABEL_5:
    *(v1 + 288) = v18;
    if ((v8 & 1) == 0)
    {
      v11 = OUTLINED_FUNCTION_67_0();
      sub_18F2C0EC8(v11, v12, v4, 0, v18);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    v13 = *(v18 + 56);
    v14 = *(v13 + 8 * v7);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      *(v13 + 8 * v7) = v16;
      swift_endAccess();
    }

    goto LABEL_10;
  }

  v9 = sub_18F0F713C(v2, v4);
  if ((v8 & 1) == (v10 & 1))
  {
    v7 = v9;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_5()
{
  result = v0;
  *(v2 - 360) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_6()
{
  v3 = *(v1 - 232);

  return sub_18F0EF148(v3, v0);
}

uint64_t OUTLINED_FUNCTION_33_7()
{
}

uint64_t OUTLINED_FUNCTION_33_9()
{
}

void OUTLINED_FUNCTION_33_11()
{

  sub_18F116B3C();
}

id OUTLINED_FUNCTION_33_14()
{

  return sub_18F262604(v0);
}

void OUTLINED_FUNCTION_33_15()
{

  JUMPOUT(0x193ADB000);
}

double OUTLINED_FUNCTION_61()
{
  result = 0.0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DEA8](v4 + 16, 0, a3, v3, v5, v4 + 776);
}

uint64_t OUTLINED_FUNCTION_33_22()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  return 1;
}

void OUTLINED_FUNCTION_33_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 136) = a4;
  *(v5 - 128) = a5;
  *(v5 - 144) = a2;
}

void OUTLINED_FUNCTION_33_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_33_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_27()
{

  return sub_18F52246C();
}

uint64_t OUTLINED_FUNCTION_33_34@<X0>(uint64_t a1@<X8>)
{

  return sub_18F2E2C50(v2, v1, a1);
}

uint64_t static AppIntent._identifier.getter(uint64_t a1)
{
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v1 = OUTLINED_FUNCTION_34_5();
    v3 = v2(v1);
    MEMORY[0x193ADB000](v3);

    return 0x2E6D6574737953;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_34_5();
    return v6(v5);
  }
}

uint64_t OUTLINED_FUNCTION_42_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = v1 - a1;
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_66_3@<X0>(uint64_t a1@<X8>)
{
  *v4 = a1;
  *(v4 + 8) = v1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  return type metadata accessor for IntentDialog.Storage(0);
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_18F0F713C(a3, a4);
}

void OUTLINED_FUNCTION_66_6()
{
  v0[8] = *(v1 - 264);
  v0[1] = v7;
  v0[2] = v6;
  v0[3] = v5;
  v0[4] = v4;
  v0[5] = v3;
  v0[6] = v2;
}

uint64_t OUTLINED_FUNCTION_66_14()
{
}

uint64_t sub_18F0F7154(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_49_3();
  sub_18F5219CC();
  sub_18F522F4C();
  v3 = OUTLINED_FUNCTION_92_0();

  return a3(v3);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_18F522EFC();
}

unint64_t OUTLINED_FUNCTION_50_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 632) = a1;
  *(v1 + 640) = v2;

  return sub_18F12A000();
}

uint64_t OUTLINED_FUNCTION_50_3(__int128 *a1, uint64_t a2)
{
  sub_18F0FD0B4(a1, a2);
  __swift_project_boxed_opaque_existential_1Tm(v2, *(v3 + 40));

  return type metadata accessor for PreparedIntent();
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  *(v1 + 4) = *(*(v0 + 112) + 16);
}

uint64_t OUTLINED_FUNCTION_50_6()
{

  return sub_18F522EFC();
}

double OUTLINED_FUNCTION_50_8()
{
  *(v1 + v0) = 2;
  v3 = (v1 + *(v2 + 84));
  result = 0.0;
  *(v3 + 25) = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  v5 = v1 + *(v2 + 88);
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_18F522FEC();
}

uint64_t OUTLINED_FUNCTION_50_9()
{
}

uint64_t OUTLINED_FUNCTION_50_11()
{

  return sub_18F122E1C();
}

uint64_t OUTLINED_FUNCTION_50_12()
{

  return swift_arrayDestroy();
}

unint64_t sub_18F0F7418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18F522D5C() & 1) != 0)
    {
      break;
    }
  }

  return i;
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void OUTLINED_FUNCTION_34_4()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_34_7()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_34_12()
{

  sub_18F120FCC(v2, v0, v2, v1);
}

void OUTLINED_FUNCTION_105()
{

  JUMPOUT(0x193ADD350);
}

void OUTLINED_FUNCTION_34_16()
{
  v1[125] = v3;
  v1[124] = v2;
  v1[123] = v0;
}

uint64_t *OUTLINED_FUNCTION_34_18()
{
  *(v0 + 40) = *(v0 + 72);

  return __swift_allocate_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_34_23(float a1)
{
  *v1 = a1;

  return sub_18F5227FC();
}

uint64_t OUTLINED_FUNCTION_34_25()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_26(uint64_t a1, uint64_t a2)
{

  return sub_18F0F9F88(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_34_27()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_34_31()
{

  return sub_18F522C6C();
}

uint64_t OUTLINED_FUNCTION_34_32()
{
}

uint64_t OUTLINED_FUNCTION_34_35@<X0>(uint64_t a1@<X8>)
{
  *(v4 + a1) = v1;
  __swift_storeEnumTagSinglePayload(v4 + *(v5 + 48), 1, 1, v2);
  return v3;
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_18F521CEC();
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return sub_18F52254C();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_13()
{
  v1 = *(v0 + 832);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  *(v0 + 680) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_26_23()
{
  v3 = v2[125];
  v4 = v2[124];
  v2[95] = v2[123];
  v2[96] = v4;
  v2[97] = v1;
  v2[98] = v0;
  v2[110] = v3;
}

void OUTLINED_FUNCTION_26_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_28()
{

  return swift_once();
}

void OUTLINED_FUNCTION_26_31()
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_26_32()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_26_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *v13 = a13.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_36()
{
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  return v0 + 256;
}

uint64_t OUTLINED_FUNCTION_26_37()
{

  return sub_18F52194C();
}

void OUTLINED_FUNCTION_26_38()
{

  sub_18F141818();
}

void OUTLINED_FUNCTION_26_39(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  *(a6 - 256) = a5;
  *(v6 - 240) = a4;
  *(v6 - 232) = a2;
  *(v6 - 224) = a1;
  *(v6 - 216) = a3;
}

uint64_t OUTLINED_FUNCTION_26_40()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_26_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_18F10C138(v8, v10 - 144, v9, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_26_50()
{

  return type metadata accessor for _AppShortcutOptionsCollectionSpecification();
}

uint64_t OUTLINED_FUNCTION_26_51()
{

  return type metadata accessor for _ResolverSpecification();
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_5_14@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return sub_18F521D5C();
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
}

void OUTLINED_FUNCTION_5_18(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_34()
{

  return sub_18F12FC8C(v0, type metadata accessor for PerformActionExecutorTask);
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return sub_18F52187C();
}

uint64_t OUTLINED_FUNCTION_5_40()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_42()
{

  return sub_18F52289C();
}

uint64_t OUTLINED_FUNCTION_5_43()
{

  return sub_18F521DAC();
}

uint64_t OUTLINED_FUNCTION_5_45()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_46()
{

  return sub_18F521D0C();
}

uint64_t OUTLINED_FUNCTION_5_47()
{
  v1 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 504), v1);
  return v1;
}

void OUTLINED_FUNCTION_5_48(__n128 a1)
{
  v4 = &v2[*(v3 + 116)];
  v4[2].n128_u64[0] = 0;
  *v4 = a1;
  v4[1] = a1;
  *v2 = v1;
}

double OUTLINED_FUNCTION_5_52()
{
  result = 0.0;
  v2 = *(v0 - 200);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_54()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return type metadata accessor for ResolverSpecificationBuilder.Specification();
}

id OUTLINED_FUNCTION_5_62(void *a1)
{
  *(v2 - 128) = *(v2 - 100);
  *(v2 - 112) = *(v2 - 84);

  return [a1 (v1 + 2021)];
}

id OUTLINED_FUNCTION_5_63(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 96);

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_5_68()
{

  return sub_18F5217AC();
}

uint64_t OUTLINED_FUNCTION_5_70(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_73(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_5_78()
{
  *(v0 + 352) = 0;
  result = 0.0;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_80(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return sub_18F52100C();
}

uint64_t OUTLINED_FUNCTION_5_82(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_83()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_84(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  *(v8 - 77) = a8;
  *(v8 - 78) = a7;
  *(v8 - 31) = a5;
  *(v8 - 81) = a4;
  *(v8 - 45) = a3;
  *(v8 - 32) = a2;
  *(v8 - 35) = v8[5];
  *(v8 - 38) = v8[4];
  *(v8 - 34) = v8[2];
}

uint64_t OUTLINED_FUNCTION_5_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_18F10C138(v8, v10, v9, v11, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_5_89(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6D6572757361656DLL;
  a1[2].n128_u64[1] = 0xEF74696E55746E65;
  return 255;
}

uint64_t OUTLINED_FUNCTION_5_91(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  *(result + 16) = v2;
  *(result + 24) = *(v3 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_2@<X0>(void *a1@<X8>)
{
  v4 = *(v2 - 264);
  *a1 = v1;
  a1[1] = v4;
  v5 = *(v2 - 248);
  a1[2] = *(v2 - 256);
  a1[3] = v5;
}

double OUTLINED_FUNCTION_32_3()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t result)
{
  v2 = v1[16];
  v1[26] = result;
  v1[27] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_38_10()
{

  return sub_18F12310C(v0, (v1 - 208));
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return sub_18F5225CC();
}

uint64_t OUTLINED_FUNCTION_38_12()
{
}

uint64_t OUTLINED_FUNCTION_38_15()
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_17(__n128 a1)
{
  v1[9] = a1;
  v1[10] = a1;
  v1[5] = a1;
  v1[6] = a1;
  v1[3] = a1;
  v1[4] = a1;
}

uint64_t OUTLINED_FUNCTION_38_19()
{

  return sub_18F0FECD4(v0 - 176, v0 - 144);
}

uint64_t OUTLINED_FUNCTION_38_22()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_38_23()
{
  result = *(v0 + 88);
  *(v2 - 120) = v1 + 80;
  return result;
}

id OUTLINED_FUNCTION_38_24(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return [v3 (v1 + 1656)];
}

double OUTLINED_FUNCTION_38_25(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_26@<X0>(char a1@<W8>)
{
  *(v2 - 128) = a1;
  *(v2 - 176) = v1;
  return v2 - 128;
}

uint64_t OUTLINED_FUNCTION_38_27()
{

  return sub_18F1413B0(v0, type metadata accessor for DisplayRepresentation);
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_18F52266C();
}

void OUTLINED_FUNCTION_68_5()
{

  sub_18F116B3C();
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1, uint64_t a2)
{

  return sub_18F2C17F0(v3, a2, v2);
}

__n128 OUTLINED_FUNCTION_68_8()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  result = *(v0 + 89);
  *(v0 + 41) = result;
  return result;
}

void OUTLINED_FUNCTION_68_9(__n128 a1)
{
  v1[1] = a1;
  v1[13] = a1;
  v1[14].n128_u8[0] = 0;
}

uint64_t *OUTLINED_FUNCTION_68_10(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

void OUTLINED_FUNCTION_68_11()
{

  JUMPOUT(0x193ADB000);
}

__n128 OUTLINED_FUNCTION_68_13(uint64_t a1)
{
  *(v2 - 88) = a1;
  result = *(v2 - 112);
  *v1 = result.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_68_14()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_68_15(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = v3;
  a3[1].n128_u64[1] = v4;

  return swift_willThrow();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t EntityIdentifier.init<A>(for:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, AssociatedConformanceWitness);
  v11 = v10;
  result = (*(*(v8 - 8) + 8))(a2, v8);
  a4[2] = v9;
  a4[3] = v11;
  return result;
}

uint64_t sub_18F0F8E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

void sub_18F0F8E6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
    OUTLINED_FUNCTION_34();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
      OUTLINED_FUNCTION_34();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_18F0F8FAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18F0F8FEC()
{
  result = qword_1ED6FD6E0;
  if (!qword_1ED6FD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FD6E0);
  }

  return result;
}

uint64_t sub_18F0F904C()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t sub_18F0F90A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F0F9100()
{
  OUTLINED_FUNCTION_79();
  v2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_18F0F9170()
{
  result = qword_1ED6FD6E8[0];
  if (!qword_1ED6FD6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FD6E8);
  }

  return result;
}

uint64_t sub_18F0F9204()
{
  result = sub_18F5215DC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_94_0()
{
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_94_4()
{

  return sub_18F2B6EC0(v0);
}

uint64_t OUTLINED_FUNCTION_94_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _OWORD *a11)
{
  v13 = *(v11 + 248);
  v14 = *(v11 + 256);
  *a11 = *(v11 + 232);
  *(v11 + 280) = v13;
  *(v11 + 288) = v14;

  return EntityIdentifier.viewDebugDescription.getter();
}

uint64_t OUTLINED_FUNCTION_94_7()
{
  v1[v3[18]] = 1;
  v5 = v3[19];
  v6 = v3[20];
  *(v0 + 16) = v6;
  *(v0 + 56) = &v1[v5];
  v1[v6] = 2;
  v7 = &v1[v3[21]];
  *(v7 + 25) = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v8 = &v1[v3[22]];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v1[v3[23]];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 1;
  v9[32] = 0;
  v10 = &v1[v3[24]];
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = *(v0 + 32);
  v10[80] = 0;
  v11 = &v1[v3[25]];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = v3[27];
  *(v0 + 24) = v3[26];
  *(v0 + 32) = v12;
  *&v1[v12] = 0;
  v13 = &v1[v3[29]];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *v1 = 1;
  v14 = *(v0 + 64);

  return sub_18F16AAE0(v2, v14);
}

_OWORD *OUTLINED_FUNCTION_94_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  a19 = v20;

  return sub_18F118710(&a17, v19);
}

uint64_t OUTLINED_FUNCTION_94_9@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 7;

  return swift_willThrow();
}

id sub_18F0F94A0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18F52165C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_2_12();
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1ED707698);
  (*(v6 + 16))(v10, v11, v4);
  sub_18F5215AC();
  *&v1[OBJC_IVAR____TtC10AppIntents22StandardEntityProvider_annotationsBundle] = sub_18F0F9A70(a1);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t ViewAnnotation.hash(into:)()
{
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_0_71();
  v4 = OUTLINED_FUNCTION_45();
  sub_18F0F99B8(v4, v5, v6);
  OUTLINED_FUNCTION_82();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FF968(v3, v21);
      OUTLINED_FUNCTION_1_42(v21);
      v8 = OUTLINED_FUNCTION_45();
      AppEntity.fullyQualifiedIdentifier.getter(v8, v9, v10);
      static AppValue._identifier.getter(v19, *(v20 + 8));
      OUTLINED_FUNCTION_39_2();

      OUTLINED_FUNCTION_66();
      sub_18F5219CC();

      return __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      v16 = *v3;
      v17 = *(v3 + 8);
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
      static AppValue._identifier.getter(v16, *(v17 + 8));
      OUTLINED_FUNCTION_39_2();

      OUTLINED_FUNCTION_106_5();
      sub_18F5219CC();

      return sub_18F0EF1A8(v3 + v18, &qword_1EACD32D0);
    }
  }

  else
  {
    v12 = *v3;
    v13 = *(v3 + 16);
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    static AppIntent._identifier.getter(v12);
    OUTLINED_FUNCTION_39_2();

    if ((v15 & 1) == 0)
    {
      MEMORY[0x193ADC4F0](v14);
    }

    return sub_18F0F689C(v13);
  }
}

void sub_18F0F9788()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v23 = v4;
  v5 = type metadata accessor for ViewAnnotation(0);
  v6 = OUTLINED_FUNCTION_51(v5);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = *v0;
  sub_18F522EFC();
  v12 = v3;
  ViewAnnotation.hash(into:)();
  sub_18F522F4C();
  OUTLINED_FUNCTION_56_6();
  v15 = ~v14;
  while (1)
  {
    v16 = v13 & v15;
    if (((1 << (v13 & v15)) & *(v11 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_35();
      sub_18F0F99B8(v12, v10, v22);
      v25 = *v0;
      sub_18F1037E0(v10, v16, isUniquelyReferenced_nonNull_native);
      *v0 = v25;
      sub_18F0F90A4(v12, v23, v1);
      goto LABEL_7;
    }

    v17 = *(v24 + 72) * v16;
    OUTLINED_FUNCTION_3_45();
    sub_18F0F99B8(v18 + v17, v10, v19);
    OUTLINED_FUNCTION_43_1();
    static ViewAnnotation.== infix(_:_:)();
    v1 = v20;
    sub_18F106ED8(v10, &v25);
    if (v1)
    {
      break;
    }

    v13 = v16 + 1;
  }

  sub_18F106ED8(v3, type metadata accessor for ViewAnnotation);
  sub_18F0F99B8(*(v11 + 48) + v17, v23, type metadata accessor for ViewAnnotation);
LABEL_7:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F0F9960()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t sub_18F0F99B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F0F9A14()
{
  OUTLINED_FUNCTION_79();
  v2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_18F0F9A70(uint64_t a1)
{
  v2 = type metadata accessor for ViewAnnotation(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18F103A5C();
  v11 = MEMORY[0x193ADB620](v9, v2, v10);
  v18 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_18F103B8C(v13, v6, type metadata accessor for ViewAnnotation);
      sub_18F0F9788();
      sub_18F103A00(v8, type metadata accessor for ViewAnnotation);
      v13 += v14;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

uint64_t sub_18F0F9BF8()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_63(v1);

  return v4(v3);
}

uint64_t sub_18F0F9C8C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_6(v3);
  *v4 = v5;
  v4[1] = sub_18F0FB730;

  return v7(a1);
}

uint64_t AppManager.addBridge(_:)(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_17_42();
  sub_18F521EFC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;

  swift_unknownObjectRetain();
  sub_18F3E8438(0, 0, v3, &unk_18F562828, v12);

  sub_18F0FA038(v3, &qword_1EACD0418);
  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(a1);
  if (result)
  {
    v15 = v14;
    swift_getObjectType();
    v16 = *(v15 + 16);
    swift_unknownObjectRetain();
    v17 = OUTLINED_FUNCTION_45();
    v16(v17);
    if (v19)
    {
      sub_18F0FD0B4(&v18, v20);
      os_unfair_lock_lock((v2 + 272));
      sub_18F0FD5C4((v2 + 280), v20);
      os_unfair_lock_unlock((v2 + 272));
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      swift_unknownObjectRelease();
      return sub_18F0FA038(&v18, &qword_1EACD8B30);
    }
  }

  return result;
}

uint64_t sub_18F0F9F40()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F0F9F88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return v3;
}

uint64_t sub_18F0F9FD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18F0FA038(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_31_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return sub_18F0EF148(a1, v1);
}

void OUTLINED_FUNCTION_21_6()
{

  JUMPOUT(0x193ADB000);
}

double OUTLINED_FUNCTION_21_7()
{
  result = 0.0;
  *(v0 + 41) = 0u;
  v0[2] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  *(v17 + a10) = 0;
  *a16 = 0;
  a16[1] = 0;
  *(v17 + a11) = 0;
  *(v17 + *(v16 + 112)) = 0;
}

uint64_t OUTLINED_FUNCTION_21_9@<X0>(char a1@<W8>)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = *(v3 + 136);
  *(v3 + 48) = a1;
  type metadata accessor for SystemEntityQuery.Comparison();

  return sub_18F522CAC();
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return sub_18F522EFC();
}

uint64_t OUTLINED_FUNCTION_21_13()
{

  return swift_getAtPartialKeyPath();
}

uint64_t *OUTLINED_FUNCTION_21_15(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a1[6] = v19;
  a1[7] = v17;
  a1[8] = v16;
  a15 = v18;
  a16 = v16;

  return __swift_allocate_boxed_opaque_existential_1(&a12);
}

uint64_t OUTLINED_FUNCTION_21_19()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_27(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return objc_opt_self();
}

uint64_t OUTLINED_FUNCTION_11_4()
{
}

unint64_t OUTLINED_FUNCTION_21_30(uint64_t a1, unint64_t a2)
{

  return sub_18F12C810(0xCuLL, a1, a2);
}

uint64_t OUTLINED_FUNCTION_21_38()
{
  *v1 = v2;
  *(v1 + 8) = *(v0 + 8);
  *(v1 + 24) = v3;
  *(v1 + 32) = v0[2];
  *(v1 + 48) = v4;
  *(v1 + 56) = *(v0 + 56);
}

void OUTLINED_FUNCTION_21_41(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_21_44()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_21_45(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 - 240) = a7;
  *(v7 - 260) = a6;
  *(v7 - 264) = a5;
  *(v7 - 276) = a3;
  *(v7 - 272) = a2;
  *(v7 - 232) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_46()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_21_47()
{
  *(v0 + 80) = *(v0 + 144);

  return swift_task_alloc();
}

uint64_t sub_18F0FA638(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_9_6(v8);
  *v9 = v10;
  v9[1] = sub_18F1EC4D0;

  return sub_18F0FA6F8(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_18F0FA6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18F0FA71C, 0, 0);
}

uint64_t sub_18F0FA71C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*(v0 + 16) + 80);
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_18F0FA790, v1, 0);
}

uint64_t sub_18F0FA790()
{
  OUTLINED_FUNCTION_69();
  sub_18F0FA7F4(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F0FA7F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_18F0FA88C();
  v5 = *(*(v2 + 112) + 16);
  sub_18F0FB5E0(v5);
  v6 = *(v2 + 112);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 112) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

void sub_18F0FA8A4()
{
  OUTLINED_FUNCTION_29_7();
  if (v6)
  {
    OUTLINED_FUNCTION_6_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_26();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD48);
    v9 = OUTLINED_FUNCTION_55_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_11_6();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_43_1();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD50);
    OUTLINED_FUNCTION_43_1();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_18F0FA990(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_18F52095C();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_18F521CEC();
}

void OUTLINED_FUNCTION_30_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{

  sub_18F21964C(&a15);
}

double OUTLINED_FUNCTION_30_14@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 7;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_19()
{
}

uint64_t OUTLINED_FUNCTION_30_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_21()
{

  return sub_18F5229DC();
}

uint64_t OUTLINED_FUNCTION_30_23()
{

  return swift_once();
}

double OUTLINED_FUNCTION_30_27()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_28()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_30_29()
{

  return sub_18F5229DC();
}

uint64_t OUTLINED_FUNCTION_30_33()
{
  *v1 = *v0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;

  return type metadata accessor for DisplayRepresentation();
}

__n128 OUTLINED_FUNCTION_30_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v20;
  result = *(v19 + 56);
  *(v21 - 104) = &a19;
  return result;
}

char *OUTLINED_FUNCTION_30_39@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3)
{
  result = &a3 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 - 344) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_40()
{

  return sub_18F5219CC();
}

uint64_t OUTLINED_FUNCTION_30_42()
{
  v1 = *(v0 + 128);
  *(v0 + 56) = *(v0 + 112);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 144);
  *(v0 + 104) = *(v0 + 160);
  return v0 + 56;
}

uint64_t OUTLINED_FUNCTION_24_6(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return sub_18F520B3C();
}

void OUTLINED_FUNCTION_24_11(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 280) = a2;
  *(v4 - 288) = a1;
}

uint64_t OUTLINED_FUNCTION_13_8(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  v3 = *(v1 - 240);

  return sub_18F0EF148(v3, v0);
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return sub_18F520B4C();
}

uint64_t OUTLINED_FUNCTION_24_18()
{
  *(v1 + 264) = v0;

  return type metadata accessor for IntentItemSection();
}

void OUTLINED_FUNCTION_24_20()
{

  JUMPOUT(0x193ADBE10);
}

void OUTLINED_FUNCTION_24_21()
{

  JUMPOUT(0x193ADB000);
}

uint64_t *OUTLINED_FUNCTION_24_22()
{
  v2 = *(v0 - 328);
  *(v0 - 104) = *(v0 - 336);
  *(v0 - 96) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v0 - 128));
}

void OUTLINED_FUNCTION_24_24(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_24_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_31@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 256);

  return sub_18F126C08(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_24_33(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v3);
  *(v2 + 224) = 0;
  result = 0.0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  return result;
}

id OUTLINED_FUNCTION_24_37(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_24_39(int a1)
{
  if (a1)
  {
    return *(v1 - 120);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_24_40()
{

  return sub_18F522D5C();
}

uint64_t OUTLINED_FUNCTION_24_41(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_42()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_18F167078(v3);
}

uint64_t OUTLINED_FUNCTION_24_43()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

void OUTLINED_FUNCTION_24_45(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_47()
{
  v4 = *(v2 + 56) + 56 * v0;

  return sub_18F19ECB0(v4, v1 + 104);
}

uint64_t OUTLINED_FUNCTION_24_48(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  *a5 = a3;
  *(a5 + 16) = a2;
  *(a5 + 25) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_24_53()
{

  return sub_18F521C8C();
}

void OUTLINED_FUNCTION_72_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x20u);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_72_3()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 + 96) = *v0;
  *(v1 + 112) = v3;
  *(v1 + 65) = *(v0 + 32);
  *(v1 + 128) = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_5()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_72_8()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 103) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_72_14(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return sub_18F520A7C();
}

uint64_t OUTLINED_FUNCTION_72_15(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  return swift_dynamicCast();
}

uint64_t sub_18F0FB5F8()
{
  OUTLINED_FUNCTION_69();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18F0FB6E8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_18F0FB730()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

double OUTLINED_FUNCTION_6_10()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 3;
  return result;
}

double OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v12[v11[18]] = 1;
  v12[v11[20]] = 2;
  v13 = &v12[v11[21]];
  result = 0.0;
  *(v13 + 25) = 0u;
  *v13 = 0u;
  v13[1] = 0u;
  v15 = &v12[v11[22]];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = &v12[v11[23]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 1;
  v16[32] = 0;
  v17 = &v12[v11[24]];
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = a11;
  v17[80] = 0;
  v18 = &v12[v11[25]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *&v12[v11[27]] = 0;
  v19 = &v12[v11[29]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *v12 = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_6_18()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  return *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return sub_18F0F713C(0x72746E6F43746E69, 0xEF656C7974536C6FLL);
}

void OUTLINED_FUNCTION_6_28()
{

  JUMPOUT(0x193ADC4F0);
}

void OUTLINED_FUNCTION_6_29()
{
  *(v1 + 56) = v5;
  *(v1 + 64) = v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v2;
}

uint64_t OUTLINED_FUNCTION_6_31(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_33@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_6_36()
{

  return swift_once();
}

id OUTLINED_FUNCTION_6_37(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return sub_18F262604(sub_18F263FA0);
}

uint64_t OUTLINED_FUNCTION_6_44()
{
}

uint64_t OUTLINED_FUNCTION_6_45()
{

  return sub_18F521D6C();
}

uint64_t OUTLINED_FUNCTION_6_46(uint64_t result)
{
  *(v3 - 128) = *(v2 + *(v1 + 112));
  *(v3 - 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_57()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_6_59()
{
  v1 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_61()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_14_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_18F19E300(v13, &a13);
}

uint64_t OUTLINED_FUNCTION_6_63()
{
  sub_18F11D008(v1, v0);
  sub_18F11D008(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_64()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_6_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_18F29E4F8(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_6_68(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_6_69()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_6_77()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_6_79()
{
}

void *OUTLINED_FUNCTION_6_81()
{
  v2 = *(v0 + 32);

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 8), v2);
}

double OUTLINED_FUNCTION_6_82()
{
  *(v0 + 144) = 4;
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 7;
  return result;
}

double OUTLINED_FUNCTION_6_83(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(*(v1 - 272), 1, 1, a1);
  *(v1 - 192) = 0;
  result = 0.0;
  *(v1 - 224) = 0u;
  *(v1 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_84(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t *OUTLINED_FUNCTION_6_89()
{
  v4 = *(v1 + 8);
  *(v2 - 96) = *(v0 + 88);
  *(v2 - 88) = v4;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 120));
}

double OUTLINED_FUNCTION_54_2()
{
  *(v0 + 192) = 0;
  result = 0.0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1)
{
  v3 = *(v1 - 288);

  return sub_18F1DF68C(a1, v3);
}

void OUTLINED_FUNCTION_54_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_54_6()
{
  v2 = *(v0 + 1232) + *(v0 + 1272);

  return sub_18F0FD6C4(v2, v0 + 392);
}

void OUTLINED_FUNCTION_55_0()
{

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_54_9()
{
  *(v3 - 232) = v0;

  return sub_18F116908(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_54_10()
{

  return sub_18F5229FC();
}

uint64_t OUTLINED_FUNCTION_54_12@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_18F5228CC();
}

uint64_t OUTLINED_FUNCTION_54_14()
{

  return sub_18F0F713C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_21(unint64_t *a1)
{

  return sub_18F49CABC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return sub_18F521DBC();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return swift_getAssociatedConformanceWitness();
}

unint64_t OUTLINED_FUNCTION_29_14(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 24) = *(v1 + 24);

  return sub_18F1C3CA8();
}

void *OUTLINED_FUNCTION_29_15()
{
  v2 = v0[43];
  v1 = v0[44];
  v0[124] = v2;
  v0[125] = v1;
  return __swift_project_boxed_opaque_existential_1Tm(v0 + 40, v2);
}

void OUTLINED_FUNCTION_23_4()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_29_18()
{

  return sub_18F219A34(v0, v1);
}

void *OUTLINED_FUNCTION_29_24()
{

  return __swift_project_boxed_opaque_existential_1Tm((v1 + 56), v0);
}

uint64_t OUTLINED_FUNCTION_29_25()
{

  return sub_18F0FD6C4(v0 + 8, v1 - 120);
}

uint64_t OUTLINED_FUNCTION_29_30@<X0>(char a1@<W8>)
{
  *(v2 - 160) = a1;

  return MEMORY[0x1EEE6AC50](v2 - 160, v1);
}

uint64_t OUTLINED_FUNCTION_29_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(*(v16 + 56) + 8 * v17) = a16;
}

uint64_t OUTLINED_FUNCTION_29_34()
{
  sub_18F0FD0B4((v0 + 256), v0 + 376);

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_29_37()
{
  result = v0[2];
  *(v2 - 112) = v1 + 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_41@<X0>(char a1@<W8>)
{
  *(v2 - 128) = a1;
  *(v2 - 176) = v1;
  return v2 - 128;
}

double OUTLINED_FUNCTION_29_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return sub_18F19E300(a3, &a9);
}

uint64_t sub_18F0FC874()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t OUTLINED_FUNCTION_84_0@<X0>(uint64_t a1@<X8>)
{

  return sub_18F1170D0(v2, v1 + a1);
}

BOOL OUTLINED_FUNCTION_84_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_84_3()
{

  return sub_18F0FECD4(v0 + 8, v1 - 208);
}

id OUTLINED_FUNCTION_84_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_84_8(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 232);

  sub_18F120FCC(v2, a2, v2, v5);
}

void OUTLINED_FUNCTION_84_9(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;
  *(v3 - 256) = a1;
  *(v3 - 272) = *(v3 + 16);
}

void *OUTLINED_FUNCTION_84_10()
{

  return __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v0);
}

void OUTLINED_FUNCTION_78_2()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t result)
{
  *(v1 + 32) = result;
  *v1 = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_7()
{

  return sub_18F5218DC();
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_18F52165C();
}

id OUTLINED_FUNCTION_78_11(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return v2;
}

uint64_t OUTLINED_FUNCTION_78_13()
{

  return static IntentContext.current.getter(v0);
}

uint64_t OUTLINED_FUNCTION_78_15()
{

  return sub_18F522A3C();
}

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t))
{

  return sub_18F165098(v10, v14, v13, v12, v11, v9, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_23_9()
{
}

id OUTLINED_FUNCTION_23_13()
{
  v2 = *(v0 + 144);

  return [v2 value];
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_23_17()
{

  return sub_18F52181C();
}

void OUTLINED_FUNCTION_23_22(uint64_t a1)
{

  sub_18F2AB988(a1, 0, 3u);
}

uint64_t OUTLINED_FUNCTION_23_25()
{

  return swift_once();
}

double OUTLINED_FUNCTION_23_31()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18F10C820(va);
}

uint64_t OUTLINED_FUNCTION_23_36()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_23_38()
{

  return swift_checkMetadataState();
}

uint64_t OUTLINED_FUNCTION_23_39()
{

  return sub_18F52163C();
}

uint64_t OUTLINED_FUNCTION_23_41(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_18F11F1D4(a17, v17 + a14, a3);
}

void OUTLINED_FUNCTION_23_42(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  *(a7 - 256) = a6;
  *(v7 - 264) = a5;
  *(v7 - 256) = a4;
  *(v7 - 248) = a1;
  *(v7 - 240) = a3;
  *(v7 - 216) = a2;
}

uint64_t OUTLINED_FUNCTION_23_45(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(*(v3 + 8) + 8);

  return static AppValue._identifier.getter(v2, v5);
}

uint64_t OUTLINED_FUNCTION_23_46()
{

  return sub_18F520ACC();
}

uint64_t sub_18F0FD0B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_18F0FD0CC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18F0FD148();
    *v0 = v3;
  }
}

void sub_18F0FD148()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_52_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_26();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = v0[2];
  if (v7 <= v10)
  {
    v11 = v0[2];
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_76_0(v2, v3, v4, v5, v6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v12 != v0 || &v0[5 * v10 + 4] <= v12 + 4)
    {
      v15 = OUTLINED_FUNCTION_78();
      memmove(v15, v16, v17);
    }

    v0[2] = 0;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_53();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18);
    OUTLINED_FUNCTION_78();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_101_0();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_73_1()
{
}

_OWORD *OUTLINED_FUNCTION_73_4()
{
  *(v2 - 104) = v0;

  return sub_18F118710((v2 - 136), (v1 + 8));
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_73_6()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_73_10(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_18F11897C(v12, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_73_11()
{

  return swift_getAssociatedTypeWitness();
}

size_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_18F10EB68(v5, a2, a3, a4, v4);
}

void *OUTLINED_FUNCTION_61_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, (v68 + 16), 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_61_3()
{
}

void OUTLINED_FUNCTION_61_6()
{
  v7 = *v5;
  *(v3 + 16) = v1;
  *(v3 + 16 * v4 + 32) = v7;
  *v0 = v3;
  v8 = *v2;
}

void OUTLINED_FUNCTION_61_7()
{

  JUMPOUT(0x193ADC4F0);
}

void OUTLINED_FUNCTION_61_11()
{

  JUMPOUT(0x193ADD350);
}

uint64_t OUTLINED_FUNCTION_61_15()
{

  return sub_18F520ACC();
}

uint64_t OUTLINED_FUNCTION_61_18()
{
}

uint64_t sub_18F0FD5C4(uint64_t *a1, uint64_t a2)
{
  sub_18F0FD638();
  v4 = *(*a1 + 16);
  sub_18F0FD65C();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  result = sub_18F0FD6C4(a2, v5 + 40 * v4 + 32);
  *a1 = v5;
  return result;
}

void sub_18F0FD680()
{
  OUTLINED_FUNCTION_87();
  if (!(v2 ^ v3 | v1))
  {
    sub_18F0FD148();
    *v0 = v4;
  }
}

uint64_t sub_18F0FD6C4(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_31_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_18F0FD724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AppEntityUIElementProviderWrapper.init(_:view:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  OUTLINED_FUNCTION_2_92();
  *(v3 + 24) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F1169CC(a1, va, v3);
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  result = *(v2 + a1);
  *(v3 - 224) = a2;
  *(v3 - 208) = a2;
  *(v3 - 240) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_9()
{
}

uint64_t RepresentedEntityProviderWrapper.init(provider:boundingRect:)()
{
  OUTLINED_FUNCTION_77_0();
  *(v0 + 16) = xmmword_18F53F7F0;
  *(v0 + 32) = 0;
  *(v0 + 34) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 40) = 0u;
  OUTLINED_FUNCTION_81();
  v5 = OUTLINED_FUNCTION_66();
  sub_18F0FDA38(v5, v6);
  swift_endAccess();
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  return v0;
}

uint64_t sub_18F0FDA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void RepresentedEntityProviderBridgeWrapper.init<A>(_:view:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_5();
  v1[8] = 0;
  v1[9] = 0;
  swift_unknownObjectWeakInit();
  v1[5] = v2;
  v1[6] = v0;
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 32))();
  v1[8] = v4;
  v1[9] = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_101_0();
}

void RepresentedEntityProviderBridgeWrapper.__allocating_init<A>(_:view:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_5();
  swift_allocObject();
  OUTLINED_FUNCTION_57();
  RepresentedEntityProviderBridgeWrapper.init<A>(_:view:)();
  OUTLINED_FUNCTION_101_0();
}

uint64_t sub_18F0FDBFC()
{
  v0 = sub_18F52254C();
  if (v1 <= 0x3F)
  {
    sub_18F0FDE68();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_18F52254C();
      if (v4 <= 0x3F)
      {
        sub_18F0FE060(319, &qword_1ED6FDA40);
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_18F0FE060(319, &qword_1ED6FCFF8);
          v0 = v7;
          if (v8 <= 0x3F)
          {
            sub_18F0FE060(319, &qword_1ED6FCFD8);
            v0 = v9;
            if (v10 <= 0x3F)
            {
              sub_18F0FE060(319, &qword_1ED6FC000);
              v0 = v11;
              if (v12 <= 0x3F)
              {
                sub_18F0FE060(319, &qword_1ED6FCFD0);
                v0 = v13;
                if (v14 <= 0x3F)
                {
                  sub_18F0FE060(319, &qword_1ED6FCFE0);
                  v0 = v15;
                  if (v16 <= 0x3F)
                  {
                    sub_18F0FE110(319, qword_1ED6FD008, &qword_1EACD80B0);
                    v0 = v17;
                    if (v18 <= 0x3F)
                    {
                      sub_18F0FE110(319, &qword_1ED6FCFB0, &qword_1EACD5E88);
                      if (v20 > 0x3F)
                      {
                        return v19;
                      }

                      type metadata accessor for LNShowOutputActionOptions(319);
                      if (v21 > 0x3F)
                      {
                        return v19;
                      }

                      else
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_18F0FDE68()
{
  if (!qword_1ED6FE7C8)
  {
    type metadata accessor for IntentDialog(255);
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6FE7C8);
    }
  }
}

uint64_t sub_18F0FDEE0()
{
  result = type metadata accessor for IntentDialog.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18F0FDF4C()
{
  sub_18F2EB30C();
  if (v0 <= 0x3F)
  {
    sub_18F2EB3C0();
    if (v1 <= 0x3F)
    {
      sub_18F0FDFDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_18F0FDFDC()
{
  if (!qword_1ED6FDEE8[0])
  {
    sub_18F520C8C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD59B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1ED6FDEE8);
    }
  }
}

void sub_18F0FE060(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18F52254C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_18F0FE0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_18F0FE110(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_18F52254C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_42_5()
{
}

double OUTLINED_FUNCTION_42_6()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return sub_18F1239A0(v4, v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return sub_18F5229DC();
}

void OUTLINED_FUNCTION_42_11()
{

  JUMPOUT(0x193ADA0E0);
}

uint64_t OUTLINED_FUNCTION_42_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  *v5 = a1;
  v5[1] = a2;
}

__n128 OUTLINED_FUNCTION_42_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a22 = v23;
  result = *(v22 + 8);
  *(v24 - 136) = &a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_21()
{

  return sub_18F122E1C();
}

__n128 OUTLINED_FUNCTION_42_23()
{
  v1 = *(v0 + 144);
  *(v0 + 80) = *(v0 + 128);
  *(v0 + 96) = v1;
  result = *(v0 + 160);
  *(v0 + 112) = result;
  return result;
}

uint64_t static SetFocusFilterIntent.current.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[51] = a3;
  v4[52] = v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[53] = type metadata accessor for AppIntentError.Context(0);
  v4[54] = swift_task_alloc();
  v4[55] = type metadata accessor for AppIntentError(0);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v5 = sub_18F52254C();
  v4[59] = v5;
  v4[60] = *(v5 - 8);
  v4[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F0FE8D4, 0, 0);
}

void sub_18F0FE504()
{
  sub_18F2C1D28();
  if (v0 <= 0x3F)
  {
    sub_18F2C1DD8();
    if (v1 <= 0x3F)
    {
      sub_18F0FE5C0();
      if (v2 <= 0x3F)
      {
        sub_18F0FE7E0();
        if (v3 <= 0x3F)
        {
          sub_18F0FE768();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18F0FE5C0()
{
  if (!qword_1ED6FD000)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACCF7A0);
    type metadata accessor for LNContinueInAppRequestType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD48C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACCFD68);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED6FD000);
    }
  }
}

void sub_18F0FE768()
{
  if (!qword_1ED6FCFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD48B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6FCFB8);
    }
  }
}

void sub_18F0FE7E0()
{
  if (!qword_1ED6FCFC8)
  {
    v0 = sub_18F520C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6FCFC8);
    }
  }
}

uint64_t sub_18F0FE868()
{
  result = type metadata accessor for AppIntentError.Context(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F0FE8D4()
{
  v25 = v0;
  v24[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  v0[62] = __swift_project_value_buffer(v1, qword_1ED7076B0);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[50];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315138;
    v7 = static AppIntent._identifier.getter(v4);
    v9 = sub_18F11897C(v7, v8, v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Attempting to fetch current Set Focus Filter AppIntent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = v0[50];
    v13 = v0[51];
    v14 = sub_18F5218DC();
    v16 = v15;

    v0[63] = v14;
    v0[64] = v16;
    sub_18F0F21A8(0, &qword_1EACCDD00);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v17 = sub_18F10FCB8();
    v0[65] = v17;
    v0[66] = *(v13 + 8);
    static AppIntent._identifier.getter(v12);
    v18 = sub_18F5218AC();
    v0[67] = v18;

    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = sub_18F10FE20;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8968);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18F10FD1C;
    v0[13] = &block_descriptor_14;
    v0[14] = v19;
    [v17 getCurrentAppConfigurationForActionIdentifier:v18 withCompletionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_18F3CC690();
    v20 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_5_73(v20, v21);
    OUTLINED_FUNCTION_1_97();

    OUTLINED_FUNCTION_71();

    return v22();
  }
}

uint64_t sub_18F0FECD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 32);
}

{
  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 32);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_18F520C8C();
}

uint64_t OUTLINED_FUNCTION_28_10()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_28_16()
{

  return sub_18F52185C();
}

uint64_t OUTLINED_FUNCTION_28_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_25()
{
}

double OUTLINED_FUNCTION_28_28()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_30()
{

  return sub_18F52178C();
}

uint64_t OUTLINED_FUNCTION_28_31()
{

  return sub_18F522EFC();
}

__n128 OUTLINED_FUNCTION_28_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *v14 = a13.n128_u32[0];
  *(v13 + 320) = 0x3A746E65746E493CLL;
  *(v13 + 328) = 0xE900000000000020;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_36()
{

  return swift_once();
}

void OUTLINED_FUNCTION_28_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_28_41@<X0>(unint64_t a1@<X8>)
{
  v4 = *(*(v1 + 56) + ((v2 << 9) | (8 * __clz(a1))));

  return v4;
}

uint64_t OUTLINED_FUNCTION_28_42()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

void OUTLINED_FUNCTION_28_43()
{

  JUMPOUT(0x193ADB000);
}

__n128 OUTLINED_FUNCTION_28_45()
{
  result = *(v0 + 56);
  *(v2 - 104) = v1 + 48;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_47()
{
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_18F520B3C();
}

uint64_t OUTLINED_FUNCTION_28_51()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_28_52@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
  __swift_storeEnumTagSinglePayload(v2 + *(v4 + 40), 1, 1, v3);

  return sub_18F0FF914();
}

unint64_t OUTLINED_FUNCTION_28_54@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 168) = v2;
  *(v4 + 176) = v1 | 4;
  *(v4 + 184) = a1;
  *(v4 + 216) = v2;
  *(v4 + 192) = v3;

  return sub_18F1168B4();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_18F0FECD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_18F0FECD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_18F0FECD4(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18F0FF53C()
{
  OUTLINED_FUNCTION_79();
  v2 = _s5ImageV7StorageOMa(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_18F0FF594()
{
  OUTLINED_FUNCTION_79();
  v2 = _s5ImageV7StorageOMa(0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_18F0FF5DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return v3;
}

uint64_t sub_18F0FF628(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_18F0FF690(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_18F0FF6E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_18F0FF740(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F0FF7A4()
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 40))(v0, v1);
  return v0;
}

uint64_t sub_18F0FF800(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F0FF85C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_18F0FF8B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_18F0FF914()
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_0_55();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_77_1()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t result)
{
  v1[4] = result;
  *v1 = *(v3 - 208);
  v1[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_77_8()
{
}

uint64_t static AppShortcutsProvider.updateAppShortcutParameters()(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_18F521EFC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;
  sub_18F2C309C(0, 0, v7, &unk_18F550CB8, v9);
}

uint64_t sub_18F0FFB84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F0FFBBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F0FFC24()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC874;

  return sub_18F0FFCE4();
}

uint64_t sub_18F0FFCE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return static AppShortcutsProvider.updateAppShortcutParametersAsync()();
}

uint64_t sub_18F0FFDA4()
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v1 = sub_18F5218DC();
  v3 = sub_18F10051C(v1, v2, 0);
  v0[23] = v3;
  v4 = LNDaemonApplicationXPCInterface();
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[14] = sub_18F21E5F4;
  v0[15] = 0;
  v5 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18F38D7A4;
  v0[13] = &block_descriptor_12;
  v6 = _Block_copy(v0 + 10);
  v7 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0FECD4((v0 + 18), (v0 + 10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
  if (OUTLINED_FUNCTION_5_31())
  {
    v8 = v0[22];
    v0[24] = v8;
    v0[2] = v0;
    v0[3] = sub_18F1265D8;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
    v0[10] = v5;
    v0[11] = 1107296256;
    v0[12] = sub_18F354F08;
    v0[13] = &block_descriptor_15;
    v0[14] = v9;
    [v8 requestUpdateAppShortcutParametersWithReply_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1ED6FDA70 != -1)
    {
      OUTLINED_FUNCTION_0_43();
      swift_once();
    }

    v10 = sub_18F52165C();
    __swift_project_value_buffer(v10, qword_1ED7076B0);
    v11 = sub_18F52163C();
    v12 = sub_18F52221C();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v13, v14, "Cannot convert remote object proxy to LNDaemonApplicationInterface");
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    OUTLINED_FUNCTION_1_36();

    return v15();
  }
}

uint64_t static AppShortcutsProvider.updateAppShortcutParametersAsync()()
{
  OUTLINED_FUNCTION_69();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_18F126700;

  return static AppShortcutsProvider.updateAppShortcutParametersAsyncThrows()();
}

uint64_t sub_18F100180()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FED58 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v1 = sub_18F52165C();
  *(v0 + 16) = __swift_project_value_buffer(v1, qword_1ED707790);
  v2 = sub_18F52163C();
  v3 = sub_18F5221FC();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v4, v5, "Updating AppShortcut parameters");
    OUTLINED_FUNCTION_32();
  }

  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_18F126408;

  return sub_18F0FFD90();
}

uint64_t OUTLINED_FUNCTION_58_3()
{
}

uint64_t OUTLINED_FUNCTION_51_0()
{
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_58_7()
{
  v2 = (v0 + *(v1 + 84));
  result = 0.0;
  *(v2 + 25) = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v4 = v0 + *(v1 + 88);
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_10()
{

  return sub_18F5219CC();
}

uint64_t OUTLINED_FUNCTION_58_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  sub_18F3B3E60((v2 - 128), v1);
}

uint64_t OUTLINED_FUNCTION_58_14()
{
}

uint64_t OUTLINED_FUNCTION_58_17()
{

  return swift_willThrow();
}

id sub_18F10051C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18F5218AC();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t EntityProperty<>.init(title:)()
{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

uint64_t EntityProperty.__deallocating_deinit()
{
  EntityProperty.deinit();
  v0 = OUTLINED_FUNCTION_11_36();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t EntityProperty.deinit()
{

  sub_18F1009C4(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_18F100874()
{
  sub_18F1008CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F1008CC()
{
  v1 = qword_1ED707730;
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v2 + 8))(v0 + v1);

  sub_18F10095C(v0 + qword_1ED707718);
  return v0;
}

uint64_t sub_18F10095C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F1009C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18F100A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_34_21();
  type metadata accessor for _EntityPropertyContainer();
  v12 = sub_18F102E90(a3);
  v6[4] = v12;
  v13 = (v12 + qword_1ED707728);
  *v13 = a1;
  v13[1] = a2;

  v6[2] = a4;

  v14 = v6[3];
  v6[3] = a5;

  return OUTLINED_FUNCTION_20_28();
}

void OUTLINED_FUNCTION_27_8(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_18F12BC3C(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_27_10(uint64_t result)
{
  *(v2 + 192) = result;
  *(v2 + 160) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_11()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return sub_18F521B3C();
}

void OUTLINED_FUNCTION_27_18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_t log)
{

  _os_log_impl(a1, log, a12, a4, v18, 0x16u);
}

uint64_t OUTLINED_FUNCTION_27_20()
{

  return sub_18F122E1C();
}

unint64_t OUTLINED_FUNCTION_27_24()
{
  v2 = v0[98];
  v0[99] = v0[97];
  v0[100] = v2;
  v0[101] = 0x296C6C756E28;
  v0[102] = 0xE600000000000000;

  return sub_18F12A000();
}

uint64_t OUTLINED_FUNCTION_27_25()
{

  return sub_18F52178C();
}

void OUTLINED_FUNCTION_27_27(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
  *(v1 + 12) = 2080;
}

uint64_t OUTLINED_FUNCTION_27_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_31@<X0>(char a1@<W8>)
{
  *(v1 - 120) = a1;

  return sub_18F522B8C();
}

uint64_t OUTLINED_FUNCTION_27_32()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_102_0()
{
}

__n128 OUTLINED_FUNCTION_27_34()
{
  result = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 32) = result;
  *(v0 + 48) = v2;
  *(v0 + 64) = *(v0 + 368);
  return result;
}

__n128 OUTLINED_FUNCTION_27_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v17;
  result = *(v16 + 8);
  *(v18 - 120) = &a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_42()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 256) = a8;
  *(v8 - 264) = a7;
  *(v8 - 248) = a5;
}

double OUTLINED_FUNCTION_25_6()
{

  return sub_18F1026CC(v0 - 88);
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_104_0(uint64_t a1)
{

  return sub_18F0EF1A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_25_13()
{
  v2 = *(v0 + 24);

  return sub_18F18C388(v2, v2);
}

uint64_t OUTLINED_FUNCTION_25_16()
{
  sub_18F0FD0B4((v0 + 56), v0 + 16);

  return sub_18F0FD724(v0 + 16, v0 + 96);
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return sub_18F392E38(v0);
}

uint64_t OUTLINED_FUNCTION_25_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_26()
{
  sub_18F0FD0B4((v0 + 304), v0 + 264);

  return sub_18F0FD724(v0 + 264, v0 + 464);
}

uint64_t OUTLINED_FUNCTION_25_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(*(v16 + 56) + 8 * v17) = a16;
}

uint64_t OUTLINED_FUNCTION_25_32()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_33@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v7;
  v9 = a4 + 16 * v6;
  *(v9 + 32) = v4;
  *(v9 + 40) = a1;

  return sub_18F111F70(v5);
}

uint64_t OUTLINED_FUNCTION_25_34@<X0>(uint64_t a1@<X8>)
{

  return sub_18F35E9D8(a1);
}

uint64_t OUTLINED_FUNCTION_25_35()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_25_36@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[4] = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a1[5] = a2;
  a1[9] = v3;
  v5 = a1 + 6;

  return __swift_allocate_boxed_opaque_existential_1(v5);
}

uint64_t OUTLINED_FUNCTION_25_37()
{
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  *v3 = v4;
  *(v3 + 8) = *(v2 + 8);
  *(v3 + 24) = v5;
  v12 = v2[3];
  *(v3 + 32) = v2[2];
  *(v3 + 48) = v12;
  *(v3 + 64) = v6;
  *(v3 + 72) = v0;
  *(v3 + 80) = v8;
  *(v3 + 88) = *(v1 + 1);
  *(v3 + 104) = v9;
  *(v3 + 112) = v10;
}

uint64_t OUTLINED_FUNCTION_25_38()
{

  return sub_18F0FD724(v0, v1 - 168);
}

uint64_t OUTLINED_FUNCTION_25_41()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_25_45()
{
}

uint64_t OUTLINED_FUNCTION_25_46(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return type metadata accessor for DisplayRepresentation.Image(0);
}

void OUTLINED_FUNCTION_25_48(uint64_t a1@<X8>)
{
  *(v5 - 128) = v4;
  *(v5 - 120) = v3;
  *(v5 - 112) = v2;
  *(v5 - 104) = v1;
  *(v5 - 96) = a1;
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

id OUTLINED_FUNCTION_11_12(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 408);

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_11_20()
{
  v2 = *(v0 + 248);
  v3 = *(v0 + 240);

  return sub_18F219A8C(v2, v3, type metadata accessor for IntentContext);
}

void OUTLINED_FUNCTION_13_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 296) = a8;
  *(v8 - 264) = a6;
  *(v8 - 256) = a5;
  *(v8 - 248) = a2;
  *(v8 - 240) = a4;
  *(v8 - 216) = a3;
}

uint64_t OUTLINED_FUNCTION_11_26@<X0>(unint64_t a1@<X8>)
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

uint64_t OUTLINED_FUNCTION_11_30()
{

  return sub_18F5229DC();
}

id OUTLINED_FUNCTION_11_31@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **(a2 + 8 * v2);

  return [a1 v4];
}

uint64_t OUTLINED_FUNCTION_11_34()
{

  return dynamic_cast_existential_1_conditional(v0);
}

void OUTLINED_FUNCTION_11_35()
{
  *(v1 + *v0) = 0;
  v4 = v0[4];
  *v4 = 0;
  v4[1] = 0;
  *(v1 + v2) = 0;
  *(v1 + *(v3 + 112)) = 0;
}

uint64_t OUTLINED_FUNCTION_11_41@<X0>(uint64_t a1@<X8>)
{
  v3[2] = 15;
  v3[3] = v1 | (a1 << 16);
  v3[4] = v4;
  v3[5] = v2;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_11_45(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_47()
{

  return sub_18F122278(v0);
}

uint64_t OUTLINED_FUNCTION_11_51()
{
  v2 = *(v1 + 472);
  sub_18F0FD0B4((*(v1 + 496) + *(v0 + 48) + 16), v1 + 232);
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_53()
{

  return sub_18F106F30(v0, type metadata accessor for IntentDonationIdentifier);
}

void OUTLINED_FUNCTION_11_54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  *(v8 - 292) = a8;
  *(v8 - 296) = a7;
  *(v8 - 248) = a5;
  *(v8 - 308) = a4;
  *(v8 - 344) = a3;
  *(v8 - 256) = a2;
  *(v8 - 272) = *(v8 + 16);
}

id OUTLINED_FUNCTION_11_56(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_11_59(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v3 + *(v4 + 28), 1, 1, v1);
  return __swift_storeEnumTagSinglePayload(v3 + *(v4 + 32), 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_61@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 72) = result;
  *(v2 + 80) = 0xD000000000000016;
  *(v2 + 88) = (a2 - 32) | 0x8000000000000000;
  *(v2 + 96) = v3;
  return result;
}

void OUTLINED_FUNCTION_20_8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  *(a7 - 256) = a6;
  *(v7 - 256) = a5;
  *(v7 - 296) = a4;
  *(v7 - 240) = a1;
  *(v7 - 232) = a3;
  *(v7 - 248) = a2;
}

__n128 OUTLINED_FUNCTION_20_10(unint64_t a1)
{
  v3 = v1->n128_u64[0];
  v4 = v1->n128_u64[1];
  v2[7].n128_u64[1] = a1;
  v2[8].n128_u64[0] = v3;
  v2[8].n128_u64[1] = v4;
  result = v1[1];
  v2[9] = result;
  v2[3].n128_u8[1] = v1[2].n128_u8[0];
  return result;
}

__n128 OUTLINED_FUNCTION_20_11()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_13()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 + *(a9 + 24)) = v9 & 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
}

uint64_t OUTLINED_FUNCTION_20_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_20_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_28()
{
  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  *(v0 + 72) = *(v1 + 32);
  return v0;
}

double OUTLINED_FUNCTION_20_29()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_10()
{
}

uint64_t OUTLINED_FUNCTION_20_30()
{
  sub_18F0FD0B4(*(v0 + 232), v0 + 96);

  return sub_18F0FD6C4(v0 + 96, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_20_32()
{
  *(v0 + 168) = *(v0 + 120);
  sub_18F118710((v0 + 136), (v0 + 184));
  return v0 + 168;
}

double OUTLINED_FUNCTION_20_36()
{
  *(v0 - 112) = 0;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 160) = 0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_40()
{
  result = *(v1 - 88);
  *(v1 - 128) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_41(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 - 256) = a7;
  *(v7 - 268) = a6;
  *(v7 - 272) = a5;
  *(v7 - 276) = a3;
  *(v7 - 288) = a2;
  *(v7 - 248) = result;
  return result;
}

void *OUTLINED_FUNCTION_20_42(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_43()
{
  v4 = v0[1];
  v3 = v0[2];
  v1[21] = *v0;
  v1[22] = v4;
  v1[23] = v3;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_12_13(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_18F10CBFC(v1 + 32, va);
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return sub_18F5219CC();
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_18F102F54(v0 - 176, v0 - 224);
}

uint64_t OUTLINED_FUNCTION_12_19()
{
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  v2 = *(v0 + 360);

  return sub_18F1D5680(v2, type metadata accessor for AppIntentError);
}

double OUTLINED_FUNCTION_12_22()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_24()
{
}

uint64_t OUTLINED_FUNCTION_12_25()
{
  v3 = *(v1 + 200);

  return sub_18F219AEC(v3, v0, type metadata accessor for IntentDialog);
}

uint64_t OUTLINED_FUNCTION_12_32()
{
}

void OUTLINED_FUNCTION_12_33(unint64_t a1@<X8>, __n128 a2@<Q1>)
{
  v3[2] = a2;
  v3[3].n128_u64[0] = v2 & 1;
  v3[3].n128_u64[1] = a1;
  v3[4].n128_u8[0] = 0;
}

uint64_t OUTLINED_FUNCTION_12_35()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_12_38(void *a1)
{
  v4 = **(v2 + 8 * v1);

  return [a1 v4];
}

unint64_t OUTLINED_FUNCTION_12_39()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;

  return sub_18F10F340();
}

void OUTLINED_FUNCTION_12_40()
{

  JUMPOUT(0x193ADB260);
}

void OUTLINED_FUNCTION_12_42()
{
  *(v1 + *v0) = 0;
  v4 = v0[4];
  *v4 = 0;
  v4[1] = 0;
  *(v1 + v3) = 0;
  *(v1 + *(v2 + 112)) = 0;
}

uint64_t OUTLINED_FUNCTION_12_43(unint64_t *a1)
{

  return sub_18F31F9B4(a1);
}

uint64_t OUTLINED_FUNCTION_12_44()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_47()
{
  sub_18F0FD0B4(v0, (v1 + 107));
  v2 = v1[111];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 107, v1[110]);
  return v2 + 8;
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1)
{
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6B1B8](a1, v3, v3);
}

void OUTLINED_FUNCTION_12_52()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  *(v2 - 112) = MEMORY[0x1E69E9820];
}

uint64_t OUTLINED_FUNCTION_12_53()
{

  return sub_18F116970(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_55(unint64_t *a1, uint64_t *a2)
{

  return sub_18F1B8B98(a1, a2);
}

double OUTLINED_FUNCTION_12_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v4 - 208) = 0;
  result = 0.0;
  *(v4 - 240) = 0u;
  *(v4 - 224) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_70@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 16) = v2;
  *(result + 24) = *(v3 + 80);
  return result;
}

double sub_18F1026CC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_18F1026E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_36();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_123();
  sub_18F100A24(v9, v10, a3, a4, a5);
  return v8;
}

uint64_t sub_18F10276C()
{
  result = sub_18F520B3C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F102810(uint64_t a1)
{
  v3 = (v1 + qword_1ED707728);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + qword_1ED707720);
  *v4 = 0;
  v4[1] = 0;
  v5 = v1 + qword_1ED707718;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  v6 = qword_1ED707730;
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v7 + 32))(v1 + v6, a1);
  return v1;
}

uint64_t EntityProperty.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_22_2();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_11_0();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  if (*(v1 + 72) != 3 || (*&v10 = OUTLINED_FUNCTION_18_35(), v11))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v9, a1, v4, v10);

    sub_18F102A0C(v9);

    return (*(v6 + 8))(a1, v4);
  }

  return result;
}

uint64_t sub_18F102A0C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_2();
  v9 = *(v3 + 80);
  v7 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a1);
  v5 = qword_1ED707718;
  OUTLINED_FUNCTION_41_16();
  swift_beginAccess();
  sub_18F102AC8(v8, v1 + v5);
  return swift_endAccess();
}

uint64_t sub_18F102AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EntityIdentifier.init<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  *a4 = a2;
  a4[1] = a3;
  sub_18F5227DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  (*(*(a2 - 8) + 8))(a1, a2);
  result = (*(v10 + 8))(v13, AssociatedTypeWitness);
  a4[2] = v15;
  a4[3] = v17;
  return result;
}

uint64_t sub_18F102E90(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_18F102810(a1);
  return v2;
}

uint64_t EntityProperty<>.init()()
{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}