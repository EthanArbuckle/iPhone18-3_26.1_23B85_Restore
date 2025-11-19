uint64_t sub_237A8E3B4(uint64_t a1)
{
  sub_237A8D7E4(&v104, a1);
  if (v1)
  {
    return v2;
  }

  v3 = v104;
  v4 = v105;
  MLDataTable.subscript.getter();
  v5 = v107;
  v6 = v108;
  v102 = v3;
  v104 = v3;
  v109 = v4;
  LOBYTE(v105) = v4;
  MLDataTable.subscript.getter();
  if (v6)
  {
    goto LABEL_52;
  }

  v103 = v107;
  v110 = v108;
  v7 = v5[2];

  v8 = sub_237A2F128();
  v9 = OUTLINED_FUNCTION_2_36();
  sub_2379DBC9C(v9, v10);
  if (v8 < 0)
  {
    goto LABEL_52;
  }

  if (!v8)
  {
    v2 = MEMORY[0x277D84F98];
LABEL_39:
    sub_2379DBC9C(v103, v110);
    v90 = OUTLINED_FUNCTION_2_36();
    sub_2379DBC9C(v90, v91);
    sub_2379DBC9C(v102, v109);

    return v2;
  }

  v11 = 0;
  v2 = MEMORY[0x277D84F98];
  while (1)
  {
    v12 = OUTLINED_FUNCTION_2_36();
    sub_2379DBCF4(v12, v13);
    v14 = OUTLINED_FUNCTION_6_25();
    sub_237A607E0(v14, v15);
    v16 = OUTLINED_FUNCTION_2_36();
    sub_2379DBC9C(v16, v17);
    OUTLINED_FUNCTION_4_30();
    if (!v18)
    {
      break;
    }

    if (*(v2 + 16))
    {
      v19 = OUTLINED_FUNCTION_58_0();
      v21 = sub_237ACAC78(v19, v20);
      v23 = v22;
      v24 = OUTLINED_FUNCTION_58_0();
      sub_2379E8CE8(v24, v25, 2);
      if (v23)
      {
        v26 = *(*(v2 + 56) + 8 * v21);
        v27 = OUTLINED_FUNCTION_2_36();
        sub_2379DBCF4(v27, v28);

        v29 = OUTLINED_FUNCTION_6_25();
        sub_237A607E0(v29, v30);
        v31 = OUTLINED_FUNCTION_2_36();
        sub_2379DBC9C(v31, v32);
        OUTLINED_FUNCTION_4_30();
        if (!v18)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        inited[1] = xmmword_237C0B660;
        if (v110)
        {
          goto LABEL_50;
        }

        v36 = inited;

        v37 = OUTLINED_FUNCTION_6_25();
        sub_237A607E0(v37, v38);
        sub_2379DBC9C(v103, 0);
        inited = v104;
        v34 = v105;
        v35 = v106;
        if (v106 != 2)
        {
          goto LABEL_51;
        }

        *(v36 + 32) = v104;
        *(v36 + 40) = v34;
        v104 = v26;
        sub_237A96708(v36);
        v39 = v104;
        swift_isUniquelyReferenced_nonNull_native();
        v104 = v2;
        v40 = OUTLINED_FUNCTION_58_0();
        v42 = sub_237ACAC78(v40, v41);
        OUTLINED_FUNCTION_10_18(v42, v43);
        if (v46)
        {
          goto LABEL_43;
        }

        v47 = v44;
        v48 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
        if (sub_237C090AC())
        {
          v49 = OUTLINED_FUNCTION_58_0();
          v51 = sub_237ACAC78(v49, v50);
          if ((v48 & 1) != (v52 & 1))
          {
            goto LABEL_53;
          }

          v47 = v51;
        }

        v2 = v104;
        if ((v48 & 1) == 0)
        {
          OUTLINED_FUNCTION_1_34();
          *(v88 + 8 * v47) = v39;
          v89 = *(v2 + 16);
          v46 = __OFADD__(v89, 1);
          v87 = v89 + 1;
          if (v46)
          {
            goto LABEL_44;
          }

          goto LABEL_35;
        }

        v53 = *(v104 + 56);
        v54 = *(v53 + 8 * v47);
        *(v53 + 8 * v47) = v39;

        v55 = OUTLINED_FUNCTION_58_0();
        sub_2379E8CE8(v55, v56, 2);
        goto LABEL_36;
      }
    }

    else
    {
      v57 = OUTLINED_FUNCTION_58_0();
      sub_2379E8CE8(v57, v58, 2);
    }

    v59 = OUTLINED_FUNCTION_6_25();
    sub_237A607E0(v59, v60);
    v61 = OUTLINED_FUNCTION_2_36();
    sub_2379DBC9C(v61, v62);
    OUTLINED_FUNCTION_4_30();
    if (!v18)
    {
      goto LABEL_48;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v63 = swift_allocObject();
    v63[1] = xmmword_237C0B660;
    if (v110)
    {
      goto LABEL_46;
    }

    v66 = v63;

    v67 = OUTLINED_FUNCTION_6_25();
    sub_237A607E0(v67, v68);
    sub_2379DBC9C(v103, 0);
    v63 = v104;
    v64 = v105;
    v65 = v106;
    if (v106 != 2)
    {
      goto LABEL_47;
    }

    *(v66 + 4) = v104;
    *(v66 + 5) = v64;
    swift_isUniquelyReferenced_nonNull_native();
    v104 = v2;
    v69 = OUTLINED_FUNCTION_58_0();
    v71 = sub_237ACAC78(v69, v70);
    OUTLINED_FUNCTION_10_18(v71, v72);
    if (v46)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      break;
    }

    v75 = v73;
    v76 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
    if (sub_237C090AC())
    {
      v77 = OUTLINED_FUNCTION_58_0();
      v79 = sub_237ACAC78(v77, v78);
      if ((v76 & 1) != (v80 & 1))
      {
        goto LABEL_53;
      }

      v75 = v79;
    }

    if ((v76 & 1) == 0)
    {
      v2 = v104;
      OUTLINED_FUNCTION_1_34();
      *(v85 + 8 * v75) = v66;
      v86 = *(v2 + 16);
      v46 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v46)
      {
        goto LABEL_42;
      }

LABEL_35:
      *(v2 + 16) = v87;
      goto LABEL_36;
    }

    v81 = OUTLINED_FUNCTION_58_0();
    sub_2379E8CE8(v81, v82, 2);
    v2 = v104;
    v83 = *(v104 + 56);
    v84 = *(v83 + 8 * v75);
    *(v83 + 8 * v75) = v66;

LABEL_36:
    if (v8 == ++v11)
    {
      goto LABEL_39;
    }
  }

  v93 = OUTLINED_FUNCTION_58_0();
  sub_2379E8CE8(v93, v94, v95);
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_2379E8CE8(v63, v64, v65);
  __break(1u);
LABEL_48:
  v96 = OUTLINED_FUNCTION_58_0();
  sub_2379E8CE8(v96, v97, v98);
  __break(1u);
LABEL_49:
  v99 = OUTLINED_FUNCTION_58_0();
  sub_2379E8CE8(v99, v100, v101);
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_2379E8CE8(inited, v34, v35);
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237A8E880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.DataSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237A8E8E4()
{
  result = qword_27DE9C0A0;
  if (!qword_27DE9C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0A0);
  }

  return result;
}

void OUTLINED_FUNCTION_1_34()
{
  *(v2 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  v4 = (*(v2 + 48) + 16 * v3);
  *v4 = v1;
  v4[1] = v0;
  v5 = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_3_35()
{
  v2 = **(v1 - 408);
  result = v0;
  v4 = *(v1 - 400);
  return result;
}

void OUTLINED_FUNCTION_7_22(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 16) + 1;

  sub_237BC0CB8();
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379D8FF4(v1, &v11, &qword_27DE9A998, &unk_237C0C100);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_2379EA144(a1);
    return sub_237A8ED14(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A8EAF4@<X0>(uint64_t a1@<X8>)
{
  result = MLBoostedTreeClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A8EB38(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v16[3] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  if (v12 == 255)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v10 = v11;
    *(v10 + 8) = v12 & 1;
  }

  else
  {
    sub_2379DBC84(v11, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A8ED70(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v0, &v2, &qword_27DE9A998, &unk_237C0C100);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A8ED14(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A8ED70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLBoostedTreeClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLBoostedTreeClassifier.ModelParameters.validationData.getter(a1);
  return sub_237A8EE1C;
}

void sub_237A8EE1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237A8EEB0(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EA830(a1, v5);
  return MLBoostedTreeClassifier.ModelParameters.validation.setter(v5);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A8ED70(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLBoostedTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v5 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v4[17] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v4[18] = __swift_coroFrameAllocStub(v7);
  v4[19] = __swift_coroFrameAllocStub(v7);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A8F08C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A8F08C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_2379EA830((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A8ED70(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A8ED14(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A8ED70(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.earlyStoppingRounds.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.earlyStoppingRounds.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v24 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  sub_2379EA830(a1, v29 - v28);
  v33[3] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  sub_237A8ED70(v30, boxed_opaque_existential_0);
  sub_237A8ED14(a1);
  return sub_2379DAE54(v33, a7);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v15);
}

uint64_t sub_237A8F498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C0A8, &qword_237C0F478);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v27;
  sub_237C0716C();
  *(a3 + 56) = v28;
  *(a3 + 64) = sub_237C070AC();
  sub_237C070CC();
  *(a3 + 72) = v29;
  *(a3 + 80) = sub_237C071AC();
  *(a3 + 88) = v30 & 1;
  sub_237C0710C();
  *(a3 + 96) = v31;
  sub_237C0712C();
  *(a3 + 104) = v32;
  v41 = a2;
  sub_2379D8FF4(a2, v15, &qword_27DE9A9A0, &qword_237C0BF60);
  v33 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) != 1)
  {
    (*(v7 + 32))(v11, v15, v6);
    (*(v7 + 16))(v19, v11, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v11, v6);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v33, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_2379D9054(v19, &qword_27DE9C0A8, &qword_237C0F478);
    }
  }

  else
  {
    v34 = OUTLINED_FUNCTION_7_0();
    sub_237A8ED70(v34, v35);
  }

  v42[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  sub_237A8ED70(v26, boxed_opaque_existential_0);
  sub_2379D9054(v41, &qword_27DE9A9A0, &qword_237C0BF60);
  v37 = sub_237C071DC();
  OUTLINED_FUNCTION_4(v37);
  (*(v38 + 8))(a1);
  return sub_2379DAE54(v42, a3);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.description.getter()
{
  v11[2] = 0x747065442078614DLL;
  v11[3] = 0xEB00000000203A68;
  v11[0] = v0[4];
  OUTLINED_FUNCTION_7_0();
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  v11[0] = 0xD000000000000010;
  v11[1] = 0x8000000237C16E00;
  v9 = v0[5];
  OUTLINED_FUNCTION_7_0();
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  v3 = v0[6];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  strcpy(v11, "Random Seed: ");
  HIWORD(v11[1]) = -4864;
  v10 = v0[8];
  OUTLINED_FUNCTION_7_0();
  v4 = sub_237C0924C();
  MEMORY[0x2383DC360](v4);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v11[0], v11[1]);

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  v5 = v0[9];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  v6 = v0[12];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  v7 = v0[13];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLBoostedTreeClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A8FBE8()
{
  result = sub_237A2E9F4();
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FC1C()
{
  result = OUTLINED_FUNCTION_20_11();
  if ((result & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_6_6();
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FC5C()
{
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  result = sub_237A017E8(v0, v1);
  if ((result & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_6_6();
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FC94(uint64_t (*a1)(void))
{
  result = a1();
  if ((result & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_6_6();
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FD1C(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FD60(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_20_11();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FDB4(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    sub_237A2E9F4();
    v3 = OUTLINED_FUNCTION_6_6();
    result = sub_237A017E8(v3, v4);
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FE00(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = a3();
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FE70(uint64_t a1, uint64_t a2)
{
  result = sub_237A01878();
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
    return 0;
  }

  v7 = __OFADD__(a1, a2);
  v5 = a1 + a2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FF00(uint64_t a1, uint64_t a2)
{
  result = sub_237A018D0();
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
    return 0;
  }

  v7 = __OFADD__(a1, a2);
  v5 = a1 + a2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_20_11();
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a3, a4);
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
    return 0;
  }

  v10 = __OFADD__(a1, a2);
  v8 = a1 + a2;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_237A2E9F4();
    v11 = OUTLINED_FUNCTION_6_6();
    result = sub_237A017E8(v11, v12);
    if ((v8 & 0x8000000000000000) == 0 && result >= v8)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A9005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = a4(a1, a3);
  if (a2 < 1)
  {
    if (v8 <= 0 && v8 > a2)
    {
      return 0;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0 && v8 < a2)
  {
    return 0;
  }

  return sub_237A8FE00(a1, a2, a5);
}

uint64_t sub_237A900DC(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_237A2E9F4();
    v2 = OUTLINED_FUNCTION_6_6();
    result = sub_237A017E8(v2, v3);
    if ((v1 & 0x8000000000000000) == 0 && v1 < result)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A90128(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_20_11();
    if ((v1 & 0x8000000000000000) == 0 && v1 < result)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A90178(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v1 & 0x8000000000000000) == 0 && v1 < result)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A901D4(uint64_t result, uint64_t (*a2)(void))
{
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = a2();
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A90230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_237B024B4(a2);
  if (v8)
  {
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  if (v9 != v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = 1 << *(a2 + 32);
  if (v11 < result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = OUTLINED_FUNCTION_11_22();
  sub_237A934DC(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_19();
  sub_237A934DC(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_10_19();
  sub_2379E8FD0(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_11_22();
  result = sub_2379E8FD0(v21, v22, v23);
  if (*(a1 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a1 + 8) != v9)
  {
    goto LABEL_13;
  }

  v24 = *a1;
  if (*a1 < v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = *(a1 + 40);
  if ((v25 & 1) == 0)
  {
    if (v9 == *(a1 + 32))
    {
      v26 = *(a1 + 24);
      if (v11 >= v26)
      {
        v35 = *(a1 + 12);
        v36 = *(a1 + 36);
        v27 = OUTLINED_FUNCTION_11_22();
        v29 = v28;
        sub_2379E8FD0(v27, v30, v31);
        v32 = OUTLINED_FUNCTION_10_19();
        sub_2379E8FD0(v32, v33, v34);
        *(a3 + 48) = a2;
        *a3 = v24;
        *(a3 + 8) = v9;
        *(a3 + 12) = v35;
        *(a3 + 16) = v29;
        *(a3 + 24) = v26;
        *(a3 + 32) = v9;
        *(a3 + 36) = v36;
        *(a3 + 40) = v25;

        return sub_237A934E8(a1, v37);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_237A9038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_237A2E9F4();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a4[1] = a2;
  a4[2] = a3;
  *a4 = a1;
}

uint64_t sub_237A903FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = OUTLINED_FUNCTION_20_11();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  *a5 = a1;

  return sub_2379DBCF4(a3, a4 & 1);
}

uint64_t sub_237A90490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_237A2E9F4();
  v12 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v12, v13);
  v14 = OUTLINED_FUNCTION_6_6();
  result = sub_237A0290C(v14, v15, a5);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  *a6 = a1;
  a6[1] = a2;
}

uint64_t sub_237A9053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_237A2E9F4();
  v8 = OUTLINED_FUNCTION_6_6();
  result = sub_237A017E8(v8, v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a4[1] = a2;
  a4[2] = a3;
  *a4 = a1;
}

uint64_t sub_237A905B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= a2)
  {

    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237A90618(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A9062C(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_237A906A8()
{
  sub_237A2EAA4();
  v0 = OUTLINED_FUNCTION_6_6();

  return sub_237A01800(v0, v1);
}

uint64_t sub_237A906DC()
{
  sub_237A2E9F4();

  return sub_237A01878();
}

uint64_t sub_237A9071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A2E9F4();
  v4 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v4, v5);
  v6 = OUTLINED_FUNCTION_6_6();

  return sub_237A0290C(v6, v7, a3);
}

uint64_t sub_237A90778(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v2, v3);
  v4 = OUTLINED_FUNCTION_6_6();

  return a2(v4);
}

uint64_t sub_237A907D0()
{
  v0 = sub_237A2E9F4();

  return sub_237A017E8(0, v0);
}

uint64_t sub_237A90800()
{
  v0 = sub_237A55984();

  return v0;
}

uint64_t sub_237A90834(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = *(a1 + 16);
  sub_237BC254C();
  OUTLINED_FUNCTION_15_15();

  v5 = sub_237BA1DAC(v10, v1 + 32, v3, a1);
  v6 = v10[1];
  v7 = v10[2];
  v8 = v11;

  result = sub_2379E8FD0(v6, v7, v8);
  if (v5 == v3)
  {

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A908F4()
{
  sub_237A55A04();
  OUTLINED_FUNCTION_15_15();

  return v0;
}

const void *sub_237A90924(void *a1, char a2)
{
  v4 = sub_237A55A8C(a1, a2 & 1);
  sub_2379DBC9C(a1, a2 & 1);
  return v4;
}

const void *sub_237A9096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_237A55B40(a1, a2, a3);

  return v3;
}

uint64_t sub_237A909C0(uint64_t a1)
{
  sub_237A55C18(a1);
  OUTLINED_FUNCTION_15_15();

  return v1;
}

uint64_t sub_237A909F0(uint64_t a1)
{
  sub_237A55C58(a1);
  OUTLINED_FUNCTION_15_15();

  return v1;
}

uint64_t sub_237A90A20()
{
  v0 = sub_237A55D4C();

  return v0;
}

uint64_t sub_237A90A78()
{
  type metadata accessor for CMLFeatureValue();
  sub_237A92A08();
  return sub_237A2DECC();
}

void MLDataValue.SequenceType.init<A>(_:)()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  OUTLINED_FUNCTION_3_15();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v29 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = MEMORY[0x2383DDAC0](0);
  if (!v18)
  {
LABEL_16:
    __break(1u);

    OUTLINED_FUNCTION_56_4();
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
      OUTLINED_FUNCTION_57_4();
    }
  }

  v19 = v18;
  type metadata accessor for CMLSequence();
  OUTLINED_FUNCTION_11_9();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 1;
  v26 = v7;
  v27 = v4;
  (*(v7 + 16))(v0, v4, v2);
  sub_237C0885C();
  v28 = v2;
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_237C08D7C();
    v21 = v33;
    v23 = v31;
    v22 = v32;
    switch(v33)
    {
      case 0:
        if (sub_237B0F164(*&v31))
        {
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_15;
      case 1:
        if (!sub_237B0F594(v31))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v24 = OUTLINED_FUNCTION_7_23();
LABEL_13:
        sub_237A2DE9C(v24);
        sub_237A60DCC(*&v23, v22, v21);

        break;
      case 2:
        type metadata accessor for CMLFeatureValue();
        sub_2379E9288(*&v23, v22, 2);
        v24 = sub_237A2E7CC();
        goto LABEL_13;
      case 3:
        v24 = sub_237A91FA8();
        goto LABEL_13;
      case 4:
        v24 = sub_237AFF290();
        goto LABEL_13;
      case 5:
        v24 = sub_237AC85C4();
        goto LABEL_13;
      case 6:
        type metadata accessor for CMLFeatureValue();
        v24 = sub_237A2E78C();
        goto LABEL_13;
      default:
        (*(v26 + 8))(v27, v28);
        (*(v29 + 8))(v17, AssociatedTypeWitness);
        *v30 = v20;
        OUTLINED_FUNCTION_150();
        return;
    }
  }
}

{
  OUTLINED_FUNCTION_153();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  v39 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v37 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = *(*(sub_237C08D2C() - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  OUTLINED_FUNCTION_3_15();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_16();
  v22 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v38 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v35 - v27;
  v29 = MEMORY[0x2383DDAC0](0);
  if (v29)
  {
    v30 = v29;
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    v43 = v31;
    *(v31 + 24) = 1;
    v35 = v18;
    (*(v18 + 16))(v0, v40, v4);
    sub_237C0885C();
    v36 = v4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (v37 + 32);
    v33 = (v37 + 8);
    while (1)
    {
      sub_237C08D7C();
      if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (*v32)(v12, v16, AssociatedTypeWitness);
      v34 = sub_237B70DD4(AssociatedTypeWitness, v41);
      sub_237A2DE9C(v34);
      (*v33)(v12, AssociatedTypeWitness);
    }

    (*(v35 + 8))(v40, v36);
    (*(v38 + 8))(v28, v22);
    *v39 = v43;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    __break(1u);

    OUTLINED_FUNCTION_56_4();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t MLDataValue.SequenceType.init()@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2383DDAC0](0);
  if (result)
  {
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_11_9();
    v3 = swift_allocObject();
    result = OUTLINED_FUNCTION_3_14(v3);
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataValue.SequenceType.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_237A2E9C8(a1);

  return sub_237AFC548(v5, a2);
}

uint64_t sub_237A912F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_237A90178(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A91320(uint64_t *a1)
{
  v3 = *v1;
  result = sub_237A90178(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237A91350(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v4 = *v2;
  result = sub_237A8FD1C(v3, v5);
  *v1 = result;
  return result;
}

uint64_t sub_237A91380(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  return sub_237A01878();
}

uint64_t sub_237A91390@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataValue.SequenceType.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A91420@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_237A8FBE8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_237A9145C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v5 = *v4;
  v6 = *v2;
  result = sub_237A8FE70(v3, v7);
  *v1 = result;
  *(v1 + 8) = v9 & 1;
  return result;
}

uint64_t sub_237A914AC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v4 = *v2;
  result = sub_237B6A938(v3);
  *v1 = result;
  return result;
}

uint64_t sub_237A914D8(uint64_t *a1)
{
  v3 = *v1;
  result = sub_237B6A938(*a1);
  *a1 = result;
  return result;
}

uint64_t MLDataValue.SequenceType.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!MEMORY[0x2383DDAC0](0))
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_11_9();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_3_14(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 48);
    v14 = a1;
    while (2)
    {
      if (v5 < *(a1 + 16))
      {
        v7 = *(v6 - 2);
        v8 = *(v6 - 1);
        ++v5;
        v9 = *v6;
        switch(*v6)
        {
          case 1:
            if (sub_237B0F594(*(v6 - 2)))
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          case 2:
            type metadata accessor for CMLFeatureValue();
            sub_2379E9288(v7, v8, 2);

            v10 = sub_237A2E7CC();
            goto LABEL_15;
          case 3:
            v16 = *(v6 - 2);

            v10 = sub_237A91FA8();
            goto LABEL_15;
          case 4:
            v15 = *(v6 - 2);

            v10 = sub_237AFF290();
            goto LABEL_15;
          case 5:
            v17 = *(v6 - 2);
            v11 = v7;
            v10 = sub_237AC85C4();
            goto LABEL_15;
          case 6:
            type metadata accessor for CMLFeatureValue();
            v10 = sub_237A2E78C();
            goto LABEL_15;
          default:
            if (!sub_237B0F164(*(v6 - 2)))
            {
              goto LABEL_19;
            }

LABEL_12:
            type metadata accessor for CMLFeatureValue();
            OUTLINED_FUNCTION_11_9();
            swift_allocObject();
            v10 = OUTLINED_FUNCTION_7_23();
LABEL_15:
            sub_237A2DE9C(v10);
            sub_2379E8CE8(v7, v8, v9);

            v6 += 24;
            a1 = v14;
            if (v4 == v5)
            {
              goto LABEL_16;
            }

            continue;
        }
      }

      break;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);

    OUTLINED_FUNCTION_56_4();
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
      OUTLINED_FUNCTION_57_4();
    }
  }

LABEL_16:

  *a2 = v3;
  return result;
}

uint64_t static MLDataValue.SequenceType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();
  v4 = sub_237A01878();
  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();
  if (v4 != sub_237A01878())
  {
    return 0;
  }

  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();
  v5 = sub_237A01878();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    for (i = 0; ; ++i)
    {
      v8 = v6 == i;
      if (v6 == i)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      v9 = sub_237A2E9C8(i);
      sub_237AFC548(&v19, v9);
      v17 = v19;
      v18 = v20;
      v10 = sub_237A2E9C8(i);
      sub_237AFC548(&v15, v10);
      v13 = v15;
      v14 = v16;
      v11 = static MLDataValue.== infix(_:_:)(&v17, &v13);
      sub_2379E8CE8(v13, *(&v13 + 1), v14);
      sub_2379E8CE8(v17, *(&v17 + 1), v18);
      if ((v11 & 1) == 0)
      {
        return v8;
      }
    }

    return v8;
  }

LABEL_11:
  __break(1u);
  OUTLINED_FUNCTION_56_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237A918E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v3 = sub_2379E9288(*a1, v8, v9);
  v4 = MLDataValue.description.getter(v3);
  v6 = v5;
  sub_2379E8CE8(v7, v8, v9);
  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_237A91968()
{
  v5 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAF0, &qword_237C0E6A0);
  sub_237A92F6C(&qword_27DE9BAF8);
  v1 = sub_237C0864C();
  v3 = v2;

  MEMORY[0x2383DC360](v1, v3);

  MEMORY[0x2383DC360](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_237A91A74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2379E9288(*a1, *(a1 + 8), *(a1 + 16));
  result = sub_237C0875C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237A91AD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_237A901D4(*a1, sub_237A2E9F4);
  *a2 = result;
  return result;
}

uint64_t sub_237A91B14(uint64_t *a1)
{
  v3 = *v1;
  result = sub_237A901D4(*a1, sub_237A2E9F4);
  *a1 = result;
  return result;
}

uint64_t sub_237A91B58(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v4 = *v2;
  result = sub_237A8FE00(v3, v5, sub_237A2E9F4);
  *v1 = result;
  return result;
}

uint64_t sub_237A91BC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_237A91280();
  *a1 = result;
  return result;
}

uint64_t (*sub_237A91BF4(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *v2;
  v5 = sub_237A8FCBC(*a2);
  *a1 = v5;
  a1[1] = v5;
  return sub_237A91C40;
}

uint64_t sub_237A91C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_237A905B4(*a1, a1[1], sub_237A2E9F4);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_237A91C94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_237A8FC94(sub_237A2E9F4);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_237A91D20(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v5 = *v2;
  result = sub_237A9005C(v3, v6, *v4, sub_237A017E8, sub_237A2E9F4);
  *v1 = result;
  *(v1 + 8) = v8 & 1;
  return result;
}

uint64_t sub_237A91DFC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v4 = *v2;
  result = sub_237B6A888(v3);
  *v1 = result;
  return result;
}

uint64_t sub_237A91E28(uint64_t *a1)
{
  v3 = *v1;
  result = sub_237B6A888(*a1);
  *a1 = result;
  return result;
}

void *MLDataValue.SequenceType.init(from:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_26(a1);
  v4 = *(v3 + 16);
  if (v4 != 3)
  {
    sub_2379E8CE8(result, *(v3 + 8), v4);
    result = 0;
  }

  *v1 = result;
  return result;
}

uint64_t MLDataValue.SequenceType.dataValue.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t sub_237A91F1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237B0DD68(*(a1 + 16));
  v4 = result;
  if (result)
  {
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A91FA8()
{
  v1 = *v0;
  if (!MEMORY[0x2383DDAC0](0))
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_22_10();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_14(inited);

  v3 = 0;
  while (v3 != sub_237A2E9F4())
  {
    v4 = sub_237A2E9C8(v3);
    sub_237AFC548(v4, v11);
    v6 = v11[0];
    v5 = v11[1];
    v7 = v12;
    if (v3 >= sub_237A2E9F4())
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      OUTLINED_FUNCTION_56_4();
      while (1)
      {
        swift_unexpectedError();
        __break(1u);
        OUTLINED_FUNCTION_57_4();
      }
    }

    switch(v7)
    {
      case 1:
        if (sub_237B0F594(*&v6))
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      case 2:
        type metadata accessor for CMLFeatureValue();

        v8 = sub_237A2E7CC();
        goto LABEL_15;
      case 3:
        v11[0] = v6;
        v8 = sub_237A91FA8();
        goto LABEL_15;
      case 4:
        v11[0] = v6;
        v8 = sub_237AFF290();
        goto LABEL_15;
      case 5:
        v11[0] = v6;
        v8 = sub_237AC85C4();
        goto LABEL_15;
      case 6:
        type metadata accessor for CMLFeatureValue();
        v8 = sub_237A2E78C();
        goto LABEL_15;
      default:
        if (!sub_237B0F164(v6))
        {
          goto LABEL_19;
        }

LABEL_12:
        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v8 = OUTLINED_FUNCTION_7_23();
LABEL_15:
        sub_237A2DE9C(v8);
        sub_2379E8CE8(v6, v5, v7);

        ++v3;
        break;
    }
  }

  type metadata accessor for CMLFeatureValue();
  OUTLINED_FUNCTION_15_15();

  v9 = sub_237A2DECC();
  swift_setDeallocating();
  sub_237A2E6E8();
  OUTLINED_FUNCTION_11_9();
  swift_deallocClassInstance();
  return v9;
}

void Array<A>.init(from:)()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - v9;
  OUTLINED_FUNCTION_3_15();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v49 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v48 = &v40 - v19;
  v20 = *v5;
  v21 = *(v5 + 16);
  if (v21 == 3)
  {
    v40 = v18;
    v41 = v17;
    v46 = v3;
    v22 = 0;
    v54 = sub_237C084DC();
    v47 = v1;
    v44 = (v11 + 32);
    v45 = v1 + 16;
    v42 = (v11 + 8);
    v43 = (v11 + 16);
    while (1)
    {
      if (v22 == sub_237A2E9F4())
      {

        goto LABEL_10;
      }

      v23 = sub_237A2E9C8(v22);
      sub_237AFC548(v23, &v51);
      v25 = v51;
      v24 = v52;
      v26 = v53;
      if (v22 >= sub_237A2E9F4())
      {
        break;
      }

      v51 = v25;
      v52 = v24;
      v53 = v26;
      v27 = v50;
      v28 = *(v47 + 16);
      v29 = OUTLINED_FUNCTION_12_21();
      sub_2379E9288(v29, v30, v31);
      v32 = v46;
      v28(&v51);
      if (__swift_getEnumTagSinglePayload(v27, 1, v32) == 1)
      {

        v37 = OUTLINED_FUNCTION_12_21();
        sub_2379E8CE8(v37, v38, v39);

        (*(v40 + 8))(v50, v41);
        goto LABEL_10;
      }

      ++v22;
      v33 = v48;
      (*v44)(v48, v50, v32);
      (*v43)(v49, v33, v32);
      sub_237C089DC();
      sub_237C089AC();
      v34 = OUTLINED_FUNCTION_12_21();
      sub_2379E8CE8(v34, v35, v36);
      (*v42)(v33, v32);
    }

    __break(1u);
    OUTLINED_FUNCTION_56_4();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_2379E8CE8(*v5, *(v5 + 8), v21);
LABEL_10:
    OUTLINED_FUNCTION_150();
  }
}

void Array<A>.dataValue.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_237C089DC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383DC430](&v9, v6, WitnessTable);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_237C08EEC();
  swift_getWitnessTable();
  sub_237C0914C();

  sub_237C0905C();
  swift_getWitnessTable();
  MLDataValue.SequenceType.init<A>(_:)();
  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = 3;
}

void sub_237A92714()
{
  OUTLINED_FUNCTION_153();
  v34 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  OUTLINED_FUNCTION_3_15();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  v23 = sub_237B0DD68(*(v4 + 16));
  v32 = v20;
  v33 = v12;
  v28 = v7;
  v29 = v5;
  v30 = v4;
  if (v23)
  {
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_3_14(inited);
    v25 = 0;
    v35 = sub_237C084DC();
    v31 = (v14 + 32);
    while (1)
    {
      if (v25 == sub_237A2E9F4())
      {

        goto LABEL_8;
      }

      sub_237A2E9C8(v25);
      v25 = sub_237B6A888(v25);
      v26 = v33;
      sub_237B70F8C(v2, v34, v33);
      if (__swift_getEnumTagSinglePayload(v26, 1, v2) == 1)
      {
        break;
      }

      (*v31)(v22, v26, v2);
      (*(v14 + 16))(v32, v22, v2);
      sub_237C089DC();
      sub_237C089AC();

      (*(v14 + 8))(v22, v2);
    }

    (*(v28 + 8))(v26, v29);
LABEL_8:
    OUTLINED_FUNCTION_150();
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_56_4();
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_237A92A08()
{
  OUTLINED_FUNCTION_153();
  v19 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_15();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v18 = v10;
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!MEMORY[0x2383DDAC0](0))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_11_9();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_3_14(v12);
  v13 = sub_237C0894C();
  for (i = v13; ; v13 = i)
  {
    if (v13 == sub_237C089BC())
    {
      OUTLINED_FUNCTION_150();
      return;
    }

    v14 = sub_237C0899C();
    sub_237C0896C();
    if (v14)
    {
      (*(v6 + 16))(v11, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v2);
      goto LABEL_6;
    }

    v16 = sub_237C08F4C();
    if (v18 != 8)
    {
      break;
    }

    v20 = v16;
    (*(v6 + 16))(v11, &v20, v2);
    swift_unknownObjectRelease();
LABEL_6:
    sub_237C089CC();
    v15 = sub_237B70DD4(v2, v19);
    (*(v6 + 8))(v11, v2);
    sub_237A2DE9C(v15);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  OUTLINED_FUNCTION_56_4();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237A92C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A92A08();
  v6 = v5;
  (*(a3 + 8))(&v9, a2, a3);
  v7 = 0x5060403020100uLL >> (8 * v9);
  type metadata accessor for CMLColumn();
  return sub_237A2ED1C(v6, v7);
}

void sub_237A92CDC(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  Array<A>.init(from:)();
  *a3 = v6;
}

uint64_t sub_237A92D0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_237C084DC();
  *a2 = result;
  return result;
}

void sub_237A92D4C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  sub_237A92714();
  *a3 = v6;
}

uint64_t sub_237A92D7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_237A90A78();
}

unint64_t sub_237A92DF8()
{
  result = qword_27DE9C0B0;
  if (!qword_27DE9C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C0B8, &qword_237C0F480);
    sub_237A92E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0B0);
  }

  return result;
}

unint64_t sub_237A92E7C()
{
  result = qword_27DE9C0C0;
  if (!qword_27DE9C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0C0);
  }

  return result;
}

unint64_t sub_237A92ED4()
{
  result = qword_27DE9C0C8;
  if (!qword_27DE9C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0C8);
  }

  return result;
}

unint64_t sub_237A92F6C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_237A60EB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237A92FD4()
{
  result = qword_27DE9C0D8;
  if (!qword_27DE9C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0D8);
  }

  return result;
}

unint64_t sub_237A93028(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237A93124(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237A93264(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237A93360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C118, &qword_237C0F840);
    sub_237A9349C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237A9349C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    type metadata accessor for CMLSequence();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237A934DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_237A934E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C148, &qword_237C0F9D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_237A2E764(v0, 1);
}

uint64_t OUTLINED_FUNCTION_20_11()
{

  return MLDataTable.size.getter();
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return type metadata accessor for CMLSequence();
}

uint64_t sub_237A93684(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0747C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A93720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0747C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s5ModelVMa()
{
  result = qword_27DE9C150;
  if (!qword_27DE9C150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A937EC()
{
  sub_237A93888();
  if (v0 <= 0x3F)
  {
    sub_237C0747C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237A93888()
{
  if (!qword_27DE9C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C168, &unk_237C0F9E8);
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9C160);
    }
  }
}

void sub_237A938EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_237C0602C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = sub_237C05DBC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A93A8C(v16);
  if (!v3)
  {
    v19[1] = a1;
    v19[3] = a2;
    v18 = *v2;
    v17 = v2[1];
    sub_237C05DFC();
    sub_237C05DFC();
    sub_237B0CBBC();
    (*(v12 + 8))(v16, v9);
  }
}

void sub_237A93A8C(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v26 - v11;
  if (v1[2])
  {
    v13 = v1[3];
    v14 = v1[4];
    sub_237A0D2FC();
    if (!v2)
    {
      v26[1] = a1;
      v15 = _s5ModelVMa();
      v16 = v1 + *(v15 + 24);
      v17 = sub_237C0746C();
      v18 = v3 + *(v15 + 28);
      v19 = *v18;
      v20 = v18[8];
      MEMORY[0x28223BE20](v17);
      if (v21)
      {
        sub_2379E2800();

        v22 = OUTLINED_FUNCTION_1_25();
        sub_237A942C4(v22, v23);
      }

      else
      {
        sub_2379E2664();

        v24 = OUTLINED_FUNCTION_1_25();
        sub_237A93D5C(v24, v25);
      }

      (*(v8 + 8))(v12, v5);
    }
  }

  else
  {
    sub_237C090DC();
    __break(1u);
  }
}

uint64_t sub_237A93D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v40 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA98, &qword_237C0E610);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = *v2;
  v42 = v2[1];
  v43 = v14;
  v57 = v14;
  v58 = v42;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  v57 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAA0, &qword_237C0E618);
  sub_237A5F288(&qword_27DE9BAA8, &qword_27DE9BAA0, &qword_237C0E618);
  v44 = v13;
  v53 = v4;
  sub_237C05EEC();
  v54 = MEMORY[0x277D83B88];
  v55 = MEMORY[0x277D83B98];
  KeyPath = swift_getKeyPath();
  v16 = *(a1 + 16);
  if (v16)
  {
    v41 = v7;
    v56 = MEMORY[0x277D84F90];
    sub_237AC8C34();
    v17 = v56;
    v18 = v51 + 16;
    v19 = *(v51 + 16);
    v20 = a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v50 = *(v51 + 72);
    v51 = v19;
    v21 = (v18 - 8);
    v22 = v18;
    do
    {
      v24 = v52;
      v23 = v53;
      v25 = v22;
      (v51)(v52, v20, v53);
      v26 = KeyPath;
      swift_getAtKeyPath();
      v27 = v57;
      v28 = v58;
      (*v21)(v24, v23);
      v56 = v17;
      v29 = *(v17 + 16);
      if (v29 >= *(v17 + 24) >> 1)
      {
        sub_237AC8C34();
        v17 = v56;
      }

      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = v28;
      v20 += v50;
      --v16;
      v22 = v25;
      KeyPath = v26;
    }

    while (v16);

    v31 = v48;
    v7 = v41;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v31 = v48;
  }

  v57 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAB0, &qword_237C0E660);
  sub_237A5F288(&qword_27DE9BAB8, &qword_27DE9BAB0, &qword_237C0E660);
  v32 = v47;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  v33 = *(sub_237C0602C() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v37 = v46;
  v38 = v44;
  sub_237C05EBC();
  v57 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v7 + 8))(v32, v31);
  return (*(v45 + 8))(v38, v37);
}

uint64_t sub_237A942C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  *&v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC8, &unk_237C0E670);
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = *v2;
  v36 = v2[1];
  v37 = v15;
  *&v50 = v15;
  *(&v50 + 1) = v36;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  *&v50 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAC8, &qword_237C0B848);
  sub_237A5F288(&qword_27DE9BAD0, &qword_27DE9AAC8, &qword_237C0B848);
  v38 = v14;
  v45 = v4;
  sub_237C05EEC();
  v47 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D837E0];
  swift_getKeyPath();
  v16 = *(a1 + 16);
  if (v16)
  {
    v35 = v8;
    v49 = MEMORY[0x277D84F90];
    sub_237AC8A54();
    v17 = v49;
    v44 = *(v46 + 16);
    v18 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v19 = *(v46 + 72);
    v20 = (v46 + 8);
    v21 = v46 + 16;
    do
    {
      v22 = v45;
      v23 = v21;
      v44(v7, v18, v45);
      swift_getAtKeyPath();
      v46 = v50;
      (*v20)(v7, v22);
      v49 = v17;
      v24 = *(v17 + 16);
      if (v24 >= *(v17 + 24) >> 1)
      {
        sub_237AC8A54();
        v17 = v49;
      }

      *(v17 + 16) = v24 + 1;
      *(v17 + 16 * v24 + 32) = v46;
      v18 += v19;
      --v16;
      v21 = v23;
    }

    while (v16);

    v25 = v42;
    v8 = v35;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v25 = v42;
  }

  *&v50 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
  sub_237A5F288(&qword_27DE9BAE0, &qword_27DE9BAD8, &qword_237C0E680);
  v26 = v41;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  v27 = *(sub_237C0602C() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v31 = v40;
  v32 = v38;
  sub_237C05EBC();
  *&v50 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v8 + 8))(v26, v25);
  return (*(v39 + 8))(v32, v31);
}

uint64_t sub_237A948A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v5 & 0x8000000000000000) == 0 && v5 < v3)
  {
    sub_237C06BDC();
    if ((v5 & 0x8000000000000000) == 0 && v5 < v3)
    {
      v6 = *(a2 + 8 * v5 + 32);
      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A949C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v6 & 0x8000000000000000) == 0 && v6 < v3)
  {
    sub_237C06BDC();
    if ((v6 & 0x8000000000000000) == 0 && v6 < v3)
    {
      v4 = a2 + 16 * v6;
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);

      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A94ADC(uint64_t a1)
{
  sub_237A93A8C(a1);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_237A94B68()
{
  result = qword_27DE9C170;
  if (!qword_27DE9C170)
  {
    _s5ModelVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C170);
  }

  return result;
}

uint64_t sub_237A94BC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_237A94820();
}

uint64_t sub_237A94BE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_237A93CD4();
}

__n128 sub_237A94C10(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237A94C78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0741C();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A94D14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0741C();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s10ClassifierVMa_1()
{
  result = qword_27DE9C178;
  if (!qword_27DE9C178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A94DE0()
{
  sub_2379FC328();
  if (v0 <= 0x3F)
  {
    sub_237A94EA4();
    if (v1 <= 0x3F)
    {
      sub_237C0741C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237A94EA4()
{
  if (!qword_27DE9C188)
  {
    sub_237A20BBC();
    v0 = type metadata accessor for FeatureVectorizer();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9C188);
    }
  }
}

uint64_t sub_237A94F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v92 = a3;
  v93 = a4;
  v95 = a2;
  v98 = a1;
  v87 = a5;
  v88 = sub_237C0747C();
  v6 = OUTLINED_FUNCTION_0(v88);
  v90 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v89 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v86 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v75 - v16;
  v96 = sub_237C05DBC();
  v17 = OUTLINED_FUNCTION_0(v96);
  v91 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v24 = sub_237C0602C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v97 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v75 - v42;
  v44 = v5[2];
  v100 = v98;
  v45 = v101;
  result = sub_2379E22EC(sub_237A20D00, v99, v44);
  if (!v45)
  {
    v83 = v35;
    v84 = v31;
    v47 = v97;
    v101 = v24;
    v81 = v40;
    v82 = v23;
    v85 = v32;
    v48 = 0x8000000237C17BE0;
    v49 = result;
    sub_237A0D2FC();
    v79 = v43;
    v80 = v49;
    v50 = v5;
    v51 = v5[13];
    LODWORD(v49) = *(v5 + 112);
    v52 = v5[1];
    v53 = v84;
    v77 = *v5;
    v78 = v52;
    sub_237C05DFC();
    LODWORD(v98) = v49;
    v54 = sub_237B89BDC(v53, v51, v49);
    v55 = *(v47 + 8);
    v97 = v47 + 8;
    v76 = v55;
    v55(v53, v101);
    v56 = v94;
    sub_237A2AA5C(v95, v94);
    v57 = v96;
    if (__swift_getEnumTagSinglePayload(v56, 1, v96) == 1)
    {
      sub_2379F6DD8(v56, &qword_27DE9A9A0, &qword_237C0BF60);
      v58 = *(v51 + 16);
      v59 = v50 + *(_s10ClassifierVMa_1() + 36);
      v60 = v89;
      v61 = v79;
      sub_237C073FC();
      (*(v83 + 8))(v61, v85);

      v62 = v90;
      v95 = v51;
    }

    else
    {
      v89 = v54;
      v95 = v51;
      (*(v91 + 32))(v82, v56, v57);
      sub_237A0D2FC();
      v94 = 0x8000000237C17BE0;
      v63 = v84;
      sub_237C05DFC();
      v64 = v95;
      v65 = sub_237B89BDC(v63, v95, v98);
      v76(v63, v101);
      v66 = *(v64 + 16);
      v67 = v50 + *(_s10ClassifierVMa_1() + 36);
      v60 = v86;
      sub_237C073EC();

      v68 = OUTLINED_FUNCTION_5_27();
      v65(v68);
      v69 = OUTLINED_FUNCTION_4_31();
      v70(v69);
      (v65)(v79, 0);
      v48 = v94;
      v62 = v90;
    }

    v71 = _s5ModelVMa();
    v72 = v87;
    (*(v62 + 32))(v87 + *(v71 + 24), v60, v88);
    v73 = v78;
    *v72 = v77;
    v72[1] = v73;
    v72[2] = v80;
    v72[3] = 0xD000000000000013;
    v72[4] = v48;
    v74 = v72 + *(v71 + 28);
    *v74 = v95;
    v74[8] = v98;
  }

  return result;
}

uint64_t sub_237A95650@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a2;
  v34 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B628, &unk_237C0DBE0);
  v10 = OUTLINED_FUNCTION_0(v36);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v21 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v33 - v27;
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 8) = 256;
  swift_storeEnumTagMultiPayload();
  *(a6 + 32) = 0u;
  *(a6 + 24) = 10;
  *(a6 + 48) = 0u;
  *(a6 + 64) = xmmword_237C0CFC0;
  *(a6 + 80) = xmmword_237C0CFD0;
  *(a6 + 96) = 1;
  sub_237A2A8D8(v28, v25);
  v37[3] = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  sub_237A2A93C(v25, boxed_opaque_existential_0);

  sub_237A2A9A0(v28);
  sub_2379DAE54(v37, a6 + 32);
  *(a6 + 104) = v34;
  *(a6 + 112) = v35 & 1;
  *(a6 + 120) = a5;
  *(a6 + 128) = 0xD000000000000013;
  *(a6 + 136) = 0x8000000237C17BE0;
  sub_237A20BBC();
  sub_237C072AC();
  v30 = v36;
  (*(v12 + 16))(v17, v20, v36);
  v31 = a6 + *(_s10ClassifierVMa_1() + 36);
  sub_237C073CC();
  return (*(v12 + 8))(v20, v30);
}

uint64_t sub_237A95908()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D8, &unk_237C0FBF8);

  return sub_237C05FCC();
}

uint64_t sub_237A95978(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D0, &unk_237C10E60);
  v5 = sub_237C05FBC();
  v7 = v6;
  (*(*(v4 - 8) + 8))(a1, v4);
  v8 = v2[1];

  *v2 = v5;
  v2[1] = v7;
  return result;
}

void (*sub_237A95A14(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D0, &unk_237C10E60);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = *v1;
  v3[5] = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D8, &unk_237C0FBF8);

  sub_237C05FCC();
  return sub_237A0D94C;
}

uint64_t sub_237A95B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237A94F48(a2, a3, a4, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237A95BD8(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1B0, &qword_237C0FBF0);
  sub_237A96590();
  result = sub_237C06CAC();
  if (!v2)
  {
    v6 = *(_s5ModelVMa() + 24);
    v7 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_237C0747C();
    OUTLINED_FUNCTION_2_37();
    sub_237A96680(v8, v9);
    return sub_237C06CAC();
  }

  return result;
}

uint64_t sub_237A95D58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_237C0747C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C168, &unk_237C0F9E8);
  v13 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_237A96630(&qword_27DE9C1A0);
  result = sub_237C06C9C();
  if (!v2)
  {
    v15 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    OUTLINED_FUNCTION_2_37();
    sub_237A96680(v16, v17);
    sub_237C06C9C();
    v19 = *v28;
    v18 = v28[1];
    v20 = _s5ModelVMa();
    (*(v7 + 32))(&a2[*(v20 + 24)], v12, v4);
    v21 = v28[13];
    v22 = *(v28 + 112);
    *a2 = v19;
    *(a2 + 1) = v18;
    *(a2 + 2) = v25;
    *(a2 + 3) = v26;
    *(a2 + 4) = v27;
    v23 = &a2[*(v20 + 28)];
    *v23 = v21;
    v23[8] = v22;
  }

  return result;
}

uint64_t sub_237A95F88@<X0>(char *a1@<X8>)
{
  v3 = sub_237C0747C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[13];
  v20 = *(v1 + 112);
  v15 = *(v14 + 16);
  v16 = *(_s10ClassifierVMa_1() + 36);

  sub_237C073DC();
  *a1 = v13;
  *(a1 + 1) = v12;
  v17 = _s5ModelVMa();
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  (*(v6 + 32))(&a1[*(v17 + 24)], v11, v3);
  v18 = &a1[*(v17 + 28)];
  *v18 = v14;
  v18[8] = v20;
}

void sub_237A960C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  v9 = OUTLINED_FUNCTION_0(v56);
  v54 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v49[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49[-v16];
  v61 = sub_237C0602C();
  v18 = OUTLINED_FUNCTION_0(v61);
  v59 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v53 = v22 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v49[-v26];
  if (a1[2])
  {
    v62 = a2;
    v52 = a4;
    v28 = a1[3];
    v57 = a1[4];
    v58 = v28;
  }

  else
  {
    v39 = v4[2];
    MEMORY[0x28223BE20](v25);
    *&v49[-16] = a2;
    v41 = sub_2379E22EC(sub_237A1DC7C, &v49[-32], v40);
    if (v5)
    {
      return;
    }

    v62 = a2;
    v52 = a4;
    a1[2] = v41;
    a1[3] = 0xD000000000000013;
    v57 = 0x8000000237C17BE0;
    v58 = 0xD000000000000013;
    a1[4] = 0x8000000237C17BE0;
  }

  v51 = _s5ModelVMa();
  v29 = a1 + *(v51 + 28);
  v30 = *v29;
  if (*(*v29 + 16))
  {
    v31 = v29[8];
  }

  else
  {
    v42 = v4;
    v43 = *v4;
    v44 = v4[1];
    sub_237C05DFC();
    v45 = v61;
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v61);
    v46 = sub_237B89590(v27, v17);
    if (v5)
    {
      sub_2379F6DD8(v17, &qword_27DE9AF88, &unk_237C0C700);
      (*(v59 + 8))(v27, v45);
      return;
    }

    v4 = v42;
    v50 = v47;
    v48 = v46;
    sub_2379F6DD8(v17, &qword_27DE9AF88, &unk_237C0C700);
    (*(v59 + 8))(v27, v61);

    *v29 = v48;
    v31 = v50;
    v29[8] = v50 & 1;
    v30 = v48;
  }

  v32 = v60;
  sub_237A0D2FC();
  if (!v5)
  {
    v33 = *v4;
    v34 = v4[1];
    v35 = v53;
    sub_237C05DFC();
    sub_237B89BDC(v35, v30, v31 & 1);
    (*(v59 + 8))(v35, v61);
    v36 = _s10ClassifierVMa_1();
    v37 = *(v51 + 24);
    v38 = v4 + *(v36 + 36);
    sub_237C0740C();
    (*(v54 + 8))(v32, v56);
  }
}

uint64_t sub_237A964E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237A960C0(a1, a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

unint64_t sub_237A96590()
{
  result = qword_27DE9C1B8;
  if (!qword_27DE9C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C1B0, &qword_237C0FBF0);
    sub_237A96630(&qword_27DE9C1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C1B8);
  }

  return result;
}

uint64_t sub_237A96630(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C168, &unk_237C0F9E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A96680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_31()
{
  v2 = *(*(v1 - 176) + 8);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_27()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 224);
  return result;
}

void sub_237A96708(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(v4, 1, sub_237BC0CB8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_21();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_237A967C4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(v4, 1, sub_237BC0FD4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_21();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_237A96880(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(v4 + v3, 1, sub_237BC0EB4);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_21();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_237A96944(unint64_t a1)
{
  v3 = sub_237A254D8(a1);
  v4 = sub_237A254D8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_237A98F38(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_237A99618(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_237A96A1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(result, 1, sub_237BC1880);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237A96B58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_38(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_237A98FD8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237A96C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v7 = *(a1 + *(v6 + 24));
  v8 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  sub_2379F6D68(a1 + *(v6 + 28), v14);
  sub_237A995C4(a1, type metadata accessor for MLSoundClassifier.ModelParameters);
  if (!v15)
  {
    result = sub_237A286E0(v14);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v10 = 1;
    v11 = 1;
    goto LABEL_6;
  }

  v10 = v12;
  v11 = v13;
LABEL_6:
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

void sub_237A96D40(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v64 = a3;
  v76 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v76);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v79 = v10;
  OUTLINED_FUNCTION_39_0();
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_23(v12, v13, v14, v15, v16, v17, v18, v19, v63);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v20 = OUTLINED_FUNCTION_0(v83);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v63 - v24;
  v26 = a2[1];
  v89 = *a2;
  *v90 = v26;
  v27 = *(a1 + 64);
  v67 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  *&v90[9] = *(a2 + 25);
  v66 = (v28 + 63) >> 6;
  v77 = v7 + 16;
  v68 = v7;
  v75 = (v7 + 8);
  v82 = v23;
  v74 = v23 + 32;

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  v69 = a1;
  do
  {
    while (1)
    {
      if (!v30)
      {
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v33 >= v66)
          {
            goto LABEL_27;
          }

          v30 = *(v67 + 8 * v33);
          ++v31;
          if (v30)
          {
            v31 = v33;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

LABEL_9:
      v34 = __clz(__rbit64(v30)) | (v31 << 6);
      v35 = *(*(a1 + 56) + 8 * v34);
      v36 = *(v35 + 16);
      if (v36)
      {
        v71 = v31;
        v72 = v30;
        v73 = v32;
        v37 = (*(a1 + 48) + 16 * v34);
        v38 = v37[1];
        v81 = *v37;
        v91 = MEMORY[0x277D84F90];
        v84 = v38;

        sub_237AC8E34();
        v39 = v91;
        OUTLINED_FUNCTION_8_22();
        v70 = v35;
        v41 = v35 + v40;
        v80 = *(v42 + 72);
        v43 = *(v42 + 16);
        do
        {
          v44 = v78;
          v45 = v76;
          v43(v78, v41, v76);
          v43(v79, v44, v45);
          *&v85[0] = v81;
          *(&v85[0] + 1) = v84;

          sub_237C06C6C();
          (*v75)(v44, v45);
          v91 = v39;
          v46 = *(v39 + 16);
          if (v46 >= *(v39 + 24) >> 1)
          {
            sub_237AC8E34();
            v39 = v91;
          }

          *(v39 + 16) = v46 + 1;
          OUTLINED_FUNCTION_8_22();
          (*(v48 + 32))(v39 + v47 + *(v48 + 72) * v46, v25);
          v41 += v80;
          --v36;
        }

        while (v36);

        a1 = v69;
        v32 = v73;
        v30 = v72;
        v31 = v71;
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      v49 = *(v39 + 16);
      v50 = *(v32 + 16);
      if (__OFADD__(v50, v49))
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v50 + v49 > *(v32 + 24) >> 1)
      {
        sub_237BC122C();
        v32 = v51;
      }

      v30 &= v30 - 1;
      if (!*(v39 + 16))
      {
        break;
      }

      v52 = *(v32 + 16);
      if ((*(v32 + 24) >> 1) - v52 < v49)
      {
        goto LABEL_32;
      }

      v53 = v32 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52;
      swift_arrayInitWithCopy();

      if (v49)
      {
        v54 = *(v32 + 16);
        v55 = __OFADD__(v54, v49);
        v56 = v54 + v49;
        if (v55)
        {
          goto LABEL_33;
        }

        *(v32 + 16) = v56;
      }
    }
  }

  while (!v49);
  __break(1u);
LABEL_27:

  v57 = v65;
  sub_237A5556C(v32, &v89, v85);
  if (!v57)
  {
    v58 = v86;
    v59 = v87;
    v60 = v88;
    v61 = v85[1];
    v62 = v64;
    *v64 = v85[0];
    v62[1] = v61;
    *(v62 + 4) = v58;
    *(v62 + 40) = v59;
    *(v62 + 6) = v60;
  }
}

void sub_237A9726C()
{
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v1 = OUTLINED_FUNCTION_0(v145);
  v134 = v2;
  v124 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v143 = v116 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1E0, &qword_237C0FC08);
  v5 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v144 = v116 - v6;
  v7 = sub_237C05BFC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v139 = v9;
  v140 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v138 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for _TablePrinter(0);
  v13 = OUTLINED_FUNCTION_0(v136);
  v123 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v141 = v18;
  v142 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_23(v19, v20, v21, v22, v23, v24, v25, v26, v116[0]);
  v28 = *v0;
  v27 = v0[1];
  v29 = v0[3];
  v122 = v0[2];
  v133 = v29;
  v121 = v0[4];
  v132 = *(v0 + 40);
  v131 = v0[6];
  v30 = *(v131 + 16);
  v146 = [objc_opt_self() progressWithTotalUnitCount_];
  aBlock = 0;
  v148 = 0xE000000000000000;
  sub_237C08EDC();

  aBlock = 0x69737365636F7250;
  v148 = 0xEB0000000020676ELL;
  v150 = v30;
  v31 = sub_237C0924C();
  MEMORY[0x2383DC360](v31);

  MEMORY[0x2383DC360](0x73656C696620, 0xE600000000000000);
  v32 = aBlock;
  v33 = v148;
  sub_237C08C1C();
  sub_237BABE74(v32, v33);

  v150 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  v34 = 0;
  do
  {
    v35 = v34 + 1;
    v36 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    aBlock = 0;
    v148 = 0xE000000000000000;
    sub_237C08EDC();

    aBlock = 0xD000000000000012;
    v148 = 0x8000000237C1A160;
    v149[4] = v34;
    v37 = sub_237C0924C();
    MEMORY[0x2383DC360](v37);

    sub_237A99050(aBlock, v148, v36);
    [v36 setMaxConcurrentOperationCount_];
    sub_237C08F8C();
    v38 = *(v150 + 16);
    sub_237C08FEC();
    sub_237C08FFC();
    sub_237C08F9C();
    v34 = v35;
  }

  while (v35 != 8);
  v137 = v150;
  v39 = MEMORY[0x277D84F90];
  v150 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  v40 = v132;
  if (v132 == 255)
  {
    [objc_allocWithZone(MEMORY[0x277CDC908]) init];
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v41 initWithFeaturePrintType_];
      v42 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v42, v43, v44, sel_setWindowDuration_);
    }

    else
    {
      [v41 0x278A42B78];
    }
  }

  OUTLINED_FUNCTION_5_28(v45);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v46 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v46 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v46 initWithFeaturePrintType_];
      v47 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v47, v48, v49, sel_setWindowDuration_);
      goto LABEL_13;
    }
  }

  [v46 0x278A42B78];
LABEL_13:
  OUTLINED_FUNCTION_5_28(v50);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v51 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v51 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v51 initWithFeaturePrintType_];
      v52 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v52, v53, v54, sel_setWindowDuration_);
      goto LABEL_18;
    }
  }

  [v51 0x278A42B78];
LABEL_18:
  OUTLINED_FUNCTION_5_28(v55);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v56 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v56 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v56 initWithFeaturePrintType_];
      v57 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v57, v58, v59, sel_setWindowDuration_);
      goto LABEL_23;
    }
  }

  [v56 0x278A42B78];
LABEL_23:
  OUTLINED_FUNCTION_5_28(v60);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v61 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v61 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v61 initWithFeaturePrintType_];
      v62 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v62, v63, v64, sel_setWindowDuration_);
      goto LABEL_28;
    }
  }

  [v61 0x278A42B78];
LABEL_28:
  OUTLINED_FUNCTION_5_28(v65);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v66 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v66 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v66 initWithFeaturePrintType_];
      v67 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v67, v68, v69, sel_setWindowDuration_);
      goto LABEL_33;
    }
  }

  [v66 0x278A42B78];
LABEL_33:
  OUTLINED_FUNCTION_5_28(v70);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v71 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v71 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v40)
    {
      [v71 initWithFeaturePrintType_];
      v72 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v72, v73, v74, sel_setWindowDuration_);
      goto LABEL_38;
    }
  }

  [v71 0x278A42B78];
LABEL_38:
  OUTLINED_FUNCTION_5_28(v75);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v40 == 255)
  {
    v76 = objc_allocWithZone(MEMORY[0x277CDC908]);
    goto LABEL_42;
  }

  v76 = objc_allocWithZone(MEMORY[0x277CDC908]);
  if ((v40 & 1) == 0)
  {
LABEL_42:
    [v76 0x278A42B78];
    goto LABEL_43;
  }

  [v76 initWithFeaturePrintType_];
  v77 = OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_0_37(v77, v78, v79, sel_setWindowDuration_);
LABEL_43:
  v81 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_5_28(v80);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  v129 = v150;
  v82 = v136;
  v83 = *(v136 + 20);
  v84 = v135;
  sub_237C05BEC();
  *v84 = v133;
  sub_2379E8EE0(0, &qword_27DE9AD70, 0x277D86200);
  v85 = sub_237C08D0C();
  v86 = *(v82 + 24);
  v116[1] = v85;
  *(v84 + v86) = v85;
  v87 = (v84 + *(v82 + 28));
  *v87 = 0x73656C6946;
  v87[1] = 0xE500000000000000;
  v88 = v138;
  sub_237C05BEC();
  (v139)[5](v84 + v83, v88, v140);
  sub_237BABFB8();
  sub_237BAC25C(0);
  v128 = swift_allocObject();
  *(v128 + 16) = 0;
  v89 = swift_allocObject();
  v90 = 0;
  *(v89 + 16) = 0;
  v116[0] = (v89 + 16);
  v127 = v89;
  *(v89 + 24) = v39;
  v91 = v131;
  v130 = *(v131 + 16);
  v125 = v134 + 16;
  v136 = v137 & 0xC000000000000001;
  v117 = v137 + 32;
  v120 = (v134 + 32);
  v119 = v141 + 7;
  v118 = v149;
  while (1)
  {
    if (v130 == v90)
    {

      v107 = sub_237A254D8(v137);
      if (v107)
      {
        v108 = v107;
        if (v107 < 1)
        {
          goto LABEL_61;
        }

        for (i = 0; i != v108; ++i)
        {
          if (v136)
          {
            v110 = MEMORY[0x2383DCAF0](i, v137);
          }

          else
          {
            v110 = *(v137 + 8 * i + 32);
          }

          v111 = v110;
          [v110 waitUntilAllOperationsAreFinished];
        }
      }

      sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_237C0B660;
      v113 = MEMORY[0x277D83C10];
      *(v112 + 56) = v81;
      *(v112 + 64) = v113;
      *(v112 + 32) = 3;
      sub_237C0826C();

      v114 = v116[0];
      os_unfair_lock_lock(v116[0]);
      v115 = *(v127 + 24);

      os_unfair_lock_unlock(v114);

      sub_237A995C4(v135, type metadata accessor for _TablePrinter);

      return;
    }

    if (v90 >= *(v91 + 16))
    {
      break;
    }

    v92 = *(v134 + 80);
    v93 = *(v126 + 48);
    (*(v134 + 16))(&v144[v93], v91 + ((v92 + 32) & ~v92) + *(v134 + 72) * v90, v145);
    v94 = v90 & 7;
    v140 = v94;
    v141 = v90;
    if (v136)
    {
      v95 = MEMORY[0x2383DCAF0]();
    }

    else
    {
      if (v94 >= *(v137 + 16))
      {
        goto LABEL_60;
      }

      v95 = *(v117 + 8 * v94);
    }

    v139 = v95;
    sub_237A991BC(v135, v142);
    v138 = *v120;
    v96 = v145;
    (v138)(v143, &v144[v93], v145);
    v97 = (*(v123 + 80) + 88) & ~*(v123 + 80);
    v98 = (v119 + v97) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v92 + v99 + 8) & ~v92;
    v101 = swift_allocObject();
    *(v101 + 16) = v28;
    *(v101 + 24) = v27;
    v102 = v133;
    *(v101 + 32) = v122;
    *(v101 + 40) = v102;
    *(v101 + 48) = v121;
    *(v101 + 56) = v132;
    v103 = v128;
    *(v101 + 64) = v127;
    *(v101 + 72) = v103;
    *(v101 + 80) = v146;
    sub_237A993D0(v142, v101 + v97);
    *(v101 + v98) = v129;
    *(v101 + v99) = v140;
    (v138)(v101 + v100, v143, v96);
    v149[2] = sub_237A99434;
    v149[3] = v101;
    aBlock = MEMORY[0x277D85DD0];
    v148 = 1107296256;
    v149[0] = sub_237A98884;
    v149[1] = &block_descriptor_5;
    v104 = _Block_copy(&aBlock);

    v105 = v146;

    v106 = v139;
    [v139 addOperationWithBlock_];
    _Block_release(v104);

    v90 = v141 + 1;
    v81 = MEMORY[0x277D83B88];
    v91 = v131;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

void *sub_237A97FC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_0();
  v45 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  v40 = v38 - v10;
  OUTLINED_FUNCTION_39_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v38 - v13;
  MEMORY[0x28223BE20](v12);
  v44 = v38 - v15;
  v16 = [a1 results];
  v17 = sub_237C0893C();

  v18 = *(v17 + 16);

  sub_237BC1AE4();
  v20 = v19;
  v21 = [a1 results];
  v22 = sub_237C0893C();

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_12:

    return v20;
  }

  v38[1] = v22;
  v24 = v22 + 32;
  v42 = v5;
  v43 = (v5 + 8);
  v46 = (v5 + 32);
  v41 = (v5 + 16);
  v39 = xmmword_237C0B660;
  while (1)
  {
    sub_2379FED88(v24, v48);
    sub_2379E8EE0(0, &qword_27DE9C200, 0x277CDC938);
    swift_dynamicCast();
    v25 = v47;
    v26 = [v47 featureVector];
    sub_237C082EC();
    v27 = *(sub_237C082AC() + 16);

    if (v27 != 2)
    {
LABEL_8:

      goto LABEL_9;
    }

    result = sub_237C082AC();
    if (!result[2])
    {
      break;
    }

    v29 = result[4];

    if (v29 != 1)
    {
      goto LABEL_8;
    }

    sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
    v48[0] = sub_237C0834C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v30 = swift_allocObject();
    *(v30 + 16) = v39;
    result = sub_237C082AC();
    if (result[2] < 2uLL)
    {
      goto LABEL_14;
    }

    v31 = result[5];

    *(v30 + 32) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
    v32 = v40;
    sub_237C082BC();

    (*v43)(v14, v2);
    (*v46)(v14, v32, v2);
LABEL_9:
    v33 = *v46;
    v34 = v44;
    (*v46)(v44, v14, v2);
    (*v41)(v45, v34, v2);
    v35 = *(v20 + 16);
    if (v35 >= *(v20 + 24) >> 1)
    {
      sub_237BC1AE4();
      v20 = v37;
    }

    v36 = v42;
    (*(v42 + 8))(v44, v2);
    *(v20 + 16) = v35 + 1;
    v33((v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35), v45, v2);
    v24 += 32;
    if (!--v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_237A98480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(v7 - v4, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C4C();
  v7[0] = v7[2];
  v7[1] = v7[3];
  return sub_237C06C6C();
}

void sub_237A985A4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a3;
  v35 = a4;
  v36[2] = *MEMORY[0x277D85DE8];
  v13 = sub_237C05ADC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A254DC(a7, (a6 & 0xC000000000000001) == 0, a6);
  if ((a6 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2383DCAF0](a7, a6);
  }

  else
  {
    v17 = *(a6 + 8 * a7 + 32);
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C7C();
  v19 = objc_allocWithZone(MEMORY[0x277CDC8D8]);
  v20 = sub_237A98DD4(v16);
  v21 = [objc_allocWithZone(MEMORY[0x277CDC950]) init];
  v36[0] = 0;
  if ([v20 addRequest:v18 withObserver:v21 error:v36])
  {
    v22 = v36[0];
    [v20 analyze];
    v23 = sub_237A97FC0(v21);
    MEMORY[0x28223BE20](v23);
    *(&v33 - 2) = a8;
    sub_2379E2980();
    v25 = v24;

    os_unfair_lock_lock(a2 + 4);
    sub_237A96A1C(v25);
    os_unfair_lock_unlock(a2 + 4);
    v26 = v35;
    add_explicit = atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
    v28 = [v26 completedUnitCount];
    if (__OFADD__(v28, 1))
    {
      __break(1u);
    }

    else
    {
      v29 = add_explicit + 1;
      [v26 setCompletedUnitCount_];
      v30 = *(a1 + 16);
      if (!__OFADD__(v29, v30))
      {
        sub_237BAC25C(v29 + v30);

        v31 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    __break(1u);
  }

  v32 = v36[0];
  sub_237C0593C();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237A98884(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_237A988C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a1;
  v79 = *MEMORY[0x277D85DE8];
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v68 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v74 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  v66 = &v61 - v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = *a2;
  v17 = *(a2 + 40);
  v18 = &off_278A42000;
  if (v17 == 255)
  {
    v20 = objc_allocWithZone(MEMORY[0x277CDC908]);
    goto LABEL_5;
  }

  v19 = *(a2 + 8);
  v20 = objc_allocWithZone(MEMORY[0x277CDC908]);
  if ((v17 & 1) == 0)
  {
LABEL_5:
    v21 = [v20 init];
    goto LABEL_6;
  }

  v21 = [v20 initWithFeaturePrintType_];
  v75 = sub_237C08CBC();
  v76 = v22;
  v77 = v23;
  v78 = v24;
  [v21 setWindowDuration_];
LABEL_6:
  *&v25 = v16;
  [v21 setOverlapFactor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C208, &qword_237C0FC30);
  sub_237A9956C();
  v26 = sub_237C085AC();
  v27 = 0;
  v67 = *(v69 + 16);
  v73 = v68 + 16;
  v64 = v5;
  v65 = (v68 + 8);
  v62 = v21;
  v63 = v15;
  while (1)
  {
    if (v67 == v27)
    {
      goto LABEL_20;
    }

    v28 = *(v68 + 72);
    OUTLINED_FUNCTION_8_22();
    v72 = v30;
    v70 = v31;
    v33 = *(v32 + 16);
    v33(v15, v69 + v29 + v31 * v30, v5);
    v34 = v66;
    v33(v66, v15, v5);
    v35 = objc_allocWithZone(MEMORY[0x277CDC8D8]);
    v36 = sub_237A98DD4(v34);
    if (v3)
    {
      v53 = OUTLINED_FUNCTION_13_18();
      v54(v53);

LABEL_20:

LABEL_22:
      v59 = *MEMORY[0x277D85DE8];
      return v26;
    }

    v37 = v36;
    v38 = [objc_allocWithZone(MEMORY[0x277CDC950]) v18[227]];
    v75 = 0;
    if (([v37 addRequest:v21 withObserver:v38 error:&v75] & 1) == 0)
    {
      v55 = v37;
      v56 = v75;

      sub_237C0593C();

      swift_willThrow();
      v57 = OUTLINED_FUNCTION_13_18();
      v58(v57);
      goto LABEL_22;
    }

    v71 = 0;
    v39 = v75;
    [v37 analyze];
    v33(v74, v15, v5);
    v40 = sub_237A97FC0(v38);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v26;
    v41 = sub_237ACB424();
    if (__OFADD__(v26[2], (v42 & 1) == 0))
    {
      __break(1u);
LABEL_24:
      __break(1u);
    }

    v43 = v41;
    v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C218, &unk_237C0FC38);
    if (sub_237C090AC())
    {
      break;
    }

LABEL_14:
    v26 = v75;
    if (v44)
    {
      v47 = *(v75 + 7);
      v48 = *(v47 + 8 * v43);
      *(v47 + 8 * v43) = v40;

      v5 = v64;
    }

    else
    {
      *(v75 + (v43 >> 6) + 8) |= 1 << v43;
      v5 = v64;
      v33((v26[6] + v43 * v70), v74, v64);
      *(v26[7] + 8 * v43) = v40;
      v49 = v26[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_24;
      }

      v26[2] = v51;
    }

    v52 = *v65;
    (*v65)(v74, v5);
    v15 = v63;
    v52(v63, v5);
    v3 = v71;
    v27 = v72 + 1;
    v18 = &off_278A42000;
    v21 = v62;
  }

  v45 = sub_237ACB424();
  if ((v44 & 1) == (v46 & 1))
  {
    v43 = v45;
    goto LABEL_14;
  }

  result = sub_237C0932C();
  __break(1u);
  return result;
}

id sub_237A98DD4(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C059EC();
  v14[0] = 0;
  v5 = [v2 initWithURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_237C05ADC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_237C0593C();

    swift_willThrow();
    v11 = sub_237C05ADC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_237A98F38(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_237C090EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_237C08F6C();
  *v1 = result;
  return result;
}

uint64_t sub_237A98FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_237A99050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_237C086BC();

  [a3 setName_];
}

uint64_t sub_237A990B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1E8, &qword_237C0FC10);
  OUTLINED_FUNCTION_12_0(v1);
  (*(v2 + 8))(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237A9911C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1F0, &qword_237C0FC18);
  OUTLINED_FUNCTION_12_0(v1);
  (*(v2 + 8))(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1F8, &unk_237C0FC20);
  OUTLINED_FUNCTION_12_0(v3);
  (*(v4 + 8))(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237A991BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _TablePrinter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A99220()
{
  v1 = (type metadata accessor for _TablePrinter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v2 | v10;
  v14 = *(v0 + 64);

  v15 = *(v0 + 72);

  v16 = v0 + v3;
  v17 = v1[7];
  v18 = sub_237C05BFC();
  OUTLINED_FUNCTION_12_0(v18);
  (*(v19 + 8))(v16 + v17);

  v20 = *(v16 + v1[9] + 8);

  v21 = *(v0 + v4);

  (*(v7 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_237A993D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _TablePrinter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_237A99434()
{
  v1 = *(type metadata accessor for _TablePrinter(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = *(v0 + v3);
  v10 = *(v0 + v4);
  v11 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  sub_237A985A4((v0 + 2), v6, v7, v8, v0 + v2, v9, v10, v11);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237A9956C()
{
  result = qword_27DE9C210;
  if (!qword_27DE9C210)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C210);
  }

  return result;
}

uint64_t sub_237A995C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237A99618(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_237C090EC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_237A254D8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2379D9224(&qword_27DE9C228, &qword_27DE9C220, &qword_237C0FC48);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C220, &qword_237C0FC48);
          v9 = sub_237A24B90(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A997B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_237A997F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237A99860(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A998A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_0_37@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X8>)
{
  *(v5 - 168) = a1;
  *(v5 - 160) = a2;
  *(v5 - 152) = a3;

  return [v4 a4];
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return sub_237C08CBC();
}

id OUTLINED_FUNCTION_5_28(double a1)
{
  LODWORD(a1) = v4;

  return [v1 (v2 + 1910)];
}

uint64_t OUTLINED_FUNCTION_6_27()
{
  v2 = *(*(v0 - 112) + 16);

  return sub_237C08FEC();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_237C08FFC();
}

int *MLHandPoseClassifier.ModelParameters.init(validation:batchSize:maximumIterations:augmentationOptions:algorithm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_237A9A7B0(a1, a5);
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = v8;
  return result;
}

void sub_237A99AB0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v17, v20, v21, v22, v23, v24, v25, v26, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  if (!v3)
  {
    v59 = a2;
    v27 = v66;
    v28 = v67;
    sub_237A9A3C4(v4, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = swift_getEnumCaseMultiPayload();
        if (v30 == 5)
        {
          sub_2379DBC9C(v27, v28);
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
          v40 = *&v19[v39[12] + 8];

          v41 = *&v19[v39[16] + 8];

          v42 = *&v19[v39[20] + 8];

          v43 = sub_237C05DBC();
          OUTLINED_FUNCTION_4(v43);
          (*(v44 + 8))(v19);
          goto LABEL_15;
        }

        if (v30 == 3)
        {
          sub_2379DBC9C(v27, v28);
          sub_237A9A80C(v19);
LABEL_15:
          *a1 = 0;
          *(a1 + 8) = -1;
          v38 = v59;
          *v59 = 0;
          goto LABEL_16;
        }

        v45 = sub_237A9A7B0(v19, v12);
        MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v45, v46, v47, v48, v49, v50, v51, v52, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
        sub_237A9A80C(v12);
        v56 = v66;
        v57 = v67;
        *a1 = v27;
        *(a1 + 8) = v28;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_8_8();
      if (v37)
      {
        *a1 = v27;
        *(a1 + 8) = v13;
        v38 = v59;
        *v59 = 0;
LABEL_16:
        *(v38 + 8) = -1;
        return;
      }

LABEL_13:
      sub_2379DBC9C(v27, v13);
      goto LABEL_15;
    }

    v31 = *v19;
    v32 = *(v19 + 1);
    v33 = v19[16];
    v34 = v19[17];
    if (OUTLINED_FUNCTION_8_8() < 1)
    {
      goto LABEL_13;
    }

    v64 = v27;
    v35 = v13;
    LOBYTE(v65) = v13;
    MLDataTable.subscript.getter();
    v60 = v62;
    LOBYTE(v61) = v63;
    MLUntypedColumn.dropDuplicates()(&v66);
    sub_2379DBC9C(v60, v61);
    v36 = v66;
    if (v67)
    {
      sub_2379DBC9C(v66, 1);
      if (v34)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v53 = *(v66 + 2);

      v54 = sub_237A2F128();
      sub_2379DBC9C(v36, 0);
      sub_2379DBC9C(v36, 0);
      if (v34)
      {
        if (v54 < 50)
        {
LABEL_24:
          v56 = 0;
          v57 = -1;
LABEL_26:
          *a1 = v27;
          *(a1 + 8) = v35;
LABEL_27:
          v55 = v59;
          *v59 = v56;
          *(v55 + 8) = v57;
          return;
        }

        v31 = dbl_237C0CE20[v54 < 0xC8];
        v32 = 1;
LABEL_25:
        v62 = v27;
        LOBYTE(v63) = v35;
        MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(&v66, &v64, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, v32, v31);
        sub_2379DBC9C(v27, v35);
        v56 = v66;
        v57 = v67;
        v27 = v64;
        v35 = v65;
        goto LABEL_26;
      }
    }

    if (v33)
    {
      v66 = 0;
      MEMORY[0x2383DD970](&v66, 8);
      v32 = v66;
    }

    if (v31 == 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }
}

uint64_t MLHandPoseClassifier.ModelParameters.batchSize.setter()
{
  result = OUTLINED_FUNCTION_2_39();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.maximumIterations.setter()
{
  result = OUTLINED_FUNCTION_2_39();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

unint64_t MLHandPoseClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v10 = 0xD000000000000014;
  v11 = 0x8000000237C18390;
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v9[0] = *(v0 + v1[6]);
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  strcpy(v9, "Batch Size: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v8 = *(v0 + v1[5]);
  v3 = sub_237C0924C();
  MEMORY[0x2383DC360](v3);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v9[0], v9[1]);

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_237C08EDC();

  v4 = *(v0 + v1[7]);
  v9[0] = 0xD000000000000016;
  v9[1] = 0x8000000237C183F0;
  if (v4 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000237C18430;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x2383DC360](v5, v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v9[0], v9[1]);

  sub_237C08EDC();

  MEMORY[0x2383DC360](5129031, 0xE300000000000000);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18410);

  return v10;
}

uint64_t sub_237A9A3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A9A428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t MLHandPoseClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLHandPoseClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_237A9A4C4()
{
  result = qword_27DE9C230;
  if (!qword_27DE9C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C230);
  }

  return result;
}

uint64_t sub_237A9A538(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_237A9A590(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_237A9A5D8()
{
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15ModelParametersV18ModelAlgorithmTypeOwst_0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x237A9A704);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237A9A73C()
{
  result = sub_2379EA11C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLHandPoseClassifier.DataSource();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A9A7B0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_237A9A80C(uint64_t a1)
{
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
}

int *MLTrainingSessionParameters.init(sessionDirectory:reportInterval:checkpointInterval:iterations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2379E8770(a1, a5);
  if (a3 < a2)
  {
    a2 = a3;
  }

  result = type metadata accessor for MLTrainingSessionParameters();
  v10 = result[6];
  v11 = result[7];
  *(a5 + result[5]) = a2;
  *(a5 + v10) = a3;
  *(a5 + v11) = a4;
  return result;
}

uint64_t type metadata accessor for MLTrainingSessionParameters()
{
  result = qword_27DE9C260;
  if (!qword_27DE9C260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A9A92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = type metadata accessor for MLCheckpoint();
    v5 = a1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
    v6 = *(*(v4 - 8) + 72);
    OUTLINED_FUNCTION_1_35();
    sub_237A9D268(v7, a2, v8);
    v9 = OUTLINED_FUNCTION_18_19();
    v12 = v4;
  }

  else
  {
    type metadata accessor for MLCheckpoint();
    v9 = OUTLINED_FUNCTION_10_21();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_237A9AA14(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_237C087BC();
  return sub_237C0882C();
}

uint64_t sub_237A9AAAC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_4(v7);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    v9 = OUTLINED_FUNCTION_18_19();
    v12 = v7;
  }

  else
  {
    a2(0);
    v9 = OUTLINED_FUNCTION_10_21();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_237A9AB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t MLTrainingSessionParameters.reportInterval.setter()
{
  OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLTrainingSessionParameters();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*MLTrainingSessionParameters.reportInterval.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLTrainingSessionParameters() + 20);
  return nullsub_1;
}

uint64_t MLTrainingSessionParameters.checkpointInterval.setter()
{
  OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLTrainingSessionParameters();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*MLTrainingSessionParameters.checkpointInterval.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLTrainingSessionParameters() + 24);
  return nullsub_1;
}

uint64_t MLTrainingSessionParameters.iterations.setter()
{
  OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLTrainingSessionParameters();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t (*MLTrainingSessionParameters.iterations.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLTrainingSessionParameters() + 28);
  return nullsub_1;
}

uint64_t MLTrainingSession.date.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_7();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v5 = sub_237C05BFC();
  OUTLINED_FUNCTION_4(v5);
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t MLTrainingSession.phase.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_31_9();
  v5 = v1 + *(v4 + 112);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_31_9();
  v7 = *(v6 + 80);
  result = type metadata accessor for MLTrainingSession.Metadata();
  *a1 = v5[*(result + 28)];
  return result;
}

uint64_t sub_237A9AE90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MLTrainingSession.phase.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_237A9AECC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_237A9AF04(&v4);
}

uint64_t sub_237A9AF04(char *a1)
{
  v3 = *v1;
  v4 = *a1;
  OUTLINED_FUNCTION_15_16();
  OUTLINED_FUNCTION_19_16(*(v5 + 112));
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  v7 = *(v6 + 80);
  result = type metadata accessor for MLTrainingSession.Metadata();
  *(v2 + *(result + 28)) = v4;
  return result;
}

uint64_t MLTrainingSession.iteration.getter()
{
  v2 = *v0;
  OUTLINED_FUNCTION_15_16();
  OUTLINED_FUNCTION_19_16(*(v3 + 112));
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  v5 = *(v4 + 80);
  return *(v1 + *(type metadata accessor for MLTrainingSession.Metadata() + 32));
}

uint64_t sub_237A9AFE4(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_31_9();
  v5 = v1 + *(v4 + 112);
  OUTLINED_FUNCTION_21_15();
  swift_beginAccess();
  OUTLINED_FUNCTION_31_9();
  v7 = *(v6 + 80);
  result = type metadata accessor for MLTrainingSession.Metadata();
  *&v5[*(result + 32)] = a1;
  return result;
}

uint64_t MLTrainingSession.checkpoints.getter()
{
  v2 = *v0;
  OUTLINED_FUNCTION_15_16();
  OUTLINED_FUNCTION_19_16(*(v3 + 112));
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  v5 = *(v4 + 80);
  v6 = *(v1 + *(type metadata accessor for MLTrainingSession.Metadata() + 44));
}

void sub_237A9B0C8()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  OUTLINED_FUNCTION_28_7();
  v4 = *(v3 + 80);
  v5 = type metadata accessor for MLTrainingSession.Metadata();
  v73 = OUTLINED_FUNCTION_0(v5);
  v74 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v72 = &v69 - v10;
  OUTLINED_FUNCTION_41_0();
  v11 = sub_237C0909C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v71 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  v25 = type metadata accessor for MLTrainingSessionParameters();
  v26 = OUTLINED_FUNCTION_20(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = sub_237C05ADC();
  v33 = OUTLINED_FUNCTION_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  OUTLINED_FUNCTION_3_36();
  sub_237A9D268(v2 + v44, v31, v45);
  sub_2379E8770(v31, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v32) == 1)
  {
    sub_2379D9054(v24, &qword_27DE9AA18, &qword_237C0B710);
  }

  else
  {
    (*(v35 + 32))(v43, v24, v32);
    v70 = v40;
    sub_237C05A2C();
    v46 = sub_237C0592C();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    sub_237C0591C();
    if (qword_27DE9A580 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v11, qword_27DEACD18);
    (*(v71 + 16))(v18, v49, v11);
    v76[3] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
    v71 = v35;
    v51 = *(v35 + 16);
    v69 = v43;
    v51(boxed_opaque_existential_0, v43, v32);
    v52 = sub_237C0590C();
    sub_237B19D44(v76, v18);
    v52(&v75, 0);
    v53 = *(*v2 + 112);
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v54 = v73;
    v55 = v74;
    v56 = v2 + v53;
    v57 = v72;
    (*(v74 + 16))(v72, v56, v73);
    swift_getWitnessTable();
    v58 = sub_237C058FC();
    if (v1)
    {

      (*(v55 + 8))(v57, v54);
      v60 = v70;
      v63 = v69;
    }

    else
    {
      v61 = v58;
      v62 = v59;
      (*(v55 + 8))(v57, v54);
      v60 = v70;
      sub_237C05B9C();
      v65 = (v2 + qword_27DEACD88);
      v66 = *(v2 + qword_27DEACD88 + 24);
      v67 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v68 = *(*(v67 + 8) + 8);
      v63 = v69;
      v68(v69, v66);
      sub_2379E86D4(v61, v62);
    }

    v64 = *(v71 + 8);
    v64(v60, v32);
    v64(v63, v32);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A9B60C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
    if (v6 || (sub_237C0929C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172657469 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_237C0929C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C52556C65646F6DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_237C0929C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461447475706E69 && a2 == 0xEC0000004C525561;
          if (v9 || (sub_237C0929C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x696F706B63656863 && a2 == 0xEB0000000073746ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_237C0929C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237A9B808(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 0x4C52556C65646F6DLL;
      break;
    case 4:
      result = 0x7461447475706E69;
      break;
    case 5:
      result = 0x696F706B63656863;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237A9B8DC()
{
  OUTLINED_FUNCTION_74();
  v26 = v2;
  v27 = v1;
  v3 = v0;
  v5 = v4;
  v6 = *(v2 + 16);
  type metadata accessor for MLTrainingSession.Metadata.CodingKeys();
  OUTLINED_FUNCTION_9_22();
  swift_getWitnessTable();
  v7 = sub_237C0922C();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_237C0949C();
  sub_237C05BFC();
  OUTLINED_FUNCTION_8_23();
  sub_237A9DCFC(v16, v17);
  v18 = v27;
  sub_237C0921C();
  if (!v18)
  {
    v19 = v26;
    v29 = *(v3 + v26[7]);
    sub_237A852B0();
    OUTLINED_FUNCTION_23_15();
    sub_237C0921C();
    v20 = *(v3 + v19[8]);
    OUTLINED_FUNCTION_23_15();
    sub_237C0920C();
    v21 = v19[9];
    sub_237C05ADC();
    OUTLINED_FUNCTION_6_28();
    sub_237A9DCFC(v22, v23);
    OUTLINED_FUNCTION_23_15();
    sub_237C091DC();
    v24 = v26[10];
    OUTLINED_FUNCTION_23_15();
    sub_237C091DC();
    v28 = *(v3 + v26[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C380, &qword_237C0FF50);
    sub_237A9DC60(&qword_27DE9C398, qword_27DE9C3A0);
    OUTLINED_FUNCTION_23_15();
    sub_237C0921C();
  }

  (*(v9 + 8))(v14, v7);
  OUTLINED_FUNCTION_73();
}

void sub_237A9BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_74();
  v76 = v12;
  v80 = v13;
  v65 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v66 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v70 = &v63 - v22;
  OUTLINED_FUNCTION_41_0();
  v71 = sub_237C05BFC();
  v23 = OUTLINED_FUNCTION_0(v71);
  v69 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v73 = v28 - v27;
  type metadata accessor for MLTrainingSession.Metadata.CodingKeys();
  OUTLINED_FUNCTION_9_22();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_237C091CC();
  OUTLINED_FUNCTION_0(v72);
  v68 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v63 - v33;
  v35 = type metadata accessor for MLTrainingSession.Metadata();
  OUTLINED_FUNCTION_0(v35);
  v79 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  v41 = &v63 - v40;
  sub_237C05BEC();
  v67 = v35[7];
  v41[v67] = 0;
  v42 = v35[8];
  *&v41[v42] = 0;
  v43 = v35[9];
  v44 = sub_237C05ADC();
  __swift_storeEnumTagSinglePayload(&v41[v43], 1, 1, v44);
  v45 = v35[10];
  __swift_storeEnumTagSinglePayload(&v41[v45], 1, 1, v44);
  v78 = v35;
  v46 = v35[11];
  v77 = v41;
  *&v41[v46] = MEMORY[0x277D84F90];
  v47 = v80[4];
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  v74 = v34;
  v48 = v76;
  sub_237C0946C();
  if (v48)
  {
    v54 = v77;
    __swift_destroy_boxed_opaque_existential_1(v80);
    (*(v79 + 8))(v54, v78);
  }

  else
  {
    WitnessTable = v43;
    v76 = v44;
    v63 = v46;
    v64 = v45;
    v50 = v69;
    v49 = v70;
    OUTLINED_FUNCTION_8_23();
    sub_237A9DCFC(v51, v52);
    v53 = v71;
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_17_15();
    sub_237C091BC();
    v55 = v77;
    (*(v50 + 40))(v77, v73, v53);
    sub_237A84B54();
    OUTLINED_FUNCTION_17_15();
    sub_237C091BC();
    v55[v67] = a12;
    OUTLINED_FUNCTION_17_15();
    *&v55[v42] = sub_237C091AC();
    OUTLINED_FUNCTION_6_28();
    sub_237A9DCFC(v56, v57);
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_17_15();
    sub_237C0917C();
    sub_237A9DBF0(v49, &v55[WitnessTable]);
    v58 = v66;
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_17_15();
    sub_237C0917C();
    sub_237A9DBF0(v58, &v55[v64]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C380, &qword_237C0FF50);
    sub_237A9DC60(&qword_27DE9C388, &qword_27DE9C390);
    OUTLINED_FUNCTION_17_15();
    sub_237C091BC();
    v59 = OUTLINED_FUNCTION_20_12();
    v60(v59);
    *&v55[v63] = v81;
    v62 = v78;
    v61 = v79;
    (*(v79 + 16))(v65, v55, v78);
    __swift_destroy_boxed_opaque_existential_1(v80);
    (*(v61 + 8))(v55, v62);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A9C180(uint64_t a1, uint64_t a2)
{
  sub_237C093CC();
  v4 = *(a2 + 16);
  sub_237A2BA70(v6, *v2);
  return sub_237C0940C();
}

uint64_t sub_237A9C1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_237A9B60C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_237A9C200(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_237A9C224@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_237A9B800();
  *a2 = result;
  return result;
}

uint64_t sub_237A9C250(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237A9C2A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void MLTrainingSession.removeCheckpoints(_:)()
{
  OUTLINED_FUNCTION_74();
  v63 = v2;
  v64 = v3;
  v66[4] = *MEMORY[0x277D85DE8];
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v58 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v55 - v12;
  OUTLINED_FUNCTION_41_0();
  v57 = type metadata accessor for MLCheckpoint();
  v13 = OUTLINED_FUNCTION_0(v57);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v62 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v61 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  OUTLINED_FUNCTION_28_7();
  v24 = v0 + *(v23 + 112);
  OUTLINED_FUNCTION_21_15();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  v26 = *(v25 + 80);
  v65 = type metadata accessor for MLTrainingSession.Metadata();
  v27 = *(v65 + 44);
  v28 = *(*&v24[v27] + 16);
  v60 = v24;
  if (v28)
  {
    v59 = v1;
    v55 = v0;
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    do
    {
      if (v29 >= *(*&v24[*(v65 + 44)] + 16))
      {
        __break(1u);
      }

      v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v32 = *(v15 + 72);
      OUTLINED_FUNCTION_1_35();
      sub_237A9D268(v33, v22, v34);
      if (v63(v22))
      {
        v35 = sub_237C059EC();
        v66[0] = 0;
        v36 = [v61 removeItemAtURL:v35 error:v66];

        if (v36)
        {
          v37 = v66[0];
          OUTLINED_FUNCTION_0_38();
          sub_237A9D504();
        }

        else
        {
          v40 = v66[0];
          v41 = sub_237C0593C();

          swift_willThrow();
          OUTLINED_FUNCTION_0_38();
          sub_237A9D504();
          v59 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_35();
        sub_237A9D268(v22, v62, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = *(v30 + 16);
          sub_237BC12F8();
          v30 = v43;
        }

        v39 = *(v30 + 16);
        if (v39 >= *(v30 + 24) >> 1)
        {
          sub_237BC12F8();
          v30 = v44;
        }

        OUTLINED_FUNCTION_0_38();
        sub_237A9D504();
        *(v30 + 16) = v39 + 1;
        sub_237A9D370(v62, v30 + v31 + v39 * v32);
        v24 = v60;
      }

      ++v29;
    }

    while (v28 != v29);
    v27 = *(v65 + 44);
    v45 = *&v24[v27];
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  *&v24[v27] = v30;

  v46 = v56;
  sub_237A9A92C(v30, v56);
  v47 = v57;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v57);
  v49 = v58;
  if (EnumTagSinglePayload == 1)
  {
    sub_2379D9054(v46, &qword_27DE9B8E8, &qword_237C0EBF0);
  }

  else
  {
    v50 = *(v46 + *(v47 + 20));
    OUTLINED_FUNCTION_0_38();
    sub_237A9D504();
    sub_237A9A92C(v30, v49);

    if (__swift_getEnumTagSinglePayload(v49, 1, v47) == 1)
    {
      sub_2379D9054(v49, &qword_27DE9B8E8, &qword_237C0EBF0);
    }

    else
    {
      v51 = *(v49 + *(v47 + 24));
      OUTLINED_FUNCTION_0_38();
      sub_237A9D504();
      v52 = v65;
      v53 = v60;
      v60[*(v65 + 28)] = v50;
      *&v53[*(v52 + 32)] = v51;
    }
  }

  sub_237A9B0C8();

  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

void MLTrainingSession.reuseExtractedFeatures(from:)()
{
  OUTLINED_FUNCTION_74();
  v96 = v1;
  v97 = v2;
  v99[7] = *MEMORY[0x277D85DE8];
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v98 = &v88 - v8;
  OUTLINED_FUNCTION_41_0();
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v95 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v88 - v19;
  v21 = type metadata accessor for MLCheckpoint();
  v22 = OUTLINED_FUNCTION_0(v21);
  v94 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v88 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v88 - v33;
  v35 = v0 + *(v3 + 112);
  OUTLINED_FUNCTION_21_15();
  swift_beginAccess();
  v36 = *(v3 + 80);
  v37 = type metadata accessor for MLTrainingSession.Metadata();
  if (*(*&v35[*(v37 + 44)] + 16))
  {
    v38 = 0x8000000237C1A1F0;
    sub_2379E8AF0();
    swift_allocError();
    v40 = 0xD000000000000047;
LABEL_14:
    *v39 = v40;
    *(v39 + 8) = v38;
    *(v39 + 16) = 0u;
    *(v39 + 32) = 0u;
    *(v39 + 48) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v41 = v37;
  v92 = v0;
  v93 = v34;
  v90 = v28;
  v91 = v20;
  v42 = v97 + *(*v97 + 112);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v97 = v41;
  v43 = *&v42[v41[11]];
  v99[0] = v43;
  v44 = v43[2];
  v89 = v35;
  if (v44)
  {
    v45 = v94;
    v46 = v43 + ((*(v94 + 80) + 32) & ~*(v94 + 80));

    while (2)
    {
      if (v44 > v43[2])
      {
        __break(1u);
      }

      --v44;
      v47 = *(v45 + 72);
      OUTLINED_FUNCTION_1_35();
      sub_237A9D268(v48, v32, v49);
      switch(v32[*(v21 + 20)])
      {
        case 1:
          v56 = v21;

          OUTLINED_FUNCTION_0_38();
          v51 = sub_237A9D504();
          v53 = v92;
          v54 = v93;
          v52 = v98;
          v55 = v95;
          goto LABEL_10;
        default:
          v50 = sub_237C0929C();

          OUTLINED_FUNCTION_0_38();
          v51 = sub_237A9D504();
          if ((v50 & 1) == 0 && v44)
          {
            continue;
          }

          v52 = v98;
          v53 = v92;
          v54 = v93;
          v55 = v95;
          v56 = v21;
LABEL_10:
          v57 = v91;
          break;
      }

      break;
    }
  }

  else
  {

    v56 = v21;
    v57 = v91;
    v53 = v92;
    v55 = v95;
    v52 = v98;
    v54 = v93;
  }

  MEMORY[0x28223BE20](v51);
  *(&v88 - 2) = v99;
  sub_237A9D42C(sub_237A594BC, v44, v58 & 1, type metadata accessor for MLCheckpoint, v57);

  if (__swift_getEnumTagSinglePayload(v57, 1, v56) == 1)
  {
    sub_2379D9054(v57, &qword_27DE9B8E8, &qword_237C0EBF0);
    v38 = 0x8000000237C1A240;
    sub_2379E8AF0();
    swift_allocError();
    v40 = 0xD000000000000029;
    goto LABEL_14;
  }

  sub_237A9D370(v57, v54);
  OUTLINED_FUNCTION_3_36();
  sub_237A9D268(v53 + v60, v55, v61);
  sub_2379E8770(v55, v52);
  v62 = sub_237C05ADC();
  if (__swift_getEnumTagSinglePayload(v52, 1, v62) == 1)
  {
    __break(1u);
    JUMPOUT(0x237A9CFCCLL);
  }

  v63 = v56;
  v64 = *(v54 + *(v56 + 24));
  v65 = *(v54 + v63[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_237C0B670;
  *(v66 + 56) = MEMORY[0x277D837D0];
  v67 = sub_237A8E8E4();
  *(v66 + 32) = 0x6974636172747865;
  *(v66 + 40) = 0xEA0000000000676ELL;
  v68 = MEMORY[0x277D83C10];
  *(v66 + 96) = MEMORY[0x277D83B88];
  *(v66 + 104) = v68;
  *(v66 + 64) = v67;
  *(v66 + 72) = v64;

  sub_237C0871C();
  v69 = v90;
  v70 = v98;
  sub_237C05A2C();

  *(v69 + v63[5]) = 1;
  *(v69 + v63[6]) = v64;
  v71 = v69 + v63[7];
  sub_237C05BEC();
  (*(*(v62 - 8) + 8))(v70, v62);
  *(v69 + v63[8]) = v65;
  v72 = [objc_opt_self() defaultManager];
  v73 = sub_237C059EC();
  v74 = sub_237C059EC();
  v99[0] = 0;
  v75 = [v72 copyItemAtURL:v73 toURL:v74 error:v99];

  v76 = v99[0];
  if (v75)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C258, &qword_237C16A20);
    v77 = *(v94 + 72);
    v78 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_237C0B660;
    OUTLINED_FUNCTION_1_35();
    sub_237A9D268(v69, v80 + v78, v81);
    v82 = v76;
    OUTLINED_FUNCTION_7_24();
    sub_237A9D504();
    v83 = v97;
    v84 = v97[11];
    v85 = v89;
    v86 = *&v89[v84];
    *&v89[v84] = v79;
    v85[v83[7]] = 1;

    sub_237A9D504();
    *&v85[v83[8]] = v64;
  }

  else
  {
    v87 = v99[0];
    sub_237C0593C();

    swift_willThrow();
    OUTLINED_FUNCTION_7_24();
    sub_237A9D504();
    sub_237A9D504();
  }

LABEL_15:
  v59 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

char *MLTrainingSession.deinit()
{
  v1 = *v0;
  sub_237A9D504();
  __swift_destroy_boxed_opaque_existential_1(&v0[qword_27DEACD88]);
  OUTLINED_FUNCTION_28_7();
  v3 = *(v2 + 112);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for MLTrainingSession.Metadata();
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 8))(&v0[v3]);
  return v0;
}

uint64_t MLTrainingSession.__deallocating_deinit()
{
  MLTrainingSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_237A9D1AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_237A9D268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237A9D328(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_237A9D370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLCheckpoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_237A9D42C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  if (a3)
  {
    a4(0);
    v7 = OUTLINED_FUNCTION_10_21();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    v16 = a2;
    result = a1(a5, &v16);
    if (v5)
    {
      __break(1u);
    }

    else
    {
      a4(0);
      v12 = OUTLINED_FUNCTION_18_19();
      return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_237A9D504()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237A9D570@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MLTrainingSession.iteration.getter();
  *a2 = result;
  return result;
}

uint64_t sub_237A9D5DC()
{
  OUTLINED_FUNCTION_63_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237A9D640()
{
  OUTLINED_FUNCTION_63_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_237A9D694()
{
  sub_237A9DB74(319, qword_27DE9C270, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_237A9D740(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = type metadata accessor for MLTrainingSession.Metadata();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_237A9D854()
{
  sub_237C05BFC();
  if (v0 <= 0x3F)
  {
    sub_237A9DB74(319, qword_27DE9C270, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_237A9DB74(319, &qword_27DE9C378, type metadata accessor for MLCheckpoint, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A9D97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63_1();
  v6 = sub_237C05BFC();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v12 = OUTLINED_FUNCTION_135(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v10 = v4 + *(a3 + 36);
    goto LABEL_5;
  }

  v15 = *(v4 + *(a3 + 44));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_237A9DA84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_63_1();
  v8 = sub_237C05BFC();
  v9 = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
    result = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 44)) = (v4 - 1);
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

void sub_237A9DB74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_237A9DBF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A9DC60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C380, &qword_237C0FF50);
    sub_237A9DCFC(a2, type metadata accessor for MLCheckpoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A9DCFC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_237A9DD4C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x237A9DE18);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void MLTextClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v4 = *v2;
  sub_237AAB14C(a1, 0x73616C4374786554, 0xEE00726569666973, __dst);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLTextClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  object = toFile._object;
  countAndFlagsBits = toFile._countAndFlagsBits;
  memcpy(__dst, metadata, sizeof(__dst));
  v5 = *v2;
  sub_237AAB274(countAndFlagsBits, object, 0x73616C4374786554, 0xEE00726569666973, __dst);
}

uint64_t sub_237A9E0E0()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9C428);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C428);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLImageClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A588 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  v3 = __swift_project_value_buffer(v2, qword_27DE9C428);
  return sub_237AA2CDC(v3, a1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLImageClassifier.model.modify(void *a1)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return OUTLINED_FUNCTION_30();
}

void sub_237A9E290(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *v2 = v5;
  }

  else
  {

    *v2 = v4;
  }
}

uint64_t MLImageClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLImageClassifier();
  return OUTLINED_FUNCTION_29_7(*(v0 + 24));
}

uint64_t type metadata accessor for MLImageClassifier()
{
  result = qword_27DE9C440;
  if (!qword_27DE9C440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLImageClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLImageClassifier();
  return OUTLINED_FUNCTION_29_7(*(v0 + 28));
}

uint64_t MLImageClassifier.init(trainingData:parameters:)(uint64_t (*a1)(void), uint64_t a2)
{
  v41 = a2;
  OUTLINED_FUNCTION_146();
  v7 = type metadata accessor for MLImageClassifier();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v38 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v13 = OUTLINED_FUNCTION_42_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48_8();
  v19 = (v2 + v18);
  sub_237C06FAC();
  v20 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v21 = v19 + *(v20 + 20);
  sub_2379E51D0();
  v22 = v19 + *(v20 + 24);
  sub_2379E5C70();
  (*(v15 + 8))(v5, v4);
  *v19 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v23 = *(v8 + 36);
  sub_2379E8AF0();
  v24 = swift_allocError();
  *v25 = 0xD0000000000000C0;
  v25[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_36_7(v24, v25);
  sub_237B82504();
  if (v3)
  {
    sub_237AA27EC(v41);
    v27 = OUTLINED_FUNCTION_5_29();
    sub_237AA2FFC(v27, v28);
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v19, v34);
    return sub_237AA2FFC(v2 + v23, a1);
  }

  else
  {
    v29 = v26;
    v30 = v41;
    sub_237A9E314(v41, v40);
    sub_237A9E314(v40, __src);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    memcpy((v31 + 24), __src, 0x50uLL);
    sub_2379DD724();

    sub_237AA27EC(v30);
    v32 = OUTLINED_FUNCTION_5_29();
    sub_237AA2FFC(v32, v33);
    sub_237AA27EC(v40);
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v19, v36);
    sub_237AA2FFC(v2 + v23, a1);
    OUTLINED_FUNCTION_9_23();
    return sub_237AA3054(v38, v2, v37);
  }
}

uint64_t sub_237A9E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_237A9E708, 0, 0);
}

uint64_t sub_237A9E708()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[14];
  sub_237B8AEC4(v0[13]);
  sub_237A9E314(v1, (v0 + 2));

  sub_237B43A98(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[15] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_35_7(v3);

  return sub_237A9E8F8();
}

uint64_t sub_237A9E7C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_8();

    return v12();
  }
}

uint64_t sub_237A9E8D4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 128);
  return v2();
}

uint64_t sub_237A9E8F8()
{
  OUTLINED_FUNCTION_9();
  v0[27] = v1;
  v0[28] = v2;
  v0[25] = v3;
  v0[26] = v4;
  v5 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  v0[29] = OUTLINED_FUNCTION_134_0();
  v0[30] = swift_task_alloc();
  v8 = _s5ModelVMa_1();
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  v0[31] = OUTLINED_FUNCTION_134_0();
  v0[32] = swift_task_alloc();
  v11 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v0[33] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[34] = v12;
  v0[35] = *(v13 + 64);
  v0[36] = OUTLINED_FUNCTION_134_0();
  v0[37] = swift_task_alloc();
  v14 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  v0[38] = OUTLINED_FUNCTION_134_0();
  v0[39] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[40] = v17;
  OUTLINED_FUNCTION_1(v17);
  v0[41] = v18;
  v20 = *(v19 + 64);
  v0[42] = OUTLINED_FUNCTION_19();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C460, &unk_237C16A10);
  v0[43] = v21;
  OUTLINED_FUNCTION_1(v21);
  v0[44] = v22;
  v24 = *(v23 + 64);
  v0[45] = OUTLINED_FUNCTION_134_0();
  v0[46] = swift_task_alloc();
  v25 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  v0[47] = OUTLINED_FUNCTION_134_0();
  v0[48] = swift_task_alloc();
  v28 = _s10ClassifierVMa();
  OUTLINED_FUNCTION_20(v28);
  v30 = *(v29 + 64);
  v0[49] = OUTLINED_FUNCTION_19();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[50] = v31;
  OUTLINED_FUNCTION_1(v31);
  v0[51] = v32;
  v34 = *(v33 + 64);
  v0[52] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_237A9EB9C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = type metadata accessor for MLImageClassifier();
  *(v0 + 424) = v6;
  v7 = *(v6 + 24);
  *(v0 + 600) = v7;
  v8 = (v5 + v7);
  sub_237C06FAC();
  v9 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v10 = v8 + *(v9 + 20);
  sub_2379E51D0();
  v11 = v8 + *(v9 + 24);
  sub_2379E5C70();
  (*(v1 + 8))(v2, v3);
  *v8 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(v6 + 28);
  *(v0 + 604) = v12;
  sub_2379E8AF0();
  v13 = swift_allocError();
  *v14 = 0xD0000000000000C0;
  *(v14 + 8) = 0x8000000237C17B10;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v5 + v12) = v13;
  swift_storeEnumTagMultiPayload();
  sub_237A9E314(v4, v5 + 8);
  sub_237A26A78();
  v15 = *(v0 + 384);
  v32 = *(v0 + 392);
  v16 = *(v0 + 368);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 328);
  v29 = *(v0 + 360);
  v30 = *(v0 + 336);
  v31 = *(v0 + 320);
  v33 = *(v0 + 312);
  v20 = *(v0 + 224);
  sub_237A9E314(v5 + 8, v0 + 16);

  MLImageClassifier.ModelParameters.algorithm.getter(v15);
  sub_237A0C928();
  sub_237C072AC();
  v21 = *(v0 + 16);
  sub_237C0725C();
  (*(v17 + 16))(v29, v16, v18);
  sub_237C0730C();
  (*(v17 + 8))(v16, v18);
  sub_237AA27EC(v0 + 16);
  (*(v19 + 32))(v32, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_22();
  sub_237AA2FFC(v15, v22);
  MLImageClassifier.ModelParameters.algorithm.getter(v15);
  v23 = OUTLINED_FUNCTION_8_24();
  sub_237AA3054(v23, v33, v24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 432) = v25;
  *v25 = v26;
  v25[1] = sub_237A9F02C;
  v27 = *(v0 + 312);

  return sub_237BBA7D8(v0 + 96, v27);
}

uint64_t sub_237A9F02C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[55] = v0;

  if (v0)
  {
    v9 = v3[28];
    v10 = v3[26];
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237A9F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  result = sub_2379FC864(*(v18 + 216) + 16, v18 + 168, &qword_27DE9A998, &unk_237C0C100);
  if (*(v18 + 192))
  {
    v20 = *(v18 + 440);
    v22 = *(v18 + 288);
    v21 = *(v18 + 296);
    v24 = *(v18 + 272);
    v23 = *(v18 + 280);
    v25 = *(v18 + 264);
    v27 = *(v18 + 208);
    v26 = *(v18 + 216);
    sub_2379DAD24((v18 + 168), (v18 + 136));
    swift_dynamicCast();
    v28 = *(v26 + 8);
    OUTLINED_FUNCTION_28_8();
    sub_237AA2CDC(v21, v22, v29);
    v30 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    sub_237AA3054(v22, v31 + v30, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    sub_2379DD908();
    *(v18 + 448) = v32;
    *(v18 + 456) = v33;
    if (v20)
    {
      v34 = *(v18 + 392);
      v35 = *(v18 + 296);
      v37 = *(v18 + 216);
      v36 = *(v18 + 224);

      sub_237AA27EC(v37);
      sub_237AA2F34(v18 + 96);
      OUTLINED_FUNCTION_0_39();
      sub_237AA2FFC(v34, v38);
      OUTLINED_FUNCTION_1_36();
      sub_237AA2FFC(v35, v39);
      v40 = *(v18 + 604);
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_3_37();
      sub_237AA2FFC(v31 + v20, v41);
      sub_237AA2FFC(v31 + v40, v34);
      OUTLINED_FUNCTION_49_3();
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_41_7();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_23_16();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, v20, a15, a16, a17, a18);
    }

    else
    {

      OUTLINED_FUNCTION_13_19(&unk_237C169B0);
      v60 = v50;
      v51 = swift_task_alloc();
      *(v18 + 464) = v51;
      *v51 = v18;
      v51[1] = sub_237A9F3F0;
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_23_16();

      return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, v60, a15, a16, a17, a18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A9F3F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (v0)
  {
    v8 = v3[56];
    v9 = v3[57];
    v10 = v3[28];
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237A9F50C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[27];
  v2 = *(v0[59] + 16);
  v3 = *(v0[28] + 16);

  sub_237AA17A8(v2, v3, v1);
  OUTLINED_FUNCTION_13_19(dword_237C16928);
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_237A9F5CC;
  v5 = OUTLINED_FUNCTION_52_7(v0[59]);

  return v6(v5);
}

uint64_t sub_237A9F5CC()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  v5 = v2[61];
  v6 = *v1;
  OUTLINED_FUNCTION_95();
  *v7 = v6;
  v3[62] = v8;
  v3[63] = v0;

  v9 = v2[59];
  if (v0)
  {
    v11 = v3[56];
    v10 = v3[57];
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237A9F708()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[57] + 16);
  v0[64] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_13_19(dword_237C16928);
    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_237A9FA08;
    v3 = OUTLINED_FUNCTION_52_7(v0[57]);

    return v4(v3);
  }

  else
  {
    OUTLINED_FUNCTION_13_19(&dword_237C16980);
    v12 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[65] = v7;
    *v7 = v8;
    v7[1] = sub_237A9F82C;
    v9 = v0[62];
    v10 = v0[49];
    v11 = v0[32];
    OUTLINED_FUNCTION_71();

    return v12();
  }
}

uint64_t sub_237A9F82C()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  v5 = v2[65];
  *v4 = *v1;
  v3[66] = v0;

  v6 = v2[62];
  if (v0)
  {
    v8 = v3[56];
    v7 = v3[57];
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A9F968()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_22_12(*(v2 + 256));
  MLImageClassifier.ModelParameters.algorithm.getter(v0);
  v4 = OUTLINED_FUNCTION_8_24();
  sub_237AA3054(v4, v1, v5);
  v6 = *(v3 + 32);
  v7 = swift_task_alloc();
  *(v2 + 576) = v7;
  *v7 = v2;
  OUTLINED_FUNCTION_17_16(v7);

  return sub_237A636DC();
}

uint64_t sub_237A9FA08()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 536);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v5[68] = v3;
  v5[69] = v0;

  if (v0)
  {
    v11 = v5[62];
    v13 = v5[56];
    v12 = v5[57];

    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_13_19(&dword_237C16970);
    v23 = v17;
    v18 = swift_task_alloc();
    v5[70] = v18;
    *v18 = v9;
    v18[1] = sub_237A9FBB4;
    v19 = v5[62];
    v20 = v5[49];
    v21 = v5[31];

    return v23(v21, v19, v3, 0, 0);
  }
}

uint64_t sub_237A9FBB4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  v5 = v2[70];
  *v4 = *v1;
  v3[71] = v0;

  v6 = v2[68];
  v7 = v2[62];
  if (v0)
  {
    v9 = v3[56];
    v8 = v3[57];
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237A9FD24()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_22_12(*(v2 + 248));
  MLImageClassifier.ModelParameters.algorithm.getter(v0);
  v4 = OUTLINED_FUNCTION_8_24();
  sub_237AA3054(v4, v1, v5);
  v6 = *(v3 + 32);
  v7 = swift_task_alloc();
  *(v2 + 576) = v7;
  *v7 = v2;
  OUTLINED_FUNCTION_17_16(v7);

  return sub_237A636DC();
}

uint64_t sub_237A9FDC4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 576);
  *v4 = *v1;
  v3[73] = v7;
  v3[74] = v0;

  if (v0)
  {
    v8 = v3[56];
    v9 = v3[57];
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237A9FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  v19 = *(v18 + 592);
  v20 = *(v18 + 584);
  v21 = *(v18 + 448);
  v22 = *(v18 + 304);
  v23 = *(v18 + 240);
  v24 = *(v18 + 200);
  OUTLINED_FUNCTION_10_22();
  sub_237AA2FFC(v25, v26);
  *v24 = v20;
  sub_237AA1928(v21, v23);
  v27 = *(v18 + 448);
  if (v19)
  {
    v69 = v19;
    v28 = *(v18 + 456);

    v29 = *(v18 + 584);
    OUTLINED_FUNCTION_31_10();
    sub_237AA2F34(v18 + 96);
    OUTLINED_FUNCTION_0_39();
    sub_237AA2FFC(v28, v30);
    OUTLINED_FUNCTION_1_36();
    sub_237AA2FFC(v23, v31);

    v32 = *(v18 + 604);
    OUTLINED_FUNCTION_18_20();
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v29 + v21, v33);
    sub_237AA2FFC(v21 + v32, v28);
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_41_7();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    v34 = *(v18 + 512);
    v35 = *(v18 + 600);
    v36 = *(v18 + 240);
    v37 = *(v18 + 200);

    sub_2379DC1F8(v36, v37 + v35);
    if (v34)
    {
      v38 = *(v18 + 200);
      sub_237AA1928(*(v18 + 456), *(v18 + 232));
      v39 = *(v18 + 456);
      v45 = *(v18 + 604);
      v46 = *(v18 + 392);
      v47 = *(v18 + 296);
      v48 = *(v18 + 232);
      v49 = *(v18 + 216);
      v50 = *(v18 + 200);

      sub_237AA27EC(v49);
      sub_237AA2F34(v18 + 96);
      OUTLINED_FUNCTION_0_39();
      sub_237AA2FFC(v46, v51);
      OUTLINED_FUNCTION_1_36();
      sub_237AA2FFC(v47, v52);
      sub_2379DC1F8(v48, v50 + v45);
    }

    else
    {
      v40 = *(v18 + 392);
      v41 = *(v18 + 296);
      v42 = *(v18 + 216);

      sub_237AA27EC(v42);
      sub_237AA2F34(v18 + 96);
      OUTLINED_FUNCTION_0_39();
      sub_237AA2FFC(v40, v43);
      OUTLINED_FUNCTION_1_36();
      sub_237AA2FFC(v41, v44);
    }

    OUTLINED_FUNCTION_49_3();
    v54 = *(v18 + 368);
    v53 = *(v18 + 376);
    v55 = *(v18 + 360);
    v56 = *(v18 + 336);
    v58 = *(v18 + 304);
    v57 = *(v18 + 312);
    v59 = *(v18 + 296);
    a10 = *(v18 + 288);
    a11 = *(v18 + 256);
    a12 = *(v18 + 248);
    a13 = *(v18 + 240);
    v69 = *(v18 + 232);

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_23_16();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, v69, a15, a16, a17, a18);
}

uint64_t sub_237AA01D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  v21 = v19[49];
  sub_237AA27EC(v19[27]);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v21, v22);
  v23 = v19[55];
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v20 + v18, v24);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA02D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  v25 = *(v21 + 480);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v26);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA03DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  v25 = *(v21 + 504);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v26);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA04E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  v25 = *(v21 + 528);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v26);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA05F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  v25 = *(v21 + 552);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v26);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA0700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  v25 = *(v21 + 568);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v26);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  v20 = v18[49];
  v22 = v18[37];
  v21 = v18[38];
  sub_237AA27EC(v18[27]);
  OUTLINED_FUNCTION_10_22();
  sub_237AA2FFC(v21, v23);
  sub_237AA2F34((v18 + 12));
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v20, v24);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v22, v25);
  v26 = v18[74];
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v19 + v22, v27);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MLImageClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_146();
  v6 = type metadata accessor for MLImageClassifier();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v13 = OUTLINED_FUNCTION_42_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48_8();
  v19 = (v2 + v18);
  sub_237C06FAC();
  v20 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v21 = v19 + *(v20 + 20);
  sub_2379E51D0();
  v22 = v19 + *(v20 + 24);
  sub_2379E5C70();
  (*(v15 + 8))(v4, v3);
  *v19 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v23 = *(v7 + 36);
  sub_2379E8AF0();
  v24 = swift_allocError();
  *v25 = 0xD0000000000000C0;
  v25[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_36_7(v24, v25);
  sub_237A9E314(a2, v35);
  sub_237A9E314(v35, __src);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  memcpy((v26 + 24), __src, 0x50uLL);
  v27 = v36;
  sub_2379DD724();

  sub_237AA27EC(a2);
  sub_237AA27EC(v35);
  if (v27)
  {
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v19, v28);
    return sub_237AA2FFC(v2 + v23, v11);
  }

  else
  {
    sub_237AA2FFC(v19, type metadata accessor for MLClassifierMetrics);
    sub_237AA2FFC(v2 + v23, type metadata accessor for MLClassifierMetrics);
    OUTLINED_FUNCTION_9_23();
    v30 = OUTLINED_FUNCTION_30();
    return sub_237AA3054(v30, v31, v32);
  }
}

uint64_t sub_237AA0BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_237AA0BF8, 0, 0);
}

uint64_t sub_237AA0BF8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[14];
  sub_237B8AEC4(v0[13]);
  sub_237A9E314(v1, (v0 + 2));

  sub_237B43A98(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[15] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_35_7(v3);

  return sub_237A9E8F8();
}

uint64_t sub_237AA0CB0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_8();

    return v12();
  }
}

uint64_t sub_237AA0DC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237AA0E64;

  return sub_237AA0FD8();
}

uint64_t sub_237AA0E64()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18();
  v7 = v6;
  OUTLINED_FUNCTION_95();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_3();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_237AA0FA4()
{
  *v0[1].i64[0] = vextq_s8(v0[2], v0[2], 8uLL);
  OUTLINED_FUNCTION_8();
  return v1();
}

uint64_t sub_237AA0FD8()
{
  OUTLINED_FUNCTION_9();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for MLImageClassifier.DataSource();
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v0[5] = v6;
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_19();
  v9 = sub_237C06AEC();
  v0[7] = v9;
  OUTLINED_FUNCTION_1(v9);
  v0[8] = v10;
  v12 = *(v11 + 64);
  v0[9] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237AA10C4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  sub_237C06ADC();
  OUTLINED_FUNCTION_28_8();
  sub_237AA2CDC(v4, v3, v5);
  OUTLINED_FUNCTION_30();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = v0[2];
      sub_237AA3054(v0[6], v0[4], type metadata accessor for MLImageClassifier.DataSource);

      sub_237B82504();
      v22 = v0[4];
      sub_237B8AEC4(v23);
      v15 = v24;

      v25 = OUTLINED_FUNCTION_5_29();
      sub_237AA2FFC(v25, v26);
      goto LABEL_6;
    case 2u:
      v18 = v0[2];
      v19 = *v0[6];

      sub_237B8AEC4(v19);
      v15 = v20;

LABEL_6:
      v17 = v0[2];
      break;
    case 3u:
      v17 = v0[2];

      v15 = MEMORY[0x277D84F90];
      break;
    default:
      v6 = v0[6];
      v7 = v0[2];
      v9 = *v6;
      v8 = v6[1];
      v10 = *(v6 + 16);
      v11 = *(v6 + 17);

      v12 = OUTLINED_FUNCTION_30();
      v15 = sub_237BF634C(v12, v13, v14, v7);
      v17 = v16;

      break;
  }

  v0[10] = v15;
  v0[11] = v17;
  OUTLINED_FUNCTION_13_19(&unk_237C16920);
  v31 = v27;
  v28 = swift_task_alloc();
  v0[12] = v28;
  *v28 = v0;
  v28[1] = sub_237AA1340;
  v29 = v0[9];
  OUTLINED_FUNCTION_11();

  return v31();
}

uint64_t sub_237AA1340()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 88);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  v3[13] = v10;
  v3[14] = v0;

  if (v0)
  {
    v11 = v3[10];

    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_13_19(&unk_237C16920);
    v20 = v15;
    v16 = swift_task_alloc();
    v3[15] = v16;
    *v16 = v8;
    v16[1] = sub_237AA14D8;
    v18 = v3[9];
    v17 = v3[10];
    OUTLINED_FUNCTION_11();

    return v20();
  }
}

uint64_t sub_237AA14D8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v5[16] = v0;

  if (v0)
  {
    v11 = v5[13];
    v12 = v5[10];
  }

  else
  {
    v13 = v5[10];

    v5[17] = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_237AA1600()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[6];
  v2 = v0[4];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];
  v4 = v0[17];
  v5 = v0[13];

  return v3(v5, v4);
}

uint64_t sub_237AA16A0()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 112);
  v2 = OUTLINED_FUNCTION_44_6();
  v3(v2);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237AA1724()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 128);
  v2 = OUTLINED_FUNCTION_44_6();
  v3(v2);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237AA17A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237A37A64();
  if ((result & 1) == 0)
  {
    sub_237A38140(12);
    sub_237A38140(12);
    v9 = *a3;
    sub_237A38140(12);
    v10 = a3[1];
    sub_237A37AEC(12);
    MLImageClassifier.ModelParameters.algorithm.getter(v7);
    MLImageClassifier.ModelParameters.ModelAlgorithmType.description.getter();
    sub_237AA2FFC(v7, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    sub_237A3825C(12);
  }

  return result;
}

uint64_t sub_237AA1928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  swift_getKeyPath();
  v14 = *(a1 + 16);
  v47 = v9;
  v36 = a1;
  if (v14)
  {
    v37 = v2;
    v38 = v3;
    v48 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v44 = v10;
    v15 = v14;
    v17 = v10 + 16;
    v16 = *(v10 + 16);
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v45 = *(v17 + 56);
    v46 = v16;
    v43 = v15;
    v19 = v15;
    do
    {
      v46(v13, v18, v9);
      swift_getAtKeyPath();
      (*(v17 - 8))(v13, v9);
      sub_237C08F8C();
      v20 = v48[2];
      sub_237C08FEC();
      v9 = v47;
      sub_237C08FFC();
      sub_237C08F9C();
      v18 += v45;
      v19 = (v19 - 1);
    }

    while (v19);

    v21 = v48;
    v14 = v43;
    v10 = v44;
    v4 = v38;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v22 = sub_237ADA570(v21);

  if (!v4)
  {
    KeyPath = swift_getKeyPath();
    if (v14)
    {
      v46 = KeyPath;
      v37 = v22;
      v38 = 0;
      v50 = MEMORY[0x277D84F90];
      v25 = v14;
      sub_237AC8A74();
      v26 = v50;
      v28 = *(v10 + 16);
      v27 = v10 + 16;
      v29 = v36 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
      v44 = *(v27 + 56);
      v45 = v28;
      v43 = (v27 - 8);
      do
      {
        v45(v13, v29, v9);
        swift_getAtKeyPath();
        (*v43)(v13, v9);
        v30 = v48;
        v31 = v49;
        v50 = v26;
        v32 = *(v26 + 16);
        if (v32 >= *(v26 + 24) >> 1)
        {
          sub_237AC8A74();
          v26 = v50;
        }

        *(v26 + 16) = v32 + 1;
        v33 = v26 + 16 * v32;
        *(v33 + 32) = v30;
        *(v33 + 40) = v31;
        v29 += v44;
        v25 = (v25 - 1);
        v9 = v47;
      }

      while (v25);

      v22 = v37;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    sub_237B42F98(v34);
    v48 = v22;
    v50 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    sub_237AA2F98();
    v35 = v39;
    sub_237C06F9C();
    (*(v40 + 32))(v42, v35, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_237AA1DB4()
{
  OUTLINED_FUNCTION_9();
  v0[34] = v1;
  v0[35] = v2;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v0[36] = v3;
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[37] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  v0[38] = OUTLINED_FUNCTION_134_0();
  v0[39] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C450, &qword_237C10168);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[40] = OUTLINED_FUNCTION_19();
  v12 = type metadata accessor for MLImageClassifier();
  v0[41] = v12;
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  v0[42] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C458, &qword_237C10170);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  v0[43] = OUTLINED_FUNCTION_19();
  v18 = _s20PersistentParametersVMa_5();
  v0[44] = v18;
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  v0[45] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237AA1F0C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[35];
  v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9C458, &qword_237C10170);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v0[40];
  v7 = v0[35];
  sub_237AA3054(v0[43], v0[45], _s20PersistentParametersVMa_5);
  sub_237B85BBC();
  v8 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v7 + v8, v6, &qword_27DE9C450, &qword_237C10168);
  v9 = _s5ModelVMa_1();
  result = __swift_getEnumTagSinglePayload(v6, 1, v9);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_237A9E314((v0 + 2), (v0 + 12));
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[46] = v10;
  *v10 = v11;
  v10[1] = sub_237AA20A0;
  v12 = v0[42];
  v13 = v0[40];

  return sub_237BBB194();
}

uint64_t sub_237AA20A0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237AA2198()
{
  v1 = v0[42];
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  OUTLINED_FUNCTION_9_23();
  sub_237AA3054(v6, v7, v8);
  v9 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v4 + v9, v2, &qword_27DE9B660, &qword_237C0DD00);
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[45];
    v12 = v0[41];
    v14 = v0[38];
    v13 = v0[39];
    v16 = v0[35];
    v15 = v0[36];
    v17 = v0[34];
    sub_237AA27EC((v0 + 2));
    OUTLINED_FUNCTION_30_11();
    sub_2379DC1F8(v13, v17 + *(v12 + 24));
    v18 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379FC864(v16 + v18, v14, &qword_27DE9B660, &qword_237C0DD00);

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_237AA2C74(v0[38]);
    }

    else
    {
      v19 = v0[41];
      v20 = v0[37];
      v21 = v0[34];
      sub_237AA3054(v0[38], v20, type metadata accessor for MLClassifierMetrics);
      sub_2379DC1F8(v20, v21 + *(v19 + 28));
    }

    v22 = v0[45];
    v23 = v0[42];
    v24 = v0[43];
    v26 = v0[39];
    v25 = v0[40];
    v28 = v0[37];
    v27 = v0[38];

    OUTLINED_FUNCTION_8();

    return v29();
  }

  return result;
}

uint64_t sub_237AA2384()
{
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[35];

  sub_237AA27EC((v0 + 2));
  OUTLINED_FUNCTION_30_11();

  OUTLINED_FUNCTION_8();
  v10 = v0[47];

  return v9();
}

unint64_t MLImageClassifier.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = MLImageClassifier.ModelParameters.description.getter();
  v11 = v10;
  v12 = type metadata accessor for MLImageClassifier();
  v13 = v0 + *(v12 + 24);
  v14 = MLClassifierMetrics.description.getter();
  v16 = v15;
  sub_237AA2CDC(v1 + *(v12 + 28), v8, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v12) = swift_getEnumCaseMultiPayload();
  sub_237AA2FFC(v8, type metadata accessor for MLClassifierMetrics.Contents);
  v17 = MLClassifierMetrics.description.getter();
  v19 = v18;
  MEMORY[0x2383DC360](v9, v11);

  MEMORY[0x2383DC360](v14, v16);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v12 <= 1)
  {
    MEMORY[0x2383DC360](v17, v19);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD00000000000001CLL;
}

id MLImageClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLImageClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237AA26A4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  result = sub_237C06C7C();
  *a1 = v3;
  return result;
}

uint64_t sub_237AA26F4(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  return sub_237C06C8C();
}

uint64_t sub_237AA2748@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  result = sub_237C06C4C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_237AA2798(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  return sub_237C06C5C();
}

uint64_t sub_237AA2844()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2379D9D48;
  v5 = OUTLINED_FUNCTION_40_7();

  return sub_237A9E6E4(v5, v6, v7);
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[2];

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_237AA2938()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2379D9D48;
  v5 = OUTLINED_FUNCTION_40_7();

  return sub_237AA0BD4(v5, v6, v7);
}

id sub_237AA29D4@<X0>(void *a1@<X8>)
{
  result = MLImageClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237AA2A18(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = _s5ModelVMa_1();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237AA2AF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = _s5ModelVMa_1();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_237AA2BC0()
{
  result = sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLClassifierMetrics(319);
    if (v2 <= 0x3F)
    {
      result = _s5ModelVMa_1();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237AA2C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AA2CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237AA2D38()
{
  v1 = *(type metadata accessor for MLImageClassifier.ModelParameters.ValidationData() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  type metadata accessor for MLImageClassifier.DataSource();
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 == 2)
  {
LABEL_6:
    v10 = *(v0 + v3);
  }

  else if (v7 <= 1)
  {
    v8 = sub_237C05ADC();
    OUTLINED_FUNCTION_4(v8);
    (*(v9 + 8))(v0 + v3);
  }

LABEL_7:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237AA2E64()
{
  OUTLINED_FUNCTION_49();
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  OUTLINED_FUNCTION_20(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2379D6854;
  v8 = OUTLINED_FUNCTION_40_7();

  return sub_237AA0DC4(v8);
}

unint64_t sub_237AA2F98()
{
  result = qword_27DE9B048;
  if (!qword_27DE9B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B048);
  }

  return result;
}

uint64_t sub_237AA2FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237AA3054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_33()
{
  v2 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v8 = v0[42];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[37];
  v13 = v0[36];
  v14 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
}

void OUTLINED_FUNCTION_6_29()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
}

uint64_t OUTLINED_FUNCTION_11_24()
{
  v2 = *(v0 + 604);
  v3 = *(v0 + 600);
  v4 = *(v0 + 200) + 8;

  return sub_237AA27EC(v4);
}

uint64_t OUTLINED_FUNCTION_13_19@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_18()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_20()
{
  v2 = *(v0 + 600);
  v3 = *(v0 + 200) + 8;

  return sub_237AA27EC(v3);
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1)
{
  v3 = v1[47];
  v4 = v1[38];
  v5 = v1[25] + *(v1[53] + 32);

  return sub_237AA3054(a1, v5, _s5ModelVMa_1);
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  v2 = *(v0 + 200) + *(*(v0 + 424) + 32);

  return sub_237AA2FFC(v2, _s5ModelVMa_1);
}

uint64_t OUTLINED_FUNCTION_29_7@<X0>(uint64_t a1@<X8>)
{

  return sub_237AA2CDC(v2 + a1, v1, type metadata accessor for MLClassifierMetrics);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_237AA2FFC(v0, _s20PersistentParametersVMa_5);
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  v2 = v0[49];
  v3 = v0[37];
  v4 = v0[27];

  return sub_237AA27EC(v4);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(v2 + v3) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_41_7()
{
  v2 = v0[37];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[31];
  v7 = v0[30];
  v8 = v0[29];
}

uint64_t OUTLINED_FUNCTION_44_6()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = *(v0[8] + 8);
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return sub_237AA2FFC(v2 + v1, v0);
}

uint64_t OUTLINED_FUNCTION_49_3()
{
  result = v0[52];
  v2 = v0[48];
  v3 = v0[49];
  return result;
}

uint64_t sub_237AA349C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = 1 << *(a1 + 32);
  v37 = MEMORY[0x277D84F98];
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_2379FED88(*(a1 + 56) + 32 * v12, v35 + 8);
    LOBYTE(v35[0]) = v13;
    v32 = v35[0];
    v33 = v35[1];
    v34 = v36;
    sub_2379FED88(&v32 + 8, v29);
    if (swift_dynamicCast())
    {
      v14 = *&v30[0];
      v31 = v34;
      v30[0] = v32;
      v30[1] = v33;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        sub_237AC1104(v15 + 1, 1);
        v2 = v37;
      }

      v16 = v30[0];
      v17 = *(v2 + 40);
      sub_237C093CC();
      sub_237C0878C();

      v18 = sub_237C0940C();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) != 0)
      {
        v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        do
        {
          if (++v22 == v25 && (v24 & 1) != 0)
          {
            goto LABEL_27;
          }

          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
        }

        while (v27 == -1);
        v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      }

      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + v23) = v16;
      *(*(v2 + 56) + 8 * v23) = v14;
      ++*(v2 + 16);
      __swift_destroy_boxed_opaque_existential_1(v30 + 1);
    }

    else
    {
      *&v30[0] = 0;
      BYTE8(v30[0]) = 1;
      sub_2379F6DD8(&v32, &qword_27DE9BFF0, &qword_237C0F240);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      JUMPOUT(0x237AA38CCLL);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t MLProgress.totalItemCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t MLProgress.totalItemCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MLProgress.metrics.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t MLProgress.init(phase:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  sub_237A84BFC();
  result = sub_237C085AC();
  *(a2 + 40) = result;
  *a2 = 0;
  *(a2 + 8) = v3;
  return result;
}

void MLProgress.init(progress:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_237A84BFC();
  v4 = sub_237C085AC();
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_7_25();
  type metadata accessor for ProgressUserInfoKey(0);
  v7 = v6;
  sub_237AA42EC();
  sub_237C0857C();

  if (qword_27DE9A590 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_10_24(qword_27DE9C468, v8, v9, v10, v11, v12, v13, v14, v100, v106, v113, v119, v125, v130, v136, v142, *(&v142 + 1), v143, v144, v145);

  if (v146)
  {
    OUTLINED_FUNCTION_0_40(v15, v16, v17, MEMORY[0x277D839F8], v18, v19, v20, v21, v101, v107, v114, v120, v126, v131, v137, v142);
    if (swift_dynamicCast())
    {
      v22 = OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_1_37();

      if (qword_27DE9A598 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_10_24(qword_27DE9C470, v23, v24, v25, v26, v27, v28, v29, v102, v108, v115, v121, v142, v132, v138, v142, *(&v142 + 1), v143, v144, v145);

      OUTLINED_FUNCTION_0_40(v30, v31, v32, &type metadata for MLPhase, v33, v34, v35, v36, v103, v109, v116, v122, v127, v133, v139, v142);
      if (swift_dynamicCast())
      {
        v123 = v142;
        v37 = OUTLINED_FUNCTION_7_25();
        OUTLINED_FUNCTION_1_37();

        if (qword_27DE9A5A0 != -1)
        {
          goto LABEL_63;
        }

        while (1)
        {
          OUTLINED_FUNCTION_10_24(qword_27DE9C478, v38, v39, v40, v41, v42, v43, v44, v104, v110, v117, v123, v128, v134, v140, v142, *(&v142 + 1), v143, v144, v145);

          if (!v146)
          {
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_0_40(v45, v46, v47, MEMORY[0x277D83B88], v48, v49, v50, v51, v105, v111, v118, v124, v129, v135, v141, v142);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_17;
          }

          v117 = v142;
          v52 = OUTLINED_FUNCTION_7_25();
          OUTLINED_FUNCTION_1_37();

          if (qword_27DE9A5A8 != -1)
          {
LABEL_65:
            swift_once();
          }

          OUTLINED_FUNCTION_10_24(qword_27DE9C480, v53, v54, v55, v56, v57, v58, v59, v104, v110, v117, v123, v128, v134, v140, v142, *(&v142 + 1), v143, v144, v145);

          v134 = v7;
          if (v146)
          {
            OUTLINED_FUNCTION_0_40(v60, v61, v62, MEMORY[0x277D83B88], v63, v64, v65, v66, v104, v112, v117, v123, v128, v7, v140, v142);
            v67 = swift_dynamicCast();
            v68 = v142;
            if (!v67)
            {
              v68 = 0;
            }

            v110 = v68;
            v69 = v67 ^ 1;
          }

          else
          {
            sub_2379F6DD8(&v145, &qword_27DE9A998, &unk_237C0C100);
            v110 = 0;
            v69 = 1;
          }

          v70 = MEMORY[0x277D839F8];
          v7 = 0;
          v147 = v69;
          while (1)
          {
            v71 = byte_284AC0550[v7 + 32];
            if (v71 == 6 && sub_237C05ADC() != v70)
            {
              goto LABEL_57;
            }

            v72 = OUTLINED_FUNCTION_7_25();
            v73 = sub_237C0857C();

            switch(v71)
            {
              case 1:
                v74 = &qword_27DE9C490;
                if (qword_27DE9A5B8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C490;
                }

                break;
              case 2:
                v74 = &qword_27DE9C498;
                if (qword_27DE9A5C0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C498;
                }

                break;
              case 3:
                v74 = &qword_27DE9C4A0;
                if (qword_27DE9A5C8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4A0;
                }

                break;
              case 4:
                v74 = &qword_27DE9C4A8;
                if (qword_27DE9A5D0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4A8;
                }

                break;
              case 5:
                v74 = &qword_27DE9C4B0;
                if (qword_27DE9A5D8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4B0;
                }

                break;
              case 6:
                v74 = &qword_27DE9C4B8;
                if (qword_27DE9A5E0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4B8;
                }

                break;
              case 7:
                v74 = &qword_27DE9C4C0;
                if (qword_27DE9A5E8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4C0;
                }

                break;
              case 8:
                v74 = &qword_27DE9C4C8;
                if (qword_27DE9A5F0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4C8;
                }

                break;
              case 9:
                v74 = &qword_27DE9C4D0;
                if (qword_27DE9A5F8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4D0;
                }

                break;
              case 10:
                v74 = &qword_27DE9C4D8;
                if (qword_27DE9A600 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4D8;
                }

                break;
              default:
                v74 = &qword_27DE9C488;
                if (qword_27DE9A5B0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C488;
                }

                break;
            }

            v75 = *v74;
            v76 = v75;
            if (*(v73 + 16))
            {
              v77 = sub_237ACDA84(v75);
              if (v78)
              {
                break;
              }
            }

LABEL_56:
            v70 = MEMORY[0x277D839F8];
LABEL_57:
            if (++v7 == 11)
            {

              v99 = v147;
              *a2 = v128;
              a2[1] = v123;
              a2[2] = v117;
              a2[3] = v110;
              a2[4] = v99;
              a2[5] = v4;
              return;
            }
          }

          sub_2379FED88(*(v73 + 56) + 32 * v77, &v145);

          OUTLINED_FUNCTION_0_40(v79, v80, v81, v82, v83, v84, v85, v86, v104, v110, v117, v123, v128, v134, v140, v142);
          v70 = MEMORY[0x277D839F8];
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_57;
          }

          v146 = v70;
          *&v145 = v142;
          sub_2379DAD24(&v145, &v142);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140 = v4;
          v87 = sub_237ACB370(v71);
          v89 = *(v4 + 16);
          v90 = (v88 & 1) == 0;
          v4 = v89 + v90;
          if (!__OFADD__(v89, v90))
          {
            break;
          }

          __break(1u);
LABEL_63:
          swift_once();
        }

        v91 = v87;
        v92 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C4E0, &qword_237C10220);
        if (sub_237C090AC())
        {
          v93 = sub_237ACB370(v71);
          if ((v92 & 1) != (v94 & 1))
          {
            sub_237C0932C();
            __break(1u);
            JUMPOUT(0x237AA42C0);
          }

          v91 = v93;
        }

        v4 = v140;
        if (v92)
        {
          v95 = (v140[7] + 32 * v91);
          __swift_destroy_boxed_opaque_existential_1(v95);
          sub_2379DAD24(&v142, v95);
        }

        else
        {
          v140[(v91 >> 6) + 8] |= 1 << v91;
          *(v140[6] + v91) = v71;
          sub_2379DAD24(&v142, (v140[7] + 32 * v91));
          v96 = v140[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            __break(1u);
            goto LABEL_65;
          }

          v140[2] = v98;
        }

        goto LABEL_56;
      }
    }

LABEL_17:
  }

  else
  {
LABEL_16:

    sub_2379F6DD8(&v145, &qword_27DE9A998, &unk_237C0C100);
  }

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
}