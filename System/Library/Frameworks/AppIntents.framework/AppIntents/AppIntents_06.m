uint64_t IntentFile.withFile<A>(contentType:allowOpenInPlace:fileHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *v6;
  *(v7 + 48) = a6;
  *(v7 + 56) = v8;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1761B4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_18F1762B0;
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18F1762B0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F1763D0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

void sub_18F17642C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a4;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v12 = sub_18F521E4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - v15;
  v17 = [a2 _itemProvider];
  if (v17)
  {
    v18 = v17;
    (*(v13 + 16))(v16, a1, v12);
    v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a7;
    (*(v13 + 32))(v20 + v19, v16, v12);
    v21 = (v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = a5;
    v21[1] = a6;

    v22 = sub_18F5222BC();
  }

  else
  {
    __break(1u);
  }
}

void sub_18F17660C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a6;
  v85 = a5;
  v91 = a4;
  LODWORD(v88) = a2;
  v93[5] = *MEMORY[0x1E69E9840];
  v84 = a7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v92 = sub_18F521E4C();
  v86 = *(v92 - 8);
  v83 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v90 = &v76 - v11;
  v12 = sub_18F520B8C();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v76 - v16;
  v18 = sub_18F520C8C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v81 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - v25;
  v28 = v27;
  sub_18F0F9F88(a1, v17, &qword_1EACD0360);
  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    sub_18F0EF1A8(v17, &qword_1EACD0360);
    if (a3)
    {
      v29 = a3;
    }

    else
    {
      sub_18F178014();
      v29 = swift_allocError();
      *v70 = 1;
    }

    v93[0] = v29;
    v71 = a3;
    sub_18F521E2C();
  }

  else
  {
    v30 = *(v19 + 32);
    v30(v26, v17, v28);
    v80 = v26;
    if (v88)
    {
      v31 = sub_18F521EFC();
      __swift_storeEnumTagSinglePayload(v90, 1, 1, v31);
      (*(v19 + 16))(v22, v26, v28);
      v32 = v86;
      (*(v86 + 16))(v89, v91, v92);
      v33 = (*(v19 + 80) + 56) & ~*(v19 + 80);
      v34 = v33 + v20;
      v35 = (*(v32 + 80) + v34 + 1) & ~*(v32 + 80);
      v36 = swift_allocObject();
      v37 = v28;
      v38 = v36;
      v36[2] = 0;
      v36[3] = 0;
      v39 = v85;
      v36[4] = v84;
      v36[5] = v39;
      v36[6] = v87;
      v40 = v22;
      v41 = v37;
      (v30)(v36 + v33, v40);
      *(v38 + v34) = 1;
      (*(v32 + 32))(v38 + v35, v89, v92);

      sub_18F3A33D4(0, 0, v90, &unk_18F540C58, v38);

      (*(v19 + 8))(v80, v41);
      return;
    }

    v77 = v30;
    v88 = v19 + 32;
    v42 = objc_opt_self();
    v43 = [v42 defaultManager];
    v44 = sub_18F520BEC();
    v93[0] = 0;
    v45 = [v43 URLForDirectory:99 inDomain:1 appropriateForURL:v44 create:1 error:v93];

    v46 = v93[0];
    if (v45)
    {
      sub_18F520C3C();
      v47 = v46;

      v93[0] = sub_18F520BDC();
      v93[1] = v48;
      v49 = *MEMORY[0x1E6968F70];
      v76 = v42;
      v50 = v78;
      v51 = v79;
      (*(v78 + 104))(v14, v49, v79);
      sub_18F12A000();
      v52 = v81;
      sub_18F520C7C();
      (*(v50 + 8))(v14, v51);
      v53 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

      v79 = *(v19 + 8);
      v79(v53, v28);
      v54 = v52;
      v55 = v28;
      v56 = [v76 defaultManager];
      v57 = sub_18F520BEC();
      v58 = sub_18F520BEC();
      v93[0] = 0;
      v59 = [v56 copyItemAtURL:v57 toURL:v58 error:v93];

      v60 = v93[0];
      if (v59)
      {
        v61 = sub_18F521EFC();
        __swift_storeEnumTagSinglePayload(v90, 1, 1, v61);
        (*(v19 + 16))(v53, v54, v55);
        v82 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = v86;
        (*(v86 + 16))(v89, v91, v92);
        v63 = (*(v19 + 80) + 56) & ~*(v19 + 80);
        v64 = v63 + v20;
        v65 = (*(v62 + 80) + v64 + 1) & ~*(v62 + 80);
        v66 = swift_allocObject();
        *(v66 + 2) = 0;
        *(v66 + 3) = 0;
        v67 = v85;
        *(v66 + 4) = v84;
        *(v66 + 5) = v67;
        *(v66 + 6) = v87;
        v77(&v66[v63], v82, v55);
        v66[v64] = 0;
        (*(v62 + 32))(&v66[v65], v89, v92);
        v68 = v60;

        sub_18F3A33D4(0, 0, v90, &unk_18F540C48, v66);

        v69 = v79;
        v79(v54, v55);
        v69(v80, v55);
        return;
      }

      v72 = v80;
      v75 = v93[0];
      v74 = sub_18F520A8C();

      swift_willThrow();
      v79(v54, v55);
    }

    else
    {
      v72 = v80;
      v73 = v93[0];
      v55 = v28;
      v74 = sub_18F520A8C();

      swift_willThrow();
    }

    v93[0] = v74;
    sub_18F0F21A8(0, &qword_1ED6FBF40);
    swift_dynamicCast();
    v93[2] = v93[3];
    sub_18F521E2C();
    (*(v19 + 8))(v72, v55);
  }
}

uint64_t sub_18F176F04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8;
  v8[4] = a8;
  v8[5] = v18;
  v8[3] = a6;
  v8[6] = *(v18 - 8);
  v8[7] = swift_task_alloc();
  v13 = swift_task_alloc();
  v12[8] = v13;
  v16 = (a4 + *a4);
  v14 = swift_task_alloc();
  v12[9] = v14;
  *v14 = v12;
  v14[1] = sub_18F1770BC;

  return v16(v13, a6, a7);
}

uint64_t sub_18F1770BC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1771E8()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_18F520BEC();
  *(v0 + 16) = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_24_8();
    v6(v5);
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
    sub_18F521E4C();
    sub_18F521E3C();
  }

  else
  {
    v11 = v4;
    sub_18F520A8C();

    swift_willThrow();
  }

  v8 = OUTLINED_FUNCTION_19_3();
  v9(v8);

  OUTLINED_FUNCTION_71();

  return v10();
}

uint64_t sub_18F1773D0()
{

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F17746C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v17;
  v8[4] = *(v17 - 8);
  v8[5] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[6] = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_18F1775F0;

  return v15(v12, a6, a7);
}

uint64_t sub_18F1775F0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1776EC()
{
  v0 = OUTLINED_FUNCTION_24_8();
  v1(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  sub_18F521E4C();
  sub_18F521E3C();
  v2 = OUTLINED_FUNCTION_19_3();
  v3(v2);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F1777D0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t IntentFile.data(contentType:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F17784C()
{
  OUTLINED_FUNCTION_69();
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[3].i64[1] = v2;
  *v2 = v3;
  v2[1] = sub_18F177930;
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18F177930()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F177A50()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

void sub_18F177AAC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = [a2 _itemProvider];
  if (v8)
  {
    v9 = v8;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v7, v4);
    v12 = sub_18F5222AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18F177C30(uint64_t a1, unint64_t a2, id a3)
{
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      sub_18F178014();
      swift_allocError();
      *v5 = 0;
    }

    v6 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
    return sub_18F521E2C();
  }

  else
  {
    sub_18F16AAE0(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
    return sub_18F521E3C();
  }
}

id IntentFile.availableContentTypes.getter()
{
  result = [*v0 _itemProvider];
  if (result)
  {
    v2 = result;
    v3 = [result registeredContentTypes];

    sub_18F52153C();
    v4 = sub_18F521CAC();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18F177D68(void *a1)
{
  v1 = [a1 _bookmarkData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F520D4C();

  return v3;
}

uint64_t sub_18F177DCC(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

unint64_t sub_18F177E30()
{
  result = qword_1EACD0398;
  if (!qword_1EACD0398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0398);
  }

  return result;
}

unint64_t sub_18F177EAC()
{
  result = qword_1EACD03A0;
  if (!qword_1EACD03A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0360);
    sub_18F177F4C(&qword_1EACD03A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03A0);
  }

  return result;
}

uint64_t sub_18F177F4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18F520C8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F177FBC()
{
  result = qword_1EACD03B8;
  if (!qword_1EACD03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03B8);
  }

  return result;
}

unint64_t sub_18F178014()
{
  result = qword_1EACD03C0;
  if (!qword_1EACD03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03C0);
  }

  return result;
}

unint64_t sub_18F17806C()
{
  result = qword_1EACD03C8;
  if (!qword_1EACD03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03C8);
  }

  return result;
}

unint64_t sub_18F1780C0(uint64_t a1)
{
  result = sub_18F1780E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1780E8()
{
  result = qword_1EACCE840;
  if (!qword_1EACCE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE840);
  }

  return result;
}

unint64_t sub_18F17813C(uint64_t a1)
{
  result = sub_18F178164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F178164()
{
  result = qword_1EACCE850;
  if (!qword_1EACCE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE850);
  }

  return result;
}

unint64_t sub_18F1781BC()
{
  result = qword_1EACCE930[0];
  if (!qword_1EACCE930[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD03D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACCE930);
  }

  return result;
}

unint64_t sub_18F178220()
{
  result = qword_1EACCEC80;
  if (!qword_1EACCEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEC80);
  }

  return result;
}

uint64_t dispatch thunk of FileRepresentableEntity.fileRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 16) + **(a3 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_18F0FC870;

  return v10(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for OpenURLIntent(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for OpenURLIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentFile.IntentFileError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IntentFile._CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentFile._CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F178674()
{
  result = qword_1EACD03D8;
  if (!qword_1EACD03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03D8);
  }

  return result;
}

unint64_t sub_18F1786CC()
{
  result = qword_1EACD03E0;
  if (!qword_1EACD03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03E0);
  }

  return result;
}

unint64_t sub_18F178724()
{
  result = qword_1EACD03E8;
  if (!qword_1EACD03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03E8);
  }

  return result;
}

uint64_t sub_18F178778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F1787E8()
{
  result = qword_1EACD03F0;
  if (!qword_1EACD03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD03F0);
  }

  return result;
}

uint64_t sub_18F17883C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
  OUTLINED_FUNCTION_10(v6);

  return sub_18F177C30(a1, a2, a3);
}

void sub_18F1788CC(uint64_t a1, int a2, void *a3)
{
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v8 = sub_18F521E4C();
  OUTLINED_FUNCTION_51(v8);
  v10 = v9;
  v12 = v11;
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v3 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  sub_18F17660C(a1, a2, a3, v3 + v13, v15, v16, v7);
}

uint64_t sub_18F1789B0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_28_6(a1);
  OUTLINED_FUNCTION_51(v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v3 = sub_18F521E4C();
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_16_3();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_9_2(v4);

  return sub_18F176F04(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_25Tm()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v7 = sub_18F521E4C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v6 + v4 + *(v8 + 80) + 1) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_18F178C5C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_28_6(a1);
  OUTLINED_FUNCTION_51(v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v3 = sub_18F521E4C();
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_16_3();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_9_2(v4);

  return sub_18F17746C(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_18F178DAC(uint64_t a1, int a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0420);
  OUTLINED_FUNCTION_51(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_10(v12);
  v14 = v3 + ((v9 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  sub_18F175734(a1, a2, a3, v3 + v9, v14);
}

uint64_t sub_18F178EA4(uint64_t a1)
{
  v2 = type metadata accessor for IntentContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CollectionsEntityProviding.provideSyncPayload(for:signposter:includeDebugDescription:)()
{
  OUTLINED_FUNCTION_18();
  v26 = v1;
  v27 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v7 = sub_18F52159C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  sub_18F52158C();
  v14 = sub_18F5215CC();
  v15 = sub_18F52236C();
  if (sub_18F52251C())
  {
    v16 = OUTLINED_FUNCTION_54();
    v24 = v3;
    v17 = v5;
    v18 = v16;
    *v16 = 0;
    v19 = sub_18F52157C();
    _os_signpost_emit_with_name_impl(&dword_18F0E9000, v14, v15, v19, "build-sync-payload", "", v18, 2u);
    v5 = v17;
    v3 = v24;
    OUTLINED_FUNCTION_32();
  }

  v20 = OUTLINED_FUNCTION_65_3();
  v21(v20);
  sub_18F52161C();
  swift_allocObject();
  sub_18F52160C();
  (*(v9 + 8))(v13, v7);
  v22 = (*(v3 + 8))(v25, v26, v3);
  sub_18F179528(v22, v5 & 1);

  sub_18F17AB2C();

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F17914C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v31) = a2;
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0140);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_18F5213AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v32 = *a1;
  v15 = sub_18F27DB1C(v32, v12, v13, v14);
  sub_18F1794B4(v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_18F0EF1A8(v7, &qword_1EACD0140);
    if (qword_1ED6FD658 != -1)
    {
      swift_once();
    }

    v16 = sub_18F52165C();
    __swift_project_value_buffer(v16, qword_1ED707698);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v17 = sub_18F52163C();
    v18 = sub_18F52221C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v19 = 136315138;
      v34 = v32;
      v35 = v12;
      v36 = v13;
      v37 = v14;
      v20 = EntityIdentifier.viewDebugDescription.getter();
      v22 = sub_18F11897C(v20, v21, &v38);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_18F0E9000, v17, v18, "Could not encode payload for identifier: %s. Skipping", v19, 0xCu);
      v23 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x193ADD350](v23, -1, -1);
      MEMORY[0x193ADD350](v19, -1, -1);
    }

    v24 = 1;
    v25 = v33;
  }

  else
  {
    v30 = v3;
    v26 = *(v9 + 32);
    v26(v11, v7, v8);
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_18F53F800;
      v34 = v32;
      v35 = v12;
      v36 = v13;
      v37 = v14;
      *(v27 + 32) = EntityIdentifier.viewDebugDescription.getter();
      *(v27 + 40) = v28;
      sub_18F52137C();
    }

    v25 = v33;
    v26(v33, v11, v8);
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v8);
}

uint64_t sub_18F1794B4@<X0>(uint64_t a1@<X8>)
{
  sub_18F18139C();
  if (v2 >> 60 == 15)
  {
    v3 = 1;
  }

  else
  {
    sub_18F52139C();
    v3 = 0;
  }

  v4 = sub_18F5213AC();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_18F179528(uint64_t a1, int a2)
{
  v3 = v2;
  v65 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0140);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v54 - v6;
  v67 = sub_18F5213AC();
  v8 = *(v67 - 8);
  v9 = MEMORY[0x1EEE9AC00](v67);
  v57 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = v54 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0528);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v70 = v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v63 = v54 - v16;
  v59 = v15;
  v60 = MEMORY[0x1E69E7CC8];
  v71 = MEMORY[0x1E69E7CC8];
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 64);
  v54[1] = v15 + 24;
  v55 = v8;
  v21 = (v18 + 63) >> 6;
  v56 = (v8 + 32);
  v68 = a1;
  result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v23 = 0;
  v64 = v7;
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v23 >= v21)
        {

          return v60;
        }

        v20 = *(v17 + 8 * v23);
        ++v24;
        if (v20)
        {
          v69 = v3;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v69 = v3;
LABEL_11:
    v25 = __clz(__rbit64(v20)) | (v23 << 6);
    v26 = v68;
    v27 = *(v68 + 48);
    v28 = sub_18F52136C();
    v62 = *(v28 - 8);
    v61 = *(v62 + 72);
    v29 = v63;
    (*(v62 + 16))(v63, v27 + v61 * v25, v28);
    v30 = *(v26 + 56) + 32 * v25;
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v33 = v66;
    v34 = v29 + *(v66 + 48);
    *v34 = *v30;
    *(v34 + 16) = v31;
    *(v34 + 24) = v32;
    v35 = v70;
    sub_18F184690(v29, v70, &qword_1EACD0528);
    v36 = *(v33 + 48);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v37 = (v35 + v36);
    v38 = v64;
    v39 = v69;
    sub_18F17914C(v37, v65 & 1, v64);
    v3 = v39;
    if (v39)
    {
      break;
    }

    v20 &= v20 - 1;
    if (__swift_getEnumTagSinglePayload(v38, 1, v67) == 1)
    {
      sub_18F0EF1A8(v70, &qword_1EACD0528);
      result = sub_18F0EF1A8(v38, &qword_1EACD0140);
    }

    else
    {
      v40 = *v56;
      (*v56)(v58, v38, v67);
      sub_18F184690(v70, v59, &qword_1EACD0528);
      v54[0] = v40;
      v40(v57, v58, v67);
      if (v60[3] <= v60[2])
      {
        sub_18F350BFC();
      }

      v41 = v71;
      sub_18F103AB4(&qword_1EACD0450, MEMORY[0x1E69DBC58]);
      result = sub_18F52177C();
      v42 = v41 + 64;
      v60 = v41;
      v43 = -1 << *(v41 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      v46 = (-1 << v44) & ~*(v41 + 64 + 8 * (v44 >> 6));
      v69 = 0;
      if (!v46)
      {
        v48 = 0;
        v49 = (63 - v43) >> 6;
        while (++v45 != v49 || (v48 & 1) == 0)
        {
          v50 = v45 == v49;
          if (v45 == v49)
          {
            v45 = 0;
          }

          v48 |= v50;
          v51 = *(v42 + 8 * v45);
          if (v51 != -1)
          {
            v47 = __clz(__rbit64(~v51)) + (v45 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v47 = __clz(__rbit64(v46)) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v42 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v52 = v60;
      (*(v62 + 32))(v60[6] + v47 * v61, v59, v28);
      (v54[0])(v52[7] + *(v55 + 72) * v47, v57, v67);
      ++v52[2];

      v3 = v69;
    }
  }

  sub_18F0EF1A8(v70, &qword_1EACD0528);
  v53 = v60;

  return v53;
}

uint64_t sub_18F179B34(uint64_t a1)
{
  v2 = v1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0538);
  v4 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v57 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v44 - v8;
  v49 = MEMORY[0x1E69E7CC8];
  v59 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v55 = a1;
  result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return v49;
        }

        v12 = *(v9 + 8 * v15);
        ++v16;
        if (v12)
        {
          v56 = v2;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v56 = v2;
LABEL_11:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = v55;
    v19 = *(v55 + 48);
    v20 = sub_18F52136C();
    v52 = *(v20 - 8);
    v51 = *(v52 + 72);
    v21 = v53;
    (*(v52 + 16))(v53, v19 + v51 * v17, v20);
    v22 = *(v18 + 56);
    v23 = sub_18F5213AC();
    v24 = v22 + *(*(v23 - 8) + 72) * v17;
    v25 = *(v54 + 48);
    v50 = *(v23 - 8);
    (*(v50 + 16))(v21 + v25, v24, v23);
    sub_18F184690(v21, v57, &qword_1EACD0538);
    v26 = v56;
    sub_18F17B154(v58);
    v2 = v26;
    if (v26)
    {
      break;
    }

    v12 &= v12 - 1;
    v27 = v58[0];
    if (v58[0])
    {
      v56 = 0;
      v47 = v58[2];
      v45 = v58[1];
      v46 = v58[3];
      sub_18F184690(v57, v48, &qword_1EACD0538);
      if (v49[3] <= v49[2])
      {
        sub_18F350FA0();
      }

      v28 = v59;
      sub_18F103AB4(&qword_1EACD0450, MEMORY[0x1E69DBC58]);
      result = sub_18F52177C();
      v29 = v28 + 64;
      v49 = v28;
      v30 = -1 << *(v28 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v28 + 64 + 8 * (v31 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v30) >> 6;
        while (++v32 != v35 || (v34 & 1) == 0)
        {
          v36 = v32 == v35;
          if (v32 == v35)
          {
            v32 = 0;
          }

          v34 |= v36;
          v37 = *(v29 + 8 * v32);
          if (v37 != -1)
          {
            v33 = __clz(__rbit64(~v37)) + (v32 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v33 = __clz(__rbit64((-1 << v31) & ~*(v28 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      v44 = *(v54 + 48);
      *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v38 = v49;
      (*(v52 + 32))(v49[6] + v33 * v51, v48, v20);
      v39 = (v38[7] + 32 * v33);
      v41 = v44;
      v40 = v45;
      *v39 = v27;
      v39[1] = v40;
      v42 = v46;
      v39[2] = v47;
      v39[3] = v42;
      ++v38[2];
      result = (*(v50 + 8))(v48 + v41, v23);
      v2 = v56;
    }

    else
    {
      sub_18F0EF1A8(v57, &qword_1EACD0538);
      result = sub_18F184680(0);
    }
  }

  sub_18F0EF1A8(v57, &qword_1EACD0538);
  v43 = v49;

  return v43;
}

uint64_t CollectionsEntityProviding.provideAsyncPayload(for:request:synchronousPayloads:signposter:)()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v2;
  v1[3] = v6;
  v1[4] = v7;
  v8 = sub_18F5213EC();
  v1[9] = v8;
  OUTLINED_FUNCTION_51(v8);
  v1[10] = v9;
  v1[11] = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_34_0();
  v11 = *(v3 - 8);
  v1[13] = v11;
  v1[14] = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_34_0();
  v12 = sub_18F5215DC();
  v1[16] = v12;
  OUTLINED_FUNCTION_51(v12);
  v1[17] = v13;
  v1[18] = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_34_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v1[20] = OUTLINED_FUNCTION_34_0();
  v15 = sub_18F52159C();
  v1[21] = v15;
  OUTLINED_FUNCTION_51(v15);
  v1[22] = v16;
  v1[23] = *(v17 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v18 = sub_18F5213DC();
  v1[27] = v18;
  OUTLINED_FUNCTION_51(v18);
  v1[28] = v19;
  v1[29] = OUTLINED_FUNCTION_34_0();
  sub_18F521EBC();
  v1[30] = sub_18F521EAC();
  OUTLINED_FUNCTION_46();
  v21 = sub_18F521E1C();
  v1[31] = v21;
  v1[32] = v20;

  return MEMORY[0x1EEE6DFA0](sub_18F17A2D0, v21, v20);
}

uint64_t sub_18F17A2D0()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_18F5213BC();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *MEMORY[0x1E69DBC88];
  (*(v2 + 8))(v1, v3);
  sub_18F5215CC();
  sub_18F52156C();
  sub_18F52158C();
  v6 = sub_18F5215CC();
  v7 = sub_18F52236C();
  if (sub_18F52251C())
  {
    v8 = OUTLINED_FUNCTION_54();
    *v8 = 0;
    v9 = sub_18F52157C();
    _os_signpost_emit_with_name_impl(&dword_18F0E9000, v6, v7, v9, "build-async-payload", "", v8, 2u);
    OUTLINED_FUNCTION_32();
  }

  v10 = *(v0 + 200);
  v39 = *(v0 + 208);
  v11 = 3;
  if (v4 != v5)
  {
    v11 = 1;
  }

  v45 = v11;
  v12 = *(v0 + 192);
  v41 = *(v0 + 184);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v49 = *(v0 + 160);
  v52 = *(v0 + 152);
  v40 = *(v0 + 144);
  v46 = *(v0 + 136);
  v50 = *(v0 + 128);
  v53 = *(v0 + 120);
  v43 = *(v0 + 112);
  v47 = *(v0 + 104);
  v55 = *(v0 + 96);
  v42 = *(v0 + 88);
  v48 = *(v0 + 80);
  v54 = *(v0 + 72);
  v35 = *(v0 + 40);
  v36 = *(v0 + 64);
  v44 = *(v0 + 32);
  v38 = *(v0 + 24);
  v51 = *(v0 + 48);

  v15 = *(v13 + 16);
  v15(v12, v10, v14);
  sub_18F52161C();
  swift_allocObject();
  v34 = v12;
  *(v0 + 264) = sub_18F52160C();
  v32 = v13;
  v33 = v14;
  v16 = *(v13 + 8);
  *(v0 + 272) = v16;
  *(v0 + 280) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v14);
  v37 = swift_allocObject();
  *(v0 + 288) = v37;
  v17 = MEMORY[0x1E69E7CC8];
  *(v37 + 16) = MEMORY[0x1E69E7CC8];
  v18 = swift_allocObject();
  *(v0 + 296) = v18;
  *(v18 + 16) = v17;
  sub_18F521EDC();
  v19 = sub_18F521EFC();
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v19);
  (*(v46 + 16))(v52, v35, v50);
  v15(v12, v39, v14);
  (*(v47 + 16))(v53, v36);
  (*(v48 + 16))(v55, v38, v54);
  v20 = (*(v46 + 80) + 64) & ~*(v46 + 80);
  v21 = (v40 + *(v13 + 80) + v20) & ~*(v13 + 80);
  v22 = (v41 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v47 + 80) + v22 + 8) & ~*(v47 + 80);
  v24 = (v43 + *(v48 + 80) + v23) & ~*(v48 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v51;
  *(v25 + 48) = v18;
  *(v25 + 56) = v44;
  (*(v46 + 32))(v25 + v20, v52, v50);
  (*(v32 + 32))(v25 + v21, v34, v33);
  *(v25 + v22) = v37;
  (*(v47 + 32))(v25 + v23, v53, v51);
  (*(v48 + 32))(v25 + v24, v55, v54);
  *(v25 + ((v42 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v26 = sub_18F17B7A0(0, 0, v49, &unk_18F540CC8, v25);
  *(v0 + 304) = v26;
  sub_18F0EF1A8(v49, &qword_1EACD0418);
  v27 = swift_task_alloc();
  *(v0 + 312) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0428);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  *v27 = v0;
  v27[1] = sub_18F17A834;
  v30 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v26, v28, v29, v30);
}

uint64_t sub_18F17A834()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = sub_18F17AA4C;
  }

  else
  {
    v7 = sub_18F17A964;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_18F17A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_29_8();
  sub_18F17AB2C();

  v19 = OUTLINED_FUNCTION_64();
  v18(v19);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_68_1();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_18F17AA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_17_5();

  OUTLINED_FUNCTION_29_8();
  sub_18F17AB2C();

  v19 = OUTLINED_FUNCTION_64();
  v18(v19);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_68_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_18F17AB2C()
{
  OUTLINED_FUNCTION_18();
  v16 = v0;
  OUTLINED_FUNCTION_47_3();
  v1 = sub_18F5215EC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  sub_18F52159C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v9 = sub_18F5215CC();
  sub_18F5215FC();
  v10 = sub_18F52235C();
  if (sub_18F52251C())
  {

    sub_18F52162C();

    if ((*(v3 + 88))(v7, v1) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v11 = "";
    }

    v12 = OUTLINED_FUNCTION_54();
    *v12 = 0;
    v13 = sub_18F52157C();
    _os_signpost_emit_with_name_impl(&dword_18F0E9000, v9, v10, v13, v16, v11, v12, 2u);
    OUTLINED_FUNCTION_32();
  }

  v14 = OUTLINED_FUNCTION_92_0();
  v15(v14);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F17AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v12;
  *(v8 + 184) = v11;
  *(v8 + 168) = v10;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a1;
  *(v8 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18F17AD68, 0, 0);
}

uint64_t sub_18F17AD68()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_18F179B34(v0[17]);
  v2 = v0[16];
  OUTLINED_FUNCTION_55_1();
  *(v2 + 16) = v1;

  v3 = sub_18F5215CC();
  sub_18F52237C();
  if (sub_18F52251C())
  {
    *OUTLINED_FUNCTION_54() = 0;
    v4 = sub_18F52157C();
    OUTLINED_FUNCTION_71_1(&dword_18F0E9000, v5, v6, v4, "begin-fetch-batch-display-representations", "");
    OUTLINED_FUNCTION_24_3();
  }

  v7 = v0[23];
  v8 = v0[16];

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v9 = *(v8 + 16);
  v0[26] = v9;
  v0[14] = v7;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_18F17AF08;
  v11 = v0[22];

  return sub_18F17B3DC(v9, v11, v0 + 14);
}

uint64_t sub_18F17AF08()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F17B024()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[29];
  v2 = v0[20];
  OUTLINED_FUNCTION_55_1();
  *(v2 + 16) = v1;

  v3 = sub_18F5215CC();
  sub_18F52237C();
  if (sub_18F52251C())
  {
    *OUTLINED_FUNCTION_54() = 0;
    v4 = sub_18F52157C();
    OUTLINED_FUNCTION_71_1(&dword_18F0E9000, v5, v6, v4, "end-fetch-batch-display-representations", "");
    OUTLINED_FUNCTION_24_3();
  }

  v7 = v0[20];
  v8 = v0[15];

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *v8 = *(v7 + 16);
  OUTLINED_FUNCTION_20_0();
  v11 = v9;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return v11();
}

double sub_18F17B154@<D0>(uint64_t a1@<X8>)
{
  sub_18F0F21A8(0, &qword_1EACD0540);
  sub_18F0F21A8(0, &qword_1EACD0548);
  v3 = sub_18F52138C();
  v5 = v4;
  v6 = sub_18F5222FC();
  sub_18F123A1C(v3, v5);
  if (!v1)
  {
    if (v6)
    {
      v8 = [v6 entities];
      sub_18F0F21A8(0, &unk_1ED6FE390);
      v9 = sub_18F521CAC();

      if (sub_18F111F70(v9))
      {
        sub_18F1C3ED4(0, (v9 & 0xC000000000000001) == 0, v9);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x193ADBE10](0, v9);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v11 = v10;

        v12 = [v11 value];
        sub_18F52261C();
        swift_unknownObjectRelease();
        sub_18F0F21A8(0, &qword_1EACCDD20);
        if (swift_dynamicCast())
        {
          v13 = v24;
          v14 = [v24 typeIdentifier];
          sub_18F5218DC();

          v15 = [v24 instanceIdentifier];
          v16 = sub_18F5218DC();
          v18 = v17;

          sub_18F1AF5AC(v16, v18, &v21);
          if (v21)
          {
            v19 = v23;
            v7 = v22;
            *a1 = v21;
            *(a1 + 8) = v7;
            *(a1 + 24) = v19;
            return *&v7;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *&v7 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v7;
}

uint64_t sub_18F17B3DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *a3;
  v3[6] = sub_18F521EBC();
  v3[7] = sub_18F521EAC();
  v5 = sub_18F521E1C();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_18F17B480, v5, v4);
}

uint64_t sub_18F17B480()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v0[2] = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0508);
  v0[10] = sub_18F521EAC();
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v4[5] = v0 + 2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_18F17B5BC;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_18F17B5BC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_18F17B728;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_18F17B6C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_18F17B6C8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_18F17B728()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F17B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_18F0F9F88(a3, v21 - v9, &qword_1EACD0418);
  v11 = sub_18F521EFC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_18F0EF1A8(v10, &qword_1EACD0418);
  }

  else
  {
    sub_18F521EEC();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_18F521E1C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_18F52197C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0428);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0428);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_18F17BA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_78();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_18F0F9F88(a3, v25 - v10, &qword_1EACD0418);
  v12 = sub_18F521EFC();
  v13 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_18F0EF1A8(v11, &qword_1EACD0418);
  }

  else
  {
    sub_18F521EEC();
    v16 = OUTLINED_FUNCTION_29_8();
    v17(v16);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_18F521E1C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_18F52197C() + 32;

      if (v21 | v19)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v19;
        v26[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v22;
      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_46();

      return v19;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v21 | v19)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v19;
    v26[7] = v21;
  }

  return OUTLINED_FUNCTION_73_0();
}

uint64_t sub_18F17BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0140);
  v6[24] = swift_task_alloc();
  v7 = sub_18F5213AC();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = type metadata accessor for DisplayRepresentation();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0508);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0510);
  v6[39] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0518);
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  v9 = sub_18F52136C();
  v6[43] = v9;
  v10 = *(v9 - 8);
  v6[44] = v10;
  v6[45] = *(v10 + 64);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0520);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = sub_18F521EBC();
  v6[53] = sub_18F521EAC();
  v12 = sub_18F521E1C();
  v6[54] = v12;
  v6[55] = v11;

  return MEMORY[0x1EEE6DFA0](sub_18F17BFDC, v12, v11);
}

uint64_t sub_18F17BFDC()
{
  v1 = *(v0 + 160);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 160) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v58 = *(v0 + 352);
  v55 = *(v0 + 160);
  v9 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v12 = 0;
  v56 = v8;
  v57 = v3;
  if (v7)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = *(v0 + 400);
      v66 = *(v0 + 392);
      v15 = *(v0 + 344);
      v16 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v17 = v16 | (v13 << 6);
      (*(v58 + 16))();
      v18 = *(v55 + 56) + 32 * v17;
      v19 = *(v18 + 24);
      v64 = *(v18 + 16);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0528);
      v21 = v14 + *(v20 + 48);
      v62 = *v18;
      (*(v58 + 32))(v14, v66, v15);
      *v21 = v62;
      *(v21 + 16) = v64;
      *(v21 + 24) = v19;
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
LABEL_10:
      sub_18F184690(*(v0 + 400), *(v0 + 408), &qword_1EACD0520);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0528);
      v23 = OUTLINED_FUNCTION_44_0();
      if (__swift_getEnumTagSinglePayload(v23, v24, v22) == 1)
      {
        break;
      }

      v25 = *(v0 + 392);
      v26 = *(v0 + 344);
      v27 = *(v0 + 304);
      v65 = *(v0 + 168);
      v67 = *(v0 + 296);
      v28 = (*(v0 + 408) + *(v22 + 48));
      v61 = *(v28 + 3);
      v63 = *(v28 + 2);
      v60 = *(v58 + 32);
      v59 = *v28;
      (v60)(*(v0 + 384));
      sub_18F521EDC();
      v29 = sub_18F521EFC();
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v29);
      v30 = OUTLINED_FUNCTION_62_0();
      v31(v30);
      v32 = (*(v58 + 80) + 72) & ~*(v58 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0u;
      *(v33 + 32) = v59;
      *(v33 + 48) = v63;
      *(v33 + 56) = v61;
      *(v33 + 64) = v65;
      v60(v33 + v32, v25, v26);
      sub_18F0F9F88(v27, v67, &qword_1EACD0418);
      v34 = OUTLINED_FUNCTION_44_0();
      if (__swift_getEnumTagSinglePayload(v34, v35, v29) == 1)
      {
        v36 = OUTLINED_FUNCTION_45();
        sub_18F0EF1A8(v36, v37);
      }

      else
      {
        sub_18F521EEC();
        v38 = OUTLINED_FUNCTION_29_8();
        v39(v38);
      }

      if (*(v33 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v40 = sub_18F521E1C();
        v42 = v41;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      v43 = **(v0 + 152);

      if (v42 | v40)
      {
        v44 = v0 + 80;
        *(v0 + 80) = 0;
        *(v0 + 88) = 0;
        *(v0 + 96) = v40;
        *(v0 + 104) = v42;
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v0 + 304);
      *(v0 + 112) = 1;
      *(v0 + 120) = v44;
      *(v0 + 128) = v43;
      swift_task_create();

      sub_18F0EF1A8(v45, &qword_1EACD0418);
      v46 = OUTLINED_FUNCTION_45();
      v9 = v47(v46);
      v8 = v56;
      v3 = v57;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
    OUTLINED_FUNCTION_80_0();
    sub_18F521F8C();
    v51 = sub_18F521EAC();
    *(v0 + 448) = v51;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 456) = v52;
    *v52 = v53;
    v9 = OUTLINED_FUNCTION_15_8(v52);
    v11 = MEMORY[0x1E69E85E0];
    v10 = v51;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0528);
        v48 = OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v48, v49, 1, v50);
        v7 = 0;
        goto LABEL_10;
      }

      v7 = *(v3 + 8 * v13);
      ++v12;
      if (v7)
      {
        v12 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DAD8](v9, v10, v11);
}

uint64_t sub_18F17C56C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[58] = v0;

  v7 = v3[54];
  v8 = v3[55];
  if (v0)
  {
    v9 = sub_18F17D254;
  }

  else
  {
    v9 = sub_18F17C678;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_18F17C678()
{
  v1 = v0[39];
  v2 = v0[34];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[41] + 8))(v0[42], v0[40]);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_70_0();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[44];
  v126 = v0[47];
  v128 = v5;
  v6 = v0[35];
  v7 = v0[36];
  v117 = v0[33];
  v119 = v0[32];
  v8 = *(v2 + 48);
  v9 = (v1 + v8);
  v121 = v0[29];
  v124 = *(v1 + v8 + 16);
  v113 = v0[43];
  v115 = *(v1 + v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8);
  v111 = *(v10 + 48);
  v11 = v7 + v8;
  v12 = *(v5 + 32);
  v110 = *v9;
  v12(v7, v1, v113);
  v13 = *(v10 + 48);
  *v11 = v110;
  *(v11 + 16) = v124;
  *(v11 + 24) = v115;
  sub_18F184690(v9 + v111, v11 + v13, &qword_1EACD32D0);
  v14 = OUTLINED_FUNCTION_65_3();
  sub_18F0F9F88(v14, v15, v16);
  v17 = v6 + *(v2 + 48);

  v18 = *(v10 + 48);
  v12(v126, v6, v113);
  sub_18F0EF1A8(v17 + v18, &qword_1EACD32D0);
  v19 = OUTLINED_FUNCTION_65_3();
  sub_18F0F9F88(v19, v20, &qword_1EACD0508);
  v21 = (v6 + *(v2 + 48));
  isUniquelyReferenced_nonNull_native = *v21;
  v125 = v21[2];
  v127 = v21[1];
  v116 = v21[3];
  sub_18F0EF1A8(v21 + *(v10 + 48), &qword_1EACD32D0);
  v23 = *(v128 + 8);
  v24 = OUTLINED_FUNCTION_64();
  v23(v24);
  v25 = OUTLINED_FUNCTION_65_3();
  sub_18F0F9F88(v25, v26, &qword_1EACD0508);
  v27 = v6 + *(v2 + 48);

  sub_18F184690(v27 + *(v10 + 48), v117, &qword_1EACD32D0);
  v28 = OUTLINED_FUNCTION_64();
  v114 = v23;
  v23(v28);
  sub_18F0F9F88(v117, v119, &qword_1EACD32D0);
  v29 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v30, v121);
  v32 = v0[32];
  v112 = isUniquelyReferenced_nonNull_native;
  if (EnumTagSinglePayload != 1)
  {
    v33 = v116;
    v37 = v0[30];
    v38 = v0[31];
    sub_18F143B8C(v32, v38);
    sub_18F1844BC(v38, v37);
    v39 = *(v127 + 8);
    static AppValue._identifier.getter(isUniquelyReferenced_nonNull_native, v39);
    if (dynamic_cast_existential_1_conditional(isUniquelyReferenced_nonNull_native))
    {
      if (qword_1ED6FF6D8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    goto LABEL_13;
  }

  sub_18F0EF1A8(v32, &qword_1EACD32D0);
  v33 = v116;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v34 = v125;
  sub_18F23311C();
  v36 = v35;
  while (1)
  {
    v54 = v0[24];
    v53 = v0[25];
    v55 = v36;
    sub_18F1794B4(v54);

    if (__swift_getEnumTagSinglePayload(v54, 1, v53) == 1)
    {
      sub_18F0EF1A8(v0[24], &qword_1EACD0140);
      if (qword_1ED6FD658 != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      v56 = sub_18F52165C();
      __swift_project_value_buffer(v56, qword_1ED707698);
      v57 = OUTLINED_FUNCTION_56();
      v58(v57);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v59 = sub_18F52163C();
      v60 = sub_18F52221C();

      v61 = os_log_type_enabled(v59, v60);
      v62 = v0[46];
      v63 = v33;
      v64 = v0[43];
      v65 = v0[36];
      v118 = v0[33];
      v120 = v0[47];
      if (v61)
      {
        v122 = v55;
        v66 = swift_slowAlloc();
        OUTLINED_FUNCTION_52_0();
        *v66 = 136315394;
        v0[2] = v112;
        v0[3] = v127;
        v0[4] = v125;
        v0[5] = v63;
        EntityIdentifier.viewDebugDescription.getter();

        v67 = OUTLINED_FUNCTION_29_8();
        v70 = sub_18F11897C(v67, v68, v69);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        IntelligenceDataSourceItem.debugDescription.getter();
        v114(v62, v64);
        v71 = OUTLINED_FUNCTION_29_8();
        v74 = sub_18F11897C(v71, v72, v73);

        *(v66 + 14) = v74;
        _os_log_impl(&dword_18F0E9000, v59, v60, "Could not encode LNValue after Display Representation fetch task for identifier: %s for item: %s. Skipping", v66, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      else
      {

        v114(v62, v64);
      }

      sub_18F0EF1A8(v118, &qword_1EACD32D0);
      v114(v120, v64);
      sub_18F0EF1A8(v65, &qword_1EACD0508);
      goto LABEL_36;
    }

    v123 = v55;
    v75 = *(v0[26] + 32);
    v75(v0[28], v0[24], v0[25]);
    if (sub_18F5213CC())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_18F53F800;
      v0[6] = v112;
      v0[7] = v127;
      v0[8] = v34;
      v0[9] = v33;
      *(v76 + 32) = EntityIdentifier.viewDebugDescription.getter();
      *(v76 + 40) = v77;

      sub_18F52137C();
    }

    else
    {
    }

    v78 = v0[23];
    (*(v0[26] + 16))(v0[27], v0[28], v0[25]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *v78;
    v0[18] = *v78;
    *v78 = 0x8000000000000000;
    sub_18F181980();
    v82 = *(v79 + 16);
    v83 = (v81 & 1) == 0;
    v39 = v82 + v83;
    if (!__OFADD__(v82, v83))
    {
      break;
    }

    __break(1u);
LABEL_40:
    swift_once();
LABEL_9:
    v40 = v0[58];

    static AppValue._identifier.getter(isUniquelyReferenced_nonNull_native, v39);
    OUTLINED_FUNCTION_37();
    v42 = sub_18F164CE8(v41);
    if (v40)
    {
    }

    else
    {
      v43 = v42;

      v44 = v43;
      sub_18F1AF344();
    }

LABEL_13:
    v45 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    objc_allocWithZone(MEMORY[0x1E69AC7E0]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F166ED0();
    v47 = v46;
    v48 = [objc_allocWithZone(MEMORY[0x1E69AC7E8]) init];
    sub_18F13FE10();
    v50 = v49;
    OUTLINED_FUNCTION_19_4();
    v36 = [v51 v52];

    v34 = v125;
    sub_18F184514();
    sub_18F184514();
  }

  v84 = v80;
  v85 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0530);
  if ((sub_18F5229DC() & 1) == 0)
  {
LABEL_31:
    v90 = v0[18];
    if (v85)
    {
      (*(v0[26] + 40))(v90[7] + *(v0[26] + 72) * v84, v0[27], v0[25]);
    }

    else
    {
      v91 = v0[47];
      v92 = v0[43];
      v93 = v0[44];
      v95 = v0[26];
      v94 = v0[27];
      v96 = v0[25];
      v90[(v84 >> 6) + 8] |= 1 << v84;
      (*(v93 + 16))(v90[6] + *(v93 + 72) * v84, v91, v92);
      v75(v90[7] + *(v95 + 72) * v84, v94, v96);
      v97 = v90[2];
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8]();
      }

      v90[2] = v99;
    }

    v100 = v0[47];
    v101 = v0[43];
    v102 = v0[36];
    v103 = v0[33];
    v104 = v0[23];

    v105 = OUTLINED_FUNCTION_78();
    v106(v105);
    sub_18F0EF1A8(v103, &qword_1EACD32D0);
    v114(v100, v101);
    sub_18F0EF1A8(v102, &qword_1EACD0508);
    *v104 = v90;

LABEL_36:
    v0[56] = sub_18F521EAC();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[57] = v107;
    *v107 = v108;
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_70_0();

    return MEMORY[0x1EEE6DAD8]();
  }

  sub_18F181980();
  if ((v85 & 1) == (v87 & 1))
  {
    v84 = v86;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_70_0();

  return sub_18F522E2C();
}

uint64_t sub_18F17D254()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];

  (*(v1 + 8))(v2, v3);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F17D3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v11;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F17D480, 0, 0);
}

uint64_t sub_18F17D480()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  *(v0 + 16) = "FetchDisplayRepresentation";
  *(v0 + 24) = 26;
  *(v0 + 32) = 2;
  *(v0 + 40) = *(v0 + 88);
  *(v0 + 56) = v3;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v4;
  *v4 = v5;
  v4[1] = sub_18F17D568;
  v6 = *(v0 + 136);

  return (sub_18F1A4F10)(v6, v0 + 16);
}

uint64_t sub_18F17D568()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 152) = v0;

  sub_18F16AD28(v3 + 16);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F17D668()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0508) + 48);
  sub_18F52136C();
  OUTLINED_FUNCTION_10_0();
  v11 = *(v0 + 88);
  (*(v7 + 16))(v5, v1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
  *v6 = v11;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  sub_18F184690(v2, v6 + v8, &qword_1EACD32D0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t sub_18F17D78C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t IntelligenceDataSourceItem.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_18F520FFC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = sub_18F52136C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = (v14 - v13);
  (*(v11 + 16))(v14 - v13, v1, v9);
  v16 = (*(v11 + 88))(v15, v9);
  if (v16 == *MEMORY[0x1E69DBC38])
  {
    v17 = OUTLINED_FUNCTION_22_7();
    v18(v17);
    (*(v4 + 32))(v8, v15, v2);
    sub_18F52279C();

    OUTLINED_FUNCTION_21_5();
    *&v44 = v20 | 2;
    *(&v44 + 1) = v19;
    v21 = MEMORY[0x193ADA5D0]();
    MEMORY[0x193ADB000](v21);

    MEMORY[0x193ADB000](62, 0xE100000000000000);
    v22 = v44;
    v23 = OUTLINED_FUNCTION_80_0();
    v24(v23);
  }

  else if (v16 == *MEMORY[0x1E69DBC40])
  {
    v25 = OUTLINED_FUNCTION_22_7();
    v26(v25);
    v27 = v15[1];
    v44 = *v15;
    v45 = v27;
    v46 = *(v15 + 4);
    sub_18F52279C();

    OUTLINED_FUNCTION_21_5();
    v47 = v29 | 4;
    v48 = v28;
    v30 = sub_18F5226DC();
    MEMORY[0x193ADB000](v30);

    MEMORY[0x193ADB000](62, 0xE100000000000000);
    v22 = v47;
    sub_18F0EF654(&v44);
  }

  else if (v16 == *MEMORY[0x1E69DBC50])
  {
    v31 = OUTLINED_FUNCTION_22_7();
    v32(v31);
    v33 = *v15;
    *(&v44 + 1) = 0xEB00000000203A6DLL;
    v47 = v33;
    v34 = sub_18F522C9C();
    MEMORY[0x193ADB000](v34);

    MEMORY[0x193ADB000](62, 0xE100000000000000);
    return 0x65744920776F523CLL;
  }

  else if (v16 == *MEMORY[0x1E69DBC48])
  {
    v35 = OUTLINED_FUNCTION_22_7();
    v36(v35);
    v37 = *v15;
    v38 = *(v15 + 24);
    v44 = *(v15 + 8);
    v45 = v38;
    v48 = 0xE000000000000000;
    sub_18F52279C();

    OUTLINED_FUNCTION_21_5();
    v49 = v40;
    v50 = v39;
    v47 = v37;
    v41 = sub_18F522C9C();
    MEMORY[0x193ADB000](v41);

    MEMORY[0x193ADB000](8236, 0xE200000000000000);
    sub_18F0F9F88(&v44, &v47, &qword_1EACD0430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430);
    v42 = sub_18F52194C();
    MEMORY[0x193ADB000](v42);

    MEMORY[0x193ADB000](15965, 0xE200000000000000);
    v22 = v49;
    sub_18F0EF1A8(&v44, &qword_1EACD0430);
  }

  else
  {
    (*(v11 + 8))(v15, v9);
    return 0;
  }

  return v22;
}

uint64_t (*CollectionsEntityProvider.collection.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_51_2(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_18F17DCC4;
}

uint64_t sub_18F17DCC8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18F17DD78()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t (*CollectionsEntityProvider.dataSource.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_51_2(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_18F1846EC;
}

void sub_18F17DE28(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *CollectionsEntityProvider.__allocating_init(provider:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_46();
  return CollectionsEntityProvider.init(provider:)(v2);
}

void sub_18F17DED8()
{
  OUTLINED_FUNCTION_18();
  v2 = sub_18F5215DC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0500), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_18F0EF1A8(&v8, &qword_1EACD04F8);
    sub_18F52136C();
    OUTLINED_FUNCTION_57_0();
    sub_18F5213AC();
    OUTLINED_FUNCTION_3_7();
    sub_18F103AB4(v6, v7);
    sub_18F5216CC();
    goto LABEL_7;
  }

  sub_18F0FD0B4(&v8, v11);
  __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
  (*(v4 + 16))(v1, v0 + OBJC_IVAR____TtC10AppIntents25CollectionsEntityProvider_signposter, v2);
  CollectionsEntityProviding.provideSyncPayload(for:signposter:includeDebugDescription:)();
  (*(v4 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
LABEL_7:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F17E0E4()
{
  OUTLINED_FUNCTION_69();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = sub_18F5215DC();
  v1[20] = v5;
  OUTLINED_FUNCTION_51(v5);
  v1[21] = v6;
  v1[22] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F17E190()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (*(v0 + 120) = Strong, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0500), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v0 + 80))
    {
      v3 = *(v0 + 168);
      v2 = *(v0 + 176);
      v5 = *(v0 + 152);
      v4 = *(v0 + 160);
      sub_18F0FD0B4((v0 + 56), v0 + 16);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
      (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC10AppIntents25CollectionsEntityProvider_signposter, v4);
      v6 = swift_task_alloc();
      *(v0 + 184) = v6;
      *v6 = v0;
      v6[1] = sub_18F17E3BC;

      return CollectionsEntityProviding.provideAsyncPayload(for:request:synchronousPayloads:signposter:)();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_18F0EF1A8(v0 + 56, &qword_1EACD04F8);
  sub_18F52136C();
  OUTLINED_FUNCTION_47_3();
  sub_18F5213AC();
  OUTLINED_FUNCTION_3_7();
  sub_18F103AB4(v8, v9);
  sub_18F5216CC();

  v10 = OUTLINED_FUNCTION_12_7();

  return v11(v10);
}

uint64_t sub_18F17E3BC()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v1;
  v5[24] = v0;

  v7 = v4[22];
  v8 = v4[21];
  v9 = v4[20];
  if (!v0)
  {
    v5[25] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F17E534()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = OUTLINED_FUNCTION_12_7();

  return v2(v1);
}

uint64_t sub_18F17E598()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

id CollectionsEntityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollectionsEntityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL CollectionsEntityProvider.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)()
{
  v0 = sub_18F5213DC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = OUTLINED_FUNCTION_56_1();
  v8(v7);
  sub_18F5213BC();
  OUTLINED_FUNCTION_6_9();
  sub_18F103AB4(v9, v10);
  OUTLINED_FUNCTION_92_0();
  v11 = sub_18F52180C();
  v12 = *(v2 + 8);
  v13 = OUTLINED_FUNCTION_80_0();
  v12(v13);
  (v12)(v6, v0);
  return (v11 & 1) == 0;
}

void CollectionsEntityProvider.intelligenceAppIntentsPayloads(for:request:)()
{
  OUTLINED_FUNCTION_18();
  v4 = v3;
  OUTLINED_FUNCTION_57_0();
  v5 = sub_18F5213EC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  sub_18F521EBC();
  v29 = v1;
  v30 = v0;
  v31 = v4;
  v9 = sub_18F17ED54(sub_18F18177C, &v28, "AppIntents/CollectionsEntityProvider.swift", 42);
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v10 = sub_18F52165C();
  __swift_project_value_buffer(v10, qword_1ED707698);
  (*(v7 + 16))(v2, v4, v5);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v11 = v1;
  v12 = sub_18F52163C();
  v13 = sub_18F5221FC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_75();
    v32 = OUTLINED_FUNCTION_52_0();
    *v14 = 134218498;
    *(v14 + 4) = *(v9 + 16);

    *(v14 + 12) = 2080;
    v27 = v13;
    v15 = v11;
    v16 = [v15 description];
    v17 = sub_18F5218DC();
    v18 = v5;
    v20 = v19;

    sub_18F11897C(v17, v20, &v32);
    OUTLINED_FUNCTION_53_1();
    *(v14 + 14) = v15;
    *(v14 + 22) = 2080;
    OUTLINED_FUNCTION_2_15();
    sub_18F103AB4(v21, v22);
    v23 = sub_18F522C9C();
    (*(v7 + 8))(v2, v18);
    v24 = OUTLINED_FUNCTION_62_0();
    sub_18F11897C(v24, v25, v26);
    OUTLINED_FUNCTION_53_1();
    *(v14 + 24) = v23;
    _os_log_impl(&dword_18F0E9000, v12, v27, "Returning payload containing %ld entities in the collection from %s for request %s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {

    (*(v7 + 8))(v2, v5);
  }

  OUTLINED_FUNCTION_16();
}

void sub_18F17EB6C(void *a1@<X8>)
{
  sub_18F5213CC();
  sub_18F17DED8();
  *a1 = v2;
}

uint64_t sub_18F17EBC8(uint64_t a1, uint64_t a2)
{
  sub_18F521EAC();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_18F184318();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_18F52279C();
    MEMORY[0x193ADB000](0xD00000000000003FLL, 0x800000018F525FD0);
    v8 = sub_18F52307C();
    MEMORY[0x193ADB000](v8);

    MEMORY[0x193ADB000](46, 0xE100000000000000);
    result = sub_18F522A3C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18F17ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18F521EAC();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_18F1843C0(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD00000000000003FLL, 0x800000018F525FD0);
  v12 = sub_18F52307C();
  MEMORY[0x193ADB000](v12);

  MEMORY[0x193ADB000](46, 0xE100000000000000);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t CollectionsEntityProvider.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)()
{
  OUTLINED_FUNCTION_69();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_18F5213EC();
  v1[6] = v5;
  OUTLINED_FUNCTION_51(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_34_0();
  v7 = sub_18F5213DC();
  v1[9] = v7;
  OUTLINED_FUNCTION_51(v7);
  v1[10] = v8;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_18F521EBC();
  v1[13] = sub_18F521EAC();
  OUTLINED_FUNCTION_46();
  v10 = sub_18F521E1C();
  v1[14] = v10;
  v1[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_18F17F04C, v10, v9);
}

uint64_t sub_18F17F04C()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v4 + 104))(v1, *MEMORY[0x1E69DBC90], v3);
  sub_18F5213BC();
  OUTLINED_FUNCTION_6_9();
  sub_18F103AB4(v5, v6);
  v7 = sub_18F52180C();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {

    sub_18F52136C();
    OUTLINED_FUNCTION_47_3();
    sub_18F5213AC();
    OUTLINED_FUNCTION_3_7();
    sub_18F103AB4(v9, v10);
    sub_18F5216CC();

    v11 = OUTLINED_FUNCTION_12_7();

    return v12(v11);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_18F17F248;

    return sub_18F17E0E4();
  }
}

uint64_t sub_18F17F248()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v3 + 136) = v5;
  *(v3 + 144) = v0;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_18F17F634;
  }

  else
  {
    v8 = sub_18F17F380;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_18F17F380()
{
  v33 = v0;

  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = sub_18F52165C();
  __swift_project_value_buffer(v6, qword_1ED707698);
  (*(v2 + 16))(v1, v5, v3);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = v4;
  v8 = sub_18F52163C();
  v9 = sub_18F5221FC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v10)
  {
    v31 = v9;
    v15 = v0[5];
    v16 = OUTLINED_FUNCTION_75();
    v32 = OUTLINED_FUNCTION_52_0();
    *v16 = 134218498;
    *(v16 + 4) = *(v11 + 16);

    *(v16 + 12) = 2080;
    v17 = v15;
    v18 = [v17 description];
    v19 = sub_18F5218DC();
    v21 = v20;

    v22 = sub_18F11897C(v19, v21, &v32);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    OUTLINED_FUNCTION_2_15();
    sub_18F103AB4(v23, v24);
    v25 = sub_18F522C9C();
    v27 = v26;
    (*(v13 + 8))(v12, v14);
    sub_18F11897C(v25, v27, &v32);
    OUTLINED_FUNCTION_53_1();
    *(v16 + 24) = v12;
    OUTLINED_FUNCTION_72_0(&dword_18F0E9000, "Returning asynchronously built payload containing %ld entities in the collection from %s for request %s", v31);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_24_3();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v28 = OUTLINED_FUNCTION_12_7();

  return v29(v28);
}

uint64_t sub_18F17F634()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F17F6F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F17F7A8;

  return CollectionsEntityProvider.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)();
}

uint64_t sub_18F17F7A8()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  OUTLINED_FUNCTION_20_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_18F17F894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18F1846FC;

  return MEMORY[0x1EEE4BE28](a1, a2, a3, a4);
}

uint64_t CollectionsEntityProvidingWrapper.init(closure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_18F52165C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  type metadata accessor for CollectionsEntityProvidingWrapper();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v11 = __swift_project_value_buffer(v7, qword_1ED707698);
  (*(v9 + 16))(v3, v11, v7);
  result = sub_18F5215AC();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double (*sub_18F17FA70(uint64_t a1, uint64_t a2, uint64_t a3))@<D0>(_OWORD *a1@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *(a3 + 16);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  return sub_18F1843B4;
}

double sub_18F17FAE8@<D0>(void (*a1)(_BYTE *)@<X1>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v6 = sub_18F52254C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18F52270C();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a2);
    (*(v11 + 32))(v13, v10, a2);
    a1(v13);
    (*(v11 + 8))(v13, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void CollectionsEntityProvidingWrapper.appEntityIdentifiers(for:)()
{
  OUTLINED_FUNCTION_18();
  v90 = v0;
  v89 = v1;
  v3 = v2;
  isUniquelyReferenced_nonNull_native = sub_18F52136C();
  OUTLINED_FUNCTION_0();
  v87 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v91 = v7 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v92 = v82 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v93 = v82 - v12;
  v13 = sub_18F52146C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v82 - v21);
  if (qword_1ED6FD658 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_8();
  }

  v23 = sub_18F52165C();
  v24 = __swift_project_value_buffer(v23, qword_1ED707698);
  v82[0] = v15[2];
  (v82[0])(v22, v3, v13);
  v25 = sub_18F52163C();
  v26 = sub_18F52223C();
  v27 = os_log_type_enabled(v25, v26);
  v82[2] = v24;
  v82[1] = v15 + 2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    v29 = *(sub_18F52145C() + 16);

    v30 = OUTLINED_FUNCTION_33_5();
    v31(v30);
    *(v28 + 4) = v29;
    _os_log_impl(&dword_18F0E9000, v25, v26, "Requesting %{public}ld entity identifiers from provider closure", v28, 0xCu);
    OUTLINED_FUNCTION_32();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_33_5();
    v33(v32);
  }

  v84 = v19;
  v85 = v15;
  v86 = v13;

  v83 = v3;
  v34 = sub_18F52145C();
  v35 = v91;
  v105 = *(v34 + 16);
  if (v105)
  {
    v3 = 0;
    v19 = v87;
    v104 = v34 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v103 = v87 + 88;
    v102 = *MEMORY[0x1E69DBC40];
    v101 = (v87 + 8);
    v99 = MEMORY[0x1E69E7CC8];
    v88 = v87 + 96;
    v36 = v92;
    v13 = v93;
    v100 = v34;
    v97 = v87 + 16;
    while (1)
    {
      if (v3 >= *(v34 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v37 = *(v19 + 72);
      v15 = *(v19 + 16);
      (v15)(v13, v104 + v37 * v3, isUniquelyReferenced_nonNull_native);
      v38 = OUTLINED_FUNCTION_45();
      (v15)(v38);
      v39 = OUTLINED_FUNCTION_63();
      v41 = v40(v39);
      if (v41 == v102)
      {
        v42 = OUTLINED_FUNCTION_63();
        v43(v42);
        v44 = *(v36 + 1);
        v108[0] = *v36;
        v108[1] = v44;
        v109 = *(v36 + 4);
        v22 = sub_18F17FA70(*v90, v90[1], v89);
        v46 = v45;
        (v15)(v35, v13, isUniquelyReferenced_nonNull_native);
        v98 = v46;
        v22(v107, v108);
        v13 = v107[0];
        if (v107[0])
        {
          v19 = isUniquelyReferenced_nonNull_native;
          v94 = v107[1];
          v95 = v107[2];
          v96 = v107[3];
          v47 = v99;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v47;
          sub_18F181980();
          if (__OFADD__(v47[2], (v49 & 1) == 0))
          {
            goto LABEL_33;
          }

          v50 = v48;
          v51 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD0458);
          if (sub_18F5229DC())
          {
            sub_18F181980();
            isUniquelyReferenced_nonNull_native = v19;
            if ((v51 & 1) != (v53 & 1))
            {
              sub_18F522E2C();
              __break(1u);
              return;
            }

            v50 = v52;
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v19;
          }

          v19 = v87;
          v62 = v106;
          v99 = v106;
          if (v51)
          {
            OUTLINED_FUNCTION_38_2((v106[7] + 32 * v50));

            v22 = *v101;
            v35 = v91;
            (*v101)(v91, isUniquelyReferenced_nonNull_native);
            sub_18F0EF654(v108);
            v63 = OUTLINED_FUNCTION_59_0();
            (v22)(v63);
          }

          else
          {
            v106[(v50 >> 6) + 8] |= 1 << v50;
            v64 = v91;
            (v15)(v62[6] + v50 * v37, v91, isUniquelyReferenced_nonNull_native);
            v65 = (v62[7] + 32 * v50);
            v35 = v64;
            OUTLINED_FUNCTION_38_2(v65);
            v22 = *v101;
            (*v101)(v35, isUniquelyReferenced_nonNull_native);
            sub_18F0EF654(v108);
            v66 = OUTLINED_FUNCTION_59_0();
            (v22)(v66);
            v67 = v62[2];
            v68 = __OFADD__(v67, 1);
            v69 = v67 + 1;
            if (v68)
            {
              goto LABEL_34;
            }

            v62[2] = v69;
          }
        }

        else
        {
          v55 = v99;
          sub_18F181980();
          v57 = v35;
          if (v58)
          {
            v59 = v56;
            swift_isUniquelyReferenced_nonNull_native();
            v106 = v55;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD0458);
            sub_18F5229DC();
            v60 = v106;
            v22 = *v101;
            (*v101)(v106[6] + v59 * v37, isUniquelyReferenced_nonNull_native);

            OUTLINED_FUNCTION_3_7();
            sub_18F103AB4(&qword_1EACD0450, v61);
            v99 = v60;
            sub_18F5229FC();
          }

          else
          {

            v22 = *v101;
          }

          v22(v57, isUniquelyReferenced_nonNull_native);
          sub_18F0EF654(v108);
          v70 = v93;
          v71 = OUTLINED_FUNCTION_63();
          (v22)(v71);
          v35 = v57;
          v13 = v70;
        }

        v34 = v100;
        v36 = v92;
      }

      else
      {
        v15 = v101;
        v22 = *v101;
        (*v101)(v13, isUniquelyReferenced_nonNull_native);
        v54 = OUTLINED_FUNCTION_63();
        (v22)(v54);
        v34 = v100;
      }

      if (v105 == ++v3)
      {
        goto LABEL_28;
      }
    }
  }

  v99 = MEMORY[0x1E69E7CC8];
LABEL_28:

  (v82[0])(v84, v83, v86);
  v72 = v99;
  swift_bridgeObjectRetain_n();
  v73 = sub_18F52163C();
  v74 = sub_18F52223C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134349312;
    v76 = *(sub_18F52145C() + 16);

    v77 = OUTLINED_FUNCTION_28_7();
    v78(v77);
    *(v75 + 4) = v76;
    *(v75 + 12) = 2050;
    v79 = v72[2];

    *(v75 + 14) = v79;

    _os_log_impl(&dword_18F0E9000, v73, v74, "Finished requesting %{public}ld entity identifiers (retrieved %{public}ld", v75, 0x16u);
    OUTLINED_FUNCTION_24_3();
  }

  else
  {

    v80 = OUTLINED_FUNCTION_28_7();
    v81(v80);
  }

  OUTLINED_FUNCTION_16();
}

BOOL CollectionsEntityProvidingWrapper.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)()
{
  v0 = sub_18F5213DC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = OUTLINED_FUNCTION_56_1();
  v8(v7);
  sub_18F5213BC();
  OUTLINED_FUNCTION_6_9();
  sub_18F103AB4(v9, v10);
  OUTLINED_FUNCTION_92_0();
  v11 = sub_18F52180C();
  v12 = *(v2 + 8);
  v13 = OUTLINED_FUNCTION_80_0();
  v12(v13);
  (v12)(v6, v0);
  return (v11 & 1) == 0;
}

void CollectionsEntityProvidingWrapper.intelligenceAppIntentsPayloads(for:request:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_47_3();
  v5 = sub_18F5213EC();
  OUTLINED_FUNCTION_0();
  v50 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v52 = v2;
  v11 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v49 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  sub_18F521EBC();
  v53[1] = *(v2 + 16);
  v54 = v0;
  v55 = v0;
  v18 = v4;
  v56 = v4;
  v19 = sub_18F17ED54(sub_18F184180, v53, "AppIntents/CollectionsEntityProvider.swift", 42);
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v20 = sub_18F52165C();
  __swift_project_value_buffer(v20, qword_1ED707698);
  v21 = *(v11 + 16);
  v22 = OUTLINED_FUNCTION_66_0();
  v21(v22);
  v23 = v50;
  (*(v50 + 16))(v10, v18, v5);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v24 = sub_18F52163C();
  v48 = sub_18F5221FC();
  if (os_log_type_enabled(v24, v48))
  {
    v25 = OUTLINED_FUNCTION_75();
    v45 = v5;
    v46 = v24;
    v51 = v19;
    v26 = v23;
    v27 = v25;
    v47 = OUTLINED_FUNCTION_52_0();
    v57 = v47;
    *v27 = 134218498;
    *(v27 + 4) = *(v51 + 16);

    *(v27 + 12) = 2080;
    v28 = OUTLINED_FUNCTION_29_8();
    v21(v28);
    v29 = sub_18F52194C();
    v30 = OUTLINED_FUNCTION_66_0();
    v31(v30);
    v32 = OUTLINED_FUNCTION_62_0();
    sub_18F11897C(v32, v33, v34);
    OUTLINED_FUNCTION_53_1();
    *(v27 + 14) = v29;
    *(v27 + 22) = 2080;
    OUTLINED_FUNCTION_2_15();
    sub_18F103AB4(v35, v36);
    v37 = v45;
    v38 = sub_18F522C9C();
    v40 = v39;
    (*(v26 + 8))(v10, v37);
    v41 = sub_18F11897C(v38, v40, &v57);

    *(v27 + 24) = v41;
    v42 = v46;
    _os_log_impl(&dword_18F0E9000, v46, v48, "Returning payload containing %ld entities in the collection from %s for request %s", v27, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {

    v43 = OUTLINED_FUNCTION_78();
    v44(v43);
    (*(v11 + 8))(v17, v52);
  }

  OUTLINED_FUNCTION_16();
}

void sub_18F180AD8(void *a1@<X8>)
{
  type metadata accessor for CollectionsEntityProvidingWrapper();
  CollectionsEntityProvidingWrapper.syncPayload(for:request:)();
  *a1 = v2;
}

void CollectionsEntityProvidingWrapper.syncPayload(for:request:)()
{
  sub_18F5213CC();

  CollectionsEntityProviding.provideSyncPayload(for:signposter:includeDebugDescription:)();
}

uint64_t CollectionsEntityProvidingWrapper.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)()
{
  OUTLINED_FUNCTION_31();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_18F5213EC();
  v1[5] = v4;
  OUTLINED_FUNCTION_51(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_11_0();
  v1[8] = v6;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = sub_18F521EBC();
  v1[12] = sub_18F521EAC();
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v1;
  v7[1] = sub_18F180D2C;

  return CollectionsEntityProvidingWrapper.asyncPayload(for:request:synchronousPayloads:)();
}

uint64_t sub_18F180D2C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v5 + 112) = v4;
  *(v5 + 120) = v0;

  v7 = sub_18F521E1C();
  if (v0)
  {
    v8 = sub_18F18117C;
  }

  else
  {
    v8 = sub_18F180E7C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_18F180E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_69_1();
  a25 = v27;
  a26 = v28;
  a24 = v26;

  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v72 = v26[14];
  v29 = v26[10];
  v30 = v26[7];
  v31 = v26[8];
  v33 = v26[5];
  v32 = v26[6];
  v35 = v26[3];
  v34 = v26[4];
  v36 = v26[2];
  v37 = sub_18F52165C();
  __swift_project_value_buffer(v37, qword_1ED707698);
  v71 = *(v31 + 16);
  v71(v29, v34, v35);
  (*(v32 + 16))(v30, v36, v33);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v38 = sub_18F52163C();
  v39 = sub_18F5221FC();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v26[14];
  v42 = v26[10];
  if (v40)
  {
    v43 = v26[8];
    v44 = v26[6];
    a10 = v26[5];
    a11 = v26[7];
    LODWORD(v72) = v39;
    v45 = v26[3];
    v46 = OUTLINED_FUNCTION_75();
    a12 = OUTLINED_FUNCTION_52_0();
    a15 = a12;
    *v46 = 134218498;
    *(v46 + 4) = *(v41 + 16);

    *(v46 + 12) = 2080;
    v47 = OUTLINED_FUNCTION_78();
    (v71)(v47);
    v48 = sub_18F52194C();
    v50 = v49;
    (*(v43 + 8))(v42, v45);
    v51 = sub_18F11897C(v48, v50, &a15);

    *(v46 + 14) = v51;
    *(v46 + 22) = 2080;
    OUTLINED_FUNCTION_2_15();
    sub_18F103AB4(v52, v53);
    v54 = sub_18F522C9C();
    (*(v44 + 8))(a11, a10);
    v55 = OUTLINED_FUNCTION_62_0();
    sub_18F11897C(v55, v56, v57);
    OUTLINED_FUNCTION_53_1();
    *(v46 + 24) = v54;
    OUTLINED_FUNCTION_72_0(&dword_18F0E9000, "Returning asynchronously built payload containing %ld entities in the collection from %s for request %s", v72);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_24_3();
  }

  else
  {
    v58 = v26[8];
    v59 = v26[3];

    v60 = OUTLINED_FUNCTION_45();
    v61(v60);
    (*(v58 + 8))(v42, v59);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_68_1();

  return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, v71, v72, a15, a16, a17, a18);
}

uint64_t sub_18F18117C()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t CollectionsEntityProvidingWrapper.asyncPayload(for:request:synchronousPayloads:)()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1846FC;

  return CollectionsEntityProviding.provideAsyncPayload(for:request:synchronousPayloads:signposter:)();
}

uint64_t sub_18F1812E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1846FC;

  return CollectionsEntityProvidingWrapper.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)();
}

uint64_t sub_18F18139C()
{
  v9[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18F53F7E0;
  *(v1 + 32) = v0;
  objc_allocWithZone(MEMORY[0x1E69AD088]);
  v2 = v0;
  v3 = sub_18F33C1F4();
  v9[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v9];
  v5 = v9[0];
  if (v4)
  {
    sub_18F520D4C();
  }

  else
  {
    v6 = v5;
    v7 = sub_18F520A8C();

    swift_willThrow();
  }

  return OUTLINED_FUNCTION_45();
}

uint64_t sub_18F1814E4()
{
  v1 = sub_18F5215DC();
  OUTLINED_FUNCTION_51(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_18F52159C();
  OUTLINED_FUNCTION_51(v6);
  v9 = (*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_11_0();
  v10 = sub_18F5213EC();
  OUTLINED_FUNCTION_51(v10);
  v11 = *(v0 + v9);
  v12 = swift_task_alloc();
  *(v21 + 16) = v12;
  *v12 = v21;
  v12[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_19_4();

  return sub_18F17AD28(v13, v14, v15, v16, v17, v18, v19, v11);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_18F1817B4()
{
  OUTLINED_FUNCTION_23_8();
  sub_18F520C8C();
  sub_18F103AB4(&qword_1EACCED58, MEMORY[0x1E6968FB0]);
  OUTLINED_FUNCTION_35_3();
  sub_18F52177C();
  OUTLINED_FUNCTION_48_1();
}

void sub_18F18186C()
{
  OUTLINED_FUNCTION_23_8();
  sub_18F5210CC();
  sub_18F103AB4(&qword_1EACD04E0, MEMORY[0x1E69AC0E0]);
  OUTLINED_FUNCTION_35_3();
  sub_18F52177C();
  OUTLINED_FUNCTION_48_1();
}

unint64_t sub_18F181924()
{
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x193ADC4F0](v0);
  sub_18F522F4C();
  v1 = OUTLINED_FUNCTION_92_0();

  return sub_18F182244(v1, v2, v3);
}

void sub_18F181980()
{
  sub_18F52136C();
  sub_18F103AB4(&qword_1EACD0450, MEMORY[0x1E69DBC58]);
  sub_18F52177C();
  sub_18F1820C8();
}

void sub_18F181A54()
{
  OUTLINED_FUNCTION_23_8();
  sub_18F520E6C();
  sub_18F103AB4(&qword_1ED6FF180, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_35_3();
  sub_18F52177C();
  OUTLINED_FUNCTION_48_1();
}

unint64_t sub_18F181B0C()
{
  OUTLINED_FUNCTION_18_4();
  v1 = sub_18F454E48();

  return sub_18F1822A8(v0 & 1, v1);
}

unint64_t sub_18F181B4C()
{
  v1 = OUTLINED_FUNCTION_41_1();
  sub_18F454EE8(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_35_3();

  return sub_18F18239C(v4, v0, v5);
}

unint64_t sub_18F181B90()
{
  OUTLINED_FUNCTION_14_13();
  sub_18F454EA0();
  v0 = OUTLINED_FUNCTION_37_5();

  return sub_18F182614(v0, v1);
}

unint64_t sub_18F181BC8()
{
  OUTLINED_FUNCTION_14_13();
  sub_18F454DC8();
  v0 = OUTLINED_FUNCTION_37_5();

  return sub_18F18298C(v0, v1);
}

unint64_t sub_18F181C00()
{
  OUTLINED_FUNCTION_14_13();
  sub_18F454D44();
  v0 = OUTLINED_FUNCTION_37_5();

  return sub_18F182AF0(v0, v1);
}

unint64_t sub_18F181C38()
{
  v1 = OUTLINED_FUNCTION_41_1();
  sub_18F454D2C(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_35_3();

  return sub_18F182C54(v4, v0, v5);
}

unint64_t sub_18F181C7C()
{
  OUTLINED_FUNCTION_14_13();
  sub_18F454CA4();
  v0 = OUTLINED_FUNCTION_37_5();

  return sub_18F182EB4(v0, v1);
}

unint64_t sub_18F181CB4()
{
  OUTLINED_FUNCTION_18_4();
  v1 = sub_18F454BC4();

  return sub_18F18301C(v0 & 1, v1);
}

unint64_t sub_18F181D78()
{
  OUTLINED_FUNCTION_14_13();
  sub_18F454ADC();
  v0 = OUTLINED_FUNCTION_37_5();

  return sub_18F1836D0(v0, v1);
}

uint64_t sub_18F181E08(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_50();
  a2(v8, a1);
  v5 = sub_18F522F4C();

  return a3(a1, v5);
}

unint64_t sub_18F181E80()
{
  OUTLINED_FUNCTION_18_4();
  v1 = sub_18F45491C();

  return sub_18F183BFC(v0 & 1, v1);
}

unint64_t sub_18F181EC0(uint64_t a1)
{
  v2 = sub_18F5226EC();

  return sub_18F183D38(a1, v2);
}

unint64_t sub_18F181F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_50();
  sub_18F5219CC();
  sub_18F5219CC();
  sub_18F522F4C();
  v6 = OUTLINED_FUNCTION_66_0();

  return sub_18F183DFC(v6, v7, a3, a4, v8);
}

unint64_t sub_18F181F98(uint64_t a1)
{
  OUTLINED_FUNCTION_50();
  sub_18F520E6C();
  sub_18F103AB4(&qword_1ED6FF180, MEMORY[0x1E69695A8]);
  sub_18F52178C();
  v2 = sub_18F522F4C();

  return sub_18F183EF8(a1, v2);
}

unint64_t sub_18F182044(uint64_t a1)
{
  v2 = sub_18F52242C();

  return sub_18F184048(a1, v2);
}

unint64_t sub_18F182088()
{
  v1 = OUTLINED_FUNCTION_18_4();
  MEMORY[0x193ADC4C0](v1, v0, 4);
  v2 = OUTLINED_FUNCTION_37_5();

  return sub_18F184120(v2, v3);
}

void sub_18F1820C8()
{
  OUTLINED_FUNCTION_18();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_18F103AB4(v19, v20);
    v16 = sub_18F52180C();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_16();
}

unint64_t sub_18F182244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
    ;
  }

  return i;
}

unint64_t sub_18F1822A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 1868850546;
    }

    else
    {
      v6 = 1868852853;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 1868850546 : 1868852853;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_18F522D5C();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_18F18239C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = ~v5;
    v10 = a2 >> 6;
    while (1)
    {
      v11 = *(*(v7 + 48) + 16 * v6 + 8);
      if (v11 >> 6)
      {
        if (v11 >> 6 == 1)
        {
          if (v11)
          {
            v12 = 0xE300000000000000;
            v13 = 7632239;
            if (!v10)
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }

          v16 = 7632239;
          v17 = 0xE300000000000000;
          goto LABEL_16;
        }

        v16 = 28532;
      }

      else
      {
        if (v11)
        {
          v12 = 0xE200000000000000;
          v13 = 28265;
          if (!v10)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }

        v16 = 28265;
      }

      v17 = 0xE200000000000000;
LABEL_16:
      MEMORY[0x193ADB000](v16, v17);
      MEMORY[0x193ADB000](45, 0xE100000000000000);
      sub_18F52201C();
      v13 = 0;
      v12 = 0xE000000000000000;
      if (!v10)
      {
LABEL_10:
        if (a2)
        {
          v14 = 0xE200000000000000;
          v15 = 28265;
          goto LABEL_25;
        }

        v18 = 28265;
        goto LABEL_23;
      }

LABEL_17:
      if (v10 != 1)
      {
        v18 = 28532;
LABEL_23:
        v19 = 0xE200000000000000;
        goto LABEL_24;
      }

      if (a2)
      {
        v14 = 0xE300000000000000;
        v15 = 7632239;
        goto LABEL_25;
      }

      v18 = 7632239;
      v19 = 0xE300000000000000;
LABEL_24:
      MEMORY[0x193ADB000](v18, v19);
      MEMORY[0x193ADB000](45, 0xE100000000000000);
      sub_18F52201C();
      v15 = 0;
      v14 = 0xE000000000000000;
LABEL_25:
      if (v13 == v15 && v12 == v14)
      {

        return v6;
      }

      v21 = sub_18F522D5C();

      if ((v21 & 1) == 0)
      {
        v6 = (v6 + 1) & v9;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

unint64_t sub_18F182614(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007961646874;
      v8 = 0x7269427970706168;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x69747465666E6F63;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x73726573616CLL;
          break;
        case 3:
          v8 = 0x6B726F7765726966;
          v7 = 0xE900000000000073;
          break;
        case 4:
          v8 = 0x6C62697369766E69;
          v7 = 0xEC0000006B6E4965;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x656C746E6567;
          break;
        case 6:
          v7 = 0xE400000000000000;
          v8 = 1685417836;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x746361706D69;
          break;
        case 8:
          v7 = 0xE800000000000000;
          v8 = 0x73656C6B72617073;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x7472616568;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1869112165;
          break;
        case 0xB:
          v7 = 0xE900000000000074;
          v8 = 0x6867696C746F7073;
          break;
        case 0xC:
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v9 = 0x7269427970706168;
      v10 = 0xED00007961646874;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x69747465666E6F63;
          break;
        case 2:
          v10 = 0xE600000000000000;
          v9 = 0x73726573616CLL;
          break;
        case 3:
          v9 = 0x6B726F7765726966;
          v10 = 0xE900000000000073;
          break;
        case 4:
          v9 = 0x6C62697369766E69;
          v10 = 0xEC0000006B6E4965;
          break;
        case 5:
          v10 = 0xE600000000000000;
          v9 = 0x656C746E6567;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v9 = 1685417836;
          break;
        case 7:
          v10 = 0xE600000000000000;
          v9 = 0x746361706D69;
          break;
        case 8:
          v10 = 0xE800000000000000;
          v9 = 0x73656C6B72617073;
          break;
        case 9:
          v10 = 0xE500000000000000;
          v9 = 0x7472616568;
          break;
        case 10:
          v10 = 0xE400000000000000;
          v9 = 1869112165;
          break;
        case 11:
          v10 = 0xE900000000000074;
          v9 = 0x6867696C746F7073;
          break;
        case 12:
          v10 = 0xE500000000000000;
          v9 = 0x726568746FLL;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F18298C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE200000000000000;
          v8 = 30324;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x6D726F6665657266;
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x736569766F6DLL;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 30324 : 0x6D726F6665657266;
        v10 = a1 == 1 ? 0xE200000000000000 : 0xE800000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
        v9 = 0x736569766F6DLL;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F182AF0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE800000000000000;
          v8 = 0x6567617373654D69;
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 7564659;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x6567617373654D69 : 0x726568746FLL;
        v10 = a1 == 1 ? 0xE800000000000000 : 0xE500000000000000;
      }

      else
      {
        v10 = 0xE300000000000000;
        v9 = 7564659;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F182C54(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = ~v5;
    while (1)
    {
      v10 = *(*(v7 + 48) + 16 * v6 + 8);
      if (v10 < 0)
      {
        if (v10)
        {
          v11 = 0xE700000000000000;
          v12 = 0x72656C6C616D73;
          if (a2 < 0)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }

        v15 = 0x72656C6C616D73;
        v16 = 0xE700000000000000;
      }

      else
      {
        if (v10)
        {
          v11 = 0xE600000000000000;
          v12 = 0x72656772616CLL;
          if (a2 < 0)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }

        v15 = 0x72656772616CLL;
        v16 = 0xE600000000000000;
      }

      MEMORY[0x193ADB000](v15, v16);
      MEMORY[0x193ADB000](45, 0xE100000000000000);
      sub_18F52201C();
      v12 = 0;
      v11 = 0xE000000000000000;
      if (a2 < 0)
      {
LABEL_9:
        if (a2)
        {
          v13 = 0xE700000000000000;
          v14 = 0x72656C6C616D73;
          goto LABEL_19;
        }

        v17 = 0x72656C6C616D73;
        v18 = 0xE700000000000000;
        goto LABEL_18;
      }

LABEL_14:
      if (a2)
      {
        v13 = 0xE600000000000000;
        v14 = 0x72656772616CLL;
        goto LABEL_19;
      }

      v17 = 0x72656772616CLL;
      v18 = 0xE600000000000000;
LABEL_18:
      MEMORY[0x193ADB000](v17, v18);
      MEMORY[0x193ADB000](45, 0xE100000000000000);
      sub_18F52201C();
      v14 = 0;
      v13 = 0xE000000000000000;
LABEL_19:
      if (v12 == v14 && v11 == v13)
      {

        return v6;
      }

      v20 = sub_18F522D5C();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v9;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

unint64_t sub_18F182EB4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        v8 = *(*(v2 + 48) + v4) == 1 ? 0x656C62616E65 : 0x656C67676F74;
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x656C6261736964;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x656C62616E65 : 0x656C67676F74;
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x656C6261736964;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F18301C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65766F6D6572;
    }

    else
    {
      v6 = 6579297;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65766F6D6572 : 6579297;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_18F522D5C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F183150(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE200000000000000;
      v8 = 28789;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1853321060;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1952867692;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x7468676972;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x64726177726F66;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x647261776B636162;
          break;
        default:
          break;
      }

      v9 = 0xE200000000000000;
      v10 = 28789;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          v10 = 1853321060;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1952867692;
          break;
        case 3:
          v9 = 0xE500000000000000;
          v10 = 0x7468676972;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x64726177726F66;
          break;
        case 5:
          v9 = 0xE800000000000000;
          v10 = 0x647261776B636162;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F183344(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x6C6C616D73;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x746C7561666564;
          break;
        case 2:
          v8 = 0x656772616CLL;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x6D756D6978616DLL;
          break;
        default:
          break;
      }

      v9 = 0xE500000000000000;
      v10 = 0x6C6C616D73;
      switch(a1)
      {
        case 1:
          v9 = 0xE700000000000000;
          v10 = 0x746C7561666564;
          break;
        case 2:
          v10 = 0x656772616CLL;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x6D756D6978616DLL;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F183504(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6C6172656E6567;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x736569766F6DLL;
          break;
        case 2:
          v7 = 0xE200000000000000;
          v8 = 30324;
          break;
        case 3:
          v8 = 0x6D726F6665657266;
          v7 = 0xED00006F65646956;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6C6172656E6567;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          v10 = 0x736569766F6DLL;
          break;
        case 2:
          v9 = 0xE200000000000000;
          v10 = 30324;
          break;
        case 3:
          v10 = 0x6D726F6665657266;
          v9 = 0xED00006F65646956;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F1836D0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x72656B63697473;
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x696A6F6D65;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x72656B63697473 : 0x726568746FLL;
        v10 = a1 == 1 ? 0xE700000000000000 : 0xE500000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
        v9 = 0x696A6F6D65;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F18383C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x646574656C6564;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6564726177726F66;
          v7 = 0xE900000000000064;
          break;
        case 2:
          v8 = 0x6465696C706572;
          break;
        case 3:
          v8 = 0x7463657269646572;
          v7 = 0xEA00000000006465;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x646574656C6564;
      switch(a1)
      {
        case 1:
          v10 = 0x6564726177726F66;
          v9 = 0xE900000000000064;
          break;
        case 2:
          v10 = 0x6465696C706572;
          break;
        case 3:
          v10 = 0x7463657269646572;
          v9 = 0xEA00000000006465;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F183A14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x646165726E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1684104562;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x64656767616C66;
          break;
        case 3:
          v8 = 0x656767616C666E75;
          v7 = 0xE900000000000064;
          break;
        case 4:
          v8 = 0x646579616C70;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x646165726E75;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          v10 = 1684104562;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x64656767616C66;
          break;
        case 3:
          v10 = 0x656767616C666E75;
          v9 = 0xE900000000000064;
          break;
        case 4:
          v10 = 0x646579616C70;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_18F522D5C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F183BFC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x73756F6976657270;
    }

    else
    {
      v6 = 1954047342;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x73756F6976657270 : 1954047342;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_18F522D5C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_18F183D38(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_18F10CBFC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x193ADBCE0](v8, a1);
    sub_18F0EF654(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_18F183DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_18F522D5C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_18F522D5C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_18F183EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDonationIdentifier();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_18F1844BC(*(v2 + 48) + *(v5 + 72) * i, v7);
    v10 = _s10AppIntents24IntentDonationIdentifierV2eeoiySbAC_ACtFZ_0();
    sub_18F184514();
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_18F184048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_18F0F21A8(0, &qword_1EACCDD20);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_18F52243C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_18F184120(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_18F1841EC()
{
  result = sub_18F12EB70();
  if (v1 <= 0x3F)
  {
    result = sub_18F5215DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F184298()
{
  v0 = sub_18F5218DC();
  v2 = v1;
  if (v0 == sub_18F5218DC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_35_3();
    v5 = sub_18F522D5C();
  }

  return v5 & 1;
}

uint64_t sub_18F184340()
{
  sub_18F5218DC();
  sub_18F522EFC();
  sub_18F5219CC();
  v0 = sub_18F522F4C();

  return v0;
}

void *sub_18F1843C0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_18F184404()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_19_4();

  return sub_18F17BC20(v5, v6, v7, v8, v9, v2);
}

uint64_t sub_18F1844BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_3();
  v4(v3);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_56();
  v6(v5);
  return a2;
}

uint64_t sub_18F184514()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_18F184568()
{
  OUTLINED_FUNCTION_57_0();
  sub_18F52136C();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_19_4();

  return sub_18F17D3D0(v7, v8, v9, v10, v11, v2, v3, v4);
}

uint64_t sub_18F184680(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18F184690(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return sub_18F522EFC();
}

uint64_t EntityProperty<>.init(indexingKey:)()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_7_8();
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

uint64_t EntityProperty<>.init(title:indexingKey:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_2_16();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

uint64_t EntityProperty<>.init(customIndexingKey:)()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_7_8();
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

uint64_t EntityProperty<>.init(title:customIndexingKey:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_2_16();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

uint64_t EntityProperty<>.init(identifier:)()
{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_7_8();
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

void EntityProperty<>.init(identifier:title:)()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

uint64_t EntityProperty<>.init(identifier:indexingKey:)()
{
  v3 = OUTLINED_FUNCTION_16_4();
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2_16();
  return sub_18F1026E0(v2, v1, v7, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v7);
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v7);
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v7);
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

uint64_t EntityProperty<>.init(identifier:customIndexingKey:)()
{
  v3 = OUTLINED_FUNCTION_16_4();
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2_16();
  return sub_18F1026E0(v2, v1, v7, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v7);
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v7);
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v7);
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

void EntityProperty<>.init<A>(identifier:getter:)()
{
  sub_18F184D04();
}

{
  sub_18F1894AC();
}

{
  sub_18F1D7490();
}

{
  sub_18F1F3114();
}

{
  sub_18F231E18();
}

{
  sub_18F2584D0();
}

{
  sub_18F2833C0();
}

{
  sub_18F284560();
}

{
  sub_18F285484();
}

{
  sub_18F2866D0();
}

{
  sub_18F2D6838();
}

{
  sub_18F2DD060();
}

{
  sub_18F2E91AC();
}

{
  sub_18F3191D8();
}

{
  sub_18F327134();
}

{
  sub_18F347834();
}

{
  sub_18F35A388();
}

{
  sub_18F379454();
}

{
  sub_18F37EE24();
}

{
  sub_18F3C8FCC();
}

{
  sub_18F3D3F1C();
}

{
  sub_18F3D4F5C();
}

{
  sub_18F45A754();
}

void EntityProperty<>.init<A>(identifier:getSetter:)()
{
  sub_18F184D04();
}

{
  sub_18F1894AC();
}

{
  sub_18F1D7490();
}

{
  sub_18F1F3114();
}

{
  sub_18F231E18();
}

{
  sub_18F2584D0();
}

{
  sub_18F2833C0();
}

{
  sub_18F284560();
}

{
  sub_18F285484();
}

{
  sub_18F2866D0();
}

{
  sub_18F2D6838();
}

{
  sub_18F2DD060();
}

{
  sub_18F2E91AC();
}

{
  sub_18F3191D8();
}

{
  sub_18F327134();
}

{
  sub_18F347834();
}

{
  sub_18F35A388();
}

{
  sub_18F379454();
}

{
  sub_18F37EE24();
}

{
  sub_18F3C8FCC();
}

{
  sub_18F3D3F1C();
}

{
  sub_18F3D4F5C();
}

{
  sub_18F45A754();
}

void sub_18F184D04()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void EntityProperty<>.init<A>(identifier:indexingKey:getter:)()
{
  sub_18F184E48();
}

{
  sub_18F1895F0();
}

{
  sub_18F1D75D8();
}

{
  sub_18F1F3258();
}

{
  sub_18F231F5C();
}

{
  sub_18F258614();
}

{
  sub_18F283504();
}

{
  sub_18F2846A8();
}

{
  sub_18F2855DC();
}

{
  sub_18F286814();
}

{
  sub_18F2D697C();
}

{
  sub_18F2DD1A4();
}

{
  sub_18F2E92F4();
}

{
  sub_18F31931C();
}

{
  sub_18F327278();
}

{
  sub_18F347978();
}

{
  sub_18F35A49C();
}

{
  sub_18F379598();
}

{
  sub_18F37EF68();
}

{
  sub_18F3C9114();
}

{
  sub_18F3D4064();
}

{
  sub_18F3D50A0();
}

{
  sub_18F45A898();
}

void EntityProperty<>.init<A>(identifier:indexingKey:getSetter:)()
{
  sub_18F184E48();
}

{
  sub_18F1895F0();
}

{
  sub_18F1D75D8();
}

{
  sub_18F1F3258();
}

{
  sub_18F231F5C();
}

{
  sub_18F258614();
}

{
  sub_18F283504();
}

{
  sub_18F2846A8();
}

{
  sub_18F2855DC();
}

{
  sub_18F286814();
}

{
  sub_18F2D697C();
}

{
  sub_18F2DD1A4();
}

{
  sub_18F2E92F4();
}

{
  sub_18F31931C();
}

{
  sub_18F327278();
}

{
  sub_18F347978();
}

{
  sub_18F35A49C();
}

{
  sub_18F379598();
}

{
  sub_18F37EF68();
}

{
  sub_18F3C9114();
}

{
  sub_18F3D4064();
}

{
  sub_18F3D50A0();
}

{
  sub_18F45A898();
}

void sub_18F184E48()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void EntityProperty<>.init<A>(identifier:customIndexingKey:getter:)()
{
  sub_18F184EF0();
}

{
  sub_18F189698();
}

{
  sub_18F1D770C();
}

{
  sub_18F1F3300();
}

{
  sub_18F232004();
}

{
  sub_18F2586BC();
}

{
  sub_18F2835AC();
}

{
  sub_18F284754();
}

{
  sub_18F285698();
}

{
  sub_18F2868BC();
}

{
  sub_18F2D6A24();
}

{
  sub_18F2DD24C();
}

{
  sub_18F2E93A0();
}

{
  sub_18F3193C4();
}

{
  sub_18F327320();
}

{
  sub_18F347A20();
}

{
  sub_18F35A514();
}

{
  sub_18F379640();
}

{
  sub_18F37F010();
}

{
  sub_18F3C91C0();
}

{
  sub_18F3D4110();
}

{
  sub_18F3D5148();
}

{
  sub_18F45A940();
}

void EntityProperty<>.init<A>(identifier:customIndexingKey:getSetter:)()
{
  sub_18F184EF0();
}

{
  sub_18F189698();
}

{
  sub_18F1D770C();
}

{
  sub_18F1F3300();
}

{
  sub_18F232004();
}

{
  sub_18F2586BC();
}

{
  sub_18F2835AC();
}

{
  sub_18F284754();
}

{
  sub_18F285698();
}

{
  sub_18F2868BC();
}

{
  sub_18F2D6A24();
}

{
  sub_18F2DD24C();
}

{
  sub_18F2E93A0();
}

{
  sub_18F3193C4();
}

{
  sub_18F327320();
}

{
  sub_18F347A20();
}

{
  sub_18F35A514();
}

{
  sub_18F379640();
}

{
  sub_18F37F010();
}

{
  sub_18F3C91C0();
}

{
  sub_18F3D4110();
}

{
  sub_18F3D5148();
}

{
  sub_18F45A940();
}

void sub_18F184EF0()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void EntityProperty<>.init(identifier:title:indexingKey:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_14_9(v5);
  v7(v6);
  OUTLINED_FUNCTION_6_10();
  sub_18F1026E0(v2, v1, v3, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

void EntityProperty<>.init(identifier:title:customIndexingKey:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_14_9(v5);
  v7(v6);
  OUTLINED_FUNCTION_6_10();
  sub_18F1026E0(v2, v1, v3, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

void EntityProperty<>.init<A>(identifier:title:getter:)()
{
  sub_18F185130();
}

{
  sub_18F1898D8();
}

{
  sub_18F1D79D8();
}

{
  sub_18F1F3540();
}

{
  sub_18F232244();
}

{
  sub_18F2588FC();
}

{
  sub_18F2837EC();
}

{
  sub_18F284998();
}

{
  sub_18F2858EC();
}

{
  sub_18F286AFC();
}

{
  sub_18F2D6C64();
}

{
  sub_18F2DD48C();
}

{
  sub_18F2E95E4();
}

{
  sub_18F319604();
}

{
  sub_18F327560();
}

{
  sub_18F347C60();
}

{
  sub_18F35A724();
}

{
  sub_18F379880();
}

{
  sub_18F37F250();
}

{
  sub_18F3C9404();
}

{
  sub_18F3D4354();
}

{
  sub_18F3D5388();
}

{
  sub_18F45AB80();
}

void EntityProperty<>.init<A>(identifier:title:getSetter:)()
{
  sub_18F185130();
}

{
  sub_18F1898D8();
}

{
  sub_18F1D79D8();
}

{
  sub_18F1F3540();
}

{
  sub_18F232244();
}

{
  sub_18F2588FC();
}

{
  sub_18F2837EC();
}

{
  sub_18F284998();
}

{
  sub_18F2858EC();
}

{
  sub_18F286AFC();
}

{
  sub_18F2D6C64();
}

{
  sub_18F2DD48C();
}

{
  sub_18F2E95E4();
}

{
  sub_18F319604();
}

{
  sub_18F327560();
}

{
  sub_18F347C60();
}

{
  sub_18F35A724();
}

{
  sub_18F379880();
}

{
  sub_18F37F250();
}

{
  sub_18F3C9404();
}

{
  sub_18F3D4354();
}

{
  sub_18F3D5388();
}

{
  sub_18F45AB80();
}

void sub_18F185130()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void EntityProperty<>.init<A>(identifier:title:indexingKey:getter:)()
{
  sub_18F185324();
}

{
  sub_18F189ACC();
}

{
  sub_18F1D7BD0();
}

{
  sub_18F1F3734();
}

{
  sub_18F232438();
}

{
  sub_18F258AF0();
}

{
  sub_18F2839E0();
}

{
  sub_18F284B90();
}

{
  sub_18F286CF0();
}

{
  sub_18F2D6E58();
}

{
  sub_18F2DD680();
}

{
  sub_18F2E97DC();
}

{
  sub_18F3197F8();
}

{
  sub_18F327754();
}

{
  sub_18F347E54();
}

{
  sub_18F35A8E8();
}

{
  sub_18F379A74();
}

{
  sub_18F37F444();
}

{
  sub_18F3C95FC();
}

{
  sub_18F3D454C();
}

{
  sub_18F3D557C();
}

{
  sub_18F45AD74();
}

void EntityProperty<>.init<A>(identifier:title:indexingKey:getSetter:)()
{
  sub_18F185324();
}

{
  sub_18F189ACC();
}

{
  sub_18F1D7BD0();
}

{
  sub_18F1F3734();
}

{
  sub_18F232438();
}

{
  sub_18F258AF0();
}

{
  sub_18F2839E0();
}

{
  sub_18F284B90();
}

{
  sub_18F286CF0();
}

{
  sub_18F2D6E58();
}

{
  sub_18F2DD680();
}

{
  sub_18F2E97DC();
}

{
  sub_18F3197F8();
}

{
  sub_18F327754();
}

{
  sub_18F347E54();
}

{
  sub_18F35A8E8();
}

{
  sub_18F379A74();
}

{
  sub_18F37F444();
}

{
  sub_18F3C95FC();
}

{
  sub_18F3D454C();
}

{
  sub_18F3D557C();
}

{
  sub_18F45AD74();
}