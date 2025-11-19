uint64_t sub_237B7B4D8()
{
  v0 = sub_237C0602C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC98, &qword_237C0BA00);
  sub_237C05FBC();
  v5 = sub_237C05C9C();
  v7 = v6;

  if (v7)
  {
    return 0;
  }

  result = sub_237C05D8C();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(result + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v1 + 16))(v4, result + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v0);

  v9 = sub_237C05FFC();
  (*(v1 + 8))(v4, v0);
  return v9 == MEMORY[0x277D837D0];
}

uint64_t sub_237B7B664()
{
  OUTLINED_FUNCTION_3_75();
  sub_237B7C134(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9C938, &unk_237C14AB0);
  v3 = OUTLINED_FUNCTION_56_5((v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable));
  sub_2379DBC84(v3, v4);
  v5 = OUTLINED_FUNCTION_56_5((v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures));
  sub_2379DBC9C(v5, v6);
  v7 = OUTLINED_FUNCTION_56_5((v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures));
  sub_2379DBC9C(v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);

  v10 = *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);

  v11 = *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  return v0;
}

uint64_t sub_237B7B71C()
{
  sub_237B7B664();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandActionClassifierTrainingSessionDelegate()
{
  result = qword_27DE9D768;
  if (!qword_27DE9D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B7B7C8()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_237B7B8D0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_237B7B8D0()
{
  if (!qword_27DE9D778)
  {
    _s20PersistentParametersVMa();
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D778);
    }
  }
}

uint64_t sub_237B7B9BC()
{
  v2 = *v0;
  sub_237B778D0();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237B7BA70()
{
  v2 = *v0;
  sub_237B77F88();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237B7BB24()
{
  v1 = *v0;
  sub_237B79174();
  return v2 & 1;
}

uint64_t sub_237B7BB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237B7BC04()
{
  result = qword_27DE9D788;
  if (!qword_27DE9D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D780, &unk_237C14AC0);
    sub_237A35F1C(&qword_27DE9B530, &qword_27DE9ACF0, &unk_237C14060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D788);
  }

  return result;
}

uint64_t sub_237B7BCA8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237B05DC0(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v3 + 8))(v0 + v5, v1);
  v14 = v0 + v11;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v21 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v21);
        v23 = *(v22 + 8);
        v23(v0 + v11, v21);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v23(v14 + v24[12], v21);
        OUTLINED_FUNCTION_105(v24[16]);

        OUTLINED_FUNCTION_105(v24[20]);

        OUTLINED_FUNCTION_105(v24[24]);

        v25 = v24[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v15 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v15);
        (*(v16 + 8))(v0 + v11);
        break;
      case 3u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v26 = *(v14 + 24);

        v27 = *(v14 + 40);

        v28 = *(v14 + 56);
        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v17 = *(v14 + 24);

        v18 = *(v14 + 40);

        v19 = *(v14 + 56);

        v20 = *(v14 + 72);
        goto LABEL_10;
      case 5u:
        v29 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v29);
        (*(v30 + 8))(v0 + v11);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v31[12]);

        OUTLINED_FUNCTION_105(v31[16]);

        v25 = v31[20];
        goto LABEL_9;
      case 6u:
        v32 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v32);
        (*(v33 + 8))(v0 + v11);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v34[12]);

        OUTLINED_FUNCTION_105(v34[16]);

        OUTLINED_FUNCTION_105(v34[20]);

        v25 = v34[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v25);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t sub_237B7C07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237B7C0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237B7C134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_30(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_22_28()
{
  *(v1 - 192) = v0;

  return sub_237C08DEC();
}

uint64_t OUTLINED_FUNCTION_29_16()
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_46_14()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  v3 = *(v2 - 176);
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;
  *(v2 - 224) = v3;
  return v2 - 224;
}

void *OUTLINED_FUNCTION_70_5()
{
  *(v0 + 480) = 0;

  return MLDataTable.init(contentsOf:options:)(v1, (v0 + 344), (v2 - 128));
}

void OUTLINED_FUNCTION_71_7()
{
  v2 = *(v0 - 416);

  sub_237A347A4();
}

unint64_t OUTLINED_FUNCTION_72_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;

  return sub_237A20C10();
}

void OUTLINED_FUNCTION_82_6(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = -1;
}

uint64_t OUTLINED_FUNCTION_84_3()
{
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;
  *(v2 - 224) = v3;
  return v2 - 224;
}

uint64_t OUTLINED_FUNCTION_93_2()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_103_2()
{
  v2 = *(v0 - 448);
  v3 = *(v0 - 476);

  sub_2379DBC9C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_104_1()
{
  v3 = *(*(v1 - 232) + v0);
}

uint64_t OUTLINED_FUNCTION_105_2()
{

  return _s20PersistentParametersVMa();
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return _s20PersistentParametersVMa();
}

uint64_t OUTLINED_FUNCTION_107_2()
{
}

void OUTLINED_FUNCTION_108_1()
{
  v2 = *(v0 + 680);
  v3 = *(v0 + 688);

  sub_2379DBC9C(v2, v3);
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9D790;
  if (!qword_27DE9D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B7C62C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_3();
  v15 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_237A2A8D8(v3, v18 - v17);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v21 = *v19;
      v22 = *(v19 + 8);
      goto LABEL_7;
    case 2:
      (*(v8 + 32))(v2, v19, v5);
      (*(v8 + 16))(v13, v2, v5);
      sub_237A70684(v13, 1, &v26);
      result = (*(v8 + 8))(v2, v5);
      v21 = v26;
      v22 = v27;
LABEL_7:
      *a1 = v21;
      *(a1 + 8) = v22;
      break;
    case 3:
      v23 = MEMORY[0x2383DDC00](0);
      if (!v23)
      {
        __break(1u);
        JUMPOUT(0x237B7C880);
      }

      v24 = v23;
      type metadata accessor for CMLTable();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v25);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237B7C890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v61 = a2;
  v59 = a1;
  v60 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v60);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = sub_237C05D1C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v56 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v55 = (v17 - v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_3();
  v31 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237A2A8D8(v57, v34 - v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = *v35;
      v47 = *(v35 + 8);
      v48 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      v49(v48);
      *&v62 = v46;
      BYTE8(v62) = v47;
      v41 = v61;
      sub_237A70ED4(&v62, v61);
      goto LABEL_10;
    case 2u:
      v43 = *(v6 + 32);
      v42 = v60;
      v43(v11, v35, v60);
      if (sub_237C05C5C())
      {
        (*(v6 + 8))(v11, v42);
        v44 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v45(v44);
        v40 = 1;
        v41 = v61;
      }

      else
      {
        v50 = OUTLINED_FUNCTION_4_2();
        v51(v50);
        v41 = v61;
        v43(v61, v11, v42);
LABEL_10:
        v40 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
    case 3u:
      v44 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      goto LABEL_7;
    default:
      v36 = *(v35 + 16);
      v37 = *(v35 + 17);
      v62 = *v35;
      v63 = v36;
      v64 = v37;
      sub_237A70BAC(v3, v24, &v62);
      v38 = v56;
      v39 = *(v56 + 16);
      v39(v22, v24, v12);
      sub_237C05DCC();
      sub_2379EA894(v3, v29);
      if (__swift_getEnumTagSinglePayload(v29, 1, v12) == 1)
      {
        (*(v38 + 8))(v24, v12);
        sub_2379EA904(v3);
        v40 = 1;
        v42 = v60;
        v41 = v61;
      }

      else
      {
        (*(v38 + 32))(v22, v29, v12);
        v39(v55, v22, v12);
        v41 = v61;
        sub_237C05DCC();
        v52 = *(v38 + 8);
        v52(v22, v12);
        v52(v24, v12);
        sub_2379EA904(v3);
        v40 = 0;
        v42 = v60;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
  }
}

id MLBoostedTreeClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeClassifier() + 20));

  return v1;
}

uint64_t type metadata accessor for MLBoostedTreeClassifier()
{
  result = qword_27DE9D7C8;
  if (!qword_27DE9D7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLBoostedTreeClassifier.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLBoostedTreeClassifier() + 20);

  *(v1 + v2) = v0;
}

void (*MLBoostedTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeClassifier() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLBoostedTreeClassifier.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLBoostedTreeClassifier() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLBoostedTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLBoostedTreeClassifier() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLBoostedTreeClassifier.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLBoostedTreeClassifier() + 24);
  return nullsub_1;
}

uint64_t MLBoostedTreeClassifier.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeClassifier() + 28));
}

uint64_t MLBoostedTreeClassifier.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLBoostedTreeClassifier() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLBoostedTreeClassifier.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLBoostedTreeClassifier() + 28);
  return nullsub_1;
}

uint64_t MLBoostedTreeClassifier.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLBoostedTreeClassifier() + 32);

  return sub_237B7D020(v2, v0);
}

uint64_t MLBoostedTreeClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLBoostedTreeClassifier();
  return OUTLINED_FUNCTION_22_29(*(v0 + 36));
}

uint64_t MLBoostedTreeClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLBoostedTreeClassifier();
  return OUTLINED_FUNCTION_22_29(*(v0 + 40));
}

uint64_t sub_237B7D0D4()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9D7A0);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D7A0);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLBoostedTreeClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A6C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9D7A0);
  OUTLINED_FUNCTION_2_74();
  return sub_237B81AA0(v3, a1);
}

void MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v245 = v20;
  v254 = v23;
  v246 = v24;
  v252 = v25;
  v242 = v26;
  a10 = v27;
  v29 = v28;
  v30 = type metadata accessor for AnyClassificationMetrics();
  v31 = OUTLINED_FUNCTION_20(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v36 = OUTLINED_FUNCTION_21_3(v35);
  v37 = type metadata accessor for MLClassifierMetrics(v36);
  v38 = OUTLINED_FUNCTION_20(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v42);
  v43 = type metadata accessor for AnyTreeClassifierModel();
  v44 = OUTLINED_FUNCTION_1(v43);
  v229 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v48);
  v230 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_77_0(v221 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_21_3(v221 - v61);
  v235 = sub_237C0602C();
  v62 = OUTLINED_FUNCTION_4(v235);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v67);
  v68 = type metadata accessor for AnyTreeClassifier();
  v69 = OUTLINED_FUNCTION_20(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v73 - v72);
  v253 = sub_237C05DBC();
  v74 = OUTLINED_FUNCTION_0(v253);
  v248 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v81);
  v243 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v82 = OUTLINED_FUNCTION_4(v243);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v86 - v85);
  v255[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v87 = OUTLINED_FUNCTION_4(v255[0]);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v94);
  v96 = v221 - v95;
  v250 = sub_237C071DC();
  v97 = OUTLINED_FUNCTION_0(v250);
  v249 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v101);
  v103 = v221 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v104);
  v106 = v105;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v109);
  v111 = v221 - v110;
  v112 = type metadata accessor for MLBoostedTreeClassifier();
  v113 = (v29 + *(v112 + 36));
  sub_237C06FAC();
  v114 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v115 = v113 + *(v114 + 20);
  sub_2379E51D0();
  v116 = v113 + *(v114 + 24);
  sub_2379E5C70();
  (*(v106 + 8))(v111, v104);
  v117 = v29;
  v118 = v254;
  *v113 = 0;
  v119 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v247 = v113;
  swift_storeEnumTagMultiPayload();
  v228 = v112;
  v120 = *(v112 + 40);
  v121 = v103;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v122 = swift_allocError();
  *v123 = 0xD0000000000000C0;
  v123[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v122, v123);
  *(v117 + v120) = v124;
  v251 = v117;
  v226 = v119;
  swift_storeEnumTagMultiPayload();
  sub_237B7D020(v118, &v259);
  sub_237C071CC();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C070DC();
  sub_237C071BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237B7E76C(&v259);
  sub_2379E9068(v118, &v257, &qword_27DE9A998, &unk_237C0C100);
  if (v258)
  {
    OUTLINED_FUNCTION_23_17();
    v126 = *(v125 + 48);
    sub_2379DAD24(&v257, &v259);
    v127 = v244;
    swift_dynamicCast();
    v128 = a10;
    v129 = v245;
    sub_2379EA3A8(v96, &v96[v126], a10);
    if (v129)
    {
      OUTLINED_FUNCTION_59_9();
      OUTLINED_FUNCTION_32_16();

      sub_237B7E76C(v118);
      OUTLINED_FUNCTION_36_3(&v263);
      v130(v128, v253);
      v131 = OUTLINED_FUNCTION_5_61();
      v132(v131);
      OUTLINED_FUNCTION_6_59();
      sub_237B81EC0();
      sub_237B81EC0();
      sub_237B81EC0();
    }

    else
    {
      OUTLINED_FUNCTION_6_59();
      sub_237B81EC0();
      v133 = v252;
      sub_237B19700(v96, v242, v252, v246);
      v245 = v134;
      v243 = v120;

      v246 = v96;
      OUTLINED_FUNCTION_48_9(&v261);
      sub_2379E9068(v135, v136, v137, v138);
      OUTLINED_FUNCTION_23_17();
      v140 = *(v139 + 48);
      v141 = v253;
      if (__swift_getEnumTagSinglePayload(v127 + v140, 1, v253) == 1)
      {
        sub_2379D9054(v127 + v140, &qword_27DE9A9A0, &qword_237C0BF60);
        v142 = *(v248 + 8);
        v143 = (v248 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v142(v127, v141);
      }

      else
      {
        OUTLINED_FUNCTION_58_7(&v263);
        v159 = v127 + v140;
        v160 = v127;
        v127 = v233;
        (*(v158 + 32))(v233, v159, v141);
        v244 = *(v96 + 1);
        v244(v160, v141);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v242;
        *(inited + 40) = v133;

        sub_2379F2DA4();
        v239 = (v96 + 8);
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v173 = swift_allocObject();
        *(v173 + 16) = xmmword_237C0B670;
        v174 = MEMORY[0x277D83B88];
        *(v173 + 32) = MEMORY[0x277D837D0];
        *(v173 + 40) = v174;
        sub_2379F30EC();
        v143 = v239 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v141 = v253;
        v142 = v244;
        v244(v127, v253);
      }

      v144 = v246;
      OUTLINED_FUNCTION_48_9(&v262);
      sub_2379E9068(v145, v146, v147, v148);
      sub_237C05DFC();
      v142(v127, v141);
      v149 = v144;
      v150 = v237;
      sub_2379E9068(v149, v237, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_23_17();
      v152 = v150 + *(v151 + 48);
      OUTLINED_FUNCTION_48_9(&v259);
      sub_237AE7128(v153, v154, v155, v156);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v127, 1, v141);
      v244 = v142;
      v239 = v143;
      if (EnumTagSinglePayload == 1)
      {
        v142(v150, v141);
        sub_2379D9054(v127, &qword_27DE9A9A0, &qword_237C0BF60);
        v150 = v236;
        __swift_storeEnumTagSinglePayload(v236, 1, 1, v235);
      }

      else
      {
        OUTLINED_FUNCTION_58_7(&v260);
        sub_237C05DFC();
        v142(v127, v141);
        __swift_storeEnumTagSinglePayload(v150, 0, 1, v235);
        v142(v237, v141);
      }

      v162 = v249;
      OUTLINED_FUNCTION_23_17();
      v237 = *(v163 + 48);
      v164 = v234;
      (*(v162 + 16))(v234, v121, v250);

      v165 = v245;

      v166 = sub_237AB7E28(v240, v150, v242, v133, v165, v164, v238);
      OUTLINED_FUNCTION_47_16(v166, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_71();
      v167 = v238;
      sub_237AB87DC(v168, v169, v170, v171, v172);
      v241 = v121;
      if ((sub_237A37A64() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_16();
        OUTLINED_FUNCTION_48_9(&v256);
        sub_2379E9068(v175, v176, v177, v178);
        OUTLINED_FUNCTION_23_17();
        v180 = *(v179 + 48);
        sub_237C05D3C();
        OUTLINED_FUNCTION_16_29();
        v181();
        sub_237A37AEC(5);
        sub_2379D9054(v167 + v180, &qword_27DE9A9A0, &qword_237C0BF60);
        v182 = *(v238[3] + 16);
        sub_237A37AEC(5);
      }

      v183 = v228;
      v184 = v251;
      v185 = (v251 + v228[6]);
      v186 = v252;
      *v185 = v242;
      v185[1] = v186;
      v187 = v183[8];
      sub_237B7D020(v254, v184 + v187);
      *(v184 + v183[7]) = v245;
      OUTLINED_FUNCTION_3_76();
      v188 = v232;
      v189 = v231;
      sub_237B81AA0(v232, v231);
      v190 = (*(v229 + 80) + 16) & ~*(v229 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_21_31();
      sub_237B81F14(v189, v191 + v190);
      sub_2379DD56C();
      v193 = v192;
      v242 = v187;

      v194 = v251;
      *(v251 + v183[5]) = v193;
      OUTLINED_FUNCTION_3_76();
      sub_237B81AA0(v188, v194);
      v195 = v227;
      v196 = v246;
      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v197);
      v199 = *v251;
      v198 = v251[1];
      sub_237C05DFC();
      OUTLINED_FUNCTION_58_7(v255);
      v240 = v199;
      v237 = v198;
      sub_237C05DFC();
      v200 = v225;
      sub_237B0CBBC();
      v201 = v253;
      v244(v195, v253);
      OUTLINED_FUNCTION_7_46();
      OUTLINED_FUNCTION_48_9(&v252);
      sub_237B81F14(v202, v203);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v200, v247);
      v204 = v224;
      sub_2379E9068(v196, v224, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_23_17();
      v206 = *(v205 + 48);
      if (__swift_getEnumTagSinglePayload(v204 + v206, 1, v201) == 1)
      {
        sub_237B7E76C(v254);
        v207 = v244;
        v244(a10, v201);
        OUTLINED_FUNCTION_1_76();
        sub_237B81EC0();
        sub_2379D9054(v196, &qword_27DE9ADC0, &unk_237C0BF40);
        v208 = OUTLINED_FUNCTION_5_61();
        v209(v208);
        OUTLINED_FUNCTION_0_80();
        OUTLINED_FUNCTION_61_8();
        sub_2379D9054(v204 + v206, &qword_27DE9A9A0, &qword_237C0BF60);
        v207(v204, v201);
      }

      else
      {
        (*(v248 + 32))(v222, v204 + v206, v201);
        v210 = v204;
        v211 = v244;
        v244(v210, v201);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v212);
        sub_237C05DFC();
        OUTLINED_FUNCTION_58_7(v255);
        v213 = v222;
        sub_237C05DFC();
        v214 = v221[1];
        sub_237B0CBBC();
        v211(v223, v201);
        OUTLINED_FUNCTION_50_13();
        v211(a10, v201);
        v211(v213, v201);
        OUTLINED_FUNCTION_1_76();
        sub_237B81EC0();
        v215 = OUTLINED_FUNCTION_32_16();
        sub_2379D9054(v215, v216, v217);
        v218 = OUTLINED_FUNCTION_5_61();
        v219(v218);
        OUTLINED_FUNCTION_7_46();
        v220 = v221[0];
        sub_237B81F14(v214, v221[0]);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_80();
        OUTLINED_FUNCTION_61_8();
        sub_2379DC1F8(v220, v251 + v243);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237B7E7C4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for AnyTreeClassifierModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237AE3610(v6);
}

uint64_t MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_20(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  LOBYTE(v15) = *(a1 + 8);
  v21 = *a1;
  LOBYTE(v22) = v15;
  sub_237A70ED4(&v21, v16);
  sub_237B7D020(a5, &v21);
  MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v16, a2, a3, a4, &v21, v17, v18, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return sub_237B7E76C(a5);
}

void MLBoostedTreeClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v104 = v0;
  v113 = v1;
  v3 = v2;
  v94 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v94);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v8);
  v9 = sub_237C071DC();
  v110 = OUTLINED_FUNCTION_0(v9);
  v111 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_14_0();
  v101 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v109 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v102 = v17;
  v108 = type metadata accessor for AnyTreeClassifier();
  v18 = OUTLINED_FUNCTION_4(v108);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v91 - v24;
  v26 = type metadata accessor for AnyTreeClassifierModel();
  v27 = OUTLINED_FUNCTION_1(v26);
  v98 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_134();
  v100 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  v97 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v103 = v35;
  v96 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v99 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = &v91 - v45;
  v47 = type metadata accessor for MLBoostedTreeClassifier();
  v48 = (v3 + *(v47 + 36));
  sub_237C06FAC();
  v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v50 = v48 + *(v49 + 20);
  sub_2379E51D0();
  v51 = *(v49 + 24);
  sub_2379E5C70();
  (*(v41 + 8))(v46, v39);
  *v48 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v107 = v48;
  swift_storeEnumTagMultiPayload();
  v91 = v47;
  v52 = *(v47 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v53 = swift_allocError();
  *v54 = 0xD0000000000000C0;
  v54[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v53, v54);
  *(v3 + v52) = v55;
  swift_storeEnumTagMultiPayload();
  v56 = *(v113 + *(type metadata accessor for MLCheckpoint() + 20));
  v106 = v52;
  switch(v56)
  {
    case 2:

      goto LABEL_4;
    default:
      v57 = sub_237C0929C();

      if (v57)
      {
LABEL_4:
        v105 = v23;
        v95 = v3;
        sub_237AE1948(MEMORY[0x277D84FA0]);
        v59 = v58;
        v60 = v102;
        sub_237C071CC();
        *v25 = 0;
        *(v25 + 1) = 0xE000000000000000;
        v61 = MEMORY[0x277D84F90];
        *(v25 + 2) = MEMORY[0x277D84F90];
        v62 = v104;
        sub_237AE1458(v59);
        v64 = v63;

        v112[0] = v64;

        sub_237AE69B4();
        if (v62)
        {

          __break(1u);
          JUMPOUT(0x237B7F35CLL);
        }

        v65 = v111;
        *(v25 + 3) = v112[0];
        v25[32] = 0;
        *(v25 + 5) = v61;
        *(v25 + 6) = 0xD000000000000013;
        *(v25 + 7) = 0x8000000237C17BE0;
        v66 = v110;
        v104 = *(v65 + 16);
        v104(v109, v60, v110);
        v67 = &v25[*(v108 + 32)];
        sub_237C06D7C();
        v68 = *(v65 + 8);
        v111 = v65 + 8;
        v68(v60, v66);
        sub_237AE6A00();
        v69 = v103;
        sub_237C0743C();
        OUTLINED_FUNCTION_0_80();
        sub_237B81EC0();
        v72 = v95;
        v73 = v99;
        sub_237B81F14(v69, v99);
        OUTLINED_FUNCTION_3_76();
        v74 = v97;
        sub_237B81AA0(v73, v97);
        v75 = (*(v98 + 80) + 16) & ~*(v98 + 80);
        v76 = swift_allocObject();
        sub_237B81F14(v74, v76 + v75);
        sub_2379DD56C();
        v78 = v77;

        v79 = v91;
        *(v72 + v91[5]) = v78;
        OUTLINED_FUNCTION_3_76();
        sub_237B81AA0(v73, v72);
        v80 = v93;
        *v93 = 0;
        *(v80 + 8) = 0;
        *(v80 + 16) = 256;
        v81 = v94;
        swift_storeEnumTagMultiPayload();
        v82 = v72 + v79[8];
        *v82 = 0u;
        *(v82 + 16) = 0u;
        *(v82 + 32) = xmmword_237C0BF20;
        *(v82 + 48) = xmmword_237C0BF30;
        *(v82 + 64) = 42;
        *(v82 + 72) = 0x3FD3333333333333;
        *(v82 + 80) = 0;
        *(v82 + 88) = 1;
        __asm { FMOV            V0.2D, #1.0 }

        *(v82 + 96) = _Q0;
        v88 = v92;
        sub_237B81AA0(v80, v92);
        v112[3] = v81;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v112);
        sub_237B81F14(v88, boxed_opaque_existential_0);
        OUTLINED_FUNCTION_6_59();
        sub_237B81EC0();
        sub_2379DAE54(v112, v82);
        v90 = (v72 + v79[6]);
        *v90 = 0;
        v90[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_12_43();
        sub_237B81EC0();
        OUTLINED_FUNCTION_1_76();
        sub_237B81EC0();
        *(v72 + v79[7]) = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v70 = swift_allocError();
        *v71 = 0xD000000000000042;
        v71[1] = 0x8000000237C1DA40;
        OUTLINED_FUNCTION_23_3(v70, v71);
        swift_willThrow();
        OUTLINED_FUNCTION_12_43();
        sub_237B81EC0();
        sub_237B81EC0();
        sub_237B81EC0();
      }

      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v1 + 8);
  v16 = *v1;
  v17 = v11;
  sub_2379DBCF4(v16, v11);
  sub_237A70ED4(&v16, v10);
  static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (v0)
  {
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v13 = v12;
    (*(v5 + 8))(v10, v2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7B8, &qword_237C14B18);
    v15 = OUTLINED_FUNCTION_91(v14);
    sub_237BECD04(v15, v13);
  }

  OUTLINED_FUNCTION_73();
}

{
  static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v0)
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7B8, &qword_237C14B18);
    v4 = OUTLINED_FUNCTION_91(v3);
    sub_237BECD04(v4, v2);
  }
}

void static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = *(v0 + 8);
  v11 = *v0;
  v12 = v10;
  sub_2379DBCF4(v11, v10);
  sub_237A70ED4(&v11, v9);
  static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v48 = v1;
  v3 = v2;
  v50 = v4;
  v47 = v5;
  v46 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v14);
  v15 = sub_237C071DC();
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v19 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  v49 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  v30 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  v33 = v43 - v32;
  v34 = v3;
  sub_2379E9068(v3, &v54, &qword_27DE9A998, &unk_237C0C100);
  if (v55)
  {
    v35 = *(v23 + 48);
    sub_2379DAD24(&v54, &v51);
    swift_dynamicCast();
    sub_2379EA3A8(v33, &v33[v35], v8);
    OUTLINED_FUNCTION_6_59();
    sub_237B81EC0();
    if (!v0)
    {
      sub_2379E9068(v33, v30, &qword_27DE9ADC0, &unk_237C0BF40);
      v43[1] = *(v23 + 48);
      sub_2379E9068(v33, v49, &qword_27DE9ADC0, &unk_237C0BF40);
      v56 = *(v23 + 48);
      sub_237B7D020(v34, &v51);

      sub_237C071CC();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C070DC();
      sub_237C071BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_237B7E76C(&v51);
      OUTLINED_FUNCTION_2_74();
      v36 = v45;
      sub_237B81AA0(v48, v45);
      v37 = type metadata accessor for TreeClassifierTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v37);
      sub_237A6A6F8();
      OUTLINED_FUNCTION_46();
      v38 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v38);
      v40 = (*(v39 + 8))(v49);
      OUTLINED_FUNCTION_64_0(v40, &qword_27DE9A9A0, &qword_237C0BF60);
      v52 = v37;
      v53 = &off_284AC2A08;
      *&v51 = v36;
      OUTLINED_FUNCTION_2_74();
      v41 = v44;
      sub_237B81AA0(v48, v44);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7C0, &qword_237C14B20);
      OUTLINED_FUNCTION_91(v42);

      sub_2379E4398(&v51, v41, 5);
      sub_2379D9054(v33, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLBoostedTreeClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7B8, &qword_237C14B18);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BECD04(v3, a1);
}

void static MLBoostedTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  OUTLINED_FUNCTION_2_74();
  sub_237B81AA0(a1, v11);
  v12 = type metadata accessor for TreeClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v12);
  v13 = sub_237A6A5D0();
  if (!v1)
  {
    v16[3] = v12;
    v16[4] = &off_284AC2A08;
    v16[0] = v13;
    OUTLINED_FUNCTION_2_74();
    sub_237B81AA0(a1, v9);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7C0, &qword_237C14B20);
    OUTLINED_FUNCTION_91(v14);
    sub_2379E4398(v16, v9, 5);
  }
}

uint64_t sub_237B7FC24(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7D8, &qword_237C14BE8);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14 - 8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v28[-v20 - 8];
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    a4(v15);
    return sub_2379D9054(v15, &qword_27DE9D7D8, &qword_237C14BE8);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeClassifierTrainingSessionDelegate();
    swift_dynamicCast();
    v24 = v27;
    v25 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a4;
    v26[6] = a5;

    sub_237BBAEC8(0, 0, v21, &unk_237C14BF8, v26);
  }
}

uint64_t sub_237B7FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7D8, &qword_237C14BE8);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B7FECC, 0, 0);
}

uint64_t sub_237B7FECC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_237B7FF6C;
  v3 = v0[6];
  v4 = v0[2];

  return sub_237B80244();
}

uint64_t sub_237B7FF6C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B80068()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_37_0();
  sub_237AE7128(v4, v5, &qword_27DE9D7D8, &qword_237C14BE8);
  v6 = v0[8];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  sub_237AE7128(v0[7], v6, &qword_27DE9D7D8, &qword_237C14BE8);
  v9(v6);
  sub_2379D9054(v6, &qword_27DE9D7D8, &qword_237C14BE8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_237B8015C()
{
  v1 = v0[5];
  *v0[7] = v0[10];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_237AE7128(v0[7], v2, &qword_27DE9D7D8, &qword_237C14BE8);
  v5(v2);
  sub_2379D9054(v2, &qword_27DE9D7D8, &qword_237C14BE8);

  OUTLINED_FUNCTION_8();

  return v6();
}

uint64_t sub_237B80244()
{
  OUTLINED_FUNCTION_9();
  v0[42] = v1;
  v0[43] = v2;
  v3 = type metadata accessor for AnyClassificationMetrics();
  v0[44] = v3;
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64) + 15;
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v9 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[49] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[50] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[51] = v13;
  v15 = *(v14 + 64);
  v0[52] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  v0[53] = OUTLINED_FUNCTION_19();
  v19 = type metadata accessor for MLBoostedTreeClassifier();
  v0[54] = v19;
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64) + 15;
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  v0[57] = OUTLINED_FUNCTION_19();
  v25 = sub_237C071DC();
  v0[58] = v25;
  OUTLINED_FUNCTION_1(v25);
  v0[59] = v26;
  v28 = *(v27 + 64);
  v0[60] = OUTLINED_FUNCTION_19();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v29);
  v31 = *(v30 + 64);
  v0[61] = OUTLINED_FUNCTION_19();
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v0[62] = v32;
  OUTLINED_FUNCTION_20(v32);
  v34 = *(v33 + 64);
  v0[63] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_237B804BC()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 344);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 496);
  v6 = *(v0 + 504);
  v8 = *(v0 + 480);
  v9 = *(v0 + 464);
  v10 = *(v0 + 472);
  v11 = *(v0 + 456);
  v12 = *(v0 + 424);
  v13 = *(v0 + 344);
  sub_237B81F14(*(v0 + 488), v6);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379E9068(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237A8F498(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v15 = v14[1];
  v36 = *v14;
  *(v0 + 512) = v15;
  v16 = *(v6 + v7[7]);
  *(v0 + 520) = v16;
  v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v13 + v17, v12, &qword_27DE9BC78, &qword_237C0EBD0);
  v18 = type metadata accessor for AnyTreeClassifierModel();
  result = __swift_getEnumTagSinglePayload(v12, 1, v18);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 432);
  v19 = *(v0 + 440);
  v22 = *(v0 + 408);
  v21 = *(v0 + 416);
  v23 = *(v0 + 400);
  sub_237B7D020(v0 + 16, v0 + 128);
  v24 = v20[9];
  *(v0 + 560) = v24;
  v25 = (v19 + v24);

  sub_237C06FAC();
  v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v27 = v25 + *(v26 + 20);
  sub_2379E51D0();
  v28 = v25 + *(v26 + 24);
  sub_2379E5C70();
  (*(v22 + 8))(v21, v23);
  *v25 = 0;
  *(v0 + 528) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v29 = v20[10];
  *(v0 + 564) = v29;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v30 = swift_allocError();
  *v31 = 0xD0000000000000C0;
  v31[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v30, v31);
  *(v19 + v29) = v32;
  swift_storeEnumTagMultiPayload();
  *(v19 + v20[7]) = v16;
  v33 = (v19 + v20[6]);
  *v33 = v36;
  v33[1] = v15;
  v34 = swift_task_alloc();
  *(v0 + 536) = v34;
  *v34 = v0;
  v34[1] = sub_237B807FC;
  v35 = *(v0 + 424);

  return sub_237B919A4();
}

uint64_t sub_237B807FC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 536);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 544) = v0;

  if (!v0)
  {
    *(v5 + 552) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237B8090C()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[48];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  *(v2 + *(v4 + 20)) = v0[69];
  OUTLINED_FUNCTION_21_31();
  sub_237B81F14(v9, v2);
  memcpy((v2 + *(v4 + 32)), v0 + 16, 0x70uLL);
  sub_237B81F14(v2, v1);
  sub_237B81F14(v1, v8);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v7 + v10, v5, &qword_27DE9BC88, &unk_237C11AF0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[66];
    v13 = v0[54];
    v15 = v0[48];
    v14 = v0[49];
    v16 = v0[47];
    v18 = v0[43];
    v17 = v0[44];
    v19 = v0[42];
    sub_237B7E76C((v0 + 2));
    OUTLINED_FUNCTION_7_46();
    sub_237B81F14(v15, v14);
    OUTLINED_FUNCTION_37_0();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v14, v19 + *(v13 + 36));
    v20 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v18 + v20, v16, &qword_27DE9BC88, &unk_237C11AF0);

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      v21 = v0[63];
      v22 = v0[47];
      OUTLINED_FUNCTION_13_36();
      sub_237B81EC0();
      sub_2379D9054(v22, &qword_27DE9BC88, &unk_237C11AF0);
    }

    else
    {
      v23 = v0[66];
      v24 = v0[63];
      v25 = v0[54];
      v26 = v0[46];
      v27 = v0[45];
      v28 = v0[42];
      sub_237B81F14(v0[47], v26);
      sub_237B81F14(v26, v27);
      v29 = *(v25 + 40);
      sub_237B81EC0();
      sub_237B81F14(v27, v28 + v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_36();
      sub_237B81EC0();
    }

    v30 = v0[63];
    v31 = v0[60];
    v32 = v0[61];
    v34 = v0[56];
    v33 = v0[57];
    v35 = v0[55];
    v37 = v0[52];
    v36 = v0[53];
    v39 = v0[48];
    v38 = v0[49];
    v41 = v0[47];
    v42 = v0[46];
    v43 = v0[45];

    OUTLINED_FUNCTION_8();

    return v40();
  }

  return result;
}

uint64_t sub_237B80C3C()
{
  v1 = *(v0 + 564);
  v2 = *(v0 + 560);
  v3 = *(v0 + 520);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = *(v0 + 488);
  v13 = *(v0 + 480);
  v14 = *(v0 + 456);
  v7 = *(v0 + 440);
  v8 = *(v0 + 424);
  v15 = *(v0 + 448);
  v16 = *(v0 + 416);
  v17 = *(v0 + 392);
  v18 = *(v0 + 384);
  v19 = *(v0 + 376);
  v20 = *(v0 + 368);
  v21 = *(v0 + 360);
  v9 = *(v0 + 344);
  sub_237B7E76C(v0 + 128);
  OUTLINED_FUNCTION_1_76();
  sub_237B81EC0();

  sub_237B81EC0();
  sub_237B81EC0();

  sub_237B7E76C(v0 + 16);
  OUTLINED_FUNCTION_13_36();
  sub_237B81EC0();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 544);

  return v10();
}

void MLBoostedTreeClassifier.predictions(from:)()
{
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v9 = *(v0 + *(type metadata accessor for MLBoostedTreeClassifier() + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    OUTLINED_FUNCTION_11();
    sub_237A5DEEC(v10);
    v11 = *v0;
    v12 = v0[1];
    sub_237C05DFC();
    (*(v6 + 8))(v2, v3);
  }
}

uint64_t MLBoostedTreeClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v6 = sub_237C05DBC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v12 = sub_237C0602C();
  v13 = OUTLINED_FUNCTION_20(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v16 = *(a1 + 8);
  v18 = *a1;
  v19 = v16;
  sub_2379DBCF4(v18, v16);
  sub_237A70ED4(&v18, v3);
  MLBoostedTreeClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v9 + 8))(v3, v6);
  }

  (*(v9 + 8))(v3, v6);
  return sub_237A72900(v4, 1, v1);
}

uint64_t MLBoostedTreeClassifier.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for AnyClassificationMetrics();
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v9 = type metadata accessor for MLBoostedTreeClassifier();
  v10 = *(v2 + *(v9 + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v12 = (v2 + *(v9 + 24));
  v13 = v12[1];
  *(inited + 32) = *v12;
  *(inited + 40) = v13;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A5EF84(a1, v3);
  OUTLINED_FUNCTION_7_46();
  sub_237B81F14(v3, v1);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(a1 + 8);
  v13 = *a1;
  v14 = v11;
  sub_2379DBCF4(v13, v11);
  sub_237A70ED4(&v13, v10);
  MLBoostedTreeClassifier.evaluation(on:)(v10);
  return (*(v5 + 8))(v10, v2);
}

void MLBoostedTreeClassifier.write(to:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v70 = v20;
  v25 = v24;
  v26 = type metadata accessor for AnyTreeClassifierModel();
  v27 = OUTLINED_FUNCTION_20(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = sub_237C07F1C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = sub_237C05ADC();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_0();
  v46 = v25;
  v49 = v48 - v47;
  memcpy(v69, v46, 0x48uLL);
  sub_2379F25FC();
  if (!v21)
  {
    v62 = v36;
    OUTLINED_FUNCTION_3_76();
    sub_237B81AA0(v70, v32);
    v50 = *(&v69[0] + 1);
    if (*(&v69[0] + 1))
    {
      v51 = *&v69[0];
      v52 = *(&v69[1] + 1);
      v53 = *&v69[1];
      v54 = v69[2];
      v55 = *(&v69[3] + 1);
      v56 = *&v69[3];
      v57 = *&v69[4];
    }

    else
    {
      v58 = v49;
      v59 = NSFullUserName();
      v51 = sub_237C086EC();
      v50 = v60;

      v49 = v58;
      v57 = 0;
      v52 = 0x8000000237C17C90;
      v53 = 0xD000000000000033;
      v54 = 0uLL;
      v55 = 0xE100000000000000;
      v56 = 49;
    }

    v64[0] = v51;
    v64[1] = v50;
    v64[2] = v53;
    v64[3] = v52;
    v65 = v54;
    v66 = v56;
    v67 = v55;
    v68 = v57;
    sub_2379E9068(v69, &v63, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB398(v64);
    OUTLINED_FUNCTION_1_76();
    sub_237B81EC0();
    sub_2379FC064(v64);
    sub_237C07E5C();
    (*(v62 + 8))(v41, v33);
    OUTLINED_FUNCTION_36_3(&a12);
    v61(v49, v42);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLBoostedTreeClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v35 = v4;
  v36 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = sub_237C05ADC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  memcpy(v37, v6, sizeof(v37));
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v10 + 104))(v3, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLBoostedTreeClassifier.write(to:metadata:)(v27, v37, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8]);
  (*(v22 + 8))(v27, v19);
  OUTLINED_FUNCTION_73();
}

unint64_t MLBoostedTreeClassifier.debugDescription.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v7 = type metadata accessor for MLBoostedTreeClassifier();
  v8 = v0 + v7[8];
  v9 = MLBoostedTreeClassifier.ModelParameters.description.getter();
  v11 = v10;
  v12 = v2 + v7[9];
  v13 = MLClassifierMetrics.description.getter();
  v15 = v14;
  sub_237B81AA0(v2 + v7[10], v1);
  LODWORD(v7) = swift_getEnumCaseMultiPayload();
  sub_237B81EC0();
  v16 = MLClassifierMetrics.description.getter();
  v18 = v17;
  MEMORY[0x2383DC360](v9, v11);

  MEMORY[0x2383DC360](v13, v15);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v7 <= 1)
  {
    MEMORY[0x2383DC360](v16, v18);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD000000000000022;
}

id MLBoostedTreeClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLBoostedTreeClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B819E4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for AnyTreeClassifierModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237AE42C4(v6);
}

uint64_t sub_237B81AA0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

id sub_237B81AF8@<X0>(void *a1@<X8>)
{
  result = MLBoostedTreeClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B81B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for AnyTreeClassifierModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLClassifierMetrics(0);
    v8 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_237B81C1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87();
  result = type metadata accessor for AnyTreeClassifierModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for MLClassifierMetrics(0);
    v10 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_237B81CE4()
{
  type metadata accessor for AnyTreeClassifierModel();
  if (v0 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MLClassifierMetrics(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237B81DB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237B81E00(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237B7FE10(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237B81EC0()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237B81F14(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_61()
{
  v2 = *(*(v1 - 336) + 8);
  result = v0;
  v4 = *(v1 - 328);
  return result;
}

void OUTLINED_FUNCTION_16_29()
{
  v1 = *(v0 - 304);
  v2 = *(v0 - 376);
  v3 = *(v0 - 416);
}

uint64_t OUTLINED_FUNCTION_22_29@<X0>(uint64_t a1@<X8>)
{

  return sub_237B81AA0(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_47_16(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 400) + *(v3 - 432);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_50_13()
{
  v2 = *(v0 - 296);

  return sub_237B7E76C(v2);
}

uint64_t OUTLINED_FUNCTION_59_9()
{
  v2 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_60_12()
{
  v2 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_61_8()
{
  v2 = *(v0 - 424);

  return sub_237B81EC0();
}

uint64_t sub_237B82140(uint64_t a1)
{
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v52 = (v8 - v9);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v14 = v16;
  v17 = *(v15 + 64);
  OUTLINED_FUNCTION_119_0();
  v48 = v18;
  v19 = a1 + v18;
  v53 = v15 - 8;
  v47 = (v15 + 16);
  v20 = *(v15 + 56);
  v50 = 0x8000000237C1DAE0;
  v56 = MEMORY[0x277D84F90];
  v55 = xmmword_237C0B660;
  v51 = v12;
  v49 = v2;
  do
  {
    v14(v12, v19, v2);
    v21 = sub_237C059EC();
    v22 = CGImageSourceCreateWithURL(v21, 0);

    if (v22 && (v23 = CGImageSourceCopyPropertiesAtIndex(v22, 0, 0), v22, v23))
    {

      v14(v52, v12, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v56 + 16);
        sub_237BC0BF0();
        v56 = v44;
      }

      v25 = *(v56 + 16);
      v24 = *(v56 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_106(v24);
        sub_237BC0BF0();
        v56 = v45;
      }

      v26 = OUTLINED_FUNCTION_30_21();
      v27(v26);
      v28 = v56;
      *(v56 + 16) = v25 + 1;
      (*v47)(v28 + v48 + v25 * v20, v52, v2);
    }

    else
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_237C08EDC();

      v57 = 0xD00000000000001BLL;
      v58 = v50;
      v29 = sub_237C05A9C();
      MEMORY[0x2383DC360](v29);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v30 = v14;
      v31 = v15;
      v32 = v20;
      v33 = v57;
      v34 = v58;
      v54 = sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_34_18(v35);
      v36 = MEMORY[0x277D837D0];
      v37[7] = MEMORY[0x277D837D0];
      v37[4] = v33;
      v37[5] = v34;

      OUTLINED_FUNCTION_22_30();
      sub_237C0939C();

      sub_2379F5634();
      v38 = sub_237C08CFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_34_18(v39);
      *(v40 + 56) = v36;
      v39[4].n128_u64[0] = sub_237A8E8E4();
      v39[2].n128_u64[0] = v33;
      v39[2].n128_u64[1] = v34;
      v15 = v31;
      v14 = v30;
      v2 = v49;
      v12 = v51;
      v20 = v32;
      sub_237C0826C();

      v41 = OUTLINED_FUNCTION_30_21();
      v42(v41);
    }

    v19 += v20;
    --v13;
  }

  while (v13);
  return v56;
}

void sub_237B82504()
{
  OUTLINED_FUNCTION_74();
  v142 = v0;
  *&v155 = v3;
  v154 = sub_237C0825C();
  v4 = OUTLINED_FUNCTION_0(v154);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_21();
  v13 = sub_237C05ADC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v148 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v145 = (v18 - v19);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v21);
  v158 = &v133 - v22;
  OUTLINED_FUNCTION_39_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v133 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v133 - v27;
  v29 = type metadata accessor for MLImageClassifier.DataSource();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237B855E8(v155, v34 - v33, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v45 = *v35;
      goto LABEL_64;
    }

    v37 = v148;
    v38 = *(v148 + 32);
    v38(v26, v35, v13);
    sub_237C0821C();
    v39 = v142;
    sub_237A5D608();
    v142 = v39;
    if (v39)
    {
      (*(v6 + 8))(v11, v154);
      (*(v37 + 8))(v26, v13);
LABEL_64:
      OUTLINED_FUNCTION_73();
      return;
    }

    v46 = v40;
    v144 = v38;
    v1 = v11;
    v28 = v26;
  }

  else
  {
    v41 = v148;
    v42 = *(v148 + 32);
    v42(v28, v35, v13);
    sub_237C0821C();
    v43 = v142;
    sub_237A5C58C();
    v142 = v43;
    if (v43)
    {
      (*(v6 + 8))(v1, v154);
      (*(v41 + 8))(v28, v13);
      goto LABEL_64;
    }

    v144 = v42;
    v46 = v44;
  }

  (*(v6 + 8))(v1, v154);
  v153 = *(v148 + 8);
  v154 = v148 + 8;
  v153(v28, v13);
  v47 = *(v46 + 64);
  v48 = *(v46 + 32);
  OUTLINED_FUNCTION_5_33();
  v51 = v50 & v49;
  *&v155 = (v52 + 63) >> 6;
  v141 = v46;
  swift_bridgeObjectRetain_n();
  v53 = v46 + 64;
  v54 = 0;
  v55 = MEMORY[0x277D84F90];
  v56 = v158;
  v140 = v46 + 64;
  do
  {
    while (1)
    {
      if (!v51)
      {
        while (1)
        {
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_67;
          }

          if (v57 >= v155)
          {
            goto LABEL_27;
          }

          v51 = *(v53 + 8 * v57);
          ++v54;
          if (v51)
          {
            v54 = v57;
            break;
          }
        }
      }

      v58 = (v54 << 9) | (8 * __clz(__rbit64(v51)));
      v59 = *(*(v141 + 56) + v58);
      v60 = *(v59 + 16);
      v61 = *(v55 + 16);
      if (__OFADD__(v61, v60))
      {
        goto LABEL_70;
      }

      v62 = *(*(v141 + 56) + v58);

      if (!swift_isUniquelyReferenced_nonNull_native() || v61 + v60 > *(v55 + 24) >> 1)
      {
        sub_237BC0BF0();
        v55 = v63;
      }

      v51 &= v51 - 1;
      if (!*(v59 + 16))
      {
        break;
      }

      v64 = *(v55 + 16);
      if ((*(v55 + 24) >> 1) - v64 < v60)
      {
        goto LABEL_71;
      }

      v65 = v55 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v64;
      swift_arrayInitWithCopy();

      v56 = v158;
      v53 = v140;
      if (v60)
      {
        v66 = *(v55 + 16);
        v67 = __OFADD__(v66, v60);
        v68 = v66 + v60;
        if (v67)
        {
          goto LABEL_72;
        }

        *(v55 + 16) = v68;
      }
    }

    v56 = v158;
    v53 = v140;
  }

  while (!v60);
  __break(1u);
LABEL_27:
  v69 = v141;

  sub_237B82140(v55);

  sub_237B43384();
  v71 = v70;
  v72 = 0;
  v73 = 1 << *(v69 + 32);
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(v69 + 64);
  v76 = (v73 + 63) >> 6;
  v77 = v148;
  *&v155 = v148 + 16;
  v152 = v70 + 56;
  v143 = v148 + 32;
  v78 = MEMORY[0x277D84F98];
  v134 = v76;
LABEL_31:
  v139 = v78;
  if (v75)
  {
    v79 = v72;
LABEL_36:
    v138 = (v75 - 1) & v75;
    v137 = v79;
    v80 = __clz(__rbit64(v75)) | (v79 << 6);
    v81 = *(v141 + 56);
    v82 = (*(v141 + 48) + 16 * v80);
    v83 = v82[1];
    v135 = *v82;
    v84 = *(v81 + 8 * v80);
    v149 = *(v84 + 16);
    v136 = v83;

    v85 = 0;
    v146 = v84;
    v147 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v85 == v149)
      {

        v101 = v139;
        swift_isUniquelyReferenced_nonNull_native();
        v156 = v101;
        sub_237B40B0C();

        v78 = v156;
        v72 = v137;
        v76 = v134;
        v75 = v138;
        goto LABEL_31;
      }

      if (v85 >= *(v84 + 16))
      {
        break;
      }

      v86 = *(v77 + 80);
      OUTLINED_FUNCTION_119_0();
      v151 = v87;
      v88 = *(v77 + 72);
      v89 = *(v77 + 16);
      v89(v56, v84 + v87 + v88 * v85++, v13);
      if (*(v71 + 16))
      {
        v150 = v85;
        v90 = *(v71 + 40);
        sub_237B85440(&qword_27DE9C210);
        v91 = sub_237C0861C();
        v92 = ~(-1 << *(v71 + 32));
        do
        {
          v93 = v91 & v92;
          if (((*(v152 + (((v91 & v92) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v91 & v92)) & 1) == 0)
          {
            v77 = v148;
            v56 = v158;
            v84 = v146;
            v85 = v150;
            goto LABEL_49;
          }

          v89(v2, *(v71 + 48) + v93 * v88, v13);
          sub_237B85440(&qword_27DE9C860);
          v94 = sub_237C0867C();
          v153(v2, v13);
          v91 = v93 + 1;
        }

        while ((v94 & 1) == 0);
        v56 = v158;
        v144(v145, v158, v13);
        v95 = v147;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v95;
        v156 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_237AC8AF4(0, *(v95 + 16) + 1, 1);
          v97 = v156;
        }

        v77 = v148;
        v85 = v150;
        v99 = *(v97 + 16);
        v98 = *(v97 + 24);
        if (v99 >= v98 >> 1)
        {
          v100 = OUTLINED_FUNCTION_106(v98);
          sub_237AC8AF4(v100, v99 + 1, 1);
          v85 = v150;
          v97 = v156;
        }

        *(v97 + 16) = v99 + 1;
        v147 = v97;
        v144(v97 + v151 + v99 * v88, v145, v13);
        v84 = v146;
      }

      else
      {
LABEL_49:
        v153(v56, v13);
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  while (1)
  {
    v79 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v79 >= v76)
    {

      v102 = v142;
      v103 = sub_237B85484(v78);
      v142 = v102;
      v105 = v103 + 8;
      v104 = v103[8];
      v106 = *(v103 + 32);
      OUTLINED_FUNCTION_5_33();
      v109 = v108 & v107;
      v111 = (v110 + 63) >> 6;
      v153 = 0x8000000237C1A100;
      v154 = v112;

      v113 = 0;
      v155 = xmmword_237C0B660;
      if (!v109)
      {
        goto LABEL_53;
      }

      do
      {
        v114 = v113;
LABEL_57:
        OUTLINED_FUNCTION_26_23(v114);
        v116 = *v115;
        v117 = v115[1];
        v109 &= v109 - 1;
        v156 = 0;
        v157 = 0xE000000000000000;

        sub_237C08EDC();

        v156 = 0xD000000000000019;
        v157 = v153;
        MEMORY[0x2383DC360](v116, v117);

        MEMORY[0x2383DC360](11815, 0xE200000000000000);
        v119 = v156;
        v118 = v157;
        sub_237C08C3C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
        v120 = swift_allocObject();
        OUTLINED_FUNCTION_34_18(v120);
        v121 = MEMORY[0x277D837D0];
        v122[7] = MEMORY[0x277D837D0];
        v122[4] = v119;
        v122[5] = v118;

        OUTLINED_FUNCTION_22_30();
        sub_237C0939C();

        sub_2379F5634();
        v123 = sub_237C08CFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
        v124 = swift_allocObject();
        OUTLINED_FUNCTION_34_18(v124);
        *(v125 + 56) = v121;
        v124[4].n128_u64[0] = sub_237A8E8E4();
        v124[2].n128_u64[0] = v119;
        v124[2].n128_u64[1] = v118;
        sub_237C0826C();
      }

      while (v109);
LABEL_53:
      while (1)
      {
        v114 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_69;
        }

        if (v114 >= v111)
        {
          v126 = v154;

          if (*(v126 + 16))
          {

            v127 = 0xE000000000000000;
            v156 = 0;
            v157 = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C1CD60);
            v128 = sub_237B3B28C(v126);
            if (v129)
            {
              v127 = v129;
            }

            else
            {
              v128 = 0;
            }

            MEMORY[0x2383DC360](v128, v127);

            MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C1CD80);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
            v130 = sub_237C085CC();
            MEMORY[0x2383DC360](v130);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            sub_2379E8AF0();
            v131 = swift_allocError();
            OUTLINED_FUNCTION_25_27(v131, v132);
          }

          else
          {
          }

          goto LABEL_64;
        }

        v109 = v105[v114];
        ++v113;
        if (v109)
        {
          v113 = v114;
          goto LABEL_57;
        }
      }
    }

    v75 = *(v140 + 8 * v79);
    ++v72;
    if (v75)
    {
      goto LABEL_36;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void sub_237B830A8()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v45 = v2;
  v55 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v55);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v54 = v9 - v8;
  v10 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v11 = sub_237BA2F3C(v1);
  v12 = v11;
  v50 = *(v11 + 16);
  if (v50)
  {
    v13 = 0;
    v49 = v11 + 32;
    v53 = (v5 + 8);
    v48 = v1;
    v47 = v5;
    v46 = v11;
    while (v13 < *(v12 + 16))
    {
      v14 = (v49 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(v1 + 16);

      v52 = v15;
      v57 = v16;
      if (v17 && (v18 = sub_237ACAC78(v16, v15), (v19 & 1) != 0))
      {
        v20 = *(*(v1 + 56) + 8 * v18);
      }

      else
      {
        v20 = v10;
      }

      v21 = *(v20 + 16);
      if (v21)
      {
        v51 = v13;
        sub_237AC8A74();
        v22 = v10;
        v23 = *(v5 + 80);
        OUTLINED_FUNCTION_119_0();
        v25 = v20 + v24;
        v56 = *(v5 + 72);
        v26 = *(v5 + 16);
        do
        {
          v26(v54, v25, v55);
          v27 = sub_237C05A9C();
          v29 = v28;
          (*v53)(v54, v55);
          v31 = *(v22 + 16);
          v30 = *(v22 + 24);
          if (v31 >= v30 >> 1)
          {
            OUTLINED_FUNCTION_106(v30);
            sub_237AC8A74();
          }

          *(v22 + 16) = v31 + 1;
          v32 = v22 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          v25 += v56;
          --v21;
        }

        while (v21);

        v1 = v48;
        v5 = v47;
        v10 = MEMORY[0x277D84F90];
        v12 = v46;
        v13 = v51;
      }

      else
      {

        v22 = v10;
      }

      v33 = *(v22 + 16);
      if (v33)
      {
        v34 = *(v22 + 16);
        v35 = sub_237C0898C();
        *(v35 + 16) = v33;
        v36 = v33 - 1;
        for (i = 32; ; i += 16)
        {
          v38 = (v35 + i);
          *v38 = v57;
          v38[1] = v52;
          if (!v36)
          {
            break;
          }

          --v36;
        }
      }

      else
      {

        v35 = v10;
      }

      ++v13;
      sub_237A96708(v35);
      sub_237A96708(v22);
      if (v13 == v50)
      {

        v39 = v59;
        v40 = v58;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 0x6C6562616CLL;
    *(inited + 40) = 0xE500000000000000;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    *(inited + 72) = v42;
    v43 = sub_237AB66E4();
    *(inited + 48) = v39;
    *(inited + 80) = v43;
    *(inited + 88) = 0x7461506567616D69;
    *(inited + 128) = v42;
    *(inited + 136) = v43;
    *(inited + 96) = 0xE900000000000068;
    *(inited + 104) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
    v44 = sub_237C085AC();
    MLDataTable.init(dictionary:)(v44, v45);
    OUTLINED_FUNCTION_73();
  }
}

void sub_237B834F8()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v256 = v4;
  v255 = sub_237C05DBC();
  v5 = OUTLINED_FUNCTION_0(v255);
  v254 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v250 = (&v248 - v13);
  v253 = sub_237C0825C();
  v14 = OUTLINED_FUNCTION_0(v253);
  v252 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v18);
  v257 = sub_237C05ADC();
  v19 = OUTLINED_FUNCTION_0(v257);
  v258 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v248 = v23 - v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v26);
  v249 = &v248 - v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  v251 = &v248 - v29;
  OUTLINED_FUNCTION_39_0();
  v31 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_31_21();
  v32 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_6_60();
  sub_237B855E8(v3, v38, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v73 = *(v258 + 32);
      OUTLINED_FUNCTION_35_17();
      v74();
      sub_237C0821C();
      sub_237A5C58C();
      if (!v0)
      {
        v143 = v75;
        OUTLINED_FUNCTION_9_47();
        OUTLINED_FUNCTION_34_7();
        v144();
        sub_237B830A8();

        OUTLINED_FUNCTION_15_39();
        v285 = v32;
        v286 = v143;
        OUTLINED_FUNCTION_5_62();
        OUTLINED_FUNCTION_7_47();
        v157 = OUTLINED_FUNCTION_36_4();
        sub_2379DBC9C(v157, v193);
        v194 = OUTLINED_FUNCTION_12_44();
        v195(v194);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_34_7();
      v76();
      v77 = OUTLINED_FUNCTION_12_44();
      v78(v77);
      goto LABEL_39;
    case 2u:
      v68 = *(v258 + 32);
      OUTLINED_FUNCTION_35_17();
      v69();
      sub_237C0821C();
      sub_237A5D608();
      if (!v0)
      {
        OUTLINED_FUNCTION_9_47();
        OUTLINED_FUNCTION_34_7();
        v124();
        sub_237B830A8();

        v285 = v259;
        v286 = v260;
        v154 = OUTLINED_FUNCTION_37_0();
        sub_2379DBCF4(v154, v155);
        OUTLINED_FUNCTION_7_47();
        v156 = OUTLINED_FUNCTION_37_0();
        sub_2379DBC9C(v156, v190);
        v191 = OUTLINED_FUNCTION_13_37();
        v192(v191);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_34_7();
      v70();
      v71 = OUTLINED_FUNCTION_13_37();
      v72(v71);
      goto LABEL_39;
    case 3u:
      sub_237A9A80C(v38);
      goto LABEL_12;
    case 4u:
      v54 = *(v38 + 8);
      v56 = *(v38 + 16);
      v55 = *(v38 + 24);
      v58 = *(v38 + 32);
      v57 = *(v38 + 40);
      v285 = *v38;
      v286 = v54;
      v259 = v285;
      LOBYTE(v260) = v54;
      v59 = OUTLINED_FUNCTION_58_0();
      sub_2379DBCF4(v59, v60);
      v61 = OUTLINED_FUNCTION_58_0();
      sub_2379DBCF4(v61, v62);
      sub_237B845E8(&v259, v56, v55, v58, v57);
      if (v0)
      {

        v63 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v63, v64);
        v65 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v65, v66);
        v67 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v67, v158);
        goto LABEL_39;
      }

      v96 = OUTLINED_FUNCTION_58_0();
      sub_2379DBC9C(v96, v97);
      sub_237B6C670(v98, v99, v100, v101, v102, v103, v104, v105, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
      OUTLINED_FUNCTION_8_45();
      sub_237B6DAB4();

      if ((v286 & 1) == 0)
      {
        v114 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v114, v115);
        sub_237B6C588();
        v116 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v116, v117);
      }

      sub_237B6C670(v106, v107, v108, v109, v110, v111, v112, v113, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      v118 = v285;
      if (v286)
      {
        v119 = v285;
        v120 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v120, v121);
        v122 = v118;
        v123 = 1;
      }

      else
      {
        v150 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v150, v151);
        sub_237B6C588();
        v152 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v152, v153);
        v122 = OUTLINED_FUNCTION_85();
      }

      goto LABEL_37;
    case 5u:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v80 = *(v38 + v79[12] + 8);

      v81 = *(v38 + v79[16] + 8);

      v82 = *(v38 + v79[20] + 8);

      (*(v254 + 8))(v38, v255);
LABEL_12:
      v83 = MEMORY[0x2383DDC00](0);
      if (!v83)
      {
        __break(1u);
        JUMPOUT(0x237B845CCLL);
      }

      v84 = v83;
      type metadata accessor for CMLTable();
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      type metadata accessor for _DataTable();
      swift_allocObject();
      v285 = sub_237B6C578(v85);
      v286 = 0;
      sub_237C08C1C();
      sub_237BABE74(0xD0000000000000A7, 0x8000000237C1DB00);
      goto LABEL_38;
    case 6u:
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      v87 = (v38 + *(v86 + 48));
      v89 = *v87;
      v88 = v87[1];
      v90 = (v38 + *(v86 + 64));
      v92 = *v90;
      v91 = v90[1];
      v93 = v254;
      v94 = v250;
      v95 = v255;
      (*(v254 + 32))(v250, v38, v255);
      (*(v93 + 16))(v11, v94, v95);
      sub_237A70684(v11, 0, &v259);
      if (v0)
      {
        (*(v93 + 8))(v94, v95);

        goto LABEL_39;
      }

      OUTLINED_FUNCTION_15_39();
      v285 = v94;
      v286 = v11;
      OUTLINED_FUNCTION_5_62();
      sub_237B845E8(&v259, v89, v88, v92, v91);
      v159 = OUTLINED_FUNCTION_36_4();
      sub_2379DBC9C(v159, v160);
      sub_237B6C670(v161, v162, v163, v164, v165, v166, v167, v168, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
      OUTLINED_FUNCTION_8_45();
      sub_237B6DAB4();

      if ((v286 & 1) == 0)
      {
        v177 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v177, v178);
        sub_237B6C588();
        v179 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v179, v180);
      }

      sub_237B6C670(v169, v170, v171, v172, v173, v174, v175, v176, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      v181 = v285;
      v182 = v286;
      if (v286)
      {
        v183 = v285;
      }

      else
      {
        v184 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v184, v185);
        sub_237B6C588();
      }

      v186 = OUTLINED_FUNCTION_27_17();
      v187(v186);
      v122 = v181;
      v123 = v182;
LABEL_37:
      sub_2379DBC9C(v122, v123);
      goto LABEL_38;
    default:
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v41 = v40[12];
      v42 = (v38 + v40[16]);
      v44 = *v42;
      v43 = v42[1];
      v254 = v44;
      v255 = v43;
      v45 = v38 + v40[20];
      v46 = *(v45 + 8);
      v253 = *v45;
      v47 = v258;
      v48 = *(v258 + 32);
      v49 = v251;
      v50 = v257;
      v48(v251, v38, v257);
      v51 = v38 + v41;
      v52 = v249;
      v48(v249, v51, v50);
      (*(v47 + 16))(v1, v52, v50);
      LOBYTE(v259) = 1;
      *(&v259 + 1) = *v284;
      HIDWORD(v259) = *&v284[3];
      v260 = 44;
      v261 = 0xE100000000000000;
      v262 = 0;
      v263 = 0xE000000000000000;
      v264 = 92;
      v265 = 0xE100000000000000;
      LOBYTE(v266) = 1;
      *(&v266 + 1) = *v283;
      HIDWORD(v266) = *&v283[3];
      v267 = 34;
      v268 = 0xE100000000000000;
      v269 = 1;
      *v270 = *v282;
      *&v270[3] = *&v282[3];
      v271 = &unk_284ABEBF0;
      v272 = 10;
      v273 = 0xE100000000000000;
      v274 = 0;
      v275 = 0;
      v276 = 1;
      *v277 = *v281;
      *&v277[3] = *&v281[3];
      v278 = 0;
      MLDataTable.init(contentsOf:options:)(v1, &v259, &v279);
      if (v0)
      {
        v53 = *(v47 + 8);
        v53(v52, v50);

        v53(v49, v50);
      }

      else
      {
        v287 = v46;
        v285 = v279;
        v286 = v280;
        v125 = v254;
        v126 = v255;
        MLDataTable.subscript.getter();
        OUTLINED_FUNCTION_15_39();
        if ((v50 & 1) != 0 || (v127 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v127, v128), sub_237A60248(&v279), v129 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v129, v130), v279 != 2))
        {

          v145 = OUTLINED_FUNCTION_36_4();
          sub_2379DBC9C(v145, v146);
          v259 = 0;
          v260 = 0xE000000000000000;
          sub_237C08EDC();

          v259 = 0x206E6D756C6F43;
          v260 = 0xE700000000000000;
          MEMORY[0x2383DC360](v125, v126);

          MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
          sub_2379E8AF0();
          v147 = swift_allocError();
          OUTLINED_FUNCTION_25_27(v147, v148);
          v149 = *(v47 + 8);
          v149(v52, v50);
          sub_2379DBC9C(v285, v286);
          v149(v251, v50);
        }

        else
        {
          v131 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v131, v132);
          sub_237A607E0(0, &v259);
          v133 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v133, v134);
          v135 = v259;
          v136 = v260;
          v252 = &v285;
          if (v261 != 2)
          {
            sub_2379E8CE8(v259, v260, v261);
            v135 = 0;
            v136 = 0xE000000000000000;
          }

          v259 = v135;
          v260 = v136;
          sub_237C0883C();
          sub_237C059BC();

          v137 = [objc_opt_self() defaultManager];
          sub_237C05A9C();
          v138 = sub_237C086BC();

          v139 = [v137 fileExistsAtPath_];

          if (v139)
          {
            v140 = v251;
            v141 = v287;
            v142 = v254;
          }

          else
          {
            v196 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v196, v197);
            v198 = OUTLINED_FUNCTION_88();
            v200 = sub_2379DFC10(v198, v199);
            MEMORY[0x28223BE20](v200);
            *(&v248 - 2) = v251;
            v201 = sub_2379E1FAC(sub_237B856CC, (&v248 - 4), v200);

            v259 = v201;
            MEMORY[0x28223BE20](v202);
            *(&v248 - 2) = &v259;
            v203 = sub_237BBDC94(sub_2379F5678);
            v205 = v204;

            sub_237B6C670(v206, v207, v208, v209, v210, v211, v212, v213, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
            v259 = v203;
            LOBYTE(v260) = v205 & 1;
            v142 = v254;
            sub_237B6CF70(&v259);
            sub_2379DBC9C(v259, v260);
            if ((v286 & 1) == 0)
            {
              v214 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v214, v215);
              sub_237B6C588();
              v216 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v216, v217);
            }

            v140 = v251;
            v141 = v287;
          }

          OUTLINED_FUNCTION_5_62();
          sub_237B845E8(&v259, v142, v126, v253, v141);
          v218 = OUTLINED_FUNCTION_36_4();
          sub_2379DBC9C(v218, v219);
          sub_237B6C670(v220, v221, v222, v223, v224, v225, v226, v227, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
          OUTLINED_FUNCTION_8_45();
          sub_237B6DAB4();

          if ((v286 & 1) == 0)
          {
            v236 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v236, v237);
            sub_237B6C588();
            v238 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v238, v239);
          }

          sub_237B6C670(v228, v229, v230, v231, v232, v233, v234, v235, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267);
          OUTLINED_FUNCTION_19_17();
          sub_237B6DAB4();

          v240 = v285;
          v241 = v286;
          if (v286)
          {
            v242 = v285;
          }

          else
          {
            v243 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v243, v244);
            sub_237B6C588();
          }

          sub_2379DBC9C(v252, 0);
          v245 = *(v47 + 8);
          v246 = OUTLINED_FUNCTION_32_17(&v281[4]);
          v245(v246);
          v247 = OUTLINED_FUNCTION_32_17(&v282[5]);
          v245(v247);
          sub_2379DBC9C(v240, v241);
          (v245)(v140, v50);
LABEL_38:
          v188 = v286;
          v189 = v256;
          *v256 = v285;
          *(v189 + 8) = v188;
        }
      }

LABEL_39:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B845E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  OUTLINED_FUNCTION_33_21();

  sub_2379F2B84();
  if (!v5)
  {
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_33_21();
    v13 = swift_initStackObject();
    OUTLINED_FUNCTION_21_32(v13, v14, v15, v16, v17, v18, v19, v20, v21);
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;

    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    v23 = swift_initStackObject();
    OUTLINED_FUNCTION_21_32(v23, v24, v25, v26, v27, v28, v29, v30, v31);
    *(v32 + 32) = a2;
    *(v32 + 40) = a3;
    OUTLINED_FUNCTION_33_21();

    OUTLINED_FUNCTION_42_5();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_33_21();
    v33 = swift_initStackObject();
    OUTLINED_FUNCTION_21_32(v33, v34, v35, v36, v37, v38, v39, v40, v41);
    *(v42 + 32) = a4;
    *(v42 + 40) = a5;

    OUTLINED_FUNCTION_42_5();
  }

  swift_setDeallocating();
  return sub_237B9082C();
}

uint64_t sub_237B84798@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_237C05A2C();
  v11 = sub_237C05A9C();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

void sub_237B84894()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v146 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v146);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v137 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D528, &qword_237C13D08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v152 = &v137 - v14;
  v15 = sub_237C05D1C();
  v150 = OUTLINED_FUNCTION_0(v15);
  v151 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_2_0();
  v149 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v22 = OUTLINED_FUNCTION_0(v21);
  v147 = v23;
  v148 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v137 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE9AA88, &unk_237C0B800);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = sub_237C05DBC();
  v31 = OUTLINED_FUNCTION_0(v30);
  v143 = v32;
  v144 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v44 = v43 - v42;
  OUTLINED_FUNCTION_6_60();
  sub_237B855E8(v3, v44, v45);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_237B834F8();
    v145 = v0;
    if (v0)
    {
      sub_237A9A80C(v44);
    }

    else
    {
      OUTLINED_FUNCTION_45_3();
      v77 = v153;
      v78 = BYTE8(v153);
      sub_2379DF938(v153, SBYTE8(v153), &v157);
      v79 = OUTLINED_FUNCTION_37_0();
      sub_2379DFAE0(v79, v80, v81);
      v82 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v82, v83);
      v84 = sub_2379DFC10(v153, SBYTE8(v153));
      sub_2379DF938(v77, v78, &v153);
      v85 = sub_2379DFC10(v153, SBYTE8(v153));
      v86 = *(v85 + 16);
      v141 = v77;
      v142 = v44;
      v140 = v84;
      LODWORD(v150) = v78;
      if (v86)
      {
        *&v153 = MEMORY[0x277D84F90];
        v87 = v85;
        sub_237AC8AF4(0, v86, 0);
        v88 = v153;
        v89 = (v87 + 40);
        do
        {
          v91 = *(v89 - 1);
          v90 = *v89;

          sub_237C059BC();

          *&v153 = v88;
          v93 = *(v88 + 16);
          v92 = *(v88 + 24);
          v94 = v88;
          if (v93 >= v92 >> 1)
          {
            v97 = OUTLINED_FUNCTION_106(v92);
            sub_237AC8AF4(v97, v93 + 1, 1);
            v94 = v153;
          }

          *(v94 + 16) = v93 + 1;
          v95 = *(v6 + 80);
          OUTLINED_FUNCTION_119_0();
          (*(v6 + 32))(v94 + v96 + *(v6 + 72) * v93, v11, v146);
          v89 += 2;
          --v86;
          v88 = v94;
        }

        while (v86);
        v137 = v94;

        v77 = v141;
        v44 = v142;
        LOBYTE(v78) = v150;
        v84 = v140;
      }

      else
      {

        v137 = MEMORY[0x277D84F90];
      }

      v139 = *(v84 + 16);
      if (v139)
      {
        v98 = 0;
        v138 = (v84 + 32);
        v151 = MEMORY[0x277D84F98];
        v149 = MEMORY[0x277D84F98];
        while (v98 < *(v84 + 16))
        {
          v152 = v98;
          v99 = &v138[16 * v98];
          v101 = *v99;
          v100 = v99[1];
          v157 = v77;
          v158 = v78;

          OUTLINED_FUNCTION_45_3();
          MLDataTable.subscript.getter();
          v102 = v155;
          v160 = v101;
          if (v156)
          {
            *&v153 = v155;
            v103 = v100;

            sub_2379DBCF4(v102, 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            v104 = sub_237C0925C();
            if (v104)
            {
              v105 = v104;
              sub_2379DBC9C(v102, 1);
            }

            else
            {
              v105 = swift_allocError();
              *v111 = v102;
            }

            v110 = 1;
            sub_2379DBC9C(v102, 1);
          }

          else
          {
            type metadata accessor for _UntypedColumn();
            *&v153 = v101;
            *(&v153 + 1) = v100;
            v154 = 2;
            swift_bridgeObjectRetain_n();
            v106 = v145;
            v107 = sub_237A60280(4, v102, &v153);
            if (v106)
            {
              sub_2379E8CE8(v153, *(&v153 + 1), v154);
              v108 = OUTLINED_FUNCTION_88();
              sub_2379DBC9C(v108, v109);

              v103 = v100;
              v110 = 1;
              v105 = v106;
              v145 = 0;
            }

            else
            {
              v105 = v107;
              v145 = 0;
              sub_2379E8CE8(v153, *(&v153 + 1), v154);
              v112 = OUTLINED_FUNCTION_88();
              sub_2379DBC9C(v112, v113);

              v103 = v100;
              v110 = 0;
            }
          }

          v114 = v152;
          *&v153 = v77;
          BYTE8(v153) = v150;
          v155 = v105;
          v156 = v110;
          MLDataTable.subscript.getter(&v155, &v157);
          sub_2379DBC9C(v155, v156);
          v115 = v157;
          v116 = v158;
          *&v153 = v157;
          BYTE8(v153) = v158;
          v117 = MLDataTable.size.getter();
          v118 = v151;
          swift_isUniquelyReferenced_nonNull_native();
          v157 = v118;
          sub_237B40A38(v117, v160, v103);
          v151 = v157;
          v148 = v115;
          LODWORD(v147) = v116;
          sub_2379DF938(v115, v116, &v157);
          v119 = OUTLINED_FUNCTION_37_0();
          sub_2379DFAE0(v119, v120, v121);
          v122 = OUTLINED_FUNCTION_37_0();
          sub_2379DBC9C(v122, v123);
          v124 = sub_2379DFC10(v153, SBYTE8(v153));
          v125 = *(v124 + 16);
          if (v125)
          {
            v144 = v103;
            *&v153 = MEMORY[0x277D84F90];
            sub_237AC8AF4(0, v125, 0);
            v126 = v153;
            v143 = v124;
            v127 = (v124 + 40);
            v128 = v146;
            do
            {
              v130 = *(v127 - 1);
              v129 = *v127;

              sub_237C059BC();

              *&v153 = v126;
              v132 = *(v126 + 16);
              v131 = *(v126 + 24);
              if (v132 >= v131 >> 1)
              {
                v135 = OUTLINED_FUNCTION_106(v131);
                sub_237AC8AF4(v135, v132 + 1, 1);
                v128 = v146;
                v126 = v153;
              }

              *(v126 + 16) = v132 + 1;
              v133 = *(v6 + 80);
              OUTLINED_FUNCTION_119_0();
              (*(v6 + 32))(v126 + v134 + *(v6 + 72) * v132, v1, v128);
              v127 += 2;
              --v125;
            }

            while (v125);

            v114 = v152;
          }

          else
          {
          }

          v98 = (v114 + 1);
          v136 = v149;
          swift_isUniquelyReferenced_nonNull_native();
          *&v153 = v136;
          sub_237B40B0C();
          sub_2379DBC9C(v148, v147);

          v149 = v153;
          v84 = v140;
          v77 = v141;
          v44 = v142;
          LOBYTE(v78) = v150;
          if (v98 == v139)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_44;
      }

LABEL_41:

      sub_2379DBC9C(v77, v78);
      sub_237A9A80C(v44);
    }

LABEL_42:
    OUTLINED_FUNCTION_73();
    return;
  }

  v46 = sub_237A9A80C(v44);
  MLHandPoseClassifier.DataSource.extractKeypoints()(v46, v47, v48, v49, v50, v51, v52, v53, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
  if (v0)
  {
    goto LABEL_42;
  }

  v145 = 0;
  OUTLINED_FUNCTION_45_3();
  v159 = v37;
  sub_237C05DEC();
  *&v153 = 0;
  *(&v153 + 1) = 0xE000000000000000;
  sub_237B85648();
  v54 = v148;
  sub_237C05EAC();
  v147[1](v27, v54);
  v55 = sub_237B43058();
  v56 = 0;
  v58 = v55 + 56;
  v57 = *(v55 + 56);
  v59 = *(v55 + 32);
  OUTLINED_FUNCTION_5_33();
  v62 = v61 & v60;
  v64 = (v63 + 63) >> 6;
  v147 = v151 + 1;
  v148 = v65;
  v66 = MEMORY[0x277D84F98];
  if ((v61 & v60) == 0)
  {
    goto LABEL_5;
  }

  do
  {
    v151 = v66;
    v67 = v56;
LABEL_9:
    v62 &= v62 - 1;
    OUTLINED_FUNCTION_26_23(v67);
    v70 = *v68;
    v69 = v68[1];
    MEMORY[0x28223BE20](v71);
    *(&v137 - 2) = v70;
    *(&v137 - 1) = v69;

    v72 = v149;
    OUTLINED_FUNCTION_45_3();
    v73 = v145;
    sub_237C05D6C();
    v145 = v73;
    sub_237C05D2C();
    sub_237B431E0();
    v75 = *(v74 + 16);

    v76 = v151;
    swift_isUniquelyReferenced_nonNull_native();
    *&v153 = v76;
    sub_237B40A38(v75, v70, v69);

    (*v147)(v72, v150);
    v66 = v153;
  }

  while (v62);
LABEL_5:
  while (1)
  {
    v67 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v67 >= v64)
    {
      (*(v143 + 8))(v159, v144);

      goto LABEL_42;
    }

    v62 = *(v58 + 8 * v67);
    ++v56;
    if (v62)
    {
      v151 = v66;
      v56 = v67;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_237B853E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  if (*a1 == a2 && v5 == a3)
  {
    return 1;
  }

  else
  {
    return sub_237C0929C() & 1;
  }
}

uint64_t sub_237B85440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *sub_237B85484(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_237B42360(v9, v4, v2);
      MEMORY[0x2383DD950](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_237B468E8(0, v4, v5);
  v6 = sub_237B42274(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_237B855E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_237B85648()
{
  result = qword_27DE9B910;
  if (!qword_27DE9B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9ACA0, &unk_237C0E0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B910);
  }

  return result;
}

id OUTLINED_FUNCTION_5_62()
{
  *(v2 - 296) = v0;
  *(v2 - 288) = v1;

  return sub_2379DBCF4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_7_47()
{

  return sub_237B845E8((v0 - 296), 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
}

__n128 OUTLINED_FUNCTION_21_32(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_27(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_34_18(__n128 *a1)
{
  result = *(v1 - 128);
  a1[1] = result;
  return result;
}

uint64_t sub_237B858AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237B8598C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t _s20PersistentParametersVMa_5()
{
  result = qword_27DE9D7E0;
  if (!qword_27DE9D7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B85AA0()
{
  sub_2379FCE48();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MLImageClassifier.FeatureExtractorType(319);
      if (v2 <= 0x3F)
      {
        sub_237B85B6C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237B85B6C()
{
  if (!qword_27DE9D7F0)
  {
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D7F0);
    }
  }
}

void sub_237B85BBC()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v32 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  v3 = OUTLINED_FUNCTION_4(v32);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v31 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  v21 = _s20PersistentParametersVMa_5();
  sub_237B88FAC(v0 + v21[5], v20, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v22 = *(v0 + v21[8]);
  v23 = *(v0 + v21[9]);
  v24 = v21[6];
  OUTLINED_FUNCTION_3_77();
  sub_237B88FAC(v0 + v25, v10, v26);
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *v2 = v22;
  *(v2 + 8) = v23;
  sub_237B88FAC(v20, v17, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v34 = v11;
  __swift_allocate_boxed_opaque_existential_0(v33);
  OUTLINED_FUNCTION_13_38();
  sub_237B8900C(v17, v27, v28);
  sub_2379DAE54(v33, v2 + 16);
  v29 = v31;
  sub_237B88FAC(v10, v31, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  v34 = v32;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  sub_237B8900C(v29, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  sub_237B8906C(v10, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  sub_237B8906C(v20, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  sub_2379DAE54(v33, v2 + 48);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B85DF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  v7 = OUTLINED_FUNCTION_20(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = _s20PersistentParametersVMa_5();
  v14 = v13[7];
  *(a3 + v14) = 1;
  *a3 = a1;
  result = sub_2379F6D68((a2 + 2), &v21);
  if (v22)
  {
    v16 = v13[5];
    sub_2379DAD24(&v21, &v23);
    type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
    swift_dynamicCast();
    MLImageClassifier.ModelParameters.algorithm.getter(v12);
    v17 = v13[6];
    OUTLINED_FUNCTION_14_34();
    sub_237B8900C(v12, a3 + v18, v19);
    *(a3 + v14) = 0;
    v20 = a2[1];
    *(a3 + v13[8]) = *a2;
    result = sub_237AA27EC(a2);
    *(a3 + v13[9]) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B85F14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v177[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7F8, &qword_237C14C28);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v166 = &v141 - v10;
  OUTLINED_FUNCTION_41_0();
  v167 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v11 = OUTLINED_FUNCTION_4(v167);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v165 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D800, &unk_237C14C30);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v169 = &v141 - v20;
  v21 = OUTLINED_FUNCTION_41_0();
  v168 = type metadata accessor for MLImageClassifier.FeatureExtractorType(v21);
  v22 = OUTLINED_FUNCTION_4(v168);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v171 = v26 - v25;
  OUTLINED_FUNCTION_41_0();
  v27 = sub_237C05ADC();
  v28 = OUTLINED_FUNCTION_0(v27);
  v173 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_96();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v141 - v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27_18();
  v40 = _s20PersistentParametersVMa_5();
  v41 = *(v40 + 28);
  v170 = a2;
  *(a2 + v41) = 1;
  v42 = a1;
  sub_237C05A2C();
  v43 = v172;
  v44 = sub_237C05B1C();
  if (v43)
  {
    v46 = *(v173 + 8);
    v46(v42, v27);
    result = (v46)(v3, v27);
    goto LABEL_24;
  }

  v162 = v39;
  v159 = v41;
  v157 = v34;
  v160 = v40;
  v161 = v2;
  v158 = 0;
  v172 = a1;
  v48 = v173;
  v49 = v173 + 8;
  v50 = *(v173 + 8);
  v51 = v44;
  v52 = v27;
  v53 = v45;
  v50(v3, v52);
  v54 = objc_opt_self();
  v55 = sub_237C05B6C();
  *&v175 = 0;
  v56 = [v54 propertyListWithData:v55 options:0 format:0 error:&v175];

  v57 = v175;
  if (!v56)
  {
    v67 = v57;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v51, v53);
    result = (v50)(v172, v52);
    goto LABEL_24;
  }

  v163 = v51;
  v164 = v53;
  v58 = v52;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v177, &v175);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_10_43();
  if ((OUTLINED_FUNCTION_49_10() & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v68, 0xD000000000000037);
    sub_2379E86D4(v163, v164);
    v50(v172, v58);
LABEL_23:
    result = __swift_destroy_boxed_opaque_existential_1(v177);
    goto LABEL_24;
  }

  v156 = v49;
  v60 = v174;
  sub_237AC9A74(0x73656C6966, 0xE500000000000000, v174, &v175);
  v61 = v58;
  if (!v176)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  OUTLINED_FUNCTION_10_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v62 = v174;
  sub_237AC9A74(0xD000000000000014, 0x8000000237C17EA0, v60, &v175);
  if (!v176)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v155 = v174;
  sub_237AC9A74(0x726574695F78616DLL, 0xEE00736E6F697461, v60, &v175);
  if (!v176)
  {
LABEL_17:

LABEL_18:

    v64 = &qword_27DE9A998;
    v65 = &unk_237C0C100;
    v66 = &v175;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_10_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v151 = v174;
  sub_237AC9A74(0xD000000000000011, 0x8000000237C1AF40, v60, &v175);
  if (!v176)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_43();
  if ((OUTLINED_FUNCTION_49_10() & 1) == 0)
  {
    goto LABEL_20;
  }

  v63 = v169;
  sub_237B86C20();
  if (__swift_getEnumTagSinglePayload(v63, 1, v168) == 1)
  {

    v64 = &qword_27DE9D800;
    v65 = &unk_237C14C30;
    v66 = v63;
LABEL_19:
    sub_2379D9054(v66, v64, v65);
LABEL_22:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v69, 0xD000000000000034);
    sub_2379E86D4(v163, v164);
    v50(v172, v61);
    goto LABEL_23;
  }

  v168 = v61;
  v143 = v60;
  OUTLINED_FUNCTION_14_34();
  v71 = v63;
  v72 = v171;
  sub_237B8900C(v71, v171, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
  v74 = sub_237C0910C();
  v75 = v62;
  v76 = v74;
  v77 = 0;
  v150 = v75;
  v79 = v75 + 64;
  v78 = *(v75 + 64);
  v142 = v79;
  v80 = *(v79 - 32);
  OUTLINED_FUNCTION_5_33();
  v84 = (v83 + 63) >> 6;
  v169 = (v48 + 32);
  v147 = v85 + 8;
  v146 = v85;
  v145 = v59;
  v144 = v84;
  if ((v82 & v81) != 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_15_26();
    goto LABEL_32;
  }

LABEL_27:
  v88 = v77;
  while (1)
  {
    v77 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_57;
    }

    if (v77 >= v84)
    {
      break;
    }

    ++v88;
    if (*(v142 + 8 * v77))
    {
      OUTLINED_FUNCTION_8_26();
      v87 = v90 & v89;
LABEL_32:
      v91 = v86 | (v77 << 6);
      v152 = v87;
      v92 = *(v150 + 56);
      v93 = (*(v150 + 48) + 16 * v91);
      v94 = v93[1];
      v153 = *v93;
      v154 = v91;
      v95 = *(v92 + 8 * v91);
      v96 = *(v95 + 16);
      if (v96)
      {
        v149 = v77;
        v97 = v96;
        *&v175 = MEMORY[0x277D84F90];
        v148 = v94;

        v98 = v97;
        sub_237AC8AF4(0, v97, 0);
        v99 = 0;
        v100 = v175;
        v101 = (v95 + 40);
        v102 = v162;
        while (v99 < *(v95 + 16))
        {
          v103 = v95;
          v105 = *(v101 - 1);
          v104 = *v101;

          sub_237C059BC();

          v106 = v100;
          *&v175 = v100;
          v108 = *(v100 + 16);
          v107 = *(v100 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_237AC8AF4(v107 > 1, v108 + 1, 1);
            v106 = v175;
          }

          ++v99;
          *(v106 + 16) = v108 + 1;
          v109 = *(v173 + 80);
          OUTLINED_FUNCTION_119_0();
          v100 = v110;
          (*(v112 + 32))(v110 + v111 + *(v112 + 72) * v108, v102, v168);
          v101 += 2;
          v95 = v103;
          if (v98 == v99)
          {

            v72 = v171;
            v76 = v146;
            v77 = v149;
            v84 = v144;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v100 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_21_33(v113);
      v115 = (v76[6] + 16 * v114);
      *v115 = v153;
      v115[1] = v116;
      *(v76[7] + 8 * v114) = v100;
      v117 = v76[2];
      v118 = __OFADD__(v117, 1);
      v119 = v117 + 1;
      if (v118)
      {
LABEL_58:
        __break(1u);
      }

      v76[2] = v119;
      if (v152)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  v120 = v170;
  *v170 = v76;
  v121 = v160;
  *(v120 + *(v160 + 32)) = v151;
  v122 = *(v121 + 24);
  OUTLINED_FUNCTION_3_77();
  sub_237B88FAC(v72, v120 + v122, v123);
  *(v120 + *(v121 + 36)) = v155;
  sub_237AC9A74(0x6966697373616C63, 0xEF657079745F7265, v143, &v175);
  if (v176)
  {
    OUTLINED_FUNCTION_10_43();
    v124 = OUTLINED_FUNCTION_49_10();
    v125 = v168;
    if (v124)
    {
      sub_237B87138(v174, &v175);
    }

    OUTLINED_FUNCTION_29_17();
  }

  else
  {
    sub_2379D9054(&v175, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_29_17();
    v125 = v168;
  }

  *(v127 + v126) = 0;
  sub_237C05A2C();
  sub_237AC9A74(0x69746164696C6176, 0xEA00000000006E6FLL, v143, &v175);

  if (!v176)
  {
    sub_2379E86D4(v163, v164);
    v132 = OUTLINED_FUNCTION_11_45();
    (v50)(v132);
    v133 = OUTLINED_FUNCTION_20_31();
    (v50)(v133);
    OUTLINED_FUNCTION_7_48();
    __swift_destroy_boxed_opaque_existential_1(v177);
    sub_2379D9054(&v175, &qword_27DE9A998, &unk_237C0C100);
LABEL_54:
    OUTLINED_FUNCTION_47_17();
    result = swift_storeEnumTagMultiPayload();
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_49_10() & 1) == 0)
  {
    sub_2379E86D4(v163, v164);
    v134 = OUTLINED_FUNCTION_11_45();
    (v50)(v134);
    v135 = OUTLINED_FUNCTION_20_31();
    (v50)(v135);
    OUTLINED_FUNCTION_7_48();
    __swift_destroy_boxed_opaque_existential_1(v177);
    goto LABEL_54;
  }

  (*(v173 + 16))(v157, v161, v125);
  v128 = v166;
  sub_237B8722C();
  if (__swift_getEnumTagSinglePayload(v128, 1, v167) == 1)
  {
    sub_2379D9054(v128, &qword_27DE9D7F8, &qword_237C14C28);
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v129, 0xD000000000000037);
    sub_2379E86D4(v163, v164);
    v130 = OUTLINED_FUNCTION_11_45();
    (v50)(v130);
    v131 = OUTLINED_FUNCTION_20_31();
    (v50)(v131);
    sub_237B8906C(v171, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    __swift_destroy_boxed_opaque_existential_1(v177);

    result = sub_237B8906C(v170 + v122, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  }

  else
  {
    sub_2379E86D4(v163, v164);
    v136 = OUTLINED_FUNCTION_11_45();
    (v50)(v136);
    v137 = OUTLINED_FUNCTION_20_31();
    (v50)(v137);
    OUTLINED_FUNCTION_7_48();
    __swift_destroy_boxed_opaque_existential_1(v177);
    v138 = v165;
    sub_237B8900C(v128, v165, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    OUTLINED_FUNCTION_47_17();
    result = sub_237B8900C(v138, v140 + v139, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  }

LABEL_24:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237B86C20()
{
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = sub_237C05ADC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v58 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27_18();
  v21 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v55 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v55 - v29;
  if (!*(v3 + 16))
  {
    goto LABEL_27;
  }

  v31 = OUTLINED_FUNCTION_19_22();
  v33 = sub_237ACAC78(v31, v32);
  if ((v34 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v33, &v61);
  OUTLINED_FUNCTION_24_30();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_27;
  }

  v56 = v30;
  v57 = v5;
  v36 = v59;
  v35 = v60;
  v37 = v59 == 0x697270656E656373 && v60 == 0xEA0000000000746ELL;
  if (v37 || (OUTLINED_FUNCTION_38_0() & 1) != 0)
  {

    sub_237AC9A74(0x6E6F697369766572, 0xE800000000000000, v3, &v61);

    v5 = v57;
    if (v62)
    {
      OUTLINED_FUNCTION_24_30();
      v38 = OUTLINED_FUNCTION_26_3();
      v39 = v59;
      if (!v38)
      {
        v39 = 0;
      }

      v40 = v38 ^ 1;
    }

    else
    {
      sub_2379D9054(&v61, &qword_27DE9A998, &unk_237C0C100);
      v39 = 0;
      v40 = 1;
    }

    *v28 = v39;
    v28[8] = v40;
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  if (v36 == 0x6D6F74737563 && v35 == 0xE600000000000000)
  {
  }

  else
  {
    v44 = OUTLINED_FUNCTION_38_0();

    if ((v44 & 1) == 0)
    {

LABEL_31:
      v42 = 1;
      v5 = v57;
      goto LABEL_29;
    }
  }

  sub_237AC9A74(0x61705F6C65646F6DLL, 0xEA00000000006874, v3, &v61);
  if (!v62)
  {

    sub_2379D9054(&v61, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_24_30();
  v45 = OUTLINED_FUNCTION_26_3();
  v5 = v57;
  if ((v45 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_237C05AAC();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_2379D9054(v11, &qword_27DE9AA18, &qword_237C0B710);
LABEL_28:
    v42 = 1;
    goto LABEL_29;
  }

  v46 = v58;
  v47 = *(v58 + 32);
  v47(v1, v11, v12);
  (*(v46 + 16))(v19, v1, v12);
  sub_237AC9A74(0x74757074756FLL, 0xE600000000000000, v3, &v61);

  v48 = *(v46 + 8);
  v49 = OUTLINED_FUNCTION_37_14();
  v50(v49);
  if (v62)
  {
    OUTLINED_FUNCTION_24_30();
    v51 = OUTLINED_FUNCTION_26_3();
    if (v51)
    {
      v52 = v59;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v60;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    sub_2379D9054(&v61, &qword_27DE9A998, &unk_237C0C100);
    v52 = 0;
    v53 = 0;
  }

  v54 = &v0[*(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20)];
  v47(v0, v19, v12);
  *v54 = v52;
  *(v54 + 1) = v53;
  swift_storeEnumTagMultiPayload();
  v28 = v0;
  v5 = v57;
LABEL_15:
  v41 = v56;
  sub_237B8900C(v28, v56, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  sub_237B8900C(v41, v5, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v42 = 0;
LABEL_29:
  __swift_storeEnumTagSinglePayload(v5, v42, 1, v21);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B87138@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = OUTLINED_FUNCTION_19_22(), v6 = sub_237ACAC78(v4, v5), (v7 & 1) != 0))
  {
    sub_2379FED88(*(a1 + 56) + 32 * v6, v14);

    result = OUTLINED_FUNCTION_26_3();
    if (result)
    {
      if (v12 == 0xD000000000000011 && 0x8000000237C1DBB0 == v13)
      {

        v11 = 0;
        goto LABEL_12;
      }

      v10 = sub_237C0929C();

      v11 = 0;
      if (v10)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v11 = 1;
LABEL_12:
  *a2 = v11;
  return result;
}

void sub_237B8722C()
{
  OUTLINED_FUNCTION_153();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D808, &qword_237C14C40);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for MLImageClassifier.DataSource();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_19_22();
  sub_237AC9A74(v34, v35, v2, v36);
  if (!v69)
  {
    sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_30();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v61 = v4;
  v62 = v27;
  v38 = v64;
  v37 = v65;
  v39 = v64 == 1701736302 && v65 == 0xE400000000000000;
  if (!v39 && (OUTLINED_FUNCTION_38_0() & 1) == 0)
  {
    v46 = v38 == 0x756F735F61746164 && v37 == 0xEB00000000656372;
    if (v46 || (OUTLINED_FUNCTION_38_0() & 1) != 0)
    {

      OUTLINED_FUNCTION_30_22();

      v4 = v61;
      v27 = v62;
      if (!v69)
      {
        v48 = OUTLINED_FUNCTION_9_4();
        v49(v48);
        sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      OUTLINED_FUNCTION_24_30();
      if (OUTLINED_FUNCTION_26_3())
      {
        v47 = v63;
        (*(v8 + 16))(v13, v63, v5);
        sub_237B88960();
        (*(v8 + 8))(v47, v5);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
        {
          sub_2379D9054(v19, &qword_27DE9D808, &qword_237C14C40);
          v43 = 1;
          v27 = v62;
          goto LABEL_15;
        }

        sub_237B8900C(v19, v26, type metadata accessor for MLImageClassifier.DataSource);
        v56 = OUTLINED_FUNCTION_37_14();
        sub_237B8900C(v56, v57, type metadata accessor for MLImageClassifier.DataSource);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v38 == 0x74696C7073 && v37 == 0xE500000000000000)
    {
    }

    else
    {
      v51 = OUTLINED_FUNCTION_38_0();

      if ((v51 & 1) == 0)
      {

        v4 = v61;
        v27 = v62;
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_30_22();

    v27 = v62;
    if (!v69)
    {
      v58 = OUTLINED_FUNCTION_9_4();
      v59(v58);
      sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
      v43 = 1;
      v4 = v61;
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    OUTLINED_FUNCTION_24_30();
    v52 = OUTLINED_FUNCTION_26_3();
    v4 = v61;
    if (v52)
    {
      sub_237A283AC(v64, &v66);
      v53 = OUTLINED_FUNCTION_9_4();
      v54(v53);
      if ((v68 & 1) == 0)
      {
        v55 = v67;
        *v33 = v66;
        *(v33 + 16) = v55;
        *(v33 + 17) = HIBYTE(v55) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v43 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v44 = OUTLINED_FUNCTION_9_4();
    v45(v44);
    goto LABEL_14;
  }

  v40 = OUTLINED_FUNCTION_9_4();
  v41(v40);
  v4 = v61;
LABEL_9:
  v27 = v62;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_13_38();
  sub_237B8900C(v33, v4, v42);
  v43 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v4, v43, 1, v27);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B876FC(uint64_t a1)
{
  v72 = a1;
  v98 = *MEMORY[0x277D85DE8];
  v91 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v91);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v8);
  v89 = &v72 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6C0;
  *(inited + 32) = 0x73656C6966;
  *(inited + 40) = 0xE500000000000000;
  v73 = inited;
  v74 = v1;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
  v12 = sub_237C0910C();
  v13 = 0;
  v14 = *(v11 + 64);
  v75 = v11 + 64;
  v81 = v11;
  v15 = *(v11 + 32);
  OUTLINED_FUNCTION_5_33();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v88 = v5 + 16;
  v78 = v5;
  v79 = v2;
  v90 = (v5 + 8);
  v80 = v21 + 64;
  v76 = v20;
  v77 = v21;
  if ((v17 & v16) != 0)
  {
    goto LABEL_2;
  }

LABEL_3:
  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v13 >= v20)
    {
      break;
    }

    ++v23;
    if (*(v75 + 8 * v13))
    {
      OUTLINED_FUNCTION_8_26();
      v18 = v25 & v24;
      while (2)
      {
        v26 = v22 | (v13 << 6);
        v27 = (*(v81 + 48) + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        v30 = *(*(*(v81 + 56) + 8 * v26) + 16);
        if (v30)
        {
          v84 = *v27;
          v85 = v26;
          v86 = v18;
          v87 = v13;
          *&v96 = MEMORY[0x277D84F90];
          v83 = v28;

          sub_237AC8A74();
          v31 = v96;
          v32 = *(v78 + 80);
          OUTLINED_FUNCTION_119_0();
          v82 = v33;
          v35 = v33 + v34;
          v37 = *(v36 + 72);
          v92 = *(v36 + 16);
          v93 = v37;
          do
          {
            v38 = v89;
            v39 = v91;
            v92(v89, v35, v91);
            v40 = sub_237C05A9C();
            v42 = v41;
            (*v90)(v38, v39);
            *&v96 = v31;
            v43 = *(v31 + 16);
            if (v43 >= *(v31 + 24) >> 1)
            {
              sub_237AC8A74();
              v31 = v96;
            }

            *(v31 + 16) = v43 + 1;
            v44 = v31 + 16 * v43;
            *(v44 + 32) = v40;
            *(v44 + 40) = v42;
            v35 += v93;
            --v30;
          }

          while (v30);

          v2 = v79;
          v20 = v76;
          v12 = v77;
          v18 = v86;
          v13 = v87;
          v29 = v84;
          v26 = v85;
        }

        else
        {
        }

        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_21_33(v45);
        v46 = (*(v12 + 48) + 16 * v26);
        *v46 = v29;
        v46[1] = v47;
        OUTLINED_FUNCTION_38_18();
        if (!v49)
        {
          *(v12 + 16) = v48;
          if (!v18)
          {
            goto LABEL_3;
          }

LABEL_2:
          OUTLINED_FUNCTION_45_14();
          continue;
        }

        break;
      }

LABEL_25:
      __break(1u);
    }
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  v51 = v73;
  *(v73 + 48) = v12;
  *(v51 + 72) = v50;
  *(v51 + 80) = 0x69746164696C6176;
  *(v51 + 88) = 0xEA00000000006E6FLL;
  v52 = _s20PersistentParametersVMa_5();
  v53 = v74;
  v54 = v74 + v52[5];
  v55 = sub_237B87D08();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  *(v51 + 96) = v55;
  *(v51 + 120) = v56;
  *(v51 + 128) = 0xD000000000000011;
  *(v51 + 136) = 0x8000000237C1AF40;
  v57 = v53 + v52[6];
  *(v51 + 144) = sub_237B880EC();
  *(v51 + 168) = v56;
  strcpy((v51 + 176), "max_iterations");
  *(v51 + 191) = -18;
  v58 = MEMORY[0x277D83B88];
  *(v51 + 192) = *(v53 + v52[8]);
  *(v51 + 216) = v58;
  *(v51 + 224) = 0xD000000000000014;
  *(v51 + 232) = 0x8000000237C17EA0;
  v59 = *(v53 + v52[9]);
  *(v51 + 264) = v58;
  *(v51 + 240) = v59;
  v60 = sub_237C085AC();
  if ((*(v53 + v52[7]) & 1) == 0)
  {
    v61 = sub_237B883B4();
    v97 = v56;
    *&v96 = v61;
    sub_2379DAD24(&v96, v95);
    swift_isUniquelyReferenced_nonNull_native();
    v94 = v60;
    sub_237B40B6C(v95, 0x6966697373616C63, 0xEF657079745F7265);
  }

  v62 = objc_opt_self();
  v63 = sub_237C0855C();

  *&v96 = 0;
  v64 = [v62 dataWithPropertyList:v63 format:200 options:0 error:{&v96, v72}];

  v65 = v96;
  if (v64)
  {
    v66 = sub_237C05B7C();
    v68 = v67;

    sub_237C05A2C();
    sub_237C05B9C();
    (*v90)(v2, v91);
    result = sub_2379E86D4(v66, v68);
  }

  else
  {
    v70 = v65;
    sub_237C0593C();

    result = swift_willThrow();
  }

  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B87D08()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier.DataSource();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = type metadata accessor for MLImageClassifier.DataSource();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  sub_237B88FAC(v1, v21 - v20, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_66();
      sub_237B8900C(v22, v15, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      v47 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v48 = MEMORY[0x277D837D0];
      v49 = OUTLINED_FUNCTION_15_40(v47);
      v49[9] = v48;
      v49[10] = v50;
      v49[11] = v51;
      sub_237B88434();
      v53 = v52;
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      inited[6].n128_u64[0] = v53;
      v39 = sub_237C085AC();
      v40 = type metadata accessor for MLImageClassifier.DataSource;
      v41 = v15;
      goto LABEL_7;
    case 2u:
      *v8 = *v22;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v32 = swift_initStackObject();
      v33 = OUTLINED_FUNCTION_0_8(v32, xmmword_237C0B670);
      v34 = MEMORY[0x277D837D0];
      v35 = OUTLINED_FUNCTION_15_40(v33);
      v35[9] = v34;
      v35[10] = v36;
      v35[11] = v37;
      v38 = sub_237AD7E98();
      v32[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v32[6].n128_u64[0] = v38;
      v39 = sub_237C085AC();
      v40 = type metadata accessor for MLSoundClassifier.DataSource;
      v41 = v8;
LABEL_7:
      sub_237B8906C(v41, v40);
      return v39;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v42 = swift_initStackObject();
      v43 = OUTLINED_FUNCTION_0_8(v42, xmmword_237C0B660);
      v43[4].n128_u64[1] = MEMORY[0x277D837D0];
      v43[3].n128_u64[0] = 1701736302;
      v43[3].n128_u64[1] = v44;
      return sub_237C085AC();
    default:
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v27 = swift_initStackObject();
      v28 = OUTLINED_FUNCTION_0_8(v27, xmmword_237C0B670);
      v29 = MEMORY[0x277D837D0];
      v28[3].n128_u64[0] = 0x74696C7073;
      v28[3].n128_u64[1] = 0xE500000000000000;
      v28[4].n128_u64[1] = v29;
      v28[5].n128_u64[0] = 1635017060;
      v28[5].n128_u64[1] = v30;
      v31 = sub_237A28200();
      v27[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v27[6].n128_u64[0] = v31;
      return sub_237C085AC();
  }
}

uint64_t sub_237B880EC()
{
  v1 = v0;
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_3_77();
  sub_237B88FAC(v1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_237B8900C(v15, v8, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    v17 = MEMORY[0x277D837D0];
    v37 = 0x6D6F74737563;
    v38 = 0xE600000000000000;
    OUTLINED_FUNCTION_36_15();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_46_15();
    v18 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_33_22(v18);
    v19 = sub_237C05ADC();
    v39 = v19;
    v20 = __swift_allocate_boxed_opaque_existential_0(&v37);
    (*(*(v19 - 8) + 16))(v20, v8, v19);
    OUTLINED_FUNCTION_36_15();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_46_15();
    v21 = OUTLINED_FUNCTION_28_20();
    sub_237B40B6C(v21, v22, 0xEA00000000006874);
    v23 = v36;
    v24 = (v8 + *(v2 + 20));
    v25 = v24[1];
    if (v25)
    {
      v26 = *v24;
      v39 = v17;
      v37 = v26;
      v38 = v25;
      OUTLINED_FUNCTION_36_15();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_46_15();
      v27 = OUTLINED_FUNCTION_28_20();
      sub_237B40B6C(v27, v28, 0xE600000000000000);
      v23 = v36;
    }

    sub_237B8906C(v8, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else
  {
    v29 = *v15;
    v30 = *(v15 + 8);
    v39 = MEMORY[0x277D837D0];
    v37 = 0x697270656E656373;
    v38 = 0xEA0000000000746ELL;
    OUTLINED_FUNCTION_36_15();
    v31 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v32 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_33_22(v32);
    v23 = v31;
    if ((v30 & 1) == 0)
    {
      v39 = MEMORY[0x277D83B88];
      v37 = v29;
      OUTLINED_FUNCTION_36_15();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_46_15();
      v33 = OUTLINED_FUNCTION_28_20();
      sub_237B40B6C(v33, v34, 0xE800000000000000);
      return v31;
    }
  }

  return v23;
}

uint64_t sub_237B883B4()
{
  v4 = MEMORY[0x277D837D0];
  *&v3 = 0xD000000000000011;
  *(&v3 + 1) = 0x8000000237C1DBB0;
  sub_2379DAD24(&v3, v2);
  v0 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_33_22(v2);
  return v0;
}

void sub_237B88434()
{
  OUTLINED_FUNCTION_153();
  v3 = v0;
  v78 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v78);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v77 = v10 - v9;
  OUTLINED_FUNCTION_41_0();
  v11 = type metadata accessor for MLImageClassifier.DataSource();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237B88FAC(v3, v16 - v15, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = OUTLINED_FUNCTION_22_16();
    v26(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    v21 = inited;
    *(inited + 16) = xmmword_237C0B670;
    v23 = 0xE400000000000000;
    *(inited + 32) = 1684957547;
    *(inited + 40) = 0xE400000000000000;
    v24 = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000013;
    *(inited + 56) = 0x8000000237C17F40;
LABEL_5:
    *(inited + 72) = v24;
    *(inited + 80) = 1752457584;
    *(inited + 88) = v23;
    v27 = sub_237C05A9C();
    v21[7].n128_u64[1] = v24;
    v21[6].n128_u64[0] = v27;
    v21[6].n128_u64[1] = v28;
    sub_237C085AC();
    (*(v1 + 8))(v2, v6);
LABEL_24:
    OUTLINED_FUNCTION_150();
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = OUTLINED_FUNCTION_22_16();
    v20(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v21 = swift_initStackObject();
    inited = OUTLINED_FUNCTION_0_8(v21, xmmword_237C0B670);
    v24 = MEMORY[0x277D837D0];
    strcpy((inited + 48), "labeled_files");
    *(inited + 62) = -4864;
    goto LABEL_5;
  }

  v29 = *v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v30 = swift_initStackObject();
  v31 = OUTLINED_FUNCTION_0_8(v30, xmmword_237C0B670);
  v32 = MEMORY[0x277D837D0];
  strcpy(&v31[3], "files_by_label");
  v31[3].n128_u8[15] = -18;
  v31[4].n128_u64[1] = v32;
  v31[5].n128_u64[0] = 0x73656C6966;
  v65 = v31;
  v31[5].n128_u64[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
  v33 = sub_237C0910C();
  v34 = 0;
  v35 = *(v29 + 64);
  v66 = v29 + 64;
  v36 = *(v29 + 32);
  OUTLINED_FUNCTION_5_33();
  v39 = v38 & v37;
  v41 = (v40 + 63) >> 6;
  v75 = (v6 + 8);
  v70 = v6;
  v68 = v42;
  v69 = v29;
  v67 = v41;
  if ((v38 & v37) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_45_14();
LABEL_13:
      v47 = v43 | (v34 << 6);
      v48 = (*(v29 + 48) + 16 * v47);
      v74 = *v48;
      v49 = *(*(*(v29 + 56) + 8 * v47) + 16);
      if (v49)
      {
        v72 = v47;
        v73 = v34;
        v79 = MEMORY[0x277D84F90];
        v71 = v48[1];

        sub_237AC8A74();
        v50 = *(v6 + 80);
        OUTLINED_FUNCTION_119_0();
        v53 = v52 + v51;
        v76 = *(v6 + 72);
        v54 = *(v6 + 16);
        do
        {
          v54(v77, v53, v78);
          v55 = sub_237C05A9C();
          v57 = v56;
          (*v75)(v77, v78);
          v58 = *(v79 + 16);
          if (v58 >= *(v79 + 24) >> 1)
          {
            sub_237AC8A74();
          }

          *(v79 + 16) = v58 + 1;
          v59 = v79 + 16 * v58;
          *(v59 + 32) = v55;
          *(v59 + 40) = v57;
          v53 += v76;
          --v49;
        }

        while (v49);

        v29 = v69;
        v6 = v70;
        v41 = v67;
        v33 = v68;
        v34 = v73;
        v47 = v72;
      }

      else
      {
      }

      OUTLINED_FUNCTION_40_16();
      OUTLINED_FUNCTION_21_33(v60);
      v61 = (*(v33 + 48) + 16 * v47);
      *v61 = v74;
      v61[1] = v62;
      OUTLINED_FUNCTION_38_18();
      if (v64)
      {
        break;
      }

      *(v33 + 16) = v63;
      if (!v39)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v44 = v34;
    while (1)
    {
      v34 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v34 >= v41)
      {

        v65[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
        v65[6].n128_u64[0] = v33;
        sub_237C085AC();
        goto LABEL_24;
      }

      ++v44;
      if (*(v66 + 8 * v34))
      {
        OUTLINED_FUNCTION_8_26();
        v39 = v46 & v45;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_237B88960()
{
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v5 = v4;
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for MLImageClassifier.DataSource();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27_18();
  if (!*(v3 + 16))
  {
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_19_22();
  v22 = sub_237ACAC78(v20, v21);
  if ((v23 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v22, &v93);
  OUTLINED_FUNCTION_43_11();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_26;
  }

  v90 = v1;
  v24 = v91 == 0xD000000000000013 && 0x8000000237C17F40 == v92;
  if (v24 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_32_18();

    if (v94)
    {
      OUTLINED_FUNCTION_43_11();
      if (OUTLINED_FUNCTION_26_3())
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v30 = v91 == 0x5F64656C6562616CLL && v92 == 0xED000073656C6966;
  if (v30 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_32_18();

    if (v94)
    {
      OUTLINED_FUNCTION_43_11();
      if (swift_dynamicCast())
      {
LABEL_11:
        sub_237C059BC();

        v25 = OUTLINED_FUNCTION_9_48();
        v26(v25);
        OUTLINED_FUNCTION_37_14();
        swift_storeEnumTagMultiPayload();
LABEL_12:
        OUTLINED_FUNCTION_4_66();
        sub_237B8900C(v1, v5, v27);
        v28 = v5;
        v29 = 0;
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v91 == 0x79625F73656C6966 && v92 == 0xEE006C6562616C5FLL)
  {
  }

  else
  {
    v32 = OUTLINED_FUNCTION_24_4();

    if ((v32 & 1) == 0)
    {
LABEL_26:
      v33 = OUTLINED_FUNCTION_9_48();
      v34(v33);

LABEL_27:
      v28 = v5;
      v29 = 1;
LABEL_28:
      __swift_storeEnumTagSinglePayload(v28, v29, 1, v15);
      OUTLINED_FUNCTION_150();
      return;
    }
  }

  sub_237AC9A74(0x73656C6966, 0xE500000000000000, v3, &v93);

  if (!v94)
  {
LABEL_50:
    v74 = OUTLINED_FUNCTION_9_48();
    v75(v74);
    sub_2379D9054(&v93, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  OUTLINED_FUNCTION_43_11();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_51:
    v76 = OUTLINED_FUNCTION_9_48();
    v77(v76);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
  v35 = sub_237C0910C();
  v36 = *(v91 + 64);
  v37 = *(v91 + 32);
  OUTLINED_FUNCTION_5_33();
  v42 = (v41 + 63) >> 6;
  v85 = v42;
  v83 = v15;
  v84 = v5;
  v82 = v43;
  v81 = v0;
  if ((v40 & v39) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_15_26();
LABEL_39:
      v51 = v44 | (v46 << 6);
      v86 = v45;
      v87 = v46;
      v52 = *(v91 + 56);
      v53 = (*(v91 + 48) + 16 * v51);
      v54 = v53[1];
      v88 = *v53;
      v55 = *(*(v52 + 8 * v51) + 16);
      if (v55)
      {
        break;
      }

      v58 = MEMORY[0x277D84F90];
LABEL_47:
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_21_33(v67);
      v69 = (v35[6] + 16 * v68);
      *v69 = v88;
      v69[1] = v70;
      *(v35[7] + 8 * v68) = v58;
      v71 = v35[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        goto LABEL_55;
      }

      v35[2] = v73;
      v38 = v87;
      v42 = v85;
      if (!v86)
      {
        goto LABEL_34;
      }
    }

    v56 = *(v52 + 8 * v51);
    *&v93 = MEMORY[0x277D84F90];

    v89 = v55;
    sub_237AC8AF4(0, v55, 0);
    v57 = 0;
    v58 = v93;
    v59 = (v56 + 40);
    while (v57 < *(v56 + 16))
    {
      v60 = v56;
      v61 = *(v59 - 1);
      v62 = *v59;

      sub_237C059BC();

      *&v93 = v58;
      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_237AC8AF4(v63 > 1, v64 + 1, 1);
        v58 = v93;
      }

      ++v57;
      *(v58 + 16) = v64 + 1;
      v65 = *(v9 + 80);
      OUTLINED_FUNCTION_119_0();
      (*(v9 + 32))(v58 + v66 + *(v9 + 72) * v64, v14, v6);
      v59 += 2;
      v56 = v60;
      if (v89 == v57)
      {

        v15 = v83;
        v5 = v84;
        v35 = v82;
        v1 = v90;
        v0 = v81;
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    v47 = v38;
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v42)
      {

        v78 = OUTLINED_FUNCTION_9_48();
        v79(v78);
        *v0 = v35;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_66();
        sub_237B8900C(v0, v1, v80);
        goto LABEL_12;
      }

      ++v47;
      if (*(v91 + 64 + 8 * v48))
      {
        OUTLINED_FUNCTION_8_26();
        v45 = v50 & v49;
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_237B88FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237B8900C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237B8906C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_48()
{
  v2 = *(v0 - 192);

  return sub_237B8906C(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t OUTLINED_FUNCTION_11_45()
{
  result = v0;
  v3 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_40(uint64_t result)
{
  *(result + 48) = 0x756F735F61746164;
  *(result + 56) = 0xEB00000000656372;
  return result;
}

void OUTLINED_FUNCTION_29_17()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 288);
  v3 = *(v0 - 272);
}

double OUTLINED_FUNCTION_30_22()
{

  return sub_237AC9A74(1635017060, 0xE400000000000000, v0, (v1 - 112));
}

double OUTLINED_FUNCTION_32_18()
{

  return sub_237AC9A74(1752457584, 0xE400000000000000, v0, (v1 - 120));
}

_OWORD *OUTLINED_FUNCTION_33_22(uint64_t a1)
{

  return sub_237B40B6C(a1, 1684957547, 0xE400000000000000);
}

_OWORD *OUTLINED_FUNCTION_36_15()
{

  return sub_2379DAD24((v0 - 80), (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_49_10()
{

  return swift_dynamicCast();
}

uint64_t sub_237B89344(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v4 = sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
  v5 = sub_237C08B3C();
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = MEMORY[0x277D84F90];
    sub_237AC8A34();
    v25 = v27;
    sub_237C08B2C();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v24 = i + 1;
        v8 = a1;
        v9 = v3;
        v10 = v4;
        v11 = sub_237C08B9C();
        v13 = *v12;
        v14 = v12[1];

        v11(v26, 0);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        v16 = *a2;
        if (!*(*a2 + 16))
        {
          goto LABEL_20;
        }

        if (v14)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        v18 = sub_237ACAC78(v17, v15);
        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }

        v20 = *(*(v16 + 56) + 8 * v18);

        v21 = v25;
        v27 = v25;
        v22 = *(v25 + 16);
        if (v22 >= *(v25 + 24) >> 1)
        {
          sub_237AC8A34();
          v21 = v27;
        }

        *(v21 + 16) = v22 + 1;
        v25 = v21;
        *(v21 + 8 * v22 + 32) = v20;
        a1 = v8;
        v3 = v9;
        v4 = v10;
        sub_237C08B6C();
        if (v24 == v5)
        {
          return v25;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:

LABEL_21:

    __break(1u);
  }

  return result;
}

unint64_t sub_237B89590(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v3 = OUTLINED_FUNCTION_0(v2);
  v62 = v4;
  v63 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v61 = &v58 - v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v60 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  v19 = sub_237C0602C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v64 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v58 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v28);
  v65 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v58 - v33;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v67 = 0;
    v68 = 0xE000000000000000;
    v37 = OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    v38 = *(v65 + 1);
    v38(v34, v28);
    v39 = sub_237B43058();
    sub_237B8A1B8(v69, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      sub_237B61F04(v18);
    }

    else
    {
      v69 = v39;
      v47 = v64;
      v48 = *(v64 + 32);
      v65 = v37;
      v49 = v59;
      v48(v59, v18, v19);
      sub_237C05FEC();
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_237C05EAC();
      v38(v34, v28);
      v50 = sub_237B43058();
      sub_237AB8620(v50, v69);
      (*(v47 + 8))(v49, v19);
    }

    sub_237B98EF8();
LABEL_12:
    v52 = v51;

    return v52;
  }

  v65 = v16;
  v59 = v26;
  v40 = v61;
  v42 = v62;
  v41 = v63;
  v43 = v69;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v67 = 0;
    v58 = OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
    sub_237C05EAC();
    v44 = *(v42 + 8);
    v44(v40, v41);
    v45 = sub_237B4351C();
    v46 = v65;
    sub_237B8A1B8(v43, v65);
    if (__swift_getEnumTagSinglePayload(v46, 1, v19) == 1)
    {
      sub_237B61F04(v46);
    }

    else
    {
      v69 = v45;
      v54 = v64;
      v55 = v59;
      (*(v64 + 32))(v59, v46, v19);
      sub_237C05FEC();
      v67 = 0;
      sub_237C05EAC();
      v44(v40, v41);
      v56 = sub_237B4351C();
      sub_237AB8710(v56, v69);
      (*(v54 + 8))(v55, v19);
    }

    sub_237B98E78();
    goto LABEL_12;
  }

  v52 = 0x8000000237C1A840;
  sub_2379E8AF0();
  swift_allocError();
  *v53 = 0xD000000000000025;
  *(v53 + 8) = 0x8000000237C1A840;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 1;
  swift_willThrow();
  return v52;
}

uint64_t sub_237B89BDC(uint64_t a1, uint64_t a2, char a3)
{
  v70 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  if (a3)
  {
    v68 = v20;
    v69 = v18;
    v71 = v17;
    v21 = 0;
    v22 = *(a2 + 16);
    v23 = MEMORY[0x277D84F98];
    for (i = (a2 + 40); ; i += 2)
    {
      if (v22 == v21)
      {
        v72[0] = v23;
        v49 = v68;
        sub_237B63BC4(v68);
        v50 = sub_237B89344(v49, v72);
        (*(v69 + 8))(v49, v71);
        goto LABEL_40;
      }

      v26 = *(i - 1);
      v25 = *i;

      swift_isUniquelyReferenced_nonNull_native();
      v72[0] = v23;
      v27 = sub_237ACAC78(v26, v25);
      if (__OFADD__(v23[2], (v28 & 1) == 0))
      {
        break;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
      if (sub_237C090AC())
      {
        v31 = sub_237ACAC78(v26, v25);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_49;
        }

        v29 = v31;
      }

      if (v30)
      {

        v23 = v72[0];
        *(*(v72[0] + 56) + 8 * v29) = v21;
      }

      else
      {
        v23 = v72[0];
        *(v72[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v33 = (v23[6] + 16 * v29);
        *v33 = v26;
        v33[1] = v25;
        *(v23[7] + 8 * v29) = v21;
        v34 = v23[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_46;
        }

        v23[2] = v36;
      }

      ++v21;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v71 = v12;
  v69 = v7;
  v37 = *(a2 + 16);
  if (v37)
  {
    v38 = 0;
    v39 = MEMORY[0x277D84F98];
    while (1)
    {
      v40 = *(a2 + 32 + 8 * v38);
      swift_isUniquelyReferenced_nonNull_native();
      v72[0] = v39;
      v41 = sub_237ACB3E0(v40);
      if (__OFADD__(v39[2], (v42 & 1) == 0))
      {
        goto LABEL_42;
      }

      v43 = v41;
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D810, &qword_237C14CE8);
      if (sub_237C090AC())
      {
        v45 = sub_237ACB3E0(v40);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_49;
        }

        v43 = v45;
      }

      v39 = v72[0];
      if (v44)
      {
        *(*(v72[0] + 56) + 8 * v43) = v38;
      }

      else
      {
        *(v72[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
        *(v39[6] + 8 * v43) = v40;
        *(v39[7] + 8 * v43) = v38;
        v47 = v39[2];
        v35 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v35)
        {
          goto LABEL_47;
        }

        v39[2] = v48;
      }

      if (v37 == ++v38)
      {
        goto LABEL_27;
      }
    }
  }

  v39 = MEMORY[0x277D84F98];
LABEL_27:
  v51 = v71;
  sub_237C05FEC();
  sub_2379D9224(&qword_27DE9BD80, &qword_27DE9AB98, &unk_237C0B900);
  v52 = sub_237C08B3C();
  v50 = MEMORY[0x277D84F90];
  if (!v52)
  {
LABEL_39:
    (*(v69 + 8))(v51, v5);
LABEL_40:

    return v50;
  }

  v53 = v52;
  v73 = MEMORY[0x277D84F90];
  sub_237AC8A34();
  v50 = v73;
  sub_237C08B2C();
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = 0;
    v70 = v53;
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      v56 = v5;
      v57 = sub_237C08B9C();
      v59 = *v58;
      v60 = *(v58 + 8);
      v57(v72, 0);
      if (!v39[2])
      {
        goto LABEL_44;
      }

      if (v60)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      v62 = sub_237ACB3E0(v61);
      if ((v63 & 1) == 0)
      {
        goto LABEL_45;
      }

      v64 = *(v39[7] + 8 * v62);
      v73 = v50;
      v65 = *(v50 + 16);
      if (v65 >= *(v50 + 24) >> 1)
      {
        sub_237AC8A34();
        v50 = v73;
      }

      *(v50 + 16) = v65 + 1;
      *(v50 + 8 * v65 + 32) = v64;
      v51 = v71;
      v5 = v56;
      sub_237C08B6C();
      ++v54;
      if (v55 == v70)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
LABEL_49:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237B8A178(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return sub_237AC703C(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return sub_237AC6FE0(a1, a3);
}

uint64_t sub_237B8A1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B8A228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D818, &qword_237C14CF0);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v76 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v75 = v11;
  v12 = sub_237C0610C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v71 = v14;
  v72 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v70 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23();
  v68 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_20(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = sub_237C0683C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v67 = sub_237C075FC();
  v37 = OUTLINED_FUNCTION_4(v67);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_0();
  v40 = sub_237C064FC();
  v41 = OUTLINED_FUNCTION_0(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v48 = v47 - v46;
  sub_237C0787C();
  v49 = *(_s12CausalConv1DVMa(0) + 20);
  v73 = v43;
  v74 = v40;
  v50 = *(v43 + 16);
  v77 = a1;
  v50(v48, a1 + v49, v40);
  OUTLINED_FUNCTION_5_63();
  MEMORY[0x2383DA070]();
  sub_237C067EC();
  v51 = OUTLINED_FUNCTION_10_44();
  v40(v51);
  OUTLINED_FUNCTION_12_45();
  v52 = sub_237C0786C();
  MEMORY[0x2383DA040](v52);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_237A28BFC(v29);
  }

  else
  {
    sub_237C067EC();
    (v40)(v29, v30);
    v53 = v40;
    v54 = v68;
    OUTLINED_FUNCTION_12_45();
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v67);
    v40 = v53;
    sub_237C0783C();
  }

  v69 = v40;
  OUTLINED_FUNCTION_5_63();
  MEMORY[0x2383DA070]();
  v55 = v70;
  OUTLINED_FUNCTION_11_46();
  (v40)(v36, v30);
  sub_237C0612C();
  v56 = v72;
  v57 = *(v71 + 8);
  v57(v55, v72);
  sub_237C0782C();
  OUTLINED_FUNCTION_5_63();
  MEMORY[0x2383DA070]();
  OUTLINED_FUNCTION_11_46();
  v69(v36, v30);
  sub_237C0612C();
  v57(v55, v56);
  sub_237C0780C();
  sub_237C0647C();
  sub_237C0779C();
  v79 = 1;
  v78 = sub_237C0648C();
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49();
  sub_237C077BC();
  v79 = 1;
  v78 = sub_237C064BC();
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49();
  sub_237C0785C();
  v79 = 1;
  v78 = sub_237C064EC();
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49();
  sub_237C077EC();
  v58 = v76;
  sub_237C0762C();
  v59 = *MEMORY[0x277D25190];
  v60 = sub_237C077DC();
  OUTLINED_FUNCTION_4(v60);
  (*(v61 + 104))(v58, v59, v60);
  v62 = OUTLINED_FUNCTION_8_46();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v60);
  sub_237C0784C();
  sub_237B8ADCC(v77, _s12CausalConv1DVMa);
  return (*(v73 + 8))(v48, v74);
}

uint64_t sub_237B8A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D818, &qword_237C14CF0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v77 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v76 = v12;
  v13 = sub_237C0610C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v72 = v15;
  v73 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v71 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23();
  v70 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  v31 = sub_237C0683C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = sub_237C075FC();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v42 = sub_237C065CC();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_0();
  v50 = v49 - v48;
  sub_237C0787C();
  v74 = v45;
  v75 = v42;
  (*(v45 + 16))(v50, v79, v42);
  OUTLINED_FUNCTION_5_63();
  sub_237C0658C();
  sub_237C067EC();
  v51 = OUTLINED_FUNCTION_10_44();
  v42(v51);
  OUTLINED_FUNCTION_12_45();
  sub_237C0786C();
  sub_237C0654C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  v78 = a2;
  if (EnumTagSinglePayload == 1)
  {
    sub_237A28BFC(v30);
  }

  else
  {
    sub_237C067EC();
    (v42)(v30, v31);
    OUTLINED_FUNCTION_12_45();
    v53 = OUTLINED_FUNCTION_8_46();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v38);
    sub_237C0783C();
  }

  OUTLINED_FUNCTION_5_63();
  sub_237C0658C();
  v56 = v71;
  OUTLINED_FUNCTION_11_46();
  (v42)(v37, v31);
  sub_237C0612C();
  v57 = *(v72 + 8);
  v58 = v73;
  v57(v56, v73);
  sub_237C0782C();
  OUTLINED_FUNCTION_5_63();
  sub_237C0658C();
  OUTLINED_FUNCTION_11_46();
  (v42)(v37, v31);
  sub_237C0612C();
  v57(v56, v58);
  sub_237C0780C();
  sub_237C0650C();
  sub_237C0779C();
  v81 = sub_237C0651C();
  sub_237C0651C();
  v80 = v59;
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49();
  sub_237C077BC();
  v81 = sub_237C0656C();
  sub_237C0656C();
  v80 = v60;
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49();
  sub_237C0785C();
  v81 = sub_237C065BC();
  sub_237C065BC();
  v80 = v61;
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49();
  sub_237C077EC();
  v62 = v77;
  sub_237C0762C();
  v63 = *MEMORY[0x277D25190];
  v64 = sub_237C077DC();
  OUTLINED_FUNCTION_4(v64);
  (*(v65 + 104))(v62, v63, v64);
  v66 = OUTLINED_FUNCTION_8_46();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
  sub_237C0784C();
  sub_237B8ADCC(v79, _s11LeakyConv2DVMa);
  return (*(v74 + 8))(v50, v75);
}

uint64_t sub_237B8ADCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_49()
{

  return sub_237C07ACC();
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_237C0679C();
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_237C0760C();
}

void sub_237B8AEC4(uint64_t a1)
{
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v58 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v45 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v11 = OUTLINED_FUNCTION_0(v62);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = *(a1 + 64);
  v47 = a1 + 64;
  v48 = v5;
  v17 = *(a1 + 32);
  OUTLINED_FUNCTION_5_33();
  v20 = v19 & v18;
  v46 = (v21 + 63) >> 6;
  v55 = (v5 + 8);
  v56 = v5 + 16;
  v61 = v22;
  v54 = v22 + 32;

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v49 = a1;
  do
  {
    while (1)
    {
      if (!v20)
      {
        while (1)
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v25 >= v46)
          {
            goto LABEL_25;
          }

          v20 = *(v47 + 8 * v25);
          ++v23;
          if (v20)
          {
            v23 = v25;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

LABEL_7:
      v26 = __clz(__rbit64(v20)) | (v23 << 6);
      v27 = *(*(a1 + 56) + 8 * v26);
      v28 = *(v27 + 16);
      if (v28)
      {
        v51 = v24;
        v52 = v23;
        v53 = v20;
        v29 = (*(a1 + 48) + 16 * v26);
        v30 = v29[1];
        v60 = *v29;
        v65 = MEMORY[0x277D84F90];

        sub_237AC8E34();
        v31 = v65;
        v32 = *(v48 + 80);
        v50 = v27;
        v33 = v27 + ((v32 + 32) & ~v32);
        v59 = *(v48 + 72);
        v34 = *(v48 + 16);
        do
        {
          v35 = v57;
          v34(v57, v33, v2);
          v34(v58, v35, v2);
          v63 = v60;
          v64 = v30;

          sub_237C06C6C();
          (*v55)(v35, v2);
          v65 = v31;
          v36 = *(v31 + 16);
          if (v36 >= *(v31 + 24) >> 1)
          {
            sub_237AC8E34();
            v31 = v65;
          }

          *(v31 + 16) = v36 + 1;
          (*(v61 + 32))(v31 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v36, v15, v62);
          v33 += v59;
          --v28;
        }

        while (v28);

        a1 = v49;
        v23 = v52;
        v20 = v53;
        v24 = v51;
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      v37 = *(v31 + 16);
      v38 = *(v24 + 16);
      if (__OFADD__(v38, v37))
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v38 + v37 > *(v24 + 24) >> 1)
      {
        sub_237BC122C();
        v24 = v39;
      }

      v20 &= v20 - 1;
      if (!*(v31 + 16))
      {
        break;
      }

      v40 = *(v24 + 16);
      if ((*(v24 + 24) >> 1) - v40 < v37)
      {
        goto LABEL_28;
      }

      v41 = v24 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v40;
      swift_arrayInitWithCopy();

      if (v37)
      {
        v42 = *(v24 + 16);
        v43 = __OFADD__(v42, v37);
        v44 = v42 + v37;
        if (v43)
        {
          goto LABEL_29;
        }

        *(v24 + 16) = v44;
      }
    }
  }

  while (!v37);
  __break(1u);
LABEL_25:
}

uint64_t sub_237B8B31C()
{
  v1[2] = v0;
  v2 = sub_237C05ADC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B8B3DC, 0, 0);
}

void sub_237B8B3DC()
{
  v1 = v0[2];
  sub_237B82504();
  v3 = v2;
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D838, &qword_237C14D28);
  v5 = sub_237C0910C();
  v6 = 0;
  v8 = v3 + 64;
  v7 = *(v3 + 64);
  v9 = *(v3 + 32);
  OUTLINED_FUNCTION_5_33();
  v12 = v11 & v10;
  v48 = (v13 + 63) >> 6;
  v49 = v14;
  v58 = v4;
  v56 = v4 + 16;
  v57 = (v4 + 8);
  v50 = v3;
  v51 = v14 + 64;
  v47 = v3 + 64;
  if (v12)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v16 = (v12 - 1) & v12;
LABEL_8:
      v19 = v15 | (v6 << 6);
      v53 = v16;
      v20 = (*(v3 + 48) + 16 * v19);
      v54 = *v20;
      v55 = v19;
      v21 = *(*(v3 + 56) + 8 * v19);
      v22 = *(v21 + 16);
      if (v22)
      {
        break;
      }

      v38 = MEMORY[0x277D84F90];
LABEL_14:
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v40 = (v5[6] + 16 * v55);
      *v40 = v54;
      v40[1] = v39;
      *(v5[7] + 8 * v55) = v38;
      v41 = v5[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_22;
      }

      v5[2] = v43;
      v12 = v53;
      if (!v53)
      {
        goto LABEL_3;
      }
    }

    v59 = MEMORY[0x277D84F90];
    v52 = v20[1];

    sub_237C08FCC();
    v23 = 0;
    v24 = v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    while (v23 < *(v21 + 16))
    {
      (*(v58 + 16))(v0[5], v24 + *(v58 + 72) * v23, v0[3]);
      v25 = sub_237C06ACC();
      v26 = v0[5];
      v27 = v0[3];
      ++v23;
      v35 = OUTLINED_FUNCTION_3_78(v25, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
      v36(v35);
      sub_237C08F8C();
      v37 = *(v59 + 16);
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      if (v22 == v23)
      {

        v38 = v59;
        v5 = v49;
        v3 = v50;
        v8 = v47;
        v39 = v52;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v48)
      {
        v44 = v0[5];

        v45 = v0[1];

        v45(v5);
        return;
      }

      v18 = *(v8 + 8 * v6);
      ++v17;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v16 = (v18 - 1) & v18;
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t MLImageClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2)
{
  sub_237B03618(a2, v36);
  sub_237B82504();
  if (v2)
  {
    OUTLINED_FUNCTION_1_77(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
    sub_237B07C38(&v21);
  }

  else
  {
    sub_237B3CAEC();
    a1 = v13;
    OUTLINED_FUNCTION_1_77(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
    sub_237B07C38(&v21);
  }

  return a1;
}

uint64_t MLImageClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237B82504();
  if (!v4)
  {
    a4 = sub_237B038C8(a1, a2, v9, a3, a4);
  }

  return a4;
}

uint64_t type metadata accessor for MLImageClassifier.DataSource()
{
  result = qword_27DE9D828;
  if (!qword_27DE9D828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B8B8D8()
{
  sub_237A6191C();
  if (v0 <= 0x3F)
  {
    sub_2379FCE48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *OUTLINED_FUNCTION_1_77(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(&a9, &__src, 0x78uLL);
}

uint64_t sub_237B8B9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v20[0] = 0;
  sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30);

  sub_237C0837C();
  v10 = sub_237A59760(0, *(a1 + 16), a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v20[0] = a2;
  v17 = v20[5];
  sub_237B8BC08(MEMORY[0x277D84F90], v10, v12, v14, v16, v20);
  if (v17)
  {
    (*(*(v9 - 8) + 8))(a5, v9);
  }

  swift_unknownObjectRelease();
  return sub_237A286E0(v20);
}

uint64_t sub_237B8BB4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_237ADFA24(a4, result, a5 >> 1);
    if (v10)
    {
      result = v9;
    }

    if (v9 >= result)
    {
      v11 = sub_237B8C124(result, v9, a2, a3, a4, a5);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237B8BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a5 >> 1 == a4)
  {
    sub_2379F6D68(a6, &v70);
    if (v72)
    {
      if (OUTLINED_FUNCTION_0_81())
      {
        v70 = *&v69[0];
        *&v69[0] = a1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
        sub_2379D9224(&qword_27DE9D840, &qword_27DE9AEC8, &qword_237C0C2A0);
        return sub_237C082CC();
      }
    }

    else
    {
LABEL_23:
      sub_237A286E0(&v70);
    }

    sub_2379E8AF0();
    swift_allocError();
    *v35 = 0xD000000000000035;
    *(v35 + 8) = 0x8000000237C1DBF0;
    goto LABEL_47;
  }

  if ((a5 >> 1) <= a4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = a3;
  v7 = *(a3 + 8 * a4);
  sub_2379F6D68(a6, &v70);
  if (!v72)
  {
    sub_237A286E0(&v70);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  v12 = OUTLINED_FUNCTION_0_81();
  if (v12)
  {
    OUTLINED_FUNCTION_6_61(v12, v13, v14, v15, v16, v17, v18, v19, v66, v67, v68, *&v69[0]);
    if (!v21)
    {
      v36 = v20;

      v7 = v36;
      goto LABEL_26;
    }

    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_7_50();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_11:
      v23 = *(a1 + 16);
      v22 = *(a1 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_4_67(v22);
        a1 = v63;
      }

      v25 = 0;
      OUTLINED_FUNCTION_2_75();
      while (v8 != v25)
      {
        if (v25 >= *(v7 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        sub_2379FED88(v24, &v71);
        v26 = *(a1 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!v26)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_237B05F04(a1);
          a1 = v34;
          if (!v26)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        if (v26 > *(a1 + 16))
        {
          goto LABEL_52;
        }

        *(a1 + 8 * v26 + 24) = v25;
        v27 = sub_2379DAD24(&v71, v69);
        OUTLINED_FUNCTION_1_78(v27, v28, v29, v30, v31, v69, v32, v33, v66, v67, v68);
        if (v6)
        {
          swift_unknownObjectRelease();

          sub_237A286E0(v69);
        }

        sub_237A286E0(v69);
        v24 += 32;
        ++v25;
      }

      goto LABEL_45;
    }

LABEL_56:
    OUTLINED_FUNCTION_3_79();
    a1 = v62;
    goto LABEL_11;
  }

LABEL_26:
  sub_2379F6D68(a6, &v70);
  if (!v72)
  {
LABEL_44:
    sub_237A286E0(&v70);
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
  v37 = OUTLINED_FUNCTION_0_81();
  if ((v37 & 1) == 0)
  {
LABEL_46:
    v70 = 0;
    *&v71 = 0xE000000000000000;
    sub_237C08EDC();

    v70 = 0xD00000000000001DLL;
    *&v71 = 0x8000000237C1DBD0;
    *&v69[0] = v7;
    v59 = sub_237C0924C();
    MEMORY[0x2383DC360](v59);

    MEMORY[0x2383DC360](0x746E656D656C6520, 0xEA00000000002E73);
    v60 = v70;
    v61 = v71;
    sub_2379E8AF0();
    swift_allocError();
    *v35 = v60;
    *(v35 + 8) = v61;
LABEL_47:
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0;
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_6_61(v37, v38, v39, v40, v41, v42, v43, v44, v66, v67, v68, *&v69[0]);
  if (!v21)
  {
    v58 = v45;

    v7 = v58;
    goto LABEL_46;
  }

  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_7_50();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_79();
    a1 = v64;
  }

  v47 = *(a1 + 16);
  v46 = *(a1 + 24);
  v48 = v47 + 1;
  if (v47 >= v46 >> 1)
  {
    OUTLINED_FUNCTION_4_67(v46);
    a1 = v65;
  }

  v49 = 0;
  OUTLINED_FUNCTION_2_75();
  while (v8 != v49)
  {
    if (v49 >= *(v7 + 16))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_2379F6D68(v48, &v71);
    v50 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      if (!v50)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_237B05F04(a1);
      a1 = isUniquelyReferenced_nonNull_native;
      if (!v50)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    if (v50 > *(a1 + 16))
    {
      goto LABEL_54;
    }

    *(a1 + 8 * v50 + 24) = v49;
    OUTLINED_FUNCTION_1_78(isUniquelyReferenced_nonNull_native, v52, v53, v54, v55, &v71, v56, v57, v66, v67, v68);
    if (v6)
    {
      sub_237A286E0(&v71);

      return swift_unknownObjectRelease();
    }

    sub_237A286E0(&v71);
    v48 += 32;
    ++v49;
  }

LABEL_45:

  swift_unknownObjectRelease();
}

uint64_t sub_237B8C124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_81()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(v13 - 72);

  return sub_237B8BC08(v11, a11, a10, a9, v12);
}

void OUTLINED_FUNCTION_2_75()
{
  *(v1 + 16) = v3;
  *(v1 + 8 * v0 + 32) = 0;
  v4 = *(v2 + 16);
}

void OUTLINED_FUNCTION_3_79()
{
  v2 = *(v0 + 16) + 1;

  sub_237BC0EB4(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_4_67(unint64_t a1@<X8>)
{

  sub_237BC0EB4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_64()
{

  return sub_237B8BB4C(1, v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_50()
{
}

void MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v202 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v25, &a12);
  v201 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v35);
  v36 = sub_237C0602C();
  v37 = OUTLINED_FUNCTION_0_26(v36, &a14);
  v205 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v191 - v45;
  v47 = sub_237C05DBC();
  v48 = OUTLINED_FUNCTION_0(v47);
  v207 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18_0();
  v54 = (v52 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = &v191 - v56;
  v58 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v59 = OUTLINED_FUNCTION_4(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_0();
  v64 = v63 - v62;
  v65 = OUTLINED_FUNCTION_36_4();
  sub_237B8CDFC(v65, v66);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v193 = v43;
    v196 = v54;
    v76 = v204;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
    OUTLINED_FUNCTION_47_14(*(v77 + 48));
    v194 = v78;
    v197 = v79;
    OUTLINED_FUNCTION_47_14(*(v80 + 64));
    v195 = v81;
    v198 = v82;
    v84 = (v64 + *(v83 + 80));
    v86 = *v84;
    v85 = v84[1];
    v87 = *(v207 + 32);
    v199 = v47;
    v87(v57, v64, v47);
    sub_237C05DFC();
    v88 = sub_237C05FFC();
    v89 = *(v205 + 8);
    v89(v46, v206);
    if (v88 == MEMORY[0x277D837D0])
    {
      v191 = v46;
      v94 = v86;
      v192 = v57;
      sub_237C05DEC();
      v95 = v200;
      sub_237B62FE0(v200);
      if (v21)
      {
        v90 = v86;
        v91 = v85;

        OUTLINED_FUNCTION_9_50();
        v96 = OUTLINED_FUNCTION_56_9();
        v97(v96);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v98, v99, v100, v206);
        sub_237B61F04(v95);
        v92 = 0;
        OUTLINED_FUNCTION_69_7();
        v57 = v192;
      }

      else
      {
        OUTLINED_FUNCTION_9_50();
        v136 = OUTLINED_FUNCTION_56_9();
        v137(v136);
        v138 = OUTLINED_FUNCTION_33_23();
        v139 = v206;
        __swift_storeEnumTagSinglePayload(v138, v140, 1, v206);
        v141 = v205;
        v76 = v193;
        (*(v205 + 32))(v193, v95, v139);
        (*(v141 + 16))(v191, v76, v139);

        v90 = v94;
        v91 = v85;
        v57 = v192;
        sub_237C05E0C();
        v92 = 0;
        v89(v76, v139);
        OUTLINED_FUNCTION_69_7();
      }
    }

    else
    {
      v90 = v86;
      v91 = v85;
      OUTLINED_FUNCTION_69_7();
      v92 = v21;
    }

    v142 = v207;
    v143 = v196;
    v144 = v199;
    (*(v207 + 16))(v196, v57, v199);
    sub_237A70684(v143, 0, &v211);
    if (v92)
    {
      (*(v142 + 8))(v57, v144);

      goto LABEL_24;
    }

    v213 = v211;
    v214 = v212;
    v145 = v90;
    sub_2379E0CC4(&v213, v90, v91);
    v192 = v57;
    v146 = v213;
    v147 = v214;
    v211 = v213;
    v212 = v214;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B680;
    v149 = v197;
    *(inited + 32) = v194;
    *(inited + 40) = v149;
    *(inited + 48) = v145;
    *(inited + 56) = v91;
    *(inited + 64) = v195;
    *(inited + 72) = v76;

    sub_2379DBCF4(v146, v147);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v154, v155, v156, v157, v158, v159, v160, v161, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4();

    if ((v214 & 1) == 0)
    {
      v170 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v170, v171);
      sub_237B6C588();
      v172 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v172, v173);
    }

    sub_237B6C670(v162, v163, v164, v165, v166, v167, v168, v169, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_55_9();
    sub_237B6DAB4();

    if ((v214 & 1) == 0)
    {
      v182 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v182, v183);
      sub_237B6C588();
      v184 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v184, v185);
    }

    v101 = &v213;
    sub_237B6C670(v174, v175, v176, v177, v178, v179, v180, v181, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_13_11();
    sub_237B6DAB4();

    OUTLINED_FUNCTION_32_8();
    if (v76)
    {
      v186 = &v213;
    }

    else
    {
      v187 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v187, v188);
      sub_237B6C588();
    }

    (*(v142 + 8))(v192, v144);
    v189 = OUTLINED_FUNCTION_30();
    sub_2379DBC9C(v189, v190);
    OUTLINED_FUNCTION_32_8();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    _s16FeatureExtractorCMa_0();
    sub_237BA586C(v20, 0, &v211);
    if (v21)
    {
      sub_237A9A80C(v64);
      goto LABEL_24;
    }

    v101 = v211;
    LOBYTE(v76) = v212;
    sub_237A9A80C(v64);
LABEL_13:
    v102 = v202;
    *v202 = v101;
    *(v102 + 8) = v76;
    goto LABEL_24;
  }

  v68 = *v64;
  v69 = *(v64 + 8);
  v70 = *(v64 + 24);
  v206 = *(v64 + 16);
  v71 = *(v64 + 40);
  v207 = *(v64 + 32);
  v72 = *(v64 + 56);
  v73 = *(v64 + 48);
  v213 = v68;
  v214 = v69;
  sub_2379DBCF4(v68, v69);
  sub_2379E0CC4(&v213, v73, v72);
  v74 = v213;
  v75 = v214;
  if (!v21)
  {
    v215 = v69;
    v211 = v213;
    v212 = v214;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_237C0B680;
    *(v93 + 32) = v206;
    *(v93 + 40) = v70;
    *(v93 + 48) = v73;
    *(v93 + 56) = v72;
    *(v93 + 64) = v207;
    *(v93 + 72) = v71;
    sub_2379DBCF4(v74, v75);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v103, v104, v105, v106, v107, v108, v109, v110, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4();

    if ((v214 & 1) == 0)
    {
      v119 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v119, v120);
      sub_237B6C588();
      v121 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v121, v122);
    }

    sub_237B6C670(v111, v112, v113, v114, v115, v116, v117, v118, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    OUTLINED_FUNCTION_15_37();
    sub_237B6DAB4();

    if ((v214 & 1) == 0)
    {
      v131 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v131, v132);
      sub_237B6C588();
      v133 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v133, v134);
    }

    sub_237B6C670(v123, v124, v125, v126, v127, v128, v129, v130, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210);
    OUTLINED_FUNCTION_19_17();
    sub_237B6DAB4();

    v101 = v213;
    if (v214)
    {
      v135 = v213;
      sub_2379DBC9C(v68, v215);
      LOBYTE(v76) = 1;
      sub_2379DBC9C(v101, 1);
    }

    else
    {
      v150 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v150, v151);
      sub_237B6C588();
      sub_2379DBC9C(v68, v215);
      v152 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v152, v153);
      LOBYTE(v76) = 0;
    }

    goto LABEL_13;
  }

  sub_2379DBC9C(v213, v214);

  sub_2379DBC9C(v68, v69);
LABEL_24:
  OUTLINED_FUNCTION_73();
}

uint64_t MLHandPoseClassifier.DataSource.labeledMedia()()
{
  sub_237B84894();
  v2 = v1;
  if (!v0)
  {
  }

  return v2;
}

uint64_t type metadata accessor for MLHandPoseClassifier.DataSource()
{
  result = qword_27DE9D848;
  if (!qword_27DE9D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B8CDFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandPoseClassifier.DataSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MLHandPoseClassifier.DataSource.imagesWithAnnotations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v309 = v24;
  v25 = sub_237C05DBC();
  v26 = OUTLINED_FUNCTION_0_26(v25, &v340);
  v305 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v34);
  v35 = sub_237C0825C();
  v36 = OUTLINED_FUNCTION_0_26(v35, &a10);
  v307 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_82_5();
  v41 = sub_237C05ADC();
  v42 = OUTLINED_FUNCTION_0_26(v41, &a12);
  v311 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v301 - v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = (&v301 - v53);
  MEMORY[0x28223BE20](v52);
  v56 = &v301 - v55;
  v57 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v58 = OUTLINED_FUNCTION_4(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2_0();
  v63 = v62 - v61;
  sub_237B8CDFC(v20, v62 - v61);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_71_8();
      OUTLINED_FUNCTION_59_10();
      v111();
      sub_237C0821C();
      v112 = a10;
      sub_237A5C58C();
      if (!v112)
      {
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v182();
        sub_237B830A8();

        v200 = OUTLINED_FUNCTION_2_71();
        OUTLINED_FUNCTION_22_26(v200, v201);
        OUTLINED_FUNCTION_24_31();
        v235 = OUTLINED_FUNCTION_3_70(&a14);
        sub_2379DBC9C(v235, v236);
        OUTLINED_FUNCTION_36_3(&a13);
        v237(v54, v57);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_9_50();
      OUTLINED_FUNCTION_34_19();
      v113();
      (*(v32 + 8))(v54, v57);
      goto LABEL_49;
    case 2u:
      OUTLINED_FUNCTION_71_8();
      OUTLINED_FUNCTION_59_10();
      v104();
      sub_237C0821C();
      v105 = a10;
      sub_237A5D608();
      if (!v105)
      {
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v162();
        sub_237B830A8();

        v198 = OUTLINED_FUNCTION_2_71();
        OUTLINED_FUNCTION_22_26(v198, v199);
        OUTLINED_FUNCTION_24_31();
        v230 = OUTLINED_FUNCTION_3_70(&a14);
        sub_2379DBC9C(v230, v231);
        v232 = *(v32 + 8);
        v233 = OUTLINED_FUNCTION_138_0();
        v234(v233);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_9_50();
      OUTLINED_FUNCTION_34_19();
      v106();
      (*(v32 + 8))(v56, v57);
      goto LABEL_49;
    case 3u:
      sub_237A9A80C(v63);
      v107 = MEMORY[0x2383DDC00](0);
      if (!v107)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        JUMPOUT(0x237B8DED4);
      }

      v108 = v107;
      type metadata accessor for CMLTable();
      v109 = swift_allocObject();
      *(v109 + 16) = v108;
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2();
      v110 = sub_237B6C578(v109);
      OUTLINED_FUNCTION_53_12(v110);
      goto LABEL_49;
    case 4u:
      v84 = *v63;
      v85 = *(v63 + 8);
      v87 = *(v63 + 16);
      v86 = *(v63 + 24);
      v89 = *(v63 + 32);
      v88 = *(v63 + 40);
      v338 = v84;
      v339 = v85;
      v312 = v84;
      LOBYTE(v313) = v85;
      v90 = OUTLINED_FUNCTION_55();
      sub_2379DBCF4(v90, v91);
      v92 = OUTLINED_FUNCTION_55();
      sub_2379DBCF4(v92, v93);
      v94 = OUTLINED_FUNCTION_63_8();
      v95 = a10;
      sub_237B845E8(v94, v96, v97, v98, v88);
      if (!v95)
      {
        v134 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v134, v135);
        sub_237B6C670(v136, v137, v138, v139, v140, v141, v142, v143, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
        OUTLINED_FUNCTION_8_45();
        OUTLINED_FUNCTION_50_10();
        sub_237B6DAB4();

        if ((v339 & 1) == 0)
        {
          v152 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v152, v153);
          sub_237B6C588();
          v154 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v154, v155);
        }

        sub_237B6C670(v144, v145, v146, v147, v148, v149, v150, v151, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
        OUTLINED_FUNCTION_19_17();
        OUTLINED_FUNCTION_13_11();
        sub_237B6DAB4();

        v156 = v338;
        if (v339)
        {
          v157 = v338;
          v158 = OUTLINED_FUNCTION_55();
          sub_2379DBC9C(v158, v159);
          v160 = v156;
          v161 = 1;
        }

        else
        {
          v194 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v194, v195);
          sub_237B6C588();
          v196 = OUTLINED_FUNCTION_55();
          sub_2379DBC9C(v196, v197);
          v160 = OUTLINED_FUNCTION_85();
        }

        sub_2379DBC9C(v160, v161);
        goto LABEL_48;
      }

      v99 = OUTLINED_FUNCTION_55();
      sub_2379DBC9C(v99, v100);
      v101 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v101, v102);
      v103 = OUTLINED_FUNCTION_55();
      sub_2379DBC9C(v103, v202);
      goto LABEL_49;
    case 5u:
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v115 = *(v63 + v114[12] + 8);

      v116 = *(v63 + v114[16] + 8);

      v117 = *(v63 + v114[20] + 8);

      v118 = MEMORY[0x2383DDC00](0);
      if (!v118)
      {
        goto LABEL_51;
      }

      v119 = v118;
      type metadata accessor for CMLTable();
      v120 = swift_allocObject();
      *(v120 + 16) = v119;
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2();
      v121 = sub_237B6C578(v120);
      OUTLINED_FUNCTION_53_12(v121);
      OUTLINED_FUNCTION_36_3(&v339);
      v122(v63, v306);
      goto LABEL_49;
    case 6u:
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      v124 = (v63 + *(v123 + 48));
      v126 = *v124;
      v125 = v124[1];
      v127 = (v63 + *(v123 + 64));
      v129 = *v127;
      v128 = v127[1];
      v130 = v305;
      v131 = v303;
      v132 = v306;
      (*(v305 + 32))();
      (*(v130 + 16))(v32, v131, v132);
      v133 = a10;
      sub_237A70684(v32, 0, &v312);
      if (!v133)
      {
        v183 = OUTLINED_FUNCTION_2_71();
        OUTLINED_FUNCTION_22_26(v183, v184);
        v185 = OUTLINED_FUNCTION_63_8();
        sub_237B845E8(v185, v186, v187, v188, v128);
        v203 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v203, v204);
        sub_237B6C670(v205, v206, v207, v208, v209, v210, v211, v212, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
        OUTLINED_FUNCTION_8_45();
        OUTLINED_FUNCTION_50_10();
        sub_237B6DAB4();

        if ((v339 & 1) == 0)
        {
          v221 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v221, v222);
          sub_237B6C588();
          v223 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v223, v224);
        }

        sub_237B6C670(v213, v214, v215, v216, v217, v218, v219, v220, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
        OUTLINED_FUNCTION_19_17();
        sub_237B6DAB4();

        OUTLINED_FUNCTION_32_8();
        if (v131)
        {
          v225 = &v338;
        }

        else
        {
          v226 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v226, v227);
          sub_237B6C588();
        }

        (*(v130 + 8))(v303, v132);
        v228 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v228, v229);
        goto LABEL_48;
      }

      (*(v130 + 8))(v131, v132);

      goto LABEL_49;
    default:
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v65 = v64[12];
      v66 = (v63 + v64[16]);
      v68 = *v66;
      v67 = v66[1];
      v307 = v68;
      v308 = v67;
      v69 = v63 + v64[20];
      v70 = *(v69 + 8);
      v306 = *v69;
      OUTLINED_FUNCTION_45_15();
      v71 = v54[4];
      v72 = v304;
      v73 = OUTLINED_FUNCTION_56_9();
      v74 = v310;
      v71(v73);
      v75 = v63 + v65;
      v76 = v302;
      (v71)(v302, v75, v74);
      v77 = v76;
      v78 = v54[2];
      v79 = OUTLINED_FUNCTION_13_11();
      v80(v79);
      LOBYTE(v312) = 1;
      *(&v312 + 1) = *v337;
      HIDWORD(v312) = *&v337[3];
      v313 = 44;
      v314 = 0xE100000000000000;
      v315 = 0;
      v316 = 0xE000000000000000;
      v317 = 92;
      v318 = 0xE100000000000000;
      LOBYTE(v319) = 1;
      *(&v319 + 1) = *v336;
      HIDWORD(v319) = *&v336[3];
      v320 = 34;
      v321 = 0xE100000000000000;
      v322 = 1;
      *v323 = *v335;
      *&v323[3] = *&v335[3];
      v324 = &unk_284ABEBF0;
      v325 = 10;
      v326 = 0xE100000000000000;
      v327 = 0;
      v328 = 0;
      v329 = 1;
      *v330 = *v334;
      *&v330[3] = *&v334[3];
      v331 = 0;
      v81 = a10;
      MLDataTable.init(contentsOf:options:)(v49, &v312, &v332);
      if (v81)
      {
        v82 = v54[1];
        v82(v77, v74);

        v83 = v72;
LABEL_30:
        v82(v83, v74);
        goto LABEL_49;
      }

      v163 = v70;
      v338 = v332;
      v339 = v333;
      v164 = v307;
      v165 = v308;
      MLDataTable.subscript.getter();
      v166 = v312;
      if ((v313 & 1) != 0 || (v167 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v167, v168), v54 = v166, sub_237A60248(&v332), v169 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v169, v170), v332 != 2))
      {

        v189 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v189, v190);
        v312 = 0;
        v313 = 0xE000000000000000;
        sub_237C08EDC();

        v312 = 0x206E6D756C6F43;
        v313 = 0xE700000000000000;
        MEMORY[0x2383DC360](v164, v165);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
        v191 = v312;
        v192 = v313;
        sub_2379E8AF0();
        swift_allocError();
        *v193 = v191;
        *(v193 + 8) = v192;
        *(v193 + 16) = 0u;
        *(v193 + 32) = 0u;
        *(v193 + 48) = 0;
        swift_willThrow();
        OUTLINED_FUNCTION_45_15();
        v82 = v54[1];
        v82(v77, v74);
        sub_2379DBC9C(v338, v339);
        v83 = v304;
        goto LABEL_30;
      }

      v171 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v171, v172);
      sub_237A607E0(0, &v312);
      v173 = OUTLINED_FUNCTION_33_23();
      sub_2379DBC9C(v173, v174);
      v175 = v312;
      v176 = v313;
      if (v314 != 2)
      {
        sub_2379E8CE8(v312, v313, v314);
        v175 = 0;
        v176 = 0xE000000000000000;
      }

      v312 = v175;
      v313 = v176;
      sub_237C0883C();
      sub_237C059BC();

      v177 = [objc_opt_self() defaultManager];
      sub_237C05A9C();
      v178 = sub_237C086BC();

      v179 = [v177 fileExistsAtPath_];

      if (v179)
      {
        v180 = v338;
        v181 = v339;
      }

      else
      {
        v238 = OUTLINED_FUNCTION_33_23();
        sub_2379DBCF4(v238, v239);
        v240 = OUTLINED_FUNCTION_33_23();
        v242 = sub_2379DFC10(v240, v241);
        MEMORY[0x28223BE20](v242);
        OUTLINED_FUNCTION_17_14();
        *(v243 - 16) = v304;
        v245 = sub_2379E1FAC(sub_237B90868, v244, v242);

        v312 = v245;
        MEMORY[0x28223BE20](v246);
        OUTLINED_FUNCTION_17_14();
        *(v247 - 16) = v248;
        v249 = sub_237BBDC94(sub_2379F5678);
        v251 = v250;

        sub_237B6C670(v252, v253, v254, v255, v256, v257, v258, v259, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
        v312 = v249;
        LOBYTE(v313) = v251 & 1;
        sub_237B6CF70(&v312);
        v260 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v260, v261);
        v180 = v338;
        if (v339)
        {
          v181 = 1;
        }

        else
        {
          v262 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v262, v263);
          sub_237B6C588();
          v264 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v264, v265);
          v181 = 0;
        }
      }

      v266 = v306;
      v312 = v180;
      LOBYTE(v313) = v181;
      sub_2379DBCF4(v180, v181);
      sub_237B845E8(&v312, v164, v165, v266, v163);
      v267 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v267, v268);
      sub_237B6C670(v269, v270, v271, v272, v273, v274, v275, v276, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
      OUTLINED_FUNCTION_8_45();
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4();

      if ((v339 & 1) == 0)
      {
        v285 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v285, v286);
        sub_237B6C588();
        v287 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v287, v288);
      }

      sub_237B6C670(v277, v278, v279, v280, v281, v282, v283, v284, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      if (v266)
      {
        v289 = &v338;
      }

      else
      {
        v290 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v290, v291);
        sub_237B6C588();
      }

      v292 = v304;
      v293 = OUTLINED_FUNCTION_33_23();
      sub_2379DBC9C(v293, v294);
      OUTLINED_FUNCTION_45_15();
      v295 = v54[1];
      v296 = v310;
      v295(v301, v310);
      v295(v302, v296);
      v297 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v297, v298);
      v295(v292, v296);
LABEL_48:
      v299 = v309;
      v300 = v339;
      *v309 = v338;
      *(v299 + 8) = v300;
LABEL_49:
      OUTLINED_FUNCTION_73();
      return;
  }
}

void MLHandPoseClassifier.DataSource.extractKeypoints()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v25 = v20;
  v192 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B908, &qword_237C0E258);
  OUTLINED_FUNCTION_0_26(v27, &v199);
  v186 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v33, &a10);
  v189 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v40 = OUTLINED_FUNCTION_20(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  v45 = v44;
  v46 = sub_237C0602C();
  v47 = OUTLINED_FUNCTION_0_26(v46, &a15);
  v193 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18_0();
  v53 = v51 - v52;
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v173 - v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_82_5();
  v58 = sub_237C05DBC();
  v59 = OUTLINED_FUNCTION_0(v58);
  v194 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_0();
  v65 = v64 - v63;
  v66 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v67 = OUTLINED_FUNCTION_4(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_0();
  v72 = v71 - v70;
  sub_237B8CDFC(v25, v71 - v70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v178 = v57;
    v177 = v53;
    v179 = v45;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
    v85 = (v72 + v84[12]);
    v87 = *v85;
    v86 = v85[1];
    v180 = v87;
    v182 = v86;
    v88 = (v72 + v84[16]);
    v90 = *v88;
    v89 = v88[1];
    v181 = v90;
    v183 = v89;
    v91 = (v72 + v84[20]);
    v93 = *v91;
    v92 = v91[1];
    v95 = *(v194 + 32);
    v94 = v194 + 32;
    v96 = OUTLINED_FUNCTION_13_11();
    v184 = v58;
    v98 = v97;
    v176 = v94;
    v175 = v99;
    (v99)(v96);
    v100 = v93;
    OUTLINED_FUNCTION_62_8();
    sub_237C05DFC();
    v101 = sub_237C05FFC();
    OUTLINED_FUNCTION_45_15();
    v102 = *(v25 + 8);
    v102(v22, v195);
    if (v101 == MEMORY[0x277D837D0])
    {
      v174 = v102;
      v191 = v22;
      OUTLINED_FUNCTION_48_14();
      sub_237C05DEC();
      v107 = v179;
      v108 = a10;
      sub_237B62FE0(v179);
      v104 = v108;
      if (v108)
      {

        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v109();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v195);
        sub_237B61F04(v107);
        v104 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v161();
        v162 = v195;
        __swift_storeEnumTagSinglePayload(v107, 0, 1, v195);
        (*(v25 + 32))(v178, v107, v162);
        v163 = v178;
        (*(v25 + 16))(v191, v178, v162);

        OUTLINED_FUNCTION_36_4();
        sub_237C05E0C();
        v174(v163, v162);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_14();
      sub_237C05DFC();
      v103 = sub_237C05FFC();
      v102(v22, v195);
      if (v103 == MEMORY[0x277CC9318])
      {
        v174 = v102;
        v113 = v185;
        OUTLINED_FUNCTION_48_14();
        sub_237C05DEC();
        v114 = a10;
        sub_237B64134(v191);
        v104 = v114;
        v115 = v194;
        if (v114)
        {

          OUTLINED_FUNCTION_36_3(&v198);
          v116(v113, v187);
          v117 = v191;
          OUTLINED_FUNCTION_64();
          __swift_storeEnumTagSinglePayload(v118, v119, v120, v195);
          sub_237B61F04(v117);
          v104 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_36_3(&v198);
          v170(v113, v187);
          v171 = v195;
          __swift_storeEnumTagSinglePayload(v191, 0, 1, v195);
          v172 = v193;
          (*(v193 + 32))(v177, v191, v171);
          (*(v172 + 16))(v22, v177, v171);

          sub_237C05E0C();
          v174(v177, v171);
        }

        goto LABEL_25;
      }

      v104 = a10;
    }

    v115 = v194;
LABEL_25:
    v164 = v183;
    v165 = OUTLINED_FUNCTION_48_14();
    sub_237A384C8(v165, v166, v167);
    v168 = v182;
    if (!v104)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B680;
      *(inited + 32) = v180;
      *(inited + 40) = v168;
      *(inited + 48) = v100;
      *(inited + 56) = v98;
      *(inited + 64) = v181;
      *(inited + 72) = v164;

      OUTLINED_FUNCTION_19_15();
      sub_2379F2DA4();
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_16_27();
      OUTLINED_FUNCTION_72_6();
      sub_237C05C8C();

      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_55_9();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();

      v175(v192, v65, v184);
      goto LABEL_28;
    }

    (*(v115 + 8))(v65, v184);

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);
    v76 = *(v72 + 24);
    v77 = *(v72 + 32);
    v78 = *(v72 + 40);
    v80 = *(v72 + 48);
    v79 = *(v72 + 56);
    v198 = *v72;
    v199 = v74;
    v81 = a10;
    sub_2379E0CC4(&v198, v80, v79);
    v82 = v198;
    v83 = v199;
    if (v81)
    {
      sub_2379DBC9C(v198, v199);

LABEL_27:

      goto LABEL_28;
    }

    v196 = v198;
    v197 = v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v106 = swift_initStackObject();
    *(v106 + 16) = xmmword_237C0B680;
    a10 = v75;
    *(v106 + 32) = v75;
    *(v106 + 40) = v76;
    *(v106 + 48) = v80;
    *(v106 + 56) = v79;
    *(v106 + 64) = v77;
    *(v106 + 72) = v78;
    sub_2379DBCF4(v82, v83);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v121, v122, v123, v124, v125, v126, v127, v128, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4();

    if ((v199 & 1) == 0)
    {
      v137 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v137, v138);
      sub_237B6C588();
      v139 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v139, v140);
    }

    sub_237B6C670(v129, v130, v131, v132, v133, v134, v135, v136, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
    OUTLINED_FUNCTION_15_37();
    sub_237B6DAB4();

    if ((v199 & 1) == 0)
    {
      v149 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v149, v150);
      sub_237B6C588();
      v151 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v151, v152);
    }

    sub_237B6C670(v141, v142, v143, v144, v145, v146, v147, v148, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
    OUTLINED_FUNCTION_19_17();
    sub_237B6DAB4();

    v153 = v199;
    v154 = v198;
    if ((v199 & 1) == 0)
    {
      v155 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v155, v156);
      sub_237B6C588();
      v157 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v157, v158);
    }

    v196 = v154;
    v197 = v153;
    v159 = OUTLINED_FUNCTION_30();
    sub_2379DBCF4(v159, v160);
    sub_237A70ED4(&v196, v192);
    sub_2379DBC9C(v154, v153);
  }

  else
  {
    _s16FeatureExtractorCMa_0();
    v105 = a10;
    sub_237BA586C(v25, 0, &v198);
    if (!v105)
    {
      v196 = v198;
      v197 = v199;
      sub_237A70ED4(&v196, v192);
    }

    sub_237A9A80C(v72);
  }

LABEL_28:
  OUTLINED_FUNCTION_73();
}

void MLHandPoseClassifier.DataSource.gatherAnnotatedFileNames()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v303 = v21;
  v308 = v20;
  v301 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v26, &a13);
  v289 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_0_26(v32, &a16);
  v292 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v37);
  v38 = sub_237C05FAC();
  v39 = OUTLINED_FUNCTION_0_26(v38, &a18);
  v285 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v44 - v43);
  v45 = sub_237C05E5C();
  v46 = OUTLINED_FUNCTION_20(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v50 - v49);
  v51 = sub_237C05E9C();
  v52 = OUTLINED_FUNCTION_20(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_0();
  v297 = v56 - v55;
  v57 = sub_237C05DBC();
  v58 = OUTLINED_FUNCTION_0(v57);
  v307 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18_0();
  v304 = (v62 - v63);
  OUTLINED_FUNCTION_39_0();
  v65 = MEMORY[0x28223BE20](v64);
  v67 = &v284 - v66;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_138();
  v296 = v69;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v71);
  v72 = sub_237C0825C();
  v73 = OUTLINED_FUNCTION_0(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_18_0();
  v80 = v78 - v79;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_82_5();
  v313 = sub_237C05ADC();
  v82 = OUTLINED_FUNCTION_0(v313);
  v302 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_138();
  v88 = v87;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_138();
  v305 = v90;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_138();
  v306 = v92;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_138();
  *&v299 = v94;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_138();
  v310 = v96;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_138();
  *&v309 = v98;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_58();
  *&v298 = v100;
  v101 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v102 = OUTLINED_FUNCTION_4(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_2_0();
  v107 = v106 - v105;
  sub_237B8CDFC(v308, v106 - v105);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v162 = v302;
      v163 = *(v302 + 32);
      v164 = OUTLINED_FUNCTION_36_4();
      v165(v164);
      sub_237C0821C();
      OUTLINED_FUNCTION_62_8();
      v166 = v303;
      sub_237A5C58C();
      if (v166)
      {
        (*(v75 + 8))(v80, v72);
        v168 = *(v162 + 8);
        v157 = OUTLINED_FUNCTION_36_4();
        goto LABEL_16;
      }

      v242 = v167;
      (*(v75 + 8))(v80, v72);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
      v243 = sub_237C0910C();
      v244 = 0;
      OUTLINED_FUNCTION_16_30();
      v291 = v245;
      v303 = 0;
      v300 = v57;
      v292 = v242;
      OUTLINED_FUNCTION_70_6(v246);
      if (v72)
      {
LABEL_44:
        OUTLINED_FUNCTION_45_14();
        goto LABEL_50;
      }

LABEL_45:
      v248 = v244;
      while (1)
      {
        v244 = v248 + 1;
        if (__OFADD__(v248, 1))
        {
          goto LABEL_70;
        }

        if (v244 >= v67)
        {
          break;
        }

        ++v248;
        if (*(v288 + 8 * v244))
        {
          OUTLINED_FUNCTION_66_8();
LABEL_50:
          v249 = v247 | (v244 << 6);
          v250 = *(v242 + 56);
          v251 = (*(v242 + 48) + 16 * v249);
          v252 = v251[1];
          *&v298 = *v251;
          v253 = *(v250 + 8 * v249);
          if (*(v253 + 16))
          {
            v295 = v249;
            v296 = v72;
            v297 = v244;
            v311 = MEMORY[0x277D84F90];
            v294 = v252;

            OUTLINED_FUNCTION_72_8();
            OUTLINED_FUNCTION_21_34();
            do
            {
              v254 = OUTLINED_FUNCTION_35_18();
              v255(v254);
              v256 = v310;
              sub_237C0595C();
              v257 = sub_237C05A9C();
              v258 = OUTLINED_FUNCTION_30_23(v257);
              v256(v258);
              (v256)(v243, v162);
              OUTLINED_FUNCTION_60_13();
              if (v234)
              {
                OUTLINED_FUNCTION_46_16();
                v253 = v311;
              }

              OUTLINED_FUNCTION_28_21();
            }

            while (!v118);

            v243 = v290;
            v72 = v296;
            v244 = v297;
            v67 = v289;
            v249 = v295;
          }

          else
          {

            v253 = MEMORY[0x277D84F90];
          }

          OUTLINED_FUNCTION_41_14((v249 >> 3) & 0x1FFFFFFFFFFFFFF8);
          v260 = (v259 + 16 * v249);
          *v260 = v298;
          v260[1] = v261;
          *(*(v243 + 56) + 8 * v249) = v253;
          v262 = *(v243 + 16);
          v240 = __OFADD__(v262, 1);
          v263 = v262 + 1;
          v242 = v292;
          if (!v240)
          {
            *(v243 + 16) = v263;
            v57 = v300;
            v162 = v302;
            if (v72)
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }

LABEL_72:
          __break(1u);
          JUMPOUT(0x237B90064);
        }
      }

      OUTLINED_FUNCTION_20_32();
      (*v305)(v299, v313);
      goto LABEL_65;
    case 2u:
      v150 = v302;
      v151 = *(v302 + 32);
      v152 = OUTLINED_FUNCTION_36_4();
      v153(v152);
      sub_237C0821C();
      v154 = v303;
      sub_237A5D608();
      if (v154)
      {
        (*(v75 + 8))(v22, v72);
        v156 = *(v150 + 8);
        v157 = OUTLINED_FUNCTION_62_8();
LABEL_16:
        v158(v157);
      }

      else
      {
        v217 = v155;
        (*(v75 + 8))(v22, v72);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
        v218 = sub_237C0910C();
        v219 = 0;
        OUTLINED_FUNCTION_16_30();
        v292 = v220;
        v303 = 0;
        v300 = v57;
        v291 = v217;
        OUTLINED_FUNCTION_70_6(v221);
        if (v72)
        {
LABEL_26:
          OUTLINED_FUNCTION_45_14();
          goto LABEL_32;
        }

LABEL_27:
        v223 = v219;
        while (1)
        {
          v219 = v223 + 1;
          if (__OFADD__(v223, 1))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (v219 >= v67)
          {
            break;
          }

          ++v223;
          if (*(v288 + 8 * v219))
          {
            OUTLINED_FUNCTION_66_8();
LABEL_32:
            v224 = v222 | (v219 << 6);
            v225 = *(v217 + 56);
            v226 = (*(v217 + 48) + 16 * v224);
            v227 = v226[1];
            v297 = *v226;
            *&v299 = v224;
            v228 = *(v225 + 8 * v224);
            if (*(v228 + 16))
            {
              v295 = v72;
              v296 = v219;
              v311 = MEMORY[0x277D84F90];
              v294 = v227;

              OUTLINED_FUNCTION_72_8();
              OUTLINED_FUNCTION_21_34();
              do
              {
                v229 = OUTLINED_FUNCTION_35_18();
                v230(v229);
                v231 = v310;
                sub_237C0595C();
                v232 = sub_237C05A9C();
                v233 = OUTLINED_FUNCTION_30_23(v232);
                v231(v233);
                (v231)(v218, v150);
                OUTLINED_FUNCTION_60_13();
                if (v234)
                {
                  OUTLINED_FUNCTION_46_16();
                  v228 = v311;
                }

                OUTLINED_FUNCTION_28_21();
              }

              while (!v118);

              v217 = v291;
              v218 = v290;
              v219 = v296;
              v67 = v289;
              v72 = v295;
            }

            else
            {

              v228 = MEMORY[0x277D84F90];
            }

            OUTLINED_FUNCTION_41_14((v299 >> 3) & 0x1FFFFFFFFFFFFFF8);
            v237 = (v235 + 16 * v236);
            *v237 = v297;
            v237[1] = v238;
            *(*(v218 + 56) + 8 * v236) = v228;
            v239 = *(v218 + 16);
            v240 = __OFADD__(v239, 1);
            v241 = v239 + 1;
            if (!v240)
            {
              *(v218 + 16) = v241;
              v57 = v300;
              v150 = v302;
              if (v72)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        OUTLINED_FUNCTION_20_32();
        (*v305)(v298, v313);
LABEL_65:
        __swift_storeEnumTagSinglePayload(v57, 0, 1, v67);
      }

      goto LABEL_68;
    case 3u:
      sub_237A9A80C(v107);
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v57);
      goto LABEL_68;
    case 4u:
      v300 = v57;
      v141 = *v107;
      v57 = *(v107 + 8);
      v143 = *(v107 + 16);
      v142 = *(v107 + 24);
      v144 = *(v107 + 40);
      v310 = *(v107 + 32);
      v311 = v141;
      LOBYTE(v312) = v57;
      v145 = OUTLINED_FUNCTION_13_11();
      sub_2379DBCF4(v145, v146);
      sub_237A70ED4(&v311, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v147 = OUTLINED_FUNCTION_75_2();
      v309 = xmmword_237C0B660;
      *(v147 + 16) = xmmword_237C0B660;
      v148 = MEMORY[0x277D837D0];
      *(v147 + 32) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_29_18();
      v149 = v303;
      sub_2379F30EC();
      if (v149)
      {
        v213 = OUTLINED_FUNCTION_25_28();
        v214(v213);

        v215 = OUTLINED_FUNCTION_13_11();
        sub_2379DBC9C(v215, v216);

        goto LABEL_62;
      }

      v212 = OUTLINED_FUNCTION_75_2();
      *(v212 + 16) = v309;
      *(v212 + 32) = v148;
      sub_2379F30EC();

      OUTLINED_FUNCTION_8_45();
      OUTLINED_FUNCTION_50_10();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();
      v265 = OUTLINED_FUNCTION_13_11();
      sub_2379DBC9C(v265, v266);

      v267 = *(v307 + 32);
      v268 = OUTLINED_FUNCTION_44_15();
      v269(v268);
      goto LABEL_65;
    case 5u:
      v169 = v57;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v171 = *(v107 + v170[12] + 8);

      v172 = *(v107 + v170[16] + 8);

      v173 = *(v107 + v170[20] + 8);

      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v169);
      (*(v307 + 8))(v107, v169);
      goto LABEL_68;
    case 6u:
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      v178 = (v107 + *(v177 + 48));
      v180 = *v178;
      v179 = v178[1];
      OUTLINED_FUNCTION_47_14(*(v177 + 64));
      v310 = v181;
      v314 = v182;
      v183 = v307;
      v184 = *(v307 + 32);
      v67 = v304;
      v185 = OUTLINED_FUNCTION_36_4();
      v308 = v186;
      (v186)(v185);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v187 = OUTLINED_FUNCTION_75_2();
      v309 = xmmword_237C0B660;
      *(v187 + 16) = xmmword_237C0B660;
      *(v187 + 32) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_138_0();
      v188 = v303;
      sub_2379F30EC();
      if (!v188)
      {
        v306 = v180;
        v300 = v57;

        v264 = OUTLINED_FUNCTION_75_2();
        *(v264 + 16) = v309;
        *(v264 + 32) = MEMORY[0x277D837D0];
        v57 = v314;
        sub_2379F30EC();

        OUTLINED_FUNCTION_8_45();
        OUTLINED_FUNCTION_50_10();
        sub_237C05C8C();

        sub_237C05C8C();

        v270 = OUTLINED_FUNCTION_44_15();
        (v308)(v270);
        goto LABEL_65;
      }

      (*(v183 + 8))(v67, v57);

LABEL_62:

      goto LABEL_68;
    default:
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v109 = v108[12];
      v110 = (v107 + v108[16]);
      v111 = v110[1];
      v304 = *v110;
      OUTLINED_FUNCTION_47_14(v108[20]);
      v308 = v113;
      *&v309 = v112;
      v310 = v114;
      v115 = *(v302 + 32);
      v115(v306, v107, v313);
      v116 = v305;
      v115(v305, v107 + v109, v313);
      v118 = sub_237C0597C() == 1852797802 && v117 == 0xE400000000000000;
      v300 = v57;
      if (v118)
      {
      }

      else
      {
        v119 = sub_237C0929C();

        if ((v119 & 1) == 0)
        {
          (*(v302 + 16))(v294, v116, v313);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v120 = swift_allocObject();
          v298 = xmmword_237C0B670;
          *&v299 = v120;
          *(v120 + 16) = xmmword_237C0B670;
          v121 = v304;
          v122 = v308;
          *(v120 + 32) = v304;
          *(v120 + 40) = v122;
          v123 = v122;
          v124 = v310;
          *(v120 + 48) = v309;
          *(v120 + 56) = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F0, &unk_237C0E228);
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110);
          OUTLINED_FUNCTION_64_6(v125);
          v127 = *(v126 + 72);
          v129 = (*(v128 + 80) + 32) & ~*(v128 + 80);
          v130 = swift_allocObject();
          *(v130 + 16) = v298;
          v131 = (v130 + v129);
          v132 = MEMORY[0x6E6F73A2];
          *v131 = v121;
          v131[1] = v123;
          v133 = *MEMORY[0x277CE1920];
          v134 = *(v285 + 104);
          v134(v130 + v129 + v132, v133, v295);
          v135 = (v131 + v127);
          v136 = MEMORY[0x6E6F73A2];
          v137 = v310;
          *v135 = v309;
          v135[1] = v137;
          v138 = v295;
          v134(v135 + v136, v133, v295);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_237C085AC();
          sub_237B9068C(&unk_284ABFD58);
          sub_237B9068C(&unk_284ABFE18);
          sub_237B9068C(&unk_284ABFE78);
          v139 = v286;
          v134(v286, *MEMORY[0x277CE1918], v138);
          sub_237C05E4C();
          OUTLINED_FUNCTION_69_7();
          v140 = v303;
          sub_237C05CAC();
          if (v140)
          {
            goto LABEL_23;
          }

          goto LABEL_67;
        }
      }

      v189 = *(v302 + 16);
      v284 = v88;
      v189(v88, v116, v313);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v190 = swift_allocObject();
      v299 = xmmword_237C0B670;
      *(v190 + 16) = xmmword_237C0B670;
      v191 = v304;
      v192 = v308;
      *(v190 + 32) = v304;
      *(v190 + 40) = v192;
      v193 = v192;
      v194 = v310;
      *(v190 + 48) = v309;
      *(v190 + 56) = v194;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D630, &qword_237C143C0);
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D638, &qword_237C143C8);
      OUTLINED_FUNCTION_64_6(v195);
      *&v298 = *(v196 + 72);
      v198 = (*(v197 + 80) + 32) & ~*(v197 + 80);
      v199 = swift_allocObject();
      *(v199 + 16) = v299;
      v200 = (v199 + v198);
      v201 = MEMORY[0x6E6F73A2];
      *v200 = v191;
      v200[1] = v193;
      v202 = *MEMORY[0x277CE1938];
      v203 = sub_237C05FDC();
      OUTLINED_FUNCTION_4(v203);
      v205 = *(v204 + 104);
      v205(v200 + v201, v202, v203);
      v206 = (v200 + v298);
      v207 = v310;
      v208 = MEMORY[0x6E6F73A2];
      *v206 = v309;
      v206[1] = v207;
      v205(v206 + v208, v202, v203);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_237C085AC();
      sub_237C05E8C();
      v209 = v296;
      v210 = v303;
      sub_237C05CCC();
      if (v210)
      {
LABEL_23:
        v211 = *(v302 + 8);
        v211(v305, v313);

        v211(v306, v313);
        goto LABEL_68;
      }

      v139 = v209;
LABEL_67:
      v307 = *(v307 + 32);
      v271 = v287;
      (v307)(v287, v139, v300);
      sub_237C05DEC();
      v311 = 0;
      v312 = 0xE000000000000000;
      sub_237B85648();
      v272 = v291;
      sub_237C05EAC();
      OUTLINED_FUNCTION_36_3(&a12);
      v273 = OUTLINED_FUNCTION_56_9();
      v275 = v274(v273);
      MEMORY[0x28223BE20](v275);
      OUTLINED_FUNCTION_17_14();
      v276 = v306;
      *(v277 - 16) = v306;
      sub_2379E20D4(sub_237B909FC);

      OUTLINED_FUNCTION_36_4();
      sub_237C05E1C();
      OUTLINED_FUNCTION_8_45();
      OUTLINED_FUNCTION_50_10();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();

      OUTLINED_FUNCTION_36_3(&a15);
      v278(v272, v293);
      v279 = *(v302 + 8);
      v279(v305, v313);
      v280 = v271;
      v281 = v300;
      (v307)(v301, v280, v300);
      v282 = OUTLINED_FUNCTION_85();
      __swift_storeEnumTagSinglePayload(v282, v283, 1, v281);
      v279(v276, v313);
LABEL_68:
      OUTLINED_FUNCTION_73();
      return;
  }
}