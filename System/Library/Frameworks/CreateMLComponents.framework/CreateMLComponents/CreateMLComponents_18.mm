uint64_t sub_237DE6BC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_237EF6B10();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  sub_237EF6420();
  type metadata accessor for FullyConnectedNetwork();
  sub_237DE8DA4(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork);
  sub_237EF6850();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_237EF6400();
  v11 = *MEMORY[0x277D2CD58];
  v12 = sub_237EF64D0();
  (*(*(v12 - 8) + 104))(v2, v11, v12);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v12);
  sub_237EF6570();
  sub_237C65484(v2, &qword_27DEB24C8);
  v10(v7, v3);
  return (v10)(v9, v3);
}

uint64_t sub_237DE6E58()
{
  v0 = sub_237EF9890();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237DE6EA8(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x636E456C6562616CLL;
      break;
    case 2:
      result = 0x6168537475706E69;
      break;
    case 3:
      result = 0x6F69746172657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237DE6F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(a1, a2, v9, v10, a5);
}

uint64_t sub_237DE6FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237DE7064(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237DE70D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237DE7140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237DE71B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237DE6E58();
  *a1 = result;
  return result;
}

uint64_t sub_237DE71E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237DE6EA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237DE7240@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237DE6EA4();
  *a1 = result;
  return result;
}

uint64_t sub_237DE727C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DE72D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FullyConnectedNetworkClassifierModel.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  *v25 = *(a2 + 16);
  v19 = *(a2 + 24);
  *&v25[8] = v19;
  v26 = v4;
  v18 = *(a2 + 48);
  v27 = v18;
  v20 = v6;
  v21 = v5;
  v28 = v5;
  v29 = v6;
  type metadata accessor for FullyConnectedNetworkClassifierModel.CodingKeys();
  OUTLINED_FUNCTION_5_73();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v22;
  sub_237EFA1B0();
  v25[0] = 0;
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v14, v15);
  v16 = v23;
  sub_237EF9A70();
  if (!v16)
  {
    *v25 = *(v13 + *(a2 + 88));
    v30 = 1;
    type metadata accessor for LabelEncoder();
    v24 = v21;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_47();
    *v25 = *(v13 + *(a2 + 92));
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    sub_237DA21D0(&qword_280C8CD30);
    OUTLINED_FUNCTION_9_47();
    v25[0] = 3;
    sub_237EF9A50();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t FullyConnectedNetworkClassifierModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a5;
  v58 = a8;
  v45 = a9;
  v50 = type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_3();
  v53 = v17;
  type metadata accessor for FullyConnectedNetworkClassifierModel.CodingKeys();
  OUTLINED_FUNCTION_5_73();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v47 = a3;
  v61 = a4;
  v62 = v57;
  v48 = a6;
  v49 = a7;
  v63 = a6;
  v64 = a7;
  v65 = v58;
  v66 = a10;
  type metadata accessor for FullyConnectedNetworkClassifierModel();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v57 = v27;
  v28 = *(v27 + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  v54 = v28;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v52 = v21;
  v34 = v56;
  sub_237EFA190();
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_237C65484(&v26[v54], &qword_27DEAD298);
  }

  else
  {
    v35 = v49;
    v56 = v23;
    LOBYTE(v60) = 0;
    OUTLINED_FUNCTION_0_67();
    sub_237DE8DA4(v36, v37);
    sub_237EF9970();
    sub_237DE7AF8(v53, v26);
    type metadata accessor for LabelEncoder();
    v67 = 1;
    v59 = v35;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_8_60();
    v38 = v57;
    *&v26[*(v57 + 88)] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    v67 = 2;
    sub_237DA21D0(&qword_280C8CD28);
    OUTLINED_FUNCTION_8_60();
    *&v26[*(v38 + 92)] = v60;
    LOBYTE(v60) = 3;
    v39 = sub_237EF9950();
    v40 = OUTLINED_FUNCTION_11_45();
    v41(v40);
    *&v26[*(v38 + 96)] = v39;
    v42 = v56;
    (*(v56 + 16))(v45, v26, v38);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return (*(v42 + 8))(v26, v38);
  }
}

uint64_t sub_237DE7AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullyConnectedNetwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237DE7B5C(uint64_t a1)
{
  v2 = type metadata accessor for FullyConnectedNetwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237DE7C24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DE7C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v111 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v6);
  v109 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v108 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v9);
  v10 = sub_237EF7210();
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v12);
  v119 = sub_237EF6FC0();
  OUTLINED_FUNCTION_1();
  v118 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v15);
  v124 = sub_237EF7260();
  OUTLINED_FUNCTION_1();
  v123 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v18);
  v116 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v115 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v113 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_2(v98 - v23);
  v24 = sub_237EF6E60();
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_3();
  v127 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  OUTLINED_FUNCTION_18(v27);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  v30 = v98 - v29;
  v31 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v130 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_3();
  v35 = v34;
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v131 = v36;
  v132 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_2();
  v112 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = v98 - v40;
  sub_237EF7720();
  sub_237EF7620();
  v42 = a1;
  v43 = sub_237EF7EF0();
  sub_237E5E9F0(v43, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_237C65484(v30, &qword_27DEB0E78);
    type metadata accessor for SerializationError();
    sub_237DE8DA4(qword_280C8E658, type metadata accessor for SerializationError);
    swift_allocError();
    v45 = v44;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v134 = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v46 = __dst[1];
    *v45 = __dst[0];
    v45[1] = v46;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v132 + 8))(v41, v131);
  }

  else
  {
    v100 = v3;
    v125 = "tworkClassifierModel ";
    v48 = *(v130 + 32);
    v126 = v35;
    v48(v35, v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v103 = sub_237EF70E0();
    OUTLINED_FUNCTION_1();
    v50 = *(v49 + 72);
    v102 = v51;
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    v105 = v31;
    *(v53 + 16) = xmmword_237F03530;
    v101 = *(v129 + *(v42 + 92));
    sub_237EF6CF0();
    OUTLINED_FUNCTION_27_9();
    sub_237EF7090();
    v106 = v41;
    sub_237EF76B0();
    v104 = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_237F04760;
    v55 = v54 + v52;
    v56 = *(v42 + 24);
    v58 = *(v42 + 48);
    v57 = *(v42 + 56);
    v59 = *(v42 + 64);
    v60 = *(v42 + 72);
    v127 = v55;
    OUTLINED_FUNCTION_10_48();
    v61 = v128;
    sub_237DA0968();
    if (v61)
    {
      (*(v130 + 8))(v126, v105);
      (*(v132 + 8))(v106, v131);
      *(v54 + 16) = 0;
    }

    else
    {
      v99 = v42;
      v62 = v106;
      OUTLINED_FUNCTION_10_48();
      sub_237DA0AC0();
      v128 = 0;
      v98[1] = v56;
      v102 = v60;
      v103 = v59;
      v104 = v57;
      v127 = v58;
      v63 = v62;
      sub_237EF7700();
      sub_237EF7600();
      sub_237EF7640();
      sub_237EF75E0();
      if (*(v101 + 16) < 2uLL)
      {
        OUTLINED_FUNCTION_27_9();
        v75 = v129;
        sub_237C6CEB4();
        v136 = v76;
        v74 = v131;
        v71 = v132;
      }

      else
      {
        v64 = v114;
        sub_237EF6FD0();
        sub_237C6CEB4();
        v66 = v65;
        (*(v115 + 16))(v113, v64, v116);
        sub_237D0BC38(0, 1, 1, MEMORY[0x277D84F90]);
        v68 = v67;
        v70 = *(v67 + 16);
        v69 = *(v67 + 24);
        v71 = v132;
        if (v70 >= v69 >> 1)
        {
          sub_237D0BC38(v69 > 1, v70 + 1, 1, v67);
          v68 = v97;
        }

        *(v68 + 16) = v70 + 1;
        v72 = v115;
        v73 = v116;
        (*(v115 + 32))(v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v113, v116);
        v136 = v68;
        sub_237E4868C(v66);
        (*(v72 + 8))(v114, v73);
        v74 = v131;
        v75 = v129;
      }

      v77 = v122;
      sub_237EF7250();
      (*(v118 + 104))(v117, *MEMORY[0x277D25168], v119);
      sub_237EF7230();
      sub_237EF7240();
      __dst[11] = *(v75 + *(v99 + 88));
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      swift_getWitnessTable();
      v78 = v128;
      sub_237DA0C74(v120);
      v128 = v78;
      if (v78)
      {
        (*(v123 + 8))(v77, v124);
        v79 = OUTLINED_FUNCTION_14_45();
        v80(v79);
        return (*(v71 + 8))(v63, v74);
      }

      else
      {
        sub_237EF7220();
        v81 = v107;
        (*(v123 + 16))(v107, v77, v124);
        (*(v108 + 104))(v81, *MEMORY[0x277D25398], v109);
        sub_237EF7660();
        v82 = *(v71 + 16);
        v83 = v112;
        v82();
        sub_237EF7810();
        v84 = type metadata accessor for CoreMLPackage();
        v85 = v110;
        v86 = v110 + *(v84 + 24);
        *(v86 + 80) = 0;
        *(v86 + 48) = 0u;
        *(v86 + 64) = 0u;
        *(v86 + 16) = 0u;
        *(v86 + 32) = 0u;
        *v86 = 0u;
        (v82)(v85, v83, v74);
        memcpy(__dst, v86, 0x58uLL);
        sub_237C65484(__dst, &unk_27DEAD7B0);
        *v86 = 0u;
        *(v86 + 16) = 0u;
        *(v86 + 32) = 0u;
        *(v86 + 48) = 0u;
        *(v86 + 64) = 0u;
        *(v86 + 80) = 0;
        v87 = v111;
        v88 = v100;
        (*(v111 + 16))(v85 + *(v84 + 20), v121, v100);
        v89 = sub_237E34060();
        v91 = v90;
        v92 = sub_237EF7780();
        v94 = v93;
        swift_isUniquelyReferenced_nonNull_native();
        v133 = *v94;
        sub_237C91098(v89, v91, 0xD00000000000001ALL, 0x8000000237EFB6D0);
        *v94 = v133;
        v92(&v134, 0);
        (*(v87 + 8))(v121, v88);
        v95 = *(v71 + 8);
        v96 = v131;
        v95(v112, v131);
        (*(v123 + 8))(v122, v124);
        (*(v130 + 8))(v126, v105);
        return (v95)(v106, v96);
      }
    }
  }
}

void sub_237DE8B28()
{
  type metadata accessor for FullyConnectedNetwork();
  if (v0 <= 0x3F)
  {
    sub_237DE8C18();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LabelEncoder();
      if (v2 <= 0x3F)
      {
        sub_237CFF010();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237DE8C18()
{
  if (!qword_27DEB3AC0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD2A0);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, qword_27DEB3AC0);
    }
  }
}

_BYTE *sub_237DE8C7C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237DE8DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237DE8DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_60()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_9_47()
{

  return sub_237EF9A70();
}

uint64_t Transformer.adaptedAsAnnotatedFeatureTransformer<A>(annotationType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, a1);
  return (*(v5 + 32))(a2, v7, a1);
}

uint64_t sub_237DE901C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237DE9158(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DE935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v10 = a5[3];
  v5[4] = v10;
  v5[5] = *(v10 - 8);
  v5[6] = swift_task_alloc();
  v11 = a5[4];
  v5[7] = v11;
  v12 = a5[2];
  v5[8] = v12;
  v5[9] = swift_getAssociatedTypeWitness();
  v13 = swift_task_alloc();
  v5[10] = v13;
  v16 = (*(v11 + 24) + **(v11 + 24));
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_237DE9558;

  return v16(v13, a2, a3, a4, v12, v11);
}

uint64_t sub_237DE9558()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_237D60E04;
  }

  else
  {
    v2 = sub_237DE966C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237DE966C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for AnnotatedFeature();
  (*(v4 + 16))(v3, v6 + *(v8 + 36), v5);
  AnnotatedFeature.init(feature:annotation:)(v2, v3, v1, v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_237DE9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return sub_237DE935C(a1, a2, a3, a4, a5);
}

uint64_t HumanBodyActionCounter.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a2;
  v7[6] = *(a5 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB3BC8);
  v7[9] = *(a6 + 8);
  v9 = sub_237EF9AE0();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v6;
  v12 = v6[1];
  v7[13] = v10;
  v7[14] = v11;
  v13 = v6[2];
  v7[15] = v12;
  v7[16] = v13;

  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237DE99AC, 0, 0);
}

uint64_t sub_237DE99AC()
{
  v1 = *(v0 + 128);
  v14 = *(v0 + 112);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v15 = *(v0 + 96);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v16 = *(v0 + 16);
  (*(*(v0 + 48) + 16))();
  v7 = swift_allocObject();
  *(v7 + 16) = v14;
  *(v7 + 32) = v1;
  sub_237EF8BD0();

  (*(v3 + 16))(v15, v2, v4);
  v8 = (*(v5 + 24))(v6, v5);
  LOBYTE(v5) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:count:)(v15, v8, v5 & 1, v10, v4, WitnessTable, v16);
  (*(v3 + 8))(v2, v4);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_237DE9B9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = a2[1];
  *(v5 + 40) = a1;
  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = *(a2 + 1);
  v8 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  v9 = swift_task_alloc();
  *(v5 + 88) = v9;
  *v9 = v5;
  v9[1] = sub_237DE9C54;

  return sub_237CC4F40(v8);
}

uint64_t sub_237DE9C54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_237DE9EC8;
  }

  else
  {
    v4 = sub_237DE9D68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237DE9D68()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C63670();
    v3 = v14;
    v4 = (v1 + 36);
    do
    {
      v5 = *(v4 - 1);
      v6 = 0.0;
      if (v5 != 0.0 && (*v4 & 0x7FFFFFFF) != 0)
      {
        v6 = 1.0 / v5;
      }

      v7 = *(v14 + 16);
      if (v7 >= *(v14 + 24) >> 1)
      {
        sub_237C63670();
      }

      *(v14 + 16) = v7 + 1;
      *(v14 + 4 * v7 + 32) = v6;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    sub_237EF8260();

    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = *(v0 + 64);
  *v10 = *(v0 + 48);
  *(v10 + 8) = v9;
  *(v10 + 16) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = v3;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_237DE9EE0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_237C5FFA4;

  return sub_237DE9B9C(a1, a2, v6, v7, v8);
}

unint64_t sub_237DE9FA8()
{
  result = qword_27DEB3BD0[0];
  if (!qword_27DEB3BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3BD0);
  }

  return result;
}

uint64_t sub_237DE9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C5FFA4;

  return HumanBodyActionCounter.applied<A>(to:eventHandler:)(a1, a2, v11, v12, a5, a6);
}

uint64_t PreprocessingSupervisedEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PreprocessingSupervisedEstimator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PreprocessingSupervisedEstimator.preprocessed<A>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v7[14] = a4[4];
  v7[15] = a4[2];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_13();
  v9 = sub_237EF8A60();
  v7[16] = v9;
  v7[17] = a4[5];
  v7[18] = a4[3];
  v7[19] = swift_getAssociatedTypeWitness();
  v10 = sub_237EF9640();
  v7[20] = v10;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v7[21] = WitnessTable;
  OUTLINED_FUNCTION_1_5();
  v12 = swift_getWitnessTable();
  v7[22] = v12;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = WitnessTable;
  v7[5] = v12;
  v7[23] = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  v7[24] = swift_getWitnessTable();
  v13 = sub_237EF9340();
  v7[25] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v7[26] = v14;
  v7[27] = OUTLINED_FUNCTION_27_0();
  v7[28] = *(v10 - 8);
  v7[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[30] = v15;
  v7[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_13();
  v7[32] = type metadata accessor for AnnotatedFeature();
  v7[33] = sub_237EF9640();
  v7[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[35] = v16;
  v7[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v17 = sub_237EF9340();
  v7[37] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v7[38] = v18;
  v7[39] = OUTLINED_FUNCTION_27_0();
  v7[40] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_0();
  v19 = sub_237EF9640();
  v7[41] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v7[42] = v20;
  v7[43] = OUTLINED_FUNCTION_27_0();
  v21 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237DEA64C()
{
  v1 = v0[38];
  v26 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  v24 = v2;
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[11];
  v25 = v0[10];
  v8 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E08A0](v8);
  v9 = swift_task_alloc();
  *v9 = v5;
  v9[1] = v3;
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v2;
  v9[5] = v6;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v7;
  v11[5] = v4;
  v11[6] = v24;
  v11[7] = v6;
  v11[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  v0[44] = swift_getWitnessTable();
  sub_237EF9860();

  v0[45] = *(v1 + 8);
  v0[46] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_31_0();
  v13(v12);
  PreprocessingSupervisedEstimator.preprocessor.getter(v25, v26);
  v14 = swift_task_alloc();
  v0[47] = v14;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v14 = v16;
  v14[1] = sub_237DEA830;
  v17 = v0[43];
  v18 = v0[41];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[8];
  v22 = v0[9];

  return Transformer.applied<A>(to:eventHandler:)(v17, v21, v22, v19, v18, v20, v15);
}

uint64_t sub_237DEA830(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *v6 = *v2;
  v5[48] = v1;

  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[15];
  if (!v1)
  {
    v5[49] = a1;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237DEA9AC()
{
  v18 = v0[45];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[43];
  v30 = v0[39];
  v15 = v0[37];
  v28 = v0[31];
  v22 = v0[30];
  v29 = v0[29];
  v17 = v0[28];
  v21 = v0[27];
  v24 = v0[26];
  v23 = v0[25];
  v19 = v0[23];
  v20 = v0[24];
  v16 = v0[20];
  v1 = v0[17];
  v2 = v0[18];
  v0[6] = v0[49];
  v3 = v0[15];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  MEMORY[0x2383E08A0](v6, v5);
  v7 = swift_task_alloc();
  *v7 = v3;
  v7[1] = v2;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v1;
  v9[7] = v5;
  v9[8] = KeyPath;
  sub_237EF9860();

  v18(v30, v15);
  sub_237EFA000();
  (*(v17 + 8))(v29, v16);

  MEMORY[0x2383E08A0](v19, v20);
  (*(v22 + 8))(v28, v19);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v1;
  v10[7] = v5;
  OUTLINED_FUNCTION_70();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v2;
  v11[4] = v6;
  v11[5] = v4;
  v11[6] = v1;
  v11[7] = v5;
  v11[8] = sub_237DEB128;
  v11[9] = v10;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v24 + 8))(v21, v23);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v12 = sub_237EF92D0();
  (*(v25 + 8))(v27, v26);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_237DEAD7C()
{
  (*(v0[42] + 8))(v0[43], v0[41]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DEAE58(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, AssociatedTypeWitness, v3);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnnotatedFeature();
  return AnnotatedFeature.feature.setter(v5, v7);
}

uint64_t sub_237DEAF78()
{
  OUTLINED_FUNCTION_42_12();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for AnnotatedFeature();
  return v0(v1);
}

uint64_t sub_237DEB008(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, AssociatedTypeWitness, v3);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnnotatedFeature();
  return AnnotatedFeature.annotation.setter(v5, v7);
}

uint64_t sub_237DEB12C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t PreprocessingSupervisedEstimator.fitted<A>(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v2;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v2 + 16);
  v1[11] = OUTLINED_FUNCTION_27_0();
  v1[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_40_11();
  v1[19] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237DEB344()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingSupervisedEstimator.estimator.getter(v0[6], v0[14]);
  OUTLINED_FUNCTION_15_0();
  v12 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_237DEB46C;
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return v12(v3, v10, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237DEB46C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  v7 = OUTLINED_FUNCTION_13_6();
  v8(v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DEB6B0()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingSupervisedEstimator.fitted<A, B>(toPreprocessed:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  v11[11] = a10;
  v11[12] = v10;
  v11[9] = v14;
  v11[10] = a9;
  v11[7] = v12;
  v11[8] = v15;
  v11[5] = v16;
  v11[6] = v17;
  v11[3] = v18;
  v11[4] = v19;
  v11[2] = v20;
  v11[13] = *(v12 + 16);
  v11[14] = OUTLINED_FUNCTION_27_0();
  v11[15] = *(v13 + 24);
  OUTLINED_FUNCTION_1_1();
  v11[16] = v21;
  v11[17] = OUTLINED_FUNCTION_27_0();
  v11[18] = *(v13 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[20] = v23;
  v11[21] = OUTLINED_FUNCTION_40_11();
  v11[22] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v24, v25, v26);
}

void sub_237DEB880()
{
  OUTLINED_FUNCTION_2_0();
  PreprocessingSupervisedEstimator.estimator.getter(v0[7], v0[17]);
  OUTLINED_FUNCTION_15_0();
  v3 = v1 + *v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_237DEB9BC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DEB9BC()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  v7 = OUTLINED_FUNCTION_13_6();
  v8(v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DEBC00()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingSupervisedEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_3();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v2;
  v1[12] = v5;
  v1[9] = v6;
  v1[10] = v7;
  v1[7] = v8;
  v1[8] = v9;
  v1[15] = *(v2 + 32);
  v1[16] = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  v10 = sub_237EF8A60();
  v1[17] = v10;
  v1[18] = *(v3 + 40);
  v1[19] = *(v3 + 24);
  v1[20] = swift_getAssociatedTypeWitness();
  v11 = sub_237EF9640();
  v1[21] = v11;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v1[22] = WitnessTable;
  OUTLINED_FUNCTION_1_5();
  v13 = swift_getWitnessTable();
  v1[23] = v13;
  v1[2] = v10;
  v1[3] = v11;
  v1[4] = WitnessTable;
  v1[5] = v13;
  v1[24] = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  v1[25] = swift_getWitnessTable();
  v14 = sub_237EF9340();
  v1[26] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[27] = v15;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[29] = v16;
  v1[30] = OUTLINED_FUNCTION_27_0();
  v1[31] = type metadata accessor for AnnotatedFeature();
  v17 = sub_237EF9640();
  v1[32] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v1[33] = v18;
  v1[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[35] = v19;
  v1[36] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[37] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[38] = v21;
  v1[39] = OUTLINED_FUNCTION_40_11();
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v1[41] = v22;
  v1[42] = OUTLINED_FUNCTION_40_11();
  v1[43] = swift_task_alloc();
  v1[44] = *(v11 - 8);
  v1[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v23 = sub_237EF9340();
  v1[46] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v1[47] = v24;
  v1[48] = OUTLINED_FUNCTION_27_0();
  v1[49] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_0();
  v25 = sub_237EF9640();
  v1[50] = v25;
  OUTLINED_FUNCTION_6_1(v25);
  v1[51] = v26;
  v1[52] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_18_3();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_237DEC110()
{
  v31 = v0[48];
  v32 = v0[46];
  v33 = v0[47];
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v30 = v0[43];
  v6 = v0[12];
  v29 = v0[11];
  v7 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E08A0](v7);
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v1;
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v1;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v2;
  v10[7] = v5;
  v10[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v28 = *(v33 + 8);
  v28(v31, v32);
  v11 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E08A0](v11);
  v12 = swift_task_alloc();
  *v12 = v3;
  v12[1] = v1;
  v12[2] = v6;
  v12[3] = v4;
  v13 = v4;
  v12[4] = v2;
  v12[5] = v5;
  v14 = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = v1;
  v15[4] = v6;
  v15[5] = v13;
  v15[6] = v2;
  v15[7] = v5;
  v15[8] = v14;
  sub_237EF9860();

  v16 = OUTLINED_FUNCTION_31_0();
  (v28)(v16);
  PreprocessingSupervisedEstimator.preprocessor.getter(v29, v30);
  v17 = swift_task_alloc();
  v0[53] = v17;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v17 = v18;
  v17[1] = sub_237DEC3D4;
  OUTLINED_FUNCTION_65_1();

  return Transformer.applied<A>(to:eventHandler:)(v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_237DEC3D4()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v6 = v5;
  *(v8 + 432) = v7;
  *(v8 + 440) = v0;

  (*(v2[41] + 8))(v2[43], v2[16]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237DEC52C()
{
  v1 = v0[55];
  sub_237EF8B90();
  if (v1)
  {

    (*(v0[44] + 8))(v0[45], v0[21]);
    v2 = OUTLINED_FUNCTION_31_0();
    v3(v2);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_65_1();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[54];
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[29];
  v23 = v0[27];
  v22 = v0[26];
  v10 = v0[24];
  v16 = v0[25];
  v21 = v0[19];
  v24 = v0[18];
  v20 = v0[15];
  v18 = v0[16];
  v19 = v0[13];
  v17 = v0[12];
  PreprocessingSupervisedEstimator.estimator.getter(v0[11], v0[36]);
  v0[6] = v6;
  sub_237EFA000();

  MEMORY[0x2383E08A0](v10, v16);
  (*(v9 + 8))(v7, v10);
  v11 = swift_allocObject();
  v11[2] = v18;
  v11[3] = v21;
  v11[4] = v17;
  v11[5] = v20;
  v11[6] = v24;
  v11[7] = v19;
  OUTLINED_FUNCTION_70();
  v12 = swift_allocObject();
  v12[2] = v18;
  v12[3] = v21;
  v12[4] = v17;
  v12[5] = v20;
  v12[6] = v24;
  v12[7] = v19;
  v12[8] = sub_237DF008C;
  v12[9] = v11;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v23 + 8))(v8, v22);
  OUTLINED_FUNCTION_15_0();
  v13 = swift_task_alloc();
  v0[56] = v13;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_237DEC90C;
  OUTLINED_FUNCTION_65_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DEC90C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  v5 = v2[36];
  v6 = v2[35];
  v7 = v2[19];
  (*(v2[33] + 8))(v2[34], v2[32]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237DECAC4()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[42];
  v5 = v0[39];
  v11 = v0[40];
  v6 = v0[37];
  v7 = v0[38];
  v13 = v0[16];
  v8 = v0[11];
  v12 = v0[7];
  (*(v0[44] + 8))();
  (*(v2 + 8))(v1, v3);
  PreprocessingSupervisedEstimator.preprocessor.getter(v8, v4);
  (*(v7 + 32))(v5, v11, v6);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v4, v5, v13, v6, v12);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237DECC88()
{
  v0 = OUTLINED_FUNCTION_9_48();
  v1(v0);
  v2 = OUTLINED_FUNCTION_13_6();
  v3(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DECD80()
{
  v0 = OUTLINED_FUNCTION_9_48();
  v1(v0);
  v2 = OUTLINED_FUNCTION_13_6();
  v3(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DECE78()
{
  OUTLINED_FUNCTION_37_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_21_33(v2, v8);
  v4(v3);
  v5 = OUTLINED_FUNCTION_46_13();
  v6(v5);
  return OUTLINED_FUNCTION_39_12();
}

uint64_t PreprocessingSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[21] = a10;
  v11[22] = v10;
  v11[19] = a8;
  v11[20] = a9;
  v11[17] = a6;
  v11[18] = a7;
  v11[15] = a4;
  v11[16] = a5;
  v11[13] = a2;
  v11[14] = a3;
  v11[12] = a1;
  v11[23] = a6[4];
  v11[24] = a6[2];
  swift_getAssociatedTypeWitness();
  v13 = sub_237EF8A60();
  v11[25] = v13;
  v11[26] = a6[5];
  v11[27] = a6[3];
  v11[28] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_13();
  v14 = sub_237EF9640();
  v11[29] = v14;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v11[30] = WitnessTable;
  v16 = swift_getWitnessTable();
  v11[31] = v16;
  v11[2] = v13;
  v11[3] = v14;
  v11[4] = WitnessTable;
  v11[5] = v16;
  v11[32] = sub_237EF9380();
  v11[33] = swift_getWitnessTable();
  OUTLINED_FUNCTION_65_2();
  v17 = sub_237EF9340();
  v11[34] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v11[35] = v18;
  v11[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v11[37] = v19;
  v11[38] = OUTLINED_FUNCTION_27_0();
  v11[39] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_65_2();
  v20 = sub_237EF9640();
  v11[40] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v11[41] = v21;
  v11[42] = OUTLINED_FUNCTION_27_0();
  v22 = sub_237EF9640();
  v11[43] = v22;
  v23 = swift_getWitnessTable();
  v11[44] = v23;
  v11[6] = v13;
  v11[7] = v22;
  v11[8] = WitnessTable;
  v11[9] = v23;
  v11[45] = sub_237EF9380();
  v11[46] = swift_getWitnessTable();
  v24 = sub_237EF9340();
  v11[47] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v11[48] = v25;
  v11[49] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v11[50] = v26;
  v11[51] = OUTLINED_FUNCTION_27_0();
  v27 = sub_237EF9640();
  v11[52] = v27;
  OUTLINED_FUNCTION_6_1(v27);
  v11[53] = v28;
  v11[54] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v11[55] = v29;
  v11[56] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[57] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[58] = v31;
  v11[59] = OUTLINED_FUNCTION_40_11();
  v11[60] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[61] = v32;
  v11[62] = OUTLINED_FUNCTION_40_11();
  v11[63] = swift_task_alloc();
  v11[64] = swift_task_alloc();
  v11[65] = *(v14 - 8);
  v11[66] = OUTLINED_FUNCTION_27_0();
  v33 = sub_237EF9340();
  v11[67] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v11[68] = v34;
  v11[69] = OUTLINED_FUNCTION_27_0();
  v11[70] = swift_getAssociatedTypeWitness();
  v35 = sub_237EF9640();
  v11[71] = v35;
  OUTLINED_FUNCTION_6_1(v35);
  v11[72] = v36;
  v11[73] = OUTLINED_FUNCTION_27_0();
  v11[74] = *(v22 - 8);
  v11[75] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_65_2();
  v37 = sub_237EF9340();
  v11[76] = v37;
  OUTLINED_FUNCTION_6_1(v37);
  v11[77] = v38;
  v11[78] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_65_2();
  v39 = sub_237EF9640();
  v11[79] = v39;
  OUTLINED_FUNCTION_6_1(v39);
  v11[80] = v40;
  v11[81] = OUTLINED_FUNCTION_27_0();
  v41 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v41, v42, v43);
}

uint64_t sub_237DED754()
{
  v46 = v0[77];
  v40 = v0[76];
  v47 = v0[69];
  v48 = v0[68];
  v42 = v0[67];
  v38 = v0[64];
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v45 = v0[21];
  v6 = v0[19];
  v5 = v0[20];
  v41 = v6;
  v7 = v0[18];
  v37 = v0[17];
  MEMORY[0x2383E08A0](v7, v5);
  v8 = swift_task_alloc();
  *v8 = v4;
  v8[1] = v1;
  v49 = v1;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v3;
  v8[5] = v2;
  v9 = v3;
  v39 = v3;
  v10 = v2;
  v44 = v2;
  v8[6] = v5;
  v8[7] = v45;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v1;
  v12[4] = v7;
  v12[5] = v41;
  v12[6] = v9;
  v12[7] = v10;
  v12[8] = v5;
  v12[9] = v45;
  v12[10] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v36 = *(v46 + 8);
  v13 = OUTLINED_FUNCTION_31_0();
  v14(v13);
  MEMORY[0x2383E08A0](v7, v5);
  v15 = swift_task_alloc();
  *v15 = v4;
  v15[1] = v1;
  v15[2] = v7;
  v15[3] = v41;
  v15[4] = v39;
  v15[5] = v44;
  v15[6] = v5;
  v15[7] = v45;
  v35 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v1;
  v16[4] = v7;
  v16[5] = v41;
  v16[6] = v39;
  v16[7] = v44;
  v16[8] = v5;
  v16[9] = v45;
  v16[10] = v35;
  sub_237EF9860();

  v17 = OUTLINED_FUNCTION_31_0();
  v36(v17);
  OUTLINED_FUNCTION_56_10();
  v18 = swift_task_alloc();
  *v18 = v4;
  v18[1] = v1;
  v18[2] = v7;
  v18[3] = v41;
  v18[4] = v39;
  v18[5] = v44;
  v18[6] = v5;
  v18[7] = v40;
  v19 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = v49;
  v20[4] = v7;
  v20[5] = v41;
  v20[6] = v39;
  v20[7] = v44;
  v20[8] = v5;
  v20[9] = v45;
  v20[10] = v19;
  swift_getWitnessTable();
  sub_237EF9860();

  v43 = *(v48 + 8);
  v43(v47, v42);
  OUTLINED_FUNCTION_56_10();
  v21 = swift_task_alloc();
  *v21 = v4;
  v21[1] = v49;
  v21[2] = v7;
  v21[3] = v41;
  v21[4] = v39;
  v21[5] = v44;
  v21[6] = v5;
  v21[7] = v19;
  v22 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v49;
  v23[4] = v7;
  v23[5] = v41;
  v23[6] = v39;
  v23[7] = v44;
  v23[8] = v5;
  v23[9] = v19;
  v23[10] = v22;
  sub_237EF9860();

  v24 = OUTLINED_FUNCTION_31_0();
  (v43)(v24);
  PreprocessingSupervisedEstimator.preprocessor.getter(v37, v38);
  v25 = swift_task_alloc();
  v0[82] = v25;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v25 = v27;
  v25[1] = sub_237DEDC84;
  v28 = v0[81];
  v29 = v0[79];
  v31 = v0[23];
  v30 = v0[24];
  v32 = v0[15];
  v33 = v0[16];

  return Transformer.applied<A>(to:eventHandler:)(v28, v32, v33, v30, v29, v31, v26);
}

uint64_t sub_237DEDC84()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v3[83] = v7;
  v3[84] = v0;

  v8 = v2[64];
  v9 = v2[61];
  v10 = v2[24];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (!v0)
  {
    v3[85] = v12;
    v3[86] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v12(v8, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_237DEDDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v32 = v29[84];
  sub_237EF8B90();
  v77 = v32;
  if (v32)
  {

    OUTLINED_FUNCTION_44_12();
    v63 = v34;
    v64 = v33;
    v35 = v29[75];
    v36 = v29[74];
    v37 = v29[73];
    v38 = v29[72];
    OUTLINED_FUNCTION_33_16();
    v65 = v39;
    v66 = v40;
    v67 = v41;
    v68 = v29[62];
    v69 = v29[60];
    v70 = v29[59];
    v71 = v29[56];
    v72 = v29[54];
    v73 = v29[51];
    v74 = v29[49];
    v42 = v29[43];
    v75 = v29[42];
    v76 = v29[38];
    v43 = OUTLINED_FUNCTION_38_10();
    v44(v43);
    (*(v38 + 8))(v37, v31);
    (*(v36 + 8))(v35, v42);
    (*(v30 + 8))(v28, v63);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, a23, v77, a25, a26, a27, a28);
  }

  else
  {
    PreprocessingSupervisedEstimator.preprocessor.getter(v29[17], v29[63]);
    v54 = swift_task_alloc();
    v29[87] = v54;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    *v54 = v29;
    v54[1] = sub_237DEE058;
    OUTLINED_FUNCTION_50_3();

    return Transformer.applied<A>(to:eventHandler:)(v55, v56, v57, v58, v59, v60, v61);
  }
}

uint64_t sub_237DEE058()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v3[88] = v7;
  v3[89] = v0;

  (v2[85])(v3[63], v3[24]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237DEE1B4()
{
  v3 = v0[89];
  sub_237EF8B90();
  if (!v3)
  {
    v15 = v0[83];
    v37 = v0[88];
    v16 = v0[51];
    v17 = v0[50];
    v29 = v0[49];
    v32 = v0[48];
    v31 = v0[47];
    v18 = v0[45];
    v30 = v0[46];
    v34 = v0[38];
    v43 = v0[36];
    v40 = v0[35];
    v38 = v0[37];
    v39 = v0[34];
    v36 = v0[33];
    v35 = v0[32];
    v28 = v0[27];
    v42 = v0[24];
    v27 = v0[21];
    v26 = v0[20];
    v19 = v0[18];
    v41 = v0[19];
    PreprocessingSupervisedEstimator.estimator.getter(v0[17], v0[56]);
    v0[10] = v15;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v18, v30);
    (*(v17 + 8))(v16, v18);
    OUTLINED_FUNCTION_70();
    v20 = swift_allocObject();
    v20[2] = v42;
    v20[3] = v28;
    v20[4] = v19;
    v20[5] = v41;
    v20[7] = OUTLINED_FUNCTION_51_8(v20);
    v20[8] = v26;
    v20[9] = v27;
    v21 = swift_allocObject();
    v21[2] = v42;
    v21[3] = v28;
    v21[4] = v19;
    v21[5] = v41;
    v21[7] = OUTLINED_FUNCTION_51_8(v21);
    v21[8] = v26;
    v21[9] = v27;
    v21[10] = sub_237DEF2F8;
    v21[11] = v20;
    OUTLINED_FUNCTION_0_6();
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v32 + 8))(v29, v31);
    v0[11] = v37;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v35, v36);
    (*(v38 + 8))(v34, v35);
    OUTLINED_FUNCTION_70();
    v22 = swift_allocObject();
    v22[2] = v42;
    v22[3] = v28;
    v22[4] = v19;
    v22[5] = v41;
    v22[7] = OUTLINED_FUNCTION_51_8(v22);
    v22[8] = v26;
    v22[9] = v27;
    v23 = swift_allocObject();
    v23[2] = v42;
    v23[3] = v28;
    v23[4] = v19;
    v23[5] = v41;
    v23[7] = OUTLINED_FUNCTION_51_8(v23);
    v23[8] = v26;
    v23[9] = v27;
    v23[10] = sub_237DF0090;
    v23[11] = v22;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v40 + 8))(v43, v39);
    OUTLINED_FUNCTION_15_0();
    v44 = v24 + *v24;
    v25 = swift_task_alloc();
    v0[90] = v25;
    swift_getWitnessTable();
    swift_getWitnessTable();
    *v25 = v0;
    v25[1] = sub_237DEE810;

    __asm { BRAA            X8, X16 }
  }

  v4 = v0[88];

  OUTLINED_FUNCTION_44_12();
  v33 = v5;
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  OUTLINED_FUNCTION_33_16();
  v10 = v0[43];
  v11 = OUTLINED_FUNCTION_38_10();
  v12(v11);
  (*(v9 + 8))(v8, v2);
  (*(v7 + 8))(v6, v10);
  (*(v1 + 8))(v4, v33);

  OUTLINED_FUNCTION_3_0();

  return v13();
}

uint64_t sub_237DEE810()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 728) = v0;

  v5 = v2[56];
  v6 = v2[55];
  v7 = v2[54];
  v8 = v2[53];
  v9 = v2[52];
  v10 = v2[27];
  (*(v2[41] + 8))(v2[42], v2[40]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237DEEA24()
{
  v1 = v0[80];
  v17 = v0[79];
  v18 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v13 = v0[71];
  v14 = v0[62];
  v16 = v0[59];
  v6 = v0[57];
  v7 = v0[43];
  v19 = v0[24];
  v8 = v0[17];
  v15 = v0[12];
  (*(v0[65] + 8))();
  (*(v5 + 8))(v4, v13);
  (*(v3 + 8))(v2, v7);
  (*(v1 + 8))(v18, v17);
  PreprocessingSupervisedEstimator.preprocessor.getter(v8, v14);
  v9 = OUTLINED_FUNCTION_31_0();
  v10(v9);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v14, v16, v19, v6, v15);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237DEEC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v29 = OUTLINED_FUNCTION_2_75(*(v28 + 672));
  v30(v29);
  v31 = OUTLINED_FUNCTION_29_21();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_22();
  v34(v33);
  v35 = OUTLINED_FUNCTION_28_22();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_50_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_237DEEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v29 = OUTLINED_FUNCTION_2_75(*(v28 + 712));
  v30(v29);
  v31 = OUTLINED_FUNCTION_29_21();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_22();
  v34(v33);
  v35 = OUTLINED_FUNCTION_28_22();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_50_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_237DEEEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v29 = OUTLINED_FUNCTION_2_75(*(v28 + 728));
  v30(v29);
  v31 = OUTLINED_FUNCTION_29_21();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_22();
  v34(v33);
  v35 = OUTLINED_FUNCTION_28_22();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_50_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_237DEF028(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, AssociatedTypeWitness, v3);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnnotatedFeature();
  return AnnotatedFeature.feature.setter(v5, v7);
}

uint64_t sub_237DEF148()
{
  OUTLINED_FUNCTION_42_12();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for AnnotatedFeature();
  return v0(v1);
}

uint64_t sub_237DEF1D8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, AssociatedTypeWitness, v3);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnnotatedFeature();
  return AnnotatedFeature.annotation.setter(v5, v7);
}

uint64_t sub_237DEF2FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237DEF3C4()
{
  OUTLINED_FUNCTION_37_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_21_33(v2, v8);
  v4(v3);
  v5 = OUTLINED_FUNCTION_46_13();
  v6(v5);
  return OUTLINED_FUNCTION_39_12();
}

uint64_t PreprocessingSupervisedEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  OUTLINED_FUNCTION_43_13();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTransformer();
  return (*(v4 + 56))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingSupervisedEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v29 = a3;
  v30 = v5;
  OUTLINED_FUNCTION_1_1();
  v28 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v31 = v9 - v8;
  v11 = *(v10 + 40);
  v12 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v27 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v26 - v20;
  v22 = v3;
  v23 = v32;
  result = (*(v11 + 64))(a1, v12, v11, v19);
  if (!v23)
  {
    v25 = v30;
    (*(v28 + 16))(v31, v22, v30);
    (*(v27 + 32))(v17, v21, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v31, v17, v25, AssociatedTypeWitness, v29);
  }

  return result;
}

uint64_t sub_237DEF89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237DF0088;

  return PreprocessingSupervisedEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237DEF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237CEF6D4;

  return PreprocessingSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

uint64_t sub_237DEFC34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DEFDFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_75@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = v1[66];
  v4 = v1[36];
  *(v2 - 96) = v1[38];
  *(v2 - 88) = v4;
  return v3;
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return ComposedTransformer.init(_:_:)(v12, v10, a10, v11, a9);
}

uint64_t OUTLINED_FUNCTION_39_12()
{

  return AnnotatedFeature.init(feature:annotation:)(v3, v4, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_40_11()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_56_10()
{

  JUMPOUT(0x2383E08A0);
}

uint64_t LinearTimeSeriesForecaster.Model.applied<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v6;
  v1[10] = v4;
  v1[7] = v8;
  v1[8] = v9;
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v11 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_20_31(v11);
  v1[15] = v12;
  v1[16] = OUTLINED_FUNCTION_27_0();
  v13 = v7[3];
  v1[17] = v13;
  v14 = v7[4];
  v1[18] = v14;
  v15 = v7[5];
  v1[19] = v15;
  v1[2] = v13;
  v1[3] = v5;
  v1[4] = v14;
  v1[5] = v15;
  v1[6] = v3;
  v1[20] = _s18PredictionSequenceVMa_0();
  v1[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237DF0488()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[8];
  v11 = v0[7];
  v12 = v0[20];
  (*(v0[15] + 16))(v2, v0[12], v0[9]);
  (*(v4 + 16))(v3, v6, v5);
  sub_237DF05F4(v2, v3, v5, v1);
  v7 = sub_237EF7E90();
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:)(v1, v7, v12, WitnessTable, v11);

  OUTLINED_FUNCTION_10_3();

  return v9();
}

uint64_t sub_237DF05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = _s18PredictionSequenceVMa_0();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 60), a2, a3);
}

uint64_t sub_237DF06E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return LinearTimeSeriesForecaster.Model.applied<A>(to:eventHandler:)();
}

uint64_t sub_237DF07B0()
{
  result = type metadata accessor for LinearTimeSeriesForecaster.Model();
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

uint64_t sub_237DF08C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 48);
  v22[1] = *(v12 + 8);
  v22[2] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v15 = v22 - v14;
  type metadata accessor for LinearTimeSeriesForecaster.Model();
  OUTLINED_FUNCTION_1_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v22 - v18;
  (*(v20 + 16))(v22 - v18, v3, v17);
  (*(v7 + 16))(v10, v3 + *(a1 + 60), v5);
  sub_237EF8BC0();
  return sub_237DF0ACC(v19, v15, v23);
}

uint64_t sub_237DF0ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = _s18PredictionSequenceV13AsyncIteratorVMa_0();
  *(a3 + v5[18]) = 0;
  v6 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  OUTLINED_FUNCTION_77();
  v8 = v7;
  (*(v7 + 16))(a3, a1, v6);
  v9 = v5[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_77();
  v12 = v11;
  (*(v11 + 16))(a3 + v9, a2, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_237F04760;
  *(v13 + 32) = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v6);
  *(v13 + 40) = *(a1 + *(v6 + 44));
  sub_237D14E78();
  (*(v12 + 8))(a2, AssociatedTypeWitness);
  result = (*(v8 + 8))(a1, v6);
  v15 = (a3 + v5[17]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = 1;
  return result;
}

uint64_t sub_237DF0CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237DF08C8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_237DF0D74(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = a2[2];
  v3[6] = a2[4];
  v3[7] = sub_237EF7E90();
  OUTLINED_FUNCTION_1_1();
  v3[8] = v5;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_23_8();
  v6 = sub_237EF90F0();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v7 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_20_31(v7);
  v3[15] = v8;
  v3[16] = OUTLINED_FUNCTION_27_0();
  v3[17] = a2[6];
  v3[18] = a2[3];
  OUTLINED_FUNCTION_23_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v3[19] = v11;
  *v11 = v12;
  v11[1] = sub_237DF0FB4;

  return MEMORY[0x282200308](v7, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_237DF0FB4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF10B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 16);
    (*(*(v0 + 104) + 8))(v1, *(v0 + 96));
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
    OUTLINED_FUNCTION_17_38();

    OUTLINED_FUNCTION_10_3();
LABEL_5:

    return v4();
  }

  v5 = *(v0 + 160);
  (*(*(v0 + 120) + 32))(*(v0 + 128), v1, v2);
  sub_237DF1A4C();
  v6 = *(v0 + 128);
  if (v5)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 88));

    OUTLINED_FUNCTION_3_0();
    goto LABEL_5;
  }

  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v8 + 68);
  *(v0 + 216) = v10;
  v11 = v9 + v10;
  v12 = *(v9 + v10);
  v13 = *(v9 + v10 + 8);
  if (v12 != *v6 || v13 != v6[1])
  {
    v15 = sub_237EF9D40();
    v16 = *(v0 + 128);
    v8 = *(v0 + 24);
    if (v15)
    {
      v6 = *(v0 + 128);
    }

    else
    {
      *(*(v0 + 32) + *(v8 + 72)) = 0;
      v17 = *v16;
      v18 = v6[1];
      v21 = *(v16 + 1);
      v19 = v16[4];
      sub_237EF8260();

      *v11 = v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v21;
      *(v11 + 32) = v19;
      v6 = *(v0 + 128);
      v8 = *(v0 + 24);
    }
  }

  sub_237DF1C24(v6, v8);
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_237DF1324;

  return sub_237DF1EDC();
}

uint64_t sub_237DF1324()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF1420()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[3];
  v2 = *(v0[4] + *(v1 + 72));
  v0[23] = *(v1 + 40);
  v3 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  v0[24] = v3;
  if (v2 >= LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v3))
  {
    v8 = v0[4];
    v9 = *(v0[3] + 64);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[25] = v10;
    *v10 = v11;
    v10[1] = sub_237DF1588;
    v12 = v0[10];

    return LinearTimeSeriesForecaster.Model.applied(to:eventHandler:)(v12, v8 + v9, 0, 0, v3);
  }

  else
  {
    v4 = v0[11];
    v5 = v0[2];
    (*(v0[15] + 8))(v0[16], v4);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
    OUTLINED_FUNCTION_17_38();

    OUTLINED_FUNCTION_10_3();

    return v6();
  }
}

uint64_t sub_237DF1588()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF1684()
{
  v21 = v0;
  v1 = *(*(v0 + 32) + *(v0 + 216) + 16);
  result = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(*(v0 + 192));
  v3 = v1 + result;
  if (__OFADD__(v1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(*(v0 + 192));
  if (__OFADD__(v3, result))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 + result < v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v18 = *(v0 + 88);
  v7 = *(v0 + 64);
  v17 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = (v9 + *(v0 + 216));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[4];
  v19 = *(v0 + 128);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v3;
  v20[3] = v3 + result;
  v20[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_237F04760;
  sub_237EF8260();
  *(v15 + 32) = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v4);
  *(v15 + 40) = *(v9 + *(v4 + 48));
  sub_237EF7E60();

  (*(v7 + 8))(v6, v8);
  TemporalFeature.init(id:feature:)(v20, v17, v8, v10);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v18);
  sub_237DF24A8();
  (*(v5 + 8))(v19, v18);
  OUTLINED_FUNCTION_17_38();

  OUTLINED_FUNCTION_10_3();

  return v16();
}

uint64_t sub_237DF1898()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_16_40();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DF1910()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[15] + 8))(v0[16], v0[11]);
  OUTLINED_FUNCTION_16_40();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DF19A0()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  sub_237DF24A8();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_16_40();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DF1A4C()
{
  sub_237EF7E90();
  v1 = sub_237EF7E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v3 = *(v0 + *(type metadata accessor for LinearTimeSeriesForecaster.Model() + 44));
  *(inited + 32) = v3;
  v4 = sub_237C60C7C(v1, inited);

  result = swift_setDeallocating();
  if ((v4 & 1) == 0)
  {
    v6 = sub_237EF7E20();
    sub_237EF9330();

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_237F03530;
    *(v7 + 32) = v3;
    v8 = MEMORY[0x2383E0A10]();
    v10 = v9;

    MEMORY[0x2383E0710](v8, v10);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237C84150();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = 0xD00000000000001CLL;
    *(v11 + 16) = 0x8000000237EFFCB0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DF1C24(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  OUTLINED_FUNCTION_34_0();
  sub_237EF7EE0();
  OUTLINED_FUNCTION_1_1();
  v21 = v5;
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F04760;
  v19 = *(a2 + 72);
  v10 = *(v2 + v19);
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3698);
  *(v9 + 64) = sub_237C96710(qword_27DEB36A0, &qword_27DEB3698);
  *(v9 + 32) = v10;
  *(v9 + 40) = v10;
  v20 = v10;
  OUTLINED_FUNCTION_34_0();
  v11 = *(v2 + *(type metadata accessor for LinearTimeSeriesForecaster.Model() + 44));
  *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  OUTLINED_FUNCTION_6_15();
  result = sub_237C96710(v12, &qword_27DEADDA0);
  *(v9 + 104) = result;
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v9 + 72) = 0;
  *(v9 + 80) = v11;
  sub_237EF7E90();
  type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v14 = v23;
  sub_237EF7FC0();
  v15 = v22;
  sub_237EF7EC0();
  (*(v21 + 8))(v7, v15);
  result = sub_237EF7FB0();
  v16 = v2 + *(a2 + 68);
  v17 = *(v14 + 24);
  if (v17 < *(v16 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v16 + 24) = v17;
  if (!__OFADD__(v20, 1))
  {
    *(v2 + v19) = v20 + 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237DF1EDC()
{
  OUTLINED_FUNCTION_2_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *(v2 + 16);
  v1[5] = *(v2 + 32);
  sub_237EF7E90();
  v3 = type metadata accessor for TemporalFeature();
  v1[6] = v3;
  OUTLINED_FUNCTION_34_0();
  v4 = sub_237EF90F0();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = OUTLINED_FUNCTION_27_0();
  v1[10] = *(v3 - 8);
  v1[11] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237DF2000()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v0 + 120) = v3;
  *(v0 + 96) = *(v1 + 40);
  v4 = *(v2 + v3);
  v5 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  if (v4 >= LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v5))
  {

    OUTLINED_FUNCTION_10_3();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_34_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_29_19();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 104) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_2_76(v6);

    return MEMORY[0x282200308](v8, v9, v10);
  }
}

uint64_t sub_237DF2134()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF2230()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
    goto LABEL_3;
  }

  v4 = *(v0 + 112);
  (*(*(v0 + 80) + 32))(*(v0 + 88), v1, v2);
  sub_237DF1A4C();
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 48);
  if (v4)
  {
    (*(v6 + 8))(*(v0 + 88), *(v0 + 48));

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  sub_237DF1C24(*(v0 + 88), *(v0 + 16));
  (*(v6 + 8))(v5, v7);
  v9 = *(*(v0 + 24) + *(v0 + 120));
  v10 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  if (v9 >= LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v10))
  {
LABEL_3:

    OUTLINED_FUNCTION_10_3();
LABEL_6:

    return v3();
  }

  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_34_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 104) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_2_76();

  return MEMORY[0x282200308](v13, v14, v15);
}

uint64_t sub_237DF2440()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DF24EC(uint64_t a1)
{
  v21 = *(a1 + 16);
  v3 = sub_237EF7EE0();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
  v6 = swift_allocObject();
  v20 = xmmword_237F04760;
  *(v6 + 16) = xmmword_237F04760;
  v7 = *(a1 + 72);
  v8 = *(v1 + v7);
  result = sub_237DF0D48();
  v10 = v8 - result;
  if (__OFSUB__(v8, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19[0] = v7;
  v19[1] = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  *(v6 + 56) = v11;
  OUTLINED_FUNCTION_6_15();
  result = sub_237C96710(v12, &qword_27DEADDA0);
  *(v6 + 64) = result;
  if (v10 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  *(v6 + 32) = 0;
  *(v6 + 40) = v10;
  result = type metadata accessor for LinearTimeSeriesForecaster.Model();
  v14 = *(v1 + *(result + 44));
  *(v6 + 96) = v11;
  *(v6 + 104) = v13;
  if (v14 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 72) = 0;
  *(v6 + 80) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  result = sub_237DF0D48();
  *(v15 + 56) = v11;
  *(v15 + 64) = v13;
  if (v8 < result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v15 + 32) = result;
  *(v15 + 40) = v8;
  *(v15 + 96) = v11;
  *(v15 + 104) = v13;
  *(v15 + 72) = 0;
  *(v15 + 80) = v14;
  sub_237EF7E90();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7FA0();

  sub_237EF7FB0();
  result = sub_237DF0D48();
  if (__OFSUB__(v8, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + v19[0]) = v8 - result;
  v16 = v1 + *(a1 + 68);
  v17 = *(v16 + 16);
  result = sub_237DF0D48();
  v18 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v16 + 24) >= v18)
  {
    *(v16 + 16) = v18;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_237DF275C(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C6A904;

  return sub_237DF0D74(a1, a2);
}

uint64_t sub_237DF2804(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DF2858()
{
  result = type metadata accessor for LinearTimeSeriesForecaster.Model();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = sub_237EF7E90();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_40()
{
}

uint64_t OUTLINED_FUNCTION_17_38()
{
}

uint64_t sub_237DF2A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedUpdatableSupervisedTemporalEstimator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_237DF2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = OUTLINED_FUNCTION_98_1();
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(v14, a4, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
  (*(*(a4 - 8) + 8))(a1, a4);
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  v15 = type metadata accessor for ComposedUpdatableSupervisedTemporalEstimator();
  return (*(*(a3 - 8) + 32))(a6 + *(v15 + 52), a2, a3);
}

uint64_t sub_237DF2C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_73();
  v10[12] = a9;
  v10[13] = v9;
  v10[10] = v11;
  v10[11] = v12;
  v10[8] = v13;
  v10[9] = v14;
  v10[6] = v15;
  v10[7] = v16;
  v10[4] = v17;
  v10[5] = v18;
  v10[14] = *(*(v13 + 40) + 8);
  v10[15] = *(v13 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v10[17] = v20;
  v10[18] = swift_task_alloc();
  v10[19] = swift_task_alloc();
  OUTLINED_FUNCTION_84_3();
  v10[20] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v10[21] = v21;
  v10[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_84_3();
  swift_getAssociatedTypeWitness();
  v10[23] = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v10[24] = v22;
  OUTLINED_FUNCTION_42();
  v23 = type metadata accessor for AnnotatedFeature();
  v10[25] = v23;
  OUTLINED_FUNCTION_18(v23);
  v10[26] = OUTLINED_FUNCTION_27_0();
  v10[27] = *(v22 - 8);
  v10[28] = swift_task_alloc();
  v10[29] = swift_task_alloc();
  v10[30] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v10[31] = v24;
  v10[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_9_24();
  v25 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v25);
  v10[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v10[34] = v26;
  v10[35] = OUTLINED_FUNCTION_27_0();
  v27 = swift_getAssociatedTypeWitness();
  v10[36] = v27;
  OUTLINED_FUNCTION_6_1(v27);
  v10[37] = v28;
  v10[38] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v29 = swift_checkMetadataState();
  v10[39] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v10[40] = v30;
  v10[41] = swift_task_alloc();
  v10[42] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v10[43] = v31;
  *v31 = v32;
  v31[1] = sub_237DF30F4;
  OUTLINED_FUNCTION_68_4();

  return v35(v33, v34);
}

uint64_t sub_237DF30F4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 352) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237DF31F4()
{
  v1 = v0[44];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[40] + 8))(v0[42], v0[39]);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_74_1();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  v0[2] = sub_237EF8110();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  OUTLINED_FUNCTION_48();
  v6 = v0[33];
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_46_5(v6);
  if (!v7)
  {
    v8 = OUTLINED_FUNCTION_56_6();
    v9(v8);
    OUTLINED_FUNCTION_15_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[45] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_28_23(v10);
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X8, X16 }
  }

  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_237EF8B90();
  v14 = v0[2];
  v0[3] = v14;
  v0[47] = v14;
  OUTLINED_FUNCTION_15_0();
  v15 = swift_task_alloc();
  v0[48] = v15;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_94_2();
  *v15 = v16;
  OUTLINED_FUNCTION_27_23();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DF359C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237DF369C()
{
  v1 = v0[27];
  v25 = v0[29];
  v2 = v0[24];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v25, v2);
  v7 = OUTLINED_FUNCTION_51_9();
  v8(v7);
  v9 = v0[46];
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_46_3();
  if (!v10)
  {
    v15 = OUTLINED_FUNCTION_56_6();
    v16(v15);
    OUTLINED_FUNCTION_15_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[45] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_28_23();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X8, X16 }
  }

  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_237EF8B90();
  if (v9)
  {

    v11 = OUTLINED_FUNCTION_31_0();
    v12(v11);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_74_1();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  v21 = v0[2];
  v0[3] = v21;
  v0[47] = v21;
  OUTLINED_FUNCTION_15_0();
  v22 = swift_task_alloc();
  v0[48] = v22;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_94_2();
  *v22 = v23;
  OUTLINED_FUNCTION_27_23();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DF3A74()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 392) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF3B7C()
{
  v1 = v0[41];
  v2 = v0[39];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[4];
  (*(v0[40] + 32))(v1);
  (*(v5 + 32))(v4, v3, v6);
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v4, v2, v6, v7);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_237DF3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73();
  v11[17] = a10;
  v11[18] = v10;
  v11[15] = v43;
  v11[16] = a9;
  v11[13] = v12;
  v11[14] = v42;
  v11[11] = v13;
  v11[12] = v14;
  v11[9] = v15;
  v11[10] = v16;
  v11[7] = v17;
  v11[8] = v18;
  v11[6] = v19;
  v11[19] = *(*(v13 + 40) + 8);
  v11[20] = *(v13 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[21] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[22] = v21;
  v11[23] = swift_task_alloc();
  v11[24] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[25] = v22;
  v11[26] = OUTLINED_FUNCTION_27_0();
  v23 = swift_getAssociatedTypeWitness();
  v11[27] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v11[28] = v24;
  v11[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_83_3();
  v11[30] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v11[31] = v25;
  v11[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_83_3();
  swift_getAssociatedTypeWitness();
  v11[33] = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedTypeWitness();
  v11[34] = v26;
  OUTLINED_FUNCTION_23_8();
  v27 = type metadata accessor for AnnotatedFeature();
  v11[35] = v27;
  OUTLINED_FUNCTION_18(v27);
  v11[36] = OUTLINED_FUNCTION_27_0();
  v11[37] = *(v26 - 8);
  v11[38] = swift_task_alloc();
  v11[39] = swift_task_alloc();
  v11[40] = swift_task_alloc();
  v11[41] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v11[42] = v28;
  v11[43] = swift_task_alloc();
  v11[44] = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v29 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v29);
  v11[45] = swift_task_alloc();
  v11[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[47] = v30;
  v11[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_9_24();
  v31 = swift_getAssociatedTypeWitness();
  v11[49] = v31;
  OUTLINED_FUNCTION_6_1(v31);
  v11[50] = v32;
  v11[51] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v33 = swift_checkMetadataState();
  v11[52] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v11[53] = v34;
  v11[54] = swift_task_alloc();
  v11[55] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v11[56] = v35;
  *v35 = v36;
  v35[1] = sub_237DF42B8;
  OUTLINED_FUNCTION_68_4();

  return v39(v37, v38);
}

uint64_t sub_237DF42B8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 456) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237DF43B8()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[57];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[53] + 8))(v0[55], v0[52]);
    OUTLINED_FUNCTION_11_29();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_39_7();

    return v2();
  }

  else
  {
    v0[2] = sub_237EF8110();
    v5 = OUTLINED_FUNCTION_44();
    v6(v5);
    OUTLINED_FUNCTION_48();
    v7 = v0[46];
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_5(v7);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_69_3();
      (*(v10 + 8))(v9);
      v0[3] = sub_237EF8110();
      OUTLINED_FUNCTION_89_0();
      v11();
      sub_237EF86F0();
      v12 = v0[45];
      v13 = v0[41];
      v14 = v0[27];
      swift_getAssociatedConformanceWitness();
      sub_237EF91A0();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        v15 = OUTLINED_FUNCTION_53_5();
        v16(v15);
        sub_237EF8B90();
        OUTLINED_FUNCTION_8_38();
        v43 = swift_task_alloc();
        OUTLINED_FUNCTION_44_6(v43);
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_71_2();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *v14 = v0;
        OUTLINED_FUNCTION_6_31(AssociatedConformanceWitness);
        OUTLINED_FUNCTION_81();

        __asm { BRAA            X8, X16 }
      }

      v29 = OUTLINED_FUNCTION_19_23();
      v31 = v30(v29);
      OUTLINED_FUNCTION_12_29(v31, v32, v33, v34, v35, v36, v37, v38, v47, v48, v49, v50, v51, v52, v53, v54, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[60] = v39;
      *v39 = v40;
      OUTLINED_FUNCTION_10_49(v39);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_48_6();
      v19 = v18(v17);
      OUTLINED_FUNCTION_12_29(v19, v20, v21, v22, v23, v24, v25, v26, v47, v48, v49, v50, v51, v52, v53, v54, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[58] = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_34_11(v27);
    }

    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v41();
  }
}

uint64_t sub_237DF48A8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF49A8()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[37];
  v59 = v0[36];
  v2 = v0[34];
  v60 = v0[35];
  v61 = v0[40];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v61, v2);
  v7 = OUTLINED_FUNCTION_51_9();
  v8(v7);
  v9 = v0[59];
  v10 = v0[49];
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_46_3();
  if (!v11)
  {
    v23 = OUTLINED_FUNCTION_48_6();
    v25 = v24(v23);
    OUTLINED_FUNCTION_12_29(v25, v26, v27, v28, v29, v30, v31, v32, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[58] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_34_11();
LABEL_9:
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v47();
  }

  v12 = OUTLINED_FUNCTION_69_3();
  v13 = v0[26];
  (*(v14 + 8))(v12);
  v0[3] = sub_237EF8110();
  OUTLINED_FUNCTION_42();
  v15();
  OUTLINED_FUNCTION_56_0();
  sub_237EF86F0();
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v10);
  if (!v11)
  {
    v35 = OUTLINED_FUNCTION_19_23();
    v37 = v36(v35);
    OUTLINED_FUNCTION_12_29(v37, v38, v39, v40, v41, v42, v43, v44, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[60] = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_10_49(v45);
    goto LABEL_9;
  }

  v16 = OUTLINED_FUNCTION_53_5();
  v17(v16);
  sub_237EF8B90();
  if (!v9)
  {
    OUTLINED_FUNCTION_8_38();
    v49 = swift_task_alloc();
    OUTLINED_FUNCTION_44_6(v49);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_71_2();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v13 = v0;
    OUTLINED_FUNCTION_6_31(AssociatedConformanceWitness);
    OUTLINED_FUNCTION_81();

    __asm { BRAA            X8, X16 }
  }

  v18 = OUTLINED_FUNCTION_31_0();
  v19(v18);
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_33_10();

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_39_7();

  return v20();
}

uint64_t sub_237DF4E68()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF4F70()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[43];
  v2 = v0[37];
  v43 = v0[36];
  v3 = v0[34];
  v44 = v0[35];
  v45 = v0[38];
  v4 = OUTLINED_FUNCTION_26_23();
  v5(v4);
  v6 = OUTLINED_FUNCTION_27_16();
  v7(v6);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v2 + 8))(v45, v3);
  v8 = OUTLINED_FUNCTION_51_9();
  v9(v8);
  v10 = v0[61];
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v2 + 8);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_53_5();
    v13(v12);
    sub_237EF8B90();
    if (!v10)
    {
      OUTLINED_FUNCTION_8_38();
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_44_6(v33);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_71_2();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *v1 = v0;
      OUTLINED_FUNCTION_6_31(AssociatedConformanceWitness);
      OUTLINED_FUNCTION_81();

      __asm { BRAA            X8, X16 }
    }

    v14 = OUTLINED_FUNCTION_31_0();
    v15(v14);
    OUTLINED_FUNCTION_11_29();
    OUTLINED_FUNCTION_33_10();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_39_7();

    return v16();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_19_23();
    v21 = v20(v19);
    OUTLINED_FUNCTION_12_29(v21, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[60] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v31();
  }
}

void sub_237DF5308()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = *(v1 + 40);
  v13 = v4;
  v12 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_56_11();
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_23_8();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_45_1();
  v10 = OUTLINED_FUNCTION_98_1();
  v11(v10, v7);
  (*(v3 + 16))(v12, v3);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(&associated type descriptor for SupervisedTemporalEstimator.Transformer, v0, v8, AssociatedTypeWitness, v13);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DF549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  v64 = v31;
  v65 = v32;
  v62 = v33;
  v63 = v34;
  v30[16] = a29;
  v30[17] = v29;
  v30[14] = v35;
  v30[15] = v36;
  v30[12] = v37;
  v30[13] = v38;
  v30[10] = v31;
  v30[11] = v32;
  v30[8] = v33;
  v30[9] = v34;
  v39 = *(v37 + 32);
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_84_3();
  v30[18] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v30[19] = v40;
  v30[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_89_0();
  v30[21] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56_0();
  v30[22] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[23] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_9_24();
  v42 = type metadata accessor for AnnotatedFeature();
  v30[24] = v42;
  OUTLINED_FUNCTION_18(v42);
  v30[25] = OUTLINED_FUNCTION_27_0();
  v30[26] = *(AssociatedTypeWitness - 8);
  v30[27] = swift_task_alloc();
  v30[28] = swift_task_alloc();
  v30[29] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v30[30] = v43;
  v30[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v44 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v44);
  v30[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v30[33] = v45;
  v30[34] = OUTLINED_FUNCTION_27_0();
  v46 = swift_getAssociatedTypeWitness();
  v30[35] = v46;
  OUTLINED_FUNCTION_6_1(v46);
  v30[36] = v47;
  v30[37] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_15_0();
  v61 = v48 + *v48;
  v49 = swift_task_alloc();
  v30[38] = v49;
  *v49 = v30;
  v49[1] = sub_237DF5864;
  OUTLINED_FUNCTION_81();

  return v58(v50, v51, v52, v53, v54, v55, v56, v57, a9, v39 + 24, v61, v62, v63, v64, v65, a29, v29, a18, a19, a20, a21, a22);
}

uint64_t sub_237DF5864()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_106_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_106_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DF59E0()
{
  OUTLINED_FUNCTION_73();
  v1 = v0[39];
  sub_237EF8B90();
  if (v1)
  {
    OUTLINED_FUNCTION_76_4();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_4();

    return v2();
  }

  else
  {
    v0[6] = sub_237EF8110();
    v5 = OUTLINED_FUNCTION_44();
    v6(v5);
    OUTLINED_FUNCTION_48();
    v7 = v0[32];
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_46_5(v7);
    if (v8)
    {
      (*(v0[36] + 8))(v0[37], v0[35]);
      sub_237EF8B90();
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_71_2();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_89_2(AssociatedConformanceWitness);
      OUTLINED_FUNCTION_15_0();
      v29 = v16 + *v16;
      v17 = swift_task_alloc();
      v0[43] = v17;
      OUTLINED_FUNCTION_9_24();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_94_2();
      *v17 = v18;
      OUTLINED_FUNCTION_25_26(v19, v20, v21, v22, v23, v24, v25, v26, 24, v29, v30, v31);
      OUTLINED_FUNCTION_68_4();

      __asm { BRAA            X8, X16 }
    }

    v9 = OUTLINED_FUNCTION_86_1();
    v10(v9);
    OUTLINED_FUNCTION_34_0();
    swift_checkMetadataState();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[40] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_29_22(v11);
    OUTLINED_FUNCTION_68_4();

    return v13();
  }
}

uint64_t sub_237DF5D5C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF5E5C()
{
  OUTLINED_FUNCTION_73();
  v1 = v0[26];
  v36 = v0[25];
  v37 = v0[28];
  v2 = v0[23];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v37, v2);
  v7 = OUTLINED_FUNCTION_51_9();
  v8(v7);
  v9 = v0[41];
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_46_3();
  if (v10)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    sub_237EF8B90();
    if (!v9)
    {
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_71_2();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_89_2(AssociatedConformanceWitness);
      OUTLINED_FUNCTION_15_0();
      v34 = v21 + *v21;
      v22 = swift_task_alloc();
      v0[43] = v22;
      OUTLINED_FUNCTION_9_24();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_94_2();
      *v22 = v23;
      OUTLINED_FUNCTION_25_26(v24, v25, v26, v27, v28, v29, v30, v31, 24, v34, v35, v36);
      OUTLINED_FUNCTION_68_4();

      __asm { BRAA            X8, X16 }
    }

    OUTLINED_FUNCTION_76_4();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_4();

    return v11();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_86_1();
    v15(v14);
    OUTLINED_FUNCTION_34_0();
    swift_checkMetadataState();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[40] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_29_22();
    OUTLINED_FUNCTION_68_4();

    return v18();
  }
}

uint64_t sub_237DF6220()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 352) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF6328()
{
  OUTLINED_FUNCTION_19_18();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237DF63E8()
{
  OUTLINED_FUNCTION_19_18();
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_76_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_106_1();

  __asm { BRAA            X1, X16 }
}

void sub_237DF64C8()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_76_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_106_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_237DF6574(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*(a3[4] + 8) + 56))(a1, a2, a3[2], *(a3[4] + 8));
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = *(a3[5] + 8);
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTemporalTransformer();
    return (*(v8 + 56))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237DF66E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[3];
  v38 = *(a2[5] + 8);
  v40 = v5;
  OUTLINED_FUNCTION_40_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v39 = &v31 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  OUTLINED_FUNCTION_40_0();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v36 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v31 - v23;
  v25 = *(v13 + 64);
  v37 = a1;
  v26 = v41;
  result = v25(a1, v14, v13, v22);
  if (!v26)
  {
    v31 = v14;
    v32 = v20;
    v41 = v15;
    v28 = AssociatedTypeWitness;
    (*(v38 + 64))(v37, v40, v38);
    v29 = v32;
    v30 = v41;
    (*(v36 + 32))(v32, v24, v41);
    (*(v33 + 32))(v10, v39, v28);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v29, v10, v30, v28, v34);
  }

  return result;
}

uint64_t sub_237DF69CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_84_3();
  result = v7();
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v11 = *(a3 + 40);
    v9 = *(a3 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTemporalTransformer();
    return (*(v11 + 32))(a1 + *(v10 + 52), a2, v9);
  }

  return result;
}

uint64_t sub_237DF6B3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a3;
  v46 = a2[5];
  v7 = a2[3];
  v38 = *(v46 + 8);
  v47 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v41 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v44 = &v34 - v13;
  v14 = *(a2[4] + 8);
  v15 = a2[2];
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v40 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v45 = a1;
  v43 = v4;
  v25 = v48;
  OUTLINED_FUNCTION_42();
  result = v26();
  if (!v25)
  {
    v35 = v21;
    v36 = v15;
    v34 = v14;
    v48 = v16;
    v28 = v40;
    v29 = v41;
    v30 = AssociatedTypeWitness;
    v31 = v44;
    (*(v46 + 40))(v45, v47);
    v32 = v35;
    v33 = v48;
    (*(v28 + 32))(v35, v24, v48);
    (*(v37 + 32))(v29, v31, v30);
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v32, v29, v33, v30, v39);
  }

  return result;
}

uint64_t sub_237DF6E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v38 = swift_task_alloc();
  *(v29 + 16) = v38;
  *v38 = v29;
  v38[1] = sub_237C6A904;

  return sub_237DF549C(a1, a2, a3, a4, a9, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_237DF6F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return sub_237DF2C2C(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237DF7070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  v16[1] = sub_237C6B728;

  return sub_237DF3D0C(a1, a2, a3, a4, a5, a10, a6, a7, a8, v22);
}

void UpdatableSupervisedTemporalEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v29 = v0;
  v27 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_37_15();
  v8 = type metadata accessor for TransformerToTemporalAdaptor();
  OUTLINED_FUNCTION_1();
  v28 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_42_13();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_23_8();
  v11 = type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_1();
  v26 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_52_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_1();
  v30 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  (*(v20 + 16))(v19 - v18, v29, v7);
  Transformer.adaptedAsTemporal()(v5, v27);
  TemporalTransformer.adaptedAsUpdatableEstimator()(v8, WitnessTable);
  (*(v28 + 8))(v2, v8);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v11, AssociatedTypeWitness, v30, AssociatedConformanceWitness);
  (*(v26 + 8))(v1, v11);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_89_0();
  sub_237DF2A08(v21, v22, v23, v15, v24);
  OUTLINED_FUNCTION_38_0();
}

{
  sub_237DF7F98();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  (*(v7 + 16))(v6 - v5, v0, v2);
  v8 = OUTLINED_FUNCTION_56_0();
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v8, v9);
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_83_3();
  sub_237DF2A08(v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_38_0();
}

{
  sub_237DF7F98();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v16 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11, v2, v6);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v16, AssociatedTypeWitness, v4, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  sub_237DF2A08(v13, v1, v6, v8, v15);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  (*(v14 + 16))(v0, v15, v4);
  (*(v8 + 16))(v12, v6, v2);
  v16 = OUTLINED_FUNCTION_58_7();
  sub_237DF2A08(v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_38_0();
}

void sub_237DF7F98()
{
  OUTLINED_FUNCTION_37_0();
  v21 = v3;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_37_15();
  v8 = v7(v6);
  OUTLINED_FUNCTION_1();
  v20 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  (*(v13 + 16))(v1, v0, v5);
  v14 = OUTLINED_FUNCTION_101_2();
  v21(v14);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v8, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
  (*(v20 + 8))(v2, v8);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_83_3();
  sub_237DF2A08(v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_38_0();
}

void get_witness_table_18CreateMLComponents36UpdatableSupervisedTemporalEstimatorRzAA0cF0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcdeF0VyxAA0cef2ToD7AdaptorVyAA0cfkeL0Vyqd__G10AnnotationQzGGAaBHPyHCTm()
{
  OUTLINED_FUNCTION_69_6();
  v1(255, *(v0 + 8), *(v0 + 24));
  OUTLINED_FUNCTION_97_1();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_77();
  OUTLINED_FUNCTION_72_3();
}

uint64_t sub_237DF8584(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DF874C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DF89FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_77()
{
  type metadata accessor for ComposedUpdatableSupervisedTemporalEstimator();

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_25_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v14 + 8) = sub_237DF6220;
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  return a12 + v15;
}

uint64_t OUTLINED_FUNCTION_27_23()
{
  *(v0 + 8) = sub_237DF3A74;
  result = v1[19];
  v4 = v1[14];
  *(v2 + 16) = v1[15];
  *(v2 + 24) = v4;
  return result;
}

void OUTLINED_FUNCTION_36_15()
{
  v1 = v0[6];
  v0[42] = v1;
  v0[7] = v1;
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_76_4()
{
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor();
}

uint64_t OUTLINED_FUNCTION_89_2(uint64_t a1)
{
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v2;
  v1[5] = a1;

  return type metadata accessor for ComposedTemporalTransformer();
}

uint64_t OUTLINED_FUNCTION_107_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_237DF8F60(char a1)
{
  v2 = sub_237CA6780(a1, a1);
  result = sub_237CA6020(a1);
  if (__OFADD__(v2, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_237CA6780(a1 & 1, a1 & 1);
  result = sub_237CA6120(a1 & 1);
  if (__OFADD__(v4, result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_237DF9014(char a1)
{
  v2 = *(v1 + 24);
  if (*(v2 + 16) && (v3 = sub_237D30084(a1 & 1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t MultiLabelClassificationMetrics.truePositiveCount(of:)()
{
  OUTLINED_FUNCTION_4_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8);
  OUTLINED_FUNCTION_2_78();
  if (!v3)
  {
    return 0;
  }

  v0 = OUTLINED_FUNCTION_0_69();
  v1 = sub_237CA6780(v0, 1);
  OUTLINED_FUNCTION_1_86();
  return v1;
}

uint64_t sub_237DF90F0(int a1)
{
  result = 0;
  v4 = 0;
  v5 = *(v1 + 40);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v4 << 6);
    v13 = (*(v5 + 48) + 2 * v12);
    if (*v13 != (a1 & 1) && ((v13[1] ^ a1) & 1) != 0)
    {
      v14 = *(*(v5 + 56) + 8 * v12);
      v15 = __OFADD__(result, v14);
      result += v14;
      if (v15)
      {
        __break(1u);
        return result;
      }
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return result;
    }

    v8 = *(v5 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237DF91D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8);
  sub_237EF82F0();
  if (!v7)
  {
    return 0;
  }

  v4 = a3(1);
  sub_237CA67D4(v6, v7);
  return v4;
}

uint64_t MultiLabelClassificationMetrics.f1Score(for:)()
{
  OUTLINED_FUNCTION_4_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8);
  result = OUTLINED_FUNCTION_2_78();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_0_69();
    sub_237DF8F60(v1);
    return OUTLINED_FUNCTION_1_86();
  }

  return result;
}

unint64_t sub_237DF9340@<X0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  type metadata accessor for ClassificationDistribution();
  result = ClassificationDistribution.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    if (a2 <= 0.0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (*&result < a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 1;
LABEL_6:
  *a1 = v5;
  return result;
}

uint64_t sub_237DF93FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237EF8CD0();
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return sub_237CA67D4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_2_78()
{

  return sub_237EF82F0();
}

void OUTLINED_FUNCTION_5_74()
{

  sub_237C9339C();
}

uint64_t ShuffleRandomly.init<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11[0] = a2;
  v11[1] = a2;
  OUTLINED_FUNCTION_1_0();
  swift_getExtendedExistentialTypeMetadata();
  *a5 = sub_237EF89A0();
  v11[3] = a3;
  v11[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v11);
  a1();
  v9 = type metadata accessor for ShuffleRandomly();
  sub_237DF95B8(v11, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_237DF95B8(uint64_t a1, uint64_t a2)
{
  sub_237C66728(a1, v12);
  swift_getExtendedExistentialTypeMetadata();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    sub_237C6678C(&v11, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = *(v5 + 64);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v6(v4, v5);
    sub_237DF95B8(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v8 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v9(v7, v8);
    sub_237DF95B8(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_237C66728(a1, v15);
    sub_237EF8A60();
    return sub_237EF8A20();
  }
}

uint64_t ShuffleRandomly.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[16] = v2;
  v1[17] = v3;
  v1[14] = v4;
  v1[15] = v5;
  v1[12] = v6;
  v1[13] = v7;
  v1[11] = v8;
  v10 = *(v9 + 16);
  v1[18] = v10;
  v1[19] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *v0;
  v1[20] = v11;
  v1[21] = v12;
  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237DF98B4, 0, 0);
}

uint64_t sub_237DF98B4()
{
  v1 = v0[21];
  v2 = v0[18];
  (*(v0[19] + 16))(v0[11], v0[12], v2);
  v0[10] = v1;
  v0[7] = v2;
  v0[8] = v2;
  OUTLINED_FUNCTION_1_0();
  v0[22] = swift_getExtendedExistentialTypeMetadata();
  sub_237EF8A60();
  swift_getWitnessTable();
  v0[23] = sub_237EF8820();

  sub_237EF8260();
  v3 = sub_237EF8920();

  v0[9] = v3;
  if (v3 == sub_237EF8A00())
  {

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  else
  {
    v6 = sub_237EF89D0();
    sub_237EF8960();
    if (v6)
    {
      sub_237C66728(v0[23] + 40 * v3 + 32, (v0 + 2));
      OUTLINED_FUNCTION_26_5();
      sub_237EF8A40();
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_2_79();
      v7 = swift_task_alloc();
      v0[24] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_0_70(v7);

      __asm { BRAA            X8, X16 }
    }

    OUTLINED_FUNCTION_26_5();
    result = sub_237EF93A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_237DF9B40()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  *(*v1 + 200) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  if (v0)
  {

    v3 = sub_237DF9E74;
  }

  else
  {
    v3 = sub_237DF9C6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237DF9C6C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[9];
  if (v5 == sub_237EF8A00())
  {

    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {
    v8 = sub_237EF89D0();
    sub_237EF8960();
    if (v8)
    {
      sub_237C66728(v0[23] + 40 * v5 + 32, (v0 + 2));
      OUTLINED_FUNCTION_26_5();
      sub_237EF8A40();
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_2_79();
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_0_70();

      __asm { BRAA            X8, X16 }
    }

    OUTLINED_FUNCTION_26_5();
    result = sub_237EF93A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_237DF9E74()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[19] + 8))(v0[11], v0[18]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DF9EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return ShuffleRandomly.applied<A>(to:generator:eventHandler:)();
}

uint64_t sub_237DF9FF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_0_70(uint64_t a1)
{
  *(a1 + 8) = sub_237DF9B40;
  result = *(v2 + 160);
  *(v3 + 16) = v1;
  return result;
}

uint64_t CategoricalImputer.strategy.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_5_58();
  return (*(v3 + 16))(a1, v1);
}

uint64_t CategoricalImputer.strategy.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_5_58();
  return (*(v3 + 40))(v1, a1);
}

uint64_t CategoricalImputer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CategoricalImputer.Strategy();
  OUTLINED_FUNCTION_5_58();
  return (*(v4 + 32))(a2, a1);
}

uint64_t CategoricalImputer.init(constant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

uint64_t CategoricalImputer.fitted<A>(to:eventHandler:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (**a4)(uint64_t, char *, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v6 = v5;
  v26 = a4;
  v11 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v27 = v11;
  v28 = v18;
  v25 = *(v17 + 32);
  v29 = v25;
  type metadata accessor for CategoricalImputer.Strategy();
  OUTLINED_FUNCTION_1_1();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, v6, v20);
  if (__swift_getEnumTagSinglePayload(v22, 1, v11) == 1)
  {
    return sub_237DFA42C(a1, a2, a3, v26, a5);
  }

  (*(v13 + 32))(v16, v22, v11);
  return ImputeTransformer.init(value:)(v16, v11, a5);
}

uint64_t sub_237DFA42C@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (**a4)(uint64_t, char *, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v70 = a4;
  v72 = a1;
  v58 = a5;
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v68 = v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - v12;
  v13 = sub_237EF90F0();
  v14 = sub_237EF90F0();
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v57 - v15;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v59 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  OUTLINED_FUNCTION_1_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v61 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  v57 = a2;
  v35 = *(a2 + 40);
  v37 = v36;
  v74 = v35;
  v77 = sub_237EF8100();
  v63 = v34;
  v73 = v7;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v7);
  (*(v17 + 16))(v20, v72, a3);
  v38 = v62;
  v39 = v24;
  sub_237EF86F0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = (v26 + 32);
  v60 = v26;
  v72 = (v26 + 8);
  v69 = 0;
  v70 = (v65 + 4);
  v66 = v31;
  v67 = (v65 + 2);
  ++v65;
LABEL_2:
  v42 = v73;
  v43 = v71;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v43, 1, v13) == 1)
    {
      break;
    }

    (*v41)(v31, v43, v13);
    if (__swift_getEnumTagSinglePayload(v31, 1, v42) == 1)
    {
      (*v72)(v31, v13);
    }

    else
    {
      v64 = *v70;
      result = v64(v38, v31, v42);
      v45 = v77;
      v46 = *(v77 + 16);
      if (v46)
      {
        result = sub_237E2A148(v38, v42, v74);
        if (v47)
        {
          v46 = *(*(v45 + 56) + 8 * result);
        }

        else
        {
          v46 = 0;
        }
      }

      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      v49 = v41;
      v50 = AssociatedConformanceWitness;
      v51 = v39;
      v52 = v37;
      v42 = v73;
      (*v67)(v68, v38, v73);
      v75 = v48;
      v76 = 0;
      sub_237EF82B0();
      sub_237EF8300();
      if (v69 < v48)
      {
        v53 = v63;
        (*v72)(v63, v13);
        v64(v53, v38, v42);
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v42);
        v69 = v48;
        v37 = v52;
        v39 = v51;
        AssociatedConformanceWitness = v50;
        v41 = v49;
        v31 = v66;
        goto LABEL_2;
      }

      (*v65)(v38, v42);
      v39 = v51;
      v43 = v71;
      AssociatedConformanceWitness = v50;
      v41 = v49;
      v31 = v66;
    }
  }

  (*(v59 + 8))(v39, v37);
  v54 = sub_237D0510C();
  v55 = v61;
  if ((v54 & 1) == 0)
  {
    sub_237D05198(0xD000000000000012, 0x8000000237F16C30);
  }

  v56 = v63;
  (*(v60 + 16))(v55, v63, v13);
  result = __swift_getEnumTagSinglePayload(v55, 1, v42);
  if (result != 1)
  {
    (*v72)(v56, v13);
    ImputeTransformer.init(value:)(v55, v42, v58);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_237DFAA70(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t, char *, uint64_t), uint64_t a7)
{
  CategoricalImputer.fitted<A>(to:eventHandler:)(a2, a7, a5, a6, a1);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t CategoricalImputer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001DLL, 0x8000000237F00030);
  OUTLINED_FUNCTION_2_80();
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237DFABA0()
{
  result = type metadata accessor for CategoricalImputer.Strategy();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237DFAC30()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_237DFAC8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_237DFAE04(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_80()
{

  return type metadata accessor for CategoricalImputer.Strategy();
}

uint64_t TransformerToTemporalAdaptor.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  OUTLINED_FUNCTION_1_1();
  v8[10] = v11;
  v8[11] = OUTLINED_FUNCTION_27_0();
  v8[12] = *(a5 + 24);
  v12 = *(a5 + 16);
  v8[13] = v12;
  v8[14] = swift_getAssociatedTypeWitness();
  v8[15] = type metadata accessor for TemporalFeature();
  v8[16] = *(a7 + 8);
  OUTLINED_FUNCTION_43_0();
  v13 = sub_237EF9AE0();
  v8[17] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v8[18] = v14;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v15 = *(v12 - 8);
  v8[21] = v15;
  v8[22] = *(v15 + 64);
  v8[23] = OUTLINED_FUNCTION_40_11();
  v8[24] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237DFB238()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v18 = v0[22];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v23 = v0[20];
  v4 = v0[13];
  v28 = v0[14];
  v5 = v0[7];
  v19 = v0[8];
  v20 = v0[12];
  v21 = v0[4];
  v22 = v0[5];
  v27 = v0[2];
  EstimatorToTemporalAdaptor.base.getter(v0[6], v1);
  v6 = OUTLINED_FUNCTION_144();
  v7(v6);
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  *(v9 + 4) = v20;
  *(v9 + 5) = v19;
  (*(v3 + 32))(&v9[v8], v2, v4);
  v10 = &v9[(v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v10 = v21;
  v10[1] = v22;
  sub_237C70604(v21);
  sub_237EF8BD0();

  v11 = OUTLINED_FUNCTION_9_9();
  v12(v11);
  v13 = (*(v19 + 24))(v5, v19);
  LOBYTE(v5) = v14;
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:count:)(v25, v13, v5 & 1, v28, v26, WitnessTable, v27);
  (*(v24 + 8))(v23, v26);
  (*(v3 + 8))(v1, v4);

  OUTLINED_FUNCTION_10_3();

  return v16();
}

uint64_t sub_237DFB4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a6;
  v8[13] = a8;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v8[15] = *(AssociatedTypeWitness - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_getAssociatedTypeWitness();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DFB620, 0, 0);
}

uint64_t sub_237DFB620()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[16];
  v2 = type metadata accessor for TemporalFeature();
  TemporalFeature.id.getter((v0 + 2));
  TemporalFeature.feature.getter(v2, v1);
  OUTLINED_FUNCTION_15_0();
  v13 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_237DFB764;
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];

  return v13(v6, v7, v10, v11, v8, v9);
}

uint64_t sub_237DFB764()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFB8B8()
{
  OUTLINED_FUNCTION_2_0();
  TemporalFeature.init(id:feature:)((v0 + 2), v0[18], v0[17], v0[7]);

  OUTLINED_FUNCTION_10_3();

  return v1();
}

uint64_t sub_237DFB930()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DFB998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return TransformerToTemporalAdaptor.applied<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t EstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v3 = v2;
  v5 = v4;
  v1[10] = v6;
  v1[11] = v0;
  v1[8] = v4;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[12] = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v12;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v5 + 24);
  OUTLINED_FUNCTION_23_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_137(AssociatedTypeWitness);
  v1[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_116();
  v1[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v1[21] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v15 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v15);
  v1[24] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v1[25] = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_1();
  v1[26] = v16;
  v1[27] = OUTLINED_FUNCTION_27_0();
  v1[28] = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_159();
  v1[29] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v1[30] = v18;
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  v1[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[33] = v20;
  v1[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v21 = OUTLINED_FUNCTION_140();
  v1[35] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v1[36] = v22;
  v1[37] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_237DFBFF0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFC340()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFC4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_83_4();
  v22 = v12[14];
  (*(v12[17] + 32))(v12[4], v12[18]);

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_237DFC594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = OUTLINED_FUNCTION_104_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_31_0();
  v16(v15);
  v26 = *(v12 + 312);
  OUTLINED_FUNCTION_83_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_237DFC680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v22 = *(v12 + 336);
  OUTLINED_FUNCTION_83_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

void EstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_145(v2, v3);
  OUTLINED_FUNCTION_135();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_134();
  v6 = OUTLINED_FUNCTION_30_27();
  v7(v6);
  v8 = OUTLINED_FUNCTION_152();
  v9(v8);
  v10 = OUTLINED_FUNCTION_100_2();
  v11(v10);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void EstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DFC9F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return EstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)();
}

uint64_t UpdatableEstimatorToTemporalAdaptor.makeTransformer()(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52_10();
  EstimatorToTemporalAdaptor.base.getter(a1, v1);
  v8 = OUTLINED_FUNCTION_122();
  v9(v8);
  (*(v5 + 8))(v1, v3);
  v10 = OUTLINED_FUNCTION_149();
  return v11(v10);
}

uint64_t UpdatableEstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v3 = v2;
  v5 = v4;
  v1[10] = v6;
  v1[11] = v0;
  v1[8] = v4;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[12] = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v12;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(*(v5 + 24) + 8);
  OUTLINED_FUNCTION_23_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_137(AssociatedTypeWitness);
  v1[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_116();
  v1[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v1[21] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v15 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v15);
  v1[24] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v1[25] = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_1();
  v1[26] = v16;
  v1[27] = OUTLINED_FUNCTION_27_0();
  v1[28] = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_159();
  v1[29] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v1[30] = v18;
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  v1[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[33] = v20;
  v1[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v21 = OUTLINED_FUNCTION_140();
  v1[35] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v1[36] = v22;
  v1[37] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_237DFD1D8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFD528()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t UpdatableEstimatorToTemporalAdaptor.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v3 = v2;
  v5 = v4;
  v1[10] = v6;
  v1[11] = v0;
  v1[8] = v4;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[12] = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v12;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_116();
  v1[16] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[17] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v1[18] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v1[19] = v13;
  v1[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v14 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v14);
  v1[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v1[22] = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_1();
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_27_0();
  v1[25] = *(v3 + 8);
  v16 = OUTLINED_FUNCTION_159();
  v1[26] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v1[27] = v17;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v18 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v18);
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[30] = v19;
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v20 = OUTLINED_FUNCTION_140();
  v1[32] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v1[33] = v21;
  v1[34] = OUTLINED_FUNCTION_27_0();
  v22 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_237DFDBF8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFDF64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFE0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_106_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_237DFE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  (*(v12[27] + 8))(v12[28], v12[26]);
  v13 = OUTLINED_FUNCTION_31_0();
  v14(v13);
  OUTLINED_FUNCTION_120();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_237DFE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_120();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

void UpdatableEstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_101_3(v2, v3);
  OUTLINED_FUNCTION_61_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_134();
  v6 = OUTLINED_FUNCTION_30_27();
  v7(v6);
  v8 = OUTLINED_FUNCTION_144();
  v9(v8);
  v10 = OUTLINED_FUNCTION_100_2();
  v11(v10);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableEstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableEstimatorToTemporalAdaptor.encodeWithOptimizer(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_101_3(v3, v4);
  OUTLINED_FUNCTION_61_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v1, v2);
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_134();
  v9 = OUTLINED_FUNCTION_30_27();
  v10(v9);
  v11 = OUTLINED_FUNCTION_144();
  v12(v11);
  (*(v7 + 8))(v2, v0);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableEstimatorToTemporalAdaptor.decodeWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DFE868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableEstimatorToTemporalAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237DFE988()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableEstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)();
}

uint64_t SupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_125();
  v3 = v2;
  OUTLINED_FUNCTION_59_8(v4, v5, v6, v7, v2, v8, v9, v10);
  v0[13] = *(v11 + 16);
  OUTLINED_FUNCTION_1_1();
  v0[14] = v12;
  v0[15] = OUTLINED_FUNCTION_27_0();
  v0[16] = *(v3 + 24);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[17] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v0[18] = v14;
  v0[19] = v15;
  v0[20] = OUTLINED_FUNCTION_161();
  v0[21] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v0[22] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v0[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v0[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v0[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_24();
  v16 = type metadata accessor for AnnotatedFeature();
  v0[26] = v16;
  OUTLINED_FUNCTION_18(v16);
  v0[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v0[28] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v0[29] = v17;
  v0[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v18 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v18);
  v0[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_81_3();
  v0[32] = OUTLINED_FUNCTION_27_0();
  v0[33] = *(v1 + 8);
  v19 = OUTLINED_FUNCTION_138();
  v0[34] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v0[35] = v20;
  v0[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_3();
  v0[37] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v0[38] = v21;
  v0[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v22 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v22);
  v0[40] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v0[41] = v23;
  v0[42] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_61_4();
  v24 = swift_getAssociatedTypeWitness();
  v0[43] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v0[44] = v25;
  v0[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_23_2(v26, v27, v28);
}

uint64_t sub_237DFEE78()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_19_18();
  v1 = OUTLINED_FUNCTION_132();
  v2 = OUTLINED_FUNCTION_59_4(v1);
  v3(v2);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39_13();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_42_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_5();
    v31 = v5;
    OUTLINED_FUNCTION_63_6();
    v6();
    OUTLINED_FUNCTION_4_70();
    v0[48] = v7;
    OUTLINED_FUNCTION_34_12();
    v30 = v8 + *v8;
    v9 = swift_task_alloc();
    v0[49] = v9;
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v9 = v10;
    v9[1] = sub_237DFF438;
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_102_1();

    return v19(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_22_30();
    v23(v22);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[46] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_36_16(v24);
    OUTLINED_FUNCTION_102_1();

    return MEMORY[0x282200308](v26, v27, v28);
  }
}

uint64_t sub_237DFF08C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFF18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v54 = v14[24];
    v52 = v14[22];
    v37 = OUTLINED_FUNCTION_14_47();
    v38(v37);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v39 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v39, v40, v54, v52, v41);
    sub_237EF8A60();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v42 = OUTLINED_FUNCTION_51_10();
    v43(v42);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_146();
  v16(v15);
  v17 = OUTLINED_FUNCTION_53_8();
  v18(v17);
  OUTLINED_FUNCTION_39_13();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_42_4();
  if (!v19)
  {
    v44 = OUTLINED_FUNCTION_22_30();
    v45(v44);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_8:
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[46] = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_36_16(v46);
    OUTLINED_FUNCTION_18_3();

    return MEMORY[0x282200308](v48, v49, v50);
  }

  OUTLINED_FUNCTION_70_5();
  v55 = v20;
  OUTLINED_FUNCTION_63_6();
  v21();
  OUTLINED_FUNCTION_4_70();
  v14[48] = v22;
  v56 = v55 + 40;
  OUTLINED_FUNCTION_15_0();
  v53 = v23 + *v23;
  v24 = swift_task_alloc();
  v14[49] = v24;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v24 = v25;
  v24[1] = sub_237DFF438;
  OUTLINED_FUNCTION_23_31();
  OUTLINED_FUNCTION_18_3();

  return v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, v53, v56, a12, a13, a14);
}

uint64_t sub_237DFF438()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 400) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFF5A0()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[17];
  v4 = v0[4];
  (*(v0[19] + 32))(v1, v0[21], v3);
  (*(v2 + 32))(v4, v1, v3);

  OUTLINED_FUNCTION_10_3();

  return v5();
}

uint64_t sub_237DFF720()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = OUTLINED_FUNCTION_9_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_31_0();
  v4(v3);
  OUTLINED_FUNCTION_88_3();

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_237DFF854()
{
  OUTLINED_FUNCTION_88_3();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t SupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  v25 = v24;
  v23[13] = a20;
  v23[14] = v22;
  v23[11] = v26;
  v23[12] = a19;
  v23[9] = v27;
  v23[10] = v24;
  v23[7] = v28;
  v23[8] = v29;
  v23[6] = v30;
  v23[15] = *(v24 + 16);
  OUTLINED_FUNCTION_1_1();
  v23[16] = v31;
  v23[17] = OUTLINED_FUNCTION_27_0();
  v23[18] = *(v25 + 24);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v23[20] = v33;
  v23[21] = v34;
  v23[22] = OUTLINED_FUNCTION_161();
  v23[23] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v23[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v23[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v23[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v23[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_24();
  v35 = type metadata accessor for AnnotatedFeature();
  v23[28] = v35;
  OUTLINED_FUNCTION_18(v35);
  v23[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v23[30] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v23[31] = v36;
  v23[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v37 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v37);
  v23[33] = OUTLINED_FUNCTION_40_11();
  v23[34] = swift_task_alloc();
  OUTLINED_FUNCTION_81_3();
  v23[35] = OUTLINED_FUNCTION_27_0();
  v23[36] = *(a22 + 8);
  v38 = OUTLINED_FUNCTION_138();
  v23[37] = v38;
  OUTLINED_FUNCTION_6_1(v38);
  v23[38] = v39;
  v23[39] = OUTLINED_FUNCTION_40_11();
  v23[40] = swift_task_alloc();
  OUTLINED_FUNCTION_43_3();
  v23[41] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v23[42] = v40;
  v23[43] = swift_task_alloc();
  v23[44] = swift_task_alloc();
  OUTLINED_FUNCTION_34_0();
  v41 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v41);
  v23[45] = OUTLINED_FUNCTION_40_11();
  v23[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v23[47] = v42;
  v23[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v43 = swift_getAssociatedTypeWitness();
  v23[49] = v43;
  OUTLINED_FUNCTION_6_1(v43);
  v23[50] = v44;
  v23[51] = OUTLINED_FUNCTION_40_11();
  v23[52] = swift_task_alloc();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_48_0(v45, v46, v47);
}

uint64_t sub_237DFFD48()
{
  OUTLINED_FUNCTION_26_2();
  v2 = OUTLINED_FUNCTION_131();
  v3 = OUTLINED_FUNCTION_107_2(v2);
  v4(v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_10_50();
    v8(v7);
    v9 = sub_237EF8110();
    v10 = OUTLINED_FUNCTION_67_3(v9);
    v1(v10);
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v6)
    {
      v11 = OUTLINED_FUNCTION_18_31();
      v12 = *(v0 + 80);
      v13(v11);
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_34_12();
      v14 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v14);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v12 = v15;
      OUTLINED_FUNCTION_1_87(v16, v17, v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_156();

      __asm { BRAA            X8, X16 }
    }

    v30 = OUTLINED_FUNCTION_3_76();
    v31(v30);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_60_7(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_25_27(v33);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_7_56();
    v27(v26);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_68_5(v28);
  }

  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_156();

  return MEMORY[0x282200308](v35, v36, v37);
}

uint64_t sub_237E00000()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E00100()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v29 = OUTLINED_FUNCTION_11_46();
    v30(v29);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v31 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v31, v32, v51, v50, v33);
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v34 = OUTLINED_FUNCTION_51_10();
    v35(v34);
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_130();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_8();
  v6(v5);
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v8)
  {
    v36 = OUTLINED_FUNCTION_7_56();
    v37(v36);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_10:
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v38;
    *v38 = v39;
    OUTLINED_FUNCTION_68_5(v38);
    goto LABEL_11;
  }

  v9 = OUTLINED_FUNCTION_10_50();
  v10(v9);
  v11 = sub_237EF8110();
  v12 = OUTLINED_FUNCTION_67_3(v11);
  v2(v12);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_45_12();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_18_31();
    OUTLINED_FUNCTION_103_0(v13, v14, v15);
    v16();
    OUTLINED_FUNCTION_9_49();
    OUTLINED_FUNCTION_44_13();
    v17 = swift_task_alloc();
    OUTLINED_FUNCTION_71_3(v17);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_64_6();
    *v1 = v18;
    OUTLINED_FUNCTION_1_87(v19, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X8, X16 }
  }

  v44 = OUTLINED_FUNCTION_3_76();
  v45(v44);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_60_7(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_25_27(v47);
LABEL_11:
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v40, v41, v42);
}

uint64_t sub_237E00404()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E0050C()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() == 1)
  {
    v1 = OUTLINED_FUNCTION_126();
    v2(v1);
    v3 = OUTLINED_FUNCTION_53_8();
    v4(v3);
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_18_31();
      OUTLINED_FUNCTION_103_0(v6, v7, v8);
      v9();
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_44_13();
      v10 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v10);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v0 = v11;
      OUTLINED_FUNCTION_1_87(v12, v13, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_18_3();

      __asm { BRAA            X8, X16 }
    }

    v29 = OUTLINED_FUNCTION_3_76();
    v30(v29);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_11_46();
    v23(v22);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v24 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v24, v25, v40, v39, v26);
    OUTLINED_FUNCTION_160();
    sub_237EF8A20();
    v27 = OUTLINED_FUNCTION_51_10();
    v28(v27);
  }

  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_60_7(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_25_27();
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v34, v35, v36);
}

uint64_t sub_237E00738()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 520) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E008CC()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[19];
  v4 = v0[6];
  (*(v0[21] + 32))(v1);
  (*(v2 + 32))(v4, v1, v3);

  OUTLINED_FUNCTION_10_3();

  return v5();
}

uint64_t sub_237E00A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v22 = OUTLINED_FUNCTION_130();
  v23(v22);
  v24 = OUTLINED_FUNCTION_9_9();
  v25(v24);
  v26 = OUTLINED_FUNCTION_31_0();
  v27(v26);
  OUTLINED_FUNCTION_29_23();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_237E00BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v23 = *(v22 + 464);
  v24 = OUTLINED_FUNCTION_126();
  v25(v24);
  v26 = OUTLINED_FUNCTION_9_9();
  v27(v26);
  v28 = OUTLINED_FUNCTION_31_0();
  v23(v28);
  OUTLINED_FUNCTION_29_23();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_237E00CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_29_23();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void SupervisedEstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_145(v2, v3);
  OUTLINED_FUNCTION_135();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_134();
  v6 = OUTLINED_FUNCTION_30_27();
  v7(v6);
  v8 = OUTLINED_FUNCTION_152();
  v9(v8);
  v10 = OUTLINED_FUNCTION_100_2();
  v11(v10);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void SupervisedEstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E010A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return SupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)();
}

uint64_t sub_237E011A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = swift_task_alloc();
  *(v22 + 16) = v31;
  *v31 = v22;
  v31[1] = sub_237C6B728;

  return SupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, v29, a4, a5, a10, a6, v30, a8, v34, a11, a9, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t _s18CreateMLComponents11TransformerPAAE17adaptedAsTemporalAA0c2ToF7AdaptorVyxGyF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  return (*(v5 + 32))(a2, v9, a1);
}

void sub_237E013EC()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_1_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_237C6A904;
  OUTLINED_FUNCTION_45();

  __asm { BR              X9 }
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.makeTransformer()(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52_10();
  EstimatorToTemporalAdaptor.base.getter(a1, v1);
  v8 = OUTLINED_FUNCTION_122();
  v9(v8);
  (*(v5 + 8))(v1, v3);
  v10 = OUTLINED_FUNCTION_149();
  return v11(v10);
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_125();
  v3 = v2;
  OUTLINED_FUNCTION_59_8(v4, v5, v6, v7, v2, v8, v9, v10);
  v0[13] = *(v11 + 16);
  OUTLINED_FUNCTION_1_1();
  v0[14] = v12;
  v0[15] = OUTLINED_FUNCTION_27_0();
  v0[16] = *(*(v3 + 24) + 8);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[17] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v0[18] = v14;
  v0[19] = v15;
  v0[20] = OUTLINED_FUNCTION_161();
  v0[21] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v0[22] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v0[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v0[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v0[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_24();
  v16 = type metadata accessor for AnnotatedFeature();
  v0[26] = v16;
  OUTLINED_FUNCTION_18(v16);
  v0[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v0[28] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v0[29] = v17;
  v0[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v18 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v18);
  v0[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_81_3();
  v0[32] = OUTLINED_FUNCTION_27_0();
  v0[33] = *(v1 + 8);
  v19 = OUTLINED_FUNCTION_138();
  v0[34] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v0[35] = v20;
  v0[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_3();
  v0[37] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v0[38] = v21;
  v0[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v22 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v22);
  v0[40] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v0[41] = v23;
  v0[42] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_61_4();
  v24 = swift_getAssociatedTypeWitness();
  v0[43] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v0[44] = v25;
  v0[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_23_2(v26, v27, v28);
}

uint64_t sub_237E01A44()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_19_18();
  v1 = OUTLINED_FUNCTION_132();
  v2 = OUTLINED_FUNCTION_59_4(v1);
  v3(v2);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_39_13();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_42_4();
  if (v4)
  {
    OUTLINED_FUNCTION_70_5();
    v31 = v5;
    OUTLINED_FUNCTION_63_6();
    v6();
    OUTLINED_FUNCTION_4_70();
    v0[48] = v7;
    OUTLINED_FUNCTION_34_12();
    v30 = v8 + *v8;
    v9 = swift_task_alloc();
    v0[49] = v9;
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v9 = v10;
    v9[1] = sub_237E02004;
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_102_1();

    return v19(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_22_30();
    v23(v22);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[46] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_36_16(v24);
    OUTLINED_FUNCTION_102_1();

    return MEMORY[0x282200308](v26, v27, v28);
  }
}

uint64_t sub_237E01C58()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E01D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v54 = v14[24];
    v52 = v14[22];
    v37 = OUTLINED_FUNCTION_14_47();
    v38(v37);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v39 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v39, v40, v54, v52, v41);
    sub_237EF8A60();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v42 = OUTLINED_FUNCTION_51_10();
    v43(v42);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_146();
  v16(v15);
  v17 = OUTLINED_FUNCTION_53_8();
  v18(v17);
  OUTLINED_FUNCTION_39_13();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_42_4();
  if (!v19)
  {
    v44 = OUTLINED_FUNCTION_22_30();
    v45(v44);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_8:
    OUTLINED_FUNCTION_148();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[46] = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_36_16(v46);
    OUTLINED_FUNCTION_18_3();

    return MEMORY[0x282200308](v48, v49, v50);
  }

  OUTLINED_FUNCTION_70_5();
  v55 = v20;
  OUTLINED_FUNCTION_63_6();
  v21();
  OUTLINED_FUNCTION_4_70();
  v14[48] = v22;
  v56 = v55 + 40;
  OUTLINED_FUNCTION_15_0();
  v53 = v23 + *v23;
  v24 = swift_task_alloc();
  v14[49] = v24;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v24 = v25;
  v24[1] = sub_237E02004;
  OUTLINED_FUNCTION_23_31();
  OUTLINED_FUNCTION_18_3();

  return v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, v53, v56, a12, a13, a14);
}

uint64_t sub_237E02004()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 400) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();
  v25 = v24;
  v23[13] = a20;
  v23[14] = v22;
  v23[11] = v26;
  v23[12] = a19;
  v23[9] = v27;
  v23[10] = v24;
  v23[7] = v28;
  v23[8] = v29;
  v23[6] = v30;
  v23[15] = *(v24 + 16);
  OUTLINED_FUNCTION_1_1();
  v23[16] = v31;
  v23[17] = OUTLINED_FUNCTION_27_0();
  v23[18] = *(*(v25 + 24) + 8);
  OUTLINED_FUNCTION_28_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v23[20] = v33;
  v23[21] = v34;
  v23[22] = OUTLINED_FUNCTION_161();
  v23[23] = swift_task_alloc();
  OUTLINED_FUNCTION_28_24();
  v23[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v23[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v23[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v23[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_24();
  v35 = type metadata accessor for AnnotatedFeature();
  v23[28] = v35;
  OUTLINED_FUNCTION_18(v35);
  v23[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v23[30] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v23[31] = v36;
  v23[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v37 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v37);
  v23[33] = OUTLINED_FUNCTION_40_11();
  v23[34] = swift_task_alloc();
  OUTLINED_FUNCTION_81_3();
  v23[35] = OUTLINED_FUNCTION_27_0();
  v23[36] = *(a22 + 8);
  v38 = OUTLINED_FUNCTION_138();
  v23[37] = v38;
  OUTLINED_FUNCTION_6_1(v38);
  v23[38] = v39;
  v23[39] = OUTLINED_FUNCTION_40_11();
  v23[40] = swift_task_alloc();
  OUTLINED_FUNCTION_43_3();
  v23[41] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v23[42] = v40;
  v23[43] = swift_task_alloc();
  v23[44] = swift_task_alloc();
  OUTLINED_FUNCTION_34_0();
  v41 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v41);
  v23[45] = OUTLINED_FUNCTION_40_11();
  v23[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v23[47] = v42;
  v23[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v43 = swift_getAssociatedTypeWitness();
  v23[49] = v43;
  OUTLINED_FUNCTION_6_1(v43);
  v23[50] = v44;
  v23[51] = OUTLINED_FUNCTION_40_11();
  v23[52] = swift_task_alloc();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_106_1();
  return OUTLINED_FUNCTION_48_0(v45, v46, v47);
}

uint64_t sub_237E0257C()
{
  OUTLINED_FUNCTION_26_2();
  v2 = OUTLINED_FUNCTION_131();
  v3 = OUTLINED_FUNCTION_107_2(v2);
  v4(v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_10_50();
    v8(v7);
    v9 = sub_237EF8110();
    v10 = OUTLINED_FUNCTION_67_3(v9);
    v1(v10);
    OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v6)
    {
      v11 = OUTLINED_FUNCTION_18_31();
      v12 = *(v0 + 80);
      v13(v11);
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_34_12();
      v14 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v14);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v12 = v15;
      OUTLINED_FUNCTION_1_87(v16, v17, v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_156();

      __asm { BRAA            X8, X16 }
    }

    v30 = OUTLINED_FUNCTION_3_76();
    v31(v30);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_60_7(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_24_28(v33);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_7_56();
    v27(v26);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_68_5(v28);
  }

  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_156();

  return MEMORY[0x282200308](v35, v36, v37);
}

uint64_t sub_237E02834()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E02934()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v29 = OUTLINED_FUNCTION_11_46();
    v30(v29);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v31 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v31, v32, v51, v50, v33);
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v34 = OUTLINED_FUNCTION_51_10();
    v35(v34);
    goto LABEL_10;
  }

  v3 = OUTLINED_FUNCTION_130();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_8();
  v6(v5);
  OUTLINED_FUNCTION_37_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_97_2(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (!v8)
  {
    v36 = OUTLINED_FUNCTION_7_56();
    v37(v36);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_10:
    OUTLINED_FUNCTION_98_2();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 448) = v38;
    *v38 = v39;
    OUTLINED_FUNCTION_68_5(v38);
    goto LABEL_11;
  }

  v9 = OUTLINED_FUNCTION_10_50();
  v10(v9);
  v11 = sub_237EF8110();
  v12 = OUTLINED_FUNCTION_67_3(v11);
  v2(v12);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_45_12();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_18_31();
    OUTLINED_FUNCTION_103_0(v13, v14, v15);
    v16();
    OUTLINED_FUNCTION_9_49();
    OUTLINED_FUNCTION_44_13();
    v17 = swift_task_alloc();
    OUTLINED_FUNCTION_71_3(v17);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_64_6();
    *v1 = v18;
    OUTLINED_FUNCTION_1_87(v19, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X8, X16 }
  }

  v44 = OUTLINED_FUNCTION_3_76();
  v45(v44);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_60_7(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_24_28(v47);
LABEL_11:
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v40, v41, v42);
}

uint64_t sub_237E02C38()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E02D40()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() == 1)
  {
    v1 = OUTLINED_FUNCTION_126();
    v2(v1);
    v3 = OUTLINED_FUNCTION_53_8();
    v4(v3);
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_45_12();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_18_31();
      OUTLINED_FUNCTION_103_0(v6, v7, v8);
      v9();
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_44_13();
      v10 = swift_task_alloc();
      OUTLINED_FUNCTION_71_3(v10);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_64_6();
      *v0 = v11;
      OUTLINED_FUNCTION_1_87(v12, v13, v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_18_3();

      __asm { BRAA            X8, X16 }
    }

    v29 = OUTLINED_FUNCTION_3_76();
    v30(v29);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_11_46();
    v23(v22);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v24 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v24, v25, v40, v39, v26);
    OUTLINED_FUNCTION_160();
    sub_237EF8A20();
    v27 = OUTLINED_FUNCTION_51_10();
    v28(v27);
  }

  OUTLINED_FUNCTION_98_2();
  swift_getAssociatedConformanceWitness();
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_60_7(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_105_1();

  return MEMORY[0x282200308](v34, v35, v36);
}

uint64_t sub_237E02F6C()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 520) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t UpdatableSupervisedEstimatorToTemporalAdaptor.update<A, B>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_125();
  v3 = v2;
  OUTLINED_FUNCTION_59_8(v4, v5, v6, v7, v2, v8, v9, v10);
  v0[13] = *(v11 + 16);
  OUTLINED_FUNCTION_1_1();
  v0[14] = v12;
  v0[15] = OUTLINED_FUNCTION_27_0();
  v0[16] = *(v3 + 24);
  v0[17] = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_4();
  v0[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v0[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v0[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_24();
  v13 = type metadata accessor for AnnotatedFeature();
  v0[21] = v13;
  OUTLINED_FUNCTION_18(v13);
  v0[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v0[23] = type metadata accessor for TemporalFeature();
  OUTLINED_FUNCTION_1();
  v0[24] = v14;
  v0[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v15 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v15);
  v0[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_81_3();
  v0[27] = OUTLINED_FUNCTION_27_0();
  v0[28] = *(v1 + 8);
  v16 = OUTLINED_FUNCTION_138();
  v0[29] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v0[30] = v17;
  v0[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_3();
  v0[32] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1();
  v0[33] = v18;
  v0[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  v0[35] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v0[36] = v20;
  v0[37] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_61_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[38] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v0[39] = v22;
  v0[40] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237E03694()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E03794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  if (OUTLINED_FUNCTION_82_2() != 1)
  {
    v54 = v14[19];
    v52 = v14[17];
    v37 = OUTLINED_FUNCTION_14_47();
    v38(v37);
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_93_2();
    v39 = OUTLINED_FUNCTION_50_10();
    AnnotatedFeature.init(feature:annotation:)(v39, v40, v54, v52, v41);
    sub_237EF8A60();
    OUTLINED_FUNCTION_110_1();
    sub_237EF8A20();
    v42 = OUTLINED_FUNCTION_51_10();
    v43(v42);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_104_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_53_8();
  v18(v17);
  OUTLINED_FUNCTION_124();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_42_4();
  if (!v19)
  {
    v44 = OUTLINED_FUNCTION_38_11();
    v45(v44);
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_41_11();
LABEL_8:
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[41] = v46;
    *v46 = v47;
    v46[1] = sub_237E03694;
    OUTLINED_FUNCTION_76_5();
    OUTLINED_FUNCTION_18_3();

    return MEMORY[0x282200308](v48, v49, v50);
  }

  OUTLINED_FUNCTION_153();
  v55 = v20;
  OUTLINED_FUNCTION_63_6();
  v21();
  OUTLINED_FUNCTION_4_70();
  v14[43] = v22;
  v56 = v55 + 24;
  OUTLINED_FUNCTION_15_0();
  v53 = v23 + *v23;
  v24 = swift_task_alloc();
  v14[44] = v24;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v24 = v25;
  v24[1] = sub_237E03A6C;
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_18_3();

  return v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, v53, v56, a12, a13, a14);
}

uint64_t sub_237E03A6C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 360) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E03BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v24 = *(v14 + 144);
  v25 = *(v14 + 120);

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_18_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24, v25, a12, a13, a14);
}

uint64_t sub_237E03CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  (*(v14[30] + 8))(v14[31], v14[29]);
  v15 = OUTLINED_FUNCTION_9_9();
  v16(v15);
  v17 = OUTLINED_FUNCTION_31_0();
  v18(v17);
  OUTLINED_FUNCTION_99_1();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237E03DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_99_1();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

void UpdatableSupervisedEstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_101_3(v2, v3);
  OUTLINED_FUNCTION_61_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_134();
  v6 = OUTLINED_FUNCTION_30_27();
  v7(v6);
  v8 = OUTLINED_FUNCTION_144();
  v9(v8);
  v10 = OUTLINED_FUNCTION_100_2();
  v11(v10);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableSupervisedEstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void UpdatableSupervisedEstimatorToTemporalAdaptor.decodeWithOptimizer(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_9();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  (*(v28 + 40))(v24, v29, v28, v34);
  if (!v20)
  {
    (*(v32 + 32))(v26, v36, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E0425C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E042B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableSupervisedEstimatorToTemporalAdaptor.update<A, B>(_:with:eventHandler:)();
}

uint64_t sub_237E043E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E04440()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B>(to:eventHandler:)();
}

uint64_t sub_237E04540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = swift_task_alloc();
  *(v22 + 16) = v31;
  *v31 = v22;
  v31[1] = sub_237C6B728;

  return UpdatableSupervisedEstimatorToTemporalAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, v29, a4, a5, a10, a6, v30, a8, v34, a11, a9, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_237E046B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237E047F0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 8) = v8;
  result = v9[23];
  v13 = v9[18];
  v11[3] = v9[15];
  v11[4] = v13;
  v11[2] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_70()
{
  result = EstimatorToTemporalAdaptor.base.getter(v2, v0);
  *(v1 + 24) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_61@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 72) = v2;
  *(v3 - 96) = a2;
  *(v3 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_49()
{
  result = EstimatorToTemporalAdaptor.base.getter(v2, v0);
  v4 = v1[2];
  v5 = v1[3];
  v1[4] = v4;
  v1[5] = v5;
  v1[62] = v4;
  v1[63] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_50()
{
  result = v0[52];
  v2 = v0[50];
  v0[58] = *(v2 + 8);
  v0[59] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_46()
{
  v2 = *(v0 + 256);
  *(v1 + 40) = *(v0 + 224);
  return v2;
}

uint64_t OUTLINED_FUNCTION_29_23()
{
}

uint64_t OUTLINED_FUNCTION_32_19()
{

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_237EF8BC0();
}

uint64_t OUTLINED_FUNCTION_44_13()
{
  result = *(v0 + 40) + 48;
  *(v0 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = a8;
  v9[12] = v8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1)
{
  *(v1 + 512) = a1;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return sub_237EF8BC0();
}

uint64_t OUTLINED_FUNCTION_82_2()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_88_3()
{
}

uint64_t OUTLINED_FUNCTION_92_2()
{

  return TemporalFeature.feature.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return AnnotatedFeature.annotation.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{
  *(v1 + 440) = a1;

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
}

uint64_t OUTLINED_FUNCTION_101_3(uint64_t result, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{
  v2[2] = a1;
  v2[53] = *(v3 + 16);
  v2[54] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_115()
{

  return AnnotatedFeature.feature.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_116()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_120()
{
}

uint64_t OUTLINED_FUNCTION_131()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_134()
{
  v1 = type metadata accessor for TransformerToTemporalAdaptor();

  return EstimatorToTemporalAdaptor.base.getter(v1, v0);
}

uint64_t OUTLINED_FUNCTION_137(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return TemporalFeature.feature.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_145(uint64_t result, uint64_t a2)
{
  *(v3 - 72) = v2;
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_158()
{

  return sub_237EF86F0();
}

uint64_t OUTLINED_FUNCTION_159()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_161()
{

  return swift_task_alloc();
}

uint64_t AudioPreprocessingError.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000046, 0x8000000237F00050);
  v3 = [v2 description];
  v4 = sub_237EF8590();
  v6 = v5;

  MEMORY[0x2383E0710](v4, v6);

  MEMORY[0x2383E0710](0xD000000000000016, 0x8000000237F000A0);
  v7 = [v1 description];
  v8 = sub_237EF8590();
  v10 = v9;

  MEMORY[0x2383E0710](v8, v10);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return 0;
}

uint64_t static AudioPreprocessingError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_237D05624();
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  LOBYTE(v5) = sub_237EF9050();

  if (v5)
  {
    v10 = sub_237EF9050();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_237E05850()
{
  result = qword_27DEB41D8[0];
  if (!qword_27DEB41D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB41D8);
  }

  return result;
}

uint64_t Classification.init(label:probability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for Classification();
  *(a3 + *(result + 36)) = a4;
  return result;
}

BOOL static Classification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_237EF8520() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Classification();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

uint64_t sub_237E05A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
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

uint64_t sub_237E05B5C(char a1)
{
  if (a1)
  {
    return 0x6C696261626F7270;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_237E05BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E05A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E05BD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E05C2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Classification.hashValue.getter()
{
  sub_237EFA120();
  Classification.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237E05D28()
{
  sub_237EFA120();
  Classification.hash(into:)();
  return sub_237EFA170();
}