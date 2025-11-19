uint64_t sub_1A359FA48(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A359FA80()
{
  result = sub_1A3620CEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2(unint64_t *a1)
{

  return sub_1A35CD718(a1);
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return sub_1A3620DAC();
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1)
{

  return sub_1A35B46E8(v2, a1 + v1);
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return MEMORY[0x1EEDE1268](0);
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_0_33(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

id OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t static Tips.configure(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7 - v2;
  v4 = sub_1A3622E6C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35F8398(0, 0, v3, &unk_1A3628F40, v5);
}

uint64_t sub_1A35A006C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter(uint64_t a1@<X8>)
{
  v3 = sub_1A3620CAC();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  (MEMORY[0x1EEE9AC00])();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3620CEC();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  if (sub_1A3622DAC())
  {
    v21 = v5;
    v24 = a1;
    sub_1A3622BAC();
    sub_1A3620C8C();
    sub_1A3620C7C();
    if (v1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_3_20();
      v16 = sub_1A3622BAC();
      MEMORY[0x1A58F3290](v16);

      sub_1A36215EC();
      sub_1A35BF9C4();
      swift_allocError();
      sub_1A36215FC();
      swift_willThrow();
    }

    else
    {
      v22 = sub_1A3622B9C();
      v23 = v18;
      v19 = v21;
      (*(v21 + 104))(v7, *MEMORY[0x1E6968F58], v3);
      sub_1A35A03D8();
      sub_1A3620CDC();
      (*(v19 + 8))(v7, v3);

      (*(v10 + 8))(v13, v8);
      (*(v10 + 32))(v24, v15, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_3_20();
    v17 = sub_1A3622BAC();
    MEMORY[0x1A58F3290](v17);

    sub_1A36215EC();
    sub_1A35BF9C4();
    swift_allocError();
    sub_1A36215FC();
    swift_willThrow();
  }
}

unint64_t sub_1A35A03D8()
{
  result = qword_1ED81F258;
  if (!qword_1ED81F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81F258);
  }

  return result;
}

uint64_t static Tips.ConfigurationOption.datastoreLocation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 8));
  result = sub_1A35A271C(a1, boxed_opaque_existential_0);
  *a2 = 2;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_4(unint64_t *a1)
{

  return sub_1A35CD718(a1);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_1A36233DC();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_1A362195C();
}

uint64_t OUTLINED_FUNCTION_1_9(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  a1.n128_u64[0] = a16;
  a2.n128_u64[0] = a17;
  a3.n128_u64[0] = a15;
  a4.n128_u64[0] = v18;
  a5.n128_u64[0] = v19;

  return MEMORY[0x1EEDE2FD0](a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return sub_1A35B4270(v0, v1);
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return type metadata accessor for AppearanceChangeMonitor();
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_1A3621F1C();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_1A35B73A4();
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return __isPlatformVersionAtLeast(2, 18, 1, 0);
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_2_5()
{
  v4 = *(v0 + v3);
  *(v4 + 16) = v2 + 1;
  return v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_1A362336C();
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_1A36215AC();
}

uint64_t OUTLINED_FUNCTION_2_9(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a4.n128_u64[0] = v6;
  a5.n128_u64[0] = v7;

  return MEMORY[0x1EEDE2FD0](a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return sub_1A362237C();
}

uint64_t OUTLINED_FUNCTION_2_20()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_1A36231BC();
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return swift_task_reportUnexpectedExecutor();
}

uint64_t OUTLINED_FUNCTION_2_24(__n128 a1, __n128 a2, __n128 a3)
{
  a2.n128_u64[0] = 0;
  a3.n128_u64[0] = 0;

  return MEMORY[0x1EEDDD610](a1, a2, a3);
}

id OUTLINED_FUNCTION_2_25()
{
  v4 = *(*(v1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v0)))));

  return v4;
}

void OUTLINED_FUNCTION_8_2()
{
  v2 = *(v1 - 160);
  *v0 = *(v1 - 168);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_1A362288C();
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_1A362288C();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1A3614ED8(&a9 - v9);
}

uint64_t sub_1A35A0CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_1A36218BC();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_1A362336C();
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return sub_1A362329C();
}

void OUTLINED_FUNCTION_4_8(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  a1[2] = v3;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_4_11()
{
  *(v4 - 120) = v0;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3;
  *(v4 - 96) = v1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_4_12(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a1.n128_u64[0] = v6;
  a2.n128_u64[0] = v7;
  a5.n128_u64[0] = a3.n128_u64[0];

  return MEMORY[0x1EEDE2FD0](a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_4_17()
{

  return sub_1A362173C();
}

double OUTLINED_FUNCTION_3_5()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t result)
{
  v3 = (v1 + *(result + 28));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return result;
}

void OUTLINED_FUNCTION_3_8()
{

  JUMPOUT(0x1A58F3290);
}

double OUTLINED_FUNCTION_3_14()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 192) = 0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  *(v0 - 240) = 0u;
  return result;
}

double OUTLINED_FUNCTION_3_16@<D0>(char a1@<W8>, double a2@<D0>, double a3@<D1>, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = a1;
  *(v9 + 8) = v13;
  *(v9 + 16) = v10;
  *(v9 + 24) = a5;
  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  *(v9 + 48) = a2 + a3;
  *(v9 + 56) = a9;
  *(v9 + 64) = a8;
  result = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = a6;
  return result;
}

void OUTLINED_FUNCTION_3_20()
{

  JUMPOUT(0x1A58F3290);
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t result)
{
  *v1 = result;
  *(result + 80) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return MEMORY[0x1EEDDD600](1);
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  sub_1A361DA9C();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

double OUTLINED_FUNCTION_6_7(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, double a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v15 + 8) = v18;
  *(v15 + 16) = v16;
  *(v15 + 24) = a18;
  *(v15 + 32) = a17;
  *(v15 + 40) = v17;
  *(v15 + 48) = a1 + v19;
  *(v15 + 56) = a22;
  *(v15 + 64) = a21;
  result = a19;
  *(v15 + 72) = a20;
  *(v15 + 80) = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1A360F89C(v3);
}

uint64_t static Tips.ConfigurationOption.DisplayFrequency.system.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A362355C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

__n128 static Tips.ConfigurationOption.displayFrequency(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  *(a2 + 32) = &type metadata for Tips.ConfigurationOption.DisplayFrequency;
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = v2;
  *a2 = 3;
  return result;
}

uint64_t sub_1A35A12AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1A35A12EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A35A133C(uint64_t a1, uint64_t a2)
{
  sub_1A36210CC();
  v7 = a1;
  v8 = a2;
  v4 = sub_1A362105C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA90);
  sub_1A3622AEC();
  v4(v6, 0);
  return v9;
}

uint64_t sub_1A35A1424(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1A3622D4C();
  if (!v18[1])
  {
    v6 = sub_1A35A1984(a2, a3);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = v6 == 45 && v7 == 0xE100000000000000;
      if (v10 || ((v11 = sub_1A362345C(), v8 == 43) ? (v12 = v9 == 0xE100000000000000) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), (v11 & 1) != 0 || (v13 & 1) != 0))
      {
      }

      else
      {
        v14 = sub_1A362345C();

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_10_0();
      swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_4_5();
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_3_8();
      v16 = sub_1A3622BBC();
      MEMORY[0x1A58F3290](v16);

      goto LABEL_20;
    }

LABEL_17:
    OUTLINED_FUNCTION_10_0();
    swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_4_5();
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_3_8();
    v15 = sub_1A3622BBC();
    MEMORY[0x1A58F3290](v15);

    MEMORY[0x1A58F3290](43, 0xE100000000000000);
LABEL_20:
    MEMORY[0x1A58F3290](a2, a3);
    return v18[4];
  }

  OUTLINED_FUNCTION_10_0();
  swift_getMetatypeMetadata();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_5();
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_3_8();
  v5 = OUTLINED_FUNCTION_6();
  MEMORY[0x1A58F3290](v5);

  return v18[4];
}

uint64_t Tips.Parameter.init<A>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v9 = sub_1A35A1424(a1, a2, a3);
  v11 = v10;

  v12 = sub_1A35A133C(v9, v11);

  *a6 = v12;
  type metadata accessor for Tips.Parameter();
  sub_1A35A57D0();
  sub_1A35A58E0();

  OUTLINED_FUNCTION_5_0();
  v14 = *(v13 + 8);

  return v14(a4, a5);
}

double OUTLINED_FUNCTION_9_3()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_1A362166C();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_1A3621F1C();
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return sub_1A36123B8(v0, type metadata accessor for TipUIWrapperView);
}

uint64_t OUTLINED_FUNCTION_9_10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1A3619E9C(v3);
}

uint64_t sub_1A35A18CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A35A1984(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1A3622C3C();
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_1A35A1A18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A35A1A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 80);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v5);
  v11 = sub_1A35A1FB0(v10, v5);
  v12 = OUTLINED_FUNCTION_6();
  result = v13(v12);
  *a3 = v11;
  return result;
}

uint64_t sub_1A35A1B48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1A362321C();
  v4 = sub_1A362320C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1A35A1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_5();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  *(v4 + 48) = xmmword_1A3626820;
  *(v4 + 24) = v10;
  *(v4 + 32) = v13;
  (*(v8 + 16))(&v18 - v11, v14, v6);
  sub_1A35A1A60(v12, *v4, (v4 + 16));
  LOBYTE(v12) = sub_1A35A5D04(a4);

  v15 = OUTLINED_FUNCTION_6();
  v16(v15);
  *(v4 + 40) = v12 & 1;
  return v4;
}

uint64_t sub_1A35A1D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v18 = a6;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = sub_1A36210CC();
  v14 = _s9CoreValueCMa();
  (*(v11 + 16))(v13, a3, a5);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v15 = sub_1A35A2098(a1, a2, v13, a4);
  v20 = v14;
  WitnessTable = swift_getWitnessTable();
  v19 = v15;
  sub_1A362158C();
  sub_1A362156C();
  result = sub_1A36210DC();
  *v18 = result;
  return result;
}

void sub_1A35A1F64(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1A35A1FB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_1A35A1B48(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t sub_1A35A2098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1A35A1BF8(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1A35A2100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1A35A21B0()
{
  result = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A35A223C()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 24);
  v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35A22D8(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1A35A3194;
  v4 = OUTLINED_FUNCTION_8_11(*(v0 + 24));

  return sub_1A35A2D70(v4);
}

uint64_t sub_1A35A22D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A35A2780(0, v4, 0);
    v5 = v17;
    v6 = a1 + 32;
    do
    {
      sub_1A35A2808(v6, v13);
      LOBYTE(v15[0]) = v13[0];
      sub_1A35A270C(&v14, (v15 + 8));
      v17 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A35A2780(v7 > 1, v8 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v8 + 1;
      v9 = v5 + 40 * v8;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 64) = v16;
      *(v9 + 32) = v10;
      *(v9 + 48) = v11;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4C0);
  sub_1A35A27A4();
  sub_1A3622D2C();

  return sub_1A35A2898(a2);
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1A35B2260(v1 + a1 + 72, v2 - 144);
}

__n128 OUTLINED_FUNCTION_10_3()
{
  result = *(v0 - 240);
  v2 = *(v0 - 224);
  *(v0 - 128) = result;
  *(v0 - 112) = v2;
  *(v0 - 96) = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 - 152) = a2;
  *(v2 - 144) = a1;

  return sub_1A36228BC();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1A3619E9C(&a9 - v9);
}

uint64_t sub_1A35A2564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35A25CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  _s23ConfigurationOptionsSetVMa(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A35A223C, 0, 0);
}

uint64_t sub_1A35A265C()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A35A3334;

  return sub_1A35A25CC(v3, v4, v5, v6);
}

_OWORD *sub_1A35A270C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A35A271C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35A2780(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1A35E52FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1A35A27A4()
{
  result = qword_1ED81F3A0;
  if (!qword_1ED81F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81F3A0);
  }

  return result;
}

unint64_t sub_1A35A2844()
{
  result = qword_1ED81F398;
  if (!qword_1ED81F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81F398);
  }

  return result;
}

uint64_t sub_1A35A2898@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF188);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4C0);
  sub_1A35A27A4();
  sub_1A3622AFC();
  v9 = v17;
  v8 = v18;
  if (!v18)
  {
    v9 = 1701736302;
    v8 = 0xE400000000000000;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  v20 = 1;
  sub_1A3622AFC();
  v11 = v18;
  v10 = v19;
  if (v19 == 1)
  {
    v11 = 0;
    v10 = 0;
  }

  *(a1 + 16) = (v19 != 1) & v17;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  LOBYTE(v17) = 2;
  sub_1A3622AFC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    _s6TipKit4TipsO19ConfigurationOptionV17DatastoreLocationV18applicationDefaultAGvgZ_0();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_1A35F8EE4(v4);
    }
  }

  else
  {
    sub_1A35A2CC8(v4, v7);
  }

  v12 = _s23ConfigurationOptionsSetVMa(0);
  sub_1A35A2CC8(v7, a1 + *(v12 + 24));
  v20 = 3;
  sub_1A3622AFC();

  v13 = v19;
  if (v19 == 2)
  {
    result = sub_1A36235BC();
    v13 = 0;
  }

  else
  {
    result = v17;
    v15 = v18;
  }

  v16 = a1 + *(v12 + 28);
  *v16 = result;
  *(v16 + 8) = v15;
  *(v16 + 16) = v13 & 1;
  return result;
}

uint64_t _s19ConfigurationOptionV3KeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A35A2BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1A35A2C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A35A2C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3620CEC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1A35A2CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19ConfigurationOptionV16DisplayFrequencyVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A35A2D70(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1A35A37D8;

  return sub_1A35A3488(a1);
}

uint64_t sub_1A35A2E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3620CEC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static Tips.ConfigurationOption.analyticsEngine(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *(a2 + 32) = &type metadata for Tips.ConfigurationOption.AnalyticsEngine;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  *a2 = 0;
  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A35A2EF8()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_5_1();

    return v10();
  }
}

uint64_t sub_1A35A3014()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  v9 = sub_1A3620CEC();
  (*(*(v9 - 8) + 8))(v6, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_7_10();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    v13 = *(v7 + 8);

    return v13();
  }
}

uint64_t sub_1A35A3194()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  sub_1A35A32D8(v6);
  if (v0)
  {
    OUTLINED_FUNCTION_7_10();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_5_1();

    return v12();
  }
}

uint64_t sub_1A35A32D8(uint64_t a1)
{
  v2 = _s23ConfigurationOptionsSetVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35A3334()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A35A3428()
{
  v1 = *v0;
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

uint64_t sub_1A35A3488(uint64_t a1)
{
  *(v1 + 48) = a1;
  OUTLINED_FUNCTION_7_10();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1A35A34B4()
{
  v1 = *(v0 + 48);
  v2 = sub_1A362159C();
  sub_1A36215AC();
  v3 = OUTLINED_FUNCTION_6_9();
  v2(v3);
  if (*v1 != 0x6C616E4165726F63 || v1[1] != 0xED00007363697479)
  {
    sub_1A362345C();
  }

  v5 = *(v0 + 48);
  v6 = sub_1A36214BC();
  sub_1A362147C();
  v7 = OUTLINED_FUNCTION_6_9();
  v6(v7);
  v8 = v5 + *(_s23ConfigurationOptionsSetVMa(0) + 28);
  v9 = sub_1A36214BC();
  sub_1A362149C();
  v10 = OUTLINED_FUNCTION_6_9();
  v9(v10);
  v11 = *(v8 + 16);
  v12 = sub_1A36214BC();
  sub_1A36214AC();
  v13 = OUTLINED_FUNCTION_6_9();
  v12(v13);
  if ((_s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0() & 1) != 0 && (sub_1A3622DAC() & 1) == 0 && ((v11 ^ 1) & 1) == 0)
  {
    v14 = sub_1A36215DC();
    sub_1A36215AC();
    v15 = OUTLINED_FUNCTION_6_9();
    v14(v15);
  }

  OUTLINED_FUNCTION_5_1();

  return v16();
}

void OUTLINED_FUNCTION_7_2()
{
  v2 = *(v1 - 160);
  *v0 = *(v1 - 168);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_1A362288C();
}

uint64_t OUTLINED_FUNCTION_7_7(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a5.n128_u64[0] = a3.n128_u64[0];

  return MEMORY[0x1EEDE2FD0](a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1A360F89C(&a9 - v9);
}

uint64_t sub_1A35A37D8()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_7_10();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1A35A3908()
{
  OUTLINED_FUNCTION_2_4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = _s23ConfigurationOptionsSetVMa(0);
  sub_1A35A271C(v1 + *(v3 + 24), v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1A35A3014;
  v5 = OUTLINED_FUNCTION_8_11(v0[3]);

  return sub_1A35A39B0(v5, v6);
}

uint64_t sub_1A35A39B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A35A39D0, 0, 0);
}

uint64_t sub_1A35A39D0()
{
  OUTLINED_FUNCTION_10_1();
  v1 = v0[3];
  sub_1A362158C();
  v0[4] = sub_1A362156C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1A35A2EF8;
  v6 = OUTLINED_FUNCTION_8_11(v0[2]);

  return MEMORY[0x1EEE498A0](v6, 1, v2, v3, v4);
}

uint64_t sub_1A35A3AB4()
{
  result = sub_1A3620DAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Tip.shouldDisplayUpdates.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC18);
  MEMORY[0x1EEE9AC00](v4);
  Tip.statusUpdates.getter(a1, a2);
  sub_1A35AD098();
  return sub_1A36232AC();
}

uint64_t Tip.statusUpdates.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC08);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  swift_allocObject();
  sub_1A35A6624(a1, a2);
  swift_weakInit();

  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC10);
  sub_1A3622E9C();
  sub_1A3622E8C();
  return sub_1A3622E7C();
}

uint64_t sub_1A35A3E30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35A3E68()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t static Tips.ParameterOption.transient.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_1F164A220;
  result = sub_1A35A3F30();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1A35A3F30()
{
  result = qword_1ED81E638;
  if (!qword_1ED81E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E638);
  }

  return result;
}

uint64_t sub_1A35A3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A35A3FEC()
{
  result = qword_1ED81E648;
  if (!qword_1ED81E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E648);
  }

  return result;
}

unint64_t sub_1A35A4040()
{
  result = qword_1ED81E640;
  if (!qword_1ED81E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E640);
  }

  return result;
}

uint64_t sub_1A35A40C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A35A6350(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA88);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_1A35A416C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  switch(sub_1A362137C())
  {
    case 1u:
      v8 = a2[3];
      v9 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v8);
      LOBYTE(v8) = sub_1A35B6AEC(v8, v9);
      sub_1A36213AC();
      OUTLINED_FUNCTION_0_19();
      (*(v10 + 8))(a1);
      if (v8)
      {
        v7 = 8;
      }

      else
      {
        v7 = 7;
      }

      break;
    case 2u:
      v11 = sub_1A362138C();
      sub_1A36213AC();
      OUTLINED_FUNCTION_0_19();
      (*(v12 + 8))(a1);
      v7 = byte_1A3627922[v11];
      break;
    default:
      sub_1A36213AC();
      OUTLINED_FUNCTION_0_19();
      (*(v6 + 8))(a1);
      v7 = 7;
      break;
  }

  *a3 = v7;

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

_BYTE *_s6StatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 >= 0xF8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF7)
  {
    v7 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1A35A43ACLL);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t _s6StatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8)
  {
    v2 = a2 + 8;
    if (a2 + 8 >= 0xFFFF00)
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
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 8;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 8;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1A35A4484);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 8;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 7)
  {
    v8 = v7 - 6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35A44A0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A36213BC();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_1A36213AC();
  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v3);
}

uint64_t sub_1A35A4528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35A4598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_1A36213AC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  sub_1A35A4528(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1A35E47E0(v12);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    if ((sub_1A362139C() & 1) == 0)
    {
      (*(v14 + 16))(v17, v19, v13);
      v23[3] = a3;
      v23[4] = a4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
      (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
      sub_1A35A416C(v17, v23, &v24);
      result = (*(v14 + 8))(v19, v13);
      v21 = v24;
      goto LABEL_7;
    }

    result = (*(v14 + 8))(v19, v13);
  }

  v21 = 9;
LABEL_7:
  *a5 = v21;
  return result;
}

uint64_t sub_1A35A4824()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35A490C()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35A4A48()
{
  if (sub_1A3622F2C())
  {
    OUTLINED_FUNCTION_9_0();
LABEL_8:
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);

    OUTLINED_FUNCTION_5_1();

    return v10();
  }

  v7 = v1[12];
  v8 = sub_1A35A5C1C();
  v1[18] = v8;
  if (!v8)
  {
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_2_8();
    v2(v7, 0);
    OUTLINED_FUNCTION_9_0();
    v6 = v0;
    goto LABEL_8;
  }

  v9 = swift_task_alloc();
  v1[19] = v9;
  *v9 = v1;
  v9[1] = sub_1A35BD1D0;

  return MEMORY[0x1EEE49620]();
}

uint64_t Tips.Rule.init<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v19[0] = a2;
  v5 = _s18ParameterPredicateVMa();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = *a1;
  v12 = *MEMORY[0x1E69DA128];
  sub_1A3620E9C();
  OUTLINED_FUNCTION_0_14();
  (*(v13 + 104))(a3, v12);
  sub_1A35AD1FC();
  v14 = sub_1A35AD274(v5);
  (*(v7 + 8))(v10, v5);
  v15 = type metadata accessor for Tips.Rule();
  *(a3 + v15[5]) = v14;
  v16 = (a3 + v15[6]);
  v19[1] = v11;
  type metadata accessor for Tips.Parameter();
  v17 = sub_1A35A57D0();
  v16[3] = _s9CoreValueCMa();
  v16[4] = swift_getWitnessTable();

  *v16 = v17;
  *(a3 + v15[7]) = 0;
  return result;
}

void sub_1A35A4D54()
{
  v1 = *v0;
  v2 = v0[2];
  v4 = *(*v0 + 80);
  v5 = *(v1 + 96);
  sub_1A35A4EAC(sub_1A35A49F0, &v3, v2, v4, v4);
}

uint64_t sub_1A35A4DF0()
{
  v1 = *(*v0 + 24);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

void sub_1A35A4E24(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

unint64_t sub_1A35A4F38(uint64_t a1, uint64_t a2)
{
  sub_1A36234CC();
  sub_1A3622BFC();
  v4 = sub_1A36234EC();

  return sub_1A35A4FB0(a1, a2, v4);
}

unint64_t sub_1A35A4FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1A362345C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1A35A5064(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A35A5074(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A35A5084(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  v8 = *(*v1 + 80);
  v9 = *(v3 + 96);
  v10 = a1;
  v5 = v8;
  sub_1A35A4EAC(sub_1A35A5168, &v7, v4, v8, MEMORY[0x1E69E7CA8] + 8);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_1A35A5168(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  (*(v7 + 8))();
  return (*(v6 + 16))(a1, v4, v3);
}

uint64_t sub_1A35A5214(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v2[14] = *(*v1 + 80);
  v3 = sub_1A36230DC();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A35A4A48, 0, 0);
}

uint64_t sub_1A35A5314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A35A4824;

  return sub_1A35A54D4(a1, v4, v5, v6);
}

uint64_t sub_1A35A53C8()
{
  if (*(v0[2] + 40))
  {

    sub_1A35A4814(v0[2]);

    OUTLINED_FUNCTION_5_1();

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1A35ADAF8;
    v4 = v0[6];

    return sub_1A35A5214(v4);
  }
}

uint64_t sub_1A35A54D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*a4 + 80);
  v4[3] = v5;
  v6 = sub_1A36230DC();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  sub_1A36214FC();
  v4[10] = sub_1A36214EC();
  sub_1A35A5BC4();
  v8 = sub_1A3622DFC();
  v4[11] = v8;
  v4[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A35A53C8, v8, v7);
}

uint64_t sub_1A35A5640(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A35A490C;

  return v6(a1);
}

uint64_t sub_1A35A5738()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_2(v1);

  return v4(v3);
}

uint64_t sub_1A35A57D0()
{
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1A36210BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA80);
  _s9CoreValueCMa();
  if (swift_dynamicCast())
  {
    return v9;
  }

  v6 = sub_1A362108C();
  v8 = v7;
  v9 = v4;
  Tips.Parameter.wrappedValue.getter();
  return sub_1A35A2098(v6, v8, v3, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A35A58E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  OUTLINED_FUNCTION_5();
  result = MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  if (!*(v0 + 48))
  {
    sub_1A3622E4C();
    v6 = sub_1A3622E6C();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    sub_1A36214FC();

    v7 = sub_1A36214EC();
    v8 = sub_1A35A5BC4();
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v1;
    *(v1 + 48) = sub_1A35D34A0(0, 0, v5, &unk_1A36269F8, v9);
  }

  return result;
}

uint64_t sub_1A35A59FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_1A36233DC();
}

uint64_t OUTLINED_FUNCTION_5_4()
{
  v4 = *(*(v0 + v2) + 16);

  return sub_1A35D53BC(v4, v1);
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return sub_1A362141C();
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return type metadata accessor for TipUIWrapperView();
}

unint64_t sub_1A35A5BC4()
{
  result = qword_1ED81F1A8;
  if (!qword_1ED81F1A8)
  {
    sub_1A36214FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81F1A8);
  }

  return result;
}

uint64_t sub_1A35A5C1C()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v2;
  if (v2 == 1)
  {
    sub_1A36210CC();
    v4 = v1[3];
    v5 = v1[4];
    v6 = sub_1A362106C();
    v3 = sub_1A35A5CB4(v4, v5, v6);

    v7 = v1[7];
    v1[7] = v3;

    sub_1A35A5074(v7);
  }

  sub_1A35A5064(v2);
  return v3;
}

uint64_t sub_1A35A5CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A35A4F38(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

BOOL sub_1A35A5D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = a1 + 32; v1; i += 40)
  {
    sub_1A35A4134(i, v5);
    sub_1A35A63BC(v5, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA88);
    if (swift_dynamicCast())
    {
      break;
    }

    --v1;
  }

  return v1 != 0;
}

uint64_t Tips.Parameter.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_8();
  sub_1A35A57D0();
  sub_1A35A5E90(a1);

  OUTLINED_FUNCTION_5_0();
  v3 = *(v2 + 8);

  return v3(a1);
}

uint64_t sub_1A35A5E90(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  if (sub_1A35A5C1C() && (v10 = sub_1A36210AC(), , (v10 & 1) == 0) || (v16[3] = v4, boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16), (*(v6 + 16))(boxed_opaque_existential_0, a1, v4), v15[3] = v4, __swift_allocate_boxed_opaque_existential_0(v15), sub_1A35A4D54(), OUTLINED_FUNCTION_0_9(), swift_getWitnessTable(), v12 = sub_1A3620E4C(), sub_1A35B1500(v15), result = sub_1A35B1500(v16), (v12 & 1) != 0))
  {
    if (*(v2 + 48))
    {

      sub_1A3622F1C();
    }

    (*(v6 + 16))(v9, a1, v4);
    result = sub_1A35A5084(v9);
    v14 = *(v2 + 56);
    if (v14)
    {

      OUTLINED_FUNCTION_6();
      sub_1A362109C();
      return sub_1A35A5074(v14);
    }
  }

  return result;
}

uint64_t sub_1A35A6098()
{
  v1 = *v0;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

uint64_t sub_1A35A60C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1A362141C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1A35A613C()
{
  sub_1A3620E9C();
  if (v0 <= 0x3F)
  {
    sub_1A3620FAC();
    if (v1 <= 0x3F)
    {
      sub_1A35A83CC(319, &qword_1ED81F018, &qword_1EB0EEB20);
      if (v2 <= 0x3F)
      {
        sub_1A35A83CC(319, &qword_1EB0EEB28, &qword_1EB0EEB30);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t Tip.status.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = sub_1A36213AC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_0_17();
  sub_1A35A6624(a1, a2);
  sub_1A36213BC();

  v11[3] = a1;
  v11[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v3, a1);
  return sub_1A35A416C(v4, v11, a3);
}

uint64_t type metadata accessor for Tips.Rule()
{
  result = qword_1ED81F238;
  if (!qword_1ED81F238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35A6350(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A35A63BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1A35A63D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = *(v9 + 16);
  v12(&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  if (swift_dynamicCast())
  {
    sub_1A35A6350(v21, v18);
    sub_1A35C18CC(v21);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1A35A63D4(&v23, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (*(&v24 + 1))
    {
      return sub_1A35A63BC(&v23, a3);
    }
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1A35B4F20(v21, &qword_1EB0EEC78);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  result = (v12)(boxed_opaque_existential_0, v4, a1);
  if (*(&v24 + 1))
  {
    return sub_1A35B4F20(&v23, &qword_1EB0EEAF8);
  }

  return result;
}

uint64_t sub_1A35A6588(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A35A6624(uint64_t a1, uint64_t a2)
{
  sub_1A35A63D4(a1, a2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  OUTLINED_FUNCTION_11();
  v2 = sub_1A35A66B0();
  v4 = sub_1A35A7250(v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1A35A66B0()
{
  if (_s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0() & 1) != 0 && (v0 = OUTLINED_FUNCTION_11(), v1(v0), v2 = sub_1A3622D9C(), , (v2))
  {
    v3 = OUTLINED_FUNCTION_11();

    return _s6TipKit0A0PAAE2idSSvg_0(v3, v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_11();

    return v7(v6);
  }
}

__n128 OUTLINED_FUNCTION_11_6()
{
  result = *(v0 - 224);
  v2 = *(v0 - 208);
  *(v0 - 128) = result;
  *(v0 - 112) = v2;
  *(v0 - 96) = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return swift_task_reportUnexpectedExecutor();
}

uint64_t sub_1A35A684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for Tips.Rule();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A362141C();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = a1;
  a6[1] = a2;
  a6[5] = a4;
  a6[6] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6 + 2);
  v49 = *(a4 - 8);
  (*(v49 + 16))(boxed_opaque_existential_0, a3, a4);
  v18 = *(a5 + 64);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v54 = a3;
  v50 = a5;
  v18(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB8);
  sub_1A3622D5C();

  v19 = *&v57[0];
  if (*&v57[0] < 2uLL)
  {
    sub_1A362158C();
    v20 = sub_1A362156C();
    sub_1A35A5074(v19);
    v19 = v20;
  }

  v51 = _s9CoreValueVMa_0();
  v21 = v51[9];
  swift_unownedRetain();

  *(a6 + v21) = v19;
  a6[7] = a4;
  sub_1A3622D5C();
  if (LOBYTE(v57[0]) == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v57[0] & 1;
  }

  v45 = v22;
  canShowWhileLockedSbyF_0 = _s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0();
  v52 = a6;
  v53 = a4;
  if (canShowWhileLockedSbyF_0)
  {
    (*(v50 + 16))(a4, v50);
    v44 = sub_1A3622D9C();
  }

  else
  {
    v44 = 0;
  }

  sub_1A3622D5C();
  if (LOBYTE(v57[0]) == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v57[0] & 1;
  }

  v43 = v24;
  sub_1A3622D5C();
  v25 = *&v57[0];
  if (BYTE8(v57[0]))
  {
    v25 = 0;
  }

  v42 = v25;
  sub_1A3622D5C();
  v41 = BYTE8(v57[0]) & 1 | ((*&v57[0] & 0x7FFFFFFFFFFFFFFFLL) == 0);
  sub_1A3622D5C();
  sub_1A3622D5C();
  sub_1A3622D5C();
  sub_1A3622D5C();

  v26 = v46;
  sub_1A36213EC();
  (*(v47 + 32))(v52 + v51[7], v26, v48);
  v27 = v54;
  v28 = (*(v50 + 56))(v53);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v40 + 80);
    v50 = v28;
    v31 = v28 + ((v30 + 32) & ~v30);
    v32 = *(v40 + 72);
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A35AC55C(v31, v14);
      sub_1A35AC5C0(a1, a2, &v55);
      sub_1A35ACE38(v14);
      if (v56)
      {
        sub_1A35ACE94(&v55, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A35ACE98(0, v33[2] + 1, 1, v33);
          v33 = v36;
        }

        v35 = v33[2];
        v34 = v33[3];
        if (v35 >= v34 >> 1)
        {
          sub_1A35ACE98(v34 > 1, v35 + 1, 1, v33);
          v33 = v37;
        }

        v33[2] = v35 + 1;
        sub_1A35ACE94(v57, &v33[5 * v35 + 4]);
      }

      else
      {
        sub_1A35E574C(&v55);
      }

      v31 += v32;
      --v29;
    }

    while (v29);

    v27 = v54;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  result = (*(v49 + 8))(v27, v53);
  *(v52 + v51[8]) = v33;
  return result;
}

uint64_t sub_1A35A6E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A362141C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35A6F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A362141C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_1A35A6FD4(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_12();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_7_3();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v10 = a2;
  }

  v13 = a4[2];
  if (v10 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v15 != a4 || &a4[5 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }
}

void sub_1A35A7104()
{
  if (!qword_1ED81F160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEB98);
    v0 = sub_1A3622D7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED81F160);
    }
  }
}

uint64_t sub_1A35A7204()
{
  _s9CoreValueVMa_0();
  result = sub_1A3622B1C();
  dword_1ED81F198 = 0;
  qword_1ED81F1A0 = result;
  return result;
}

uint64_t sub_1A35A7250(uint64_t a1, uint64_t a2)
{
  sub_1A362143C();
  v7 = a1;
  v8 = a2;
  v4 = sub_1A362135C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC60);
  sub_1A3622AEC();
  v4(v6, 0);
  return v9;
}

uint64_t sub_1A35A7324@<X0>(uint64_t *a1@<X8>)
{
  sub_1A362143C();
  v3[3] = _s9CoreValueVMa_0();
  v3[4] = sub_1A35A7550(&qword_1ED81F1D8);
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_1A35A7594();
  result = sub_1A362144C();
  *a1 = result;
  return result;
}

uint64_t _s9CoreValueVMa_0()
{
  result = qword_1ED81F1B0;
  if (!qword_1ED81F1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A35A743C()
{
  sub_1A35A8370();
  if (v0 <= 0x3F)
  {
    sub_1A35A750C();
    if (v1 <= 0x3F)
    {
      sub_1A362141C();
      if (v2 <= 0x3F)
      {
        sub_1A35A7104();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A35A750C()
{
  result = qword_1ED81F158;
  if (!qword_1ED81F158)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED81F158);
  }

  return result;
}

uint64_t sub_1A35A7550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s9CoreValueVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A35A7594()
{
  if (qword_1ED81F250 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED81F198);
  v0 = qword_1ED81F1A0;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  os_unfair_lock_unlock(&dword_1ED81F198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC68);
  sub_1A3622AEC();
  os_unfair_lock_lock(&dword_1ED81F198);

  qword_1ED81F1A0 = v0;
  os_unfair_lock_unlock(&dword_1ED81F198);
}

uint64_t sub_1A35A7690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, v14);
  v15 = *(a4 + 64);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v15(a3, a4);
  return sub_1A35A684C(a1, a2, v11, a3, a4, a5);
}

void *sub_1A35A77C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9[3] = a2;
  v9[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  result = sub_1A35A7840(v9);
  *a4 = result;
  return result;
}

void *sub_1A35A7840(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3627130;
  sub_1A35A797C(a1, inited + 32);
  sub_1A35A797C(inited + 32, &v15);
  v12[0] = v15;
  v12[1] = v16;
  v13 = v17;
  if (*(&v16 + 1))
  {
    sub_1A35A63BC(v12, v14);
    v3 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A35A7D2C(0, v3[2] + 1, 1, v3);
      v3 = v7;
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v8 = OUTLINED_FUNCTION_1_14(v4);
      sub_1A35A7D2C(v8, v9, v10, v3);
      v3 = v11;
    }

    v3[2] = v5 + 1;
    sub_1A35A63BC(v14, &v3[5 * v5 + 4]);
  }

  else
  {
    sub_1A35A7D54(v12);
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1A35A7D54(a1);
  swift_setDeallocating();
  sub_1A35A7DBC();
  return v3;
}

uint64_t sub_1A35A797C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A35A79EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A35A6350(i, v15);
      sub_1A35A6350(v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB8);
      if (swift_dynamicCast())
      {
        v4 = (sub_1A35A79EC)();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB0);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1A3627130;
        sub_1A35A6350(v15, v4 + 32);
      }

      v5 = *(v4 + 16);
      v6 = v2[2];
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > v2[3] >> 1)
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        sub_1A35A7D2C(isUniquelyReferenced_nonNull_native, v9, 1, v2);
        v2 = v10;
      }

      if (*(v4 + 16))
      {
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = v2[2];
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_25;
          }

          v2[2] = v13;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_23;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v15);
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t static Tips.OptionsBuilder.buildFinalResult<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v6 + 16);
  v8(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    sub_1A35A79EC(v13[1]);
    v10 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A3627130;
    *(v10 + 56) = a2;
    *(v10 + 64) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 32));
    v8(boxed_opaque_existential_0, a1, a2);
  }

  return v10;
}

uint64_t sub_1A35A7D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35A7DBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1A35A7E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *sub_1A35A7E74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A35A7F40);
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

_BYTE *sub_1A35A7F68(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1A35A8034);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1A35A8090(uint64_t a1)
{
  result = sub_1A35A80B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A35A80B8()
{
  result = qword_1ED81EED0;
  if (!qword_1ED81EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81EED0);
  }

  return result;
}

void sub_1A35A8114()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A35A8420();
    if (v1 <= 0x3F)
    {
      sub_1A362143C();
      if (v2 <= 0x3F)
      {
        sub_1A35B3600(319, &qword_1ED81E660);
        if (v3 <= 0x3F)
        {
          sub_1A35B3600(319, qword_1ED81EF18);
          if (v4 <= 0x3F)
          {
            sub_1A35A8864(319, &qword_1ED81E5F0, &qword_1EB0EED90, &unk_1A3627F50, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TipViewStyleConfiguration();
              if (v6 <= 0x3F)
              {
                sub_1A35A8864(319, &qword_1ED81E320, &qword_1EB0EED98, &unk_1A3627FC0, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A35A8864(319, &qword_1ED81E610, &qword_1EB0EE5B8, &unk_1A3625270, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A35A8864(319, &qword_1ED81EA70, &qword_1EB0EE998, &unk_1A36264B0, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A35A8864(319, &unk_1ED81EA78, &qword_1EB0EEDA0, &unk_1A3627FC8, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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
}

unint64_t sub_1A35A8370()
{
  result = qword_1ED81F260[0];
  if (!qword_1ED81F260[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED81F260);
  }

  return result;
}

void sub_1A35A83CC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1A36230DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A35A8420()
{
  result = qword_1ED81EB28;
  if (!qword_1ED81EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEBA8);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED81EB28);
  }

  return result;
}

uint64_t type metadata accessor for PopoverTip()
{
  result = qword_1ED81DCC8;
  if (!qword_1ED81DCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A35A84B8()
{
  sub_1A35A8370();
  if (v0 <= 0x3F)
  {
    sub_1A35A8420();
    if (v1 <= 0x3F)
    {
      sub_1A362143C();
      if (v2 <= 0x3F)
      {
        sub_1A360A534(319, &qword_1ED81EF10, &qword_1EB0EECF8, &unk_1A36286F0, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A362207C();
          if (v4 <= 0x3F)
          {
            sub_1A35A87B0(319, &qword_1ED81D750, MEMORY[0x1E6980D50], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A36221CC();
              if (v6 <= 0x3F)
              {
                sub_1A360A534(319, &qword_1ED81E5F0, &qword_1EB0EED90, &unk_1A3627F50, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1A35A8800(319, &qword_1ED81D840, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A35A8800(319, &qword_1ED81E6F0, type metadata accessor for TipViewEnvironment, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A360A534(319, &qword_1ED81E320, &qword_1EB0EED98, &unk_1A3627FC0, MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A35A8800(319, &qword_1ED81D748, _s13PopoverBridgeCMa, MEMORY[0x1E6981790]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A35A87B0(319, &qword_1ED81E600, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_1A35A87B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A35A8800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A35A8864(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for TipViewStyleConfiguration()
{
  result = qword_1ED81EEB8;
  if (!qword_1ED81EEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A35A8914()
{
  sub_1A35A8370();
  if (v0 <= 0x3F)
  {
    sub_1A362143C();
    if (v1 <= 0x3F)
    {
      sub_1A35A8A5C();
      if (v2 <= 0x3F)
      {
        sub_1A35A8AC0(319, &qword_1ED81EB38, MEMORY[0x1E69DA2C0]);
        if (v3 <= 0x3F)
        {
          sub_1A35A8AC0(319, &qword_1ED81EB68, MEMORY[0x1E697E178]);
          if (v4 <= 0x3F)
          {
            sub_1A35A8AC0(319, &qword_1ED81EB20, type metadata accessor for TipViewEnvironment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A35A8A5C()
{
  if (!qword_1ED81EF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EECF8);
    v0 = sub_1A36230DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED81EF10);
    }
  }
}

void sub_1A35A8AC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A36230DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A35A8B38()
{
  result = qword_1ED81DCD8;
  if (!qword_1ED81DCD8)
  {
    type metadata accessor for PopoverTip();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DCD8);
  }

  return result;
}

uint64_t sub_1A35A8B90()
{
  if (OUTLINED_FUNCTION_2_0())
  {
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_0();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_1A35A8BE4()
{
  if (OUTLINED_FUNCTION_2_0())
  {
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_0();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_1A36215DC();
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6C018](a1, a2, 0, 0, 0, 0);
}

uint64_t type metadata accessor for TipViewEnvironment()
{
  result = qword_1ED81E858;
  if (!qword_1ED81E858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1ED81F9E8 == -1)
  {
    if (qword_1ED81F9F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1ED81F9F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1ED81F9E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1ED81F9D4 > a3)
      {
        return 1;
      }

      if (dword_1ED81F9D4 >= a3)
      {
        return dword_1ED81F9D8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

void View.popoverTip(_:arrowEdge:action:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41(v2, v3, v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v11 = sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v61 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_28();
  v14 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();
  v18 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  sub_1A35AE1BC(v10, v64);
  v62 = v11;
  if (v64[3])
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v66 = &type metadata for EmptyTip;
    v67 = sub_1A35DED64();
  }

  *v1 = sub_1A36228DC();
  v26 = OUTLINED_FUNCTION_36();
  v27(v26);
  v59 = v14;
  if (v8 == 4)
  {
    v57 = 0;
  }

  else
  {
    v57 = MEMORY[0x1A58F2900](v8);
  }

  v56 = v8 == 4;
  sub_1A36221BC();
  v28 = v18[13];
  *(v22 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00);
  OUTLINED_FUNCTION_21_0();
  v29 = v18[14];
  *(v22 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  OUTLINED_FUNCTION_21_0();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_30(KeyPath);
  v31 = (v22 + v18[16]);
  v32 = objc_allocWithZone(_s13PopoverBridgeCMa());
  v33 = v60;

  v63 = [v32 init];
  OUTLINED_FUNCTION_14_1();
  v34 = v64[1];
  *v31 = v64[0];
  v31[1] = v34;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_8_2();
  v35 = sub_1A3622DBC();
  OUTLINED_FUNCTION_6_5(v35);
  sub_1A362288C();
  OUTLINED_FUNCTION_8_2();
  v36 = v66;
  v37 = v67;
  OUTLINED_FUNCTION_4();
  sub_1A35A63D4(v36, v37, v22);
  v38 = v67;
  v39 = OUTLINED_FUNCTION_3_10();
  v22[5] = sub_1A35ADF54(v39, v38);
  v22[6] = v40;
  v41 = v67;
  v42 = OUTLINED_FUNCTION_3_10();
  v43 = sub_1A35A6624(v42, v41);
  v44 = v58;
  v22[7] = v43;
  v22[8] = v44;
  v22[9] = v33;
  v45 = OUTLINED_FUNCTION_32();
  v46 = v59;
  v47(v45);
  v48 = v22 + v18[9];
  v49 = v56;
  *v48 = v57;
  v48[1] = v49;
  v50 = OUTLINED_FUNCTION_20();
  v51(v50);
  OUTLINED_FUNCTION_39(v22 + v18[11]);
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_13_0();
  if (v52)
  {
    v54 = sub_1A362274C();
  }

  else
  {
    v53 = [objc_opt_self() systemBackgroundColor];
    v54 = sub_1A362268C();
  }

  v55 = v54;
  (v31[1])(v0, v41);
  (*(v16 + 8))(v1, v46);
  *(v22 + v18[12]) = v55;
  sub_1A35AE338(v22, v25);
  __swift_destroy_boxed_opaque_existential_1(&v65);
  OUTLINED_FUNCTION_47();
  sub_1A35AE3BC(v25);
  OUTLINED_FUNCTION_24();
}

{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41(v1, v2, v3, v4, v5);
  v7 = v6;
  sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();
  v16 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v49 = v22;
  sub_1A35AE1BC(v7, v51);
  if (v51[3])
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v53 = &type metadata for EmptyTip;
    v54 = sub_1A35DED64();
  }

  *v0 = sub_1A36228DC();
  v23 = OUTLINED_FUNCTION_36();
  v24(v23);
  sub_1A36221BC();
  v25 = v16[13];
  *(v20 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00);
  OUTLINED_FUNCTION_21_0();
  v26 = v16[14];
  *(v20 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  OUTLINED_FUNCTION_21_0();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_30(KeyPath);
  v28 = (v20 + v16[16]);
  v29 = objc_allocWithZone(_s13PopoverBridgeCMa());

  [v29 init];
  OUTLINED_FUNCTION_14_1();
  v30 = v51[1];
  *v28 = v51[0];
  v28[1] = v30;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_8_2();
  v31 = v20 + v16[19];
  v32 = sub_1A3622DBC();
  OUTLINED_FUNCTION_6_5(v32);
  sub_1A362288C();
  OUTLINED_FUNCTION_8_2();
  v33 = v53;
  v34 = v54;
  OUTLINED_FUNCTION_4();
  sub_1A35A63D4(v33, v34, v20);
  v35 = v54;
  v36 = OUTLINED_FUNCTION_3_10();
  v20[5] = sub_1A35ADF54(v36, v35);
  v20[6] = v37;
  v38 = v54;
  v39 = OUTLINED_FUNCTION_3_10();
  v20[7] = sub_1A35A6624(v39, v38);
  v20[8] = v48;
  v20[9] = v50;
  v40 = OUTLINED_FUNCTION_32();
  v41(v40);
  *(v20 + v16[9]) = 256;
  v42 = OUTLINED_FUNCTION_20();
  v43(v42);
  OUTLINED_FUNCTION_39(v20 + v16[11]);
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_13_0();
  if (v44)
  {
    v46 = sub_1A362274C();
  }

  else
  {
    v45 = [objc_opt_self() systemBackgroundColor];
    v46 = sub_1A362268C();
  }

  v47 = v46;
  (*(v38 + 8))(v11, v31);
  (*(v14 + 8))(v0, v12);
  *(v20 + v16[12]) = v47;
  sub_1A35AE338(v20, v49);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  OUTLINED_FUNCTION_47();
  sub_1A35AE3BC(v49);
  OUTLINED_FUNCTION_24();
}

void OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 - 252) = a4;
  *(v4 - 264) = a3;
  *(v4 - 272) = a2;
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return sub_1A35BAABC(a1, v1);
}

uint64_t sub_1A35A9464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A35A9524(uint64_t *a1, int a2)
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

uint64_t sub_1A35A9578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE50);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A35A9634(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A35A96D0()
{
  result = sub_1A36230DC();
  if (v1 <= 0x3F)
  {
    result = sub_1A35A9760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A35A9760()
{
  result = qword_1ED81EB40;
  if (!qword_1ED81EB40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED81EB40);
  }

  return result;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1ED81F9F0;
  if (qword_1ED81F9F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1ED81F9F0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1A58F3E50](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1ED81F9D4, &dword_1ED81F9D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

uint64_t sub_1A35A9B30(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A35A9B78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_11_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A35A9BE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Tips.Event.init<>(id:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE618);
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_0_3();
  result = sub_1A35A9D38(v2, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1A35A9C9C()
{
  result = sub_1A362102C();
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

uint64_t sub_1A35A9D38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A362102C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1A362101C();
  (*(v6 + 32))(v2 + qword_1ED823318, v8, v5);
  return v2;
}

uint64_t Tips.Rule.init<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v24[0] = a2;
  v24[1] = a3;
  type metadata accessor for Tips.Event();
  v6 = _s14EventPredicateVMa();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v12 = *a1;
  v13 = *MEMORY[0x1E69DA118];
  sub_1A3620E9C();
  OUTLINED_FUNCTION_0_14();
  (*(v14 + 104))(a4, v13);
  sub_1A35AA038(v24[0], v11);
  sub_1A35AA244();
  v16 = v15;
  (*(v8 + 8))(v11, v6);
  v17 = type metadata accessor for Tips.Rule();
  *(a4 + v17[5]) = v16;
  v18 = (a4 + v17[6]);
  v28 = v12;
  sub_1A35ABE0C(v25);

  v19 = v26;
  v20 = v27;
  v21 = __swift_project_boxed_opaque_existential_1(v25, v26);
  v18[3] = v19;
  v18[4] = *(v20 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v21, v19);
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  *(a4 + v17[7]) = 0;
  return result;
}

uint64_t sub_1A35AA038@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Tips.Event();
  v4 = *(_s14EventPredicateVMa() + 28);
  sub_1A3620C4C();
  return a1(a2 + v4);
}

uint64_t sub_1A35AA0CC()
{
  result = sub_1A3620D6C();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A35AA154(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA190(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA1CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA208(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A35AA244()
{
  v1 = v0;
  v2 = sub_1A3620F6C();
  OUTLINED_FUNCTION_3();
  v28 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = sub_1A3620F4C();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE630);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for EventPredicateParser();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  sub_1A35A6350(v1, v31);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE640);
  if (!swift_dynamicCast())
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_1A35B4F20(v29, &qword_1EB0EE648);
    __break(1u);
    goto LABEL_9;
  }

  v27 = v2;
  v23 = v7;
  sub_1A35A63BC(v29, v32);
  sub_1A35A6350(v32, v31);
  sub_1A35AA8A4(v31, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
LABEL_9:
    sub_1A35B4F20(v17, &qword_1EB0EE630);
    __break(1u);

    __break(1u);
    return;
  }

  sub_1A35ABA7C(v17, v21);
  v24 = v33;
  v25 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v25 + 40))(v21, v24, v25);
  (*(v10 + 16))(v14, v21, v8);
  (*(v28 + 16))(v23, v21 + v18[5], v27);
  sub_1A35AB75C(v21 + v18[6], v31);
  if (*(*(v21 + v18[7]) + 16))
  {
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  }

  if (*(*(v21 + v18[8]) + 16))
  {
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  }

  sub_1A3620FAC();
  sub_1A3620F8C();
  sub_1A35AB81C(v21);
  __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t type metadata accessor for EventPredicateParser()
{
  result = qword_1ED81EDD0;
  if (!qword_1ED81EDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A35AA62C()
{
  sub_1A3620F4C();
  if (v0 <= 0x3F)
  {
    sub_1A3620F6C();
    if (v1 <= 0x3F)
    {
      sub_1A35AA724(319, &qword_1ED81EA60, MEMORY[0x1E69DA170]);
      if (v2 <= 0x3F)
      {
        sub_1A35AA724(319, &qword_1ED81EA68, MEMORY[0x1E69DA158]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A35AA724(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A3622D7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A35AA778(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA7B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA808(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA85C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35AA8A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE988);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  sub_1A3620F6C();
  OUTLINED_FUNCTION_3();
  v48 = v7;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0EE658);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_1A3620F2C();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v50 = type metadata accessor for EventPredicateParser();
  MEMORY[0x1EEE9AC00](v50);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v22 + 24))(v23, v22);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v24 = qword_1EB0EE658;
    v25 = v11;
  }

  else
  {
    (*(v14 + 32))(v19, v11, v12);
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(v27 + 16))(v26, v27);
    v28 = v49;
    if (__swift_getEnumTagSinglePayload(v5, 1, v49) == 1)
    {
      v29 = OUTLINED_FUNCTION_0_7();
      v30(v29);
      v24 = &qword_1EB0EE988;
      v25 = v5;
    }

    else
    {
      (*(v48 + 32))(v47, v5, v28);
      v31 = a1[3];
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v31);
      (*(v32 + 32))(&v52, v31, v32);
      if (v53)
      {
        v33 = v50;
        v34 = *(v50 + 32);
        v44 = *(v50 + 28);
        v45 = v34;
        sub_1A35A270C(&v52, v54);
        (*(v14 + 16))(v46, v19, v12);
        sub_1A3620F3C();
        v35 = v47;
        v36 = v48;
        (*(v48 + 16))(&v21[*(v33 + 20)], v47, v28);
        sub_1A35AB75C(v54, &v21[*(v33 + 24)]);
        v37 = MEMORY[0x1E69E7CC0];
        *&v21[v44] = MEMORY[0x1E69E7CC0];
        __swift_destroy_boxed_opaque_existential_1(v54);
        (*(v36 + 8))(v35, v28);
        v38 = OUTLINED_FUNCTION_0_7();
        v39(v38);
        *&v21[v45] = v37;
        v40 = v51;
        sub_1A35AB7B8(v21, v51);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v33);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return sub_1A35AB81C(v21);
      }

      (*(v48 + 8))(v47, v28);
      v42 = OUTLINED_FUNCTION_0_7();
      v43(v42);
      v24 = &unk_1EB0EE650;
      v25 = &v52;
    }
  }

  sub_1A35B4F20(v25, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return __swift_storeEnumTagSinglePayload(v51, 1, 1, v50);
}

uint64_t sub_1A35AAD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v34 = a3;
  v35 = a6;
  v31 = *(a1 + 24);
  v32 = a5;
  OUTLINED_FUNCTION_1();
  v33 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0EE658);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_0();
  v23 = v22 - v21;
  a4(a1);
  (*(a2 + 24))(v17, a2);
  (*(v19 + 8))(v23, v17);
  v24 = sub_1A3620F2C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v24) == 1)
  {
    v32(a1);
    v25 = v31;
    (*(v34 + 24))(v31);
    (*(v33 + 8))(v13, v25);
    result = __swift_getEnumTagSinglePayload(v16, 1, v24);
    if (result != 1)
    {
      return sub_1A35A6588(v16, qword_1EB0EE658);
    }
  }

  else
  {
    (*(*(v24 - 8) + 32))(v35, v16, v24);
    OUTLINED_FUNCTION_6_3();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
  }

  return result;
}

uint64_t sub_1A35AB074@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A3620C1C();
  v3 = sub_1A36230DC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  sub_1A3620C2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) != 1)
  {
    (*(v5 + 16))(v10, v12, v3);
    v15 = *(v2 - 8);
    v16 = (*(v15 + 88))(v10, v2);
    if (v16 == *MEMORY[0x1E6968D30])
    {
      v14 = MEMORY[0x1E69DA178];
      goto LABEL_11;
    }

    if (v16 == *MEMORY[0x1E6968D40])
    {
      v14 = MEMORY[0x1E69DA188];
      goto LABEL_11;
    }

    if (v16 == *MEMORY[0x1E6968D38])
    {
      v14 = MEMORY[0x1E69DA180];
      goto LABEL_11;
    }

    if (v16 == *MEMORY[0x1E6968D48])
    {
      v14 = MEMORY[0x1E69DA190];
      goto LABEL_11;
    }

    (*(v15 + 8))(v10, v2);
  }

  sub_1A3620C2C();
  *a1 = sub_1A3622BDC();
  a1[1] = v13;
  v14 = MEMORY[0x1E69DA198];
LABEL_11:
  v17 = *v14;
  v18 = sub_1A3620F2C();
  OUTLINED_FUNCTION_0_0();
  (*(v19 + 104))(a1, v17, v18);
  OUTLINED_FUNCTION_6_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  return (*(v5 + 8))(v12, v3);
}

uint64_t sub_1A35AB338()
{
  v0 = sub_1A3620BFC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_3_0();
  sub_1A3620BEC();
  sub_1A3620F7C();
  sub_1A3620F6C();
  OUTLINED_FUNCTION_6_3();
  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

_OWORD *sub_1A35AB3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X4>, _OWORD *a5@<X8>)
{
  v7 = *(a1 + 24);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v22();
  (*(a2 + 32))(&v27, v15, a2);
  (*(v17 + 8))(v21, v15);
  if (v28)
  {
    return sub_1A35A270C(&v27, a5);
  }

  a4(a1);
  (*(a3 + 32))(v7);
  result = (*(v9 + 8))(v13, v7);
  if (v28)
  {
    return sub_1A35A6588(&v27, &qword_1EB0EE650);
  }

  return result;
}

double sub_1A35AB624@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1A35AB630@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = *(a1 + 16);
  __swift_allocate_boxed_opaque_existential_0(a2);
  return MEMORY[0x1A58F1290](a1);
}

unint64_t sub_1A35AB670()
{
  result = sub_1A35AB6F8();
  if (v1 <= 0x3F)
  {
    result = sub_1A3620C5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A35AB6F8()
{
  result = qword_1ED81EAA0;
  if (!qword_1ED81EAA0)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1ED81EAA0);
  }

  return result;
}

uint64_t sub_1A35AB75C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A35AB7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventPredicateParser();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35AB81C(uint64_t a1)
{
  v2 = type metadata accessor for EventPredicateParser();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A35AB88C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A3620F4C();
  OUTLINED_FUNCTION_1_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1A3620F6C();
    OUTLINED_FUNCTION_1_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1A35AB98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3620F4C();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1A3620F6C();
  OUTLINED_FUNCTION_1_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1A35ABA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventPredicateParser();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A35ABB28()
{
  OUTLINED_FUNCTION_9();
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v24 = *(v4 + 24);
  OUTLINED_FUNCTION_1();
  v25 = v8;
  v26 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v23(v22);
  (*(v3 + 40))(v7, v15, v3);
  (*(v17 + 8))(v21, v15);
  if (!v0)
  {
    v25(v5);
    (*(v27 + 40))(v7, v24);
    (*(v26 + 8))(v13, v24);
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_1A35ABCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  MEMORY[0x1A58F12C0](v12);
  (*(a3 + 40))(a1, v5, a3);
  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1A35ABE0C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = _s14descr1F1647EB9C9CoreValueCMa();
  a1[4] = swift_getWitnessTable();
  *a1 = v3;
}

uint64_t TipGroup.currentTip.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A35ABFAC(qword_1ED81DA98, type metadata accessor for TipGroup);
  sub_1A362161C();

  swift_beginAccess();
  return sub_1A35ABFF4(v1 + 24, a1, &qword_1EB0EEAF8);
}

uint64_t sub_1A35ABFAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A35ABFF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1A35AC054()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A35AC154, v2, 0);
}

uint64_t sub_1A35AC154()
{
  v1 = *(v0 + 136);
  if (v1 == 9)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    OUTLINED_FUNCTION_5_1();

    return v2();
  }

  else
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    sub_1A36213BC();
    v7 = sub_1A362137C();
    (*(v5 + 8))(v4, v6);
    *(v0 + 137) = v7;
    *(v0 + 138) = 3;
    sub_1A35AC368();
    if (sub_1A3622B4C())
    {
      v8 = swift_task_alloc();
      *(v0 + 120) = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_0_20();
      OUTLINED_FUNCTION_7_4();

      return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
    }

    else
    {
      *(v0 + 139) = v1;
      v13 = swift_task_alloc();
      *(v0 + 128) = v13;
      *v13 = v0;
      v13[1] = sub_1A35B1A64;
      v14 = *(v0 + 24);
      v15 = *(v0 + 16);

      return sub_1A35AC3BC(v15, v14, (v0 + 139));
    }
  }
}

unint64_t sub_1A35AC368()
{
  result = qword_1ED81DCF0;
  if (!qword_1ED81DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DCF0);
  }

  return result;
}

uint64_t sub_1A35AC3BC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 184) = a2;
  *(v4 + 192) = v3;
  *(v4 + 208) = *a3;
  sub_1A3622E3C();
  *(v4 + 200) = sub_1A3622E2C();
  v6 = sub_1A3622DFC();

  return MEMORY[0x1EEE6DFA0](sub_1A35B1568, v6, v5);
}

uint64_t sub_1A35AC484()
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE494E8](v0, WitnessTable);
}

uint64_t sub_1A35AC4DC()
{
  v1 = *(*v0 + 16);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

uint64_t _s9CoreValueVMa()
{
  result = qword_1ED81F128;
  if (!qword_1ED81F128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35AC55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.Rule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35AC5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v73 = a3;
  sub_1A3620F6C();
  OUTLINED_FUNCTION_3();
  v70 = v8;
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Tips.Rule();
  OUTLINED_FUNCTION_3();
  v68 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v66 - v16;
  v17 = sub_1A3620E9C();
  OUTLINED_FUNCTION_3();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35ACC18(v4 + *(v10 + 24), &v74);
  if (v75)
  {
    v23 = v10;
    sub_1A35A63BC(&v74, v76);
    v24 = OUTLINED_FUNCTION_3_11();
    v25(v24);
    OUTLINED_FUNCTION_1_10();
    sub_1A35E0FB4(v26, v27);
    v28 = sub_1A3622B4C();
    (*(v19 + 8))(v22, v17);
    if ((v28 & 1) == 0)
    {
      v44 = _s9CoreValueVMa();
      v45 = v73;
      v73[3] = v44;
      OUTLINED_FUNCTION_0_15();
      v45[4] = sub_1A35E0FB4(v46, v47);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
      v49 = boxed_opaque_existential_0 + *(v44 + 24);
      sub_1A35AC55C(v4, v49);
      sub_1A35A6350(v76, boxed_opaque_existential_0 + *(v44 + 28));
      sub_1A3620E7C();
      v50 = *(v49 + *(v23 + 20));
      *boxed_opaque_existential_0 = sub_1A3620DEC();
      boxed_opaque_existential_0[1] = v51;
      boxed_opaque_existential_0[2] = v50;
      v52 = v50;
      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v76);
    v10 = v23;
  }

  else
  {
    result = sub_1A35B4F20(&v74, &qword_1EB0EEB40);
  }

  v67 = v10;
  v30 = *(v4 + *(v10 + 28));
  if (v30 && (v31 = OUTLINED_FUNCTION_3_11(), v32(v31), OUTLINED_FUNCTION_1_10(), sub_1A35E0FB4(v33, v34), sub_1A3622CAC(), sub_1A3622CAC(), result = (*(v19 + 8))(v22, v17), *&v76[0] == v74))
  {
    sub_1A35AC55C(v4, v72);
    v35 = *(v30 + 16);
    if (v35)
    {
      v36 = v30 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v37 = MEMORY[0x1E69E7CC0];
      v38 = *(v68 + 72);
      do
      {
        sub_1A35AC55C(v36, v15);
        sub_1A35AC5C0(&v74, a1, a2);
        sub_1A35ACE38(v15);
        if (v75)
        {
          sub_1A35A63BC(&v74, v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A35ACE98(0, v37[2] + 1, 1, v37);
            v37 = v41;
          }

          v40 = v37[2];
          v39 = v37[3];
          if (v40 >= v39 >> 1)
          {
            sub_1A35ACE98(v39 > 1, v40 + 1, 1, v37);
            v37 = v42;
          }

          v37[2] = v40 + 1;
          sub_1A35A63BC(v76, &v37[5 * v40 + 4]);
        }

        else
        {
          sub_1A35B4F20(&v74, &qword_1EB0EEB50);
        }

        v36 += v38;
        --v35;
      }

      while (v35);
    }

    v53 = _s9CoreValueVMa();
    v54 = v73;
    v73[3] = v53;
    OUTLINED_FUNCTION_0_15();
    v54[4] = sub_1A35E0FB4(v55, v56);
    v57 = __swift_allocate_boxed_opaque_existential_0(v54);
    sub_1A3620E7C();
    v58 = v72;
    v59 = *(v72 + *(v67 + 20));
    v60 = v69;
    sub_1A3620F9C();
    v61 = sub_1A3620DDC();
    v63 = v62;
    (*(v70 + 8))(v60, v71);
    *v57 = v61;
    v57[1] = v63;
    v57[2] = v59;
    sub_1A35AC55C(v58, v57 + *(v53 + 24));
    v64 = (v57 + *(v53 + 28));
    v64[3] = sub_1A3620EBC();
    v64[4] = sub_1A35E0FB4(&qword_1EB0EEB58, MEMORY[0x1E69DA150]);
    __swift_allocate_boxed_opaque_existential_0(v64);
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    v65 = v59;
    sub_1A3620EAC();
    return sub_1A35ACE38(v58);
  }

  else
  {
    v43 = v73;
    v73[4] = 0;
    *v43 = 0u;
    *(v43 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1A35ACC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A35ACC88()
{
  result = sub_1A3620FAC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Tips.Rule();
    if (v2 <= 0x3F)
    {
      result = sub_1A35ACD4C();
      if (v3 <= 0x3F)
      {
        result = sub_1A3620E8C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1A35ACD4C()
{
  result = qword_1ED81F008;
  if (!qword_1ED81F008)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED81F008);
  }

  return result;
}

uint64_t sub_1A35ACE38(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Rule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static Tips.OptionsBuilder.buildOptional(_:)@<X0>(void *a1@<X8>)
{
  v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  result = sub_1A35ACEFC(v2);
  *a1 = result;
  return result;
}

void *sub_1A35ACEFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A35A797C(v2, &v15);
      v12[0] = v15;
      v12[1] = v16;
      v13 = v17;
      if (*(&v16 + 1))
      {
        sub_1A35A63BC(v12, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A35A7D2C(0, v3[2] + 1, 1, v3);
          v3 = v6;
        }

        v5 = v3[2];
        v4 = v3[3];
        if (v5 >= v4 >> 1)
        {
          v7 = OUTLINED_FUNCTION_1_14(v4);
          sub_1A35A7D2C(v7, v8, v9, v3);
          v3 = v10;
        }

        v3[2] = v5 + 1;
        sub_1A35A63BC(v14, &v3[5 * v5 + 4]);
      }

      else
      {
        sub_1A35A7D54(v12);
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1A35AD02C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t static Tips.OptionsBuilder.buildExpression<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB8);
  result = sub_1A362328C();
  *a1 = result;
  return result;
}

unint64_t sub_1A35AD098()
{
  result = qword_1ED81F020[0];
  if (!qword_1ED81F020[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEC18);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED81F020);
  }

  return result;
}

uint64_t sub_1A35AD0FC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1A35AD5D4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Tips.Rule();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A35AD274(uint64_t a1)
{
  v12 = *(a1 + 16);
  v1 = sub_1A3620DAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - v3;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1A3620D8C();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_1A362344C();
  sub_1A362329C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v7 = v10;
  v8 = v11;
  v6[4] = 0xD000000000000020;
  v6[5] = 0x80000001A3638FB0;
  v6[2] = 0;
  v6[3] = 0xE000000000000000;
  sub_1A35A03D8();
  sub_1A36230EC();

  sub_1A3620D9C();
  sub_1A362150C();
  sub_1A3620FAC();
  (*(v2 + 8))(v4, v1);
  return sub_1A3620EFC();
}

uint64_t sub_1A35AD4B4()
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE49518](v0, WitnessTable);
}

uint64_t static Tips.RuleBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB60);
  v2 = *(type metadata accessor for Tips.Rule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A3627130;
  sub_1A35AC55C(a1, v4 + v3);
  return v4;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)()
{
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v0 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35AD0FC(v0);
}

void sub_1A35AD630(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_12();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_7_3();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1A35AD7E0(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_1A35E1990(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1A35AD768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

size_t sub_1A35AD7E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
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

uint64_t static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A36277E0;
  *(v14 + 56) = a3;
  *(v14 + 64) = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  *(v14 + 96) = a4;
  *(v14 + 104) = a6;
  v16 = __swift_allocate_boxed_opaque_existential_0((v14 + 72));
  result = (*(*(a4 - 8) + 16))(v16, a2, a4);
  *a7 = v14;
  return result;
}

uint64_t sub_1A35ADA0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s9CoreValueVMa() + 24);
  v4 = sub_1A3620E9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 264);
  v24 = *(v21 - 256);
  v25 = *(v21 - 248);
  v26 = *(v21 - 244);

  sub_1A35EB218(a1, v23, v24, v25, a5, v26, a7, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_24_2@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1A360F89C(v3);
}

uint64_t sub_1A35ADAF8()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1A35ADC10, v5, v4);
}

uint64_t sub_1A35ADC10()
{
  v2 = v0 + 6;
  v1 = v0[6];
  v4 = v0 + 3;
  v3 = v0[3];

  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    v5 = v0 + 5;
    v4 = v0 + 4;
  }

  else
  {
    v2 = v0 + 9;
    v5 = v0 + 7;
    (*(v0[7] + 32))(v0[9], v0[6], v0[3]);
    if ((sub_1A3622F2C() & 1) == 0)
    {
      v6 = v0[8];
      (*(v0[7] + 16))(v6, v0[9], v0[3]);
      sub_1A35A5084(v6);
    }
  }

  (*(*v5 + 8))(*v2, *v4);
  sub_1A35A4814(v0[2]);

  OUTLINED_FUNCTION_5_1();

  return v7();
}

uint64_t sub_1A35ADD4C()
{
  result = sub_1A36229CC();
  byte_1ED823310 = result & 1;
  return result;
}

uint64_t sub_1A35ADD70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED81E670 != -1)
  {
    swift_once();
  }

  v2 = byte_1ED823310;
  v3 = type metadata accessor for TipViewEnvironment();
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v4 = v3[7];
  v5 = sub_1A36221CC();
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  result = sub_1A362268C();
  v8 = a1 + v3[8];
  v9 = MEMORY[0x1E6981568];
  *(v8 + 24) = MEMORY[0x1E69815C0];
  *(v8 + 32) = v9;
  *v8 = result;
  v10 = a1 + v3[11];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 64) = 4;
  *(v8 + 40) = 0;
  v11 = a1 + v3[9];
  v12 = 13.0;
  if (v2)
  {
    v12 = 26.0;
  }

  v13 = 45.0;
  if (v2)
  {
    v13 = 56.0;
  }

  *v11 = v12;
  *(v11 + 8) = 1;
  v14 = a1 + v3[10];
  *v14 = v13;
  *(v14 + 8) = v13;
  *(v14 + 16) = 0;
  v15 = (a1 + v3[12]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v3[13]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

unint64_t sub_1A35ADEFC()
{
  result = qword_1ED81EEC8;
  if (!qword_1ED81EEC8)
  {
    type metadata accessor for MiniTipViewStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81EEC8);
  }

  return result;
}

uint64_t sub_1A35ADF54(uint64_t a1, uint64_t a2)
{
  sub_1A35A63D4(a1, a2, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return DynamicType;
}

uint64_t _s6TipKit0A0PAAE2idSSvg_0(uint64_t a1, uint64_t a2)
{
  sub_1A35ADF54(a1, a2);

  return sub_1A3622BBC();
}

void OUTLINED_FUNCTION_39(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_1A362288C();
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

id sub_1A35AE098()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_sourceAppeared] = 0;
  v0[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_allowsBackgroundInteraction] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void OUTLINED_FUNCTION_17_0()
{
  v2 = *(v1 - 88);
  *v0 = *(v1 - 96);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return sub_1A35B567C(v0, v1, v2);
}

id OUTLINED_FUNCTION_17_6()
{

  return [v0 (v1 + 3448)];
}

uint64_t sub_1A35AE1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return type metadata accessor for TipViewStyleConfiguration();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return swift_task_reportUnexpectedExecutor();
}

uint64_t OUTLINED_FUNCTION_12_8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1A3614ED8(v3);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1A3622CCC();
}

uint64_t sub_1A35AE338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35AE3BC(uint64_t a1)
{
  v2 = type metadata accessor for PopoverTip();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:backgroundInteraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v73 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_29(v29, v30, v31, v32);
  v34 = v33;
  v75 = sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3_0();
  v74 = v39 - v38;
  OUTLINED_FUNCTION_31_0();
  v77 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_3_0();
  v76 = v44 - v43;
  OUTLINED_FUNCTION_31_0();
  v45 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_12();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_46();
  sub_1A35AE1BC(v34, v51);
  if (v78)
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v79[3] = &type metadata for EmptyTip;
    v79[4] = sub_1A35DED64();
  }

  v71 = *(v41 + 16);
  v71(v76, v28, v77);
  v72 = v41;
  if (v26 == 4)
  {
    v70 = 0;
  }

  else
  {
    v70 = MEMORY[0x1A58F2900](v26);
  }

  v52 = *(v36 + 16);
  v52(v74, v24, v75);
  v53 = v45[13];
  *(v49 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00);
  OUTLINED_FUNCTION_23_0();
  v54 = v45[14];
  *(v49 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  OUTLINED_FUNCTION_23_0();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_30(KeyPath);
  [objc_allocWithZone(_s13PopoverBridgeCMa()) init];
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_7_2();
  v56 = sub_1A3622DBC();
  OUTLINED_FUNCTION_6_5(v56);
  sub_1A362288C();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_4();
  v57 = OUTLINED_FUNCTION_9_1();
  sub_1A35A63D4(v57, v58, v59);
  v60 = OUTLINED_FUNCTION_2_10();
  *(v49 + 40) = sub_1A35ADF54(v60, v61);
  *(v49 + 48) = v62;
  v63 = OUTLINED_FUNCTION_2_10();
  v65 = sub_1A35A6624(v63, v64);
  v66 = OUTLINED_FUNCTION_42(v65);
  v71(v66, v76, v77);
  v67 = (v49 + v45[9]);
  *v67 = v70;
  v67[1] = v26 == 4;
  v52(v49 + v45[10], v74, v75);
  OUTLINED_FUNCTION_19();
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_13_0();
  if (v68)
  {
    sub_1A362274C();
  }

  else
  {
    v69 = [objc_opt_self() systemBackgroundColor];
    sub_1A362268C();
  }

  (*(v36 + 8))(v74, v75);
  (*(v72 + 8))(v76, v77);
  OUTLINED_FUNCTION_48();
  __swift_destroy_boxed_opaque_existential_1(v79);
  MEMORY[0x1A58F2CC0](v21, v73, v45, a21);
  sub_1A35AE3BC(v21);
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35AE860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v62 = a2;
  v4 = type metadata accessor for PopoverTip();
  v5 = v4 - 8;
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = v6;
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v52 - v9;
  v61 = sub_1A36213AC();
  OUTLINED_FUNCTION_3();
  v64 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v52 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7D8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7E0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7E8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7F0);
  v25 = OUTLINED_FUNCTION_14(v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v59 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v52 - v28;
  v30 = v3;
  v31 = v3 + *(v5 + 84);
  v32 = *v31;
  v33 = *(v31 + 8);
  v66 = v32;
  v67 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  sub_1A362289C();
  if (v65 == 1)
  {
    sub_1A360B600(v58, v23);
    sub_1A35B567C(v23, v20, &qword_1EB0EF7E8);
    swift_storeEnumTagMultiPayload();
    sub_1A360D584();
    sub_1A360D8DC();
    OUTLINED_FUNCTION_9_8();
    sub_1A360DA00(v23, &qword_1EB0EF7E8);
  }

  else
  {
    sub_1A35AF1DC(v58, v17);
    sub_1A35B567C(v17, v20, &qword_1EB0EF7D8);
    swift_storeEnumTagMultiPayload();
    sub_1A360D584();
    sub_1A360D8DC();
    OUTLINED_FUNCTION_9_8();
    sub_1A360DA00(v17, &qword_1EB0EF7D8);
  }

  v34 = v63;
  sub_1A36213BC();
  v35 = sub_1A362139C();
  v36 = v61;
  if ((v35 & 1) == 0)
  {
    v37 = sub_1A3622E6C();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v37);
    v38 = v57;
    sub_1A35AFB18(v30, v57);
    v39 = v64;
    v40 = v53;
    (*(v64 + 16))(v53, v34, v36);
    sub_1A3622E3C();
    v41 = sub_1A3622E2C();
    v42 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v43 = (v56 + *(v39 + 80) + v42) & ~*(v39 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 16) = v41;
    *(v44 + 24) = v45;
    sub_1A360DC38(v38, v44 + v42, type metadata accessor for PopoverTip);
    (*(v39 + 32))(v44 + v43, v40, v36);
    v46 = v44;
    v34 = v63;
    sub_1A35D34A0(0, 0, v60, &unk_1A362A440, v46);
  }

  (*(v64 + 8))(v34, v36);
  v47 = v59;
  sub_1A35B567C(v29, v59, &qword_1EB0EF7F0);
  v48 = v62;
  sub_1A35B567C(v47, v62, &qword_1EB0EF7F0);
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF828) + 48)) = v35 & 1;
  sub_1A360DA00(v29, &qword_1EB0EF7F0);
  v49 = OUTLINED_FUNCTION_11_2();
  return sub_1A360DA00(v49, v50);
}

uint64_t sub_1A35AEE3C()
{
  v2 = v1;
  type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_8();
  v30 = *(v3 + 80);
  v28 = *(v4 + 64);
  v32 = sub_1A36213AC();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  v7 = *(v5 + 80);
  v31 = *(v8 + 64);
  swift_unknownObjectRelease();
  v29 = (v30 + 32) & ~v30;
  v9 = v1 + v29;
  __swift_destroy_boxed_opaque_existential_1(v1 + v29);

  if (*(v1 + v29 + 64))
  {
  }

  v10 = v0[8];
  sub_1A362207C();
  OUTLINED_FUNCTION_0_19();
  (*(v11 + 8))(v9 + v10);
  v12 = v0[10];
  v13 = sub_1A36221CC();
  OUTLINED_FUNCTION_0_0();
  v15 = *(v14 + 8);
  v15(v9 + v12, v13);
  if (*(v9 + v0[11] + 8))
  {
  }

  v16 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3621A4C();
    OUTLINED_FUNCTION_0_19();
    (*(v17 + 8))(v9 + v16);
  }

  else
  {
  }

  v18 = v9 + v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v27 = v2;
  if (*(v18 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v18 + 24);
  }

  v19 = type metadata accessor for TipViewEnvironment();
  v20 = v19[7];
  if (!__swift_getEnumTagSinglePayload(v18 + v20, 1, v13))
  {
    v15(v18 + v20, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v18 + v19[8]);
  v21 = v18 + v19[11];
  if (*(v21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  if (*(v18 + v19[12]))
  {
  }

  v22 = (v18 + v19[13]);
  v2 = v27;
  if (*v22)
  {
LABEL_18:
  }

  v23 = v9 + v0[15];
  if (*(v23 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
  }

  v24 = v30 | v7;
  v25 = (v29 + v28 + v7) & ~v7;

  (*(v6 + 8))(v2 + v25, v32);

  return MEMORY[0x1EEE6BDD0](v2, v25 + v31, v24 | 7);
}

uint64_t sub_1A35AF1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v77 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF840);
  v4 = *(v78 - 8);
  v5 = MEMORY[0x1EEE9AC00](v78);
  v72 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v67 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF848);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v67 - v9;
  v10 = type metadata accessor for PopoverTip();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE240);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v67 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF850);
  MEMORY[0x1EEE9AC00](v75);
  v22 = (v67 - v21);
  v23 = (v3 + v10[9]);
  v24 = v23[1];
  v25 = v3 + v10[11];
  v26 = *(v25 + 8);
  v79 = v14;
  if (v24)
  {
    v70 = v8;
    v71 = v4;
    if (v26)
    {
      v27 = *(v25 + 16);
      v80 = *v25;
      v81 = v26;
      LOBYTE(v82) = v27 & 1;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
      MEMORY[0x1A58F2FF0](&v84, v28);
      v29 = v84;
    }

    else
    {
      v29 = 2;
    }

    sub_1A35AFB18(v3, v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = *(v11 + 80);
    v34 = v3;
    v67[1] = v3;
    v35 = (v33 + 16) & ~v33;
    v36 = swift_allocObject();
    sub_1A360DC38(v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for PopoverTip);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE250);
    (*(*(v37 - 8) + 16))(v17, v73, v37);
    v38 = &v17[*(v79 + 36)];
    *v38 = v29;
    v38[1] = 0;
    *(v38 + 1) = sub_1A360DA68;
    *(v38 + 2) = v36;
    v39 = v34 + v10[18];
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v84) = v40;
    v85 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
    sub_1A36228BC();
    LODWORD(v73) = v82;
    v69 = v10[8];
    sub_1A35AFB18(v34, v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = swift_allocObject();
    sub_1A360DC38(v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v35, type metadata accessor for PopoverTip);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE248);
    v64 = sub_1A35AFB7C();
    v66 = sub_1A35CA908();
    v44 = v79;
    v45 = v72;
    sub_1A362248C();

    sub_1A360DA00(v17, &qword_1EB0EE240);
    v47 = v70;
    v46 = v71;
    v48 = v78;
    v71[4](v70, v45, v78);
    v46[2](v76, v47, v48);
    swift_storeEnumTagMultiPayload();
    v80 = v44;
    v81 = v43;
    v82 = v64;
    v83 = v66;
    swift_getOpaqueTypeConformance2();
    v80 = v44;
    v81 = v43;
    v82 = v64;
    v83 = v66;
    swift_getOpaqueTypeConformance2();
    sub_1A3621F1C();
    return (v46[1])(v47, v48);
  }

  else
  {
    v71 = v22;
    v72 = v20;
    LODWORD(v70) = *v23;
    if (v26)
    {
      v30 = *(v25 + 16);
      v80 = *v25;
      v81 = v26;
      LOBYTE(v82) = v30 & 1;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
      MEMORY[0x1A58F2FF0](&v84, v31);
      v32 = v84;
    }

    else
    {
      v32 = 2;
    }

    LODWORD(v68) = v32;
    sub_1A35AFB18(v3, v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v50 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v51 = swift_allocObject();
    v69 = type metadata accessor for PopoverTip;
    sub_1A360DC38(v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50, type metadata accessor for PopoverTip);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE250);
    (*(*(v52 - 8) + 16))(v19, v73, v52);
    v53 = &v19[*(v14 + 36)];
    *v53 = v68;
    v53[1] = 0;
    *(v53 + 1) = sub_1A360DA68;
    *(v53 + 2) = v51;
    v54 = v3 + v10[18];
    v55 = *v54;
    v56 = *(v54 + 8);
    LOBYTE(v84) = v55;
    v85 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
    sub_1A36228BC();
    LODWORD(v73) = v82;
    v68 = v10[8];
    sub_1A35AFB18(v3, v13);
    v57 = swift_allocObject();
    sub_1A360DC38(v13, v57 + v50, v69);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE248);
    v63 = sub_1A35AFB7C();
    v65 = sub_1A35CA908();
    v59 = v71;
    v60 = v79;
    sub_1A362262C();

    sub_1A360DA00(v19, &qword_1EB0EE240);
    v61 = v72;
    v62 = v75;
    (*(v72 + 2))(v76, v59, v75);
    swift_storeEnumTagMultiPayload();
    v80 = v60;
    v81 = v58;
    v82 = v63;
    v83 = v65;
    swift_getOpaqueTypeConformance2();
    v80 = v60;
    v81 = v58;
    v82 = v63;
    v83 = v65;
    swift_getOpaqueTypeConformance2();
    sub_1A3621F1C();
    return v61[1](v59, v62);
  }
}

uint64_t sub_1A35AFB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverTip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A35AFB7C()
{
  result = qword_1ED81D810;
  if (!qword_1ED81D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE240);
    sub_1A35A9B30(&qword_1ED81D9E8, &unk_1EB0EE250);
    sub_1A35A9B30(qword_1ED81D848, &qword_1EB0EE260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D810);
  }

  return result;
}

unint64_t sub_1A35AFC60()
{
  result = qword_1ED81E1C0;
  if (!qword_1ED81E1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE288);
    sub_1A35A9B30(&qword_1ED81E328, &unk_1EB0EE290);
    sub_1A35A9B30(&qword_1ED81EA88, &unk_1EB0EE2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1C0);
  }

  return result;
}

uint64_t sub_1A35AFD88()
{
  type metadata accessor for OnChangeModifier();
  swift_getWitnessTable();
  sub_1A3621FAC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3621F2C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1A35AFEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  OpaqueTypeConformance2 = a1;
  v55 = a3;
  swift_getWitnessTable();
  v6 = sub_1A3621FAC();
  v49 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - v9;
  v10 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v12 = *(a2 + 24);
  v60 = v6;
  v61 = v10;
  v51 = WitnessTable;
  v62 = WitnessTable;
  v63 = v12;
  v57 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v45 = &v43 - v18;
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A36230DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v25 = sub_1A3621F2C();
  v53 = *(v25 - 8);
  v54 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v56 = &v43 - v26;
  (*(v22 + 16))(v24, v4, v21);
  if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
  {
    v27 = v49;
    v28 = *(v49 + 16);
    v29 = v47;
    v28(v47, OpaqueTypeConformance2, v6);
    v30 = v48;
    v28(v48, v29, v6);
    v60 = v6;
    v61 = v10;
    v31 = v51;
    v62 = v51;
    v63 = v57;
    swift_getOpaqueTypeConformance2();
    sub_1A35B04C8();
    v32 = *(v27 + 8);
    v32(v30, v6);
    v32(v29, v6);
  }

  else
  {
    v33 = *(v50 + 32);
    v44 = v20;
    v33(v20, v24, v10);
    v31 = v51;
    v34 = v57;
    sub_1A362265C();
    v60 = v6;
    v61 = v10;
    v62 = v31;
    v63 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v45;
    v35 = v46;
    v37 = *(v46 + 16);
    v37(v45, v16, OpaqueTypeMetadata2);
    v38 = *(v35 + 8);
    v38(v16, OpaqueTypeMetadata2);
    v37(v16, v36, OpaqueTypeMetadata2);
    sub_1A35BB184();
    v38(v16, OpaqueTypeMetadata2);
    v38(v36, OpaqueTypeMetadata2);
    (*(v50 + 8))(v44, v10);
  }

  v60 = v6;
  v61 = v10;
  v62 = v31;
  v63 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v31;
  v39 = v54;
  swift_getWitnessTable();
  v40 = v53;
  v41 = v56;
  (*(v53 + 16))(v55, v56, v39);
  return (*(v40 + 8))(v41, v39);
}

uint64_t sub_1A35B04C8()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_22();
  MEMORY[0x1EEE9AC00](v2);
  (*(*(v0 - 8) + 16))(&v5 - v3, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1A35B05B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *, void, unint64_t)@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v5 = sub_1A35B060C();
  result = a2(&v8, MEMORY[0x1E69E6530], v5);
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1A35B060C()
{
  result = qword_1ED81E008;
  if (!qword_1ED81E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E008);
  }

  return result;
}

void sub_1A35B0668(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v69 = *(a4 + 16);
  v71 = *(v69 - 8);
  v4 = *(v71 + 84);
  v63 = sub_1A362190C();
  v5 = *(v63 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v61 = sub_1A36221CC();
  v8 = *(v61 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v62 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  v64 = v10;
  v11 = v10 - 1;
  if (v7 > v11)
  {
    v11 = v7;
  }

  v68 = v11;
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v66 = v7;
  v67 = v12;
  v70 = v4;
  if (v4 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v4;
  }

  v14 = sub_1A3620D6C();
  v15 = 0;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  if (v13 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  v65 = v6;
  v20 = v6 == 0;
  v21 = v9;
  if (v20)
  {
    v22 = *(v5 + 64) + 1;
  }

  else
  {
    v22 = *(v5 + 64);
  }

  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = *(v8 + 64) + 1;
  }

  v24 = *(v71 + 64);
  v25 = *(v5 + 80);
  v26 = *(v8 + 80);
  v27 = v26 | 7;
  v28 = v26 | 7 | v25;
  v29 = v22 + 5;
  v30 = (v22 + 5 + ((v25 + 128) & ~v25) + (v26 | 7)) & ~(v26 | 7);
  v31 = v26 + 65;
  v32 = ((v26 + 65) & ~v26) + v23;
  v33 = v30 + 16;
  v34 = v30 + 16 + ((((((v32 + 95) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = *(v16 + 80) & 0xF8;
  v36 = ~v35 & 0xFFFFFFFFFFFFFFF8;
  v37 = v35 + 48;
  v38 = *(*(v14 - 8) + 64);
  if (!v17)
  {
    ++v38;
  }

  v39 = ((((v38 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v35 + 48 + v34 + ((((((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v28 + 17) & ~v28)) & v36) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    if (((((v38 + 7) & 0xFFFFFFF8) + ((v35 + 48 + v34 + ((((((((v24 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + v28 + 17) & ~v28)) & v36) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v40 = a3 - v19 + 1;
    }

    else
    {
      v40 = 2;
    }

    if (v40 >= 0x10000)
    {
      v41 = 4;
    }

    else
    {
      v41 = 2;
    }

    if (v40 < 0x100)
    {
      v41 = 1;
    }

    if (v40 >= 2)
    {
      v15 = v41;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v19)
  {
    if (v39)
    {
      v42 = 1;
    }

    else
    {
      v42 = a2 - v19;
    }

    if (v39)
    {
      v43 = ~v19 + a2;
      v44 = v15;
      bzero(a1, v39);
      v15 = v44;
      *a1 = v43;
    }

    switch(v15)
    {
      case 1u:
        *(a1 + v39) = v42;
        return;
      case 2u:
        *(a1 + v39) = v42;
        return;
      case 3u:
        goto LABEL_106;
      case 4u:
        *(a1 + v39) = v42;
        return;
      default:
        return;
    }
  }

  v45 = ~v26;
  v46 = v15;
  v47 = a1;
  switch(v46)
  {
    case 1:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_59;
    case 2:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_59;
    case 3:
LABEL_106:
      __break(1u);
      JUMPOUT(0x1A35B0CD8);
    case 4:
      *(a1 + v39) = 0;
      goto LABEL_58;
    default:
LABEL_58:
      if (!a2)
      {
        return;
      }

LABEL_59:
      if (v70 == v19)
      {
        v48 = a2;
        v17 = v70;
        v49 = v69;
LABEL_61:

        __swift_storeEnumTagSinglePayload(v47, v48, v17, v49);
        return;
      }

      v50 = ((a1 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v19 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v51 = a2 & 0x7FFFFFFF;
          v50[1] = 0;
        }

        else
        {
          v51 = a2 - 1;
        }

        *v50 = v51;
        return;
      }

      v52 = ((((((v50 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v28 + 65) & ~v28);
      if (v68 != v19)
      {
        v52 = (&v52[v37 + v34] & v36);
        if (v18 >= a2)
        {
          v48 = a2 + 1;
          v47 = v52;
          v49 = v14;
          goto LABEL_61;
        }

        v55 = (v38 + 7) & 0xFFFFFFF8;
        v53 = (v55 + 8);
        if (v55 == -8)
        {
          return;
        }

        v54 = ~v18;
        goto LABEL_79;
      }

      if (v67 < a2)
      {
        v53 = v33 + ((((((v32 + 95) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8);
        if (!v53)
        {
          return;
        }

        v54 = ~v67;
LABEL_79:
        v56 = v54 + a2;
LABEL_80:
        bzero(v52, v53);
LABEL_81:
        *v52 = v56;
        return;
      }

      v47 = (v25 + ((((((((v52 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v25;
      if (v66 == v67)
      {
        if (v65 < 2)
        {
          return;
        }

        v48 = a2 + 1;
        v17 = v65;
        v49 = v63;
        goto LABEL_61;
      }

      v52 = ((v29 + v27 + v47) & ~v27);
      v56 = a2 - v64;
      if (a2 >= v64)
      {
        v57 = (((((v32 + 95) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8;
        v53 = (v57 + 16);
        if (v57 == -16)
        {
          return;
        }

        goto LABEL_80;
      }

      v52 = (&v52[v31] & v45);
      if (v62 < 0x7FFFFFFF)
      {
        v58 = &v52[v23 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *(v58 + 24) = 0u;
          *(v58 + 8) = 0u;
          *(v58 + 40) = 0;
          *v58 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v58 + 24) = a2;
        }

        return;
      }

      if (a2 < v62)
      {
        v48 = a2 + 2;
        v47 = v52;
        v17 = v21;
        v49 = v61;
        goto LABEL_61;
      }

      if (v23 <= 3)
      {
        v59 = ~(-1 << (8 * v23));
      }

      else
      {
        v59 = -1;
      }

      if (v23)
      {
        v56 = v59 & (a2 - v62);
        if (v23 <= 3)
        {
          v60 = v23;
        }

        else
        {
          v60 = 4;
        }

        bzero(v52, v23);
        switch(v60)
        {
          case 2:
            *v52 = v56;
            break;
          case 3:
            *v52 = v56;
            v52[2] = BYTE2(v56);
            break;
          case 4:
            goto LABEL_81;
          default:
            *v52 = v56;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1A35B0D10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v52 = *(a3 + 16);
  v55 = *(v52 - 8);
  v3 = *(v55 + 84);
  v48 = sub_1A362190C();
  v4 = *(v48 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v47 = sub_1A36221CC();
  v7 = *(v47 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v49 = v9;
  v50 = v6;
  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = v9 - 1;
  if (v6 > v10)
  {
    v10 = v6;
  }

  v51 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v53 = v3;
  if (v3 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v3;
  }

  v13 = v11;
  v14 = sub_1A3620D6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  if (v5)
  {
    v19 = *(v4 + 64);
  }

  else
  {
    v19 = *(v4 + 64) + 1;
  }

  v20 = *(v55 + 64);
  v21 = *(v4 + 80);
  v22 = *(v7 + 80);
  v23 = *(v7 + 64);
  if (!v8)
  {
    ++v23;
  }

  if (v16)
  {
    v24 = 7;
  }

  else
  {
    v24 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v22 | 7 | v21;
  v26 = ((v19 + 5 + ((v21 + 128) & ~v21) + (v22 | 7)) & ~(v22 | 7)) + ((((((v23 + ((v22 + 65) & ~v22) + 95) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = *(v15 + 80) & 0xF8;
  v28 = ~v27 & 0xFFFFFFFFFFFFFFF8;
  v29 = v27 + 48;
  if (v18 < a2)
  {
    v30 = ((((v24 + *(*(v14 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v29 + ((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v25 + 17) & ~v25) + v26) & v28) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    if ((v30 & 0xFFFFFFF8) != 0)
    {
      v31 = 2;
    }

    else
    {
      v31 = a2 - v18 + 1;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    switch(v33)
    {
      case 1:
        v34 = *(a1 + v30);
        if (!*(a1 + v30))
        {
          break;
        }

        goto LABEL_47;
      case 2:
        v34 = *(a1 + v30);
        if (*(a1 + v30))
        {
          goto LABEL_47;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1A35B11ECLL);
      case 4:
        v34 = *(a1 + v30);
        if (!v34)
        {
          break;
        }

LABEL_47:
        v35 = v34 - 1;
        if ((v30 & 0xFFFFFFF8) != 0)
        {
          v35 = 0;
          v36 = *a1;
        }

        else
        {
          v36 = 0;
        }

        return v18 + (v36 | v35) + 1;
      default:
        break;
    }
  }

  if (v53 == v18)
  {

    return __swift_getEnumTagSinglePayload(a1, v53, v52);
  }

  v38 = ((a1 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) == 0)
  {
    v39 = *v38;
    if (*v38 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    return (v39 + 1);
  }

  v40 = (((((v38 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v25 + 65) & ~v25;
  if (v51 != v18)
  {
    v41 = (v29 + v40 + v26) & v28;
    goto LABEL_65;
  }

  v41 = (v21 + ((((((((v40 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v21;
  if (v50 == v13)
  {
    if (v5 < 2)
    {
      return 0;
    }

    v16 = v5;
    v14 = v48;
LABEL_65:
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v16, v14);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  v43 = (v22 + 65 + ((v19 + 5 + (v22 | 7) + v41) & ~(v22 | 7))) & ~v22;
  if (v49 < 0x7FFFFFFF)
  {
    v46 = *(((v23 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v46 >= 0xFFFFFFFF)
    {
      LODWORD(v46) = -1;
    }

    v45 = v46 + 1;
  }

  else
  {
    v44 = __swift_getEnumTagSinglePayload(v43, v8, v47);
    v45 = v44 - 1;
    if (v44 < 2)
    {
      v45 = 0;
    }
  }

  if (v45 >= 2)
  {
    return v45 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35B1250(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = *(*v2 + 80);
  v4 = sub_1A36230DC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v23 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v27[0] = v2;
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_1A3620E5C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    return (*(v6 + 8))(v9, v4);
  }

  (*(v11 + 32))(v16, v9, v3);
  v27[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  v19 = *(v11 + 16);
  v19(boxed_opaque_existential_0, v16, v3);
  v26[3] = v3;
  __swift_allocate_boxed_opaque_existential_0(v26);
  sub_1A35A4D54();
  v20 = sub_1A3620E4C();
  sub_1A35B1500(v26);
  sub_1A35B1500(v27);
  if (v20)
  {
    v21 = v23;
    v19(v23, v16, v3);
    sub_1A35A5084(v21);
  }

  return (*(v11 + 8))(v16, v3);
}

uint64_t sub_1A35B1500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35B1568()
{
  v1 = *(v0 + 192);

  v2 = sub_1A362134C();
  v4 = v3;
  v5 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_statusMap;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16) || (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v7 = sub_1A35A4F38(v2, v4), v9 = v8, , (v9 & 1) == 0))
  {

LABEL_10:
    if (*(v0 + 208) == 9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = *(*(v6 + 56) + v7);

  if (v10 == 9)
  {
    goto LABEL_10;
  }

  v11 = *(v0 + 208);
  if (v11 == 9)
  {
    goto LABEL_11;
  }

  if (v10 == 8)
  {
    if (v11 != 8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v10 == 7)
    {
      if (v11 == 7)
      {
        goto LABEL_12;
      }

LABEL_11:
      sub_1A362134C();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v1 + v5);
      OUTLINED_FUNCTION_7_4();
      sub_1A35B1940(v12, v13, v14);
      *(v1 + v5) = v32;

      swift_endAccess();
      goto LABEL_12;
    }

    if (v10 != v11 || (v11 - 9) >= 0xFEu)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (swift_weakLoadStrong())
  {
    v15 = *(v0 + 192);
    if (*(*(v1 + v5) + 16) == *(*(v15 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips) + 16))
    {
      v16 = sub_1A362134C();
      v18 = v17;
      if (*(v15 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_currentTip))
      {
        v19 = v16;

        v20 = sub_1A362134C();
        v22 = v21;

        v23 = *(v0 + 208);
        if (v19 == v20 && v18 == v22)
        {
        }

        else
        {
          v25 = sub_1A362345C();

          if ((v25 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        if (v23 != 8)
        {
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          *(v0 + 48) = 0u;
          sub_1A35B6488(v0 + 16);
          sub_1A35A6588(v0 + 16, &qword_1EB0EECA0);
        }

        goto LABEL_26;
      }

LABEL_26:
      TipGroup.currentTip.getter(v0 + 16);
      if (*(v0 + 40))
      {

        v26 = &qword_1EB0EEAF8;
        v27 = v0 + 16;
      }

      else
      {
        sub_1A35A6588(v0 + 16, &qword_1EB0EEAF8);
        sub_1A35B6B4C((v0 + 64));
        if (*(v0 + 88))
        {
          v28 = *(v0 + 80);
          *(v0 + 16) = *(v0 + 64);
          *(v0 + 32) = v28;
          *(v0 + 48) = *(v0 + 96);
          sub_1A35ABFF4(v0 + 16, v0 + 112, &qword_1EB0EECB8);
          v29 = *(v0 + 152);
          sub_1A35A63BC((v0 + 112), v0 + 64);
          *(v0 + 104) = v29;
          sub_1A35B6488(v0 + 64);

          sub_1A35A6588(v0 + 64, &qword_1EB0EECA0);
          OUTLINED_FUNCTION_7_4();
        }

        else
        {

          v26 = &unk_1EB0EECB0;
          v27 = v0 + 64;
        }
      }

      sub_1A35A6588(v27, v26);
      goto LABEL_32;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_5_1();

  return v30();
}

uint64_t sub_1A35B1940(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A35A4F38(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0EEF98);
  result = sub_1A362330C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_10_6();
  result = sub_1A35A4F38(v14, v15);
  if ((v12 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_1A362347C();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v17 = *v4;
  if (v12)
  {
    *(v17[7] + v11) = a1;
  }

  else
  {
    sub_1A35B1C1C(v11, a2, a3, a1, v17);

    return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  }

  return result;
}

uint64_t sub_1A35B1A64()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = v1[14];
  v6 = v1[4];
  v7 = swift_task_alloc();
  v2[15] = v7;
  *v7 = v4;
  OUTLINED_FUNCTION_0_20();
  v8 = v1[11];

  return MEMORY[0x1EEE6D9C8](v2 + 17, v6, v5, v8);
}

uint64_t sub_1A35B1BF4(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A35E3DF4, 0, 0);
}

unint64_t sub_1A35B1C1C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1A35B1C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC8);
  sub_1A362307C();

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAD0);
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v13 = (a4 + *(v10 + 56));
  *v13 = sub_1A3620A70;
  v13[1] = v11;

  v14 = [v8 defaultCenter];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAD8);
  sub_1A362307C();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (a4 + *(v15 + 56));
  *v17 = sub_1A3620A9C;
  v17[1] = v16;
}

uint64_t sub_1A35B1E38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35B1E84(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_12_1();
  v1 = type metadata accessor for TipView();
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_12_1();

  return a1();
}

uint64_t sub_1A35B1F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1A362141C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A362142C();
  v12 = sub_1A36213CC();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_1A35E92BC();
    v14 = sub_1A3620D6C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v14);
    sub_1A35A6588(v7, &qword_1EB0EE5B8);
    if (EnumTagSinglePayload == 1)
    {
      sub_1A3620D3C();
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v14);
      sub_1A35E9308(v4);
    }

    if ((sub_1A362110C() & 0x8000000000000000) == 0)
    {
      v16 = sub_1A36210FC();
      v17 = sub_1A35B220C();
      MEMORY[0x1A58F3980](&v19, MEMORY[0x1E69E6530], v17);
      v18 = v19;
      sub_1A36232EC();
      v16(v20, 0);
    }

    result = sub_1A362110C();
    if (result == 1)
    {
      sub_1A35E92BC();
      sub_1A35B56C8(a1);
      sub_1A362112C();
      sub_1A35A6588(v4, &qword_1EB0EE5B8);
      return sub_1A35B501C(a1);
    }
  }

  return result;
}

unint64_t sub_1A35B220C()
{
  result = qword_1ED81E5E8;
  if (!qword_1ED81E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E5E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppearanceChangeMonitor.ViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1A35B2440);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1A35B2468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v6 = *(a2 - 8);
  v47 = a1;
  v48 = v6;
  v49 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A3622ACC();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = sub_1A3621FAC();
  sub_1A36221AC();
  v40 = sub_1A3621A6C();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v37 - v11;
  v38 = &v37 - v11;
  v13 = sub_1A3621A6C();
  v46 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v37 - v16;
  v17 = sub_1A35B55BC();
  v18 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v20 = *(a2 + 24);
  sub_1A3622ABC();
  v21 = v12;
  v22 = v4;
  sub_1A35B57BC(v4, v9, v17 & 1, v10, v18, WitnessTable, v20, v21);
  (*(v41 + 8))(v9, v43);
  v23 = v48;
  v24 = v44;
  (*(v48 + 16))(v44, v22, a2);
  v25 = v23;
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  *(v27 + 24) = v20;
  (*(v25 + 32))(v27 + v26, v24, a2);
  v28 = sub_1A35B29F4();
  v53 = WitnessTable;
  v54 = v28;
  v29 = v40;
  v30 = swift_getWitnessTable();
  v31 = v38;
  v32 = v39;
  sub_1A362264C();

  (*(v45 + 8))(v31, v29);
  v51 = v30;
  v52 = MEMORY[0x1E69805D0];
  v33 = swift_getWitnessTable();
  v34 = v42;
  sub_1A35B561C(v32, v13, v33);
  v35 = *(v46 + 8);
  v35(v32, v13);
  sub_1A35B561C(v34, v13, v33);
  return (v35)(v34, v13);
}

uint64_t sub_1A35B2900()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SymbolAppearanceEffect() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1A35B29F4()
{
  result = qword_1ED81DD40;
  if (!qword_1ED81DD40)
  {
    sub_1A36221AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DD40);
  }

  return result;
}

uint64_t sub_1A35B2A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>, double a5@<D4>)
{
  v6 = a3;
  v10 = HIBYTE(a3);
  v11 = sub_1A3621DAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v54.origin.x = OUTLINED_FUNCTION_0_1();
    CGRectGetMidX(v54);
    v55.origin.x = OUTLINED_FUNCTION_0_1();
    CGRectGetMidY(v55);
  }

  if (v10 == 4)
  {
    goto LABEL_10;
  }

  v41 = a1;
  v42 = a2;
  v15 = v44 + 1;
  v40 = v46 + 1;
  v56.origin.x = OUTLINED_FUNCTION_0_1();
  v57 = CGRectInset(v56, v16, v16);
  sub_1A35CDE50(v57.origin.x, v57.origin.y, v57.size.width, v57.size.height);
  v19 = v18;
  switch(v10)
  {
    case 1:
      v61.origin.x = OUTLINED_FUNCTION_0_1();
      MinX = CGRectGetMinX(v61);
      v15 = v45 + 1;
      v22 = v45;
      sub_1A35F16F0(v45, MinX, v19 + -13.0, 13.0, 26.0);
      break;
    case 2:
      v23 = v17 + -13.0;
      v59.origin.x = OUTLINED_FUNCTION_0_1();
      Height = CGRectGetHeight(v59);
      v22 = v46;
      sub_1A35F1638(v46, v23, Height + -13.0, 26.0, 13.0);
      v15 = v40;
      break;
    case 3:
      v60.origin.x = OUTLINED_FUNCTION_0_1();
      Width = CGRectGetWidth(v60);
      v22 = v47;
      sub_1A35F17A4(v47, Width + -13.0, v19 + -13.0, 13.0, 26.0);
      v15 = v47 + 1;
      break;
    default:
      v20 = v17 + -13.0;
      v58.origin.x = OUTLINED_FUNCTION_0_1();
      MinY = CGRectGetMinY(v58);
      v22 = v44;
      sub_1A35F1584(v44, v20, MinY, 26.0, 13.0);
      break;
  }

  v27 = *v22;
  memcpy(v43, v15, 0x57uLL);
  v52 = v27;
  memcpy(v53, v43, sizeof(v53));
  v28 = OUTLINED_FUNCTION_0_1();
  sub_1A35F1AF8(v27, v29, v28, v30, a5);
  if (v48)
  {
LABEL_10:
    (*(v12 + 104))(v14, *MEMORY[0x1E697F468], v11);
    OUTLINED_FUNCTION_0_1();
    result = sub_1A362235C();
    v33 = v43[0];
    v34 = v43[1];
    v35 = v43[2];
  }

  else
  {
    *&v36 = MEMORY[0x1EEE9AC00](v31);
    *(&v39 - 5) = v36;
    *(&v39 - 4) = v37;
    v38 = v42;
    *(&v39 - 6) = v41;
    *(&v39 - 5) = v38;
    *(&v39 - 32) = v6 & 1;
    *(&v39 - 31) = v10;
    *(&v39 - 3) = a5;
    *(&v39 - 2) = &v52;
    result = sub_1A362239C();
    v33 = v49;
    v34 = v50;
    v35 = v51;
  }

  *a4 = v33;
  *(a4 + 16) = v34;
  *(a4 + 32) = v35;
  return result;
}

uint64_t sub_1A35B2E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for TipUIWrapperView();
  sub_1A35E8640(a2 + *(v7 + 60), v6, &qword_1EB0EF9D0);
  v8 = sub_1A3621A4C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    sub_1A35BAABC(v6, &qword_1EB0EF9D0);
  }

  else
  {
    v9 = *(v8 - 8);
    (*(v9 + 8))(a1, v8);
    (*(v9 + 32))(a1, v6, v8);
  }
}

void TipUIView.init(_:arrowEdge:actionHandler:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v43 = v4;
  v44 = v5;
  v7 = v6;
  v42 = v6;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for TipViewEnvironment();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v19);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  *(v1 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v23 = swift_unknownObjectWeakInit();
  v48[5] = v1;
  v48[6] = ObjectType;
  v24 = OUTLINED_FUNCTION_15_2(v23, sel_initWithFrame_);
  swift_unknownObjectWeakAssign();
  sub_1A35A6350(v7, v48);
  OUTLINED_FUNCTION_22_3();
  v47[24] = 1;
  v25 = sub_1A35B37E0();
  OUTLINED_FUNCTION_20_2(v25, &type metadata for AnyTip);
  swift_unknownObjectWeakInit();
  *(v18 + 88) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 104) = 1;
  v41 = v24;

  sub_1A35ADD70(v13);
  sub_1A35ABFF4(v13 + v10[10], v45, &qword_1EB0EED38);
  sub_1A361BC3C();
  LOBYTE(v24) = v46;
  sub_1A35A63BC(v45, v18 + 112);
  *(v18 + 152) = v24;
  sub_1A35ADD70(v13);
  v26 = *(v13 + v10[11]);
  sub_1A361BC3C();
  *(v18 + 168) = 0;
  *(v18 + 160) = v26;
  *(v18 + 176) = 0;
  *(v18 + 184) = 0;
  *(v18 + 192) = 1;
  *(v18 + 200) = &type metadata for AnyTip;
  *(v18 + 208) = v25;
  swift_unknownObjectWeakInit();
  sub_1A35ADD70(v13);
  v27 = v13 + v10[12];
  v28 = *v27;
  v29 = *(v27 + 8);
  LOBYTE(v10) = *(v27 + 16);
  sub_1A361BC3C();
  *(v18 + 224) = v28;
  *(v18 + 232) = v29;
  *(v18 + 240) = v10;
  *(v18 + 280) = 0;
  OUTLINED_FUNCTION_21_2(v18);
  v30 = v14[15];
  v31 = sub_1A3621A4C();
  OUTLINED_FUNCTION_21(v18 + v30, v32, v33, v31);
  v34 = (v18 + v14[16]);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v18 + v14[17]);
  v35[3] = type metadata accessor for MiniTipViewStyle();
  v35[4] = sub_1A35ADEFC();
  __swift_allocate_boxed_opaque_existential_0(v35);
  OUTLINED_FUNCTION_23_3();
  sub_1A362178C();
  v36 = OUTLINED_FUNCTION_10();
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  *(v18 + v14[18]) = 0;
  sub_1A35A6350(v48, v18);
  *(v18 + 40) = OUTLINED_FUNCTION_26_3();
  sub_1A35B4214(v47, v18 + 168);
  *(v18 + 56) = v43;
  *(v18 + 64) = v3;
  *(v18 + 48) = v44;
  sub_1A35B4270(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(v48);
  OUTLINED_FUNCTION_0_32();
  sub_1A361BC3C();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
  v39 = v41;
  sub_1A35B42D4(v22);

  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1A35A6588(v22, &qword_1EB0EF8C0);
  OUTLINED_FUNCTION_28_2();
}

void sub_1A35B33B4()
{
  sub_1A35E7CFC(319, qword_1ED81F260);
  if (v0 <= 0x3F)
  {
    sub_1A362143C();
    if (v1 <= 0x3F)
    {
      sub_1A35B3600(319, qword_1ED81EF18);
      if (v2 <= 0x3F)
      {
        sub_1A35A9760();
        if (v3 <= 0x3F)
        {
          sub_1A35A83CC(319, &qword_1ED81EF10, &qword_1EB0EECF8);
          if (v4 <= 0x3F)
          {
            sub_1A35B364C(319, &unk_1ED81EB48, type metadata accessor for CGPoint);
            if (v5 <= 0x3F)
            {
              sub_1A35B36F4();
              if (v6 <= 0x3F)
              {
                sub_1A35E7C90();
                if (v7 <= 0x3F)
                {
                  sub_1A35A83CC(319, qword_1ED81EED8, &qword_1EB0EED00);
                  if (v8 <= 0x3F)
                  {
                    sub_1A35B364C(319, &qword_1ED81E6E0, MEMORY[0x1E697E7E0]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for CGSize(319);
                      if (v10 <= 0x3F)
                      {
                        sub_1A35E7CFC(319, qword_1ED81E7B0);
                        if (v11 <= 0x3F)
                        {
                          sub_1A35B3600(319, &qword_1ED81E680);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_1A35B3600(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A36230DC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A35B364C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A36230DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A35B36A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A36230DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A35B36F4()
{
  if (!qword_1ED81EB70[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED81EB70);
    }
  }
}

void OUTLINED_FUNCTION_15_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 272);
  v24 = *(v21 - 264);
  v25 = *(v21 - 256);
  v26 = *(v21 - 252);
  v27 = *(v21 - 248);

  sub_1A35EB218(a1, v23, v24, v25, a5, v26, a7, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

id OUTLINED_FUNCTION_15_2(uint64_t a1, const char *a2)
{

  return objc_msgSendSuper2((v2 - 120), a2, 0.0, 0.0, 0.0, 0.0);
}

unint64_t sub_1A35B37E0()
{
  result = qword_1ED81EB30;
  if (!qword_1ED81EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81EB30);
  }

  return result;
}

uint64_t sub_1A35B3860()
{
  result = sub_1A362165C();
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

uint64_t TipGroup.init(_:_:)(unsigned __int8 *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v5 = *a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  v6 = sub_1A362164C();
  v9 = v5;
  v7 = a2(v6);
  type metadata accessor for TipGroup.Monitor(0);
  swift_allocObject();
  *(v3 + 16) = sub_1A35B3C34(&v9, v7);
  swift_weakAssign();

  sub_1A35B80D4();

  return v3;
}

uint64_t static Tips.GroupBuilder.buildPartialBlock(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A3627130;
  sub_1A35A6350(a1, v2 + 32);
  return v2;
}

uint64_t static Tips.GroupBuilder.buildIf(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

void sub_1A35B3A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEBA8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A35B3AF8()
{
  sub_1A35B3A8C(319, &qword_1ED81D9B8, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    sub_1A35B3A8C(319, &qword_1ED81D9C0, MEMORY[0x1E69E8660]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A35B3C34(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECC8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECA8);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC90);
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  LODWORD(v35) = *a1;
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_currentTip) = 0;
  *(v3 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask) = 0;
  v16 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_statusMap;
  *(v3 + v16) = sub_1A3622B1C();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA8);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
  sub_1A3622EAC();
  v17 = v6;
  v18 = v37;
  (*(v7 + 8))(v9, v17);
  v19 = v36;
  (*(v36 + 16))(v3 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_stream, v15, v13);
  (*(v18 + 16))(v3 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_continuation, v12, v10);
  *(v3 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_priority) = v35;
  v20 = *(a2 + 16);
  if (v20)
  {
    v32 = v15;
    v33 = v12;
    v34 = v13;
    v35 = v10;
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1A35B40DC(0, v20, 0);
    v22 = 0;
    v23 = v43;
    v24 = a2 + 32;
    while (v22 < *(a2 + 16))
    {
      sub_1A35A6350(v24, v38);
      sub_1A35A6350(v38, v41);
      v25 = v39;
      v26 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      *(&v42 + 1) = sub_1A35A6624(v25, v26);
      result = __swift_destroy_boxed_opaque_existential_1(v38);
      v43 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1A35B40DC(v27 > 1, v28 + 1, 1);
        v23 = v43;
      }

      ++v22;
      *(v23 + 16) = v28 + 1;
      v29 = (v23 + 48 * v28);
      v30 = v41[0];
      v31 = v42;
      v29[3] = v41[1];
      v29[4] = v31;
      v29[2] = v30;
      v24 += 40;
      if (v20 == v22)
      {

        (*(v37 + 8))(v33, v35);
        (*(v36 + 8))(v32, v34);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    (*(v18 + 8))(v12, v10);
    (*(v19 + 8))(v15, v13);
    v23 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *(v3 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips) = v23;
    return v3;
  }

  return result;
}

uint64_t sub_1A35B40DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1A35B40FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A35B40FC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1A35E1A80((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35B4270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipUIWrapperView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B42D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = type metadata accessor for TipUIWrapperView();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  sub_1A35ABFF4(a1, v6, &qword_1EB0EF8C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1A35A6588(v6, &qword_1EB0EF8C0);
  }

  sub_1A35B46E8(v6, v12);
  v14 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  if (*&v2[v14])
  {
    sub_1A361C904();
  }

  sub_1A35B4270(v12, v9);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8D0));
  v16 = sub_1A36219FC();
  v17 = *&v2[v14];
  *&v2[v14] = v16;

  v18 = *&v2[v14];
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    [v20 setBackgroundColor_];

    v22 = *&v2[v14];
    if (v22)
    {
      v23 = v22;
      [v2 bounds];
      [v23 setFrame_];
    }
  }

  swift_beginAccess();
  v24 = *&v2[v14];
  if (v24)
  {
    swift_endAccess();
    v25 = v24;
    sub_1A35B474C(v24);

    return sub_1A361BC3C();
  }

  else
  {
    sub_1A361BC3C();
    return swift_endAccess();
  }
}

uint64_t sub_1A35B45B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9D0);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35B4654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9D0);
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1A35B46E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipUIWrapperView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A35B474C(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v20 = a1;
    v3 = [v20 superview];
    if (!v3 || (v3, (v4 = [v20 superview]) != 0) && (v5 = v4, sub_1A35CDC10(0, &qword_1ED81D9A8), v6 = v1, v7 = sub_1A36230AC(), v6, v5, (v7 & 1) != 0))
    {
      v8 = [v20 superview];
      if (v8)
      {
      }

      else
      {
        [v2 addSubview_];
      }

      if (([v2 translatesAutoresizingMaskIntoConstraints] & 1) == 0 && objc_msgSend(v20, sel_translatesAutoresizingMaskIntoConstraints))
      {
        [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      }

      if (([v20 translatesAutoresizingMaskIntoConstraints] & 1) == 0 && (sub_1A361EAB4(v20) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8A0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1A362AB00;
        v10 = [v2 leadingAnchor];
        v11 = [v20 leadingAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        *(v9 + 32) = v12;
        v13 = [v2 topAnchor];
        v14 = OUTLINED_FUNCTION_0_36([v20 topAnchor]);

        *(v9 + 40) = v14;
        v15 = [v2 trailingAnchor];
        v16 = OUTLINED_FUNCTION_0_36([v20 trailingAnchor]);

        *(v9 + 48) = v16;
        v17 = [v2 bottomAnchor];
        v18 = OUTLINED_FUNCTION_0_36([v20 bottomAnchor]);

        *(v9 + 56) = v18;
        sub_1A35CDC10(0, &qword_1ED81E000);
        v19 = sub_1A3622CBC();

        [v2 addConstraints_];
      }
    }
  }
}

uint64_t sub_1A35B4A7C()
{
  v1 = v0;
  v2 = sub_1A36216FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppearanceChangeMonitor();
  v10 = (v0 + *(v9 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v25) = v11;
  v22 = v12;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1D0);
  result = sub_1A362289C();
  if (v23)
  {
    sub_1A35F9EF0(v8);
    (*(v3 + 104))(v5, *MEMORY[0x1E697BE38], v2);
    v14 = sub_1A36216EC();
    v15 = *(v3 + 8);
    v15(v5, v2);
    result = (v15)(v8, v2);
    if ((v14 & 1) != 0 || (*v1 & 1) == 0)
    {
      sub_1A3622F8C();
      v16 = (v1 + *(v9 + 32));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = v16[2];
      v25 = v17;
      LOBYTE(v26) = v18;
      v27 = v19;
      v23 = v20;
      v24 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1D8);
      sub_1A36228AC();
      LOBYTE(v25) = v11;
      v26 = v22;
      LOBYTE(v23) = 0;
      result = sub_1A36228AC();
      v21 = *(v1 + 8);
      if (v21)
      {
        return v21(result);
      }
    }
  }

  return result;
}

uint64_t sub_1A35B4CBC()
{
  type metadata accessor for SymbolAppearanceEffect();

  return sub_1A35B4D40();
}

uint64_t sub_1A35B4D40()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SymbolAppearanceEffect();
  sub_1A35B2310();
}

uint64_t sub_1A35B4E08(uint64_t a1)
{
  v2 = sub_1A36221AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TipUIWrapperView()
{
  result = qword_1ED81E920;
  if (!qword_1ED81E920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35B4EC4(uint64_t a1)
{
  v2 = type metadata accessor for TipViewEnvironment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35B4F20(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_1A362288C();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1A35ECF68(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_beginAccess();
}

uint64_t sub_1A35B501C(uint64_t a1)
{
  v2 = v1;
  v24 = *(a1 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1A362141C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A362142C();
  v13 = COERCE_DOUBLE(sub_1A362140C());
  v15 = v14;
  result = (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0 && v13 > 0.0)
  {
    if (sub_1A35E9428())
    {
    }

    else
    {
      v17 = sub_1A3622E6C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
      v18 = v24;
      (*(v24 + 16))(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
      sub_1A3622E3C();
      v19 = sub_1A3622E2C();
      v20 = (*(v18 + 80) + 56) & ~*(v18 + 80);
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E85E0];
      *(v21 + 16) = v19;
      *(v21 + 24) = v22;
      *(v21 + 32) = *(a1 + 16);
      *(v21 + 48) = v13;
      (*(v18 + 32))(v21 + v20, v5, a1);
      sub_1A35D34A0(0, 0, v8, &unk_1A3628058, v21);
      return sub_1A35E947C();
    }
  }

  return result;
}

uint64_t sub_1A35B52D4()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 32);
  type metadata accessor for TipView();
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 8))(v1 + v4, v2);

  v7 = v1 + v4 + v0[11];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v5 + v0[13] + 8))
  {
  }

  v8 = v5 + v0[14];
  __swift_destroy_boxed_opaque_existential_1(v8);

  if (*(v8 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v8 + 120);
  v9 = type metadata accessor for TipViewStyleConfiguration();
  v10 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_6_6(v10))
  {
    OUTLINED_FUNCTION_5_0();
    v11 = OUTLINED_FUNCTION_16_1();
    v12(v11);
  }

  v13 = v8 + *(v9 + 44);
  v14 = type metadata accessor for TipViewEnvironment();
  if (!OUTLINED_FUNCTION_5_8(v14))
  {
    if (*(v13 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 24);
    }

    v15 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_6_6(v15))
    {
      OUTLINED_FUNCTION_5_0();
      v16 = OUTLINED_FUNCTION_16_1();
      v17(v16);
    }

    __swift_destroy_boxed_opaque_existential_1(v13 + *(v9 + 32));
    v18 = v13 + *(v9 + 44);
    if (*(v18 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    OUTLINED_FUNCTION_13_1();
    if (v19)
    {
    }

    OUTLINED_FUNCTION_13_1();
    if (v20)
    {
    }
  }

  v21 = v5 + v0[15];
  if (*(v21 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
  }

  v22 = sub_1A3620D6C();
  if (!OUTLINED_FUNCTION_5_8(v22))
  {
    OUTLINED_FUNCTION_5_0();
    v23 = OUTLINED_FUNCTION_14_2();
    v24(v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED78);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v25, v26, v27);
}

uint64_t sub_1A35B55BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  sub_1A362289C();
  return v1;
}

double sub_1A35B5624@<D0>(uint64_t a1@<X8>)
{
  sub_1A35B2A84(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), v5, *(v1 + 24));
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1A35B567C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_31(a1, a2, a3);
  OUTLINED_FUNCTION_0_0();
  v4 = OUTLINED_FUNCTION_11_2();
  v5(v4);
  return v3;
}

uint64_t sub_1A35B56C8(uint64_t a1)
{
  sub_1A35B2260(v1 + *(a1 + 56) + 72, v4);
  v2 = v4[0];
  sub_1A35B22BC(v4);
  if (v2 == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t getEnumTagSinglePayload for AppearanceChangeMonitor.ViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A35B57BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v26 = a7;
  v27 = a4;
  v24 = a3;
  v25 = a8;
  v11 = sub_1A3622ACC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1A36221AC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v23[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v18, a1, a5);
  (*(v12 + 16))(v15, a2, v11);
  sub_1A35B59C0(v18, v15, v24, a5, v21);
  MEMORY[0x1A58F2CC0](v21, v27, v19, v28);
  return sub_1A35B4E08(v21);
}

uint64_t sub_1A35B59C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A3622A8C();
  (*(*(a4 - 8) + 8))(a1, a4);
  v10 = sub_1A36221AC();
  v11 = *(v10 + 20);
  v12 = sub_1A3622ACC();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  *(a5 + *(v10 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for AppearanceChangeMonitor()
{
  result = qword_1ED81E768;
  if (!qword_1ED81E768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35B5B68()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_21();
  }

  sub_1A35B4A7C();
}

void *OUTLINED_FUNCTION_26_0()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_1A36231BC();
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128);
  __swift_project_boxed_opaque_existential_1((v0 - 160), v1);

  return sub_1A35A6624(v1, v2);
}

unint64_t sub_1A35B5C90()
{
  result = qword_1ED81EA98;
  if (!qword_1ED81EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81EA98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_22_3()
{
  *(v0 - 216) = 3;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
}

unint64_t sub_1A35B5D48()
{
  result = qword_1ED81EA90;
  if (!qword_1ED81EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81EA90);
  }

  return result;
}

uint64_t sub_1A35B5DA0()
{
  sub_1A35B5C90();

  return sub_1A3621CFC();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_30(uint64_t result)
{
  *v1 = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_2@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_1A3619E9C(v3);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_storeEnumTagMultiPayload();
}

double OUTLINED_FUNCTION_21_2@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  return result;
}

void OUTLINED_FUNCTION_21_3()
{

  JUMPOUT(0x1A58F33A0);
}

uint64_t sub_1A35B5EA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A35B5EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_1A362141C();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v38);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  v15 = (v2 + *(a1 + 36));
  sub_1A35A6350(v15, v47);
  v16 = v15[5];
  sub_1A35B2260((v15 + 9), v46);
  sub_1A36218FC();
  v17 = sub_1A362190C();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  sub_1A35CBA00(a1, v11);
  v18 = type metadata accessor for TipViewEnvironment();
  v37 = v11;
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  v20 = v15[6];
  v19 = v15[7];
  v21 = v48;
  v22 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  sub_1A35B5EA0(v20);
  sub_1A35A63D4(v21, v22, v8);
  v8[5] = v16;
  v8[6] = v20;
  v23 = v36;
  v8[7] = v19;

  sub_1A362142C();
  LOBYTE(v19) = sub_1A36213FC();
  v24 = *(v23 + 8);
  v24(v6, v4);
  v25 = 0;
  if (v19)
  {
    v25 = sub_1A362133C();
  }

  v8[8] = v25;
  sub_1A35ABFF4(v46, v40, &qword_1EB0EE3E0);
  if (v41)
  {
    sub_1A35B8570(v40, v42);
    v26 = v38;
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    v42[1] = 0;
    v42[2] = 0;
    v43 = 1;
    v27 = sub_1A35B37E0();
    v44 = &type metadata for AnyTip;
    v45 = v27;
    swift_unknownObjectWeakInit();
    v26 = v38;
    if (v41)
    {
      sub_1A35A6588(v40, &qword_1EB0EE3E0);
    }
  }

  sub_1A35B8570(v42, (v8 + 9));
  sub_1A35ABFF4(v14, v8 + v26[9], &qword_1EB0EE3D8);
  v28 = v48;
  v29 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  sub_1A35A63D4(v28, v29, v42);
  sub_1A362142C();
  LOBYTE(v28) = sub_1A36213FC();
  v24(v6, v4);
  if (v28)
  {
    v30 = sub_1A362133C();
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_1A35F5FC8(v42, v30);
  sub_1A35A6588(v14, &qword_1EB0EE3D8);
  sub_1A35A6588(v46, &qword_1EB0EE3E0);
  v32 = v8 + v26[10];
  *v32 = v31 & 1;
  v33 = vdupq_n_s64(v31);
  *v33.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v33, xmmword_1A36249F0), vshlq_u64(v33, xmmword_1A36249E0))), 0x1000100010001);
  *(v32 + 1) = vuzp1_s8(*v33.i8, *v33.i8).u32[0];
  sub_1A35CC6AC(v37, v8 + v26[11]);
  sub_1A35CC64C(v8, v39, type metadata accessor for TipViewStyleConfiguration);
  return __swift_destroy_boxed_opaque_existential_1(v47);
}