uint64_t sub_237B0A064(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  OUTLINED_FUNCTION_20(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v26[-v14];
  switch(*a2)
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_4;
    default:
LABEL_4:
      OUTLINED_FUNCTION_57_0();
      v16 = sub_237C0929C();

      if ((v16 & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

LABEL_5:
      v17 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v2 + v17, v15, &qword_27DE9CDF0, &qword_237C12E38);
      v18 = _s9RegressorVMa();
      OUTLINED_FUNCTION_73_1(v15, 1, v18);
      if (v19)
      {
        __break(1u);
        goto LABEL_11;
      }

      v20 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v2 + v20, v9, &qword_27DE9CDE8, &qword_237C12E30);
      v21 = _s5ModelVMa_2();
      OUTLINED_FUNCTION_73_1(v9, 1, v21);
      if (v19)
      {
LABEL_11:
        __break(1u);
        JUMPOUT(0x237B0A2E4);
      }

      sub_237B0B058();
      v22 = 1;
      sub_237C0724C();
      OUTLINED_FUNCTION_2_57();
      sub_237B0B124(v9, v23);
      OUTLINED_FUNCTION_1_57();
      sub_237B0B124(v15, v24);
      return v22 & 1;
  }
}

void sub_237B0A2F8()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = _s20PersistentParametersVMa_3();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_22_20();
  sub_2379E9068(v15, v16, v17, v18);
  OUTLINED_FUNCTION_73_1(v7, 1, v8);
  if (v19)
  {
    sub_2379D9054(v7, &qword_27DE9CE00, &qword_237C15080);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v20 = 0xD000000000000030;
    *(v20 + 8) = 0x8000000237C191C0;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_0_59();
    sub_237B0B17C(v7, v14, v21);
    sub_237A68BC0(v1);
    OUTLINED_FUNCTION_3_53();
    sub_237B0B124(v14, v22);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B0A494()
{
  OUTLINED_FUNCTION_74();
  v43 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v22 = (v21 - v20);
  v23 = _s20PersistentParametersVMa_3();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v42 - v31;
  (*(v17 + 16))(v22, v3, v14);
  sub_237A6793C(v22, v32);
  if (!v1)
  {
    v33 = v10;
    v34 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
    v35 = v43;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v35 + v34, v13, &qword_27DE9CE00, &qword_237C15080);
    OUTLINED_FUNCTION_73_1(v13, 1, v23);
    if (v36)
    {
      sub_2379D9054(v13, &qword_27DE9CE00, &qword_237C15080);
      OUTLINED_FUNCTION_0_59();
      sub_237B0B17C(v32, v33, v37);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v23);
      swift_beginAccess();
      sub_2379E8FDC(v33, v35 + v34, &qword_27DE9CE00, &qword_237C15080);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_0_59();
      sub_237B0B17C(v13, v29, v41);
      sub_237B0A744(v32, v29);
      sub_237B0B124(v29, _s20PersistentParametersVMa_3);
      sub_237B0B124(v32, _s20PersistentParametersVMa_3);
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B0A744(uint64_t a1, uint64_t a2)
{
  v4 = _s20PersistentParametersVMa_3();
  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (v10 = *v8, v11 = v8[1], (sub_237C0929C() & 1) != 0))
  {
    v12 = *(a1 + v4[7]);

    v14 = sub_237B42F98(v13);
    v15 = *(a2 + v4[7]);

    v17 = sub_237B42F98(v16);
    v18 = sub_237A6E3A8(v14, v17);

    if (v18)
    {
      result = sub_237B91000(a1 + v4[8], a2 + v4[8], &v30);
      v20 = v31;
      if (!v31)
      {
        return result;
      }

      v22 = v34;
      v21 = v35;
      v7 = v32;
      v6 = v33;
      v23 = v30;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
    }

    else
    {
      v20 = 0x8000000237C198F0;

      v25 = OUTLINED_FUNCTION_37_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
      sub_2379D9224(&qword_27DE9BC90, &qword_27DE9AE60, &qword_237C0D000);
      OUTLINED_FUNCTION_22_20();
      v7 = sub_237C0864C();
      v6 = v27;

      OUTLINED_FUNCTION_22_20();
      sub_237C0864C();

      v22 = sub_237C0883C();
      v21 = v28;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      v23 = 0xD000000000000011;
    }
  }

  else
  {

    v22 = sub_237C0883C();
    v21 = v29;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    v20 = 0xED00006E6D756C6FLL;
    v23 = 0x6320746567726154;
  }

  *v24 = v23;
  *(v24 + 8) = v20;
  *(v24 + 16) = v7;
  *(v24 + 24) = v6;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237B0AA10()
{
  OUTLINED_FUNCTION_12_32();
  sub_237B0B124(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9CE00, &qword_237C15080);
  v3 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(v0 + v3);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &qword_27DE9CDF0, &qword_237C12E38);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &qword_27DE9CDE8, &qword_237C12E30);
  v6 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  sub_237B0B0B0(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  sub_237B0B0B0(v9, v10, v11);
  return v0;
}

uint64_t sub_237B0AB1C()
{
  sub_237B0AA10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinearRegressorTrainingSessionDelegate()
{
  result = qword_27DE9CDC0;
  if (!qword_27DE9CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B0ABC8()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_237B0ADFC(319, &qword_27DE9CDD0, _s20PersistentParametersVMa_3);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      v4 = sub_237C05DBC();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_237B0ADFC(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_237B0ADFC(319, &qword_27DE9CDD8, _s9RegressorVMa);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_237B0ADFC(319, &qword_27DE9CDE0, _s5ModelVMa_2);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_237B0ADFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237B0AEC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237AFBDB8;

  return sub_237B08F0C(a1);
}

uint64_t sub_237B0AF58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237AFBF68;

  return sub_237B094EC();
}

unint64_t sub_237B0B058()
{
  result = qword_27DE9CDF8;
  if (!qword_27DE9CDF8)
  {
    _s9RegressorVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CDF8);
  }

  return result;
}

void sub_237B0B0B0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2379F8918(a1, a2, a3 & 1);
  }
}

uint64_t sub_237B0B124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237B0B17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_26(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_237B0B124(v0, type metadata accessor for MLCheckpoint);
}

uint64_t OUTLINED_FUNCTION_17_22@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_34_12(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_237B0B320(char a1)
{
  result = 0x6F635F6C6562616CLL;
  switch(a1)
  {
    case 1:
      return 0xD000000000000011;
    case 2:
    case 73:
      OUTLINED_FUNCTION_0_52();
      return v17 | 2;
    case 3:
      v11 = 0x6164696C6176;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 4:
      return 1635017060;
    case 5:
      return 0x746567726174;
    case 6:
      v12 = 0x6E6F6974706FLL;
      goto LABEL_71;
    case 7:
      return 7107189;
    case 8:
      return 1752457584;
    case 9:
      return 0x61625F726F727265;
    case 10:
      return 0x726564616568;
    case 11:
      return 0x6574696D696C6564;
    case 12:
      return 0x5F746E656D6D6F63;
    case 13:
      v10 = 0x657061637365;
      return v10 & 0xFFFFFFFFFFFFLL | 0x635F000000000000;
    case 14:
      return 0x715F656C62756F64;
    case 15:
      return 0x68635F65746F7571;
    case 16:
    case 64:
      OUTLINED_FUNCTION_0_52();
      return v9 + 1;
    case 17:
      return 0x65756C61765F616ELL;
    case 18:
      return 0x7265745F656E696CLL;
    case 19:
      v10 = 0x74757074756FLL;
      return v10 & 0xFFFFFFFFFFFFLL | 0x635F000000000000;
    case 20:
      return 0x696D696C5F776F72;
    case 21:
      return 0x776F725F70696B73;
    case 22:
      return 0x6C6F635F74786574;
    case 23:
      return 0x6E6F697461636F6CLL;
    case 24:
      v10 = 0x6874676E656CLL;
      return v10 & 0xFFFFFFFFFFFFLL | 0x635F000000000000;
    case 25:
      return 1954047348;
    case 26:
      return 0x6F635F6E656B6F74;
    case 27:
      return 0x656D616E656C6966;
    case 28:
      v11 = 0x636964657270;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 29:
      return 0x63697274656DLL;
    case 30:
      return 0x6F7272655F78616DLL;
    case 31:
      return 1702063474;
    case 32:
    case 54:
    case 62:
      OUTLINED_FUNCTION_0_52();
      return v15 - 1;
    case 33:
      v5 = 1953525599;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 34:
      return 0x745F74757074756FLL;
    case 35:
      return 0x646C656966;
    case 36:
      return 0x65665F6F69647561;
    case 37:
      return 0x5F6E6F6973736573;
    case 38:
      v5 = 1835365481;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 39:
      return 107;
    case 40:
      v7 = 0x736F62726576;
      goto LABEL_79;
    case 41:
      return 0x5F6C6C615F746567;
    case 42:
      v13 = 0x657361746164;
      goto LABEL_69;
    case 43:
      v3 = 1919251317;
      goto LABEL_19;
    case 44:
      v3 = 1835365481;
LABEL_19:
      result = v3 | 0x7461645F00000000;
      break;
    case 45:
      result = 0x61645F6172747865;
      break;
    case 46:
      result = 0x5F7473657261656ELL;
      break;
    case 47:
      result = 1937010799;
      break;
    case 48:
      result = 0x7972657571;
      break;
    case 49:
      result = 0x6B5F706F74;
      break;
    case 50:
      result = 0x7463697274736572;
      break;
    case 51:
      v7 = 0x64756C637865;
LABEL_79:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 52:
      OUTLINED_FUNCTION_0_52();
      result = v16 | 0xC;
      break;
    case 53:
    case 56:
      OUTLINED_FUNCTION_0_52();
      result = v4 | 6;
      break;
    case 55:
      v12 = 0x66666F747563;
LABEL_71:
      result = v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 57:
      result = 0xD000000000000011;
      break;
    case 58:
      OUTLINED_FUNCTION_0_52();
      result = v6 + 3;
      break;
    case 59:
      OUTLINED_FUNCTION_0_52();
      result = v14 + 5;
      break;
    case 60:
      OUTLINED_FUNCTION_0_52();
      result = v8 | 8;
      break;
    case 61:
      result = 0x7963617275636361;
      break;
    case 63:
      result = 0x625F74726F706572;
      break;
    case 65:
      result = 0x6F69736963657270;
      break;
    case 66:
      result = 0x6C6C61636572;
      break;
    case 67:
      result = 6518113;
      break;
    case 68:
      result = 0x767275635F636F72;
      break;
    case 69:
      result = 0x65726F63735F3166;
      break;
    case 70:
      result = 0x73736F6C5F676F6CLL;
      break;
    case 71:
      result = 0x656C797473;
      break;
    case 72:
      v13 = 0x6E65746E6F63;
LABEL_69:
      result = v13 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 74:
      result = 0xD000000000000011;
      break;
    case 75:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t MLTextClassifier.FeatureExtractorType.description.getter()
{
  v1 = v0;
  v2 = sub_237C05ADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_237B0BE98(v1, v11 - v10);
  switch(__swift_getEnumTagSinglePayload(v12, 4, v2))
  {
    case 1u:
      v14 = 0xD000000000000015;
      break;
    case 2u:
      OUTLINED_FUNCTION_0_60();
      v14 = v16 + 1;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_60();
      v14 = v17 + 18;
      break;
    case 4u:
      OUTLINED_FUNCTION_0_60();
      v14 = v15 + 49;
      break;
    default:
      (*(v3 + 32))(v7, v12, v2);
      sub_237C08EDC();

      v13 = sub_237C05A9C();
      MEMORY[0x2383DC360](v13);

      MEMORY[0x2383DC360](39, 0xE100000000000000);
      v14 = 0xD00000000000001ALL;
      (*(v3 + 8))(v7, v2);
      break;
  }

  return v14;
}

uint64_t type metadata accessor for MLTextClassifier.FeatureExtractorType()
{
  result = qword_27DE9CE10;
  if (!qword_27DE9CE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B0BE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t MLTextClassifier.FeatureExtractorType.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLTextClassifier.FeatureExtractorType.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237B0BF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 5)
  {
    return EnumTagSinglePayload - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237B0BFB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_237C05ADC();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_237B0C010()
{
  v0 = sub_237C05ADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

id sub_237B0C068(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  sub_237B0BE98(a1, v5 - v4);
  v7 = sub_237C05ADC();
  switch(__swift_getEnumTagSinglePayload(v6, 4, v7))
  {
    case 1u:
      v8 = MEMORY[0x277CD88C0];
      goto LABEL_6;
    case 2u:
    case 3u:
      v8 = MEMORY[0x277CD88B8];
      goto LABEL_6;
    case 4u:
      v8 = MEMORY[0x277CD88A8];
LABEL_6:
      v11 = *v8;
      sub_237AF2F0C(a1);
      result = v11;
      break;
    default:
      v9 = *MEMORY[0x277CD88B0];
      sub_237AF2F0C(a1);
      sub_237AF2F0C(v6);
      result = v9;
      break;
  }

  return result;
}

uint64_t type metadata accessor for MLTextClassifier.ModelAlgorithmType()
{
  result = qword_27DE9CE20;
  if (!qword_27DE9CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B0C1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8CreateML16MLTextClassifierV18ModelAlgorithmTypeO11descriptionSSvg_0()
{
  v1 = v0;
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_237B0C1F4(v1, v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      sub_237AF2E40(v11, v6);
      v15 = MLTextClassifier.FeatureExtractorType.description.getter();

      MEMORY[0x2383DC360](0x6C65646F4D20, 0xE600000000000000);

      v13 = v15;
      sub_237AF2F0C(v6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_58();
    return 0x20746E452078614DLL;
  }

  return v13;
}

void MLTextClassifier.ModelAlgorithmType.playgroundDescription.getter(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_237B0C1F4(v2, v12 - v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = 0x8000000237C1BFF0;
      v15 = 0xD00000000000001ELL;
    }

    else
    {
      sub_237AF2E40(v13, v8);
      v17 = MLTextClassifier.FeatureExtractorType.description.getter();
      v18 = v16;

      MEMORY[0x2383DC360](0x6C65646F4D20, 0xE600000000000000);

      v15 = v17;
      v13 = v18;
      sub_237AF2F0C(v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_58();
    v15 = 0x20746E452078614DLL;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v15;
  a1[1] = v13;
}

void sub_237B0C534()
{
  sub_2379F1CF8();
  if (v0 <= 0x3F)
  {
    sub_237B0C5A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_237B0C5A8()
{
  if (!qword_27DE9CE30)
  {
    type metadata accessor for MLTextClassifier.FeatureExtractorType();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9CA40, &unk_237C11B10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DE9CE30);
    }
  }
}

uint64_t static MLImageClassifier.__Defaults.validation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v3 = __swift_project_value_buffer(v2, qword_27DE9CE38);
  return sub_237B0C840(v3, a1, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
}

uint64_t static MLImageClassifier.__Defaults.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  v3 = __swift_project_value_buffer(v2, qword_27DE9CE50);
  return sub_237B0C840(v3, a1, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
}

uint64_t sub_237B0C754()
{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  __swift_allocate_value_buffer(v0, qword_27DE9CE38);
  v1 = __swift_project_value_buffer(v0, qword_27DE9CE38);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 256;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B0C7C8()
{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  __swift_allocate_value_buffer(v0, qword_27DE9CE50);
  v1 = __swift_project_value_buffer(v0, qword_27DE9CE50);
  *v1 = 2;
  *(v1 + 8) = 0;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B0C840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_BYTE *_s10__DefaultsVwst_2(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237B0C978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237B0C9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237B0CA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AnyClassificationMetrics()
{
  result = qword_27DE9CE68;
  if (!qword_27DE9CE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B0CAD0()
{
  sub_237B0CB3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237B0CB3C()
{
  if (!qword_27DE9CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A9C8, &qword_237C0B6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AA00, &qword_237C0B6F0);
    v0 = type metadata accessor for Either();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9CE78);
    }
  }
}

void sub_237B0CBBC()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v67 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v63);
  v60 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  v11 = OUTLINED_FUNCTION_4(v62);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v52 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0(v64);
  v61 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v59 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v22);
  v53 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v29 = OUTLINED_FUNCTION_4(v55);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v32);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v56);
  v54 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v38 = &v52 - v37;
  sub_237C05FFC();
  v66 = v1;
  sub_237C05FFC();
  v39 = swift_dynamicCastMetatype();
  v65 = v3;
  if (v39 && swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v68 = 0;
    v69 = 0xE000000000000000;
    OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    v40 = *(v53 + 8);
    v40(v28, v22);
    v41 = v66;
    sub_237C05FEC();
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_237C05EAC();
    v40(v28, v22);
    OUTLINED_FUNCTION_7_38(&qword_27DE9AA90, &qword_27DE9AA88, &unk_237C0B800);
    sub_237C06FBC();
    v42 = sub_237C0602C();
    OUTLINED_FUNCTION_4(v42);
    v44 = *(v43 + 8);
    v44(v41, v42);
    v44(v65, v42);
    (*(v54 + 32))(v67, v38, v56);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    return;
  }

  if (swift_dynamicCastMetatype() && swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v68 = 0;
    OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
    v45 = v63;
    sub_237C05EAC();
    v46 = *(v60 + 8);
    v46(v10, v45);
    v47 = v66;
    sub_237C05FEC();
    v68 = 0;
    sub_237C05EAC();
    v46(v10, v45);
    OUTLINED_FUNCTION_7_38(&qword_27DE9C9E0, &qword_27DE9C798, &qword_237C10E70);
    v48 = v59;
    sub_237C06FBC();
    v49 = sub_237C0602C();
    OUTLINED_FUNCTION_4(v49);
    v51 = *(v50 + 8);
    v51(v47, v49);
    v51(v65, v49);
    (*(v61 + 32))(v67, v48, v64);
    goto LABEL_7;
  }

  sub_237C090DC();
  __break(1u);
}

void sub_237B0D298()
{
  OUTLINED_FUNCTION_153();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_94();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_45(v12, v22);
  OUTLINED_FUNCTION_7_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = OUTLINED_FUNCTION_2_58();
    v14(v13);
    v15 = sub_237C06F7C();
    sub_2379E1D18(sub_237B0DC68, 0, v15);
    v17 = v16;

    sub_237B42F98(v17);
    v18 = OUTLINED_FUNCTION_9_38();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_3_54();
    v21(v20);
    OUTLINED_FUNCTION_15_29();
    sub_237C06F7C();
    v18 = OUTLINED_FUNCTION_10_36();
  }

  v19(v18);
  OUTLINED_FUNCTION_150();
}

double sub_237B0D7E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_94();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_45(v18, v27);
  OUTLINED_FUNCTION_7_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = OUTLINED_FUNCTION_2_58();
    v20(v19);
    sub_237C06F8C();
    v22 = v21;
    (*(v4 + 8))(v0, v2);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_3_54();
    v24(v23);
    OUTLINED_FUNCTION_15_29();
    sub_237C06F8C();
    v22 = v25;
    (*(v10 + 8))(v1, v8);
  }

  return v22;
}

uint64_t sub_237B0D9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237B0DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  sub_237B0D9C4(v20, &a9 - v41);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v25 + 32))(v20, v42, v23);
    sub_237C06F5C();
    (*(v25 + 8))(v20, v23);
  }

  else
  {
    v43 = *(v31 + 32);
    v44 = OUTLINED_FUNCTION_7_0();
    v45(v44);
    sub_237C06F5C();
    (*(v31 + 8))(v36, v29);
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B0DC68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_237C0924C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_45@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_237B0D9C4(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_7_38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2379D9224(a1, a2, a3);
}

uint64_t sub_237B0DD68(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DE8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0DDC8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DE0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0DE28(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DF8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0DE88(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73F18]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0DEE8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DD8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0DF48(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DC8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0DFA8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DD0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E008(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73EA0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E068(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73F00]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E0C8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73EA8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E128(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73FA8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E188(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73FC0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E1E8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73EF0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E248(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73ED0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E2A8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73EC0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E308(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73EC8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E368(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73EE8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E3C8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E90]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E428(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73FC8]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E488(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73FD0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E4E8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73FB0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E548(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E00]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E5A8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E38]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E608(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E60]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E668(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E58]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E6C8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0ED2C(a1, MEMORY[0x277D73F70]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E728(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0ED2C(a1, MEMORY[0x277D73F68]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E788(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0ED2C(a1, MEMORY[0x277D73E50]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0E7E8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E48]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237B0E848()
{
  OUTLINED_FUNCTION_33_13(*MEMORY[0x277D85DE8]);
  MEMORY[0x2383DDB00]();
  if (!v17)
  {
LABEL_30:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if (tc_v1_error_message())
  {
    sub_237C087DC();
    OUTLINED_FUNCTION_45_7();
    if (qword_27DE9A640 != -1)
    {
      OUTLINED_FUNCTION_15_30();
    }

    OUTLINED_FUNCTION_16_23(&qword_27DE9CE80);
    v0 = sub_2379F3408();
    OUTLINED_FUNCTION_2_59(v0, v1, v2, v3, v4, v5, v6, v7, MEMORY[0x277D837D0], v0, v0, v0, v14, v15, v16);
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_25_21();

    if (qword_27DE9A648 != -1)
    {
      OUTLINED_FUNCTION_14_26();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CEA0);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_26_17();
    if (qword_27DE9A650 != -1)
    {
      OUTLINED_FUNCTION_13_27();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CEC0);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_25_21();

    if (qword_27DE9A658 != -1)
    {
      OUTLINED_FUNCTION_12_33();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CEE0);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_26_17();
    if (qword_27DE9A660 != -1)
    {
      OUTLINED_FUNCTION_11_35();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CF00);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_25_21();

    if (qword_27DE9A668 != -1)
    {
      OUTLINED_FUNCTION_10_37();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CF20);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_26_17();
    if (qword_27DE9A670 != -1)
    {
      OUTLINED_FUNCTION_9_39();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CF40);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_25_21();

    if (qword_27DE9A678 != -1)
    {
      OUTLINED_FUNCTION_8_35();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CF60);
    OUTLINED_FUNCTION_17_23();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_26_17();
    if (qword_27DE9A680 != -1)
    {
      OUTLINED_FUNCTION_7_39();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CF80);
    OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_25_21();

    if (qword_27DE9A688 != -1)
    {
      OUTLINED_FUNCTION_6_45();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CFA0);
    OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_26_17();
    if (qword_27DE9A690 != -1)
    {
      OUTLINED_FUNCTION_5_46();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CFC0);
    OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_25_21();

    if (qword_27DE9A698 != -1)
    {
      OUTLINED_FUNCTION_4_51();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9CFE0);
    OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_23_25();
    if (qword_27DE9A6A0 != -1)
    {
      OUTLINED_FUNCTION_3_55();
    }

    OUTLINED_FUNCTION_1_59(&qword_27DE9D000);
    OUTLINED_FUNCTION_18_27();
    OUTLINED_FUNCTION_39_11();
    OUTLINED_FUNCTION_34_13();
    sub_2379F5634();
    OUTLINED_FUNCTION_50_7();
    v8 = sub_237C08CFC();
    sub_237C08C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v9 = OUTLINED_FUNCTION_21_9();
    v10 = OUTLINED_FUNCTION_49_5(v9, xmmword_237C0B660);
    OUTLINED_FUNCTION_44_11(v10);
    OUTLINED_FUNCTION_21_24();
    OUTLINED_FUNCTION_48_10();

    sub_2379E8AF0();
    v11 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_22_21(v11, v12);
    tc_v1_release();
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_237B0ECCC(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0ED2C(a1, MEMORY[0x277D73DF0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0F9C4(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73DC0]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0FA24(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73F80]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0FA84(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73F60]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0FAE4(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E40]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B0FB44(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_237B0FBA4(a1, MEMORY[0x277D73E30]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10440(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73DB0]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B104A0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73F40]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10500(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73EB8]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10560(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73E98]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B105C0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73EB0]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10620(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73EF8]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10680(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11F10(a1, a2, MEMORY[0x277D73DA8]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10F40(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73E80]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B10FA0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73E88]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B11000(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73ED8]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B11060(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73F10]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B114F4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73F78]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B119B8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73F38]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B11A18(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11A78(a1, a2, MEMORY[0x277D73E78]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B11EB0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B11F10(a1, a2, MEMORY[0x277D73F20]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B12348(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73F58]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B123A8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_237B12408(a1, a2, MEMORY[0x277D73FA0]);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B130A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73D90]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B13104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73D88]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B13164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73D98]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B131C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73F90]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B13224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73E28]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B13284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B13404(a1, a2, a3, MEMORY[0x277D73F08]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B132E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B13404(a1, a2, a3, MEMORY[0x277D73E68]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B13344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B13404(a1, a2, a3, MEMORY[0x277D73E70]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B133A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B13404(a1, a2, a3, MEMORY[0x277D73F88]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B13CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73F28]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B14134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73FB8]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B14194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_237B141F4(a1, a2, a3, MEMORY[0x277D73F50]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B152F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15DFC(a1, a2, a3, a4, MEMORY[0x277D73F30]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B15350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15410(a1, a2, a3, a4, MEMORY[0x277D73F48]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B153B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15410(a1, a2, a3, a4, MEMORY[0x277D73F98]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B15C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15DFC(a1, a2, a3, a4, MEMORY[0x277D73E20]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B15CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15DFC(a1, a2, a3, a4, MEMORY[0x277D73E08]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B15D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15DFC(a1, a2, a3, a4, MEMORY[0x277D73E10]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B15D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_237B15DFC(a1, a2, a3, a4, MEMORY[0x277D73E18]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_237B17790(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_237B177CC()
{
  qword_27DE9CE80 = 0x656D61724653;
  *algn_27DE9CE88 = 0xE600000000000000;
  qword_27DE9CE90 = 0x6C62615461746144;
  unk_27DE9CE98 = 0xE900000000000065;
}

void sub_237B17808()
{
  qword_27DE9CEA0 = 0x796172724153;
  *algn_27DE9CEA8 = 0xE600000000000000;
  qword_27DE9CEB0 = 0x756C6F4361746144;
  unk_27DE9CEB8 = 0xEA00000000006E6DLL;
}

void sub_237B17844()
{
  qword_27DE9CEC0 = 0x6D617266735F6374;
  *algn_27DE9CEC8 = 0xEF796C7070615F65;
  qword_27DE9CED0 = 7364973;
  unk_27DE9CED8 = 0xE300000000000000;
}

void sub_237B17884()
{
  qword_27DE9CEE0 = 0x61727261735F6374;
  *algn_27DE9CEE8 = 0xEF796C7070615F79;
  qword_27DE9CEF0 = 7364973;
  unk_27DE9CEF8 = 0xE300000000000000;
}

void sub_237B178C4()
{
  qword_27DE9CF00 = 0x616E706F7264;
  *algn_27DE9CF08 = 0xE600000000000000;
  qword_27DE9CF10 = 0x7373694D706F7264;
  unk_27DE9CF18 = 0xEB00000000676E69;
}

void sub_237B17904()
{
  qword_27DE9CF20 = 1953720684;
  *algn_27DE9CF28 = 0xE400000000000000;
  strcpy(&qword_27DE9CF30, "SequenceType");
  unk_27DE9CF3D = 0;
  unk_27DE9CF3E = -5120;
}

void sub_237B17940()
{
  qword_27DE9CF40 = 0x74616F6C66;
  *algn_27DE9CF48 = 0xE500000000000000;
  qword_27DE9CF50 = 0x656C62756F44;
  unk_27DE9CF58 = 0xE600000000000000;
}

void sub_237B17974()
{
  qword_27DE9CF60 = 0x656765746E692061;
  *algn_27DE9CF68 = 0xE900000000000072;
  qword_27DE9CF70 = 0x746E49206E61;
  unk_27DE9CF78 = 0xE600000000000000;
}

void sub_237B179B0()
{
  qword_27DE9CF80 = 0x203A726F727245;
  *algn_27DE9CF88 = 0xE700000000000000;
  qword_27DE9CF90 = 0;
  unk_27DE9CF98 = 0xE000000000000000;
}

void sub_237B179DC()
{
  strcpy(&qword_27DE9CFA0, "a Turi archive");
  algn_27DE9CFA8[7] = -18;
  qword_27DE9CFB0 = 0xD000000000000023;
  unk_27DE9CFB8 = 0x8000000237C1C160;
}

void sub_237B17A28()
{
  qword_27DE9CFC0 = 0xD000000000000016;
  *algn_27DE9CFC8 = 0x8000000237C1C120;
  qword_27DE9CFD0 = 0xD000000000000017;
  unk_27DE9CFD8 = 0x8000000237C1C140;
}

void sub_237B17A68()
{
  qword_27DE9CFE0 = 0xD000000000000020;
  *algn_27DE9CFE8 = 0x8000000237C1C0F0;
  strcpy(&qword_27DE9CFF0, "type Sequence.");
  unk_27DE9CFFF = -18;
}

void sub_237B17AB4()
{
  qword_27DE9D000 = 0xD000000000000034;
  *algn_27DE9D008 = 0x8000000237C1C090;
  qword_27DE9D010 = 0xD00000000000001FLL;
  unk_27DE9D018 = 0x8000000237C1C0D0;
}

void OUTLINED_FUNCTION_0_61(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
}

void OUTLINED_FUNCTION_1_59(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
}

uint64_t OUTLINED_FUNCTION_3_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_30()
{

  return swift_once();
}

void OUTLINED_FUNCTION_16_23(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = a1[2];
  v2 = a1[3];
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return sub_237C0826C();
}

uint64_t OUTLINED_FUNCTION_22_21(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_23_25()
{
}

uint64_t OUTLINED_FUNCTION_24_23()
{
}

uint64_t OUTLINED_FUNCTION_26_17()
{
}

uint64_t OUTLINED_FUNCTION_27_11()
{
}

uint64_t OUTLINED_FUNCTION_28_13()
{
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_13()
{
}

uint64_t OUTLINED_FUNCTION_38_10()
{

  return sub_237C08D9C();
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return sub_237C08D9C();
}

unint64_t OUTLINED_FUNCTION_42_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;

  return sub_237A8E8E4();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return sub_237C0826C();
}

unint64_t OUTLINED_FUNCTION_49_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;

  return sub_237A8E8E4();
}

uint64_t OUTLINED_FUNCTION_50_7()
{
}

uint64_t sub_237B18000()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237B18118(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237C1C190 == a2;
  if (v3 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000237C1C1B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237C0929C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_237B181EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_237B18224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v17[0] = a3;
  type metadata accessor for FeatureVectorizer.Transformer.CodingKeys();
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  v6 = sub_237C0922C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0949C();
  v20 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
  sub_237B188AC(&qword_27DE9D138, sub_237B18924);
  v15 = v17[2];
  sub_237C0921C();
  if (!v15)
  {
    v18 = 1;
    sub_237C091EC();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_237B183F8(uint64_t *a1)
{
  type metadata accessor for FeatureVectorizer.Transformer.CodingKeys();
  OUTLINED_FUNCTION_0_62();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_237C091CC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0946C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
    sub_237B188AC(&qword_27DE9D128, sub_237B18858);
    sub_237C091BC();
    WitnessTable = v12;
    sub_237C0918C();
    v10 = OUTLINED_FUNCTION_1_60();
    v11(v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return WitnessTable;
}

BOOL sub_237B18624(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_237A007E0(*a1, *a2);
}

uint64_t sub_237B18638(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_237A00818(*v1);
}

uint64_t sub_237B18648(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_237A007F0(a1, *v2);
}

uint64_t sub_237B18658(uint64_t a1, uint64_t a2)
{
  sub_237C093CC();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_237A007F0(v7, *v2);
  return sub_237C0940C();
}

unint64_t sub_237B186A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_237B181EC(*v1);
}

uint64_t sub_237B186B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_237B18118(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_237B186E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_237B18708@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_237A007D8();
  *a2 = result;
  return result;
}

uint64_t sub_237B18738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237B1878C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237B187E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_237B183F8(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
  }

  return result;
}

uint64_t sub_237B18818(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_237B18224(a1, *v2, v2[1], v2[2]);
}

unint64_t sub_237B18858()
{
  result = qword_27DE9D130;
  if (!qword_27DE9D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D130);
  }

  return result;
}

uint64_t sub_237B188AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D120, &qword_237C130E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237B18924()
{
  result = qword_27DE9D140[0];
  if (!qword_27DE9D140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE9D140);
  }

  return result;
}

_BYTE *sub_237B18980(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237B18A4CLL);
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

uint64_t sub_237B18AFC(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v8 = OUTLINED_FUNCTION_3_56();
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v8)
      {
        goto LABEL_27;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x69735F6863746162, 0xEA0000000000657ALL);

      break;
    case 2:
      type metadata accessor for CMLFeatureValue();

      OUTLINED_FUNCTION_4_52();
      if (a2)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_60(0x687469726F676C61, 0xE90000000000006DLL);

    case 3:
      type metadata accessor for CMLFeatureValue();

      OUTLINED_FUNCTION_4_52();
      if (a2)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_60(0x705F656369766564, 0xED00007963696C6FLL);

    case 4:
      v6 = OUTLINED_FUNCTION_3_56();
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v6)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x237B18EE8);
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0xD000000000000012, 0x8000000237C1C1F0);

      break;
    case 5:
      v9 = OUTLINED_FUNCTION_3_56();
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v9)
      {
        goto LABEL_28;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x645F6C6574786574, 0xEE00797469736E65);

      break;
    case 6:
      v10 = OUTLINED_FUNCTION_3_56();
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v10)
      {
        goto LABEL_29;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x74735F656C797473, 0xEE006874676E6572);

      break;
    case 7:
      v7 = OUTLINED_FUNCTION_3_56();
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v7)
      {
        goto LABEL_25;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x6D6172665F6D756ELL, 0xEA00000000007365);

      break;
    default:
      v4 = OUTLINED_FUNCTION_3_56();
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v4)
      {
        goto LABEL_26;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x726574695F78616DLL, 0xEE00736E6F697461);

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_60(uint64_t a1, uint64_t a2)
{

  return sub_237A2EABC(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_3_56()
{

  return sub_237B0F164(v0);
}

uint64_t OUTLINED_FUNCTION_4_52()
{

  return sub_237A2E7CC();
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9D1C8;
  if (!qword_27DE9D1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B18FB4()
{
  sub_2379EA11C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    if (v1 <= 0x3F)
    {
      sub_2379FCE48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_237B1903C(uint64_t a1)
{
  v4 = type metadata accessor for MLSoundClassifier.DataSource();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_47(v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237B1923C(v2, v8);
      sub_237B3BD1C();
      if (!v1)
      {
        if (v18)
        {
          OUTLINED_FUNCTION_0_64();
          sub_237B192A0(v8, v21);

          return a1;
        }

        a1 = 0x8000000237C1C210;
        sub_2379E8AF0();
        v22 = OUTLINED_FUNCTION_6_2();
        *v23 = 0xD000000000000031;
        v23[1] = 0x8000000237C1C210;
        OUTLINED_FUNCTION_52(v22, v23);
      }

      OUTLINED_FUNCTION_0_64();
      sub_237B192A0(v8, v19);
      break;
    case 2u:
      OUTLINED_FUNCTION_3_57();
      sub_237B192A0(v2, v15);
      sub_2379E8AF0();
      v16 = OUTLINED_FUNCTION_6_2();
      *v17 = 0xD000000000000031;
      v17[1] = 0x8000000237C1C210;
      OUTLINED_FUNCTION_52(v16, v17);
      break;
    case 3u:

      break;
    default:
      sub_237BF6230(*v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 17) << 8), a1);
      a1 = v14;
      break;
  }

  return a1;
}

uint64_t sub_237B1923C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.DataSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B192A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237B192F8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MLSoundClassifier.DataSource();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v33[-v12];
  v14 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  sub_237A392BC(v3, v19 - v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237B1923C(v20, v13);
      sub_237B3C1CC();
      if (!v2)
      {
        if (*(v27 + 16))
        {
          OUTLINED_FUNCTION_0_64();
          sub_237B192A0(v13, v29);
          goto LABEL_11;
        }

        a1 = 0x8000000237C1C250;
        sub_2379E8AF0();
        v31 = OUTLINED_FUNCTION_6_2();
        *v32 = 0xD00000000000002ELL;
        v32[1] = 0x8000000237C1C250;
        OUTLINED_FUNCTION_52(v31, v32);
      }

      OUTLINED_FUNCTION_0_64();
      sub_237B192A0(v13, v28);
      break;
    case 2u:
      *v11 = *v20;
      swift_storeEnumTagMultiPayload();
      sub_237B3C1CC();
      v23 = v22;
      OUTLINED_FUNCTION_0_64();
      sub_237B192A0(v11, v24);
      if (!v2)
      {
        if (*(v23 + 16))
        {
          goto LABEL_11;
        }

        sub_2379E8AF0();
        v25 = OUTLINED_FUNCTION_6_2();
        *v26 = 0xD00000000000002ELL;
        v26[1] = 0x8000000237C1C250;
        OUTLINED_FUNCTION_52(v25, v26);
      }

      break;
    case 3u:
LABEL_11:

      break;
    default:
      sub_237BF634C(*v20, *(v20 + 8), *(v20 + 16) | (*(v20 + 17) << 8), a1);
      a1 = v21;
      break;
  }

  return a1;
}

uint64_t sub_237B19584(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.DataSource();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_47(v12);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_237B1923C(v1, v7);
      sub_237B3DEDC(a1);
      OUTLINED_FUNCTION_0_64();
      v15 = v7;
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_3_57();
      v15 = v1;
LABEL_4:
      result = sub_237B192A0(v15, v14);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_47@<X0>(uint64_t a1@<X8>)
{

  return sub_237A392BC(v2, v1 - a1);
}

void sub_237B19700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = sub_237C0602C();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_237C05D8C();
  v12 = *(v11 + 16);
  if (v12)
  {
    v40 = a2;
    v41 = a3;
    v42 = a4;
    v43 = v4;
    v48 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v13 = v48;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v16 = *(v14 + 64);
    v39[1] = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v45 = *(v14 + 56);
    v46 = v15;
    v44 = (v14 - 8);
    do
    {
      v18 = v47;
      v19 = v50;
      v20 = v14;
      v46(v47, v17, v50);
      v21 = sub_237C0600C();
      v23 = v22;
      (*v44)(v18, v19);
      v48 = v13;
      v24 = *(v13 + 16);
      if (v24 >= *(v13 + 24) >> 1)
      {
        sub_237AC8A74();
        v13 = v48;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v23;
      v17 += v45;
      --v12;
      v14 = v20;
    }

    while (v12);

    a4 = v42;
    a2 = v40;
    a3 = v41;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v26 = sub_2379EB28C(a2, a3, v13);
  if (v27)
  {

    v48 = 0;
    v49 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0x6320746567726154, 0xEF27206E6D756C6FLL);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C1C280);
    v29 = v48;
    v28 = v49;
LABEL_15:
    sub_2379E8AF0();
    swift_allocError();
    *v37 = v29;
    *(v37 + 8) = v28;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 1;
    swift_willThrow();
    return;
  }

  v30 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237B05F64(v13);
    v13 = v38;
  }

  v31 = *(v13 + 16);
  if (v30 >= v31)
  {
    __break(1u);
    return;
  }

  v32 = v31 - 1;
  v33 = v31 - 1 - v30;
  v34 = v13 + 16 * v30;
  v35 = *(v34 + 40);
  sub_237A1DCBC((v34 + 48), v33, (v34 + 32));
  *(v13 + 16) = v32;

  v36 = sub_237B19A6C(v13, a4);

  if (!*(v36 + 16))
  {

    v28 = 0x8000000237C1C2B0;
    v29 = 0xD000000000000038;
    goto LABEL_15;
  }
}

uint64_t sub_237B19A6C(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v2 = isUniquelyReferenced_nonNull_native;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 0;
      v20 = "ven training data frame.";
      v5 = (a2 + 40);
      v6 = MEMORY[0x277D84F90];
      v22 = xmmword_237C0B660;
      do
      {
        v8 = *(v5 - 1);
        v7 = *v5;
        v23 = v8;
        v24 = v7;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v19[2] = &v23;

        if (sub_237AC1CCC(sub_237A06CFC, v19, v2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = *(v6 + 16);
            sub_237BC0CB8();
            v6 = isUniquelyReferenced_nonNull_native;
          }

          v9 = *(v6 + 16);
          if (v9 >= *(v6 + 24) >> 1)
          {
            sub_237BC0CB8();
            v6 = isUniquelyReferenced_nonNull_native;
          }

          *(v6 + 16) = v9 + 1;
          v10 = v6 + 16 * v9;
          *(v10 + 32) = v8;
          *(v10 + 40) = v7;
        }

        else
        {
          v23 = 0;
          v24 = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0x27206E6D756C6F43, 0xE800000000000000);
          MEMORY[0x2383DC360](v8, v7);

          MEMORY[0x2383DC360](0xD000000000000038, v20 | 0x8000000000000000);
          v12 = v23;
          v11 = v24;
          sub_237C08C3C();
          v21 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
          v13 = swift_allocObject();
          *(v13 + 16) = v22;
          v14 = MEMORY[0x277D837D0];
          *(v13 + 56) = MEMORY[0x277D837D0];
          *(v13 + 32) = v12;
          *(v13 + 40) = v11;

          sub_237C0939C();

          sub_2379F5634();
          v15 = sub_237C08CFC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
          v16 = swift_allocObject();
          *(v16 + 16) = v22;
          *(v16 + 56) = v14;
          *(v16 + 64) = sub_237A8E8E4();
          *(v16 + 32) = v12;
          *(v16 + 40) = v11;
          v4 = v21;
          sub_237C0826C();
        }

        v5 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    return v2;
  }

  return v6;
}

uint64_t sub_237B19D44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_237A85E3C(a1, v17);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_237B41238();
    *v2 = v16;
    v5 = sub_237C0909C();
    OUTLINED_FUNCTION_4(v5);
    return (*(v6 + 8))(a2);
  }

  else
  {
    OUTLINED_FUNCTION_39_12();
    sub_2379D9054(v8, v9, v10);
    sub_237B1DE58(v17);
    v11 = sub_237C0909C();
    OUTLINED_FUNCTION_4(v11);
    (*(v12 + 8))(a2);
    OUTLINED_FUNCTION_39_12();
    return sub_2379D9054(v13, v14, v15);
  }
}

uint64_t sub_237B19E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D218, &qword_237C13300);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = sub_237C0806C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_25_22();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
    sub_2379D9054(a1, &qword_27DE9D218, &qword_237C13300);
    sub_237B1DF7C(a2, a3, v13);

    v26 = OUTLINED_FUNCTION_34_1();
    return sub_2379D9054(v26, v27, &qword_237C13300);
  }

  else
  {
    (*(v17 + 32))(v22, a1, v14);
    v29 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v4;
    sub_237B41384(v22, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v32;
  }

  return result;
}

uint64_t sub_237B19FFC(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_237A1FCF0(a1, v15);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_237B413C0(v15, a2);
    *v2 = v13;
  }

  else
  {
    sub_2379D9054(a1, &qword_27DE9D200, &qword_237C132C8);
    v7 = *v2;
    v8 = sub_237ACB370(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v12 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C000, &unk_237C132D0);
      sub_237C090AC();
      sub_237A1FCF0((*(v14 + 56) + 40 * v10), v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
      sub_237A84BFC();
      sub_237C090CC();
      *v3 = v14;
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
    }

    return sub_2379D9054(v15, &qword_27DE9D200, &qword_237C132C8);
  }

  return result;
}

id sub_237B1A15C()
{
  v1 = *(v0 + 16);
  v2 = sub_237B1A1CC(sub_237B1E32C);

  return v2;
}

id sub_237B1A1CC(void (*a1)(uint64_t *__return_ptr, id))
{
  a1(&v4, [v1 lock]);
  if (v2)
  {
    return [v1 unlock];
  }

  [v1 unlock];
  return v4;
}

uint64_t sub_237B1A2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D208, &unk_237C132E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  swift_beginAccess();
  v8 = *(a1 + 24);
  v19 = a2;
  *&v21[0] = v8;

  v9 = sub_237B1E0C4(sub_237B1E348, v18, v8);
  v17 = v21;
  sub_237A9D400(sub_237B1E3A0, v9, v10 & 1, v7);

  v11 = sub_237C074BC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_2379D9054(v7, &qword_27DE9D208, &unk_237C132E0);
    memset(v21, 0, sizeof(v21));
  }

  else
  {
    v12 = sub_237C0749C();
    (*(*(v11 - 8) + 8))(v7, v11);
    sub_237AC9A5C(v12, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C998, &qword_237C117C0);
  v13 = swift_dynamicCast();
  v14 = v20;
  if (!v13)
  {
    return 0;
  }

  return v14;
}

uint64_t sub_237B1A4D0()
{
  v1 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  OUTLINED_FUNCTION_13_26(v1);
  sub_237C05DAC();
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_13_26(v2);
  v3 = type metadata accessor for TreeRegressor();
  OUTLINED_FUNCTION_13_26(v3);
  v4 = type metadata accessor for TreeRegressorModel();
  OUTLINED_FUNCTION_13_26(v4);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  *(v5 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  *(v6 + 16) = v7;
  sub_237B1E418();
  return v0;
}

uint64_t *sub_237B1A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v114 = a7;
  v116 = a6;
  v112 = a5;
  v118 = a2;
  v110 = *v7;
  v117 = sub_237C071DC();
  v11 = OUTLINED_FUNCTION_0(v117);
  v115 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_0();
  v106 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v109 = v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v108 = (v102 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19_28(v27, v102[0]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v104 = v102 - v32;
  v33 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v105 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v33);
  sub_237C05DAC();
  v43 = sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  type metadata accessor for TreeRegressor();
  OUTLINED_FUNCTION_64();
  v111 = v47;
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  type metadata accessor for TreeRegressorModel();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  *(v55 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  *(v56 + 16) = v57;
  v107 = a3;
  v58 = a3;
  v59 = a4;
  v60 = v113;
  sub_237B19700(a1, v58, a4, v112);
  v113 = v60;
  if (v60)
  {

    OUTLINED_FUNCTION_5_48();
    sub_237B1E3C0(v114, v62);
    (*(v115 + 8))(v116, v117);
    OUTLINED_FUNCTION_39_12();
    sub_2379D9054(v63, v64, v65);
    v66 = *(*(v43 - 8) + 8);
    v66(a1, v43);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
    v66(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v43);
    OUTLINED_FUNCTION_39_12();
    sub_2379D9054(v67, v68, v69);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &qword_27DE9D1F8, &unk_237C132A0);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &qword_27DE9AE10, &qword_237C0C090);
    v70 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
    sub_237B0B0B0(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    sub_237B0B0B0(v73, v74, v75);
    v76 = *(*v7 + 48);
    v77 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v102[0] = v61;

    v112 = *(v43 - 8);
    (*(v112 + 16))(v39, a1, v43);
    sub_237A40628();
    v78 = v33[8];
    v79 = *(v115 + 16);
    v102[1] = v115 + 16;
    v103 = v79;
    v79(v39 + v78, v116, v117);
    v110 = a1;
    v80 = v33[5];
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v43);

    sub_237A6F014();
    v84 = (v39 + v33[6]);
    v85 = v107;
    *v84 = v107;
    v84[1] = a4;
    v86 = v102[0];
    *(v39 + v33[7]) = v102[0];
    sub_237B1E470();
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v33);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6F014();
    swift_endAccess();
    v90 = v114;
    sub_237B1E470();

    v91 = v109;
    sub_237C071CC();
    v92 = v108;
    *v108 = v85;
    v92[1] = v59;
    v92[2] = v86;
    v92[3] = v86;
    v92[4] = 0xD000000000000013;
    v92[5] = 0x8000000237C17BE0;
    v93 = v117;
    v103(v106, v91, v117);
    v94 = *(v111 + 28);

    sub_237C06CEC();
    OUTLINED_FUNCTION_5_48();
    sub_237B1E3C0(v90, v95);
    v96 = *(v115 + 8);
    v96(v116, v93);
    sub_2379D9054(v118, &qword_27DE9A9A0, &qword_237C0BF60);
    (*(v112 + 8))(v110, v43);
    v96(v91, v93);
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v39, v97);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v111);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6F014();
    swift_endAccess();
  }

  return v7;
}

void sub_237B1ACF4()
{
  OUTLINED_FUNCTION_74();
  v83 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_28(v7, v82[0]);
  v90 = sub_237C071DC();
  v8 = OUTLINED_FUNCTION_0(v90);
  v91 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v89 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  v88 = v82 - v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  v17 = v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  v19 = OUTLINED_FUNCTION_20(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v87 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v25 = (v82 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_45_8();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v2, 1, v30);
  if (v37)
  {
    sub_2379D9054(v2, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_61();
  sub_237B1E418();
  v38 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  v39 = sub_237C05DBC();
  OUTLINED_FUNCTION_4(v39);
  (*(v40 + 24))(v0 + v38, v36);
  swift_endAccess();
  v41 = v30[5];
  v42 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6EE90(v36 + v41, v0 + v42);
  swift_endAccess();
  v85 = v36;
  v86 = v30;
  v43 = v30[7];
  v44 = (v36 + v30[6]);
  v45 = *v44;
  v46 = v44[1];
  v47 = *(v36 + v43);

  sub_237C071CC();
  *v25 = v45;
  v25[1] = v46;
  v25[2] = v47;
  v25[3] = v47;
  v25[4] = 0xD000000000000013;
  v25[5] = 0x8000000237C17BE0;
  v84 = *(v91 + 16);
  v48 = v90;
  v84(v88, v17, v90);
  v49 = type metadata accessor for TreeRegressor();
  v50 = *(v49 + 28);

  sub_237C06CEC();
  v51 = *(v91 + 8);
  v88 = v17;
  v52 = v17;
  v53 = v51;
  v51(v52, v48);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v49);
  v82[0] = v0;
  v57 = v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  v58 = v84;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6F014();
  v59 = v85;
  v60 = v89;
  v58(v89, v85 + v86[8], v48);
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_73_1(v61, v62, v63);
  if (v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v64 = OUTLINED_FUNCTION_33_14();
  v65 = v90;
  (v58)(v64);
  v66 = v57 + *(v49 + 28);
  sub_237C06CDC();
  v53(v60, v65);
  swift_endAccess();
  v67 = v87;
  sub_237A40628();
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_73_1(v68, v69, v70);
  if (!v37)
  {
    v72 = *v67;
    v71 = v67[1];
    v73 = *(v49 + 28);
    v74 = type metadata accessor for TreeRegressorModel();
    v75 = *(v74 + 24);

    v76 = v82[1];
    sub_237C06CFC();
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v59, v77);
    *v76 = v72;
    v76[1] = v71;
    v76[3] = 0;
    v76[4] = 0;
    v76[2] = 0;
    OUTLINED_FUNCTION_1_61();
    sub_237B1E3C0(v67, v78);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v74);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6F014();
    swift_endAccess();
    OUTLINED_FUNCTION_73();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_237B1B254()
{
  OUTLINED_FUNCTION_74();
  v91[0] = v1;
  v2 = v0;
  v100 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_28(v8, v1);
  v9 = sub_237C071DC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v95 = v11;
  v96 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v94 = v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  v93 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  v18 = OUTLINED_FUNCTION_20(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v97 = v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v92 = (v91 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = v91 - v28;
  v30 = type metadata accessor for MLCheckpoint();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v99 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  v41 = v91 - v40;
  v42 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_0();
  v48 = v47 - v46;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v98 = v2;
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v41, 1, v42);
  if (v49)
  {
    sub_2379D9054(v41, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_2_61();
  sub_237B1E418();
  sub_237A9A92C(v100, v29);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_73_1(v50, v51, v52);
  if (v49)
  {
    sub_2379D9054(v29, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_18_4(v53, 0xD00000000000001DLL);
LABEL_13:
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v48, v90);
    goto LABEL_14;
  }

  v54 = v99;
  sub_237B1E418();
  switch(*(v54 + *(v30 + 20)))
  {
    case 2:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_8;
    default:
LABEL_8:
      OUTLINED_FUNCTION_57_0();
      v55 = sub_237C0929C();

      if ((v55 & 1) == 0)
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_18_4(v88, 0xD000000000000028);
        OUTLINED_FUNCTION_15_31();
        sub_237B1E3C0(v54, v89);
        goto LABEL_13;
      }

LABEL_9:
      v56 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
      v57 = v98;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v58 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v58);
      (*(v59 + 24))(v57 + v56, v48);
      swift_endAccess();
      v60 = v42[5];
      v61 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6EE90(v48 + v60, v57 + v61);
      swift_endAccess();
      v62 = (v48 + v42[6]);
      v63 = *v62;
      v64 = v62[1];
      v65 = *(v48 + v42[7]);

      v66 = v93;
      sub_237C071CC();
      v67 = v92;
      *v92 = v63;
      v67[1] = v64;
      v67[2] = v65;
      v67[3] = v65;
      v67[4] = 0xD000000000000013;
      v67[5] = 0x8000000237C17BE0;
      v68 = v95;
      v69 = v96;
      (*(v95 + 16))(v94, v66, v96);
      v70 = type metadata accessor for TreeRegressor();
      v71 = *(v70 + 28);

      sub_237C06CEC();
      (*(v68 + 8))(v66, v69);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v70);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      v75 = v97;
      sub_237A40628();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_73_1(v76, v77, v78);
      if (v49)
      {
LABEL_16:
        __break(1u);
        JUMPOUT(0x237B1B934);
      }

      sub_237B1DE00();
      v79 = v91[0];
      v80 = v99;
      sub_237C0723C();
      OUTLINED_FUNCTION_15_31();
      sub_237B1E3C0(v80, v81);
      OUTLINED_FUNCTION_0_65();
      sub_237B1E3C0(v48, v82);
      OUTLINED_FUNCTION_1_61();
      sub_237B1E3C0(v75, v83);
      if (!v79)
      {
        type metadata accessor for TreeRegressorModel();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237A6F014();
        swift_endAccess();
      }

LABEL_14:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B1B948(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
}

uint64_t sub_237B1B99C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_237C06A4C();
  v2[19] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[20] = v4;
  v6 = *(v5 + 64);
  v2[21] = OUTLINED_FUNCTION_19();
  v7 = sub_237C0602C();
  v2[22] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[23] = v8;
  v10 = *(v9 + 64);
  v2[24] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v2[25] = v11;
  OUTLINED_FUNCTION_1(v11);
  v2[26] = v12;
  v14 = *(v13 + 64);
  v2[27] = OUTLINED_FUNCTION_19();
  v15 = sub_237C05DBC();
  v2[28] = v15;
  OUTLINED_FUNCTION_1(v15);
  v2[29] = v16;
  v18 = *(v17 + 64);
  v2[30] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  v2[31] = OUTLINED_FUNCTION_19();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  v2[32] = OUTLINED_FUNCTION_19();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  v2[33] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_237B1BBBC()
{
  v2 = v0[33];
  v3 = (v0[18] + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  v4 = type metadata accessor for TreeRegressorModel();
  OUTLINED_FUNCTION_25_22();
  __swift_getEnumTagSinglePayload(v5, v6, v7);
  result = OUTLINED_FUNCTION_44_12();
  if (v1 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v80 = v4;
  v9 = v0[32];
  v10 = v0[18];
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  v11 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  __swift_getEnumTagSinglePayload(v9, 1, v11);
  result = OUTLINED_FUNCTION_44_12();
  if (v10 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = v0[17];
  v13 = v0[18] + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters();
  v14 = *(v13 + *(result + 20));
  if (__OFADD__(v12, v14))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = *(v13 + *(result + 28));
  if (!__OFSUB__(v15, v12))
  {
    if (v14 >= v15 - v12)
    {
      v16 = v15 - v12;
    }

    else
    {
      v16 = *(v13 + *(result + 20));
    }

    type metadata accessor for EventCollector();
    swift_allocObject();
    result = sub_237AD988C();
    v81 = v16;
    if (v16 < 0)
    {
      goto LABEL_31;
    }

    v82 = v0[31];
    v17 = v0[29];
    v18 = v0[26];
    v19 = v0[23];
    v20 = v0[18];
    v21 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v79 = v21;
    OUTLINED_FUNCTION_71();
    result = swift_beginAccess();
    v22 = 0;
    v76 = (v19 + 8);
    v75 = (v18 + 8);
    v77 = (v17 + 8);
    v78 = (v17 + 16);
    while (1)
    {
      if (v81 == v22)
      {
        v54 = v0[20];
        v53 = v0[21];
        v55 = v0[19];
        sub_237C06A3C();
        sub_237B1A15C();
        v57 = v56;
        v58 = *(v54 + 8);
        v58(v53, v55);
        if ((v57 & 1) == 0)
        {
          OUTLINED_FUNCTION_43_8();
          sub_237B19FFC(v59, 8);
        }

        v60 = v0[21];
        v61 = v0[19];
        sub_237C069FC();
        sub_237B1A15C();
        v63 = v62;
        v58(v60, v61);
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_43_8();
          sub_237B19FFC(v64, 7);
        }

        v66 = v0[32];
        v65 = v0[33];
        v68 = v0[30];
        v67 = v0[31];
        v69 = v0[27];
        v70 = v0[24];
        v71 = v0[21];

        v72 = v0[1];
        OUTLINED_FUNCTION_23_26();

        __asm { BRAA            X4, X16 }
      }

      if (__OFADD__(v22, 1))
      {
        break;
      }

      v83 = v22;
      v23 = v0[31];
      sub_237A40628();
      v24 = type metadata accessor for TreeRegressor();
      result = __swift_getEnumTagSinglePayload(v23, 1, v24);
      if (result == 1)
      {
        goto LABEL_32;
      }

      v25 = v20;
      (*v78)(v0[30], v20 + v79, v0[28]);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      result = __swift_getEnumTagSinglePayload(v3, 1, v80);
      if (result == 1)
      {
        goto LABEL_33;
      }

      if (v3[2])
      {
      }

      else
      {
        v26 = v0[30];
        v27 = *(v82 + 16);
        v28 = swift_task_alloc();
        *(v28 + 16) = v26;

        v29 = sub_2379E22EC(sub_237A1DC7C, v28, v27);

        v30 = v3[2];
        v31 = v3[3];
        v32 = v3[4];
        v3[2] = v29;
        v3[3] = 0xD000000000000013;
        v3[4] = 0x8000000237C17BE0;
        result = sub_237ADB770(v30);
        if (!v3[2])
        {
          goto LABEL_35;
        }
      }

      v33 = v0[30];
      v34 = v0[27];
      v35 = v3[3];
      v36 = v3[4];
      sub_237A0D2E0();
      v37 = v0[30];
      v38 = v0[24];
      v39 = v0[22];
      v40 = *v0[31];
      v41 = *(v82 + 8);
      sub_237C05DFC();
      sub_237B6301C();
      v43 = v42;
      result = (*v76)(v38, v39);
      if (!v43)
      {
        goto LABEL_34;
      }

      v44 = v0[27];
      v45 = *(v80 + 24);
      v46 = v0[31] + *(v24 + 28);
      sub_237C06D2C();
      v47 = v0[30];
      v48 = v0[31];
      v50 = v0[27];
      v49 = v0[28];
      v51 = v0[25];

      (*v75)(v50, v51);
      swift_endAccess();

      (*v77)(v47, v49);
      OUTLINED_FUNCTION_1_61();
      result = sub_237B1E3C0(v48, v52);
      v22 = v83 + 1;
      v20 = v25;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_237B1C294()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v1[27] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[28] = v6;
  v8 = *(v7 + 64);
  v1[29] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B818, &qword_237C0DFE0);
  v1[30] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[31] = v10;
  v12 = *(v11 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v13 = sub_237C05DBC();
  v1[36] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[37] = v14;
  v16 = *(v15 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v17);
  v19 = *(v18 + 64);
  v1[42] = OUTLINED_FUNCTION_19();
  v20 = type metadata accessor for TreeRegressorModel();
  v1[43] = v20;
  OUTLINED_FUNCTION_20(v20);
  v22 = *(v21 + 64);
  v1[44] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

void sub_237B1C4C4()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[25];
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v4, v5, v6) == 1)
  {
    sub_2379D9054(v0[42], &qword_27DE9AE10, &qword_237C0C090);
  }

  else
  {
    v7 = v0[44];
    v8 = v0[42];
    v9 = v0[25];
    OUTLINED_FUNCTION_14_27();
    sub_237B1E418();
    v10 = v9 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
    swift_beginAccess();
    v11 = type metadata accessor for PersistentParametersForTreeBasedMethods();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11))
    {
      sub_237B1E3C0(v0[44], type metadata accessor for TreeRegressorModel);
      swift_endAccess();
    }

    else
    {
      v26 = v0[40];
      v25 = v0[41];
      v27 = v0[36];
      v28 = v0[37];
      v29 = v0[25];
      v30 = (v10 + *(v11 + 24));
      v31 = v30[1];
      v86 = *v30;
      swift_endAccess();
      v32 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v28 + 16))(v26, v29 + v32, v27);

      OUTLINED_FUNCTION_11();
      sub_237A47CE0(v33);
      v34 = v0[41];
      v73 = v0[35];
      v75 = v0[34];
      v35 = v0[29];
      v37 = v0[27];
      v36 = v0[28];
      v38 = v0[26];
      v79 = v38;
      v81 = v0[36];
      v84 = *(v0[37] + 8);
      (v84)(v0[40]);
      sub_237C05DEC();
      v0[17] = 0;
      sub_2379D9224(&qword_27DE9B820, &qword_27DE9AB88, &qword_237C0B8F0);
      sub_237C05EAC();
      v39 = *(v36 + 8);
      v39(v35, v37);
      swift_beginAccess();
      sub_237C05DEC();
      swift_endAccess();
      v0[18] = 0;
      sub_237C05EAC();
      v72 = v39;
      v39(v35, v37);
      sub_237A48144();
      sub_2379D9224(&qword_27DE9B838, &qword_27DE9B818, &qword_237C0DFE0);
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_24_24();
      sub_237C06EDC();
      v40 = v0[19];
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_24_24();
      sub_237C06EEC();
      v41 = OUTLINED_FUNCTION_38_11(v0[20]);
      sub_237B0B0B0(v41, v42, v43);
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v81);
      v45 = v0[44];
      if (EnumTagSinglePayload == 1)
      {
        v46 = v0[41];
        v48 = v0[35];
        v47 = v0[36];
        v49 = v0[34];
        v51 = v0[30];
        v50 = v0[31];
        v52 = v0[26];
        v87 = v0[25];

        v53 = *(v50 + 8);
        v53(v49, v51);
        v54 = OUTLINED_FUNCTION_33_14();
        (v53)(v54);
        v84(v46, v47);
        OUTLINED_FUNCTION_3_58();
        sub_237B1E3C0(v45, v55);
        sub_2379D9054(v52, &qword_27DE9A9A0, &qword_237C0BF60);
        v56 = v87 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
        v57 = *(v87 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
        v58 = *(v87 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
        *v56 = 0;
        *(v56 + 8) = 0;
        v59 = *(v56 + 16);
        *(v56 + 16) = -1;
      }

      else
      {
        v60 = v0[38];
        (*(v0[37] + 32))(v0[39], v0[26], v0[36]);
        OUTLINED_FUNCTION_11();
        sub_237A47CE0(v61);
        v82 = v0[44];
        v78 = v0[41];
        v88 = v0[39];
        v77 = v0[35];
        v62 = v0[33];
        v74 = v0[36];
        v76 = v0[34];
        v69 = v0[32];
        v70 = v0[38];
        v71 = v0[31];
        v63 = v0[29];
        v64 = v0[30];
        v65 = v0[27];
        v80 = v0[25];
        sub_237C05DEC();
        v0[21] = 0;
        sub_237C05EAC();
        v72(v63, v65);
        sub_237C05DEC();

        v0[22] = 0;
        sub_237C05EAC();
        v72(v63, v65);
        sub_237C06EDC();
        v66 = v0[23];
        OUTLINED_FUNCTION_34_1();
        sub_237C06EEC();
        v67 = *(v71 + 8);
        v67(v69, v64);
        v67(v62, v64);
        v84(v70, v74);
        v84(v88, v74);
        v67(v76, v64);
        v67(v77, v64);
        v84(v78, v74);
        OUTLINED_FUNCTION_3_58();
        sub_237B1E3C0(v82, v68);
        v57 = OUTLINED_FUNCTION_38_11(v0[24]);
      }

      sub_237B0B0B0(v57, v58, v59);
    }
  }

  v12 = v0[44];
  v14 = v0[41];
  v13 = v0[42];
  v16 = v0[39];
  v15 = v0[40];
  v17 = v0[38];
  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[32];
  v21 = v0[33];
  v83 = v0[29];
  v85 = v0[26];

  v22 = v0[1];
  OUTLINED_FUNCTION_23_26();

  __asm { BRAA            X3, X16 }
}

void sub_237B1CDD0()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v31[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v15 = type metadata accessor for TreeRegressorModel();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = *v1;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v14, 1, v15);
  if (v23)
  {
    sub_2379D9054(v14, &qword_27DE9AE10, &qword_237C0C090);
  }

  else
  {
    OUTLINED_FUNCTION_14_27();
    sub_237B1E418();
    switch(v22)
    {
      case 2:

        goto LABEL_8;
      case 4:
        OUTLINED_FUNCTION_60_0();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_57_0();
    v24 = sub_237C0929C();

    if (v24)
    {
LABEL_8:
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      type metadata accessor for TreeRegressor();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_73_1(v25, v26, v27);
      if (v23)
      {
        __break(1u);
        JUMPOUT(0x237B1D0B4);
      }

      sub_237B1DE00();
      sub_237C0724C();
      OUTLINED_FUNCTION_3_58();
      sub_237B1E3C0(v21, v28);
      OUTLINED_FUNCTION_1_61();
      sub_237B1E3C0(v8, v29);
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_237B1E3C0(v21, v30);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B1D0C8()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_45_8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v0, 1, v7);
  if (v14)
  {
    sub_2379D9054(v0, &qword_27DE9AE18, &qword_237C0DEE0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v15 = 0xD000000000000031;
    *(v15 + 8) = 0x8000000237C19910;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    sub_237B1E418();
    sub_2379FE55C(v2);
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v13, v16);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B1D258()
{
  OUTLINED_FUNCTION_74();
  v39 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_237C05ADC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v38 - v27;
  (*(v14 + 16))(v19, v3, v11);
  sub_2379FD540(v19, v28);
  if (!v1)
  {
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_237A40628();
    OUTLINED_FUNCTION_25_22();
    OUTLINED_FUNCTION_73_1(v29, v30, v31);
    if (v32)
    {
      sub_2379D9054(v10, &qword_27DE9AE18, &qword_237C0DEE0);
      OUTLINED_FUNCTION_2_61();
      sub_237B1E418();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v20);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_2_61();
      sub_237B1E418();
      v36 = OUTLINED_FUNCTION_33_14();
      sub_237B1D50C(v36, v37);
      sub_237B1E3C0(v26, type metadata accessor for PersistentParametersForTreeBasedMethods);
      sub_237B1E3C0(v28, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B1D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (v10 = *v8, v11 = v8[1], (sub_237C0929C() & 1) != 0))
  {
    v12 = *(a1 + v4[7]);

    v14 = sub_237B42F98(v13);
    v15 = *(a2 + v4[7]);

    v17 = sub_237B42F98(v16);
    v18 = sub_237A6E3A8(v14, v17);

    if (v18)
    {
      result = sub_237B31B80(a1 + v4[8], &v30);
      v20 = v31;
      if (!v31)
      {
        return result;
      }

      v22 = v34;
      v21 = v35;
      v7 = v32;
      v6 = v33;
      v23 = v30;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
    }

    else
    {
      v20 = 0x8000000237C198F0;

      v25 = OUTLINED_FUNCTION_37_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
      sub_2379D9224(&qword_27DE9BC90, &qword_27DE9AE60, &qword_237C0D000);
      v7 = OUTLINED_FUNCTION_28_14();
      v6 = v27;

      OUTLINED_FUNCTION_28_14();

      v22 = sub_237C0883C();
      v21 = v28;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      v23 = 0xD000000000000011;
    }
  }

  else
  {

    v22 = sub_237C0883C();
    v21 = v29;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    v20 = 0xED00006E6D756C6FLL;
    v23 = 0x6320746567726154;
  }

  *v24 = v23;
  *(v24 + 8) = v20;
  *(v24 + 16) = v7;
  *(v24 + 24) = v6;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237B1D7B8()
{
  OUTLINED_FUNCTION_5_48();
  sub_237B1E3C0(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(v0 + v3);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &qword_27DE9D1F8, &unk_237C132A0);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &qword_27DE9AE10, &qword_237C0C090);
  v6 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  sub_237B0B0B0(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  sub_237B0B0B0(v9, v10, v11);
  return v0;
}

uint64_t sub_237B1D8C4()
{
  sub_237B1D7B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TreeRegressorTrainingSessionDelegate()
{
  result = qword_27DE9D1D8;
  if (!qword_27DE9D1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B1D970()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_237B1DBA4(319, &qword_27DE9BC50, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      v4 = sub_237C05DBC();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_237B1DBA4(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_237B1DBA4(319, &qword_27DE9D1E8, type metadata accessor for TreeRegressor);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_237B1DBA4(319, &qword_27DE9D1F0, type metadata accessor for TreeRegressorModel);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_237B1DBA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237B1DC68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237AFBDB8;

  return sub_237B1B99C(a1);
}

uint64_t sub_237B1DD00()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237AFBF68;

  return sub_237B1C294();
}

uint64_t sub_237B1DD90()
{
  v1 = *v0;
  sub_237B1CDD0();
  return v2 & 1;
}

unint64_t sub_237B1DE00()
{
  result = qword_27DE9B000;
  if (!qword_27DE9B000)
  {
    type metadata accessor for TreeRegressor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B000);
  }

  return result;
}

double sub_237B1DE58@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_237ACB31C();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D210, &unk_237C132F0);
    sub_237C090AC();
    v10 = *(v13 + 48);
    v11 = sub_237C0909C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_237A85E3C((*(v13 + 56) + 32 * v7), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    sub_237C090CC();
    *v2 = v13;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_237B1DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_237ACAC78(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D220, &qword_237C13308);
    sub_237C090AC();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_237C0806C();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_237C090CC();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_237C0806C();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_237B1E0C4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_237C074BC() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

unint64_t sub_237B1E198(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v3 = type metadata accessor for MLCheckpoint();
    OUTLINED_FUNCTION_1(v3);
    v5 = v4;
    v7 = v6;
    v8 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v9 = *(v7 + 72);
    return sub_237B1E470();
  }

  __break(1u);
  return result;
}

unint64_t sub_237B1E258@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_237C074BC();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237B1E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_237B1A2D4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_237B1E3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237B1E418()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t sub_237B1E470()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_237C0864C();
}

uint64_t OUTLINED_FUNCTION_38_11@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  *v1 = v2;
  v1[1] = a1;
  v5 = *(v1 + 16);
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_12()
{

  return sub_2379D9054(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return type metadata accessor for PersistentParametersForTreeBasedMethods();
}

double MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 16))
  {
    return 0.975;
  }

  return result;
}

void sub_237B1E6C0(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a1 + 32);
  *a2 = MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.getter();
}

void *(*MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v2 = 0.975;
  }

  *a1 = v2;
  return sub_237B1E75C;
}

void *sub_237B1E75C(void *result)
{
  v1 = result[1];
  *(v1 + 8) = *result;
  *(v1 + 16) = 0;
  return result;
}

void MLSoundClassifier.FeatureExtractionParameters.featureExtractor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractor.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t *MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 8);
  *a2 = a3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:featureExtractionTimeWindowSize:)@<X0>(uint64_t result@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = *&a2;
  v9 = *result;
  v10 = *(result + 8);
  if ((a3 & 1) == 0)
  {
    if (a2 < 0.5)
    {
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_3_18();
      OUTLINED_FUNCTION_3_59();
      OUTLINED_FUNCTION_4_16();
      OUTLINED_FUNCTION_3_59();
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_237C08C4C();
      sub_237BABE74(v11, v12);
      v6 = 0x3FE0000000000000;
LABEL_6:

      goto LABEL_7;
    }

    if (a2 > 15.0)
    {
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_3_18();
      OUTLINED_FUNCTION_4_53();
      OUTLINED_FUNCTION_4_16();
      OUTLINED_FUNCTION_4_53();
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_237C08C4C();
      sub_237BABE74(v11, v12);
      v6 = 0x402E000000000000;
      goto LABEL_6;
    }
  }

LABEL_7:
  *a4 = a5;
  *(a4 + 8) = v6;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237B1E988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237B1E9C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_59()
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return sub_237C08A8C();
}

uint64_t sub_237B1EA60(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_237B1EBA0;

  return v10(v6);
}

uint64_t sub_237B1EBA0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237B1ECA0()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  swift_storeEnumTagMultiPayload();
  sub_237B2387C(v2, v3);
  v4 = v0[4];

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_237B1ED18()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_8();

  return v3();
}

id sub_237B1ED9C(uint64_t a1, uint64_t *a2)
{
  v10 = MEMORY[0x277D84F90];
  sub_237A254D8(a1);
  sub_237C08FCC();
  result = sub_237A254D8(a1);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      return v10;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383DCAF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v7 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = *a2;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_237C08F8C();
    v9 = *(v10 + 16);
    sub_237C08FEC();
    sub_237C08FFC();
    result = sub_237C08F9C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_237B1EED0(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() modelForMLModel:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_237C0593C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_237B1EFA4()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v0[3] = v1;
  v0[4] = v3;
  v0[2] = v4;
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_237B1F068;

  return sub_237ADFC80(v2);
}

uint64_t sub_237B1F068()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237B1F174()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  *v4 = v1;
  v5 = *(type metadata accessor for MLStyleTransfer() + 20);
  OUTLINED_FUNCTION_12_34();
  sub_237B234A0(v3, v4 + v6);
  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237B1F200()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  v2 = v0[4];

  OUTLINED_FUNCTION_0_66();
  sub_237B23784(v2, v3);
  OUTLINED_FUNCTION_8();
  v5 = v0[6];

  return v4();
}

uint64_t MLStyleTransfer.init(trainingData:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a1;
  v117 = a3;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v5 = v4 - 8;
  v114 = *(v4 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x28223BE20](v4);
  v115 = v7;
  v116 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLStyleTransfer.DataSource();
  v9 = OUTLINED_FUNCTION_20(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v119 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v122 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v106 - v24;
  v26 = sub_237C05ADC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v125 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v113 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  v118 = v32;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  v120 = v34;
  OUTLINED_FUNCTION_22_22();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v106 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v106 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_58();
  v126 = v42;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  v121 = v44;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v45);
  v47 = &v106 - v46;
  v48 = 4 * (*(a2 + *(v5 + 40)) / 4);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v26);
  OUTLINED_FUNCTION_64();
  v123 = v26;
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v26);
  v55 = v129;
  v56 = v124;
  MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)();
  if (v56)
  {
    OUTLINED_FUNCTION_0_66();
    sub_237B23784(a2, v57);
    OUTLINED_FUNCTION_5_49();
    sub_237B23784(v55, v58);
    OUTLINED_FUNCTION_34_14(v22);
    return OUTLINED_FUNCTION_34_14(v25);
  }

  else
  {
    v109 = v22;
    v110 = v25;
    v107 = v47;
    v124 = 0;
    v60 = v125;
    v61 = v125 + 32;
    v62 = *(v125 + 32);
    v111 = v62;
    v112 = a2;
    v63 = v121;
    v64 = v123;
    v62(v121, v41, v123);
    v62(v126, v38, v64);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v108 = *(v65 + 48);
    v66 = v122;
    v67 = v122 + *(v65 + 64);
    v68 = *(v60 + 16);
    v68(v122, v63, v64);
    v69 = v108 + v66;
    v108 = v68;
    v68(v69, v126, v64);
    *v67 = 0;
    *(v67 + 8) = 0;
    OUTLINED_FUNCTION_11_36();
    v70 = v119;
    sub_237B238EC(v66, v119);
    v71 = *(v65 + 48);
    v72 = v120;
    v73 = v111;
    v111(v120, v70, v64);
    v74 = v70 + v71;
    v75 = v118;
    v119 = v61;
    v73(v118, v74, v64);
    v76 = v124;
    sub_237B22410(&v127);
    if (v76)
    {
      OUTLINED_FUNCTION_0_66();
      sub_237B23784(v112, v77);
      sub_237B23784(v129, type metadata accessor for MLStyleTransfer.DataSource);
      v78 = *(v125 + 8);
      v79 = v123;
      v78(v75, v123);
      v78(v72, v79);
      sub_237B23784(v122, type metadata accessor for MLStyleTransfer.DataSource);
      v78(v126, v79);
      v78(v121, v79);
      OUTLINED_FUNCTION_34_14(v109);
      return OUTLINED_FUNCTION_34_14(v110);
    }

    else
    {
      v124 = 0;
      v81 = v125 + 8;
      v80 = *(v125 + 8);
      v82 = v75;
      v83 = v123;
      v80(v82, v123);
      OUTLINED_FUNCTION_5_49();
      sub_237B23784(v122, v84);
      v80(v126, v83);
      v126 = v80;
      v80(v121, v83);
      sub_237A7B808(v109, &qword_27DE9AA18, &qword_237C0B710);
      sub_237A7B808(v110, &qword_27DE9AA18, &qword_237C0B710);
      v121 = v127;
      LODWORD(v122) = v128;
      v85 = v111;
      v111(v107, v72, v83);
      v86 = v113;
      v87 = OUTLINED_FUNCTION_37_0();
      v108(v87);
      OUTLINED_FUNCTION_2_62();
      v88 = v116;
      sub_237B238EC(v112, v116);
      v125 = v81;
      v89 = (*(v81 + 72) + 16) & ~*(v81 + 72);
      v90 = (v30 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = (*(v114 + 80) + v90 + 9) & ~*(v114 + 80);
      v92 = swift_allocObject();
      v93 = v86;
      v94 = v121;
      v85(v92 + v89, v93, v83);
      v95 = v92 + v90;
      *v95 = v94;
      *(v95 + 8) = v122;
      OUTLINED_FUNCTION_12_34();
      sub_237B234A0(v88, v92 + v91);
      v96 = OUTLINED_FUNCTION_37_0();
      sub_2379DBCF4(v96, v97);
      v98 = OUTLINED_FUNCTION_37_0();
      sub_2379DBCF4(v98, v99);
      sub_2379DDB48();

      v100 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v100, v101);
      v102 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v102, v103);
      OUTLINED_FUNCTION_0_66();
      sub_237B23784(v112, v104);
      OUTLINED_FUNCTION_5_49();
      sub_237B23784(v129, v105);
      return v126(v107, v123);
    }
  }
}

uint64_t sub_237B1F9D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 25) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters() - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_237C05ADC();
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B1FAC8, 0, 0);
}

uint64_t sub_237B1FAC8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 25);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  *(v0 + 16) = v3;
  v4 &= 1u;
  *(v0 + 24) = v4;
  OUTLINED_FUNCTION_2_62();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_237B238EC(v5, v6);
  sub_2379DBCF4(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 96) = v7;
  *v7 = v8;
  v7[1] = sub_237B1FBC0;
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 32);

  return sub_237B1FD54(v11, v9, (v0 + 16), v10);
}

uint64_t sub_237B1FBC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[11];
    v13 = v3[8];

    OUTLINED_FUNCTION_8();

    return v14();
  }
}

uint64_t sub_237B1FCEC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[11];
  v2 = v0[8];

  OUTLINED_FUNCTION_8();
  v4 = v0[13];

  return v3();
}

uint64_t sub_237B1FD54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *a3;
  *(v4 + 32) = a4;
  *(v4 + 40) = v5;
  *(v4 + 84) = *(a3 + 8);
  return MEMORY[0x2822009F8](sub_237B1FD84, 0, 0);
}

uint64_t sub_237B1FD84()
{
  OUTLINED_FUNCTION_27();
  v11 = v0;
  v1 = *(v0 + 84);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 80) = *(type metadata accessor for MLStyleTransfer() + 20);
  OUTLINED_FUNCTION_2_62();
  sub_237B238EC(v2, v5 + v6);
  v9 = v3;
  v10 = v1;
  *(v0 + 48) = sub_237B202E8(v2, v4, &v9);
  OUTLINED_FUNCTION_87();
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_237B1FF44;

  return sub_237AE0110(14, v2, 0);
}

uint64_t sub_237B1FF44()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_2379DBC9C(*(v5 + 40), *(v5 + 84));
  }

  else
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237B2005C()
{
  OUTLINED_FUNCTION_27();
  **(v0 + 16) = *(v0 + 72);
  v1 = sub_237A37A64();
  v2 = *(v0 + 84);
  v3 = *(v0 + 40);
  if (v1)
  {
    sub_2379DBC9C(*(v0 + 40), *(v0 + 84));
  }

  else
  {
    v4 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = *(v0 + 84);
    MLDataTable.size.getter();
    sub_2379DBC9C(v3, v2);
    sub_237A38140(14);
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters();
    v6 = *(v4 + v5[7]);
    sub_237A38140(14);
    v7 = *(v4 + v5[8]);
    sub_237A38140(14);
    v8 = *(v4 + v5[9]);
    sub_237A38140(14);
  }

  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);

  OUTLINED_FUNCTION_0_66();
  sub_237B23784(v11, v12);
  v13 = sub_237C05ADC();
  OUTLINED_FUNCTION_12_0(v13);
  (*(v14 + 8))(v10);
  OUTLINED_FUNCTION_8();

  return v15();
}

uint64_t sub_237B20220()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  sub_237B23784(v3, type metadata accessor for MLStyleTransfer.ModelParameters);
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_12_0(v4);
  (*(v5 + 8))(v2);
  v6 = *(v0 + 64);
  sub_237B23784(*(v0 + 16) + *(v0 + 80), type metadata accessor for MLStyleTransfer.ModelParameters);
  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237B202E8(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLParameters();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    MLDataTable.subscript.getter();
    if (v26)
    {
      sub_2379DBC9C(v25, 1);
    }

    else
    {
      v10 = v25[2];

      sub_2379DBC9C(v25, 0);
      sub_237A31004(72);
      if (v4)
      {
LABEL_8:

LABEL_20:

        return v9;
      }
    }

    v11 = sub_237C05A9C();
    v13 = v12;
    type metadata accessor for _UntypedColumn();
    swift_allocObject();
    v14 = *(sub_237B29888(v11, v13, 1) + 16);

    sub_237A31004(71);
    if (v4)
    {

      goto LABEL_8;
    }

    v15 = type metadata accessor for MLStyleTransfer.ModelParameters();
    v16 = *&a1[v15[9]];
    sub_237B25E7C(v16);
    v17 = *&a1[v15[8]];
    sub_237B25F68(v17);
    result = MEMORY[0x2383DDA80](0);
    if (result)
    {
      OUTLINED_FUNCTION_87();
      type metadata accessor for CMLDictionary();
      inited = swift_initStackObject();
      *(inited + 16) = v17;
      if (*a1)
      {
        v19 = 0x6574694C6E6E63;
      }

      else
      {
        v19 = 7237219;
      }

      if (*a1)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }

      sub_237B18AFC(v19, v20, 2);

      sub_237B18AFC(*&a1[v15[7]], 0, 0);
      sub_237B18AFC(*&a1[v15[6]], 0, 1);
      sub_237B18AFC(4 * (v17 / 4), 0, 5);
      sub_237B18AFC(v16, 0, 6);
      if (a1[v15[10]])
      {
        v21 = 7696483;
        v22 = 0xE300000000000000;
      }

      else
      {
        v21 = 1869903201;
        v22 = 0xE400000000000000;
      }

      sub_237B18AFC(v21, v22, 3);
      type metadata accessor for CMLFeatureValue();

      sub_237A2E858(v23);
      sub_237A2F598(47);

      swift_setDeallocating();
      v24 = *(inited + 16);
      tc_v1_release();
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MLStyleTransfer.init(checkpoint:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for MLCheckpoint();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_237B238EC(a1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_237B234A0(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_2379DDB90();
  v14 = v13;
  sub_237B23784(a1, type metadata accessor for MLCheckpoint);

  if (!v2)
  {
    *a2 = v14;
    v16 = a2 + *(type metadata accessor for MLStyleTransfer() + 20);
    v17 = type metadata accessor for MLStyleTransfer.ModelParameters();
    v18 = v17[5];
    sub_237C05ADC();
    OUTLINED_FUNCTION_64();
    result = __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    *&v16[v17[6]] = 1;
    v16[v17[10]] = 0;
    *v16 = 0;
    *&v16[v17[7]] = 500;
    *&v16[v17[8]] = 256;
    *&v16[v17[9]] = 5;
  }

  return result;
}

uint64_t sub_237B20824(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_237C05ADC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B208E4, 0, 0);
}

uint64_t sub_237B208E4()
{
  OUTLINED_FUNCTION_27();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = sub_237C0598C();
  v6 = sub_237B29600(v4, v5);
  (*(v2 + 8))(v1, v3);

  type metadata accessor for CMLModel();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_237B20A5C;

  return sub_237ADFC80(v7);
}

uint64_t sub_237B20A5C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 48);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 64) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_237B20B94()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 64);

  OUTLINED_FUNCTION_8();

  return v2();
}

void static MLStyleTransfer.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2)
{
  static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2);
  if (!v2)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D230, &qword_237C13370);
    v6 = OUTLINED_FUNCTION_91(v5);
    sub_237BEC724(v6, v4);
  }
}

void static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MLTrainingSessionParameters();
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35[-1] - v13;
  v15 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for MLStyleTransfer.DataSource();
  v23 = OUTLINED_FUNCTION_20(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_11_36();
  sub_237B238EC(a1, v28);
  OUTLINED_FUNCTION_2_62();
  sub_237B238EC(a2, v21);
  v29 = OUTLINED_FUNCTION_1_62();
  sub_237B238EC(v29, v14);
  v30 = _s23TrainingSessionDelegateCMa();
  OUTLINED_FUNCTION_91(v30);
  v31 = sub_237B29B80(v28, v21, v14);
  if (!v2)
  {
    v35[3] = v30;
    v35[4] = &off_284AC4E08;
    v35[0] = v31;
    v32 = OUTLINED_FUNCTION_1_62();
    sub_237B238EC(v32, v11);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D238, &qword_237C13378);
    OUTLINED_FUNCTION_91(v33);
    sub_2379E42B8(v35, v11, 14);
  }
}

uint64_t static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D230, &qword_237C13370);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC724(v3, a1);
}

void static MLStyleTransfer.restoreTrainingSession(sessionParameters:)()
{
  v1 = type metadata accessor for MLTrainingSessionParameters();
  v2 = OUTLINED_FUNCTION_20(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  v11 = OUTLINED_FUNCTION_1_62();
  sub_237B238EC(v11, v10);
  v12 = _s23TrainingSessionDelegateCMa();
  OUTLINED_FUNCTION_91(v12);
  v13 = sub_237B299C8(v10);
  if (!v0)
  {
    v17[3] = v12;
    v17[4] = &off_284AC4E08;
    v17[0] = v13;
    v14 = OUTLINED_FUNCTION_1_62();
    sub_237B238EC(v14, v7);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D238, &qword_237C13378);
    OUTLINED_FUNCTION_91(v15);
    sub_2379E42B8(v17, v7, 14);
  }
}

uint64_t sub_237B20F94(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t *), void (*a5)(uint64_t *))
{
  v52 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v49 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v51 = &v49 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  v21 = OUTLINED_FUNCTION_20(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v26 = _s20PersistentParametersVMa_4();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v33 = a1;
  }

  else
  {
    v49 = v32;
    v50 = v31;
    v34 = a5;
    sub_2379E8624(v52 + qword_27DEACD88, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    _s23TrainingSessionDelegateCMa();
    if (swift_dynamicCast())
    {
      v35 = v53;
      v36 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
      swift_beginAccess();
      sub_237B23430(v35 + v36, v25);
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
      {
        v40 = v50;
        sub_237B234A0(v25, v50);
        sub_237C08A3C();
        v41 = v51;
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
        sub_237B238EC(v40, &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
        v46 = (*(v49 + 80) + 40) & ~*(v49 + 80);
        v47 = swift_allocObject();
        v47[2] = 0;
        v47[3] = 0;
        v47[4] = v35;
        sub_237B234A0(&v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46);
        v48 = (v47 + ((v29 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v48 = a4;
        v48[1] = v34;
        swift_retain_n();

        sub_237BBAEC8(0, 0, v41, &unk_237C13420, v47);

        return sub_237B23784(v50, _s20PersistentParametersVMa_4);
      }

      sub_237A7B808(v25, &qword_27DE9D258, &unk_237C137D0);
    }

    sub_2379E8AF0();
    v37 = swift_allocError();
    *v38 = 0xD000000000000021;
    *(v38 + 8) = 0x8000000237C1C3F0;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0u;
    *(v38 + 48) = 0;
    *v14 = v37;
    swift_storeEnumTagMultiPayload();
  }

  a4(v14);
  return sub_237A7B808(v14, &qword_27DE9D250, &qword_237C13410);
}

uint64_t sub_237B213F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B21494, 0, 0);
}

uint64_t sub_237B21494()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 64) = v2;
  *v2 = v3;
  v2[1] = sub_237B21564;
  v4 = *(v0 + 48);

  return sub_237B1EA60(v4, &unk_237C13430);
}

uint64_t sub_237B21564()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237B21668()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  sub_237A7B808(v1, &qword_27DE9D250, &qword_237C13410);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237B216EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B21784, 0, 0);
}

uint64_t sub_237B21784()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v0[3] + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
  v5 = _s20PersistentParametersVMa_4();
  v6 = *(v3 + v5[5]);
  sub_237B238EC(v3 + v5[6], &v1[v2[5]]);
  v7 = *(v3 + v5[7]);
  v8 = *(v3 + v5[8]);
  *&v1[v2[6]] = 1;
  v9 = v2[10];
  *v1 = v6;
  *&v1[v2[7]] = 500;
  *&v1[v2[8]] = v7;
  *&v1[v2[9]] = v8;
  v1[v9] = *(v3 + v5[9]);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[7] = v10;
  *v10 = v11;
  v10[1] = sub_237B218D0;
  v12 = v0[6];
  v13 = v0[2];

  return sub_237B1EFA4();
}

uint64_t sub_237B218D0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_8();

    return v13();
  }
}

uint64_t sub_237B219EC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_8();
  v3 = *(v0 + 64);

  return v2();
}

CGImageRef_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLStyleTransfer.stylize(image:)(CGImageRef image)
{
  v8[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for VNImageOption(0);
  sub_237B22E48();
  sub_237C085AC();
  objc_allocWithZone(MEMORY[0x277CE2D50]);
  v3 = sub_237B22EA0(image);
  sub_237B21B4C(v3);
  if (v1)
  {
  }

  else
  {
    v6 = v4;
    v8[0] = 0;
    VTCreateCGImageFromCVPixelBuffer(v4, 0, v8);

    result.value = v8[0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237B21B4C(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  sub_2379E8EE0(0, &qword_27DE9C9A0, 0x277CE2C38);
  v4 = sub_237B1EED0(*(*v1 + 24));
  if (v2)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CE2C40]) initWithModel_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237C10D30;
  *(v7 + 32) = v6;
  sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
  v8 = v6;
  v9 = sub_237C0892C();

  v21[0] = 0;
  v10 = [a1 performRequests:v9 error:v21];

  if (!v10)
  {
    v17 = v21[0];

    sub_237C0593C();
    v18 = v8;
    v8 = v5;
LABEL_10:
    swift_willThrow();

LABEL_11:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = v21[0];
  v12 = sub_237B233B8(v8);
  if (!v12 || (v13 = sub_237B1ED9C(v12, 0x277CE2D98), , !v13))
  {
    sub_2379E8AF0();
    swift_allocError();
    *v19 = 0xD000000000000039;
    *(v19 + 8) = 0x8000000237C1C3B0;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    v18 = v5;
    goto LABEL_10;
  }

  sub_237A254DC(0, (v13 & 0xC000000000000001) == 0, v13);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x2383DCAF0](0, v13);
  }

  else
  {
    v14 = *(v13 + 4);
  }

  v15 = v14;

  [v15 pixelBuffer];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_237B21DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v6 = *a1;
    v7 = a1[8];
    if (v7)
    {
      v8 = *(type metadata accessor for MLStyleTransfer() + 20);
      OUTLINED_FUNCTION_20_24();
      v21 = v7;
      sub_237AD4878(v20, v19);
      v9 = sub_237B25D1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19[0] = v7;
      sub_237B230E0(v9, sub_2379FC6A8, 0, isUniquelyReferenced_nonNull_native, v19);
      result = v19[0];
    }

    else
    {
      v17 = *(type metadata accessor for MLStyleTransfer() + 20);
      OUTLINED_FUNCTION_20_24();
      v21 = 0;
      sub_237AD4878(v20, v19);
      result = sub_237B25D1C();
    }

    *a2 = v6;
    *(a2 + 8) = v4;
    v18 = *(a1 + 2);
    *(a2 + 16) = *(a1 + 1);
    *(a2 + 32) = v18;
    *(a2 + 48) = *(a1 + 3);
  }

  else
  {
    v12 = NSFullUserName();
    v13 = sub_237C086EC();
    v15 = v14;

    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = 0xD000000000000033;
    *(a2 + 24) = 0x8000000237C17C90;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 49;
    *(a2 + 56) = 0xE100000000000000;
    v16 = v2 + *(type metadata accessor for MLStyleTransfer() + 20);
    result = sub_237B25D1C();
  }

  *(a2 + 64) = result;
  return result;
}

uint64_t MLStyleTransfer.write(to:metadata:)(char *a1, uint64_t *a2)
{
  v4 = *v2;
  sub_237B21DF0(a2, v15);
  v5 = sub_237AE078C(a1, v15);
  OUTLINED_FUNCTION_32_11(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v15[0]);
  return sub_237A7B808(v14, &qword_27DE9ADE0, &unk_237C0BF90);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLStyleTransfer.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  object = toFile._object;
  countAndFlagsBits = toFile._countAndFlagsBits;
  v5 = *v2;
  sub_237B21DF0(&metadata->value.author._countAndFlagsBits, v15);
  v6 = sub_237AE0658(countAndFlagsBits, object, v15);
  OUTLINED_FUNCTION_32_11(v6, v7, v8, v9, v10, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v15[0]);
  sub_237A7B808(v14, &qword_27DE9ADE0, &unk_237C0BF90);
}

uint64_t *static MLStyleTransfer.downloadAssets()()
{
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();
  result = sub_237AE0018(14);
  if (!v0)
  {
    v2 = result[2];

    sub_237B220DC();
  }

  return result;
}

uint64_t sub_237B220DC()
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v2 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v2;
    sub_237A31864(20);
    if (!v0)
    {
    }

    swift_setDeallocating();
    v4 = *(inited + 16);
    return tc_v1_release();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237B22168(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v36);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v33 = v10 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v29[0] = a2;
    v34 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v12 = v34;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v31 = *(v13 + 56);
    v32 = v14;
    v30 = (v13 - 8);
    do
    {
      v16 = v13;
      v32(v33, v15, v36);
      v17 = sub_237C05A9C();
      v19 = v18;
      (*v30)(v33, v36);
      v34 = v12;
      v20 = *(v12 + 16);
      if (v20 >= *(v12 + 24) >> 1)
      {
        sub_237AC8A74();
        v12 = v34;
      }

      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      v15 += v31;
      --v11;
      v13 = v16;
    }

    while (v11);
    a2 = v29[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 0x55746E65746E6F63;
  *(inited + 40) = 0xEB00000000734C52;
  v34 = v12;
  MEMORY[0x28223BE20](inited);
  v29[-2] = &v34;
  v23 = sub_237BBDC94(sub_2379F5678);
  v25 = v24;

  *(inited + 48) = v23;
  *(inited + 56) = v25 & 1;
  v26 = sub_237C085AC();
  v27 = v29[1];
  sub_237B6CB9C(v26, &v34);
  if (!v27)
  {
    v28 = v35;
    *a2 = v34;
    *(a2 + 8) = v28;
  }
}

uint64_t sub_237B22410@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237C0825C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_237C0821C();
  sub_237A5D3A4();
  if (v1)
  {
    return (*(v6 + 8))(v11, v3);
  }

  v14 = v12;
  (*(v6 + 8))(v11, v3);
  if (*(v14 + 16))
  {
    sub_237B22168(v14, a1);
  }

  else
  {

    sub_2379E8AF0();
    swift_allocError();
    *v15 = 0xD00000000000003CLL;
    *(v15 + 8) = 0x8000000237C1C440;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_237B2258C()
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v1 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v1;
    type metadata accessor for CMLFeatureValue();
    sub_237A2E7CC();
    OUTLINED_FUNCTION_33_15();

    sub_237A31864(16);
    v3 = *(sub_237A2E65C() + 16);
    sub_237B0E848();
    v5 = v4;

    swift_setDeallocating();
    v6 = *(inited + 16);
    tc_v1_release();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B226D0()
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v1 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v1;
    type metadata accessor for CMLFeatureValue();
    sub_237A2E7CC();
    OUTLINED_FUNCTION_33_15();

    sub_237A31864(16);
    v3 = *(sub_237A2E65C() + 16);
    sub_237B0E848();
    v5 = v4;

    swift_setDeallocating();
    v6 = *(inited + 16);
    tc_v1_release();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLStyleTransfer.debugDescription.getter()
{
  sub_237B980B4(*(*v0 + 32));
  v2 = v1;
  v3 = v0 + *(type metadata accessor for MLStyleTransfer() + 20);
  v4 = MLStyleTransfer.ModelParameters.description.getter();
  v6 = v5;

  MEMORY[0x2383DC360](0x656D617261500A0ALL, 0xED00000A73726574);

  MEMORY[0x2383DC360](v4, v6);

  return v2;
}

id MLStyleTransfer.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLStyleTransfer.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B22950()
{
  v1 = sub_237C05ADC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 16) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (type metadata accessor for MLStyleTransfer.ModelParameters() - 8);
  v9 = *(*v8 + 80);
  v10 = (v7 + v9 + 9) & ~v9;
  v14 = *(*v8 + 64);
  v11 = *(v3 + 8);
  v11(v0 + v6, v1);
  sub_2379DBC9C(*(v0 + v7), *(v0 + v7 + 8));
  v12 = v0 + v8[7];
  if (!__swift_getEnumTagSinglePayload(v12 + v10, 1, v1))
  {
    v11(v12 + v10, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v14, v4 | v9 | 7);
}

uint64_t sub_237B22ACC(uint64_t a1)
{
  v3 = v2;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MLStyleTransfer.ModelParameters();
  OUTLINED_FUNCTION_20(v10);
  v12 = (v9 + *(v11 + 80) + 9) & ~*(v11 + 80);
  v13 = v1 + v9;
  v14 = *(v1 + v9);
  v15 = *(v13 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2379D9D48;

  return sub_237B1F9D4(a1, v1 + v7, v14, v15, v1 + v12);
}

uint64_t sub_237B22C24()
{
  v2 = type metadata accessor for MLCheckpoint();
  OUTLINED_FUNCTION_31_15(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_237C05ADC();
  OUTLINED_FUNCTION_12_0(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v0 + 36);
  v11 = sub_237C05BFC();
  OUTLINED_FUNCTION_12_0(v11);
  (*(v12 + 8))(v1 + v5 + v10);
  v13 = *(v1 + v5 + *(v0 + 40));

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_237B22D2C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = type metadata accessor for MLCheckpoint();
  OUTLINED_FUNCTION_20(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2379D6854;

  return sub_237B20824(v3, v0 + v6);
}

uint64_t type metadata accessor for MLStyleTransfer()
{
  result = qword_27DE9D240;
  if (!qword_27DE9D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_237B22E48()
{
  result = qword_27DE9A7C0;
  if (!qword_27DE9A7C0)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A7C0);
  }

  return result;
}

id sub_237B22EA0(void *a1)
{
  type metadata accessor for VNImageOption(0);
  sub_237B22E48();
  v3 = sub_237C0855C();

  v4 = [v1 initWithCGImage:a1 options:v3];

  return v4;
}

uint64_t sub_237B22F40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLStyleTransfer.ModelParameters();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_237B22FDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237B2305C()
{
  result = type metadata accessor for _Model();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLStyleTransfer.ModelParameters();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237B230E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v57 = a5;
  sub_237AC1704(v56);
  v6 = v56[1];
  v7 = v56[3];
  v8 = v56[4];
  v48 = v56[5];
  v49 = v56[0];
  v9 = (v56[2] + 64) >> 6;

  v46 = v9;
  v47 = v6;
  if (v8)
  {
    while (1)
    {
      v50 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v49 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v49 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v55[0] = v14;
      v55[1] = v15;
      v55[2] = v17;
      v55[3] = v18;

      v48(&v51, v55);

      v20 = v51;
      v19 = v52;
      v21 = v53;
      v22 = v54;
      v23 = *v57;
      v25 = sub_237ACAC78(v51, v52);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v50 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
          sub_237C090BC();
        }
      }

      else
      {
        v30 = v57;
        sub_237AC03B4(v28);
        v31 = *v30;
        v32 = sub_237ACAC78(v20, v19);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v57;
      if (v29)
      {
        v35 = (v34[7] + 16 * v25);
        v37 = *v35;
        v36 = v35[1];

        v38 = (v34[7] + 16 * v25);
        v39 = v38[1];
        *v38 = v37;
        v38[1] = v36;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v40 = (v34[6] + 16 * v25);
        *v40 = v20;
        v40[1] = v19;
        v41 = (v34[7] + 16 * v25);
        *v41 = v21;
        v41[1] = v22;
        v42 = v34[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_23;
        }

        v34[2] = v44;
      }

      a4 = 1;
      v7 = v10;
      v9 = v46;
      v6 = v47;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2379E925C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v50 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237B233B8(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_2379E8EE0(0, &qword_27DE9C760, 0x277CE2D70);
  v3 = sub_237C0893C();

  return v3;
}

uint64_t sub_237B23430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B234A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_237B234F8()
{
  v2 = _s20PersistentParametersVMa_4();
  OUTLINED_FUNCTION_31_15(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = *(v1 + 32);

  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 8);
  v12(v1 + v5, v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
  v12(v1 + v5 + *(v13 + 48), v10);
  v14 = *(v0 + 32);
  if (!__swift_getEnumTagSinglePayload(v1 + v5 + v14, 1, v10))
  {
    v12(v1 + v5 + v14, v10);
  }

  v15 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v1 + v15 + 8);

  return MEMORY[0x2821FE8E8](v1, v15 + 16, v4 | 7);
}

uint64_t sub_237B23654()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3;
  v5 = _s20PersistentParametersVMa_4();
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_2379D6854;

  return sub_237B213F4(v4, v9, v10, v11, v0 + v7, v13, v14);
}

uint64_t sub_237B23784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237B237D8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2379D9D48;

  return sub_237B216EC(v3, v5, v4);
}

uint64_t sub_237B2387C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B238EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

__n128 OUTLINED_FUNCTION_20_24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return *(v0 + 48);
}

void *OUTLINED_FUNCTION_32_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __src)
{

  return memcpy(&a9, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return sub_237A2F598(35);
}

uint64_t OUTLINED_FUNCTION_34_14(uint64_t a1)
{

  return sub_237A7B808(a1, v1, v2);
}

_BYTE *sub_237B23ACC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237B23B68);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)()
{
  OUTLINED_FUNCTION_74();
  v135 = v1;
  v130 = v0;
  v131 = v3;
  v125 = v4;
  v6 = v5;
  v128 = v7;
  v121 = v8;
  v127 = sub_237C05C2C();
  v9 = OUTLINED_FUNCTION_0(v127);
  v122 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v126 = v14 - v13;
  v15 = sub_237C0825C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v123 = v17;
  v124 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v129 = sub_237C05ADC();
  v23 = OUTLINED_FUNCTION_0(v129);
  v134 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v29 = (v27 - v28);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v107 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_96();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v107 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v133 = &v107 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v132 = &v107 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v107 - v42;
  v44 = type metadata accessor for MLStyleTransfer.DataSource();
  v45 = OUTLINED_FUNCTION_20(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v50 = v49 - v48;
  v51 = v135;
  sub_237B25F68(v6);
  if (!v51)
  {
    v116 = v33;
    v117 = v6;
    v115 = v22;
    v118 = v2;
    v119 = v37;
    v135 = v29;
    sub_237B25850(v130, v50);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v53 = *(v52 + 48);
    v54 = v50 + *(v52 + 64);
    v130 = *v54;
    v120 = *(v54 + 8);
    v55 = v134 + 4;
    v56 = v134[4];
    v57 = OUTLINED_FUNCTION_16_15();
    v58 = v129;
    v56(v57);
    (v56)(v132, v50 + v53, v58);
    sub_2379E8EE0(0, &qword_27DE9BA08, 0x277CBF758);
    sub_237B25B38(&qword_27DE9C210, MEMORY[0x277CC9260]);
    v59 = sub_237C085AC();
    sub_237B24610();
    v60 = v58;
    v114 = v56;
    v61 = 4 * (v117 / 4);
    sub_237B2496C();
    v113 = v61;
    v109 = v55;
    v110 = v43;
    v63 = v62;
    swift_isUniquelyReferenced_nonNull_native();
    sub_237B414C8();
    sub_237B24DE0();
    v108 = v63;
    v117 = v59;
    v64 = v115;
    sub_237C0821C();
    sub_237A5D3A4();
    v125 = 0;
    v66 = v65;
    (*(v123 + 8))(v64, v124);
    v67 = 0;
    v115 = *(v66 + 16);
    ++v122;
    v131 = (v134 + 1);
    v69 = v126;
    v68 = v127;
    v70 = v114;
    v112 = v66;
    v111 = v134 + 2;
    while (v115 != v67)
    {
      if (v67 >= *(v66 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        sub_237C0932C();
        __break(1u);
        return;
      }

      v71 = v134;
      v72 = v66 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v73 = v134[9];
      v129 = v67;
      v123 = v73;
      v74 = v134[2];
      v74(v119, v72 + v73 * v67, v60);
      sub_237C05C1C();
      sub_237C05C0C();
      (*v122)(v69, v68);
      v75 = v116;
      v76 = v128;
      sub_237C05A2C();

      v77 = v118;
      sub_237C05A3C();
      v78 = v71[1];
      v78(v75, v60);
      v79 = v78;
      v80 = v125;
      sub_237B2496C();
      v125 = v80;
      if (v80)
      {
        v103 = OUTLINED_FUNCTION_6_46();
        (v78)(v103);

        v78(v77, v60);
        v78(v76, v60);
        v104 = OUTLINED_FUNCTION_11_37();
        (v78)(v104);
        v78(v132, v60);
        v105 = OUTLINED_FUNCTION_3_60();
        (v78)(v105);

        goto LABEL_3;
      }

      v82 = v81;
      v83 = OUTLINED_FUNCTION_6_46();
      v124 = v79;
      (v79)(v83);
      v74(v135, v77, v60);
      v84 = v82;
      v85 = v117;
      swift_isUniquelyReferenced_nonNull_native();
      v86 = sub_237ACB424();
      if (__OFADD__(v85[2], (v87 & 1) == 0))
      {
        goto LABEL_21;
      }

      v88 = v86;
      v89 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D260, &qword_237C13470);
      if (sub_237C090AC())
      {
        v90 = sub_237ACB424();
        if ((v89 & 1) != (v91 & 1))
        {
          goto LABEL_23;
        }

        v88 = v90;
      }

      v117 = v85;
      if (v89)
      {
        v92 = v85[7];
        v93 = *(v92 + 8 * v88);
        *(v92 + 8 * v88) = v84;

        v84 = v93;
        v69 = v126;
        v68 = v127;
        v70 = v114;
      }

      else
      {
        v85[(v88 >> 6) + 8] |= 1 << v88;
        v74((v85[6] + v88 * v123), v135, v60);
        *(v85[7] + 8 * v88) = v84;
        v94 = v85[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          goto LABEL_22;
        }

        v85[2] = v96;
        v69 = v126;
        v68 = v127;
        v70 = v114;
      }

      v97 = v124;

      v98 = OUTLINED_FUNCTION_6_46();
      v97(v98);
      (v97)(v118, v60);
      v67 = v129 + 1;
      v66 = v112;
    }

    v99 = v125;
    sub_237B251D0();

    v100 = *v131;
    if (v99)
    {
      (*v131)(v128, v60);
      v101 = OUTLINED_FUNCTION_11_37();
      v100(v101);
      (v100)(v132, v60);
      v102 = OUTLINED_FUNCTION_3_60();
      v100(v102);
    }

    else
    {
      (*v131)(v132, v60);
      v106 = OUTLINED_FUNCTION_3_60();
      v100(v106);
      v70(v121, v133, v60);
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_73();
}

void sub_237B24610()
{
  OUTLINED_FUNCTION_74();
  v42 = v1;
  v44 = v2;
  v3 = sub_237C05C2C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v40 = v5;
  v41 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C05ADC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v43 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v20 = OUTLINED_FUNCTION_20(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v25 = sub_237C0825C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_237C0821C();
  v34 = sub_237A5C0AC();
  (*(v28 + 8))(v33, v25);
  if (v34)
  {
    sub_237A6FAB8(v42, v24);
    if (__swift_getEnumTagSinglePayload(v24, 1, v11) == 1)
    {
      sub_237A6FB28(v24);
      v35 = NSTemporaryDirectory();
      sub_237C086EC();

      sub_237C059AC();

      sub_237C05C1C();
      sub_237C05C0C();
      (*(v40 + 8))(v10, v41);
      sub_237C05A2C();

      sub_237C05A3C();
      v36 = *(v43 + 8);
      v36(v0, v11);
      v36(v18, v11);
    }

    else
    {
      (*(v43 + 32))(v44, v24, v11);
    }
  }

  else
  {
    sub_2379E8AF0();
    v37 = OUTLINED_FUNCTION_6_2();
    *v38 = 0xD000000000000019;
    v38[1] = 0x8000000237C1C600;
    OUTLINED_FUNCTION_52(v37, v38);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B2496C()
{
  OUTLINED_FUNCTION_74();
  v32 = v1;
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_237C05ADC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_2379E8EE0(0, &qword_27DE9AC50, 0x277CBFEF8);
  (*(v10 + 16))(v15, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D298, &unk_237C134C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v17 = *MEMORY[0x277CBFE80];
  *(inited + 64) = MEMORY[0x277D83E88];
  *(inited + 32) = v17;
  *(inited + 40) = 0;
  type metadata accessor for ImageOption(0);
  sub_237B25B38(&qword_27DE9A970, type metadata accessor for ImageOption);
  v18 = v17;
  v19 = sub_237C085AC();
  v20 = sub_237B26B78(v15, v4, v4, 1380401729, v19);
  if (!v0)
  {
    v21 = v20;
    v22 = v31;
    if (sub_237A37A64())
    {
      goto LABEL_12;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_10_38();
    }

    else
    {
      sub_237B2572C(v31);
    }

    sub_237A3825C(14);

    v23 = sub_237C059EC();
    v24 = sub_237C0855C();
    v22 = CGImageSourceCreateWithURL(v23, v24);

    if (!v22)
    {
      goto LABEL_12;
    }

    v25 = sub_237C0855C();
    v26 = CGImageSourceCopyPropertiesAtIndex(v22, 0, v25);

    if (v26)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

LABEL_12:
        v27 = [v21 imageBufferValue];
        if (v27)
        {
          v28 = v27;
          [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
        }

        else
        {
          OUTLINED_FUNCTION_10_38();
          sub_2379E8AF0();
          v29 = OUTLINED_FUNCTION_6_2();
          *v30 = 0xD000000000000018;
          v30[1] = v22;
          OUTLINED_FUNCTION_52(v29, v30);
        }

        goto LABEL_14;
      }

      sub_237C0856C();
    }

    goto LABEL_12;
  }

LABEL_14:
  OUTLINED_FUNCTION_73();
}

void sub_237B24DE0()
{
  OUTLINED_FUNCTION_74();
  v47 = v2;
  v48 = v0;
  v4 = v3;
  v49[1] = *MEMORY[0x277D85DE8];
  v46 = sub_237C05C2C();
  v5 = OUTLINED_FUNCTION_0(v46);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v14 = OUTLINED_FUNCTION_20(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = sub_237C05ADC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v29);
  v31 = &v45 - v30;
  sub_237A6FAB8(v4, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_237A6FB28(v18);
    v32 = NSTemporaryDirectory();
    sub_237C086EC();

    sub_237C059AC();

    sub_237C05C1C();
    sub_237C05C0C();
    (*(v7 + 8))(v12, v46);
    sub_237C05A2C();

    v33 = [objc_opt_self() defaultManager];
    v34 = sub_237C059EC();
    v49[0] = 0;
    v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:0 attributes:0 error:v49];

    if (v35)
    {
      v36 = *(v22 + 8);
      v37 = v49[0];
      v36(v1, v19);
      (*(v22 + 32))(v47, v27, v19);
    }

    else
    {
      v40 = v49[0];
      sub_237C0593C();

      swift_willThrow();
      v41 = *(v22 + 8);
      v41(v27, v19);
      v41(v1, v19);
    }
  }

  else
  {
    v38 = *(v22 + 32);
    v38(v31, v18, v19);
    if (sub_237C059CC())
    {
      v39 = OUTLINED_FUNCTION_11_37();
      (v38)(v39);
    }

    else
    {
      OUTLINED_FUNCTION_10_38();
      sub_2379E8AF0();
      v42 = OUTLINED_FUNCTION_6_2();
      *v43 = 0xD000000000000037;
      v43[1] = v31;
      OUTLINED_FUNCTION_52(v42, v43);
      (*(v22 + 8))(v31, v19);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

void sub_237B251D0()
{
  OUTLINED_FUNCTION_74();
  v51 = v0;
  v3 = v2;
  v66[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v65 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D288, &qword_237C134B0);
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v18);
  v61 = &v50 - v19;
  v62 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v58 = *MEMORY[0x277CBF9C0];
  v20 = v3 + 64;
  v21 = 1 << *(v3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v3 + 64);
  v52 = (v21 + 63) >> 6;
  v53 = v7 + 16;
  v64 = (v7 + 32);
  v55 = v7;
  v56 = v3;
  v60 = (v7 + 8);

  v24 = 0;
  v63 = v1;
  v57 = v3 + 64;
  v59 = v4;
  if (!v23)
  {
    do
    {
LABEL_5:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      if (v25 >= v52)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D290, &qword_237C134B8);
        __swift_storeEnumTagSinglePayload(v1, 1, 1, v46);
        v23 = 0;
        goto LABEL_10;
      }

      v23 = *(v20 + 8 * v25);
      ++v24;
    }

    while (!v23);
    v24 = v25;
    goto LABEL_9;
  }

  while (1)
  {
    v25 = v24;
LABEL_9:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = v26 | (v25 << 6);
    v29 = v55;
    v28 = v56;
    v30 = v54;
    (*(v55 + 16))(v54, *(v56 + 48) + *(v55 + 72) * v27, v4);
    v31 = *(*(v28 + 56) + 8 * v27);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D290, &qword_237C134B8);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v1 = v63;
    v34(v63, v30, v4);
    *(v1 + v33) = v31;
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v32);
    v35 = v31;
LABEL_10:
    v36 = v61;
    sub_237B25AC8(v1, v61);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D290, &qword_237C134B8);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {

      goto LABEL_20;
    }

    v38 = *(v36 + *(v37 + 48));
    (*v64)(v65, v36, v4);
    v39 = [v38 colorSpace];
    if (!v39)
    {
      OUTLINED_FUNCTION_10_38();
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      *v47 = 0xD00000000000001ELL;
      *(v47 + 8) = v36;
      *(v47 + 16) = 0u;
      *(v47 + 32) = 0u;
      *(v47 + 48) = 2;
      swift_willThrow();

      goto LABEL_19;
    }

    v40 = v39;
    v41 = sub_237C059EC();
    type metadata accessor for CIImageRepresentationOption(0);
    sub_237B25B38(&qword_27DE9A980, type metadata accessor for CIImageRepresentationOption);
    sub_237C085AC();
    v42 = sub_237C0855C();

    v66[0] = 0;
    v43 = [v62 writePNGRepresentationOfImage:v38 toURL:v41 format:v58 colorSpace:v40 options:v42 error:v66];

    if (!v43)
    {
      break;
    }

    v44 = *v60;
    v45 = v66[0];
    v4 = v59;
    v44(v65, v59);

    v1 = v63;
    v20 = v57;
    if (!v23)
    {
      goto LABEL_5;
    }
  }

  v48 = v66[0];
  sub_237C0593C();

  swift_willThrow();

  v38 = v40;
  v4 = v59;
LABEL_19:

  (*v60)(v65, v4);
LABEL_20:
  v49 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B2572C(uint64_t a1)
{
  if (!a1)
  {
    return 0x43207265746E6543;
  }

  v1 = 0x694620656C616353;
  v2 = 0xD000000000000016;
  v3 = 0x6669636570736E55;
  if (a1 == 1)
  {
    v3 = 0x694620656C616353;
  }

  if (a1 != 257)
  {
    v2 = v3;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1 == 258)
  {
    return 0xD000000000000017;
  }

  else
  {
    return v1;
  }
}

uint64_t type metadata accessor for MLStyleTransfer.DataSource()
{
  result = qword_27DE9D268;
  if (!qword_27DE9D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B25850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.DataSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B258B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237B25908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_237B2596C(uint64_t a1)
{
  sub_237B25A44();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_237C05ADC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout3();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_237B25A44()
{
  if (!qword_27DE9D278)
  {
    sub_237C05ADC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D280, &qword_237C13488);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D278);
    }
  }
}

uint64_t sub_237B25AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D288, &qword_237C134B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B25B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_13_28()
{

  return swift_dynamicCast();
}

uint64_t MLStyleTransfer.ModelParameters.init(algorithm:validation:maxIterations:textelDensity:styleStrength:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for MLStyleTransfer.ModelParameters();
  *&a6[v12[6]] = 1;
  a6[v12[10]] = 0;
  *a6 = v11;
  result = sub_237B25CB8(a2, &a6[v12[5]]);
  *&a6[v12[7]] = a3;
  *&a6[v12[8]] = a4;
  *&a6[v12[9]] = a5;
  return result;
}

uint64_t type metadata accessor for MLStyleTransfer.ModelParameters()
{
  result = qword_27DE9D2A8;
  if (!qword_27DE9D2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B25CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B25D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  OUTLINED_FUNCTION_9_40();
  *(v2 + 32) = v3;
  *(v2 + 40) = 0xE90000000000006DLL;
  v4 = 7237219;
  if (*v0)
  {
    v4 = 0x6574694C6E6E63;
  }

  v5 = 0xE300000000000000;
  if (*v0)
  {
    v5 = 0xE700000000000000;
  }

  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  strcpy((v2 + 64), "Textel Density");
  *(v2 + 79) = -18;
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v10 = *&v0[*(v6 + 32)];
  *(inited + 80) = sub_237C0924C();
  *(inited + 88) = v7;
  strcpy((inited + 96), "Style Strength");
  *(inited + 111) = -18;
  OUTLINED_FUNCTION_2_63(*(v6 + 36));
  *(inited + 112) = sub_237C0924C();
  *(inited + 120) = v8;
  return sub_237C085AC();
}

uint64_t sub_237B25E7C(uint64_t result)
{
  if ((result - 1) > 9)
  {
    OUTLINED_FUNCTION_10_39();

    OUTLINED_FUNCTION_6_47();
    v1 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v1);

    MEMORY[0x2383DC360](8236, 0xE200000000000000);
    v2 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v2);

    MEMORY[0x2383DC360](11869, 0xE200000000000000);
    sub_2379E8AF0();
    v3 = swift_allocError();
    return OUTLINED_FUNCTION_4_54(v3, v4);
  }

  return result;
}

uint64_t sub_237B25F68(uint64_t result)
{
  if ((result - 64) > 0x3C0)
  {
    OUTLINED_FUNCTION_10_39();

    OUTLINED_FUNCTION_6_47();
    v1 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v1);

    MEMORY[0x2383DC360](8236, 0xE200000000000000);
    v2 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v2);

    MEMORY[0x2383DC360](11869, 0xE200000000000000);
    sub_2379E8AF0();
    v3 = swift_allocError();
    return OUTLINED_FUNCTION_4_54(v3, v4);
  }

  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6574694C6E6E63;
  }

  else
  {
    result = 7237219;
  }

  *v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.validation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLStyleTransfer.ModelParameters() + 20);

  return sub_237B265D4(v3, a1);
}

uint64_t MLStyleTransfer.ModelParameters.validation.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_50() + 20);

  return sub_237B26638(v0, v2);
}

uint64_t MLStyleTransfer.ModelParameters.maxIterations.setter()
{
  result = OUTLINED_FUNCTION_5_50();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.textelDensity.setter()
{
  result = OUTLINED_FUNCTION_5_50();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.styleStrength.setter()
{
  result = OUTLINED_FUNCTION_5_50();
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_237C0916C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_237B263A0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:)(a1);
}

uint64_t sub_237B263AC@<X0>(uint64_t *a1@<X8>)
{
  result = MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.description.getter()
{
  OUTLINED_FUNCTION_9_40();
  v10 = v1;
  if (*v0)
  {
    v2 = 0xD00000000000004FLL;
  }

  else
  {
    v2 = 0xD000000000000046;
  }

  if (*v0)
  {
    v3 = "Style image not readable.";
  }

  else
  {
    v3 = "Style strength: ";
  }

  MEMORY[0x2383DC360](v2, v3 | 0x8000000000000000);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10, 0xEB00000000203A6DLL);

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3_61();
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v9 = *&v0[v4[7]];
  v5 = sub_237C0924C();
  MEMORY[0x2383DC360](v5);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10, 0xEB00000000203A6DLL);

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_2_63(v4[8]);
  v6 = sub_237C0924C();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10, 0xEB00000000203A6DLL);

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_2_63(v4[9]);
  v7 = sub_237C0924C();
  MEMORY[0x2383DC360](v7);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10, 0xEB00000000203A6DLL);

  return 0;
}

uint64_t sub_237B265D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B26638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.description.getter()
{
  if (*v0)
  {
    result = 0xD00000000000004FLL;
  }

  else
  {
    result = 0xD000000000000046;
  }

  *v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLStyleTransfer.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MLStyleTransfer.ModelParameters.ModelAlgorithmType.playgroundDescription.getter(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000004FLL;
  }

  else
  {
    v2 = 0xD000000000000046;
  }

  if (*v1)
  {
    v3 = "Style image not readable.";
  }

  else
  {
    v3 = "Style strength: ";
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_237B26770()
{
  result = qword_27DE9D2A0;
  if (!qword_27DE9D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D2A0);
  }

  return result;
}

uint64_t sub_237B267E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_237B26874(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237B268F0()
{
  result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15ModelParametersV18ModelAlgorithmTypeOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237B26A54);
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

uint64_t OUTLINED_FUNCTION_1_63()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_4_54(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return type metadata accessor for MLStyleTransfer.ModelParameters();
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return sub_237C08EDC();
}

id sub_237B26B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = sub_237C059EC();
  if (a5)
  {
    type metadata accessor for ImageOption(0);
    sub_237B27B34(&qword_27DE9A970, type metadata accessor for ImageOption);
    v11 = sub_237C0855C();
  }

  else
  {
    v11 = 0;
  }

  v23[0] = 0;
  v12 = [swift_getObjCClassFromMetadata() featureValueWithImageAtURL:v10 pixelsWide:a2 pixelsHigh:a3 pixelFormatType:a4 options:v11 error:v23];

  v13 = v23[0];
  if (v12)
  {
    v14 = sub_237C05ADC();
    OUTLINED_FUNCTION_4(v14);
    v16 = *(v15 + 8);
    v17 = v13;
    v16(a1, v14);
  }

  else
  {
    v18 = v23[0];
    sub_237C0593C();

    swift_willThrow();
    v19 = sub_237C05ADC();
    OUTLINED_FUNCTION_4(v19);
    (*(v20 + 8))(a1);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_237B26D60(uint64_t a1)
{
  v3 = v1;
  v74 = a1;
  v4 = sub_237C05C2C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v72 = v6;
  v73 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v71 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v12 = OUTLINED_FUNCTION_20(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v76 = &v64 - v15;
  v16 = sub_237C0825C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  v26 = OUTLINED_FUNCTION_20(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = sub_237C05ADC();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v33);
  v69 = &v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v70 = &v64 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v75 = &v64 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v64 - v44;
  sub_237B265D4(v3, v31);
  OUTLINED_FUNCTION_16_1(v31);
  if (v46)
  {
    return sub_237B2796C(v31);
  }

  v67 = v3;
  v68 = v2;
  v48 = *(v35 + 32);
  v48(v45, v31, v32);
  sub_237C0821C();
  v49 = sub_237A5C0AC();
  (*(v19 + 8))(v24, v16);
  if (v49)
  {
    v65 = v35;
    v66 = v45;
    v50 = v76;
    sub_237A6FAB8(v74, v76);
    OUTLINED_FUNCTION_16_1(v50);
    if (v46)
    {
      v51 = NSTemporaryDirectory();
      sub_237C086EC();

      v52 = v69;
      sub_237C059AC();

      v53 = v71;
      sub_237C05C1C();
      sub_237C05C0C();
      (*(v72 + 8))(v53, v73);
      v54 = v70;
      sub_237C05A2C();

      v58 = v65;
      v55 = *(v65 + 8);
      v55(v52, v32);
      v57 = v75;
      sub_237C05A3C();
      v55(v54, v32);
      OUTLINED_FUNCTION_16_1(v50);
      if (!v46)
      {
        sub_2379D9054(v50, &qword_27DE9AA18, &qword_237C0B710);
      }
    }

    else
    {
      v57 = v75;
      v48(v75, v50, v32);
      v58 = v65;
    }

    v59 = v66;
    v60 = v68;
    v61 = sub_237B2726C(v66, 512, 2);
    if (!v60)
    {
      v62 = v61;
      sub_237B274DC(v61);
    }

    v63 = *(v58 + 8);
    v63(v57, v32);
    return (v63)(v59, v32);
  }

  else
  {
    sub_2379E8AF0();
    swift_allocError();
    *v56 = 0xD000000000000020;
    *(v56 + 8) = 0x8000000237C1C760;
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0;
    swift_willThrow();
    return (*(v35 + 8))(v45, v32);
  }
}

id sub_237B2726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_237C05ADC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_237B27AF0();
  (*(v8 + 16))(v11, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D298, &unk_237C134C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v14 = *MEMORY[0x277CBFE80];
  *(inited + 64) = MEMORY[0x277D83E88];
  *(inited + 32) = v14;
  *(inited + 40) = a3;
  type metadata accessor for ImageOption(0);
  sub_237B27B34(&qword_27DE9A970, type metadata accessor for ImageOption);
  v15 = v14;
  v16 = sub_237C085AC();
  v17 = sub_237B26B78(v11, a2, a2, 1380401729, v16);
  if (!v3)
  {
    v18 = v17;
    v19 = [v17 imageBufferValue];
    if (v19)
    {
      v20 = v19;
      v12 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
    }

    else
    {
      sub_2379E8AF0();
      swift_allocError();
      *v22 = 0xD000000000000023;
      *(v22 + 8) = 0x8000000237C1C790;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *(v22 + 48) = 0;
      swift_willThrow();
    }
  }

  return v12;
}

void sub_237B274DC(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v3 = [a1 colorSpace];
  if (v3)
  {
    v4 = v3;
    v12 = *MEMORY[0x277CBF9C0];
    v5 = sub_237C059EC();
    type metadata accessor for CIImageRepresentationOption(0);
    sub_237B27B34(&qword_27DE9A980, type metadata accessor for CIImageRepresentationOption);
    sub_237C085AC();
    v6 = sub_237C0855C();

    v13[0] = 0;
    v7 = [v2 writePNGRepresentationOfImage:a1 toURL:v5 format:v12 colorSpace:v4 options:v6 error:v13];

    if (v7)
    {
      v8 = v13[0];
    }

    else
    {
      v10 = v13[0];
      sub_237C0593C();

      swift_willThrow();
    }
  }

  else
  {
    sub_2379E8AF0();
    swift_allocError();
    *v9 = 0xD00000000000001ELL;
    *(v9 + 8) = 0x8000000237C1C4B0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 2;
    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t static MLStyleTransfer.ModelParameters.ValidationData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  v14 = OUTLINED_FUNCTION_20(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D2B8, &qword_237C136C8);
  v21 = OUTLINED_FUNCTION_20(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v32 - v25;
  v27 = *(v24 + 56);
  sub_237B265D4(a1, &v32 - v25);
  sub_237B265D4(a2, &v26[v27]);
  OUTLINED_FUNCTION_17_0(v26);
  if (!v29)
  {
    sub_237B265D4(v26, v19);
    OUTLINED_FUNCTION_17_0(&v26[v27]);
    if (!v29)
    {
      (*(v7 + 32))(v12, &v26[v27], v4);
      v28 = sub_237C05A6C();
      v30 = *(v7 + 8);
      v30(v12, v4);
      v30(v19, v4);
      sub_237B2796C(v26);
      return v28 & 1;
    }

    (*(v7 + 8))(v19, v4);
LABEL_9:
    sub_2379D9054(v26, &qword_27DE9D2B8, &qword_237C136C8);
    v28 = 0;
    return v28 & 1;
  }

  OUTLINED_FUNCTION_17_0(&v26[v27]);
  if (!v29)
  {
    goto LABEL_9;
  }

  sub_237B2796C(v26);
  v28 = 1;
  return v28 & 1;
}

uint64_t type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData()
{
  result = qword_27DE9D2C0;
  if (!qword_27DE9D2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B2796C(uint64_t a1)
{
  v2 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B279E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237B27A3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_237C05ADC();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_237B27A98()
{
  v0 = sub_237C05ADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_237B27AF0()
{
  result = qword_27DE9AC50;
  if (!qword_27DE9AC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AC50);
  }

  return result;
}

uint64_t sub_237B27B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237B27B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLStyleTransfer.DataSource();
  OUTLINED_FUNCTION_20(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + *(a3 + 20));
      if (v10 >= 2)
      {
        return v10 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_237B27C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLStyleTransfer.DataSource();
  result = OUTLINED_FUNCTION_20(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v12 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v11 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t _s20PersistentParametersVMa_4()
{
  result = qword_27DE9D2D0;
  if (!qword_27DE9D2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B27DA0()
{
  result = type metadata accessor for MLStyleTransfer.DataSource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237B27E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v103[4] = *MEMORY[0x277D85DE8];
  v3 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v85[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v85[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v85[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v85[-v21];
  sub_237C05A2C();
  v23 = v99;
  v24 = sub_237C05B1C();
  if (v23)
  {
    v26 = *(v6 + 8);
    v26(a1, v3);
    result = (v26)(v22, v3);
LABEL_42:
    v55 = *MEMORY[0x277D85DE8];
    return result;
  }

  v93 = v14;
  v94 = v17;
  v91 = v11;
  v92 = 0;
  v95 = v20;
  v28 = v3;
  v29 = *(v6 + 8);
  v30 = v24;
  v31 = v25;
  v29(v22, v28);
  v32 = objc_opt_self();
  v33 = sub_237C05B6C();
  *&v101 = 0;
  v34 = [v32 propertyListWithData:v33 options:0 format:0 error:&v101];

  v35 = v101;
  if (!v34)
  {
    v45 = v35;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v30, v31);
    result = v29(a1, v28);
    goto LABEL_42;
  }

  v96 = v30;
  v97 = v31;
  v99 = v29;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  v36 = OUTLINED_FUNCTION_4_55();
  sub_2379FED88(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_0_67() & 1) == 0)
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_1_64(v46, 0xD000000000000037);
    sub_2379E86D4(v96, v97);
    v47 = a1;
    v48 = v28;
LABEL_40:
    v99(v47, v48);
LABEL_41:
    result = __swift_destroy_boxed_opaque_existential_1(v103);
    goto LABEL_42;
  }

  v38 = v100;
  sub_237AC9A74(0x687469726F676C61, 0xE90000000000006DLL, v100, &v101);
  v39 = a1;
  if (!v102)
  {

    sub_237A286E0(&v101);
LABEL_14:
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_1_64(v49, 0xD000000000000044);
    sub_2379E86D4(v96, v97);
    v47 = a1;
    v48 = v28;
    goto LABEL_40;
  }

  if ((OUTLINED_FUNCTION_0_67() & 1) == 0)
  {

    goto LABEL_14;
  }

  v89 = v28;
  v40 = v38;
  v41 = sub_237C0916C();

  if (v41)
  {
    v42 = v98;
    if (v41 != 1)
    {

      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_6_2();
      v44 = 0xD000000000000049;
LABEL_39:
      OUTLINED_FUNCTION_1_64(v43, v44);
      sub_2379E86D4(v96, v97);
      v47 = v39;
      v48 = v89;
      goto LABEL_40;
    }
  }

  else
  {
    v42 = v98;
  }

  v90 = _s20PersistentParametersVMa_4();
  *(v42 + v90[5]) = v41;
  sub_237AC9A74(0x645F6C6574786574, 0xEE00797469736E65, v40, &v101);
  if (v102)
  {
    OUTLINED_FUNCTION_3_62();
    if (swift_dynamicCast())
    {
      v50 = v100;
    }

    else
    {
      v50 = 256;
    }
  }

  else
  {
    sub_237A286E0(&v101);
    v50 = 256;
  }

  *(v42 + v90[7]) = v50;
  sub_237AC9A74(0x74735F656C797473, 0xEE006874676E6572, v40, &v101);
  if (v102)
  {
    if (OUTLINED_FUNCTION_0_67())
    {
      v51 = v100;
      goto LABEL_26;
    }
  }

  else
  {
    sub_237A286E0(&v101);
  }

  v51 = 5;
LABEL_26:
  *(v42 + v90[8]) = v51;
  sub_237AC9A74(0x656369766564, 0xE600000000000000, v40, &v101);
  if (v102)
  {
    if (OUTLINED_FUNCTION_0_67())
    {
      v52 = sub_2379F5980();
      if (v52 != 2)
      {
        *(v42 + v90[9]) = v52 & 1;
        goto LABEL_32;
      }
    }
  }

  else
  {
    sub_237A286E0(&v101);
  }

  *(v42 + v90[9]) = 0;
LABEL_32:
  sub_237AC9A74(0x6D695F656C797473, 0xEB00000000656761, v40, &v101);
  if (!v102)
  {

    sub_237A286E0(&v101);
LABEL_38:
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    v44 = 0xD000000000000039;
    goto LABEL_39;
  }

  if ((OUTLINED_FUNCTION_0_67() & 1) == 0)
  {

    goto LABEL_38;
  }

  v87 = objc_opt_self();
  v53 = [v87 defaultManager];
  v54 = sub_237C086BC();
  LODWORD(v88) = [v53 fileExistsAtPath_];

  if (v88)
  {
    sub_237C059BC();
  }

  else
  {
    v56 = v94;
    sub_237C059BC();

    sub_237C05A9C();
    sub_237C05A2C();

    v99(v56, v89);
  }

  v57 = v98;
  v58 = OUTLINED_FUNCTION_7_41();
  sub_237AC9A74(v58, v59, v40, v60);
  if (!v102)
  {

    sub_237A286E0(&v101);
LABEL_50:
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    *v64 = 0xD00000000000003FLL;
    *(v64 + 8) = v40;
    *(v64 + 16) = 0u;
    *(v64 + 32) = 0u;
    *(v64 + 48) = 0;
    swift_willThrow();
    sub_2379E86D4(v96, v97);
    v65 = OUTLINED_FUNCTION_11_38();
    v66 = v99;
    (v99)(v65);
    v66(v95, v40);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_3_62();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_50;
  }

  v61 = [v87 defaultManager];
  v62 = sub_237C086BC();
  LODWORD(v88) = [v61 fileExistsAtPath_];

  if (v88)
  {
    v63 = v93;
    sub_237C059BC();
  }

  else
  {
    v67 = v94;
    sub_237C059BC();

    sub_237C05A9C();
    v63 = v93;
    sub_237C05A2C();

    v99(v67, v89);
  }

  v68 = OUTLINED_FUNCTION_7_41();
  sub_237AC9A74(v68, v69, v40, v70);
  if (!v102)
  {
    sub_237A286E0(&v101);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_3_62();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_57:
    v71 = 0;
    v72 = 1;
LABEL_58:
    sub_237AC9A74(0x69746164696C6176, 0xEA00000000006E6FLL, v40, &v101);

    v88 = v71;
    v86 = v72;
    if (v102)
    {
      OUTLINED_FUNCTION_3_62();
      v73 = swift_dynamicCast();
      v40 = v89;
      if (v73)
      {
        v74 = [v87 defaultManager];
        v75 = sub_237C086BC();
        LODWORD(v87) = [v74 fileExistsAtPath_];

        if (v87)
        {
          sub_237C059BC();
          sub_2379E86D4(v96, v97);

          v99(v39, v40);
          v63 = v93;
        }

        else
        {
          v78 = v94;
          sub_237C059BC();

          sub_237C05A9C();
          sub_237C05A2C();
          sub_2379E86D4(v96, v97);

          v79 = v99;
          v99(v39, v40);
          v63 = v93;
          v79(v78, v40);
        }

        __swift_destroy_boxed_opaque_existential_1(v103);
        v80 = v90[6];
        v77 = *(v6 + 32);
        v77(v57 + v80, v91, v40);
        __swift_storeEnumTagSinglePayload(v57 + v80, 0, 1, v40);
        goto LABEL_67;
      }

      sub_2379E86D4(v96, v97);
      v99(v39, v40);
      __swift_destroy_boxed_opaque_existential_1(v103);
    }

    else
    {
      sub_2379E86D4(v96, v97);
      v76 = OUTLINED_FUNCTION_11_38();
      (v99)(v76);
      __swift_destroy_boxed_opaque_existential_1(v103);
      sub_237A286E0(&v101);
    }

    __swift_storeEnumTagSinglePayload(v57 + v90[6], 1, 1, v40);
    v77 = *(v6 + 32);
LABEL_67:
    v81 = v95;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v83 = *(v82 + 48);
    v84 = v57 + *(v82 + 64);
    v77(v57, v81, v40);
    result = (v77)(v57 + v83, v63, v40);
    *v84 = v88;
    *(v84 + 8) = v86;
    goto LABEL_42;
  }

  v71 = v100;
  if ((v100 & 0x8000000000000000) == 0)
  {
    v72 = 0;
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B28A88(uint64_t a1)
{
  v2 = v1;
  v125 = a1;
  v131 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v120 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_237C05ADC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v124 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v121 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v115 = &v111 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v111 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v111 - v22;
  v123 = &v111 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  v26 = type metadata accessor for MLStyleTransfer.DataSource();
  v27 = OUTLINED_FUNCTION_20(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_237C085AC();
  v119 = v2;
  sub_237B29430(v2, v31, type metadata accessor for MLStyleTransfer.DataSource);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
  v33 = *(v32 + 48);
  v34 = &v31[*(v32 + 64)];
  v111 = *v34;
  LODWORD(v122) = v34[8];
  v35 = *(v11 + 32);
  v35(v25, v31, v8);
  v116 = v8;
  v113 = v11 + 32;
  v112 = v35;
  v35(v23, &v31[v33], v8);
  v118 = v25;
  v128 = sub_237C05A9C();
  v129 = v36;
  v37 = sub_237C05A9C();
  OUTLINED_FUNCTION_5_51(v37, v38);
  v39 = sub_2379F3408();
  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_18_27();
  v41 = v40;
  sub_237C08D9C();

  sub_237C059BC();

  v42 = sub_237C05A9C();
  v44 = v43;
  v45 = *(v124 + 8);
  v124 += 8;
  v45(v20, v8);
  v130 = v41;
  v128 = v42;
  v129 = v44;
  v46 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v46, v47);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_8_36();
  sub_237B40B6C(v127, v48 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000, 0xEB00000000656761);
  v49 = v126;
  v128 = sub_237C05A9C();
  v129 = v50;
  v51 = sub_237C05A9C();
  OUTLINED_FUNCTION_5_51(v51, v52);
  OUTLINED_FUNCTION_6_48();
  v114 = v39;
  OUTLINED_FUNCTION_18_27();
  sub_237C08D9C();

  sub_237C059BC();
  v53 = v116;

  v54 = sub_237C05A9C();
  v56 = v55;
  v117 = v20;
  v45(v20, v53);
  v57 = v41;
  v130 = v41;
  v128 = v54;
  v129 = v56;
  v58 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v58, v59);
  swift_isUniquelyReferenced_nonNull_native();
  v126 = v49;
  sub_237B40B6C(v127, 0xD000000000000011, 0x8000000237C1C8A0);
  v60 = v126;
  v61 = v122;
  v122 = v45;
  if (v61 != 1)
  {
    v130 = MEMORY[0x277D83E88];
    v128 = v111;
    v62 = OUTLINED_FUNCTION_4_55();
    sub_2379DAD24(v62, v63);
    swift_isUniquelyReferenced_nonNull_native();
    v126 = v60;
    sub_237B40B6C(v127, 0xD000000000000011, 0x8000000237C1C900);
    v60 = v126;
  }

  v45(v123, v53);
  v45(v118, v53);
  v64 = _s20PersistentParametersVMa_4();
  v65 = v119;
  v66 = *(v119 + v64[5]) == 0;
  v67 = 7237219;
  if (*(v119 + v64[5]))
  {
    v67 = 0x6574694C6E6E63;
  }

  v68 = 0xE700000000000000;
  v69 = v57;
  v130 = v57;
  if (v66)
  {
    v68 = 0xE300000000000000;
  }

  v128 = v67;
  v129 = v68;
  v70 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v70, v71);
  swift_isUniquelyReferenced_nonNull_native();
  v126 = v60;
  sub_237B40B6C(v127, 0x687469726F676C61, 0xE90000000000006DLL);
  v72 = v126;
  v73 = *(v65 + v64[7]);
  v74 = MEMORY[0x277D83B88];
  v130 = MEMORY[0x277D83B88];
  v128 = v73;
  v75 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v75, v76);
  swift_isUniquelyReferenced_nonNull_native();
  v126 = v72;
  sub_237B40B6C(v127, 0x645F6C6574786574, 0xEE00797469736E65);
  v77 = *(v65 + v64[8]);
  v130 = v74;
  v128 = v77;
  v78 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v78, v79);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_8_36();
  sub_237B40B6C(v127, v80 & 0xFFFFFFFFFFFFLL | 0x7473000000000000, 0xEE006874676E6572);
  v81 = v126;
  v82 = 1869903201;
  if (*(v65 + v64[9]))
  {
    v82 = 7696483;
  }

  v83 = 0xE400000000000000;
  if (*(v65 + v64[9]))
  {
    v83 = 0xE300000000000000;
  }

  v130 = v69;
  v128 = v82;
  v129 = v83;
  v84 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v84, v85);
  swift_isUniquelyReferenced_nonNull_native();
  v126 = v81;
  sub_237B40B6C(v127, 0x656369766564, 0xE600000000000000);
  v86 = v126;
  v87 = v120;
  sub_237B29430(v65 + v64[6], v120, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (__swift_getEnumTagSinglePayload(v87, 1, v53) == 1)
  {
    sub_237B2796C(v87);
  }

  else
  {
    v88 = v115;
    v112(v115, v87, v53);
    v128 = sub_237C05A9C();
    v129 = v89;
    v90 = sub_237C05A9C();
    OUTLINED_FUNCTION_5_51(v90, v91);
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_18_27();
    sub_237C08D9C();

    v92 = v117;
    sub_237C059BC();

    v93 = sub_237C05A9C();
    v95 = v94;
    v96 = v92;
    v97 = v122;
    v122(v96, v53);
    v130 = MEMORY[0x277D837D0];
    v128 = v93;
    v129 = v95;
    v98 = OUTLINED_FUNCTION_4_55();
    sub_2379DAD24(v98, v99);
    swift_isUniquelyReferenced_nonNull_native();
    v126 = v86;
    sub_237B40B6C(v127, 0x69746164696C6176, 0xEA00000000006E6FLL);
    v97(v88, v53);
  }

  v100 = v121;
  v101 = objc_opt_self();
  v102 = sub_237C0855C();

  v128 = 0;
  v103 = [v101 dataWithPropertyList:v102 format:200 options:0 error:&v128];

  v104 = v128;
  if (v103)
  {
    v105 = sub_237C05B7C();
    v107 = v106;

    sub_237C05A2C();
    sub_237C05B9C();
    v122(v100, v53);
    result = sub_2379E86D4(v105, v107);
  }

  else
  {
    v109 = v104;
    sub_237C0593C();

    result = swift_willThrow();
  }

  v110 = *MEMORY[0x277D85DE8];
  return result;
}