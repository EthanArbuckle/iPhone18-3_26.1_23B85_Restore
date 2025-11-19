uint64_t sub_237D21F20(char a1)
{
  if (a1)
  {
    return 0x6E6F697369766572;
  }

  else
  {
    return 0x53646E41706F7263;
  }
}

uint64_t sub_237D21FA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D21ECC();
  *a1 = result;
  return result;
}

uint64_t sub_237D21FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237D21F20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D22008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D21ECC();
  *a1 = result;
  return result;
}

uint64_t sub_237D2203C(uint64_t a1)
{
  v2 = sub_237D222D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D22078(uint64_t a1)
{
  v2 = sub_237D222D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ImageFeaturePrint.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A50);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D222D0();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v6 = sub_237EF9960();
    v7 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    v8 = sub_237EF98F0();
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8;
    }

    if (sub_237D22324(v10, &unk_284ACD980))
    {
      v11 = OUTLINED_FUNCTION_2_39();
      v12(v11);
      *a2 = v7;
      a2[1] = v6;
      a2[2] = v10;
      v13 = v7;
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      sub_237D21D58();
      OUTLINED_FUNCTION_3_23();
      swift_allocError();
      *v14 = v10;
      swift_willThrow();
      v15 = OUTLINED_FUNCTION_2_39();
      v16(v15);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }
}

unint64_t sub_237D222D0()
{
  result = qword_27DEB0A58;
  if (!qword_27DEB0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A58);
  }

  return result;
}

BOOL sub_237D22324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t ImageFeaturePrint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A60);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D222D0();
  sub_237EFA1B0();
  v13 = 0;
  sub_237EF9A60();
  if (!v2)
  {
    v12 = 1;
    sub_237EF9A50();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_237D224E4@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    v3 = 360;
    v4 = 768;
    return sub_237D2258C(v3, v4, a1);
  }

  if (v2 == 1)
  {
    v3 = 299;
    v4 = 2048;
    return sub_237D2258C(v3, v4, a1);
  }

  sub_237D21D58();
  OUTLINED_FUNCTION_3_23();
  swift_allocError();
  *v6 = v2;
  return swift_willThrow();
}

uint64_t sub_237D2258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v94 = a2;
  *&v89 = a1;
  v85 = a3;
  v87 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v86 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v8 - v7);
  v84 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v83 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v12 - v11);
  v81 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v80 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v16 - v15);
  v97 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v88 = v17;
  MEMORY[0x28223BE20](v18);
  v90 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v98 = v79 - v21;
  v22 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v95 = v30;
  v96 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = sub_237EF6D20();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v93 = sub_237EF6D90();
  OUTLINED_FUNCTION_1();
  v92 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  v46 = *(v4 + 16);
  (*(v36 + 104))(v40, *MEMORY[0x277D250B0], v34);
  sub_237EF6D70();
  v47 = v22;
  v48 = v98;
  (*(v24 + 104))(v28, *MEMORY[0x277D25100], v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v49 = swift_allocObject();
  v89 = xmmword_237F03530;
  *(v49 + 16) = xmmword_237F03530;
  *(v49 + 32) = v94;
  v94 = v33;
  sub_237EF6DD0();
  sub_237EF7720();
  if (v46 == 1 || v46 == 2)
  {
    v50 = v79[1];
    sub_237EF7200();
    (*(v80 + 104))(v50, *MEMORY[0x277D25370], v81);
    sub_237EF7660();
    sub_237EF7620();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    sub_237EF70E0();
    v51 = swift_allocObject();
    v52 = OUTLINED_FUNCTION_6_26(v51);
    v53 = v82;
    (*(v92 + 16))(v82, v45, v93, v52);
    v54 = *MEMORY[0x277D25120];
    v81 = v45;
    v55 = *(v83 + 104);
    v56 = v84;
    v55(v53, v54, v84);
    sub_237EF7090();
    v57 = v98;
    sub_237EF76B0();
    v58 = swift_allocObject();
    v59 = OUTLINED_FUNCTION_6_26(v58);
    (*(v95 + 16))(v53, v94, v96, v59);
    v55(v53, *MEMORY[0x277D250A0], v56);
    sub_237EF7090();
    sub_237EF7700();
    v60 = v88;
    v61 = *(v88 + 16);
    v62 = v90;
    v63 = v97;
    v61(v90, v57, v97);
    sub_237EF7810();
    v64 = type metadata accessor for CoreMLPackage();
    v65 = v85;
    v66 = &v85[*(v64 + 24)];
    *(v66 + 80) = 0;
    *(v66 + 48) = 0u;
    *(v66 + 64) = 0u;
    *(v66 + 16) = 0u;
    *(v66 + 32) = 0u;
    *v66 = 0u;
    v61(v65, v62, v63);
    memcpy(__dst, v66, sizeof(__dst));
    sub_237C9BD20(__dst);
    *v66 = 0u;
    *(v66 + 16) = 0u;
    *(v66 + 32) = 0u;
    *(v66 + 48) = 0u;
    *(v66 + 64) = 0u;
    *(v66 + 80) = 0;
    v67 = v86;
    v68 = v91;
    v69 = v87;
    (*(v86 + 16))(&v65[*(v64 + 20)], v91, v87);
    v70 = sub_237E34060();
    v72 = v71;
    *&v89 = sub_237EF7780();
    v74 = v73;
    swift_isUniquelyReferenced_nonNull_native();
    v101 = *v74;
    sub_237C91098(v70, v72, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v74 = v101;
    (v89)(v99, 0);
    (*(v67 + 8))(v68, v69);
    v75 = *(v60 + 8);
    v76 = v97;
    v75(v90, v97);
    v75(v98, v76);
    (*(v95 + 8))(v94, v96);
    return (*(v92 + 8))(v81, v93);
  }

  else
  {
    sub_237D21D58();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v78 = v46;
    swift_willThrow();
    (*(v88 + 8))(v48, v97);
    (*(v95 + 8))(v94, v96);
    return (*(v92 + 8))(v45, v93);
  }
}

_BYTE *storeEnumTagSinglePayload for ImageFeaturePrint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D22FD4()
{
  result = qword_27DEB0A68;
  if (!qword_27DEB0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A68);
  }

  return result;
}

unint64_t sub_237D2302C()
{
  result = qword_27DEB0A70;
  if (!qword_27DEB0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A70);
  }

  return result;
}

unint64_t sub_237D23084()
{
  result = qword_27DEB0A78;
  if (!qword_27DEB0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A78);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_6_26(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t _s8SceneNetVMa()
{
  result = qword_27DEB0A80;
  if (!qword_27DEB0A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D23170()
{
  result = sub_237EF8060();
  if (v1 <= 0x3F)
  {
    result = sub_237EF8040();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D231F4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_237EF7FE0();
  v3[7] = v4;
  OUTLINED_FUNCTION_6_1(v4);
  v3[8] = v5;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_237EF8030();
  v3[11] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v3[12] = v7;
  v3[13] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF8040();
  v3[14] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v3[15] = v9;
  v3[16] = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A90);
  v3[17] = OUTLINED_FUNCTION_27_0();
  v10 = sub_237EF8070();
  v3[18] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v3[19] = v11;
  v3[20] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237D233D0, 0, 0);
}

uint64_t sub_237D233D0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[6];
  v6 = sub_237EF8060();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  sub_237EF8080();
  v7 = _s8SceneNetVMa();
  (*(v4 + 16))(v2, v5 + *(v7 + 20), v3);
  sub_237EF8050();
  v8 = swift_task_alloc();
  v0[21] = v8;
  v9 = sub_237D23AB4();
  *v8 = v0;
  v8[1] = sub_237D2354C;
  v10 = v0[18];
  v11 = v0[13];
  v12 = v0[5];

  return MEMORY[0x282135048](v11, v12, 0x100000000, v10, v9);
}

uint64_t sub_237D2354C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_237D23948;
  }

  else
  {
    v2 = sub_237D23660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237D23660()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_237EF8000();
  (*(v4 + 104))(v2, *MEMORY[0x277CE2BC8], v3);
  v5 = sub_237EF7FD0();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[19];
    v8 = v0[20];
    v17 = v0[18];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    sub_237EF8020();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_237F03530;
    *(v12 + 32) = sub_237EF8010();
    sub_237EF7E10();
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v8, v17);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[10];
    v16 = v0[7];
    sub_237EF9330();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x2383E0710](0xD000000000000036, 0x8000000237EFD920);
    sub_237EF8000();
    sub_237EF9670();
    v6(v15, v16);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFD960);
    return sub_237EF9740();
  }
}

uint64_t sub_237D23948()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_237D23A0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C5FFA4;

  return sub_237D231F4(a1, v4);
}

unint64_t sub_237D23AB4()
{
  result = qword_27DEB0A98;
  if (!qword_27DEB0A98)
  {
    sub_237EF8070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A98);
  }

  return result;
}

id ImageFlipper.applied(to:eventHandler:)(void *a1)
{
  if (*v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  v3 = [a1 imageByApplyingCGOrientation_];

  return v3;
}

uint64_t sub_237D23B98(id *a1, void **a2)
{
  *a1 = ImageFlipper.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t ImageFlipper.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

unint64_t sub_237D23CA0()
{
  result = qword_27DEB0AA0;
  if (!qword_27DEB0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AA0);
  }

  return result;
}

_BYTE *sub_237D23D04(_BYTE *result, unsigned int a2, unsigned int a3)
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

id static ImageReader.read(url:)(uint64_t a1)
{
  v2 = sub_237EF5EF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_237EF5EC0();
  v7 = sub_237EF8560();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    sub_237D24070();
    v9 = *(v3 + 16);
    v9(v5, a1, v2);
    result = sub_237D240B4(v5);
    if (result)
    {
      return result;
    }

    type metadata accessor for DatasetError();
    sub_237D24018();
    OUTLINED_FUNCTION_0_31();
    v12 = v11;
    v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08) + 48)];
    v9(v12, a1, v2);
    *v13 = 0xD000000000000020;
    *(v13 + 1) = 0x8000000237EFD980;
  }

  else
  {
    type metadata accessor for DatasetError();
    sub_237D24018();
    OUTLINED_FUNCTION_0_31();
    (*(v3 + 16))(v14, a1, v2);
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_237D24018()
{
  result = qword_27DEAFA00;
  if (!qword_27DEAFA00)
  {
    type metadata accessor for DatasetError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFA00);
  }

  return result;
}

unint64_t sub_237D24070()
{
  result = qword_27DEB0AA8;
  if (!qword_27DEB0AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB0AA8);
  }

  return result;
}

id sub_237D240B4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_237EF5E50();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_237EF5EF0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_237D24150(id *a1, uint64_t a2)
{
  *a1 = ImageReader.applied(to:eventHandler:)(a2);
  v3 = *(v2 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for ImageReader(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_31()
{

  return swift_allocError();
}

id ImageRotator.applied(to:eventHandler:)(uint64_t a1)
{
  sub_237D2063C();
  result = sub_237D20680();
  if (result)
  {
    v3 = result;
    [result setValue:a1 forKey:*MEMORY[0x277CBFAF0]];
    v4 = sub_237EF8BE0();
    [v3 setValue:v4 forKey:*MEMORY[0x277CBFAA8]];

    result = [v3 outputImage];
    if (result)
    {
      v5 = result;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237D243FC(id *a1, uint64_t *a2)
{
  *a1 = ImageRotator.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

double ImageScaler.targetSize.getter()
{
  if (!v0[16])
  {
    return *v0;
  }

  if (v0[16] == 1)
  {
    return 0.0;
  }

  return *v0;
}

void ImageScaler.targetSize.setter(double a1, double a2)
{
  if (a2 == 0.0)
  {
    *v2 = a1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  else
  {
    if (a1 == 0.0)
    {
      *v2 = a2;
      *(v2 + 8) = 0;
      v3 = 1;
    }

    else
    {
      *v2 = a1;
      *(v2 + 8) = a2;
      v3 = 2;
    }

    *(v2 + 16) = v3;
  }
}

void (*ImageScaler.targetSize.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v2 = *v1;
      v3 = 0;
    }

    else
    {
      v2 = v1[1];
      v3 = *v1;
    }
  }

  else
  {
    v3 = *v1;
    v2 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
  return sub_237D245B8;
}

void sub_237D245B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    ImageScaler.targetSize.setter(v2, v3);
  }

  else
  {
    if (v3 == 0.0)
    {
      v4 = 0;
      v5 = *(a1 + 16);
      *v5 = v2;
      *(v5 + 8) = 0;
    }

    else
    {
      v5 = *(a1 + 16);
      if (v2 == 0.0)
      {
        *v5 = v3;
        *(v5 + 8) = 0;
        v4 = 1;
      }

      else
      {
        *v5 = v2;
        *(v5 + 8) = v3;
        v4 = 2;
      }
    }

    *(v5 + 16) = v4;
  }
}

uint64_t sub_237D2462C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1702521203 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237D24734(char a1)
{
  if (!a1)
  {
    return 0x6874646977;
  }

  if (a1 == 1)
  {
    return 0x746867696568;
  }

  return 1702521203;
}

uint64_t sub_237D24790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D24850(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_237D24880(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D248FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D2462C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D24924(uint64_t a1)
{
  v2 = sub_237D26134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24960(uint64_t a1)
{
  v2 = sub_237D26134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D249A0(uint64_t a1)
{
  v2 = sub_237D261DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D249DC(uint64_t a1)
{
  v2 = sub_237D261DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D24A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D24790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D24A48(uint64_t a1)
{
  v2 = sub_237D26188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24A84(uint64_t a1)
{
  v2 = sub_237D26188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D24AC0(uint64_t a1)
{
  v2 = sub_237D26230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24AFC(uint64_t a1)
{
  v2 = sub_237D26230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageScaler.init(targetSize:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    result = sub_237EF9740();
    __break(1u);
  }

  else
  {
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = 2;
  }

  return result;
}

void ImageScaler.init(targetWidth:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void ImageScaler.init(targetHeight:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

id ImageScaler.applied(to:eventHandler:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  [a1 extent];
  v8 = v3 / v6;
  v9 = v3 / v7;
  if (v5 == 1)
  {
    v10 = v3 / v7;
  }

  else
  {
    v10 = v3 / v6;
  }

  v11 = v4 / v7;
  if (v5 == 1)
  {
    v11 = v9;
  }

  if (v5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v5)
  {
    v8 = v11;
  }

  CGAffineTransformMakeScale(&v21, v12, v8);
  OUTLINED_FUNCTION_10_28();
  v14 = [a1 v13];
  [v14 extent];
  v16 = -v15;
  [v14 extent];
  CGAffineTransformMakeTranslation(&v21, v16, -v17);
  OUTLINED_FUNCTION_10_28();
  v19 = [v14 v18];

  return v19;
}

uint64_t sub_237D24CD4(id *a1, void **a2)
{
  *a1 = ImageScaler.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t ImageScaler.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237EFDA40);
  type metadata accessor for CGSize(0);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237D24E14()
{
  v0 = sub_237EF9890();

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

uint64_t sub_237D24E68(char a1)
{
  if (a1)
  {
    return 0x746567726174;
  }

  else
  {
    return 0x6953746567726174;
  }
}

uint64_t sub_237D24EC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D24E14();
  *a1 = result;
  return result;
}

uint64_t sub_237D24EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237D24E68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D24F2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D24E14();
  *a1 = result;
  return result;
}

uint64_t sub_237D24F54(uint64_t a1)
{
  v2 = sub_237D251A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24F90(uint64_t a1)
{
  v2 = sub_237D251A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageScaler.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0AB0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D251A8();
  sub_237EFA190();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    if (sub_237EF9990())
    {
      sub_237D25254();
      sub_237EF9970();
      v7 = OUTLINED_FUNCTION_9_20();
      v8(v7);
      v9 = v13;
      v10 = v14;
    }

    else
    {
      type metadata accessor for CGSize(0);
      sub_237D251FC();
      sub_237EF9970();
      v11 = OUTLINED_FUNCTION_9_20();
      v12(v11);
      v9 = v13;
      v10 = 2;
    }

    *a2 = v9;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_237D251A8()
{
  result = qword_27DEB0AB8;
  if (!qword_27DEB0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AB8);
  }

  return result;
}

unint64_t sub_237D251FC()
{
  result = qword_27DEB0AC0;
  if (!qword_27DEB0AC0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AC0);
  }

  return result;
}

unint64_t sub_237D25254()
{
  result = qword_27DEB0AC8;
  if (!qword_27DEB0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AC8);
  }

  return result;
}

uint64_t ImageScaler.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0AD0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D251A8();
  sub_237EFA1B0();
  v12[1] = v10;
  v12[2] = v9;
  v13 = v14;
  v15 = 1;
  sub_237D25404();
  sub_237EF9A70();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237D25404()
{
  result = qword_27DEB0AD8;
  if (!qword_27DEB0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AD8);
  }

  return result;
}

uint64_t sub_237D25458(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v32[1] = a3;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B38);
  OUTLINED_FUNCTION_1();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v36 = v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B40);
  OUTLINED_FUNCTION_1();
  v34 = v10;
  v35 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B48);
  OUTLINED_FUNCTION_1();
  v33 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B50);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D26134();
  sub_237EFA1B0();
  if (!v40)
  {
    v42 = 0;
    sub_237D26230();
    OUTLINED_FUNCTION_4_33();
    sub_237EF9A30();
    v25 = *(v33 + 8);
    v26 = v18;
    goto LABEL_5;
  }

  if (v40 == 1)
  {
    v43 = 1;
    sub_237D261DC();
    OUTLINED_FUNCTION_4_33();
    v14 = v35;
    sub_237EF9A30();
    v25 = *(v34 + 8);
    v26 = v13;
LABEL_5:
    v27 = v14;
    goto LABEL_9;
  }

  v46 = 2;
  sub_237D26188();
  v28 = v36;
  OUTLINED_FUNCTION_4_33();
  v45 = 0;
  v29 = v38;
  v30 = v41;
  sub_237EF9A30();
  if (!v30)
  {
    v44 = 1;
    sub_237EF9A30();
  }

  v25 = *(v37 + 8);
  v26 = v28;
  v27 = v29;
LABEL_9:
  v25(v26, v27);
  return (*(v21 + 8))(v24, v19);
}

uint64_t sub_237D25808(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0AF8);
  OUTLINED_FUNCTION_1();
  v59 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v64 = v56 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B00);
  OUTLINED_FUNCTION_1();
  v63 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = (v56 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B08);
  OUTLINED_FUNCTION_1();
  v60 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B10);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = v56 - v17;
  v19 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_237D26134();
  v20 = v66;
  sub_237EFA190();
  if (v20)
  {
    goto LABEL_11;
  }

  v56[1] = v12;
  v57 = 0;
  v66 = v15;
  v58 = v18;
  v21 = sub_237EF9980();
  result = sub_237CADBA0(v21, 0);
  if (v24 == v25 >> 1)
  {
LABEL_10:
    v32 = sub_237EF93E0();
    swift_allocError();
    v8 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v8 = &unk_284AD3E58;
    v34 = v58;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v32 - 8) + 104))(v8, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v66 + 8))(v34, v13);
LABEL_11:
    v35 = v65;
    goto LABEL_12;
  }

  if (v24 < (v25 >> 1))
  {
    v26 = v13;
    v27 = *(v23 + v24);
    sub_237CADB98(v24 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          v68 = 1;
          sub_237D261DC();
          OUTLINED_FUNCTION_11_24();
          sub_237EF9930();
          v41 = v42;
          swift_unknownObjectRelease();
          v43 = OUTLINED_FUNCTION_6_27();
          v44(v43);
          v45 = OUTLINED_FUNCTION_1_38();
          v46(v45);
          v39 = v65;
        }

        else
        {
          v71 = 2;
          sub_237D26188();
          OUTLINED_FUNCTION_11_24();
          v39 = v65;
          v70 = 0;
          sub_237EF9930();
          v41 = v40;
          v69 = 1;
          sub_237EF9930();
          swift_unknownObjectRelease();
          v52 = OUTLINED_FUNCTION_7_27();
          v53(v52);
          v54 = OUTLINED_FUNCTION_55_1();
          v55(v54);
        }

        goto LABEL_17;
      }

      v67 = 0;
      sub_237D26230();
      v36 = v57;
      sub_237EF98B0();
      if (!v36)
      {
        sub_237EF9930();
        v39 = v65;
        v41 = v47;
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_8_31();
        v49(v48);
        v50 = OUTLINED_FUNCTION_55_1();
        v51(v50);
LABEL_17:
        v8 = v41;
        __swift_destroy_boxed_opaque_existential_1(v39);
        return v8;
      }

      v37 = OUTLINED_FUNCTION_1_38();
      v38(v37);
      swift_unknownObjectRelease();
      v35 = v65;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v35);
      return v8;
    }

    v13 = v26;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_237D25F30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_237D25F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_237D25FE0()
{
  result = qword_27DEB0AE0;
  if (!qword_27DEB0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AE0);
  }

  return result;
}

uint64_t sub_237D26034@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237D25808(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_237D26088()
{
  result = qword_27DEB0AE8;
  if (!qword_27DEB0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AE8);
  }

  return result;
}

unint64_t sub_237D260E0()
{
  result = qword_27DEB0AF0;
  if (!qword_27DEB0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AF0);
  }

  return result;
}

unint64_t sub_237D26134()
{
  result = qword_27DEB0B18;
  if (!qword_27DEB0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B18);
  }

  return result;
}

unint64_t sub_237D26188()
{
  result = qword_27DEB0B20;
  if (!qword_27DEB0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B20);
  }

  return result;
}

unint64_t sub_237D261DC()
{
  result = qword_27DEB0B28;
  if (!qword_27DEB0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B28);
  }

  return result;
}

unint64_t sub_237D26230()
{
  result = qword_27DEB0B30;
  if (!qword_27DEB0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageScaler.Target.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_237D26370(_BYTE *result, int a2, int a3)
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

_BYTE *sub_237D2641C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D264FC()
{
  result = qword_27DEB0B58;
  if (!qword_27DEB0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B58);
  }

  return result;
}

unint64_t sub_237D26554()
{
  result = qword_27DEB0B60;
  if (!qword_27DEB0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B60);
  }

  return result;
}

unint64_t sub_237D265AC()
{
  result = qword_27DEB0B68;
  if (!qword_27DEB0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B68);
  }

  return result;
}

unint64_t sub_237D26604()
{
  result = qword_27DEB0B70;
  if (!qword_27DEB0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B70);
  }

  return result;
}

unint64_t sub_237D2665C()
{
  result = qword_27DEB0B78;
  if (!qword_27DEB0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B78);
  }

  return result;
}

unint64_t sub_237D266B4()
{
  result = qword_27DEB0B80;
  if (!qword_27DEB0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B80);
  }

  return result;
}

unint64_t sub_237D2670C()
{
  result = qword_27DEB0B88;
  if (!qword_27DEB0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B88);
  }

  return result;
}

unint64_t sub_237D26764()
{
  result = qword_27DEB0B90;
  if (!qword_27DEB0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B90);
  }

  return result;
}

unint64_t sub_237D267BC()
{
  result = qword_27DEB0B98;
  if (!qword_27DEB0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B98);
  }

  return result;
}

unint64_t sub_237D26814()
{
  result = qword_27DEB0BA0;
  if (!qword_27DEB0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0BA0);
  }

  return result;
}

unint64_t sub_237D2686C()
{
  result = qword_27DEB0BA8;
  if (!qword_27DEB0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0BA8);
  }

  return result;
}

unint64_t sub_237D268C4()
{
  result = qword_27DEB0BB0;
  if (!qword_27DEB0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0BB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return sub_237EF99C0();
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return sub_237EF98B0();
}

uint64_t sub_237D269E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v37 = MEMORY[0x277D84F90];
  sub_237C62D70(0, v1, 0);
  v2 = v37;
  result = sub_237D2999C();
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v31 = v5;
  v32 = v1;
  v30 = v3 + 72;
  v33 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v35 = v8;
    v36 = v5;
    v34 = v6;
    v11 = *(v3 + 56) + 40 * v7;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = v3;
    v19 = *(v37 + 16);
    v18 = *(v37 + 24);
    result = sub_237EF8260();
    if (v19 >= v18 >> 1)
    {
      result = sub_237C62D70(v18 > 1, v19 + 1, 1);
    }

    *(v37 + 16) = v19 + 1;
    v20 = v37 + 40 * v19;
    *(v20 + 32) = v12;
    *(v20 + 40) = v13;
    *(v20 + 48) = v14;
    *(v20 + 56) = v15;
    *(v20 + 64) = v16;
    v21 = 1 << *(v17 + 32);
    if (v7 >= v21)
    {
      goto LABEL_24;
    }

    v9 = v33;
    v22 = *(v33 + 8 * v10);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v17;
    if (*(v17 + 36) != v36)
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v21 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v24 = v32;
    }

    else
    {
      v25 = v10 << 6;
      v26 = v10 + 1;
      v27 = (v30 + 8 * v10);
      v24 = v32;
      while (v26 < (v21 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_237CB231C(v7, v36, v34 & 1);
          v21 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_237CB231C(v7, v36, v34 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v35 + 1;
    v7 = v21;
    v5 = v31;
    if (v35 + 1 == v24)
    {
      return v2;
    }
  }

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
  __break(1u);
  return result;
}

CreateMLComponents::Pose __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Pose.init(_:)(VNRecognizedPointsObservation a1)
{
  v4 = v1;
  v60[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_29();
  v5 = sub_237EF8560();
  v60[0] = 0;
  v6 = [(objc_class *)a1.super.super.isa recognizedPointsForGroupKey:v5 error:v60];

  v7 = v60[0];
  if (v6)
  {
    type metadata accessor for VNRecognizedPointKey(0);
    sub_237D27038();
    sub_237D2707C();
    v8 = sub_237EF8210();
    v9 = v7;

    v10 = *(v8 + 16);
    if (v10)
    {
      v50 = v4;
      isa = a1.super.super.isa;
      v60[0] = MEMORY[0x277D84F90];
      sub_237C63748(0, v10, 0);
      v11 = v60[0];
      v13 = sub_237D2999C();
      v14 = 0;
      v15 = v8 + 64;
      v16 = *(v8 + 32);
      v52 = v8 + 72;
      v53 = v10;
      v54 = v12;
      v55 = v8 + 64;
      v56 = v8;
      do
      {
        if (v13 < 0 || v13 >= 1 << v16)
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
        }

        v17 = v13 >> 6;
        if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v8 + 36) != v12)
        {
          goto LABEL_26;
        }

        v18 = *(v8 + 56);
        v19 = *(*(v8 + 48) + 8 * v13);
        v20 = *(v18 + 8 * v13);
        v21 = sub_237EF8590();
        v58 = v22;
        v59 = v21;
        v23 = v19;
        v2 = v20;
        v24 = [v2 identifier];
        v57 = sub_237EF8590();
        v26 = v25;

        [v2 location];
        v28 = v27;
        v30 = v29;
        [v2 confidence];
        v32 = v31;

        v60[0] = v11;
        v34 = v11[2];
        v33 = v11[3];
        if (v34 >= v33 >> 1)
        {
          sub_237C63748(v33 > 1, v34 + 1, 1);
          v11 = v60[0];
        }

        v11[2] = v34 + 1;
        v35 = &v11[7 * v34];
        v35[4] = v59;
        v35[5] = v58;
        v35[6] = v57;
        v35[7] = v26;
        v35[8] = v28;
        v35[9] = v30;
        *(v35 + 20) = v32;
        v8 = v56;
        v16 = *(v56 + 32);
        v36 = 1 << v16;
        if (v13 >= 1 << v16)
        {
          goto LABEL_27;
        }

        v15 = v55;
        v37 = *(v55 + 8 * v17);
        if ((v37 & (1 << v13)) == 0)
        {
          goto LABEL_28;
        }

        v12 = v54;
        if (*(v56 + 36) != v54)
        {
          goto LABEL_29;
        }

        v38 = v37 & (-2 << (v13 & 0x3F));
        if (v38)
        {
          v36 = __clz(__rbit64(v38)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v39 = v53;
        }

        else
        {
          v40 = v17 << 6;
          v41 = v17 + 1;
          v39 = v53;
          v42 = (v52 + 8 * v17);
          while (v41 < (v36 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              v36 = __clz(__rbit64(v43)) + v40;
              break;
            }
          }
        }

        ++v14;
        v13 = v36;
      }

      while (v14 != v39);

      a1.super.super.isa = isa;
      v4 = v50;
      OUTLINED_FUNCTION_10_29();
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v49 = sub_237D27C60(v11, &qword_27DEB0E58, &unk_237F0CB10, sub_237D29294);

    *v4 = v49;
    v4[1] = v2;
    v4[2] = 0xE800000000000000;
  }

  else
  {
    v45 = v60[0];
    sub_237EF5DC0();

    swift_willThrow();
  }

  result.allKeypointsKey._object = v48;
  result.allKeypointsKey._countAndFlagsBits = v47;
  result.keypoints._rawValue = v46;
  return result;
}

unint64_t sub_237D27038()
{
  result = qword_27DEB0E38;
  if (!qword_27DEB0E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB0E38);
  }

  return result;
}

unint64_t sub_237D2707C()
{
  result = qword_27DEAD158;
  if (!qword_27DEAD158)
  {
    type metadata accessor for VNRecognizedPointKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD158);
  }

  return result;
}

uint64_t JointKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_237D27938(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  sub_237EF8590();
  v6 = sub_237EF8560();

  v7 = sub_237EF8590();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t sub_237D279C4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;

  return sub_237EF8260();
}

uint64_t sub_237D27A40@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = JointKey.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_237D27A80@<X0>(uint64_t *a1@<X8>)
{
  result = JointKey.debugDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t JointKey.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t JointPoint.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_237EF8260();
}

void __swiftcall JointPoint.init(_:location:confidence:)(CreateMLComponents::JointPoint *__return_ptr retstr, CreateMLComponents::JointKey _, CGPoint location, Swift::Float confidence)
{
  v4 = *(_.rawValue._countAndFlagsBits + 8);
  retstr->key.rawValue._countAndFlagsBits = *_.rawValue._countAndFlagsBits;
  retstr->key.rawValue._object = v4;
  retstr->location.x = location.x;
  retstr->location.y = location.y;
  retstr->confidence = confidence;
}

uint64_t sub_237D27B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = OUTLINED_FUNCTION_16_19();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E68);
      v6 = sub_237EF9830();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v9 = v6;
    v7 = sub_237EF8260();
    sub_237D28F6C(v7, a2, a3, 1, &v9);

    return v9;
  }

  return result;
}

uint64_t sub_237D27C60(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v5 = sub_237EF9830();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  v6 = sub_237EF8260();
  a4(v6, 1, &v8);

  return v8;
}

CreateMLComponents::Pose __swiftcall Pose.init(from:)(Swift::OpaquePointer from)
{
  v1[1]._rawValue = 0x6C6C414F50494E56;
  v1[2]._rawValue = 0xE800000000000000;
  v1->_rawValue = from._rawValue;
  result.keypoints = from;
  return result;
}

uint64_t Pose.keypoints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Float __swiftcall Pose.boundingBoxArea(confidenceThreshold:)(Swift::Float confidenceThreshold)
{
  v2 = sub_237D269E0(*v1);
  sub_237D27DD8(v2);
  v4 = v3;

  return v4;
}

void sub_237D27DD8(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 - 8;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v2)
    {
      v21 = v6[2];
      if (v21)
      {
        OUTLINED_FUNCTION_7_28();
        v22 = v53;
        v23 = *(v53 + 16);
        v24 = 6;
        do
        {
          v1 = v6[v24];
          v53 = v22;
          v25 = *(v22 + 24);
          if (v23 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v25);
            OUTLINED_FUNCTION_3_41();
            sub_237C63768();
            v22 = v53;
          }

          *(v22 + 16) = v23 + 1;
          *(v22 + 8 * v23 + 32) = v1;
          v24 += 5;
          ++v23;
          --v21;
        }

        while (v21);
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      v26 = 0;
      v27 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      while (v3 != v26)
      {
        if (v26 >= v3)
        {
          goto LABEL_43;
        }

        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_9_21();
        if (!(v10 ^ v11 | v9))
        {
          v32 = *v30;
          v31 = v30[1];
          v33 = v30[2];
          v34 = v30[3];
          sub_237EF8260();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v28;
          v36 = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_4_34();
            OUTLINED_FUNCTION_13_18();
          }

          v38 = *(v28 + 16);
          v37 = *(v28 + 24);
          if (v38 >= v37 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v37);
            v28 = v27;
            OUTLINED_FUNCTION_3_41();
            sub_237C62D70(v40, v41, v42);
            OUTLINED_FUNCTION_13_18();
          }

          *(v28 + 16) = v38 + 1;
          v39 = v28 + 40 * v38;
          *(v39 + 32) = v32;
          *(v39 + 40) = v31;
          *(v39 + 48) = v33;
          *(v39 + 56) = v34;
          *(v39 + 64) = v1;
          v26 = v29;
          v4 = v36;
        }
      }

      v43 = *(v28 + 16);
      if (v43)
      {
        OUTLINED_FUNCTION_7_28();
        v44 = v53;
        v45 = *(v53 + 16);
        v46 = 56;
        do
        {
          v47 = *(v28 + v46);
          v53 = v44;
          v48 = *(v44 + 24);
          if (v45 >= v48 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v48);
            OUTLINED_FUNCTION_3_41();
            sub_237C63768();
            v44 = v53;
          }

          *(v44 + 16) = v45 + 1;
          *(v44 + 8 * v45 + 32) = v47;
          v46 += 40;
          ++v45;
          --v43;
        }

        while (v43);
      }

      else
      {

        v44 = MEMORY[0x277D84F90];
      }

      sub_237D60F3C(v22);
      if (v49 & 1) != 0 || (sub_237D60F3C(v44), (v50))
      {
      }

      else
      {
        sub_237CB8680(v22);
        v52 = v51;

        if ((v52 & 1) == 0)
        {
          sub_237CB8680(v44);

          return;
        }
      }

      return;
    }

    if (v2 >= v3)
    {
      break;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_9_21();
    if (!(v10 ^ v11 | v9))
    {
      v13 = *v8;
      v12 = v8[1];
      v14 = v8[2];
      v15 = v8[3];
      sub_237EF8260();
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v6;
      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_34();
        OUTLINED_FUNCTION_13_18();
      }

      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_17_0(v17);
        v6 = v5;
        v5 = &v53;
        sub_237C62D70(v20, v18 + 1, 1);
        OUTLINED_FUNCTION_13_18();
      }

      v6[2] = v18 + 1;
      v19 = &v6[5 * v18];
      v19[4] = v13;
      v19[5] = v12;
      v19[6] = v14;
      v19[7] = v15;
      *(v19 + 16) = v1;
      v2 = v7;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

BOOL static JointPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 == v7;
  }

  v9 = sub_237EF9D40();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t static Pose.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_237D0EE18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_237EF9D40();
}

void sub_237D2829C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v7 = sub_237EF9810();
  if (!*(v6 + 16))
  {

LABEL_29:
    *v4 = v7;
    return;
  }

  v34 = v3;
  v8 = 0;
  OUTLINED_FUNCTION_2_40();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = *(v6 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v6 + 32);
      if (v33 >= 64)
      {
        OUTLINED_FUNCTION_17_20(v33);
      }

      else
      {
        *v6 = -1 << v33;
      }

      *(v6 + 16) = 0;
    }

    v4 = v34;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v6 + 48) + 8 * v18);
    v20 = *(*(v6 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    sub_237EF9040();
    OUTLINED_FUNCTION_5_30();
    if (((v25 << v24) & ~v14[v23]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_32();
LABEL_20:
    OUTLINED_FUNCTION_12_24();
    *(v14 + v30) |= v31;
    *(v7[6] + 8 * v32) = v19;
    *(v7[7] + 8 * v32) = v20;
    ++v7[2];
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_22();
  while (++v26 != v28 || (v27 & 1) == 0)
  {
    v29 = v26 == v28;
    if (v26 == v28)
    {
      v26 = 0;
    }

    v27 |= v29;
    if (v14[v26] != -1)
    {
      OUTLINED_FUNCTION_14_24();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_237D2848C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E50);
  v38 = a2;
  v6 = sub_237EF9810();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v37 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_2_40();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      OUTLINED_FUNCTION_17_20(v36);
    }

    else
    {
      *v8 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v39 = *v22;
    if ((v38 & 1) == 0)
    {
      sub_237EF8260();
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EF8610();
    sub_237EFA170();
    OUTLINED_FUNCTION_5_30();
    if (((v26 << v25) & ~v14[v24]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_32();
LABEL_20:
    OUTLINED_FUNCTION_12_24();
    *(v14 + v31) |= v32;
    v34 = (v6[6] + 16 * v33);
    *v34 = v20;
    v34[1] = v21;
    v35 = (v6[7] + 16 * v33);
    *v35 = v39;
    v35[1] = v23;
    ++v6[2];
    v5 = v37;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_22();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_14_24();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_237D286D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E68);
  v30 = a2;
  result = sub_237EF9810();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_237D28F08(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 56) + 8 * v18);
    v31 = *(*(v5 + 48) + 16 * v18);
    v20 = *(*(v5 + 48) + 16 * v18 + 8);
    if ((v30 & 1) == 0)
    {
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EFA140();
    if (v20)
    {
      sub_237EF8610();
    }

    result = sub_237EFA170();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 16 * v24) = v31;
    *(*(v7 + 56) + 8 * v24) = v19;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_237D28990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E58);
  v37 = a2;
  result = sub_237EF9810();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      sub_237D28F08(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 40 * v18;
    v23 = *(v22 + 8);
    v38 = *v22;
    v39 = *(v22 + 16);
    v24 = *(v22 + 32);
    if ((v37 & 1) == 0)
    {
      sub_237EF8260();
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v20;
    v33[1] = v21;
    v34 = *(v7 + 56) + 40 * v28;
    *v34 = v38;
    *(v34 + 8) = v23;
    *(v34 + 16) = v39;
    *(v34 + 32) = v24;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_237D28C6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E48);
  v34 = a2;
  result = sub_237EF9810();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_237D28F08(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_237D28F08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_237F07A60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_237D28F6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_237EF8260();
  v9 = 0;
  v26 = v8;
  v27 = a2;
  while (1)
  {
    v10 = *(v8 + 16);
    if (v9 == v10)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v9 >= v10)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
      sub_237EFA020();
      __break(1u);
      goto LABEL_27;
    }

    if (a3 == a2)
    {
      goto LABEL_19;
    }

    if (a3 < v27)
    {
      goto LABEL_22;
    }

    if (a2 >= a3)
    {
      goto LABEL_23;
    }

    v29 = *(v8 + 16 * v9 + 32);
    v11 = *a5;
    sub_237EF8260();
    v13 = sub_237D2FD00();
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_24;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a4)
    {
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E70);
      sub_237EF96C0();
      if (v17)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v20 = *a5;
    *(*a5 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v20[6] + 16 * v13) = v29;
    *(v20[7] + 8 * v13) = a2;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v20[2] = v23;
    ++a2;
    ++v9;
    a4 = 1;
    v8 = v26;
  }

  sub_237D286D4(v16, a4 & 1);
  v18 = sub_237D2FD00();
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_26;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_27:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFDAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
  sub_237EF9670();
  MEMORY[0x2383E0710](39, 0xE100000000000000);
  sub_237EF9740();
  __break(1u);
}

void sub_237D29294(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = 0;
  v32 = *(a1 + 16);
  while (1)
  {
    if (v32 == v6)
    {
LABEL_17:

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_237EFA020();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(a1 + v5 + 80);
    v9 = *(a1 + v5 + 64);
    v8 = *(a1 + v5 + 72);
    v10 = *(a1 + v5 + 48);
    v11 = *(a1 + v5 + 56);
    v13 = *(a1 + v5 + 32);
    v12 = *(a1 + v5 + 40);
    sub_237EF8260();
    sub_237EF8260();
    if (!v12)
    {
      goto LABEL_17;
    }

    v33 = v10;
    v14 = a2;
    v15 = *a3;
    v17 = sub_237D30F88(v13, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (v14)
    {
      if (v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E60);
      sub_237EF96C0();
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v13;
    v25[1] = v12;
    v26 = v24[7] + 40 * v17;
    *v26 = v33;
    *(v26 + 8) = v11;
    *(v26 + 16) = v9;
    *(v26 + 24) = v8;
    *(v26 + 32) = v7;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
    v5 += 56;
    ++v6;
    a2 = 1;
  }

  sub_237D28990(v20, v14 & 1);
  v22 = sub_237D30F88(v13, v12);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFDAA0);
  sub_237EF9670();
  MEMORY[0x2383E0710](39, 0xE100000000000000);
  sub_237EF9740();
  __break(1u);
}

void sub_237D295B4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_237EFA020();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    sub_237EF8260();
    v11 = sub_237D2FC30();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8);
      sub_237EF96C0();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_237D28C6C(v14, a2 & 1);
  v16 = sub_237D2FC30();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFDAA0);
  sub_237EF9670();
  MEMORY[0x2383E0710](39, 0xE100000000000000);
  sub_237EF9740();
  __break(1u);
}

unint64_t sub_237D2988C()
{
  result = qword_27DEB0E40;
  if (!qword_27DEB0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0E40);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237D29900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_237D29940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_34()
{
  v2 = *(v0 + 16) + 1;

  return sub_237C62D70(0, v2, 1);
}

void OUTLINED_FUNCTION_7_28()
{

  sub_237C63768();
}

uint64_t OUTLINED_FUNCTION_16_19()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_17_20@<X0>(uint64_t a1@<X8>)
{

  return sub_237D28F08(0, (a1 + 63) >> 6, v1);
}

uint64_t MLModelImageFeatureExtractor.inputName.getter()
{
  v1 = *(v0 + 8);
  sub_237EF8260();
  return v1;
}

uint64_t MLModelImageFeatureExtractor.outputName.getter()
{
  v1 = *(v0 + 24);
  sub_237EF8260();
  return v1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLModelImageFeatureExtractor.init(model:inputName:outputName:context:)(CreateMLComponents::MLModelImageFeatureExtractor *__return_ptr retstr, MLModel model, Swift::String inputName, Swift::String outputName, CIContext context)
{
  isa = context.super.isa;
  object = outputName._object;
  countAndFlagsBits = outputName._countAndFlagsBits;
  v9 = inputName._object;
  v10 = inputName._countAndFlagsBits;
  sub_237D29C44(model.super.isa, inputName._countAndFlagsBits, inputName._object, outputName._countAndFlagsBits, outputName._object);
  if (v5)
  {
  }

  else
  {
    retstr->model = model;
    retstr->inputName._countAndFlagsBits = v10;
    retstr->inputName._object = v9;
    retstr->outputName._countAndFlagsBits = countAndFlagsBits;
    retstr->outputName._object = object;
    retstr->context.super.isa = isa;
  }
}

void sub_237D29C44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [a1 modelDescription];
  v12 = sub_237D2AC00(a1);
  if (v5)
  {
  }

  else
  {
    v13 = v12;
    if ([v12 type] == 4)
    {
      v41 = a4;
      v42 = a5;
      v43 = v11;
      v44 = v13;
      v14 = [v11 inputDescriptionsByName];
      sub_237C75918(0, qword_27DEAF298);
      v15 = sub_237EF8210();

      v16 = v15;
      v17 = 0;
      v18 = v15 + 64;
      v19 = 1 << *(v15 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v15 + 64);
      v22 = (v19 + 63) >> 6;
      v45 = v16;
      while (v21)
      {
LABEL_12:
        v24 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v25 = v24 | (v17 << 6);
        v26 = (*(v16 + 48) + 16 * v25);
        if (*v26 != a2 || v26[1] != a3)
        {
          v28 = *(*(v16 + 56) + 8 * v25);
          v29 = sub_237EF9D40();
          v16 = v45;
          if ((v29 & 1) == 0)
          {
            v30 = v28;
            if (![v30 isOptional])
            {
              sub_237D2CDA0();
              v39 = OUTLINED_FUNCTION_45_0();
              *v40 = 0xD000000000000031;
              v40[1] = 0x8000000237EFDCD0;
              OUTLINED_FUNCTION_30_13(v39, v40);

              return;
            }

            v16 = v45;
          }
        }
      }

      while (1)
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          return;
        }

        if (v23 >= v22)
        {
          break;
        }

        v21 = *(v18 + 8 * v23);
        ++v17;
        if (v21)
        {
          v17 = v23;
          goto LABEL_12;
        }
      }

      v35 = sub_237D2AD34(a1);
      if ([v35 type] != 5)
      {
        sub_237EF9330();
        MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFDD10);
        MEMORY[0x2383E0710](v41, v42);
        OUTLINED_FUNCTION_19_19();
        [v35 type];
        type metadata accessor for MLFeatureType(0);
        sub_237EF9670();
        OUTLINED_FUNCTION_18_19();
        sub_237D2CDA0();
        v36 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_23_15(v36, v37);
        OUTLINED_FUNCTION_17_21(v38, 1);
      }
    }

    else
    {
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237EFDC90);
      MEMORY[0x2383E0710](a2, a3);
      OUTLINED_FUNCTION_19_19();
      [v13 type];
      type metadata accessor for MLFeatureType(0);
      sub_237EF9670();
      OUTLINED_FUNCTION_18_19();
      sub_237D2CDA0();
      v31 = OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_23_15(v31, v32);
      OUTLINED_FUNCTION_30_13(v33, v34);
    }
  }
}

uint64_t MLModelImageFeatureExtractor.init(contentsOf:configuration:inputName:outputName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237D2A094()
{
  OUTLINED_FUNCTION_12_2();
  sub_237C75918(0, &qword_27DEAF200);
  sub_237EF8260();
  sub_237EF8260();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_237D2A16C;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x2821119B0](v3, v2);
}

uint64_t sub_237D2A16C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  if (v0)
  {

    v5 = sub_237D2A3CC;
  }

  else
  {
    v5 = sub_237D2A290;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237D2A290()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 88);
  sub_237D29C44(v8, v5, v4, v2, v3);

  sub_237EF5EF0();
  OUTLINED_FUNCTION_3_11();
  (*(v9 + 8))(v6);
  if (v1)
  {
    v10 = *(v0 + 72);
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);
    v16 = *(v0 + 64);
    *v15 = *(v0 + 88);
    *(v15 + 8) = v14;
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    *(v15 + 32) = v16;
  }

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237D2A3CC()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  sub_237EF5EF0();
  OUTLINED_FUNCTION_3_11();
  (*(v3 + 8))(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t MLModelImageFeatureExtractor.applied(to:eventHandler:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  *(v3 + 40) = *(v2 + 8);
  *(v3 + 56) = *(v2 + 24);
  *(v3 + 64) = *(v2 + 32);
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237D2A4AC()
{
  v1 = sub_237D2A800(*(v0 + 24));
  *(v0 + 80) = v1;
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  *(v0 + 88) = v3;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_237D2A5E4;

  return MEMORY[0x282111978](v2, v3);
}

uint64_t sub_237D2A5E4()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v7 = v6;
  v4[13] = v0;

  if (v0)
  {
    v8 = sub_237D2A798;
  }

  else
  {
    v9 = v4[11];
    v4[14] = v3;

    v8 = sub_237D2A708;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237D2A798()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  return v1();
}

id sub_237D2A800(void *a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = [*v1 modelDescription];
  v7 = [v6 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298);
  v8 = sub_237EF8210();

  v9 = OUTLINED_FUNCTION_49_2();
  v11 = sub_237DD7100(v9, v10, v8);

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v11 imageConstraint];
  if (!v12)
  {

LABEL_6:
    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v16 = v4;
    v16[1] = v5;
    OUTLINED_FUNCTION_17_21(v16, 5);
    sub_237EF8260();
    return v5;
  }

  v13 = v12;
  v14 = [v12 pixelFormatType];

  sub_237D1E82C(a1, v14, 0xD00000000000001CLL, 0x8000000237F0CC30);
  if (v2)
  {
  }

  else
  {
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    *(inited + 32) = v4;
    *(inited + 40) = v5;
    type metadata accessor for CVBuffer(0);
    *(inited + 72) = v20;
    *(inited + 48) = v18;
    sub_237EF8260();
    v21 = v18;
    sub_237EF8230();
    v22 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v5 = sub_237CCD044();
  }

  return v5;
}

void sub_237D2AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = sub_237EF8560();
  v35 = [v27 featureValueForName_];

  if (v35)
  {
    v36 = [v35 multiArrayValue];
    if (v36)
    {
      v37 = v36;
      sub_237EF7EB0();
      sub_237EF7DD0();

      (*(v30 + 8))(v33, v28);
    }

    else
    {
      v39 = [v35 type];
      sub_237CCD12C();
      OUTLINED_FUNCTION_45_0();
      *v40 = 5;
      v40[1] = v39;
      OUTLINED_FUNCTION_17_21(v40, 2);
    }
  }

  else
  {
    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v38 = v25;
    v38[1] = v23;
    OUTLINED_FUNCTION_17_21(v38, 6);
    sub_237EF8260();
  }

  OUTLINED_FUNCTION_12_6();
}

void *sub_237D2AC00(void *a1)
{
  v1 = [a1 modelDescription];
  v2 = [v1 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298);
  v3 = sub_237EF8210();

  v4 = OUTLINED_FUNCTION_49_2();
  v6 = sub_237DD7100(v4, v5, v3);

  if (!v6)
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v7 = OUTLINED_FUNCTION_49_2();
    MEMORY[0x2383E0710](v7);
    OUTLINED_FUNCTION_18_19();
    sub_237D2CDA0();
    v8 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_23_15(v8, v9);
    OUTLINED_FUNCTION_30_13(v10, v11);
  }

  return v6;
}

void *sub_237D2AD34(void *a1)
{
  v1 = [a1 modelDescription];
  v2 = [v1 outputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298);
  v3 = sub_237EF8210();

  v4 = OUTLINED_FUNCTION_49_2();
  v6 = sub_237DD7100(v4, v5, v3);

  if (!v6)
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v7 = OUTLINED_FUNCTION_49_2();
    MEMORY[0x2383E0710](v7);
    OUTLINED_FUNCTION_18_19();
    sub_237D2CDA0();
    v8 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_23_15(v8, v9);
    OUTLINED_FUNCTION_17_21(v10, 1);
  }

  return v6;
}

uint64_t sub_237D2AE6C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237D2AF14;

  return MLModelImageFeatureExtractor.applied(to:eventHandler:)(a1, v4);
}

uint64_t sub_237D2AF14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t MLModelImageFeatureExtractor.Error.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();
    v3 = 0xD000000000000057;
    v4 = 0x8000000237EFDAC0;
  }

  else
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();
    v4 = 0x8000000237EFDB20;
    v3 = 0xD000000000000053;
  }

  MEMORY[0x2383E0710](v3, v4);
  MEMORY[0x2383E0710](v1, v2);
  return v6;
}

uint64_t static MLModelImageFeatureExtractor.Error.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_237EF9D40();
        OUTLINED_FUNCTION_20_10();
        OUTLINED_FUNCTION_5_31();
        OUTLINED_FUNCTION_5_31();
        sub_237D2B238();
        OUTLINED_FUNCTION_20_10();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_5_31();
      OUTLINED_FUNCTION_5_31();
      sub_237D2B238();
      sub_237D2B238();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_5_31();
    OUTLINED_FUNCTION_5_31();
    sub_237D2B238();
    OUTLINED_FUNCTION_20_10();
    sub_237D2B238();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    OUTLINED_FUNCTION_4_35();
    sub_237D2B230();
    OUTLINED_FUNCTION_4_35();
    sub_237D2B230();
    OUTLINED_FUNCTION_4_35();
    sub_237D2B238();
    OUTLINED_FUNCTION_4_35();
    sub_237D2B238();
    return v8;
  }

  v7 = sub_237EF9D40();
  OUTLINED_FUNCTION_20_10();
  sub_237D2B230();
  OUTLINED_FUNCTION_4_35();
  sub_237D2B230();
  OUTLINED_FUNCTION_4_35();
  sub_237D2B238();
  OUTLINED_FUNCTION_20_10();
LABEL_16:
  sub_237D2B238();
  return v7 & 1;
}

void sub_237D2B248()
{
  OUTLINED_FUNCTION_13_4();
  v73 = v2;
  v74 = v1;
  v4 = v3;
  v77 = sub_237EF6D60();
  OUTLINED_FUNCTION_1();
  v80 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E88);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v70 = (&v68 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E90);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v16 = sub_237EF6D20();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF6D90();
  OUTLINED_FUNCTION_1();
  v71 = v23;
  v72 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v75 = v24;
  v26 = *(v0 + 8);
  v25 = *(v0 + 16);
  v27 = [v4 imageConstraint];
  if (!v27)
  {
    OUTLINED_FUNCTION_8_33();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v78 = 0xD000000000000013;
    v79 = v29;
    MEMORY[0x2383E0710](v26, v25);
    MEMORY[0x2383E0710](0xD00000000000001DLL, 0x8000000237EFDC10);
    v30 = v78;
    v31 = v79;
    sub_237D2CDA0();
    v32 = OUTLINED_FUNCTION_45_0();
    *v33 = v30;
    v33[1] = v31;
    OUTLINED_FUNCTION_30_13(v32, v33);
LABEL_28:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v28 = v27;
  [v27 pixelsWide];
  [v28 pixelsHigh];
  [v28 pixelFormatType];
  sub_237EF6D10();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    (*(v18 + 104))(v21, *MEMORY[0x277D250B0], v16);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_237C9A114(v15, &qword_27DEB0E90);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v15, v16);
  }

  v34 = v75;
  sub_237EF6D70();
  v35 = [v28 sizeConstraint];
  v36 = [v35 type];

  if (v36 != 2)
  {
    if (v36 != 3)
    {
LABEL_27:

      v65 = v73;
      (*(v71 + 32))(v73, v34, v72);
      v66 = *MEMORY[0x277D25120];
      v67 = sub_237EF6E60();
      (*(*(v67 - 8) + 104))(v65, v66, v67);
      goto LABEL_28;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E98);
    v69 = v28;
    v37 = [v28 sizeConstraint];
    v38 = [v37 pixelsWideRange];
    v40 = v39;

    if (__OFADD__(v38, v40))
    {
      __break(1u);
    }

    else
    {
      v41 = v70;
      if (&v38[v40] >= v38)
      {
        sub_237EF7D40();
        v42 = [v69 sizeConstraint];
        v43 = [v42 pixelsHighRange];
        v45 = v44;

        if (!__OFADD__(v43, v45))
        {
          if (&v43[v45] >= v43)
          {
            sub_237EF7D40();
            v46 = MEMORY[0x277D250D0];
LABEL_26:
            v63 = *v46;
            v64 = sub_237EF6D30();
            (*(*(v64 - 8) + 104))(v41, v63, v64);
            __swift_storeEnumTagSinglePayload(v41, 0, 1, v64);
            sub_237EF6D40();
            v28 = v69;
            goto LABEL_27;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v47 = [v28 sizeConstraint];
  v48 = [v47 enumeratedImageSizes];

  sub_237C75918(0, &qword_27DEB0EA0);
  v49 = sub_237EF8910();

  v50 = sub_237D6DA5C(v49);
  v69 = v28;
  if (!v50)
  {

    v56 = MEMORY[0x277D84F90];
LABEL_25:
    v41 = v70;
    *v70 = v56;
    v46 = MEMORY[0x277D250C8];
    v34 = v75;
    goto LABEL_26;
  }

  v51 = v50;
  v52 = OUTLINED_FUNCTION_15_23(MEMORY[0x277D84F90]);
  sub_237C63528(v52, v53, v54);
  v76 = v51;
  if ((v51 & 0x8000000000000000) == 0)
  {
    v55 = 0;
    v56 = v78;
    v57 = v49;
    v58 = v49 & 0xC000000000000001;
    do
    {
      if (v58)
      {
        v59 = MEMORY[0x2383E1490](v55, v57);
      }

      else
      {
        v59 = *(v57 + 8 * v55 + 32);
      }

      v60 = v59;
      [v59 pixelsWide];
      [v60 pixelsHigh];
      sub_237EF6D50();

      v78 = v56;
      v62 = *(v56 + 16);
      v61 = *(v56 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_237C63528(v61 > 1, v62 + 1, 1);
        v56 = v78;
      }

      ++v55;
      *(v56 + 16) = v62 + 1;
      (*(v80 + 32))(v56 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v62, v8, v77);
    }

    while (v76 != v55);

    goto LABEL_25;
  }

LABEL_33:
  __break(1u);
}

void sub_237D2B96C()
{
  OUTLINED_FUNCTION_13_4();
  v82 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v79 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  v80 = v11;
  v81 = sub_237EF6DF0();
  OUTLINED_FUNCTION_1();
  v78 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v77 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v84 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  v83 = v26;
  v28 = *(v0 + 24);
  v27 = *(v0 + 32);
  v29 = [v3 multiArrayConstraint];
  if (!v29)
  {
    OUTLINED_FUNCTION_8_33();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000013, 0x8000000237EFDB80);
    MEMORY[0x2383E0710](v28, v27);
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFDBA0);
    v38 = v85;
    v39 = v86;
    sub_237D2CDA0();
    OUTLINED_FUNCTION_45_0();
    *v40 = v38;
    v40[1] = v39;
    OUTLINED_FUNCTION_17_21(v40, 1);
    goto LABEL_21;
  }

  v30 = v29;
  sub_237EF6E20();
  sub_237E5E9F0([v30 dataType], v18);
  v31 = v5;
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_237C9A114(v18, &qword_27DEB0E78);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_45_0();
    v32 = v30;
    v34 = v33;
    OUTLINED_FUNCTION_8_33();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237EFDBD0);
    [v32 dataType];
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    OUTLINED_FUNCTION_18_19();
    v35 = v86;
    *v34 = v85;
    v34[1] = v35;
    OUTLINED_FUNCTION_49_2();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_237EF6E30();
    OUTLINED_FUNCTION_3_11();
    (*(v36 + 8))(v5, v37);
LABEL_21:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v42 = v83;
  v41 = v84;
  (*(v84 + 32))(v83, v18, v19);
  v43 = *(v41 + 16);
  v76 = v19;
  v43(v24, v42, v19);
  sub_237EF6DE0();
  v44 = [v30 shape];
  sub_237C75918(0, &qword_280C8CCF8);
  v45 = sub_237EF8910();

  v46 = sub_237D6DA5C(v45);
  if (!v46)
  {

LABEL_18:
    sub_237EF6E10();
    v54 = [v30 shapeConstraint];
    v55 = v80;
    sub_237E5EBC8(v54, v80);
    v56 = v81;
    if (__swift_getEnumTagSinglePayload(v55, 1, v81) == 1)
    {
      sub_237C9A114(v55, &qword_27DEAD7A8);
      type metadata accessor for SerializationError();
      sub_237CA2D6C();
      OUTLINED_FUNCTION_45_0();
      v57 = v31;
      v58 = v30;
      v60 = v59;
      OUTLINED_FUNCTION_8_33();
      sub_237EF9330();

      OUTLINED_FUNCTION_20_5();
      v85 = 0xD00000000000001ELL;
      v86 = v61;
      v62 = [v58 shapeConstraint];
      v63 = [v62 description];
      v64 = sub_237EF8590();
      v66 = v65;

      MEMORY[0x2383E0710](v64, v66);

      OUTLINED_FUNCTION_18_19();
      v67 = v86;
      *v60 = v85;
      v60[1] = v67;
      OUTLINED_FUNCTION_49_2();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v84 + 8))(v83, v76);
      sub_237EF6E30();
      OUTLINED_FUNCTION_3_11();
      (*(v68 + 8))(v57, v69);
    }

    else
    {
      v71 = v77;
      v70 = v78;
      (*(v78 + 32))(v77, v55, v56);
      v72 = v79;
      (*(v70 + 16))(v79, v71, v56);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v56);
      sub_237EF6E00();

      (*(v70 + 8))(v71, v56);
      (*(v84 + 8))(v83, v76);
    }

    goto LABEL_21;
  }

  v47 = v46;
  v74 = v30;
  v75 = v5;
  OUTLINED_FUNCTION_15_23(MEMORY[0x277D84F90]);
  sub_237C62DB0();
  if (v47 < 0)
  {
    goto LABEL_24;
  }

  v48 = 0;
  v49 = v85;
  while (1)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x2383E1490](v48, v45);
      goto LABEL_13;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v50 = *(v45 + 8 * v48 + 32);
LABEL_13:
    v51 = v50;
    v52 = sub_237EF8D10();

    v85 = v49;
    v53 = *(v49 + 16);
    if (v53 >= *(v49 + 24) >> 1)
    {
      sub_237C62DB0();
      v49 = v85;
    }

    ++v48;
    *(v49 + 16) = v53 + 1;
    *(v49 + 8 * v53 + 32) = v52;
    if (v47 == v48)
    {

      v30 = v74;
      v31 = v75;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_237D2C0D0()
{
  OUTLINED_FUNCTION_13_4();
  v111 = v1;
  v112 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v114 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v4);
  v110 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v109 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v7);
  v115 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v123 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v12);
  v117 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v121 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v16);
  v116 = sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v120 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v19);
  v20 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v124 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v96 - v27;
  v29 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v125 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v96 - v36;
  v39 = *v0;
  v38 = *(v0 + 8);
  v40 = *(v0 + 16);
  *&v126 = *(v0 + 24);
  v41 = *(v0 + 32);
  v42 = *(v0 + 40);
  v128 = v41;
  sub_237EF8260();
  v129 = v39;
  v43 = v39;
  v44 = v130;
  sub_237D2AC00(v43);
  OUTLINED_FUNCTION_21_17();
  if (v44)
  {
    goto LABEL_6;
  }

  v102 = v42;
  v103 = v38;
  v98 = v34;
  v105 = v45;
  v99 = v25;
  v104 = v37;
  v101 = v28;
  v46 = v127;
  v100 = v20;
  v47 = v128;
  sub_237EF8260();
  v48 = v126;
  v49 = v130;
  sub_237D2AD34(v129);
  OUTLINED_FUNCTION_21_17();
  if (v49)
  {

LABEL_6:

    goto LABEL_7;
  }

  v97 = v50;
  v51 = v103;
  v132[0] = v129;
  v132[1] = v103;
  v132[2] = v40;
  v132[3] = v48;
  v52 = v102;
  v132[4] = v47;
  v132[5] = v102;
  v53 = v104;
  v54 = v105;
  v55 = v130;
  sub_237D2B248();
  OUTLINED_FUNCTION_21_17();
  if (v55)
  {

    goto LABEL_6;
  }

  v56 = v98;
  (*(v125 + 16))(v98, v53, v29);
  sub_237EF7090();
  v132[11] = v129;
  v132[12] = v51;
  v132[13] = v40;
  v132[14] = v48;
  v132[15] = v128;
  v132[16] = v52;
  v57 = v130;
  sub_237D2B96C();
  OUTLINED_FUNCTION_21_17();
  if (v57)
  {

    (*(v124 + 8))(v101, v100);
    v58 = OUTLINED_FUNCTION_16_20();
    v60 = v29;
  }

  else
  {
    (*(v120 + 16))(v56, v46, v116);
    (*(v125 + 104))(v56, *MEMORY[0x277D250A0], v29);
    sub_237EF7090();
    v61 = v119;
    sub_237EF7720();
    sub_237EF7620();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v128 = v29;
    v62 = v124;
    v63 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v64 = swift_allocObject();
    v126 = xmmword_237F03530;
    *(v64 + 16) = xmmword_237F03530;
    v65 = *(v62 + 16);
    v66 = v100;
    v65(v64 + v63, v101, v100);
    sub_237EF76B0();
    v67 = swift_allocObject();
    *(v67 + 16) = v126;
    v65(v67 + v63, v99, v66);
    v68 = v61;
    sub_237EF7700();
    v69 = [v129 modelDescription];
    v70 = [v69 modelURL];

    sub_237EF5EB0();
    sub_237EF5E40();
    v71 = v106;
    sub_237EF5DE0();
    v72 = v107;
    sub_237EF5E90();
    v73 = v123 + 8;
    v74 = *(v123 + 8);
    v75 = v115;
    v74(v71, v115);
    v129 = v74;
    v123 = v73;
    sub_237EF5EC0();
    v74(v72, v75);
    v76 = v108;
    sub_237EF7270();
    (*(v109 + 104))(v76, *MEMORY[0x277D253B0], v110);
    sub_237EF7660();
    v77 = *(v121 + 16);
    v78 = v118;
    v79 = v117;
    v77(v118, v68, v117);
    v80 = v113;
    sub_237EF7810();
    v81 = type metadata accessor for CoreMLPackage();
    v82 = v111;
    v83 = v111 + *(v81 + 24);
    *(v83 + 80) = 0;
    *(v83 + 48) = 0u;
    *(v83 + 64) = 0u;
    *(v83 + 16) = 0u;
    *(v83 + 32) = 0u;
    *v83 = 0u;
    v77(v82, v78, v79);
    memcpy(v132, v83, 0x58uLL);
    sub_237C9A114(v132, &unk_27DEAD7B0);
    *v83 = 0u;
    *(v83 + 16) = 0u;
    *(v83 + 32) = 0u;
    *(v83 + 48) = 0u;
    *(v83 + 64) = 0u;
    *(v83 + 80) = 0;
    v84 = v114;
    v85 = v112;
    (*(v114 + 16))(v82 + *(v81 + 20), v80, v112);
    v86 = sub_237E34060();
    v88 = v87;
    v89 = sub_237EF7780();
    v91 = v90;
    swift_isUniquelyReferenced_nonNull_native();
    v133 = *v91;
    sub_237C91098(v86, v88, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v91 = v133;
    v89(&v131, 0);

    (*(v84 + 8))(v80, v85);
    v92 = *(v121 + 8);
    v93 = v117;
    v92(v118, v117);
    v129(v122, v115);
    v92(v119, v93);
    v94 = *(v124 + 8);
    v95 = v100;
    v94(v99, v100);
    (*(v120 + 8))(v127, v116);
    v94(v101, v95);
    v58 = OUTLINED_FUNCTION_16_20();
    v60 = v128;
  }

  v59(v58, v60);
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D2CC58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_237D2CC98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D2CD00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_237D2CD40(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_237D2CDA0()
{
  result = qword_27DEB0E80;
  if (!qword_27DEB0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0E80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_21@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 16) = a2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_18_19()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_19_19()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t Pose.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0EA8);
  OUTLINED_FUNCTION_1();
  v24 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D2D11C();
  sub_237EFA1B0();
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  result = sub_237EF8260();
  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(v9 + 56) + 40 * (v17 | (v15 << 6));
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = *(v18 + 32);
    v26 = *v18;
    v27 = v19;
    sub_237EF8260();
    result = sub_237D2D170(&v26);
    if (result != 40)
    {
      v26 = v20;
      v27 = v21;
      v28 = v22;
      v25 = result;
      sub_237D2DD84();
      result = sub_237EF9A70();
      if (v2)
      {
LABEL_11:

        return (*(v24 + 8))(v8, v4);
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_11;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_237D2D11C()
{
  result = qword_27DEB0EB0;
  if (!qword_27DEB0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EB0);
  }

  return result;
}

uint64_t sub_237D2D170(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_27DEACF70 != -1)
  {
    OUTLINED_FUNCTION_51_4();
  }

  OUTLINED_FUNCTION_5_32(&qword_27DEB0BB8);
  v3 = v3 && v2 == v1;
  if (v3 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
  {

    return 0;
  }

  else
  {
    if (qword_27DEACF78 != -1)
    {
      OUTLINED_FUNCTION_50_5();
    }

    OUTLINED_FUNCTION_5_32(&qword_27DEB0BC8);
    v6 = v3 && v5 == v1;
    if (v6 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
    {

      return 1;
    }

    else
    {
      if (qword_27DEACF80 != -1)
      {
        OUTLINED_FUNCTION_49_6();
      }

      OUTLINED_FUNCTION_5_32(&qword_27DEB0BD8);
      v8 = v3 && v7 == v1;
      if (v8 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
      {

        return 2;
      }

      else
      {
        if (qword_27DEACF88 != -1)
        {
          OUTLINED_FUNCTION_48_5();
        }

        OUTLINED_FUNCTION_5_32(&qword_27DEB0BE8);
        v10 = v3 && v9 == v1;
        if (v10 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
        {

          return 3;
        }

        else
        {
          if (qword_27DEACF90 != -1)
          {
            OUTLINED_FUNCTION_47_3();
          }

          OUTLINED_FUNCTION_5_32(&qword_27DEB0BF8);
          v12 = v3 && v11 == v1;
          if (v12 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
          {

            return 4;
          }

          else
          {
            if (qword_27DEACF98 != -1)
            {
              OUTLINED_FUNCTION_46_4();
            }

            OUTLINED_FUNCTION_5_32(&qword_27DEB0C08);
            v14 = v3 && v13 == v1;
            if (v14 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
            {

              return 5;
            }

            else
            {
              if (qword_27DEACFA0 != -1)
              {
                OUTLINED_FUNCTION_45_3();
              }

              OUTLINED_FUNCTION_5_32(&qword_27DEB0C18);
              v16 = v3 && v15 == v1;
              if (v16 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
              {

                return 6;
              }

              else
              {
                if (qword_27DEACFA8 != -1)
                {
                  OUTLINED_FUNCTION_44_4();
                }

                OUTLINED_FUNCTION_5_32(&qword_27DEB0C28);
                v18 = v3 && v17 == v1;
                if (v18 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  if (qword_27DEACFB0 != -1)
                  {
                    OUTLINED_FUNCTION_43_6();
                  }

                  OUTLINED_FUNCTION_5_32(&qword_27DEB0C38);
                  v20 = v3 && v19 == v1;
                  if (v20 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    if (qword_27DEACFB8 != -1)
                    {
                      OUTLINED_FUNCTION_42_5();
                    }

                    OUTLINED_FUNCTION_5_32(&qword_27DEB0C48);
                    v22 = v3 && v21 == v1;
                    if (v22 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      if (qword_27DEACFC0 != -1)
                      {
                        OUTLINED_FUNCTION_41_4();
                      }

                      OUTLINED_FUNCTION_5_32(&qword_27DEB0C58);
                      v24 = v3 && v23 == v1;
                      if (v24 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        if (qword_27DEACFC8 != -1)
                        {
                          OUTLINED_FUNCTION_40_6();
                        }

                        OUTLINED_FUNCTION_5_32(&qword_27DEB0C68);
                        v26 = v3 && v25 == v1;
                        if (v26 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          if (qword_27DEACFD0 != -1)
                          {
                            OUTLINED_FUNCTION_39_6();
                          }

                          OUTLINED_FUNCTION_5_32(&qword_27DEB0C78);
                          v28 = v3 && v27 == v1;
                          if (v28 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            if (qword_27DEACFD8 != -1)
                            {
                              OUTLINED_FUNCTION_37_7();
                            }

                            OUTLINED_FUNCTION_5_32(&qword_27DEB0C88);
                            v30 = v3 && v29 == v1;
                            if (v30 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              if (qword_27DEACFE0 != -1)
                              {
                                OUTLINED_FUNCTION_36_8();
                              }

                              OUTLINED_FUNCTION_5_32(&qword_27DEB0C98);
                              v32 = v3 && v31 == v1;
                              if (v32 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                if (qword_27DEACFE8 != -1)
                                {
                                  OUTLINED_FUNCTION_35_6();
                                }

                                OUTLINED_FUNCTION_5_32(&qword_27DEB0CA8);
                                v34 = v3 && v33 == v1;
                                if (v34 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  if (qword_27DEACFF0 != -1)
                                  {
                                    OUTLINED_FUNCTION_34_4();
                                  }

                                  OUTLINED_FUNCTION_5_32(&qword_27DEB0CB8);
                                  v36 = v3 && v35 == v1;
                                  if (v36 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    if (qword_27DEACFF8 != -1)
                                    {
                                      OUTLINED_FUNCTION_33_7();
                                    }

                                    OUTLINED_FUNCTION_5_32(&qword_27DEB0CC8);
                                    v38 = v3 && v37 == v1;
                                    if (v38 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      if (qword_27DEAD000 != -1)
                                      {
                                        OUTLINED_FUNCTION_32_8();
                                      }

                                      OUTLINED_FUNCTION_5_32(&qword_27DEB0CD8);
                                      v40 = v3 && v39 == v1;
                                      if (v40 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        if (qword_27DEAD008 != -1)
                                        {
                                          OUTLINED_FUNCTION_31_7();
                                        }

                                        OUTLINED_FUNCTION_5_32(&qword_27DEB0CE8);
                                        v42 = v3 && v41 == v1;
                                        if (v42 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          if (qword_27DEAD010 != -1)
                                          {
                                            OUTLINED_FUNCTION_30_14();
                                          }

                                          OUTLINED_FUNCTION_5_32(&qword_27DEB0CF8);
                                          v44 = v3 && v43 == v1;
                                          if (v44 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            if (qword_27DEAD018 != -1)
                                            {
                                              OUTLINED_FUNCTION_29_12();
                                            }

                                            OUTLINED_FUNCTION_5_32(&qword_27DEB0D08);
                                            v46 = v3 && v45 == v1;
                                            if (v46 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              if (qword_27DEAD020 != -1)
                                              {
                                                OUTLINED_FUNCTION_28_12();
                                              }

                                              OUTLINED_FUNCTION_5_32(&qword_27DEB0D18);
                                              v48 = v3 && v47 == v1;
                                              if (v48 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                if (qword_27DEAD028 != -1)
                                                {
                                                  OUTLINED_FUNCTION_27_13();
                                                }

                                                OUTLINED_FUNCTION_5_32(&qword_27DEB0D28);
                                                v50 = v3 && v49 == v1;
                                                if (v50 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  if (qword_27DEAD030 != -1)
                                                  {
                                                    OUTLINED_FUNCTION_26_11();
                                                  }

                                                  OUTLINED_FUNCTION_5_32(&qword_27DEB0D38);
                                                  v52 = v3 && v51 == v1;
                                                  if (v52 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    if (qword_27DEAD038 != -1)
                                                    {
                                                      OUTLINED_FUNCTION_25_12();
                                                    }

                                                    OUTLINED_FUNCTION_5_32(&qword_27DEB0D48);
                                                    v54 = v3 && v53 == v1;
                                                    if (v54 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      if (qword_27DEAD040 != -1)
                                                      {
                                                        OUTLINED_FUNCTION_22_16();
                                                        swift_once();
                                                      }

                                                      OUTLINED_FUNCTION_5_32(&qword_27DEB0D58);
                                                      v56 = v3 && v55 == v1;
                                                      if (v56 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        if (qword_27DEAD048 != -1)
                                                        {
                                                          OUTLINED_FUNCTION_21_18();
                                                          swift_once();
                                                        }

                                                        OUTLINED_FUNCTION_5_32(&qword_27DEB0D68);
                                                        v58 = v3 && v57 == v1;
                                                        if (v58 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          if (qword_27DEAD050 != -1)
                                                          {
                                                            OUTLINED_FUNCTION_20_15();
                                                            swift_once();
                                                          }

                                                          OUTLINED_FUNCTION_5_32(&qword_27DEB0D78);
                                                          v60 = v3 && v59 == v1;
                                                          if (v60 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            if (qword_27DEAD058 != -1)
                                                            {
                                                              OUTLINED_FUNCTION_19_20();
                                                              swift_once();
                                                            }

                                                            OUTLINED_FUNCTION_5_32(&qword_27DEB0D88);
                                                            v62 = v3 && v61 == v1;
                                                            if (v62 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              if (qword_27DEAD060 != -1)
                                                              {
                                                                OUTLINED_FUNCTION_18_20();
                                                                swift_once();
                                                              }

                                                              OUTLINED_FUNCTION_5_32(&qword_27DEB0D98);
                                                              v64 = v3 && v63 == v1;
                                                              if (v64 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                if (qword_27DEAD068 != -1)
                                                                {
                                                                  OUTLINED_FUNCTION_17_22();
                                                                  swift_once();
                                                                }

                                                                OUTLINED_FUNCTION_5_32(&qword_27DEB0DA8);
                                                                v66 = v3 && v65 == v1;
                                                                if (v66 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  if (qword_27DEAD070 != -1)
                                                                  {
                                                                    OUTLINED_FUNCTION_16_21();
                                                                    swift_once();
                                                                  }

                                                                  OUTLINED_FUNCTION_5_32(&qword_27DEB0DB8);
                                                                  v68 = v3 && v67 == v1;
                                                                  if (v68 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    if (qword_27DEAD078 != -1)
                                                                    {
                                                                      OUTLINED_FUNCTION_15_24();
                                                                      swift_once();
                                                                    }

                                                                    OUTLINED_FUNCTION_5_32(&qword_27DEB0DC8);
                                                                    v70 = v3 && v69 == v1;
                                                                    if (v70 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (qword_27DEAD080 != -1)
                                                                      {
                                                                        OUTLINED_FUNCTION_14_25();
                                                                        swift_once();
                                                                      }

                                                                      OUTLINED_FUNCTION_5_32(&qword_27DEB0DD8);
                                                                      v72 = v3 && v71 == v1;
                                                                      if (v72 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        if (qword_27DEAD088 != -1)
                                                                        {
                                                                          OUTLINED_FUNCTION_13_19();
                                                                          swift_once();
                                                                        }

                                                                        OUTLINED_FUNCTION_5_32(&qword_27DEB0DE8);
                                                                        v74 = v3 && v73 == v1;
                                                                        if (v74 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          if (qword_27DEAD090 != -1)
                                                                          {
                                                                            OUTLINED_FUNCTION_12_25();
                                                                            swift_once();
                                                                          }

                                                                          OUTLINED_FUNCTION_5_32(&qword_27DEB0DF8);
                                                                          v76 = v3 && v75 == v1;
                                                                          if (v76 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            if (qword_27DEAD098 != -1)
                                                                            {
                                                                              OUTLINED_FUNCTION_11_25();
                                                                              swift_once();
                                                                            }

                                                                            OUTLINED_FUNCTION_5_32(&qword_27DEB0E08);
                                                                            v78 = v3 && v77 == v1;
                                                                            if (v78 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              if (qword_27DEAD0A0 != -1)
                                                                              {
                                                                                OUTLINED_FUNCTION_10_30();
                                                                                swift_once();
                                                                              }

                                                                              OUTLINED_FUNCTION_5_32(&qword_27DEB0E18);
                                                                              v80 = v3 && v79 == v1;
                                                                              if (v80 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                if (qword_27DEAD0A8 != -1)
                                                                                {
                                                                                  OUTLINED_FUNCTION_9_23();
                                                                                  swift_once();
                                                                                }

                                                                                OUTLINED_FUNCTION_5_32(&qword_27DEB0E28);
                                                                                if (v3 && v81 == v1)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v83 = OUTLINED_FUNCTION_4_36();

                                                                                  if (v83)
                                                                                  {
                                                                                    return 39;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    return 40;
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

unint64_t sub_237D2DD84()
{
  result = qword_27DEB0EB8;
  if (!qword_27DEB0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EB8);
  }

  return result;
}

uint64_t Pose.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0EC0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D2D11C();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v30 = a2;
  sub_237CC6D04();
  v33 = sub_237EF8230();
  v7 = sub_237EF9980();
  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      v26 = OUTLINED_FUNCTION_58_3();
      v27(v26);

      *v30 = v33;
      v30[1] = 0x6C6C414F50494E56;
      v30[2] = 0xE800000000000000;
      sub_237EF8260();
      sub_237EF8260();
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v7 + v8 + 32);
    sub_237D2E1CC();
    sub_237EF9970();
    v12 = v34;
    v11 = v35;
    v13 = v36;
    sub_237D2E220(v10, &v34);
    v14 = v35;
    if (!v35)
    {
      goto LABEL_7;
    }

    v31 = v34;
    sub_237EF8260();
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v33;
    v28 = sub_237D2FD6C();
    v29 = v15;
    if (__OFADD__(*(v33 + 16), (v15 & 1) == 0))
    {
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E60);
    if (sub_237EF96B0())
    {
      v16 = sub_237D2FD6C();
      if ((v29 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

      v18 = v16;
      if (v29)
      {
LABEL_15:

        v33 = v34;
        v25 = v34[7] + 40 * v18;
        *v25 = v31;
        *(v25 + 8) = v14;
        *(v25 + 16) = v12;
        *(v25 + 24) = v11;
        *(v25 + 32) = v13;

        goto LABEL_7;
      }
    }

    else
    {
      v18 = v28;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    v19 = v34;
    v34[(v18 >> 6) + 8] |= 1 << v18;
    v20 = (v19[6] + 16 * v18);
    *v20 = v31;
    v20[1] = v14;
    v21 = v19[7] + 40 * v18;
    *v21 = v31;
    *(v21 + 8) = v14;
    *(v21 + 16) = v12;
    *(v21 + 24) = v11;
    *(v21 + 32) = v13;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v33 = v19;
    v19[2] = v24;
LABEL_7:
    ++v8;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

unint64_t sub_237D2E1CC()
{
  result = qword_27DEB0EC8;
  if (!qword_27DEB0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EC8);
  }

  return result;
}

uint64_t sub_237D2E220@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      if (qword_27DEACF78 != -1)
      {
        OUTLINED_FUNCTION_50_5();
      }

      v3 = &qword_27DEB0BC8;
      break;
    case 2:
      if (qword_27DEACF80 != -1)
      {
        OUTLINED_FUNCTION_49_6();
      }

      v3 = &qword_27DEB0BD8;
      break;
    case 3:
      if (qword_27DEACF88 != -1)
      {
        OUTLINED_FUNCTION_48_5();
      }

      v3 = &qword_27DEB0BE8;
      break;
    case 4:
      if (qword_27DEACF90 != -1)
      {
        OUTLINED_FUNCTION_47_3();
      }

      v3 = &qword_27DEB0BF8;
      break;
    case 5:
      if (qword_27DEACF98 != -1)
      {
        OUTLINED_FUNCTION_46_4();
      }

      v3 = &qword_27DEB0C08;
      break;
    case 6:
      if (qword_27DEACFA0 != -1)
      {
        OUTLINED_FUNCTION_45_3();
      }

      v3 = &qword_27DEB0C18;
      break;
    case 7:
      if (qword_27DEACFA8 != -1)
      {
        OUTLINED_FUNCTION_44_4();
      }

      v3 = &qword_27DEB0C28;
      break;
    case 8:
      if (qword_27DEACFB0 != -1)
      {
        OUTLINED_FUNCTION_43_6();
      }

      v3 = &qword_27DEB0C38;
      break;
    case 9:
      if (qword_27DEACFB8 != -1)
      {
        OUTLINED_FUNCTION_42_5();
      }

      v3 = &qword_27DEB0C48;
      break;
    case 10:
      if (qword_27DEACFC0 != -1)
      {
        OUTLINED_FUNCTION_41_4();
      }

      v3 = &qword_27DEB0C58;
      break;
    case 11:
      if (qword_27DEACFC8 != -1)
      {
        OUTLINED_FUNCTION_40_6();
      }

      v3 = &qword_27DEB0C68;
      break;
    case 12:
      if (qword_27DEACFD0 != -1)
      {
        OUTLINED_FUNCTION_39_6();
      }

      v3 = &qword_27DEB0C78;
      break;
    case 13:
      if (qword_27DEACFD8 != -1)
      {
        OUTLINED_FUNCTION_37_7();
      }

      v3 = &qword_27DEB0C88;
      break;
    case 14:
      if (qword_27DEACFE0 != -1)
      {
        OUTLINED_FUNCTION_36_8();
      }

      v3 = &qword_27DEB0C98;
      break;
    case 15:
      if (qword_27DEACFE8 != -1)
      {
        OUTLINED_FUNCTION_35_6();
      }

      v3 = &qword_27DEB0CA8;
      break;
    case 16:
      if (qword_27DEACFF0 != -1)
      {
        OUTLINED_FUNCTION_34_4();
      }

      v3 = &qword_27DEB0CB8;
      break;
    case 17:
      if (qword_27DEACFF8 != -1)
      {
        OUTLINED_FUNCTION_33_7();
      }

      v3 = &qword_27DEB0CC8;
      break;
    case 18:
      if (qword_27DEAD000 != -1)
      {
        OUTLINED_FUNCTION_32_8();
      }

      v3 = &qword_27DEB0CD8;
      break;
    case 19:
      if (qword_27DEAD008 != -1)
      {
        OUTLINED_FUNCTION_31_7();
      }

      v3 = &qword_27DEB0CE8;
      break;
    case 20:
      if (qword_27DEAD010 != -1)
      {
        OUTLINED_FUNCTION_30_14();
      }

      v3 = &qword_27DEB0CF8;
      break;
    case 21:
      if (qword_27DEAD018 != -1)
      {
        OUTLINED_FUNCTION_29_12();
      }

      v3 = &qword_27DEB0D08;
      break;
    case 22:
      if (qword_27DEAD020 != -1)
      {
        OUTLINED_FUNCTION_28_12();
      }

      v3 = &qword_27DEB0D18;
      break;
    case 23:
      if (qword_27DEAD028 != -1)
      {
        OUTLINED_FUNCTION_27_13();
      }

      v3 = &qword_27DEB0D28;
      break;
    case 24:
      if (qword_27DEAD030 != -1)
      {
        OUTLINED_FUNCTION_26_11();
      }

      v3 = &qword_27DEB0D38;
      break;
    case 25:
      if (qword_27DEAD038 != -1)
      {
        OUTLINED_FUNCTION_25_12();
      }

      v3 = &qword_27DEB0D48;
      break;
    case 26:
      if (qword_27DEAD040 != -1)
      {
        OUTLINED_FUNCTION_22_16();
        swift_once();
      }

      v3 = &qword_27DEB0D58;
      break;
    case 27:
      if (qword_27DEAD048 != -1)
      {
        OUTLINED_FUNCTION_21_18();
        swift_once();
      }

      v3 = &qword_27DEB0D68;
      break;
    case 28:
      if (qword_27DEAD050 != -1)
      {
        OUTLINED_FUNCTION_20_15();
        swift_once();
      }

      v3 = &qword_27DEB0D78;
      break;
    case 29:
      if (qword_27DEAD058 != -1)
      {
        OUTLINED_FUNCTION_19_20();
        swift_once();
      }

      v3 = &qword_27DEB0D88;
      break;
    case 30:
      if (qword_27DEAD060 != -1)
      {
        OUTLINED_FUNCTION_18_20();
        swift_once();
      }

      v3 = &qword_27DEB0D98;
      break;
    case 31:
      if (qword_27DEAD068 != -1)
      {
        OUTLINED_FUNCTION_17_22();
        swift_once();
      }

      v3 = &qword_27DEB0DA8;
      break;
    case 32:
      if (qword_27DEAD070 != -1)
      {
        OUTLINED_FUNCTION_16_21();
        swift_once();
      }

      v3 = &qword_27DEB0DB8;
      break;
    case 33:
      if (qword_27DEAD078 != -1)
      {
        OUTLINED_FUNCTION_15_24();
        swift_once();
      }

      v3 = &qword_27DEB0DC8;
      break;
    case 34:
      if (qword_27DEAD080 != -1)
      {
        OUTLINED_FUNCTION_14_25();
        swift_once();
      }

      v3 = &qword_27DEB0DD8;
      break;
    case 35:
      if (qword_27DEAD088 != -1)
      {
        OUTLINED_FUNCTION_13_19();
        swift_once();
      }

      v3 = &qword_27DEB0DE8;
      break;
    case 36:
      if (qword_27DEAD090 != -1)
      {
        OUTLINED_FUNCTION_12_25();
        swift_once();
      }

      v3 = &qword_27DEB0DF8;
      break;
    case 37:
      if (qword_27DEAD098 != -1)
      {
        OUTLINED_FUNCTION_11_25();
        swift_once();
      }

      v3 = &qword_27DEB0E08;
      break;
    case 38:
      if (qword_27DEAD0A0 != -1)
      {
        OUTLINED_FUNCTION_10_30();
        swift_once();
      }

      v3 = &qword_27DEB0E18;
      break;
    case 39:
      if (qword_27DEAD0A8 != -1)
      {
        OUTLINED_FUNCTION_9_23();
        swift_once();
      }

      v3 = &qword_27DEB0E28;
      break;
    default:
      if (qword_27DEACF70 != -1)
      {
        OUTLINED_FUNCTION_51_4();
      }

      v3 = &qword_27DEB0BB8;
      break;
  }

  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return sub_237EF8260();
}

uint64_t sub_237D2E990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261457466656CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6579457466656CLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == (OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x7261000000000000) && a2 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == (OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x6579000000000000) && a2 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1801676142 && a2 == 0xE400000000000000;
          if (v9 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1702063982 && a2 == 0xE400000000000000;
            if (v10 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == OUTLINED_FUNCTION_57_5() && a2 == v11;
              if (v12 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0x6F626C457466656CLL && a2 == 0xE900000000000077;
                if (v13 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = a1 == 0x736972577466656CLL && a2 == 0xE900000000000074;
                  if (v14 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = a1 == OUTLINED_FUNCTION_55_3() && a2 == v15;
                    if (v16 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v18 = a1 == (OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x626C000000000000) && a2 == v17;
                      if (v18 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v19 = a1 == 0x6972577468676972 && a2 == 0xEA00000000007473;
                        if (v19 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v20 = a1 == 1953460082 && a2 == 0xE400000000000000;
                          if (v20 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v21 = a1 == 0x7069487466656CLL && a2 == 0xE700000000000000;
                            if (v21 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v22 = a1 == 0x65656E4B7466656CLL && a2 == 0xE800000000000000;
                              if (v22 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v23 = a1 == 0x6C6B6E417466656CLL && a2 == 0xE900000000000065;
                                if (v23 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v24 = a1 == 0x7069487468676972 && a2 == 0xE800000000000000;
                                  if (v24 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v25 = a1 == 0x656E4B7468676972 && a2 == 0xE900000000000065;
                                    if (v25 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v26 = a1 == 0x6B6E417468676972 && a2 == 0xEA0000000000656CLL;
                                      if (v26 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v27 = a1 == 0x706954626D756874 && a2 == 0xE800000000000000;
                                        if (v27 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_54_2(0x49626D756874);
                                          v28 = v4 && a2 == 0xE700000000000000;
                                          if (v28 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_54_2(0x4D626D756874);
                                            v29 = v4 && a2 == 0xE700000000000000;
                                            if (v29 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v30 = a1 == 0x434D43626D756874 && a2 == 0xE800000000000000;
                                              if (v30 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v31 = a1 == 0x7069547865646E69 && a2 == 0xE800000000000000;
                                                if (v31 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v32 = a1 == 0x5049447865646E69 && a2 == 0xE800000000000000;
                                                  if (v32 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v33 = a1 == 0x5049507865646E69 && a2 == 0xE800000000000000;
                                                    if (v33 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v34 = a1 == 0x50434D7865646E69 && a2 == 0xE800000000000000;
                                                      if (v34 || (OUTLINED_FUNCTION_2_41() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v35 = a1 == (OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x6954000000000000) && a2 == 0xE900000000000070;
                                                        if (v35 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v36 = a1 == (OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x4944000000000000) && a2 == 0xE900000000000050;
                                                          if (v36 || (OUTLINED_FUNCTION_1_40() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v37 = a1 == (OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x4950000000000000) && a2 == 0xE900000000000050;
                                                            if (v37 || (OUTLINED_FUNCTION_1_40() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v38 = a1 == (OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x434D000000000000) && a2 == 0xE900000000000050;
                                                              if (v38 || (OUTLINED_FUNCTION_1_40() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v39 = a1 == 0x706954676E6972 && a2 == 0xE700000000000000;
                                                                if (v39 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_54_2(0x4944676E6972);
                                                                  v40 = v4 && a2 == 0xE700000000000000;
                                                                  if (v40 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_54_2(0x4950676E6972);
                                                                    v41 = v4 && a2 == 0xE700000000000000;
                                                                    if (v41 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_54_2(0x434D676E6972);
                                                                      v42 = v4 && a2 == 0xE700000000000000;
                                                                      if (v42 || (OUTLINED_FUNCTION_3_42() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v43 = a1 == (OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x6954000000000000) && a2 == 0xE900000000000070;
                                                                        if (v43 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v44 = a1 == (OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x4944000000000000) && a2 == 0xE900000000000050;
                                                                          if (v44 || (OUTLINED_FUNCTION_1_40() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v45 = a1 == (OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x4950000000000000) && a2 == 0xE900000000000050;
                                                                            if (v45 || (OUTLINED_FUNCTION_1_40() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v46 = a1 == (OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x434D000000000000) && a2 == 0xE900000000000050;
                                                                              if (v46 || (OUTLINED_FUNCTION_1_40() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else if (a1 == 0x7473697277 && a2 == 0xE500000000000000)
                                                                              {

                                                                                return 39;
                                                                              }

                                                                              else
                                                                              {
                                                                                v48 = OUTLINED_FUNCTION_4_36();

                                                                                if (v48)
                                                                                {
                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  return 40;
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

uint64_t sub_237D2F21C(char a1)
{
  result = 0x7261457466656CLL;
  switch(a1)
  {
    case 1:
      return 0x6579457466656CLL;
    case 2:
      return OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 3:
      return OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 4:
      return 1801676142;
    case 5:
      return 1702063982;
    case 6:
      return OUTLINED_FUNCTION_57_5();
    case 7:
      return 0x6F626C457466656CLL;
    case 8:
      return 0x736972577466656CLL;
    case 9:
      return OUTLINED_FUNCTION_55_3();
    case 10:
      return OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x626C000000000000;
    case 11:
      return 0x6972577468676972;
    case 12:
      return 1953460082;
    case 13:
      v9 = 0x69487466656CLL;
      return v9 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
    case 14:
      return 0x65656E4B7466656CLL;
    case 15:
      return 0x6C6B6E417466656CLL;
    case 16:
      v7 = 0x487468676972;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
    case 17:
      return 0x656E4B7468676972;
    case 18:
      return 0x6B6E417468676972;
    case 19:
      v7 = 0x54626D756874;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
    case 20:
      v6 = 0x49626D756874;
      goto LABEL_36;
    case 21:
      v6 = 0x4D626D756874;
      goto LABEL_36;
    case 22:
      return 0x434D43626D756874;
    case 23:
      v7 = 0x547865646E69;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
    case 24:
      v8 = 0x447865646E69;
      return v8 & 0xFFFFFFFFFFFFLL | 0x5049000000000000;
    case 25:
      v8 = 0x507865646E69;
      return v8 & 0xFFFFFFFFFFFFLL | 0x5049000000000000;
    case 26:
      return 0x50434D7865646E69;
    case 27:
      v4 = 1684302189;
      goto LABEL_7;
    case 28:
      v5 = 1684302189;
      goto LABEL_43;
    case 29:
      v3 = 1684302189;
      goto LABEL_45;
    case 30:
      v10 = 1684302189;
      goto LABEL_47;
    case 31:
      v9 = 0x6954676E6972;
      return v9 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
    case 32:
      v6 = 0x4944676E6972;
      goto LABEL_36;
    case 33:
      v6 = 0x4950676E6972;
      goto LABEL_36;
    case 34:
      v6 = 0x434D676E6972;
LABEL_36:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x50000000000000;
      break;
    case 35:
      v4 = 1953786220;
LABEL_7:
      result = v4 | 0x6954656C00000000;
      break;
    case 36:
      v5 = 1953786220;
LABEL_43:
      result = v5 | 0x4944656C00000000;
      break;
    case 37:
      v3 = 1953786220;
LABEL_45:
      result = v3 | 0x4950656C00000000;
      break;
    case 38:
      v10 = 1953786220;
LABEL_47:
      result = v10 | 0x434D656C00000000;
      break;
    case 39:
      result = 0x7473697277;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D2F5D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D2F6A4(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_237D2F6E0(void *a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0EE8);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14[-v11];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D30A08();
  sub_237EFA1B0();
  v15 = a2;
  v16 = a3;
  v14[15] = 0;
  type metadata accessor for CGPoint(0);
  sub_237D30A5C(&qword_27DEB0EF8);
  sub_237EF9A70();
  if (!v3)
  {
    LOBYTE(v15) = 1;
    sub_237EF9A40();
  }

  return (*(v9 + 8))(v12, v7);
}

double sub_237D2F884(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F00);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D30A08();
  sub_237EFA190();
  type metadata accessor for CGPoint(0);
  v11 = 0;
  sub_237D30A5C(&qword_27DEB0F08);
  sub_237EF9970();
  v8 = v10;
  LOBYTE(v10) = 1;
  sub_237EF9940();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_237D2FA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D2E990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D2FAC0(uint64_t a1)
{
  v2 = sub_237D2D11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D2FAFC(uint64_t a1)
{
  v2 = sub_237D2D11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D2FB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D2F5D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D2FB68(uint64_t a1)
{
  v2 = sub_237D30A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D2FBA4(uint64_t a1)
{
  v2 = sub_237D30A08();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D2FBE0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237D2F884(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

unint64_t sub_237D2FC30()
{
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_56_5();
  sub_237EFA170();
  v0 = OUTLINED_FUNCTION_38_5();

  return sub_237D300E8(v0, v1, v2);
}

unint64_t sub_237D2FC80(uint64_t a1)
{
  v2 = sub_237EF9040();

  return sub_237D3019C(a1, v2);
}

unint64_t sub_237D2FD00()
{
  OUTLINED_FUNCTION_7_30();
  sub_237EFA140();
  if (v0)
  {
    OUTLINED_FUNCTION_56_5();
  }

  sub_237EFA170();
  v1 = OUTLINED_FUNCTION_38_5();

  return sub_237D3025C(v1, v2, v3);
}

unint64_t sub_237D2FD6C()
{
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_56_5();
  sub_237EFA170();
  v0 = OUTLINED_FUNCTION_38_5();
  return sub_237D300E8(v0, v1, v2);
}

unint64_t sub_237D2FDB8(unsigned int a1)
{
  v3 = MEMORY[0x2383E21E0](*(v1 + 40), a1, 4);

  return sub_237D303A0(a1, v3);
}

unint64_t sub_237D2FE00(uint64_t a1)
{
  OUTLINED_FUNCTION_53_4();
  sub_237EFA150();
  sub_237EFA150();
  v2 = sub_237EFA170();

  return sub_237D30328(a1, v2);
}

unint64_t sub_237D2FE74(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_53_4();
  sub_237EFA140();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2383E2210](a1);
  }

  v4 = sub_237EFA170();

  return sub_237D304A4(a1, a2 & 1, v4);
}

unint64_t sub_237D2FEFC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_237EFA120();
  v8 = a2 & 1;
  sub_237CB14F4(v11, a1, v8, a3, a4 & 1);
  v9 = sub_237EFA170();
  v11[0] = v8;

  return sub_237D30400(a1, v8, a3, a4 & 1, v9);
}

unint64_t sub_237D2FFAC(__int16 a1)
{
  OUTLINED_FUNCTION_53_4();
  sub_237EFA140();
  sub_237EFA140();
  v2 = sub_237EFA170();

  return sub_237D30528(a1 & 0x101, v2);
}

unint64_t sub_237D30020()
{
  OUTLINED_FUNCTION_7_30();
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v0);
  sub_237EFA170();
  v2 = OUTLINED_FUNCTION_38_5();

  return sub_237D305AC(v2, v3, v4);
}

unint64_t sub_237D30084(char a1)
{
  OUTLINED_FUNCTION_53_4();
  sub_237EFA140();
  v2 = sub_237EFA170();

  return sub_237D30684(a1, v2);
}

unint64_t sub_237D300E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_237EF9D40() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237D3019C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_237C917C0();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_237EF9050();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237D3025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_237EF9D40() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_237D30328(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D303A0(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237D30400(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      if (*(v10 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((a2 & 1) != 0 || *v10 != a1)
      {
        goto LABEL_13;
      }

      if (*(v10 + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0 && *(v10 + 16) == a3)
      {
        return result;
      }

LABEL_13:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D304A4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D30528(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + 2 * result) ^ a1 | *(*(v2 + 48) + 2 * result + 1) ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D305AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D30624(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237D30684(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_237D306E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  v7 = *(v6 + 56) + 40 * result;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  v10 = *(v6 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v12;
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D308BC()
{
  result = qword_27DEB0ED0;
  if (!qword_27DEB0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0ED0);
  }

  return result;
}

unint64_t sub_237D30914()
{
  result = qword_27DEB0ED8;
  if (!qword_27DEB0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0ED8);
  }

  return result;
}

unint64_t sub_237D3096C()
{
  result = qword_27DEB0EE0;
  if (!qword_27DEB0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EE0);
  }

  return result;
}

_OWORD *sub_237D309C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  result = sub_237C91804(v8, (*(v7 + 56) + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_237D30A08()
{
  result = qword_27DEB0EF0;
  if (!qword_27DEB0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EF0);
  }

  return result;
}

uint64_t sub_237D30A5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237D30AA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

void sub_237D30AF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  *(v7 + 8 * v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v11);
  }
}

unint64_t sub_237D30B24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_237D30B70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_237D30BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = type metadata accessor for TensorDescription();
  result = sub_237CF231C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = *(a5 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }

  return result;
}

uint64_t sub_237D30C60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  result = (*(*(v11 - 8) + 32))(v9 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

void sub_237D30CF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  v7 = (v6 + 16 * v4);
  *v7 = v8;
  v7[1] = v9;
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v13);
  }
}

void sub_237D30D28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  *(v7 + v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v11);
  }
}

void sub_237D30D5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  v7 = (v6 + 2 * v4);
  *v7 = v8 & 1;
  v7[1] = v9 & 1;
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v13);
  }
}

_BYTE *_s5PointV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D30E80()
{
  result = qword_27DEB0F10;
  if (!qword_27DEB0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F10);
  }

  return result;
}

unint64_t sub_237D30ED8()
{
  result = qword_27DEB0F18;
  if (!qword_27DEB0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F18);
  }

  return result;
}

unint64_t sub_237D30F30()
{
  result = qword_27DEB0F20;
  if (!qword_27DEB0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F20);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_0_33(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_56_5()
{

  return sub_237EF8610();
}

id RandomImageNoiseGenerator.applied(to:eventHandler:)(void *a1)
{
  sub_237D2063C();
  result = OUTLINED_FUNCTION_1_41();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = OUTLINED_FUNCTION_1_41();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = sub_237D20680();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = [v3 outputImage];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  v7 = *MEMORY[0x277CBFAF0];
  v8 = OUTLINED_FUNCTION_0_34();
  [v8 v9];

  v10 = [objc_allocWithZone(MEMORY[0x277CBF730]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v11 = OUTLINED_FUNCTION_0_34();
  [v11 v12];

  v13 = sub_237EF8BE0();
  v14 = OUTLINED_FUNCTION_0_34();
  [v14 v15];

  v16 = [a1 imageByClampingToExtent];
  [v5 setValue:v16 forKey:*MEMORY[0x277CBFAB8]];

  result = [v4 outputImage];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = result;
  [v5 setValue:result forKey:v7];

  result = [v5 outputImage];
  if (result)
  {
    v18 = result;
    [a1 extent];
    v19 = [v18 imageByCroppingToRect_];

    return v19;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_237D31828(id *a1, void **a2)
{
  *a1 = RandomImageNoiseGenerator.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

id OUTLINED_FUNCTION_1_41()
{

  return sub_237D20680();
}

uint64_t _s10DenseBlockVMa()
{
  result = qword_27DEB0F28;
  if (!qword_27DEB0F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D31958()
{
  result = sub_237EF6820();
  if (v1 <= 0x3F)
  {
    result = sub_237EF6BA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D319E4()
{
  v0 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  _s10DenseBlockVMa();
  sub_237EF6820();
  sub_237EF6850();
  sub_237EF6760();
  v10 = *(v2 + 8);
  v10(v6, v0);
  sub_237EF6BA0();
  sub_237EF6850();
  return v10(v9, v0);
}

uint64_t sub_237D31B34()
{
  sub_237D327E8(&qword_27DEAD5F8, _s10DenseBlockVMa);

  return sub_237EF6890();
}

uint64_t sub_237D31BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237D327E8(&qword_27DEAD5F8, _s10DenseBlockVMa);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237D31D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C57698();
  *a1 = result;
  return result;
}

uint64_t sub_237D31D60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237C576E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D31D94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C57698();
  *a1 = result;
  return result;
}

uint64_t sub_237D31DBC(uint64_t a1)
{
  v2 = sub_237D32730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D31DF8(uint64_t a1)
{
  v2 = sub_237D32730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D31E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v63 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v66 = &v51 - v6;
  v62 = sub_237EF6B10();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v64 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26();
  v58 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v60 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v61 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v68 = type metadata accessor for DenseLayerStorage();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F50);
  OUTLINED_FUNCTION_1();
  v65 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_35();
  v29 = _s10DenseBlockVMa();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D32730();
  v34 = v70;
  sub_237EFA190();
  if (v34)
  {
    v40 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v56 = v22;
  v57 = v29;
  v70 = v33;
  v35 = v65;
  v36 = v66;
  v37 = v67;
  v73 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_237D327E8(v38, v39);
  sub_237EF9970();
  v72 = 1;
  sub_237EF9940();
  v71 = 2;
  v53 = sub_237EF9950();
  v54 = v2;
  *(v70 + *(v57 + 24)) = v53;
  v51 = *(v68 + 20);
  v42 = v60;
  sub_237C6FDA0(v26 + v51, v60, &qword_27DEAD600);
  LODWORD(v68) = 1;
  v43 = v37;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v37);
  sub_237C65484(v42, &qword_27DEAD600);
  v55 = v26;
  v52 = a1;
  if (EnumTagSinglePayload == 1)
  {
    v45 = v62;
    v46 = v63;
    v47 = v35;
    v48 = v56;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v48, v68, 1, v45);
    (*(v46 + 16))(v36, v55, v43);
    sub_237C651A0();
    OUTLINED_FUNCTION_3_43();
    sub_237EF7F00();
    (*(v46 + 8))(v36, v43);
    sub_237C6FDA0(v48, v61, &qword_27DEAD2C0);
    v50 = v70;
    sub_237EF67D0();
    sub_237EF6B80();
    sub_237C65484(v48, &qword_27DEAD2C0);
    sub_237C864D0(v55);
    (*(v47 + 8))(v54, v69);
    sub_237D32784(v50, v59);
    v40 = v52;
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v49 = v58;
  sub_237C6FDA0(v26 + v51, v58, &qword_27DEAD600);
  result = __swift_getEnumTagSinglePayload(v49, 1, v43);
  if (result != 1)
  {
    sub_237C651A0();
    OUTLINED_FUNCTION_3_43();
    v48 = v56;
    v45 = v62;
    sub_237EF7F00();
    v46 = v63;
    (*(v63 + 8))(v49, v43);
    LODWORD(v68) = 0;
    v47 = v35;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_237D32450(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_35();
  v5 = sub_237EF6B10();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  v24[1] = type metadata accessor for DenseLayerStorage();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F60);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = v24 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D32730();
  sub_237EFA1B0();
  sub_237EF67E0();
  sub_237EF67B0();
  sub_237C85568(v9, v1, v13);
  _s10DenseBlockVMa();
  sub_237EF6B90();
  v27 = 0;
  OUTLINED_FUNCTION_4_37();
  sub_237D327E8(v20, v21);
  v22 = v24[2];
  sub_237EF9A70();
  if (!v22)
  {
    v26 = 1;
    sub_237EF9A40();
    v25 = 2;
    sub_237EF9A50();
  }

  sub_237C864D0(v13);
  return (*(v16 + 8))(v19, v14);
}

unint64_t sub_237D32730()
{
  result = qword_27DEB0F58;
  if (!qword_27DEB0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F58);
  }

  return result;
}

uint64_t sub_237D32784(uint64_t a1, uint64_t a2)
{
  v4 = _s10DenseBlockVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D327E8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s10DenseBlockV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D32910()
{
  result = qword_27DEB0F68;
  if (!qword_27DEB0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F68);
  }

  return result;
}

unint64_t sub_237D32968()
{
  result = qword_27DEB0F70;
  if (!qword_27DEB0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F70);
  }

  return result;
}

unint64_t sub_237D329C0()
{
  result = qword_27DEB0F78;
  if (!qword_27DEB0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F78);
  }

  return result;
}

uint64_t sub_237D32A5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_237EF6E60();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_5();
  v47 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  v11 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v46 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  *&v48 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  memcpy(__dst, v2, 0x51uLL);
  (*(*(a1 - 8) + 16))(v51, __dst, a1);
  v23 = v49;
  sub_237D32F94(a2);
  v49 = v23;
  if (v23)
  {
    memcpy(v51, v2, 0x51uLL);
    return sub_237CC9A48(v51);
  }

  else
  {
    v44 = v17;
    v45 = v10;
    v25 = v48;
    v41 = v16;
    memcpy(v51, v2, 0x51uLL);
    sub_237CC9A48(v51);
    OUTLINED_FUNCTION_2_42();
    sub_237EF75E0();
    result = sub_237EF76A0();
    if (*(result + 16))
    {
      v43 = a2;
      v26 = v25;
      v27 = *(v25 + 16);
      v40 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = v44;
      v27(v22, result + v40, v44);

      v39[1] = sub_237EF70A0();
      v42 = v29;
      (*(v26 + 8))(v22, v28);
      v30 = sub_237EF7EF0();
      v31 = v45;
      sub_237E5E9F0(v30, v45);
      if (__swift_getEnumTagSinglePayload(v31, 1, v11) == 1)
      {

        sub_237C863A0(v31, &qword_27DEB0E78);
        type metadata accessor for SerializationError();
        sub_237CA2D6C();
        swift_allocError();
        v33 = v32;
        v50[0] = 0;
        v50[1] = 0xE000000000000000;
        sub_237EF9330();
        MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
        v53 = sub_237EF7EF0();
        type metadata accessor for MLMultiArrayDataType(0);
        sub_237EF9670();
        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v34 = v50[1];
        *v33 = v50[0];
        v33[1] = v34;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_237D0F8BC(v43);
      }

      else
      {
        v35 = v46;
        v36 = v41;
        (*(v46 + 32))(v41, v31, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
        v37 = swift_allocObject();
        v48 = xmmword_237F03530;
        *(v37 + 16) = xmmword_237F03530;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        v38 = swift_allocObject();
        *(v38 + 16) = v48;
        memcpy(v50, __dst, 0x51uLL);
        *(v38 + 32) = LinearRegressorModel.featureCount.getter();
        sub_237EF6CF0();

        sub_237EF7090();
        sub_237EF76B0();
        return (*(v35 + 8))(v36, v11);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237D32F94@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v72 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v77 = v6 - v5;
  v64 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v62 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v63 = v10 - v9;
  v66 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v65 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_237EF7340();
  v68 = v23;
  v69 = *(v23 - 8);
  v24 = v69;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v67 = v26 - v25;
  v76 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v78 = v28;
  MEMORY[0x28223BE20](v29);
  v75 = v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = v61 - v32;
  v34 = *v2;
  sub_237EF7720();
  sub_237D3374C(v34);
  (*(v24 + 16))(v22, v27, v23);
  (*(v18 + 104))(v22, *MEMORY[0x277D25330], v16);
  v74 = v33;
  sub_237EF7660();
  OUTLINED_FUNCTION_2_42();
  sub_237EF75E0();
  v61[0] = *(v34 + 16) - 1;
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  sub_237EF70E0();
  v35 = swift_allocObject();
  v73 = xmmword_237F03530;
  *(v35 + 16) = xmmword_237F03530;
  v36 = v62;
  v37 = v63;
  v38 = v64;
  (*(v62 + 104))(v63, *MEMORY[0x277D250F0], v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_3_44(v39);
  *(v40 + 32) = v61[0];
  sub_237EF6CF0();

  (*(v36 + 8))(v37, v38);
  sub_237EF7090();
  v41 = v74;
  sub_237EF76B0();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_3_44(v42);
  sub_237EF6DA0();
  (*(v65 + 104))(v15, *MEMORY[0x277D25128], v66);
  sub_237EF7090();
  sub_237EF7700();
  sub_237EF7620();
  sub_237EF7600();
  v43 = *(v78 + 16);
  v45 = v75;
  v44 = v76;
  v43(v75, v41, v76);
  v46 = v77;
  sub_237EF7810();
  v47 = type metadata accessor for CoreMLPackage();
  v48 = v70;
  v49 = &v70[*(v47 + 24)];
  *(v49 + 80) = 0;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *v49 = 0u;
  v43(v48, v45, v44);
  memcpy(__dst, v49, sizeof(__dst));
  sub_237C863A0(__dst, &unk_27DEAD7B0);
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0;
  v50 = v71;
  v51 = v72;
  (*(v71 + 16))(&v48[*(v47 + 20)], v46, v72);
  v52 = sub_237E34060();
  v54 = v53;
  v55 = sub_237EF7780();
  v57 = v56;
  swift_isUniquelyReferenced_nonNull_native();
  v81 = *v57;
  sub_237C91098(v52, v54, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v57 = v81;
  v55(v79, 0);
  (*(v50 + 8))(v77, v51);
  v58 = *(v78 + 8);
  v59 = v76;
  v58(v75, v76);
  (*(v69 + 8))(v67, v68);
  return (v58)(v74, v59);
}