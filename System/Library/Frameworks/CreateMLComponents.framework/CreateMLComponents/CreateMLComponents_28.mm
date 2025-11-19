uint64_t sub_237ECB108()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v7 = [v1 name];
  v8 = sub_237EF8590();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_237C75918(0, &qword_27DEAF160);
  (*(v3 + 16))(v2, v5, v4);
  swift_getWitnessTable();
  v11 = sub_237EF8F40();
  v12 = [objc_opt_self() featureValueWithMultiArray_];

  *(inited + 72) = sub_237C75918(0, &qword_27DEAF158);
  *(inited + 48) = v12;
  sub_237EF8230();
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v14 = sub_237CCD044();
  v0[20] = v14;
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v17 = v15;
  v18 = [v16 init];
  v0[21] = v18;
  v19 = swift_task_alloc();
  v0[22] = v19;
  *v19 = v0;
  v19[1] = sub_237ECB3B8;

  return MEMORY[0x282111978](v17, v18);
}

uint64_t sub_237ECB3B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_237ECB5B4;
  }

  else
  {
    v5 = *(v3 + 160);

    v4 = sub_237ECB4D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237ECB4D8()
{
  v1 = *(v0 + 192);
  sub_237ECB628(*(v0 + 184));
  v3 = *(v0 + 160);
  if (v1)
  {

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);
  }

  else
  {
    v6 = v2;

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);
    v4.n128_u64[0] = v6;
  }

  return v5(v4);
}

uint64_t sub_237ECB5B4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_237ECB628(void *a1)
{
  v3 = [*(v1 + 16) name];
  if (!v3)
  {
    sub_237EF8590();
    v3 = sub_237EF8560();
  }

  v4 = [a1 featureValueForName_];

  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v5 = xmmword_237F17CD0;
    *(v5 + 16) = 8;
    swift_willThrow();
  }
}

uint64_t sub_237ECB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_237ECB7BC;

  return MLModelRegressorAdaptor.applied(to:eventHandler:)(a2, v9, v10, a5);
}

uint64_t sub_237ECB7BC(double a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237ECB8CC@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v108 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v107 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v106 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF290);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_22_2(&v99 - v7);
  *&v101 = sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v100 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v11 - v10);
  v121 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v110 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v104 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v117 = &v99 - v17;
  v114 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v113 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v21 - v20);
  v22 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v99 - v33;
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v119 = v36;
  v120 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26();
  v109 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v99 - v40;
  v42 = *v1;
  v122 = *(v1 + 8);
  v103 = *(v1 + 16);
  sub_237EF7720();
  sub_237EF7620();
  v43 = [v42 modelDescription];
  v44 = [v43 modelURL];

  sub_237EF5EB0();
  v111 = sub_237EF5E40();
  v46 = v45;
  v115 = v34;
  sub_237EF5DE0();
  v47 = v31;
  sub_237EF5E90();
  v49 = v24 + 8;
  v48 = *(v24 + 8);
  v48(v28, v22);
  sub_237EF5EC0();
  v116 = v49;
  v48(v47, v22);
  v50 = v48;
  v51 = v41;
  v52 = v112;
  sub_237EF7270();
  (*(v113 + 104))(v52, *MEMORY[0x277D253B0], v114);
  v118 = v51;
  sub_237EF7660();
  v53 = [v122 type];
  if (v53 == 5)
  {
    v57 = v99;
    v58 = v100;
    v59 = v101;
    v60 = v102;
    v61 = [v122 multiArrayConstraint];
    if (v61)
    {
      v62 = v61;
      sub_237E5E63C(v62, v60);
      if (__swift_getEnumTagSinglePayload(v60, 1, v59) != 1)
      {
        OUTLINED_FUNCTION_7_81();

        v71 = *(v58 + 32);
        v71(v57, v60, v59);
        v72 = v117;
        v71(v117, v57, v59);
        OUTLINED_FUNCTION_3_105();
        v112 = v73;
        v73(v72);
        LODWORD(v102) = *MEMORY[0x277D25128];
        goto LABEL_12;
      }

      sub_237C863A0(v60, &qword_27DEAF290);
      type metadata accessor for SerializationError();
      sub_237CA2D6C();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_1_19();
      *v64 = v63 + 11;
      v64[1] = v65;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_10:
      v50(v115, v22);
      return (*(v119 + 8))(v118, v120);
    }

    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_1_19();
    v68 = v69 + 2;
LABEL_9:
    *v66 = v68;
    v66[1] = v67;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  if (v53 != 2)
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_1_19();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_81();
  v54 = v117;
  sub_237EF6DA0();
  OUTLINED_FUNCTION_3_105();
  LODWORD(v102) = v55;
  v112 = v56;
  v56(v54);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  sub_237EF70E0();
  v74 = swift_allocObject();
  v101 = xmmword_237F03530;
  *(v74 + 16) = xmmword_237F03530;
  v75 = [v122 name];
  sub_237EF8590();

  v76 = *(v46 + 16);
  v77 = v104;
  v76(v104, v117, v121);
  sub_237EF7090();
  v78 = v118;
  sub_237EF76B0();
  *(swift_allocObject() + 16) = v101;
  v79 = v103;
  v80 = [v103 name];
  sub_237EF8590();

  sub_237EF6DA0();
  v112(v77, v102, v121);
  sub_237EF7090();
  sub_237EF7700();
  v81 = [v79 name];
  sub_237EF8590();

  sub_237EF7600();
  v82 = v120;
  v83 = *(v119 + 16);
  v84 = v109;
  v83(v109, v78, v120);
  v85 = v106;
  sub_237EF7810();
  v86 = type metadata accessor for CoreMLPackage();
  v87 = v105;
  v88 = v105 + *(v86 + 24);
  *(v88 + 80) = 0;
  *(v88 + 48) = 0u;
  *(v88 + 64) = 0u;
  *(v88 + 16) = 0u;
  *(v88 + 32) = 0u;
  *v88 = 0u;
  v83(v87, v84, v82);
  memcpy(__dst, v88, sizeof(__dst));
  sub_237C863A0(__dst, &unk_27DEAD7B0);
  *v88 = 0u;
  *(v88 + 16) = 0u;
  *(v88 + 32) = 0u;
  *(v88 + 48) = 0u;
  *(v88 + 64) = 0u;
  *(v88 + 80) = 0;
  v89 = v107;
  v90 = v108;
  (*(v107 + 16))(v87 + *(v86 + 20), v85, v108);
  v91 = sub_237E34060();
  v93 = v92;
  v94 = sub_237EF7780();
  v96 = v95;
  swift_isUniquelyReferenced_nonNull_native();
  v125 = *v96;
  sub_237C91098(v91, v93, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v96 = v125;
  v94(v123, 0);
  (*(v89 + 8))(v85, v90);
  v97 = v120;
  v98 = *(v119 + 8);
  v98(v109, v120);
  (*(v110 + 8))(v117, v121);
  (v113)(v115, v114);
  return (v98)(v118, v97);
}

uint64_t sub_237ECC468(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237ECC4A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t VideoReaderError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for VideoReaderError();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_237ECC870(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237F01C30);
      sub_237EF8C10();
      MEMORY[0x2383E0710](0x2E73706620, 0xE500000000000000);
      v14 = 0;
      break;
    case 2u:
      OUTLINED_FUNCTION_0_101();
      v14 = v15 + 82;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_101();
      v14 = v16 + 78;
      break;
    case 4u:
      v14 = 0xD000000000000019;
      break;
    case 5u:
      OUTLINED_FUNCTION_0_101();
      v14 = v17 + 3;
      break;
    default:
      (*(v4 + 32))(v8, v12, v2);
      sub_237EF9330();

      strcpy(v19, "Video file at ");
      HIBYTE(v19[1]) = -18;
      sub_237ECCCB0(&qword_280C8E568, MEMORY[0x277CC9260]);
      v13 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v13);

      MEMORY[0x2383E0710](0xD000000000000020, 0x8000000237F01D70);
      v14 = v19[0];
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v14;
}

uint64_t type metadata accessor for VideoReaderError()
{
  result = qword_27DEB6AB8;
  if (!qword_27DEB6AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237ECC870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoReaderError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static VideoReaderError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for VideoReaderError();
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6AB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v21 = *(v20 + 56);
  sub_237ECC870(a1, &v25 - v18);
  sub_237ECC870(a2, &v19[v21]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237ECC870(v19, v13);
      if (OUTLINED_FUNCTION_2_121() != 1)
      {
        goto LABEL_14;
      }

      v22 = *v13 == *&v19[v21];
      goto LABEL_16;
    case 2u:
      if (OUTLINED_FUNCTION_2_121() != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3u:
      if (OUTLINED_FUNCTION_2_121() != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 4u:
      if (OUTLINED_FUNCTION_2_121() != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 5u:
      if (OUTLINED_FUNCTION_2_121() != 5)
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_237ECCC0C(v19);
      v22 = 1;
      break;
    default:
      sub_237ECC870(v19, v16);
      if (OUTLINED_FUNCTION_2_121())
      {
        (*(v6 + 8))(v16, v4);
LABEL_14:
        sub_237ECCBA4(v19);
        v22 = 0;
      }

      else
      {
        (*(v6 + 32))(v10, &v19[v21], v4);
        v22 = sub_237EF5EA0();
        v23 = *(v6 + 8);
        v23(v10, v4);
        v23(v16, v4);
LABEL_16:
        sub_237ECCC0C(v19);
      }

      break;
  }

  return v22 & 1;
}

uint64_t sub_237ECCBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237ECCC0C(uint64_t a1)
{
  v2 = type metadata accessor for VideoReaderError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237ECCCB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237ECCD04()
{
  result = sub_237EF5EF0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t Reshaper.shape.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Reshaper.init(shape:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 1;
LABEL_7:
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t Reshaper.applied(to:eventHandler:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_237EF7E90();
  result = sub_237EF7E20();
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 1;
    v6 = 32;
    do
    {
      v7 = *(result + v6);
      v8 = (v5 * v7) >> 64;
      v5 *= v7;
      if (v8 != v5 >> 63)
      {
        __break(1u);
        return result;
      }

      v6 += 8;
      --v4;
    }

    while (v4);

    if (v2 == v5)
    {
      return sub_237EF7E60();
    }
  }

  else
  {

    if (v2 == 1)
    {
      return sub_237EF7E60();
    }
  }

  v9 = sub_237EF7E20();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237F01DA0);
  v10 = MEMORY[0x2383E0A10](v1, MEMORY[0x277D83B88]);
  MEMORY[0x2383E0710](v10);

  MEMORY[0x2383E0710](0xD00000000000002ELL, 0x8000000237F01DC0);
  v11 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v11);

  MEMORY[0x2383E0710](0x202E737620, 0xE500000000000000);
  v12 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v12);

  MEMORY[0x2383E0710](11817, 0xE200000000000000);
  sub_237C84150();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0xE000000000000000;
  *(v13 + 24) = 0;
  *(v13 + 32) = 6;
  return swift_willThrow();
}

uint64_t Reshaper.applied<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = v6[1];
  v14[2] = *(a4 + 16);
  v14[3] = a5;
  v15 = *(a4 + 24);
  v16 = *(a4 + 40);
  v17 = a6;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  v21 = a3;
  v11 = sub_237EF7E90();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237C8FFEC(sub_237ECD1AC, v14, a5, v11, v12, a6, MEMORY[0x277D84950], &v22);
}

uint64_t sub_237ECD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  type metadata accessor for Reshaper();
  result = Reshaper.applied(to:eventHandler:)();
  if (v12)
  {
    *a12 = v12;
  }

  return result;
}

uint64_t static Reshaper.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_237C60C7C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_237ECD22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
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

uint64_t sub_237ECD2F0(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_237ECD330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237ECD22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237ECD364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237ECD3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Reshaper.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v17 = *(a2 + 16);
  v18 = v4;
  type metadata accessor for Reshaper.CodingKeys();
  OUTLINED_FUNCTION_0_102();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v15 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = *v2;
  v14[1] = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  *&v17 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  sub_237DA21D0(&qword_280C8CD30);
  v11 = v16;
  sub_237EF9A70();
  if (v11)
  {

    return (*(v15 + 8))(v9, v5);
  }

  else
  {
    v13 = v15;

    LOBYTE(v17) = 1;
    sub_237EF9A50();
    return (*(v13 + 8))(v9, v5);
  }
}

uint64_t Reshaper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Reshaper.CodingKeys();
  OUTLINED_FUNCTION_0_102();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  sub_237DA21D0(&qword_280C8CD28);
  sub_237EF9970();
  v6 = sub_237EF9950();
  v7 = OUTLINED_FUNCTION_1_120();
  v8(v7);
  *a3 = a2;
  a3[1] = v6;
  sub_237EF8260();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237ECD854()
{
  Reshaper.applied(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Reshaper.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF9330();

  v2 = MEMORY[0x2383E0A10](v1, MEMORY[0x277D83B88]);
  MEMORY[0x2383E0710](v2);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0x3C65706168736552;
}

uint64_t sub_237ECD9BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237ECDA10(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t BaseLinearRegressorModel.init<A>(coefficients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  *(a3 + 65) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v8 = sub_237EF8A90();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v8;
  return result;
}

uint64_t BaseLinearRegressorModel.coefficients.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BaseLinearRegressorModel.applied(features:eventHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  memcpy(__dst, v2, 0x51uLL);
  sub_237D915CC(__dst, v9);
  sub_237C70604(a2);
  return sub_237CC8380(v4, v5, v6, v7, __dst, a2);
}

uint64_t sub_237ECDDA4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v4 = sub_237EF89B0();
      *(v4 + 16) = v2;
      bzero((v4 + 32), 8 * v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    result = UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    *(v4 + 16) = v2;
    *a2 = v4;
  }

  return result;
}

uint64_t BaseTreeClassifierModel.encode(to:)(void *a1)
{
  v3 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  result = sub_237E88538();
  if (!v1)
  {
    v12 = result;
    v13 = v11;
    v19 = a1;
    sub_237EF5C30();
    swift_allocObject();
    sub_237EF5C20();
    (*(v5 + 104))(v9, *MEMORY[0x277CC86A8], v3);
    sub_237EF5C00();
    sub_237E4C030();
    sub_237EF5C10();
    memcpy(v15, v16, sizeof(v15));
    memcpy(v18, v16, sizeof(v18));
    sub_237D73A1C(v17);
    sub_237D6E9A0(v15);

    sub_237CBA6B8(v12, v13);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_237EFA1A0();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
    sub_237E5226C(&qword_27DEB4D90);
    sub_237EF9DA0();
    sub_237C863A0(v17, &qword_27DEB2210);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return result;
}

uint64_t BaseTreeClassifierModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA180();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a2;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
  sub_237E5226C(&qword_27DEB4D70);
  sub_237EF9D60();
  v34 = v28[0];
  v35 = v28[1];
  v36 = v28[2];
  v37 = v29;
  sub_237D74FBC(&v34, v28);
  sub_237D7360C(&v34, v31);
  memcpy(v32, v31, sizeof(v32));
  if (sub_237E52394(v32) == 1)
  {
    v12 = sub_237EF93E0();
    swift_allocError();
    v14 = v13;
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00970);
    v38 = v37;
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);
    sub_237C863A0(&v34, &qword_27DEB2210);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237F00A80);
    v38 = 1;
    v16 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v16);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v30);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  memcpy(v33, v32, sizeof(v33));
  sub_237D6E010();
  sub_237EF85B0();
  v17 = sub_237EF85A0();
  v19 = v18;

  result = (*(v7 + 8))(v11, v5);
  if (v19 >> 60 != 15)
  {
    sub_237C863A0(v31, &qword_27DEB4DA8);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v21 = sub_237E88668(0, 0);

    sub_237E88474(v17, v19);

    sub_237E523AC(v17, v19);
    v22 = v36;
    v23 = v35;
    v24 = *(v34 + 16);
    result = sub_237C863A0(&v34, &qword_27DEB2210);
    if (*(&v36 + 1))
    {
      v25 = v24 / *(&v36 + 1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      *v26 = v22;
      v26[1] = v23;
      v26[2] = v21;
      v26[3] = v25;

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void BaseTreeClassifierModel.export(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v26 = a1;
  v5 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v20 = *a2;
  v21 = a2[2];
  v22 = a2[4];
  v23 = a2[6];
  v9 = a2[8];
  sub_237E4BC04(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, *v2, v2[1], v2[2], v2[3], v25, v26, v27, v28);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v18 = sub_237EF7780();
    sub_237C9FB0C(v9, sub_237C9FE58, 0, v19);
    v18(&v24, 0);
    sub_237E33BC0(v26);
    sub_237D0F8BC(v8);
  }
}

uint64_t sub_237ECE880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_237ECE8C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_237ECE91C(uint64_t result, int64_t a2, uint64_t a3, double a4)
{
  if (a3)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 <= a2;
      if (a3 > 0)
      {
        v5 = v4 >= a2;
      }

      if (v5)
      {
        break;
      }

      *(result + 8 * v4) = a4;
      if (__OFADD__(v4, a3))
      {
        v4 = ((v4 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v4 += a3;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237ECE960(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if ((a3 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v16[0] = *a1;
  v16[1] = v7;
  v17 = v8;
  v18 = v9;
  sub_237E6F56C(v16);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = v10;
    v15 = a2;
    if (v7)
    {
      v12 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v9 = v13;
        }

        v14 = v7;
        if (v8)
        {
          if ((v12 * v6) >> 64 != (v12 * v6) >> 63)
          {
            goto LABEL_22;
          }

          v14 = 1;
        }

        if (v12 >= *(v11 + 16))
        {
          break;
        }

        if (v6 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        if (v6 < 0xFFFFFFFF80000000)
        {
          goto LABEL_20;
        }

        if (v14 > 0x7FFFFFFF)
        {
          goto LABEL_21;
        }

        cblas_dscal_NEWLAPACK();
        if (v7 == ++v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_15:
    a2 = v15;
LABEL_17:
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = a2;
    *(a4 + 40) = v11;
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_237ECEAA4(uint64_t isStackAllocationSafe, int a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = *(a9 + 8);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v12 >> 60)
  {
    goto LABEL_12;
  }

  v16 = isStackAllocationSafe;
  v25 = a12;
  v26 = a3;
  v28 = a11;
  v29 = a8;
  v27 = a10;
  if (8 * v12) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    v23 = &v23;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v19 = &v23 - v18;
    if (v12)
    {
      bzero(&v23 - v18, 8 * v12);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v27, v28, v25, v19, v12, 1);
    sub_237ECE91C(a4, a5, a6, 0.0);
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    result = dot(_:_:)(v19, v12, 1, v19, v12, 1);
    *v29 = v21;
  }

  else
  {
    v22 = swift_slowAlloc();
    sub_237ECED08(v22, v12, a9, v16, a2, v26, v27, v28, v25, a4, a5, a6, v29);
    if (v24)
    {

      result = MEMORY[0x2383E2DF0](v22, -1, -1);
      __break(1u);
    }

    else
    {
      return MEMORY[0x2383E2DF0](v22, -1, -1);
    }
  }

  return result;
}

void *sub_237ECED08(void *result, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (result)
  {
    v14 = result;
    v15 = a11;
    v16 = a9;
    if (a2 >= 1)
    {
      bzero(result, 8 * a2);
      v16 = a9;
      v15 = a11;
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a7, a8, v16, v14, a2, 1);
    sub_237ECE91C(a10, v15, a12, 0.0);
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    result = dot(_:_:)(v14, a2, 1, v14, a2, 1);
    *a13 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_237ECEE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  v8 = v3[4];
  if (v7)
  {
    v9 = *v3;
  }

  else
  {
    v9 = v3[1];
  }

  v19[0] = v3[3] + 32;
  v19[1] = v5;
  v19[2] = v6;
  v19[3] = v9;
  v20 = v7;
  v10 = *(v8 + 16);
  v15 = v19;
  v16 = v8 + 32;
  v17 = v10;
  v18 = 1;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = &v14;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(a3, v13, v11, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_237ECEF18(uint64_t isStackAllocationSafe, int a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = *MEMORY[0x277D85DE8];
  v13 = *(a9 + 8);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v13 >> 60)
  {
    goto LABEL_15;
  }

  v17 = isStackAllocationSafe;
  v35 = a8;
  v36 = a7;
  v31 = a12;
  v32 = a3;
  v33 = a10;
  v34 = a11;
  if (8 * v13) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    v30[0] = v30;
    v30[1] = v12;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v20 = v30 - v19;
    if (v13)
    {
      bzero(v30 - v19, 8 * v13);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v33, v34, v31, v20, v13, 1);
    sub_237ECE91C(a4, a5, a6, 0.0);
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    dot(_:_:)(v20, v13, 1, v20, v13, 1);
    *v35 = v21;
  }

  else
  {
    v29 = swift_slowAlloc();
    sub_237ECED08(v29, v13, a9, v17, a2, v32, v33, v34, v31, a4, a5, a6, v35);
    if (v12)
    {

      result = MEMORY[0x2383E2DF0](v29, -1, -1);
      __break(1u);
      return result;
    }

    MEMORY[0x2383E2DF0](v29, -1, -1);
  }

  sub_237ECF1C4(0.0);
  if (*(a9 + 32) == 1)
  {
    v22 = a9;
    v23 = 1;
    v24 = a9;
    v25 = 0;
  }

  else
  {
    v26 = *(a9 + 16);
    v27 = *(a9 + 24);
    v37[0] = *a9;
    v37[1] = v26;
    v37[2] = v13;
    v37[3] = v27;
    v38 = 1;
    v22 = v37;
    v24 = v37;
    v23 = 0;
    v25 = 1;
  }

  return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v22, v23, v24, v25);
}

void sub_237ECF1C4(double a1)
{
  if (*(v1 + 32))
  {
    v2 = *(v1 + 16);
    if (v2 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v2)
    {
      v3 = 0;
      v4 = *(v1 + 24);
      v5 = *(v1 + 8);
      v6 = vdupq_n_s64(v5 - 1);
      v7 = *v1 + 8;
      v8 = vdupq_n_s64(2uLL);
      while ((v3 * v4) >> 64 == (v3 * v4) >> 63)
      {
        if (v5)
        {
          if (v5 < 1)
          {
            goto LABEL_32;
          }

          v9 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v10 = v7;
          v11 = xmmword_237F07A60;
          do
          {
            v12 = vmovn_s64(vcgeq_u64(v6, v11));
            if (v12.i8[0])
            {
              *(v10 - 1) = a1;
            }

            if (v12.i8[4])
            {
              *v10 = a1;
            }

            v11 = vaddq_s64(v11, v8);
            v10 += 2;
            v9 -= 2;
          }

          while (v9);
        }

        ++v3;
        v7 += 8 * v4;
        if (v3 == v2)
        {
          return;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    v13 = *(v1 + 8);
    if (v13 < 0)
    {
LABEL_35:
      __break(1u);
      return;
    }

    if (v13)
    {
      v14 = 0;
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      v17 = vdupq_n_s64(v16 - 1);
      v18 = *v1 + 8;
      v19 = vdupq_n_s64(2uLL);
      while ((v14 * v15) >> 64 == (v14 * v15) >> 63)
      {
        if (v16)
        {
          if (v16 < 1)
          {
            goto LABEL_33;
          }

          v20 = (v16 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v21 = v18;
          v22 = xmmword_237F07A60;
          do
          {
            v23 = vmovn_s64(vcgeq_u64(v17, v22));
            if (v23.i8[0])
            {
              *(v21 - 1) = a1;
            }

            if (v23.i8[4])
            {
              *v21 = a1;
            }

            v22 = vaddq_s64(v22, v19);
            v21 += 2;
            v20 -= 2;
          }

          while (v20);
        }

        ++v14;
        v18 += 8 * v15;
        if (v14 == v13)
        {
          return;
        }
      }

      goto LABEL_31;
    }
  }
}

double sub_237ECF33C()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v2 = v7[0];
  v3 = v1;
  v4 = *(&v1 + 1);
  sub_237E64494(v7, v6);
  return sub_237CC819C(v2, *(&v2 + 1), v3, v4, v7, sub_237ECF7D8);
}

double sub_237ECF40C(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(isStackAllocationSafe + 8);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v4 >> 60)
  {
    goto LABEL_11;
  }

  if ((8 * v4) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    v12[0] = v12;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = v12 - v8;
    if (v4)
    {
      bzero(v12 - v8, 8 * v4);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a2, a3, a4, v9, v4, 1);
    dot(_:_:)(v9, v4, 1, v9, v4, 1);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_237ECF5F4(v11, v4, a2, a3, v13, a4);
    MEMORY[0x2383E2DF0](v11, -1, -1);
    return *v13;
  }

  return result;
}

void *sub_237ECF5F4@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6)
{
  if (result)
  {
    v9 = result;
    if (a2 >= 1)
    {
      bzero(result, 8 * a2);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a3, a4, a6, v9, a2, 1);
    result = dot(_:_:)(v9, a2, 1, v9, a2, 1);
    *a5 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237ECF820()
{
  OUTLINED_FUNCTION_37_0();
  v152 = v1;
  v146 = v2;
  v145 = sub_237EF7520();
  OUTLINED_FUNCTION_1();
  v143 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_237EF74A0();
  OUTLINED_FUNCTION_1();
  v141 = v9;
  v142 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v140 = v10;
  OUTLINED_FUNCTION_12_1();
  v11 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v136 = v15;
  OUTLINED_FUNCTION_11_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v130 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v139 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v151 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  v135 = v26;
  OUTLINED_FUNCTION_12_1();
  sub_237EF71C0();
  OUTLINED_FUNCTION_1();
  v133 = v28;
  v134 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v29);
  sub_237EF7D00();
  OUTLINED_FUNCTION_1();
  v149 = v31;
  v150 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  v32 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = v130 - v40;
  sub_237EF7650();
  v42 = (*(v34 + 88))(v41, v32);
  v43 = *MEMORY[0x277D25368];
  v144 = v42;
  if (v42 == v43)
  {
    v138 = v38;
    v44 = OUTLINED_FUNCTION_24_40();
    v45(v44);
    v46 = v143;
    (*(v143 + 32))(v7, v41, v145);
    v47 = *(v13 + 16);
    v141 = v19;
    v149 = v47;
    v150 = v13 + 16;
    (v47)(v19, v0, v11);
    v142 = v7;
    v48 = sub_237EF7500();
    v49 = *(v48 + 16);
    v41 = v11;
    if (v49)
    {
      v137 = v34;
      OUTLINED_FUNCTION_56_18();
      v50 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
      sub_237C63580(v50, v49, 0);
      v51 = v153;
      OUTLINED_FUNCTION_28();
      v140 = v48;
      v148 = v52;
      v53 = v48 + v52;
      v147 = *(v13 + 72);
      v131 = v13;
      v54 = (v13 + 32);
      v55 = v136;
      do
      {
        v56 = OUTLINED_FUNCTION_48_17();
        v149(v56);
        sub_237ECF820(v152);
        v57 = OUTLINED_FUNCTION_41_17();
        v58(v57);
        v153 = v51;
        v60 = *(v51 + 16);
        v59 = *(v51 + 24);
        if (v60 >= v59 >> 1)
        {
          v62 = OUTLINED_FUNCTION_20_50(v59);
          sub_237C63580(v62, v60 + 1, 1);
          v51 = v153;
        }

        *(v51 + 16) = v60 + 1;
        v61 = v147;
        (*v54)(v51 + v148 + v60 * v147, v55, v11);
        v53 += v61;
        --v49;
      }

      while (v49);

      v83 = v146;
      v13 = v131;
      v32 = v130[2];
      v34 = v137;
      v46 = v143;
    }

    else
    {

      v83 = v146;
    }

    v101 = v142;
    sub_237EF7510();
    v102 = *(v46 + 16);
    v103 = v46;
    v104 = v138;
    v105 = v145;
    v102(v138, v101, v145);
    (*(v34 + 104))(v104, v144, v32);
    v106 = v141;
    sub_237EF7660();
    (*(v103 + 8))(v101, v105);
LABEL_24:
    (*(v13 + 32))(v83, v106, v41);
    goto LABEL_29;
  }

  if (v42 == *MEMORY[0x277D25350])
  {
    v137 = v34;
    v63 = OUTLINED_FUNCTION_24_40();
    v64(v63);
    v65 = OUTLINED_FUNCTION_64_8();
    v66(v65);
    OUTLINED_FUNCTION_59_12(v13 + 16);
    v67();
    v68 = sub_237EF7480();
    v69 = *(v68 + 16);
    v70 = v146;
    if (v69)
    {
      v138 = v38;
      OUTLINED_FUNCTION_56_18();
      v71 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
      sub_237C63580(v71, v69, 0);
      OUTLINED_FUNCTION_28();
      v145 = v68;
      v148 = v72;
      v73 = v68 + v72;
      v147 = *(v13 + 72);
      v131 = v13;
      do
      {
        v74 = v151;
        v75 = OUTLINED_FUNCTION_69_9();
        v76(v75);
        sub_237ECF820(v152);
        v77 = OUTLINED_FUNCTION_41_17();
        v78(v77);
        OUTLINED_FUNCTION_61_10();
        if (v80)
        {
          v82 = OUTLINED_FUNCTION_20_50(v79);
          sub_237C63580(v82, v13, 1);
        }

        OUTLINED_FUNCTION_47_18();
        OUTLINED_FUNCTION_65_8();
        v81();
        v73 += v74;
        --v69;
      }

      while (v69);

      v13 = v131;
      v70 = v146;
      v38 = v138;
    }

    else
    {
    }

    v117 = v140;
    sub_237EF7490();
    v119 = v141;
    v118 = v142;
    (*(v141 + 2))(v38, v117, v142);
    v120 = OUTLINED_FUNCTION_45_22();
    v121(v120);
    v122 = v139;
    sub_237EF7660();
    v119[1](v117, v118);
    (*(v13 + 32))(v70, v122, v41);
  }

  else
  {
    v83 = v146;
    if (v42 == *MEMORY[0x277D253D0])
    {
      v137 = v34;
      v84 = OUTLINED_FUNCTION_24_40();
      v85(v84);
      v86 = OUTLINED_FUNCTION_64_8();
      v87(v86);
      OUTLINED_FUNCTION_59_12(v13 + 16);
      v88();
      v89 = sub_237EF71A0();
      v90 = *(v89 + 16);
      if (v90)
      {
        v138 = v38;
        OUTLINED_FUNCTION_56_18();
        v91 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
        sub_237C63580(v91, v90, 0);
        OUTLINED_FUNCTION_28();
        v145 = v89;
        v148 = v92;
        v93 = v89 + v92;
        v147 = *(v13 + 72);
        v131 = v13;
        do
        {
          v94 = v151;
          v95 = OUTLINED_FUNCTION_48_17();
          v149(v95);
          sub_237ECF820(v152);
          v96 = OUTLINED_FUNCTION_41_17();
          v97(v96);
          OUTLINED_FUNCTION_61_10();
          if (v80)
          {
            v100 = OUTLINED_FUNCTION_20_50(v98);
            sub_237C63580(v100, v13, 1);
          }

          OUTLINED_FUNCTION_47_18();
          OUTLINED_FUNCTION_65_8();
          v99();
          v93 += v94;
          --v90;
        }

        while (v90);

        v13 = v131;
        v83 = v146;
        v38 = v138;
      }

      else
      {
      }

      v125 = v132;
      sub_237EF71B0();
      v127 = v133;
      v126 = v134;
      (*(v133 + 16))(v38, v125, v134);
      v128 = OUTLINED_FUNCTION_45_22();
      v129(v128);
      v106 = v135;
      sub_237EF7660();
      (*(v127 + 8))(v125, v126);
      goto LABEL_24;
    }

    if (v42 == *MEMORY[0x277D253D8])
    {
      v107 = OUTLINED_FUNCTION_24_40();
      v108(v107);
      v109 = OUTLINED_FUNCTION_64_8();
      v110(v109);
      v111 = OUTLINED_FUNCTION_57_11();
      v112(v111);
      sub_237ED02B4();
      v113 = OUTLINED_FUNCTION_45_22();
      v114(v113);
      sub_237EF7660();
      v115 = OUTLINED_FUNCTION_64_8();
      v116(v115);
    }

    else
    {
      v123 = OUTLINED_FUNCTION_57_11();
      v124(v123);
      (*(v34 + 8))(v41, v32);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_38_0();
}

void sub_237ED02B4()
{
  OUTLINED_FUNCTION_37_0();
  v452 = v1;
  OUTLINED_FUNCTION_68_8();
  v444 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v6);
  v426 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v12);
  v413[0] = sub_237EF7980();
  v13 = OUTLINED_FUNCTION_6_1(v413[0]);
  v15 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v16);
  v462 = sub_237EF79A0();
  v17 = OUTLINED_FUNCTION_6_1(v462);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_1();
  v407 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v451 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_16();
  v454 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v35);
  v461 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v457 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  v456 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v52);
  v53 = sub_237EF7940();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_2();
  v463 = v57;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v62);
  v396 = sub_237EF7BC0();
  OUTLINED_FUNCTION_1();
  v64 = v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v67);
  sub_237EF7D00();
  OUTLINED_FUNCTION_5_58();
  v68 = OUTLINED_FUNCTION_46_21();
  v69(v68);
  v376 = v0;
  v70 = sub_237EF7CE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BD0);
  v71 = OUTLINED_FUNCTION_52_15();
  v72 = 0;
  v73 = v70 + 64;
  v74 = 1 << *(v70 + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v76 = v75 & *(v70 + 64);
  v77 = (v74 + 63) >> 6;
  v468 = v55 + 16;
  v422 = v8 + 16;
  v440 = v3 + 16;
  v439 = v3 + 8;
  v443 = v3;
  v438 = v3 + 32;
  v467 = (v55 + 8);
  v414 = v55;
  v466 = (v55 + 32);
  v447 = v37 + 16;
  v435 = (v19 + 16);
  v432 = v19 + 88;
  v431[1] = *MEMORY[0x277D25298];
  v427 = *MEMORY[0x277D25290];
  v78 = v19 + 8;
  v412 = v19 + 96;
  v411[3] = v15 + 32;
  v411[2] = v15 + 8;
  v411[1] = v19 + 104;
  v446 = (v37 + 32);
  v448 = v37;
  v445 = v37 + 8;
  v416 = (v8 + 32);
  v391 = v8;
  v415 = v8 + 8;
  v390 = v64;
  v380 = (v64 + 32);
  v434 = v19 + 8;
  v460 = v53;
  v379 = v70;
  v381 = v71;
  v378 = v70 + 64;
  v377 = v77;
LABEL_5:
  v433 = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v76)
  {
    v79 = __clz(__rbit64(v76));
    v382 = (v76 - 1) & v76;
  }

  else
  {
    v80 = v72;
    do
    {
      v81 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_142;
      }

      if (v81 >= v77)
      {
        goto LABEL_111;
      }

      ++v80;
    }

    while (!*(v73 + 8 * v81));
    OUTLINED_FUNCTION_11_66();
    v382 = v82;
  }

  v383 = v72;
  v83 = v79 | (v72 << 6);
  v84 = (*(v70 + 48) + 16 * v83);
  v85 = v84[1];
  v385 = *v84;
  v86 = *(v390 + 16);
  v386 = *(v390 + 72) * v83;
  v87 = OUTLINED_FUNCTION_35_25(&v417);
  v86(v87);
  (v86)(v398, v37, v396);
  v384 = v85;
  sub_237EF8260();
  v88 = sub_237EF7B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BD8);
  OUTLINED_FUNCTION_52_15();
  v389 = v88 + 64;
  OUTLINED_FUNCTION_3_106();
  OUTLINED_FUNCTION_55_12();
  v388 = v90 >> 6;
  v395 = v91;
  v394 = v88;
  if (v92)
  {
LABEL_13:
    OUTLINED_FUNCTION_25_41();
    v399 = v93;
    v400 = v94;
    v96 = v95 | (v94 << 6);
    goto LABEL_19;
  }

  while (1)
  {
    v97 = v89;
    do
    {
      v98 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_139;
      }

      if (v98 >= v388)
      {

        sub_237EF7B60();
        v37 = sub_237EF7B20();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8);
        sub_237EF9800();
        v275 = 0;
        v276 = v37 + 64;
        v458 = v37;
        OUTLINED_FUNCTION_3_106();
        v279 = v278 & v277;
        v281 = (v280 + 63) >> 6;
        v453 = v282 + 64;
        v455 = v282;
        if ((v278 & v277) == 0)
        {
LABEL_87:
          v284 = v275;
          while (1)
          {
            v275 = v284 + 1;
            if (__OFADD__(v284, 1))
            {
              goto LABEL_140;
            }

            if (v275 >= v281)
            {

              sub_237EF7B30();
              OUTLINED_FUNCTION_19_1();
              v322(v397, v396);
              OUTLINED_FUNCTION_30_44();
              OUTLINED_FUNCTION_12_60(v323);
              v325 = (v381[6] + 16 * v324);
              *v325 = v385;
              v325[1] = v384;
              (*v380)(v381[7] + v386, v398, v396);
              OUTLINED_FUNCTION_39_21();
              if (v140)
              {
                goto LABEL_149;
              }

              v381[2] = v326;
              v78 = v434;
              v70 = v379;
              v73 = v378;
              v72 = v383;
              v77 = v377;
              v76 = v382;
              goto LABEL_5;
            }

            ++v284;
            if (*(v276 + 8 * v275))
            {
              OUTLINED_FUNCTION_14_68();
              v279 = v286 & v285;
              goto LABEL_92;
            }
          }
        }

        while (1)
        {
          v283 = __clz(__rbit64(v279));
          v279 &= v279 - 1;
LABEL_92:
          v287 = v283 | (v275 << 6);
          OUTLINED_FUNCTION_60_12();
          v289 = v288[1];
          v459 = *v288;
          OUTLINED_FUNCTION_32_34();
          v291 = *(v290 + 16);
          v465 = v292 * v287;
          v293 = OUTLINED_FUNCTION_42_21(&v429);
          v291(v293);
          v294 = OUTLINED_FUNCTION_44_22(&v430);
          v291(v294);
          v464 = v289;
          sub_237EF8260();
          sub_237EF79B0();
          OUTLINED_FUNCTION_49_17(v405);
          if (!v186)
          {
            break;
          }

          sub_237ED3E20(v405);
LABEL_104:
          v311 = OUTLINED_FUNCTION_38_20();
          OUTLINED_FUNCTION_70_8(v311, v312, v313, v55);
          sub_237EF79C0();
          v37 = v446;
          v314 = *v446;
          v315 = OUTLINED_FUNCTION_50_18(&v416);
          (v314)(v315);
          OUTLINED_FUNCTION_19_1();
          v316(v406, v55);
          OUTLINED_FUNCTION_22_45();
          OUTLINED_FUNCTION_12_60(v317);
          v318 = v455;
          v319 = OUTLINED_FUNCTION_37_27((*(v455 + 48) + 16 * v287));
          (v314)(v319);
          v320 = *(v318 + 16);
          v140 = __OFADD__(v320, 1);
          v321 = v320 + 1;
          if (v140)
          {
            goto LABEL_145;
          }

          *(v318 + 16) = v321;
          v53 = v460;
          if (!v279)
          {
            goto LABEL_87;
          }
        }

        v295 = *v435;
        OUTLINED_FUNCTION_35_25(v413);
        OUTLINED_FUNCTION_40_19();
        v295();
        v296 = OUTLINED_FUNCTION_13_56();
        v297(v296, v55);
        OUTLINED_FUNCTION_29_34();
        if (v298)
        {
          OUTLINED_FUNCTION_40_19();
          v295();
          OUTLINED_FUNCTION_7_82();
          v299 = v37;
        }

        else
        {
          OUTLINED_FUNCTION_29_34();
          if (v300)
          {
            OUTLINED_FUNCTION_19_1();
            v301 = OUTLINED_FUNCTION_31_29();
            v302(v301);
            v303 = OUTLINED_FUNCTION_5_96();
            v305 = *(v304 - 256);
            v306(v303);
            sub_237EF7970();
            sub_237EF7950();
            OUTLINED_FUNCTION_58_11();
            if (v140)
            {
              goto LABEL_150;
            }

            sub_237EF7960();
            v307 = OUTLINED_FUNCTION_16_58();
            v308(v307, v305);
            v309 = OUTLINED_FUNCTION_10_69();
            v310(v309);
            OUTLINED_FUNCTION_7_82();
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_21_53();
          v295();
          OUTLINED_FUNCTION_7_82();
          v299 = v393;
        }

        (v295)(v299, v55);
LABEL_103:
        OUTLINED_FUNCTION_43_24();
        v295();
        goto LABEL_104;
      }

      ++v97;
    }

    while (!*(v389 + 8 * v98));
    OUTLINED_FUNCTION_11_66();
    v399 = v99;
    v400 = v100;
    v96 = v101 | (v100 << 6);
LABEL_19:
    v102 = *(v88 + 56);
    v103 = (*(v88 + 48) + 16 * v96);
    v104 = v103[1];
    v401 = *v103;
    v465 = *(v414 + 72);
    v105 = *(v414 + 16);
    v105(v408, v102 + v465 * v96, v53);
    v464 = v105;
    v105(v409, v408, v53);
    v402 = v104;
    sub_237EF8260();
    v106 = sub_237EF7910();
    v107 = *(v106 + 16);
    if (!v107)
    {
      goto LABEL_60;
    }

    v108 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
    sub_237C63864(v108, v107, 0);
    v109 = v470;
    OUTLINED_FUNCTION_28();
    v419 = v110;
    v425 = v106 + v110;
    v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BE0);
    v421 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8);
    v111 = 0;
    v112 = *(v391 + 72);
    v423 = *(v391 + 16);
    v113 = v426;
    v420 = v107;
    v418 = v112;
    while (2)
    {
      v429 = v109;
      v428 = v111;
      v114 = v436;
      v115 = v423;
      v423(v436, v425 + v112 * v111, v113);
      v115(v437, v114, v113);
      v116 = sub_237EF7C30();
      sub_237EF9800();
      v117 = 0;
      v118 = v116 + 64;
      v455 = v116;
      OUTLINED_FUNCTION_3_106();
      OUTLINED_FUNCTION_55_12();
      v120 = v119 >> 6;
      v450 = v121 + 64;
      v453 = v121;
      if (v122)
      {
LABEL_22:
        OUTLINED_FUNCTION_25_41();
        v458 = v124;
        goto LABEL_28;
      }

      while (2)
      {
        v125 = v117;
LABEL_24:
        v117 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:

          sub_237EF7CF0();
          v327 = v376;
          v328 = sub_237EF7860();
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8);
          v329 = OUTLINED_FUNCTION_52_15();
          v330 = 0;
          v464 = v329;
          v465 = v328;
          v331 = 1 << *(v328 + 32);
          v332 = -1;
          if (v331 < 64)
          {
            v332 = ~(-1 << v331);
          }

          v333 = v328 + 64;
          v334 = v332 & *(v328 + 64);
          v335 = (v331 + 63) >> 6;
          v463 = v329 + 64;
          if (!v334)
          {
            goto LABEL_115;
          }

LABEL_114:
          v336 = __clz(__rbit64(v334));
          for (v334 &= v334 - 1; ; v334 = v339 & v338)
          {
            v340 = v336 | (v330 << 6);
            v341 = *(v465 + 48) + 16 * v340;
            v342 = *(v341 + 8);
            v466 = *v341;
            OUTLINED_FUNCTION_32_34();
            OUTLINED_FUNCTION_62_6(v343);
            v344 = v461;
            v327();
            (v327)(v404, v403, v344);
            v467 = v342;
            sub_237EF8260();
            v345 = v392;
            sub_237EF79B0();
            OUTLINED_FUNCTION_49_17(v392);
            if (v186)
            {
              sub_237ED3E20(v392);
              goto LABEL_132;
            }

            v346 = *v435;
            v347 = OUTLINED_FUNCTION_35_25(&v409);
            (v346)(v347);
            v348 = OUTLINED_FUNCTION_13_56();
            v349(v348);
            OUTLINED_FUNCTION_29_34();
            if (v350)
            {
              v351 = OUTLINED_FUNCTION_44_22(&v415);
              (v346)(v351);
              OUTLINED_FUNCTION_7_82();
              v352 = v344;
            }

            else
            {
              OUTLINED_FUNCTION_29_34();
              if (v353)
              {
                OUTLINED_FUNCTION_19_1();
                v354 = OUTLINED_FUNCTION_31_29();
                v355(v354);
                v356 = OUTLINED_FUNCTION_5_96();
                v358 = *(v357 - 256);
                v359(v356);
                sub_237EF7970();
                v460 = v360;
                sub_237EF7950();
                OUTLINED_FUNCTION_58_11();
                if (v140)
                {
                  goto LABEL_151;
                }

                sub_237EF7960();
                v361 = OUTLINED_FUNCTION_16_58();
                v362(v361, v358);
                v363 = OUTLINED_FUNCTION_10_69();
                v364(v363);
                OUTLINED_FUNCTION_7_82();
                v345 = v392;
                goto LABEL_131;
              }

              v345 = v392;
              OUTLINED_FUNCTION_21_53();
              v346();
              OUTLINED_FUNCTION_7_82();
              v352 = v387;
            }

            (v346)(v352);
LABEL_131:
            OUTLINED_FUNCTION_43_24();
            v346();
LABEL_132:
            v365 = OUTLINED_FUNCTION_38_20();
            OUTLINED_FUNCTION_70_8(v365, v366, v367, v403);
            sub_237EF79C0();
            v327 = *v446;
            v368 = OUTLINED_FUNCTION_51_17(v411);
            (v327)(v368);
            OUTLINED_FUNCTION_19_1();
            v369();
            OUTLINED_FUNCTION_30_44();
            v370 = v464;
            OUTLINED_FUNCTION_12_60(v371);
            v372 = (v370[6] + 16 * v340);
            v373 = v467;
            *v372 = v466;
            v372[1] = v373;
            (v327)(v370[7] + v468, v345);
            v374 = v370[2];
            v140 = __OFADD__(v374, 1);
            v375 = v374 + 1;
            if (v140)
            {
              goto LABEL_147;
            }

            v370[2] = v375;
            if (v334)
            {
              goto LABEL_114;
            }

LABEL_115:
            v337 = v330;
            do
            {
              v330 = v337 + 1;
              if (__OFADD__(v337, 1))
              {
                goto LABEL_143;
              }

              if (v330 >= v335)
              {

                sub_237EF7870();
                OUTLINED_FUNCTION_38_0();
                return;
              }

              ++v337;
            }

            while (!*(v333 + 8 * v330));
            OUTLINED_FUNCTION_14_68();
          }
        }

        if (v117 < v120)
        {
          ++v125;
          if (*(v118 + 8 * v117))
          {
            OUTLINED_FUNCTION_11_66();
            v458 = v126;
LABEL_28:
            v127 = v123 | (v117 << 6);
            OUTLINED_FUNCTION_60_12();
            v129 = v128[1];
            v459 = *v128;
            v130 = v443;
            v131 = *(v443 + 72) * v127;
            v133 = v441;
            v134 = v444;
            (*(v443 + 16))(v441, v132 + v131, v444);
            sub_237EF8260();
            v135 = v442;
            sub_237ED3580();
            (*(v130 + 8))(v133, v134);
            OUTLINED_FUNCTION_22_45();
            OUTLINED_FUNCTION_12_60(v136);
            v137 = v453;
            v138 = (*(v453 + 48) + 16 * v127);
            *v138 = v459;
            v138[1] = v129;
            (*(v130 + 32))(*(v137 + 56) + v131, v135, v134);
            OUTLINED_FUNCTION_39_21();
            if (v140)
            {
              __break(1u);
              goto LABEL_137;
            }

            *(v137 + 16) = v139;
            v53 = v460;
            if (v458)
            {
              goto LABEL_22;
            }

            continue;
          }

          goto LABEL_24;
        }

        break;
      }

      sub_237EF7C40();
      v141 = sub_237EF7C00();
      v142 = *(v141 + 16);
      if (v142)
      {
        v469 = MEMORY[0x277D84F90];
        sub_237C638BC(0, v142, 0);
        v143 = v469;
        v144 = (*(v414 + 80) + 32) & ~*(v414 + 80);
        v459 = v141;
        v145 = v141 + v144;
        v146 = v413[3];
        do
        {
          v147 = OUTLINED_FUNCTION_48_17();
          v148(v147);
          sub_237ED225C();
          v149 = OUTLINED_FUNCTION_41_17();
          v150(v149);
          v469 = v143;
          v152 = *(v143 + 16);
          v151 = *(v143 + 24);
          if (v152 >= v151 >> 1)
          {
            sub_237C638BC(v151 > 1, v152 + 1, 1);
            v143 = v469;
          }

          *(v143 + 16) = v152 + 1;
          v153 = v465;
          (*v466)(v143 + v144 + v152 * v465, v146, v53);
          v145 += v153;
          --v142;
        }

        while (v142);
      }

      sub_237EF7C10();
      v154 = sub_237EF7BD0();
      sub_237EF9800();
      v155 = 0;
      v156 = v154 + 64;
      v453 = v154;
      OUTLINED_FUNCTION_3_106();
      v159 = v158 & v157;
      v161 = (v160 + 63) >> 6;
      v449 = v162 + 64;
      v450 = v162;
      if ((v158 & v157) != 0)
      {
        goto LABEL_37;
      }

LABEL_38:
      v164 = v155;
      while (1)
      {
        v155 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          goto LABEL_110;
        }

        if (v155 >= v161)
        {
          break;
        }

        ++v164;
        if (*(v156 + 8 * v155))
        {
          OUTLINED_FUNCTION_14_68();
          v159 = v166 & v165;
          while (2)
          {
            v167 = v163 | (v155 << 6);
            OUTLINED_FUNCTION_60_12();
            v169 = v168[1];
            v455 = *v168;
            OUTLINED_FUNCTION_32_34();
            v171 = *(v170 + 16);
            v459 = v172 * v167;
            v174 = v456;
            v175 = v461;
            v171(v456, v173 + v172 * v167, v461);
            v171(v457, v174, v175);
            v458 = v169;
            sub_237EF8260();
            v176 = v451;
            sub_237EF79B0();
            if (__swift_getEnumTagSinglePayload(v176, 1, v462) == 1)
            {
              sub_237ED3E20(v176);
              goto LABEL_54;
            }

            v177 = v435;
            v178 = *v435;
            v179 = OUTLINED_FUNCTION_35_25(&v461);
            v180 = v462;
            (v178)(v179, v176, v462);
            v181 = OUTLINED_FUNCTION_13_56();
            v182(v181, v180);
            OUTLINED_FUNCTION_29_34();
            if (v186)
            {
              v183 = v462;
              (v178)(v454, v176, v462);
              OUTLINED_FUNCTION_7_82();
              v184 = v175;
              v185 = v183;
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_29_34();
            if (v186)
            {
              v187 = OUTLINED_FUNCTION_13_56();
              v188(v187, v462);
              v189 = OUTLINED_FUNCTION_5_96();
              v191 = *(v190 - 256);
              v192(v189);
              sub_237EF7970();
              sub_237EF7950();
              OUTLINED_FUNCTION_58_11();
              if (!v140)
              {
                sub_237EF7960();
                v193 = OUTLINED_FUNCTION_16_58();
                v194(v193, v191);
                v195 = OUTLINED_FUNCTION_10_69();
                v196(v195);
                OUTLINED_FUNCTION_7_82();
                v176 = v451;
                goto LABEL_53;
              }
            }

            else
            {
              v176 = v451;
              OUTLINED_FUNCTION_21_53();
              v178();
              OUTLINED_FUNCTION_7_82();
              v184 = v175;
              v185 = v177;
LABEL_52:
              (v178)(v184, v185);
LABEL_53:
              (v178)(v176, v462);
LABEL_54:
              v197 = OUTLINED_FUNCTION_38_20();
              OUTLINED_FUNCTION_70_8(v197, v198, v199, v462);
              v200 = v457;
              sub_237EF79C0();
              v201 = *v446;
              v202 = OUTLINED_FUNCTION_51_17(&v469);
              (v201)(v202);
              OUTLINED_FUNCTION_19_1();
              v203(v456, v200);
              OUTLINED_FUNCTION_22_45();
              OUTLINED_FUNCTION_12_60(v204);
              v205 = v450;
              v206 = (*(v450 + 48) + 16 * v167);
              v208 = v458;
              v207 = v459;
              *v206 = v455;
              v206[1] = v208;
              (v201)(*(v205 + 56) + v207, v176, v200);
              OUTLINED_FUNCTION_39_21();
              if (!v140)
              {
                *(v205 + 16) = v209;
                v53 = v460;
                if (!v159)
                {
                  goto LABEL_38;
                }

LABEL_37:
                v163 = __clz(__rbit64(v159));
                v159 &= v159 - 1;
                continue;
              }

LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
            }

            break;
          }

          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }
      }

      v210 = v437;
      sub_237EF7BE0();
      v55 = v416;
      v211 = *v416;
      v212 = v417;
      v213 = v210;
      v113 = v426;
      (*v416)(v417, v213, v426);
      OUTLINED_FUNCTION_19_1();
      v214(v436, v113);
      v109 = v429;
      v470 = v429;
      v216 = *(v429 + 16);
      v215 = *(v429 + 24);
      if (v216 >= v215 >> 1)
      {
        v220 = OUTLINED_FUNCTION_20_50(v215);
        sub_237C63864(v220, v216 + 1, 1);
        v113 = v426;
        v109 = v470;
      }

      v217 = v428 + 1;
      *(v109 + 16) = v216 + 1;
      v218 = v418;
      v219 = v109 + v419 + v216 * v418;
      v111 = v217;
      v211(v219, v212, v113);
      v112 = v218;
      if (v111 != v420)
      {
        continue;
      }

      break;
    }

LABEL_60:

    sub_237EF7920();
    v221 = sub_237EF78F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8);
    sub_237EF9800();
    v222 = 0;
    v223 = v221 + 64;
    v458 = v221;
    OUTLINED_FUNCTION_3_106();
    v226 = v225 & v224;
    v228 = (v227 + 63) >> 6;
    v453 = v229 + 64;
    v455 = v229;
    if ((v225 & v224) != 0)
    {
LABEL_61:
      v230 = __clz(__rbit64(v226));
      v226 &= v226 - 1;
      goto LABEL_67;
    }

LABEL_62:
    v231 = v222;
    v53 = v460;
LABEL_63:
    v222 = v231 + 1;
    if (__OFADD__(v231, 1))
    {
      goto LABEL_138;
    }

    if (v222 < v228)
    {
      break;
    }

    sub_237EF7900();
    v269 = *v466;
    v270 = OUTLINED_FUNCTION_35_25(&v412);
    (v269)(v270, v409, v53);
    (*v467)(v408, v53);
    OUTLINED_FUNCTION_30_44();
    OUTLINED_FUNCTION_12_60(v271);
    v273 = (*(v395 + 48) + 16 * v272);
    *v273 = v401;
    v273[1] = v402;
    OUTLINED_FUNCTION_65_8();
    v269();
    OUTLINED_FUNCTION_39_21();
    if (v140)
    {
      goto LABEL_146;
    }

    *(v395 + 16) = v274;
    v88 = v394;
    v89 = v400;
    if (v399)
    {
      goto LABEL_13;
    }
  }

  ++v231;
  if (!*(v223 + 8 * v222))
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_14_68();
  v226 = v233 & v232;
LABEL_67:
  v234 = v230 | (v222 << 6);
  v235 = (*(v458 + 48) + 16 * v234);
  v236 = v235[1];
  v459 = *v235;
  OUTLINED_FUNCTION_32_34();
  v238 = *(v237 + 16);
  v465 = v239 * v234;
  v240 = OUTLINED_FUNCTION_42_21(&v442);
  v238(v240);
  v241 = OUTLINED_FUNCTION_44_22(&v443);
  v238(v241);
  v464 = v236;
  sub_237EF8260();
  sub_237EF79B0();
  OUTLINED_FUNCTION_49_17(v410);
  if (v186)
  {
    sub_237ED3E20(v410);
    goto LABEL_79;
  }

  v242 = *v435;
  OUTLINED_FUNCTION_35_25(v431);
  OUTLINED_FUNCTION_40_19();
  v242();
  v243 = OUTLINED_FUNCTION_13_56();
  v244(v243, v55);
  OUTLINED_FUNCTION_29_34();
  if (v245)
  {
    OUTLINED_FUNCTION_40_19();
    v242();
    OUTLINED_FUNCTION_7_82();
    v246 = v221;
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_29_34();
  if (v247)
  {
    OUTLINED_FUNCTION_19_1();
    v248 = OUTLINED_FUNCTION_31_29();
    v249(v248);
    v250 = OUTLINED_FUNCTION_5_96();
    v252 = *(v251 - 256);
    v253(v250);
    sub_237EF7970();
    sub_237EF7950();
    OUTLINED_FUNCTION_58_11();
    if (!v140)
    {
      sub_237EF7960();
      v254 = OUTLINED_FUNCTION_16_58();
      v255(v254, v252);
      v256 = OUTLINED_FUNCTION_10_69();
      v257(v256);
      OUTLINED_FUNCTION_7_82();
      goto LABEL_78;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_53();
    v242();
    OUTLINED_FUNCTION_7_82();
    v246 = v407;
LABEL_77:
    (v242)(v246, v55);
LABEL_78:
    OUTLINED_FUNCTION_43_24();
    v242();
LABEL_79:
    v258 = OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_70_8(v258, v259, v260, v55);
    sub_237EF79C0();
    v221 = v446;
    v261 = *v446;
    v262 = OUTLINED_FUNCTION_50_18(&v434);
    (v261)(v262);
    OUTLINED_FUNCTION_19_1();
    v263(v413[1], v55);
    OUTLINED_FUNCTION_30_44();
    OUTLINED_FUNCTION_12_60(v264);
    v265 = v455;
    v266 = OUTLINED_FUNCTION_37_27((*(v455 + 48) + 16 * v234));
    (v261)(v266);
    v267 = *(v265 + 16);
    v140 = __OFADD__(v267, 1);
    v268 = v267 + 1;
    if (!v140)
    {
      *(v265 + 16) = v268;
      if (v226)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_237ED225C()
{
  OUTLINED_FUNCTION_37_0();
  v119 = v0;
  OUTLINED_FUNCTION_68_8();
  v1 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v118 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_1();
  v106 = v7;
  OUTLINED_FUNCTION_12_1();
  v90 = sub_237EF7980();
  v8 = OUTLINED_FUNCTION_6_1(v90);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v9);
  v10 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v103 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_1();
  v110 = v21;
  OUTLINED_FUNCTION_12_1();
  v101 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v109 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v112 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_16();
  v108 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_1();
  v111 = v28;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7940();
  OUTLINED_FUNCTION_5_58();
  v29 = OUTLINED_FUNCTION_46_21();
  v30(v29);
  v31 = sub_237EF7910();
  v32 = *(v31 + 16);
  v94 = v10;
  v93 = v19;
  if (v32)
  {
    v104 = v12;
    v120 = MEMORY[0x277D84F90];
    v33 = v31;
    sub_237C63864(0, v32, 0);
    v34 = v3 + 16;
    OUTLINED_FUNCTION_28();
    v114 = v35;
    v115 = v36;
    v37 = v33 + v35;
    v113 = *(v34 + 56);
    v38 = (v34 - 8);
    v39 = (v34 + 16);
    do
    {
      OUTLINED_FUNCTION_45_9();
      v115();
      sub_237ED2AE4(v119, v40, v41, v42, v43, v44, v45, v46, v84, v85, v86, v87, v88, v89, v90, v91, v93, v94, v95, v97);
      (*v38)(v118, v1);
      v48 = *(v120 + 16);
      v47 = *(v120 + 24);
      if (v48 >= v47 >> 1)
      {
        v49 = OUTLINED_FUNCTION_20_50(v47);
        sub_237C63864(v49, v48 + 1, 1);
      }

      *(v120 + 16) = v48 + 1;
      (*v39)(v120 + v114 + v48 * v113, v106, v1);
      v37 += v113;
      --v32;
    }

    while (v32);

    v10 = v94;
    v19 = v93;
    v12 = v104;
  }

  else
  {
  }

  sub_237EF7920();
  v50 = sub_237EF78F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8);
  OUTLINED_FUNCTION_52_15();
  v51 = 0;
  v98 = v50 + 64;
  OUTLINED_FUNCTION_15_53();
  OUTLINED_FUNCTION_55_12();
  v96 = v52 >> 6;
  v99 = (v12 + 88);
  v100 = (v12 + 16);
  v92 = *MEMORY[0x277D25290];
  v102 = (v12 + 8);
  v105 = (v109 + 32);
  v53 = v101;
  v107 = v54;
  if (v55)
  {
    while (1)
    {
      OUTLINED_FUNCTION_25_41();
      v116 = v57;
LABEL_15:
      v60 = v56 | (v51 << 6);
      OUTLINED_FUNCTION_60_12();
      v62 = v61[1];
      v117 = *v61;
      v63 = *(v109 + 16);
      v63(v111, v64 + *(v109 + 72) * v60, v53);
      v63(v112, v111, v53);
      sub_237EF8260();
      sub_237EF79B0();
      if (__swift_getEnumTagSinglePayload(v19, 1, v10) == 1)
      {
        v65 = v19;
        sub_237ED3E20(v19);
      }

      else
      {
        v66 = *v100;
        (*v100)(v103, v19, v10);
        (*v99)(v103, v10);
        OUTLINED_FUNCTION_29_34();
        if (v70)
        {
          v68 = v67;
          v66(v110, v19, v10);
          v69 = *v68;
          (*v68)(v103, v10);
        }

        else
        {
          OUTLINED_FUNCTION_29_34();
          if (v70)
          {
            OUTLINED_FUNCTION_19_1();
            v10 = v94;
            v71(v103, v94);
            OUTLINED_FUNCTION_19_1();
            v72(v89, v103, v90);
            sub_237EF7970();
            if (__OFADD__(sub_237EF7950(), v119))
            {
              goto LABEL_31;
            }

            sub_237EF7960();
            v73 = OUTLINED_FUNCTION_16_58();
            v74(v73, v90);
            OUTLINED_FUNCTION_19_1();
            v75(v110, v92, v94);
            v69 = *v102;
            v19 = v93;
          }

          else
          {
            v19 = v93;
            v10 = v94;
            v66(v110, v93, v94);
            v69 = *v102;
            (*v102)(v103, v94);
          }
        }

        v69(v19, v10);
        v65 = v19;
        v53 = v101;
      }

      v76 = OUTLINED_FUNCTION_38_20();
      OUTLINED_FUNCTION_70_8(v76, v77, v78, v10);
      sub_237EF79C0();
      v79 = *v105;
      (*v105)(v108, v112, v53);
      (*(v109 + 8))(v111, v53);
      OUTLINED_FUNCTION_22_45();
      OUTLINED_FUNCTION_12_60(v80);
      v81 = (*(v107 + 48) + 16 * v60);
      *v81 = v117;
      v81[1] = v62;
      OUTLINED_FUNCTION_45_9();
      v79();
      OUTLINED_FUNCTION_39_21();
      if (v83)
      {
        break;
      }

      *(v107 + 16) = v82;
      v19 = v65;
      if (!v116)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v58 = v51;
    while (1)
    {
      v51 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v51 >= v96)
      {

        sub_237EF7900();
        OUTLINED_FUNCTION_38_0();
        return;
      }

      ++v58;
      if (*(v98 + 8 * v51))
      {
        OUTLINED_FUNCTION_11_66();
        v116 = v59;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_237ED2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v150 = v22;
  OUTLINED_FUNCTION_68_8();
  sub_237EF7940();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v148 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v26);
  v123 = sub_237EF7980();
  v27 = OUTLINED_FUNCTION_6_1(v123);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v28);
  v127 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v124 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_3();
  v128 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  v138 = v35;
  OUTLINED_FUNCTION_12_1();
  v141 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v137 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  v140 = v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_1();
  v139 = v41;
  OUTLINED_FUNCTION_12_1();
  v136 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_2();
  v134 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  v133 = v47;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_5_58();
  v48 = OUTLINED_FUNCTION_46_21();
  v49(v48);
  v50 = sub_237EF7C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BE0);
  OUTLINED_FUNCTION_52_15();
  v51 = 0;
  v52 = v50 + 64;
  v142 = v50;
  OUTLINED_FUNCTION_15_53();
  OUTLINED_FUNCTION_55_12();
  v54 = v53 >> 6;
  v132 = v55;
  if (v56)
  {
    do
    {
      OUTLINED_FUNCTION_25_41();
      v144 = v58;
LABEL_8:
      v62 = v57 | (v51 << 6);
      v63 = (*(v142 + 48) + 16 * v62);
      v64 = v63[1];
      v146 = *v63;
      v65 = *(v43 + 72) * v62;
      (*(v43 + 16))(v133, *(v142 + 56) + v65, v136);
      sub_237EF8260();
      sub_237ED3580();
      v66 = OUTLINED_FUNCTION_41_17();
      v67(v66);
      OUTLINED_FUNCTION_30_44();
      OUTLINED_FUNCTION_12_60(v68);
      v69 = (v132[6] + 16 * v62);
      *v69 = v146;
      v69[1] = v64;
      (*(v43 + 32))(v132[7] + v65, v134, v136);
      OUTLINED_FUNCTION_39_21();
      if (v71)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v132[2] = v70;
    }

    while (v144);
  }

  v59 = v51;
  v60 = v129;
  while (1)
  {
    v51 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v51 >= v54)
    {
      break;
    }

    ++v59;
    if (*(v52 + 8 * v51))
    {
      OUTLINED_FUNCTION_11_66();
      v144 = v61;
      goto LABEL_8;
    }
  }

  sub_237EF7C40();
  v72 = sub_237EF7C00();
  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
    sub_237C638BC(v74, v73, 0);
    OUTLINED_FUNCTION_28();
    v76 = v72 + v75;
    do
    {
      v77 = OUTLINED_FUNCTION_69_9();
      v78(v77);
      sub_237ED225C(v150);
      v79 = OUTLINED_FUNCTION_41_17();
      v80(v79);
      v82 = *(v151 + 16);
      v81 = *(v151 + 24);
      if (v82 >= v81 >> 1)
      {
        v84 = OUTLINED_FUNCTION_20_50(v81);
        sub_237C638BC(v84, v82 + 1, 1);
      }

      OUTLINED_FUNCTION_47_18();
      OUTLINED_FUNCTION_65_8();
      v83();
      v76 += v148;
      --v73;
    }

    while (v73);

    v60 = v129;
  }

  else
  {
  }

  sub_237EF7C10();
  v85 = sub_237EF7BD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8);
  v86 = OUTLINED_FUNCTION_52_15();
  v87 = 0;
  v126 = v85 + 64;
  v143 = v85;
  OUTLINED_FUNCTION_15_53();
  v90 = v89 & v88;
  v92 = (v91 + 63) >> 6;
  v131 = *MEMORY[0x277D25298];
  v125 = *MEMORY[0x277D25290];
  v130 = (v124 + 8);
  v93 = v127;
  v135 = v94;
  if ((v89 & v88) == 0)
  {
LABEL_20:
    v96 = v87;
    while (1)
    {
      v87 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        goto LABEL_39;
      }

      if (v87 >= v92)
      {

        sub_237EF7BE0();
        OUTLINED_FUNCTION_38_0();
        return;
      }

      ++v96;
      if (*(v126 + 8 * v87))
      {
        OUTLINED_FUNCTION_11_66();
        v145 = v97;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v95 = __clz(__rbit64(v90));
    v145 = (v90 - 1) & v90;
LABEL_25:
    v98 = v95 | (v87 << 6);
    v99 = (*(v143 + 48) + 16 * v98);
    v100 = v99[1];
    v147 = *v99;
    OUTLINED_FUNCTION_62_6(*(v137 + 72));
    (v86)(v139);
    OUTLINED_FUNCTION_45_9();
    v86();
    v149 = v100;
    sub_237EF8260();
    v101 = v60;
    sub_237EF79B0();
    v102 = v93;
    if (__swift_getEnumTagSinglePayload(v60, 1, v93) == 1)
    {
      sub_237ED3E20(v60);
    }

    else
    {
      v103 = *(v124 + 16);
      v104 = OUTLINED_FUNCTION_35_25(&a16);
      v103(v104, v60, v93);
      if ((*(v124 + 88))(v139, v93) == v131)
      {
        v103(v138, v60, v93);
        v105 = *v130;
        (*v130)(v139, v93);
        v105(v60, v93);
      }

      else
      {
        OUTLINED_FUNCTION_29_34();
        if (v106)
        {
          OUTLINED_FUNCTION_19_1();
          v102 = v127;
          v107(v128, v127);
          OUTLINED_FUNCTION_19_1();
          v108(v122, v128, v123);
          sub_237EF7970();
          if (__OFADD__(sub_237EF7950(), v150))
          {
            goto LABEL_42;
          }

          sub_237EF7960();
          v109 = OUTLINED_FUNCTION_16_58();
          v110(v109, v123);
          v111 = OUTLINED_FUNCTION_13_56();
          v112(v111, v125, v127);
          v101 = v129;
          (*v130)(v129, v127);
        }

        else
        {
          v101 = v129;
          v102 = v127;
          v103(v138, v129, v127);
          v113 = *v130;
          (*v130)(v128, v127);
          v113(v129, v127);
        }
      }

      v60 = v101;
    }

    v114 = OUTLINED_FUNCTION_38_20();
    v93 = v102;
    OUTLINED_FUNCTION_70_8(v114, v115, v116, v102);
    sub_237EF79C0();
    v117 = *(v137 + 32);
    v118 = OUTLINED_FUNCTION_35_25(&a18);
    (v117)(v118, v140, v141);
    (*(v137 + 8))(v139, v141);
    OUTLINED_FUNCTION_30_44();
    OUTLINED_FUNCTION_12_60(v119);
    v86 = v135;
    v120 = (*(v135 + 48) + 16 * v98);
    *v120 = v147;
    v120[1] = v149;
    OUTLINED_FUNCTION_45_9();
    v117();
    OUTLINED_FUNCTION_39_21();
    if (v71)
    {
      break;
    }

    *(v135 + 16) = v121;
    v90 = v145;
    if (!v145)
    {
      goto LABEL_20;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_237ED3580()
{
  OUTLINED_FUNCTION_37_0();
  v91 = v2;
  OUTLINED_FUNCTION_68_8();
  v3 = sub_237EF7980();
  OUTLINED_FUNCTION_1();
  v108 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v105 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v100 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v107 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v106 = v15;
  OUTLINED_FUNCTION_12_1();
  v112 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v99 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v111 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v110 = v20;
  OUTLINED_FUNCTION_12_1();
  v21 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v88 - v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_1();
  v120 = v32;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B00();
  OUTLINED_FUNCTION_5_58();
  (*(v33 + 16))(v0, v1);
  v34 = *(sub_237EF7AE0() + 16);
  if (!v34)
  {
LABEL_22:

    sub_237EF7AF0();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  OUTLINED_FUNCTION_56_18();
  v89 = v8;
  v90 = v3;
  v88[5] = v0;
  v121 = MEMORY[0x277D84F90];
  v36 = v35;
  sub_237C634D0(0, v34, 0);
  v37 = v121;
  v39 = *(v23 + 16);
  v38 = v23 + 16;
  v119 = v39;
  OUTLINED_FUNCTION_28();
  v88[4] = v36;
  v116 = v40;
  v41 = (v36 + v40);
  v115 = *(v38 + 56);
  v118 = v38 + 72;
  v117 = *MEMORY[0x277D252B0];
  v113 = *MEMORY[0x277D252B8];
  v42 = (v38 + 16);
  v114 = (v38 - 8);
  v104 = v38 + 80;
  v109 = (v99 + 32);
  v103 = (v99 + 16);
  v96 = (v100 + 16);
  v95 = v100 + 88;
  v94 = *MEMORY[0x277D25298];
  v102 = v100 + 8;
  v88[7] = v100 + 96;
  v88[6] = v108 + 32;
  v92 = *MEMORY[0x277D25290];
  v88[3] = v108 + 8;
  v88[2] = v100 + 104;
  v100 = v99 + 8;
  v99 = v38 + 88;
  v101 = v38;
  v93 = v31;
  while (1)
  {
    v43 = v119;
    v119(v31, v41, v21);
    v43(v27, v31, v21);
    v44 = OUTLINED_FUNCTION_34_21();
    v46 = v45(v44);
    if (v46 != v117)
    {
      break;
    }

    v47 = OUTLINED_FUNCTION_34_21();
    v48(v47);
    v49 = OUTLINED_FUNCTION_67_5();
    v50(v49);
LABEL_19:
    v121 = v37;
    v86 = *(v37 + 16);
    v85 = *(v37 + 24);
    if (v86 >= v85 >> 1)
    {
      sub_237C634D0(v85 > 1, v86 + 1, 1);
      v37 = v121;
    }

    *(v37 + 16) = v86 + 1;
    v87 = v115;
    (*v42)(v37 + v116 + v86 * v115, v120, v21);
    v41 += v87;
    if (!--v34)
    {
      goto LABEL_22;
    }
  }

  if (v46 != v113)
  {
    v57 = OUTLINED_FUNCTION_67_5();
    v58(v57);
    v59 = OUTLINED_FUNCTION_34_21();
    v60(v59);
    goto LABEL_19;
  }

  v51 = OUTLINED_FUNCTION_34_21();
  v52(v51);
  v53 = v110;
  v54 = v112;
  v108 = *v109;
  (v108)(v110, v27, v112);
  (*v103)(v111, v53, v54);
  v55 = v107;
  sub_237EF79B0();
  v56 = v105;
  if (__swift_getEnumTagSinglePayload(v55, 1, v105) == 1)
  {
    sub_237ED3E20(v55);
LABEL_18:
    v77 = OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_70_8(v77, v78, v79, v56);
    v80 = v111;
    sub_237EF79C0();
    OUTLINED_FUNCTION_19_1();
    v81 = v112;
    v82(v110, v112);
    (*v114)(v31, v21);
    v83 = v120;
    (v108)(v120, v80, v81);
    OUTLINED_FUNCTION_19_1();
    v84(v83, v113, v21);
    goto LABEL_19;
  }

  v61 = *v96;
  v62 = v55;
  v63 = v97;
  (*v96)(v97, v62, v56);
  OUTLINED_FUNCTION_19_1();
  v64(v63, v56);
  v98 = v102 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  OUTLINED_FUNCTION_29_34();
  if (v66)
  {
    v61(v106, v107, v56);
    v65 = *v102;
    (*v102)(v63, v56);
LABEL_16:
    v76 = v107;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_29_34();
  if (!v66)
  {
    v76 = v107;
    v56 = v105;
    v61(v106, v107, v105);
    v65 = *v102;
    (*v102)(v97, v56);
LABEL_17:
    v65(v76, v56);
    v31 = v93;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_19_1();
  v67 = v97;
  v56 = v105;
  v68(v97, v105);
  OUTLINED_FUNCTION_19_1();
  v69 = v90;
  v70(v89, v67, v90);
  sub_237EF7970();
  v88[1] = v71;
  if (!__OFADD__(sub_237EF7950(), v91))
  {
    v72 = v106;
    sub_237EF7960();
    v73 = OUTLINED_FUNCTION_16_58();
    v74(v73, v69);
    OUTLINED_FUNCTION_19_1();
    v75(v72, v92, v56);
    v65 = *v102;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_237ED3E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_37_27@<X0>(void *a1@<X8>)
{
  v4 = *(v2 - 144);
  v3 = *(v2 - 136);
  *a1 = *(v2 - 184);
  a1[1] = v4;
  return *(v1 + 56) + v3;
}

uint64_t OUTLINED_FUNCTION_52_15()
{

  return sub_237EF9800();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237ED4268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_237ED42A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_237ED4304(uint64_t result, uint64_t a2, int16x4_t a3)
{
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (a2)
    {
      v3 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v4 = vdupq_n_s64(a2 - 1);
      v5 = xmmword_237F07A50;
      v6 = xmmword_237F07A60;
      v7 = (result + 8);
      v8 = vdupq_n_s64(4uLL);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v4, v6));
        if (vuzp1_s16(v9, a3).u8[0])
        {
          *(v7 - 2) = a3.i32[0];
        }

        if (vuzp1_s16(v9, a3).i8[2])
        {
          *(v7 - 1) = a3.i32[0];
        }

        if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
        {
          *v7 = a3.i32[0];
          v7[1] = a3.i32[0];
        }

        v5 = vaddq_s64(v5, v8);
        v6 = vaddq_s64(v6, v8);
        v7 += 4;
        v3 -= 4;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_237ED43A8(uint64_t result, uint64_t a2, double a3)
{
  if (result)
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
      v6 = (result + 8);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v4, v5));
        if (v8.i8[0])
        {
          *(v6 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v6 = a3;
        }

        v5 = vaddq_s64(v5, v7);
        v6 += 2;
        v3 -= 2;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_237ED4410()
{
  v1 = *(v0 + 40);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = *(v0 + 8);
  result = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

double sub_237ED443C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  sub_237ED4498(a1 + 32, v5, &v4);
  return v4;
}

void sub_237ED4498(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v6 = isStackAllocationSafe;
  v8 = *a2;
  v7 = *(a2 + 8);
  v46 = *(a2 + 16);
  v9 = *(a2 + 24);
  v49[0] = isStackAllocationSafe;
  v49[1] = v4 - 1;
  v49[2] = v7;
  v49[3] = v7;
  v44 = v7;
  v50 = 0;
  v48 = 0.0;
  if (v8 < 0)
  {
    goto LABEL_53;
  }

  if (v8)
  {
    v34 = a3;
    v35 = a2;
    v36 = v3;
    v10 = 0;
    v11 = 8 * v5;
    v12 = *(a2 + 32);
    v41 = v12 + 32;
    v43 = *(v12 + 16);
    if ((8 * v5) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 8 * v5;
    }

    v40 = v13;
    v37 = v9 + 32;
    v38 = 8 * v5;
    v15 = v5 < 0xFFFFFFFF80000000 || v44 < 0xFFFFFFFF80000000;
    v39 = v15;
    v42 = (v4 + 0xFFFFFFFFFFFFFFFLL) >> 61;
    while (v10 != v43)
    {
      if (v5 < 0)
      {
        goto LABEL_49;
      }

      if (v42)
      {
        goto LABEL_50;
      }

      v45 = *(v41 + 8 * v10);
      if (v11 <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
        v18 = v8;
        if ((v46 & 1) == 0)
        {
          if ((v10 * v44) >> 64 != (v10 * v44) >> 63)
          {
            goto LABEL_51;
          }

          v18 = 1;
        }

        for (i = 0; (v5 & ~(v5 >> 63)) != i; ++i)
        {
          v17[i] = 0.0;
        }

        if (v5 > 0x7FFFFFFF)
        {
          goto LABEL_45;
        }

        if (v39)
        {
          goto LABEL_46;
        }

        if (v44 > 0x7FFFFFFF)
        {
          goto LABEL_47;
        }

        if (v18 > 0x7FFFFFFF)
        {
          goto LABEL_48;
        }

        v20 = v8;
        v32 = 1;
        v21 = v6;
        cblas_dgemv_NEWLAPACK();
        if (v5 < 1)
        {
          v22 = MEMORY[0x277D84F90];
        }

        else
        {
          v22 = sub_237EF89B0();
          *(v22 + 16) = v5;
        }

        v23 = (v22 + 32);
        v47 = v5;
        vvexp((v22 + 32), v17, &v47);
        *(v22 + 16) = v5;
        v24 = 0.0;
        v25 = 0.0;
        if (v5 >= 1)
        {
          v26 = v5;
          do
          {
            v27 = *v23++;
            v25 = v25 + v27;
            --v26;
          }

          while (v26);
        }

        if (v45 >= 1)
        {
          v24 = v17[v45 - 1];
        }

        v28 = log1p(v25);
        v48 = v48 + v28 - v24;
        v6 = v21;
        v8 = v20;
        v11 = v38;
      }

      else
      {
        v29 = swift_slowAlloc();
        v30 = v36;
        sub_237ED4838(v29, v5, v35, v49, v10, v45, &v48);
        v36 = v30;
        if (v30)
        {

          MEMORY[0x2383E2DF0](v29, -1, -1);
          __break(1u);
          return;
        }

        isStackAllocationSafe = MEMORY[0x2383E2DF0](v29, -1, -1);
      }

      if (++v10 == v8)
      {
        v31 = v48;
        a3 = v34;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v31 = 0.0;
LABEL_43:
  *a3 = v31;
}

void sub_237ED4838(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, long double *a7)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_24:
    __break(1u);
  }

  v10 = a2;
  v12 = *(a3 + 8);
  if ((*(a3 + 16) & 1) == 0 && (a5 * v12) >> 64 != (a5 * v12) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  for (i = 0; (a2 & ~(a2 >> 63)) != i; ++i)
  {
    a1[i] = 0.0;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10)
  {
    v14 = sub_237EF89B0();
    *(v14 + 16) = v10;
    if (!(v10 >> 31))
    {
      v15 = v14;
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_12:
  v16 = (v15 + 32);
  v20 = v10;
  vvexp((v15 + 32), a1, &v20);
  *(v15 + 16) = v10;
  if (v10)
  {
    v17 = 0.0;
    do
    {
      v18 = *v16++;
      v17 = v17 + v18;
      --v10;
    }

    while (v10);
  }

  else
  {

    v17 = 0.0;
  }

  if (a6 < 1)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = a1[a6 - 1];
  }

  *a7 = *a7 + log1p(v17) - v19;
}

void sub_237ED49FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, void *a8, __int128 *a9)
{
  *a8 = 0;
  sub_237ECE91C(a4, a5, a6, 0.0);
  v11 = *(a9 + 5);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = *a9;
  v14 = *(a9 + 1);
  v30 = a1;
  v31 = v13;
  v32 = v14;
  v33 = v14;
  v34 = 0;
  v16 = v14 * v13;
  if ((v14 * v13) >> 64 != (v14 * v13) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = 0x100000 / v16;
  if (0x100000 / v16 <= 0)
  {
    if (v15 <= 1)
    {
      goto LABEL_12;
    }

    v17 = 1;
    goto LABEL_9;
  }

  if (v17 < v15)
  {
LABEL_9:
    v35 = v9;
    v18 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v19 = v15 + v17;
    if (!__OFADD__(v15, v17))
    {
      v20 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        v21 = v18;
        sub_237D81EA8();
        v25[1] = v25;
        MEMORY[0x28223BE20](v20 / v17);
        sub_237EF8FB0();

        return;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_12:
  if (v15 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v15)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = a9[1];
      v26 = *a9;
      v27 = v24;
      v28 = a9[2];
      v29 = *(a9 + 6);
      sub_237ED4BE0();
      v22 = v23;
    }

    while (v15 != v23);
  }
}

void sub_237ED4BE0()
{
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_6_82(*MEMORY[0x277D85DE8]);
  if (v8 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v33 = swift_slowAlloc();
      sub_237ED5264(v33, v5, &v39, v6, v0, v3, v4, v7, v1, v2);
      OUTLINED_FUNCTION_0_43();
      OUTLINED_FUNCTION_18_6();

      JUMPOUT(0x2383E2DF0);
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_89();
  if (!(!v16 & v15))
  {
    goto LABEL_27;
  }

  v6 = v9;
  v5 = *(v9 + 8);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 >> 60)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = v13;
  v2 = v12;
  v1 = v11;
  v7 = v10;
  v3 = *(v14 + 8 * v0 + 32);
  if ((8 * v5) > 1024)
  {
    goto LABEL_28;
  }

LABEL_7:
  v37 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = (&v36 - v18);
  if ((v41 & 1) == 0 && (v0 * v40) >> 64 != (v0 * v40) >> 63)
  {
LABEL_36:
    __break(1u);
  }

  for (i = 0; v5 != i; ++i)
  {
    v19[i] = 0.0;
  }

  OUTLINED_FUNCTION_9_69();
  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (v5)
  {
    v21 = sub_237EF89B0();
    *(v21 + 16) = v5;
    if (v5 >> 31)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = v21;
    v23 = v7;
  }

  else
  {
    v23 = v7;
    v22 = MEMORY[0x277D84F90];
  }

  v24 = (v22 + 32);
  v38 = v5;
  vvexp((v22 + 32), v19, &v38);
  *(v22 + 16) = v5;
  v25 = 0.0;
  for (j = 0.0; v5; --v5)
  {
    v27 = *v24++;
    j = j + v27;
  }

  if (v3 >= 1)
  {
    v25 = v19[v3 - 1];
  }

  *v4 = *v4 + log1p(j) - v25;
  v28 = static DenseVector<>./ infix(_:_:)(v22);

  if (v3 >= 1)
  {
    sub_237E61C54(v3 - 1, v28);
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237E643FC();
      v28 = isUniquelyReferenced_nonNull_native;
    }

    if (v3 <= *(v28 + 16))
    {
      *(v28 + 8 * (v3 - 1) + 32) = v31 + -1.0;
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_25:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *(&v36 - 6) = &v39;
  *(&v36 - 5) = v0;
  *(&v36 - 4) = v23;
  *(&v36 - 3) = v1;
  v35 = v37;
  v32 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80C0, (&v36 - 8), v28, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v32);

  OUTLINED_FUNCTION_18_6();
}

void sub_237ED4F64(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, double *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = *MEMORY[0x277D85DE8];
  v17 = a2[5];
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = a2;
  v12 = a2[1];
  v13 = v12 * v18;
  if ((v12 * v18) >> 64 != (v12 * v18) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 >> 60)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = a5;
  v14 = a4;
  v10 = a3;
  v16 = a1;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v32 = a9;
  v15 = *a2;
  a2 = v37;
  a1 = v11;
  if ((8 * v13) < 1025)
  {
    sub_237E64904(v11, v37);
    isStackAllocationSafe = v9;
    goto LABEL_7;
  }

LABEL_23:
  sub_237E64904(a1, a2);
  v31 = v9;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v29 = swift_slowAlloc();
    sub_237E64904(v11, v37);
    sub_237ED5520(v29, v13, v16, v10, v11, v14, v31, v33, v34, v35, v32);
    MEMORY[0x2383E2DF0](v29, -1, -1);
    goto LABEL_20;
  }

LABEL_7:
  v31 = &v30;
  v20 = MEMORY[0x28223BE20](isStackAllocationSafe);
  v22 = &v30 - v21;
  if (v13)
  {
    bzero(v22, 8 * v12 * v18);
  }

  v36 = 0.0;
  v23 = v16 * v10;
  if ((v16 * v10) >> 64 != (v16 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  v24 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v24 * v10) >> 64 != (v24 * v10) >> 63)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 * v10 >= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = v24 * v10;
  }

  if (v25 < v23)
  {
    goto LABEL_28;
  }

  if (v23 != v25)
  {
    if (v23 < v25)
    {
      do
      {
        v26 = v23 + 1;
        v27 = *(v11 + 16);
        v37[0] = *v11;
        v37[1] = v27;
        v37[2] = *(v11 + 32);
        v38 = *(v11 + 48);
        sub_237ED4BE0();
        v23 = v26;
      }

      while (v25 != v26);
      goto LABEL_19;
    }

LABEL_31:
    __break(1u);
  }

LABEL_19:
  [v9 lock];
  v28 = v34;
  *v33 = v36 + *v33;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v22, v13, 1, v28, v35, v32);
  [v9 unlock];
LABEL_20:
  sub_237E63DF8(v11);
}

uint64_t sub_237ED5264(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, long double *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_27:
    __break(1u);
  }

  v15 = a2;
  v17 = *(a3 + 8);
  if ((*(a3 + 16) & 1) == 0 && (a5 * v17) >> 64 != (a5 * v17) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = 0;
  v35 = a9;
  while ((a2 & ~(a2 >> 63)) != v18)
  {
    a1[v18++] = 0.0;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v33 = a8;
  v34 = a5;
  if (v15)
  {
    v19 = sub_237EF89B0();
    *(v19 + 16) = v15;
    if (!(v15 >> 31))
    {
      v20 = v19;
      goto LABEL_12;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_12:
  v21 = (v20 + 32);
  v36 = v15;
  vvexp((v20 + 32), a1, &v36);
  *(v20 + 16) = v15;
  v22 = 0.0;
  for (i = 0.0; v15; --v15)
  {
    v24 = *v21++;
    i = i + v24;
  }

  if (a6 >= 1)
  {
    v22 = a1[a6 - 1];
  }

  *a7 = *a7 + log1p(i) - v22;
  v25 = static DenseVector<>./ infix(_:_:)(v20);

  if (a6 < 1)
  {
    v29 = v34;
    goto LABEL_22;
  }

  sub_237E61C54(a6 - 1, v25);
  v28 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC();
    v25 = isUniquelyReferenced_nonNull_native;
  }

  if (*(v25 + 16) < a6)
  {
    goto LABEL_25;
  }

  *(v25 + 8 * (a6 - 1) + 32) = v28 + -1.0;
LABEL_22:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v32[2] = a3;
  v32[3] = v29;
  v32[4] = v33;
  v32[5] = v35;
  v32[6] = a10;
  v30 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80F0, v32, v25, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v30);
}

void sub_237ED5520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, id a7, double *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a1)
  {
LABEL_22:
    __break(1u);
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v19 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_17;
  }

  v20 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v20 * a4) >> 64 != (v20 * a4) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v20 * a4 >= *a5)
  {
    v21 = *a5;
  }

  else
  {
    v21 = v20 * a4;
  }

  if (v21 < v19)
  {
    goto LABEL_20;
  }

  if (v19 == v21)
  {
    goto LABEL_15;
  }

  if (v19 >= v21)
  {
    goto LABEL_21;
  }

  do
  {
    v22 = v19 + 1;
    sub_237ED4BE0();
    v19 = v22;
  }

  while (v21 != v22);
LABEL_15:
  [a7 lock];
  *a8 = *a8 + 0.0;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, 1, a9, a10, a11);
  [a7 unlock];
  sub_237E63DF8(a5);
}

void *sub_237ED56E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v5;
  v11[2] = *(v3 + 32);
  v12 = *(v3 + 48);
  v10 = v11;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = &v9;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(a3, v8, v6, MEMORY[0x277D84F78] + 8);
}

void sub_237ED577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, void *a8, __int128 *a9)
{
  *a8 = 0;
  sub_237ECE91C(a4, a5, a6, 0.0);
  sub_237ECF1C4(0.0);
  v11 = *(a9 + 5);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = *a9;
  v14 = *(a9 + 1);
  v32 = a1;
  v33 = v13;
  v34 = v14;
  v35 = v14;
  v36 = 0;
  v16 = v14 * v13;
  if ((v14 * v13) >> 64 != (v14 * v13) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16 * v16;
  if ((v16 * v16) >> 64 != (v16 * v16) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = 0x100000 / v17;
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < v15)
  {
    if (*(a7 + 32))
    {
      if ((*(a7 + 24) * *(a7 + 16)) >> 64 != (*(a7 + 24) * *(a7 + 16)) >> 63)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else if ((*(a7 + 8) * *(a7 + 24)) >> 64 != (*(a7 + 8) * *(a7 + 24)) >> 63)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v27[1] = *a7;
    v23 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v24 = v15 + v19;
    if (!__OFADD__(v15, v19))
    {
      v25 = v24 - 1;
      if (!__OFSUB__(v24, 1))
      {
        v26 = v23;
        sub_237D81EA8();
        v27[0] = v27;
        MEMORY[0x28223BE20](v25 / v19);
        sub_237EF8FB0();

        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_12:
  if (v15 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15)
  {
    v20 = 0;
    do
    {
      v21 = v20 + 1;
      v22 = a9[1];
      v28 = *a9;
      v29 = v22;
      v30 = a9[2];
      v31 = *(a9 + 6);
      sub_237ED59CC();
      v20 = v21;
    }

    while (v15 != v21);
  }
}

void sub_237ED59CC()
{
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_6_82(*MEMORY[0x277D85DE8]);
  if (v9 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();
      sub_237ED6ACC(v37, v6, &v47, v7, v0, v4, v5, v1, v2, v3, v8);
      OUTLINED_FUNCTION_1_121();
      OUTLINED_FUNCTION_18_6();

      JUMPOUT(0x2383E2DF0);
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_89();
  if (!(!v18 & v17))
  {
    goto LABEL_27;
  }

  v7 = v10;
  v6 = *(v10 + 8);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >> 60)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = v15;
  v1 = v14;
  v8 = v13;
  v3 = v12;
  v2 = v11;
  v4 = *(v16 + 8 * v0 + 32);
  if ((8 * v6) > 1024)
  {
    goto LABEL_28;
  }

LABEL_7:
  v45 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = (&v42 - v20);
  v44 = v22;
  if ((v49 & 1) == 0 && (v0 * v48) >> 64 != (v0 * v48) >> 63)
  {
LABEL_36:
    __break(1u);
  }

  for (i = 0; v6 != i; ++i)
  {
    v21[i] = 0.0;
  }

  OUTLINED_FUNCTION_9_69();
  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (v6)
  {
    v24 = sub_237EF89B0();
    *(v24 + 16) = v6;
    if (v6 >> 31)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v26 = (v25 + 32);
  v43 = v2;
  v46 = v6;
  vvexp((v25 + 32), v21, &v46);
  *(v25 + 16) = v6;
  v27 = 0.0;
  for (j = 0.0; v6; --v6)
  {
    v29 = *v26++;
    j = j + v29;
  }

  if (v4 >= 1)
  {
    v27 = v21[v4 - 1];
  }

  *v5 = *v5 + log1p(j) - v27;
  v30 = static DenseVector<>./ infix(_:_:)(v25);

  MEMORY[0x28223BE20](v31);
  v39 = &v47;
  v40 = v0;
  v41 = v1;
  v32 = sub_237C65348();

  v33 = MEMORY[0x277D84F78];
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED8000, (&v42 - 6), v30, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v32);

  if (v4 >= 1)
  {
    sub_237E61C54(v4 - 1, v30);
    v36 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237E643FC();
      v30 = isUniquelyReferenced_nonNull_native;
    }

    if (v4 <= *(v30 + 16))
    {
      *(v30 + 8 * (v4 - 1) + 32) = v36 + -1.0;
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_25:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *(&v42 - 6) = &v47;
  *(&v42 - 5) = v0;
  v39 = v43;
  v40 = v3;
  v41 = v45;
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80F0, (&v42 - 8), v30, MEMORY[0x277D839F8], v33 + 8, v32);

  OUTLINED_FUNCTION_18_6();
}

__n128 sub_237ED5DCC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, double *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_237E64904(a2, v23);
  v20 = a5;
  sub_237ED5E84(a2, a1, a3, a2, a4, v20, a6, a7, v21, a8, a9, a10, a11, a12);
  return result;
}

void sub_237ED5E84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, double *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = *MEMORY[0x277D85DE8];
  v23 = *(a1 + 40);
  v24 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v21 = a1;
  v61 = a6;
  v16 = *(a1 + 8);
  v18 = v16 * v24;
  if ((v16 * v24) >> 64 != (v16 * v24) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v18 * v18;
  if ((v18 * v18) >> 64 != (v18 * v18) >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 >> 60)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v20 = v15;
  v19 = a5;
  v17 = a4;
  v59 = a2;
  v60 = a3;
  v57 = a7;
  v58 = a8;
  v54 = a14;
  v56 = a13;
  v55 = a12;
  v53 = a11;
  v52 = a10;
  if ((8 * v14) < 1025)
  {
    sub_237E64904(a4, v65);
    v25 = v61;
    sub_237E64904(v17, v65);
    isStackAllocationSafe = v25;
    goto LABEL_8;
  }

LABEL_32:
  v49 = a9;
  sub_237E64904(v17, v65);
  v51 = v61;
  sub_237E64904(v17, v65);
  v51 = v51;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v41 = swift_slowAlloc();
    sub_237E64904(v17, v65);
    v42 = v51;
    sub_237ED64A0(v41, v14, v21, v59, v60, v17, v19, v42, v49, v57, v58, v52, v53, v55, v56, v54);
    MEMORY[0x2383E2DF0](v41, -1, -1);
    sub_237E63DF8(v17);

    goto LABEL_37;
  }

LABEL_8:
  v51 = &v48;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v28 = &v48 - v27;
  if (v14)
  {
    bzero(v28, 8 * v16 * v16 * v24 * v24);
  }

  v63[0] = v28;
  v63[1] = v18;
  v63[2] = v18;
  v63[3] = v18;
  v64 = 0;
  if (v18 < 0)
  {
    goto LABEL_44;
  }

  if (v18 >> 60)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v50 = v20;
  if (8 * v18 < 1025)
  {
    sub_237E64904(v17, v65);
    v29 = v61;
    sub_237E64904(v17, v65);
    v30 = v29;
    goto LABEL_14;
  }

  sub_237E64904(v17, v65);
  v43 = v61;
  sub_237E64904(v17, v65);
  v44 = v43;
  v30 = swift_stdlib_isStackAllocationSafe();
  if ((v30 & 1) == 0)
  {
    v45 = swift_slowAlloc();
    sub_237E64904(v17, v65);
    v46 = v44;
    v47 = v50;
    sub_237ED68A8(v45, v18, v63, v59, v60, v17, v19, v46, v57, v58, v52, v53, v55, v56, v54);
    MEMORY[0x2383E2DF0](v45, -1, -1);
    sub_237E63DF8(v17);

    sub_237E63DF8(v17);
    if (!v47)
    {
LABEL_47:
      v39 = v61;
      goto LABEL_27;
    }

    swift_willThrow();
    sub_237E63DF8(v17);

LABEL_37:
    v39 = v61;
    goto LABEL_28;
  }

LABEL_14:
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v48 - v32;
  if (v18)
  {
    bzero(v33, 8 * v16 * v24);
  }

  v62 = 0.0;
  v34 = v59 * v60;
  if ((v59 * v60) >> 64 != (v59 * v60) >> 63)
  {
    __break(1u);
    goto LABEL_39;
  }

  v35 = v59 + 1;
  if (__OFADD__(v59, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v35 * v60) >> 64 != (v35 * v60) >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v35 * v60 >= *v17)
  {
    v36 = *v17;
  }

  else
  {
    v36 = v35 * v60;
  }

  if (v36 < v34)
  {
    goto LABEL_41;
  }

  v60 = &v48;
  if (v34 != v36)
  {
    if (v34 < v36)
    {
      do
      {
        v37 = v34 + 1;
        v38 = *(v17 + 16);
        v65[0] = *v17;
        v65[1] = v38;
        v65[2] = *(v17 + 32);
        v66 = *(v17 + 48);
        sub_237ED59CC();
        v34 = v37;
      }

      while (v36 != v37);
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_26:
  v39 = v61;
  [v61 lock];
  v40 = v58;
  *v57 = v62 + *v57;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v33, v18, 1, v40, v52, v53);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v28, v14, 1, v55, v56, v54);
  [v39 unlock];
  sub_237E63DF8(v17);

  sub_237E63DF8(v17);
LABEL_27:
  sub_237E63DF8(v17);

LABEL_28:
  sub_237E63DF8(v17);

  sub_237E63DF8(v17);
}

void sub_237ED64A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, double *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v51 = a8;
  v57 = *MEMORY[0x277D85DE8];
  v24 = sub_237ED43A8(a1, a2, 0.0);
  if (!a1)
  {
    __break(1u);
  }

  v26 = *(a3 + 40);
  v27 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v42 = a9;
  a3 = *(a3 + 8);
  a9 = a3 * v27;
  if ((a3 * v27) >> 64 != (a3 * v27) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53[0] = a1;
  v53[1] = a3 * v27;
  v53[2] = a3 * v27;
  v53[3] = a3 * v27;
  v54 = 0;
  if (a9 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a9 >> 60)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v49 = a15;
  v50 = v16;
  v47 = a16;
  v48 = a14;
  v46 = a13;
  v45 = a12;
  v44 = a11;
  v43 = a10;
  v25 = v55;
  v24 = a6;
  if (8 * a9 < 1025)
  {
    sub_237E64904(a6, v55);
    isStackAllocationSafe = v51;
    goto LABEL_8;
  }

LABEL_25:
  sub_237E64904(v24, v25);
  v41 = v51;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_8:
    v42 = &v40;
    v29 = MEMORY[0x28223BE20](isStackAllocationSafe);
    v31 = &v40 - v30;
    if (a9)
    {
      bzero(v31, 8 * a3 * v27);
    }

    v52 = 0.0;
    v32 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      v33 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
        {
          if (v33 * a5 >= *a6)
          {
            v34 = *a6;
          }

          else
          {
            v34 = v33 * a5;
          }

          if (v34 >= v32)
          {
            if (v32 != v34)
            {
              if (v32 >= v34)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              do
              {
                v35 = v32 + 1;
                v36 = *(a6 + 16);
                v55[0] = *a6;
                v55[1] = v36;
                v55[2] = *(a6 + 32);
                v56 = *(a6 + 48);
                sub_237ED59CC();
                v32 = v35;
              }

              while (v34 != v35);
            }

            v37 = v51;
            [v51 lock];
            if ((a9 * a9) >> 64 == (a9 * a9) >> 63)
            {
              *v43 = v52 + *v43;
              UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v31, a9, 1, v44, v45, v46);
              UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a9 * a9, 1, v48, v49, v47);
              [v37 unlock];
              sub_237E63DF8(a6);

              sub_237E63DF8(a6);
LABEL_22:

              return;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v38 = swift_slowAlloc();
  sub_237E64904(a6, v55);
  v39 = v41;
  sub_237ED68A8(v38, a9, v53, a4, a5, a6, a7, v39, v43, v44, v45, v46, v48, v49, v47);
  MEMORY[0x2383E2DF0](v38, -1, -1);
  sub_237E63DF8(a6);

  sub_237E63DF8(a6);
  if (!v50)
  {
LABEL_36:
    v37 = v51;
    goto LABEL_22;
  }
}

void sub_237ED68A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, id a8, double *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a1)
  {
LABEL_27:
    __break(1u);
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v23 = a4 * a5;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
    goto LABEL_21;
  }

  v24 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v24 * a5) >> 64 != (v24 * a5) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v24 * a5 >= *a6)
  {
    v25 = *a6;
  }

  else
  {
    v25 = v24 * a5;
  }

  if (v25 < v23)
  {
    goto LABEL_24;
  }

  if (v23 == v25)
  {
    goto LABEL_15;
  }

  if (v23 >= v25)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  do
  {
    v26 = v23 + 1;
    sub_237ED59CC();
    v23 = v26;
  }

  while (v25 != v26);
LABEL_15:
  [a8 lock];
  if ((*(a3 + 32) & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(a3 + 16);
  v27 = *(a3 + 24);
  v29 = v27 * v28;
  if ((v27 * v28) >> 64 != (v27 * v28) >> 63)
  {
    __break(1u);
LABEL_18:
    v30 = *(a3 + 8);
    v31 = *(a3 + 24);
    v29 = v30 * v31;
    if ((v30 * v31) >> 64 == (v30 * v31) >> 63)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_19:
  v32 = *a3;
  *a9 = *a9 + 0.0;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, 1, a10, a11, a12);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v32, v29, 1, a13, a14, a15);
  [a8 unlock];
  sub_237E63DF8(a6);
}

uint64_t sub_237ED6ACC(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, long double *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_27:
    __break(1u);
  }

  v16 = a2;
  v18 = *(a3 + 8);
  if ((*(a3 + 16) & 1) == 0 && (a5 * v18) >> 64 != (a5 * v18) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = 0;
  v42 = a9;
  while ((a2 & ~(a2 >> 63)) != v19)
  {
    a1[v19++] = 0.0;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v40 = a11;
  v41 = a10;
  if (v16)
  {
    v20 = sub_237EF89B0();
    *(v20 + 16) = v16;
    if (!(v16 >> 31))
    {
      v21 = v20;
      goto LABEL_12;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_12:
  v22 = (v21 + 32);
  v43 = v16;
  vvexp((v21 + 32), a1, &v43);
  *(v21 + 16) = v16;
  v23 = 0.0;
  for (i = 0.0; v16; --v16)
  {
    v25 = *v22++;
    i = i + v25;
  }

  if (a6 >= 1)
  {
    v23 = a1[a6 - 1];
  }

  *a7 = *a7 + log1p(i) - v23;
  v26 = static DenseVector<>./ infix(_:_:)(v21);

  MEMORY[0x28223BE20](v27);
  v37 = a3;
  v38 = a5;
  v39 = a8;
  v28 = sub_237C65348();

  v29 = MEMORY[0x277D84F78];
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80D8, v36, v26, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v28);

  if (a6 < 1)
  {
    v33 = v41;
    goto LABEL_22;
  }

  sub_237E61C54(a6 - 1, v26);
  v32 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC();
    v26 = isUniquelyReferenced_nonNull_native;
  }

  if (*(v26 + 16) < a6)
  {
    goto LABEL_25;
  }

  *(v26 + 8 * (a6 - 1) + 32) = v32 + -1.0;
LABEL_22:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v36[0] = a3;
  v36[1] = a5;
  v37 = v42;
  v38 = v33;
  v39 = v40;
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80F0, &v35, v26, MEMORY[0x277D839F8], v29 + 8, v28);
}

void sub_237ED6E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(v5 + 16);
  v37[0] = *v5;
  v37[1] = v9;
  v37[2] = *(v5 + 32);
  v38 = *(v5 + 48);
  v10 = a3 * a3;
  if ((a3 * a3) >> 64 == (a3 * a3) >> 63)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v10 >> 60))
    {
      v6 = a5;
      v8 = a3;
      v7 = a1;
      if ((8 * v10) <= 1024)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
LABEL_12:
  if (!swift_stdlib_isStackAllocationSafe())
  {
    v24 = swift_slowAlloc();
    sub_237ED7170(v24, v10, v37, a2, v8, a4, v7, v6, v25);
    OUTLINED_FUNCTION_1_121();

    JUMPOUT(0x2383E2DF0);
  }

LABEL_5:
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *(&v37[0] + 1);
  v17 = v16 * v16;
  if ((v16 * v16) >> 64 == (v16 * v16) >> 63)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!(v17 >> 60))
      {
        if ((8 * v17) < 1025)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

LABEL_22:
      __break(1u);
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
LABEL_17:
  v31 = v12;
  v32 = v13;
  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
    v26 = v31;
    v27 = v32;
    v28 = swift_slowAlloc();
    sub_237ED736C(v28, v17, v15, v10, v26, v8, v27, v37, v7, v6);
    v29 = OUTLINED_FUNCTION_1_121();
    MEMORY[0x2383E2DF0](v29);
    return;
  }

LABEL_9:
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_122();
  v33[0] = v15;
  v33[1] = v8;
  v33[2] = v8;
  v33[3] = v8;
  v34 = 1;
  v35[0] = v19;
  v35[1] = v16;
  v35[2] = v16;
  v35[3] = v16;
  v36 = 1;
  sub_237ED73F4(v7, v20, v8, v21, v33, v35, v6);
}

void sub_237ED70CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(*(a4 + 40), 1))
  {
    __break(1u);
  }

  else if ((*(a4 + 16) & 1) != 0 || (a5 * *(a4 + 8)) >> 64 == (a5 * *(a4 + 8)) >> 63)
  {
    sub_237ED76A8();
    return;
  }

  __break(1u);
}

void sub_237ED7170(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v17 = *(a3 + 8);
  v18 = v17 * v17;
  if ((v17 * v17) >> 64 == (v17 * v17) >> 63)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v18 >> 60))
    {
      v14 = a8;
      v15 = a7;
      v9 = a6;
      v12 = a5;
      v10 = a3;
      v16 = isStackAllocationSafe;
      v13 = v11;
      if ((8 * v18) <= 1024)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
LABEL_9:
  v25 = a2;
  v26 = a9;
  v27 = a4;
  v28 = v9;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v17 = swift_slowAlloc();
    sub_237ED736C(v17, v18, v16, v25, v27, v12, v28, v10, v15, v14);
    v19 = v13;
    if (!v13)
    {
      MEMORY[0x2383E2DF0](v17, -1, -1);
      return;
    }

    goto LABEL_15;
  }

LABEL_5:
  v19 = &v24;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v23 = &v24 - v22;
  if (!v16)
  {
    __break(1u);
LABEL_15:

    MEMORY[0x2383E2DF0](v17, -1, -1);
    __break(1u);
    return;
  }

  v29[0] = v16;
  v29[1] = v12;
  v29[2] = v12;
  v29[3] = v12;
  v30 = 1;
  v31[0] = v23;
  v31[1] = v17;
  v31[2] = v17;
  v31[3] = v17;
  v32 = 1;
  sub_237ED73F4(v15, v20, v12, v21, v29, v31, v14);
}

void sub_237ED736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a3)
  {
    v11[0] = a3;
    v11[1] = a6;
    v11[2] = a6;
    v11[3] = a6;
    v12 = 1;
    if (a1)
    {
      v10 = *(a8 + 8);
      v13[0] = a1;
      v13[1] = v10;
      v13[2] = v10;
      v13[3] = v10;
      v14 = 1;
      sub_237ED73F4(a9, a5, a6, a7, v11, v13, a10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_237ED73F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v15 = *(v7 + 8);
  v43 = *(v7 + 16);
  v16 = *(v7 + 40);
  sub_237ECF1C4(0.0);
  sub_237ED76A8();
  if (a3 < 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = a7;
  if (a3)
  {
    v17 = 0;
    while ((v17 * a4) >> 64 == (v17 * a4) >> 63)
    {
      v18 = v17 + 1;
      v19 = *(a2 + 8 * v17 * a4);
      v20 = sub_237ED7B70(v44, v17, v17);
      *v21 = v19 + *v21;
      v20(v44, 0);
      v17 = v18;
      if (a3 == v18)
      {
        goto LABEL_6;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_6:
  sub_237ECF1C4(0.0);
  if (v43)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16;
    if ((a1 * v15) >> 64 != (a1 * v15) >> 63)
    {
LABEL_42:
      __break(1u);
      return;
    }
  }

  sub_237ED76A8();
  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    goto LABEL_39;
  }

  if (v23 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v22 != 1)
  {
    if (v15 < 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = *a5;
    v27 = a5[1];
    v29 = 8 * v15;
    while (1)
    {
      v30 = __OFADD__(v26++, 1);
      if (v30)
      {
        goto LABEL_36;
      }

      if (v15)
      {
        v31 = 0;
        v32 = v42[1];
        v34 = *a6;
        v33 = a6[1];
        v35 = *v42 + v32 * v24;
        while (2)
        {
          if (__OFADD__(v25, v31))
          {
            goto LABEL_33;
          }

          if (((v25 + v31) * v32) >> 64 != ((v25 + v31) * v32) >> 63)
          {
            goto LABEL_34;
          }

          if ((v31 * v33) >> 64 != (v31 * v33) >> 63)
          {
            goto LABEL_35;
          }

          v36 = 0;
          v37 = 0;
          ++v31;
          v38 = v35;
          do
          {
            v39 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v40 = 0;
            v41 = *(v28 + 8 * v37);
            do
            {
              *(v38 + 8 * v40) = *(v38 + 8 * v40) + v41 * *(v34 + 8 * v40);
              ++v40;
            }

            while (v15 != v40);
            v30 = __OFADD__(v36, v15);
            v36 += v15;
            if (v30)
            {
              goto LABEL_31;
            }

            v38 += v29;
            ++v37;
          }

          while (v39 != v23);
          v35 += 8 * v32;
          v34 += 8 * v33;
          if (v31 != v15)
          {
            continue;
          }

          break;
        }
      }

      v30 = __OFADD__(v25, v15);
      v25 += v15;
      if (v30)
      {
        goto LABEL_37;
      }

      v28 += 8 * v27;
      v24 += v29;
      if (v26 == v23)
      {
        return;
      }
    }
  }
}

void sub_237ED76A8()
{
  OUTLINED_FUNCTION_19_5();
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v2;
  v11 = v1;
  v53 = *MEMORY[0x277D85DE8];
  if (v3 != 1)
  {
    v12 = v3;
    if (v6 == 1)
    {
      LODWORD(v7) = *(v0 + 32);
      if (*(v0 + 32))
      {
        v15 = 1;
      }

      else
      {
        v15 = v5;
      }

      v48 = v4;
      v49 = 1;
      v50 = v5;
      v51 = v15;
      v52 = v7;
      if ((v2 & 0x8000000000000000) == 0)
      {
        if (!(v2 >> 60))
        {
          if ((8 * v2) <= 1024)
          {
            goto LABEL_17;
          }

          goto LABEL_68;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v27 = v2 + v5;
      if (__OFADD__(v2, v5))
      {
        goto LABEL_67;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v27 >> 60)
      {
        goto LABEL_84;
      }

      if ((8 * v27) > 1024 && !swift_stdlib_isStackAllocationSafe())
      {
        v40 = swift_slowAlloc();
        sub_237ED7F00(v40, v10 + v8, v11, v10, v12, v0, v9, v8, v7);
        goto LABEL_74;
      }

      OUTLINED_FUNCTION_9();
      MEMORY[0x28223BE20](v28);
      OUTLINED_FUNCTION_2_122();
      v30 = *(v0 + 32);
      if (v30)
      {
        v31 = 1;
      }

      else
      {
        v31 = v8;
      }

      if (*(v0 + 32))
      {
        v32 = v10;
      }

      else
      {
        v32 = 1;
      }

      v43 = v29;
      v44 = v10;
      v45 = 1;
      v46 = v32;
      v47 = v30;
      v48 = v29 + 8 * v10;
      v49 = 1;
      v50 = v8;
      v51 = v31;
      v52 = v30;
      if (v10 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v10)
        {
          v33 = 0;
          do
          {
            if ((v33 * v12) >> 64 != (v33 * v12) >> 63)
            {
              goto LABEL_64;
            }

            OUTLINED_FUNCTION_7_83(v29, *&v11[v33 * v12]);
          }

          while (v10 != v34);
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          if (v8)
          {
            for (i = 0; i != v8; ++i)
            {
              v36 = v10 + i;
              if (__OFADD__(v10, i))
              {
                goto LABEL_65;
              }

              v37 = i * v7;
              if ((i * v7) >> 64 != (i * v7) >> 63)
              {
                goto LABEL_66;
              }

              *(v29 + 8 * v36) = *(v9 + 8 * v37);
            }
          }

          goto LABEL_60;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v12 = *(v0 + 32);
  if (v6 != 1)
  {
    if (*(v0 + 32))
    {
      v21 = v2;
    }

    else
    {
      v21 = 1;
    }

    v43 = v1;
    v44 = v2;
    v45 = 1;
    v46 = v21;
    v47 = v12;
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (!(v5 >> 60))
      {
        v10 = 8 * v5;
        if ((8 * v5) > 1024 && !swift_stdlib_isStackAllocationSafe())
        {
          v39 = swift_slowAlloc();
          sub_237ED7E5C(v39, v8, v0, v9, v8, v7, &v43);
          goto LABEL_74;
        }

        v11 = &v42;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v22);
        OUTLINED_FUNCTION_2_122();
        if (v12)
        {
          v24 = 1;
        }

        else
        {
          v24 = v8;
        }

        v48 = v23;
        v49 = 1;
        v50 = v8;
        v51 = v24;
        v52 = v12;
        if (v8)
        {
          v25 = 0;
          while ((v25 * v7) >> 64 == (v25 * v7) >> 63)
          {
            OUTLINED_FUNCTION_7_83(v23, *(v9 + 8 * v25 * v7));
            if (v8 == v26)
            {
              goto LABEL_60;
            }
          }

          while (1)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            if (!swift_stdlib_isStackAllocationSafe())
            {
              break;
            }

LABEL_17:
            OUTLINED_FUNCTION_9();
            MEMORY[0x28223BE20](v16);
            OUTLINED_FUNCTION_2_122();
            if (v7)
            {
              v18 = v10;
            }

            else
            {
              v18 = 1;
            }

            v43 = v17;
            v44 = v10;
            v45 = 1;
            v46 = v18;
            v47 = v7;
            if (!v10)
            {
              goto LABEL_60;
            }

            v19 = 0;
            while ((v19 * v12) >> 64 == (v19 * v12) >> 63)
            {
              OUTLINED_FUNCTION_7_83(v17, *&v11[v19 * v12]);
              if (v10 == v20)
              {
                goto LABEL_60;
              }
            }

            __break(1u);
          }

          v38 = swift_slowAlloc();
          sub_237ED7DB8(v38, v10, v0, v11, v10, v12, &v48);
LABEL_74:
          OUTLINED_FUNCTION_0_43();
          OUTLINED_FUNCTION_18_6();

          JUMPOUT(0x2383E2DF0);
        }

LABEL_60:
        OUTLINED_FUNCTION_0_104();
        goto LABEL_61;
      }

      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (*(v0 + 32))
  {
    v13 = 1;
  }

  else
  {
    v13 = v5;
  }

  if (*(v0 + 32))
  {
    v14 = v2;
  }

  else
  {
    v14 = 1;
  }

  v43 = v1;
  v44 = v2;
  v45 = 1;
  v46 = v14;
  v47 = v12;
  v48 = v4;
  v49 = 1;
  v50 = v5;
  v51 = v13;
  v52 = v12;
  OUTLINED_FUNCTION_0_104();
LABEL_61:
  OUTLINED_FUNCTION_18_6();
}

uint64_t (*sub_237ED7B70(uint64_t a1, uint64_t a2, uint64_t a3))(void, void)
{
  v4 = *(v3 + 24);
  if (*(v3 + 32))
  {
    v5 = a3 * v4;
    if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = v5 + a2;
    if (!__OFADD__(v5, a2))
    {
      return nullsub_1;
    }

    __break(1u);
  }

  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__OFADD__(a2 * v4, a3))
  {
    return nullsub_1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_237ED7BE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 40);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a4 + 8);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7)
  {
    if (v6 < 0xFFFFFFFF80000000)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v6 > 0x7FFFFFFF)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v7 >> 31)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = a5 + 32;
    v10 = *(a5 + 16);
    v11 = *(a4 + 8);
    while (v10)
    {
      v9 += 8;
      result = cblas_dscal_NEWLAPACK();
      --v10;
      v8 += 8;
      if (!--v11)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_237ED7DB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = *(a3 + 32);
    if (v7)
    {
      v8 = a2;
    }

    else
    {
      v8 = 1;
    }

    v10[0] = result;
    v10[1] = a2;
    v10[2] = 1;
    v10[3] = v8;
    v11 = v7;
    if ((a5 & 0x8000000000000000) == 0)
    {
      if (!a5)
      {
        return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v10, 0, a7, 0);
      }

      v9 = 0;
      while ((v9 * a6) >> 64 == (v9 * a6) >> 63)
      {
        *(result + 8 * v9) = *(a4 + 8 * v9 * a6);
        if (a5 == ++v9)
        {
          return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v10, 0, a7, 0);
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ED7E5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = *(a3 + 32);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = a2;
    }

    v10[0] = result;
    v10[1] = 1;
    v10[2] = a2;
    v10[3] = v8;
    v11 = v7;
    if ((a5 & 0x8000000000000000) == 0)
    {
      if (!a5)
      {
        return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(a7, 0, v10, 0);
      }

      v9 = 0;
      while ((v9 * a6) >> 64 == (v9 * a6) >> 63)
      {
        *(result + 8 * v9) = *(a4 + 8 * v9 * a6);
        if (a5 == ++v9)
        {
          return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(a7, 0, v10, 0);
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ED7F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v9 = *(a6 + 32);
  if (*(a6 + 32))
  {
    v10 = a4;
  }

  else
  {
    v10 = 1;
  }

  v16[0] = result;
  v16[1] = a4;
  v16[2] = 1;
  v16[3] = v10;
  v17 = v9;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = a8;
  }

  v18[0] = result + 8 * a4;
  v18[1] = 1;
  v18[2] = a8;
  v18[3] = v11;
  v19 = v9;
  if (a4 < 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    v12 = 0;
    while ((v12 * a5) >> 64 == (v12 * a5) >> 63)
    {
      *(result + 8 * v12) = *(a3 + 8 * v12 * a5);
      if (a4 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  if ((a8 & 0x8000000000000000) == 0)
  {
    if (!a8)
    {
      return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v16, 0, v18, 0);
    }

    v13 = 0;
    while (1)
    {
      v14 = a4 + v13;
      if (__OFADD__(a4, v13))
      {
        goto LABEL_21;
      }

      v15 = v13 * a9;
      if ((v13 * a9) >> 64 != (v13 * a9) >> 63)
      {
        goto LABEL_22;
      }

      ++v13;
      *(result + 8 * v14) = *(a7 + 8 * v15);
      if (a8 == v13)
      {
        return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v16, 0, v18, 0);
      }
    }
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v0 - 184, 0, v0 - 144, 0);
}

__n128 OUTLINED_FUNCTION_6_82@<Q0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = a1;
  v3 = *(v1 + 32);
  *(v2 - 144) = *(v1 + 16);
  *(v2 - 128) = v3;
  result = *v1;
  *(v2 - 160) = *v1;
  *(v2 - 112) = *(v1 + 48);
  return result;
}

uint64_t sub_237ED81A4(uint64_t a1)
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

double sub_237ED81C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_237CBA478(a1 + 32 * v2, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

char *sub_237ED8200(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_237C85538(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v4 = OUTLINED_FUNCTION_31_0();
    return MEMORY[0x2383E1490](v4);
  }

  result = sub_237EF9710();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_237ED82C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_4();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    v9 = a3;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = a2(0);
    v9 = a3;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

uint64_t sub_237ED8388(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    return *(v1 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237ED83C0()
{
  _s5StateOMa();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_31_0();

  return v1(v0);
}

uint64_t sub_237ED8420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v7 = *(a4 + 16);
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 + 24);
  v8 = sub_237EF7E90();
  v5[11] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v5[12] = v9;
  v5[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[14] = v10;
  *v10 = v5;
  v10[1] = sub_237ED85DC;

  return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
}

uint64_t sub_237ED85DC()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237ED870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v44 = *MEMORY[0x277D85DE8];
  v13 = sub_237EF7E20();
  v14 = 1;
  isStackAllocationSafe = sub_237C6C5F4(1, v13);
  v19 = (v18 >> 1) - v17;
  if (v18 >> 1 != v17)
  {
    if ((v18 >> 1) > v17)
    {
      v20 = (v16 + 8 * v17);
      v21 = 1;
      while (1)
      {
        v22 = *v20++;
        v14 = v21 * v22;
        if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
        {
          break;
        }

        v21 = v14;
        if (!--v19)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_6:
  if (v14 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v12[7];
  v24 = *(v23 + 72);
  if ((v14 * v24) >> 64 != (v14 * v24) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = *(v23 + 80);
  if (((v25 + 1) & v25) != 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (v25 > 0xF)
  {
LABEL_10:
    v43 = v12[15];
    v26 = swift_slowAlloc();
    sub_237EDB0C0();
    if (v43)
    {

      OUTLINED_FUNCTION_45();

      JUMPOUT(0x2383E2DF0);
    }

    MEMORY[0x2383E2DF0](v26, -1, -1);
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  if (v14 * v24 > 1024)
  {
    goto LABEL_29;
  }

LABEL_15:
  v28 = v12[15];
  MEMORY[0x28223BE20](isStackAllocationSafe);
  sub_237EDB0C0();
  if (!v28)
  {
    v31 = v12[9];
    v32 = v12[6];
    v33 = v12[2];
    v34 = *(v12[7] + 32);
    v34(v31, v12[8], v32);
    swift_unknownObjectRelease();
    v34(v33, v31, v32);
LABEL_21:
    (*(v12[12] + 8))(v12[13], v12[11]);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, a10, a11, a12);
    return;
  }

  swift_willThrow();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_237ED8A68()
{

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237ED8B40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = _s5StateOMa();

  return a2(v2);
}

uint64_t MultivariateLinearRegressor.Model.init(weight:bias:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF7E90();
  v7 = sub_237EF90F0();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  (*(*(v7 - 8) + 32))(a3 + v8, a2, v7);
  _s5StateOMa();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237ED8CF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = _s5StateOMa();

  return a2(v2);
}

uint64_t MultivariateLinearRegressor.Model.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[9] = *(v2 + 16);
  v7 = _s5StateOMa();
  v1[10] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[11] = v8;
  v1[12] = swift_task_alloc();
  v9 = sub_237EF7E90();
  v1[13] = v9;
  v10 = sub_237EF90F0();
  v1[14] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v1[15] = v11;
  v1[16] = swift_task_alloc();
  v1[17] = *(v9 - 8);
  v1[18] = OUTLINED_FUNCTION_40_11();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v1[21] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_40_11();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_237ED8F64()
{
  v1 = sub_237EF7E20();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8 * v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[7];

  v5 = MultivariateLinearRegressor.Model.inputSize.getter(v4);
  if (v2)
  {
    v6 = v3 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v0[7];
    v8 = sub_237EF7E20();
    sub_237EF9330();

    v0[2] = MultivariateLinearRegressor.Model.inputSize.getter(v7);
    v9 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v9);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237C84150();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0xD000000000000025;
    *(v10 + 16) = 0x8000000237F01DF0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 6;
    swift_willThrow();
    OUTLINED_FUNCTION_0_105();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X1, X16 }
  }

  if (swift_dynamicCastMetatype())
  {
    (*(v0[17] + 16))(v0[20], v0[4], v0[13]);
    swift_dynamicCast();
    v13 = swift_task_alloc();
    v0[28] = v13;
    *v13 = v0;
    v13[1] = sub_237ED93F8;
LABEL_18:
    OUTLINED_FUNCTION_49_0();

    return sub_237ED9CE8();
  }

  (*(v0[11] + 16))(v0[12], v0[8], v0[10]);
  OUTLINED_FUNCTION_31_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[13];
    v28 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v26 + 16))(v25, v28, v27);
    v0[32] = sub_237C651A0();
    v0[33] = swift_getWitnessTable();
    sub_237EF7F30();
    v29 = swift_task_alloc();
    v0[34] = v29;
    *v29 = v0;
    v29[1] = sub_237ED979C;
    goto LABEL_18;
  }

  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  v21 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v16 + 32))(v14, v20, v19);
  (*(v18 + 32))(v15, v20 + v21, v17);
  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_237ED95D0;
  OUTLINED_FUNCTION_49_0();

  return sub_237ED9FC0();
}

uint64_t sub_237ED93F8()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v2[29] = v0;

  if (!v0)
  {
    (*(v2[22] + 8))(v2[26], v2[21]);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237ED9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  swift_dynamicCast();
  OUTLINED_FUNCTION_2_123();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_237ED95D0()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 248) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237ED96D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_14_69();
  v13(v12);
  v14 = OUTLINED_FUNCTION_31_0();
  v15(v14);
  OUTLINED_FUNCTION_2_123();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_237ED979C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  *v4 = *v1;
  v3[35] = v0;

  v5 = v2[24];
  v6 = v2[22];
  v7 = v2[21];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (!v0)
  {
    v3[36] = v9;
    v3[37] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237ED9910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[36];
  v14 = v12[25];
  v15 = v12[21];
  (*(v12[22] + 16))(v12[23], v14, v15);
  sub_237EF7F30();
  v13(v14, v15);
  OUTLINED_FUNCTION_2_123();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_237ED9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  (*(v12[22] + 8))(v12[26], v12[21]);
  v22 = v12[29];
  OUTLINED_FUNCTION_0_105();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_237ED9AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = OUTLINED_FUNCTION_14_69();
  v14(v13);
  v15 = OUTLINED_FUNCTION_31_0();
  v16(v15);
  v26 = *(v12 + 248);
  OUTLINED_FUNCTION_0_105();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_237ED9BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v22 = *(v12 + 280);
  OUTLINED_FUNCTION_0_105();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_237ED9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_16_59();
  v9 = _s5StateOMa();
  return a5(a1, a2, v9, a4);
}

uint64_t sub_237ED9CE8()
{
  OUTLINED_FUNCTION_2_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v1[11] = v5;
  OUTLINED_FUNCTION_6_1(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_40_11();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237ED9DAC()
{
  v1 = sub_237EF7E20();
  v2 = sub_237C6C5F4(1, v1);
  if (v5 >> 1 == v4)
  {
LABEL_6:
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[11];
    v12 = v0[9];
    v11 = v0[10];
    v25 = v0[12];
    v23 = v2;
    v24 = v3;
    v21 = v4;
    v22 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237F04760;
    *(v13 + 32) = 1;
    v14 = OUTLINED_FUNCTION_19_52();
    v15 = MultivariateLinearRegressor.Model.inputSize.getter(v14);
    OUTLINED_FUNCTION_15_54(v15);

    v16 = swift_task_alloc();
    *(v16 + 16) = *(v12 + 16);
    *(v16 + 32) = *(v12 + 32);
    *(v16 + 40) = 1;
    *(v16 + 48) = v11;
    OUTLINED_FUNCTION_11_67();

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    v18 = OUTLINED_FUNCTION_19_52();
    *(inited + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v18);
    sub_237EDA614(v23, v24, v21, v22, inited);
    swift_setDeallocating();
    sub_237EF7E60();

    swift_unknownObjectRelease();
    v19 = *(v25 + 8);
    v19(v9, v10);
    v19(v8, v10);

    OUTLINED_FUNCTION_10_3();

    v20();
  }

  else
  {
    if ((v5 >> 1) > v4)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_60();
        if (!v7)
        {
          break;
        }

        if (v6 == 1)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237ED9FC0()
{
  OUTLINED_FUNCTION_2_0();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *(v2 + 16);
  v1[14] = *(v2 + 24);
  v7 = sub_237EF7E90();
  v1[15] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_40_11();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237EDA08C()
{
  v1 = sub_237EF7E20();
  v2 = sub_237C6C5F4(1, v1);
  if (v5 >> 1 == v4)
  {
LABEL_6:
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v27 = *(v0 + 128);
    v25 = v2;
    v26 = v3;
    v23 = v4;
    v24 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237F04760;
    *(v13 + 32) = 1;
    v21 = *(v0 + 104);
    v22 = *(v0 + 72);
    v14 = OUTLINED_FUNCTION_19_52();
    v15 = MultivariateLinearRegressor.Model.inputSize.getter(v14);
    OUTLINED_FUNCTION_15_54(v15);

    v16 = swift_task_alloc();
    *(v16 + 16) = v21;
    *(v16 + 32) = *(v12 + 32);
    *(v16 + 40) = 1;
    *(v16 + 48) = v11;
    *(v16 + 56) = v22;
    OUTLINED_FUNCTION_11_67();

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    v18 = OUTLINED_FUNCTION_19_52();
    *(inited + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v18);
    sub_237EDA614(v25, v26, v23, v24, inited);
    swift_setDeallocating();
    sub_237EF7E60();

    swift_unknownObjectRelease();
    v19 = *(v27 + 8);
    v19(v9, v10);
    v19(v8, v10);

    OUTLINED_FUNCTION_10_3();

    v20();
  }

  else
  {
    if ((v5 >> 1) > v4)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_60();
        if (!v7)
        {
          break;
        }

        if (v6 == 1)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237EDA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_237F04760;
  *(v6 + 32) = a5;
  v7 = type metadata accessor for MultivariateLinearRegressor.Model();
  *(v6 + 40) = MultivariateLinearRegressor.Model.outputSize.getter(v7);
  return sub_237EF7DE0();
}

uint64_t sub_237EDA3B4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v42 = a8;
  v45 = a2;
  v14 = a1[1];
  v46 = *a1;
  v47 = a4;
  result = sub_237ED4304(v46, v14, 0);
  v43 = a3;
  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v40 = a9;
    v41 = a10;
    v39 = a6;
    while (v43 != v16)
    {
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (!v47)
      {
        goto LABEL_23;
      }

      v17 = a6[2];
      if (!v17)
      {
        goto LABEL_16;
      }

      if ((v16 * a6[4]) >> 64 != (v16 * a6[4]) >> 63)
      {
        goto LABEL_17;
      }

      v18 = type metadata accessor for MultivariateLinearRegressor.Model();
      result = MultivariateLinearRegressor.Model.inputSize.getter(v18);
      if (v17 == 1)
      {
        goto LABEL_18;
      }

      if (!v46)
      {
        goto LABEL_24;
      }

      v19 = v45[2];
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = v16;
      v21 = v11;
      v22 = v45[4];
      v23 = v20 * v22;
      v44 = v20;
      if ((v20 * v22) >> 64 != (v20 * v22) >> 63)
      {
        goto LABEL_20;
      }

      v24 = result;
      v25 = a6[5];
      result = MultivariateLinearRegressor.Model.outputSize.getter(v18);
      if (v19 == 1)
      {
        goto LABEL_21;
      }

      v26 = result;
      v27 = v45[5];
      v28 = v46 + 4 * v23;
      v29 = MEMORY[0x28223BE20](result);
      v34[0] = v28;
      v34[1] = v29;
      v35 = v27;
      v36 = v30;
      v37 = v24;
      v38 = v25;
      v31 = MEMORY[0x277D84F78];
      v32 = sub_237ED9C7C(sub_237EDB804, &v33, v18, MEMORY[0x277D84F78] + 8, sub_237DB11B4);
      MEMORY[0x28223BE20](v32);
      v35 = v28;
      v36 = v26;
      v37 = v27;
      result = sub_237ED9C7C(sub_237EDB840, v34, v18, v31 + 8, sub_237DB183C);
      v11 = v21;
      v16 = v44 + 1;
      a6 = v39;
    }
  }

  return result;
}

void sub_237EDA614(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (!__OFADD__(*(a5 + 16), (a4 >> 1) - a3))
  {
    sub_237D0B340();
    v8 = swift_unknownObjectRetain();
    sub_237E48298(v8, a2, a3, a4);
    v9 = sub_237EF8260();
    sub_237E481CC(v9);
    return;
  }

  __break(1u);
}

uint64_t sub_237EDA6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_237F04760;
  *(v6 + 32) = a5;
  v7 = type metadata accessor for MultivariateLinearRegressor.Model();
  *(v6 + 40) = MultivariateLinearRegressor.Model.outputSize.getter(v7);
  return sub_237EF7DE0();
}

uint64_t sub_237EDA7CC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a8;
  v74 = a2;
  v75 = a7;
  v68 = a6;
  v65 = a4;
  v66 = a5;
  v70 = a3;
  v78 = a11;
  v67 = sub_237EF7E90();
  v61 = sub_237EF90F0();
  v80 = *(v61 - 8);
  v13 = MEMORY[0x28223BE20](v61);
  v60 = v57 - v14;
  v69 = *(a10 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = *a1;
  v18 = a1[1];
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v63 = v18;
  v64 = v19;
  sub_237EF9120();
  v20 = *(v69 + 8);
  v77 = a10;
  result = v20(v16, a10);
  if (v70 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v59 = a9;
    v58 = (v80 + 16);
    v57[1] = v67 - 8;
    v57[0] = v80 + 8;
    v23 = v77;
    v24 = v79;
    v25 = v68;
    while (v70 != v22)
    {
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      result = sub_237EF8530();
      if (!result)
      {
        goto LABEL_26;
      }

      v26 = v25[2];
      if (!v26)
      {
        goto LABEL_19;
      }

      v27 = v25[4];
      v28 = v22 * v27;
      if ((v22 * v27) >> 64 != (v22 * v27) >> 63)
      {
        goto LABEL_20;
      }

      v29 = result;
      v80 = v22;
      v30 = *(v69 + 72);
      v73 = type metadata accessor for MultivariateLinearRegressor.Model();
      result = MultivariateLinearRegressor.Model.inputSize.getter(v73);
      if (v26 == 1)
      {
        goto LABEL_21;
      }

      v79 = v24;
      v31 = UnsafeVectorPointer.init(start:count:stride:)(v29 + v30 * v28, result, v25[5], v23);
      v33 = v32;
      v35 = v34;
      result = sub_237EF9140();
      if (!result)
      {
        goto LABEL_27;
      }

      v36 = v30;
      v37 = v74[2];
      if (!v37)
      {
        goto LABEL_22;
      }

      v38 = v74[4];
      v39 = v80 * v38;
      if ((v80 * v38) >> 64 != (v80 * v38) >> 63)
      {
        goto LABEL_23;
      }

      v40 = result;
      result = MultivariateLinearRegressor.Model.outputSize.getter(v73);
      if (v37 == 1)
      {
        goto LABEL_24;
      }

      v41 = result;
      v42 = v40 + v39 * v36;
      v43 = v77;
      v44 = UnsafeMutableVectorPointer.init(start:count:stride:)(v42, v41, v74[5], v77);
      v45 = MEMORY[0x28223BE20](v44);
      v46 = v78;
      v57[-10] = v43;
      v57[-9] = v46;
      v47 = v76;
      v57[-8] = v76;
      v57[-7] = v45;
      v72 = v48;
      v73 = v45;
      v71 = v49;
      v57[-6] = v49;
      v57[-5] = v48;
      v57[-4] = v31;
      v57[-3] = v33;
      v57[-2] = v35;
      v50 = v67;
      swift_getWitnessTable();
      v51 = v79;
      sub_237D16240();
      v53 = v60;
      v52 = v61;
      (*v58)(v60, v59, v61);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v50);
      if (EnumTagSinglePayload == 1)
      {
        result = (*v57[0])(v53, v52);
        v25 = v68;
        v24 = v51;
      }

      else
      {
        v79 = v57;
        MEMORY[0x28223BE20](EnumTagSinglePayload);
        v57[-6] = v43;
        v57[-5] = v46;
        v55 = v73;
        v57[-4] = v47;
        v57[-3] = v55;
        v56 = v72;
        v57[-2] = v71;
        v57[-1] = v56;
        sub_237D1651C();
        v24 = v51;
        result = (*(*(v50 - 8) + 8))(v53, v50);
        v25 = v68;
      }

      v22 = v80 + 1;
      v23 = v77;
    }
  }

  return result;
}

uint64_t sub_237EDAD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[0] = a7;
  v16[1] = a3;
  v12 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EDAFDC();
  UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(a1, a5, a6, v16[0], 0, v14);
  return (*(v12 + 8))(v14, a8);
}

uint64_t sub_237EDAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EDAFDC();
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, a3, v17, a4, a5, v21, a7, a9, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return (*(v15 + 8))(v17, a7);
}

uint64_t sub_237EDAFDC()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  return sub_237EF9CE0();
}

void sub_237EDB0C0()
{
  sub_237EF7E90();
  sub_237EF7DF0();
  sub_237EF9180();
  swift_getWitnessTable();
  Collection<>.mean()();
}

void sub_237EDB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v43 = a6;
  v44 = a7;
  v40 = a1;
  v41 = a2;
  v14 = *(a11 - 8);
  MEMORY[0x28223BE20](a1);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v16;
  if (v16 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v17 = 0;
    v51 = a13;
    v42 = a12;
    v35 = (v14 + 40);
    v36 = a4 + 24;
    v34 = a9;
    v37 = v14;
    v38 = a4;
    while (v45 != v17)
    {
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (!sub_237EF8530())
      {
        goto LABEL_17;
      }

      v18 = type metadata accessor for MultivariateLinearRegressor.Model();
      v19 = MultivariateLinearRegressor.Model.outputSize.getter(v18);
      if ((v17 * v19) >> 64 != (v17 * v19) >> 63)
      {
        goto LABEL_13;
      }

      v20 = *(v14 + 72);
      MultivariateLinearRegressor.Model.outputSize.getter(v18);
      v21 = sub_237EF8540();
      v23 = v22;
      v24 = sub_237EF8530();
      if (!v24)
      {
        goto LABEL_18;
      }

      v25 = *(a4 + 16);
      if (!v25)
      {
        goto LABEL_14;
      }

      v26 = *(a4 + 32);
      if ((v17 * v26) >> 64 != (v17 * v26) >> 63)
      {
        goto LABEL_15;
      }

      v27 = v24 + v17 * v26 * v20;
      v28 = MultivariateLinearRegressor.Model.outputSize.getter(v18);
      v29 = UnsafeVectorPointer.init(start:count:stride:)(v27, v28, *(v36 + 8 * v25), a11);
      v49 = v21;
      v50 = v23;
      v46 = v29;
      v47 = v30;
      v48 = v31;
      sub_237EF8550();
      type metadata accessor for UnsafeVectorPointer();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v32 = v39;
      a4 = v38;
      meanSquaredError<A, B, C>(_:_:)();
      (*v35)(v34 + v20 * v17++, v32, a11);
      v14 = v37;
    }
  }
}

uint64_t sub_237EDB4EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEF6D4;

  return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
}

uint64_t sub_237EDB5B4()
{
  result = _s5StateOMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_123()
{
}

uint64_t OUTLINED_FUNCTION_11_67()
{

  return sub_237EF7DF0();
}

uint64_t OUTLINED_FUNCTION_15_54(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_237EF7E60();
}

uint64_t sub_237EDB96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = sub_237EDBA5C(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = result;
      MEMORY[0x28223BE20](result);
      v21[2] = a2;
      v21[3] = a3;
      v21[4] = a4;
      v21[5] = a5;
      v21[6] = a6;
      v21[7] = a1;
      v21[8] = v19;
      v21[9] = v20;
      result = v19 * v17;
      if ((v18 * v17) >> 64 == result >> 63)
      {
        result = sub_237EDC378(result, sub_237EDC0BC, v21, v18, v17);
        *a7 = v18;
        *(a7 + 8) = v17;
        *(a7 + 16) = 0;
        *(a7 + 24) = result;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237EDBA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v8 = sub_237EF7E90();
  v9 = sub_237EF90F0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_0_106();
  if (sub_237EF8DD0())
  {
    sub_237C84150();
    swift_allocError();
    *v12 = xmmword_237F1F090;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 2;
    swift_willThrow();
    return a4;
  }

  v17 = v6;
  sub_237EF8E80();
  result = __swift_getEnumTagSinglePayload(v11, 1, v8);
  if (result != 1)
  {
    sub_237EF7E20();
    v14 = (*(*(v8 - 8) + 8))(v11, v8);
    MEMORY[0x28223BE20](v14);
    v15 = v17;
    sub_237EF8810();
    if (!v15)
    {
      OUTLINED_FUNCTION_0_106();
      a4 = sub_237EF8DA0();
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EDBC7C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a4;
  v55 = a2;
  v42 = a9;
  v43 = a3;
  v45 = a6;
  v47 = a8;
  v12 = sub_237EF7E90();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = sub_237EF90F0();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v46 = a7;
  v19 = *(a7 + 8);
  v20 = sub_237EF97D0();
  MEMORY[0x28223BE20](v20);
  v56 = sub_237EF97C0();
  v40 = *(v56 - 8);
  v21 = MEMORY[0x28223BE20](v56);
  v23 = &v39 - v22;
  v44 = a5;
  MEMORY[0x2383E0850](a5, v19, v21);
  v55 = v23;
  sub_237EF97A0();
  v24 = (v50 + 4);
  v50 = (v41 + 32);
  v48 = v54 + 1;
  v25 = __OFADD__(v54, 1);
  v49 = v25;
  v26 = (v41 + 8);
  while (1)
  {
    v27 = v51;
    sub_237EF97B0();
    (*v24)(v18, v27, v52);
    v28 = TupleTypeMetadata2;
    if (__swift_getEnumTagSinglePayload(v18, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v40 + 8))(v55, v56);
    }

    v29 = *v18;
    result = (*v50)(v14, &v18[*(v28 + 48)], v12);
    if (v49)
    {
      break;
    }

    v31 = v29 * v48;
    if ((v29 * v48) >> 64 != (v29 * v48) >> 63)
    {
      goto LABEL_12;
    }

    MEMORY[0x28223BE20](result);
    v32 = v45;
    *(&v39 - 10) = v44;
    *(&v39 - 9) = v32;
    v33 = v47;
    *(&v39 - 8) = v46;
    *(&v39 - 7) = v33;
    v34 = v43;
    *(&v39 - 6) = v42;
    *(&v39 - 5) = v34;
    v35 = v54;
    *(&v39 - 4) = v54;
    *(&v39 - 3) = a1;
    *(&v39 - 2) = v31;
    v37 = v36;
    v38 = v57;
    result = sub_237EF7DF0();
    if (__OFADD__(v31, v35))
    {
      goto LABEL_13;
    }

    v57 = v38;
    *(*a1 + 8 * (v31 + v35)) = 0x3FF0000000000000;
    (*v26)(v37, v12);
    v14 = v37;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_237EDC0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v24 = a1;
  v14 = *(a10 - 8);
  v15.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v18 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a6)
  {
    v19 = 0;
    v23[2] = a13;
    while (1)
    {
      v20 = v26 + v19;
      if (__OFADD__(v26, v19))
      {
        break;
      }

      v21 = *v25;
      v22 = v19 + 1;
      (*(v14 + 16))(v17, v24 + *(v14 + 72) * v19, a10, v15);
      sub_237C65348();
      sub_237EF8190();
      v15.n128_u64[0] = v27;
      *(v21 + 8 * v20) = v27;
      v19 = v22;
      if (a6 == v22)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_237EDC24C(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000025;
  sub_237EF7E90();
  v4 = *(sub_237EF7E20() + 16);

  v5 = sub_237EF7E20();
  v6 = v5;
  if (v4 > 1)
  {
    v7 = "d be ";
LABEL_7:
    v11 = v7 | 0x8000000000000000;
    sub_237C84150();
    swift_allocError();
    *v12 = v6;
    *(v12 + 8) = v3;
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 6;
    return swift_willThrow();
  }

  v8 = sub_237C60C7C(v5, a2);

  if ((v8 & 1) == 0)
  {
    v10 = *(sub_237EF7E20() + 16);

    if (v10 || (result = sub_237C60C7C(a2, &unk_284ACECF8), (result & 1) == 0))
    {
      v6 = sub_237EF7E20();
      v7 = "n imputing but got ";
      v3 = 0xD000000000000028;
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_237EDC378(uint64_t result, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_237EF89B0();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = v10 + 32;
  v13[0] = v10 + 32;
  v13[1] = v9;
  result = a2(v13);
  if (v5)
  {
    if (!v13[0])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v11 == v13[0])
    {
      *(v10 + 16) = 0;

      return v10;
    }

    goto LABEL_16;
  }

  v12 = a4 * a5;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12 > v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13[0])
  {
    if (v11 == v13[0])
    {
      *(v10 + 16) = v12;
      return v10;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t ContiguousArray.withUnsafeVectorPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[5] = a2;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC8430(sub_237EDC630, v10, a3, a4, a5, v8, MEMORY[0x277D84950], &v11);
}

uint64_t sub_237EDC5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = sub_237EF8530();
  if (result)
  {
    v13 = UnsafeVectorPointer.init(start:count:stride:)(result, a2, 1, a5);
    result = a3(v13);
    if (v7)
    {
      *a7 = v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ContiguousArray.withUnsafeMutableVectorPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237EF94D0();
  v9 = *(*v4 + 16);
  v10 = *(a3 + 16);
  v11 = *v4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80));
  v14[0] = v11;
  v14[1] = v9;
  sub_237EDC768(v14, a1, a2, v10, a4, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC94F0(v14, v11, v9);
}

uint64_t sub_237EDC768(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a1 + 8);
  result = sub_237EF9140();
  if (result)
  {
    v12 = UnsafeMutableVectorPointer.init(start:count:stride:)(result, v10, 1, a4);
    result = a2(v12);
    if (v6)
    {
      *a6 = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dot<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = a2;
  return ContiguousArray.withUnsafeVectorPointer<A>(_:)(sub_237EDCE28, v5, a1, a3, a3);
}

{
  v5[3] = a4;
  v5[4] = a2;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EEB740, v5, a1, a3, a3, a4);
}

uint64_t sub_237EDC854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  return ContiguousArray.withUnsafeVectorPointer<A>(_:)(sub_237EDCE48, v7, a4, a5, a5);
}

uint64_t sub_237EDC8A0@<X0>(uint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a6;
  v41 = a5;
  v39 = a4;
  v61 = a3;
  v42 = a2;
  v40 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = &v38 - v15;
  MEMORY[0x28223BE20](v16);
  v44 = &v38 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_237EF90F0();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v38 - v20;
  v43 = *(*(a8 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v47 = a9;
  sub_237EF9D20();
  v57 = v39;
  v58 = v41;
  v59 = v48;
  v49 = v40;
  *&v50 = v42;
  *(&v50 + 1) = v61;
  v23 = type metadata accessor for UnsafeVectorPointer();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();
  v48 = WitnessTable;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = v56;
  v57 = v23;
  v58 = v23;
  v61 = v23;
  v59 = WitnessTable;
  v60 = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  v42 = (v12 + 32);
  v25 = (v12 + 8);
  while (1)
  {
    v53 = v61;
    *&v54 = v61;
    *(&v54 + 1) = v48;
    v55 = v48;
    sub_237EF9370();
    sub_237EF9360();
    result = __swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      break;
    }

    v27 = *(TupleTypeMetadata2 + 48);
    v28 = TupleTypeMetadata2;
    v29 = *v42;
    v30 = v44;
    (*v42)(v44, v21, a7);
    v31 = &v21[v27];
    v32 = v21;
    v33 = v45;
    v29(v45, v31, a7);
    v34 = v46;
    sub_237EF8D30();
    sub_237EF9770();
    v35 = *v25;
    v36 = v34;
    TupleTypeMetadata2 = v28;
    (*v25)(v36, a7);
    v37 = v33;
    v21 = v32;
    v35(v37, a7);
    v35(v30, a7);
  }

  return result;
}

float dot(_:_:)(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  __C = 0.0;
  v1 = OUTLINED_FUNCTION_1_122(a1);
  vDSP_dotpr(v1, 1, v2, 1, &__C, v3);
  return __C;
}

{
  return sub_237EE93DC(a1, sub_237EEB75C);
}

double dot(_:_:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0.0;
  v1 = OUTLINED_FUNCTION_1_122(a1);
  vDSP_dotprD(v1, 1, v2, 1, v5, v3);
  return v5[0];
}

{
  return sub_237EE9424(a1, sub_237EEB778);
}

uint64_t LowerStrictlyTriangularMatrix.base.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void (*LowerStrictlyTriangularMatrix.subscript.read(uint64_t a1))(void *a1)
{
  OUTLINED_FUNCTION_1_1();
  *v2 = v3;
  v2[1] = v4;
  *(a1 + 16) = __swift_coroFrameAllocStub(*(v5 + 64));
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237C84DD4;
}

void (*LowerStrictlyTriangularMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v9[3] = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v10 + 32) = v11;
  v13 = *(v12 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = *(a4 + 24);
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237EDD110;
}

void sub_237EDD110(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v3, v5);
    v9 = type metadata accessor for UpperStrictlyTriangularMatrix();
    UpperStrictlyTriangularMatrix.subscript.setter(v4, v7, v8, v9);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v11 = *v2;
    v10 = v2[1];
    v12 = type metadata accessor for UpperStrictlyTriangularMatrix();
    UpperStrictlyTriangularMatrix.subscript.setter(v3, v10, v11, v12);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t LowerStrictlyTriangularMatrix.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UpperStrictlyTriangularMatrix.subscript.getter();
  v13 = *(v9 + 8);
  v13(v12, v7);
  (*(v9 + 16))(v12, a1, v7);
  v14 = type metadata accessor for UpperStrictlyTriangularMatrix();
  UpperStrictlyTriangularMatrix.subscript.setter(v12, a3, a2, v14);
  return (v13)(a1, v7);
}

uint64_t _s13LinearAlgebra29UpperStrictlyTriangularMatrixV15IndexedSequenceV4baseACyxGvg_0(uint64_t a1)
{

  sub_237EF8260();
  return a1;
}

void sub_237EDD410(void *a1@<X8>)
{
  LowerStrictlyTriangularMatrix.init(rowCount:columnCount:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_237EDD444@<X0>(uint64_t *a1@<X8>)
{
  result = LowerStrictlyTriangularMatrix.transposed()(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_237EDD498(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UpperStrictlyTriangularMatrix.subscript.getter();
  v11 = *(v8 + 8);
  v11(v10, v7);
  (*(v8 + 16))(v10, a1, v7);
  v12 = type metadata accessor for UpperStrictlyTriangularMatrix();
  UpperStrictlyTriangularMatrix.subscript.setter(v10, a3, a2, v12);
  return (v11)(a1, v7);
}

void (*sub_237EDD5E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = LowerStrictlyTriangularMatrix.subscript.modify(v8, a2, a3, a4);
  return sub_237C803C0;
}

uint64_t sub_237EDD6AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UnsafeMatrixPointer.count.getter()
{
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    result = v1 * v2;
    if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

__n128 UnsafeMatrixPointer.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t UnsafeMatrixPointer.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t))
{
  UnsafeMatrixPointer.count.getter();
  v2 = sub_237EF8540();
  return a1(v2);
}

uint64_t UnsafeMatrixPointer.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v6 = v4[3];
  if (v4[4])
  {
    v7 = a2 * v6;
    if ((a2 * v6) >> 64 != (a2 * v6) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v6 = v7 + result;
    if (!__OFADD__(v7, result))
    {
      return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
    }

    __break(1u);
  }

  v8 = result * v6;
  if ((result * v6) >> 64 != (result * v6) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v8 + a2;
  if (!__OFADD__(v8, a2))
  {
    return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

void UnsafeMatrixPointer.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v3 = *(a2 + 16);
    v4 = *v2 + *(*(v3 - 8) + 72) * a1;
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_1_123();
    if (!v7)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
    v4 = v10 + *(v8 + 72) * v9;
    v5 = *(v2 + 16);
    v6 = 1;
  }

  UnsafeVectorPointer.init(start:count:stride:)(v4, v5, v6, v3);
}

{
  if (*(v2 + 32))
  {
    OUTLINED_FUNCTION_1_123();
    if (!v3)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
    v8 = v7 + *(v5 + 72) * v6;
    v9 = *(v2 + 8);
    v10 = 1;
  }

  else
  {
    v4 = *(a2 + 16);
    v9 = *(v2 + 8);
    v8 = *v2 + *(*(v4 - 8) + 72) * a1;
    v10 = *(v2 + 24);
  }

  UnsafeVectorPointer.init(start:count:stride:)(v8, v9, v10, v4);
}

uint64_t UnsafeMatrixPointer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237F01E60);
  sub_237EF8510();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x203A73776F72202CLL, 0xE800000000000000);
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  MEMORY[0x2383E0710](0x6E6D756C6F63202CLL, 0xEB00000000203A73);
  v1 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](0x74756F79616C202CLL, 0xEA0000000000203ALL);
  sub_237EF9670();
  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EDDC34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDDC70(uint64_t a1, unsigned int a2)
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
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_237EDDCAC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t MatrixLayout.blasValue.getter(char a1)
{
  if (a1)
  {
    return 102;
  }

  else
  {
    return 101;
  }
}

uint64_t UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)()
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D78);
  if (OUTLINED_FUNCTION_26_34())
  {
    OUTLINED_FUNCTION_12_61();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D90);
    OUTLINED_FUNCTION_21_54();
    OUTLINED_FUNCTION_4_97();
    v1 = OUTLINED_FUNCTION_7_84();
    v2(v1);
    OUTLINED_FUNCTION_41_18();
    v3 = OUTLINED_FUNCTION_17_61();
    return UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_35_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D80);
    if (OUTLINED_FUNCTION_26_34())
    {
      OUTLINED_FUNCTION_12_61();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D88);
      OUTLINED_FUNCTION_21_54();
      OUTLINED_FUNCTION_4_97();
      v8 = OUTLINED_FUNCTION_7_84();
      v9(v8);
      OUTLINED_FUNCTION_41_18();
      v10 = OUTLINED_FUNCTION_17_61();
      return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v10, v11, v12, v13);
    }

    else
    {
      sub_237EF9330();

      OUTLINED_FUNCTION_2_124();
      v14 = sub_237EFA220();
      MEMORY[0x2383E0710](v14);

      OUTLINED_FUNCTION_15_55();
      result = OUTLINED_FUNCTION_14_70();
      __break(1u);
    }
  }

  return result;
}

uint64_t UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 32);
  if (*(v4 + 32) != v5 || v5 != *(a3 + 32))
  {
    goto LABEL_48;
  }

  v6 = 16;
  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  if (a2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(a1 + v7);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 16;
  }

  if ((a4 & 1) == 0)
  {
    v6 = 8;
  }

  if (v9 != *(a3 + v6) || *(v4 + 8) != *(a1 + v8) || *(v4 + 16) != *(a3 + v10))
  {
    OUTLINED_FUNCTION_0_108();
    OUTLINED_FUNCTION_19_51();
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11 > 0x7FFFFFFF)
  {
    goto LABEL_42;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_29_35();
  if (!(v14 ^ v15 | v13))
  {
    goto LABEL_44;
  }

  v21 = *(v16 + 24);
  if (v21 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = *(v4 + 24);
  if (v19 >= 0xFFFFFFFF80000000 && v17 >= 0xFFFFFFFF80000000 && v18 >= 0xFFFFFFFF80000000 && v20 >= 0xFFFFFFFF80000000 && v21 >= 0xFFFFFFFF80000000 && v22 >= 0xFFFFFFFF80000000)
  {
    if (v22 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_36_25();
      return cblas_sgemm_NEWLAPACK();
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
LABEL_50:
  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 32);
  if (*(v4 + 32) != v5 || v5 != *(a3 + 32))
  {
    goto LABEL_48;
  }

  v6 = 16;
  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  if (a2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(a1 + v7);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 16;
  }

  if ((a4 & 1) == 0)
  {
    v6 = 8;
  }

  if (v9 != *(a3 + v6) || *(v4 + 8) != *(a1 + v8) || *(v4 + 16) != *(a3 + v10))
  {
    OUTLINED_FUNCTION_0_108();
    OUTLINED_FUNCTION_19_51();
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11 > 0x7FFFFFFF)
  {
    goto LABEL_42;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_29_35();
  if (!(v14 ^ v15 | v13))
  {
    goto LABEL_44;
  }

  v21 = *(v16 + 24);
  if (v21 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = *(v4 + 24);
  if (v19 >= 0xFFFFFFFF80000000 && v17 >= 0xFFFFFFFF80000000 && v18 >= 0xFFFFFFFF80000000 && v20 >= 0xFFFFFFFF80000000 && v21 >= 0xFFFFFFFF80000000 && v22 >= 0xFFFFFFFF80000000)
  {
    if (v22 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_36_25();
      return cblas_dgemm_NEWLAPACK();
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
LABEL_50:
  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_30_45(a1, a2, a3, a4, a5, a6);
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_3();
  type metadata accessor for UnsafeMutableVectorPointer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D98);
  if (OUTLINED_FUNCTION_3_107())
  {
    OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeMatrixPointer();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D90);
    OUTLINED_FUNCTION_22_46();
    OUTLINED_FUNCTION_9_70();
    *(v9 - 256) = v7;
    OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeVectorPointer();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6DB0);
    OUTLINED_FUNCTION_32_35();
    OUTLINED_FUNCTION_22_46();
    OUTLINED_FUNCTION_13_57();
    OUTLINED_FUNCTION_18_51();
    v10();
    OUTLINED_FUNCTION_42_22();
    OUTLINED_FUNCTION_8_90();
    return UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA0);
    if (OUTLINED_FUNCTION_3_107())
    {
      OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeMatrixPointer();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D88);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_9_70();
      *(v12 - 256) = v7;
      OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeVectorPointer();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA8);
      OUTLINED_FUNCTION_32_35();
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_13_57();
      OUTLINED_FUNCTION_18_51();
      v13();
      OUTLINED_FUNCTION_42_22();
      OUTLINED_FUNCTION_8_90();
      return UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    }

    else
    {
      OUTLINED_FUNCTION_40_20();

      OUTLINED_FUNCTION_2_124();
      v14 = sub_237EFA220();
      MEMORY[0x2383E0710](v14);

      OUTLINED_FUNCTION_15_55();
      result = OUTLINED_FUNCTION_14_70();
      __break(1u);
    }
  }

  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)()
{
  OUTLINED_FUNCTION_27_34();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_39_22();
  if (v1 != v2 || v3 < v4)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v1 ^ v2 | v0))
  {
    goto LABEL_26;
  }

  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v13 != v12)
  {
    goto LABEL_31;
  }

  v14 = *(v6 + 24);
  if (v14 > 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 >= 0xFFFFFFFF80000000 && v11 >= 0xFFFFFFFF80000000 && v14 >= 0xFFFFFFFF80000000)
  {
    OUTLINED_FUNCTION_29_35();
    if (v1 ^ v2 | v0)
    {
      OUTLINED_FUNCTION_23_41();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_sgemv_NEWLAPACK();
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97();
  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_33_28();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_30();
  if (v1 != v2 || v5 < v9)
  {
    goto LABEL_23;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  if (v12 != v3)
  {
    goto LABEL_29;
  }

  v13 = *(v10 + 24);
  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= 0xFFFFFFFF80000000 && v8 >= 0xFFFFFFFF80000000 && v13 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_25_42();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_sgemv_NEWLAPACK();
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97();
  __break(1u);
  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)()
{
  OUTLINED_FUNCTION_27_34();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_39_22();
  if (v1 != v2 || v3 < v4)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_28_35();
  if (!(v1 ^ v2 | v0))
  {
    goto LABEL_26;
  }

  if (v9)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v13 != v12)
  {
    goto LABEL_31;
  }

  v14 = *(v6 + 24);
  if (v14 > 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 >= 0xFFFFFFFF80000000 && v11 >= 0xFFFFFFFF80000000 && v14 >= 0xFFFFFFFF80000000)
  {
    OUTLINED_FUNCTION_29_35();
    if (v1 ^ v2 | v0)
    {
      OUTLINED_FUNCTION_23_41();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_dgemv_NEWLAPACK();
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97();
  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_33_28();
  if (!(v1 ^ v2 | v0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_30();
  if (v1 != v2 || v5 < v9)
  {
    goto LABEL_23;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  if (v12 != v3)
  {
    goto LABEL_29;
  }

  v13 = *(v10 + 24);
  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= 0xFFFFFFFF80000000 && v8 >= 0xFFFFFFFF80000000 && v13 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_25_42();
      OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_10_70();
      return cblas_dgemv_NEWLAPACK();
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  OUTLINED_FUNCTION_16_60();
  OUTLINED_FUNCTION_19_51();
  result = OUTLINED_FUNCTION_5_97();
  __break(1u);
  return result;
}

uint64_t UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_45(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_43_3();
  type metadata accessor for UnsafeMutableVectorPointer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D98);
  if (OUTLINED_FUNCTION_3_107())
  {
    OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeVectorPointer();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6DB0);
    OUTLINED_FUNCTION_22_46();
    OUTLINED_FUNCTION_43_3();
    type metadata accessor for UnsafeMatrixPointer();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D90);
    OUTLINED_FUNCTION_32_35();
    OUTLINED_FUNCTION_22_46();
    v14 = OUTLINED_FUNCTION_11_68();
    (*(*(v15 - 256) + 16))(v13, v19, a10, v14);
    OUTLINED_FUNCTION_42_22();
    OUTLINED_FUNCTION_38_21();
    OUTLINED_FUNCTION_37_28();
    return UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA0);
    if (OUTLINED_FUNCTION_3_107())
    {
      OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeVectorPointer();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6DA8);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_43_3();
      type metadata accessor for UnsafeMatrixPointer();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6D88);
      OUTLINED_FUNCTION_32_35();
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_11_68();
      OUTLINED_FUNCTION_18_51();
      v17();
      OUTLINED_FUNCTION_42_22();
      OUTLINED_FUNCTION_38_21();
      OUTLINED_FUNCTION_37_28();
      return UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    }

    else
    {
      OUTLINED_FUNCTION_40_20();

      OUTLINED_FUNCTION_2_124();
      v18 = sub_237EFA220();
      MEMORY[0x2383E0710](v18);

      OUTLINED_FUNCTION_15_55();
      result = OUTLINED_FUNCTION_14_70();
      __break(1u);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_107()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_97()
{
  v4 = *(v0 + 120);
  *(v2 - 240) = *(v0 + 104);
  *(v2 - 224) = v4;
  *(v2 - 208) = *(v0 + 136);
  v5 = *(v1 + 16);
  *(v0 + 64) = *v1;
  *(v0 + 80) = v5;
  *(v0 + 96) = *(v1 + 32);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_97()
{

  return sub_237EF9740();
}

uint64_t OUTLINED_FUNCTION_7_84()
{
  v3 = *(v0 + 40);
  *(v2 - 192) = *(v0 + 24);
  *(v2 - 176) = v3;
  *(v2 - 160) = *(v0 + 56);
  return v1;
}

__n128 OUTLINED_FUNCTION_9_70()
{
  result = *(v1 - 264);
  v3 = *(v1 - 248);
  *(v1 - 128) = result;
  *(v1 - 112) = v3;
  *(v1 - 96) = *(v1 - 232);
  *(v1 - 288) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_11_68()
{
  result = *(v0 - 312);
  v2 = *(v0 - 296);
  *(v0 - 128) = result;
  *(v0 - 112) = v2;
  *(v0 - 96) = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_61()
{
  v5 = v1[1];
  *(v3 - 144) = *v1;
  *(v3 - 128) = v5;
  *(v3 - 112) = *(v0 + 216);
  v6 = *(v2 + 16);
  *(v0 + 144) = *v2;
  *(v0 + 160) = v6;
  *(v0 + 176) = *(v2 + 32);

  return type metadata accessor for UnsafeMatrixPointer();
}

uint64_t OUTLINED_FUNCTION_14_70()
{

  return sub_237EF9740();
}

void OUTLINED_FUNCTION_15_55()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_21_54()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_22_46()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_34()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_35_26()
{
  result = *v1;
  v3 = *(v1 + 16);
  *(v0 + 224) = *v1;
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_20()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_41_18()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return swift_dynamicCast();
}

uint64_t DenseMatrix.IndexedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.init(base:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  return result;
}

double sub_237EDF268@<D0>(uint64_t a1@<X8>)
{
  DenseMatrix.IndexedSequence.makeIterator()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2 + 5;
  v13 = v2[5];
  v14 = v2[1];
  if (v13 < v14)
  {
    v15 = v2 + 4;
    v16 = v2[4];
    if (v16 < *v2)
    {
      v31 = *v2;
      v32 = v2;
      v35 = v2[6];
      v36 = v8;
      v17 = v7;
      v18 = v9;
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      v33 = v17;
      v34 = v16;
      v19 = *(v17 + 64);
      *v18 = v16;
      v18[1] = v13;
      v20 = v18;
      v21 = v32;
      result = (*(v5 + 32))(v18 + v19, v11, v3);
      if (v21[2])
      {
        v23 = v34 + 1;
        *v15 = v34 + 1;
        v24 = v12;
        v12 = v15;
        if (v23 != v31)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v12 = v13 + 1;
        v24 = v15;
        v26 = v13 + 1 == v14;
        v13 = v34;
        if (!v26)
        {
LABEL_12:
          v27 = v36;
          v28 = v33;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
          }

          else
          {
            v21[6] = v35 + 1;
            v29 = v37;
            (*(v27 + 32))(v37, v20, v28);
            return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
          }

          return result;
        }
      }

      *v24 = v13 + 1;
      *v12 = 0;
      goto LABEL_12;
    }
  }

  v25 = v37;

  return __swift_storeEnumTagSinglePayload(v25, 1, 1, v7);
}

uint64_t sub_237EDF664()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDF6B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDF73C@<X0>(uint64_t (*a1)(void, void, void, void)@<X2>, uint64_t a2@<X8>)
{
  result = a1(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = xmmword_237F07A60;
  *(a5 + 48) = 0;

  return sub_237EF8260();
}

double UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.init(base:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = xmmword_237F07A60;
  *(a5 + 48) = 0;
  return result;
}

double sub_237EDF804@<D0>(uint64_t a1@<X8>)
{
  UpperStrictlyTriangularMatrix.IndexedSequence.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;

  sub_237EF8260();
  return v1;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v7 = &v19 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[5];
  v14 = v2[1];
  if (v13 < v14)
  {
    v15 = v2[4];
    if (v15 < *v2)
    {
      v19 = v2[6];
      v20 = v10;
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      v16 = *(TupleTypeMetadata3 + 64);
      *v7 = v15;
      *(v7 + 1) = v13;
      result = (*(v8 + 32))(&v7[v16], v12, v4);
      v2[5] = v13 + 1;
      if (v13 + 1 == v14)
      {
        v2[4] = v15 + 1;
        if (__OFADD__(v15, 2))
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v2[5] = v15 + 2;
      }

      v18 = v20;
      if (!__OFADD__(v19, 1))
      {
        v2[6] = v19 + 1;
        (*(v18 + 32))(a2, v7, TupleTypeMetadata3);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, TupleTypeMetadata3);
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, TupleTypeMetadata3);
}

uint64_t sub_237EDFBC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDFC18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EDFC54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237EDFC94(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_237EDFCF8@<X0>(uint64_t *a1@<X8>)
{
  result = UpperStrictlyTriangularMatrix.IndexedSequence.base.getter(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_237EDFD30()
{
  v0 = sub_237EF7DB0();
  __swift_allocate_value_buffer(v0, static Logger.linearAlgebra);
  __swift_project_value_buffer(v0, static Logger.linearAlgebra);
  return sub_237EF7DA0();
}

uint64_t Logger.linearAlgebra.unsafeMutableAddressor()
{
  if (qword_27DEB6C70 != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  v0 = sub_237EF7DB0();

  return __swift_project_value_buffer(v0, static Logger.linearAlgebra);
}

uint64_t static Logger.linearAlgebra.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DEB6C70 != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  v2 = sub_237EF7DB0();
  v3 = __swift_project_value_buffer(v2, static Logger.linearAlgebra);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_0_109()
{

  return swift_once();
}

uint64_t UnsafeVectorPointer.init(_:)()
{
  result = sub_237EF9140();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeVectorPointer.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_4;
  }

  v5 = v2[1];
  if (!v5)
  {
    __break(1u);
    return result;
  }

  if (v4 != v5)
  {
    v9 = *(result + 16);
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);
    *v2 = v4 + *(v10 + 72) * v2[2];
    v11(a2);
    v7 = a2;
    v8 = 0;
    v6 = v9;
  }

  else
  {
LABEL_4:
    v6 = *(result + 16);
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

void UnsafeVectorPointer.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
  }
}

uint64_t UnsafeVectorPointer._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a1;
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237EF90F0();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  OUTLINED_FUNCTION_43_3();
  type metadata accessor for UnsafeVectorPointer();
  OUTLINED_FUNCTION_0_110();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {
    UnsafeVectorPointer.makeIterator()(a3, a4, a5);
    v18 = v17;
    sub_237EF9130();
    return v18;
  }

  v29 = a3;
  v19 = sub_237EF9140();
  if (v19)
  {
    if (a2 < a4)
    {
      __break(1u);
    }

    else
    {
      v20 = v19;
      if (a5 == 1)
      {
        v21 = v29;
        sub_237EF9080();
      }

      else
      {
        v28 = a2;
        UnsafeVectorPointer.makeIterator()(v29, a4, a5);
        v31 = v22;
        v32 = v23;
        v33 = v24;
        OUTLINED_FUNCTION_43_3();
        v25 = type metadata accessor for UnsafeVectorPointer.Iterator();
        while (1)
        {
          UnsafeVectorPointer.Iterator.next()(v25, v16);
          if (__swift_getEnumTagSinglePayload(v16, 1, a6) == 1)
          {
            break;
          }

          v26 = *(v11 + 32);
          v26(v13, v16, a6);
          v26(v20, v13, a6);
          v20 += *(v11 + 72);
        }

        v21 = v29;
      }

      if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
      {
        v18 = v21 + *(v11 + 72) * a4 * a5;
        sub_237EF9130();
        sub_237EF9150();
        return v18;
      }
    }

    __break(1u);
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

void sub_237EE0430(void *a1@<X8>)
{
  UnsafeVectorPointer.makeIterator()(*v1, v1[1], v1[2]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t sub_237EE046C()
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237EE0524(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = UnsafeVectorPointer._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], *(a4 + 16));
  a1[1] = v6;
  a1[2] = v7;
  return v8;
}

Swift::Int_optional __swiftcall UnsafeVectorPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = limitedBy - _;
  if (offsetBy < 1)
  {
    if (v4 <= 0 && v4 > offsetBy)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = offsetBy + _;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= offsetBy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t _s13LinearAlgebra26UnsafeMutableVectorPointerV10_uncheckedxSi_tcig_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((result * a3) >> 64 == (result * a3) >> 63)
  {
    return (*(*(a4 - 8) + 16))(a5, a2 + *(*(a4 - 8) + 72) * result * a3, a4);
  }

  __break(1u);
  return result;
}

double UnsafeVectorPointer.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UnsafeVectorPointer();
  OUTLINED_FUNCTION_0_110();
  swift_getWitnessTable();
  sub_237EFA0B0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

void (*sub_237EE06E8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_237EE0764(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_237C84CD0;
}

void (*sub_237EE0764(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v8 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v8;
  a1[2] = __swift_coroFrameAllocStub(*(v8 + 64));
  UnsafeVectorPointer.subscript.getter(a2, a3);
  return sub_237C84DD4;
}

double sub_237EE082C@<D0>(uint64_t a1@<X8>)
{
  UnsafeVectorPointer.subscript.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_237EE0888@<X0>(void *a1@<X8>)
{
  result = UnsafeVectorPointer.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int sub_237EE08BC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeVectorPointer.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237EE08EC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeVectorPointer.index(before:)(*a1);
  *a2 = result;
  return result;
}

void *UnsafeVectorPointer.withContiguousStorageIfAvailable<A>(_:)@<X0>(void *(*a1)(void *__return_ptr, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  if (a4 == 1)
  {
    result = a1(a6, a2, a3, 1);
    if (v6)
    {
      return result;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a6, v10, 1, a5);
}

void *UnsafeVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2)
{
  return sub_237EE09F8(a1, a2, type metadata accessor for UnsafeVectorPointer);
}

{
  return sub_237EE09F8(a1, a2, type metadata accessor for UnsafeMutableVectorPointer);
}

void *sub_237EE09F8(__int128 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v23 = *(a1 + 4);
  a3(255);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_3();
  v6 = sub_237EFA0E0();
  MEMORY[0x2383E21A0](v20);
  v7 = v20[0];
  OUTLINED_FUNCTION_3_108();
  sub_237EFA0A0();
  v8 = v18;
  v9 = a1[1];
  v15 = *a1;
  v16 = v9;
  v17 = *(a1 + 4);
  result = MEMORY[0x2383E21A0](&v13, v6);
  if ((v8 * v14) >> 64 == (v8 * v14) >> 63)
  {
    v11 = v7 + *(*(a2 - 8) + 72) * v8 * v14;
    OUTLINED_FUNCTION_2_125();
    sub_237EFA0D0();
    OUTLINED_FUNCTION_3_108();
    sub_237EFA0A0();
    v12 = OUTLINED_FUNCTION_2_125();
    MEMORY[0x2383E21A0](&v19, v6, v12);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeVectorPointer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237F020D0);
  OUTLINED_FUNCTION_43_3();
  sub_237EF8510();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x3A746E756F63202CLL, 0xE900000000000020);
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  MEMORY[0x2383E0710](0x656469727473202CLL, 0xEA0000000000203ALL);
  v1 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EE0E80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EE0EBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237EE0EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_237EE0F38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 OUTLINED_FUNCTION_2_125()
{
  result = *v0;
  v4 = *(v0 + 16);
  *v1 = *v0;
  v1[1] = v4;
  *(v2 - 80) = *(v0 + 32);
  return result;
}

void static DenseMatrix.+= infix(_:_:)()
{
  OUTLINED_FUNCTION_5_98();
  sub_237EE14C8();
}

{
  OUTLINED_FUNCTION_5_98();
  sub_237EE1100();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (*v4 != v5 || *(v4 + 8) != v7)
  {
    goto LABEL_35;
  }

  v12 = *(v4 + 16);
  v41 = v11;
  if (v12 == (v6 & 1))
  {
    v23 = v5 * v7;
    if ((v5 * v7) >> 64 != (v5 * v7) >> 63)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v23 < 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v23)
    {
      v24 = v8;
      for (i = 0; i != v23; ++i)
      {
        _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
        OUTLINED_FUNCTION_43_3();
        v26 = sub_237EF9580();
        sub_237EF94D0();
        OUTLINED_FUNCTION_62_2();
        sub_237E6A31C(v27, v28);
        OUTLINED_FUNCTION_12_65();
        OUTLINED_FUNCTION_23_43();
        sub_237EF9770();
        (*(v24 + 8))(v41, v2);
        nullsub_1(v26, v29);
      }
    }

    goto LABEL_28;
  }

  v44 = v7;
  v47 = v5;
  if (v12)
  {
    if (v7 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v7)
    {
      v13 = v4;
      v14 = 0;
      v15 = (v8 + 8);
      v45 = v4;
      v42 = (v8 + 16);
      while (1)
      {
        v16 = *v13;
        if (*v13 < 0)
        {
          break;
        }

        if (v16)
        {
          v17 = 0;
          do
          {
            OUTLINED_FUNCTION_44_23();
            DenseMatrix.subscript.read();
            v19 = v18;
            (*v42)(v41);
            v20 = OUTLINED_FUNCTION_12_62();
            v19(v20);
            OUTLINED_FUNCTION_43_3();
            type metadata accessor for DenseMatrix();
            v21 = DenseMatrix.subscript.modify(v48, v17, v14);
            OUTLINED_FUNCTION_12_65();
            OUTLINED_FUNCTION_23_43();
            sub_237EF9770();
            (*v15)(v41, v2);
            v22 = OUTLINED_FUNCTION_12_62();
            v21(v22);
            v7 = v44;
            v17 = v0;
          }

          while (v16 != v0);
        }

        ++v14;
        v13 = v45;
        if (v14 == v7)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v30 = v4;
      v31 = 0;
      v46 = v4;
      v43 = (v8 + 16);
      do
      {
        v32 = *(v30 + 8);
        if (v32 < 0)
        {
          goto LABEL_30;
        }

        if (v32)
        {
          v33 = 0;
          do
          {
            OUTLINED_FUNCTION_44_23();
            DenseMatrix.subscript.read();
            v35 = v34;
            (*v43)(v41);
            v36 = OUTLINED_FUNCTION_12_62();
            v35(v36);
            OUTLINED_FUNCTION_43_3();
            type metadata accessor for DenseMatrix();
            v37 = DenseMatrix.subscript.modify(v48, v31, v33);
            OUTLINED_FUNCTION_12_65();
            OUTLINED_FUNCTION_23_43();
            sub_237EF9770();
            v38 = OUTLINED_FUNCTION_33_27();
            v39(v38);
            v40 = OUTLINED_FUNCTION_12_62();
            v37(v40);
            v5 = v47;
            v33 = v0;
          }

          while (v32 != v0);
        }

        ++v31;
        v30 = v46;
      }

      while (v31 != v5);
    }

LABEL_28:
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_8_94();
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53();
  __break(1u);
}

uint64_t static DenseMatrix.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  OUTLINED_FUNCTION_13_58(v5, v6, v7, v8, v9, v10, v11, v12, a5);
  static DenseMatrix.+= infix(_:_:)();
  return v15;
}

void static DenseMatrix.-= infix(_:_:)()
{
  OUTLINED_FUNCTION_4_98();
  sub_237EE1100();
}

{
  OUTLINED_FUNCTION_4_98();
  sub_237EE14C8();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (*(v12 + 16) != v13 || *v3 != v7 || v3[1] != v8)
  {
    goto LABEL_12;
  }

  v14 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 < 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_8_94();
    OUTLINED_FUNCTION_19_51();
    OUTLINED_FUNCTION_18_53();
    __break(1u);
    return;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_43_3();
    sub_237EF9580();
    sub_237EF94D0();
    v15 = OUTLINED_FUNCTION_20_52();
    nullsub_1(v15, v16);
    OUTLINED_FUNCTION_20_52();
    sub_237EF94D0();
    v17 = OUTLINED_FUNCTION_20_52();
    nullsub_1(v17, v18);
    OUTLINED_FUNCTION_20_52();
    sub_237EF94D0();
    v19 = OUTLINED_FUNCTION_20_52();
    nullsub_1(v19, v20);
    for (i = 0; i != v14; ++i)
    {
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      OUTLINED_FUNCTION_20_52();
      sub_237EF94D0();
      OUTLINED_FUNCTION_62_2();
      sub_237E6A31C(v22, v23);
      OUTLINED_FUNCTION_12_65();
      OUTLINED_FUNCTION_23_43();
      sub_237EF9780();
      (*(v5 + 8))(v11, v1);
      v24 = OUTLINED_FUNCTION_20_52();
      nullsub_1(v24, v25);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

void sub_237EE1100()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v41 = *v12;
  if (v41 != DenseMatrix.Transpose.rowCount.getter(v11, v5))
  {
    goto LABEL_28;
  }

  v13 = *(v9 + 8);
  if (v13 != DenseMatrix.Transpose.columnCount.getter(v7))
  {
    goto LABEL_28;
  }

  v42 = v1;
  v43 = v9;
  if (*(v9 + 16))
  {
    if (v13 < 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v13)
    {
      v14 = 0;
      v40 = v13;
      while ((*v9 & 0x8000000000000000) == 0)
      {
        if (*v9)
        {
          v15 = 0;
          do
          {
            OUTLINED_FUNCTION_25_43();
            DenseMatrix.subscript.read();
            v17 = v16;
            v18 = OUTLINED_FUNCTION_34_23();
            v19(v18);
            v20 = OUTLINED_FUNCTION_12_62();
            v17(v20);
            OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix();
            v21 = OUTLINED_FUNCTION_32_36();
            v22 = DenseMatrix.subscript.modify(v21, v15, v14);
            OUTLINED_FUNCTION_2_126();
            v1();
            v23 = OUTLINED_FUNCTION_35_27();
            v15 = v44;
            v24(v23, v3);
            v25 = OUTLINED_FUNCTION_12_62();
            v22(v25);
            OUTLINED_FUNCTION_29_36();
          }

          while (!v26);
        }

        ++v14;
        v9 = v43;
        if (v14 == v40)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    if (v41)
    {
      for (i = 0; i != v41; ++i)
      {
        v28 = *(v9 + 8);
        if (v28 < 0)
        {
          goto LABEL_25;
        }

        if (v28)
        {
          v29 = 0;
          do
          {
            OUTLINED_FUNCTION_25_43();
            DenseMatrix.subscript.read();
            v31 = v30;
            v32 = OUTLINED_FUNCTION_34_23();
            v33(v32);
            v34 = OUTLINED_FUNCTION_12_62();
            v31(v34);
            OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix();
            v35 = OUTLINED_FUNCTION_32_36();
            v36 = DenseMatrix.subscript.modify(v35, i, v29);
            OUTLINED_FUNCTION_2_126();
            v42();
            v37 = OUTLINED_FUNCTION_35_27();
            v29 = v44;
            v38(v37, v3);
            v39 = OUTLINED_FUNCTION_12_62();
            v36(v39);
            OUTLINED_FUNCTION_29_36();
          }

          while (!v26);
        }

        v9 = v43;
      }
    }

LABEL_23:
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_17_15();
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61();
  __break(1u);
}

void sub_237EE14C8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v53 = v9;
  v54 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_7_85();
  if (DenseMatrix.Transpose.rowCount.getter(v16, v17) != v7)
  {
    goto LABEL_28;
  }

  v18 = OUTLINED_FUNCTION_7_85();
  if (DenseMatrix.Transpose.columnCount.getter(v18) != v5)
  {
    goto LABEL_28;
  }

  v19 = OUTLINED_FUNCTION_7_85();
  v52 = v1;
  if (DenseMatrix.Transpose.layout.getter(v19, v20, v21))
  {
    v22 = v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v5)
    {
      v23 = 0;
      v55 = v15;
      while (1)
      {
        v24 = OUTLINED_FUNCTION_28_36();
        v26 = DenseMatrix.Transpose.rowCount.getter(v24, v25);
        if (v26 < 0)
        {
          break;
        }

        v27 = v23;
        if (v26)
        {
          v28 = 0;
          do
          {
            v29 = v27;
            DenseMatrix.subscript.read();
            v31 = v30;
            v32 = OUTLINED_FUNCTION_35_27();
            v33(v32);
            v34 = OUTLINED_FUNCTION_11_69();
            v31(v34);
            OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix();
            v35 = OUTLINED_FUNCTION_32_36();
            v36 = v28;
            v28 = v55;
            v22 = DenseMatrix.subscript.modify(v35, v29, v36);
            OUTLINED_FUNCTION_2_126();
            v54();
            v37 = OUTLINED_FUNCTION_35_27();
            v38(v37, v3);
            v39 = OUTLINED_FUNCTION_11_69();
            v22(v39);
            OUTLINED_FUNCTION_37_29();
          }

          while (!v40);
        }

        v23 = v27 + 1;
        if ((v27 + 1) == v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v41 = 0;
      do
      {
        v42 = OUTLINED_FUNCTION_28_36();
        v43 = DenseMatrix.Transpose.columnCount.getter(v42);
        if (v43 < 0)
        {
          goto LABEL_25;
        }

        if (v43)
        {
          v44 = 0;
          do
          {
            DenseMatrix.subscript.read();
            v46 = v45;
            (*(v53 + 16))(v13);
            v47 = OUTLINED_FUNCTION_11_69();
            v46(v47);
            OUTLINED_FUNCTION_12_7();
            type metadata accessor for DenseMatrix();
            v48 = OUTLINED_FUNCTION_32_36();
            v49 = DenseMatrix.subscript.modify(v48, v44, v41);
            v44 = v3;
            (v54)(v50, v13, v3, *(*(*(*(v52 + 16) + 16) + 8) + 8));
            (*(v53 + 8))(v13, v3);
            v51 = OUTLINED_FUNCTION_11_69();
            v49(v51);
            OUTLINED_FUNCTION_37_29();
          }

          while (!v40);
        }
      }

      while (++v41 != v7);
    }

LABEL_23:
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_17_15();
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61();
  __break(1u);
}

uint64_t sub_237EE18E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t *))
{

  v19 = OUTLINED_FUNCTION_13_58(v11, v12, v13, v14, v15, v16, v17, v18, a1);
  a11(v19);
  return v22;
}

void static DenseMatrix.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  OUTLINED_FUNCTION_1_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_12_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  static DenseMatrix.* infix(_:_:)(v22);
  (*(v24 + 8))(v28, a21);
  static DenseMatrix.+= infix(_:_:)();
  OUTLINED_FUNCTION_38_0();
}

void static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v101 = v30;
  v110 = v31;
  v33 = v32;
  v107 = v34;
  v35 = a22;
  OUTLINED_FUNCTION_1_1();
  v114 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v90 - v41;
  MEMORY[0x28223BE20](v43);
  v111 = &v90 - v44;
  MEMORY[0x28223BE20](v45);
  v106 = &v90 - v46;
  v47 = *(*(*(a22 + 16) + 16) + 8);
  v97 = *(v47 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  v95 = &v90 - v49;
  v104 = v25;
  v103 = v27;
  v105 = v23;
  if (DenseMatrix.Transpose.rowCount.getter(v29, v27) != v33)
  {
    goto LABEL_23;
  }

  v50 = v33;
  v100 = v47;
  if (qword_27DEB6C70 != -1)
  {
    goto LABEL_20;
  }

LABEL_3:
  v51 = sub_237EF7DB0();
  __swift_project_value_buffer(v51, static Logger.linearAlgebra);
  v52 = sub_237EF7D90();
  v53 = sub_237EF8F80();
  v54 = os_log_type_enabled(v52, v53);
  v94 = v39;
  v93 = v42;
  v102 = v29;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    v56 = v116[0];
    *v55 = 136315138;
    v57 = sub_237EFA220();
    v59 = v35;
    v60 = sub_237DAFA64(v57, v58, v116);

    *(v55 + 4) = v60;
    v35 = v59;
    _os_log_impl(&dword_237C51000, v52, v53, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v29 = v102;
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_105_2();
  }

  v39 = v111;
  v61 = v106;
  v62 = DenseMatrix.Transpose.columnCount.getter(v29);
  v29 = v97;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_31_31();
  sub_237EF9D20();
  v63 = v107;
  v98 = v62;
  v116[0] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v107, v62, 0, v61, a21);
  v116[1] = v64;
  v117 = v65;
  v118 = v66;
  if ((v63 & 0x8000000000000000) == 0)
  {
    if (!v63)
    {
LABEL_18:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if (v98 < 0)
    {
      goto LABEL_22;
    }

    v42 = 0;
    v109 = (v114 + 16);
    v91 = (v114 + 24);
    v67 = v107;
    v108 = (v114 + 8);
    v99 = v50;
    while (1)
    {
      if (v98)
      {
        if (v50 < 0)
        {
          __break(1u);
LABEL_20:
          OUTLINED_FUNCTION_0_109();
          goto LABEL_3;
        }

        v68 = 0;
        v112 = v42;
        do
        {
          v113 = v68;
          sub_237EF9FB0();
          OUTLINED_FUNCTION_31_31();
          sub_237EF9D20();
          v29 = v35;
          v69 = v94;
          v70 = v93;
          v71 = v109;
          if (v50)
          {
            v72 = 0;
            do
            {
              v114 = v72 + 1;
              DenseMatrix.subscript.read();
              v74 = v73;
              v75 = *v71;
              (*v71)(v70);
              v76 = OUTLINED_FUNCTION_17_62();
              v74(v76);
              DenseMatrix.subscript.read();
              v78 = v77;
              v75(v69);
              v79 = OUTLINED_FUNCTION_17_62();
              v78(v79);
              v80 = v106;
              sub_237EF8D30();
              v81 = *v108;
              (*v108)(v69, a21);
              v81(v70, a21);
              sub_237EF9770();
              v82 = v80;
              v71 = v109;
              v81(v82, a21);
              v72 = v114;
              v50 = v99;
              v67 = v107;
            }

            while (v99 != v114);
          }

          v83 = v113;
          v84 = v113 + 1;
          type metadata accessor for DenseMatrix();
          v42 = v112;
          v85 = DenseMatrix.subscript.modify(v115, v112, v83);
          v86 = v111;
          (*v91)(v87, v111, a21);
          v88 = OUTLINED_FUNCTION_17_62();
          v85(v88);
          (*v108)(v86, a21);
          v68 = v83 + 1;
          v89 = v84 == v98;
          v35 = v29;
          v39 = v86;
        }

        while (!v89);
      }

      if (++v42 == v67)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_17_15();
  v90 = 129;
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61();
  __break(1u);
}

{
  OUTLINED_FUNCTION_37_0();
  v95 = v22;
  v94 = v23;
  v105 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1_1();
  v107 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v90 = &v87 - v40;
  MEMORY[0x28223BE20](v41);
  v108 = &v87 - v42;
  MEMORY[0x28223BE20](v43);
  v100 = &v87 - v44;
  v45 = *(*(*(a22 + 16) + 16) + 8);
  v93 = *(v45 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  v91 = &v87 - v47;
  v104 = v30;
  v48 = v34;
  v99 = v32;
  v101 = v28;
  v109 = a22;
  if (DenseMatrix.Transpose.columnCount.getter(v34) != v26)
  {
    goto LABEL_22;
  }

  v49 = v26;
  if (qword_27DEB6C70 != -1)
  {
    goto LABEL_19;
  }

LABEL_3:
  v50 = sub_237EF7DB0();
  __swift_project_value_buffer(v50, static Logger.linearAlgebra);
  v51 = sub_237EF7D90();
  v52 = sub_237EF8F80();
  v53 = os_log_type_enabled(v51, v52);
  v97 = v38;
  v98 = v48;
  v96 = v45;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v111[0] = v55;
    *v54 = 136315138;
    v56 = sub_237EFA220();
    v58 = sub_237DAFA64(v56, v57, v111);

    *(v54 + 4) = v58;
    v48 = v98;
    _os_log_impl(&dword_237C51000, v51, v52, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_105_2();
  }

  v59 = v108;
  v38 = DenseMatrix.Transpose.rowCount.getter(v48, v99);
  v45 = v93;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v91;
  v89 = AssociatedConformanceWitness;
  sub_237EF9FB0();
  v61 = v100;
  OUTLINED_FUNCTION_31_31();
  sub_237EF9D20();
  v111[0] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v38, v105, 0, v61, a21);
  v111[1] = v62;
  v112 = v63;
  v113 = v64;
  if ((v38 & 0x8000000000000000) == 0)
  {
    if (!v38)
    {
LABEL_17:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if (v105 < 0)
    {
      goto LABEL_21;
    }

    v65 = 0;
    v103 = (v107 + 16);
    v88 = (v107 + 24);
    v87 = v38;
    v102 = (v107 + 8);
    while (1)
    {
      v106 = v65;
      if (v105)
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_19:
          OUTLINED_FUNCTION_0_109();
          goto LABEL_3;
        }

        v66 = 0;
        do
        {
          v107 = v66;
          sub_237EF9FB0();
          OUTLINED_FUNCTION_31_31();
          sub_237EF9D20();
          v45 = v90;
          v67 = v106;
          v68 = v103;
          if (v49)
          {
            v69 = 0;
            do
            {
              v108 = v69 + 1;
              DenseMatrix.subscript.read();
              v70 = v49;
              v72 = v71;
              v73 = *v68;
              (*v68)(v45);
              v74 = OUTLINED_FUNCTION_17_62();
              v75 = v59;
              v72(v74);
              DenseMatrix.subscript.read();
              v77 = v76;
              v78 = v97;
              v73(v97);
              v79 = OUTLINED_FUNCTION_17_62();
              v77(v79);
              v80 = v100;
              sub_237EF8D30();
              v81 = *v102;
              (*v102)(v78, a21);
              v81(v45, a21);
              v59 = v75;
              sub_237EF9770();
              v82 = v80;
              v68 = v103;
              v81(v82, a21);
              v67 = v106;
              v69 = v108;
              v49 = v70;
            }

            while (v70 != v108);
          }

          v83 = v107;
          v48 = v107 + 1;
          type metadata accessor for DenseMatrix();
          v84 = DenseMatrix.subscript.modify(v110, v67, v83);
          (*v88)(v85, v59, a21);
          v86 = OUTLINED_FUNCTION_17_62();
          v84(v86);
          (*v102)(v59, a21);
          v66 = v83 + 1;
        }

        while (v48 != v105);
      }

      v65 = v106 + 1;
      v38 = v87;
      if (v106 + 1 == v87)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_17_15();
  v87 = 151;
  OUTLINED_FUNCTION_38_22();
  OUTLINED_FUNCTION_16_61();
  __break(1u);
}

void sub_237EE2BD0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v11 = swift_allocObject();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_3();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_237EEDDF4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 8 * v9);
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237EE2CAC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD360);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[4 * v9] <= v13)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }
}

void sub_237EE2D9C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_7();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_3();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

uint64_t OUTLINED_FUNCTION_8_91()
{
}

uint64_t OUTLINED_FUNCTION_9_71()
{
}

uint64_t OUTLINED_FUNCTION_16_61()
{

  return sub_237EF9740();
}

uint64_t OUTLINED_FUNCTION_42_23()
{
}

uint64_t DenseVector.Iterator.vector.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DenseVector.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v4 >= DenseVector.count.getter())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v6);
  }

  else
  {
    DenseVector.subscript.getter(v4, v5, v6, v7);
    result = __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
    v9 = v2[1];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v2[1] = v11;
    }
  }

  return result;
}

uint64_t DenseVector._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v16 = a3;
  type metadata accessor for DenseVector();
  OUTLINED_FUNCTION_0_112();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    return v7;
  }

  v10 = sub_237EF9140();
  if (v10)
  {
    v11 = v10;
    v12 = DenseVector.count.getter();
    if (v12 <= a2)
    {
      MEMORY[0x28223BE20](v12);
      v15[2] = a4;
      v15[3] = a5;
      v15[4] = v11;
      v15[5] = v7;
      v15[6] = a1;
      v15[7] = a2;
      type metadata accessor for DenseVector.Iterator();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EE3570, v15, v7, a4, TupleTypeMetadata2, a5);
      return v16;
    }

    __break(1u);
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t sub_237EE3490@<X0>(uint64_t a1@<X4>, void *a2@<X8>)
{
  DenseVector.count.getter();
  sub_237EF9080();

  v4 = DenseVector.count.getter();
  *a2 = a1;
  a2[1] = v4;
  sub_237EF9130();
  DenseVector.count.getter();
  result = sub_237EF9150();
  a2[2] = result;
  return result;
}

uint64_t sub_237EE35BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = DenseVector.makeIterator()();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_237EE3604()
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237EE3658()
{
  swift_getWitnessTable();

  return sub_237EF8E60();
}

uint64_t sub_237EE36AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DenseVector._copyContents(initializing:)(a2, a3, *v4, *(a4 + 16), *(a4 + 24));
  v8 = v7;
  v10 = v9;

  *a1 = v6;
  a1[1] = v8;
  return v10;
}

Swift::Int_optional __swiftcall DenseVector.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = limitedBy - _;
  if (offsetBy < 1)
  {
    if (v4 <= 0 && v4 > offsetBy)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = offsetBy + _;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= offsetBy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

void (*DenseVector.subscript.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_237EF9580();
  v2[4] = sub_237EF95B0();
  return sub_237D8212C;
}

uint64_t DenseVector.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_237EF9580();
  sub_237EF94D0();
  v8 = *v3;
  sub_237E6A31C(a2, *v3);
  (*(*(v6 - 8) + 40))(v8 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a2, a1, v6);

  return nullsub_1(v7, v9);
}

{
  v6 = *(a3 + 16);
  v7 = sub_237EF9580();
  sub_237EF94D0();
  v8 = *v3;
  sub_237E6A31C(a2, *v3);
  (*(*(v6 - 8) + 40))(v8 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a2, a1, v6);

  return nullsub_1(v7, v9);
}

uint64_t DenseVector.subscript.getter()
{
  type metadata accessor for DenseVector();

  OUTLINED_FUNCTION_0_112();
  swift_getWitnessTable();
  sub_237EFA0B0();
  return v1;
}

uint64_t DenseVector.subscript.setter()
{
  sub_237EF9580();
  OUTLINED_FUNCTION_0_112();
  swift_getWitnessTable();
  sub_237EFA0E0();
  swift_getWitnessTable();
  return sub_237EF94A0();
}

void (*DenseVector.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  *v9 = DenseVector.subscript.getter();
  v9[1] = v10;
  v9[2] = v11;
  return sub_237EE3AF4;
}

void sub_237EE3AF4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_2_127();
  }

  else
  {
    OUTLINED_FUNCTION_2_127();
  }

  free(v2);
}

void (*sub_237EE3BE0(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v8 = *(a3 + 16);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  v7[4] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *a2;
  v7[5] = v11;
  v7[6] = v12;
  DenseVector.subscript.getter(v12, *v3, v8, *(a3 + 24));
  return sub_237EE3CDC;
}

void sub_237EE3CDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[1];
    (*(v7 + 16))((*a1)[4], v3, v6);
    DenseVector.subscript.setter(v5, v4, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    DenseVector.subscript.setter((*a1)[5], v4, v2[1]);
  }

  free(v3);
  free(v5);

  free(v2);
}

void (*sub_237EE3DC4(void *a1, void *a2, uint64_t a3))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[3] = v3;
  v7[4] = a3;
  v8 = a2[1];
  v7[5] = *a2;
  v7[6] = v8;
  *v7 = DenseVector.subscript.getter();
  v7[1] = v9;
  v7[2] = v10;
  return sub_237EE3E4C;
}

void sub_237EE3E4C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_1_126();
  }

  else
  {
    OUTLINED_FUNCTION_1_126();
  }

  free(v2);
}

uint64_t sub_237EE3F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DenseVector.endIndex.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

void (*sub_237EE3FC8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_237EE97D4();
  return sub_237C84CD0;
}

uint64_t sub_237EE4040@<X0>(uint64_t *a1@<X8>)
{
  result = DenseVector.subscript.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_237EE4080@<X0>(void *a1@<X8>)
{
  result = DenseVector.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int sub_237EE40CC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DenseVector.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237EE40FC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DenseVector.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237EE42AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_126()
{

  return DenseVector.subscript.setter();
}

uint64_t OUTLINED_FUNCTION_2_127()
{

  return DenseVector.subscript.setter();
}

uint64_t UnsafeMutableMatrixPointer.count.getter()
{
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    result = v1 * v2;
    if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

__n128 UnsafeMutableMatrixPointer.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

__n128 UnsafeMutableMatrixPointer.init(mutating:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t UnsafeMutableMatrixPointer.withUnsafeBufferPointer<A>(_:)(uint64_t (*a1)(uint64_t))
{
  UnsafeMutableMatrixPointer.count.getter();
  v2 = sub_237EF8540();
  return a1(v2);
}

uint64_t UnsafeMutableMatrixPointer.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(void *))
{
  v4 = *v1;
  UnsafeMutableMatrixPointer.count.getter();
  v8[0] = sub_237EF9160();
  v8[1] = v5;
  result = a1(v8);
  if (!v2)
  {
    result = sub_237EF9140();
    if (result)
    {
      v7 = v4 == result;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      result = sub_237EF9740();
      __break(1u);
    }
  }

  return result;
}

uint64_t static UnsafeMutableMatrixPointer.allocate(rowCount:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    result = sub_237EF90C0();
    *a3 = result;
    *(a3 + 8) = a1;
    *(a3 + 16) = a2;
    *(a3 + 24) = a2;
    *(a3 + 32) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237EE46E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(v3 + 32))
  {
    v5 = *(v3 + 16);
    if (v5 < 0)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v5)
    {
      v6 = *(v3 + 24);
      while (is_mul_ok(0, v6))
      {
        OUTLINED_FUNCTION_1_127();
        sub_237EF9160();
        v7 = OUTLINED_FUNCTION_0_113();
        a3(v7);
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v3 + 8);
    if (v8 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v8)
    {
      v9 = *(v3 + 24);
      while (is_mul_ok(0, v9))
      {
        OUTLINED_FUNCTION_1_127();
        sub_237EF9160();
        v10 = OUTLINED_FUNCTION_0_113();
        a3(v10);
      }

      goto LABEL_14;
    }
  }
}

uint64_t UnsafeMutableMatrixPointer.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v6 = v4[3];
  if (v4[4])
  {
    v7 = a2 * v6;
    if ((a2 * v6) >> 64 != (a2 * v6) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v6 = v7 + result;
    if (!__OFADD__(v7, result))
    {
      return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
    }

    __break(1u);
  }

  v8 = result * v6;
  if ((result * v6) >> 64 != (result * v6) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v8 + a2;
  if (!__OFADD__(v8, a2))
  {
    return (*(*(*(a3 + 16) - 8) + 16))(a4, v5 + *(*(*(a3 + 16) - 8) + 72) * v6);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t (*UnsafeMutableMatrixPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(void, void)
{
  v4 = *(v3 + 24);
  if (*(v3 + 32))
  {
    v5 = a3 * v4;
    if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = v5 + a2;
    if (!__OFADD__(v5, a2))
    {
      return nullsub_1;
    }

    __break(1u);
  }

  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__OFADD__(a2 * v4, a3))
  {
    return nullsub_1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t UnsafeMutableMatrixPointer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = UnsafeMutableMatrixPointer.subscript.modify(v11, a2, a3);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v9, a1, v7);
  v6(v11, 0);
  return (*(v8 + 8))(a1, v7);
}

void UnsafeMutableMatrixPointer.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v3 = *(a2 + 16);
    v4 = *v2 + *(*(v3 - 8) + 72) * a1;
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_1_123();
    if (!v7)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
    v4 = v10 + *(v8 + 72) * v9;
    v5 = *(v2 + 16);
    v6 = 1;
  }

  UnsafeMutableVectorPointer.init(start:count:stride:)(v4, v5, v6, v3);
}

{
  if (*(v2 + 32))
  {
    OUTLINED_FUNCTION_1_123();
    if (!v3)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_107();
    v8 = v7 + *(v5 + 72) * v6;
    v9 = *(v2 + 8);
    v10 = 1;
  }

  else
  {
    v4 = *(a2 + 16);
    v9 = *(v2 + 8);
    v8 = *v2 + *(*(v4 - 8) + 72) * a1;
    v10 = *(v2 + 24);
  }

  UnsafeMutableVectorPointer.init(start:count:stride:)(v8, v9, v10, v4);
}

uint64_t UnsafeMutableMatrixPointer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237F02250);
  sub_237EF90D0();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x203A73776F72202CLL, 0xE800000000000000);
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  MEMORY[0x2383E0710](0x6E6D756C6F63202CLL, 0xEB00000000203A73);
  v1 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](0x74756F79616C202CLL, 0xEA0000000000203ALL);
  sub_237EF9670();
  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EE4CE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void (*DenseMatrix.Transpose.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  type metadata accessor for DenseMatrix();
  v6[4] = DenseMatrix.subscript.modify(v6, a3, a2);
  return sub_237EE4E0C;
}

void sub_237EE4E0C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_72(a1);
  v3(v2, 0);

  free(v1);
}

void (*DenseMatrix.Transpose.subscript.read(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  DenseMatrix.subscript.read();
  v2[4] = v3;
  return sub_237EE4F0C;
}

void sub_237EE4F0C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_72(a1);
  v3(v2, 0);

  free(v1);
}

uint64_t DenseMatrix.Transpose.base.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t DenseMatrix.Transpose.subscript.getter@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  DenseMatrix.subscript.read();
  v5 = v4;
  (*(*(a1 - 8) + 16))(a2);
  return v5(v7, 0);
}

uint64_t DenseMatrix.Transpose.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  type metadata accessor for DenseMatrix();
  v8 = DenseMatrix.subscript.modify(v12, a3, a2);
  v9 = *(v7 - 8);
  (*(v9 + 24))(v10, a1, v7);
  (v8)(v12, 0);
  return (*(v9 + 8))(a1, v7);
}

uint64_t sub_237EE51E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = DenseMatrix.Transpose.init(rowCount:columnCount:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_237EE5220@<X0>(uint64_t a1@<X8>)
{
  result = DenseMatrix.Transpose.transposed()(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_237EE5260@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  DenseMatrix.subscript.read();
  v5 = v4;
  (*(*(v3 - 8) + 16))(a2);
  return v5(v7, 0);
}

uint64_t sub_237EE5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  type metadata accessor for DenseMatrix();
  v8 = DenseMatrix.subscript.modify(v12, a3, a2);
  v9 = *(v7 - 8);
  (*(v9 + 24))(v10, a1, v7);
  (v8)(v12, 0);
  return (*(v9 + 8))(a1, v7);
}

void (*sub_237EE53E4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = DenseMatrix.Transpose.subscript.modify(v6, a2, a3);
  return sub_237EE5460;
}

void sub_237EE5460(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_9_72(a1);
  v3(v2);

  free(v1);
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(void (**a1)(char *, uint64_t), uint64_t a2, int a3, void (**a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a3;
  v72 = a2;
  OUTLINED_FUNCTION_14_72();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_92();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v19);
  v71 = &v56 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v66 = *(*(*(v24 + 16) + 16) + 8);
  v63 = *(v66 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v56 - v25;
  v26 = a7;
  if (DenseVector.count.getter() == a1)
  {
    v58 = v7;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v75 = v14;
      v27 = sub_237EF7DB0();
      __swift_project_value_buffer(v27, static Logger.linearAlgebra);
      v28 = sub_237EF7D90();
      v29 = sub_237EF8F80();
      v30 = os_log_type_enabled(v28, v29);
      v57 = v18;
      v64 = v23;
      v68 = a4;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        v32 = a1;
        v33 = v76[0];
        *v31 = 136315138;
        v34 = sub_237EFA220();
        v36 = sub_237DAFA64(v34, v35, v76);

        *(v31 + 4) = v36;
        v23 = v64;
        _os_log_impl(&dword_237C51000, v28, v29, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        a1 = v32;
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_237EF9FB0();
      sub_237EF9D20();
      v37 = v72;
      result = DenseVector.init(repeating:count:)(v23, v72, a6);
      v77 = result;
      if (v37 < 0)
      {
        break;
      }

      if (!v37)
      {
        return result;
      }

      v65 = a1;
      v39 = 0;
      a4 = (v75 + 16);
      a1 = (v75 + 8);
      v59 = (v75 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14 = v71;
      v73 = a5;
      v74 = (v75 + 16);
      v70 = v26;
      while (1)
      {
        v75 = v39;
        v18 = v61;
        sub_237EF9FB0();
        sub_237EF9D20();
        v40 = DenseVector.count.getter();
        if (v40 < 0)
        {
          break;
        }

        if (v40)
        {
          v41 = 0;
          v42 = v58;
          v43 = v57;
          v44 = v64;
          v69 = v40;
          do
          {
            v45 = a1;
            v46 = v70;
            DenseMatrix.subscript.read();
            v48 = v47;
            v49 = *v74;
            (*v74)(v43);
            v48(v76, 0);
            v50 = v46;
            a1 = v45;
            DenseVector.subscript.getter(v41, v73, a6, v50);
            OUTLINED_FUNCTION_42_2();
            sub_237EF8D30();
            v51 = *v45;
            (*v45)(v42, a6);
            v51(v43, a6);
            sub_237EF9770();
            v51(v44, a6);
            ++v41;
          }

          while (v69 != v41);
          v26 = v70;
          v14 = v71;
          v37 = v72;
        }

        else
        {
          v49 = *a4;
        }

        v52 = v75;
        v53 = v75 + 1;
        v23 = v64;
        (v49)(v64, v14, a6);
        v54 = type metadata accessor for DenseVector();
        DenseVector.subscript.setter(v23, v52, v54);
        (*a1)(v14, a6);
        v39 = v52 + 1;
        v55 = v53 == v37;
        a5 = v73;
        a4 = v74;
        if (v55)
        {
          return v77;
        }
      }

      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_109();
    }

    __break(1u);
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_14_72();
  v72 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_92();
  MEMORY[0x28223BE20](v17);
  v19 = v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v53 - v21;
  MEMORY[0x28223BE20](v23);
  v70 = v53 - v24;
  v62 = *(*(*(v25 + 16) + 16) + 8);
  v56 = *(v62 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v55 = v53 - v26;
  OUTLINED_FUNCTION_42_2();
  if (DenseVector.count.getter() == a3)
  {
    v64 = v7;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v27 = sub_237EF7DB0();
      __swift_project_value_buffer(v27, static Logger.linearAlgebra);
      v28 = sub_237EF7D90();
      LODWORD(v71) = sub_237EF8F80();
      v29 = os_log_type_enabled(v28, v71);
      v63 = v19;
      v69 = v22;
      v65 = a1;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v68 = v30;
        v67 = swift_slowAlloc();
        v73[0] = v67;
        *v30 = 136315138;
        v31 = sub_237EFA220();
        v33 = sub_237DAFA64(v31, v32, v73);
        a1 = v65;

        v34 = v68;
        *(v68 + 1) = v33;
        v22 = v69;
        _os_log_impl(&dword_237C51000, v28, v71, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      v53[2] = swift_getAssociatedConformanceWitness();
      sub_237EF9FB0();
      v35 = v70;
      OUTLINED_FUNCTION_18_52();
      result = DenseVector.init(repeating:count:)(v35, a2, a6);
      v74 = result;
      if (a2 < 0)
      {
        break;
      }

      if (!a2)
      {
        return result;
      }

      v37 = 0;
      v66 = (v72 + 16);
      v53[1] = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57 = a6;
      v58 = a5;
      v68 = (v72 + 8);
      v60 = a3;
      v61 = a2;
      v59 = a4;
      while (1)
      {
        v71 = v37;
        v19 = v55;
        sub_237EF9FB0();
        OUTLINED_FUNCTION_18_52();
        OUTLINED_FUNCTION_42_2();
        v38 = DenseVector.count.getter();
        if (v38 < 0)
        {
          break;
        }

        if (v38)
        {
          v39 = 0;
          v40 = v57;
          v67 = v38;
          do
          {
            v72 = v39 + 1;
            v41 = v63;
            DenseVector.subscript.getter(v39, a1, v40, a7);
            DenseMatrix.subscript.read();
            v43 = v42;
            v44 = *v66;
            v45 = v64;
            (*v66)(v64);
            v43(v73, 0);
            sub_237EF8D30();
            v46 = a7;
            v47 = *v68;
            (*v68)(v45, v40);
            v47(v41, v40);
            sub_237EF9770();
            v48 = OUTLINED_FUNCTION_42_2();
            (v47)(v48);
            a7 = v46;
            a5 = v58;
            a4 = v59;
            a3 = v60;
            a2 = v61;
            a1 = v65;
            v39 = v72;
          }

          while (v67 != v72);
        }

        else
        {
          v44 = *v66;
        }

        v49 = v70;
        v72 = v71 + 1;
        v50 = v69;
        v51 = v57;
        (v44)(v70, v69, v57);
        v22 = v50;
        v52 = type metadata accessor for DenseVector();
        DenseVector.subscript.setter(v49, v71, v52);
        (*v68)(v50, v51);
        v37 = v72;
        a6 = v51;
        if (v72 == a2)
        {
          return v74;
        }
      }

      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_0_109();
    }

    __break(1u);
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_16_62(a1, a2, a3, a4, a5);
  if (v8)
  {
    OUTLINED_FUNCTION_6_83();
    sub_237E61300(v9, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643B4();
    }

    OUTLINED_FUNCTION_5_99();
    v13 = v5;
    v14 = v10;
    v15 = v6;
    OUTLINED_FUNCTION_1_128();

    UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(v11, 0, v12, 0);

    return OUTLINED_FUNCTION_7_86();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_16_62(a1, a2, a3, a4, a5);
  if (v8)
  {
    OUTLINED_FUNCTION_6_83();
    sub_237E613EC(v9, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC();
    }

    OUTLINED_FUNCTION_5_99();
    v13 = v5;
    v14 = v10;
    v15 = v6;
    OUTLINED_FUNCTION_1_128();

    UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v11, 0, v12, 0);

    return OUTLINED_FUNCTION_7_86();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_13_59();
    if (v4)
    {
      v5 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v5);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    for (i = 0; v2 != i; ++i)
    {
      v7 = v3 + 4 * i;
      *(v7 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_12_63();
    if (v4)
    {
      v5 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v5);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    for (i = 0; v2 != i; ++i)
    {
      v7 = v3 + 4 * i;
      *(v7 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_13_59();
    if (v4)
    {
      v5 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v5);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    for (i = 0; v2 != i; ++i)
    {
      v7 = v3 + 8 * i;
      *(v7 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_12_63();
    if (v4)
    {
      v5 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v5);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    for (i = 0; v2 != i; ++i)
    {
      v7 = v3 + 8 * i;
      *(v7 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_3_109();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

uint64_t sub_237EE670C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_128()
{
}

uint64_t OUTLINED_FUNCTION_10_71()
{
}

uint64_t OUTLINED_FUNCTION_11_70()
{
}

uint64_t OUTLINED_FUNCTION_18_52()
{

  return sub_237EF9D20();
}

void UnsafeMutableVectorPointer.initialize(repeating:)()
{
  OUTLINED_FUNCTION_4_100();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (v11)
  {
    for (i = 0; ; i = v14)
    {
      v13 = i <= v2;
      if (v1 > 0)
      {
        v13 = i >= v2;
      }

      if (v13)
      {
        break;
      }

      if (__OFADD__(i, v1))
      {
        v14 = ((i + v1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = i + v1;
      }

      v15 = v3 + *(v6 + 72) * i;
      (*(v6 + 16))(v10, v4, v0);
      sub_237EE03FC(v10, v15, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237EE6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableVectorPointer.makeIterator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    return UnsafeVectorPointer.Iterator.init(baseAddress:end:stride:)(result, result + *(*(a4 - 8) + 72) * a2 * a3);
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableVectorPointer._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_237EF90F0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for UnsafeMutableVectorPointer();
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {
    v20 = UnsafeMutableVectorPointer.makeIterator()(a3, a4, a5, a6);
    sub_237EF9130();
    return v20;
  }

  v29 = a1;
  v30 = a3;
  v21 = v31;
  v22 = sub_237EF9140();
  if (v22)
  {
    if (v21 < a4)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      if (a5 == 1)
      {
        v24 = v30;
        sub_237EF9080();
      }

      else
      {
        v32 = UnsafeMutableVectorPointer.makeIterator()(v30, a4, a5, a6);
        v33 = v25;
        v34 = v26;
        v27 = type metadata accessor for UnsafeVectorPointer.Iterator();
        while (1)
        {
          UnsafeVectorPointer.Iterator.next()(v27, v19);
          if (__swift_getEnumTagSinglePayload(v19, 1, a6) == 1)
          {
            break;
          }

          (*(v12 + 32))(v16, v19, a6);
          sub_237EE03FC(v16, v23, a6);
          v23 += *(v12 + 72);
        }

        v24 = v30;
      }

      if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
      {
        v20 = UnsafeVectorPointer.Iterator.init(baseAddress:end:stride:)(v24 + *(v12 + 72) * a4 * a5, v24 + *(v12 + 72) * a4 * a5);
        sub_237EF9130();
        sub_237EF9150();
        return v20;
      }
    }

    __break(1u);
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t sub_237EE6ED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UnsafeMutableVectorPointer.makeIterator()(*v2, v2[1], v2[2], *(a1 + 16));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_237EE6F10()
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237EE6FC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = UnsafeMutableVectorPointer._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], *(a4 + 16));
  a1[1] = v6;
  a1[2] = v7;
  return v8;
}

uint64_t UnsafeMutableVectorPointer.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    v8 = sub_237EF8540();
    result = a1(v8);
    if (v4)
    {
      return result;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, a3);
}

Swift::Int_optional __swiftcall UnsafeMutableVectorPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = limitedBy - _;
  if (offsetBy < 1)
  {
    if (v4 <= 0 && v4 > offsetBy)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = offsetBy + _;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= offsetBy)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t (*UnsafeMutableVectorPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void, void)
{
  if ((a2 * a5) >> 64 == (a2 * a5) >> 63)
  {
    return nullsub_1;
  }

  __break(1u);
  return result;
}

{
  if ((a2 * a5) >> 64 == (a2 * a5) >> 63)
  {
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EE7208(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 * a5) >> 64 == (a2 * a5) >> 63)
  {
    return (*(*(a6 - 8) + 40))(a3 + *(*(a6 - 8) + 72) * a2 * a5, result, a6);
  }

  __break(1u);
  return result;
}

double UnsafeMutableVectorPointer.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UnsafeMutableVectorPointer();
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  sub_237EFA0B0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t UnsafeMutableVectorPointer.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v18 = v14;
  type metadata accessor for UnsafeMutableVectorPointer();
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  sub_237EFA0E0();
  sub_237EFA0A0();
  v20 = *a1;
  v21 = a1[1];
  result = sub_237EFA0D0();
  if (v19 < v22)
  {
LABEL_8:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
    sub_237C85338(&qword_280C8E200);
    sub_237EFA000();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB7138);
    sub_237EF9350();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB7140);
      result = sub_237EF9360();
      if (v21)
      {
        break;
      }

      v16 = v20;
      v20 = *a1;
      v21 = a1[1];
      swift_getWitnessTable();
      result = sub_237EFA0F0();
      if ((v16 * a6) >> 64 != (v16 * a6) >> 63)
      {
        __break(1u);
        goto LABEL_8;
      }

      (*(v9 + 40))(a4 + *(v9 + 72) * v16 * a6, v13, v18);
    }
  }

  return result;
}

void (*UnsafeMutableVectorPointer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = __swift_coroFrameAllocStub(0xA8uLL);
  *a1 = v14;
  v14[19] = a6;
  v14[20] = a7;
  v14[17] = a4;
  v14[18] = a5;
  v14[15] = a2;
  v14[16] = a3;
  UnsafeMutableVectorPointer.subscript.getter((v14 + 10));
  return sub_237EE7604;
}

void sub_237EE7604(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_110(a1, a2, a3, a4, a5);

  free(v5);
}

Swift::Void __swiftcall UnsafeMutableVectorPointer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v15 = &v17 - v14;
  if (v10 != v11)
  {
    if ((v10 * v13) >> 64 == (v10 * v13) >> 63)
    {
      if ((v11 * v13) >> 64 == (v11 * v13) >> 63)
      {
        v16 = v12 + *(v5 + 72) * v11 * v13;
        sub_237EF90A0();
        sub_237EF9090();
        (*(v5 + 16))(v8, v15, v3);
        sub_237EE03FC(v8, v16, v3);
        (*(v5 + 8))(v15, v3);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237EE7798(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = *a2 * v4;
  if ((*a2 * v4) >> 64 == v5 >> 63)
  {
    return (*(*(*(a3 + 16) - 8) + 40))(*v3 + *(*(*(a3 + 16) - 8) + 72) * v5, result);
  }

  __break(1u);
  return result;
}

void (*sub_237EE77F4(void *a1, uint64_t *a2))(void *a1)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[4] = UnsafeMutableVectorPointer.subscript.modify(v5, *a2, *v2, v6, v2[2]);
  return sub_237C803C0;
}

void (*sub_237EE788C(void *a1, void *a2, uint64_t a3))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_coroFrameAllocStub(0xA8uLL);
  *a1 = v7;
  v8 = a2[1];
  v7[15] = *a2;
  v7[16] = v8;
  v7[17] = *v3;
  v7[18] = v3[1];
  v7[19] = v3[2];
  v7[20] = *(a3 + 16);
  UnsafeMutableVectorPointer.subscript.getter((v7 + 10));
  return sub_237EE7604;
}

uint64_t UnsafeMutableVectorPointer.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (*(v4 + 16) == 1)
  {
    v18 = v10;
    v19 = v9;
    v20[0] = sub_237EF9160();
    v20[1] = v14;
    v15 = sub_237EF9140();
    result = a1(v20);
    if (v5)
    {
      return result;
    }

    v20[3] = v15;
    sub_237EF9140();
    sub_237EF90D0();
    sub_237EF90F0();
    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_237EF9DF0();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    (*(v18 + 32))(v19, v13, a4);
    v9 = v19;
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v17, 1, a4);
}

void (*sub_237EE7BDC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_237EE7C58(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_237C84CD0;
}

void (*sub_237EE7C58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v11 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  a1[2] = v12;
  UnsafeMutableVectorPointer.subscript.getter(a2, a3, a5, a6, v12);
  return sub_237C84DD4;
}

double sub_237EE7D20@<D0>(uint64_t a1@<X8>)
{
  UnsafeMutableVectorPointer.subscript.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_237EE7D7C@<X0>(void *a1@<X8>)
{
  result = UnsafeMutableVectorPointer.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int sub_237EE7DA8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeMutableVectorPointer.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237EE7DD8@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UnsafeMutableVectorPointer.index(before:)(*a1);
  *a2 = result;
  return result;
}

void *UnsafeMutableVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v22 = *(a1 + 4);
  type metadata accessor for UnsafeMutableVectorPointer();
  OUTLINED_FUNCTION_0_114();
  swift_getWitnessTable();
  v5 = sub_237EFA0E0();
  MEMORY[0x2383E21A0](v19);
  v6 = v19[0];
  OUTLINED_FUNCTION_3_108();
  sub_237EFA0A0();
  v7 = v17;
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v16 = *(a1 + 4);
  result = MEMORY[0x2383E21A0](&v12, v5);
  if ((v7 * v13) >> 64 == (v7 * v13) >> 63)
  {
    v10 = v6 + *(*(a2 - 8) + 72) * v7 * v13;
    OUTLINED_FUNCTION_2_125();
    sub_237EFA0D0();
    OUTLINED_FUNCTION_3_108();
    sub_237EFA0A0();
    v11 = OUTLINED_FUNCTION_2_125();
    MEMORY[0x2383E21A0](&v18, v5, v11);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UnsafeMutableVectorPointer.update(repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_4_100();
    for (i = 0; ; i = v11)
    {
      v10 = i <= v6;
      if (v5 > 0)
      {
        v10 = i >= v6;
      }

      if (v10)
      {
        break;
      }

      if (__OFADD__(i, v5))
      {
        v11 = ((i + v5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v11 = i + v5;
      }

      (*(*(v4 - 8) + 24))(v7 + *(*(v4 - 8) + 72) * i, v8, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnsafeMutableVectorPointer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237F02390);
  sub_237EF90D0();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x3A746E756F63202CLL, 0xE900000000000020);
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  MEMORY[0x2383E0710](0x656469727473202CLL, 0xEA0000000000203ALL);
  v1 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_237EE845C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_3_110(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 152);
  v8 = *(*a1 + 128);
  v9 = *(*a1 + 136);
  if (a2)
  {
    v10 = *a1;
  }

  else
  {
    v10 = *a1 + 40;
  }

  v11 = *(v6 + 96);
  *v10 = *(v6 + 80);
  *(v10 + 16) = v11;
  v12 = *(v6 + 120);
  *(v10 + 32) = *(v6 + 112);

  return UnsafeMutableVectorPointer.subscript.setter(v10, v12, v8, v9, a5, v7);
}

uint64_t sub_237EE8574(uint64_t a1)
{
  v2 = sub_237EE8968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EE85B0(uint64_t a1)
{
  v2 = sub_237EE8968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237EE85EC(uint64_t a1)
{
  v2 = sub_237EE89BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EE8628(uint64_t a1)
{
  v2 = sub_237EE89BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237EE8664(uint64_t a1)
{
  v2 = sub_237EE8A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EE86A0(uint64_t a1)
{
  v2 = sub_237EE8A10();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_237EE8968()
{
  result = qword_27DEB71E0;
  if (!qword_27DEB71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB71E0);
  }

  return result;
}

unint64_t sub_237EE89BC()
{
  result = qword_27DEB71E8;
  if (!qword_27DEB71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB71E8);
  }

  return result;
}

unint64_t sub_237EE8A10()
{
  result = qword_27DEB71F0;
  if (!qword_27DEB71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB71F0);
  }

  return result;
}

uint64_t MatrixLayout.init(from:)(uint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB71F8);
  OUTLINED_FUNCTION_1();
  v39 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB7200);
  OUTLINED_FUNCTION_1();
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB7208);
  OUTLINED_FUNCTION_1();
  v40 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_237EE8968();
  v16 = v42;
  sub_237EFA190();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_237EF9980();
  result = sub_237EE8FC0(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_237EF93E0();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v29 = &type metadata for MatrixLayout;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_237CADB14(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_237EE89BC();
        OUTLINED_FUNCTION_5_19();
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = OUTLINED_FUNCTION_2_23();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_237EE8A10();
        v30 = v37;
        OUTLINED_FUNCTION_5_19();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = OUTLINED_FUNCTION_2_23();
        v34(v33);
      }

      __swift_destroy_boxed_opaque_existential_1(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EE8F28()
{
  v1 = *v0;
  sub_237EFA120();
  MatrixLayout.hash(into:)(v3, v1);
  return sub_237EFA170();
}

uint64_t sub_237EE8F6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = MatrixLayout.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_237EE8FC0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_237EE900C()
{
  result = qword_27DEB7210;
  if (!qword_27DEB7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7210);
  }

  return result;
}

_BYTE *sub_237EE9070(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237EE9170()
{
  result = qword_27DEB7218;
  if (!qword_27DEB7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7218);
  }

  return result;
}

unint64_t sub_237EE91C8()
{
  result = qword_27DEB7220;
  if (!qword_27DEB7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7220);
  }

  return result;
}

unint64_t sub_237EE9220()
{
  result = qword_27DEB7228;
  if (!qword_27DEB7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7228);
  }

  return result;
}

unint64_t sub_237EE9278()
{
  result = qword_27DEB7230;
  if (!qword_27DEB7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7230);
  }

  return result;
}

unint64_t sub_237EE92D0()
{
  result = qword_27DEB7238;
  if (!qword_27DEB7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7238);
  }

  return result;
}

unint64_t sub_237EE9328()
{
  result = qword_27DEB7240;
  if (!qword_27DEB7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB7240);
  }

  return result;
}

unint64_t sub_237EE9380()
{
  result = qword_27DEB7248[0];
  if (!qword_27DEB7248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB7248);
  }

  return result;
}

float sub_237EE93DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, void, uint64_t))
{
  a2(&var4, a1 + 32, *(a1 + 16), 1);
  if (!v2)
  {
    return *&var4;
  }

  return result;
}

double sub_237EE9424(uint64_t a1, void (*a2)(double *__return_ptr, uint64_t, void, uint64_t))
{
  a2(&v4, a1 + 32, *(a1 + 16), 1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t DenseVector.count.getter()
{

  v0 = sub_237EF9510();

  return v0;
}

uint64_t DenseVector.withUnsafeVectorPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a1;
  v11[6] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC8430(sub_237EE9CDC, v11, a3, a4, a5, v9, MEMORY[0x277D84950], &v12);
}

void (*DenseVector.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v7[3] = *(a3 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v8 + 32) = v9;
  v11 = *(v10 + 64);
  v7[5] = __swift_coroFrameAllocStub(v11);
  v7[6] = __swift_coroFrameAllocStub(v11);
  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  return sub_237EE9708;
}

void sub_237EE9708(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    DenseVector.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    DenseVector.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_237EE97D4())(void *a1)
{
  OUTLINED_FUNCTION_2_129();
  OUTLINED_FUNCTION_1_1();
  *v1 = v2;
  v1[1] = v3;
  *(v0 + 16) = __swift_coroFrameAllocStub(*(v4 + 64));
  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  return sub_237C84DD4;
}

uint64_t DenseVector.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v10 = sub_237EF9560();
  (*(v6 + 8))(a1, a3);
  return v10;
}

uint64_t DenseVector.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DenseVector.init<A>(scalars:)()
{
  OUTLINED_FUNCTION_2_129();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  (*(v3 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v5);
  OUTLINED_FUNCTION_3_111();
  v7 = sub_237EF8A90();
  (*(v3 + 8))(v1, v0);
  return v7;
}

uint64_t sub_237EE9AE8(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6)
{
  *a2 = a3;
  v13[0] = UnsafeMutableVectorPointer.init(_:)(*a1, a1[1], a6);
  v13[1] = v9;
  v13[2] = v10;
  result = a4(v13);
  if (!v6)
  {
    result = sub_237EF9160();
    *a1 = result;
    a1[1] = v12;
  }

  return result;
}

uint64_t DenseVector.init(arrayLiteral:)()
{
  sub_237EF8A60();
  swift_getWitnessTable();
  return sub_237EF8A90();
}

uint64_t sub_237EE9C24@<X0>(uint64_t *a1@<X8>)
{
  result = DenseVector.init(arrayLiteral:)();
  *a1 = result;
  return result;
}

uint64_t sub_237EE9C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_237EF8530();
  if (result)
  {
    v14 = UnsafeVectorPointer.init(start:count:stride:)(result, a2, 1, a5);
    result = a3(v14);
    if (v8)
    {
      *a8 = v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DenseVector.withUnsafeMutableVectorPointer<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v10 = *(*v4 + 16);
  v11 = *v4 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
  v14[0] = v11;
  v14[1] = v10;
  sub_237EE9E24(v14, a1, a2, v9, a4, *(a3 + 24), &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC94F0(v14, v11, v10);
}

uint64_t sub_237EE9E24(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *(a1 + 8);
  result = sub_237EF9140();
  if (result)
  {
    v13 = UnsafeMutableVectorPointer.init(start:count:stride:)(result, v11, 1, a4);
    result = a2(v13);
    if (v7)
    {
      *a7 = v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EE9EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_129();
  v15 = v9;
  v16 = v10;
  v13 = v5;
  KeyPath = swift_getKeyPath();
  DenseVector.withUnsafeVectorPointer<A>(_:)(a5, &v12, v7, v6, v6, v5);
}

Swift::Void __swiftcall DenseVector.negate()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = DenseVector.count.getter();
  if (v12 < 0)
  {
    __break(1u);
  }

  else if (v12)
  {
    v13 = 0;
    v17[1] = v5 + 40;
    v17[2] = v5 + 8;
    v18 = v12;
    do
    {
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      sub_237EF9410();
      (*(v5 + 8))(v8, v3);
      v14 = sub_237EF9580();
      sub_237EF94D0();
      v15 = *v2;
      sub_237E6A31C(v13, *v2);
      (*(v5 + 40))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v11, v3);
      nullsub_1(v14, v16);
      ++v13;
    }

    while (v18 != v13);
  }
}

void sub_237EEA1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v18 = a2;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = v9[1];
  if (v12 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v12)
  {
    v13 = 0;
    v17 = *v9;
    v14 = v9[2];
    while (1)
    {
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      sub_237EF9410();
      (*(v5 + 8))(v7, a3);
      v15 = v13 * v14;
      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        break;
      }

      ++v13;
      (*(v5 + 40))(v17 + *(v5 + 72) * v15, v11, a3);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_237EEA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EEA4BC();
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, a3, v17, a4, a5, v21, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return (*(v15 + 8))(v17, a7);
}

uint64_t sub_237EEA4BC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  return sub_237EF9CE0();
}

uint64_t sub_237EEA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(a7, v8, a4, a5, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_237EEA65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a5;
  v22 = a6;
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v11 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, v18, v19, v13, v20, v21, v22, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  return (*(v11 + 8))(v13, a7);
}

uint64_t sub_237EEA904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v5 = 0;
    while ((v5 * a3) >> 64 == (v5 * a3) >> 63)
    {
      ++v5;
      result = sub_237EF8D40();
      if (a2 == v5)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static DenseVector.* infix(_:_:)()
{

  OUTLINED_FUNCTION_3_111();
  static DenseVector.*= infix(_:_:)();
}

uint64_t static DenseVector.* infix(_:_:)(uint64_t a1, uint64_t a2)
{

  OUTLINED_FUNCTION_3_111();
  static DenseVector.*= infix(_:_:)();
  return a2;
}

uint64_t static DenseVector./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  v17 = a1;
  swift_getAssociatedConformanceWitness();

  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF8330();
  v14 = *(v7 + 8);
  v14(v10, a3);
  static DenseVector.*= infix(_:_:)();
  v14(v13, a3);
  return v17;
}

uint64_t static DenseVector<>.*= infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4();
    v2 = v3;
  }

  result = UnsafeMutableVectorPointer<A>.multiply(by:)(v2 + 32, *(v2 + 16), 1);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    v2 = v3;
  }

  result = UnsafeMutableVectorPointer<A>.multiply(by:)(v2 + 32, *(v2 + 16), 1);
  *a1 = v2;
  return result;
}

uint64_t static DenseVector<>.* infix(_:_:)(uint64_t a1)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4();
    a1 = v2;
  }

  v3 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v3, v4, 1);
  return a1;
}

{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4();
    a1 = v2;
  }

  v3 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v3, v4, 1);
  return a1;
}

{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    a1 = v2;
  }

  v3 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v3, v4, 1);
  return a1;
}

{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    a1 = v2;
  }

  v3 = OUTLINED_FUNCTION_5_100();
  UnsafeMutableVectorPointer<A>.multiply(by:)(v3, v4, 1);
  return a1;
}

uint64_t static DenseVector<>./ infix(_:_:)(uint64_t a1)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4();
    a1 = v2;
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)(a1 + 32, *(a1 + 16), 1);
  return a1;
}

{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC();
    a1 = v2;
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)(a1 + 32, *(a1 + 16), 1);
  return a1;
}

uint64_t sub_237EEAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237EEB7D0, v7, a4, a5, a5, a6);
}

uint64_t sub_237EEAFE4@<X0>(uint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a6;
  v41 = a5;
  v39 = a4;
  v61 = a3;
  v42 = a2;
  v40 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = &v38 - v15;
  MEMORY[0x28223BE20](v16);
  v44 = &v38 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_237EF90F0();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v38 - v20;
  v43 = *(*(*(a8 + 16) + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v47 = a9;
  sub_237EF9D20();
  v57 = v39;
  v58 = v41;
  v59 = v48;
  v49 = v40;
  *&v50 = v42;
  *(&v50 + 1) = v61;
  v23 = type metadata accessor for UnsafeVectorPointer();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();
  v48 = WitnessTable;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = v56;
  v57 = v23;
  v58 = v23;
  v61 = v23;
  v59 = WitnessTable;
  v60 = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  v42 = (v12 + 32);
  v25 = (v12 + 8);
  while (1)
  {
    v53 = v61;
    *&v54 = v61;
    *(&v54 + 1) = v48;
    v55 = v48;
    sub_237EF9370();
    sub_237EF9360();
    result = __swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      break;
    }

    v27 = *(TupleTypeMetadata2 + 48);
    v28 = TupleTypeMetadata2;
    v29 = *v42;
    v30 = v44;
    (*v42)(v44, v21, a7);
    v31 = &v21[v27];
    v32 = v21;
    v33 = v45;
    v29(v45, v31, a7);
    v34 = v46;
    sub_237EF8D30();
    sub_237EF9770();
    v35 = *v25;
    v36 = v34;
    TupleTypeMetadata2 = v28;
    (*v25)(v36, a7);
    v37 = v33;
    v21 = v32;
    v35(v37, a7);
    v35(v30, a7);
  }

  return result;
}

float sub_237EEB4A4@<S0>(vDSP_Stride __IA@<X2>, const float *a2@<X0>, vDSP_Length a3@<X1>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 16);
  __C = 0.0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  vDSP_dotpr(a2, __IA, (a4 + 32), 1, &__C, v7);
  result = __C;
  *a5 = __C;
  return result;
}

double sub_237EEB57C@<D0>(vDSP_Stride __IA@<X2>, const double *a2@<X0>, vDSP_Length a3@<X1>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 16);
  v9[0] = 0.0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  vDSP_dotprD(a2, __IA, (a4 + 32), 1, v9, v7);
  result = v9[0];
  *a5 = v9[0];
  return result;
}

uint64_t sub_237EEB794()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SparseMatrix.indexed()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[4];
  v4 = v13;
  v14 = v3;
  v12 = v1[5];
  v5 = v12;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2] & 1;
  sub_237C6FDA0(&v14, v11, &qword_27DEAD350);
  sub_237C6FDA0(&v13, v11, &qword_27DEAED98);
  sub_237EF9580();
  OUTLINED_FUNCTION_4();
  result = (*(v9 + 16))(v11, &v12);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 17) = v11[0];
  *(a1 + 20) = *(v11 + 3);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 SparseMatrix.IndexedSequence.init(base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2 & 1;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

double SparseMatrix.Transpose.indexed()()
{
  type metadata accessor for SparseMatrix();
  v0 = SparseMatrix.indexed()(v10);
  *&result = OUTLINED_FUNCTION_0_115(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t SparseMatrix.IndexedSequence.base.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_130(a1);
  sub_237EF8260();
}

double SparseMatrix.IndexedSequence.makeIterator()@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v14 = v1[1];
  v15 = v4;
  v17 = v4;
  v18 = *(&v14 + 1);
  v13 = v3;
  v16 = *(&v4 + 1);
  SparseMatrix.IndexedSequence.Iterator.init(base:)(&v13, v10);
  sub_237C6FDA0(&v18, v9, &qword_27DEAD350);
  sub_237C6FDA0(&v17, v9, &qword_27DEAED98);
  sub_237EF9580();
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v9, &v16);
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  result = *&v11;
  v8 = v12;
  a1[2] = v11;
  a1[3] = v8;
  return result;
}

void SparseMatrix.IndexedSequence.Iterator.init(base:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v18 = *a1;
  v19 = *(a1 + 16);
  type metadata accessor for SparseMatrix();
  v4 = SparseMatrix.majorCount.getter();
  v13 = (v3 + 40);
  v14 = -1;
  v15 = v4 & ~(v4 >> 63);
  while (1)
  {
    if (!v15)
    {
LABEL_5:
      OUTLINED_FUNCTION_0_115(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19, v12);
      *(a2 + 48) = v17;
      *(a2 + 56) = 0;
      return;
    }

    if ((v14 + 2) >= *(v3 + 16))
    {
      break;
    }

    v16 = *v13++;
    --v15;
    ++v14;
    if (v16 >= 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

double sub_237EEBC18@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  SparseMatrix.IndexedSequence.makeIterator()(v10);
  v15 = v3;
  sub_237C65484(&v15, &qword_27DEAD350);
  v14 = v4;
  sub_237C65484(&v14, &qword_27DEAED98);
  v13 = v5;
  v6 = sub_237EF9580();
  (*(*(v6 - 8) + 8))(&v13, v6);
  v7 = v10[1];
  *a1 = v10[0];
  a1[1] = v7;
  result = *&v11;
  v9 = v12;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t SparseMatrix.IndexedSequence.Iterator.base.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_130(a1);
  sub_237EF8260();
}

void SparseMatrix.IndexedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v28 - v9);
  v11 = v1[6];
  if (v1[2])
  {
    v12 = v1[1];
    if (v11 < v12)
    {
      v13 = v1[7];
      if ((v13 & 0x8000000000000000) == 0)
      {
        v30 = v8;
        v14 = v1[4];
        if (v13 >= *(v14 + 16))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v29 = a1;
        *v5 = *(v14 + 4 * v13 + 32);
        v5[1] = v11;
        v31 = v7;
        _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
        v15 = v13 + 1;
        v1[7] = v15;
        v16 = v1[3];
        v32 = *v1;
        v33 = v12;
        v34 = 1;
        OUTLINED_FUNCTION_3_112();
        v17 = SparseMatrix.majorCount.getter();
        for (i = v11; ; ++i)
        {
          if (i >= v17)
          {
LABEL_23:
            v27 = v29;
            (*(v30 + 32))(v29, v5, v14);
            goto LABEL_25;
          }

          if (v11 < -1)
          {
            break;
          }

          if ((i + 1) >= *(v16 + 16))
          {
            goto LABEL_28;
          }

          if (v15 < *(v16 + 40 + 8 * i))
          {
            goto LABEL_23;
          }

          v1[6] = i + 1;
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v19 = *v1;
  if (v11 >= *v1)
  {
LABEL_20:

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
    return;
  }

  v20 = v1[7];
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v30 = v8;
  v14 = v1[4];
  if (v20 >= *(v14 + 16))
  {
LABEL_33:
    __break(1u);
    return;
  }

  v29 = a1;
  v21 = *(v14 + 4 * v20 + 32);
  *v10 = v11;
  v10[1] = v21;
  v31 = v7;
  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  v22 = v20 + 1;
  v1[7] = v22;
  v23 = v1[1];
  v24 = v1[3];
  v32 = v19;
  v33 = v23;
  v34 = 0;
  OUTLINED_FUNCTION_3_112();
  v25 = SparseMatrix.majorCount.getter();
  for (j = v11; j < v25; ++j)
  {
    if (v11 < -1)
    {
      goto LABEL_27;
    }

    if ((j + 1) >= *(v24 + 16))
    {
      goto LABEL_29;
    }

    if (v22 < *(v24 + 40 + 8 * j))
    {
      break;
    }

    v1[6] = j + 1;
  }

  v27 = v29;
  (*(v30 + 32))(v29, v10, v14);
LABEL_25:
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
}

uint64_t sub_237EEC0EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EEC140()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_237EEC194()
{
  v0 = SparseMatrix.indexed()(v10);
  *&result = OUTLINED_FUNCTION_0_115(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

double sub_237EEC1C8()
{
  v0.n128_f64[0] = SparseMatrix.Transpose.indexed()();
  *&result = OUTLINED_FUNCTION_0_115(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v0).n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_0_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_130@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_3_112()
{
  *(v3 - 104) = v0;
  *(v3 - 96) = v1;
  *(v3 - 88) = v2;

  return type metadata accessor for SparseMatrix();
}

uint64_t SparseMatrix.majorCount.getter()
{
  v1 = 8;
  if (!*(v0 + 16))
  {
    v1 = 0;
  }

  return *(v0 + v1);
}

uint64_t SparseMatrix.minorCount.getter()
{
  v1 = 8;
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  return *(v0 + v1);
}

uint64_t SparseMatrix.majorStarts.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SparseMatrix.minorIndices.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t SparseMatrix.storage.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SparseMatrix.nonZeroValues.getter()
{
  sub_237EF9580();

  swift_getWitnessTable();
  return sub_237EF8A90();
}

uint64_t SparseMatrix.count.getter()
{
  v1 = v0[1];
  result = *v0 * v1;
  if ((*v0 * v1) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

double SparseMatrix.init(rowCount:columnCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  SparseMatrix.init(rowCount:columnCount:layout:)(a1, a2, 0, a3);
  *a4 = v6;
  a4[1] = v7;
  result = *&v8;
  a4[2] = v8;
  return result;
}

void SparseMatrix.init(rowCount:columnCount:layout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_93();
  v9 = v8;
  if (v10)
  {
    v11 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v11 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
LABEL_6:
    v12 = sub_237EEDE20(0, v11);
    v13 = sub_237EF89A0();
    v14 = MEMORY[0x2383E1570](v13, a4);
    *v9 = v5;
    *(v9 + 8) = v4;
    *(v9 + 16) = a3 & 1;
    v15 = MEMORY[0x277D84F90];
    *(v9 + 24) = v12;
    *(v9 + 32) = v15;
    *(v9 + 40) = v14;
    return;
  }

  __break(1u);
}

uint64_t SparseMatrix.init(rowCount:columnCount:columnStarts:rowIndices:values:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (*(a2 + 16) == a1 + 1)
  {
    OUTLINED_FUNCTION_3_113();
    OUTLINED_FUNCTION_9_36();
    result = OUTLINED_FUNCTION_10_72();
    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = 1;
    *(a3 + 24) = a2;
    *(a3 + 32) = v3;
    *(a3 + 40) = result;
    return result;
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t SparseMatrix.init(rowCount:columnCount:rowStarts:columnIndices:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (*(a2 + 16) == a1 + 1)
  {
    OUTLINED_FUNCTION_3_113();
    OUTLINED_FUNCTION_9_36();
    result = OUTLINED_FUNCTION_10_72();
    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = 0;
    *(a3 + 24) = a2;
    *(a3 + 32) = v3;
    *(a3 + 40) = result;
    return result;
  }

  result = sub_237EF9740();
  __break(1u);
  return result;
}

Swift::Void __swiftcall SparseMatrix.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_237EEC744(keepingCapacity);
  v5 = (v1 + 8);
  if ((*(v1 + 16) & 1) == 0)
  {
    v5 = v1;
  }

  v6 = *v5;
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    sub_237EEC904(v7, 0, v3, v4);
    sub_237EEC824(keepingCapacity);
    sub_237EF9580();
    sub_237EF9550();
    return;
  }

  __break(1u);
}

unint64_t sub_237EEC744(char a1)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = *(v3 + 16);

      return sub_237EEDBD4(0, v4);
    }

    else
    {
      if (*(v3 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        v6 = swift_allocObject();
        v7 = _swift_stdlib_malloc_size(v6);
        v6[2] = 0;
        v6[3] = 2 * ((v7 - 32) / 8);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      *v1 = v6;
    }
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237EEC824(char a1)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = *(v3 + 16);

      return sub_237EEDB04(0, v4);
    }

    else
    {
      if (*(v3 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398);
        v6 = swift_allocObject();
        v7 = _swift_stdlib_malloc_size(v6);
        v6[2] = 0;
        v6[3] = 2 * ((v7 - 32) / 4);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      *v1 = v6;
    }
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237EEC904(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(*v5 + 16);
  v8 = __OFADD__(v7, a1);
  result = v7 + a1;
  if (v8)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2;
  result = sub_237EEDD68(result, 1, sub_237EEF2D8);
  a4 = *v5;
  v10 = *(*v5 + 16);
  v7 = (*(*v5 + 24) >> 1) - v10;
  if (v7)
  {
    v11 = 0;
    v12 = &a4[v10];
    v13 = (*(*v5 + 24) >> 1) - v10;
    v14 = v12 + 4;
    do
    {
      if ((v7 & ~(v7 >> 63)) == v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (a1 == v11)
      {
        v13 = a1;
        goto LABEL_13;
      }

      if ((a1 & ~(a1 >> 63)) == v11)
      {
        goto LABEL_19;
      }

      v14[v11++] = v4;
    }

    while (v7 != v11);
    if (v7 < a1)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v13 <= 0)
    {
      goto LABEL_16;
    }

    v15 = a4[2];
    v8 = __OFADD__(v15, v13);
    v16 = v15 + v13;
    if (!v8)
    {
      a4[2] = v16;
      goto LABEL_16;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a1 > 0)
  {
    goto LABEL_21;
  }

  v13 = 0;
LABEL_16:
  if (v13 != v7)
  {
    goto LABEL_17;
  }

LABEL_22:
  if (v7 == a1)
  {
LABEL_17:
    *v5 = a4;
    return result;
  }

  if (v7 < a1)
  {
    v17 = a4[2];
    v18 = v7 + 1;
LABEL_25:
    v19 = a4[3];
    v20 = v19 >> 1;
    if ((v19 >> 1) < v17 + 1)
    {
      v22 = v18;
      v23 = v17;
      result = sub_237EEF2D8((v19 > 1), v17 + 1, 1, a4);
      v18 = v22;
      v17 = v23;
      a4 = result;
      v20 = *(result + 24) >> 1;
    }

    for (i = v18; ; ++i)
    {
      if (v17 >= v20)
      {
        a4[2] = v17;
        v18 = i;
        goto LABEL_25;
      }

      a4[v17 + 4] = v4;
      if (a1 == i)
      {
        break;
      }

      if (v18 < 0 || i >= a1)
      {
        goto LABEL_36;
      }

      ++v17;
    }

    a4[2] = v17 + 1;
    goto LABEL_17;
  }

LABEL_37:
  __break(1u);
  return result;
}

void SparseMatrix.subscript.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  if (*(v0 + 16))
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (*(v0 + 16))
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *(v0 + 24);
  v9 = *(v8 + 16);
  if (v7 >= v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 + 1 >= v9)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v8 + 32;
  v11 = *(v10 + 8 * v7);
  v12 = *(v10 + 8 * (v7 + 1));
  if (v11 == v12)
  {
LABEL_15:
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v12 < v11)
  {
    goto LABEL_22;
  }

  v13 = sub_237D69B04(v11, v12, *(v0 + 32));
  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return;
  }

  sub_237EECCA4(v6, v13, v14, v15, v16);
  v18 = v17;
  swift_unknownObjectRelease();
  if (v18)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38_0();

  _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
}

uint64_t sub_237EECCA4(uint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  v5 = a5 >> 1;
  while (1)
  {
    if (v5 == a4)
    {
      return 0;
    }

    if (a4 >= v5)
    {
      break;
    }

    if (*(a3 + 4 * a4) == result)
    {
      return a4;
    }

    ++a4;
  }

  __break(1u);
  return result;
}

void SparseMatrix.subscript.setter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_1_1();
  v41 = v8;
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  if (*(v0 + 16))
  {
    v13 = v4;
  }

  else
  {
    v13 = v2;
  }

  v40 = v13;
  if (*(v0 + 16))
  {
    v14 = v2;
  }

  else
  {
    v14 = v4;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = *(v0 + 24);
  v16 = *(v15 + 16);
  if (v14 >= v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v14 + 1 >= v16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v43 = v0;
  v17 = *(v15 + 32 + 8 * v14);
  v18 = *(v15 + 32 + 8 * (v14 + 1));
  if (v17 != v18)
  {
    if (v18 < v17)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = *(v43 + 32);
    v25 = sub_237D69B04(*(v15 + 32 + 8 * v14), v18, v21);
    if (v40 < 0xFFFFFFFF80000000)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v40 > 0x7FFFFFFF)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v37 = v18;
    v38 = sub_237EECCA4(v40, v25, v22, v23, v24);
    v39 = v26;
    swift_unknownObjectRelease();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_13_60();
    OUTLINED_FUNCTION_6_85();
    v27 = sub_237EF8520();
    v28 = *(v41 + 8);
    v28(v11, v6);
    if (v39)
    {
      if ((v27 & 1) == 0)
      {
        sub_237D69B04(v17, v37, v21);
        v32 = v31 >> 1;
        while (1)
        {
          if (v32 == v30)
          {
            v36 = v37;
LABEL_30:
            swift_unknownObjectRelease();
            SparseMatrix.insert(index:major:minor:value:)(v36, v14, v40, v42);
            goto LABEL_31;
          }

          if (v30 >= v32)
          {
            break;
          }

          if (*(v29 + 4 * v30) > v40)
          {
            v36 = v30;
            goto LABEL_30;
          }

          ++v30;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      if ((v27 & 1) == 0)
      {
        v33 = sub_237EF9580();
        sub_237EF94D0();
        v34 = *(v43 + 40);
        sub_237E6A31C(v38, v34);
        (*(v41 + 40))(v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v42, v6);
        nullsub_1(v33, v35);
        goto LABEL_32;
      }

      SparseMatrix.remove(index:major:)(v38, v14);
    }

LABEL_31:
    v28(v42, v6);
    goto LABEL_32;
  }

  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_60();
  OUTLINED_FUNCTION_6_85();
  v19 = sub_237EF8520();
  v20 = *(v41 + 8);
  v20(v11, v6);
  if (v19)
  {
LABEL_14:
    v20(v42, v6);
LABEL_32:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v14 < *(v15 + 16))
  {
    SparseMatrix.insert(index:major:minor:value:)(*(v15 + 32 + 8 * v14), v14, v40, v42);
    goto LABEL_14;
  }

LABEL_40:
  __break(1u);
}

void SparseMatrix.insert(index:major:minor:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_8_93();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  if (v14 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v14 > 0x7FFFFFFF)
  {
    goto LABEL_22;
  }

  if (*(*(v4 + 32) + 16) < v6)
  {
    goto LABEL_23;
  }

  if (v6 < 0)
  {
    goto LABEL_24;
  }

  sub_237EEDCB8(v6, v6, v14);
  (*(v12 + 16))(v17, a4, v10);
  sub_237EF9580();
  sub_237EF9530();
  v10 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_25;
  }

  v18 = *(v4 + 24);
  v6 = *(v18 + 16);
  if (v6 < v10)
  {
    goto LABEL_26;
  }

  if (v10 != v6)
  {
    if (v10 >= v6)
    {
      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v10 < 0)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v19 = *(v18 + 16);
        if (v10 >= v19 || v6 - 1 >= v19)
        {
          break;
        }

        OUTLINED_FUNCTION_9_73();
        while (1)
        {
          v23 = *(v18 + v22);
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            break;
          }

          *(v18 + v22) = v25;
          v22 += 8;
          if (!--v21)
          {
            *(v7 + 24) = v18;
            return;
          }
        }

        __break(1u);
LABEL_21:
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
LABEL_27:
        __break(1u);
LABEL_28:
        sub_237E641B8();
        v18 = v26;
        if (v10 < 0)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall SparseMatrix.remove(index:major:)(Swift::Int index, Swift::Int major)
{
  v5 = v2;
  OUTLINED_FUNCTION_8_93();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_237EED5F0(v14);
  sub_237EF9580();
  sub_237EF9540();
  (*(v9 + 8))(v13, v7);
  v15 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_17;
  }

  v16 = *(v2 + 24);
  v4 = *(v16 + 16);
  if (v4 < v15)
  {
    goto LABEL_18;
  }

  if (v15 != v4)
  {
    if (v15 >= v4)
    {
      goto LABEL_19;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v15 < 0)
    {
LABEL_21:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v17 = *(v16 + 16);
        if (v15 >= v17 || v4 - 1 >= v17)
        {
          break;
        }

        OUTLINED_FUNCTION_9_73();
        while (1)
        {
          v21 = *(v16 + v20);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            break;
          }

          *(v16 + v20) = v23;
          v20 += 8;
          if (!--v19)
          {
            *(v5 + 24) = v16;
            return;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        sub_237E641B8();
        v16 = v24;
        if (v15 < 0)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
  }
}

void (*SparseMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v9;
  v9[8] = a4;
  v9[9] = v4;
  v9[6] = a2;
  v9[7] = a3;
  v9[10] = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v10 + 88) = v11;
  v13 = *(v12 + 64);
  v9[12] = __swift_coroFrameAllocStub(v13);
  v9[13] = __swift_coroFrameAllocStub(v13);
  v15 = v4[1];
  v14 = v4[2];
  *v9 = *v4;
  *(v9 + 1) = v15;
  *(v9 + 2) = v14;
  SparseMatrix.subscript.getter();
  return sub_237EED54C;
}

void sub_237EED54C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 104);
  if (v4)
  {
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = OUTLINED_FUNCTION_4_102();
    v8(v7);
    OUTLINED_FUNCTION_12_64();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SparseMatrix.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

void sub_237EED5F0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EEDDE0();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_237C5EE9C((v3 + 4 * a1 + 36), v4 - 1 - a1, (v3 + 4 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

double SparseMatrix.transposed()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v11 = v1[4];
  v12 = v3;
  v10 = v1[5];
  SparseMatrix.Transpose.init(base:)(v1, v8);
  sub_237C6FDA0(&v12, &v7, &qword_27DEAD350);
  sub_237C6FDA0(&v11, &v7, &qword_27DEAED98);
  sub_237EF9580();
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(&v7, &v10);
  v5 = v8[1];
  *a1 = v8[0];
  a1[1] = v5;
  result = *&v9;
  a1[2] = v9;
  return result;
}

uint64_t static SparseMatrix.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_93();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16) || (sub_237C60C7C(*(v3 + 24), *(v2 + 24)) & 1) == 0 || (sub_237EEEB9C(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  return sub_237EF9590();
}

double sub_237EED7FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  SparseMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

double sub_237EED844@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9 = v3;
  v10 = v1[2];
  SparseMatrix.transposed()(v6);
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *&v7;
  a1[2] = v7;
  return result;
}

void (*sub_237EED8A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v9;
  v9[8] = v4;
  v9[9] = a4;
  v9[6] = a2;
  v9[7] = a3;
  v10 = *(a4 + 16);
  v9[10] = v10;
  v11 = *(v10 - 8);
  v9[11] = v11;
  v12 = *(v11 + 64);
  v9[12] = __swift_coroFrameAllocStub(v12);
  v9[13] = __swift_coroFrameAllocStub(v12);
  v14 = v4[1];
  v13 = v4[2];
  *v9 = *v4;
  *(v9 + 1) = v14;
  *(v9 + 2) = v13;
  SparseMatrix.subscript.getter();
  return sub_237EED9B0;
}

void sub_237EED9B0()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 104);
  if (v4)
  {
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = OUTLINED_FUNCTION_4_102();
    v8(v7);
    OUTLINED_FUNCTION_12_64();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SparseMatrix.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

char *sub_237EEDA60(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 4 * result);
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = sub_237C5EE9C((v10 + 4 * a2), v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_237EEDB04(uint64_t result, uint64_t a2)
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

  result = sub_237EEDD68(result, 1, sub_237EEF2F0);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_237EE2E80((v8 + 32 + 4 * a2), v9 - a2, (v8 + 32 + 4 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_237EEDBD4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_237EEDD68(result, 1, sub_237EEF2D8);
  v8 = *v2;
  if (!v7)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  v10 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_21;
  }

  v11 = (v8 + 32 + 8 * a2);
  result = v8 + 32 + 8 * v5;
  if (v5 != a2 || v11 + 8 * v10 <= result)
  {
    result = memmove(result, v11, 8 * v10);
    v9 = *(v8 + 16);
  }

  v13 = __OFADD__(v9, v7);
  v14 = v9 + v7;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_237EEDCB8(uint64_t result, uint64_t a2, int a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_237EEDD68(result, 1, sub_237D0BFC0);

  return sub_237EEDA60(v6, a2, 1, a3);
}

uint64_t sub_237EEDD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

char *sub_237EEDDF4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

uint64_t sub_237EEDE20(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_237EF89B0();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_237F07A60)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237EEDEFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_3_113()
{

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_6_85()
{

  return sub_237EF9D20();
}

uint64_t OUTLINED_FUNCTION_10_72()
{

  return sub_237EF8A90();
}

void OUTLINED_FUNCTION_12_64()
{

  SparseMatrix.subscript.setter();
}

uint64_t OUTLINED_FUNCTION_13_60()
{

  return sub_237EF9FB0();
}

uint64_t sub_237EEE03C@<X0>(uint64_t *a1@<X8>)
{
  result = LowerStrictlyTriangularMatrix.IndexedSequence.base.getter(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[5] = 0;
  a5[6] = 0;
  a5[4] = 1;

  return sub_237EF8260();
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.init(base:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[5] = 0;
  a5[6] = 0;
  a5[4] = 1;
  return result;
}

double sub_237EEE0E0@<D0>(uint64_t a1@<X8>)
{
  LowerStrictlyTriangularMatrix.IndexedSequence.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;

  sub_237EF8260();
  return v1;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v7 = &v19 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[5];
  if (v13 < v2[1])
  {
    v14 = v2[4];
    v15 = *v2;
    if (v14 < *v2)
    {
      v19 = v2[6];
      v20 = v10;
      _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
      v16 = *(TupleTypeMetadata3 + 64);
      *v7 = v14;
      *(v7 + 1) = v13;
      result = (*(v8 + 32))(&v7[v16], v12, v4);
      v2[4] = v14 + 1;
      if (v14 + 1 == v15)
      {
        v2[5] = v13 + 1;
        if (__OFADD__(v13, 2))
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v2[4] = v13 + 2;
      }

      v18 = v20;
      if (!__OFADD__(v19, 1))
      {
        v2[6] = v19 + 1;
        (*(v18 + 32))(a2, v7, TupleTypeMetadata3);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, TupleTypeMetadata3);
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, TupleTypeMetadata3);
}

uint64_t sub_237EEE4A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EEE4F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UpperStrictlyTriangularMatrix.unordered.getter()
{
  sub_237EF9580();

  swift_getWitnessTable();
  return sub_237EF8A90();
}

void UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v9);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v10 = v1;
  sub_237EF9D20();
  static UpperStrictlyTriangularMatrix.dataSize(_:_:)(v5, v3);
  v11 = sub_237EF9560();
  if (v5 < 0)
  {
    __break(1u);
LABEL_12:
    v10 = sub_237EEF308(0, v10[2] + 1, 1, v10, sub_237EEDDF4);
    goto LABEL_8;
  }

  v10 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18[1] = v11;
    v21 = MEMORY[0x277D84F90];
    sub_237EEF518(0, v5, 0);
    v12 = 0;
    v10 = v21;
    do
    {
      v19 = v12;
      sub_237EEED04(&v19, v3, &v20);
      v13 = v20;
      v21 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_237EEF518(v14 > 1, v15 + 1, 1);
        v10 = v21;
      }

      ++v12;
      v10[2] = v15 + 1;
      v10[v15 + 4] = v13;
    }

    while (v5 != v12);
  }

  v8 = sub_237EF9510();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = v10[2];
  v16 = v10[3];
  if (v17 >= v16 >> 1)
  {
    v10 = sub_237EEF308((v16 > 1), v17 + 1, 1, v10, sub_237EEDDF4);
  }

  v10[2] = v17 + 1;
  v10[v17 + 4] = v8;
  OUTLINED_FUNCTION_38_0();
}

void UpperStrictlyTriangularMatrix.subscript.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v4);
  UpperStrictlyTriangularMatrix.checkBounds(row:column:)(v3, v1);
  if (v3 >= v1)
  {
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    OUTLINED_FUNCTION_38_0();
  }

  else
  {
    UpperStrictlyTriangularMatrix.dataIndex(_:_:)(v3, v1);
    OUTLINED_FUNCTION_38_0();

    _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
  }
}

uint64_t UpperStrictlyTriangularMatrix.subscript.setter(uint64_t a1, Swift::Int row, Swift::Int column, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  UpperStrictlyTriangularMatrix.checkBounds(row:column:)(row, column);
  if (row >= column)
  {
    OUTLINED_FUNCTION_19_51();
    result = sub_237EF9740();
    __break(1u);
  }

  else
  {
    v10 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(row, column);
    sub_237EF9580();
    sub_237EF94D0();
    v11 = *(v5 + 16);
    sub_237E6A31C(v10, v11);
    OUTLINED_FUNCTION_22_3();
    v13 = *(v12 + 40);
    v14 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10;

    return v13(v14, a1, v9);
  }

  return result;
}

uint64_t static UpperStrictlyTriangularMatrix.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 == a5 && a2 == a6;
  if (!v8 || (sub_237EF9590() & 1) == 0)
  {
    return 0;
  }

  return sub_237C60C7C(a4, a8);
}

uint64_t sub_237EEEB9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.storage.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.rowStartIndices.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static UpperStrictlyTriangularMatrix.dataSize(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2 * result;
  if ((v2 * result) >> 64 != (v2 * result) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((result * v4) >> 64 != (result * v4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result * v4 / 2;
  result = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_237EEED04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  result = static UpperStrictlyTriangularMatrix.dataSize(_:_:)(*a1, a2);
  if (__OFSUB__(result, v4))
  {
    __break(1u);
  }

  else
  {
    *a3 = result - v4;
  }

  return result;
}

Swift::Void __swiftcall UpperStrictlyTriangularMatrix.checkBounds(row:column:)(Swift::Int row, Swift::Int column)
{
  if (row < 0 || row >= v2 || column < 0 || column >= v3)
  {
    OUTLINED_FUNCTION_19_51();
    sub_237EF9740();
    __break(1u);
  }
}

Swift::Int __swiftcall UpperStrictlyTriangularMatrix.dataIndex(_:_:)(Swift::Int result, Swift::Int a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v2 + 8 * result + 32);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void (*UpperStrictlyTriangularMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v10 = *(a4 + 16);
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237EEEF4C;
}

void sub_237EEEF4C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = (*v0)[6];
  v3 = (*v0)[7];
  if (v4)
  {
    v5 = v1[4];
    v6 = v1[5];
    v7 = OUTLINED_FUNCTION_0_116();
    v8(v7);
    OUTLINED_FUNCTION_4_103();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    UpperStrictlyTriangularMatrix.subscript.setter((*v0)[7], *v1, v1[1], v1[2]);
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

uint64_t UpperStrictlyTriangularMatrix.transposed()()
{
  v0 = LowerStrictlyTriangularMatrix.init(base:)();

  sub_237EF8260();
  return v0;
}

void sub_237EEF058(void *a1@<X8>)
{
  UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_237EEF08C@<X0>(uint64_t *a1@<X8>)
{
  result = UpperStrictlyTriangularMatrix.transposed()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void (*sub_237EEF0E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = v4;
  v9[3] = a4;
  *v9 = a2;
  v9[1] = a3;
  v10 = *(a4 + 16);
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  UpperStrictlyTriangularMatrix.subscript.getter();
  return sub_237EEF1EC;
}

void sub_237EEF1EC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *v0;
  v2 = (*v0)[6];
  v3 = (*v0)[7];
  if (v4)
  {
    v5 = v1[4];
    v6 = v1[5];
    v7 = OUTLINED_FUNCTION_0_116();
    v8(v7);
    OUTLINED_FUNCTION_4_103();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    UpperStrictlyTriangularMatrix.subscript.setter((*v0)[7], *v1, v1[1], v1[3]);
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_38_0();

  free(v9);
}

void *sub_237EEF308(void *result, int64_t a2, char a3, void *a4, void (*a5)(void *, int64_t, void *))
{
  v7 = result;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_8;
  }

  v8 = a4[3];
  v9 = v8 >> 1;
  if ((v8 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v9 = a2;
    }

LABEL_8:
    v10 = a4[2];
    if (v9 <= v10)
    {
      v11 = a4[2];
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 8);
      if (v7)
      {
LABEL_13:
        a5(a4 + 4, v10, v12 + 4);
        a4[2] = 0;
LABEL_16:

        return v12;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v12 + 4, a4 + 4, 8 * v10);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_237EEF410(void *result, int64_t a2, char a3, void *a4, void (*a5)(void *, int64_t, void *))
{
  v7 = result;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_8;
  }

  v8 = a4[3];
  v9 = v8 >> 1;
  if ((v8 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v9 = a2;
    }

LABEL_8:
    v10 = a4[2];
    if (v9 <= v10)
    {
      v11 = a4[2];
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 4);
      if (v7)
      {
LABEL_13:
        a5(a4 + 4, v10, v12 + 4);
        a4[2] = 0;
LABEL_16:

        return v12;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v12 + 4, a4 + 4, 4 * v10);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EEF570()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_4_103()
{

  return UpperStrictlyTriangularMatrix.subscript.setter(v0, v3, v2, v1);
}

__n128 SparseMatrix.Transpose.init(base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2 & 1;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

__n128 SparseMatrix.Transpose.base.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[5];

  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v5 & 1;
  result = *(a1 + 3);
  *(v1 + 24) = result;
  *(v1 + 40) = v6;
  return result;
}

uint64_t SparseMatrix.Transpose.count.getter()
{
  OUTLINED_FUNCTION_1_129();
  type metadata accessor for SparseMatrix();
  return SparseMatrix.count.getter();
}

double SparseMatrix.Transpose.init(rowCount:columnCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  SparseMatrix.init(rowCount:columnCount:)(a2, a1, a3, &v9);
  v5 = v10;
  v6 = v12;
  result = *&v9;
  v8 = v11;
  *a4 = v9;
  *(a4 + 16) = v5;
  *(a4 + 24) = v8;
  *(a4 + 40) = v6;
  return result;
}

void (*SparseMatrix.Transpose.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v7;
  v7[6] = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v8 + 56) = v9;
  v7[8] = __swift_coroFrameAllocStub(*(v10 + 64));
  v11 = v4[1];
  *v7 = *v4;
  *(v7 + 1) = v11;
  *(v7 + 2) = v4[2];
  type metadata accessor for SparseMatrix();
  SparseMatrix.subscript.getter();
  return sub_237EEF85C;
}

void sub_237EEF85C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*(*a1 + 56) + 8))(v2, *(*a1 + 48));
  free(v2);

  free(v1);
}

void (*SparseMatrix.Transpose.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v9;
  v9[7] = a3;
  v9[8] = v4;
  v9[6] = a2;
  v9[9] = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v10 + 80) = v11;
  v13 = *(v12 + 64);
  v9[11] = __swift_coroFrameAllocStub(v13);
  v9[12] = __swift_coroFrameAllocStub(v13);
  v15 = v4[1];
  v14 = v4[2];
  *v9 = *v4;
  *(v9 + 1) = v15;
  *(v9 + 2) = v14;
  v9[13] = type metadata accessor for SparseMatrix();
  SparseMatrix.subscript.getter();
  return sub_237EEF9D4;
}

void sub_237EEF9D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[9];
    v6 = v2[10];
    (*(v6 + 16))(*(*a1 + 88), v3, v5);
    SparseMatrix.subscript.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SparseMatrix.subscript.setter();
  }

  free(v3);
  free(v4);

  free(v2);
}

void SparseMatrix.Transpose.subscript.getter()
{
  OUTLINED_FUNCTION_1_129();
  type metadata accessor for SparseMatrix();
  SparseMatrix.subscript.getter();
}

uint64_t SparseMatrix.Transpose.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a1;
  v5 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[1];
  v17 = *v4;
  v18 = v11;
  v19 = v4[2];
  type metadata accessor for SparseMatrix();
  SparseMatrix.subscript.getter();
  v12 = *(v7 + 8);
  v12(v10, v5);
  v13 = v16;
  (*(v7 + 16))(v10, v16, v5);
  SparseMatrix.subscript.setter();
  return (v12)(v13, v5);
}

uint64_t sub_237EEFC78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  sub_237EF8260();
  sub_237EF8260();
}

uint64_t static SparseMatrix.Transpose.__derived_struct_equals(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return static SparseMatrix.__derived_struct_equals(_:_:)(v6, v5) & 1;
}

double sub_237EEFD4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  SparseMatrix.Transpose.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

double sub_237EEFD94@<D0>(_OWORD *a1@<X8>)
{
  SparseMatrix.Transpose.transposed()(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_237EEFE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a1;
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[1];
  v15 = *v4;
  v16 = v9;
  v17 = v4[2];
  type metadata accessor for SparseMatrix();
  SparseMatrix.subscript.getter();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = v14;
  (*(v6 + 16))(v8, v14, v5);
  SparseMatrix.subscript.setter();
  return (v10)(v11, v5);
}

void (*sub_237EEFFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = SparseMatrix.Transpose.subscript.modify(v8, a2, a3, a4);
  return sub_237C803C0;
}

uint64_t sub_237EF0030()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void DenseMatrix.subscript.read()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  *v12 = v13;
  v12[1] = v14;
  v16 = *(v15 + 64);
  *(v11 + 16) = __swift_coroFrameAllocStub(v16);
  *(v11 + 24) = __swift_coroFrameAllocStub(v16);
  if (v1)
  {
    if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
    {
      if (!__OFADD__(v7 * v5, v9))
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v9 * v3) >> 64 != (v9 * v3) >> 63)
  {
    goto LABEL_9;
  }

  if (!__OFADD__(v9 * v3, v7))
  {
LABEL_7:
    _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_11:
  __break(1u);
}

void (*DenseMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  result = __swift_coroFrameAllocStub(0x30uLL);
  v8 = result;
  *a1 = result;
  if (v3[2])
  {
    v9 = a3 * *v3;
    if ((a3 * *v3) >> 64 == v9 >> 63)
    {
      if (!__OFADD__(v9, a2))
      {
        sub_237EF9580();
        *(v8 + 5) = OUTLINED_FUNCTION_54_11();
        return sub_237E9CD34;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v3[1];
  if ((a2 * v11) >> 64 != (a2 * v11) >> 63)
  {
    goto LABEL_10;
  }

  if (!__OFADD__(a2 * v11, a3))
  {
    sub_237EF9580();
    *(v8 + 4) = OUTLINED_FUNCTION_54_11();
    return sub_237D8212C;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1)
{

  OUTLINED_FUNCTION_56_19();
  return OUTLINED_FUNCTION_14_73(v1, v2, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t DenseMatrix.init(rowCount:columnCount:layout:repeating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  result = (*(v10 + 16))(v13 - v12, v14, v15);
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    sub_237EF9560();
    (*(v10 + 8))(a4, a5);
    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.withUnsafeMatrixPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a3;
  v14[6] = a4;
  v15 = a5 & 1;
  v16 = a6;
  v17 = a1;
  v18 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC8430(sub_237EF29C8, v14, a6, a7, a8, v12, MEMORY[0x277D84950], &v19);
}

void *DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = (v4 + 8);
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (*(v4 + 16))
  {
    v8 = v4;
  }

  v11 = *v8;
  sub_237EF9580();
  sub_237EF94D0();
  v12 = *(v4 + 24);
  v13 = *(v12 + 16);
  v14 = v12 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80));
  v17[0] = v14;
  v17[1] = v13;
  sub_237EF2A0C(v17, v5, v11, a1, a2, v10, a4, v9, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC94F0(v17, v14, v13);
}

uint64_t DenseMatrix.count.getter(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.init(rowCount:columnCount:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_32();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  result = sub_237EF9D20();
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    sub_237EF9560();
    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DenseMatrix.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a1 == a5 && a2 == a6;
  if (!v7 || ((a3 ^ a7) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_32();
  return sub_237EF9590();
}

uint64_t static DenseMatrix.+ infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_19_54();
  OUTLINED_FUNCTION_13_58(v0, v1, v2, v3, v4, v5, v6, v7, v17);
  static DenseMatrix.+= infix(_:_:)();
  return OUTLINED_FUNCTION_14_73(v8, v9, v10, v11, v12, v13, v14, v15, v18);
}

uint64_t static DenseMatrix.- infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_19_54();
  OUTLINED_FUNCTION_13_58(v0, v1, v2, v3, v4, v5, v6, v7, v17);
  static DenseMatrix.-= infix(_:_:)();
  return OUTLINED_FUNCTION_14_73(v8, v9, v10, v11, v12, v13, v14, v15, v18);
}

void static DenseMatrix.*= infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0[1];
  v2 = *v0 * v1;
  if ((*v0 * v1) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v2)
  {
    sub_237EF9580();
    sub_237EF94D0();
    v3 = OUTLINED_FUNCTION_34_24();
    nullsub_1(v3, v4);
    OUTLINED_FUNCTION_34_24();
    sub_237EF94D0();
    v5 = OUTLINED_FUNCTION_34_24();
    nullsub_1(v5, v6);
    for (i = 0; i != v2; ++i)
    {
      OUTLINED_FUNCTION_34_24();
      sub_237EF94D0();
      OUTLINED_FUNCTION_62_2();
      sub_237E6A31C(v8, v9);
      OUTLINED_FUNCTION_23_43();
      sub_237EF8D40();
      v10 = OUTLINED_FUNCTION_34_24();
      nullsub_1(v10, v11);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2)
{

  OUTLINED_FUNCTION_56_19();
  return OUTLINED_FUNCTION_14_73(v2, v3, v4, v5, v6, v7, v8, v9, a2);
}

void static DenseMatrix./ infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v18[1] = v3;
  v18[2] = v2;
  v18[3] = v4;
  v19 = v5;
  v20 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  swift_getAssociatedConformanceWitness();

  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF8330();
  v17 = *(v9 + 8);
  v17(v13, v1);
  static DenseMatrix.*= infix(_:_:)();
  v17(v16, v1);
  OUTLINED_FUNCTION_38_0();
}

void static DenseMatrix.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  LODWORD(v24) = v23;
  v26 = v25;
  v28 = v27;
  v98 = v29;
  v105 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  v91 = v42;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  v106 = v44;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  v95 = &v86 - v46;
  v96 = v47;
  OUTLINED_FUNCTION_31_32();
  v90 = v48;
  v94 = *(v48 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  v92 = &v86 - v50;
  if (v32 != v28)
  {
    goto LABEL_22;
  }

  v51 = v32;
  if (qword_27DEB6C70 != -1)
  {
    goto LABEL_19;
  }

LABEL_3:
  v52 = sub_237EF7DB0();
  __swift_project_value_buffer(v52, static Logger.linearAlgebra);
  v53 = sub_237EF7D90();
  v54 = sub_237EF8F80();
  v55 = os_log_type_enabled(v53, v54);
  v102 = v34;
  v99 = v40;
  v100 = v22;
  v108 = v36;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v110[0] = v57;
    *v56 = 136315138;
    v58 = sub_237EFA220();
    v60 = sub_237DAFA64(v58, v59, v110);
    v34 = v102;

    *(v56 + 4) = v60;
    _os_log_impl(&dword_237C51000, v53, v54, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_105_2();
  }

  v40 = v95;
  v22 = v94;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_49_18();
  v89 = v61;
  sub_237EF9FB0();
  sub_237EF9D20();
  v62 = OUTLINED_FUNCTION_33();
  v110[0] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v34, v26, v62 & 1, v40, a21);
  v110[1] = v63;
  v111 = v64;
  v112 = v65;
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (!v34)
    {
LABEL_17:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if (v26 < 0)
    {
      goto LABEL_21;
    }

    v97 = v24;
    v36 = 0;
    v88 = v108 + 16;
    v87 = (v108 + 24);
    LODWORD(v24) = v106;
    v103 = v26;
    v104 = (v108 + 8);
    while (1)
    {
      if (v26)
      {
        if (v51 < 0)
        {
          __break(1u);
LABEL_19:
          OUTLINED_FUNCTION_0_109();
          goto LABEL_3;
        }

        v66 = 0;
        v101 = v36;
        do
        {
          v107 = v66;
          sub_237EF9FB0();
          sub_237EF9D20();
          v67 = v36;
          v40 = v91;
          v68 = v95;
          v34 = v88;
          if (v51)
          {
            v69 = 0;
            do
            {
              v108 = v69 + 1;
              DenseMatrix.subscript.read();
              v71 = v70;
              v72 = v51;
              v73 = *v34;
              (*v34)(v40);
              v71(v109, 0);
              DenseMatrix.subscript.read();
              v75 = v74;
              v76 = v34;
              v77 = v68;
              v78 = v40;
              v79 = v99;
              v73(v99);
              v80 = v72;
              v75(v109, 0);
              sub_237EF8D30();
              v81 = *v104;
              v82 = v79;
              v40 = v78;
              v68 = v77;
              v34 = v76;
              (*v104)(v82, a21);
              v81(v40, a21);
              sub_237EF9770();
              v81(v68, a21);
              v67 = v101;
              v69 = v108;
              v51 = v80;
            }

            while (v80 != v108);
          }

          v83 = v107;
          v22 = v107 + 1;
          type metadata accessor for DenseMatrix();
          v84 = DenseMatrix.subscript.modify(v109, v67, v83);
          v24 = v106;
          (*v87)(v85, v106, a21);
          (v84)(v109, 0);
          (*v104)(v24, a21);
          v66 = v22;
          v36 = v67;
          v26 = v103;
        }

        while (v22 != v103);
      }

      if (++v36 == v102)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_8_94();
  v86 = 560;
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53();
  __break(1u);
}

uint64_t DenseMatrix.transposed()()
{
  DenseMatrix.Transpose.init(base:)();
  v1 = v0;

  return v1;
}

uint64_t static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_46_22(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    OUTLINED_FUNCTION_24_42();
    sub_237E61300(v8, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643B4();
    }

    OUTLINED_FUNCTION_0_111();
    OUTLINED_FUNCTION_15_57();

    OUTLINED_FUNCTION_52_16();
    UnsafeMutableMatrixPointer<A>.addProductFloat(_:transposed:_:transposed:scaledBy:)(v9, v10, v11, v12);

    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_46_22(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    OUTLINED_FUNCTION_24_42();
    sub_237E613EC(v8, 0.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC();
    }

    OUTLINED_FUNCTION_0_111();
    OUTLINED_FUNCTION_15_57();

    OUTLINED_FUNCTION_52_16();
    UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v9, v10, v11, v12);

    return OUTLINED_FUNCTION_11_19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.leadingDimension.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a2;
  }

  return result;
}

void DenseMatrix.init<A>(rowCount:columnCount:layout:scalars:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v9 + 16))(v12 - v11, v13, v14);
  sub_237EF8A90();

  v15 = sub_237EF9510();
  if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
  {
    if (v15 == v7 * v5)
    {
      (*(v9 + 8))(v3, v1);

      OUTLINED_FUNCTION_38_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000026, 0x8000000237F025A0);

  v16 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v16);

  MEMORY[0x2383E0710](0x746F672074756220, 0xE900000000000020);
  OUTLINED_FUNCTION_11_19();
  sub_237EF9510();

  v17 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v17);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  sub_237EF9740();
  __break(1u);
}

uint64_t DenseMatrix.init(rowCount:columnCount:layout:initializingWith:)(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    MEMORY[0x28223BE20](result);
    sub_237CC78A4();
    if (!v2)
    {
      return a1;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.subscript.getter@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  DenseMatrix.subscript.read();
  v5 = v4;
  (*(*(a1 - 8) + 16))(a2);
  return v5(v7, 0);
}

Swift::Void __swiftcall DenseMatrix.transpose()()
{
  v1 = *v0;
  if (*v0 == v0[1])
  {
    if (v1 < 0)
    {
LABEL_25:
      __break(1u);
      return;
    }

    if (v1)
    {
      v2 = 0;
LABEL_5:
      v3 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v1 < v3)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v3 != v1)
      {
        if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        if (v3 >= v1)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v4 = v2 + 1;
        while (!__OFADD__(v2 * v1, v4))
        {
          if ((v4 * v1) >> 64 != (v4 * v1) >> 63)
          {
            goto LABEL_19;
          }

          if (__OFADD__(v4 * v1, v2))
          {
            goto LABEL_20;
          }

          ++v4;
          sub_237EF9580();
          swift_getWitnessTable();
          sub_237EF8480();
          if (v1 == v4)
          {
            ++v2;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }
  }

  else
  {
    DenseMatrix._transposed()();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    *v0 = v6;
    v0[1] = v8;
    *(v0 + 16) = v10 & 1;
    v0[3] = v12;
  }
}

void DenseMatrix._transposed()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v26 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_31_32();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_33_27();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_49_18();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_38_23();
  sub_237EF9D20();
  v29[4] = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v5, v7, v3 & 1, v12, v1);
  v29[5] = v14;
  v30 = v15;
  v31 = v16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = v7;
    if (!v7)
    {
LABEL_9:
      OUTLINED_FUNCTION_38_0();
      return;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v28 = v12;
      v18 = 0;
      v24 = (v26 + 16);
      v27 = (v26 + 40);
      v25 = v5;
      do
      {
        if (v5)
        {
          v19 = 0;
          do
          {
            DenseMatrix.subscript.read();
            v21 = v20;
            (*v24)(v28);
            v21(v29, 0);
            type metadata accessor for DenseMatrix();
            v22 = DenseMatrix.subscript.modify(v29, v19, v18);
            (*v27)(v23, v28, v1);
            (v22)(v29, 0);
            v5 = v25;
            v17 = v7;
            ++v19;
          }

          while (v25 != v19);
        }

        ++v18;
      }

      while (v18 != v17);
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_237EF2434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v21 = a1;
  v22 = v7;
  MEMORY[0x28223BE20](a1);
  v20 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v11 = 0;
    v12 = 0;
    v19 = v22 + 40;
    v16 = a2;
    v17 = a3;
    while (1)
    {
      v18 = v12;
      if (a3)
      {
        break;
      }

LABEL_9:
      a3 = v17;
      v12 = v18 + 1;
      if (v18 + 1 == v16)
      {
        return;
      }
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    while (1)
    {
      v13 = *v21;
      sub_237EF9FA0();
      v14 = v20;
      sub_237EF9CE0();
      (*(v22 + 40))(v13 + *(v22 + 72) * v11, v14, a4);
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v11;
      --v12;
      if (!--a3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_237EF2668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = DenseMatrix.init(rowCount:columnCount:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  return result;
}

uint64_t sub_237EF26A0@<X0>(uint64_t a1@<X8>)
{
  result = DenseMatrix.transposed()();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_237EF26E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  DenseMatrix.subscript.read();
  v5 = v4;
  (*(*(v3 - 8) + 16))(a2);
  return v5(v7, 0);
}

uint64_t sub_237EF278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DenseMatrix.subscript.modify(v11, a2, a3);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v9, a1, v7);
  (v6)(v11, 0);
  return (*(v8 + 8))(a1, v7);
}

void (*sub_237EF2850(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = DenseMatrix.subscript.modify(v6, a2, a3);
  return sub_237C803C0;
}

uint64_t sub_237EF291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(_BYTE *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  result = sub_237EF8530();
  if (result)
  {
    if (a5)
    {
      v18 = a3;
    }

    else
    {
      v18 = a4;
    }

    UnsafeMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)(result, a3, a4, v18, a5 & 1, v19);
    result = a7(v19);
    if (v12)
    {
      *a12 = v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EF2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_237EF9140();
  if (result)
  {
    UnsafeMutableMatrixPointer.init(start:rowCount:columnCount:leadingDimension:layout:)(result, *a2, *(a2 + 8), a3, *(a2 + 16), v14);
    result = a4(v14);
    if (v9)
    {
      *a9 = v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237EF2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = sub_237EF8530();
  if (a5)
  {
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((a7 * a4) >> 64 != (a7 * a4) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  a3 = 1;
  a7 *= a4;
LABEL_7:
  v20 = UnsafeVectorPointer.init(start:count:stride:)(result + *(*(a10 - 8) + 72) * a7, a4, a3, a10);
  result = a8(v20);
  if (v13)
  {
    *a13 = v13;
  }

  return result;
}

uint64_t sub_237EF2C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = *(a2 + 16);
  result = sub_237EF9140();
  if (v14)
  {
    if (result)
    {
      v16 = result + *(*(a6 - 8) + 72) * a3;
      v18 = *a2;
      v17 = *(a2 + 8);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v17 = *(a2 + 8);
  if ((a3 * v17) >> 64 != (a3 * v17) >> 63)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = result + *(*(a6 - 8) + 72) * a3 * v17;
  v18 = 1;
LABEL_7:
  v19 = UnsafeMutableVectorPointer.init(start:count:stride:)(v16, v17, v18, a6);
  result = a4(v19);
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

uint64_t sub_237EF2D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[2] = a8;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a4;
  v15[6] = a5;
  v16 = a6 & 1;
  v17 = a7;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC8430(a11, v15, a7, a8, a9, v13, MEMORY[0x277D84950], &v21);
}

void *sub_237EF2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *))
{
  v7 = v6;
  v12 = *(a4 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v13 = *(v6 + 24);
  v14 = *(v13 + 16);
  v15 = v13 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
  v19[0] = v15;
  v19[1] = v14;
  a6(v19, v7, a1, a2, a3, v12, a5, *(a4 + 24), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC94F0(v19, v15, v14);
}

void static DenseMatrix<>.*= infix(_:_:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237EE2E84();
    v2 = v4;
    *(a1 + 24) = v4;
  }

  OUTLINED_FUNCTION_50_19();
  if (!v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v6 != v7)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_41_20();
    *(a1 + 24) = v2;
    return;
  }

LABEL_10:
  __break(1u);
}

{
  v2 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_237E9D898(v2);
    *(a1 + 24) = v2;
  }

  OUTLINED_FUNCTION_50_19();
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v5 != v6)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_40_21();
    *(a1 + 24) = v2;
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix<>.* infix(_:_:)()
{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EE2E84();
  }

  OUTLINED_FUNCTION_4_104();
  if (!v0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v1 != v2)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v1 ^ v2 | v0)
  {
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EE2E84();
  }

  OUTLINED_FUNCTION_4_104();
  if (!v0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v1 != v2)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v1 ^ v2 | v0)
  {
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E9D898(v0);
  }

  OUTLINED_FUNCTION_4_104();
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v2 != v3)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v2 ^ v3 | v1)
  {
    OUTLINED_FUNCTION_40_21();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E9D898(v0);
  }

  OUTLINED_FUNCTION_4_104();
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v2 != v3)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v2 ^ v3 | v1)
  {
    OUTLINED_FUNCTION_40_21();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix<>./ infix(_:_:)()
{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237EE2E84();
  }

  OUTLINED_FUNCTION_4_104();
  if (!v0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v1 != v2)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v1 ^ v2 | v0)
  {
    cblas_sscal_NEWLAPACK();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_130();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E9D898(v0);
  }

  OUTLINED_FUNCTION_4_104();
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_64();
  if (v2 != v3)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_63();
  if (v2 ^ v3 | v1)
  {
    cblas_dscal_NEWLAPACK();
    OUTLINED_FUNCTION_0_117();
    return;
  }

LABEL_10:
  __break(1u);
}

void static DenseMatrix<>.* infix(_:_:)(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_37_30();
    if (v3)
    {
      v4 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v4);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    for (i = 0; v1 != i; ++i)
    {
      v6 = v2 + 4 * i;
      *(v6 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_37_30();
    if (v3)
    {
      v4 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v4);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    for (i = 0; v1 != i; ++i)
    {
      v6 = v2 + 8 * i;
      *(v6 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_10_71();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

void static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_35_28();
    if (v5)
    {
      v6 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v6);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    for (i = 0; v3 != i; ++i)
    {
      v8 = v4 + 4 * i;
      *(v8 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductFloat(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_53();
    OUTLINED_FUNCTION_35_28();
    if (v5)
    {
      v6 = sub_237EF89B0();
      OUTLINED_FUNCTION_17_63(v6);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    for (i = 0; v3 != i; ++i)
    {
      v8 = v4 + 8 * i;
      *(v8 + 32) = 0;
    }

    OUTLINED_FUNCTION_4_99();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_74();
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();

    OUTLINED_FUNCTION_2_128();
    OUTLINED_FUNCTION_20_51();
  }
}

void static DenseMatrix.* infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v68 = v8;
  v10 = v9;
  v74 = v11;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (v60 - v19);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v73 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  v25 = v60 - v24;
  OUTLINED_FUNCTION_31_32();
  v67 = v26;
  v63 = *(v26 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v61 = v60 - v28;
  OUTLINED_FUNCTION_33_27();
  v29 = v1;
  if (DenseVector.count.getter() == v10)
  {
    v60[1] = v17;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v76 = v13;
      v30 = sub_237EF7DB0();
      __swift_project_value_buffer(v30, static Logger.linearAlgebra);
      v31 = sub_237EF7D90();
      v32 = sub_237EF8F80();
      v33 = os_log_type_enabled(v31, v32);
      v60[0] = v20;
      v65 = v25;
      v69 = v7;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        v35 = v10;
        v36 = v77[0];
        *v34 = 136315138;
        v37 = sub_237EFA220();
        v39 = sub_237DAFA64(v37, v38, v77);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_237C51000, v31, v32, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v10 = v35;
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_49_18();
      v60[3] = v40;
      sub_237EF9FB0();
      OUTLINED_FUNCTION_38_23();
      sub_237EF9D20();
      v41 = v74;
      OUTLINED_FUNCTION_62_2();
      v77[4] = DenseVector.init(repeating:count:)(v42, v43, v44);
      if ((v41 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v41)
      {
LABEL_15:
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v66 = v10;
      v25 = 0;
      v20 = (v76 + 16);
      v60[2] = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v13 = v73;
      v7 = v74;
      v75 = (v76 + 16);
      v10 = v29;
      v71 = v29;
      v72 = v5;
      v64 = (v76 + 8);
      while (1)
      {
        v29 = v61;
        sub_237EF9FB0();
        OUTLINED_FUNCTION_38_23();
        sub_237EF9D20();
        OUTLINED_FUNCTION_33_27();
        v45 = DenseVector.count.getter();
        if (v45 < 0)
        {
          break;
        }

        if (v45)
        {
          v46 = 0;
          v47 = v60[0];
          v76 = v25;
          v49 = v64;
          v48 = v65;
          v70 = v45;
          do
          {
            DenseMatrix.subscript.read();
            v51 = v50;
            v52 = *v75;
            (*v75)(v47);
            v51(v77, 0);
            DenseVector.subscript.getter(v46, v72, v3, v71);
            OUTLINED_FUNCTION_23_43();
            sub_237EF8D30();
            v53 = *v49;
            v54 = OUTLINED_FUNCTION_33_27();
            v53(v54);
            (v53)(v47, v3);
            sub_237EF9770();
            (v53)(v48, v3);
            ++v46;
          }

          while (v70 != v46);
          v10 = v71;
          v55 = v72;
          v13 = v73;
          v7 = v74;
          v25 = v76;
        }

        else
        {
          v55 = v5;
          v52 = *v20;
        }

        v56 = v25 + 1;
        v57 = v25;
        v58 = v65;
        (v52)(v65, v13, v3);
        OUTLINED_FUNCTION_43_3();
        v59 = type metadata accessor for DenseVector();
        DenseVector.subscript.setter(v58, v57, v59);
        (*v64)(v13, v3);
        v25 = v56;
        v20 = v75;
        v5 = v55;
        if (v56 == v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      OUTLINED_FUNCTION_0_109();
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_8_94();
  v60[0] = 582;
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53();
  __break(1u);
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_1();
  v73 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v58 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v67 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  v71 = v58 - v25;
  OUTLINED_FUNCTION_31_32();
  v62 = v26;
  v58[4] = *(v26 + 16);
  v58[3] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v58[2] = v58 - v28;
  v29 = v3;
  v30 = DenseVector.count.getter();
  v65 = v11;
  if (v30 == v11)
  {
    v64 = v18;
    if (qword_27DEB6C70 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v31 = sub_237EF7DB0();
      __swift_project_value_buffer(v31, static Logger.linearAlgebra);
      v32 = sub_237EF7D90();
      v33 = sub_237EF8F80();
      v34 = os_log_type_enabled(v32, v33);
      v63 = v21;
      if (v34)
      {
        v35 = swift_slowAlloc();
        LODWORD(v72) = v33;
        v36 = v35;
        v70 = swift_slowAlloc();
        v74[0] = v70;
        *v36 = 136315138;
        v21 = v29;
        v37 = sub_237EFA220();
        v39 = sub_237DAFA64(v37, v38, v74);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_237C51000, v32, v72, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_105_2();
        OUTLINED_FUNCTION_105_2();
      }

      else
      {

        v21 = v29;
      }

      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_49_18();
      v58[1] = v40;
      sub_237EF9FB0();
      v41 = v71;
      OUTLINED_FUNCTION_38_23();
      sub_237EF9D20();
      v74[4] = DenseVector.init(repeating:count:)(v41, v9, v21);
      if (v9 < 0)
      {
        break;
      }

      if (!v9)
      {
LABEL_16:
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v42 = 0;
      v29 = (v73 + 16);
      v58[0] = (v73 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v43 = v67;
      v69 = (v73 + 8);
      v70 = (v73 + 16);
      v68 = v13;
      v61 = v9;
      v60 = v7;
      v59 = v5;
      while (1)
      {
        v72 = v42;
        sub_237EF9FB0();
        OUTLINED_FUNCTION_38_23();
        sub_237EF9D20();
        v44 = DenseVector.count.getter();
        if (v44 < 0)
        {
          break;
        }

        if (v44)
        {
          v45 = 0;
          v66 = v44;
          do
          {
            v73 = v45 + 1;
            v46 = v63;
            DenseVector.subscript.getter(v45, v68, v21, v1);
            DenseMatrix.subscript.read();
            v48 = v47;
            v49 = *v70;
            v50 = v64;
            (*v70)(v64);
            v48(v74, 0);
            v51 = v71;
            OUTLINED_FUNCTION_23_43();
            sub_237EF8D30();
            v52 = v1;
            v53 = *v69;
            (*v69)(v50, v21);
            v53(v46, v21);
            sub_237EF9770();
            v53(v51, v21);
            v1 = v52;
            v5 = v59;
            v7 = v60;
            v9 = v61;
            v45 = v73;
          }

          while (v66 != v73);
          v43 = v67;
        }

        else
        {
          v49 = *v29;
        }

        v54 = v71;
        v55 = v72;
        v56 = v72 + 1;
        v49(v71, v43, v21);
        OUTLINED_FUNCTION_43_3();
        v57 = type metadata accessor for DenseVector();
        DenseVector.subscript.setter(v54, v55, v57);
        (*v69)(v43, v21);
        v42 = v55 + 1;
        v29 = v70;
        v13 = v68;
        if (v56 == v9)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      OUTLINED_FUNCTION_0_109();
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_8_94();
  v58[0] = 602;
  OUTLINED_FUNCTION_19_51();
  OUTLINED_FUNCTION_18_53();
  __break(1u);
}

uint64_t sub_237EF4280()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_15_57()
{
}

uint64_t OUTLINED_FUNCTION_18_53()
{

  return sub_237EF9740();
}

uint64_t OUTLINED_FUNCTION_19_54()
{
}

uint64_t OUTLINED_FUNCTION_40_21()
{

  return cblas_dscal_NEWLAPACK();
}

uint64_t OUTLINED_FUNCTION_41_20()
{

  return cblas_sscal_NEWLAPACK();
}

uint64_t OUTLINED_FUNCTION_54_11()
{

  return sub_237EF95B0();
}

void OUTLINED_FUNCTION_56_19()
{

  static DenseMatrix.*= infix(_:_:)();
}

uint64_t UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 != a2)
  {
    goto LABEL_19;
  }

  if (a5 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000041);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    v10 = OUTLINED_FUNCTION_14_70();
    __break(1u);
    return MEMORY[0x282108B60](v10, v11);
  }

  v10 = a5;
  v11 = a1;

  return MEMORY[0x282108B60](v10, v11);
}

{
  if (a5 != a2)
  {
    goto LABEL_19;
  }

  if (a5 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000041);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    v10 = OUTLINED_FUNCTION_14_70();
    __break(1u);
    return MEMORY[0x282108850](v10, v11);
  }

  v10 = a5;
  v11 = a1;

  return MEMORY[0x282108850](v10, v11);
}

uint64_t UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v4 = __OFSUB__(a3, 0xFFFFFFFF80000000);
    v3 = a3 + 0x80000000 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  if (v3 != v4)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return cblas_sscal_NEWLAPACK();
  }

LABEL_10:
  __break(1u);
  return result;
}

{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v4 = __OFSUB__(a3, 0xFFFFFFFF80000000);
    v3 = a3 + 0x80000000 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  if (v3 != v4)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return cblas_dscal_NEWLAPACK();
  }

LABEL_10:
  __break(1u);
  return result;
}

void UnsafeVectorPointer<A>.squaredMagnitude.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_1_1();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v33 = (v11 - v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v32 = v30 - v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v31 = v30 - v16;
  v30[1] = *(*(v17 + 16) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_105();
  MEMORY[0x28223BE20](v18);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v34 = v8;
  sub_237EF9D20();
  v36 = v5 * v3;
  if ((v5 * v3) >> 64 != (v5 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v3)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v19 = 0;
  v30[0] = v37 + 2;
  v20 = v37;
  v21 = v33;
  while (1)
  {
    v22 = v36 >= v19;
    if (v3 > 0)
    {
      v22 = v19 >= v36;
    }

    if (v22)
    {
      break;
    }

    v23 = v19 + v3;
    if (__OFADD__(v19, v3))
    {
      v23 = ((v19 + v3) >> 63) ^ 0x8000000000000000;
    }

    v38 = v23;
    v24 = v35 + v20[9] * v19;
    v25 = v3;
    v26 = v20[2];
    v27 = v32;
    v26(v32, v24, v1);
    v26(v21, v24, v1);
    v28 = v31;
    sub_237EF8D30();
    v29 = v20[1];
    v29(v21, v1);
    v29(v27, v1);
    sub_237EF9770();
    v29(v28, v1);
    v3 = v25;
    v19 = v38;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t UnsafeVectorPointer<A>.magnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnsafeVectorPointer<A>.squaredMagnitude.getter();
  sub_237EF8320();
  return (*(v6 + 8))(v9, a4);
}

void UnsafeVectorPointer<A>.maximumAbsoluteValue.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v32 = *(*(v0 + 16) + 8);
  v33 = v9;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_105();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_1_1();
  v35 = v10;
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_26();
  v13 = v11 - v12;
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_13_6();
    sub_237EF8350();
LABEL_17:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v31 = v1;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v19 = v7 * v5;
  if ((v7 * v5) >> 64 == (v7 * v5) >> 63)
  {
    v20 = v5;
    if (v5)
    {
      v34 = v18;
      v21 = 0;
      v29 = (v35 + 32);
      v30 = v35 + 16;
      v22 = v18;
      while (1)
      {
        v23 = v19 >= v21;
        if (v20 > 0)
        {
          v23 = v21 >= v19;
        }

        if (v23)
        {
          break;
        }

        v24 = v20;
        if (__OFADD__(v21, v20))
        {
          v25 = ((v21 + v20) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v25 = v21 + v20;
        }

        v26 = v35;
        (*(v35 + 16))(v13, v33 + *(v35 + 72) * v21, v3);
        sub_237EF8D50();
        v27 = *(v26 + 8);
        v27(v13, v3);
        if (sub_237EF8400())
        {
          v27(v22, v3);
          (*v29)(v22, v16, v3);
        }

        else
        {
          v27(v16, v3);
        }

        v21 = v25;
        v20 = v24;
      }

      (*v29)(v28, v34, v3);
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v24 = v23;
  v61 = v25;
  v62 = v26;
  v28 = v27;
  v60 = v29;
  OUTLINED_FUNCTION_1_1();
  v64 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v59 = v32 - v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v58 = &v53 - v37;
  if (v36 != v35)
  {
    goto LABEL_24;
  }

  v65 = v36 * v24;
  if ((v36 * v24) >> 64 != (v36 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v63 = v36 * v28;
  if ((v36 * v28) >> 64 != (v36 * v28) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v69 = 0;
    v70 = 0xE000000000000000;
    v48 = v35;
    v49 = v36;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000041, 0x8000000237F018D0);
    v68 = v49;
    OUTLINED_FUNCTION_13_6();
    v50 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v50);

    v51 = OUTLINED_FUNCTION_0_118();
    MEMORY[0x2383E0710](v51, 0xE500000000000000);
    v68 = v48;
    OUTLINED_FUNCTION_13_6();
    v52 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v52);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    OUTLINED_FUNCTION_14_70();
    __break(1u);
    return;
  }

  if (!v28 || !v24)
  {
    goto LABEL_23;
  }

  v38 = 0;
  v39 = 0;
  v40 = v65;
  v56 = v64 + 16;
  v57 = a21;
  v54 = (v24 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v55 = v64 + 8;
  while (1)
  {
    v41 = v40 >= v39;
    if (v24 > 0)
    {
      v41 = v39 >= v65;
      v40 = v65;
    }

    if (v41)
    {
      break;
    }

    v42 = v39 + v24;
    if (__OFADD__(v39, v24))
    {
      v42 = v54;
    }

    if (v28 <= 0)
    {
      if (v63 >= v38)
      {
        break;
      }
    }

    else if (v38 >= v63)
    {
      break;
    }

    v67 = v42;
    v43 = v38 + v28;
    if (__OFADD__(v38, v28))
    {
      v43 = ((v38 + v28) >> 63) ^ 0x8000000000000000;
    }

    v66 = v43;
    v44 = v64;
    v45 = v59;
    (*(v64 + 16))(v59, v60 + *(v64 + 72) * v38, v22);
    v46 = v58;
    sub_237EF8D30();
    v47 = *(v44 + 8);
    v47(v45, v22);
    sub_237EF9770();
    v47(v46, v22);
    v38 = v66;
    v39 = v67;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!a4)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  for (i = 0; ; i = v8)
  {
    v7 = v4 >= i;
    if (a4 > 0)
    {
      v7 = i >= v4;
    }

    if (v7)
    {
      break;
    }

    if (__OFADD__(i, a4))
    {
      v8 = ((i + a4) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v8 = i + a4;
    }

    result = sub_237EF8D40();
  }

  return result;
}

void dot<A>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v46 = v6;
  v47 = v7;
  v9 = v8;
  v11 = v10;
  v50 = v12;
  OUTLINED_FUNCTION_1_1();
  v49 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v45 = (v15 - v16);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  v44 = v39 - v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v43 = v39 - v20;
  v42 = *(*(v21 + 16) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_105();
  MEMORY[0x28223BE20](v22);
  if (v11 != v5)
  {
    goto LABEL_25;
  }

  v51 = v11 * v9;
  if ((v11 * v9) >> 64 != (v11 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  v48 = v11 * v3;
  if ((v11 * v3) >> 64 != (v11 * v3) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000050, 0x8000000237EFEBF0);
    v53 = v11;
    OUTLINED_FUNCTION_13_6();
    v36 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v36);

    v37 = OUTLINED_FUNCTION_0_118();
    MEMORY[0x2383E0710](v37, 0xE500000000000000);
    v53 = v5;
    OUTLINED_FUNCTION_13_6();
    v38 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v38);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    OUTLINED_FUNCTION_14_70();
    __break(1u);
    return;
  }

  if (!v9 || !v3)
  {
    goto LABEL_24;
  }

  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v23 = 0;
  v24 = 0;
  v39[1] = v49 + 8;
  v39[2] = v49 + 16;
  v39[0] = (v9 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v25 = v51;
  v40 = v3;
  v41 = v9;
  while (1)
  {
    v26 = v25 >= v24;
    if (v9 > 0)
    {
      v26 = v24 >= v51;
      v25 = v51;
    }

    if (v26)
    {
      break;
    }

    v27 = v24 + v9;
    if (__OFADD__(v24, v9))
    {
      v27 = v39[0];
    }

    if (v3 <= 0)
    {
      if (v48 >= v23)
      {
        break;
      }
    }

    else if (v23 >= v48)
    {
      break;
    }

    v52 = v27;
    if (__OFADD__(v23, v3))
    {
      v28 = ((v23 + v3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v28 = v23 + v3;
    }

    v29 = v49;
    v30 = *(v49 + 72);
    v31 = *(v49 + 16);
    v32 = v44;
    v31(v44, v46 + v30 * v24, v1);
    v33 = v45;
    v31(v45, v47 + v30 * v23, v1);
    v34 = v43;
    sub_237EF8D30();
    v35 = *(v29 + 8);
    v35(v33, v1);
    v35(v32, v1);
    sub_237EF9770();
    v35(v34, v1);
    v23 = v28;
    v3 = v40;
    v9 = v41;
    v24 = v52;
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t UnsafeVectorPointer<A>.magnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return MEMORY[0x282108C30](a2, a1);
  }

LABEL_10:
  __break(1u);
  return MEMORY[0x282108C30](a1, a2);
}

{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    return MEMORY[0x2821088F0](a2, a1);
  }

LABEL_10:
  __break(1u);
  return MEMORY[0x2821088F0](a1, a2);
}

uint64_t UnsafeVectorPointer<A>.maximumAbsoluteValue.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else if (a3 >= 0xFFFFFFFF80000000)
    {
      if (a3 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_11_71(result, a2);
        return cblas_isamax_NEWLAPACK();
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

{
  if (a2 >= 1)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else if (a3 >= 0xFFFFFFFF80000000)
    {
      if (a3 <= 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_11_71(result, a2);
        return cblas_idamax_NEWLAPACK();
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t dot(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5)
  {
    goto LABEL_19;
  }

  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000050);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    v10 = OUTLINED_FUNCTION_14_70();
    __break(1u);
    return MEMORY[0x282108BC0](v10, v11);
  }

  v10 = a2;
  v11 = a1;

  return MEMORY[0x282108BC0](v10, v11);
}

{
  if (a2 != a5)
  {
    goto LABEL_19;
  }

  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_5_101();
    sub_237EF9330();
    OUTLINED_FUNCTION_12_66();
    OUTLINED_FUNCTION_7_87();
    MEMORY[0x2383E0710](0xD000000000000050);
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_17_65();

    OUTLINED_FUNCTION_0_118();
    OUTLINED_FUNCTION_15_58();
    OUTLINED_FUNCTION_13_6();
    sub_237EF9AB0();
    OUTLINED_FUNCTION_16_64();

    OUTLINED_FUNCTION_8_95();
    OUTLINED_FUNCTION_10_73();
    result = OUTLINED_FUNCTION_14_70();
    __break(1u);
    return result;
  }

  return cblas_ddot_NEWLAPACK();
}

void OUTLINED_FUNCTION_8_95()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_15_58()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_16_64()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_17_65()
{

  JUMPOUT(0x2383E0710);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}