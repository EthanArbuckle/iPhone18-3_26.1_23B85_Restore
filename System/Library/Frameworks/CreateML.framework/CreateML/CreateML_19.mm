unint64_t sub_237B680F8()
{
  result = qword_27DE9D688;
  if (!qword_27DE9D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D688);
  }

  return result;
}

unint64_t sub_237B6814C()
{
  result = qword_27DE9D690;
  if (!qword_27DE9D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D690);
  }

  return result;
}

unint64_t sub_237B681A0()
{
  result = qword_27DE9D6A0;
  if (!qword_27DE9D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D698, &qword_237C145B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D6A0);
  }

  return result;
}

uint64_t sub_237B68204(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  result = sub_237B66CB8(v7, a2, a3);
  v10 = result;
  if (v3)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v10 = *(v7 + 16);
LABEL_21:

    return v10;
  }

  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v26 = a1;
    for (i = 16 * result; ; i += 16)
    {
      v13 = *(v7 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v7 + i + 48);
      v15 = *(v7 + i + 56);
      if (v14 != a2 || v15 != a3)
      {
        v17 = *(v7 + i + 48);
        v18 = *(v7 + i + 56);
        result = sub_237C0929C();
        if ((result & 1) == 0)
        {
          if (v11 != v10)
          {
            if (v10 >= v13)
            {
              goto LABEL_23;
            }

            v19 = (v7 + 32 + 16 * v10);
            v20 = v19[1];
            v27 = *v19;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237B05F64(v7);
              v7 = v25;
            }

            v21 = v7 + 16 * v10;
            v22 = *(v21 + 40);
            *(v21 + 32) = v14;
            *(v21 + 40) = v15;

            if (v11 >= *(v7 + 16))
            {
              goto LABEL_24;
            }

            v23 = v7 + i;
            v24 = *(v7 + i + 56);
            *(v23 + 48) = v27;
            *(v23 + 56) = v20;

            *v26 = v7;
          }

          ++v10;
        }
      }

      ++v11;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_237B68394(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_237A98F20(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_237A1DCBC((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData()
{
  result = qword_27DE9D6C0;
  if (!qword_27DE9D6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B684F4@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_2379DBD00(v3, v18 - v17);
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
        JUMPOUT(0x237B68748);
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

uint64_t sub_237B68758(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v31 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_2379DBD00(v57, v34 - v33);
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

uint64_t type metadata accessor for MLTextClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9D6D0;
  if (!qword_27DE9D6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B68C2C()
{
  sub_2379EA11C();
  if (v0 <= 0x3F)
  {
    sub_237B68CDC();
    if (v1 <= 0x3F)
    {
      sub_237B68D44();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MLTextClassifier.DataSource();
        if (v3 <= 0x3F)
        {
          sub_237B68DB4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237B68CDC()
{
  if (!qword_27DE9D6E0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D6E0);
    }
  }
}

void sub_237B68D44()
{
  if (!qword_27DE9D6E8)
  {
    sub_237C05DBC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D6E8);
    }
  }
}

void sub_237B68DB4()
{
  if (!qword_27DE9D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    v0 = sub_237C085DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D6F0);
    }
  }
}

uint64_t sub_237B68E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a6;
  v84 = a4;
  v85 = a5;
  v82 = a2;
  v83 = a3;
  v80 = a1;
  v6 = type metadata accessor for MLTextClassifier.DataSource();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2_0();
  v78 = v9 - v8;
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v86 = v12;
  v87 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v79 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  v20 = sub_237C05D1C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v81 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v78 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v78 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  OUTLINED_FUNCTION_18_0();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v78 - v40;
  v42 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_0();
  v46 = v45 - v44;
  sub_237B6987C(v89, v45 - v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v57 = *(v46 + 8);
      v59 = *(v46 + 16);
      v58 = *(v46 + 24);
      v61 = *(v46 + 32);
      v60 = *(v46 + 40);
      *&v90 = *v46;
      v56 = v90;
      BYTE8(v90) = v57;
      sub_2379DBCF4(v90, v57);
      sub_237A70ED4(&v90, v19);
      v62 = v93;
      sub_237B45630();
      if (v62)
      {
        (*(v86 + 8))(v19, v87);
        sub_2379DBC9C(v56, v57);
      }

      v93 = 0;
      sub_237C05C8C();

      sub_237C05C8C();
      sub_2379DBC9C(v56, v57);

      (*(v86 + 32))(v88, v19, v87);
      goto LABEL_18;
    case 2:
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6F8, &qword_237C14620);
      v64 = (v46 + *(v63 + 48));
      v65 = *v64;
      v66 = v64[1];
      v67 = (v46 + *(v63 + 64));
      v69 = *v67;
      v68 = v67[1];
      v70 = v86;
      v71 = v87;
      v72 = v79;
      v89 = *(v86 + 32);
      v89();
      v73 = v93;
      sub_237B45630();
      if (!v73)
      {
        v93 = 0;
        sub_237C05C8C();

        sub_237C05C8C();

        (v89)(v88, v72, v71);
        goto LABEL_18;
      }

      (*(v70 + 8))(v72, v71);

    case 3:
      v52 = v78;
      sub_237B698E0(v46, v78);
      v53 = v93;
      v54 = sub_237A8E3B4(v52);
      if (v53)
      {
        return sub_237B69944(v52);
      }

      sub_237B460B4(v54, v82, v83, v84, v85);

      sub_237B69944(v52);
LABEL_15:
      v93 = 0;
      goto LABEL_18;
    case 4:
      v74 = v93;
      sub_237B460B4(*v46, v82, v83, v84, v85);

      if (!v74)
      {
        goto LABEL_15;
      }

      return result;
    case 5:
      return __swift_storeEnumTagSinglePayload(v88, v48, 1, v87);
    default:
      v49 = *(v46 + 16);
      v50 = *(v46 + 17);
      v90 = *v46;
      v91 = v49;
      v92 = v50;
      v51 = v80;
      sub_237A70BAC(v41, v33, &v90);
      sub_2379EA894(v41, v38);
      if (__swift_getEnumTagSinglePayload(v38, 1, v20) == 1)
      {
        (*(v81 + 8))(v33, v20);
        sub_2379EA904(v41);
        sub_2379EA904(v38);
        v48 = 1;
      }

      else
      {
        (*(v86 + 8))(v51, v87);
        v75 = v81;
        (*(v81 + 32))(v31, v38, v20);
        v76 = *(v75 + 16);
        v76(v27, v33, v20);
        sub_237C05DCC();
        v76(v27, v31, v20);
        sub_237C05DCC();
        v77 = *(v75 + 8);
        v77(v31, v20);
        v77(v33, v20);
        sub_2379EA904(v41);
LABEL_18:
        v48 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v88, v48, 1, v87);
  }
}

uint64_t sub_237B694C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLTextClassifier.DataSource();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C05DBC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  sub_237B6987C(v2, v24 - v23);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v27 = *v25;
      v28 = *(v25 + 8);
      v29 = *(v25 + 24);
      v30 = *(v25 + 40);

      *a1 = v27;
      *(a1 + 8) = v28;
      return result;
    case 2:
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6F8, &qword_237C14620);
      v39 = *(v25 + *(v38 + 48) + 8);

      v40 = *(v25 + *(v38 + 64) + 8);

      (*(v12 + 32))(v20, v25, v9);
      (*(v12 + 16))(v17, v20, v9);
      sub_237A70684(v17, 0, &v52);
      result = (*(v12 + 8))(v20, v9);
      goto LABEL_9;
    case 3:
      sub_237B698E0(v25, v8);
      sub_237A8E3B4(v8);
      OUTLINED_FUNCTION_4_61();
      OUTLINED_FUNCTION_3_72();
      sub_237B078E8(v44, v45, v46, v47, v48, v49);

      result = sub_237B69944(v8);
      goto LABEL_9;
    case 4:
      v31 = *v25;
      OUTLINED_FUNCTION_4_61();
      OUTLINED_FUNCTION_3_72();
      sub_237B078E8(v32, v33, v34, v35, v36, v37);

LABEL_9:
      v50 = v53;
      *a1 = v52;
      *(a1 + 8) = v50;
      break;
    case 5:
      v41 = MEMORY[0x2383DDC00](0);
      if (!v41)
      {
        __break(1u);
        JUMPOUT(0x237B69864);
      }

      v42 = v41;
      type metadata accessor for CMLTable();
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v43);
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

uint64_t sub_237B6987C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B698E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.DataSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B69944(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.DataSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B699C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_237C060DC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237C0610C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 dataType];
  v19 = v18;
  v40 = v17;
  if (v18 == 65552)
  {
    v20 = 2;
    goto LABEL_8;
  }

  if (v18 == 131104)
  {
LABEL_7:
    v20 = 4;
    goto LABEL_8;
  }

  if (v18 != 65600)
  {
    if (v18 != 65568)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v20 = 8;
LABEL_8:
  v39 = v20;
  v21 = [a1 shape];
  sub_237B69D58();
  v22 = sub_237C0893C();

  v23 = sub_237A254D8(v22);
  if (!v23)
  {

LABEL_19:
    sub_237C0611C();
    sub_237B69D9C(v19, v13);
    v31 = sub_237B69F58(a2, v9);
    MEMORY[0x28223BE20](v31);
    sub_237C066EC();

    return sub_237B69FE4(a2);
  }

  v24 = v23;
  v41 = MEMORY[0x277D84F90];
  sub_237AC8A34();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v34 = v13;
    v35 = v9;
    v36 = a3;
    v37 = a1;
    v38 = a2;
    v25 = 0;
    v26 = v41;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x2383DCAF0](v25, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 integerValue];

      v41 = v26;
      v30 = *(v26 + 16);
      if (v30 >= *(v26 + 24) >> 1)
      {
        sub_237AC8A34();
        v26 = v41;
      }

      ++v25;
      *(v26 + 16) = v30 + 1;
      *(v26 + 8 * v30 + 32) = v29;
    }

    while (v24 != v25);

    a1 = v37;
    a2 = v38;
    v9 = v35;
    v13 = v34;
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  result = OUTLINED_FUNCTION_0_77();
  __break(1u);
  return result;
}

unint64_t sub_237B69D58()
{
  result = qword_27DE9AC40;
  if (!qword_27DE9AC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AC40);
  }

  return result;
}

uint64_t sub_237B69D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 65552:
      v3 = MEMORY[0x277D2CCC0];
      break;
    case 131104:
      v3 = MEMORY[0x277D2CC90];
      break;
    case 65600:
      v3 = MEMORY[0x277D2CCD0];
      break;
    case 65568:
      v3 = MEMORY[0x277D2CCC8];
      break;
    default:
      result = OUTLINED_FUNCTION_0_77();
      __break(1u);
      return result;
  }

  v4 = *v3;
  v5 = sub_237C060DC();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_237B69EA8(void *a1, int a2, id a3, uint64_t a4)
{
  v7 = a3;
  v8 = [a3 dataPointer];
  result = [a3 count];
  if ((result * a4) >> 64 == (result * a4) >> 63)
  {
    if (a1)
    {

      return memmove(a1, v8, result * a4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B69F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B69FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_77()
{

  return sub_237C090DC();
}

void *MLDataTable.init()()
{
  result = MEMORY[0x2383DDC00](0);
  if (result)
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    *(swift_allocObject() + 16) = v0;
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v2 = swift_allocObject();
    return OUTLINED_FUNCTION_61_7(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataTable.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (v3[8])
  {
    swift_willThrow();
    sub_237C08EDC();

    OUTLINED_FUNCTION_23_30();
    *v27 = v9;
    *&v27[8] = v8;
    v10 = OUTLINED_FUNCTION_29_11();
    MEMORY[0x2383DC360](v10);
    MEMORY[0x2383DC360](39, 0xE100000000000000);
    v11 = *&v27[8];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v12 = swift_allocError();
    *v13 = *v27;
    v13[1] = v11;
    OUTLINED_FUNCTION_19_26(v12, v13);
    *v27 = v14;
    v27[8] = v15;
  }

  else
  {
    v7 = *(*v3 + 16);
    swift_retain_n();
    OUTLINED_FUNCTION_29_11();
    v17 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v26 = v18;

    MLUntypedColumn.column<A>(type:)(a1, a2, v27);
    sub_2379DBC9C(v26, 0);
    v19 = v27[8];
    if (v27[8] != 255)
    {
      v20 = *v27;

      *a3 = v20;
      *(a3 + 8) = v19 & 1;
      return result;
    }

    *v27 = 0;
    *&v27[8] = 0xE000000000000000;
    sub_237C08EDC();

    strcpy(v27, "Column named '");
    v27[15] = -18;
    v21 = OUTLINED_FUNCTION_29_11();
    MEMORY[0x2383DC360](v21);
    MEMORY[0x2383DC360](0xD000000000000021, 0x8000000237C16F90);
    v22 = *v27;
    v23 = *&v27[8];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v24 = swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v23;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 1;

    *v27 = v24;
    v27[8] = 1;
  }

  return sub_237A7C11C(v27, a3);
}

void MLDataTable.init(namedColumns:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237B6CB9C(a1, &v5);
  if (!v2)
  {
    v4 = v6;
    *a2 = v5;
    *(a2 + 8) = v4;
  }
}

void MLDataTable.subscript.getter()
{
  OUTLINED_FUNCTION_32_15();
  v2 = v1;
  if (v0[8])
  {
    swift_willThrow();
    sub_237C08EDC();

    OUTLINED_FUNCTION_23_30();
    v12 = v5;
    v13 = v4;
    v6 = OUTLINED_FUNCTION_55();
    MEMORY[0x2383DC360](v6);
    MEMORY[0x2383DC360](34, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v7 = swift_allocError();
    *v8 = v12;
    v8[1] = v13;
    OUTLINED_FUNCTION_19_26(v7, v8);
  }

  else
  {
    v3 = *(*v0 + 16);
    swift_retain_n();
    OUTLINED_FUNCTION_55();
    v11 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v9 = swift_allocObject();
    v10 = 0;
    *(v9 + 16) = v11;
  }

  *v2 = v9;
  *(v2 + 8) = v10;
}

uint64_t MLDataTable.size.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v12 = *v0;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v3 = sub_237C0925C();
    if (v3)
    {
      v4 = v3;
      sub_2379DBC9C(v1, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v4 = swift_allocError();
      *v5 = v1;
    }

    sub_2379F8918(v4, v5, 1);
    return 0;
  }

  else
  {
    v6 = v1[2];

    v7 = sub_237A30330();
    v8 = v1[2];
    sub_237A3035C();
    v9 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v9, v10);
  }

  return v7;
}

uint64_t MLDataTable.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v7 = *(v2 + 8);
  if ((v7 & 1) == 0)
  {
    v11 = OUTLINED_FUNCTION_52_5();
    sub_2379DBCF4(v11, v12);
    sub_237B6C208(&v21);
    v13 = OUTLINED_FUNCTION_52_5();
    sub_2379DBC9C(v13, v14);
    v10 = v21;
    goto LABEL_5;
  }

  v8 = MEMORY[0x2383DDAC0](0);
  if (v8)
  {
    v9 = v8;
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    OUTLINED_FUNCTION_9_9(v10);
LABEL_5:
    OUTLINED_FUNCTION_11_9();
    v15 = swift_allocObject();
    *(v15 + 16) = v6;
    *(v15 + 24) = v7;
    OUTLINED_FUNCTION_11_9();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v5;
    v17 = swift_allocObject();
    v17[2] = sub_237B6E7AC;
    v17[3] = v16;
    v17[4] = v10;
    v17[5] = sub_237B6E6B8;
    v17[6] = v15;
    sub_2379DBCF4(v6, v7);
    sub_2379DBCF4(v4, v5);
    swift_retain_n();

    v18 = sub_237B6AB04(v10, sub_237B70560, v17);
    sub_237B6CB9C(v18, &v21);

    v20 = v22;
    *a2 = v21;
    *(a2 + 8) = v20;
    return result;
  }

  __break(1u);
  OUTLINED_FUNCTION_0_63();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237B6A814(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B6A828(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) <= result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_237B6A8A4(uint64_t a1)
{
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  result = sub_237A017E8(v2, v3);
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A8E8(uint64_t a1)
{
  result = MLDataTable.size.getter();
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A938(uint64_t a1)
{
  result = sub_237A2E9F4();
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A98C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if ((a1 & 0x8000000000000000) == 0 && result > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6A9C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BD30, &qword_237C0EC60);
    v2 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_237A7B42C(a1, 1, &v4);
  return v4;
}

uint64_t sub_237B6AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = OUTLINED_FUNCTION_34_17();
    __break(1u);
  }

  else
  {
    if (a3 - a2 >= *(a1 + 16))
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a3 - a2;
    }

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C828, &qword_237C10EF8);
      v7 = OUTLINED_FUNCTION_26_11();
    }

    else
    {
      v7 = MEMORY[0x277D84F98];
    }

    v9 = v7;
    sub_237B6F9D0(a1, a2, a3, 1, &v9);
    return v9;
  }

  return result;
}

uint64_t sub_237B6AB04(uint64_t a1, void (*a2)(unint64_t *__return_ptr, unint64_t *), uint64_t a3)
{
  v6 = sub_237A2E9F4();
  v7 = sub_237A017E8(0, v6);
  if (sub_237A0290C(0, v7, a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C848, &qword_237C10F18);
    v8 = sub_237C0912C();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v10 = v8;

  sub_237B6FD04(a1, a2, a3, 1, &v10);

  return v10;
}

uint64_t sub_237B6AC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = OUTLINED_FUNCTION_34_17();
    __break(1u);
  }

  else
  {
    if (a3 - a2 >= *(a1 + 16))
    {
      v5 = *(a1 + 16);
    }

    else
    {
      v5 = a3 - a2;
    }

    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C838, &qword_237C10F08);
      v6 = OUTLINED_FUNCTION_26_11();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v9 = v6;

    sub_237B70178(v7, a2, a3, 1, &v9);

    return v9;
  }

  return result;
}

uint64_t sub_237B6ACC0()
{
  OUTLINED_FUNCTION_22_27();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLColumn();
    sub_237C08ECC();

    if (!v1)
    {
      return v8[2];
    }

    return v2;
  }

  v5 = sub_237B119B8(*(v0 + 16), (v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v1)
  {
LABEL_8:

    return v2;
  }

  v3 = v5;
  if (v5)
  {
LABEL_11:
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_50_11(v7);
    return v2;
  }

  __break(1u);
LABEL_7:
  v8[0] = v3;
  v8[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B119B8(*(v0 + 16), v8);
  if (v1)
  {
    goto LABEL_8;
  }

  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6ADC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v6[0] = a1;
    v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = *(a3 + 16);
    v4 = v6;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
  }

  v3 = *(a3 + 16);
  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237B11554(v3, v4);
}

uint64_t sub_237B6AE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    sub_237C08ECC();
    if (v5)
    {
      goto LABEL_8;
    }

    v6 = v14[3];
LABEL_11:

    return v6;
  }

  v12 = sub_237B14EC0(*(a3 + 16), *(a4 + 16), *(a5 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v5)
  {
LABEL_8:

    return v6;
  }

  v6 = v12;
  if (v12)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v14[0] = v11;
  v14[1] = v10 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B14EC0(*(a3 + 16), *(a4 + 16), *(a5 + 16), v14);
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  if (result)
  {
LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6AF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    sub_237C08ECC();

    if (!v3)
    {
      return v12;
    }

    return v4;
  }

  v8 = sub_237B11EB0(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v3)
  {
LABEL_8:

    return v4;
  }

  LOBYTE(result) = sub_237A2E688(v8);
  if (result != 8)
  {
LABEL_11:
    v4 = sub_237A2E6A8(result);

    return v4;
  }

  __break(1u);
LABEL_7:
  v11[0] = v7;
  v11[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  v10 = sub_237B11EB0(*(a3 + 16), v11);
  if (v3)
  {
    goto LABEL_8;
  }

  result = sub_237A2E688(v10);
  if (result != 8)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B09C()
{
  OUTLINED_FUNCTION_22_27();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_41_13();

    if (!v1)
    {
      return v14;
    }

    return v2;
  }

  v5 = OUTLINED_FUNCTION_58_9();
  v8 = sub_237B153B0(v5, v6, v7, 0);
  if (v0)
  {
LABEL_8:

    return v2;
  }

  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_50_11(v13);
    return v2;
  }

  __break(1u);
LABEL_7:
  v9 = OUTLINED_FUNCTION_44_14();
  result = sub_237B153B0(v9, v10, v11, 0);
  if (v0)
  {
    goto LABEL_8;
  }

  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B184()
{
  OUTLINED_FUNCTION_22_27();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_41_13();

    if (!v1)
    {
      return v14;
    }

    return v2;
  }

  v5 = OUTLINED_FUNCTION_58_9();
  v8 = sub_237B14134(v5, v6, v7);
  if (v0)
  {
LABEL_8:

    return v2;
  }

  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_50_11(v13);
    return v2;
  }

  __break(1u);
LABEL_7:
  v9 = OUTLINED_FUNCTION_44_14();
  result = sub_237B14134(v9, v10, v11);
  if (v0)
  {
    goto LABEL_8;
  }

  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLTable();
    sub_237C08ECC();
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = v11[3];
LABEL_11:

    return v7;
  }

  v9 = sub_237B131C4(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, *(a4 + 16));
  if (v4)
  {
LABEL_8:

    return v7;
  }

  v8 = v9;
  if (v9)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v11[0] = v8;
  v11[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B131C4(*(a3 + 16), v11, *(a4 + 16));
  if (v4)
  {
    goto LABEL_8;
  }

  v8 = result;
  if (result)
  {
LABEL_10:
    type metadata accessor for CMLTable();
    v7 = swift_allocObject();
    *(v7 + 16) = v8;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLTable();
    sub_237C08ECC();

    if (!v3)
    {
      return v9[2];
    }

    return v5;
  }

  v7 = sub_237B13870(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v3)
  {
LABEL_8:

    return v5;
  }

  v6 = v7;
  if (v7)
  {
LABEL_11:
    type metadata accessor for CMLTable();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;

    return v5;
  }

  __break(1u);
LABEL_7:
  v9[0] = v6;
  v9[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B13870(*(a3 + 16), v9);
  if (v3)
  {
    goto LABEL_8;
  }

  v6 = result;
  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B6B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t *, void *))
{
  v10 = *a5;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v12 = a2 & 0xFFFFFFFFFFFFFFFLL;

      v13 = (v12 + 32);
      goto LABEL_6;
    }

LABEL_11:
    sub_237C08ECC();
    if (v6)
    {
      goto LABEL_7;
    }

    a3 = v16[3];
LABEL_9:

    return a3;
  }

  v16[0] = a1;
  v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;

  v13 = v16;
LABEL_6:
  v14 = a6(a3, a4, a5, v13);
  if (!v6)
  {
    a3 = v14;

    goto LABEL_9;
  }

LABEL_7:

  return a3;
}

void *MLDataTable.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = MEMORY[0x2383DDC00](0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_87();
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_15_38();
  result = swift_allocObject();
  v7 = 0;
  result[3] = 0;
  result[4] = 0;
  v37 = result;
  result[2] = v6;
  v28 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) == 0)
  {
LABEL_6:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        v13 = 0;
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        goto LABEL_11;
      }

      v13 = *(v9 + 8 * v15);
      ++v7;
      if (v13)
      {
        v7 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  while (1)
  {
    v15 = v7;
LABEL_10:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(v28 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_2379E8624(*(v28 + 56) + 40 * v17, v29);
    *&v30 = v20;
    *(&v30 + 1) = v19;
    sub_237A1FCF0(v29, &v31);

LABEL_11:
    v34 = v30;
    v35[0] = v31;
    v35[1] = v32;
    v36 = v33;
    v21 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {

      *a2 = v37;
      *(a2 + 8) = 0;
      return result;
    }

    v22 = v34;
    sub_237A1FCF0(v35, &v30);
    v23 = *(&v31 + 1);
    v24 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v25 = sub_237B71318(v23, v24);
    v26 = v37[2];

    sub_237A303B4(v22, v21, v25);

    if (v3)
    {
      break;
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v30);
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

void MLDataTable.append(contentsOf:)()
{
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_40_15();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *v2;
    if (*(v2 + 8))
    {
      v6 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v6, v7);
      v8 = v5;
      v4 = 1;
      v1 = v5;
    }

    else
    {
      type metadata accessor for CMLTable();
      v9 = v1[2];
      v10 = v5[2];
      v11 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v11, v12);
      v13 = OUTLINED_FUNCTION_4_26();
      sub_2379DBCF4(v13, v14);

      v15 = sub_237A3027C(v9, v10);
      v16 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v16, v17);
      v18 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v18, v19);
      v20 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v20, v21);
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_15_38();
      v1 = swift_allocObject();
      v4 = 0;
      v1[3] = 0;
      v1[4] = 0;
      v1[2] = v15;
    }
  }

  *v0 = v1;
  *(v0 + 8) = v4;
  OUTLINED_FUNCTION_25_9();
}

void MLDataTable.columnTypes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_65_6();
  a27 = v29;
  a28 = v30;
  if (*(v28 + 8))
  {
    OUTLINED_FUNCTION_42_14();

    sub_237C085AC();
  }

  else
  {
    v32 = *v28;
    v33 = v32[2];
    v34 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v34, v35);
    v36 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v36, v37);

    sub_237C085AC();
    sub_237B6C208(&a14);
    v38 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v38, v39);
    v40 = 0;
    v102 = v33;
    while (1)
    {
      sub_237A2E9F4();
      v41 = OUTLINED_FUNCTION_6_6();
      if (v40 == sub_237A017E8(v41, v42))
      {
        break;
      }

      sub_237A2E9C8(v40);
      v43 = sub_237A2DE60();
      v45 = v44;

      sub_237A2E9F4();
      v46 = OUTLINED_FUNCTION_6_6();
      if (v40 >= sub_237A017E8(v46, v47))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
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
        OUTLINED_FUNCTION_35_16();
        __break(1u);

        OUTLINED_FUNCTION_24_29();
        sub_237C08EDC();

        OUTLINED_FUNCTION_45_13();
        v101 = sub_237C0924C();
        MEMORY[0x2383DC360](v101);

        OUTLINED_FUNCTION_53_11();
        OUTLINED_FUNCTION_21_30();
        OUTLINED_FUNCTION_7_5();
        __break(1u);
LABEL_97:
        sub_237C0932C();
        __break(1u);
        JUMPOUT(0x237B6BFA8);
      }

      v48 = OUTLINED_FUNCTION_11_43();
      v50 = sub_237B6AF98(v48, v49, v33);
      swift_isUniquelyReferenced_nonNull_native();
      switch(v50)
      {
        case 1:
          v76 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v76, v77);
          if (v53)
          {
            goto LABEL_86;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_42;
          }

          v78 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v78, v79);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v80;
LABEL_42:
          v58 = a14;
          if (v33)
          {
            *(a14[7] + v50) = 1;
            goto LABEL_59;
          }

          a14[(v50 >> 6) + 8] |= 1 << v50;
          v97 = (v58[6] + 16 * v50);
          *v97 = v43;
          v97[1] = v45;
          *(v58[7] + v50) = 1;
          v98 = v58[2];
          v53 = __OFADD__(v98, 1);
          v92 = v98 + 1;
          if (v53)
          {
            goto LABEL_95;
          }

          goto LABEL_79;
        case 2:
          v66 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v66, v67);
          if (v53)
          {
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_28;
          }

          v68 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v68, v69);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v70;
LABEL_28:
          v58 = a14;
          if (v33)
          {
            v64 = a14[7];
            v65 = 2;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v93);
          if (v53)
          {
            goto LABEL_90;
          }

          goto LABEL_79;
        case 3:
          v71 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v71, v72);
          if (v53)
          {
            goto LABEL_84;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_35;
          }

          v73 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v73, v74);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v75;
LABEL_35:
          v58 = a14;
          if (v33)
          {
            v64 = a14[7];
            v65 = 3;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v94);
          if (v53)
          {
            goto LABEL_91;
          }

          goto LABEL_79;
        case 4:
          v59 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v59, v60);
          if (v53)
          {
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_21;
          }

          v61 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v61, v62);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v63;
LABEL_21:
          v58 = a14;
          if (v33)
          {
            v64 = a14[7];
            v65 = 4;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v91);
          if (v53)
          {
            goto LABEL_96;
          }

          goto LABEL_79;
        case 5:
          v81 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v81, v82);
          if (v53)
          {
            goto LABEL_88;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_49;
          }

          v83 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v83, v84);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v85;
LABEL_49:
          v58 = a14;
          if (v33)
          {
            v64 = a14[7];
            v65 = 6;
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_0_78();
          OUTLINED_FUNCTION_16_28(v99);
          if (v53)
          {
            goto LABEL_93;
          }

          goto LABEL_79;
        case 6:
          v86 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v86, v87);
          if (v53)
          {
            goto LABEL_85;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_56;
          }

          v88 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v88, v89);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v90;
LABEL_56:
          v58 = a14;
          if (v33)
          {
            v64 = a14[7];
            v65 = 5;
LABEL_58:
            *(v64 + v50) = v65;
LABEL_59:
          }

          else
          {
            OUTLINED_FUNCTION_0_78();
            OUTLINED_FUNCTION_16_28(v100);
            if (v53)
            {
              goto LABEL_94;
            }

LABEL_79:
            v58[2] = v92;
          }

          v33 = v102;
          ++v40;
          break;
        default:
          v51 = OUTLINED_FUNCTION_6_56();
          OUTLINED_FUNCTION_1_73(v51, v52);
          if (v53)
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_31_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D700, &qword_237C14628);
          if ((OUTLINED_FUNCTION_7_45() & 1) == 0)
          {
            goto LABEL_14;
          }

          v54 = OUTLINED_FUNCTION_11_43();
          sub_237ACAC78(v54, v55);
          OUTLINED_FUNCTION_5_58();
          if (!v57)
          {
            goto LABEL_97;
          }

          v50 = v56;
LABEL_14:
          v58 = a14;
          if (v33)
          {
            *(a14[7] + v50) = 0;
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_0_78();
          *(v95 + v50) = 0;
          v96 = v58[2];
          v53 = __OFADD__(v96, 1);
          v92 = v96 + 1;
          if (v53)
          {
            goto LABEL_92;
          }

          goto LABEL_79;
      }
    }

    sub_2379DBC9C(v32, 0);
    OUTLINED_FUNCTION_42_14();
  }
}

void MLDataTable.subscript.getter(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_64_5();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_60_11();
  v6 = MLUntypedColumn.column<A>(type:)(a1, a2, a3);
  OUTLINED_FUNCTION_68_3(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_237B6C208@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    v4 = sub_237B0DE88(*(*(v1 + 16) + 16));
    if (v4)
    {
      type metadata accessor for CMLSequence();
      OUTLINED_FUNCTION_11_9();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OUTLINED_FUNCTION_9_9(v5);
      v7 = *(v1 + 24);
      *(v1 + 24) = v6;

      v3 = *(v1 + 24);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);

    result = sub_237C090DC();
    __break(1u);
    return result;
  }

LABEL_4:
  *a1 = v3;
}

uint64_t sub_237B6C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_65_6();
  a27 = v29;
  a28 = v30;
  if (*(v28 + 32))
  {
LABEL_15:
    OUTLINED_FUNCTION_42_14();
  }

  else
  {
    sub_237B6C208(&a14);
    v31 = 0;
    v32 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_237A2E9F4();
      v33 = OUTLINED_FUNCTION_6_6();
      if (v31 == sub_237A017E8(v33, v34))
      {
        break;
      }

      sub_237A2E9C8(v31);
      v35 = sub_237A2DE60();
      v37 = v36;

      sub_237A2E9F4();
      v38 = OUTLINED_FUNCTION_6_6();
      if (v31 >= sub_237A017E8(v38, v39))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      swift_isUniquelyReferenced_nonNull_native();
      a14 = v32;
      v40 = OUTLINED_FUNCTION_11_43();
      v42 = sub_237ACAC78(v40, v41);
      if (__OFADD__(v32[2], (v43 & 1) == 0))
      {
        goto LABEL_19;
      }

      v44 = v42;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
      if (sub_237C090AC())
      {
        v46 = OUTLINED_FUNCTION_11_43();
        v48 = sub_237ACAC78(v46, v47);
        if ((v45 & 1) != (v49 & 1))
        {
          goto LABEL_22;
        }

        v44 = v48;
      }

      if (v45)
      {

        v32 = a14;
        *(a14[7] + 8 * v44) = v31;
      }

      else
      {
        v32 = a14;
        a14[(v44 >> 6) + 8] |= 1 << v44;
        v50 = (v32[6] + 16 * v44);
        *v50 = v35;
        v50[1] = v37;
        *(v32[7] + 8 * v44) = v31;
        v51 = v32[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_20;
        }

        v32[2] = v53;
      }

      ++v31;
    }

    v54 = *(v28 + 32);
    *(v28 + 32) = v32;

    if (*(v28 + 32))
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    OUTLINED_FUNCTION_35_16();
    __break(1u);

    OUTLINED_FUNCTION_24_29();
    sub_237C08EDC();

    OUTLINED_FUNCTION_45_13();
    v57 = sub_237C0924C();
    MEMORY[0x2383DC360](v57);

    OUTLINED_FUNCTION_53_11();
    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_7_5();
    __break(1u);
LABEL_22:
    result = sub_237C0932C();
    __break(1u);
  }

  return result;
}

void *sub_237B6C578(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t sub_237B6C588()
{
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;

  v2 = *(v0 + 32);
  *(v0 + 32) = 0;
}

void *sub_237B6C5C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_237B6C5F0()
{
  sub_237B6C5C0();
  OUTLINED_FUNCTION_15_38();

  return swift_deallocClassInstance();
}

id MLDataTable.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_237B6C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_65_6();
  a27 = v29;
  a28 = v30;
  if (v28[1])
  {
    goto LABEL_16;
  }

  v31 = v28;
  v32 = *v28;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_16;
  }

  v63 = *v31;
  v34 = *(v31 + 8);
  if (!MEMORY[0x2383DDC00](0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_87();
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  *(isUniquelyReferenced_nonNull_native + 16) = v32;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_15_38();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_61_7(v35);
  if ((v34 & 1) == 0)
  {

    v37 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v37, v38);
    sub_237B6C208(&a14);
    v39 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v39, v40);
    goto LABEL_8;
  }

  if (MEMORY[0x2383DDAC0](0))
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    OUTLINED_FUNCTION_9_9(v36);
LABEL_8:
    sub_237A2E9F4();
    v41 = OUTLINED_FUNCTION_6_6();
    if (sub_237A017E8(v41, v42))
    {
      v43 = 0;
      isUniquelyReferenced_nonNull_native = 0;
      while (1)
      {
        sub_237A2E9C8(v43);
        v44 = sub_237A2DE60();
        v46 = v45;

        sub_237A2E9F4();
        v47 = OUTLINED_FUNCTION_6_6();
        if (v43 >= sub_237A017E8(v47, v48))
        {
          break;
        }

        v49 = v34;
        if (v34)
        {
          swift_willThrow();
          isUniquelyReferenced_nonNull_native = 0;
          OUTLINED_FUNCTION_24_29();
          sub_237C08EDC();

          a14 = 0xD00000000000001FLL;
          a15 = 0x8000000237C199C0;
          MEMORY[0x2383DC360](v44, v46);
          MEMORY[0x2383DC360](34, 0xE100000000000000);
          v51 = a14;
          v52 = a15;
          sub_2379E8AF0();
          OUTLINED_FUNCTION_50();
          v53 = swift_allocError();
          *v54 = v51;
          v54[1] = v52;
          OUTLINED_FUNCTION_19_26(v53, v54);
        }

        else
        {
          v50 = v63[2];
          swift_retain_n();
          v59 = sub_237B6ACC0();

          type metadata accessor for _UntypedColumn();
          OUTLINED_FUNCTION_103();
          v55 = swift_allocObject();
          v56 = 0;
          v55[2] = v59;
        }

        ++v43;
        a14 = v55;
        LOBYTE(a15) = v56;
        sub_237B6C9CC();

        sub_2379DBC9C(a14, a15);
        sub_237A2E9F4();
        v57 = OUTLINED_FUNCTION_6_6();
        v34 = v49;
        if (v43 == sub_237A017E8(v57, v58))
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_15:

    sub_237B6C588();

    sub_2379DBC9C(v63, v34);
LABEL_16:
    OUTLINED_FUNCTION_42_14();
    return;
  }

LABEL_19:
  __break(1u);
  OUTLINED_FUNCTION_35_16();
  __break(1u);

  OUTLINED_FUNCTION_24_29();
  sub_237C08EDC();

  OUTLINED_FUNCTION_23_30();
  a14 = (v61 + 3);
  a15 = v60;
  v62 = sub_237C0924C();
  MEMORY[0x2383DC360](v62);

  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_7_5();
  __break(1u);
}

void sub_237B6C9CC()
{
  OUTLINED_FUNCTION_40_15();
  if (v3)
  {
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v5 = sub_237C0925C();
    if (!v5)
    {
      OUTLINED_FUNCTION_50();
      v6 = swift_allocError();
      *v21 = v1;
      goto LABEL_9;
    }

    v6 = v5;
    v7 = OUTLINED_FUNCTION_1_21();
  }

  else
  {
    if ((v2[8] & 1) == 0)
    {
      v13 = v1[2];
      v14 = *(*v2 + 16);
      v15 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v15, v16);
      v17 = OUTLINED_FUNCTION_52_5();
      sub_2379DBCF4(v17, v18);

      v19 = OUTLINED_FUNCTION_57_9();
      sub_237A303B4(v19, v20, v14);
      v24 = OUTLINED_FUNCTION_52_5();
      sub_2379DBC9C(v24, v25);

      v26 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v26, v27);
      return;
    }

    v9 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v9, v10);
    sub_237C08EDC();

    v11 = OUTLINED_FUNCTION_57_9();
    MEMORY[0x2383DC360](v11);
    MEMORY[0x2383DC360](39, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v6 = swift_allocError();
    *v12 = 0xD000000000000021;
    v12[1] = 0x8000000237C199E0;
    OUTLINED_FUNCTION_19_26(v6, v12);
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_3_22();
  }

  sub_2379DBC9C(v7, v8);
LABEL_9:
  v22 = OUTLINED_FUNCTION_47_15();
  sub_2379DBC9C(v22, v23);
  *v0 = v6;
  *(v0 + 8) = 1;
}

void sub_237B6CB9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (!MEMORY[0x2383DDC00](0))
  {
LABEL_17:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_87();
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_15_38();
  v7 = swift_allocObject();
  v8 = 0;
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v7[2] = v6;
  v7[3] = 0;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v38 = a1;
  v39 = v7;
  v7[4] = 0;
  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v9) == 0)
  {
LABEL_6:
    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        *a2 = v39;
        *(a2 + 8) = 0;
        return;
      }

      v13 = *(v10 + 8 * v15);
      ++v8;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  while (1)
  {
    v15 = v8;
LABEL_9:
    v16 = (v15 << 10) | (16 * __clz(__rbit64(v13)));
    v17 = *(a1 + 56) + v16;
    v18 = *v17;
    if (*(v17 + 8))
    {
      swift_getErrorValue();
      sub_2379DBCF4(v18, 1);
      sub_237C0927C();
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v32 = 0;
      *(v32 + 8) = 0xE000000000000000;
      *(v32 + 16) = 0u;
      *(v32 + 32) = 0u;
      *(v32 + 48) = 0;
      swift_willThrow();

      sub_2379DBC9C(v18, 1);

      return;
    }

    v19 = (*(a1 + 48) + v16);
    v40 = v4;
    v21 = *v19;
    v20 = v19[1];
    v22 = v39[2];
    v23 = v18[2];
    v24 = OUTLINED_FUNCTION_38_16();
    sub_2379DBCF4(v24, v25);
    v26 = OUTLINED_FUNCTION_38_16();
    sub_2379DBCF4(v26, v27);

    sub_237A303B4(v21, v20, v23);
    v4 = v40;
    if (v40)
    {
      break;
    }

    v13 &= v13 - 1;

    v28 = OUTLINED_FUNCTION_38_16();
    sub_2379DBC9C(v28, v29);
    v30 = OUTLINED_FUNCTION_38_16();
    sub_2379DBC9C(v30, v31);

    v8 = v15;
    a1 = v38;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v33 = OUTLINED_FUNCTION_38_16();
  sub_2379DBC9C(v33, v34);

  v35 = OUTLINED_FUNCTION_38_16();
  sub_2379DBC9C(v35, v36);
}

void sub_237B6CE38(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  MLDataTable.subscript.getter();
  *a3 = v8;
  *(a3 + 8) = v9;
}

uint64_t sub_237B6CE90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;

  sub_2379DBCF4(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

void sub_237B6CF70(uint64_t *a1)
{
  v35 = *a1;
  v2 = *(a1 + 8);
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4)
  {
    v5 = MEMORY[0x2383DDAC0](0);
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = OUTLINED_FUNCTION_9_9(v7);
  }

  else
  {
    v9 = *v1;

    sub_237B6C208(&v36);
    v10 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v10, v11);
  }

  MEMORY[0x28223BE20](v8);
  v12 = sub_237AC1AB8(sub_2379F57B8);

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_29_11();
    sub_237B6D504(v13, v14);
  }

  if (v4)
  {
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v16 = sub_237C0925C();
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v18, v27);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v17 = swift_allocError();
      *v28 = v3;
    }

    v29 = OUTLINED_FUNCTION_47_15();
    sub_2379DBC9C(v29, v30);
    *v1 = v17;
    *(v1 + 8) = 1;
  }

  else if ((v2 & 1) == 0)
  {
    v19 = v3[2];
    v20 = *(v35 + 16);
    v21 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v21, v22);
    v23 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v23, v24);

    v25 = OUTLINED_FUNCTION_29_11();
    sub_237A303B4(v25, v26, v20);
    v31 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v31, v32);

    v33 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v33, v34);
  }
}

void MLDataTable.subscript.modify()
{
  OUTLINED_FUNCTION_24_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *v6 = v7;
  v7[3] = v2;
  v7[4] = v0;
  v7[2] = v4;
  OUTLINED_FUNCTION_0_31();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_25_9();
}

{
  OUTLINED_FUNCTION_67_7();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_coroFrameAllocStub(0x38uLL);
  *v10 = v11;
  v11[5] = v2;
  v11[6] = v0;
  v11[3] = v6;
  v11[4] = v4;
  v11[2] = v8;
  OUTLINED_FUNCTION_0_31();
  OUTLINED_FUNCTION_55();
  MLDataTable.subscript.getter(v4, v2, v12);
  OUTLINED_FUNCTION_66_7();
}

uint64_t sub_237B6D2EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 1);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a2;
  v11 = a2[1];
  v16 = v8;
  v17 = v9;
  result = MLDataTable.subscript.getter(v6, v7, &v14);
  v13 = v15;
  *a4 = v14;
  *(a4 + 8) = v13;
  return result;
}

uint64_t sub_237B6D34C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;

  sub_2379DBCF4(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

void sub_237B6D454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_24_11();
  a17 = v18;
  a18 = v19;
  v21 = **v20;
  v22 = *(*v20 + 8);
  v23 = (*v20)[6];
  v25 = (*v20)[2];
  v24 = (*v20)[3];
  a9 = v21;
  a10 = v22;
  if (v26)
  {

    sub_2379DBCF4(v21, v22);
    MLDataTable.subscript.setter(&a9, v25, v24);
    v27 = OUTLINED_FUNCTION_47_15();
    sub_2379DBC9C(v27, v28);
  }

  else
  {

    MLDataTable.subscript.setter(&a9, v25, v24);
  }

  OUTLINED_FUNCTION_25_9();

  free(v29);
}

void sub_237B6D504(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v12 = *v2;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v5 = sub_237C0925C();
    if (v5)
    {
      v6 = v5;
      sub_2379DBC9C(v3, 1);
    }

    else
    {
      v6 = swift_allocError();
      *v11 = v3;
    }

    sub_237B708C4(v6, 1);
  }

  else
  {
    v9 = v3[2];
    sub_2379DBCF4(v3, 0);

    sub_237B6ADC8(a1, a2, v9);
    sub_2379DBC9C(v3, 0);

    sub_237B708C4(v10, 0);
  }
}

uint64_t MLDataTable.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *v3;
  HIDWORD(v51) = *(v3 + 8);
  result = MEMORY[0x2383DDC00](0);
  if (result)
  {
    v10 = result;
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = v11;
    v55 = v12;
    LOBYTE(v56) = 0;
    v13 = *(v4 + 16);
    v14 = OUTLINED_FUNCTION_11_43();
    v15(v14);
    sub_237C0885C();
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_237C08D7C();
      if (!v54)
      {
        break;
      }

      if ((v51 & 0x100000000) != 0)
      {
        swift_willThrow();
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_237C08EDC();

        v53 = 0xD00000000000001FLL;
        v54 = 0x8000000237C199C0;
        v17 = OUTLINED_FUNCTION_11_43();
        MEMORY[0x2383DC360](v17);
        MEMORY[0x2383DC360](34, 0xE100000000000000);
        v18 = v53;
        v19 = v54;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v20 = swift_allocError();
        *v21 = v18;
        v21[1] = v19;
        OUTLINED_FUNCTION_19_26(v20, v21);
        sub_2379DBC9C(v22, 1);
      }

      else
      {
        v16 = *(v8 + 16);
        swift_retain_n();
        OUTLINED_FUNCTION_11_43();
        v23 = sub_237B6ACC0();

        type metadata accessor for _UntypedColumn();
        OUTLINED_FUNCTION_103();
        v24 = swift_allocObject();
        v24[2] = v23;
        v25 = sub_2379DBCF4(v24, 0);
        sub_237B6C670(v25, v26, v27, v28, v29, v30, v31, v32, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8);
        v53 = v24;
        LOBYTE(v54) = 0;
        sub_237B6CF70(&v53);

        v33 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v33, v34);
        v35 = v55;
        if (v56)
        {
          v36 = v55;
          v37 = OUTLINED_FUNCTION_88();
          sub_2379DBC9C(v37, v38);
          sub_2379DBC9C(v35, 1);
        }

        else
        {
          v39 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v39, v40);
          sub_237B6C588();
          v41 = OUTLINED_FUNCTION_88();
          sub_2379DBC9C(v41, v42);
          v43 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v43, v44);
        }
      }
    }

    v45 = *(v49 + 8);
    v46 = OUTLINED_FUNCTION_55();
    result = v47(v46);
    v48 = v56;
    *v50 = v55;
    *(v50 + 8) = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataTable.subscript.getter()
{
  OUTLINED_FUNCTION_32_15();
  v2 = v1;
  v12 = *v0;
  LOBYTE(v13) = *(v0 + 8);
  result = MLDataTable.size.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    v4 = sub_237A365A8();
    OUTLINED_FUNCTION_63_6(v4, v5, v6, v7, v8, v9, v10, v11, 0);
    sub_237C088CC();
    return MLDataTable.subscript.getter(v2, v12, v13);
  }

  return result;
}

void sub_237B6DAB4()
{
  OUTLINED_FUNCTION_67_7();
  OUTLINED_FUNCTION_40_15();
  if (v6)
  {
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v8 = sub_237C0925C();
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v10, v11);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v9 = swift_allocError();
      *v19 = v1;
    }

    v20 = OUTLINED_FUNCTION_47_15();
    sub_2379DBC9C(v20, v21);
    *v0 = v9;
    *(v0 + 8) = 1;
  }

  else
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    v15 = v2;
    v16 = v1[2];

    sub_237A3047C(v15, v14, v13, v12);
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v17, v18);
  }

  OUTLINED_FUNCTION_66_7();
}

void MLDataTable.randomSample(by:seed:)()
{
  OUTLINED_FUNCTION_8_19();
  if (v10)
  {
    OUTLINED_FUNCTION_27_6(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10())
    {
      v11 = OUTLINED_FUNCTION_3_29();
      sub_2379DBC9C(v11, v18);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v19 = swift_allocError();
      OUTLINED_FUNCTION_15_13(v19, v20);
    }

    v21 = 1;
    goto LABEL_8;
  }

  v12 = v1;
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v9;
    v14 = *(*(v0 + 16) + 16);
    v15 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v15, v16);
    v17 = sub_237B13D04(v14, v12, v13);
    v22 = v17;
    if (v17)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      *(swift_allocObject() + 16) = v22;
      v23 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v23, v24);
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_15_38();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_4_62(v25);
LABEL_8:
      OUTLINED_FUNCTION_11_19(v21);
      return;
    }
  }

  __break(1u);
}

void sub_237B6DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_64_5();
  v26 = v9;
  sub_237C089DC();

  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_63_6(WitnessTable, v11, v12, v13, v14, v15, v16, v17, v26);
  MLUntypedColumn.init<A>(_:)();
  OUTLINED_FUNCTION_60_11();
  sub_237B6DDE8(a6, &v26, a2, a3);
  OUTLINED_FUNCTION_68_3(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void sub_237B6DDE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (*(v4 + 8))
  {
    v17 = *v4;
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      sub_2379DBC9C(v5, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v15 = v5;
    }

    v14 = 1;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v16 = v5;

    sub_237B6DF04(&v16, v10, v11, a3, a4, a1 & 1, &v17);
    v12 = OUTLINED_FUNCTION_52_5();
    sub_2379DBC9C(v12, v13);
    v14 = 0;
  }

  OUTLINED_FUNCTION_11_19(v14);
}

void sub_237B6DF04(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  if (a3)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000052, 0x8000000237C1D890);
    swift_getErrorValue();
    v9 = a2;
    sub_237C0927C();
    sub_2379DBC9C(a2, 1);
    MEMORY[0x2383DC360](0, 0xE000000000000000);

    MEMORY[0x2383DC360](39, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0;
    swift_willThrow();
  }

  else
  {
    v15 = *(*a1 + 16);
    v16 = a2[2];
    sub_2379DBCF4(a2, 0);

    v18 = sub_237A30AF4(v17, a4, a5, a6 & 1);
    if (v7)
    {

      sub_2379DBC9C(a2, 0);
    }

    else
    {
      v19 = v18;
      sub_2379DBC9C(a2, 0);

      type metadata accessor for _DataTable();
      v20 = swift_allocObject();
      v20[3] = 0;
      v20[4] = 0;
      v20[2] = v19;
      *a7 = v20;
    }
  }
}

void MLDataTable.join(with:on:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_7();
  a19 = v21;
  a20 = v22;
  v24 = *v23;
  v25 = *(v23 + 8);
  v27 = *v20;
  v28 = *(v20 + 8);
  v30 = v29;
  v32 = v31;
  switch(*v26)
  {
    case 1:
      v33 = 1702131055;
      goto LABEL_6;
    case 2:
      a9 = 1952867692;
      v34 = 0xE400000000000000;
      goto LABEL_8;
    case 3:
      v35 = 0x7468676972;
      goto LABEL_7;
    default:
      v33 = 1701736041;
LABEL_6:
      v35 = v33 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
LABEL_7:
      a9 = v35;
      v34 = 0xE500000000000000;
LABEL_8:
      a10 = v34;

      v36 = sub_237A2CDD8(v27, v28, v24, v25, v30, &a9);
      v38 = v37;

      *v32 = v36;
      *(v32 + 8) = v38 & 1;
      OUTLINED_FUNCTION_66_7();
      return;
  }
}

void *sub_237B6E1C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v40 = *a1;
  v43 = *a2;
  v10 = MEMORY[0x2383DDAC0](0);
  if (!v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  OUTLINED_FUNCTION_9_9(inited);
  v13 = *(a3 + 16);
  v39 = a4;
  if (v13)
  {
    type metadata accessor for CMLFeatureValue();
    v14 = (a3 + 40);
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      swift_bridgeObjectRetain_n();
      v17 = sub_237A2E7CC();
      if (v5)
      {
        break;
      }

      v18 = v17;

      sub_237A2DE9C(v18);

      v14 += 2;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
LABEL_22:
      swift_unexpectedError();
      __break(1u);
    }
  }

  sub_237B6C208(&v41);
  v19 = v41;
  sub_237B6C208(&v41);
  v41 = v19;
  v42 = 0;
  sub_237A2E9F4();
  v20 = OUTLINED_FUNCTION_6_6();
  if (sub_237A017E8(v20, v21))
  {
    v22 = 1;
    while (1)
    {
      MLDataTable.ColumnNames.subscript.getter(v22 - 1);
      sub_237A2E9F4();
      v23 = OUTLINED_FUNCTION_6_6();
      v25 = sub_237A017E8(v23, v24);
      if (v22 - 1 >= v25)
      {
        break;
      }

      v42 = v22;
      MEMORY[0x28223BE20](v25);
      if (sub_237AC1AB8(sub_2379F345C))
      {
        type metadata accessor for CMLFeatureValue();

        v26 = sub_237A2E7CC();
        if (v5)
        {
          goto LABEL_22;
        }

        v27 = v26;

        sub_237A2DE9C(v27);
      }

      else
      {
      }

      sub_237A2E9F4();
      v28 = OUTLINED_FUNCTION_6_6();
      if (v22++ == sub_237A017E8(v28, v29))
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_16:

LABEL_17:
  v31 = *(v40 + 16);
  v32 = *(v43 + 16);
  v34 = *v39;
  v33 = v39[1];
  swift_retain_n();
  swift_retain_n();

  v35 = sub_237B6AE64(v34, v33, v31, v32, inited);
  if (v6)
  {

    swift_setDeallocating();
    sub_237A2E6E8();
    OUTLINED_FUNCTION_11_9();
    return swift_deallocClassInstance();
  }

  else
  {
    v37 = v35;

    swift_setDeallocating();
    sub_237A2E6E8();
    OUTLINED_FUNCTION_11_9();
    swift_deallocClassInstance();

    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    result = swift_allocObject();
    result[3] = 0;
    result[4] = 0;
    result[2] = v38;
    *a5 = result;
  }

  return result;
}

uint64_t MLDataTable.JoinType.hashValue.getter()
{
  v1 = *v0;
  sub_237C093CC();
  MEMORY[0x2383DCF70](v1);
  return sub_237C0940C();
}

void sub_237B6E654(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  MLDataTable.subscript.getter();
}

void sub_237B6E6B8(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_237B6E654(a1, a2);
}

void sub_237B6E6C4(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);

  sub_2379DBCF4(v9, v10);
  sub_2379DBC9C(v9, v10);
  *a4 = v8;
  a4[1] = v7;
  v13 = v9;
  v14 = v10;
  v11 = a2;
  v12 = a3 & 1;
  sub_2379DBCF4(a2, a3 & 1);
  MLUntypedColumn.subscript.getter(&v11);
  sub_2379DBC9C(v11, v12);
}

uint64_t objectdestroyTm_7()
{
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_11_9();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void MLDataTable.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 8);
  v9 = *v2;
  v10 = v6;
  v7 = v4;
  v8 = v5;
  sub_2379DBCF4(v4, v5);
  MLDataTable.subscript.getter(&v7, a2);
  sub_2379DBC9C(v4, v5);
}

uint64_t sub_237B6EA64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v11 = sub_237C08D2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a1;
  swift_retain_n();

  v25(v26);
  if (__swift_getEnumTagSinglePayload(v16, 1, a6) == 1)
  {
    (*(v12 + 8))(v16, v11);
    type metadata accessor for CMLFeatureValue();
    v21 = sub_237A2E78C();
  }

  else
  {
    (*(v17 + 32))(v20, v16, a6);
    v21 = sub_237B70DD4(a6, v24);

    (*(v17 + 8))(v20, a6);
  }

  return v21;
}

uint64_t sub_237B6ECAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *(*a1 + 16);
  (*(a5 + 8))(&v13, a4, a5);
  result = sub_237A30800(a2, a3, 0x5060403020100uLL >> (8 * v13));
  if (!v6)
  {
    v12 = result;
    type metadata accessor for _UntypedColumn();
    result = swift_allocObject();
    *(result + 16) = v12;
    *a6 = result;
  }

  return result;
}

uint64_t MLDataTable.map<A>(_:)()
{
  OUTLINED_FUNCTION_67_7();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_0_31();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v0;

  MLDataTable.map<A>(_:)(sub_237B705FC, v6, v5, v3);
  OUTLINED_FUNCTION_66_7();
}

uint64_t sub_237B6EE20@<X0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 2);
  v8 = *a1;
  v9 = v6;
  a2(&v8);

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, a3);
}

void MLDataTable.fillMissing(columnNamed:with:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    v18 = *v3;
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      v6 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v6, v12);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v13 = v4;
    }

    v17 = 1;
  }

  else
  {
    v7 = v4[2];
    v19 = *a3;
    v20 = *(a3 + 16);

    v8 = sub_237AFC858();

    v9 = OUTLINED_FUNCTION_57_9();
    v11 = sub_237B6B264(v9, v10, v7, v8);

    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v14 = swift_allocObject();
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = v11;
    v15 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v15, v16);
    v17 = 0;
  }

  OUTLINED_FUNCTION_11_19(v17);
}

void MLDataTable.sort(columnNamed:byIncreasingOrder:)()
{
  OUTLINED_FUNCTION_24_11();
  v1 = *v0;
  if (*(v0 + 8))
  {
    v13 = *v0;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10())
    {
      sub_2379DBC9C(v1, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v12 = v1;
    }

    v11 = 1;
  }

  else
  {
    v3 = v1[2];

    v4 = OUTLINED_FUNCTION_52_5();
    sub_2379DBCF4(v4, v5);
    v6 = OUTLINED_FUNCTION_57_9();
    sub_237B6B3B0(v6, v7, v3);
    v8 = OUTLINED_FUNCTION_52_5();
    sub_2379DBC9C(v8, v9);
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_62_7(v10);
  }

  OUTLINED_FUNCTION_11_19(v11);
  OUTLINED_FUNCTION_25_9();
}

void sub_237B6F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *, void *))
{
  v6 = *v5;
  if (*(v5 + 8))
  {
    v17 = *v5;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10())
    {
      sub_2379DBC9C(v6, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v16 = v6;
    }

    v15 = 1;
  }

  else
  {
    v13 = v6[2];

    sub_2379DBCF4(v6, 0);
    sub_237B6B4E4(a1, a2, a3, a4, v13, a5);
    sub_2379DBC9C(v6, 0);
    type metadata accessor for _DataTable();
    OUTLINED_FUNCTION_15_38();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_62_7(v14);
  }

  OUTLINED_FUNCTION_11_19(v15);
}

void MLDataTable.playgroundDescription.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (v1[1])
  {
    swift_getErrorValue();
    v4 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v4, v5);
    sub_237C0927C();
    a1[3] = MEMORY[0x277D837D0];
    v6 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v6, v7);
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    v8 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v8, v9);
    sub_237C08EDC();
    v10 = *(v3 + 16);

    v11 = sub_237A30330();

    v28[0] = v11;
    v12 = sub_237C0924C();
    MEMORY[0x2383DC360](v12);

    MEMORY[0x2383DC360](0x20582073776F7220, 0xE800000000000000);
    sub_237B6C208(v28);
    v13 = v28[0];
    sub_237A2E9F4();
    v14 = OUTLINED_FUNCTION_6_6();
    sub_237A017E8(v14, v15);
    v16 = OUTLINED_FUNCTION_6_6();
    sub_237A0290C(v16, v17, v13);

    v18 = sub_237C0924C();
    MEMORY[0x2383DC360](v18);

    MEMORY[0x2383DC360](0xD000000000000016, 0x8000000237C1D810);
    sub_237B6C208(v28);
    v19 = MLDataTable.ColumnNames.description.getter();
    MEMORY[0x2383DC360](v19);

    v29 = v3;
    LOBYTE(v30) = 0;
    v20 = MLDataTable.description.getter();
    v22 = v21;
    v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v24 = v20;
    v25 = v23;
    sub_237A02218(v24, v22, 0);
    OUTLINED_FUNCTION_87();
    a1[3] = sub_237B70608();
    v26 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v26, v27);
    *a1 = v25;
  }
}

uint64_t MLDataTable.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    swift_getErrorValue();
    v2 = v1;
    sub_237C0927C();
    sub_2379DBC9C(v1, 1);
    return 0;
  }

  else
  {
    v4 = v1[2];
    v5 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v5, v6);

    v3 = sub_237A307B0();

    v7 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v7, v8);
  }

  return v3;
}

void sub_237B6F954(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void (*a6)(void *__return_ptr, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  a6(v9, v11);
  a3(v9);
  v7 = v9[2];
  v8 = v10;

  sub_2379DBC9C(v7, v8);
}

void sub_237B6F9D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = 0;
  v9 = (a1 + 48);
  while (1)
  {
    v10 = *(a1 + 16);
    if (v8 == v10)
    {
LABEL_20:

      return;
    }

    if (v8 >= v10)
    {
      break;
    }

    if (v6 == v7)
    {
      goto LABEL_20;
    }

    if (v6 < a2)
    {
      goto LABEL_23;
    }

    if (v7 >= v6)
    {
      goto LABEL_24;
    }

    v12 = *(v9 - 2);
    v11 = *(v9 - 1);
    v13 = *v9;
    sub_2379E9288(v12, v11, *v9);
    if (v13 == 255)
    {
      goto LABEL_20;
    }

    v14 = *a5;
    v34 = v11;
    v16 = sub_237ACB180(v12, v11, v13);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_25;
    }

    v20 = v15;
    if (v14[3] >= v19)
    {
      if (a4)
      {
        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D718, &qword_237C147B0);
        sub_237C090BC();
        if (v20)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_237ABFCE4(v19);
      v21 = *a5;
      v22 = sub_237ACB180(v12, v34, v13);
      if ((v20 & 1) != (v23 & 1))
      {
        goto LABEL_27;
      }

      v16 = v22;
      if (v20)
      {
LABEL_18:
        v29 = swift_allocError();
        swift_willThrow();

        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_2379E8CE8(v12, v34, v13);

          return;
        }

        goto LABEL_28;
      }
    }

    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 24 * v16;
    *v25 = v12;
    *(v25 + 8) = v34;
    *(v25 + 16) = v13;
    *(v24[7] + 8 * v16) = v7;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_26;
    }

    v24[2] = v28;
    v9 += 24;
    ++v7;
    ++v8;
    a4 = 1;
    v6 = a3;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_237C0932C();
  __break(1u);
LABEL_28:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

void sub_237B6FD04(uint64_t a1, void (*a2)(unint64_t *__return_ptr, unint64_t *), uint64_t a3, char a4, void *a5)
{

  for (i = 0; ; ++i)
  {
    v8 = sub_237A2E9F4();
    if (i == sub_237A017E8(0, v8))
    {
LABEL_18:

      return;
    }

    sub_237A2E9C8(i);
    if (v5)
    {
      goto LABEL_22;
    }

    v9 = sub_237A2DE60();
    v11 = v10;

    v12 = sub_237A2E9F4();
    if (i >= sub_237A017E8(0, v12))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_unexpectedError();
      __break(1u);

      v38 = 0;
      v39 = 0xE000000000000000;
      sub_237C08EDC();

      v38 = 0xD000000000000022;
      v39 = 0x8000000237C17E70;
      v34 = sub_237C0924C();
      MEMORY[0x2383DC360](v34);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      goto LABEL_23;
    }

    v38 = v9;
    v39 = v11;
    a2(&v40, &v38);

    v13 = v41;
    if (!v41)
    {
      goto LABEL_18;
    }

    v14 = v40;
    v36 = v42;
    v38 = v40;
    v39 = v41;
    v15 = v43;
    v16 = *a5;
    v18 = sub_237ACAC78(v40, v41);
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_20;
    }

    v22 = v17;
    if (v16[3] < v21)
    {
      break;
    }

    if (a4)
    {
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D720, &qword_237C147B8);
      sub_237C090BC();
      if (v22)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v26 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v27 = (v26[6] + 16 * v18);
    *v27 = v14;
    v27[1] = v13;
    v28 = v26[7] + 16 * v18;
    *v28 = v36;
    *(v28 + 8) = v15;
    v29 = v26[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_21;
    }

    v26[2] = v31;
    a4 = 1;
  }

  sub_237ABFFB8(v21);
  v23 = *a5;
  v24 = sub_237ACAC78(v14, v13);
  if ((v22 & 1) != (v25 & 1))
  {
    goto LABEL_24;
  }

  v18 = v24;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v32 = swift_allocError();
  swift_willThrow();
  v44 = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if (swift_dynamicCast())
  {
    while (1)
    {
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
      sub_237C0907C();
      MEMORY[0x2383DC360](39, 0xE100000000000000);
LABEL_23:
      sub_237C090DC();
      __break(1u);
LABEL_24:
      sub_237C0932C();
      __break(1u);
    }
  }

  sub_2379DBC9C(v36, v15);
}

void sub_237B70178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = 0;

  v9 = (v33 + 40);
  for (i = a3; ; a3 = i)
  {
    v10 = *(v33 + 16);
    if (v8 == v10)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v8 >= v10)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_237C0932C();
      __break(1u);
      goto LABEL_27;
    }

    if (a3 == v7)
    {
      goto LABEL_19;
    }

    if (a3 < a2)
    {
      goto LABEL_22;
    }

    if (v7 >= a3)
    {
      goto LABEL_23;
    }

    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = v9;
    v14 = *a5;

    v16 = sub_237ACAC78(v11, v12);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a4)
    {
      if (v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
      sub_237C090BC();
      if (v20)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = (v24[6] + 16 * v16);
    *v25 = v11;
    v25[1] = v12;
    *(v24[7] + 8 * v16) = v7;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v24[2] = v28;
    v9 = v13 + 2;
    ++v7;
    ++v8;
    a4 = 1;
  }

  sub_237AC058C(v19, a4 & 1);
  v21 = *a5;
  v22 = sub_237ACAC78(v11, v12);
  if ((v20 & 1) != (v23 & 1))
  {
    goto LABEL_26;
  }

  v16 = v22;
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_27:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

uint64_t sub_237B70488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237C0929C() & 1;
  }
}

uint64_t sub_237B70518()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237B7056C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_237B705C4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237B705FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return sub_237B6EE20(a1, *(v2 + 32), *(v2 + 16), a2);
}

unint64_t sub_237B70608()
{
  result = qword_27DE9D708;
  if (!qword_27DE9D708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9D708);
  }

  return result;
}

unint64_t sub_237B70650()
{
  result = qword_27DE9D710;
  if (!qword_27DE9D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D710);
  }

  return result;
}

__n128 sub_237B706D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MLDataTable.JoinType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237B707B8);
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

uint64_t sub_237B708A4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_237A3023C(a1, v1[2]);
}

void sub_237B708C4(id a1, char a2)
{
  if (a2)
  {
  }
}

void OUTLINED_FUNCTION_0_78()
{
  *(v1 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v4 = (*(v1 + 48) + 16 * v0);
  *v4 = v3;
  v4[1] = v2;
  v5 = *(v1 + 56);
}

void *OUTLINED_FUNCTION_4_62(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return sub_237ACAC78(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_45()
{

  return sub_237C090AC();
}

uint64_t *OUTLINED_FUNCTION_8_42(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_17()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_35_16()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_41_13()
{

  return sub_237C08ECC();
}

uint64_t OUTLINED_FUNCTION_47_15()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_11(uint64_t a1)
{
  *(a1 + 16) = v1;
}

void OUTLINED_FUNCTION_52_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  a9 = v11;
  a10 = v10;

  sub_237B6CF70(&a9);
}

void OUTLINED_FUNCTION_53_11()
{

  JUMPOUT(0x2383DC360);
}

void *OUTLINED_FUNCTION_61_7(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = v2;
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

void *OUTLINED_FUNCTION_62_7(void *result)
{
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

void OUTLINED_FUNCTION_68_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{

  sub_2379DBC9C(a9, a10);
}

uint64_t sub_237B70CDC()
{
  type metadata accessor for CMLFeatureValue();

  return sub_237A2E7CC();
}

uint64_t sub_237B70D54(char a1)
{
  if (sub_237B0F164(a1 & 1))
  {
    type metadata accessor for CMLFeatureValue();
    swift_allocObject();
    v1 = OUTLINED_FUNCTION_15_15();
    return sub_237A2E764(v1, 1);
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_57_4();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B70DD4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = OUTLINED_FUNCTION_1_74(v7, v18);
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D728, &qword_237C148D0);
  if (swift_dynamicCast())
  {
    sub_237A1FCF0(&v18, &v21);
    v10 = v24;
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    v11 = *(v10 + 24);
    v12 = OUTLINED_FUNCTION_15_15();
    v14 = v13(v12, v10);
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_2379F6DD8(&v18, &qword_27DE9C850, qword_237C10F20);
    (*(a2 + 32))(&v21, a1, a2);
    v15 = v21;
    v16 = v22;
    v18 = v21;
    LOBYTE(v19) = v22;
    v14 = sub_237AFC858();
    sub_2379E8CE8(v15, *(&v15 + 1), v16);
  }

  return v14;
}

uint64_t Int.dataValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void Double.dataValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t String.dataValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t sub_237B70F8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = dynamic_cast_existential_1_conditional(v3);
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v27 = a1;
    v11 = *(v8 + 16);
    v12 = sub_237C08D2C();
    v26 = &v26;
    v13 = OUTLINED_FUNCTION_0(v12);
    v15 = v14;
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v13);
    v19 = &v26 - v18;

    v11(v20, v9, v10);
    if (__swift_getEnumTagSinglePayload(v19, 1, v9) == 1)
    {
      (*(v15 + 8))(v19, v12);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }

    else
    {
      *(&v29 + 1) = v9;
      v30 = v10;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, v19, v9);
    }

    v24 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
    v25 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a3, v25 ^ 1u, 1, v24);
  }

  else
  {

    sub_237AFC548(v21, &v28);
    v31 = v28;
    v32 = v29;
    return (*(a2 + 16))(&v31, a1, a2);
  }
}

uint64_t sub_237B711BC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_59(a1);
  sub_237B0E848();
  if (v1)
  {

    return 0;
  }

  else
  {
    v4 = v2;

    return v4;
  }
}

uint64_t sub_237B7122C()
{
  v0 = sub_237A2DE60();

  return v0;
}

uint64_t sub_237B7129C(double a1)
{
  if (sub_237B0F594(a1))
  {
    type metadata accessor for CMLFeatureValue();
    swift_allocObject();
    v1 = OUTLINED_FUNCTION_15_15();
    return sub_237A2E764(v1, 1);
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_57_4();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B71318(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = OUTLINED_FUNCTION_1_74(v7, v18);
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D730, &qword_237C148D8);
  if (swift_dynamicCast())
  {
    sub_237A1FCF0(v19, v21);
    v10 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_15_15();
    v14 = v13(v12, v10);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v14;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_2379F6DD8(v19, &qword_27DE9D738, &qword_237C148E0);
  v15 = sub_237B70DD4(a1, a2);
  v16 = sub_237B10560(*(v15 + 16), 1);
  if (v16)
  {

    type metadata accessor for CMLColumn();
    v14 = swift_allocObject();
    *(v14 + 16) = v16;
    return v14;
  }

  __break(1u);

  OUTLINED_FUNCTION_57_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Bool.init(from:)(uint64_t a1)
{
  v2 = *a1;
  if (!*(a1 + 16))
  {
    return v2 != 0;
  }

  sub_2379E8CE8(v2, *(a1 + 8), *(a1 + 16));
  return 2;
}

uint64_t Bool.dataValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_237B71590(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5_59(a1);
  sub_237B0ECCC(v3);
  if (v2)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_15_15();

    return v1 != 0;
  }
}

uint64_t sub_237B715F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(from:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_237B7162C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237B71590(a1);
  *a2 = result;
  return result;
}

void *_sSi8CreateMLE4fromSiSgAA11MLDataValueO_tcfC_0(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 16))
  {
    sub_2379E8CE8(result, *(a1 + 8), *(a1 + 16));
    return 0;
  }

  return result;
}

uint64_t sub_237B716A0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_59(a1);
  v3 = sub_237B0ECCC(v2);
  if (v1)
  {

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

uint64_t sub_237B71704(uint64_t a1)
{
  if (sub_237B0F164(a1))
  {
    type metadata accessor for CMLFeatureValue();
    swift_allocObject();
    v1 = OUTLINED_FUNCTION_15_15();
    return sub_237A2E764(v1, 1);
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_57_4();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *Double.init(from:)(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 16) != 1)
  {
    sub_2379E8CE8(result, *(a1 + 8), *(a1 + 16));
    return 0;
  }

  return result;
}

uint64_t sub_237B7182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237B711BC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *String.init(from:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3 != 2)
  {
    sub_2379E8CE8(result, *(a1 + 8), v3);
    return 0;
  }

  return result;
}

void *sub_237B718B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = String.init(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237B718EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237B7122C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237B71914()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_237B70CDC();
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

uint64_t OUTLINED_FUNCTION_4_63(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_237B71A18(uint64_t a1@<X8>)
{
  v3 = v1;
  v162 = a1;
  v182 = sub_237C07B9C();
  v4 = OUTLINED_FUNCTION_0(v182);
  v163 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v9 - v8);
  v160 = sub_237C075DC();
  v10 = OUTLINED_FUNCTION_0(v160);
  v159 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v161 = (v15 - v14);
  v158 = sub_237C07CAC();
  v16 = OUTLINED_FUNCTION_0(v158);
  v156 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v21 - v20);
  v170 = sub_237C0818C();
  v22 = OUTLINED_FUNCTION_0(v170);
  v173 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  v169 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_21_3(&v145 - v28);
  v168 = sub_237C07CCC();
  v29 = OUTLINED_FUNCTION_0(v168);
  v172 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v164 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  OUTLINED_FUNCTION_21_3(&v145 - v37);
  v38 = sub_237C07F1C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v166 = v40;
  v167 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  v165 = v43;
  MEMORY[0x28223BE20](v44);
  v174 = &v145 - v45;
  v46 = sub_237C0596C();
  v47 = OUTLINED_FUNCTION_0(v46);
  v176 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_0();
  v53 = v52 - v51;
  v54 = sub_237C05C2C();
  v55 = OUTLINED_FUNCTION_0(v54);
  v175 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_0();
  v61 = v60 - v59;
  v179 = sub_237C05ADC();
  v62 = OUTLINED_FUNCTION_0(v179);
  v177 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  v171 = v66;
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v145 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = &v145 - v72;
  MEMORY[0x28223BE20](v71);
  v178 = &v145 - v74;
  v75 = *(v1 + 16);
  if (!v75)
  {
    goto LABEL_20;
  }

  v76 = sub_237AC68B4(v75, *(v3 + 24), *(v3 + 32));
  if (!v2)
  {
    v151 = v3;
    v150 = v75;
    v152 = v76;
    v77 = objc_opt_self();
    v78 = [v77 defaultManager];
    sub_2379F364C();

    v79 = [v77 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v80 = sub_237C05C0C();
    v149 = 0;
    v82 = v81;
    (*(v175 + 8))(v61, v54);
    v180 = v80;
    v181 = v82;
    v83 = v176;
    (*(v176 + 104))(v53, *MEMORY[0x277CC91D8], v46);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v83 + 8))(v53, v46);

    v84 = v177;
    v85 = v177 + 8;
    v86 = *(v177 + 8);
    v87 = v179;
    v86(v70, v179);
    v88 = v178;
    sub_237C05A3C();
    v86(v73, v87);
    v89 = _s5ModelVMa();
    v90 = v151 + *(v89 + 24);
    v91 = v149;
    sub_237C0745C();
    if (v91)
    {
      v86(v88, v87);
    }

    else
    {
      v92 = *(v84 + 16);
      v3 = v84 + 16;
      v75 = v171;
      v92(v171, v88, v87);
      sub_237C07D8C();
      v149 = 0;
      v93 = v154;
      sub_237A9AA94(v152, v154);
      v94 = v167;
      if (__swift_getEnumTagSinglePayload(v93, 1, v167) == 1)
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_237C07EBC();
      v95 = *(v166 + 8);
      v147 = v166 + 8;
      v146 = v95;
      v95(v93, v94);
      sub_237C07E9C();
      v96 = v151;
      v97 = *v151;
      v98 = v151[1];

      sub_237C07DEC();
      v171 = v97;
      v180 = v97;
      v181 = v98;
      v175 = v98;

      MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
      sub_237C07E2C();
      sub_237C085AC();
      sub_237C07EFC();
      v99 = v155;
      sub_237C07E3C();
      v75 = v99;
      v3 = v173;
      v70 = v170;
      v100 = (*(v173 + 88))(v99, v170);
      v101 = *MEMORY[0x277D25338];
      LODWORD(v176) = v100;
      v102 = v168;
      v103 = v164;
      if (v100 != v101)
      {
        while (1)
        {
          v144 = *(v3 + 8);
          v3 += 8;
          v144(v75, v70);
LABEL_20:
          sub_237C090DC();
          __break(1u);
        }
      }

      v148 = v86;
      v154 = v85;
      (*(v3 + 96))(v75, v70);
      (*(v172 + 32))(v103, v75, v102);
      v104 = v96 + *(v89 + 28);
      v105 = v104[8];
      v106 = v157;
      *v157 = *v104;
      v107 = *(v156 + 104);
      if (v105)
      {
        v107(v106, *MEMORY[0x277D25218], v158);

        sub_237C07CBC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v108 = OUTLINED_FUNCTION_7_34();
        OUTLINED_FUNCTION_10_33(v108, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0756C();
        v109 = *MEMORY[0x277D25130];
        v110 = OUTLINED_FUNCTION_5_41();
        v111(v110);

        OUTLINED_FUNCTION_8_33();
        v180 = v102;
        v181 = v103;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075CC();
      }

      else
      {
        v107(v106, *MEMORY[0x277D25210], v158);

        sub_237C07CBC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v112 = OUTLINED_FUNCTION_7_34();
        OUTLINED_FUNCTION_10_33(v112, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0751C();
        v113 = *MEMORY[0x277D25118];
        v114 = OUTLINED_FUNCTION_5_41();
        v115(v114);

        OUTLINED_FUNCTION_8_33();
        v180 = v102;
        v181 = v103;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075BC();
      }

      OUTLINED_FUNCTION_6_39();
      sub_237C07ECC();
      v116 = v169;
      (*(v172 + 16))(v169, v103, v102);
      v117 = v103;
      v118 = v173 + 104;
      v119 = v170;
      v161 = *(v173 + 104);
      v161(v116, v176, v170);
      sub_237C07E4C();
      sub_237C07F0C();
      sub_237C07E0C();
      v120 = *(v150 + 16);
      if (v120)
      {
        v173 = v118;
        v180 = MEMORY[0x277D84F90];
        v121 = v150;
        sub_237AC8CF4(0, v120, 0);
        v122 = v180;
        v123 = (v163 + 32);
        v176 = (v85 + 32) & ~v85;
        v124 = (v121 + 56);
        v125 = v153;
        do
        {
          v126 = *(v124 - 3);
          v127 = *(v124 - 2);
          v128 = *(v124 - 1);
          v129 = *v124;

          sub_237A1E09C(v128, v129);
          sub_237B991A4(v128, v129, v125);

          sub_237A1E0B0(v128, v129);
          v180 = v122;
          v131 = *(v122 + 16);
          v130 = *(v122 + 24);
          if (v131 >= v130 >> 1)
          {
            sub_237AC8CF4(v130 > 1, v131 + 1, 1);
            v122 = v180;
          }

          v124 += 32;
          *(v122 + 16) = v131 + 1;
          (*v123)(v122 + v176 + v177 * v131, v125, v182);
          --v120;
        }

        while (v120);
        v119 = v170;
        v132 = v164;
      }

      else
      {
        v132 = v117;
      }

      v133 = v165;
      sub_237C07E9C();
      v134 = v174;
      sub_237C07EBC();
      sub_237C07ECC();
      v135 = v171;
      v136 = v175;
      sub_237C07DEC();
      v180 = v135;
      v181 = v136;

      OUTLINED_FUNCTION_1_53();
      sub_237C07E2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
      v137 = v166;
      v138 = *(v166 + 72);
      v139 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_237C0B660;
      v141 = v167;
      (*(v137 + 16))(v140 + v139, v134, v167);
      v180 = v152;
      sub_237A969F0(v140);
      v142 = v169;
      sub_237C07D3C();
      v161(v142, *MEMORY[0x277D25368], v119);
      sub_237C07E4C();
      (*(v172 + 8))(v132, v168);
      v146(v134, v141);
      (*(v137 + 32))(v162, v133, v141);
      v143 = v178;
      sub_237A64C34();
      v148(v143, v179);
    }
  }
}

uint64_t sub_237B728DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C06EAC();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237B72978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06EAC();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s9RegressorVMa()
{
  result = qword_27DE9D740;
  if (!qword_27DE9D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B72A44()
{
  sub_2379FC328();
  if (v0 <= 0x3F)
  {
    sub_237C06EAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237B72B28@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(_s9RegressorVMa() + 28);
  v6 = *(_s5ModelVMa_2() + 24);

  result = sub_237C06E6C();
  *a1 = v4;
  a1[1] = v3;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

void sub_237B72B94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v62 = a3;
  v63 = a4;
  v9 = sub_237C06EAC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v66 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v64 = v15 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  v16 = OUTLINED_FUNCTION_0(v58);
  v65 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v59 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v25 = sub_237C0602C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v68 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  v34 = OUTLINED_FUNCTION_0(v33);
  v60 = v35;
  v61 = v34;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v34);
  v40 = &v56 - v39;
  if (a1[2])
  {
    v41 = a1[3];
    v42 = a1[4];
  }

  else
  {
    v57 = v9;
    v53 = v6[2];
    MEMORY[0x28223BE20](v38);
    *(&v56 - 2) = a2;
    v55 = sub_2379E22EC(sub_237A1DC7C, (&v56 - 4), v54);
    if (v5)
    {
      return;
    }

    a1[2] = v55;
    a1[3] = 0xD000000000000013;
    a1[4] = 0x8000000237C17BE0;
    v9 = v57;
  }

  sub_237A0D2FC();
  if (!v5)
  {
    v57 = v9;
    v43 = *v6;
    v44 = v6[1];
    sub_237C05DFC();
    sub_237B635F0();
    v46 = v45;
    v47 = v32;
    v48 = v46;
    (*(v68 + 8))(v47, v25);
    if (v48)
    {
      sub_237B0B0C8((v6 + 3), v67);
      sub_237A20BBC();
      sub_237C06C3C();
      v49 = v58;
      sub_237C06BEC();
      sub_237C06C1C();
      sub_237C06C2C();
      sub_237C06C0C();
      sub_237C06BFC();
      sub_237A68B6C(v67);
      v50 = v65;
      (*(v65 + 16))(v59, v24, v49);
      v51 = v64;
      sub_237C06E5C();
      v52 = *(_s5ModelVMa_2() + 24);
      sub_237C06E9C();

      (*(v66 + 8))(v51, v57);
      (*(v50 + 8))(v24, v49);
      (*(v60 + 8))(v40, v61);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_237B72FE8()
{
  v2 = *v0;
  v1 = v0[1];

  return sub_237C05FCC();
}

uint64_t sub_237B73044(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  v5 = sub_237C05FBC();
  v7 = v6;
  (*(*(v4 - 8) + 8))(a1, v4);
  v8 = v2[1];

  *v2 = v5;
  v2[1] = v7;
  return result;
}

uint64_t sub_237B730D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v157 = a4;
  v156 = a3;
  v159 = a2;
  v174 = a1;
  v153 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_21_3(&v134 - v8);
  v162 = sub_237C05DBC();
  v9 = OUTLINED_FUNCTION_0(v162);
  v155 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v14 - v13);
  v150 = sub_237C0707C();
  v15 = OUTLINED_FUNCTION_0(v150);
  v152 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v154 = (v19 - v20);
  v22 = MEMORY[0x28223BE20](v21);
  v149 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21_3(&v134 - v24);
  v163 = sub_237C06EAC();
  v25 = OUTLINED_FUNCTION_0(v163);
  v161 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v165 = v30 - v29;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  v31 = OUTLINED_FUNCTION_0(v164);
  v167 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v134 - v39;
  v41 = sub_237C0602C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v168 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_0();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  v50 = OUTLINED_FUNCTION_0(v49);
  v166 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18_0();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v134 - v58;
  v60 = v5[2];
  v171 = v174;
  v61 = v169;
  result = sub_2379E22EC(sub_237A20D00, v170, v60);
  if (!v61)
  {
    v143 = v37;
    v145 = v5;
    v146 = v48;
    v147 = v41;
    v142 = v56;
    v144 = v40;
    v148 = v49;
    v63 = result;
    sub_237A0D2FC();
    v169 = 0;
    v140 = v59;
    v138 = 0x8000000237C17BE0;
    v141 = v63;
    v64 = v145;
    v66 = *v145;
    v65 = v145[1];
    v67 = v146;
    OUTLINED_FUNCTION_12_42();
    sub_237B635F0();
    v69 = v68;
    v71 = v168 + 8;
    v70 = *(v168 + 8);
    v72 = v147;
    v70(v67, v147);
    v139 = v69;
    if (!v69)
    {
      OUTLINED_FUNCTION_13_34();
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_237C08EDC();
      OUTLINED_FUNCTION_8_43();
      OUTLINED_FUNCTION_12_42();
      sub_237C05FFC();
      v70(v67, v72);
      v86 = sub_237C094DC();
      MEMORY[0x2383DC360](v86);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_2379E8AF0();
      v87 = swift_allocError();
      OUTLINED_FUNCTION_6_57(v87, v88);
      return (*(v166 + 8))(v140, v148);
    }

    v135 = v70;
    v168 = v71;
    v136 = v66;
    v137 = v65;
    sub_237B0B0C8((v64 + 3), &v172);
    sub_237A20BBC();
    v73 = v144;
    sub_237C06C3C();
    v74 = v164;
    sub_237C06BEC();
    sub_237C06C1C();
    sub_237C06C2C();
    sub_237C06C0C();
    sub_237C06BFC();
    sub_237A68B6C(&v172);
    (*(v167 + 16))(v143, v73, v74);
    v75 = v165;
    sub_237C06E5C();
    v76 = v160;
    sub_237A2AA5C(v159, v160);
    v77 = v162;
    if (__swift_getEnumTagSinglePayload(v76, 1, v162) == 1)
    {
      sub_237B74398(v76);
      v78 = v154;
      v79 = v169;
      sub_237C06E8C();
      v80 = v163;
      if (v79)
      {

        OUTLINED_FUNCTION_13_34();
        OUTLINED_FUNCTION_3_74();
        v81(v75, v80);
        v82 = OUTLINED_FUNCTION_11_44();
        v83(v82);
        v84 = OUTLINED_FUNCTION_10_42();
        return v85(v84);
      }

      OUTLINED_FUNCTION_3_74();
      v98(v75, v80);
      v99 = OUTLINED_FUNCTION_11_44();
      v100(v99);
      v101 = OUTLINED_FUNCTION_10_42();
      v102(v101);
      v103 = v78;
      goto LABEL_10;
    }

    v89 = v155;
    v90 = v158;
    (*(v155 + 32))(v158, v76, v77);
    v91 = v169;
    sub_237A0D2FC();
    v92 = v166;
    v93 = v148;
    v94 = v163;
    if (v91)
    {

      (*(v89 + 8))(v90, v77);
      OUTLINED_FUNCTION_3_74();
      v95(v165, v94);
      v96 = OUTLINED_FUNCTION_2_72();
      v97(v96, v74);
      return (*(v92 + 8))(v140, v93);
    }

    v110 = v146;
    sub_237C05DFC();
    sub_237B635F0();
    v112 = v111;
    v113 = v147;
    v114 = v135;
    v135(v110, v147);
    if (v112)
    {
      v115 = v149;
      v116 = v142;
      v117 = v165;
      sub_237C06E7C();

      v126 = *(v166 + 8);
      v127 = v115;
      v128 = v148;
      v126(v116, v148);
      v129 = OUTLINED_FUNCTION_9_46();
      v130(v129);
      OUTLINED_FUNCTION_3_74();
      v131(v117, v163);
      v132 = OUTLINED_FUNCTION_2_72();
      v133(v132, v164);
      v126(v140, v128);
      v103 = v127;
LABEL_10:
      v104 = *(v152 + 32);
      v105 = v151;
      v106 = v150;
      v104(v151, v103, v150);
      v107 = _s5ModelVMa_2();
      v108 = v153;
      v104(v153 + *(v107 + 24), v105, v106);
      v109 = v137;
      *v108 = v136;
      v108[1] = v109;
      v108[2] = v141;
      v108[3] = 0xD000000000000013;
      v108[4] = v138;
    }

    v118 = v161;

    OUTLINED_FUNCTION_13_34();
    v172 = 0;
    v173 = 0xE000000000000000;
    sub_237C08EDC();
    OUTLINED_FUNCTION_8_43();
    sub_237C05DFC();
    sub_237C05FFC();
    v114(v110, v113);
    v119 = sub_237C094DC();
    MEMORY[0x2383DC360](v119);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    v120 = swift_allocError();
    OUTLINED_FUNCTION_6_57(v120, v121);
    v122 = *(v166 + 8);
    v123 = v148;
    v122(v142, v148);
    (*(v89 + 8))(v90, v162);
    (*(v118 + 8))(v165, v163);
    v124 = OUTLINED_FUNCTION_2_72();
    v125(v124, v164);
    return (v122)(v140, v123);
  }

  return result;
}

uint64_t sub_237B73D54(uint64_t a1, uint64_t a2)
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
    v6 = *(_s5ModelVMa_2() + 24);
    v7 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_237C0707C();
    OUTLINED_FUNCTION_4_64();
    sub_237B74350(v8, v9);
    return sub_237C06CAC();
  }

  return result;
}

uint64_t sub_237B73E74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_237C0707C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v20 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v25 = v11 - v10;
  v12 = *v2;
  v13 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C168, &unk_237C0F9E8);
  v14 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_237A96630(&qword_27DE9C1A0);

  sub_237C06C9C();
  if (v3)
  {
  }

  v15 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OUTLINED_FUNCTION_4_64();
  sub_237B74350(v16, v17);
  sub_237C06C9C();
  *a2 = v12;
  *(a2 + 1) = v13;
  *(a2 + 2) = v22;
  *(a2 + 3) = v23;
  *(a2 + 4) = v24;
  v18 = _s5ModelVMa_2();
  return (*(v20 + 32))(&a2[*(v18 + 24)], v25, v5);
}

void (*sub_237B74094(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = *v1;
  v3[5] = v1[1];

  sub_237C05FCC();
  return sub_237A0D94C;
}

uint64_t sub_237B741A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237B730D8(a2, a3, a4, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237B742A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237B72B94(a1, a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_237B74350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237B74398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_57(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_8_43()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_9_46()
{
  v2 = *(v0 + 8);
  result = *(v1 - 288);
  v4 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_42()
{

  return sub_237C05DFC();
}

uint64_t OUTLINED_FUNCTION_13_34()
{
  v2 = *(v0 - 424);
}

void sub_237B74500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v5 = sub_237AFFB0C(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v28 + 16);
        v12 = *(v28 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_237AC8A74();
        }

        *(v28 + 16) = v13 + 1;
        v14 = v28 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_2379E8FD0(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_2379E8FD0(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_237B74738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_237AC8E14();
    v4 = sub_237AFFB0C(a1);
    v5 = a1;
    v6 = 0;
    v7 = a1 + 64;
    v21 = v1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v5 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v5 + 36) != v2)
        {
          goto LABEL_24;
        }

        v22 = v3;
        v23 = v2;
        v9 = *(*(v5 + 56) + 8 * v4);
        v11 = *(v24 + 16);
        v10 = *(v24 + 24);

        if (v11 >= v10 >> 1)
        {
          sub_237AC8E14();
        }

        *(v24 + 16) = v11 + 1;
        *(v24 + 8 * v11 + 32) = v9;
        v12 = 1 << *(v5 + 32);
        if (v4 >= v12)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v13 = *(a1 + 64 + 8 * v8);
        if ((v13 & (1 << v4)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v23)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v4 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v8 << 6;
          v16 = v8 + 1;
          v17 = (a1 + 72 + 8 * v8);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              sub_2379E8FD0(v4, v23, v22 & 1);
              v5 = a1;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          sub_2379E8FD0(v4, v23, v22 & 1);
          v5 = a1;
        }

LABEL_18:
        if (++v6 == v21)
        {
          return;
        }

        v3 = 0;
        v2 = *(v5 + 36);
        v4 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_237B74974()
{
  OUTLINED_FUNCTION_74();
  v1 = sub_237C05ADC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_237ABF5E0();
  if (!v0)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 1937335659;
    *(inited + 40) = 0xE400000000000000;

    sub_237B74500(v13);
    v15 = v14;

    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    v16 = sub_237A35F1C(&qword_27DE9B528, &qword_27DE9AE60, &qword_237C0D000);
    *(inited + 48) = v15;
    *(inited + 80) = v16;
    *(inited + 88) = 0x7365756C6176;
    *(inited + 96) = 0xE600000000000000;
    sub_237B74738(v11);
    v18 = v17;

    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D780, &unk_237C14AC0);
    *(inited + 136) = sub_237B7BC04();
    *(inited + 104) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
    v19 = sub_237C085AC();
    MLDataTable.init(dictionary:)(v19, &v25);
    v20 = v25;
    v21 = v26;
    sub_237C05A2C();
    MLDataTable.write(to:)(v9);
    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_58_0();
    v24(v23);
    sub_2379DBC9C(v20, v21);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t (*sub_237B74BD0())()
{
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

void sub_237B74C2C()
{
  OUTLINED_FUNCTION_74();
  v35 = v2;
  v3 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v4 = _s20PersistentParametersVMa();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_82_6(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v6 = MEMORY[0x277D84F90];
  v34[0] = MEMORY[0x277D84F90];
  *(inited + 48) = sub_237BBDC94(sub_2379F56B8);
  *(inited + 56) = v7 & 1;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v34[0] = v6;
  *(inited + 80) = sub_237BBDC94(sub_2379F5678);
  *(inited + 88) = v8 & 1;
  OUTLINED_FUNCTION_77_2();
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = v9;
  v34[0] = v6;
  *(inited + 112) = sub_237BBDC94(sub_2379F5698);
  *(inited + 120) = v10 & 1;
  OUTLINED_FUNCTION_23_31();
  *(inited + 128) = v11;
  *(inited + 136) = 0xE900000000000068;
  v34[0] = v6;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v12 & 1;
  v13 = sub_237C085AC();
  sub_237B6CB9C(v13, v34);
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    v14 = swift_initStackObject();
    v15 = OUTLINED_FUNCTION_65_3(v14, xmmword_237C0BC00);
    v15[2].n128_u64[0] = v16;
    v15[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_17_14();
    *(v18 - 16) = v34;
    v14[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v14[3].n128_u8[8] = v19 & 1;
    OUTLINED_FUNCTION_59_4();
    v14[4].n128_u64[0] = v20;
    v14[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v21);
    OUTLINED_FUNCTION_17_14();
    *(v22 - 16) = v34;
    v14[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v14[5].n128_u8[8] = v23 & 1;
    OUTLINED_FUNCTION_48_7();
    v14[6].n128_u64[0] = v24;
    OUTLINED_FUNCTION_77_2();
    v14[6].n128_u64[1] = v25;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v26);
    OUTLINED_FUNCTION_17_14();
    *(v27 - 16) = v34;
    v14[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v14[7].n128_u8[8] = v28 & 1;
    OUTLINED_FUNCTION_23_31();
    v14[8].n128_u64[0] = v29;
    v14[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_17_14();
    *(v31 - 16) = v34;
    v14[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v14[9].n128_u8[8] = v32 & 1;
    v33 = sub_237C085AC();
    sub_237B6CB9C(v33, v34);
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
    sub_237B7C07C(v35, v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    OUTLINED_FUNCTION_73();
  }
}

void sub_237B75084()
{
  OUTLINED_FUNCTION_37_8();
  v409 = v1;
  v410 = v2;
  v402 = v3;
  v408 = v4;
  v383 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v5 = OUTLINED_FUNCTION_4(v383);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v384 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v387 = v12;
  v388 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v386 = &v379 - v16;
  OUTLINED_FUNCTION_41_0();
  v17 = sub_237C0602C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v392 = v19;
  v393 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v385 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_58();
  v391 = v24;
  OUTLINED_FUNCTION_41_0();
  v397 = sub_237C05DBC();
  v25 = OUTLINED_FUNCTION_0(v397);
  v394 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  v390 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  v396 = v31;
  OUTLINED_FUNCTION_41_0();
  v405 = type metadata accessor for MLHandActionClassifier.DataSource();
  v32 = OUTLINED_FUNCTION_4(v405);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  v395 = v35;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  v401 = v37;
  v38 = OUTLINED_FUNCTION_41_0();
  v406 = type metadata accessor for MLHandActionClassifier.ModelParameters(v38);
  v39 = OUTLINED_FUNCTION_4(v406);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v400 = (v43 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  v49 = &v379 - v48;
  v50 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v51 = _s20PersistentParametersVMa();
  v404 = v50;
  v407 = v51;
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
  OUTLINED_FUNCTION_82_6(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  v403 = xmmword_237C0BC00;
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v53 = MEMORY[0x277D84F90];
  v419 = MEMORY[0x277D84F90];
  v414 = &v419;
  *(inited + 48) = sub_237BBDC94(sub_237A8D200);
  *(inited + 56) = v54 & 1;
  OUTLINED_FUNCTION_59_4();
  *(inited + 64) = v55;
  *(inited + 72) = v56;
  v419 = v53;
  v413 = &v419;
  *(inited + 80) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 88) = v57 & 1;
  OUTLINED_FUNCTION_48_7();
  *(inited + 96) = v58;
  OUTLINED_FUNCTION_77_2();
  *(inited + 104) = v59;
  v419 = v53;
  v412 = &v419;
  *(inited + 112) = sub_237BBDC94(sub_237A8D218);
  *(inited + 120) = v60 & 1;
  OUTLINED_FUNCTION_23_31();
  *(inited + 128) = v61;
  *(inited + 136) = 0xE900000000000068;
  v419 = v53;
  v411 = &v419;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v62 & 1;
  v63 = sub_237C085AC();
  v64 = v409;
  sub_237B6CB9C(v63, &v419);
  if (!v64)
  {
    OUTLINED_FUNCTION_85_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    v398 = v65;
    *(v65 + 8) = v66;
    v67 = swift_initStackObject();
    v68 = OUTLINED_FUNCTION_65_3(v67, v403);
    v68[2].n128_u64[0] = v69;
    v68[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v70);
    OUTLINED_FUNCTION_17_14();
    *(v71 - 16) = &v419;
    v67[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v67[3].n128_u8[8] = v72 & 1;
    OUTLINED_FUNCTION_59_4();
    v67[4].n128_u64[0] = v73;
    v67[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v74);
    OUTLINED_FUNCTION_17_14();
    *(v75 - 16) = &v419;
    v67[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v67[5].n128_u8[8] = v76 & 1;
    OUTLINED_FUNCTION_48_7();
    v67[6].n128_u64[0] = v77;
    OUTLINED_FUNCTION_77_2();
    v67[6].n128_u64[1] = v78;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v79);
    OUTLINED_FUNCTION_17_14();
    *(v80 - 16) = &v419;
    v67[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v67[7].n128_u8[8] = v81 & 1;
    OUTLINED_FUNCTION_23_31();
    v67[8].n128_u64[0] = v82;
    v67[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_90_5();
    MEMORY[0x28223BE20](v83);
    OUTLINED_FUNCTION_17_14();
    *(v84 - 16) = &v419;
    v67[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v67[9].n128_u8[8] = v85 & 1;
    v86 = sub_237C085AC();
    sub_237B6CB9C(v86, &v419);
    v409 = 0;
    OUTLINED_FUNCTION_85_4(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
    v382 = v87;
    *(v87 + 8) = v88;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
    v389 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
    v403.n128_u64[0] = v0;
    *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_6_58();
    v399 = v89;
    v90 = v408;
    v91 = OUTLINED_FUNCTION_42_9();
    sub_237B7C0D8(v91, v92, v93);
    OUTLINED_FUNCTION_13_35();
    v94 = v400;
    sub_237B7C0D8(v410, v400, v95);
    v96 = v407;
    v98 = v407[7];
    v97 = v407[8];
    v99 = v407[9];
    v100 = v407[5];
    v101 = v407[6];
    OUTLINED_FUNCTION_8_44();
    sub_237B7C0D8(v94, &v49[v102], v103);
    v104 = v406;
    *&v49[v101] = *(v94 + v406[5]);
    *&v49[v97] = *(v94 + v104[7]);
    *&v49[v98] = *(v94 + v104[6]);
    *&v49[v96[10]] = *(v94 + v104[8]);
    v105 = *(v94 + v104[10]);
    OUTLINED_FUNCTION_0_79();
    sub_237B7C134(v94, v106);
    *&v49[v99] = v105;
    OUTLINED_FUNCTION_32_13();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
    v111 = v404;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237B7BB94(v49, v111);
    swift_endAccess();
    v112 = v401;
    sub_237B7C0D8(v90, v401, v399);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v113 = *v112;
      v114 = *(v112 + 8);
      v115 = *(v112 + 16);
      v116 = *(v112 + 24);
      v117 = *(v112 + 40);
      v397 = *(v112 + 32);
      v399 = v115;
      v400 = v117;
      v119 = *(v112 + 48);
      v118 = *(v112 + 56);
      v120 = v398;
      OUTLINED_FUNCTION_55_5();
      v121 = *v120;
      v122 = *(v120 + 8);
      *v120 = v113;
      *(v120 + 8) = v114;
      sub_2379DBCF4(v113, v114);
      sub_2379DBC9C(v121, v122);
      OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v123 = v409;
      sub_237ACECE8(v120, v119, v118);
      if (v123)
      {
        swift_endAccess();

        sub_2379DBC9C(v113, v114);
        OUTLINED_FUNCTION_3_75();
        sub_237B7C134(v402, v124);
        OUTLINED_FUNCTION_0_79();
        sub_237B7C134(v410, v125);
        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v408, v126);
        v127 = v403.n128_u64[0];
LABEL_32:
        sub_2379D9054(v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9C938, &unk_237C14AB0);
        v248 = OUTLINED_FUNCTION_56_5((v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable));
        sub_2379DBC84(v248, v249);
        v250 = OUTLINED_FUNCTION_56_5((v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures));
        sub_2379DBC9C(v250, v251);
        v252 = OUTLINED_FUNCTION_56_5((v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures));
        sub_2379DBC9C(v252, v253);
        v254 = *(v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);

        v255 = *(v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);

        v256 = *(v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

        type metadata accessor for HandActionClassifierTrainingSessionDelegate();
        v257 = *(*v127 + 48);
        v258 = *(*v127 + 52);
        swift_deallocPartialClassInstance();
LABEL_33:
        OUTLINED_FUNCTION_38_8();
        return;
      }

      v395 = v113;
      LODWORD(v396) = v114;
      swift_endAccess();
      OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v401 = v118;
      v160 = *(v120 + 8);
      v417 = *v120;
      v159 = v417;
      v418 = v160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v161 = swift_initStackObject();
      *(v161 + 16) = xmmword_237C0B680;
      *(v161 + 32) = v399;
      *(v161 + 40) = v116;
      v394 = v119;
      v162 = v401;
      *(v161 + 48) = v119;
      *(v161 + 56) = v162;
      v163 = v400;
      *(v161 + 64) = v397;
      *(v161 + 72) = v163;
      sub_2379DBCF4(v159, v160);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      v127 = v403.n128_u64[0];
      v409 = 0;
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_108_1();
      sub_237B6C670(v178, v179, v180, v181, v182, v183, v184, v185, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
      OUTLINED_FUNCTION_31_8();
      if ((*(v120 + 8) & 1) == 0)
      {
        v194 = *v120;
        v195 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v195, v196);
        sub_237B6C588();
        v197 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v197, v198);
      }

      sub_237B6C670(v186, v187, v188, v189, v190, v191, v192, v193, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
      OUTLINED_FUNCTION_30_10();
      if ((*(v120 + 8) & 1) == 0)
      {
        v207 = *v120;
        v208 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v208, v209);
        sub_237B6C588();
        v210 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v210, v211);
      }

      sub_237B6C670(v199, v200, v201, v202, v203, v204, v205, v206, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
      sub_237B6DAB4();
      v171 = v389;
      v111 = v404;
      if ((*(v120 + 8) & 1) == 0)
      {
        v212 = *v120;
        v213 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v213, v214);
        sub_237B6C588();
        v215 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v215, v216);
      }

      swift_endAccess();

      OUTLINED_FUNCTION_77_5();
      swift_beginAccess();
      sub_2379DF938(*v120, *(v120 + 8), &v417);
      swift_endAccess();
      v217 = OUTLINED_FUNCTION_84();
      sub_2379DFAE0(v217, v218, v219);
      v220 = OUTLINED_FUNCTION_84();
      sub_2379DBC9C(v220, v221);
      v169 = sub_2379DFC10(v419, v420);
      sub_2379DBC9C(v395, v396);
      v90 = v408;
      v170 = v402;
    }

    else
    {
      OUTLINED_FUNCTION_1_75();
      sub_237B7C134(v112, v128);
      OUTLINED_FUNCTION_6_58();
      v129 = v395;
      sub_237B7C0D8(v90, v395, v130);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v132 = v409;
      if (EnumCaseMultiPayload != 5)
      {
        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v129, v154);
        sub_237AB4184();
        v127 = v403.n128_u64[0];
        if (v132)
        {
          OUTLINED_FUNCTION_3_75();
          sub_237B7C134(v402, v156);
          OUTLINED_FUNCTION_0_79();
          sub_237B7C134(v410, v157);
          OUTLINED_FUNCTION_1_75();
          sub_237B7C134(v90, v158);
          goto LABEL_32;
        }

        v169 = sub_2379DFFEC(v155);
        v170 = v402;
        v171 = v389;
LABEL_25:
        v222 = *(v127 + v171);
        *(v127 + v171) = v169;

        v223 = v407;
        if (__swift_getEnumTagSinglePayload(v111, 1, v407))
        {
          goto LABEL_36;
        }

        v224 = v223[5];
        OUTLINED_FUNCTION_8_44();
        v226 = v384;
        sub_237B7C0D8(v111 + v225, v384, v227);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v228 = *v226;
            v229 = v226[8];
            v230 = *(v226 + 2);
            v407 = *(v226 + 3);
            v231 = *(v226 + 5);
            v404 = *(v226 + 4);
            v405 = v230;
            v409 = v231;
            v233 = *(v226 + 6);
            v232 = *(v226 + 7);
            v234 = v382;
            OUTLINED_FUNCTION_55_5();
            v235 = *v234;
            v236 = *(v234 + 8);
            *v234 = v228;
            *(v234 + 8) = v229;
            v237 = OUTLINED_FUNCTION_11_43();
            sub_2379DBCF4(v237, v238);
            sub_2379DBC9C(v235, v236);
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            v239 = OUTLINED_FUNCTION_42_9();
            sub_237ACECE8(v239, v240, v232);
            if (v132)
            {
              swift_endAccess();

              v241 = OUTLINED_FUNCTION_11_43();
              sub_2379DBC9C(v241, v333);
              OUTLINED_FUNCTION_3_75();
              sub_237B7C134(v402, v334);
              OUTLINED_FUNCTION_0_79();
              sub_237B7C134(v410, v335);
              OUTLINED_FUNCTION_1_75();
              sub_237B7C134(v408, v336);
              v127 = v403.n128_u64[0];
              goto LABEL_32;
            }

            v400 = v228;
            LODWORD(v401) = v229;
            swift_endAccess();
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            v326 = *(v234 + 8);
            v415 = *v234;
            v416 = v326;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
            v327 = swift_initStackObject();
            *(v327 + 16) = xmmword_237C0B680;
            v328 = v404;
            v329 = v407;
            *(v327 + 32) = v405;
            *(v327 + 40) = v329;
            *(v327 + 48) = v233;
            *(v327 + 56) = v232;
            v330 = v409;
            *(v327 + 64) = v328;
            *(v327 + 72) = v330;
            v331 = OUTLINED_FUNCTION_11_43();
            sub_2379DBCF4(v331, v332);

            OUTLINED_FUNCTION_19_15();
            sub_2379F2B84();
            swift_setDeallocating();
            sub_237B9082C();
            sub_2379DBC9C(v415, v416);
            v337 = v382;
            sub_237B6C670(v338, v339, v340, v341, v342, v343, v344, v345, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
            OUTLINED_FUNCTION_31_8();
            v354 = v337;
            v355 = v400;
            if ((*(v337 + 8) & 1) == 0)
            {
              v356 = *v337;
              v357 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v357, v358);
              sub_237B6C588();
              v359 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v359, v360);
            }

            sub_237B6C670(v346, v347, v348, v349, v350, v351, v352, v353, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
            OUTLINED_FUNCTION_30_10();
            if ((*(v354 + 8) & 1) == 0)
            {
              v369 = *v354;
              v370 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v370, v371);
              sub_237B6C588();
              v372 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v372, v373);
            }

            sub_237B6C670(v361, v362, v363, v364, v365, v366, v367, v368, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
            OUTLINED_FUNCTION_87_2();
            v171 = v389;
            if ((*(v354 + 8) & 1) == 0)
            {
              v374 = *v354;
              v375 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v375, v376);
              sub_237B6C588();
              v377 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v377, v378);
            }

            swift_endAccess();

            sub_2379DBC9C(v355, v401);
            v170 = v402;
            v127 = v403.n128_u64[0];
            v90 = v408;
LABEL_36:
            sub_237B7C0D8(v170, v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
            if (*(v127 + v171))
            {
              v259 = v90;
              v260 = v410;
              v261 = *(v410 + v406[7]);
              v262 = _s8GraphCNNCMa(0);
              v263 = *(v262 + 48);
              v264 = *(v262 + 52);
              swift_allocObject();

              v266 = sub_237AED020(v265, 0, 21, 3, v261);
              OUTLINED_FUNCTION_3_75();
              sub_237B7C134(v170, v267);
              OUTLINED_FUNCTION_0_79();
              sub_237B7C134(v260, v268);
              OUTLINED_FUNCTION_1_75();
              sub_237B7C134(v259, v269);
              v270 = *(v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
              *(v127 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v266;
            }

            else
            {
              OUTLINED_FUNCTION_68_2();
              v271 = OUTLINED_FUNCTION_6_2();
              *v272 = 0xD00000000000003DLL;
              v272[1] = 0;
              OUTLINED_FUNCTION_52(v271, v272);
              OUTLINED_FUNCTION_3_75();
              sub_237B7C134(v170, v273);
              OUTLINED_FUNCTION_0_79();
              sub_237B7C134(v410, v274);
              OUTLINED_FUNCTION_1_75();
              sub_237B7C134(v90, v275);
            }

            goto LABEL_33;
          }

          v242 = type metadata accessor for MLHandActionClassifier.DataSource;
        }

        else
        {
          v242 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData;
        }

        sub_237B7C134(v226, v242);
        goto LABEL_36;
      }

      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v134 = &v129[v133[12]];
      v135 = *v134;
      v401 = v134[1];
      v136 = &v129[v133[16]];
      v137 = *v136;
      v138 = v136[1];
      v380 = v135;
      v381 = v137;
      v139 = &v129[v133[20]];
      v140 = *v139;
      v141 = *(v139 + 1);
      v142 = v394;
      v143 = v396;
      (*(v394 + 32))(v396, v129, v397);
      v144 = v391;
      sub_237C05DFC();
      v145 = sub_237C05FFC();
      (*(v392 + 8))(v144, v393);
      v127 = v403.n128_u64[0];
      v400 = v138;
      if (v145 == MEMORY[0x277D837D0])
      {
        v164 = v386;
        sub_237C05DEC();
        v165 = v409;
        sub_237B62FE0(v385);
        v409 = v165;
        if (v165)
        {

          OUTLINED_FUNCTION_3_75();
          sub_237B7C134(v402, v166);
          OUTLINED_FUNCTION_0_79();
          sub_237B7C134(v410, v167);
          OUTLINED_FUNCTION_1_75();
          sub_237B7C134(v408, v168);
          (*(v387 + 8))(v164, v388);
          (*(v142 + 8))(v143, v397);
          goto LABEL_32;
        }

        (*(v387 + 8))(v164, v388);

        v399 = v140;
        v146 = v141;
        sub_237C05E0C();
      }

      else
      {
        v399 = v140;
        v146 = v141;
      }

      v147 = v390;
      v148 = v396;
      v149 = v397;
      (*(v142 + 16))(v390, v396, v397);
      v150 = v409;
      sub_237A70684(v147, 0, &v419);
      if (v150)
      {

        OUTLINED_FUNCTION_3_75();
        sub_237B7C134(v402, v151);
        OUTLINED_FUNCTION_0_79();
        sub_237B7C134(v410, v152);
        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v408, v153);
        (*(v142 + 8))(v148, v149);
        goto LABEL_32;
      }

      v172 = v419;
      v173 = v420;
      v174 = v398;
      OUTLINED_FUNCTION_55_5();
      v175 = *v174;
      v176 = *(v174 + 8);
      *v174 = v172;
      *(v174 + 8) = v173;
      sub_2379DBC9C(v175, v176);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v177 = v399;
      sub_237ACECE8(v174, v399, v146);
      swift_endAccess();
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v244 = *(v174 + 8);
      v417 = *v174;
      v243 = v417;
      v418 = v244;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v245 = swift_initStackObject();
      *(v245 + 16) = xmmword_237C0B680;
      v246 = v401;
      *(v245 + 32) = v380;
      *(v245 + 40) = v246;
      *(v245 + 48) = v177;
      *(v245 + 56) = v146;
      v399 = v177;
      v247 = v400;
      *(v245 + 64) = v381;
      *(v245 + 72) = v247;

      sub_2379DBCF4(v243, v244);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      v409 = 0;
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_108_1();
      sub_237B6C670(v276, v277, v278, v279, v280, v281, v282, v283, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
      OUTLINED_FUNCTION_31_8();
      v292 = v397;
      if ((*(v174 + 8) & 1) == 0)
      {
        v293 = *v174;
        v294 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v294, v295);
        sub_237B6C588();
        v296 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v296, v297);
      }

      sub_237B6C670(v284, v285, v286, v287, v288, v289, v290, v291, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
      OUTLINED_FUNCTION_30_10();
      if ((*(v174 + 8) & 1) == 0)
      {
        v306 = *v174;
        v307 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v307, v308);
        sub_237B6C588();
        v309 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v309, v310);
      }

      sub_237B6C670(v298, v299, v300, v301, v302, v303, v304, v305, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398);
      OUTLINED_FUNCTION_87_2();
      if ((*(v174 + 8) & 1) == 0)
      {
        v311 = *v174;
        v312 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v312, v313);
        sub_237B6C588();
        v314 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v314, v315);
      }

      swift_endAccess();

      OUTLINED_FUNCTION_77_5();
      swift_beginAccess();
      v316 = *v174;
      v317 = *(v174 + 8);
      OUTLINED_FUNCTION_45_3();
      sub_2379DF938(v318, v319, v320);
      swift_endAccess();
      v321 = OUTLINED_FUNCTION_84();
      sub_2379DFAE0(v321, v322, v323);
      v324 = OUTLINED_FUNCTION_84();
      sub_2379DBC9C(v324, v325);
      v169 = sub_2379DFC10(v419, v420);
      (*(v394 + 8))(v396, v292);
      v90 = v408;
      v170 = v402;
      v171 = v389;
      v111 = v404;
    }

    v132 = v409;
    goto LABEL_25;
  }

  swift_unexpectedError();
  __break(1u);
}

void sub_237B7674C(uint64_t a1)
{
  v3 = v1;
  v4 = a1 + *(_s20PersistentParametersVMa() + 20);
  sub_237A2764C(&v37, &v39);
  if (!v2)
  {
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
    if (v38 == 255)
    {
      if (v40 != 255)
      {
        v22 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v23 = *v22;
        *v22 = v7;
        v24 = *(v22 + 8);
        *(v22 + 8) = v8;
        sub_2379DBCF4(v7, v8 & 1);
        sub_2379DBC84(v23, v24);
        *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_11:
        v41 = v7;
        v42 = v8 & 1;
        sub_2379DBCF4(v7, v8 & 1);
        v28 = MLDataTable.size.getter();
        v29 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v29, v30);
        v31 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v31, v32);
        v33 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v33, v34);
LABEL_14:
        *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = v28;
        return;
      }

      *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      if (v40 == 255)
      {
        v25 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v26 = *v25;
        *v25 = v5;
        v27 = *(v25 + 8);
        *(v25 + 8) = v6;
        sub_2379DBCF4(v5, v6 & 1);
        v20 = v26;
        v21 = v27;
      }

      else
      {
        v9 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v10 = *v9;
        *v9 = v5;
        v11 = *(v9 + 8);
        *(v9 + 8) = v6 & 1;
        sub_2379DBCF4(v5, v6 & 1);
        v12 = OUTLINED_FUNCTION_63_3();
        sub_2379DBCDC(v12, v13);
        v14 = OUTLINED_FUNCTION_75_3();
        sub_2379DBCDC(v14, v15);
        sub_2379DBC84(v10, v11);
        v16 = sub_237B74BD0();
        if (*(v17 + 8) != 255)
        {
          v41 = v7;
          v42 = v8 & 1;
          MLDataTable.append(contentsOf:)();
        }

        (v16)(&v37, 0);
        v18 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v18, v19);
        v20 = OUTLINED_FUNCTION_75_3();
      }

      sub_2379DBC84(v20, v21);
      v41 = v5;
      v42 = v6 & 1;
      *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = MLDataTable.size.getter();
      if (v8 != 255)
      {
        goto LABEL_11;
      }
    }

    v35 = OUTLINED_FUNCTION_63_3();
    sub_2379DBC84(v35, v36);
    v28 = 0;
    goto LABEL_14;
  }
}

uint64_t sub_237B769A8()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_106_2();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_5();
  v11 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v11, v1, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_73_1(v1, 1, v7);
  if (v12)
  {
    result = sub_2379D9054(v1, &qword_27DE9C938, &unk_237C14AB0);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_4_65();
    v13 = OUTLINED_FUNCTION_32_3();
    sub_237B7C07C(v13, v14, v15);
    sub_237B7674C(v2);
    OUTLINED_FUNCTION_2_73();
    return sub_237B7C134(v2, v16);
  }

  return result;
}

void sub_237B76AE4()
{
  OUTLINED_FUNCTION_74();
  v129 = v1;
  v132 = v2;
  v3 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  v121 = v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  v123 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v125 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v128 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  v127 = v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74_7();
  v20 = type metadata accessor for MLCheckpoint();
  v21 = OUTLINED_FUNCTION_0(v20);
  v126 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v133 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v124 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_58();
  v131 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = &v118 - v34;
  v36 = _s20PersistentParametersVMa();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_0();
  v42 = v41 - v40;
  v43 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v130 = v0;
  sub_2379FC864(v0 + v43, v35, &qword_27DE9C938, &unk_237C14AB0);
  v122 = v36;
  OUTLINED_FUNCTION_73_1(v35, 1, v36);
  if (v44)
  {
    sub_2379D9054(v35, &qword_27DE9C938, &unk_237C14AB0);
    __break(1u);
    JUMPOUT(0x237B77798);
  }

  OUTLINED_FUNCTION_4_65();
  sub_237B7C07C(v35, v42, v45);
  sub_237A9A92C(v132, v0);
  OUTLINED_FUNCTION_73_1(v0, 1, v20);
  if (v44)
  {
    sub_2379D9054(v0, &qword_27DE9B8E8, &qword_237C0EBF0);
    OUTLINED_FUNCTION_68_2();
    v46 = OUTLINED_FUNCTION_6_2();
    *v47 = 0xD00000000000001DLL;
    v47[1] = v0;
    OUTLINED_FUNCTION_52(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_39_14();
    v48 = v131;
    sub_237B7C07C(v0, v131, v49);
    v50 = *(v20 + 20);
    v51 = v20;
    switch(*(v48 + v50))
    {
      case 1:
LABEL_12:

        goto LABEL_16;
      case 2:
        OUTLINED_FUNCTION_51_4();
        break;
      case 3:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_63_7();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_29_16();
    OUTLINED_FUNCTION_107_2();
    if (v20)
    {
      goto LABEL_16;
    }

    v52 = 0xEA0000000000676ELL;
    switch(*(v48 + v50))
    {
      case 1:
        break;
      case 2:
        goto LABEL_12;
      case 3:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_63_7();
        break;
      default:
        v52 = 0xEB0000000064657ALL;
        break;
    }

    OUTLINED_FUNCTION_57_0();
    sub_237C0929C();
    OUTLINED_FUNCTION_107_2();
    if (v20)
    {
LABEL_16:
      v120 = v50;
      v53 = v129;
      sub_237B7674C(v42);
      if (!v53)
      {
        switch(*(v48 + v120))
        {
          case 1:

            goto LABEL_23;
          case 3:
            OUTLINED_FUNCTION_158();
            break;
          case 4:
            OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_63_7();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_29_16();
        v56 = OUTLINED_FUNCTION_107_2();
        if (v20)
        {
LABEL_23:
          OUTLINED_FUNCTION_51_4();
          sub_237C05A2C();
          LOBYTE(v152) = 1;
          v153 = 44;
          v154 = 0xE100000000000000;
          v155 = 0;
          v156 = 0xE000000000000000;
          v157 = 92;
          v158 = 0xE100000000000000;
          v159 = 1;
          v160 = 34;
          v161 = 0xE100000000000000;
          v162 = 1;
          v163 = &unk_284ABEBF0;
          v164 = 10;
          v166 = 0;
          v167 = 0;
          v165 = 0xE100000000000000;
          v168 = 1;
          OUTLINED_FUNCTION_70_5();
          v119 = v42;
          v68 = v171;
          v69 = v172;
          v70 = v130 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
          OUTLINED_FUNCTION_46_5();
          v71 = OUTLINED_FUNCTION_93_2();
          *v70 = v68;
          *(v70 + 8) = v69;
          sub_2379DBC9C(v71, v72);
          OUTLINED_FUNCTION_49_0();
          v73 = v125;
          sub_237C05A2C();
          LOBYTE(v134) = 1;
          v135 = 44;
          v136 = 0xE100000000000000;
          v137 = 0;
          v138 = 0xE000000000000000;
          v139 = 92;
          v140 = 0xE100000000000000;
          v141 = 1;
          v142 = 34;
          v143 = 0xE100000000000000;
          v144 = 1;
          v145 = &unk_284ABEBF0;
          v146 = 10;
          v148 = 0;
          v149 = 0;
          v147 = 0xE100000000000000;
          v150 = 1;
          v151 = 0;
          MLDataTable.init(contentsOf:options:)(v73, &v134, &v169);
          v84 = v169;
          LOBYTE(v73) = v170;
          v85 = v130;
          v86 = v130 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
          OUTLINED_FUNCTION_46_5();
          v87 = OUTLINED_FUNCTION_93_2();
          *v86 = v84;
          *(v86 + 8) = v73;
          sub_2379DBC9C(v87, v88);
          v89 = v119;
        }

        else
        {
          v152 = v132;
          v60 = *(v132 + 16);
          v119 = v42;
          if (v60)
          {
            v61 = *(v126 + 72);
            v62 = v60 - 1;
            v63 = v132 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + v61 * (v60 - 1);
            v64 = -v61;
            while (2)
            {
              v65 = v133;
              sub_237B7C0D8(v63, v133, type metadata accessor for MLCheckpoint);
              switch(*(v65 + *(v51 + 20)))
              {
                case 1:
                  v75 = v51;

                  OUTLINED_FUNCTION_5_60();
                  v56 = sub_237B7C134(v133, v96);
                  v48 = v131;
                  v74 = v127;
                  goto LABEL_39;
                case 2:
                  OUTLINED_FUNCTION_51_4();
                  goto LABEL_33;
                case 3:
                  OUTLINED_FUNCTION_158();
                  goto LABEL_33;
                case 4:
                  OUTLINED_FUNCTION_60_0();
                  goto LABEL_33;
                default:
LABEL_33:
                  v66 = OUTLINED_FUNCTION_29_16();

                  OUTLINED_FUNCTION_5_60();
                  v56 = sub_237B7C134(v133, v67);
                  if (v66)
                  {
                    goto LABEL_36;
                  }

                  --v62;
                  v63 += v64;
                  if (v62 != -1)
                  {
                    continue;
                  }

                  v62 = 0;
LABEL_36:
                  v48 = v131;
                  break;
              }

              break;
            }
          }

          else
          {
            v62 = 0;
          }

          v74 = v127;
          v75 = v51;
LABEL_39:
          MEMORY[0x28223BE20](v56);
          *(&v118 - 2) = &v152;
          sub_237A9D3D4(sub_237A594BC, v62, v76 & 1, v74);
          OUTLINED_FUNCTION_73_1(v74, 1, v75);
          if (v44)
          {
            sub_2379D9054(v74, &qword_27DE9B8E8, &qword_237C0EBF0);
            v85 = v130;
            v77 = v130 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            OUTLINED_FUNCTION_71();
            swift_beginAccess();
            v78 = *(v77 + 8);
            v134 = *v77;
            LOBYTE(v135) = v78;
            v79 = MLDataTable.size.getter();
            v89 = v119;
            if (!v79)
            {
              OUTLINED_FUNCTION_68_2();
              v80 = OUTLINED_FUNCTION_6_2();
              *v81 = 0xD000000000000028;
              v81[1] = &v134;
              OUTLINED_FUNCTION_52(v80, v81);
LABEL_50:
              OUTLINED_FUNCTION_5_60();
              sub_237B7C134(v48, v117);
              OUTLINED_FUNCTION_2_73();
              v59 = v89;
              goto LABEL_26;
            }
          }

          else
          {
            OUTLINED_FUNCTION_39_14();
            v82 = v124;
            sub_237B7C07C(v74, v124, v83);
            OUTLINED_FUNCTION_51_4();
            sub_237C05A2C();
            LOBYTE(v152) = 1;
            v153 = 44;
            v154 = 0xE100000000000000;
            v155 = 0;
            v156 = 0xE000000000000000;
            v157 = 92;
            v158 = 0xE100000000000000;
            v159 = 1;
            v160 = 34;
            v161 = 0xE100000000000000;
            v162 = 1;
            v163 = &unk_284ABEBF0;
            v164 = 10;
            v166 = 0;
            v167 = 0;
            v165 = 0xE100000000000000;
            v168 = 1;
            OUTLINED_FUNCTION_70_5();
            v90 = v171;
            v91 = v172;
            v92 = v130 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            OUTLINED_FUNCTION_46_5();
            v93 = OUTLINED_FUNCTION_93_2();
            *v92 = v90;
            *(v92 + 8) = v91;
            sub_2379DBC9C(v93, v94);
            OUTLINED_FUNCTION_49_0();
            v95 = v121;
            sub_237C05A2C();
            LOBYTE(v134) = 1;
            v135 = 44;
            v136 = 0xE100000000000000;
            v137 = 0;
            v138 = 0xE000000000000000;
            v139 = 92;
            v140 = 0xE100000000000000;
            v141 = 1;
            v142 = 34;
            v143 = 0xE100000000000000;
            v144 = 1;
            v145 = &unk_284ABEBF0;
            v146 = 10;
            v148 = 0;
            v149 = 0;
            v147 = 0xE100000000000000;
            v150 = 1;
            v151 = 0;
            MLDataTable.init(contentsOf:options:)(v95, &v134, &v169);
            OUTLINED_FUNCTION_5_60();
            sub_237B7C134(v82, v97);
            v98 = v169;
            v99 = v170;
            v85 = v130;
            v100 = v130 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
            OUTLINED_FUNCTION_46_5();
            v101 = OUTLINED_FUNCTION_93_2();
            *v100 = v98;
            *(v100 + 8) = v99;
            sub_2379DBC9C(v101, v102);
            v89 = v119;
            v48 = v131;
          }
        }

        switch(*(v48 + v120))
        {
          case 2:

            goto LABEL_49;
          case 3:
            OUTLINED_FUNCTION_158();
            break;
          case 4:
            OUTLINED_FUNCTION_60_0();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_57_0();
        v103 = sub_237C0929C();

        if (v103)
        {
LABEL_49:
          v104 = v85 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
          OUTLINED_FUNCTION_71();
          swift_beginAccess();
          v105 = *v104;
          LOBYTE(v104) = *(v104 + 8);
          sub_2379DBCF4(v105, v104);
          OUTLINED_FUNCTION_45_3();
          sub_2379DF938(v105, v104, &v169);
          sub_2379DBC9C(v105, v104);
          v106 = v169;
          LOBYTE(v105) = v170;
          sub_2379DFAE0(v169, v170, &v171);
          sub_2379DBC9C(v106, v105);
          v107 = sub_2379DFC10(v171, v172);
          v108 = *(v85 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
          *(v85 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = v107;

          v109 = *(v89 + *(v122 + 32));
          v110 = _s8GraphCNNCMa(0);
          v111 = *(v110 + 48);
          v112 = *(v110 + 52);
          swift_allocObject();
          v113 = OUTLINED_FUNCTION_85();
          v115 = sub_237AED020(v113, v114, 21, 3, v109);
          v116 = *(v85 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
          *(v85 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v115;

          sub_237AE8BE0();
          sub_237BA9BC8();
        }

        goto LABEL_50;
      }
    }

    else
    {
      OUTLINED_FUNCTION_68_2();
      v54 = OUTLINED_FUNCTION_6_2();
      *v55 = 0xD00000000000003FLL;
      v55[1] = v52;
      OUTLINED_FUNCTION_52(v54, v55);
    }

    OUTLINED_FUNCTION_5_60();
    sub_237B7C134(v48, v57);
  }

  OUTLINED_FUNCTION_2_73();
  v59 = v42;
LABEL_26:
  sub_237B7C134(v59, v58);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B777FC(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 0;
  switch(v2)
  {
    case 1:
      v4 = (v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      if (*(v4 + 8) == 255)
      {
        result = 0;
      }

      else
      {
        v6 = *v4;
        result = MLDataTable.size.getter();
      }

      break;
    case 2:
      v5 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
      result = *(v5 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
      break;
    default:
      return result;
  }

  return result;
}

void sub_237B778D0()
{
  OUTLINED_FUNCTION_74();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_105_2();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v14 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v14, v0, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_73_1(v0, 1, v10);
  if (v15)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_4_65();
  sub_237B7C07C(v0, v2, v16);
  v17 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v18 = *(v17 + 8);
  if (v18 == 255)
  {
LABEL_12:
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v28);
LABEL_14:
    OUTLINED_FUNCTION_73();
    return;
  }

  v50 = *v17;
  v51 = v18 & 1;
  sub_2379DBCF4(v50, v18 & 1);
  MLDataTable.size.getter();
  if (v19 <= 0)
  {
    goto LABEL_13;
  }

  v20 = *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v21 = *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v0 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v0 <= v5)
  {
LABEL_13:
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v29);
    v30 = OUTLINED_FUNCTION_75_3();
    sub_2379DBC84(v30, v31);
    goto LABEL_14;
  }

  v47 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
  v48 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount;
  v22 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
  v23 = *(v22 + *(type metadata accessor for MLTrainingSessionParameters() + 20));
  v24 = __OFADD__(v5, v23);
  v25 = v5 + v23;
  v26 = v24;
  v27 = v5;
  if (v20 <= v5)
  {
    if (v26)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v0 = v20;
    if (v26)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v46 = v20;
  if (v0 >= v25)
  {
    v32 = v25;
  }

  else
  {
    v32 = v0;
  }

  if (v32 < v27)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v51 = v18 & 1;
  v33 = v27;
  v45 = v32;
  MLDataTable.subscript.getter(&v52, v27, v32);
  v34 = v52;
  v35 = v53;
  _s16FeatureExtractorCMa();
  v49 = v34;
  v52 = v34;
  v53 = v35;
  sub_2379F54E0(&v52, v33, &v50, *(v2 + *(v10 + 36)));
  if (v1)
  {
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v36);
    v37 = OUTLINED_FUNCTION_75_3();
    sub_2379DBC84(v37, v38);
    sub_2379DBC9C(v34, v35);
    goto LABEL_14;
  }

  v52 = v50;
  v53 = v51;
  if (v46 <= v33)
  {
    v39 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  }

  else
  {
    v39 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  }

  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  v0 = v3 + v39;
  MLDataTable.append(contentsOf:)();
  swift_endAccess();
  v40 = OUTLINED_FUNCTION_75_3();
  sub_2379DBC84(v40, v41);
  sub_2379DBC9C(v49, v35);
  OUTLINED_FUNCTION_2_73();
  sub_237B7C134(v2, v42);
  v43 = OUTLINED_FUNCTION_11_43();
  sub_2379DBC9C(v43, v44);
  if (!__OFSUB__(v45, v33))
  {
    if (!__OFADD__(*(v3 + v48), *(v3 + v47)))
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2379D9054(v0, &qword_27DE9C938, &unk_237C14AB0);
  __break(1u);
}

void sub_237B77C7C(_BYTE *a1)
{
  v5 = v2;
  v6 = v1;
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_105_2();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  if (*a1 == 2)
  {
    v20 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379FC864(v1 + v20, v1, &qword_27DE9C938, &unk_237C14AB0);
    OUTLINED_FUNCTION_73_1(v1, 1, v16);
    if (v21)
    {
      sub_2379D9054(v1, &qword_27DE9C938, &unk_237C14AB0);
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_4_65();
      sub_237B7C07C(v1, v4, v22);
      v23 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      v24 = *v23;
      LOBYTE(v23) = *(v23 + 8);
      sub_2379DBCF4(v24, v23);
      OUTLINED_FUNCTION_45_3();
      sub_2379DF938(v24, v23, &v45);
      sub_2379DBC9C(v24, v23);
      v25 = v45;
      LOBYTE(v24) = v46;
      sub_2379DFAE0(v45, v46, &v47);
      sub_2379DBC9C(v25, v24);
      v26 = sub_2379DFC10(v47, v48);
      v27 = *(v6 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
      *(v6 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = v26;

      v28 = *(v4 + v16[8]);
      v29 = _s8GraphCNNCMa(0);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = OUTLINED_FUNCTION_85();
      v34 = sub_237AED020(v32, v33, 21, 3, v28);
      v35 = *(v6 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
      *(v6 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v34;

      v36 = v16[5];
      OUTLINED_FUNCTION_8_44();
      sub_237B7C0D8(v4 + v37, v3, v38);
      v39 = *(v4 + v16[7]);
      v40 = *(v4 + v16[10]);
      v41 = *(v4 + v16[9]);
      *(v3 + v8[5]) = *(v4 + v16[6]);
      *(v3 + v8[6]) = v39;
      *(v3 + v8[7]) = v28;
      *(v3 + v8[8]) = v40;
      *(v3 + v8[10]) = v41;
      OUTLINED_FUNCTION_0_79();
      sub_237B7C134(v3, v42);
      sub_237BB0D90();
      if (v5)
      {
        OUTLINED_FUNCTION_2_73();
        sub_237B7C134(v4, v43);
      }

      else
      {
        sub_237BA9BC8();

        OUTLINED_FUNCTION_2_73();
        sub_237B7C134(v4, v44);
      }
    }
  }
}

void sub_237B77F88()
{
  OUTLINED_FUNCTION_37_8();
  v194 = v1;
  v4 = v3;
  v176 = sub_237C0683C();
  v5 = OUTLINED_FUNCTION_0(v176);
  v175 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v10 - v9);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  OUTLINED_FUNCTION_0(v185);
  v190 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0(v156 - v15);
  v192 = sub_237C0617C();
  v16 = OUTLINED_FUNCTION_0(v192);
  v191 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0(v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0(v156 - v28);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  v29 = OUTLINED_FUNCTION_0(v188);
  v187 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v34);
  v35 = _s20PersistentParametersVMa();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52_8();
  v46 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v47 = OUTLINED_FUNCTION_0(v46);
  v181 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_77_0(v156 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = MEMORY[0x28223BE20](v51);
  v54 = v156 - v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_58();
  v196 = v55;
  v197 = v0;
  v56 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
  v57 = type metadata accessor for MLTrainingSessionParameters();
  v58 = *(v56 + *(v57 + 20));
  if (__OFADD__(v4, v58))
  {
    __break(1u);
    goto LABEL_41;
  }

  v59 = *(v56 + *(v57 + 28));
  if (__OFSUB__(v59, v4))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v195 = v4;
  v177 = v59;
  v178 = v4 + v58;
  if (v58 >= v59 - v4)
  {
    v60 = v59 - v4;
  }

  else
  {
    v60 = v58;
  }

  v202 = MEMORY[0x277D84F98];
  v61 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v62 = v197;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v62 + v61, v2, &qword_27DE9C938, &unk_237C14AB0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v35))
  {
    sub_2379D9054(v2, &qword_27DE9C938, &unk_237C14AB0);
    sub_2379E8AF0();
    v63 = OUTLINED_FUNCTION_6_2();
    *v64 = 0xD000000000000026;
    v64[1] = 0x8000000237C19F70;
    OUTLINED_FUNCTION_52(v63, v64);
LABEL_13:
    OUTLINED_FUNCTION_38_8();
    return;
  }

  v174 = v60;
  sub_237B7C0D8(v2, v41, _s20PersistentParametersVMa);
  sub_2379D9054(v2, &qword_27DE9C938, &unk_237C14AB0);
  v65 = v35[5];
  OUTLINED_FUNCTION_8_44();
  sub_237B7C0D8(v41 + v66, v54, v67);
  v68 = *(v41 + v35[6]);
  v69 = *(v41 + v35[7]);
  v70 = v35[9];
  v71 = *(v41 + v35[8]);
  v72 = *(v41 + v35[10]);
  v73 = *(v41 + v70);
  OUTLINED_FUNCTION_2_73();
  sub_237B7C134(v41, v74);
  *&v54[v46[5]] = v68;
  *&v54[v46[6]] = v69;
  *&v54[v46[7]] = v71;
  *&v54[v46[8]] = v72;
  *&v54[v46[10]] = v73;
  OUTLINED_FUNCTION_14_33();
  v75 = v196;
  sub_237B7C07C(v54, v196, v76);
  v77 = *(v62 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
  if (!v77 || (v78 = *(v62 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels)) == 0)
  {
    sub_2379E8AF0();
    v88 = OUTLINED_FUNCTION_6_2();
    *v89 = 0xD00000000000003CLL;
    v89[1] = 0x8000000237C19FA0;
    OUTLINED_FUNCTION_52(v88, v89);
    OUTLINED_FUNCTION_0_79();
    sub_237B7C134(v75, v90);
    goto LABEL_13;
  }

  v79 = v62 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v80 = *v79;
  v81 = *(v79 + 8);
  v82 = v62 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v83 = *v82;
  v84 = *(v82 + 8);
  *&v198 = v80;
  BYTE8(v198) = v81;

  sub_2379DBCF4(v80, v81);
  sub_2379DBCF4(v83, v84);
  v173 = v78;
  v85 = v194;
  sub_2379EA98C(&v198, v78);
  if (v85)
  {
    OUTLINED_FUNCTION_58_10();

    sub_2379DBC9C(v83, v84);
    OUTLINED_FUNCTION_0_79();
    sub_237B7C134(v196, v87);
    sub_2379DBC9C(v80, v81);
    goto LABEL_13;
  }

  v91 = v86;
  v171 = v80;
  v167 = v81;
  v194 = v77;
  v170 = v84;
  v172 = *(v173 + 16);
  v92 = *MEMORY[0x277D2CD40];
  v168 = v83;
  v93 = v191;
  v94 = *(v191 + 104);
  v95 = v192;
  v165 = v191 + 104;
  v163 = v94;
  v94(v193, v92, v192);
  v201 = v91;
  v96 = v196;
  v169 = *(v196 + v46[5]);
  v97 = *(v93 + 16);
  v200 = 0;
  v198 = 0u;
  v199 = 0u;
  v98 = v184;
  OUTLINED_FUNCTION_137_0();
  v166 = v99;
  v164 = v100;
  v100();
  OUTLINED_FUNCTION_13_35();
  v101 = v183;
  sub_237B7C0D8(v96, v183, v102);
  v103 = *(v93 + 80);
  v104 = (v103 + 16) & ~v103;
  v105 = *(v181 + 80);
  v106 = (v182 + v105 + v104) & ~v105;
  v161 = v103 | v105;
  v107 = swift_allocObject();
  v108 = *(v93 + 32);
  v162 = v104;
  v160 = v93 + 32;
  v159 = v108;
  v108(v107 + v104, v98, v95);
  OUTLINED_FUNCTION_14_33();
  v181 = v106;
  sub_237B7C07C(v101, v107 + v106, v109);
  v182 = (v50 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v107 + v182) = v172;
  v110 = *(v190 + 104);
  v158 = *MEMORY[0x277D2CEC0];
  v190 += 104;
  v157 = v110;
  v110(v186);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v113 = v170;
  v114 = sub_2379D9224(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380);
  v115 = sub_237A252E0();
  v156[0] = sub_2379D9224(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8);
  v156[1] = v115;
  v156[2] = v114;
  v156[3] = v112;
  OUTLINED_FUNCTION_99_1();
  sub_237C0686C();
  v116 = *(v93 + 8);
  v191 = v93 + 8;
  v116(v193, v192);
  v117 = v168;
  *&v198 = v168;
  BYTE8(v198) = v113;
  sub_2379DBCF4(v168, v113);
  if (MLDataTable.size.getter())
  {
    *&v198 = v117;
    BYTE8(v198) = v113;
    sub_2379EA98C(&v198, v173);
    v119 = v118;
    OUTLINED_FUNCTION_58_10();

    v120 = *MEMORY[0x277D2CD48];
    v121 = v193;
    v173 = v111;
    v122 = v192;
    v163(v193, v120, v192);
    v201 = v119;
    v200 = 0;
    v198 = 0u;
    v199 = 0u;
    v123 = v184;
    (v164)(v184, v121, v122);
    OUTLINED_FUNCTION_13_35();
    v124 = v183;
    sub_237B7C0D8(v196, v183, v125);
    v126 = v182;
    v127 = swift_allocObject();
    v159(v127 + v162, v123, v122);
    OUTLINED_FUNCTION_14_33();
    sub_237B7C07C(v124, v127 + v181, v128);
    *(v127 + v126) = v172;
    v157(v186, v158, v185);

    v129 = v180;
    sub_237C0686C();
    OUTLINED_FUNCTION_103_2();

    LOBYTE(v126) = v170;
    sub_2379DBC9C(v117, v170);
    sub_2379DBC9C(v117, v126);
    v116(v193, v122);
  }

  else
  {
    OUTLINED_FUNCTION_58_10();

    sub_2379DBC9C(v117, v113);
    OUTLINED_FUNCTION_103_2();
    sub_2379DBC9C(v117, v113);
    v129 = v180;
  }

  v130 = v179;
  (*(v187 + 32))(v179, v189, v188);
  OUTLINED_FUNCTION_32_13();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
  v135 = v197;
  v136 = v174;
  if ((v174 & 0x8000000000000000) == 0)
  {
    v137 = 0;
    v138 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    while (v136 != v137)
    {
      if (__OFADD__(v137, 1))
      {
        goto LABEL_42;
      }

      if (__OFADD__(v195, v137))
      {
        goto LABEL_43;
      }

      v139 = sub_237BA7528(v130, v129, v195 + v137);
      v140 = *(v135 + v138);
      *(v135 + v138) = v139;

      ++v137;
    }

    v141 = *(v135 + v138);

    v142 = OUTLINED_FUNCTION_51_4();
    sub_237AC9A74(v142, 0xED000073736F6C5FLL, v141, &v198);

    if (*(&v199 + 1))
    {
      OUTLINED_FUNCTION_50_12();
      if (swift_dynamicCast())
      {
        v143 = OUTLINED_FUNCTION_67_8();
        sub_237B19FFC(v143, 0);
      }
    }

    else
    {
      sub_2379D9054(&v198, &qword_27DE9A998, &unk_237C0C100);
    }

    v144 = *(v135 + v138);

    v145 = OUTLINED_FUNCTION_49_0();
    sub_237AC9A74(v145, 0xEF73736F6C5F6E6FLL, v144, &v198);

    if (*(&v199 + 1))
    {
      v144 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_50_12();
      if (swift_dynamicCast())
      {
        v146 = OUTLINED_FUNCTION_67_8();
        sub_237B19FFC(v146, 4);
      }
    }

    else
    {
      sub_2379D9054(&v198, &qword_27DE9A998, &unk_237C0C100);
    }

    OUTLINED_FUNCTION_104_1();
    sub_237AC9A74(0xD000000000000012, 0x8000000000000000, v144, &v198);

    if (*(&v199 + 1))
    {
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
      OUTLINED_FUNCTION_50_12();
      if (swift_dynamicCast())
      {
        v144 = v201;
        OUTLINED_FUNCTION_71_7();
        sub_237A34D48(v130, v172);
        v147 = v130;
        v130 = v179;
        (*(v175 + 8))(v147, v176);
        v148 = OUTLINED_FUNCTION_84_3();
        sub_237B19FFC(v148, 3);
      }
    }

    else
    {
      sub_2379D9054(&v198, &qword_27DE9A998, &unk_237C0C100);
    }

    OUTLINED_FUNCTION_104_1();
    sub_237AC9A74(0xD000000000000014, 0x8000000000000000, v144, &v198);

    if (*(&v199 + 1))
    {
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
      OUTLINED_FUNCTION_50_12();
      v149 = swift_dynamicCast();
      v150 = v196;
      if (v149)
      {
        OUTLINED_FUNCTION_71_7();
        sub_237A34D48(v130, v172);
        (*(v175 + 8))(v130, v176);
        v151 = OUTLINED_FUNCTION_84_3();
        sub_237B19FFC(v151, 5);
      }

      sub_2379D9054(v180, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_31_20();
      OUTLINED_FUNCTION_94_1();
      v154();
      OUTLINED_FUNCTION_0_79();
      sub_237B7C134(v150, v155);
    }

    else
    {

      sub_2379D9054(v180, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_31_20();
      OUTLINED_FUNCTION_94_1();
      v152();
      OUTLINED_FUNCTION_0_79();
      sub_237B7C134(v196, v153);
      sub_2379D9054(&v198, &qword_27DE9A998, &unk_237C0C100);
    }

    goto LABEL_13;
  }

LABEL_44:
  __break(1u);
}

void sub_237B79174()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v4 = v3;
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v18 = &v35 - v17;
  v19 = *v4;
  if (v19 == 2)
  {
    if (*(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model))
    {
      v22 = *(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);

      sub_237B74974();
    }
  }

  else if (v19 == 1)
  {
    v88 = v16;
    v37 = v14;
    v38 = v15;
    v20 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_55_5();
    v21 = *(v20 + 8);
    v59 = *v20;
    LOBYTE(v60) = v21;
    sub_2379DBCF4(v59, v21);
    sub_237C05A2C();
    MLDataTable.write(to:)(v18);
    if (v1)
    {
      (*(v88 + 8))(v18, v5);
      sub_2379DBC9C(v59, v60);
    }

    else
    {
      v36 = v20;
      v89 = *(v88 + 8);
      v89(v18, v5);
      sub_2379DBC9C(v59, v60);
      v23 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      OUTLINED_FUNCTION_55_5();
      v24 = *(v23 + 8);
      v86 = *v23;
      v87 = v24;
      sub_2379DBCF4(v86, v24);
      sub_237C05A2C();
      MLDataTable.write(to:)(v13);
      v35 = v23;
      v89(v13, v5);
      sub_2379DBC9C(v86, v87);
      v25 = v38;
      OUTLINED_FUNCTION_51_4();
      sub_237C05A2C();
      LOBYTE(v59) = 1;
      *(&v59 + 1) = *v85;
      HIDWORD(v59) = *&v85[3];
      v60 = 44;
      v61 = 0xE100000000000000;
      v62 = 0;
      v63 = 0xE000000000000000;
      v64 = 92;
      v65 = 0xE100000000000000;
      v66 = 1;
      *v67 = *v84;
      *&v67[3] = *&v84[3];
      v68 = 34;
      v69 = 0xE100000000000000;
      v70 = 1;
      *v71 = *v83;
      *&v71[3] = *&v83[3];
      v72 = &unk_284ABEBF0;
      v73 = 10;
      v74 = 0xE100000000000000;
      v75 = 0;
      v76 = 0;
      v77 = 1;
      *v78 = *v82;
      *&v78[3] = *&v82[3];
      v79 = 0;
      MLDataTable.init(contentsOf:options:)(v25, &v59, &v80);
      v26 = v81;
      v27 = v36;
      v28 = *v36;
      v29 = *(v36 + 8);
      *v36 = v80;
      *(v27 + 8) = v26;
      sub_2379DBC9C(v28, v29);
      v30 = v37;
      OUTLINED_FUNCTION_49_0();
      sub_237C05A2C();
      v39 = 1;
      v40 = 44;
      v41 = 0xE100000000000000;
      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = 92;
      v45 = 0xE100000000000000;
      v46 = 1;
      v47 = 34;
      v48 = 0xE100000000000000;
      v49 = 1;
      v50 = &unk_284ABEBF0;
      v51 = 10;
      v53 = 0;
      v54 = 0;
      v52 = 0xE100000000000000;
      v55 = 1;
      v56 = 0;
      MLDataTable.init(contentsOf:options:)(v30, &v39, &v57);
      v31 = v58;
      v32 = v35;
      v33 = *v35;
      v34 = *(v35 + 8);
      *v35 = v57;
      *(v32 + 8) = v31;
      sub_2379DBC9C(v33, v34);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B795FC()
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_106_2();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_5();
  v13 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v13, v1, &qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_73_1(v1, 1, v9);
  if (v14)
  {
    sub_2379D9054(v1, &qword_27DE9C938, &unk_237C14AB0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    *v15 = 0xD000000000000030;
    *(v15 + 8) = v0;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_4_65();
    v16 = OUTLINED_FUNCTION_32_3();
    sub_237B7C07C(v16, v17, v18);
    sub_237A051E4(v4);
    OUTLINED_FUNCTION_2_73();
    sub_237B7C134(v2, v19);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B79A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_8();
  a19 = v22;
  a20 = v23;
  v258 = v21;
  v25 = v24;
  v27 = v26;
  v239 = sub_237C0602C();
  v28 = OUTLINED_FUNCTION_0(v239);
  v248 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v33 - v32);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C038, &qword_237C0F320);
  v34 = OUTLINED_FUNCTION_4(v243);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v38);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C040, &unk_237C14AA0);
  v39 = OUTLINED_FUNCTION_4(v242);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v44);
  v252 = type metadata accessor for MLHandActionClassifier.DataSource();
  v45 = OUTLINED_FUNCTION_4(v252);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v50);
  v52 = &v233 - v51;
  v253 = sub_237C05DBC();
  v53 = OUTLINED_FUNCTION_0(v253);
  v254 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v233 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v233 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v65 = OUTLINED_FUNCTION_20(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18_0();
  v70 = v68 - v69;
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v233 - v73;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_74_7();
  v76 = *(_s20PersistentParametersVMa() + 24);
  OUTLINED_FUNCTION_49_9();
  if (!v99)
  {
    *&v264 = v78;
    v88 = sub_237A20C10();
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v89 = xmmword_237C0F260;
LABEL_14:
    *(v89 + 16) = v27;
    *(v89 + 24) = v70;
    *(v89 + 32) = v88;
    *(v89 + 40) = &v264;
    goto LABEL_15;
  }

  v79 = *(v77 + 28);
  OUTLINED_FUNCTION_49_9();
  if (!v99)
  {
    v88 = OUTLINED_FUNCTION_72_7(v81);
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_48_15();
    v91 = v90 + 1;
LABEL_13:
    *v89 = v91;
    *(v89 + 8) = v74;
    goto LABEL_14;
  }

  v82 = *(v80 + 32);
  OUTLINED_FUNCTION_49_9();
  if (!v99)
  {
    v88 = OUTLINED_FUNCTION_72_7(v84);
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_48_15();
    v91 = v92 + 5;
    goto LABEL_13;
  }

  if (*(v27 + *(v83 + 36)) != *(v25 + *(v83 + 36)))
  {
    sub_237C08A6C();
    OUTLINED_FUNCTION_7_44();
    v93 = sub_237C08A6C();
    v95 = v94;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_48_15();
    *v89 = v96;
    *(v89 + 8) = 0x8000000237C1AEC0;
    *(v89 + 16) = v61;
    *(v89 + 24) = v20;
    *(v89 + 32) = v93;
    *(v89 + 40) = v95;
LABEL_15:
    *(v89 + 48) = 3;
    swift_willThrow();
    goto LABEL_16;
  }

  v85 = *(v83 + 40);
  OUTLINED_FUNCTION_49_9();
  if (!v99)
  {
    v88 = OUTLINED_FUNCTION_72_7(v86);
    OUTLINED_FUNCTION_58_0();
    sub_237C08DEC();
    OUTLINED_FUNCTION_22_28();
    OUTLINED_FUNCTION_7_44();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_48_15();
    v91 = v97 + 3;
    goto LABEL_13;
  }

  v238 = v20;
  v87 = v258;
  MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()(v20);
  if (!v87)
  {
    MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()(v257);
    sub_2379FC864(v238, v74, &qword_27DE9A9A0, &qword_237C0BF60);
    v98 = v253;
    OUTLINED_FUNCTION_73_1(v74, 1, v253);
    if (v99)
    {
      v100 = v74;
    }

    else
    {
      OUTLINED_FUNCTION_99_1();
      v102 = *(v101 + 32);
      v103 = OUTLINED_FUNCTION_5_21();
      v258 = v104;
      v237 = v105;
      (v105)(v103);
      if (sub_237C05D3C() < 1)
      {
        OUTLINED_FUNCTION_99_1();
        v108 = *(v107 + 8);
        v109 = OUTLINED_FUNCTION_5_21();
        v110(v109);
        goto LABEL_29;
      }

      sub_2379FC864(v257, v70, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_73_1(v70, 1, v98);
      if (!v99)
      {
        OUTLINED_FUNCTION_34_10();
        v237();
        if (sub_237C05D3C() >= 1)
        {
          sub_237B7ADD8();
          v225 = v111;
          sub_237B7ADD8();
          sub_237AFE4F0(v225, v226);
          OUTLINED_FUNCTION_107_2();

          v227 = v257;
          if ((v70 & 1) == 0)
          {
            sub_2379E8AF0();
            v228 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_20_30(v228, v229);
          }

          v230 = *(v254 + 8);
          v231 = OUTLINED_FUNCTION_46_14();
          v230(v231);
          v232 = OUTLINED_FUNCTION_58_0();
          v230(v232);
          v221 = v227;
          goto LABEL_62;
        }

        v112 = *(v254 + 8);
        v113 = OUTLINED_FUNCTION_46_14();
        v112(v113);
        v114 = OUTLINED_FUNCTION_58_0();
        v112(v114);
        v98 = v61;
LABEL_29:
        OUTLINED_FUNCTION_6_58();
        v115 = OUTLINED_FUNCTION_42_9();
        sub_237B7C0D8(v115, v116, v117);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v237 = *v52;
          LODWORD(v258) = v52[8];
          v118 = *(v52 + 3);
          v236 = *(v52 + 2);
          v119 = *(v52 + 4);
          v120 = *(v52 + 5);
          v121 = *(v52 + 7);

          OUTLINED_FUNCTION_6_58();
          v52 = v247;
          sub_237B7C0D8(v25, v247, v122);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v256 = v118;
            v123 = *v52;
            v124 = v52[8];
            v255 = *(v52 + 2);
            v125 = v52;
            v126 = *(v52 + 3);
            v127 = v125[4];
            v128 = v125[5];
            v129 = v125[7];

            OUTLINED_FUNCTION_52_15();
            MLDataTable.subscript.getter();

            OUTLINED_FUNCTION_25_11();
            OUTLINED_FUNCTION_96_0();
            MLDataTable.subscript.getter();

            OUTLINED_FUNCTION_25_11();
            v130 = OUTLINED_FUNCTION_37_0();
            LOBYTE(v127) = sub_237AC762C(v130, v131);

            if (v127)
            {
              OUTLINED_FUNCTION_52_15();
              MLDataTable.subscript.getter();

              OUTLINED_FUNCTION_25_11();
              OUTLINED_FUNCTION_96_0();
              MLDataTable.subscript.getter();

              OUTLINED_FUNCTION_25_11();
              v132 = OUTLINED_FUNCTION_37_0();
              v134 = sub_237AC762C(v132, v133);

              if (v134)
              {
                goto LABEL_48;
              }
            }

            else
            {
            }

            sub_2379E8AF0();
            v198 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_20_30(v198, v199);
LABEL_48:
            v200 = OUTLINED_FUNCTION_58_10();
            sub_2379DBC9C(v200, v258);
            sub_2379DBC9C(v123, v124);
LABEL_61:
            v221 = v257;
LABEL_62:
            sub_2379D9054(v221, &qword_27DE9A9A0, &qword_237C0BF60);
            v222 = OUTLINED_FUNCTION_30_20(&v263 + 8);
            sub_2379D9054(v222, v223, v224);
            goto LABEL_16;
          }

          v136 = OUTLINED_FUNCTION_58_10();
          sub_2379DBC9C(v136, v258);

          v135 = v251;
        }

        else
        {
          v135 = v251;
        }

        OUTLINED_FUNCTION_1_75();
        sub_237B7C134(v52, v137);
        OUTLINED_FUNCTION_6_58();
        v138 = v27;
        v139 = v250;
        sub_237B7C0D8(v138, v250, v140);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
          v142 = (v139 + v141[12]);
          v144 = *v142;
          v143 = v142[1];
          v236 = v144;
          v247 = v143;
          v145 = (v139 + v141[16]);
          v147 = *v145;
          v146 = v145[1];
          v237 = v147;
          v258 = v146;
          v148 = *(v139 + v141[20] + 8);

          v149 = v139;
          v150 = v254;
          v151 = *(v254 + 32);
          v151(v135, v149, v98);
          OUTLINED_FUNCTION_6_58();
          v152 = v25;
          v153 = v245;
          sub_237B7C0D8(v152, v245, v154);
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            v252 = 0;
            v155 = &v153[v141[12]];
            v157 = *v155;
            v156 = *(v155 + 1);
            v235 = v157;
            v250 = v156;
            v158 = &v153[v141[16]];
            v159 = *v158;
            v160 = *(v158 + 1);
            v161 = *&v153[v141[20] + 8];

            v151(v249, v153, v98);
            v162 = v246;
            v163 = v258;
            sub_237C05DFC();

            OUTLINED_FUNCTION_92_5();
            OUTLINED_FUNCTION_34_1();
            sub_237C05DFC();

            v164 = v241;
            sub_2379FC864(v162, v241, &qword_27DE9C040, &unk_237C14AA0);
            v165 = v248 + 32;
            v166 = *(v248 + 32);
            v167 = v244;
            v168 = v239;
            v166(v244, v164, v239);
            v169 = sub_237A8CBA0(&qword_27DE9C048);
            v170 = v255;
            sub_237C0885C();
            v171 = v164 + *(v163 + 52);
            v248 = v165;
            v245 = v166;
            v166(v167, v171, v168);
            v172 = v243;
            v173 = v170 + *(v243 + 52);
            v237 = v169;
            sub_237C0885C();
            v174 = v170;
            v234 = *(v172 + 56);
            *(v170 + v234) = 0;
            v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C050, &unk_237C0F328);
            v175 = *(v258 + 36);
            sub_237A8CBA0(&qword_27DE9C058);
            while (1)
            {
              OUTLINED_FUNCTION_34_1();
              sub_237C08B5C();
              if (*(v174 + v175) == v260)
              {
                sub_2379D9054(v246, &qword_27DE9C040, &unk_237C14AA0);
                goto LABEL_51;
              }

              v176 = sub_237C08B9C();
              sub_2379FC864(v177, &v262, &qword_27DE9A998, &unk_237C0C100);
              v176(&v260, 0);
              OUTLINED_FUNCTION_137_0();
              sub_237C08B6C();
              v178 = v168;
              OUTLINED_FUNCTION_34_10();
              v180 = *(v179 + 36);
              sub_237C08B5C();
              if (*(v173 + v180) == v259[0])
              {
                break;
              }

              v181 = sub_237C08B9C();
              sub_2379FC864(v182, &v260, &qword_27DE9A998, &unk_237C0C100);
              v181(v259, 0);
              sub_237C08B6C();
              v264 = v262;
              v265 = v263;
              v266 = v260;
              v267 = v261;
              v183 = sub_237A8BFF8(&v264, &v266);
              sub_2379D9054(&v264, &qword_27DE9C060, &qword_237C0F338);
              v168 = v178;
              v174 = v255;
              if ((v183 & 1) == 0)
              {
                sub_2379D9054(v255, &qword_27DE9C038, &qword_237C0F320);
                sub_2379D9054(v246, &qword_27DE9C040, &unk_237C14AA0);

LABEL_56:
                sub_2379E8AF0();
                v216 = OUTLINED_FUNCTION_6_2();
                OUTLINED_FUNCTION_20_30(v216, v217);
                goto LABEL_60;
              }
            }

            sub_2379D9054(&v262, &qword_27DE9A998, &unk_237C0C100);
            sub_2379D9054(v246, &qword_27DE9C040, &unk_237C14AA0);
            v168 = v178;
            v174 = v255;
LABEL_51:
            *(v174 + v234) = 1;
            sub_2379D9054(v174, &qword_27DE9C038, &qword_237C0F320);
            v201 = v240;
            sub_237C05DFC();

            OUTLINED_FUNCTION_92_5();
            sub_237C05DFC();

            v202 = v241;
            sub_2379FC864(v201, v241, &qword_27DE9C040, &unk_237C14AA0);
            v203 = v244;
            v204 = v245;
            (v245)(v244, v202, v168);
            v205 = v256;
            sub_237C0885C();
            (v204)(v203, v202 + SDWORD1(v267), v168);
            v206 = v243;
            v207 = v205 + *(v243 + 52);
            sub_237C0885C();
            v255 = *(v206 + 56);
            *(v205 + v255) = 0;
            OUTLINED_FUNCTION_34_10();
            v209 = *(v208 + 36);
            while (1)
            {
              OUTLINED_FUNCTION_34_1();
              sub_237C08B5C();
              if (*(v256 + v209) == v260)
              {
                sub_2379D9054(v240, &qword_27DE9C040, &unk_237C14AA0);
                goto LABEL_59;
              }

              v210 = sub_237C08B9C();
              sub_2379FC864(v211, &v262, &qword_27DE9A998, &unk_237C0C100);
              v210(&v260, 0);
              OUTLINED_FUNCTION_137_0();
              sub_237C08B6C();
              OUTLINED_FUNCTION_34_10();
              v213 = *(v212 + 36);
              OUTLINED_FUNCTION_34_1();
              sub_237C08B5C();
              if (*(v207 + v213) == v259[0])
              {
                break;
              }

              v214 = sub_237C08B9C();
              sub_2379FC864(v215, &v260, &qword_27DE9A998, &unk_237C0C100);
              (v214)(v259, 0);
              OUTLINED_FUNCTION_137_0();
              sub_237C08B6C();
              v264 = v262;
              v265 = v263;
              v266 = v260;
              v267 = v261;
              LOBYTE(v214) = sub_237A8BFF8(&v264, &v266);
              sub_2379D9054(&v264, &qword_27DE9C060, &qword_237C0F338);
              if ((v214 & 1) == 0)
              {
                sub_2379D9054(v256, &qword_27DE9C038, &qword_237C0F320);
                sub_2379D9054(v240, &qword_27DE9C040, &unk_237C14AA0);
                goto LABEL_56;
              }
            }

            sub_2379D9054(&v262, &qword_27DE9A998, &unk_237C0C100);
            sub_2379D9054(v240, &qword_27DE9C040, &unk_237C14AA0);
LABEL_59:
            v218 = v256;
            *(v256 + v255) = 1;
            sub_2379D9054(v218, &qword_27DE9C038, &qword_237C0F320);
LABEL_60:
            v219 = *(v254 + 8);
            v220 = v253;
            v219(v249, v253);
            v219(v251, v220);
            goto LABEL_61;
          }

          (*(v150 + 8))(v135, v98);
          v192 = OUTLINED_FUNCTION_30_20(&a17);
          sub_2379D9054(v192, v193, v194);
          v195 = OUTLINED_FUNCTION_30_20(&v263 + 8);
          sub_2379D9054(v195, v196, v197);
          OUTLINED_FUNCTION_1_75();
          v191 = v153;
        }

        else
        {
          v184 = OUTLINED_FUNCTION_30_20(&a17);
          sub_2379D9054(v184, v185, v186);
          v187 = OUTLINED_FUNCTION_30_20(&v263 + 8);
          sub_2379D9054(v187, v188, v189);
          OUTLINED_FUNCTION_1_75();
          v191 = v139;
        }

        sub_237B7C134(v191, v190);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_99_1();
      (*(v106 + 8))(v63, v98);
      v100 = v70;
    }

    sub_2379D9054(v100, &qword_27DE9A9A0, &qword_237C0BF60);
    goto LABEL_29;
  }

LABEL_16:
  OUTLINED_FUNCTION_38_8();
}

void sub_237B7ADD8()
{
  OUTLINED_FUNCTION_74();
  v74 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v3);
  v79 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_86_5();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F0, &unk_237C14A80);
  OUTLINED_FUNCTION_4(v71);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52_8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC98, &qword_237C0BA00);
  v18 = OUTLINED_FUNCTION_0(v17);
  v72 = v19;
  v73 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  sub_237C05FCC();
  OUTLINED_FUNCTION_45_3();
  sub_237C05FCC();
  v75 = v27;
  if (sub_237B7B4D8() & 1) != 0 && (sub_237B7B4D8())
  {
    sub_237C05DDC();
    v28 = *(v10 + 52);
    v81 = v24;
    sub_237C05DDC();
    v29 = *(v79 + 32);
    v29(v9, v1, v3);
    sub_2379D9224(&qword_27DE9D438, &qword_27DE9ACA0, &unk_237C0E0E0);
    OUTLINED_FUNCTION_5_21();
    sub_237C0885C();
    v29(v9, v1 + v28, v3);
    v30 = v2 + *(v71 + 52);
    OUTLINED_FUNCTION_5_21();
    sub_237C0885C();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
    v31 = *(v79 + 36);
    sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
    v69 = 0;
    v70 = MEMORY[0x277D84F98];
    v78 = v31;
    while (1)
    {
      v32 = v81;
      while (1)
      {
        OUTLINED_FUNCTION_32_3();
        sub_237C08B5C();
        if (*(v2 + v31) == v80[0])
        {
          goto LABEL_26;
        }

        v33 = sub_237C08B9C();
        v35 = v34[1];
        v77 = *v34;

        v33(v80, 0);
        sub_237C08B6C();
        v36 = *(v79 + 36);
        OUTLINED_FUNCTION_32_3();
        sub_237C08B5C();
        if (*(v30 + v36) == v80[0])
        {

LABEL_26:
          v65 = *(v71 + 56);
          v66 = *(v72 + 8);
          v67 = v73;
          v66(v32, v73);
          v66(v75, v67);
          *(v2 + v65) = 1;
          sub_2379D9054(v2, &qword_27DE9D4F0, &unk_237C14A80);
          sub_237A560B8(v69);
          goto LABEL_27;
        }

        v37 = sub_237C08B9C();
        v39 = v38[1];
        v76 = *v38;

        v37(v80, 0);
        sub_237C08B6C();
        if (v35)
        {
          break;
        }

        v32 = v81;
        v31 = v78;
      }

      v31 = v78;
      if (!v39)
      {

        continue;
      }

      sub_237A560B8(v69);
      v40 = v70;
      LODWORD(v69) = swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v40;
      v41 = sub_237ACAC78(v76, v39);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v70 = (v43 + v44);
      if (__OFADD__(v43, v44))
      {
        break;
      }

      v45 = v41;
      v46 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
      v47 = sub_237C090AC();
      v70 = v80[0];
      if (v47)
      {
        v48 = sub_237ACAC78(v76, v39);
        if ((v46 & 1) != (v49 & 1))
        {
          goto LABEL_30;
        }

        v45 = v48;
      }

      if (v46)
      {

        v50 = v70;
      }

      else
      {
        v50 = v70;
        v70[(v45 >> 6) + 8] |= 1 << v45;
        v51 = (v50[6] + 16 * v45);
        *v51 = v76;
        v51[1] = v39;
        *(v50[7] + 8 * v45) = MEMORY[0x277D84F90];
        v52 = v50[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_29;
        }

        v50[2] = v54;
      }

      v55 = v50[7];
      v56 = *(v55 + 8 * v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v55 + 8 * v45) = v56;
      v76 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = *(v56 + 16);
        OUTLINED_FUNCTION_32_13();
        sub_237BC0CB8();
        v56 = v61;
        *(v55 + 8 * v45) = v61;
      }

      v58 = *(v56 + 16);
      if (v58 >= *(v56 + 24) >> 1)
      {
        OUTLINED_FUNCTION_32_13();
        sub_237BC0CB8();
        v56 = v62;
        *(v76 + 8 * v45) = v62;
      }

      *(v56 + 16) = v58 + 1;
      v59 = v56 + 16 * v58;
      v31 = v78;
      *(v59 + 32) = v77;
      *(v59 + 40) = v35;
      v69 = sub_237A5D5F8;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_237C0932C();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    sub_237C085AC();
    v63 = v73;
    v64 = *(v72 + 8);
    v64(v24, v73);
    v64(v75, v63);
LABEL_27:
    OUTLINED_FUNCTION_73();
  }
}