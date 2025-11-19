uint64_t sub_237E34960(uint64_t a1)
{
  v2 = sub_237E34C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E3499C(uint64_t a1)
{
  v2 = sub_237E34C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimeSeriesClassifierConfiguration.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB48E0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17[3] = *(v1 + 16);
  v17[4] = v8;
  v17[1] = *(v1 + 40);
  v17[2] = v9;
  v10 = *(v1 + 64);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_237E34C44();
  sub_237EFA1B0();
  v26 = 0;
  v15 = v18;
  sub_237EF9A50();
  if (!v15)
  {
    LODWORD(v18) = v10;
    v25 = 1;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v24 = 2;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v23 = 3;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v22 = 4;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v21 = 5;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v20 = 6;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v19 = 7;
    OUTLINED_FUNCTION_1_63();
    sub_237EF99F0();
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_237E34C44()
{
  result = qword_27DEB48E8;
  if (!qword_27DEB48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB48E8);
  }

  return result;
}

uint64_t TimeSeriesClassifierConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  MEMORY[0x2383E2210](*v0);
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  sub_237EFA150();
  MEMORY[0x2383E2210](v4);
  sub_237EFA150();
  if (v6 == 1)
  {
    return sub_237EFA140();
  }

  sub_237EFA140();
  return MEMORY[0x2383E2210](v5);
}

uint64_t TimeSeriesClassifierConfiguration.hashValue.getter()
{
  sub_237EFA120();
  TimeSeriesClassifierConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t TimeSeriesClassifierConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB48F0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E34C44();
  sub_237EFA190();
  if (!v2)
  {
    v34 = 0;
    OUTLINED_FUNCTION_0_51();
    v11 = sub_237EF9950();
    v33 = 1;
    OUTLINED_FUNCTION_0_51();
    v12 = sub_237EF9950();
    v32 = 2;
    OUTLINED_FUNCTION_0_51();
    v25 = sub_237EF9950();
    v31 = 3;
    OUTLINED_FUNCTION_0_51();
    v24 = sub_237EF9950();
    v30 = 4;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v14 = v13;
    v29 = 5;
    OUTLINED_FUNCTION_0_51();
    v23 = sub_237EF9950();
    v28 = 6;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v16 = v15;
    v26 = 7;
    OUTLINED_FUNCTION_0_51();
    v18 = sub_237EF98F0();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    v27 = v21 & 1;
    *a2 = v11;
    *(a2 + 8) = v12;
    v22 = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = v22;
    *(a2 + 32) = v14;
    *(a2 + 40) = v23;
    *(a2 + 48) = v16;
    *(a2 + 56) = v18;
    *(a2 + 64) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237E35030()
{
  sub_237EFA120();
  TimeSeriesClassifierConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237E35070()
{
  result = qword_27DEB48F8;
  if (!qword_27DEB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB48F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeSeriesClassifierConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237E351E8()
{
  result = qword_27DEB4900;
  if (!qword_27DEB4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4900);
  }

  return result;
}

unint64_t sub_237E35240()
{
  result = qword_27DEB4908;
  if (!qword_27DEB4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4908);
  }

  return result;
}

unint64_t sub_237E35298()
{
  result = qword_27DEB4910;
  if (!qword_27DEB4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4910);
  }

  return result;
}

uint64_t sub_237E352EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v36 = v5;
    v43 = MEMORY[0x277D84F90];
    v38 = v6;
    sub_237C63284(0, v7, 0);
    v42 = v43;
    result = sub_237E3A9A4();
    v10 = result;
    v12 = v11;
    v13 = 0;
    v41 = a1 + 56;
    v34 = a1 + 64;
    v35 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v14 = v10 >> 6;
        if ((*(v41 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_28;
        }

        v15 = *a2;
        if (!*(*a2 + 16))
        {
          goto LABEL_29;
        }

        v40 = v9;
        v39 = v13;
        sub_237EF8260();
        result = sub_237D2FC30();
        if ((v16 & 1) == 0)
        {
          goto LABEL_30;
        }

        v17 = *(v15 + 56);
        v18 = v38;
        v19 = *(v38 + 72);
        (*(v38 + 16))(v36, v17 + v19 * result, v3);

        v20 = v42;
        v21 = v3;
        v23 = *(v42 + 16);
        v22 = *(v42 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_237C63284(v22 > 1, v23 + 1, 1);
          v18 = v38;
          v20 = v42;
        }

        *(v20 + 16) = v23 + 1;
        OUTLINED_FUNCTION_28();
        v42 = v24;
        result = (*(v18 + 32))(v24 + v25 + v23 * v19, v36, v21);
        if (v12)
        {
          goto LABEL_34;
        }

        v3 = v21;
        a1 = v35;
        v26 = 1 << *(v35 + 32);
        if (v10 >= v26)
        {
          goto LABEL_31;
        }

        v27 = *(v41 + 8 * v14);
        if ((v27 & (1 << v10)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v35 + 36) != v40)
        {
          goto LABEL_33;
        }

        v28 = v27 & (-2 << (v10 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v14 << 6;
          v30 = v14 + 1;
          v31 = (v34 + 8 * v14);
          while (v30 < (v26 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              result = sub_237CB231C(v10, v40, 0);
              v26 = __clz(__rbit64(v32)) + v29;
              goto LABEL_21;
            }
          }

          result = sub_237CB231C(v10, v40, 0);
        }

LABEL_21:
        v13 = v39 + 1;
        if (v39 + 1 == v7)
        {
          return v42;
        }

        v12 = 0;
        v9 = *(v35 + 36);
        v10 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
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
  }

  return result;
}

void sub_237E3564C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v252 = a2;
  v223 = a5;
  sub_237EF74A0();
  OUTLINED_FUNCTION_1();
  v213 = v9;
  v214 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v212 = v10;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7520();
  OUTLINED_FUNCTION_1();
  v219 = v12;
  v220 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v218 = v13;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v225 = v14;
  v226 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v217 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v222 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v221 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v245 = v22;
  v246 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v224 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v234 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v239 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_1();
  v238 = v29;
  OUTLINED_FUNCTION_12_1();
  v30 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v242 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_2();
  v216 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_16();
  v215 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v230 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_16();
  v228 = v39;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_1();
  v244 = v41;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4928);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  v241 = v208 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB4930);
  MEMORY[0x28223BE20](v44 - 8);
  OUTLINED_FUNCTION_2_2();
  v250 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  v249 = v47;
  v251 = a4;
  v48 = *(a4 - 1);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_3();
  v248 = v50;
  v51 = *(a3 - 8);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5();
  v55 = v54 - v53;
  v227 = type metadata accessor for CoreMLPackage();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_2();
  v229 = v57;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_16();
  v247 = v59;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_16();
  v235 = v61;
  OUTLINED_FUNCTION_11_1();
  v63 = MEMORY[0x28223BE20](v62);
  v65 = v208 - v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_22_1();
  v237 = v66;
  (*(v51 + 16))(v55, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0);
  if (!swift_dynamicCast())
  {
    memset(v255, 0, 40);
    sub_237C65484(v255, qword_27DEB05B8);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v71 = v70;
    OUTLINED_FUNCTION_46_17();
    sub_237EF9CF0();
    v72 = v256[1];
    *v71 = v256[0];
    v71[1] = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v236 = v30;
  sub_237C531B8(v255, v256);
  v67 = v256[3];
  v68 = v256[4];
  __swift_project_boxed_opaque_existential_1(v256, v256[3]);
  v69 = v253;
  (*(v68 + 8))(v67, v68);
  if (v69)
  {
    __swift_destroy_boxed_opaque_existential_1(v256);
    return;
  }

  v73 = v237;
  sub_237DDA7EC(v65, v237);
  __swift_destroy_boxed_opaque_existential_1(v256);
  (*(v48 + 16))(v248, v252, v251);
  if (!swift_dynamicCast())
  {
    memset(v255, 0, 40);
    sub_237C65484(v255, qword_27DEB05B8);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40();
    OUTLINED_FUNCTION_46_17();
    sub_237EF9CF0();
    OUTLINED_FUNCTION_20_37(v256[0]);
    swift_willThrow();
    sub_237D0F8BC(v73);
    return;
  }

  sub_237C531B8(v255, v256);
  v74 = v256[3];
  v75 = v256[4];
  __swift_project_boxed_opaque_existential_1(v256, v256[3]);
  v76 = v247;
  (*(v75 + 8))(v74, v75);
  v208[0] = 0;
  sub_237DDA7EC(v76, v235);
  __swift_destroy_boxed_opaque_existential_1(v256);
  v77 = *(sub_237EF75C0() + 16);

  v233 = v77 - 1;
  v78 = sub_237EF75C0();
  v79 = sub_237EF75C0();
  v256[0] = v78;
  sub_237E4845C(v79);
  v260 = MEMORY[0x277D84FA0];
  v211 = v242 + 16;
  v80 = *(v256[0] + 16);
  v231 = (v242 + 32);
  v253 = (v245 + 16);
  v81 = v245 + 8;
  v240 = (v242 + 8);
  v82 = sub_237EF8260();
  v83 = 0;
  v84 = v236;
  v209 = v77;
  v210 = v82;
  v86 = v243;
  v85 = v244;
  v87 = v249;
  v88 = v250;
  v232 = v80;
  while (1)
  {
    if (v83 == v80)
    {
      v89 = 1;
      v248 = v80;
    }

    else
    {
      if ((v83 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v83 >= *(v210 + 16))
      {
        goto LABEL_97;
      }

      v90 = (v83 + 1);
      v91 = v241;
      OUTLINED_FUNCTION_10_2();
      v96 = v93 + v92 + *(v94 + 72) * v95;
      v97 = *(v86 + 48);
      *v91 = v95;
      (*(v94 + 16))(&v91[v97], v96, v84);
      v98 = v91;
      v88 = v250;
      sub_237E3A944(v98, v250, &qword_27DEB4928);
      v89 = 0;
      v248 = v90;
      v87 = v249;
    }

    __swift_storeEnumTagSinglePayload(v88, v89, 1, v86);
    sub_237E3A944(v88, v87, qword_27DEB4930);
    if (__swift_getEnumTagSinglePayload(v87, 1, v86) == 1)
    {
      break;
    }

    v99 = *v87;
    (*v231)(v85, v87 + *(v86 + 48), v84);
    v247 = v99;
    if (v99 != v77)
    {
      v100 = *(sub_237EF76A0() + 16);
      if (v100)
      {
        v84 = v246;
        OUTLINED_FUNCTION_10_2();
        v86 = v81;
        v208[1] = v101;
        OUTLINED_FUNCTION_48_12();
        v77 = v238;
        do
        {
          v102 = OUTLINED_FUNCTION_33_20();
          v103(v102);
          v104 = sub_237EF70A0();
          v85 = v105;
          v106 = OUTLINED_FUNCTION_44_16();
          v107(v106);
          sub_237E4C084(v256, v104, v85);

          v81 = (v81 + v252);
          --v100;
        }

        while (v100);

        OUTLINED_FUNCTION_39_17();
      }

      else
      {
      }

      v87 = v249;
      v88 = v250;
    }

    if (v247 != v233)
    {
      v108 = *(sub_237EF76F0() + 16);
      if (v108)
      {
        v84 = v246;
        OUTLINED_FUNCTION_10_2();
        v86 = v81;
        v247 = v109;
        OUTLINED_FUNCTION_48_12();
        v77 = v239;
        do
        {
          v110 = OUTLINED_FUNCTION_33_20();
          v111(v110);
          v85 = sub_237EF70A0();
          v113 = v112;
          v114 = OUTLINED_FUNCTION_44_16();
          v115(v114);
          sub_237E4C084(v256, v85, v113);

          v81 = (v81 + v252);
          --v108;
        }

        while (v108);

        OUTLINED_FUNCTION_39_17();
      }

      else
      {
      }

      v87 = v249;
      v88 = v250;
    }

    (*v240)(v85, v84);
    v80 = v232;
    v83 = v248;
  }

  v116 = v210;

  if (!v77)
  {
    goto LABEL_101;
  }

  v250 = *(v116 + 16);
  v117 = v228;
  if (v77 > v250)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_10_2();
  v249 = v118;
  v119 = v118 + v116;
  v121 = *(v120 + 72);
  v86 = *(v120 + 16);
  v248 = v121 * v233;
  v122 = v119;
  (v86)(v117, &v119[v121 * v233], v84);
  if (v77 >= v250)
  {
    goto LABEL_103;
  }

  v247 = v121 * v77;
  (v86)(v230, &v122[v121 * v77], v84);
  if (!*(sub_237EF76F0() + 16))
  {
    goto LABEL_104;
  }

  v123 = v86;
  OUTLINED_FUNCTION_10_2();
  v125 = *(v124 + 16);
  v244 = v126;
  v245 = v125;
  (v125)(v234, v127 + v126);

  v128 = sub_237EF70A0();
  v86 = v260;
  v130 = sub_237E478D8(v128, v129, v260);
  v250 = v81;
  v251 = v123;
  v252 = v121;
  if (v130)
  {

    v131 = 0;
LABEL_35:
    v132 = __OFADD__(v131++, 1);
    v133 = v210;
    if (v132)
    {
      goto LABEL_100;
    }

    v256[0] = sub_237EF70A0();
    v256[1] = v134;
    MEMORY[0x2383E0710](95, 0xE100000000000000);
    *v255 = v131;
    v135 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v135);

    v136 = v256[0];
    v137 = v256[1];
    if (!*(v86 + 16))
    {
      goto LABEL_46;
    }

    sub_237EFA120();
    sub_237EF8610();
    v138 = sub_237EFA170();
    v139 = ~(-1 << *(v86 + 32));
    while (1)
    {
      v140 = v138 & v139;
      if (((*(v86 + 56 + (((v138 & v139) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v138 & v139)) & 1) == 0)
      {
        break;
      }

      v141 = (*(v86 + 48) + 16 * v140);
      if (*v141 != v136 || v141[1] != v137)
      {
        v143 = sub_237EF9D40();
        v138 = v140 + 1;
        if ((v143 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  v133 = v210;
LABEL_46:
  sub_237EF70A0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v241 = v86;
    if (v209 > *(v133 + 16))
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      return;
    }

    v144 = v133;
    v243 = v249 + v133;
    OUTLINED_FUNCTION_35_17();

    v145 = sub_237EF76A0();
    if (!*(v145 + 16))
    {
      goto LABEL_107;
    }

    v146 = v224;
    v147 = v246;
    (v245)(v224, v145 + v244, v246);

    sub_237EF70A0();
    v248 = *v250;
    (v248)(v146, v147);
    v210 = v144;
    if (v209 >= *(v144 + 16))
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_35_17();

    v148 = v237;
    v149 = v229;
    sub_237E3A218(v237, v229);
    v150 = v227;
    v151 = *(v227 + 24);
    if (!*(v148 + v151 + 80))
    {

      v152 = v225;
      goto LABEL_58;
    }

    memcpy(v256, (v235 + v151), sizeof(v256));
    v152 = v225;
    v153 = v210;
    if (!v256[10])
    {
      break;
    }

    memcpy(__dst, (v235 + v151), sizeof(__dst));
    v259 = v256[10];
    if (!*(v149 + *(v227 + 24) + 80))
    {
      goto LABEL_111;
    }

    memcpy(v255, (v235 + v151), sizeof(v255));
    sub_237C9FEDC(v255, v254);

    v253 = sub_237E6542C(__dst);
    v154 = *(v153 + 16);
    if (v154 < v209)
    {
      goto LABEL_109;
    }

    v86 = v215;
    v155 = v216;
    if (v209 == v154)
    {
LABEL_66:
      sub_237C65484(v256, &unk_27DEAD7B0);
      v152 = v225;
      v156 = v226;
      goto LABEL_67;
    }

    v160 = v236;
    if (v209 >= v154)
    {
      goto LABEL_110;
    }

    v161 = (v242 + 40);
    v162 = v209;
    v163 = v249 + v209 * v252 + v153;
    while (v162 < *(v153 + 16))
    {
      v164 = OUTLINED_FUNCTION_30_33();
      v251(v164);
      sub_237ECF820();
      (*v240)(v155, v160);
      if (v162 >= *(v153 + 16))
      {
        goto LABEL_99;
      }

      ++v162;
      (*v161)(v163, v86, v160);
      v163 += v252;
      if (v154 == v162)
      {
        goto LABEL_66;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    sub_237E642A8();
    v133 = v207;
  }

LABEL_58:
  v156 = v226;
  v157 = v235 + *(v150 + 24);
  OUTLINED_FUNCTION_51_13(__src);
  v158 = *(v157 + 80);
  if (v158)
  {
    v159 = (v149 + *(v150 + 24));
    memcpy(v255, v159, sizeof(v255));
    OUTLINED_FUNCTION_51_13(v256);
    v256[10] = v158;
    sub_237C9FEDC(v256, v254);
    sub_237C65484(v255, &unk_27DEAD7B0);
    memcpy(v159, __src, 0x50uLL);
    v159[10] = v158;
  }

LABEL_67:
  sub_237EF76F0();
  sub_237EF7700();
  v165 = v221;
  sub_237EF7650();
  v251 = *(v156 + 88);
  v166 = (v251)(v165, v152);
  v167 = *MEMORY[0x277D25368];
  v168 = v152;
  LODWORD(v253) = *MEMORY[0x277D25338];
  v169 = *MEMORY[0x277D25390];
  v170 = *MEMORY[0x277D25328];
  v171 = v156;
  v172 = *MEMORY[0x277D25398];
  v173 = v165;
  v174 = v168;
  v249 = *(v171 + 8);
  (v249)(v173, v168);
  LODWORD(v252) = v167;
  if (v166 == v167 || v166 == v253 || v166 == v169 || v166 == v170 || v166 == v172)
  {
    sub_237EF8260();
    sub_237EF74F0();
    v179 = v222;
    v180 = OUTLINED_FUNCTION_30_33();
    v181(v180);
    (*(v226 + 104))(v179, v252, v174);
    v182 = v229;
    sub_237EF7660();
    sub_237EF75F0();
    sub_237EF7600();
    sub_237EF7630();
    sub_237EF7640();
    sub_237EF75E0();
    v183 = OUTLINED_FUNCTION_28_6();
    v184(v183);
    v185 = v236;
  }

  else
  {
    v186 = v217;
    sub_237EF7650();
    v187 = (v251)(v186, v174);
    v188 = *MEMORY[0x277D25350];
    v189 = *MEMORY[0x277D25330];
    v190 = *MEMORY[0x277D25380];
    v191 = *MEMORY[0x277D25388];
    (v249)(v186, v174);
    v192 = v174;
    sub_237EF8260();
    v195 = v187 == v188 || v187 == v189 || v187 == v190 || v187 == v191;
    v196 = v236;
    if (v195)
    {
      v197 = v212;
      sub_237EF7470();
      v199 = v213;
      v198 = v214;
      v200 = v222;
      (*(v213 + 16))(v222, v197, v214);
      (*(v226 + 104))(v200, v188, v192);
      v182 = v229;
      sub_237EF7660();
      sub_237EF75F0();
      sub_237EF7600();
      sub_237EF75E0();
      (*(v199 + 8))(v197, v198);
    }

    else
    {
      v201 = v222;
      sub_237EF7190();
      (*(v226 + 104))(v201, *MEMORY[0x277D253D0], v174);
      v182 = v229;
      sub_237EF7660();
      sub_237EF75E0();
      sub_237EF75F0();
      sub_237EF7600();
      sub_237EF7630();
      sub_237EF7640();
    }

    v185 = v196;
  }

  sub_237E36B18();
  v202 = v237;
  v203 = sub_237EF7790();
  v204 = v235;
  v205 = sub_237EF7790();
  sub_237E3A140(v205, v203);

  sub_237EF77A0();
  (v248)(v234, v246);
  v206 = *v240;
  (*v240)(v230, v185);
  v206(v228, v185);
  sub_237D0F8BC(v204);
  sub_237D0F8BC(v202);
  sub_237DDA7EC(v182, v223);
}

uint64_t sub_237E36B18()
{
  v20 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_237EF75C0();
  v7 = *(v6 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_237C62DB0();
    v8 = v21;
    v9 = v1 + 16;
    OUTLINED_FUNCTION_28();
    v11 = v6 + v10;
    v18 = *(v9 + 56);
    v19 = v12;
    v13 = (v9 - 8);
    do
    {
      v14 = v9;
      v19(v5, v11, v20);
      v15 = sub_237EF7610();
      (*v13)(v5, v20);
      v16 = v21[2];
      if (v16 >= v21[3] >> 1)
      {
        sub_237C62DB0();
      }

      v21[2] = v16 + 1;
      v21[v16 + 4] = v15;
      v11 += v18;
      --v7;
      v9 = v14;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  sub_237CB85E4(v8);

  return sub_237EF7620();
}

uint64_t sub_237E36CF8@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v630 = a2;
  v564 = a5;
  v557 = sub_237EF74A0();
  OUTLINED_FUNCTION_1();
  v553 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v552 = v10;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7520();
  OUTLINED_FUNCTION_1();
  v562 = v12;
  v563 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v561 = v13;
  OUTLINED_FUNCTION_12_1();
  v567 = sub_237EF74B0();
  OUTLINED_FUNCTION_1();
  v627 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v574 = v16;
  OUTLINED_FUNCTION_12_1();
  v573 = sub_237EF74E0();
  OUTLINED_FUNCTION_1();
  v625 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v572 = v19;
  OUTLINED_FUNCTION_12_1();
  v559 = sub_237EF72A0();
  OUTLINED_FUNCTION_1();
  v622 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  v558 = v22;
  OUTLINED_FUNCTION_12_1();
  v566 = sub_237EF72E0();
  OUTLINED_FUNCTION_1();
  v619 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_3();
  v565 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4918);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_2_2();
  v551 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v556 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_16();
  v555 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v576 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  v575 = v35;
  OUTLINED_FUNCTION_12_1();
  v583 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v615 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_3();
  v582 = v38;
  OUTLINED_FUNCTION_12_1();
  v620 = sub_237EF7420();
  OUTLINED_FUNCTION_1();
  v610 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_2();
  v605 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_1();
  v609 = v43;
  OUTLINED_FUNCTION_12_1();
  v590 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v571 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_2();
  v554 = v46;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  v560 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_16();
  v579 = v50;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_16();
  v624 = v52;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22_1();
  v588 = v54;
  OUTLINED_FUNCTION_12_1();
  v587 = sub_237EF7460();
  OUTLINED_FUNCTION_1();
  v614 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_3();
  v621 = v57;
  OUTLINED_FUNCTION_12_1();
  v616 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v602 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_2();
  v594 = v60;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8_16();
  v570 = v62;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_8_16();
  v569 = v64;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_16();
  v586 = v66;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8_16();
  v607 = v68;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_8_16();
  v606 = v70;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_16();
  v597 = v72;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_22_1();
  v596 = v74;
  OUTLINED_FUNCTION_12_1();
  v632 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v626 = v75;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_2_2();
  v600 = v77;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_8_16();
  v608 = v79;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_8_16();
  v598 = v81;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_8_16();
  v604 = v83;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_8_16();
  v593 = v85;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_8_16();
  v617 = v87;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_8_16();
  v618 = v89;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_22_1();
  v623 = v91;
  OUTLINED_FUNCTION_12_1();
  v595 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v589 = v92;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_2_2();
  v580 = v94;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_8_16();
  v585 = v96;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_8_16();
  v578 = v98;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_8_16();
  v599 = v100;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_22_1();
  v628 = v102;
  v631 = a4;
  v629 = *(a4 - 8);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_5();
  v106 = v105 - v104;
  v107 = *(a3 - 8);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_5();
  v111 = v110 - v109;
  v568 = type metadata accessor for CoreMLPackage();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_2_2();
  v577 = v113;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v114);
  v116 = &v511 - v115;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_8_16();
  v581 = v118;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v119);
  v121 = &v511 - v120;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_22_1();
  v584 = v123;
  v125 = *(v107 + 16);
  v124 = v107 + 16;
  v125(v111, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_42_16();
    sub_237C65484(v635, qword_27DEB05B8);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40();
    OUTLINED_FUNCTION_32_24();
    sub_237EF9CF0();
    OUTLINED_FUNCTION_20_37(v636[0]);
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_31_23();
  v126 = v633;
  v127(v124, a1);
  if (v126)
  {
    return __swift_destroy_boxed_opaque_existential_1(v636);
  }

  v129 = v121;
  v130 = v584;
  sub_237DDA7EC(v129, v584);
  __swift_destroy_boxed_opaque_existential_1(v636);
  v131 = v630;
  v132 = v631;
  (*(v629 + 16))(v106, v630, v631);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_42_16();
    sub_237C65484(v635, qword_27DEB05B8);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40();
    OUTLINED_FUNCTION_32_24();
    sub_237EF9CF0();
    OUTLINED_FUNCTION_20_37(v636[0]);
    swift_willThrow();
    return sub_237D0F8BC(v130);
  }

  OUTLINED_FUNCTION_31_23();
  v133(v132, v131);
  v531 = 0;
  sub_237DDA7EC(v116, v581);
  __swift_destroy_boxed_opaque_existential_1(v636);
  v521 = *(sub_237EF75C0() + 16);

  v134 = sub_237EF75C0();
  v135 = sub_237EF75C0();
  v636[0] = v134;
  sub_237E4845C(v135);
  v136 = v636[0];
  v137 = MEMORY[0x277D84FA0];
  v543 = *(v636[0] + 16);
  if (!v543)
  {
    v347 = MEMORY[0x277D84F98];
    v642 = MEMORY[0x277D84F98];
    v542 = MEMORY[0x277D84F98];
    v348 = MEMORY[0x277D84F98];
    v622 = MEMORY[0x277D84F98];
LABEL_143:
    v629 = v347;
    v601 = v348;
    v638 = v137;
    v639 = v137;
    v131 = v136 + 16;
    v134 = MEMORY[0x277D84F98];
    goto LABEL_144;
  }

  v138 = 0;
  v549 = v589 + 16;
  v139 = v626;
  v633 = v626 + 16;
  v630 = (v626 + 8);
  v592 = v602 + 16;
  v591 = (v602 + 8);
  v545 = (v571 + 88);
  v550 = *MEMORY[0x277D25348];
  v539 = (v614 + 4);
  v540 = (v571 + 8);
  v538 = *MEMORY[0x277D250F0];
  v537 = (v615 + 13);
  v536 = v615 + 1;
  v534 = (v614 + 2);
  v532 = v614 + 1;
  v530 = *MEMORY[0x277D25360];
  v526 = *MEMORY[0x277D25320];
  v520 = (v619 + 32);
  v519 = (v622 + 88);
  v518 = *MEMORY[0x277D25200];
  v513 = *MEMORY[0x277D251F8];
  v517 = (v619 + 8);
  v511 = (v622 + 8);
  v514 = v622 + 96;
  v525 = v625 + 32;
  v528 = (v625 + 8);
  v524 = *MEMORY[0x277D25248];
  v516 = *MEMORY[0x277D25240];
  v512 = *MEMORY[0x277D25130];
  v515 = *MEMORY[0x277D25118];
  v535 = xmmword_237F03530;
  v541 = (v571 + 96);
  v615 = v610 + 2;
  v614 = v610 + 1;
  v533 = (v571 + 104);
  v548 = (v589 + 8);
  v529 = (v602 + 32);
  v523 = v627 + 88;
  v542 = MEMORY[0x277D84F98];
  v601 = MEMORY[0x277D84F98];
  v140 = MEMORY[0x277D84F98];
  v629 = MEMORY[0x277D84F98];
  v527 = v627 + 8;
  v522 = (v602 + 104);
  v141 = v632;
  v142 = v624;
  v143 = v628;
  do
  {
    if (v138 >= *(v136 + 16))
    {
      goto LABEL_277;
    }

    v622 = v140;
    OUTLINED_FUNCTION_10_2();
    v627 = v136;
    v611 = v144;
    v547 = *(v145 + 72);
    v613 = v146;
    v147 = *(v145 + 16);
    v612 = v547 * v146;
    v546 = v147;
    v147(v143, v136 + v144 + v547 * v146, v595);
    v148 = *(sub_237EF76A0() + 16);

    v625 = v148;
    if (!v148)
    {
      goto LABEL_45;
    }

    v149 = 0;
    do
    {
      v136 = v143;
      if (v149 >= *(sub_237EF76A0() + 16))
      {
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

      v150 = v626;
      v131 = *(v626 + 16);
      v631 = *(v626 + 72) * v149;
      v151 = v623;
      OUTLINED_FUNCTION_37_21();
      (v131)();

      v152 = sub_237EF70A0();
      v153 = v141;
      v154 = v152;
      v134 = v155;
      v156 = *(v150 + 8);
      v156(v151, v153);
      v136 = v629;
      if (!*(v629 + 16))
      {

LABEL_30:
        v136 = v628;
        if (v149 >= *(sub_237EF76A0() + 16))
        {
          goto LABEL_254;
        }

        v167 = v618;
        v141 = v632;
        OUTLINED_FUNCTION_37_21();
        (v131)();

        v131 = sub_237EF70A0();
        v134 = v168;
        v156(v167, v141);
        v169 = v622;
        if (!*(v622 + 16))
        {

          goto LABEL_43;
        }

        OUTLINED_FUNCTION_28_6();
        v131 = v169;
        sub_237D2FC30();
        OUTLINED_FUNCTION_24_31();
        if ((v141 & 1) == 0)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_29_28();
        v170 = v606;
        v171 = OUTLINED_FUNCTION_43_17();
        v169(v171);
        (v169)(v607, v170, v134);
        if ((OUTLINED_FUNCTION_53_11() & 1) == 0)
        {
          sub_237E642A8();
        }

        OUTLINED_FUNCTION_27_25();
        if (v157)
        {
          goto LABEL_265;
        }

        OUTLINED_FUNCTION_28_27();
        v173 = v172 + v612;
        v134 = sub_237EF7690();
        v174 = OUTLINED_FUNCTION_16_45();
        *v170 = v173;
        if ((v174 & 1) == 0)
        {
          sub_237E64290();
          OUTLINED_FUNCTION_19_40(v178);
        }

        v141 = v632;
        if (v149 >= *(v173 + 16))
        {
          goto LABEL_266;
        }

        OUTLINED_FUNCTION_25_31();
        sub_237EF70D0();
        v175 = OUTLINED_FUNCTION_8_72();
        (v134)(v175);
        (*v591)(v606, v616);
        goto LABEL_43;
      }

      sub_237D2FC30();
      OUTLINED_FUNCTION_24_31();
      if ((v154 & 1) == 0)
      {
        goto LABEL_30;
      }

      v134 = *(*(v629 + 56) + 16 * v136 + 8);
      swift_bridgeObjectRetain_n();
      if ((OUTLINED_FUNCTION_53_11() & 1) == 0)
      {
        sub_237E642A8();
        v136 = v176;
      }

      OUTLINED_FUNCTION_27_25();
      if (v157)
      {
        goto LABEL_259;
      }

      v627 = v136;
      v158 = v136 + v611;
      v136 += v611 + v612;
      v131 = sub_237EF7690();
      v159 = OUTLINED_FUNCTION_16_45();
      *v154 = v136;
      if ((v159 & 1) == 0)
      {
        sub_237E64290();
        OUTLINED_FUNCTION_19_40(v177);
      }

      if (v149 >= *(v136 + 16))
      {
        goto LABEL_260;
      }

      OUTLINED_FUNCTION_25_31();
      sub_237EF70B0();
      v160 = OUTLINED_FUNCTION_8_72();
      (v131)(v160);
      v161 = v622;
      if (!*(v622 + 16))
      {

LABEL_42:
        v141 = v632;
        goto LABEL_43;
      }

      v131 = v622;
      sub_237D2FC30();
      OUTLINED_FUNCTION_24_31();
      if ((v154 & 1) == 0)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_29_28();
      v162 = v596;
      v163 = OUTLINED_FUNCTION_43_17();
      v161(v163);
      (v161)(v597, v162, v134);
      OUTLINED_FUNCTION_50_14();
      if (v157)
      {
        goto LABEL_272;
      }

      v164 = v158 + v612;
      v134 = sub_237EF7690();
      v165 = OUTLINED_FUNCTION_16_45();
      *v162 = v164;
      if ((v165 & 1) == 0)
      {
        sub_237E64290();
        OUTLINED_FUNCTION_19_40(v179);
      }

      v141 = v632;
      if (v149 >= *(v164 + 16))
      {
        goto LABEL_273;
      }

      OUTLINED_FUNCTION_25_31();
      sub_237EF70D0();
      v166 = OUTLINED_FUNCTION_8_72();
      (v134)(v166);
      (*v591)(v596, v616);
LABEL_43:
      ++v149;
      v142 = v624;
      v143 = v628;
    }

    while (v625 != v149);
    v139 = v626;
LABEL_45:
    v134 = v588;
    sub_237EF7650();
    v544 = *v545;
    v180 = v544(v134, v590);
    if (v180 == v550)
    {
      v181 = OUTLINED_FUNCTION_14_52();
      v182(v181);
      v183 = v621;
      (*v539)(v621, v134, v587);
      v184 = *(sub_237EF7440() + 16);

      v603 = v184;
      v185 = 0;
      if (v184)
      {
        v186 = 0;
        v187 = v629;
        while (1)
        {
          v136 = v183;
          if (v186 >= *(sub_237EF7440() + 16))
          {
            goto LABEL_255;
          }

          v619 = v185;
          v188 = v610;
          OUTLINED_FUNCTION_28();
          v625 = v189;
          v131 = v188[2];
          v631 = v188[9] * v186;
          v190 = v609;
          v191 = OUTLINED_FUNCTION_45_16();
          (v131)(v191);

          sub_237EF73F0();
          v134 = v192;
          v193 = v188[1];
          v193(v190, v183);
          if (v187[2])
          {
            OUTLINED_FUNCTION_3_47();
            sub_237D2FC30();
            OUTLINED_FUNCTION_24_31();
            v183 = v621;
            if (v187)
            {
              v194 = v601;
              v195 = *(v601 + 16);
              sub_237EF8260();
              if (v195)
              {
                OUTLINED_FUNCTION_44_16();
                v196 = sub_237D2FC30();
                v197 = v619;
                if (v198)
                {
                  v199 = *(*(v194 + 56) + 8 * v196);
                }

                else
                {
                  v199 = 1;
                }
              }

              else
              {
                v199 = 1;
                v197 = v619;
              }

              v205 = __OFADD__(v197, v199);
              v185 = &v197[v199];
              if (v205)
              {
                goto LABEL_268;
              }

              v619 = v199;
              v134 = sub_237EF7430();
              v207 = OUTLINED_FUNCTION_16_45();
              *v187 = v183;
              if ((v207 & 1) == 0)
              {
                sub_237E64278();
                OUTLINED_FUNCTION_19_40(v212);
              }

              if (v186 >= v183[2])
              {
                goto LABEL_269;
              }

              OUTLINED_FUNCTION_18_35();
              OUTLINED_FUNCTION_44_16();
              sub_237EF7400();
              v208 = OUTLINED_FUNCTION_8_72();
              (v134)(v208);
              v131 = sub_237EF7430();
              v209 = OUTLINED_FUNCTION_16_45();
              *v187 = v183;
              if ((v209 & 1) == 0)
              {
                sub_237E64278();
                OUTLINED_FUNCTION_19_40(v213);
              }

              v187 = v629;
              if (v186 >= v183[2])
              {
                goto LABEL_270;
              }

              goto LABEL_76;
            }
          }

          else
          {

            v183 = v621;
          }

          v136 = v183;
          if (v186 >= *(sub_237EF7440() + 16))
          {
            goto LABEL_256;
          }

          v200 = v605;
          v201 = OUTLINED_FUNCTION_45_16();
          (v131)(v201);

          v202 = sub_237EF73F0();
          v193(v200, v183);
          v136 = v601;
          if (*(v601 + 16))
          {
            v131 = sub_237D2FC30();
            v202 = v203;

            v204 = v619;
            if (v202)
            {
              v134 = *(*(v136 + 56) + 8 * v131);
            }

            else
            {
              v134 = 1;
            }

            v183 = v621;
          }

          else
          {

            v134 = 1;
            v183 = v621;
            v204 = v619;
          }

          v205 = __OFADD__(v204, v134);
          v185 = &v204[v134];
          if (v205)
          {
            goto LABEL_257;
          }

          v136 = v183;
          v131 = sub_237EF7430();
          v206 = OUTLINED_FUNCTION_16_45();
          *v202 = v183;
          if ((v206 & 1) == 0)
          {
            sub_237E64278();
            OUTLINED_FUNCTION_19_40(v211);
          }

          v187 = v629;
          if (v186 >= v183[2])
          {
            goto LABEL_258;
          }

LABEL_76:
          OUTLINED_FUNCTION_18_35();
          sub_237EF7410();
          v210 = OUTLINED_FUNCTION_8_72();
          (v131)(v210);
          if (v603 == ++v186)
          {
            v142 = v624;
            goto LABEL_80;
          }
        }
      }

      v187 = v629;
LABEL_80:
      (*v537)(v582, v538, v583);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v216 = swift_allocObject();
      *(v216 + 16) = v535;
      *(v216 + 32) = v185;
      sub_237EF6CF0();

      v217 = OUTLINED_FUNCTION_28_6();
      v218(v217);
      v219 = OUTLINED_FUNCTION_53_11();
      v143 = v628;
      if ((v219 & 1) == 0)
      {
        sub_237E642A8();
        v216 = v345;
      }

      v139 = v626;
      v629 = v187;
      OUTLINED_FUNCTION_27_25();
      if (v157)
      {
        goto LABEL_278;
      }

      v627 = v216;
      v131 = v216 + v611;
      v220 = v216 + v611 + v612;
      v221 = sub_237EF76E0();
      v222 = OUTLINED_FUNCTION_16_45();
      *v187 = v220;
      if ((v222 & 1) == 0)
      {
        sub_237E64290();
        OUTLINED_FUNCTION_19_40(v346);
      }

      v223 = v632;
      if (!*(v220 + 16))
      {
        goto LABEL_279;
      }

      OUTLINED_FUNCTION_28();
      sub_237EF70D0();
      v224 = OUTLINED_FUNCTION_8_72();
      v221(v224);
      v134 = v587;
      (*v534)(v142, v621, v587);
      (*v533)(v142, v550, v590);
      OUTLINED_FUNCTION_50_14();
      if (v157)
      {
        goto LABEL_280;
      }

      sub_237EF7660();
      v225 = OUTLINED_FUNCTION_23_35();
      v226(v225, v134);
      v141 = v223;
    }

    else
    {
      v214 = OUTLINED_FUNCTION_14_52();
      v215(v214);
    }

    v227 = *(sub_237EF76A0() + 16);

    if (v227 != 1 || (v228 = *(sub_237EF76F0() + 16), , v228 != 1))
    {
      v232 = OUTLINED_FUNCTION_4_76();
      v233(v232);
      goto LABEL_93;
    }

    if (*(sub_237EF76A0() + 16))
    {
      OUTLINED_FUNCTION_28();
      v229 = v575;
      OUTLINED_FUNCTION_37_21();
      v230();
      v231 = 0;
    }

    else
    {
      v231 = 1;
      v229 = v575;
    }

    __swift_storeEnumTagSinglePayload(v229, v231, 1, v141);

    if (__swift_getEnumTagSinglePayload(v229, 1, v141) == 1)
    {
      goto LABEL_291;
    }

    v234 = v229;
    v625 = sub_237EF70A0();
    v631 = v235;
    v236 = *v630;
    (*v630)(v234, v141);
    v237 = sub_237EF76F0();
    v238 = v141;
    if (*(v237 + 16))
    {
      OUTLINED_FUNCTION_28();
      v240 = v576;
      (*(v139 + 16))(v576, v237 + v239, v238);
      v241 = 0;
    }

    else
    {
      v241 = 1;
      v240 = v576;
    }

    __swift_storeEnumTagSinglePayload(v240, v241, 1, v238);

    if (__swift_getEnumTagSinglePayload(v240, 1, v238) == 1)
    {
      goto LABEL_290;
    }

    v242 = sub_237EF70A0();
    v244 = v243;
    v245 = OUTLINED_FUNCTION_30_33();
    (v236)(v245);
    v246 = v542;
    v247 = *(v542 + 16);
    v612 = v242;
    if (v247)
    {
      v248 = v631;
      v249 = sub_237D2FC30();
      v250 = v629;
      if (v251)
      {
        v252 = *(v246 + 56) + 16 * v249;
        v253 = *(v252 + 8);
        v625 = *v252;
        sub_237EF8260();

        v248 = v253;
      }
    }

    else
    {
      v250 = v629;
      v248 = v631;
    }

    v619 = v244;
    sub_237EF8260();
    swift_isUniquelyReferenced_nonNull_native();
    v636[0] = v250;
    v631 = v248;
    v254 = sub_237D2FC30();
    if (__OFADD__(*(v250 + 16), (v255 & 1) == 0))
    {
      goto LABEL_283;
    }

    v256 = v254;
    v257 = v255;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0);
    if (sub_237EF96B0())
    {
      v258 = sub_237D2FC30();
      if ((v257 & 1) != (v259 & 1))
      {
        goto LABEL_296;
      }

      v256 = v258;
      v260 = v542;
    }

    else
    {
      v260 = v542;
    }

    v629 = v636[0];
    if (v257)
    {
      OUTLINED_FUNCTION_47_14();
      v261 = v619;
      *v262 = v612;
      v262[1] = v261;
    }

    else
    {
      OUTLINED_FUNCTION_7_61(v636[0] + 8 * (v256 >> 6));
      v264 = (*(v263 + 48) + 16 * v256);
      v265 = v631;
      *v264 = v625;
      v264[1] = v265;
      OUTLINED_FUNCTION_47_14();
      v267 = v619;
      *v268 = v612;
      v268[1] = v267;
      v269 = *(v266 + 16);
      v205 = __OFADD__(v269, 1);
      v270 = v269 + 1;
      if (v205)
      {
        goto LABEL_286;
      }

      *(v266 + 16) = v270;
      sub_237EF8260();
    }

    swift_isUniquelyReferenced_nonNull_native();
    v636[0] = v260;
    sub_237D2FC30();
    v272 = v271;
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v274, v275))
    {
      goto LABEL_284;
    }

    v131 = v273;
    if (sub_237EF96B0())
    {
      v276 = sub_237D2FC30();
      v143 = v628;
      if ((v272 & 1) != (v277 & 1))
      {
        goto LABEL_296;
      }

      v131 = v276;
      v134 = v579;
    }

    else
    {
      v134 = v579;
      v143 = v628;
    }

    v542 = v636[0];
    if (v272)
    {
      OUTLINED_FUNCTION_47_14();
      v278 = v631;
      *v279 = v625;
      v279[1] = v278;

      v280 = v619;
    }

    else
    {
      OUTLINED_FUNCTION_7_61(v636[0] + 8 * (v131 >> 6));
      v282 = (*(v281 + 48) + 16 * v131);
      v280 = v619;
      *v282 = v612;
      v282[1] = v280;
      OUTLINED_FUNCTION_47_14();
      v284 = v631;
      *v285 = v625;
      v285[1] = v284;
      v286 = *(v283 + 16);
      v205 = __OFADD__(v286, 1);
      v287 = v286 + 1;
      if (v205)
      {
        goto LABEL_287;
      }

      *(v283 + 16) = v287;
      sub_237EF8260();
    }

    sub_237EF7650();
    v288 = v544(v134, v590);
    if (v288 != v530)
    {
      if (v288 != v526)
      {
        v329 = OUTLINED_FUNCTION_4_76();
        v330(v329);

        (*v540)(v579, v590);
        goto LABEL_139;
      }

      v308 = v579;
      (*v541)(v579, v590);
      v131 = v565;
      v309 = v566;
      (*v520)(v565, v308, v566);
      v134 = v558;
      sub_237EF72D0();
      v294 = v559;
      v310 = (*v519)(v134, v559);
      if (v310 == v518)
      {
        v311 = OUTLINED_FUNCTION_14_52();
        v312(v311);
        v631 = *v134;
        sub_237EF8260();
        v313 = v569;
        sub_237EF6E50();
        v314 = OUTLINED_FUNCTION_17_44();
        v315(v314, v313, v616);
        OUTLINED_FUNCTION_52_11();
        v316 = OUTLINED_FUNCTION_6_63();
        v134 = v612;
        sub_237C91458(v316, v612, v280, v317);

        OUTLINED_FUNCTION_40_15();

        swift_isUniquelyReferenced_nonNull_native();
        v318 = OUTLINED_FUNCTION_6_63();
        v141 = v632;
        sub_237C911D0(v318, v134, v280);

        (*v517)(v131, v566);
      }

      else
      {
        if (v310 != v513)
        {

          (*v517)(v565, v309);
          v343 = OUTLINED_FUNCTION_4_76();
          v344(v343);
          v328 = *v511;
          v326 = v134;
          goto LABEL_137;
        }

        v331 = OUTLINED_FUNCTION_14_52();
        v332(v331);
        v134 = *v134;
        sub_237EF8260();
        v333 = v569;
        sub_237EF6E40();
        v334 = OUTLINED_FUNCTION_17_44();
        v335(v334, v333, v616);
        OUTLINED_FUNCTION_52_11();
        v336 = OUTLINED_FUNCTION_6_63();
        v131 = v612;
        sub_237C91458(v336, v612, v280, v337);

        OUTLINED_FUNCTION_40_15();

        swift_isUniquelyReferenced_nonNull_native();
        v338 = OUTLINED_FUNCTION_6_63();
        v141 = v632;
        sub_237C911D0(v338, v131, v280);

        (*v517)(v565, v566);
      }

      v339 = OUTLINED_FUNCTION_4_76();
      v340(v339);
      v601 = v636[0];
LABEL_93:
      v136 = v627;
      goto LABEL_140;
    }

    v289 = OUTLINED_FUNCTION_14_52();
    v290(v289);
    v131 = v572;
    v291 = OUTLINED_FUNCTION_28_6();
    v134 = v573;
    v292(v291);
    sub_237EF74C0();
    v293 = OUTLINED_FUNCTION_23_35();
    v294 = v567;
    v296 = v295(v293, v567);
    if (v296 == v524)
    {
      v297 = OUTLINED_FUNCTION_23_35();
      v298(v297, v294);
      v299 = v569;
      sub_237EF6D00();
      v300 = v616;
      (*v522)(v299, v515, v616);
      v301 = OUTLINED_FUNCTION_17_44();
      v302(v301, v299, v300);
      OUTLINED_FUNCTION_52_11();
      v303 = OUTLINED_FUNCTION_6_63();
      sub_237C91458(v303, v612, v619, v304);

      OUTLINED_FUNCTION_40_15();
      v305 = OUTLINED_FUNCTION_28_6();
      goto LABEL_130;
    }

    if (v296 != v516)
    {

      (*v528)(v572, v573);
      v341 = OUTLINED_FUNCTION_4_76();
      v342(v341);
      v326 = OUTLINED_FUNCTION_23_35();
LABEL_137:
      v327 = v294;
      goto LABEL_138;
    }

    v319 = OUTLINED_FUNCTION_23_35();
    v320(v319, v294);
    v321 = v569;
    sub_237EF6DB0();
    v322 = OUTLINED_FUNCTION_23_35();
    v323 = v616;
    v324(v322, v512, v616);
    v134 = v570;
    (*v529)(v570, v321, v323);
    v325 = OUTLINED_FUNCTION_52_11();
    v636[0] = v323;
    sub_237C91458(v134, v612, v280, v325);

    OUTLINED_FUNCTION_40_15();
    v307 = *v528;
    v305 = v572;
    v306 = v573;
LABEL_130:
    v307(v305, v306);
    v326 = OUTLINED_FUNCTION_4_76();
LABEL_138:
    v328(v326, v327);
LABEL_139:
    v136 = v627;
    v141 = v632;
LABEL_140:
    v138 = v613 + 1;
    v140 = v622;
  }

  while (v613 + 1 != v543);
  v353 = *(v136 + 16);
  v642 = MEMORY[0x277D84F98];
  v616 = v353;
  if (!v353)
  {
    v130 = v584;
    v348 = v601;
    v347 = v629;
    v137 = MEMORY[0x277D84FA0];
    goto LABEL_143;
  }

  v354 = 0;
  v625 = (v139 + 32);
  v619 = (v139 + 40);
  v134 = MEMORY[0x277D84F98];
  do
  {
    if (v354 >= *(v136 + 16))
    {
      goto LABEL_285;
    }

    OUTLINED_FUNCTION_28_27();
    v618 = v354;
    v621 = v547 * v354;
    v546(v599, v355 + v547 * v354, v595);
    v356 = *(sub_237EF76A0() + 16);

    v623 = v356;
    if (v356)
    {
      v357 = 0;
      while (1)
      {
        if (v357 >= *(sub_237EF76A0() + 16))
        {
          __break(1u);
          goto LABEL_263;
        }

        v628 = *(v139 + 72);
        v358 = *(v139 + 16);
        v631 = v134;
        OUTLINED_FUNCTION_37_21();
        v358();

        v359 = v631;
        sub_237EF70A0();
        v361 = v360;
        if (!*(v359 + 16))
        {
          break;
        }

        v362 = sub_237D2FC30();
        v364 = v363;

        if ((v364 & 1) == 0)
        {
          goto LABEL_166;
        }

        v365 = *(v359 + 56) + v362 * v628;
        v366 = v593;
        (v358)(v593, v365, v632);
        sub_237EF70C0();
        if ((OUTLINED_FUNCTION_53_11() & 1) == 0)
        {
          sub_237E642A8();
          v366 = v392;
        }

        if (v618 >= *(v366 + 16))
        {
          goto LABEL_275;
        }

        OUTLINED_FUNCTION_28_27();
        v368 = (v367 + v621);
        v369 = sub_237EF7690();
        v370 = OUTLINED_FUNCTION_16_45();
        *v361 = v368;
        if ((v370 & 1) == 0)
        {
          sub_237E64290();
          OUTLINED_FUNCTION_19_40(v393);
        }

        v141 = v632;
        if (v357 >= *(v368 + 2))
        {
          goto LABEL_276;
        }

        sub_237EF70D0();
        v371 = OUTLINED_FUNCTION_8_72();
        v369(v371);
        v372 = *v630;
        (*v630)(v593, v141);
        v372(v617, v141);
        v134 = v631;
LABEL_176:
        v139 = v626;
        if (v623 == ++v357)
        {
          goto LABEL_177;
        }
      }

LABEL_166:
      v373 = v617;
      v374 = sub_237EF70A0();
      v376 = v375;
      (v358)(v604, v373, v632);
      v377 = v642;
      swift_isUniquelyReferenced_nonNull_native();
      v636[0] = v377;
      sub_237D2FC30();
      OUTLINED_FUNCTION_8_67();
      if (__OFADD__(v380, v381))
      {
        goto LABEL_267;
      }

      v382 = v378;
      v383 = v379;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4920);
      if (sub_237EF96B0())
      {
        v384 = sub_237D2FC30();
        v141 = v632;
        if ((v383 & 1) != (v385 & 1))
        {
          goto LABEL_296;
        }

        v382 = v384;
      }

      else
      {
        v141 = v632;
      }

      v386 = v628;
      if (v383)
      {

        v134 = v636[0];
        (*v619)(*(v636[0] + 56) + v382 * v386, v604, v141);
        OUTLINED_FUNCTION_41_12();
        v387(v617, v141);
      }

      else
      {
        v134 = v636[0];
        OUTLINED_FUNCTION_7_61(v636[0] + 8 * (v382 >> 6));
        v388 = (*(v134 + 48) + 16 * v382);
        *v388 = v374;
        v388[1] = v376;
        (*v625)(*(v134 + 56) + v382 * v386, v604, v141);
        OUTLINED_FUNCTION_41_12();
        v389(v617, v141);
        v390 = *(v134 + 16);
        v205 = __OFADD__(v390, 1);
        v391 = v390 + 1;
        if (v205)
        {
          goto LABEL_274;
        }

        *(v134 + 16) = v391;
      }

      v642 = v134;
      goto LABEL_176;
    }

LABEL_177:
    v623 = sub_237EF76F0();
    v136 = v627;
    v621 = *(v623 + 16);
    if (v621)
    {
      v394 = 0;
      OUTLINED_FUNCTION_28();
      v620 = (v623 + v395);
      while (v394 < *(v623 + 16))
      {
        v396 = v626;
        v631 = *(v626 + 72);
        v397 = v598;
        (*(v626 + 16))(v598, v620 + v631 * v394, v141);
        v398 = sub_237EF70A0();
        v400 = v399;
        v628 = *(v396 + 32);
        (v628)(v608, v397, v141);
        v401 = v642;
        swift_isUniquelyReferenced_nonNull_native();
        v636[0] = v401;
        sub_237D2FC30();
        OUTLINED_FUNCTION_8_67();
        if (__OFADD__(v404, v405))
        {
          goto LABEL_264;
        }

        v406 = v402;
        v407 = v403;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4920);
        if (sub_237EF96B0())
        {
          v408 = sub_237D2FC30();
          v141 = v632;
          if ((v407 & 1) != (v409 & 1))
          {
            goto LABEL_296;
          }

          v406 = v408;
        }

        else
        {
          v141 = v632;
        }

        v136 = v627;
        if (v407)
        {

          v134 = v636[0];
          (*v619)(*(v636[0] + 56) + v406 * v631, v608, v141);
        }

        else
        {
          v134 = v636[0];
          OUTLINED_FUNCTION_7_61(v636[0] + 8 * (v406 >> 6));
          v410 = (*(v134 + 48) + 16 * v406);
          *v410 = v398;
          v410[1] = v400;
          (v628)(*(v134 + 56) + v406 * v631, v608, v141);
          v411 = *(v134 + 16);
          v205 = __OFADD__(v411, 1);
          v412 = v411 + 1;
          if (v205)
          {
            goto LABEL_271;
          }

          *(v134 + 16) = v412;
        }

        ++v394;
        v642 = v134;
        if (v621 == v394)
        {
          goto LABEL_190;
        }
      }

LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

LABEL_190:
    v354 = (v618 + 1);

    v413 = *v548;
    (*v548)(v599, v595);
    v139 = v626;
  }

  while (v354 != v616);
  v131 = v136 + 16;
  v414 = *(v136 + 16);
  v638 = MEMORY[0x277D84FA0];
  v639 = MEMORY[0x277D84FA0];
  v620 = v414;
  if (!v414)
  {
LABEL_261:
    v130 = v584;
    goto LABEL_144;
  }

  v617 = v136 + 16;
  v631 = v134;
  v415 = v141;
  v416 = 0;
  v619 = (v136 + v611);
  v417 = v595;
  v418 = v578;
  v618 = v413;
  do
  {
    sub_237C85534(v416, 1, v136);
    v623 = v416;
    v546(v418, &v619[v547 * v416], v417);
    v419 = sub_237EF76A0();
    v420 = *(v419 + 16);
    if (v420)
    {
      OUTLINED_FUNCTION_36_21(MEMORY[0x277D84F90]);
      v421 = v636[0];
      OUTLINED_FUNCTION_10_2();
      v621 = v419;
      v423 = v419 + v422;
      OUTLINED_FUNCTION_49_13();
      v424 = v415;
      do
      {
        (v625)(v600, v423, v424);
        v425 = sub_237EF70A0();
        v427 = v426;
        OUTLINED_FUNCTION_41_12();
        v428 = OUTLINED_FUNCTION_3_47();
        v429(v428);
        v636[0] = v421;
        v431 = *(v421 + 16);
        v430 = *(v421 + 24);
        if (v431 >= v430 >> 1)
        {
          OUTLINED_FUNCTION_34_15(v430);
          v421 = v636[0];
        }

        *(v421 + 16) = v431 + 1;
        v432 = v421 + 16 * v431;
        *(v432 + 32) = v425;
        *(v432 + 40) = v427;
        v423 += v628;
        --v420;
        v424 = v632;
      }

      while (v420);
    }

    else
    {

      v421 = MEMORY[0x277D84F90];
      v424 = v415;
    }

    sub_237E39FBC(v421);
    v433 = sub_237EF76F0();
    v434 = *(v433 + 16);
    if (v434)
    {
      OUTLINED_FUNCTION_36_21(MEMORY[0x277D84F90]);
      v435 = v636[0];
      OUTLINED_FUNCTION_10_2();
      v621 = v433;
      v437 = v433 + v436;
      OUTLINED_FUNCTION_49_13();
      do
      {
        v438 = OUTLINED_FUNCTION_30_33();
        (v625)(v438);
        v439 = sub_237EF70A0();
        v441 = v440;
        OUTLINED_FUNCTION_41_12();
        v442 = OUTLINED_FUNCTION_3_47();
        v443(v442);
        v636[0] = v435;
        v445 = *(v435 + 16);
        v444 = *(v435 + 24);
        if (v445 >= v444 >> 1)
        {
          OUTLINED_FUNCTION_34_15(v444);
          v435 = v636[0];
        }

        *(v435 + 16) = v445 + 1;
        v446 = v435 + 16 * v445;
        *(v446 + 32) = v439;
        *(v446 + 40) = v441;
        v437 += v628;
        --v434;
      }

      while (v434);
      v415 = v632;
    }

    else
    {
      v415 = v424;

      v435 = MEMORY[0x277D84F90];
    }

    v416 = v623 + 1;
    sub_237E39FBC(v435);
    v418 = v578;
    v417 = v595;
    (v618)(v578, v595);
    v136 = v627;
  }

  while (v416 != v620);
  v130 = v584;
  v134 = v631;
  v131 = v617;
LABEL_144:
  v631 = v134;
  v627 = v136;
  sub_237E3A218(v130, v577);
  v349 = *(v568 + 24);
  if (!*(v130 + v349 + 80))
  {
    v447 = v577;
    v350 = v590;
LABEL_211:
    v448 = v581;
    OUTLINED_FUNCTION_51_13(v637);
    v449 = *(v448 + v349 + 80);
    if (v449)
    {
      v450 = (v447 + *(v568 + 24));
      memcpy(v635, v450, sizeof(v635));
      OUTLINED_FUNCTION_51_13(v636);
      v636[10] = v449;
      sub_237C9FEDC(v636, v634);
      sub_237C65484(v635, &unk_27DEAD7B0);
      memcpy(v450, v637, 0x50uLL);
      v450[10] = v449;
    }

LABEL_221:
    sub_237EF76F0();
    sub_237EF7700();
    v460 = v638;
    v459 = v639;
    sub_237EF8260();
    v628 = v460;
    v625 = v459;
    v461 = sub_237E3A1C4(v460, v459);
    v462 = v531;
    sub_237E352EC(v461, &v642);
    v531 = v462;

    sub_237EF76B0();
    v463 = v560;
    sub_237EF7650();
    v464 = v571;
    v621 = *(v571 + 88);
    v465 = (v621)(v463, v350);
    v466 = *MEMORY[0x277D25368];
    LODWORD(v633) = *MEMORY[0x277D25338];
    LODWORD(v630) = *MEMORY[0x277D25390];
    v467 = *MEMORY[0x277D25328];
    v468 = v350;
    v469 = *MEMORY[0x277D25398];
    v620 = *(v464 + 8);
    v620(v463, v468);
    LODWORD(v623) = v466;
    if (v465 == v466 || v465 == v633 || v465 == v630 || v465 == v467 || v465 == v469)
    {
      sub_237EF8260();
      sub_237EF74F0();
      v474 = v624;
      v475 = OUTLINED_FUNCTION_3_47();
      v476(v475);
      (*(v464 + 104))(v474, v623, v590);
      sub_237EF7660();
      sub_237EF75F0();
      sub_237EF7600();
      sub_237EF7630();
      sub_237EF7640();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
      v477 = v626;
      v478 = (*(v626 + 80) + 32) & ~*(v626 + 80);
      v633 = *(v626 + 72);
      v479 = swift_allocObject();
      *(v479 + 16) = xmmword_237F04760;
      sub_237EF75F0();
      v480 = v555;
      v481 = v631;
      sub_237DD73A4(v631, v555);

      v482 = v632;
      if (__swift_getEnumTagSinglePayload(v480, 1, v632) == 1)
      {
        goto LABEL_292;
      }

      v483 = v479 + v478;
      v484 = *(v477 + 32);
      v485 = OUTLINED_FUNCTION_28_6();
      v484(v485);
      sub_237EF7630();
      v486 = v556;
      sub_237DD73A4(v481, v556);

      if (__swift_getEnumTagSinglePayload(v486, 1, v482) == 1)
      {
LABEL_293:
        __break(1u);
        goto LABEL_294;
      }

      (v484)(v483 + v633, v486, v482);
      v487 = v577;
      sub_237EF7700();
      (*(v562 + 8))(v561, v563);
    }

    else
    {
      v488 = v554;
      sub_237EF7650();
      v489 = v590;
      v490 = (v621)(v488, v590);
      v491 = *MEMORY[0x277D25350];
      v492 = *MEMORY[0x277D25330];
      v493 = *MEMORY[0x277D25380];
      v494 = *MEMORY[0x277D25388];
      v620(v488, v489);
      sub_237EF8260();
      v497 = v490 == v491 || v490 == v492 || v490 == v493 || v490 == v494;
      v498 = v626;
      if (v497)
      {
        v499 = v552;
        sub_237EF7470();
        v500 = v553;
        v501 = v624;
        (*(v553 + 16))(v624, v499, v557);
        (*(v571 + 104))(v501, v491, v590);
        v487 = v577;
        sub_237EF7660();
        sub_237EF75F0();
        sub_237EF7600();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
        v502 = (*(v498 + 80) + 32) & ~*(v498 + 80);
        v503 = swift_allocObject();
        *(v503 + 16) = xmmword_237F03530;
        sub_237EF75F0();
        v504 = v498;
        v505 = v551;
        sub_237DD73A4(v631, v551);

        v506 = v632;
        if (__swift_getEnumTagSinglePayload(v505, 1, v632) == 1)
        {
          goto LABEL_295;
        }

        (*(v504 + 32))(v503 + v502, v505, v506);
        sub_237EF7700();
        (*(v500 + 8))(v499, v557);
      }

      else
      {
        v507 = v624;
        sub_237EF7190();
        (*(v571 + 104))(v507, *MEMORY[0x277D253D0], v590);
        v487 = v577;
        sub_237EF7660();
        v508 = v628;
        sub_237EF8260();
        v509 = sub_237E3A1C4(v625, v508);
        v510 = v531;
        sub_237E352EC(v509, &v642);
        v531 = v510;

        sub_237EF7700();
      }
    }

    sub_237E36B18();
    sub_237D0F8BC(v581);
    sub_237D0F8BC(v584);
    sub_237DDA7EC(v487, v564);
  }

  memcpy(v636, (v581 + v349), sizeof(v636));
  v350 = v590;
  if (!v636[10])
  {
    v349 = *(v568 + 24);
    v447 = v577;
    goto LABEL_211;
  }

  memcpy(__dst, (v581 + v349), sizeof(__dst));
  v641 = v636[10];
  if (*(v577 + *(v568 + 24) + 80))
  {
    memcpy(v635, (v581 + v349), sizeof(v635));
    sub_237C9FEDC(v635, v634);
    v633 = sub_237E6542C(__dst);
    v351 = *v131;
    v352 = v521;
    if (*v131 < v521)
    {
      goto LABEL_288;
    }

    if (v521 == v351)
    {
      sub_237C65484(v636, &unk_27DEAD7B0);
      goto LABEL_221;
    }

    v451 = v627;
    if (v521 < v351)
    {
      v630 = (v589 + 16);
      v628 = v589 + 8;
      v625 = (v589 + 40);
      while (v352 < *(v451 + 16))
      {
        v452 = v351;
        v453 = (*(v589 + 80) + 32) & ~*(v589 + 80);
        v454 = v352;
        v455 = *(v589 + 72) * v352;
        (*(v589 + 16))(v580, v451 + v453 + v455, v595);
        sub_237ECF820();
        v456 = OUTLINED_FUNCTION_30_33();
        v457(v456);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E642A8();
          v451 = v458;
        }

        if (v352 >= *(v451 + 16))
        {
          goto LABEL_282;
        }

        ++v352;
        (*v625)(v451 + v453 + v455, v585, v595);
        v351 = v452;
        if (v452 == v454 + 1)
        {
          v627 = v451;
          sub_237C65484(v636, &unk_27DEAD7B0);
          v350 = v590;
          goto LABEL_221;
        }
      }

LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
    }

    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237E39F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_237E39FBC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_237EF8260();
    sub_237E4C084(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_237E3A064(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_237E4C7EC(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_237E3A140(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_237E3A27C(a1, sub_237C9FE58, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_237E3A1C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_237E3A538(a1);
    return a2;
  }

  else
  {

    return sub_237E15FC8(a1, a2);
  }
}

uint64_t sub_237E3A218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMLPackage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E3A27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_237E39F80(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v42 = v47[5];
  v43 = v47[0];
  v9 = (v47[2] + 64) >> 6;
  sub_237EF8260();

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v46[0] = v14;
      v46[1] = v15;
      v46[2] = v17;
      v46[3] = v18;
      sub_237EF8260();
      sub_237EF8260();
      v42(v45, v46);

      v19 = v45[0];
      v20 = v45[1];
      v21 = v45[2];
      v22 = v45[3];
      v23 = *v48;
      v25 = sub_237D2FC30();
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0);
          sub_237EF96C0();
        }
      }

      else
      {
        sub_237D2848C(v28, v44 & 1);
        v30 = sub_237D2FC30();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v48;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
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
        sub_237C9FE9C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237E3A538(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_237EF8260();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_237EF8260();
        sub_237E3A664(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_237E3A664(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_237EFA120();
  sub_237EF8610();
  v6 = sub_237EFA170();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_237EF9D40() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E4E474();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_237E3A78C(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_237E3A78C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_237EF9290();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_237EFA120();
        sub_237EF8260();
        sub_237EF8610();
        v10 = sub_237EFA170();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_237E3A944(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_45()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_37@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_21_40()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_24_31()
{
}

uint64_t OUTLINED_FUNCTION_34_15@<X0>(unint64_t a1@<X8>)
{

  return sub_237C62D90(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_35_17()
{

  return sub_237EF76C0();
}

uint64_t OUTLINED_FUNCTION_36_21@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1160) = a1;

  return sub_237C62D90(0, v2, 0);
}

double OUTLINED_FUNCTION_42_16()
{
  *(v0 + 1104) = 0;
  result = 0.0;
  *(v0 + 1088) = 0u;
  *(v0 + 1072) = 0u;
  return result;
}

void OUTLINED_FUNCTION_48_12()
{
  v2 = *(v0 + 72);
  *(v1 + 352) = *(v0 + 16);
  *(v1 + 360) = v2;
}

void *OUTLINED_FUNCTION_51_13(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_237E3AD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  v33[0] = MEMORY[0x277D84F90];
  sub_237C63844(0, v3, 0);
  result = v33[0];
  if (v3)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = (a1 + 33);
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        goto LABEL_30;
      }

      v9 = *v8;
      v33[0] = result;
      v11 = *(result + 16);
      v10 = *(result + 24);
      if (v11 >= v10 >> 1)
      {
        sub_237C63844(v10 > 1, v11 + 1, 1);
        result = v33[0];
      }

      ++v6;
      *(result + 16) = v11 + 1;
      *(result + v11 + 32) = v9;
      v8 += 2;
      if (v3 == v6)
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_8:
    v12 = 0;
    v13 = (a1 + 32);
    for (i = 2 * v3 + 33; ; i += 2)
    {
      v15 = *(a1 + 16);
      if (v3 + v12 == v15)
      {
        break;
      }

      if (v3 + v12 >= v15)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v16 = *(a1 + i);
      v33[0] = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_237C63844(v17 > 1, v18 + 1, 1);
        result = v33[0];
      }

      *(result + 16) = v18 + 1;
      *(result + v18 + 32) = v16;
      ++v12;
    }

    sub_237CAE2F4(result);
    v33[0] = v4;
    sub_237C63844(0, v3, 0);
    result = v4;
    if (!v3)
    {
LABEL_21:
      v23 = 2 * v3 + 32;
      if (!v12)
      {
LABEL_26:
        v27 = sub_237CAE4E8();
        result = sub_237CB10EC(a1, v27, v33);
        v28 = v33[1];
        v29 = v34;
        v30 = v36;
        v31 = v35;
        *a2 = v33[0];
        *(a2 + 8) = v28;
        *(a2 + 16) = v29;
        *(a2 + 24) = v31;
        *(a2 + 40) = v30;
        return result;
      }

      while (v3 < *(a1 + 16))
      {
        v24 = *(a1 + v23);
        v33[0] = result;
        v26 = *(result + 16);
        v25 = *(result + 24);
        if (v26 >= v25 >> 1)
        {
          sub_237C63844(v25 > 1, v26 + 1, 1);
          result = v33[0];
        }

        *(result + 16) = v26 + 1;
        *(result + v26 + 32) = v24;
        v23 += 2;
        --v12;
        ++v3;
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_28;
    }

    v19 = 0;
    while (v3 + v12 != v19)
    {
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v20 = *v13;
      v33[0] = result;
      v22 = *(result + 16);
      v21 = *(result + 24);
      if (v22 >= v21 >> 1)
      {
        sub_237C63844(v21 > 1, v22 + 1, 1);
        result = v33[0];
      }

      ++v19;
      *(result + 16) = v22 + 1;
      *(result + v22 + 32) = v20;
      v13 += 2;
      if (v3 == v19)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237E3B014(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v50 = 0;
    return sub_237CB2328(v50, 0);
  }

  v3 = v1;
  v52 = *(v1 + 16);
  v4 = 0;
  v54 = 0;
  v55 = 0;
  for (i = (sub_237EF8260() + 33); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F04760;
    *(inited + 32) = v7;
    *(inited + 33) = v6;
    v9 = sub_237CAE2F4(inited);
    sub_237E3A064(v9);
    v11 = *v3;
    v10 = v3[1];
    if (sub_237E47AC0(v6, v10))
    {
      if (((v52 ^ 1 | sub_237E47AC0(v7, v10)) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v52)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    v53 = v2;
    *v3 = v11 + 1;
    sub_237CB2328(v4, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v3[3];
    v12 = v56;
    v13 = sub_237D30084(v7);
    if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
    {
      goto LABEL_38;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECF8);
    v17 = sub_237EF96B0();
    v18 = v56;
    if (v17)
    {
      v19 = sub_237D30084(v7);
      if ((v16 & 1) != (v20 & 1))
      {
        goto LABEL_44;
      }

      v15 = v19;
    }

    v3[3] = v18;
    if ((v16 & 1) == 0)
    {
      sub_237CF63F8(&v56);
      sub_237D30D28(v15, v7, v56, v18);
    }

    v21 = *(v18 + 56);
    v22 = *(v21 + 8 * v15);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_39;
    }

    *(v21 + 8 * v15) = v24;
    sub_237CB2328(v55, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v3[4];
    v25 = v56;
    v26 = sub_237D30084(v6);
    v28 = v27;
    if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
    {
      goto LABEL_40;
    }

    v29 = v26;
    v30 = sub_237EF96B0();
    v31 = v56;
    if (v30)
    {
      v32 = sub_237D30084(v6);
      if ((v28 & 1) != (v33 & 1))
      {
        goto LABEL_44;
      }

      v29 = v32;
    }

    v3[4] = v31;
    if ((v28 & 1) == 0)
    {
      sub_237CF63F8(&v56);
      sub_237D30D28(v29, v6, v56, v31);
    }

    v34 = *(v31 + 56);
    v35 = *(v34 + 8 * v29);
    v23 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v23)
    {
      goto LABEL_41;
    }

    *(v34 + 8 * v29) = v36;
    sub_237CB2328(v54, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v3[5];
    v56 = v37;
    if (v7)
    {
      v38 = 256;
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_237D2FFAC(v38 | v6);
    if (__OFADD__(*(v37 + 16), (v40 & 1) == 0))
    {
      goto LABEL_42;
    }

    v41 = v39;
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED00);
    v43 = sub_237EF96B0();
    v44 = v56;
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED08);
      v45 = sub_237D2FFAC(v38 | v6);
      if ((v42 & 1) != (v46 & 1))
      {
        goto LABEL_44;
      }

      v41 = v45;
    }

    v3[5] = v44;
    if ((v42 & 1) == 0)
    {
      sub_237CF63F8(&v56);
      sub_237D30D5C(v41, v38 | v6, v56, v44);
    }

    v47 = *(v44 + 56);
    v48 = *(v47 + 8 * v41);
    v23 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v23)
    {
      goto LABEL_43;
    }

    *(v47 + 8 * v41) = v49;
    v54 = sub_237CF63F8;
    v55 = sub_237CF63F8;
    v4 = sub_237CF63F8;
    v2 = v53;
LABEL_33:
    if (!--v2)
    {

      sub_237CB2328(v4, 0);
      sub_237CB2328(v55, 0);
      v50 = v54;
      return sub_237CB2328(v50, 0);
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

void MultiLabelClassificationMetrics.init<A, B>(classifications:groundTruth:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v85 = v23;
  v25 = v24;
  v90 = v26;
  v91 = v27;
  v29 = v28;
  v31 = v30;
  v98 = v32;
  v75 = v33;
  v84 = a21;
  v94.n128_u64[0] = v34;
  v94.n128_u64[1] = v27;
  v35 = v34;
  v95 = v23;
  v96 = a21;
  v36 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v87 = v38;
  v88 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v89 = v41;
  OUTLINED_FUNCTION_1_1();
  v43 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_28_26();
  v78 = v25;
  type metadata accessor for ClassificationDistribution();
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = sub_237EF9640();
  OUTLINED_FUNCTION_1_1();
  v81 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_2();
  v82 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17(&v75 - v49);
  v80 = *v31;
  HIDWORD(v79) = *(v31 + 8);
  v50 = v91;
  v51 = v35;
  v53 = v84;
  v52 = v85;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v36, WitnessTable);
  (*(v43 + 8))(v21, v36);
  v54 = swift_allocObject();
  v55 = v29;
  v54[2] = v29;
  v54[3] = v51;
  v56 = v50;
  v57 = v78;
  v54[4] = v50;
  v54[5] = v57;
  v54[6] = v52;
  v54[7] = v53;
  v58 = v53;
  OUTLINED_FUNCTION_70();
  v59 = swift_allocObject();
  v59[2] = v55;
  v59[3] = v51;
  v60 = v55;
  v86 = v51;
  v61 = v77;
  v59[4] = v56;
  v59[5] = v57;
  v62 = v57;
  v59[6] = v52;
  v59[7] = v58;
  v59[8] = sub_237E3C768;
  v59[9] = v54;
  v63 = v87;
  swift_getWitnessTable();
  v64 = v76;
  v65 = v89;
  sub_237EF9860();
  v66 = v81;

  (*(v88 + 8))(v65, v63);
  v67 = v82;
  (*(v66 + 16))(v82, v64, v61);
  v92 = v80;
  v93 = BYTE4(v79);
  OUTLINED_FUNCTION_1_5();
  v68 = swift_getWitnessTable();
  v69 = sub_237CA5A14(v64, v60, v61, v62, v68);
  MultiLabelClassificationMetrics.init<A>(_:strategy:labels:)(v67, &v92, v69, v60, v61, v62, v68, v70, v75, v76, v77, v78, v79, v80, v81, v82, TupleTypeMetadata2, v84, v85, v86);
  OUTLINED_FUNCTION_8_9();
  (*(v71 + 8))();
  OUTLINED_FUNCTION_8_9();
  (*(v72 + 8))(v98);
  v73 = OUTLINED_FUNCTION_22_13();
  v74(v73);
  if (!v22)
  {
    OUTLINED_FUNCTION_18_36(v95, v94, v97);
  }

  OUTLINED_FUNCTION_12_6();
}

float MultiLabelClassificationMetrics.meanAveragePrecision.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  v14 = v1[1];
  v15[0] = v2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_10_57();
  type metadata accessor for ClassificationDistribution();
  OUTLINED_FUNCTION_31_2();
  v6 = sub_237EF8A60();
  OUTLINED_FUNCTION_10_57();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_31_2();
  v7 = sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8260();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(v15, &v14, v3, v5, v6, v7, v4, WitnessTable, v9, v13, v14, v2, v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11]);
  v11 = v10;

  return v11;
}

void MultiLabelClassificationMetrics.init<A, B>(classifications:groundTruth:strategy:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_13_4();
  v63 = v24;
  v26 = v25;
  v28 = v27;
  v62 = v29;
  v31 = v30;
  v70 = v32;
  v55 = v33;
  v66.n128_u64[0] = v34;
  v66.n128_u64[1] = v24;
  v35 = v34;
  v67 = a21;
  v68 = a22;
  v36 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v39);
  OUTLINED_FUNCTION_1_1();
  v41 = v40;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_28_26();
  type metadata accessor for ClassificationDistribution();
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v44);
  v59 = *v31;
  HIDWORD(v58) = *(v31 + 8);
  sub_237EFA000();
  MEMORY[0x2383E08A0](v36, WitnessTable);
  (*(v41 + 8))(v22, v36);
  v45 = swift_allocObject();
  v45[2] = v28;
  v45[3] = v35;
  v46 = v35;
  v45[4] = v63;
  v45[5] = v26;
  v45[6] = a21;
  v45[7] = a22;
  OUTLINED_FUNCTION_70();
  v47 = swift_allocObject();
  v47[2] = v28;
  v47[3] = v46;
  v47[4] = v63;
  v47[5] = v26;
  v47[6] = a21;
  v47[7] = a22;
  v47[8] = sub_237E3C768;
  v47[9] = v45;
  swift_getWitnessTable();
  sub_237EF9860();

  v48 = OUTLINED_FUNCTION_22_13();
  v49(v48);
  v64 = v59;
  v65 = BYTE4(v58);
  OUTLINED_FUNCTION_1_5();
  v50 = swift_getWitnessTable();
  MultiLabelClassificationMetrics.init<A>(_:strategy:labels:)(v57, &v64, v62, v28, v61, v26, v50, v51, v54, v55, v28, v26, v56, v57, v58, v59, TupleTypeMetadata2, v61, a21, a22);
  OUTLINED_FUNCTION_8_9();
  (*(v52 + 8))();
  OUTLINED_FUNCTION_22_3();
  (*(v53 + 8))(v70, v46);
  if (!v23)
  {
    OUTLINED_FUNCTION_18_36(v67, v66, v69);
  }

  OUTLINED_FUNCTION_12_6();
}

void MultiLabelClassificationMetrics.init<A>(_:strategy:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v112 = v31;
  v33 = v32;
  v35 = v34;
  v104 = v36;
  v103 = sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v102 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v39);
  OUTLINED_FUNCTION_1_1();
  v114 = v40;
  MEMORY[0x28223BE20](v41);
  v98 = v42;
  OUTLINED_FUNCTION_17(v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v33 + 8);
  v109 = *v33;
  *&v118 = v109;
  LODWORD(v108) = v43;
  BYTE8(v118) = v43;
  v117[6] = v30;
  v117[7] = v28;
  v117[8] = v26;
  v117[9] = v24;
  KeyPath = swift_getKeyPath();
  v117[2] = v28;
  v117[3] = v24;
  v117[4] = KeyPath;
  v45 = type metadata accessor for ClassificationDistribution();
  v47 = sub_237C8FFEC(sub_237E3DE90, v117, v28, v45, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v46);

  v107 = v47;
  a10 = v47;
  v116[6] = v30;
  v116[7] = v28;
  v116[8] = v26;
  v116[9] = v24;
  v48 = swift_getKeyPath();
  v116[2] = v28;
  v116[3] = v24;
  v116[4] = v48;
  v49 = sub_237EF8CF0();
  v113 = v28;
  v101 = v24;
  v115 = v35;
  v51 = sub_237C8FFEC(sub_237E3C784, v116, v28, v49, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v50);
  v106 = v20;

  v120[0] = v51;
  v110 = v30;
  v111 = v26;
  v52 = type metadata accessor for MultiLabelClassificationMetrics.ThresholdSelectionStrategy();
  v105 = v45;
  v53 = sub_237EF8A60();
  v54 = v49;
  v55 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v58 = v112;
  v59 = v106;
  sub_237D616B8(&a10, v120, v112, v52, v53, v55, WitnessTable, v57);
  if (v59)
  {

    v61 = OUTLINED_FUNCTION_20_38();
    v62(v61, v113);

    OUTLINED_FUNCTION_32_25();
  }

  else
  {
    v63 = v60;

    OUTLINED_FUNCTION_32_25();
    a10 = v58;
    OUTLINED_FUNCTION_7_62();
    v96 = swift_getWitnessTable();
    MEMORY[0x2383E08A0](v120, v49, v96);
    *&v108 = v120[0];
    v117[11] = v120[0];
    v64 = v114;
    v65 = v99;
    v66 = v113;
    (*(v114 + 16))(v99, v115, v113);
    v67 = v64;
    v68 = (*(v64 + 80) + 48) & ~*(v64 + 80);
    v69 = (v98 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 2) = v110;
    *(v70 + 3) = v66;
    v107 = 0;
    v71 = v101;
    *(v70 + 4) = v111;
    *(v70 + 5) = v71;
    (*(v67 + 32))(&v70[v68], v65, v66);
    *&v70[v69] = v63;
    OUTLINED_FUNCTION_43_0();
    v97 = v54;
    sub_237EF9340();
    sub_237EF8260();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEAF8);
    v72 = v110;
    swift_getTupleTypeMetadata2();
    v109 = v63;
    OUTLINED_FUNCTION_0_6();
    swift_getWitnessTable();
    sub_237EF9860();

    v108 = v118;
    v106 = v119;
    OUTLINED_FUNCTION_43_0();
    sub_237EF9640();
    sub_237EF8260();

    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    v73 = v111;
    v99 = sub_237EF8240();
    v74 = v100;
    v75 = v113;
    MEMORY[0x2383E08A0](v113, v71);
    OUTLINED_FUNCTION_28_28();
    MEMORY[0x28223BE20](v76);
    OUTLINED_FUNCTION_27();
    *(v77 - 32) = v72;
    *(v77 - 24) = v75;
    *(v77 - 16) = v73;
    *(v77 - 8) = v71;
    v78 = swift_getKeyPath();
    v95[1] = v95;
    MEMORY[0x28223BE20](v78);
    v95[-4] = v75;
    v95[-3] = v71;
    v95[-2] = v79;
    OUTLINED_FUNCTION_6_64();
    v80 = v103;
    v98 = swift_getWitnessTable();
    v81 = v107;
    v83 = sub_237C8FFEC(sub_237E3C784, &v95[-6], v80, v105, MEMORY[0x277D84A98], v98, MEMORY[0x277D84AC0], v82);
    v96 = v81;

    v107 = *(v102 + 8);
    v107(v74, v80);
    sub_237EF8260();
    MEMORY[0x2383E08A0](v75, v71);
    OUTLINED_FUNCTION_28_28();
    MEMORY[0x28223BE20](v84);
    OUTLINED_FUNCTION_27();
    *(v85 - 32) = v110;
    *(v85 - 24) = v75;
    *(v85 - 16) = v111;
    *(v85 - 8) = v71;
    v86 = swift_getKeyPath();
    MEMORY[0x28223BE20](v86);
    v95[-4] = v75;
    v95[-3] = v71;
    v95[-2] = v87;
    v89 = sub_237C8FFEC(sub_237E3DE90, &v95[-6], v80, v97, MEMORY[0x277D84A98], v98, MEMORY[0x277D84AC0], v88);

    v107(v74, v80);
    v90 = sub_237EF8A00();

    v91 = OUTLINED_FUNCTION_20_38();
    v92(v91, v75);
    v93 = v104;
    *v104 = v83;
    v93[1] = v89;
    v93[2] = v99;
    v93[3] = v90;
    v94 = v109;
    v93[4] = v112;
    v93[5] = v94;
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E3C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = sub_237E3C8D0(a2, a3, a1, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEAF8);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a4 - 8) + 16))(a6, a1, a4);
  return sub_237E3AD4C(v9, a6 + v10);
}

uint64_t sub_237E3C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v27 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_237EF82F0();
  if (BYTE4(v28))
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *&v28;
  }

  (*(v7 + 16))(v10, v26, a5);
  sub_237EF86F0();
  swift_getAssociatedConformanceWitness();
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_237EF91A0();
    if (!v28)
    {
      break;
    }

    type metadata accessor for ClassificationDistribution();
    v18 = ClassificationDistribution.subscript.getter();

    if ((v18 & 0x100000000) != 0)
    {
    }

    else
    {
      v19 = sub_237EF8CD0();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v26) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237D0CB18();
        v17 = v23;
      }

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_237D0CB18();
        v17 = v24;
      }

      *(v17 + 16) = v21 + 1;
      v22 = v17 + 2 * v21;
      *(v22 + 32) = v16 <= *&v18;
      *(v22 + 33) = v26 & 1;
    }
  }

  (*(v27 + 8))(v15, AssociatedTypeWitness);
  return v17;
}

uint64_t sub_237E3CBD4()
{
  OUTLINED_FUNCTION_19_41();
  sub_237EF8260();
  swift_getAtKeyPath();
}

uint64_t MultiLabelClassificationMetrics.init(confidenceThresholds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = 0;
  type metadata accessor for ClassificationDistribution();
  OUTLINED_FUNCTION_31_2();
  *a2 = sub_237EF89A0();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_31_2();
  a2[1] = sub_237EF89A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEAF8);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_31_2();
  sub_237EF89A0();
  OUTLINED_FUNCTION_13_45();
  a2[2] = sub_237EF8230();
  OUTLINED_FUNCTION_13_45();
  sub_237EF8260();
  OUTLINED_FUNCTION_13_45();
  sub_237EF8250();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_45();
  result = sub_237EF8D00();
  a2[4] = result;
  a2[5] = a1;
  return result;
}

uint64_t MultiLabelClassificationMetrics.add<A, B>(classifications:groundTruth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a6;
  v34[2] = a2;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v11 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  v34[0] = WitnessTable;
  v39 = sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v41 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v42 = v15;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_28_26();
  v40 = a3;
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  OUTLINED_FUNCTION_10_57();
  type metadata accessor for ClassificationDistribution();
  OUTLINED_FUNCTION_10_57();
  sub_237EF8CF0();
  v34[1] = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  v35 = sub_237EF9640();
  OUTLINED_FUNCTION_1_1();
  v38 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = v34 - v23;
  v26 = v36;
  v25 = v37;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v11, v34[0]);
  (*(v17 + 8))(v7, v11);
  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = v19;
  v27[6] = v25;
  v27[7] = v26;
  OUTLINED_FUNCTION_70();
  v28 = swift_allocObject();
  v28[2] = v20;
  v28[3] = a4;
  v28[4] = a5;
  v28[5] = v19;
  v28[6] = v25;
  v28[7] = v26;
  v28[8] = sub_237E3C768;
  v28[9] = v27;
  v29 = v39;
  swift_getWitnessTable();
  v30 = v42;
  sub_237EF9860();

  (*(v41 + 8))(v30, v29);
  OUTLINED_FUNCTION_1_5();
  v31 = v35;
  v32 = swift_getWitnessTable();
  MultiLabelClassificationMetrics.add<A>(_:)(v24, v40, v31, v32);
  return (*(v38 + 8))(v24, v31);
}

uint64_t MultiLabelClassificationMetrics.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v74[12] = sub_237EF8CF0();
  v8 = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v10);
  v11 = v6;
  v75 = v6;
  v74[11] = type metadata accessor for ClassificationDistribution();
  v74[6] = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v13);
  OUTLINED_FUNCTION_1_1();
  v76 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v81 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(v74 - v18);
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v20);
  v21 = sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v77 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = v74 - v24;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_62();
  v87 = swift_getWitnessTable();
  v74[8] = v8;
  v74[4] = WitnessTable;
  sub_237EF95F0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  v83 = sub_237EF9340();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v29 = v74 - v28;
  OUTLINED_FUNCTION_23_36();
  v93 = v7;
  v94 = a3;
  v86 = a3;
  v95 = v11;
  v96 = a4;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_22_34();
  v31 = swift_allocObject();
  v31[2] = a3;
  v31[3] = a4;
  v31[4] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  v32 = v21;
  v33 = swift_getWitnessTable();
  v80 = v29;
  OUTLINED_FUNCTION_30_34();

  v34 = *(v77 + 8);
  v77 += 8;
  v34(v25, v32);
  OUTLINED_FUNCTION_6_64();
  v82 = swift_getWitnessTable();
  sub_237EF8CE0();
  v35 = v86;
  MEMORY[0x2383E08A0](v86, a4);
  v89 = v7;
  v90 = v35;
  v91 = v75;
  v92 = a4;
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_22_34();
  v37 = swift_allocObject();
  v37[2] = v35;
  v37[3] = a4;
  v84 = a4;
  v37[4] = v36;
  v74[10] = v33;
  OUTLINED_FUNCTION_30_34();

  v74[2] = v25;
  v74[5] = v32;
  v74[9] = v34;
  v34(v25, v32);
  v38 = v74[13];
  sub_237EF8CE0();
  v39 = v38[4];
  if ((v39 & 0xC000000000000001) != 0)
  {
    sub_237EF8260();
    sub_237EF92A0();
    v40 = v75;
    result = sub_237EF8CC0();
    v39 = v106;
    v42 = v107;
    v43 = v108;
    v82 = v109;
    v44 = v110;
  }

  else
  {
    v45 = -1 << *(v39 + 32);
    v42 = v39 + 56;
    v43 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v44 = v47 & *(v39 + 56);
    result = sub_237EF8260();
    v82 = 0;
    v40 = v75;
  }

  v74[1] = v43;
  v87 = v76 + 16;
  v80 = (v76 + 32);
  v79 = v76 + 8;
  v48 = v78;
  v49 = v85;
  v83 = v39;
  if (v39 < 0)
  {
    goto LABEL_10;
  }

  while (v44)
  {
    v50 = v82;
LABEL_17:
    v52 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    (*(v76 + 16))(v49, *(v39 + 48) + *(v76 + 72) * (v52 | (v50 << 6)), v7);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v7);
      OUTLINED_FUNCTION_19_1();
      v53 = OUTLINED_FUNCTION_22_13();
      v54(v53);
      v55 = v40;
      v56 = sub_237E3C8D0(v88, v38[5], v48, v7, v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8);
      sub_237EF82F0();
      if (v98)
      {
        v102[0] = v97;
        v102[1] = v98;
        v103 = v99 & 1;
        v104 = v100;
        v105 = v101;
        sub_237E3B014(v56);

        OUTLINED_FUNCTION_19_1();
        v57(v81, v48, v7);
        OUTLINED_FUNCTION_9_53();
      }

      else
      {
        OUTLINED_FUNCTION_19_1();
        v58(v81, v78, v7);
        sub_237E3AD4C(v56, v102);
        OUTLINED_FUNCTION_9_53();
        v48 = v78;
      }

      sub_237EF8300();
      OUTLINED_FUNCTION_19_1();
      result = v59(v48, v7);
      v40 = v55;
      v49 = v85;
      v39 = v83;
      if ((v83 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!sub_237EF92B0())
      {
        goto LABEL_23;
      }

      sub_237EF9D10();
      swift_unknownObjectRelease();
    }
  }

  v51 = v82;
  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v50 >= ((v43 + 64) >> 6))
    {
LABEL_23:
      __swift_storeEnumTagSinglePayload(v49, 1, 1, v7);
      sub_237C9FE9C();
      v60 = v86;
      v61 = v84;
      OUTLINED_FUNCTION_23_36();
      OUTLINED_FUNCTION_28_28();
      MEMORY[0x28223BE20](v62);
      OUTLINED_FUNCTION_27();
      *(v63 - 32) = v7;
      *(v63 - 24) = v60;
      *(v63 - 16) = v40;
      *(v63 - 8) = v61;
      v64 = swift_getKeyPath();
      OUTLINED_FUNCTION_22_34();
      v65 = swift_allocObject();
      v65[2] = v60;
      v65[3] = v61;
      v65[4] = v64;
      OUTLINED_FUNCTION_24_32();

      v66 = OUTLINED_FUNCTION_16_46();
      v67(v66);
      OUTLINED_FUNCTION_43_0();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_5();
      swift_getWitnessTable();
      sub_237EF8A10();
      OUTLINED_FUNCTION_23_36();
      OUTLINED_FUNCTION_28_28();
      MEMORY[0x28223BE20](v68);
      OUTLINED_FUNCTION_27();
      *(v69 - 32) = v7;
      *(v69 - 24) = v60;
      *(v69 - 16) = v75;
      *(v69 - 8) = v61;
      v70 = swift_getKeyPath();
      OUTLINED_FUNCTION_22_34();
      v71 = swift_allocObject();
      v71[2] = v60;
      v71[3] = v61;
      v71[4] = v70;
      OUTLINED_FUNCTION_24_32();

      v72 = OUTLINED_FUNCTION_16_46();
      v73(v72);
      OUTLINED_FUNCTION_43_0();
      sub_237EF8A60();
      sub_237EF8A10();
      result = sub_237EF8A00();
      v38[3] = result;
      return result;
    }

    v44 = *(v42 + 8 * v50);
    ++v51;
    if (v44)
    {
      v82 = v50;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237E3DCE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClassificationDistribution();
  result = sub_237D65E6C();
  *a1 = result;
  return result;
}

uint64_t sub_237E3DD38()
{
  sub_237EF8260();
  sub_237EF8260();
  swift_getAtKeyPath();
}

uint64_t sub_237E3DE3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_9_53()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);
  v4 = *(v0 - 144);
  *(v0 - 232) = *(v0 - 184);
  *(v0 - 224) = v2;
  *(v0 - 216) = v3;
  *(v0 - 208) = *(v0 - 160);
  *(v0 - 192) = v4;

  return sub_237EF82B0();
}

void OUTLINED_FUNCTION_18_36(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v4 = a2;
  v4[1].n128_u64[0] = a1;
  v4[1].n128_u64[1] = v3;
  v4[2] = a3;
}

uint64_t OUTLINED_FUNCTION_19_41()
{

  return sub_237EF8260();
}

void OUTLINED_FUNCTION_23_36()
{

  JUMPOUT(0x2383E08A0);
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return sub_237EF9860();
}

uint64_t OUTLINED_FUNCTION_30_34()
{

  return sub_237EF9870();
}

uint64_t OUTLINED_FUNCTION_32_25()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 384);

  return sub_237D62A40(v2, v3);
}

uint64_t NumericImputer.strategy.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NumericImputer.Strategy();
  OUTLINED_FUNCTION_4();
  return (*(v3 + 16))(a1, v1);
}

uint64_t NumericImputer.strategy.setter(uint64_t a1)
{
  type metadata accessor for NumericImputer.Strategy();
  OUTLINED_FUNCTION_4();
  return (*(v3 + 40))(v1, a1);
}

uint64_t NumericImputer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NumericImputer.Strategy();
  OUTLINED_FUNCTION_4();
  return (*(v4 + 32))(a2, a1);
}

uint64_t NumericImputer.init(constant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 2, a2);
}

uint64_t NumericImputer.fitted<A>(to:eventHandler:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v51 = a5;
  v46 = a3;
  v47 = a4;
  v45 = a1;
  v48 = *(a2 + 16);
  v6 = *(&v48 + 1);
  v43 = *(*(&v48 + 1) + 16);
  v7 = v48;
  v42 = *(*(*(v43 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v38 = v11;
  v39 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v44 = &v38 - v13;
  v49 = *(a2 + 32);
  v53 = v49;
  v52 = v48;
  v14 = type metadata accessor for NumericImputer.Strategy();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v21);
  *&v48 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x49636972656D754ELL, 0xEE0072657475706DLL);
  }

  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v27 = v49;
  v28 = v51;
  ImputeTransformer.init(value:)(v25, v7, v51);
  (*(v16 + 16))(v19, v50, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 2, v7);
  if (!EnumTagSinglePayload)
  {
    return (*(v20 + 40))(v28, v19, v7);
  }

  if (EnumTagSinglePayload == 1)
  {
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    v30 = v46;
    v31 = v47;
    *(&v38 - 6) = v7;
    *(&v38 - 5) = v30;
    *(&v38 - 4) = v6;
    *(&v38 - 3) = v27;
    *(&v38 - 1) = v31;
    *&v52 = sub_237EF8760();
    sub_237EF8A60();
    swift_getWitnessTable();
    v32 = v44;
    sub_237D10984();

    if (__swift_getEnumTagSinglePayload(v32, 1, v7) == 1)
    {
      swift_getAssociatedConformanceWitness();
      sub_237EF9FB0();
      v33 = v48;
      sub_237EF9D20();
      v34 = __swift_getEnumTagSinglePayload(v32, 1, v7);
      v35 = v51;
      if (v34 != 1)
      {
        (*(v38 + 8))(v32, v39);
      }
    }

    else
    {
      v33 = v48;
      (*(v20 + 32))(v48, v32, v7);
      v35 = v51;
    }

    return (*(v20 + 40))(v35, v33, v7);
  }

  else
  {
    v37 = type metadata accessor for ImputeTransformer();
    return sub_237D13244(v45, v37, v46, v6, v47);
  }
}

uint64_t sub_237E3E820(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  NumericImputer.fitted<A>(to:eventHandler:)(a2, a7, a5, a6, a1);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t NumericImputer.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  return ImputeTransformer.init(value:)(v5, v3, a2);
}

uint64_t NumericImputer.update<A>(_:with:eventHandler:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a2;
  v48 = a1;
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v44 = v12;
  v45 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - v14;
  v15 = *(a5 + 16);
  sub_237EF90F0();
  sub_237EF9640();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  sub_237EF97E0();
  swift_getWitnessTable();
  sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v41 = v17;
  v42 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = *(a5 + 24);
  *&v22 = v15;
  *(&v22 + 1) = v21;
  v47 = *(a5 + 32);
  v49 = v22;
  v50 = v47;
  v23 = type metadata accessor for NumericImputer.Strategy();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_9();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v41 - v28;
  (*(v25 + 16))(&v41 - v28, v7, v23, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 2, v15);
  if (!EnumTagSinglePayload)
  {
    return (*(v25 + 8))(v29, v23);
  }

  if (EnumTagSinglePayload == 1)
  {
    sub_237C84150();
    swift_allocError();
    *v31 = xmmword_237F190B0;
    *(v31 + 16) = 0xD000000000000055;
    *(v31 + 24) = 0x8000000237F00610;
    *(v31 + 32) = 5;
    return swift_willThrow();
  }

  else
  {
    v33 = v47;
    v34 = type metadata accessor for ImputeTransformer();
    v35 = v48 + *(v34 + 44);
    if ((*(v35 + 8) & 1) != 0 || !*v35)
    {
      return sub_237D13244(v46, v34, a6, v21, a7);
    }

    else
    {
      v36 = v43;
      *&v47 = v34;
      MEMORY[0x2383E08A0](a6, a7);
      v37 = swift_allocObject();
      *(v37 + 16) = v15;
      *(v37 + 24) = a6;
      *(v37 + 32) = v21;
      *(v37 + 40) = v33;
      *(v37 + 56) = a7;
      v38 = v45;
      swift_getWitnessTable();
      sub_237EF9850();

      (*(v44 + 8))(v36, v38);
      OUTLINED_FUNCTION_1_5();
      v39 = v42;
      WitnessTable = swift_getWitnessTable();
      sub_237D13838(v20, v47, v39, v21, WitnessTable);
      return (*(v41 + 8))(v20, v39);
    }
  }
}

uint64_t sub_237E3EDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237EF90F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t NumericImputer.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 8);
  v6 = type metadata accessor for ImputeTransformer();
  WitnessTable = swift_getWitnessTable();
  return v5(a1, v6, WitnessTable, v3, v4);
}

uint64_t NumericImputer.decodeWithOptimizer(from:)(uint64_t a1)
{
  v2 = type metadata accessor for ImputeTransformer();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 8);
  WitnessTable = swift_getWitnessTable();
  return v5(v2, v2, WitnessTable, v3, v4);
}

uint64_t sub_237E3EFFC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  NumericImputer.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t sub_237E3F0B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E3F0F0()
{
  result = type metadata accessor for NumericImputer.Strategy();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E3F180()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_237E3F1DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
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

  return v6 + (v7 | v15) + 1;
}

void sub_237E3F3A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E3F624()
{
  v0 = sub_237EF7DB0();
  __swift_allocate_value_buffer(v0, qword_27DEE2440);
  __swift_project_value_buffer(v0, qword_27DEE2440);
  return sub_237EF7DA0();
}

uint64_t VideoReader.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_237EF5EF0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E3F750()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_21_41(v1);

  return sub_237CED9E4();
}

uint64_t sub_237E3F7EC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t static VideoReader.read(contentsOf:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_237EF5EF0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E3F9B4()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_21_41(v1);

  return sub_237CED9E4();
}

uint64_t sub_237E3FA50()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237E3FB70()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t static VideoReader.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for VideoReader.AsyncFrames(0);
  OUTLINED_FUNCTION_6_1(v4);
  v3[5] = v5;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = sub_237EF5EF0();
  v3[8] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v3[9] = v7;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED68);
  v3[12] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v3[13] = v8;
  v3[14] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v3[16] = v10;
  v3[17] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E3FDD4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  OUTLINED_FUNCTION_56_0();
  v6 = sub_237EF8710();
  sub_237D0CBDC(0, v6 & ~(v6 >> 63), 0, MEMORY[0x277D84F90]);
  (*(v2 + 16))(v1, v5, v4);
  OUTLINED_FUNCTION_56_0();
  sub_237EF86F0();
  OUTLINED_FUNCTION_14_53();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    v7 = OUTLINED_FUNCTION_11_52();
    v8(v7);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_106_1();

    __asm { BRAA            X2, X16 }
  }

  v11 = OUTLINED_FUNCTION_12_46();
  v12(v11);
  v13 = OUTLINED_FUNCTION_2_87();
  v14(v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_3_81(v15);
  OUTLINED_FUNCTION_106_1();

  return sub_237CED9E4();
}

uint64_t sub_237E3FF98()
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

uint64_t sub_237E40094()
{
  v1 = v0[18];
  sub_237E40F88(v0[7], v0[6]);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v0[18];
  if (v3 >= v2 >> 1)
  {
    sub_237D0CBDC(v2 > 1, v3 + 1, 1, v0[18]);
    v4 = v22;
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[5];
  sub_237CEFFB0(v0[7]);
  (*(v7 + 8))(v5, v6);
  *(v4 + 16) = v3 + 1;
  sub_237E40FEC(v8, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v3);
  OUTLINED_FUNCTION_14_53();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    v10 = OUTLINED_FUNCTION_11_52();
    v11(v10);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_106_1();

    __asm { BRAA            X2, X16 }
  }

  v14 = OUTLINED_FUNCTION_12_46();
  v15(v14);
  v16 = OUTLINED_FUNCTION_2_87();
  v17(v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_3_81();
  OUTLINED_FUNCTION_106_1();

  return sub_237CED9E4();
}

uint64_t sub_237E40288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v15 = v14[17];
  v16 = v14[15];
  v17 = v14[16];
  v18 = v14[11];
  v19 = v14[9];
  v20 = v14[8];
  v30 = v14[7];
  v31 = v14[6];

  (*(v19 + 8))(v18, v20);
  (*(v17 + 8))(v15, v16);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t static VideoReader.read<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  OUTLINED_FUNCTION_1_1();
  v4[7] = v5;
  v4[8] = OUTLINED_FUNCTION_27_0();
  v4[9] = type metadata accessor for VideoReader.AsyncFrames(255);
  v4[10] = type metadata accessor for AnnotatedFeature();
  v4[11] = OUTLINED_FUNCTION_27_0();
  v4[12] = sub_237EF5EF0();
  OUTLINED_FUNCTION_1_1();
  v4[13] = v6;
  v4[14] = OUTLINED_FUNCTION_27_0();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v4[18] = v7;
  v4[19] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v4[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v4[21] = v8;
  v4[22] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[23] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v4[24] = v10;
  v4[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E40628()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[3];
  v3 = v0[4];
  v0[2] = sub_237EF8110();
  OUTLINED_FUNCTION_56_0();
  sub_237EF8710();
  v0[26] = sub_237EF8A60();
  sub_237EF8970();
  (*(v2 + 16))(v1, v4, v3);
  OUTLINED_FUNCTION_56_0();
  sub_237EF86F0();
  v5 = v0[20];
  v6 = v0[17];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = OUTLINED_FUNCTION_8_73();
    v8(v7);
    v17 = v0[2];

    OUTLINED_FUNCTION_29_10();

    return v9(v17);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_17_45();
    v12(v11);
    v13 = OUTLINED_FUNCTION_2_87();
    v14(v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[27] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_4_77(v15);

    return sub_237CED9E4();
  }
}

uint64_t sub_237E40854()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E40958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v15 = v14[18];
  v16 = v14[19];
  v17 = v14[16];
  v18 = v14[17];
  v19 = v14[15];
  v20 = v14[11];
  v21 = v14[8];
  v44 = v14[9];
  v22 = v14[7];
  v23 = v14[5];
  sub_237E40F88(v17, v19);
  (*(v22 + 16))(v21, v16 + *(v18 + 36), v23);
  AnnotatedFeature.init(feature:annotation:)(v19, v21, v44, v23, v20);
  sub_237EF8A20();
  sub_237CEFFB0(v17);
  (*(v15 + 8))(v16, v18);
  v24 = v14[20];
  v25 = v14[17];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    v26 = OUTLINED_FUNCTION_8_73();
    v27(v26);
    v45 = v14[2];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, v44, v45, a12, a13, a14);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_17_45();
    v38(v37);
    v39 = OUTLINED_FUNCTION_2_87();
    v40(v39);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[27] = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_4_77();
    OUTLINED_FUNCTION_18_3();

    return sub_237CED9E4();
  }
}

uint64_t sub_237E40B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[24];
  v15 = v14[25];
  v17 = v14[23];
  v27 = v14[11];
  v28 = v14[8];
  (*(v14[18] + 8))(v14[19], v14[17]);
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t static VideoReader.readCamera(configuration:)()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = v1;
  *(v0 + 48) = *v2;
  *(v0 + 49) = *(v2 + 1);
  *(v0 + 50) = *(v2 + 2);
  *(v0 + 24) = *(v2 + 8);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_237E40D1C;

  return sub_237DB5568();
}

uint64_t sub_237E40D1C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237E40E34()
{
  v11 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 50);
  v4 = *(v0 + 49);
  v9[0] = *(v0 + 48);
  v9[1] = v4;
  v9[2] = v3;
  v10 = v2;
  v5 = objc_allocWithZone(_s8ObserverCMa_0(0));
  v6 = sub_237DA2B08(v9);
  if (!v1)
  {
    **(v0 + 16) = v6;
  }

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237E40EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return VideoReader.applied(to:eventHandler:)();
}

uint64_t sub_237E40F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoReader.AsyncFrames(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E40FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoReader.AsyncFrames(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for VideoReader(_BYTE *result, int a2, int a3)
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

uint64_t Transformer.prediction<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_237C5FFA4;

  return v12(a1, a2, 0, 0, a3, a5);
}

uint64_t Transformer.prediction<A, B>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_237CD5F7C;

  return Transformer.applied<A>(to:eventHandler:)(a1, 0, 0, a2, a3, a5, a6);
}

uint64_t TemporalTransformer.prediction<A, B>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = (*(a6 + 40) + **(a6 + 40));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C606BC;

  return v16(a1, a2, 0, 0, a4, a7, a3, a6);
}

uint64_t sub_237E415E4(void *a1, uint64_t a2, void *a3)
{
  [a1 lock];
  sub_237E41F34(a2, a3, &v8);
  [a1 unlock];
  if (v3)
  {
  }

  else
  {

    a2 = v8;
  }

  return a2;
}

id AudioConvertingTransformer.init(targetFormat:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AudioConverterPool();
  v4 = swift_allocObject();
  sub_237E42264();
  result = [a1 commonFormat];
  if (result)
  {
    *a2 = a1;
    a2[1] = v4;
  }

  else
  {
    result = sub_237EF9740();
    __break(1u);
  }

  return result;
}

id AudioConvertingTransformer.applied(to:eventHandler:)(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = [a1 format];
  sub_237C75918(0, &qword_280C8E1F8);
  if (sub_237EF9050())
  {
    v5 = a1;

    return v5;
  }

  v7 = sub_237E41C18(v4);
  if (!v7)
  {
    sub_237C75918(0, &qword_27DEB4AB8);
    v8 = v4;
    v9 = v3;
    v7 = sub_237E41C80(v8, v9);
    if (!v7)
    {
      sub_237E05850();
      swift_allocError();
      *v23 = v8;
      v23[1] = v9;
      swift_willThrow();
      v24 = v9;
      return v3;
    }
  }

  v10 = v7;
  v11 = [a1 frameLength];
  [v3 sampleRate];
  v13 = v12 * v11;
  [v4 sampleRate];
  v15 = ceil(v13 / v14);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -1.0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v15 >= 4294967300.0)
  {
    goto LABEL_20;
  }

  result = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v3 frameCapacity:v15];
  if (result)
  {
    v3 = result;
    v16 = swift_allocObject();
    v16[2] = a1;
    aBlock[4] = sub_237E422A4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_237E41AFC;
    aBlock[3] = &block_descriptor_4;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    aBlock[0] = 0;
    v19 = [v10 convertToBuffer:v3 error:aBlock withInputFromBlock:v17];
    _Block_release(v17);
    v20 = aBlock[0];
    if (v19 != 3 || aBlock[0] == 0)
    {
      v22 = aBlock[0];
      [v10 reset];
      sub_237E41B68(v10, v4);
    }

    else
    {
      swift_willThrow();
      v20;
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_237E41AA8(int a1, uint64_t *a2, id a3)
{
  v3 = a3;
  if ([a3 frameLength])
  {
    v5 = v3;
    v6 = 0;
  }

  else
  {
    v3 = 0;
    v6 = 2;
  }

  *a2 = v6;
  return v3;
}

id sub_237E41AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_237E41B68(void *a1, void *a2)
{
  v5 = *(v2 + 24);

  v6 = a2;
  v7 = a1;
  v8 = v5;
  [v8 lock];
  sub_237E4208C(v2, v6, v7);
  [v8 unlock];
}

uint64_t sub_237E41C18(void *a1)
{
  v3 = *(v1 + 24);

  v4 = a1;
  v5 = v3;
  v6 = sub_237E415E4(v5, v1, v4);

  return v6;
}

id sub_237E41C80(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromFormat:a1 toFormat:a2];

  return v4;
}

uint64_t sub_237E41CDC(id *a1, void **a2)
{
  *a1 = AudioConvertingTransformer.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t AudioConvertingTransformer.debugDescription.getter()
{
  v1 = *v0;
  *&v8[8] = 0;
  sub_237EF9330();
  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710]();
  *v8 = [v1 commonFormat] >> 32;
  type metadata accessor for AVAudioCommonFormat(0);
  sub_237EF9670();
  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710](0xD000000000000014);
  [v1 sampleRate];
  sub_237EF8C10();
  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710]();
  [v1 channelCount];
  v2 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v2);

  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710]();
  v3 = [v1 isInterleaved];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x2383E0710](v5, v6);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return *&v8[4];
}

uint64_t sub_237E41F34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v7 = sub_237D2FC80(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AC0);
  if (sub_237EF96B0())
  {
    v11 = sub_237D2FC80(a2);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_9:
    sub_237C75918(0, &qword_27DEAD7F8);
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v6;
  if ((v10 & 1) == 0)
  {
    sub_237D30AF0(v9, a2, MEMORY[0x277D84F90], v6);
    v13 = a2;
  }

  *a3 = sub_237D6B08C();
  return swift_endAccess();
}

uint64_t sub_237E4208C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v7 = sub_237D2FC80(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AC0);
  if (sub_237EF96B0())
  {
    v11 = sub_237D2FC80(a2);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_9:
    sub_237C75918(0, &qword_27DEAD7F8);
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v6;
  if ((v10 & 1) == 0)
  {
    sub_237D30AF0(v9, a2, MEMORY[0x277D84F90], v6);
    v13 = a2;
  }

  v14 = (*(v6 + 56) + 8 * v9);
  v15 = a3;
  MEMORY[0x2383E09D0]();
  sub_237D86EEC(*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_237EF89F0();
  return swift_endAccess();
}

uint64_t sub_237E42208()
{

  return v0;
}

uint64_t sub_237E42230()
{
  sub_237E42208();

  return swift_deallocClassInstance();
}

uint64_t sub_237E42264()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  return v0;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237E422D4()
{
  v0 = sub_237EF9890();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237E42320(char a1)
{
  if (!a1)
  {
    return 0x74616F6C66;
  }

  if (a1 == 1)
  {
    return 0x656C62756F64;
  }

  return 0x3233746E69;
}

uint64_t sub_237E4236C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656469727473 && a2 == 0xE700000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_237E424C0(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 0x6570616873;
      break;
    case 2:
      result = 0x73656469727473;
      break;
    case 3:
      result = 0x72616C616373;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237E42534()
{
  OUTLINED_FUNCTION_13_4();
  v12 = v1;
  v11 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AC8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v11 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_237E4322C();
  sub_237EFA1B0();
  sub_237EF9A50();
  if (!v0)
  {
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    OUTLINED_FUNCTION_2_88(&qword_280C8CD30);
    OUTLINED_FUNCTION_4_78();
    v13 = 2;
    OUTLINED_FUNCTION_4_78();
    v13 = 3;
    sub_237E43280();
    sub_237EF9A70();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E4270C()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AD0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237E4322C();
  sub_237EFA190();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_53();
    sub_237EF9950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    OUTLINED_FUNCTION_3_82(&qword_280C8CD28);
    OUTLINED_FUNCTION_8_74();
    OUTLINED_FUNCTION_11_53();
    sub_237EF9970();
    OUTLINED_FUNCTION_8_74();
    OUTLINED_FUNCTION_11_53();
    sub_237EF9970();
    sub_237E432D4();
    OUTLINED_FUNCTION_11_53();
    sub_237EF9970();
    v4 = OUTLINED_FUNCTION_7_63();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E42960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372616C616373 && a2 == 0xE700000000000000)
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

uint64_t sub_237E42A24(char a1)
{
  if (a1)
  {
    return 0x7372616C616373;
  }

  else
  {
    return 0x6570616873;
  }
}

void sub_237E42A58()
{
  OUTLINED_FUNCTION_13_4();
  v20 = v1;
  v21 = v0;
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v7 = v6;
  v23 = v3;
  v24 = v8;
  v25 = v9;
  v26 = v1;
  type metadata accessor for InlineShapedArray.CodingKeys();
  OUTLINED_FUNCTION_1_96();
  swift_getWitnessTable();
  v10 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - v14;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_237EFA1B0();
  v23 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  OUTLINED_FUNCTION_2_88(&qword_280C8CD30);
  OUTLINED_FUNCTION_5_78();
  v16 = v21;
  sub_237EF9A70();
  if (!v16)
  {
    v23 = v18;
    sub_237EF8A60();
    v22 = v20;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_78();
    sub_237EF9A70();
  }

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E42C18()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  type metadata accessor for InlineShapedArray.CodingKeys();
  OUTLINED_FUNCTION_1_96();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA190();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    OUTLINED_FUNCTION_3_82(&qword_280C8CD28);
    OUTLINED_FUNCTION_9_54();
    OUTLINED_FUNCTION_13_46();
    sub_237EF8A60();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_54();
    OUTLINED_FUNCTION_13_46();
    v4 = OUTLINED_FUNCTION_6_65();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E42E54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E422D4();
  *a1 = result;
  return result;
}

uint64_t sub_237E42E84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E42320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E42EC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E42FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E4236C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E42FF4(uint64_t a1)
{
  v2 = sub_237E4322C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E43030(uint64_t a1)
{
  v2 = sub_237E4322C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237E4306C(uint64_t a1@<X8>)
{
  sub_237E4270C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_237E430D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E42960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E4310C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E43160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void sub_237E431B4(void *a1@<X8>)
{
  sub_237E42C18();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

unint64_t sub_237E4322C()
{
  result = qword_280C8D2B8[0];
  if (!qword_280C8D2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8D2B8);
  }

  return result;
}

unint64_t sub_237E43280()
{
  result = qword_280C8D2A0;
  if (!qword_280C8D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D2A0);
  }

  return result;
}

unint64_t sub_237E432D4()
{
  result = qword_280C8D290;
  if (!qword_280C8D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShapedArrayReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237E43404(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ShapedArrayReference.Scalar(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E435B0()
{
  result = qword_27DEB4AD8;
  if (!qword_27DEB4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4AD8);
  }

  return result;
}

unint64_t sub_237E43624()
{
  result = qword_27DEB4AE0;
  if (!qword_27DEB4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4AE0);
  }

  return result;
}

unint64_t sub_237E4367C()
{
  result = qword_280C8D2A8;
  if (!qword_280C8D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D2A8);
  }

  return result;
}

unint64_t sub_237E436D4()
{
  result = qword_280C8D2B0;
  if (!qword_280C8D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D2B0);
  }

  return result;
}

unint64_t sub_237E43760()
{
  result = qword_280C8D298;
  if (!qword_280C8D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D298);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_88(unint64_t *a1)
{

  return sub_237DA21D0(a1);
}

uint64_t OUTLINED_FUNCTION_3_82(unint64_t *a1)
{

  return sub_237DA21D0(a1);
}

uint64_t OUTLINED_FUNCTION_4_78()
{

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_13_46()
{

  return sub_237EF9970();
}

uint64_t sub_237E438DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_237E4391C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237E43988(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0428);
  v4 = swift_allocObject();
  v5 = 0;
  *(v4 + 16) = xmmword_237F03530;
  *(v4 + 32) = a1;
  while (1)
  {
    v6 = v5 + 1;
    if (v5 >= v5 + 1)
    {
      break;
    }

    v7 = *(v4 + 8 * v5 + 32) ^ (*(v4 + 8 * v5 + 32) >> 30);
    v8 = 0x5851F42D00000000 * v7 + 0x4C957F2D00000000 * HIDWORD(v7) + 1284865837 * v7;
    v9 = v8 + v6;
    if (__CFADD__(v8, v6))
    {
      goto LABEL_9;
    }

    if (v6 >= *(v4 + 24) >> 1)
    {
      sub_237D0BA94();
      v4 = v10;
    }

    *(v4 + 16) = v5 + 2;
    *(v4 + 8 * v5++ + 40) = v9;
    if (v5 == 623)
    {
      *a2 = xmmword_237F19770;
      *(a2 + 16) = xmmword_237F19780;
      *(a2 + 32) = xmmword_237F19790;
      *(a2 + 48) = xmmword_237F197A0;
      *(a2 + 64) = xmmword_237F197B0;
      *(a2 + 80) = xmmword_237F197C0;
      *(a2 + 96) = 0x5851F42D4C957F2DLL;
      *(a2 + 104) = v4;
      *(a2 + 112) = 0;
      return;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_237E43AEC()
{
  v1 = v0[14];
  if (v1 == v0[1])
  {
    sub_237E43C00();
    v1 = v0[14];
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(v0[13] + 16))
  {
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    v0[14] = v2 + 1;
    return;
  }

  __break(1u);
}

void sub_237E43C00()
{
  v2 = v0[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v2)
  {
    v1 = v0[2];
    v3 = v0[13];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    while (v2 <= *(v3 + 16))
    {
      v4 = 0;
      v5 = v3 + 32;
      while (1)
      {
        v6 = v4 + 1;
        v7 = (v4 + 1) % v2;
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        v8 = *(v3 + 16);
        if (v7 >= v8)
        {
          goto LABEL_16;
        }

        v9 = v3 + 8 * v4;
        v10 = *(v5 + 8 * v7) % v2;
        v11 = (v10 & 0xFFFFFFFE | (*(v9 + 36) << 32)) >> 1;
        if (v10)
        {
          v11 ^= v0[4];
        }

        v12 = __OFADD__(v4, v1);
        v13 = v4 + v1;
        if (v12)
        {
          goto LABEL_17;
        }

        v14 = v13 % v2;
        if (v14 >= v8)
        {
          goto LABEL_18;
        }

        *(v9 + 32) = *(v5 + 8 * v14) ^ v11;
        v4 = v6;
        if (v2 == v6)
        {
          v0[13] = v3;
          v0[14] = 0;
          return;
        }
      }

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
      sub_237E64200();
      v3 = v15;
    }

    __break(1u);
  }
}

uint64_t sub_237E43D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v14 = *(a1 + 56);
  v15 = type metadata accessor for FullyConnectedNetworkRegressorModel();
  v16 = v15[11];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = sub_237EF8260();
  sub_237C6C074(v21, 1, v14, a4);
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_237EF6530();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_0_79();
  sub_237E462D4(v30, v31);
  sub_237EF6660();

  __swift_storeEnumTagSinglePayload(v4, 0, 1, v17);
  result = sub_237E46324(v4, &a4[v16]);
  *&a4[v15[12]] = a2;
  *&a4[v15[13]] = a3;
  return result;
}

uint64_t FullyConnectedNetworkRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  v5[5] = *(a4 + 16);
  v5[6] = *(a4 + 24);
  v6 = sub_237EF7E90();
  v5[7] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v5[8] = v7;
  v5[9] = swift_task_alloc();
  v8 = sub_237EF6B10();
  v5[10] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v5[11] = v9;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237E440BC, 0, 0);
}

uint64_t sub_237E440BC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  if (*(v1 + *(v2 + 52)) < 1)
  {
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB950);
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237F19820);
    MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237EFB990);
    sub_237C6514C();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0xE000000000000000;
  }

  else
  {
    v3 = sub_237EF7E20();
    v4 = *(v1 + *(v2 + 48));
    v5 = sub_237C60C7C(v3, v4);

    if (v5)
    {
      v6 = *(v0 + 104);
      v7 = *(v0 + 112);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      v12 = *(v0 + 40);
      (*(*(v0 + 64) + 16))(v10, *(v0 + 16), *(v0 + 56));
      sub_237D4A7B4(v10, v12, v8);
      sub_237EF69B0();
      v13 = *(v9 + 8);
      v13(v8, v11);
      sub_237EF6AE0();
      v13(v6, v11);
      sub_237EF6950();
      type metadata accessor for FullyConnectedNetwork();
      OUTLINED_FUNCTION_0_79();
      sub_237E462D4(v14, v15);
      sub_237EF6830();
      v13(v8, v11);
      sub_237EF6AE0();
      sub_237EF6A90();
      v13(v8, v11);
      v13(v6, v11);
      v13(v7, v11);
      v16 = *(v0 + 120);

      v17 = *(v0 + 8);
      v18.n128_u32[0] = v16;
      goto LABEL_7;
    }

    v20 = sub_237EF7E20();
    sub_237EF9330();

    v21 = MEMORY[0x2383E0A10](v4, MEMORY[0x277D83B88]);
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x7078652073617720, 0xEE002E6465746365);
    sub_237C84150();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = 0xD000000000000024;
    *(v22 + 16) = 0x8000000237F007F0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 6;
  }

  swift_willThrow();

  v17 = *(v0 + 8);
LABEL_7:

  return v17(v18);
}

uint64_t sub_237E444D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_0_79();
  sub_237E462D4(v5, v6);
  sub_237EF6510();
  v7 = *(a2 + 44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
  {
    sub_237EF6670();
  }
}

uint64_t sub_237E445B8()
{
  v0 = sub_237EF6B10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  sub_237EF6420();
  type metadata accessor for FullyConnectedNetwork();
  sub_237E462D4(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork);
  sub_237EF6850();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_237EF6400();
  sub_237EF6AD0();
  v10(v3, v0);
  v10(v6, v0);
  sub_237EF6400();
  sub_237EF6500();
  v10(v6, v0);
  return (v10)(v9, v0);
}

uint64_t sub_237E447E0()
{
  v0 = sub_237EF9890();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237E44830(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x6168537475706E69;
  }

  return 0x6F69746172657469;
}

uint64_t sub_237E44894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_237E4493C;

  return FullyConnectedNetworkRegressorModel.applied(to:eventHandler:)(a2, v9, v10, a5);
}

uint64_t sub_237E4493C(float a1)
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

uint64_t sub_237E44A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E44AC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E44B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E44B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E44C0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E447E0();
  *a1 = result;
  return result;
}

uint64_t sub_237E44C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E44830(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E44C70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E4482C();
  *a1 = result;
  return result;
}

uint64_t sub_237E44C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E44CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FullyConnectedNetworkRegressorModel.encode(to:)(void *a1)
{
  type metadata accessor for FullyConnectedNetworkRegressorModel.CodingKeys();
  OUTLINED_FUNCTION_3_83();
  swift_getWitnessTable();
  v3 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_0_79();
  sub_237E462D4(v7, v8);
  sub_237EF9A70();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    sub_237DA21D0(&qword_280C8CD30);
    sub_237EF9A70();
    sub_237EF9A50();
  }

  return (*(v5 + 8))(v1, v3);
}

uint64_t FullyConnectedNetworkRegressorModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for FullyConnectedNetwork();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v31 = v6;
  type metadata accessor for FullyConnectedNetworkRegressorModel.CodingKeys();
  OUTLINED_FUNCTION_3_83();
  swift_getWitnessTable();
  v32 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v30 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  type metadata accessor for FullyConnectedNetworkRegressorModel();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v35 = v14;
  v15 = *(v14 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  v33 = v15;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v34;
  sub_237EFA190();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237C863A0(a2 + v33, &qword_27DEB1278);
  }

  else
  {
    v34 = v12;
    v21 = v30;
    v39 = 0;
    OUTLINED_FUNCTION_0_79();
    sub_237E462D4(v22, v23);
    v24 = v31;
    sub_237EF9970();
    sub_237DE7AF8(v24, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    v38 = 1;
    sub_237DA21D0(&qword_280C8CD28);
    sub_237EF9970();
    v25 = v35;
    *(a2 + *(v35 + 48)) = v36;
    v37 = 2;
    v26 = sub_237EF9950();
    (*(v21 + 8))(v10, v32);
    *(a2 + *(v25 + 52)) = v26;
    v27 = v34;
    (*(v34 + 16))(v29, a2, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v27 + 8))(a2, v25);
  }
}

unint64_t sub_237E4540C()
{
  result = qword_27DEB4AE8[0];
  if (!qword_27DEB4AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB4AE8);
  }

  return result;
}

uint64_t sub_237E45460(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E454BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v100 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v99 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  v107 = v5;
  v97 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v96 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v8);
  v94 = sub_237EF6FC0();
  OUTLINED_FUNCTION_1();
  v93 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v11);
  sub_237EF71F0();
  OUTLINED_FUNCTION_1();
  v105 = v13;
  v106 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v14);
  v87 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v91 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v89 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2(&v82 - v19);
  v20 = sub_237EF6E60();
  v21 = OUTLINED_FUNCTION_18(v20);
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  OUTLINED_FUNCTION_18(v22);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  v26 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v104 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  v102 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v82 - v36;
  sub_237EF7720();
  sub_237EF7620();
  v88 = a1;
  v38 = sub_237EF7EF0();
  sub_237E5E9F0(v38, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_237C863A0(v25, &qword_27DEB0E78);
    type metadata accessor for SerializationError();
    sub_237E462D4(qword_280C8E658, type metadata accessor for SerializationError);
    swift_allocError();
    v40 = v39;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v110 = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v41 = __dst[1];
    *v40 = __dst[0];
    v40[1] = v41;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v104 + 8))(v37, v108);
  }

  else
  {
    v85 = v28;
    v43 = *(v28 + 32);
    v86 = v26;
    v43(v31, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v44 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v44);
    v45 = swift_allocObject();
    v82 = xmmword_237F03530;
    *(v45 + 16) = xmmword_237F03530;
    v46 = *(v101 + *(v88 + 48));
    sub_237EF6CF0();
    OUTLINED_FUNCTION_6_66();
    sub_237EF7090();
    sub_237EF76B0();
    *(swift_allocObject() + 16) = v82;
    sub_237EF6CF0();
    sub_237EF7090();
    sub_237EF7700();
    sub_237EF7600();
    sub_237EF75E0();
    v47 = *(v46 + 16) >= 2uLL;
    v48 = v37;
    v84 = v31;
    if (v47)
    {
      v49 = v90;
      sub_237EF6FD0();
      sub_237C6D0D4();
      v51 = v50;
      v52 = v87;
      (*(v91 + 16))(v89, v49, v87);
      sub_237D0BC38(0, 1, 1, MEMORY[0x277D84F90]);
      v54 = v53;
      v56 = *(v53 + 16);
      v55 = *(v53 + 24);
      v59 = v108;
      v60 = v104;
      if (v56 >= v55 >> 1)
      {
        sub_237D0BC38(v55 > 1, v56 + 1, 1, v53);
        v54 = v81;
      }

      *(v54 + 16) = v56 + 1;
      v57 = v91;
      (*(v91 + 32))(v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v56, v89, v52);
      v112 = v54;
      sub_237E4868C(v51);
      (*(v57 + 8))(v90, v52);
    }

    else
    {
      OUTLINED_FUNCTION_6_66();
      sub_237C6D0D4();
      v112 = v58;
      v59 = v108;
      v60 = v104;
    }

    v61 = v103;
    sub_237EF71E0();
    (*(v93 + 104))(v92, *MEMORY[0x277D25168], v94);
    sub_237EF71D0();
    v62 = v95;
    (*(v105 + 16))(v95, v61, v106);
    (*(v96 + 104))(v62, *MEMORY[0x277D25388], v97);
    sub_237EF7660();
    v63 = v60;
    v83 = v48;
    v64 = *(v60 + 16);
    v65 = v102;
    v64(v102, v48, v59);
    v66 = v59;
    v67 = v107;
    sub_237EF7810();
    v68 = type metadata accessor for CoreMLPackage();
    v69 = v98;
    v70 = v98 + *(v68 + 24);
    *(v70 + 80) = 0;
    *(v70 + 48) = 0u;
    *(v70 + 64) = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0u;
    *v70 = 0u;
    v64(v69, v65, v66);
    memcpy(__dst, v70, sizeof(__dst));
    sub_237C863A0(__dst, &unk_27DEAD7B0);
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0u;
    *(v70 + 48) = 0u;
    *(v70 + 64) = 0u;
    *(v70 + 80) = 0;
    v71 = v99;
    v72 = v100;
    (*(v99 + 16))(v69 + *(v68 + 20), v67, v100);
    v73 = sub_237E34060();
    v75 = v74;
    v76 = sub_237EF7780();
    v78 = v77;
    swift_isUniquelyReferenced_nonNull_native();
    v109 = *v78;
    sub_237C91098(v73, v75, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v78 = v109;
    v76(&v110, 0);
    (*(v71 + 8))(v107, v72);
    v79 = *(v63 + 8);
    v80 = v108;
    v79(v102, v108);
    (*(v105 + 8))(v103, v106);
    (*(v85 + 8))(v84, v86);
    return (v79)(v83, v80);
  }
}

void sub_237E46084()
{
  type metadata accessor for FullyConnectedNetwork();
  if (v0 <= 0x3F)
  {
    sub_237E46150();
    if (v1 <= 0x3F)
    {
      sub_237CFF010();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237E46150()
{
  if (!qword_27DEB4B70[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE5E8);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, qword_27DEB4B70);
    }
  }
}

_BYTE *sub_237E461B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E462D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237E46324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E463E0()
{
  type metadata accessor for Tree();
  result = sub_237EF8A60();
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

uint64_t sub_237E46490(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((((((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_237E465F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E4680C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365657274 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F635365736162 && a2 == 0xE900000000000065;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4365727574616566 && a2 == 0xEC000000746E756FLL;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F43746567726174 && a2 == 0xEB00000000746E75;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756F437373616C63 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C656C6C61726170 && a2 == 0xED0000746E756F43;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_237EF9D40();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237E46A60(char a1)
{
  result = 0x7365657274;
  switch(a1)
  {
    case 1:
      result = 0x726F635365736162;
      break;
    case 2:
      result = 0x4365727574616566;
      break;
    case 3:
      result = 0x6F43746567726174;
      break;
    case 4:
      result = 0x756F437373616C63;
      break;
    case 5:
      result = 0x6C656C6C61726170;
      break;
    case 6:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E46B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  v15[0] = a2;
  type metadata accessor for TreeModel.CodingKeys();
  OUTLINED_FUNCTION_2_89();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v18 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v15[1];
  sub_237EFA1B0();
  v24 = *v10;
  v23 = 0;
  v11 = v16;
  type metadata accessor for Tree();
  sub_237EF8A60();
  v21 = v17;
  v22 = v11;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = v19;
  sub_237EF9A70();
  if (v12)
  {
    return (*(v18 + 8))(v9, v5);
  }

  v14 = v18;
  LOBYTE(v24) = 1;
  sub_237EF9A70();
  OUTLINED_FUNCTION_1_98(2);
  OUTLINED_FUNCTION_1_98(3);
  OUTLINED_FUNCTION_1_98(4);
  OUTLINED_FUNCTION_1_98(5);
  OUTLINED_FUNCTION_1_98(6);
  return (*(v14 + 8))(v9, v5);
}

uint64_t sub_237E46E08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v43 = a4;
  v45 = a3;
  v53 = a1;
  v34 = a5;
  OUTLINED_FUNCTION_1_1();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TreeModel.CodingKeys();
  OUTLINED_FUNCTION_2_89();
  WitnessTable = swift_getWitnessTable();
  v44 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v41 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for TreeModel();
  OUTLINED_FUNCTION_1_1();
  v51 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = (&v33 - v17);
  v40 = type metadata accessor for Tree();
  v39 = sub_237EF89A0();
  *v18 = v39;
  v19 = v14[9];
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v37 = v19;
  sub_237EF9CE0();
  v36 = v14[10];
  *(v18 + v36) = 0;
  v35 = v14[11];
  *(v18 + v35) = 1;
  v20 = v14[12];
  *(v18 + v20) = 0;
  v21 = v14[13];
  *(v18 + v21) = 1;
  v52 = v14;
  v22 = v14[14];
  v50 = v18;
  *(v18 + v22) = 1;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v46 = v12;
  v23 = v49;
  sub_237EFA190();
  if (v23)
  {
    v25 = v50;
    __swift_destroy_boxed_opaque_existential_1(v53);
    return (*(v51 + 8))(v25, v52);
  }

  else
  {
    WitnessTable = v21;
    v49 = v20;
    v47 = v22;
    v24 = v42;
    sub_237EF8A60();
    v57 = 0;
    v55 = v45;
    v56 = v43;
    v54 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();

    v26 = v50;
    *v50 = v58;
    LOBYTE(v58) = 1;
    sub_237EF9970();
    (*(v38 + 40))(&v26[v37], v24, a2);
    *&v26[v36] = OUTLINED_FUNCTION_0_80(2);
    *&v26[v35] = OUTLINED_FUNCTION_0_80(3);
    *&v26[v49] = OUTLINED_FUNCTION_0_80(4);
    *&v26[WitnessTable] = OUTLINED_FUNCTION_0_80(5);
    v27 = OUTLINED_FUNCTION_0_80(6);
    v28 = OUTLINED_FUNCTION_4_79();
    v29(v28);
    *&v26[v47] = v27;
    v31 = v51;
    v30 = v52;
    (*(v51 + 16))(v34, v26, v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return (*(v31 + 8))(v26, v30);
  }
}

uint64_t sub_237E47374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E4680C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E473A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E46A58();
  *a1 = result;
  return result;
}

uint64_t sub_237E473D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E47428(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

_BYTE *sub_237E474D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_80@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_237EF9950();
}

uint64_t OUTLINED_FUNCTION_1_98@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_237EF9A50();
}

void sub_237E47668(uint64_t a1@<X8>)
{
  if (v1[3])
  {
    v7 = OUTLINED_FUNCTION_39_18();
LABEL_9:
    *a1 = v2;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = v3;
    return;
  }

  v2 = *v1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_53_12(*v1 + 1);
    if (v11)
    {
      v7 = OUTLINED_FUNCTION_39_18();
      *(v1 + 24) = 1;
      goto LABEL_9;
    }

    if (!v8)
    {
      v12 = v9 + 32 * v10;
      v3 = *(v12 + 56);
      v4 = *(v12 + 48);
      v5 = *(v12 + 32);
      v1[2] = v10 + 1;
      v7 = sub_237EF8260();
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_237E47700()
{
  if (*(v0 + 24))
  {
    goto LABEL_8;
  }

  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_53_12(*v0 + 1);
    if (v3)
    {
      *(v0 + 24) = 1;
LABEL_8:
      OUTLINED_FUNCTION_46_18();
      return;
    }

    if (!v1)
    {
      *(v0 + 16) = v2 + 1;
      sub_237EF8260();
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_237E47794(void *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  ++*v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v5 + 16);
  if (v4 != v6)
  {
    if (v4 < v6)
    {
      v10 = *(_s10DenseBlockVMa() - 8);
      v11 = v4 + 1;
      v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v4;
      v1[2] = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD668);
      v14 = *(v13 + 48);
      *a1 = v3;
      sub_237E4F098(v12, a1 + v14);
      v8 = a1;
      v9 = 0;
      v7 = v13;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  *(v1 + 24) = 1;
LABEL_5:
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD668);
  v8 = a1;
  v9 = 1;
LABEL_8:

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
}

BOOL sub_237E478D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_237EFA120();
  OUTLINED_FUNCTION_46_18();
  sub_237EF8610();
  sub_237EFA170();
  OUTLINED_FUNCTION_34_16();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_237EF9D40();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_237E479BC(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_237EFA120();
  sub_237EFA140();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2383E2210](a1);
  }

  v7 = sub_237EFA170();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(a3 + 48) + 16 * v9;
    if ((*(v11 + 8) & 1) == 0)
    {
      break;
    }

    if (a2)
    {
      return 1;
    }

LABEL_13:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 || *v11 != a1)
  {
    goto LABEL_13;
  }

  return 1;
}

BOOL sub_237E47AC0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_237EFA120();
  sub_237EFA140();
  v4 = sub_237EFA170();
  v5 = a2 + 56;
  do
  {
    v6 = v4 & ~(-1 << *(a2 + 32));
    result = ((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v8 = *(*(a2 + 48) + v6);
    v4 = v6 + 1;
  }

  while (v8 != (a1 & 1));
  return result;
}

uint64_t sub_237E47B7C(uint64_t a1)
{
  result = sub_237EF6F80();
  if (a1 != 2 && a1)
  {
    if (a1 < 3)
    {
      __break(1u);
      return result;
    }

    sub_237CDC02C(a1, *(v1 + 8));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_237F03530;
    *(v4 + 32) = *(v1 + 8);
  }

  sub_237EF6F30();
  sub_237EF6F40();
  v5 = *v1;
  v15 = 0;
  v16 = v5;
  v17 = 0;
  v18 = 0;
  sub_237D74FBC(v1, v14);
  while (1)
  {
    sub_237E47700();
    if (!v7)
    {
      break;
    }

    v9 = v6;
    v10 = v7;
    v11 = v8;
    v12 = sub_237EF6F70();
    sub_237E47CD4(v9, a1, v13, v10, v11);

    v12(v14, 0);
  }
}

void sub_237E47CD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v52 = a1;
  v51 = sub_237EF6F50();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237EF6F20();
  MEMORY[0x28223BE20](v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = 0;
  v40 = *MEMORY[0x277D25150];
  v44 = (v17 + 16);
  v45 = (v7 + 104);
  v49 = v17;
  v42 = v17 + 32;
  v43 = v17 + 8;
  v39 = *MEMORY[0x277D25148];
  v53 = a4;
  v18 = a4 + 40;
  v38 = xmmword_237F03530;
  v46 = a3;
  while (1)
  {
    v19 = *(v53 + 16);
    if (v16 == v19)
    {
      break;
    }

    if (v16 >= v19)
    {
      __break(1u);
      return;
    }

    if (HIBYTE(*(v18 + 44)) > 0xFEuLL)
    {
      return;
    }

    v20 = v9;
    v21 = *(v18 + 40) | (*(v18 + 44) << 32);
    v22 = *(v18 - 8);
    MEMORY[0x2383DEFF0]();
    sub_237EF6EF0();
    v54 = v16;
    sub_237EF6EE0();
    sub_237EF6EC0();
    v23 = *v45;
    if ((v21 & 0x10000000000) != 0)
    {
      v23(v50, v39, v51);
      sub_237EF6EB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D08);
      inited = swift_initStackObject();
      *(inited + 16) = v38;
      *(inited + 32) = v41;
      *(inited + 40) = *&v22;
      sub_237EF8230();
      sub_237EF6F00();
      v9 = v20;
      (*v44)(v47, v15, v20);
      v24 = v46;
      v25 = *v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BCF8(0, *(v25 + 16) + 1, 1, v25);
        v25 = v36;
      }

      v26 = v54;
      v28 = *(v25 + 16);
      v32 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v32 >> 1)
      {
        sub_237D0BCF8(v32 > 1, v28 + 1, 1, v25);
        v25 = v37;
      }

      v30 = v47;
    }

    else
    {
      v23(v50, v40, v51);
      sub_237EF6EB0();
      sub_237EF6E80();
      sub_237EF6E70();
      sub_237EF6ED0();
      sub_237EF6E90();
      sub_237EF6EA0();
      v9 = v20;
      (*v44)(v48, v15, v20);
      v24 = v46;
      v25 = *v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BCF8(0, *(v25 + 16) + 1, 1, v25);
        v25 = v34;
      }

      v26 = v54;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_237D0BCF8(v27 > 1, v28 + 1, 1, v25);
        v25 = v35;
      }

      v30 = v48;
    }

    v33 = v49;
    (*(v49 + 8))(v15, v9);
    *(v25 + 16) = v29;
    (*(v33 + 32))(v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v30, v9);
    *v24 = v25;
    v18 += 56;
    v16 = v26 + 1;
  }
}

uint64_t sub_237E481CC(uint64_t a1)
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

  result = sub_237E4BFB8(result, 1, sub_237D0B340);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

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

void sub_237E48298(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_237E4BFB8(v7 + v6, 1, sub_237D0B340);
  v10 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v10;
      return;
    }

    __break(1u);
  }

  v11 = *(v10 + 16);
  if ((*(v10 + 24) >> 1) - v11 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v10 + 8 * v11 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, v6);
  v14 = v12 + v6;
  if (!v13)
  {
    *(v10 + 16) = v14;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_237E48384(unint64_t a1)
{
  v3 = sub_237D6DA5C(a1);
  v4 = sub_237D6DA5C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_237E4BF18(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_237E4FEDC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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