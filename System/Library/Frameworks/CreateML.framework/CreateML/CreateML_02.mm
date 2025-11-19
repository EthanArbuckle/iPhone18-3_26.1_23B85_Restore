uint64_t sub_2379FE55C(uint64_t a1)
{
  v77 = a1;
  v2 = v1;
  v84 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v65 - v5;
  v6 = sub_237C05E7C();
  v73 = OUTLINED_FUNCTION_0(v6);
  v74 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_14_0();
  v68 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v72 = v12;
  v13 = sub_237C05ADC();
  v78 = OUTLINED_FUNCTION_0(v13);
  v79 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_14_0();
  v67 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v71 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_58();
  v75 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C0C0;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v23 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v24 = (v1 + v23[6]);
  v25 = v24[1];
  v26 = MEMORY[0x277D837D0];
  *(inited + 48) = *v24;
  *(inited + 56) = v25;
  *(inited + 72) = v26;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C17DC0;
  v27 = *(v2 + v23[7]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  *(inited + 96) = v27;
  *(inited + 120) = v28;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v69 = v23;
  v29 = v23[8];

  v30 = sub_237C0714C();
  v31 = MEMORY[0x277D83B88];
  *(inited + 144) = v30;
  *(inited + 168) = v31;
  *(inited + 176) = 0x687470654478616DLL;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = sub_237C070EC();
  *(inited + 216) = v31;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000237C17DE0;
  sub_237C0718C();
  v32 = MEMORY[0x277D839F8];
  *(inited + 240) = v33;
  *(inited + 264) = v32;
  strcpy((inited + 272), "minChildWeight");
  *(inited + 287) = -18;
  sub_237C0716C();
  *(inited + 288) = v34;
  *(inited + 312) = v32;
  *(inited + 320) = 0x65536D6F646E6172;
  *(inited + 328) = 0xEA00000000006465;
  *(inited + 336) = sub_237C070AC();
  *(inited + 360) = v31;
  strcpy((inited + 368), "rowSubsample");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  sub_237C0710C();
  *(inited + 384) = v35;
  *(inited + 408) = v32;
  *(inited + 416) = 0x75536E6D756C6F63;
  *(inited + 424) = 0xEF656C706D617362;
  sub_237C0712C();
  *(inited + 432) = v36;
  *(inited + 456) = v32;
  *(inited + 464) = 0x657A695370657473;
  *(inited + 472) = 0xE800000000000000;
  sub_237C070CC();
  *(inited + 480) = v37;
  *(inited + 504) = v32;
  *(inited + 512) = 0xD000000000000013;
  *(inited + 520) = 0x8000000237C17E00;
  v38 = sub_237C071AC();
  *(inited + 552) = v31;
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  *(inited + 528) = v40;
  v41 = sub_237C085AC();
  if (sub_237C0708C() != 1)
  {
    v42 = sub_237C0708C();
    v83 = v31;
    *&v82 = v42;
    sub_2379DAD24(&v82, v81);
    swift_isUniquelyReferenced_nonNull_native();
    v80 = v41;
    sub_237B40B6C(v81, 0xD000000000000011, 0x8000000237C17E20);
  }

  v43 = objc_opt_self();
  v44 = sub_237C0855C();

  *&v82 = 0;
  v45 = [v43 dataWithPropertyList:v44 format:200 options:0 error:&v82];

  v46 = v82;
  v48 = v78;
  v47 = v79;
  if (v45)
  {
    v49 = sub_237C05B7C();
    v51 = v50;

    v52 = v75;
    sub_237C05A2C();
    v53 = v76;
    sub_237C05B9C();
    if (v53)
    {
      (*(v47 + 8))(v52, v48);
      result = sub_2379E86D4(v49, v51);
    }

    else
    {
      v75 = *(v47 + 8);
      v76 = v51;
      v75(v52, v48);
      v56 = v71;
      sub_237C05A2C();
      OUTLINED_FUNCTION_10_3();
      v57 = v72;
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_12_4();
      v66 = sub_237C05DBC();
      sub_237C05C6C();
      v58 = v74 + 8;
      v72 = *(v74 + 8);
      v72(v57, v73);
      v79 = v47 + 8;
      v59 = v75;
      v75(v56, v48);
      v60 = v70;
      sub_2379D8FF4(v2 + v69[5], v70, &qword_27DE9A9A0, &qword_237C0BF60);
      v61 = v66;
      if (__swift_getEnumTagSinglePayload(v60, 1, v66) == 1)
      {
        sub_2379E86D4(v49, v76);
        result = sub_2379D9054(v60, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v74 = v58;
        OUTLINED_FUNCTION_9_3();
        v62 = v67;
        sub_237C05A2C();
        OUTLINED_FUNCTION_10_3();
        v63 = v68;
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_12_4();
        sub_237C05C6C();
        sub_2379E86D4(v49, v76);
        v72(v63, v73);
        v59(v62, v78);
        result = (*(*(v61 - 8) + 8))(v60, v61);
      }
    }
  }

  else
  {
    v55 = v46;
    sub_237C0593C();

    result = swift_willThrow();
  }

  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2379FED88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2379FEDE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = (v30 - v8);
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84F98];
LABEL_9:

    return v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE70, &qword_237C0C118);
  v10 = sub_237C0912C();
  v11 = v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = *(v2 + 48);
  v14 = v10 + 64;
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v30[1] = a1;
  v16 = a1 + v15;
  v17 = *(v5 + 72);

  while (1)
  {
    sub_2379D8FF4(v16, v9, &qword_27DE9AE68, &qword_237C0C110);
    v18 = *v9;
    v19 = v9[1];
    result = sub_2379FF054(*v9, v19);
    if (v21)
    {
      break;
    }

    v22 = result;
    *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v23 = (v11[6] + 16 * result);
    *v23 = v18;
    v23[1] = v19;
    v24 = v11[7];
    v25 = sub_237C05FAC();
    OUTLINED_FUNCTION_4(v25);
    result = (*(v26 + 32))(v24 + *(v26 + 72) * v22, v9 + v13);
    v27 = v11[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_12;
    }

    v11[2] = v29;
    v16 += v17;
    if (!--v12)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2379FEFE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2379FF054(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_237C093CC();
  sub_237C0878C();
  v6 = sub_237C0940C();

  return sub_2379FF0CC(a1, a2, v6);
}

unint64_t sub_2379FF0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_237C0929C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 384);

  return sub_2379E86D4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_11_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 408);
  v4 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_237C05E6C();
}

double OUTLINED_FUNCTION_15_3@<D0>(uint64_t a1@<X8>)
{

  return sub_237AC9A74(0xD000000000000010, (a1 - 32) | 0x8000000000000000, v1, (v2 - 192));
}

uint64_t OUTLINED_FUNCTION_18_4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1)
{
  v4 = *(v2 - 272);

  return __swift_storeEnumTagSinglePayload(a1, v1, 1, v4);
}

double OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2)
{

  return sub_237AC9A74(a1, a2, v2, (v3 - 192));
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2379FF358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_2379FF398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2379FF400@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v119 = a2;
  v129 = *MEMORY[0x277D85DE8];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v3 = OUTLINED_FUNCTION_0(v113);
  v115 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = v96 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v8 = OUTLINED_FUNCTION_0(v117);
  v110 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v112 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v116 = v96 - v15;
  v16 = sub_237C0825C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_237C05ADC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v111 = v30 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v96 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v96 - v36;
  sub_237A2B3A8(v126);
  v126[11] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_9();
  sub_237C05A2C();
  OUTLINED_FUNCTION_3_8();
  v120 = a1;
  sub_237C05A2C();
  sub_237C081EC();
  v121 = v37;
  v38 = sub_237A5C0AC();
  v39 = *(v19 + 8);
  v39(v23, v16);
  if ((v38 & 1) == 0)
  {
    v41 = v121;
LABEL_7:
    v45 = OUTLINED_FUNCTION_4_7();
    (v38)(v45);
    (v38)(v34, v24);
    (v38)(v41, v24);
    memcpy(v124, v126, sizeof(v124));
    memcpy(v125, v126, sizeof(v125));
    sub_237A0030C(v124, &v123);
    sub_237A00344(v125);
    result = memcpy(v119, v124, 0x60uLL);
    goto LABEL_10;
  }

  sub_237C081DC();
  v114 = v34;
  v38 = sub_237A5C0AC();
  v39(v23, v16);
  if ((v38 & 1) == 0)
  {
    v41 = v121;
    v34 = v114;
    goto LABEL_7;
  }

  v41 = v121;
  v40 = v122;
  v42 = sub_237C05B1C();
  if (v40)
  {
    v44 = OUTLINED_FUNCTION_4_7();
    (v38)(v44);
    (v38)(v114, v24);
    (v38)(v41, v24);
  }

  else
  {
    v47 = v42;
    v48 = v43;
    v49 = sub_237C057CC();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = sub_237C057BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE78, &qword_237C0C1F8);
    sub_237A00F3C(&qword_27DE9AE90, sub_237A00FB4);
    sub_237C057AC();
    v53 = v48;
    v34 = v114;
    v98 = v53;
    v109 = v125[0];
    (*(v27 + 16))(v111, v114, v24);
    v54 = sub_237C05B1C();
    sub_237A2BF3C(v54, v55, v127);
    v103 = v47;
    v57 = *(v27 + 8);
    v96[1] = v27 + 8;
    v96[2] = v52;
    v96[0] = v57;
    v57(v111, v24);
    sub_237A01008(v127, v126);
    v58 = sub_237C08C2C();
    sub_2379F5634();
    v59 = v109;

    v60 = sub_237C08CFC();
    if (os_log_type_enabled(v60, v58))
    {
      v61 = swift_slowAlloc();
      LODWORD(v122) = v58;
      v62 = v61;
      *v61 = 134217984;
      *(v61 + 4) = *(v59 + 16);

      _os_log_impl(&dword_2379D3000, v60, v122, "Reading AnnotatedFeatureStore with %ld elements", v62, 0xCu);
      MEMORY[0x2383DD950](v62, -1, -1);
    }

    else
    {
    }

    v63 = 0;
    v101 = (v110 + 2);
    v100 = (v110 + 1);
    v99 = v115 + 32;
    v64 = (v59 + 48);
    v65 = MEMORY[0x277D84F90];
    v102 = v128;
    v66 = (v128 + 48);
    v38 = v103;
    v122 = 0;
    while (1)
    {
      v67 = *(v109 + 16);
      if (v63 == v67)
      {

        sub_2379E86D4(v38, v98);

        goto LABEL_7;
      }

      if (v63 >= v67)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
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
        __break(1u);
      }

      if (v63 >= *(v102 + 16))
      {
        goto LABEL_59;
      }

      if (*(v66 - 3) != 2)
      {
        break;
      }

      v107 = v65;
      v108 = v66;
      v69 = *(v64 - 2);
      v68 = *(v64 - 1);
      v70 = *v64;
      v72 = *(v66 - 1);
      v71 = *v66;
      v73 = v72 >> 2;
      v110 = v64;
      v111 = v63;
      v106 = v68;
      switch(v126[1] >> 62)
      {
        case 1:
          v104 = v71;
          v81 = SLODWORD(v126[0]);
          if (SLODWORD(v126[0]) > v126[0] >> 32)
          {
            goto LABEL_61;
          }

          v105 = v69;

          v97 = v70;

          v82 = sub_237C0581C();
          if (!v82)
          {
            goto LABEL_37;
          }

          v83 = sub_237C0583C();
          if (__OFSUB__(v81, v83))
          {
            goto LABEL_67;
          }

          v82 += v81 - v83;
LABEL_37:
          sub_237C0582C();
          if (v82)
          {
            v34 = v114;
            if (v104 < 0)
            {
              goto LABEL_68;
            }

            v84 = (v82 + v104);
          }

          else
          {
            v84 = 0;
            v34 = v114;
          }

          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          if (v72 >= 4)
          {
            v87 = v84;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
            v74 = swift_allocObject();
            _swift_stdlib_malloc_size(v74);
            OUTLINED_FUNCTION_1_5();
            v74[2] = v73;
            v74[3] = v88;
            memcpy(v74 + 4, v87, v72 & 0x7FFFFFFFFFFFFFFCLL);
          }

          else
          {
            v74 = MEMORY[0x277D84F90];
          }

          v76 = v97;
LABEL_51:
          v125[0] = v74;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
          sub_237A010B8();
          v89 = v116;
          sub_237C082BC();
          (*v101)(v112, v89, v117);
          v125[0] = v106;
          v125[1] = v76;

          sub_237C06C6C();

          v65 = v107;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = *(v65 + 16);
            sub_237BC1880();
            v65 = v92;
          }

          v41 = v121;
          v90 = *(v65 + 16);
          if (v90 >= *(v65 + 24) >> 1)
          {
            sub_237BC1880();
            v65 = v93;
          }

          (*v100)(v116, v117);
          *(v65 + 16) = v90 + 1;
          (*(v115 + 32))(v65 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v90, v118, v113);
          v126[11] = v65;
          v64 = v110 + 3;
          v66 = v108 + 8;
          v63 = v111 + 1;
          v38 = v103;
          break;
        case 2:
          v104 = v71;
          v105 = v69;
          v97 = v72 >> 2;
          v75 = *(v126[0] + 16);

          v76 = v70;

          v77 = sub_237C0581C();
          if (!v77)
          {
            goto LABEL_26;
          }

          v78 = sub_237C0583C();
          if (__OFSUB__(v75, v78))
          {
            goto LABEL_65;
          }

          v77 += v75 - v78;
LABEL_26:
          sub_237C0582C();
          if (v77)
          {
            v34 = v114;
            if (v104 < 0)
            {
              goto LABEL_66;
            }

            v79 = (v77 + v104);
          }

          else
          {
            v79 = 0;
            v34 = v114;
          }

          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v72 >= 4)
          {
            v85 = v79;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
            v74 = swift_allocObject();
            _swift_stdlib_malloc_size(v74);
            OUTLINED_FUNCTION_1_5();
            v74[2] = v97;
            v74[3] = v86;
            memcpy(v74 + 4, v85, v72 & 0x7FFFFFFFFFFFFFFCLL);
          }

          else
          {
            v74 = MEMORY[0x277D84F90];
          }

          goto LABEL_51;
        case 3:
          *(v125 + 6) = 0;
          v125[0] = 0;
          v34 = v114;
          if (((v71 | v72) & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v74 = MEMORY[0x277D84F90];
          if (v72 >= 4)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        default:
          v125[0] = v126[0];
          LODWORD(v125[1]) = v126[1];
          WORD2(v125[1]) = WORD2(v126[1]);
          if (((v71 | v72) & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v74 = MEMORY[0x277D84F90];
          v34 = v114;
          if (v72 < 4)
          {
            goto LABEL_32;
          }

LABEL_31:
          v104 = v71;
          v105 = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
          v74 = swift_allocObject();
          _swift_stdlib_malloc_size(v74);
          OUTLINED_FUNCTION_1_5();
          v74[2] = v73;
          v74[3] = v80;
          memcpy(v74 + 4, v125 + v104, v72 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_32:

          v76 = v70;
          goto LABEL_51;
      }
    }

    sub_237A01064();
    swift_allocError();
    *v94 = 2;
    swift_willThrow();

    sub_2379E86D4(v38, v98);
    v95 = v96[0];
    (v96[0])(v120, v24);
    v95(v34, v24);
    v95(v41, v24);
  }

  memcpy(v125, v126, sizeof(v125));
  result = sub_237A00344(v125);
LABEL_10:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237A000A0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *(*(v3 + 88) + 16);
  if (v17)
  {
    v31 = a1;
    v18 = sub_237C08C2C();
    sub_2379F5634();
    sub_237A0030C(v3, v30);
    v19 = sub_237C08CFC();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v29 = v13;
      v21 = v5;
      v22 = v8;
      v23 = v20;
      *v20 = 134218240;
      *(v20 + 4) = v17;
      *(v20 + 12) = 2048;
      *(v20 + 14) = *(v3 + 16);
      sub_237A00344(v3);
      _os_log_impl(&dword_2379D3000, v19, v18, "Writing AnnotatedFeatureStore with %ld elements and %ld blobs", v23, 0x16u);
      v24 = v23;
      v8 = v22;
      v5 = v21;
      v13 = v29;
      MEMORY[0x2383DD950](v24, -1, -1);
    }

    else
    {
      sub_237A00344(v3);
    }

    sub_237A5BED8(v31, 1);
    if (!v2)
    {
      OUTLINED_FUNCTION_2_9();
      sub_237C05A2C();
      sub_237A00374(v16);
      v25 = *(v8 + 8);
      v25(v16, v5);
      v27 = *v3;
      v26 = *(v3 + 8);
      OUTLINED_FUNCTION_3_8();
      sub_237C05A2C();
      sub_237C05B9C();
      v25(v13, v5);
    }
  }
}

uint64_t sub_237A00374(uint64_t a1)
{
  v3 = v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v11 = v36 - v10;
  v12 = *(v1 + 88);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v36[0] = v2;
    v36[1] = a1;
    v47 = MEMORY[0x277D84F90];
    sub_237AC8D34();
    v15 = v47;
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v18 = v12 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v39 = *(v16 + 56);
    v40 = v17;
    v41 = v16;
    v37 = (v16 - 8);
    v38 = (v5 + 8);
    do
    {
      v19 = v15;
      v20 = v42;
      v40(v11, v18, v42);
      v21 = v43;
      sub_237C06C7C();
      v22 = v44;
      v23 = sub_237C082AC();
      (*v38)(v21, v22);
      sub_237C06C4C();
      (*v37)(v11, v20);
      v15 = v19;
      v24 = v45;
      v25 = v46;
      v47 = v19;
      v26 = *(v19 + 16);
      if (v26 >= *(v15 + 24) >> 1)
      {
        sub_237AC8D34();
        v15 = v47;
      }

      *(v15 + 16) = v26 + 1;
      v27 = (v15 + 24 * v26);
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v25;
      v18 += v39;
      --v13;
    }

    while (v13);
    v14 = v15;
    v3 = v36[0];
  }

  v28 = sub_237C057FC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_237C057EC();
  v45 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE78, &qword_237C0C1F8);
  sub_237A00F3C(&qword_27DE9AE80, sub_237A00E3C);
  v31 = sub_237C057DC();
  if (v3)
  {
  }

  else
  {
    v33 = v31;
    v34 = v32;

    sub_237C05B9C();
    sub_2379E86D4(v33, v34);
  }
}

uint64_t sub_237A00704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5365727574616566 && a2 == 0xEC00000065706168;
  if (v4 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_237A00818(char a1)
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](a1 & 1);
  return sub_237C0940C();
}

uint64_t sub_237A0086C(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x5365727574616566;
  }
}

uint64_t sub_237A008CC()
{
  v1 = *v0;
  sub_237C093CC();
  MEMORY[0x2383DCF70](v1);
  return sub_237C0940C();
}

uint64_t sub_237A00918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237A00704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A00960@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237A007D8();
  *a1 = result;
  return result;
}

uint64_t sub_237A00988(uint64_t a1)
{
  v2 = sub_237A011C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237A009C4(uint64_t a1)
{
  v2 = sub_237A011C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237A00A00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEB8, &qword_237C0C298);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237A011C0();
  sub_237C0949C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  sub_237A01214(&qword_27DE9AED0);
  sub_237C0921C();
  if (!v4)
  {
    v15 = 1;
    sub_237C091EC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_237A00BC4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AED8, &qword_237C0C2A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_237A011C0();
  sub_237C0946C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    v10[7] = 0;
    sub_237A01214(&qword_27DE9AEE0);
    sub_237C091BC();
    v8 = v11;
    v10[6] = 1;
    sub_237C0918C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_237A00DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A00BC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_237A00E3C()
{
  result = qword_27DE9AE88;
  if (!qword_27DE9AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AE88);
  }

  return result;
}

uint64_t sub_237A00E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_237C0581C();
  v9 = result;
  if (result)
  {
    result = sub_237C0583C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_237C0582C();
  result = sub_237A2B708(v9, a4, &v10);
  if (!v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_237A00F3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE78, &qword_237C0C1F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A00FB4()
{
  result = qword_27DE9AE98;
  if (!qword_27DE9AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AE98);
  }

  return result;
}

unint64_t sub_237A01064()
{
  result = qword_27DE9AEA0;
  if (!qword_27DE9AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEA0);
  }

  return result;
}

unint64_t sub_237A010B8()
{
  result = qword_27DE9AEB0;
  if (!qword_27DE9AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEA8, &unk_237C0C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEB0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_237A01130(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_237A01170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237A011C0()
{
  result = qword_27DE9AEC0;
  if (!qword_27DE9AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEC0);
  }

  return result;
}

uint64_t sub_237A01214(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237A0134CLL);
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

unint64_t sub_237A01388()
{
  result = qword_27DE9AEE8;
  if (!qword_27DE9AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEE8);
  }

  return result;
}

unint64_t sub_237A013E0()
{
  result = qword_27DE9AEF0;
  if (!qword_27DE9AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEF0);
  }

  return result;
}

unint64_t sub_237A01438()
{
  result = qword_27DE9AEF8;
  if (!qword_27DE9AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AEF8);
  }

  return result;
}

uint64_t sub_237A01548()
{
  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();

  return sub_237A01878();
}

uint64_t sub_237A01584()
{
  MLDataTable.size.getter();
  OUTLINED_FUNCTION_6_6();

  return sub_237A018D0();
}

uint64_t sub_237A015E8()
{
  v0 = sub_237A2E9F4();
  OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_6_6();
  return sub_237A01960();
}

void MLDataTable.columnNames.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = MEMORY[0x2383DDAC0](0);
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CMLSequence();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = 1;
      *a1 = v5;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = *v1;

    sub_237B6C208(a1);

    sub_2379DBC9C(v6, 0);
  }
}

uint64_t MLDataTable.ColumnNames.endIndex.getter()
{
  v1 = *v0;
  v2 = sub_237A2E9F4();
  return OUTLINED_FUNCTION_0_7(v2);
}

uint64_t MLDataTable.ColumnNames.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  sub_237A2E9C8(a1);
  v3 = sub_237A2DE60();

  return v3;
}

uint64_t sub_237A01818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_5_4();
  result = v6();
  if (v4 < 0 || result < v4)
  {
    __break(1u);
  }

  else
  {
    result = a3();
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      return v3 - v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A01878()
{
  OUTLINED_FUNCTION_5_4();
  result = sub_237A2E9F4();
  if (v1 < 0 || result < v1)
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v0 & 0x8000000000000000) == 0 && result >= v0)
    {
      return v0 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A018D0()
{
  OUTLINED_FUNCTION_5_4();
  result = MLDataTable.size.getter();
  if (v1 < 0 || result < v1)
  {
    __break(1u);
  }

  else
  {
    result = MLDataTable.size.getter();
    if ((v0 & 0x8000000000000000) == 0 && result >= v0)
    {
      return v0 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A01960()
{
  OUTLINED_FUNCTION_5_4();
  v2 = sub_237A2E9F4();
  result = OUTLINED_FUNCTION_0_7(v2);
  if (v1 < 0 || result < v1)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_237A2E9F4();
    result = OUTLINED_FUNCTION_0_7(v4);
    if ((v0 & 0x8000000000000000) == 0 && result >= v0)
    {
      return v0 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A019C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A93590(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_237A019F0(uint64_t *a1)
{
  result = sub_237A93590(*a1, *v1);
  *a1 = result;
  return result;
}

uint64_t sub_237A01A20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237A93594(*a1, a2, *v3);
  *a3 = result;
  return result;
}

uint64_t sub_237A01A54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  return sub_237A01960();
}

uint64_t sub_237A01A78@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.ColumnNames.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_237A01AA0(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = MLDataTable.ColumnNames.subscript.getter(*a2);
  a1[1] = v4;
  a1[2] = v4;
  *a1 = v3;
  return sub_237A01AEC;
}

uint64_t sub_237A01B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A93578(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237A01B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_237A8FFA8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_237A01BE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237B70944(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_237A01C10(uint64_t *a1)
{
  result = sub_237B70944(*a1, *v1);
  *a1 = result;
  return result;
}

uint64_t static MLDataTable.ColumnNames.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_237A01C98();
}

uint64_t sub_237A01C98()
{

  v0 = 0;
  v1 = 0;
  while (1)
  {
    v2 = sub_237A2E9F4();
    if (v1 == OUTLINED_FUNCTION_0_7(v2))
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
      sub_237A2E9C8(v1);
      v3 = sub_237A2DE60();
      v4 = v5;

      v6 = sub_237A2E9F4();
      v7 = OUTLINED_FUNCTION_0_7(v6);
      if (v1 < 0 || v1 >= v7)
      {
        goto LABEL_28;
      }

      ++v1;
    }

    v8 = sub_237A2E9F4();
    if (v0 == OUTLINED_FUNCTION_0_7(v8))
    {
      if (v4)
      {
LABEL_20:
      }

      else
      {
        v11 = 0;
LABEL_22:

        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    sub_237A2E9C8(v0);
    v9 = sub_237A2DE60();
    v11 = v10;

    v12 = sub_237A2E9F4();
    if (v0 >= OUTLINED_FUNCTION_0_7(v12))
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_22;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    if (v3 == v9 && v4 == v11)
    {
    }

    else
    {
      v14 = sub_237C0929C();

      if ((v14 & 1) == 0)
      {

        return 0;
      }
    }

    ++v0;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  OUTLINED_FUNCTION_2_10();
  swift_unexpectedError();
  __break(1u);

  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_1_6();
  v16 = sub_237C0924C();
  MEMORY[0x2383DC360](v16);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  OUTLINED_FUNCTION_4_8();
  result = OUTLINED_FUNCTION_7_5();
  __break(1u);
  return result;
}

uint64_t sub_237A01F48(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 0;
      v8 = *(a2 + 16);
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v7 = *(a2 + 32 + 8 * v3);
LABEL_7:
    result = v2 == v5;
    if (v2 == v5)
    {
      v9 = 0;
      v10 = v5;
    }

    else
    {
      if (v2 >= v5)
      {
        goto LABEL_20;
      }

      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_22;
      }

      v9 = *(v6 + 8 * v2);
    }

    if (v3 == v4)
    {
      return result;
    }

    v11 = v2 != v5 && v7 == v9;
    v2 = v10;
    v3 = v8;
    if (!v11)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t MLDataTable.ColumnNames.description.getter()
{
  v1 = *v0;
  v2 = sub_237A2E9F4();
  OUTLINED_FUNCTION_0_7(v2);
  OUTLINED_FUNCTION_6_6();
  v3 = sub_237A01960();
  if (v3 < 0)
  {
    __break(1u);
    OUTLINED_FUNCTION_2_10();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = MEMORY[0x277D84F90];
    if (v3)
    {
      v14 = MEMORY[0x277D84F90];
      sub_237AC8A74();
      v6 = 0;
      v5 = v14;
      do
      {
        sub_237A2E9C8(v6);
        v7 = sub_237A2DE60();
        v9 = v8;

        v10 = *(v14 + 16);
        if (v10 >= *(v14 + 24) >> 1)
        {
          sub_237AC8A74();
        }

        ++v6;
        *(v14 + 16) = v10 + 1;
        v11 = v14 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v9;
      }

      while (v4 != v6);
    }

    v12 = MEMORY[0x2383DC4F0](v5, MEMORY[0x277D837D0]);

    return v12;
  }

  return result;
}

unint64_t MLDataTable.ColumnNames.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v9 = *v1;
  v3 = MLDataTable.ColumnNames.description.getter();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_237A02218(v3, v5, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v7;
  return result;
}

id sub_237A02218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_237C086BC();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_237A028A4();
    v6 = sub_237C0855C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

unint64_t sub_237A022C0()
{
  result = qword_27DE9AA20;
  if (!qword_27DE9AA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AA20);
  }

  return result;
}

unint64_t sub_237A02308()
{
  result = qword_27DE9AF00;
  if (!qword_27DE9AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF00);
  }

  return result;
}

unint64_t sub_237A02390()
{
  result = qword_27DE9AF18;
  if (!qword_27DE9AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF18);
  }

  return result;
}

unint64_t sub_237A0242C()
{
  result = qword_27DE9AF30;
  if (!qword_27DE9AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF30);
  }

  return result;
}

unint64_t sub_237A02484()
{
  result = qword_27DE9AF38;
  if (!qword_27DE9AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF38);
  }

  return result;
}

uint64_t sub_237A02554(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF28, &qword_237C0C3C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A025D0()
{
  result = qword_27DE9AF50;
  if (!qword_27DE9AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF50);
  }

  return result;
}

uint64_t sub_237A02664(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t _s11ColumnNamesVwet(uint64_t *a1, int a2)
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

uint64_t _s11ColumnNamesVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_237A028A4()
{
  result = qword_27DE9A950;
  if (!qword_27DE9A950)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A950);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return sub_237A01818(0, a1, sub_237A2E9F4);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_237C090DC();
}

uint64_t sub_237A029EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for MLHandActionClassifier.DataSource();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237A02A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87();
  v8 = type metadata accessor for MLHandActionClassifier.DataSource();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t _s20PersistentParametersVMa()
{
  result = qword_27DE9AF78;
  if (!qword_27DE9AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A02B84()
{
  result = type metadata accessor for MLHandActionClassifier.DataSource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A02C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v240[4] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF90, &qword_237C0C720);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v201 = v9;
  v10 = OUTLINED_FUNCTION_41_0();
  v203 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v10);
  v11 = OUTLINED_FUNCTION_4(v203);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v197 = v15 - v14;
  OUTLINED_FUNCTION_41_0();
  v209 = sub_237C0602C();
  v16 = OUTLINED_FUNCTION_0(v209);
  v207 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v208 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF98, &qword_237C0C728);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_23();
  v202 = v26;
  OUTLINED_FUNCTION_41_0();
  v204 = type metadata accessor for MLHandActionClassifier.DataSource();
  v27 = OUTLINED_FUNCTION_4(v204);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v198 = (v31 - v30);
  OUTLINED_FUNCTION_41_0();
  v32 = sub_237C05DBC();
  v33 = OUTLINED_FUNCTION_0(v32);
  v199 = v34;
  v200 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v205 = v38 - v37;
  OUTLINED_FUNCTION_41_0();
  v211 = sub_237C05ADC();
  v39 = OUTLINED_FUNCTION_0(v211);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_44_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_46_1();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = v179 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = v179 - v53;
  OUTLINED_FUNCTION_41_1();
  sub_237C05A2C();
  sub_237C05A2C();
  v55 = v210;
  v56 = sub_237C05B1C();
  v210 = v55;
  if (v55)
  {
    v58 = *(v41 + 8);
    v59 = v211;
    v58(a1, v211);
    v58(v52, v59);
    result = (v58)(v54, v59);
    goto LABEL_26;
  }

  v192 = v46;
  v193 = v2;
  v194 = v3;
  v195 = v54;
  v196 = a1;
  v62 = v41 + 8;
  v61 = *(v41 + 8);
  v63 = v56;
  v64 = v57;
  v65 = v211;
  v61(v52, v211);
  v66 = objc_opt_self();
  v67 = sub_237C05B6C();
  *&v216 = 0;
  v68 = [v66 propertyListWithData:v67 options:0 format:0 error:&v216];

  v69 = v216;
  if (!v68)
  {
    v85 = v69;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v63, v64);
    v86 = OUTLINED_FUNCTION_36_2();
    (v61)(v86);
LABEL_21:
    result = (v61)(v195, v65);
    goto LABEL_26;
  }

  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v240, &v216);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8AF0();
    v87 = OUTLINED_FUNCTION_6_2();
    *v88 = 0xD000000000000037;
    v88[1] = 0x8000000237C17D40;
    OUTLINED_FUNCTION_52(v87, v88);
    OUTLINED_FUNCTION_40_2();
    v89 = OUTLINED_FUNCTION_36_2();
    (v61)(v89);
    __swift_destroy_boxed_opaque_existential_1(v240);
    goto LABEL_21;
  }

  v190 = v70;
  v191 = v61;
  v71 = v238;
  sub_237AC9A74(0x69735F6863746162, 0xEA0000000000657ALL, v238, &v216);
  if (!v218)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

  v188 = v238;
  sub_237AC9A74(0x726574695F78616DLL, 0xEE00736E6F697461, v71, &v216);
  if (!v218)
  {
LABEL_22:

    sub_2379D9054(&v216, &qword_27DE9A998, &unk_237C0C100);
LABEL_24:
    sub_2379E8AF0();
    v90 = OUTLINED_FUNCTION_6_2();
    *v91 = 0xD00000000000003FLL;
    v91[1] = 0x8000000237C17F60;
    OUTLINED_FUNCTION_52(v90, v91);
    OUTLINED_FUNCTION_40_2();
    v83 = OUTLINED_FUNCTION_36_2();
    v82 = v191;
    goto LABEL_25;
  }

  v189 = v71;
  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v187 = v238;
  OUTLINED_FUNCTION_60_1(0x6D6172665F6D756ELL, 0xEA00000000007365, &v216);
  if (!v218)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v186 = v238;
  OUTLINED_FUNCTION_60_1(0xD000000000000014, 0x8000000237C17EA0, &v216);
  if (!v218)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v185 = v238;
  OUTLINED_FUNCTION_60_1(0x7246746567726174, 0xEF65746152656D61, &v216);
  if (!v218)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v72 = _s20PersistentParametersVMa();
  v73 = v72[6];
  v74 = v72[7];
  v184 = v72;
  v75 = v72[8];
  v76 = v206;
  *(v206 + v73) = v188;
  v77 = v238;
  *(v76 + v74) = v187;
  *(v76 + v75) = v186;
  OUTLINED_FUNCTION_19_5();
  sub_237C05A2C();
  sub_237AC9A74(0x676E696E69617274, 0xE800000000000000, v189, &v238);
  v183 = v41;
  if (!v239)
  {
    sub_2379D9054(&v238, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v93 = v210;
    v94 = *(v41 + 16);
    v95 = v193;
    v96 = v194;
    v182 = v94;
    v94(v193, v194, v65);
    LOBYTE(v216) = 1;
    *(&v216 + 1) = *v215;
    DWORD1(v216) = *&v215[3];
    *(&v216 + 1) = 44;
    v217 = 0xE100000000000000;
    v218 = 0;
    v219 = 0xE000000000000000;
    v220 = 92;
    v221 = 0xE100000000000000;
    v222 = 1;
    *v223 = *v214;
    *&v223[3] = *&v214[3];
    v224 = 34;
    v225 = 0xE100000000000000;
    v226 = 1;
    *v227 = *v213;
    *&v227[3] = *&v213[3];
    v228 = &unk_284ABEBF0;
    v229 = 10;
    v230 = 0xE100000000000000;
    v231 = 0;
    v232 = 0;
    v233 = 1;
    *v234 = *v212;
    *&v234[3] = *&v212[3];
    v235 = 0;
    v97 = v93;
    MLDataTable.init(contentsOf:options:)(v95, &v216, &v236);
    v98 = v191;
    if (v97)
    {
      OUTLINED_FUNCTION_40_2();

      v99 = OUTLINED_FUNCTION_36_2();
      v98(v99);
      (v98)(v96, v65);
      __swift_destroy_boxed_opaque_existential_1(v240);
      result = (v98)(v195, v65);
      goto LABEL_26;
    }

    v210 = 0;
    v181 = v62;
    *&v216 = v236;
    BYTE8(v216) = v237;
    sub_237A70ED4(&v216, v205);
    v100 = sub_237C05D8C();
    v101 = *(v100 + 16);
    if (v101)
    {
      OUTLINED_FUNCTION_39_1(MEMORY[0x277D84F90]);
      v102 = v216;
      v103 = *(v207 + 16);
      v104 = *(v207 + 80);
      v180 = v100;
      v105 = v100 + ((v104 + 32) & ~v104);
      v187 = *(v207 + 72);
      v188 = v103;
      v193 = v207 + 16;
      v186 = (v207 + 8);
      v107 = v208;
      v106 = v209;
      do
      {
        (v188)(v107, v105, v106);
        v108 = sub_237C0600C();
        v106 = v209;
        v202 = v108;
        v198 = v109;
        (*v186)(v107, v209);
        *&v216 = v102;
        v110 = *(v102 + 16);
        v111 = v110 + 1;
        if (v110 >= *(v102 + 24) >> 1)
        {
          sub_237AC8A74();
          v111 = v110 + 1;
          v106 = v209;
          v102 = v216;
        }

        *(v102 + 16) = v111;
        v112 = v102 + 16 * v110;
        v113 = v198;
        *(v112 + 32) = v202;
        *(v112 + 40) = v113;
        v105 += v187;
        --v101;
        v107 = v208;
      }

      while (v101);
    }

    else
    {

      v102 = MEMORY[0x277D84F90];
    }

    *&v216 = 0x7472617473;
    *(&v216 + 1) = 0xE500000000000000;
    MEMORY[0x28223BE20](v114);
    OUTLINED_FUNCTION_32_0();
    v118 = v210;
    v120 = sub_237AC1CCC(sub_237A06CFC, v119, v102);
    v180 = v118;

    if (v120)
    {
      v121 = 0x7472617473;
    }

    else
    {
      v121 = 0;
    }

    if (v120)
    {
      v122 = 0xE500000000000000;
    }

    else
    {
      v122 = 0;
    }

    v186 = v122;
    v187 = v121;
    v123 = sub_237C05D8C();
    v124 = *(v123 + 16);
    if (v124)
    {
      OUTLINED_FUNCTION_39_1(MEMORY[0x277D84F90]);
      v125 = v216;
      v198 = *(v207 + 16);
      v126 = *(v207 + 80);
      v179[1] = v123;
      v127 = v123 + ((v126 + 32) & ~v126);
      v193 = *(v207 + 72);
      v188 = (v207 + 8);
      v128 = v209;
      v207 += 16;
      do
      {
        v129 = v208;
        v198(v208, v127, v128);
        v130 = sub_237C0600C();
        v128 = v209;
        v210 = v130;
        v202 = v131;
        (*v188)(v129, v209);
        *&v216 = v125;
        v132 = *(v125 + 16);
        v133 = v132 + 1;
        if (v132 >= *(v125 + 24) >> 1)
        {
          sub_237AC8A74();
          v133 = v132 + 1;
          v128 = v209;
          v125 = v216;
        }

        *(v125 + 16) = v133;
        v134 = v125 + 16 * v132;
        v135 = v202;
        *(v134 + 32) = v210;
        *(v134 + 40) = v135;
        v127 += v193;
        --v124;
      }

      while (v124);
      v136 = v125;
    }

    else
    {

      v136 = MEMORY[0x277D84F90];
    }

    *&v216 = 6581861;
    *(&v216 + 1) = 0xE300000000000000;
    MEMORY[0x28223BE20](v137);
    OUTLINED_FUNCTION_32_0();
    v138 = v180;
    v140 = sub_237AC1CCC(sub_237A06D78, v139, v136);
    v210 = v138;

    if (v140)
    {
      v141 = 6581861;
    }

    else
    {
      v141 = 0;
    }

    if (v140)
    {
      v142 = 0xE300000000000000;
    }

    else
    {
      v142 = 0;
    }

    v208 = v142;
    v209 = v141;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
    v144 = v205;
    v117 = v206;
    v145 = (v206 + v143[12]);
    v198 = (v206 + v143[16]);
    v202 = (v206 + v143[20]);
    v207 = v206 + v143[24];
    v146 = v199;
    v147 = v200;
    (*(v199 + 16))(v206, v205, v200);
    *v145 = 0x7461506F65646976;
    v145[1] = 0xE900000000000068;
    (*(v146 + 8))(v144, v147);
    OUTLINED_FUNCTION_51_1();
    v149 = v198;
    *v198 = v148 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    v149[1] = 0xE500000000000000;
    v150 = v186;
    v151 = v202;
    *v202 = v187;
    v151[1] = v150;
    v152 = v208;
    v153 = v207;
    *v207 = v209;
    *(v153 + 8) = v152;
    swift_storeEnumTagMultiPayload();
    goto LABEL_58;
  }

  v182 = *(v41 + 16);
  v182(v192, v194, v65);
  v78 = v202;
  sub_237A03E00();
  if (__swift_getEnumTagSinglePayload(v78, 1, v204) == 1)
  {

    sub_2379D9054(v78, &qword_27DE9AF98, &qword_237C0C728);
    sub_2379E8AF0();
    v79 = OUTLINED_FUNCTION_6_2();
    *v80 = 0xD000000000000035;
    v80[1] = 0x8000000237C18010;
    OUTLINED_FUNCTION_52(v79, v80);
    OUTLINED_FUNCTION_40_2();
    v81 = OUTLINED_FUNCTION_36_2();
    v82 = v191;
    (v191)(v81);
    v83 = v194;
    v84 = v65;
LABEL_25:
    v82(v83, v84);
    __swift_destroy_boxed_opaque_existential_1(v240);
    result = (v82)(v195, v65);
    goto LABEL_26;
  }

  v181 = v62;
  v115 = v198;
  sub_237A06D1C(v78, v198);
  v116 = v115;
  v117 = v206;
  sub_237A06D1C(v116, v206);
LABEL_58:
  v154 = OUTLINED_FUNCTION_49_0();
  sub_237AC9A74(v154, 0xEA00000000006E6FLL, v189, &v216);
  if (!v218)
  {
    sub_2379D9054(&v216, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_6_7();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_63:
    v160 = v184;
    v161 = v184[5];
    swift_storeEnumTagMultiPayload();
LABEL_64:
    v162 = v160[9];
    *(v117 + v160[10]) = v185;
    *(v117 + v162) = v77;
    v163 = OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_60_1(v163, v165 | v164, &v216);

    if (v218)
    {
      OUTLINED_FUNCTION_6_7();
      if (swift_dynamicCast())
      {
        sub_237A050F0(v238, &v216);
        if (v216 != 1)
        {
          OUTLINED_FUNCTION_40_2();
          v166 = v211;
          v167 = v191;
          v191(v196, v211);
          v167(v194, v166);
          __swift_destroy_boxed_opaque_existential_1(v240);
          result = (v167)(v195, v166);
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_2379D9054(&v216, &qword_27DE9A998, &unk_237C0C100);
    }

    v156 = "is missing training parameters.";
    LODWORD(v210) = 1;
    v158 = v195;
    v159 = v196;
    v157 = 0xD00000000000002DLL;
    goto LABEL_70;
  }

  v182(v192, v195, v211);
  v155 = v201;
  sub_237A04BE0();
  if (__swift_getEnumTagSinglePayload(v155, 1, v203) != 1)
  {
    v178 = v197;
    sub_237A06D1C(v201, v197);
    v160 = v184;
    v117 = v206;
    sub_237A06D1C(v178, v206 + v184[5]);
    goto LABEL_64;
  }

  sub_2379D9054(v201, &qword_27DE9AF90, &qword_237C0C720);
  LODWORD(v210) = 0;
  v156 = "ion Classification algorithm.";
  v157 = 0xD000000000000037;
  v158 = v195;
  v159 = v196;
LABEL_70:
  v168 = v156 | 0x8000000000000000;
  sub_2379E8AF0();
  v169 = OUTLINED_FUNCTION_6_2();
  *v170 = v157;
  v170[1] = v168;
  OUTLINED_FUNCTION_52(v169, v170);
  OUTLINED_FUNCTION_40_2();
  v171 = v211;
  v172 = v191;
  v191(v159, v211);
  v172(v194, v171);
  __swift_destroy_boxed_opaque_existential_1(v240);
  v172(v158, v171);
  OUTLINED_FUNCTION_5_5();
  v173 = v206;
  result = sub_237A06C48(v206, v174);
  if (v210)
  {
    v175 = v184[5];
    OUTLINED_FUNCTION_13_2();
    result = sub_237A06C48(v173 + v176, v177);
  }

LABEL_26:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237A03E00()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v137 - v16;
  v18 = type metadata accessor for MLHandActionClassifier.DataSource();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  if (!*(v3 + 16))
  {
    goto LABEL_22;
  }

  v25 = sub_237ACAC78(1684957547, 0xE400000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v25, &v154);
  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_22;
  }

  v149 = v5;
  v5 = v159;
  v27 = v160;
  v28 = v159 == 0x726F746365726964 && v160 == 0xE900000000000079;
  if (v28 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();
    v5 = v149;
    if (!v155)
    {
      v39 = OUTLINED_FUNCTION_2_11();
      v40(v39);
LABEL_37:

LABEL_38:
      sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
      sub_237AC9A74(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, v3, &v154);
      if (v155)
      {
        OUTLINED_FUNCTION_8_5();
        if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
        {
          v50 = OUTLINED_FUNCTION_2_11();
          v51(v50);
LABEL_40:

          goto LABEL_23;
        }

        v5 = 0xEC0000006E6D756CLL;
        v29 = v160;
        v148 = v159;
        OUTLINED_FUNCTION_16_3(0x5F6F65646976);
        if (!v155)
        {
          v58 = OUTLINED_FUNCTION_2_11();
          v59(v58);

LABEL_61:

LABEL_62:

          goto LABEL_63;
        }

        OUTLINED_FUNCTION_8_5();
        if (OUTLINED_FUNCTION_26_3())
        {
          v147 = v29;
          v30 = v160;
          v146 = v159;
          v31 = OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_16_3(v31 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);
          if (v155)
          {
            v145 = v30;
            OUTLINED_FUNCTION_8_5();
            OUTLINED_FUNCTION_26_3();
            OUTLINED_FUNCTION_25_3();
            if (v32)
            {
              v144 = v159;
              v143 = v160;
              OUTLINED_FUNCTION_10_4("start_time_column");
              if (v155)
              {
                OUTLINED_FUNCTION_8_5();
                OUTLINED_FUNCTION_26_3();
                OUTLINED_FUNCTION_21_5();
                v142 = v34;
                if (v28)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = v33;
                }

                v141 = v35;
              }

              else
              {
                sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
                v142 = 0;
                v141 = 0;
              }

              OUTLINED_FUNCTION_23_4();

              if (v155)
              {
                OUTLINED_FUNCTION_8_5();
                OUTLINED_FUNCTION_26_3();
                OUTLINED_FUNCTION_21_5();
                v140 = v96;
                if (v28)
                {
                  v97 = 0;
                }

                else
                {
                  v97 = v95;
                }

                v139 = v97;
              }

              else
              {
                sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
                v140 = 0;
                v139 = 0;
              }

              v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
              v137 = v98[12];
              v5 = (v24 + v98[16]);
              v99 = (v24 + v98[20]);
              v100 = (v24 + v98[24]);
              v138 = (v24 + v98[28]);
              sub_237C059BC();

              sub_237C059BC();

              v101 = OUTLINED_FUNCTION_2_11();
              v102(v101);
              v103 = v145;
              *v5 = v146;
              v5[1] = v103;
              v104 = v143;
              *v99 = v144;
              v99[1] = v104;
              v105 = v141;
              *v100 = v142;
              v100[1] = v105;
              v106 = v138;
              v107 = v139;
              *v138 = v140;
              v106[1] = v107;
              OUTLINED_FUNCTION_107();
              goto LABEL_87;
            }

            v76 = OUTLINED_FUNCTION_2_11();
            v77(v76);

            goto LABEL_40;
          }

          v74 = OUTLINED_FUNCTION_2_11();
          v75(v74);

          goto LABEL_61;
        }

        v60 = OUTLINED_FUNCTION_2_11();
        v61(v60);

        goto LABEL_52;
      }

      v48 = OUTLINED_FUNCTION_2_11();
      v49(v48);

      goto LABEL_37;
    }

LABEL_22:
    v36 = OUTLINED_FUNCTION_2_11();
    v37(v36);
LABEL_23:

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21_2();
  v43 = v5 == (v42 | 2) && v41 == v27;
  if (v43 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();

    if (!v155)
    {
      v52 = OUTLINED_FUNCTION_2_11();
      v53(v52);
LABEL_63:
      sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_25_3();
    if (v44)
    {
      goto LABEL_34;
    }

    goto LABEL_49;
  }

  v55 = v5 == (OUTLINED_FUNCTION_48_1() | 0x5F64656C00000000) && v27 == v54;
  if (v55 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_25_3();
    OUTLINED_FUNCTION_22_4();

    if (!v155)
    {
      v62 = OUTLINED_FUNCTION_2_11();
      v63(v62);
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
LABEL_34:
      sub_237C059BC();

      v45 = OUTLINED_FUNCTION_2_11();
      v46(v45);
      OUTLINED_FUNCTION_107();
      swift_storeEnumTagMultiPayload();
LABEL_35:
      v47 = OUTLINED_FUNCTION_12_5();
      sub_237A06D1C(v47, v5);
      v38 = 0;
      goto LABEL_25;
    }

LABEL_49:
    v56 = OUTLINED_FUNCTION_2_11();
    v57(v56);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21_2();
  v65 = v5 == 0xD000000000000016 && v64 == v27;
  if (!v65 && (OUTLINED_FUNCTION_24_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_2();
    if (v5 == (v90 + 1) && v89 == v27)
    {
    }

    else
    {
      v92 = OUTLINED_FUNCTION_24_4();

      if ((v92 & 1) == 0)
      {
        v93 = OUTLINED_FUNCTION_2_11();
        v94(v93);
        goto LABEL_52;
      }
    }

    (*(v9 + 16))(v14, v1, v6);
    LOBYTE(v154) = 1;
    *(&v154 + 1) = v151;
    OUTLINED_FUNCTION_11_4(1);
    v156 = v158;
    OUTLINED_FUNCTION_56_1(v108);
    *v157 = *(v109 + 154);
    *&v157[3] = *(v109 + 157);
    OUTLINED_FUNCTION_33_1(v110);
    *(v111 + 129) = *(v111 + 147);
    OUTLINED_FUNCTION_52_1(*(v111 + 150));
    MLDataTable.init(contentsOf:options:)(v14, v112, v113);
    v5 = 0xEC0000006E6D756CLL;
    v114 = v159;
    v115 = v160;
    OUTLINED_FUNCTION_16_3(0x5F6F65646976);
    if (!v155)
    {
      v124 = OUTLINED_FUNCTION_2_11();
      v125(v124);
      OUTLINED_FUNCTION_62_0();
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_8_5();
    if (OUTLINED_FUNCTION_26_3())
    {
      v116 = v160;
      v148 = v159;
      v117 = OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_16_3(v117 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);
      if (!v155)
      {
        v128 = OUTLINED_FUNCTION_2_11();
        v129(v128);
        OUTLINED_FUNCTION_62_0();

        goto LABEL_62;
      }

      OUTLINED_FUNCTION_8_5();
      if (OUTLINED_FUNCTION_26_3())
      {
        v147 = v159;
        v146 = v160;
        OUTLINED_FUNCTION_10_4("start_time_column");
        if (v155)
        {
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_26_3();
          OUTLINED_FUNCTION_21_5();
          v145 = v119;
          if (v28)
          {
            v5 = 0;
          }

          else
          {
            v5 = v118;
          }
        }

        else
        {
          sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
          v145 = 0;
          v5 = 0;
        }

        OUTLINED_FUNCTION_23_4();

        v132 = OUTLINED_FUNCTION_2_11();
        v133(v132);
        if (v155)
        {
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_26_3();
          OUTLINED_FUNCTION_21_5();
          if (v28)
          {
            v135 = 0;
          }
        }

        else
        {
          sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
          v134 = 0;
          v135 = 0;
        }

        LOBYTE(v159) = v115;
        *v24 = v114;
        *(v24 + 8) = v115;
        *(v24 + 16) = v148;
        *(v24 + 24) = v116;
        v136 = v146;
        *(v24 + 32) = v147;
        *(v24 + 40) = v136;
        *(v24 + 48) = v145;
        *(v24 + 56) = v5;
        *(v24 + 64) = v134;
        *(v24 + 72) = v135;
        OUTLINED_FUNCTION_107();
        goto LABEL_87;
      }

      v130 = OUTLINED_FUNCTION_2_11();
      v131(v130);
      OUTLINED_FUNCTION_62_0();
    }

    else
    {
      v126 = OUTLINED_FUNCTION_2_11();
      v127(v126);
      OUTLINED_FUNCTION_62_0();
    }

LABEL_52:

LABEL_64:
    OUTLINED_FUNCTION_25_3();
    goto LABEL_25;
  }

  (*(v9 + 16))(v17, v1, v6);
  LOBYTE(v154) = 1;
  *(&v154 + 1) = v158;
  OUTLINED_FUNCTION_11_4(1);
  v156 = *(v66 + 154);
  v67 = *(v66 + 157);
  OUTLINED_FUNCTION_56_1(v68);
  *v157 = *(v69 + 147);
  *&v157[3] = *(v69 + 150);
  OUTLINED_FUNCTION_33_1(v70);
  *(v71 + 129) = *v153;
  OUTLINED_FUNCTION_52_1(*&v153[3]);
  MLDataTable.init(contentsOf:options:)(v17, v72, v73);
  v151 = v159;
  v152 = v160;
  OUTLINED_FUNCTION_50_0();
  sub_237ACECE8(&v151, v78, v79);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_10_4("session_id_column");
  if (!v155)
  {
LABEL_100:

    v120 = OUTLINED_FUNCTION_2_11();
    v121(v120);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_8_5();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_102;
  }

  v81 = v159;
  v80 = v160;
  v82 = OUTLINED_FUNCTION_48_1();
  sub_237AC9A74(v82 | 0x6F635F6C00000000, 0xEC0000006E6D756CLL, v3, &v154);
  if (!v155)
  {

    goto LABEL_100;
  }

  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {

LABEL_102:

    v122 = OUTLINED_FUNCTION_2_11();
    v123(v122);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_24;
  }

  v5 = v159;
  v83 = v160;
  sub_237AC9A74(0x5F65727574616566, 0xEE006E6D756C6F63, v3, &v154);

  v84 = OUTLINED_FUNCTION_2_11();
  v85(v84);
  if (v155)
  {
    OUTLINED_FUNCTION_8_5();
    if (OUTLINED_FUNCTION_26_3())
    {
      v86 = v159;
      v87 = v160;
      v88 = v152;
      v150 = v152;
      *v24 = v151;
      *(v24 + 8) = v88;
      *(v24 + 16) = v81;
      *(v24 + 24) = v80;
      *(v24 + 32) = v5;
      *(v24 + 40) = v83;
      *(v24 + 48) = v86;
      *(v24 + 56) = v87;
      OUTLINED_FUNCTION_107();
LABEL_87:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_25_3();
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_15_4();
  }

  else
  {
    OUTLINED_FUNCTION_15_4();

    sub_2379D9054(&v154, &qword_27DE9A998, &unk_237C0C100);
  }

  OUTLINED_FUNCTION_25_3();
LABEL_24:
  v38 = 1;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v5, v38, 1, v18);
  OUTLINED_FUNCTION_150();
}

void sub_237A04BE0()
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF98, &qword_237C0C728);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for MLHandActionClassifier.DataSource();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_237AC9A74(1684957547, 0xE400000000000000, v2, &v66);
  if (!v69)
  {
    sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v61 = v4;
  v62 = v27;
  v35 = v64;
  v34 = v65;
  v36 = v64 == 1701736302 && v65 == 0xE400000000000000;
  if (!v36 && (OUTLINED_FUNCTION_38_0() & 1) == 0)
  {
    v42 = v35 == 0x756F735F61746164 && v34 == 0xEB00000000656372;
    if (v42 || (OUTLINED_FUNCTION_38_0() & 1) != 0)
    {

      v43 = OUTLINED_FUNCTION_19_5();
      sub_237AC9A74(v43, v44, v2, v45);

      v4 = v61;
      v27 = v62;
      if (!v69)
      {
        v47 = OUTLINED_FUNCTION_9_4();
        v48(v47);
        sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      if (OUTLINED_FUNCTION_26_3())
      {
        v46 = v63;
        (*(v8 + 16))(v13, v63, v5);
        sub_237A03E00();
        (*(v8 + 8))(v46, v5);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
        {
          sub_2379D9054(v19, &qword_27DE9AF98, &qword_237C0C728);
          v39 = 1;
          v27 = v62;
          goto LABEL_15;
        }

        sub_237A06D1C(v19, v26);
        sub_237A06D1C(v26, v33);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v35 == 0x74696C7073 && v34 == 0xE500000000000000)
    {
    }

    else
    {
      v50 = OUTLINED_FUNCTION_38_0();

      if ((v50 & 1) == 0)
      {

        v4 = v61;
        v27 = v62;
        goto LABEL_13;
      }
    }

    v51 = OUTLINED_FUNCTION_19_5();
    sub_237AC9A74(v51, v52, v2, v53);

    v27 = v62;
    if (!v69)
    {
      v58 = OUTLINED_FUNCTION_9_4();
      v59(v58);
      sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
      v39 = 1;
      v4 = v61;
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    v54 = OUTLINED_FUNCTION_26_3();
    v4 = v61;
    if (v54)
    {
      sub_237A283AC(v64, &v66);
      v55 = OUTLINED_FUNCTION_9_4();
      v56(v55);
      if ((v68 & 1) == 0)
      {
        v57 = v67;
        *v33 = v66;
        *(v33 + 16) = v57;
        *(v33 + 17) = HIBYTE(v57) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v39 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v40 = OUTLINED_FUNCTION_9_4();
    v41(v40);
    goto LABEL_14;
  }

  v37 = OUTLINED_FUNCTION_9_4();
  v38(v37);
  v4 = v61;
LABEL_9:
  v27 = v62;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  sub_237A06D1C(v33, v4);
  v39 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v4, v39, 1, v27);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A050F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = OUTLINED_FUNCTION_47_1(), v5 = sub_237ACAC78(v4, 0xE90000000000006DLL), (v6 & 1) != 0))
  {
    sub_2379FED88(*(a1 + 56) + 32 * v5, v13);

    result = OUTLINED_FUNCTION_26_3();
    if (result)
    {
      if (v11 == 7234407 && v12 == 0xE300000000000000)
      {

        v10 = 0;
        goto LABEL_12;
      }

      v9 = sub_237C0929C();

      v10 = 0;
      if (v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v10 = 1;
LABEL_12:
  *a2 = v10;
  return result;
}

void sub_237A051E4(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v93 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for MLHandActionClassifier.DataSource();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v74 = v8 - v7;
  v9 = OUTLINED_FUNCTION_41_0();
  v79 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v9);
  v10 = OUTLINED_FUNCTION_4(v79);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v78 = v14 - v13;
  OUTLINED_FUNCTION_41_0();
  v87 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v87);
  v85 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v75 = v19 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v80 = &v73 - v23;
  MEMORY[0x28223BE20](v22);
  v83 = &v73 - v24;
  v25 = OUTLINED_FUNCTION_41_0();
  v90 = type metadata accessor for MLHandActionClassifier.ModelParameters(v25);
  v26 = OUTLINED_FUNCTION_4(v90);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v81 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v73 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6B0;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  sub_237A05910();
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v89 = v37;
  *(inited + 48) = v36;
  *(inited + 72) = v37;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v38 = _s20PersistentParametersVMa();
  v77 = v38[5];
  sub_237A06CA0(v2 + v77, v33);
  v39 = *(v2 + v38[6]);
  v88 = *(v2 + v38[7]);
  v40 = v38[9];
  v41 = *(v2 + v38[8]);
  v76 = v38[10];
  v42 = *(v2 + v76);
  v82 = v2;
  v43 = *(v2 + v40);
  *&v33[*(v90 + 32)] = v42;
  v44 = sub_237A06100();
  sub_237A06C48(v33, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  *(inited + 96) = v44;
  v45 = v89;
  *(inited + 120) = v89;
  *(inited + 128) = 0x69735F6863746162;
  v46 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 144) = v39;
  *(inited + 168) = v46;
  *(inited + 176) = 0x6D6172665F6D756ELL;
  *(inited + 184) = 0xEA00000000007365;
  *(inited + 192) = v41;
  *(inited + 216) = v46;
  strcpy((inited + 224), "max_iterations");
  *(inited + 239) = -18;
  *(inited + 240) = v88;
  *(inited + 264) = v46;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = 0x8000000237C17EA0;
  *(inited + 288) = v42;
  *(inited + 312) = v46;
  *(inited + 320) = 0x687469726F676C61;
  *(inited + 328) = 0xE90000000000006DLL;
  *(inited + 336) = sub_237A063C4();
  *(inited + 360) = v45;
  *(inited + 368) = 0x7246746567726174;
  *(inited + 376) = 0xEF65746152656D61;
  *(inited + 408) = MEMORY[0x277D839F8];
  *(inited + 384) = v43;
  OUTLINED_FUNCTION_43_1();
  sub_237C085AC();
  v47 = objc_opt_self();
  OUTLINED_FUNCTION_43_1();
  v48 = sub_237C0855C();

  v91 = 0;
  v49 = [v47 dataWithPropertyList:v48 format:200 options:0 error:&v91];

  v50 = v91;
  if (v49)
  {
    sub_237C05B7C();

    OUTLINED_FUNCTION_21_2();
    v51 = v83;
    sub_237C05A2C();
    v52 = v84;
    sub_237C05B9C();
    if (v52)
    {
      (*(v85 + 8))(v51, v87);
    }

    else
    {
      v56 = v51;
      v57 = v87;
      v89 = *(v85 + 8);
      v89(v56, v87);
      sub_237A06458();
      v58 = v92;
      if (v92 != 255)
      {
        v88 = v91;
        v92 &= 1u;
        v59 = v80;
        OUTLINED_FUNCTION_19_5();
        sub_237C05A2C();
        MLDataTable.write(to:)(v59);
        v89(v59, v57);
        sub_2379DBC84(v88, v58);
      }

      v61 = v81;
      v60 = v82;
      sub_237A06CA0(v82 + v77, v81);
      *(v61 + *(v90 + 32)) = *(v60 + v76);
      sub_237A06CA0(v61, v78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = OUTLINED_FUNCTION_12_5();
        v63 = v74;
        sub_237A06D1C(v62, v74);
        sub_237A06458();
        OUTLINED_FUNCTION_5_5();
        sub_237A06C48(v63, v64);
        v65 = v91;
        v66 = v92;
      }

      else
      {
        v65 = 0;
        v66 = 255;
      }

      OUTLINED_FUNCTION_13_2();
      sub_237A06C48(v81, v67);
      if (v66 != 255)
      {
        v91 = v65;
        v92 = v66 & 1;
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_49_0();
        v69 = v68;
        sub_237C05A2C();
        MLDataTable.write(to:)(v69);
        v89(v69, v87);
        v70 = OUTLINED_FUNCTION_55_1();
        sub_2379E86D4(v70, v71);
        sub_2379DBC84(v65, v66);
        goto LABEL_13;
      }
    }

    v53 = OUTLINED_FUNCTION_55_1();
    sub_2379E86D4(v53, v54);
  }

  else
  {
    v55 = v50;
    sub_237C0593C();

    swift_willThrow();
  }

LABEL_13:
  v72 = *MEMORY[0x277D85DE8];
}

void sub_237A05910()
{
  OUTLINED_FUNCTION_153();
  v2 = v0;
  v3 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v102 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_3();
  v16 = type metadata accessor for MLHandActionClassifier.DataSource();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_14_2();
  sub_237A06CA0(v2, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v73 = OUTLINED_FUNCTION_31_1();
      v74(v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      v64 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v63 = MEMORY[0x277D837D0];
      v64[3].n128_u64[0] = 0xD000000000000013;
      v64[3].n128_u64[1] = 0x8000000237C17F40;
      goto LABEL_11;
    case 2u:
      v60 = OUTLINED_FUNCTION_31_1();
      v61(v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v63 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_51_1();
      v64[3].n128_u64[0] = v66 | 0x5F64656C00000000;
      v64[3].n128_u64[1] = 0xED000073656C6966;
LABEL_11:
      v64[4].n128_u64[1] = v63;
      v64[5].n128_u64[0] = 1752457584;
      v64[5].n128_u64[1] = v65;
      v75 = sub_237C05A9C();
      inited[7].n128_u64[1] = v63;
      inited[6].n128_u64[0] = v75;
      inited[6].n128_u64[1] = v76;
      sub_237C085AC();
      (*(v6 + 8))(v11, v3);
      break;
    case 3u:
      v67 = *(v22 + 16);
      v68 = *(v22 + 24);
      v69 = *(v22 + 32);
      v70 = *(v22 + 40);
      v71 = *(v22 + 48);
      v72 = *(v22 + 56);
      sub_2379DBC9C(*v22, *(v22 + 8));
      goto LABEL_13;
    case 4u:
      v51 = *v22;
      v52 = *(v22 + 8);
      v53 = *(v22 + 16);
      v54 = *(v22 + 24);
      v56 = *(v22 + 32);
      v55 = *(v22 + 40);
      v57 = *(v22 + 48);
      v58 = *(v22 + 56);
      v59 = *(v22 + 72);
      v109 = *(v22 + 64);
      sub_2379DBC9C(v51, v52);
      goto LABEL_15;
    case 5u:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v78 = (v22 + v77[12]);
      v67 = *v78;
      v68 = v78[1];
      v79 = (v22 + v77[16]);
      v69 = *v79;
      v70 = v79[1];
      v80 = (v22 + v77[20]);
      v71 = *v80;
      v72 = v80[1];
      v81 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v81);
      (*(v82 + 8))(v22);
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v83 = swift_initStackObject();
      v84 = OUTLINED_FUNCTION_0_8(v83, xmmword_237C0BC00);
      v85 = MEMORY[0x277D837D0];
      v84[3].n128_u64[0] = 0xD000000000000016;
      v84[3].n128_u64[1] = 0x8000000237C17F00;
      v84[4].n128_u64[1] = v85;
      v84[5].n128_u64[0] = 0xD000000000000011;
      v84[5].n128_u64[1] = 0x8000000237C17F20;
      v84[6].n128_u64[0] = v67;
      v84[6].n128_u64[1] = v68;
      OUTLINED_FUNCTION_51_1();
      *(v87 + 120) = v88;
      *(v87 + 128) = v86 | 0x6F635F6C00000000;
      *(v87 + 136) = 0xEC0000006E6D756CLL;
      *(v87 + 144) = v69;
      *(v87 + 152) = v70;
      *(v87 + 168) = v88;
      strcpy((v87 + 176), "feature_column");
      *(v87 + 216) = v88;
      *(v87 + 191) = -18;
      *(v87 + 192) = v71;
      *(v87 + 200) = v72;
      sub_237C085AC();
      break;
    case 6u:
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v90 = (v22 + v89[12]);
      v53 = *v90;
      v54 = v90[1];
      v91 = (v22 + v89[16]);
      v56 = *v91;
      v55 = v91[1];
      v92 = (v22 + v89[20]);
      v57 = *v92;
      v58 = v92[1];
      v93 = (v22 + v89[24]);
      v59 = v93[1];
      v109 = *v93;
      v94 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v94);
      (*(v95 + 8))(v22);
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v96 = swift_initStackObject();
      v97 = OUTLINED_FUNCTION_0_8(v96, xmmword_237C0B680);
      v98 = MEMORY[0x277D837D0];
      v97[3].n128_u64[0] = 0xD000000000000012;
      v97[3].n128_u64[1] = 0x8000000237C17EC0;
      OUTLINED_FUNCTION_53_1();
      *(v99 + 72) = v98;
      *(v99 + 80) = v100;
      *(v99 + 88) = 0xEC0000006E6D756CLL;
      *(v99 + 96) = v53;
      *(v99 + 104) = v54;
      *(v99 + 120) = v98;
      strcpy((v99 + 128), "label_column");
      *(v99 + 168) = v98;
      *(v99 + 141) = 0;
      *(v99 + 142) = -5120;
      *(v99 + 144) = v56;
      *(v99 + 152) = v55;
      v101 = sub_237C085AC();
      if (v58)
      {
        v114 = v98;
        v112 = v57;
        v113 = v58;
        OUTLINED_FUNCTION_27_2();
        v110 = v101;
        sub_237B40B6C(v111, 0xD000000000000011, 0x8000000237C17EE0);
      }

      if (v59)
      {
        v114 = v98;
        v112 = v109;
        v113 = v59;
        OUTLINED_FUNCTION_27_2();
        OUTLINED_FUNCTION_18_5();
      }

      break;
    default:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v24 = v23[12];
      v25 = (v22 + v23[16]);
      v26 = *v25;
      v105 = v25[1];
      v106 = v26;
      v27 = (v22 + v23[20]);
      v28 = *v27;
      v107 = v27[1];
      v108 = v28;
      v29 = (v22 + v23[24]);
      v30 = *v29;
      v31 = v29[1];
      v32 = (v22 + v23[28]);
      v34 = *v32;
      v33 = v32[1];
      v103 = v30;
      v104 = v34;
      v109 = v33;
      v35 = *(v6 + 32);
      v36 = OUTLINED_FUNCTION_55_1();
      v35(v36);
      (v35)(v15, v22 + v24, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v37 = swift_allocObject();
      v38 = OUTLINED_FUNCTION_0_8(v37, xmmword_237C0C6C0);
      v39 = MEMORY[0x277D837D0];
      v38[3].n128_u64[0] = 0x726F746365726964;
      v38[3].n128_u64[1] = 0xE900000000000079;
      v38[4].n128_u64[1] = v39;
      v38[5].n128_u64[0] = 1752457584;
      v38[5].n128_u64[1] = v40;
      v37[6].n128_u64[0] = sub_237C05A9C();
      v37[6].n128_u64[1] = v41;
      v37[7].n128_u64[1] = v39;
      v37[8].n128_u64[0] = 0x697461746F6E6E61;
      v37[8].n128_u64[1] = 0xEF656C69665F6E6FLL;
      v37[10].n128_u64[1] = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37[9]);
      (*(v6 + 16))(boxed_opaque_existential_0, v15, v3);
      OUTLINED_FUNCTION_53_1();
      v37[11].n128_u64[0] = v43;
      v37[11].n128_u64[1] = 0xEC0000006E6D756CLL;
      v44 = v105;
      v37[12].n128_u64[0] = v106;
      v37[12].n128_u64[1] = v44;
      OUTLINED_FUNCTION_51_1();
      v37[13].n128_u64[1] = v39;
      v37[14].n128_u64[0] = v45 | 0x6F635F6C00000000;
      v37[16].n128_u64[1] = v39;
      v46 = v107;
      v47 = v108;
      v37[14].n128_u64[1] = v48;
      v37[15].n128_u64[0] = v47;
      v37[15].n128_u64[1] = v46;
      v49 = sub_237C085AC();
      if (v31)
      {
        v114 = v39;
        v112 = v103;
        v113 = v31;
        OUTLINED_FUNCTION_27_2();
        v110 = v49;
        sub_237B40B6C(v111, 0xD000000000000011, 0x8000000237C17EE0);
      }

      if (v109)
      {
        v114 = v39;
        v112 = v104;
        v113 = v109;
        OUTLINED_FUNCTION_27_2();
        OUTLINED_FUNCTION_18_5();
      }

      v50 = *(v6 + 8);
      v50(v15, v3);
      v50(v1, v3);
      break;
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A06100()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandActionClassifier.DataSource();
  v3 = OUTLINED_FUNCTION_20(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_237A06CA0(v1, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = *v15;
    v24 = *(v15 + 8);
    v25 = *(v15 + 16);
    v26 = *(v15 + 17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    v28 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
    OUTLINED_FUNCTION_34_0(v28, 0x74696C7073);
    v29 = sub_237A28200();
    inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    inited[6].n128_u64[0] = v29;
    return sub_237C085AC();
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v30 = swift_initStackObject();
    v31 = OUTLINED_FUNCTION_0_8(v30, xmmword_237C0B660);
    v31[4].n128_u64[1] = MEMORY[0x277D837D0];
    v31[3].n128_u64[0] = 1701736302;
    v31[3].n128_u64[1] = v32;
    return sub_237C085AC();
  }

  sub_237A06D1C(v15, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v17 = swift_initStackObject();
  v18 = OUTLINED_FUNCTION_0_8(v17, xmmword_237C0B670);
  OUTLINED_FUNCTION_34_0(v18, 0x756F735F61746164);
  sub_237A05910();
  v20 = v19;
  v17[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v17[6].n128_u64[0] = v20;
  v21 = sub_237C085AC();
  OUTLINED_FUNCTION_5_5();
  sub_237A06C48(v8, v22);
  return v21;
}

uint64_t sub_237A063C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v1 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x687469726F676C61;
  *(inited + 40) = 0xE90000000000006DLL;
  *(inited + 72) = v1;
  *(inited + 48) = 7234407;
  *(inited + 56) = 0xE300000000000000;
  return sub_237C085AC();
}

void sub_237A06458()
{
  OUTLINED_FUNCTION_153();
  v4 = v0;
  v108 = 0;
  v109 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v7 = OUTLINED_FUNCTION_0(v6);
  v103 = v8;
  v104 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v101 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23();
  v102 = v17;
  OUTLINED_FUNCTION_41_0();
  v18 = sub_237C0602C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v105 = v20;
  v106 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_3();
  v107 = sub_237C05DBC();
  v27 = OUTLINED_FUNCTION_0(v107);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_44_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v97 - v38;
  v40 = type metadata accessor for MLHandActionClassifier.DataSource();
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v46 = v45 - v44;
  OUTLINED_FUNCTION_14_2();
  sub_237A06CA0(v4, v46);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v47 = sub_237C05ADC();
      OUTLINED_FUNCTION_4(v47);
      (*(v48 + 8))(v46);
      goto LABEL_12;
    case 3u:
      v61 = *v46;
      v62 = *(v46 + 8);
      v63 = *(v46 + 24);
      v64 = *(v46 + 40);
      v65 = *(v46 + 56);

      v112 = v61;
      v113 = v62;
      sub_2379DBCF4(v61, v62);
      OUTLINED_FUNCTION_50_0();
      v66 = v108;
      sub_237ACECE8(&v112, v67, 0xE900000000000073);
      if (v66)
      {
      }

      sub_2379DBC9C(v61, v62);
      goto LABEL_16;
    case 4u:
      v49 = *v46;
      v50 = *(v46 + 8);
      v51 = *(v46 + 24);
      v52 = *(v46 + 40);
      v53 = *(v46 + 56);
      v54 = *(v46 + 72);

      v55 = v109;
      *v109 = v49;
      *(v55 + 8) = v50;
      goto LABEL_22;
    case 5u:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      OUTLINED_FUNCTION_29_2(v68[12]);
      OUTLINED_FUNCTION_29_2(v68[16]);
      v69 = (v46 + v68[20]);
      v70 = *v69;
      v71 = v69[1];
      v72 = v29;
      v73 = v70;
      v100 = v72;
      v74 = v107;
      (*(v72 + 32))(v39, v46, v107);
      v75 = v71;
      sub_237C05DFC();
      v76 = sub_237C05FFC();
      v77 = *(v105 + 8);
      v77(v1, v106);
      if (v76 == MEMORY[0x277D837D0])
      {
        v98 = v77;
        v86 = v101;
        sub_237C05DEC();
        v87 = v102;
        v99 = v73;
        v80 = v108;
        sub_237B62FE0(v102);
        if (v80)
        {
          v78 = v99;

          (*(v103 + 8))(v86, v104);
          __swift_storeEnumTagSinglePayload(v87, 1, 1, v106);
          sub_2379D9054(v87, &qword_27DE9AF88, &unk_237C0C700);
          v80 = 0;
        }

        else
        {
          (*(v103 + 8))(v86, v104);
          v90 = v106;
          __swift_storeEnumTagSinglePayload(v87, 0, 1, v106);
          v91 = v105;
          (*(v105 + 32))(v25, v87, v90);
          (*(v91 + 16))(v1, v25, v90);

          v78 = v99;
          sub_237C05E0C();
          v98(v25, v90);
        }

        v79 = v109;
        v74 = v107;
        v75 = v71;
      }

      else
      {
        v78 = v73;
        v80 = v108;
        v79 = v109;
      }

      (*(v100 + 16))(v3, v39, v74);
      sub_237A70684(v3, 0, &v110);
      if (v80)
      {

        v92 = OUTLINED_FUNCTION_30_3();
        v93(v92);
        *v79 = 0;
        *(v79 + 8) = -1;
      }

      else
      {
        v112 = v110;
        v113 = v111;
        sub_237ACECE8(&v112, v78, v75);
        v94 = OUTLINED_FUNCTION_30_3();
        v95(v94);

        v96 = v113;
        *v79 = v112;
        *(v79 + 8) = v96;
      }

      goto LABEL_22;
    case 6u:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      OUTLINED_FUNCTION_29_2(v81[12]);
      OUTLINED_FUNCTION_29_2(v81[16]);
      OUTLINED_FUNCTION_29_2(v81[20]);
      OUTLINED_FUNCTION_29_2(v81[24]);
      v82 = v29;
      v83 = v107;
      (*(v29 + 32))(v2, v46, v107);
      (*(v29 + 16))(v34, v2, v83);
      v84 = v108;
      sub_237A70684(v34, 0, &v112);
      if (v84)
      {

        (*(v82 + 8))(v2, v83);
LABEL_12:
        v85 = v109;
        *v109 = 0;
        *(v85 + 8) = -1;
      }

      else
      {
        (*(v82 + 8))(v2, v83);
LABEL_16:
        v88 = v113;
        v89 = v109;
        *v109 = v112;
        *(v89 + 8) = v88;
      }

LABEL_22:
      OUTLINED_FUNCTION_150();
      return;
    default:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v57 = v56[12];
      OUTLINED_FUNCTION_29_2(v56[16]);
      OUTLINED_FUNCTION_29_2(v56[20]);
      OUTLINED_FUNCTION_29_2(v56[24]);
      OUTLINED_FUNCTION_29_2(v56[28]);
      v58 = sub_237C05ADC();
      OUTLINED_FUNCTION_4(v58);
      v60 = *(v59 + 8);
      v60(v46 + v57, v58);
      v60(v46, v58);
      goto LABEL_12;
  }
}

uint64_t sub_237A06C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237A06CA0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237A06D1C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

__n128 *OUTLINED_FUNCTION_0_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684957547;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

double OUTLINED_FUNCTION_10_4@<D0>(uint64_t a1@<X8>)
{

  return sub_237AC9A74(0xD000000000000011, (a1 - 32) | 0x8000000000000000, v1, (v2 - 272));
}

void OUTLINED_FUNCTION_11_4(char a1@<W8>)
{
  *(v2 - 268) = v1;
  *(v2 - 264) = 44;
  *(v2 - 256) = 0xE100000000000000;
  *(v2 - 248) = 0;
  *(v2 - 240) = 0xE000000000000000;
  *(v2 - 232) = 92;
  *(v2 - 224) = 0xE100000000000000;
  *(v2 - 216) = a1;
}

void OUTLINED_FUNCTION_15_4()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 288);

  sub_2379DBC9C(v2, v3);
}

double OUTLINED_FUNCTION_16_3(uint64_t a1)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0x6F63000000000000;

  return sub_237AC9A74(v5, v2, v1, (v3 - 272));
}

_OWORD *OUTLINED_FUNCTION_18_5()
{
  *(v0 + 544) = v1;

  return sub_237B40B6C(v0 + 552, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL);
}

double OUTLINED_FUNCTION_22_4()
{

  return sub_237AC9A74(1752457584, 0xE400000000000000, v0, (v1 - 272));
}

double OUTLINED_FUNCTION_23_4()
{

  return sub_237AC9A74(0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v0, (v1 - 272));
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  sub_2379DAD24((v0 + 584), (v0 + 552));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void OUTLINED_FUNCTION_33_1(char a1@<W8>)
{
  *(v3 - 184) = v1;
  *(v3 - 176) = 10;
  *(v3 - 168) = v2;
  *(v3 - 160) = 0;
  *(v3 - 152) = 0;
  *(v3 - 144) = a1;
}

void *OUTLINED_FUNCTION_34_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[6] = a2;
  result[7] = v3;
  result[9] = v4;
  result[10] = 1635017060;
  result[11] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_237C0929C();
}

void OUTLINED_FUNCTION_39_1(uint64_t a1@<X8>)
{
  *(v1 + 304) = a1;

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_2379E86D4(v0, v1);
}

void OUTLINED_FUNCTION_56_1(char a1@<W8>)
{
  *(v3 - 212) = v1;
  *(v3 - 208) = 34;
  *(v3 - 200) = v2;
  *(v3 - 192) = a1;
}

double OUTLINED_FUNCTION_60_1@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 88);

  return sub_237AC9A74(a1, a2, v5, a3);
}

void OUTLINED_FUNCTION_62_0()
{

  sub_2379DBC9C(v1, v0);
}

uint64_t type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9AFA0;
  if (!qword_27DE9AFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A07268@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_237A074CC(v3, v18 - v17);
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
        JUMPOUT(0x237A074BCLL);
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

uint64_t sub_237A074CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A07530(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v31 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237A074CC(v57, v34 - v33);
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

uint64_t sub_237A079CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for MLHandPoseClassifier.DataSource();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237A07A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87();
  v8 = type metadata accessor for MLHandPoseClassifier.DataSource();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t _s20PersistentParametersVMa_0()
{
  result = qword_27DE9AFB0;
  if (!qword_27DE9AFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A07B64()
{
  result = type metadata accessor for MLHandPoseClassifier.DataSource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A07C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v174[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFC0, &qword_237C0C780);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v137 = v8;
  v9 = OUTLINED_FUNCTION_41_0();
  v140 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v9);
  v10 = OUTLINED_FUNCTION_4(v140);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v136 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFC8, &qword_237C0C788);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23();
  v139 = v19;
  OUTLINED_FUNCTION_41_0();
  v142 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v20 = OUTLINED_FUNCTION_4(v142);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v138 = v24 - v23;
  OUTLINED_FUNCTION_41_0();
  v145 = sub_237C05ADC();
  v25 = OUTLINED_FUNCTION_0(v145);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v141 = v30 - v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  v143 = &v122 - v33;
  OUTLINED_FUNCTION_39_0();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v122 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v122 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v122 - v41;
  OUTLINED_FUNCTION_41_1();
  sub_237C05A2C();
  sub_237C05A2C();
  v43 = sub_237C05B1C();
  if (v2)
  {
    v45 = v145;
    v46 = *(v27 + 8);
    v46(a1, v145);
    v46(v40, v45);
    result = (v46)(v42, v45);
    goto LABEL_21;
  }

  v48 = v43;
  v49 = v44;
  v134 = v42;
  v135 = a1;
  v128 = v37;
  v129 = 0;
  v127 = v27;
  v52 = *(v27 + 8);
  v50 = v27 + 8;
  v51 = v52;
  v53 = v145;
  v52(v40, v145);
  v54 = objc_opt_self();
  v55 = sub_237C05B6C();
  *&v150 = 0;
  v56 = [v54 propertyListWithData:v55 options:0 format:0 error:&v150];

  v57 = v150;
  if (!v56)
  {
    v81 = v57;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v48, v49);
    v51(v135, v53);
    result = (v51)(v134, v53);
    goto LABEL_21;
  }

  v131 = v48;
  v132 = v49;
  v133 = v50;
  v130 = v51;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v174, &v150);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8AF0();
    v82 = OUTLINED_FUNCTION_6_2();
    *v83 = 0xD000000000000037;
    v83[1] = 0x8000000237C17D40;
    OUTLINED_FUNCTION_23_3(v82, v83);
    swift_willThrow();
    sub_2379E86D4(v131, v132);
    v84 = v135;
LABEL_20:
    v87 = v130;
    v130(v84, v53);
    __swift_destroy_boxed_opaque_existential_1(v174);
    result = v87(v134, v53);
    goto LABEL_21;
  }

  v59 = v172;
  sub_237AC9A74(0x69735F6863746162, 0xEA0000000000657ALL, v172, &v150);
  v60 = 0xD00000000000002BLL;
  v61 = v135;
  if (!v152)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v62 = v172;
  sub_237AC9A74(0x726574695F78616DLL, 0xEE00736E6F697461, v59, &v150);
  if (!v152)
  {
LABEL_17:

    sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
LABEL_19:
    sub_2379E8AF0();
    v85 = OUTLINED_FUNCTION_6_2();
    *v86 = 0xD00000000000003FLL;
    v86[1] = 0x8000000237C17F60;
    OUTLINED_FUNCTION_23_3(v85, v86);
    swift_willThrow();
    sub_2379E86D4(v131, v132);
    v84 = v61;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v63 = v172;
  sub_237AC9A74(0xD000000000000014, 0x8000000237C17EA0, v59, &v150);
  if (!v152)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v125 = v58;
  v64 = _s20PersistentParametersVMa_0();
  v65 = *(v64 + 24);
  v66 = *(v64 + 28);
  v123 = v172;
  v124 = v64;
  v67 = v63;
  v68 = v59;
  v69 = v144;
  *(v144 + v65) = v62;
  *(v69 + v66) = v67;
  v70 = v128;
  OUTLINED_FUNCTION_19_5();
  sub_237C05A2C();
  v126 = v68;
  sub_237AC9A74(0x676E696E69617274, 0xE800000000000000, v68, &v172);
  if (!v173)
  {
    sub_2379D9054(&v172, &qword_27DE9A998, &unk_237C0C100);
    v72 = v127;
    v73 = v143;
    goto LABEL_23;
  }

  v71 = swift_dynamicCast();
  v72 = v127;
  v73 = v143;
  if ((v71 & 1) == 0)
  {
LABEL_23:
    v89 = *(v72 + 16);
    v90 = OUTLINED_FUNCTION_32_1();
    (v89)(v90);
    LOBYTE(v150) = 1;
    *(&v150 + 1) = *v149;
    DWORD1(v150) = *&v149[3];
    *(&v150 + 1) = 44;
    v151 = 0xE100000000000000;
    v152 = 0;
    v153 = 0xE000000000000000;
    v154 = 92;
    v155 = 0xE100000000000000;
    v156 = 1;
    *v157 = *v148;
    *&v157[3] = *&v148[3];
    v158 = 34;
    v159 = 0xE100000000000000;
    v160 = 1;
    *v161 = *v147;
    *&v161[3] = *&v147[3];
    v162 = &unk_284ABEBF0;
    v163 = 10;
    v164 = 0xE100000000000000;
    v165 = 0;
    v166 = 0;
    v167 = 1;
    *v168 = *v146;
    *&v168[3] = *&v146[3];
    v169 = 0;
    v91 = v129;
    MLDataTable.init(contentsOf:options:)(v73, &v150, &v170);
    v92 = v134;
    v129 = v91;
    if (v91)
    {
      sub_2379E86D4(v131, v132);

      v93 = v92;
      v94 = v130;
      v130(v135, v70);
      v94(v68, v70);
      __swift_destroy_boxed_opaque_existential_1(v174);
      result = (v94)(v93, v70);
      goto LABEL_21;
    }

    v143 = v89;
    v95 = v171;
    *v69 = v170;
    *(v69 + 8) = v95;
    *(v69 + 16) = 0x7461506567616D69;
    *(v69 + 24) = 0xE900000000000068;
    OUTLINED_FUNCTION_51_1();
    *(v69 + 32) = v96 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    *(v69 + 40) = 0xE500000000000000;
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  v74 = *(v127 + 16);
  v75 = OUTLINED_FUNCTION_32_1();
  v143 = v76;
  (v76)(v75);
  v77 = v139;
  sub_237A088D0();
  if (__swift_getEnumTagSinglePayload(v77, 1, v142) == 1)
  {

    sub_2379D9054(v77, &qword_27DE9AFC8, &qword_237C0C788);
    sub_2379E8AF0();
    v78 = OUTLINED_FUNCTION_6_2();
    *v79 = 0xD000000000000035;
    v79[1] = 0x8000000237C18010;
    OUTLINED_FUNCTION_23_3(v78, v79);
    swift_willThrow();
    sub_2379E86D4(v131, v132);
    v80 = v130;
    v130(v135, v70);
    v80(v68, v70);
    __swift_destroy_boxed_opaque_existential_1(v174);
    result = (v80)(v134, v70);
    goto LABEL_21;
  }

  v97 = v77;
  v98 = v138;
  sub_237A0B204(v97, v138);
  sub_237A0B204(v98, v69);
  v60 = 0xD00000000000002BLL;
LABEL_27:
  v99 = OUTLINED_FUNCTION_49_0();
  sub_237AC9A74(v99, 0xEA00000000006E6FLL, v126, &v150);
  v100 = v124;
  if (!v152)
  {
    sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
    v102 = v130;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_7_6();
  v101 = swift_dynamicCast();
  v102 = v130;
  if ((v101 & 1) == 0)
  {
LABEL_32:
    v106 = *(v100 + 20);
    swift_storeEnumTagMultiPayload();
    goto LABEL_33;
  }

  (v143)(v141, v134, v53);
  v103 = v137;
  sub_237A09478();
  if (__swift_getEnumTagSinglePayload(v103, 1, v140) == 1)
  {

    sub_2379D9054(v103, &qword_27DE9AFC0, &qword_237C0C780);
    v104 = 0;
    v105 = "ion Classification algorithm.";
    v60 = 0xD000000000000037;
    goto LABEL_38;
  }

  v120 = v103;
  v121 = v136;
  sub_237A0B204(v120, v136);
  v100 = v124;
  sub_237A0B204(v121, v69 + *(v124 + 20));
LABEL_33:
  *(v69 + *(v100 + 32)) = v123;
  v107 = OUTLINED_FUNCTION_47_1();
  sub_237AC9A74(v107, v109 | v108, v126, &v150);

  if (v152)
  {
    OUTLINED_FUNCTION_7_6();
    v110 = swift_dynamicCast();
    v111 = v134;
    if (v110)
    {
      sub_237A050F0(v172, &v150);
      if (v150 != 1)
      {
        sub_2379E86D4(v131, v132);
        v102(v135, v53);
        v102(v128, v53);
        __swift_destroy_boxed_opaque_existential_1(v174);
        result = (v102)(v111, v53);
        goto LABEL_21;
      }

      v105 = "labeled_image_data";
      v104 = 1;
    }

    else
    {
      v105 = "labeled_image_data";
      v104 = 1;
    }

    goto LABEL_40;
  }

  sub_2379D9054(&v150, &qword_27DE9A998, &unk_237C0C100);
  v105 = "labeled_image_data";
  v104 = 1;
LABEL_38:
  v111 = v134;
LABEL_40:
  v112 = v105 | 0x8000000000000000;
  sub_2379E8AF0();
  v113 = OUTLINED_FUNCTION_6_2();
  *v114 = v60;
  v114[1] = v112;
  OUTLINED_FUNCTION_23_3(v113, v114);
  swift_willThrow();
  sub_2379E86D4(v131, v132);
  v102(v135, v53);
  v102(v128, v53);
  __swift_destroy_boxed_opaque_existential_1(v174);
  v102(v111, v53);
  OUTLINED_FUNCTION_5_6();
  v115 = v144;
  result = sub_237A0B150(v144, v116);
  if (v104)
  {
    v117 = *(v124 + 20);
    OUTLINED_FUNCTION_12_6();
    result = sub_237A0B150(v115 + v118, v119);
  }

LABEL_21:
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237A088D0()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v114 - v16;
  v18 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  if (!*(v3 + 16))
  {
    goto LABEL_19;
  }

  v25 = sub_237ACAC78(1684957547, 0xE400000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v25, &v125);
  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_19;
  }

  v120 = v5;
  v5 = v130;
  v27 = v131;
  v28 = v130 == 0x726F746365726964 && v131 == 0xE900000000000079;
  if (v28 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();
    v5 = v120;
    if (!v126)
    {
      v42 = OUTLINED_FUNCTION_2_11();
      v43(v42);
LABEL_34:

LABEL_35:
      sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
      sub_237AC9A74(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, v3, &v125);
      if (v126)
      {
        OUTLINED_FUNCTION_8_5();
        if (OUTLINED_FUNCTION_26_3())
        {
          v5 = 0xEC0000006E6D756CLL;
          v29 = v131;
          v119 = v130;
          OUTLINED_FUNCTION_16_3(0x5F6567616D69);
          if (v126)
          {
            OUTLINED_FUNCTION_8_5();
            if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
            {
LABEL_58:
              v74 = OUTLINED_FUNCTION_2_11();
              v75(v74);

LABEL_59:

              goto LABEL_60;
            }

            v118 = v29;
            v30 = v131;
            v117 = v130;
            v31 = OUTLINED_FUNCTION_48_1();
            OUTLINED_FUNCTION_16_3(v31 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);

            if (v126)
            {
              v116 = v30;
              OUTLINED_FUNCTION_8_5();
              if (OUTLINED_FUNCTION_26_3())
              {
                v32 = v130;
                v115 = v131;
                v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
                v114 = v33[12];
                v5 = (v24 + v33[16]);
                v34 = (v24 + v33[20]);
                sub_237C059BC();

                sub_237C059BC();

                v35 = OUTLINED_FUNCTION_2_11();
                v36(v35);
                v37 = v116;
                *v5 = v117;
                v5[1] = v37;
                v38 = v115;
                *v34 = v32;
                v34[1] = v38;
                OUTLINED_FUNCTION_107();
LABEL_18:
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_25_3();
LABEL_32:
                OUTLINED_FUNCTION_13_3();
                sub_237A0B204(v24, v5);
                v41 = 0;
                goto LABEL_22;
              }

              goto LABEL_58;
            }
          }

          v72 = OUTLINED_FUNCTION_2_11();
          v73(v72);

          goto LABEL_56;
        }

        v52 = OUTLINED_FUNCTION_2_11();
        v53(v52);

        goto LABEL_20;
      }

      v50 = OUTLINED_FUNCTION_2_11();
      v51(v50);

      goto LABEL_34;
    }

LABEL_19:
    v39 = OUTLINED_FUNCTION_2_11();
    v40(v39);
LABEL_20:

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_21_2();
  v46 = v5 == (v45 | 1) && v44 == v27;
  if (v46 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_22_4();

    if (!v126)
    {
      v54 = OUTLINED_FUNCTION_2_11();
      v55(v54);
LABEL_57:
      sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
LABEL_60:
      OUTLINED_FUNCTION_25_3();
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_25_3();
    if (v47)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v57 = v5 == (OUTLINED_FUNCTION_48_1() | 0x5F64656C00000000) && v27 == v56;
  if (v57 || (OUTLINED_FUNCTION_24_4() & 1) != 0)
  {

    OUTLINED_FUNCTION_25_3();
    OUTLINED_FUNCTION_22_4();

    if (!v126)
    {
      v60 = OUTLINED_FUNCTION_2_11();
      v61(v60);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_8_5();
    if (swift_dynamicCast())
    {
LABEL_31:
      sub_237C059BC();

      v48 = OUTLINED_FUNCTION_2_11();
      v49(v48);
      OUTLINED_FUNCTION_107();
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

LABEL_45:
    v58 = OUTLINED_FUNCTION_2_11();
    v59(v58);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_21_2();
  v63 = v5 == 0xD000000000000016 && v62 == v27;
  if (!v63 && (OUTLINED_FUNCTION_24_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_2();
    if (v5 == 0xD000000000000012 && v87 == v27)
    {
    }

    else
    {
      v89 = OUTLINED_FUNCTION_24_4();

      if ((v89 & 1) == 0)
      {
        v90 = OUTLINED_FUNCTION_2_11();
        v91(v90);
        goto LABEL_59;
      }
    }

    (*(v9 + 16))(v14, v1, v6);
    LOBYTE(v125) = 1;
    *(&v125 + 1) = v122;
    OUTLINED_FUNCTION_11_4(1);
    v127 = v129;
    OUTLINED_FUNCTION_56_1(v92);
    *v128 = *(v93 + 154);
    *&v128[3] = *(v93 + 157);
    OUTLINED_FUNCTION_33_1(v94);
    *(v95 + 129) = *(v95 + 147);
    OUTLINED_FUNCTION_52_1(*(v95 + 150));
    MLDataTable.init(contentsOf:options:)(v14, v96, v97);
    v5 = 0xEC0000006E6D756CLL;
    v98 = v130;
    v99 = v131;
    OUTLINED_FUNCTION_16_3(0x5F6567616D69);
    if (v126)
    {
      OUTLINED_FUNCTION_8_5();
      if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
      {
        v112 = OUTLINED_FUNCTION_2_11();
        v113(v112);
        OUTLINED_FUNCTION_62_0();
        goto LABEL_59;
      }

      v100 = v131;
      v119 = v130;
      v101 = OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_16_3(v101 & 0xFFFF0000FFFFFFFFLL | 0x5F6C00000000);

      v102 = OUTLINED_FUNCTION_2_11();
      v103(v102);
      if (v126)
      {
        OUTLINED_FUNCTION_8_5();
        if (OUTLINED_FUNCTION_26_3())
        {
          v104 = v130;
          v105 = v131;
          *v24 = v98;
          *(v24 + 8) = v99;
          *(v24 + 16) = v119;
          *(v24 + 24) = v100;
          *(v24 + 32) = v104;
          *(v24 + 40) = v105;
          OUTLINED_FUNCTION_107();
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_62_0();
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_62_0();
    }

    else
    {
      v110 = OUTLINED_FUNCTION_2_11();
      v111(v110);
      OUTLINED_FUNCTION_62_0();
    }

LABEL_56:

    goto LABEL_57;
  }

  (*(v9 + 16))(v17, v1, v6);
  LOBYTE(v125) = 1;
  *(&v125 + 1) = v129;
  OUTLINED_FUNCTION_11_4(1);
  v127 = *(v64 + 154);
  v65 = *(v64 + 157);
  OUTLINED_FUNCTION_56_1(v66);
  *v128 = *(v67 + 147);
  *&v128[3] = *(v67 + 150);
  OUTLINED_FUNCTION_33_1(v68);
  *(v69 + 129) = *v124;
  OUTLINED_FUNCTION_52_1(*&v124[3]);
  MLDataTable.init(contentsOf:options:)(v17, v70, v71);
  v122 = v130;
  v123 = v131;
  OUTLINED_FUNCTION_50_0();
  sub_2379E0CC4(&v122, v76, v77);
  OUTLINED_FUNCTION_25_3();
  sub_237AC9A74(0xD000000000000011, 0x8000000237C17F20, v3, &v125);
  if (!v126)
  {
LABEL_83:

    v106 = OUTLINED_FUNCTION_2_11();
    v107(v106);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_8_5();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_85;
  }

  v79 = v130;
  v78 = v131;
  v80 = OUTLINED_FUNCTION_48_1();
  sub_237AC9A74(v80 | 0x6F635F6C00000000, 0xEC0000006E6D756CLL, v3, &v125);
  if (!v126)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_8_5();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {

LABEL_85:

    v108 = OUTLINED_FUNCTION_2_11();
    v109(v108);
    OUTLINED_FUNCTION_15_4();
    goto LABEL_21;
  }

  v5 = v130;
  v81 = v131;
  sub_237AC9A74(0x5F65727574616566, 0xEE006E6D756C6F63, v3, &v125);

  v82 = OUTLINED_FUNCTION_2_11();
  v83(v82);
  if (v126)
  {
    OUTLINED_FUNCTION_8_5();
    if (OUTLINED_FUNCTION_26_3())
    {
      v84 = v130;
      v85 = v131;
      v86 = v123;
      v121 = v123;
      *v24 = v122;
      *(v24 + 8) = v86;
      *(v24 + 16) = v79;
      *(v24 + 24) = v78;
      *(v24 + 32) = v5;
      *(v24 + 40) = v81;
      *(v24 + 48) = v84;
      *(v24 + 56) = v85;
      OUTLINED_FUNCTION_107();
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_15_4();
  }

  else
  {
    OUTLINED_FUNCTION_15_4();

    sub_2379D9054(&v125, &qword_27DE9A998, &unk_237C0C100);
  }

  OUTLINED_FUNCTION_25_3();
LABEL_21:
  v41 = 1;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v5, v41, 1, v18);
  OUTLINED_FUNCTION_150();
}

void sub_237A09478()
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFC8, &qword_237C0C788);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_237AC9A74(1684957547, 0xE400000000000000, v2, &v66);
  if (!v69)
  {
    sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v61 = v4;
  v62 = v27;
  v35 = v64;
  v34 = v65;
  v36 = v64 == 1701736302 && v65 == 0xE400000000000000;
  if (!v36 && (OUTLINED_FUNCTION_38_0() & 1) == 0)
  {
    v42 = v35 == 0x756F735F61746164 && v34 == 0xEB00000000656372;
    if (v42 || (OUTLINED_FUNCTION_38_0() & 1) != 0)
    {

      v43 = OUTLINED_FUNCTION_19_5();
      sub_237AC9A74(v43, v44, v2, v45);

      v4 = v61;
      v27 = v62;
      if (!v69)
      {
        v47 = OUTLINED_FUNCTION_9_4();
        v48(v47);
        sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      if (OUTLINED_FUNCTION_26_3())
      {
        v46 = v63;
        (*(v8 + 16))(v13, v63, v5);
        sub_237A088D0();
        (*(v8 + 8))(v46, v5);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
        {
          sub_2379D9054(v19, &qword_27DE9AFC8, &qword_237C0C788);
          v39 = 1;
          v27 = v62;
          goto LABEL_15;
        }

        sub_237A0B204(v19, v26);
        sub_237A0B204(v26, v33);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v35 == 0x74696C7073 && v34 == 0xE500000000000000)
    {
    }

    else
    {
      v50 = OUTLINED_FUNCTION_38_0();

      if ((v50 & 1) == 0)
      {

        v4 = v61;
        v27 = v62;
        goto LABEL_13;
      }
    }

    v51 = OUTLINED_FUNCTION_19_5();
    sub_237AC9A74(v51, v52, v2, v53);

    v27 = v62;
    if (!v69)
    {
      v58 = OUTLINED_FUNCTION_9_4();
      v59(v58);
      sub_2379D9054(&v66, &qword_27DE9A998, &unk_237C0C100);
      v39 = 1;
      v4 = v61;
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    v54 = OUTLINED_FUNCTION_26_3();
    v4 = v61;
    if (v54)
    {
      sub_237A283AC(v64, &v66);
      v55 = OUTLINED_FUNCTION_9_4();
      v56(v55);
      if ((v68 & 1) == 0)
      {
        v57 = v67;
        *v33 = v66;
        *(v33 + 16) = v57;
        *(v33 + 17) = HIBYTE(v57) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v39 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v40 = OUTLINED_FUNCTION_9_4();
    v41(v40);
    goto LABEL_14;
  }

  v37 = OUTLINED_FUNCTION_9_4();
  v38(v37);
  v4 = v61;
LABEL_9:
  v27 = v62;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  sub_237A0B204(v33, v4);
  v39 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v4, v39, 1, v27);
  OUTLINED_FUNCTION_150();
}

void sub_237A09988(uint64_t a1)
{
  v83 = a1;
  v89 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v3 = OUTLINED_FUNCTION_20(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v72[0] = v7 - v6;
  v8 = OUTLINED_FUNCTION_41_0();
  v77 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v8);
  v9 = OUTLINED_FUNCTION_4(v77);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v76 = v13 - v12;
  OUTLINED_FUNCTION_41_0();
  v84 = sub_237C05ADC();
  v14 = OUTLINED_FUNCTION_0(v84);
  v86 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v72[1] = v18 - v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  v78 = v72 - v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v81 = v72 - v23;
  v24 = OUTLINED_FUNCTION_41_0();
  v25 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v24);
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v79 = v29 - v30;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  v33 = v72 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C750;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  sub_237A0A040();
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  *(inited + 48) = v36;
  *(inited + 72) = v37;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v38 = _s20PersistentParametersVMa_0();
  v74 = v38[5];
  sub_237A0B1A8(v1 + v74, v33);
  v39 = *(v1 + v38[6]);
  v85 = *(v1 + v38[7]);
  v40 = v38[8];
  v80 = v1;
  v73 = v40;
  v41 = *(v1 + v40);
  v75 = v25;
  *&v33[*(v25 + 28)] = v41;
  v42 = sub_237A0A6B4();
  sub_237A0B150(v33, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  *(inited + 96) = v42;
  *(inited + 120) = v37;
  *(inited + 128) = 0x69735F6863746162;
  v43 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 144) = v39;
  *(inited + 168) = v43;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  *(inited + 192) = v85;
  *(inited + 216) = v43;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x8000000237C17EA0;
  *(inited + 240) = v41;
  *(inited + 264) = v43;
  *(inited + 272) = 0x687469726F676C61;
  *(inited + 280) = 0xE90000000000006DLL;
  v44 = sub_237A063C4();
  *(inited + 312) = v37;
  *(inited + 288) = v44;
  OUTLINED_FUNCTION_48_2();
  sub_237C085AC();
  v45 = objc_opt_self();
  OUTLINED_FUNCTION_48_2();
  v46 = sub_237C0855C();

  v87 = 0;
  v47 = [v45 dataWithPropertyList:v46 format:200 options:0 error:&v87];

  v48 = v87;
  if (v47)
  {
    v49 = sub_237C05B7C();
    v51 = v50;

    OUTLINED_FUNCTION_21_2();
    v52 = v81;
    sub_237C05A2C();
    v53 = v82;
    sub_237C05B9C();
    if (v53)
    {
      (*(v86 + 8))(v52, v84);
    }

    else
    {
      v55 = *(v86 + 8);
      v56 = v84;
      v86 += 8;
      v55(v52, v84);
      sub_237A0A978();
      v57 = v88;
      if (v88 != 255)
      {
        v85 = v55;
        v82 = v87;
        v88 &= 1u;
        v58 = v78;
        OUTLINED_FUNCTION_19_5();
        sub_237C05A2C();
        MLDataTable.write(to:)(v58);
        v59 = v58;
        v55 = v85;
        v85(v59, v56);
        sub_2379DBC84(v82, v57);
      }

      v61 = v79;
      v60 = v80;
      sub_237A0B1A8(v80 + v74, v79);
      v62 = *(v60 + v73);
      v63 = v76;
      *(v61 + *(v75 + 28)) = v62;
      sub_237A0B1A8(v61, v63);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_13_3();
        v64 = v72[0];
        sub_237A0B204(v63, v72[0]);
        sub_237A0A978();
        OUTLINED_FUNCTION_5_6();
        sub_237A0B150(v64, v65);
        v66 = v87;
        v67 = v88;
      }

      else
      {
        v66 = 0;
        v67 = 255;
      }

      OUTLINED_FUNCTION_12_6();
      sub_237A0B150(v79, v68);
      if (v67 != 255)
      {
        v87 = v66;
        v88 = v67 & 1;
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_49_0();
        v70 = v69;
        sub_237C05A2C();
        MLDataTable.write(to:)(v70);
        v55(v70, v84);
        sub_2379E86D4(v49, v51);
        sub_2379DBC84(v66, v67);
        goto LABEL_13;
      }
    }

    sub_2379E86D4(v49, v51);
  }

  else
  {
    v54 = v48;
    sub_237C0593C();

    swift_willThrow();
  }

LABEL_13:
  v71 = *MEMORY[0x277D85DE8];
}

void sub_237A0A040()
{
  OUTLINED_FUNCTION_153();
  v0 = sub_237C05ADC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v89 - v10;
  v12 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = OUTLINED_FUNCTION_11_5();
  sub_237A0B1A8(v19, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = *(v3 + 32);
      v58 = OUTLINED_FUNCTION_25_4();
      v59(v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      OUTLINED_FUNCTION_80();
      v49 = MEMORY[0x277D837D0];
      v50[6] = 0xD000000000000013;
      v50[7] = v60;
      goto LABEL_7;
    case 2u:
      v45 = *(v3 + 32);
      v46 = OUTLINED_FUNCTION_25_4();
      v47(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v49 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_51_1();
      v50[6] = v52 | 0x5F64656C00000000;
      v50[7] = 0xED000073656C6966;
LABEL_7:
      v50[9] = v49;
      v50[10] = 1752457584;
      v50[11] = v51;
      v61 = sub_237C05A9C();
      inited[7].n128_u64[1] = v49;
      inited[6].n128_u64[0] = v61;
      inited[6].n128_u64[1] = v62;
      sub_237C085AC();
      (*(v3 + 8))(v11, v0);
      break;
    case 3u:
      v11 = *(v18 + 16);
      v8 = *(v18 + 24);
      v53 = *(v18 + 32);
      v54 = *(v18 + 40);
      v55 = *(v18 + 48);
      v56 = *(v18 + 56);
      sub_2379DBC9C(*v18, *(v18 + 8));
      goto LABEL_9;
    case 4u:
      v11 = *(v18 + 16);
      v8 = *(v18 + 24);
      v43 = *(v18 + 32);
      v44 = *(v18 + 40);
      sub_2379DBC9C(*v18, *(v18 + 8));
      goto LABEL_11;
    case 5u:
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v64 = OUTLINED_FUNCTION_31_2(v63);
      v53 = *v65;
      v54 = v65[1];
      v66 = (v18 + *(v64 + 80));
      v55 = *v66;
      v56 = v66[1];
      v67 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v67);
      (*(v68 + 8))(v18);
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v69 = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(v69, xmmword_237C0BC00);
      OUTLINED_FUNCTION_80();
      *(v70 + 48) = 0xD000000000000016;
      *(v70 + 56) = v71;
      OUTLINED_FUNCTION_80();
      v72[9] = v73;
      v72[10] = v74;
      v72[11] = v75;
      v72[12] = v11;
      v72[13] = v8;
      OUTLINED_FUNCTION_51_1();
      *(v77 + 120) = v78;
      *(v77 + 128) = v76 | 0x6F635F6C00000000;
      *(v77 + 136) = 0xEC0000006E6D756CLL;
      *(v77 + 144) = v53;
      *(v77 + 152) = v54;
      *(v77 + 168) = v78;
      strcpy((v77 + 176), "feature_column");
      *(v77 + 216) = v78;
      *(v77 + 191) = -18;
      *(v77 + 192) = v55;
      *(v77 + 200) = v56;
      goto LABEL_12;
    case 6u:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      OUTLINED_FUNCTION_31_2(v79);
      v43 = *v80;
      v44 = v80[1];
      v81 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v81);
      (*(v82 + 8))(v18);
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v83 = swift_initStackObject();
      OUTLINED_FUNCTION_0_8(v83, xmmword_237C0B680);
      OUTLINED_FUNCTION_80();
      *(v84 + 48) = 0xD000000000000012;
      *(v84 + 56) = v85;
      OUTLINED_FUNCTION_40_3();
      *(v86 + 72) = v87;
      *(v86 + 80) = v88;
      *(v86 + 88) = 0xEC0000006E6D756CLL;
      *(v86 + 96) = v11;
      *(v86 + 104) = v8;
      *(v86 + 120) = v87;
      strcpy((v86 + 128), "label_column");
      *(v86 + 168) = v87;
      *(v86 + 141) = 0;
      *(v86 + 142) = -5120;
      *(v86 + 144) = v43;
      *(v86 + 152) = v44;
LABEL_12:
      sub_237C085AC();
      break;
    default:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v21 = v20[12];
      v22 = (v18 + v20[16]);
      v24 = *v22;
      v23 = v22[1];
      v25 = (v18 + v20[20]);
      v27 = *v25;
      v26 = v25[1];
      v91 = v27;
      v89 = v23;
      v90 = v26;
      v28 = *(v3 + 32);
      v29 = OUTLINED_FUNCTION_25_4();
      v28(v29);
      (v28)(v8, v18 + v21, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v30 = swift_initStackObject();
      v31 = OUTLINED_FUNCTION_0_8(v30, xmmword_237C0C6C0);
      v32 = MEMORY[0x277D837D0];
      v31[3].n128_u64[0] = 0x726F746365726964;
      v31[3].n128_u64[1] = 0xE900000000000079;
      v31[4].n128_u64[1] = v32;
      v31[5].n128_u64[0] = 1752457584;
      v31[5].n128_u64[1] = v33;
      v30[6].n128_u64[0] = sub_237C05A9C();
      v30[6].n128_u64[1] = v34;
      v30[7].n128_u64[1] = v32;
      v30[8].n128_u64[0] = 0x697461746F6E6E61;
      v30[8].n128_u64[1] = 0xEF656C69665F6E6FLL;
      v30[10].n128_u64[1] = v0;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30[9]);
      (*(v3 + 16))(boxed_opaque_existential_0, v8, v0);
      OUTLINED_FUNCTION_40_3();
      v30[11].n128_u64[0] = v36;
      v30[11].n128_u64[1] = 0xEC0000006E6D756CLL;
      v37 = v89;
      v30[12].n128_u64[0] = v24;
      v30[12].n128_u64[1] = v37;
      OUTLINED_FUNCTION_51_1();
      v30[13].n128_u64[1] = v32;
      v30[14].n128_u64[0] = v38 | 0x6F635F6C00000000;
      v30[16].n128_u64[1] = v32;
      v39 = v90;
      v40 = v91;
      v30[14].n128_u64[1] = v41;
      v30[15].n128_u64[0] = v40;
      v30[15].n128_u64[1] = v39;
      sub_237C085AC();
      v42 = *(v3 + 8);
      v42(v8, v0);
      v42(v11, v0);
      break;
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A0A6B4()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v3 = OUTLINED_FUNCTION_20(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_237A0B1A8(v1, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = *v15;
    v24 = *(v15 + 8);
    v25 = *(v15 + 16);
    v26 = *(v15 + 17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    v28 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
    OUTLINED_FUNCTION_34_0(v28, 0x74696C7073);
    v29 = sub_237A28200();
    inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    inited[6].n128_u64[0] = v29;
    return sub_237C085AC();
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v30 = swift_initStackObject();
    v31 = OUTLINED_FUNCTION_0_8(v30, xmmword_237C0B660);
    v31[4].n128_u64[1] = MEMORY[0x277D837D0];
    v31[3].n128_u64[0] = 1701736302;
    v31[3].n128_u64[1] = v32;
    return sub_237C085AC();
  }

  sub_237A0B204(v15, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v17 = swift_initStackObject();
  v18 = OUTLINED_FUNCTION_0_8(v17, xmmword_237C0B670);
  OUTLINED_FUNCTION_34_0(v18, 0x756F735F61746164);
  sub_237A0A040();
  v20 = v19;
  v17[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v17[6].n128_u64[0] = v20;
  v21 = sub_237C085AC();
  OUTLINED_FUNCTION_5_6();
  sub_237A0B150(v8, v22);
  return v21;
}

void sub_237A0A978()
{
  OUTLINED_FUNCTION_153();
  v108 = 0;
  v109 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v2 = OUTLINED_FUNCTION_0(v1);
  v103 = v3;
  v104 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v101 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v102 = v12;
  OUTLINED_FUNCTION_41_0();
  v13 = sub_237C0602C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v105 = v15;
  v106 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v97 - v22;
  v107 = sub_237C05DBC();
  v24 = OUTLINED_FUNCTION_0(v107);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_0();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v97 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v97 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v97 - v39;
  v41 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v42 = OUTLINED_FUNCTION_4(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_0();
  v47 = v46 - v45;
  v48 = OUTLINED_FUNCTION_11_5();
  sub_237A0B1A8(v48, v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v49 = sub_237C05ADC();
      OUTLINED_FUNCTION_4(v49);
      (*(v50 + 8))(v47);
      goto LABEL_12;
    case 3u:
      v61 = *v47;
      v62 = *(v47 + 8);
      v63 = *(v47 + 24);
      v64 = *(v47 + 40);
      v65 = *(v47 + 56);

      v112 = v61;
      v113 = v62;
      sub_2379DBCF4(v61, v62);
      OUTLINED_FUNCTION_50_0();
      v66 = v108;
      sub_2379E0CC4(&v112, v67, 0xE900000000000073);
      if (v66)
      {
      }

      sub_2379DBC9C(v61, v62);
      goto LABEL_16;
    case 4u:
      v51 = *v47;
      v52 = *(v47 + 8);
      v53 = *(v47 + 24);
      v54 = *(v47 + 40);

      v55 = v109;
      *v109 = v51;
      *(v55 + 8) = v52;
      goto LABEL_22;
    case 5u:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      OUTLINED_FUNCTION_29_2(v68[12]);
      OUTLINED_FUNCTION_29_2(v68[16]);
      v69 = (v47 + v68[20]);
      v70 = *v69;
      v71 = v69[1];
      v72 = v26;
      v73 = v70;
      v100 = v72;
      v74 = v107;
      (*(v72 + 32))(v40, v47, v107);
      v75 = v71;
      sub_237C05DFC();
      v76 = sub_237C05FFC();
      v77 = *(v105 + 8);
      v77(v23, v106);
      if (v76 == MEMORY[0x277D837D0])
      {
        v98 = v77;
        v86 = v101;
        sub_237C05DEC();
        v87 = v102;
        v99 = v73;
        v80 = v108;
        sub_237B62FE0(v102);
        if (v80)
        {
          v78 = v99;

          (*(v103 + 8))(v86, v104);
          __swift_storeEnumTagSinglePayload(v87, 1, 1, v106);
          sub_2379D9054(v87, &qword_27DE9AF88, &unk_237C0C700);
          v80 = 0;
        }

        else
        {
          (*(v103 + 8))(v86, v104);
          v90 = v106;
          __swift_storeEnumTagSinglePayload(v87, 0, 1, v106);
          v91 = v105;
          (*(v105 + 32))(v20, v87, v90);
          (*(v91 + 16))(v23, v20, v90);

          v78 = v99;
          sub_237C05E0C();
          v98(v20, v90);
        }

        v79 = v109;
        v74 = v107;
        v75 = v71;
      }

      else
      {
        v78 = v73;
        v80 = v108;
        v79 = v109;
      }

      (*(v100 + 16))(v38, v40, v74);
      sub_237A70684(v38, 0, &v110);
      if (v80)
      {

        v92 = OUTLINED_FUNCTION_30_3();
        v93(v92);
        *v79 = 0;
        *(v79 + 8) = -1;
      }

      else
      {
        v112 = v110;
        v113 = v111;
        sub_2379E0CC4(&v112, v78, v75);
        v94 = OUTLINED_FUNCTION_30_3();
        v95(v94);

        v96 = v113;
        *v79 = v112;
        *(v79 + 8) = v96;
      }

      goto LABEL_22;
    case 6u:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      OUTLINED_FUNCTION_29_2(*(v81 + 48));
      OUTLINED_FUNCTION_29_2(*(v81 + 64));
      v82 = v26;
      v83 = v107;
      (*(v26 + 32))(v35, v47, v107);
      (*(v26 + 16))(v31, v35, v83);
      v84 = v108;
      sub_237A70684(v31, 0, &v112);
      if (v84)
      {

        (*(v82 + 8))(v35, v83);
LABEL_12:
        v85 = v109;
        *v109 = 0;
        *(v85 + 8) = -1;
      }

      else
      {
        (*(v82 + 8))(v35, v83);
LABEL_16:
        v88 = v113;
        v89 = v109;
        *v109 = v112;
        *(v89 + 8) = v88;
      }

LABEL_22:
      OUTLINED_FUNCTION_150();
      return;
    default:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v57 = v56[12];
      OUTLINED_FUNCTION_29_2(v56[16]);
      OUTLINED_FUNCTION_29_2(v56[20]);
      v58 = sub_237C05ADC();
      OUTLINED_FUNCTION_4(v58);
      v60 = *(v59 + 8);
      v60(v47 + v57, v58);
      v60(v47, v58);
      goto LABEL_12;
  }
}

uint64_t sub_237A0B150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237A0B1A8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237A0B204(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t result)
{
  v2 = (v1 + *(result + 48));
  v3 = *v2;
  v4 = v2[1];
  v5 = v1 + *(result + 64);
  return result;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
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
    sub_237A61074(a1);
    return sub_237A0B634(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A0B414@<X0>(uint64_t a1@<X8>)
{
  result = MLDecisionTreeRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A0B458(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
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
  sub_237A0B690(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v0, &v2, &qword_27DE9A998, &unk_237C0C100);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A0B634(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A0B690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLDecisionTreeRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLDecisionTreeRegressor.ModelParameters.validationData.getter(a1);
  return sub_237A0B73C;
}

void sub_237A0B73C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237A0B7D0(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A0BA6C(a1, v5);
  return MLDecisionTreeRegressor.ModelParameters.validation.setter(v5);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A0B690(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLDecisionTreeRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v5 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
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
    return sub_237A0B9AC;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A0B9AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A0BA6C((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A0B690(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A0B634(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A0B690(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_237A0BA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  sub_237A0BA6C(a1, v17 - v16);
  v21[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_237A0B690(v18, boxed_opaque_existential_0);
  sub_237A0B634(a1);
  return sub_2379DAE54(v21, a4);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeRegressor.ModelParameters.validationData.setter(&v9);
}

uint64_t sub_237A0BCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AFD0, &qword_237C0C870);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - v18;
  v20 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  sub_237C0718C();
  *(a3 + 40) = v27;
  sub_237C0716C();
  *(a3 + 48) = v28;
  *(a3 + 56) = sub_237C070AC();
  v35 = a2;
  sub_2379D8FF4(a2, v15, &qword_27DE9A9A0, &qword_237C0BF60);
  v29 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) != 1)
  {
    (*(v7 + 32))(v11, v15, v6);
    (*(v7 + 16))(v19, v11, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v11, v6);
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v29, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_2379D9054(v19, &qword_27DE9AFD0, &qword_237C0C870);
    }
  }

  else
  {
    sub_237A0B690(v19, v26);
  }

  v36[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  sub_237A0B690(v26, boxed_opaque_existential_0);
  sub_2379D9054(v35, &qword_27DE9A9A0, &qword_237C0BF60);
  v31 = sub_237C071DC();
  OUTLINED_FUNCTION_4(v31);
  (*(v32 + 8))(a1);
  return sub_2379DAE54(v36, a3);
}

uint64_t MLDecisionTreeRegressor.ModelParameters.description.getter()
{
  v6[2] = 0x747065442078614DLL;
  v6[3] = 0xEB00000000203A68;
  v6[0] = v0[4];
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  v2 = v0[5];
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C16E40);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();

  strcpy(v6, "Random Seed: ");
  HIWORD(v6[1]) = -4864;
  v5 = v0[7];
  v3 = sub_237C0924C();
  MEMORY[0x2383DC360](v3);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v6[0], v6[1]);

  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeRegressor.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLDecisionTreeRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237A0C2A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_237A0C2F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_237C08A8C();
}

void __swiftcall MLModelMetadata.init(author:shortDescription:license:version:additional:)(CreateML::MLModelMetadata *__return_ptr retstr, Swift::String author, Swift::String shortDescription, Swift::String_optional license, Swift::String version, Swift::OpaquePointer_optional additional)
{
  retstr->author = author;
  retstr->shortDescription = shortDescription;
  retstr->license = license;
  retstr->version = version;
  retstr->additional.value._rawValue = additional.value._rawValue;
}

uint64_t MLModelMetadata.author.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLModelMetadata.author.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MLModelMetadata.shortDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLModelMetadata.shortDescription.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MLModelMetadata.license.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLModelMetadata.license.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MLModelMetadata.version.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLModelMetadata.version.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MLModelMetadata.additional.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_237A0C604(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_237A0C644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237A0C6B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C06D3C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A0C754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06D3C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressor()
{
  result = qword_27DE9AFD8;
  if (!qword_27DE9AFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A0C820()
{
  sub_2379FC328();
  if (v0 <= 0x3F)
  {
    sub_237A0C8CC();
    if (v1 <= 0x3F)
    {
      sub_237C06D3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237A0C8CC()
{
  if (!qword_27DE9AFE8)
  {
    sub_237A0C928();
    v0 = type metadata accessor for FeatureVectorizer();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9AFE8);
    }
  }
}

unint64_t sub_237A0C928()
{
  result = qword_27DE9AFF0;
  if (!qword_27DE9AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AFF0);
  }

  return result;
}

BOOL sub_237A0C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_237C093CC();
  sub_237C0878C();
  v7 = sub_237C0940C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
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

    v14 = sub_237C0929C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_237A0CAB0()
{
  OUTLINED_FUNCTION_74();
  v105 = v2;
  v106 = v3;
  v101 = v4;
  v6 = v5;
  v98 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v102 = v12;
  v107 = sub_237C05DBC();
  v13 = OUTLINED_FUNCTION_0(v107);
  v103 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v100 = v18 - v17;
  v95 = sub_237C0701C();
  v19 = OUTLINED_FUNCTION_0(v95);
  v97 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v99 = (v23 - v24);
  v26 = MEMORY[0x28223BE20](v25);
  v94 = &v83 - v27;
  MEMORY[0x28223BE20](v26);
  v96 = &v83 - v28;
  v29 = sub_237C0602C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v108 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v38 = OUTLINED_FUNCTION_0(v37);
  v104 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18_0();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v83 - v46;
  v48 = v0[3];
  v49 = v0[4];
  v50 = v0[5];
  v109[2] = v6;
  v51 = sub_2379E22EC(sub_237A20D00, v109, v48);
  if (v1)
  {
    goto LABEL_8;
  }

  v93 = v36;
  v90 = v44;
  v91 = v37;
  v92 = v0;
  v52 = v51;

  OUTLINED_FUNCTION_4_9();
  sub_237A0D328();
  v86 = v49;
  v88 = v52;
  v89 = v50;
  v54 = v92;
  v53 = v93;
  v55 = v92[1];
  v84 = *v92;
  v85 = v55;
  sub_237C05DFC();
  sub_237B6301C();
  v57 = v56;
  v58 = *(v108 + 8);
  v108 += 8;
  v83 = v58;
  v58(v53, v29);
  v87 = v57;
  if (v57)
  {
    v59 = v102;
    sub_2379D8FF4(v101, v102, &qword_27DE9A9A0, &qword_237C0BF60);
    v60 = v107;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v107);
    v62 = v103;
    v63 = v104;
    if (EnumTagSinglePayload == 1)
    {
      sub_2379D9054(v59, &qword_27DE9A9A0, &qword_237C0BF60);
      v64 = v54 + *(type metadata accessor for TreeRegressor() + 28);
      v65 = v99;
      sub_237C06D1C();
      (*(v63 + 8))(v47, v91);

      v66 = v65;
      v68 = v97;
      v67 = v98;
      v69 = v95;
      v70 = v96;
LABEL_7:
      v79 = *(v68 + 32);
      v79(v70, v66, v69);
      v80 = type metadata accessor for TreeRegressorModel();
      v79(&v67[*(v80 + 24)], v70, v69);
      v81 = v85;
      *v67 = v84;
      *(v67 + 1) = v81;
      v82 = v86;
      *(v67 + 2) = v88;
      *(v67 + 3) = v82;
      *(v67 + 4) = v89;

LABEL_8:
      OUTLINED_FUNCTION_73();
      return;
    }

    v101 = v47;
    (*(v103 + 32))(v100, v59, v60);
    OUTLINED_FUNCTION_4_9();
    sub_237A0D328();
    v71 = v93;
    sub_237C05DFC();
    sub_237B6301C();
    v73 = v72;
    v83(v71, v29);
    if (v73)
    {
      v74 = v54 + *(type metadata accessor for TreeRegressor() + 28);
      v75 = v90;
      sub_237C06D0C();
      v68 = v97;
      v67 = v98;
      v69 = v95;
      v70 = v96;

      v76 = v75;
      v77 = v91;
      v78 = *(v104 + 8);
      v78(v76, v91);
      (*(v62 + 8))(v100, v107);
      v78(v101, v77);
      v66 = v94;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237A0D1F4()
{
  v1 = *v0;
  v2 = v0[1];

  OUTLINED_FUNCTION_37_2();

  return sub_237C05FCC();
}

uint64_t sub_237A0D24C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B260, &qword_237C0CB18);
  v5 = sub_237C05FBC();
  v7 = v6;
  (*(*(v4 - 8) + 8))(a1, v4);
  v8 = v2[1];

  *v2 = v5;
  v2[1] = v7;
  return result;
}

void sub_237A0D328()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = *(v3 + 16);
  v15 = MEMORY[0x277D84F90];
  v25 = v3;
  if (v14)
  {
    v22 = v8;
    v23 = v5;
    sub_237AC8A74();
    v16 = (v3 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_237AC8A74();
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v16 += 4;
      --v14;
    }

    while (v14);
    v8 = v22;
    v5 = v23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_2379D9224(&qword_27DE9B048, &qword_27DE9AE60, &qword_237C0D000);
  sub_237C05D9C();

  v1(v25, v24 & 1);
  (*(v8 + 8))(v13, v5);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A0D520(uint64_t a1, uint64_t a2)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B020, &qword_237C10E50);
  sub_237A0DF54();
  result = sub_237C06CAC();
  if (!v2)
  {
    v6 = *(type metadata accessor for TreeRegressorModel() + 24);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = OUTLINED_FUNCTION_34_1();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    sub_237C0701C();
    OUTLINED_FUNCTION_39_2();
    sub_237A0E004(v11, v12);
    return sub_237C06CAC();
  }

  return result;
}

void sub_237A0D63C()
{
  OUTLINED_FUNCTION_74();
  v20 = v2;
  v21 = v0;
  v4 = v3;
  v5 = sub_237C0701C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v19 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v25 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B008, &qword_237C0C9B8);
  v12 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
  sub_2379D9224(&qword_27DE9B010, &qword_27DE9B008, &qword_237C0C9B8);
  sub_237C06C9C();
  if (!v1)
  {
    v13 = *(v4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
    OUTLINED_FUNCTION_39_2();
    sub_237A0E004(v14, v15);
    sub_237C06C9C();
    v17 = *v0;
    v16 = v21[1];
    v18 = type metadata accessor for TreeRegressorModel();
    (*(v19 + 32))(&v20[*(v18 + 24)], v25, v5);
    *v20 = v17;
    *(v20 + 1) = v16;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
  }

  OUTLINED_FUNCTION_73();
}

void (*sub_237A0D840(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B260, &qword_237C0CB18);
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

void sub_237A0D94C(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (v6[2])((*a1)[3], v3, v7);
    v9 = sub_237C05FBC();
    v11 = v10;
    v12 = v6[1];
    v12(v5, v7);

    *v8 = v9;
    v8[1] = v11;
    v12(v3, v7);
  }

  else
  {
    v13 = (*a1)[1];
    v14 = sub_237C05FBC();
    v16 = v15;
    (v6[1])(v3, v7);

    *v8 = v14;
    v8[1] = v16;
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_237A0DA68()
{
  sub_237A0CAB0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237A0DB6C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(type metadata accessor for TreeRegressor() + 28);
  v6 = *(type metadata accessor for TreeRegressorModel() + 24);

  result = sub_237C06CFC();
  *a1 = v4;
  a1[1] = v3;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

void sub_237A0DBD8()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v39 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_237C0602C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v40 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  OUTLINED_FUNCTION_0(v17);
  v38 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  if (v8[2])
  {
    v25 = v8[3];
    v26 = v8[4];
  }

  else
  {
    v37 = v3;
    v33 = v0[2];
    MEMORY[0x28223BE20](v22);
    *(&v36 - 2) = v6;
    v35 = sub_2379E22EC(sub_237A1DC7C, (&v36 - 4), v34);
    if (v1)
    {
      goto LABEL_7;
    }

    v8[2] = v35;
    v8[3] = 0xD000000000000013;
    v8[4] = 0x8000000237C17BE0;
    v3 = v37;
  }

  OUTLINED_FUNCTION_4_9();
  sub_237A0D328();
  if (v1)
  {
LABEL_7:
    OUTLINED_FUNCTION_73();
    return;
  }

  v36 = v17;
  v37 = v3;
  v27 = *v0;
  v28 = v0[1];
  sub_237C05DFC();
  sub_237B6301C();
  v30 = v29;
  (*(v40 + 8))(v16, v9);
  if (v30)
  {
    v31 = *(type metadata accessor for TreeRegressor() + 28);
    v32 = *(type metadata accessor for TreeRegressorModel() + 24);
    sub_237C06D2C();
    (*(v38 + 8))(v24, v36);

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_237A0DE5C()
{
  sub_237A0DBD8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_237A0DF54()
{
  result = qword_27DE9B028;
  if (!qword_27DE9B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B020, &qword_237C10E50);
    sub_2379D9224(&qword_27DE9B030, &qword_27DE9B008, &qword_237C0C9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B028);
  }

  return result;
}

uint64_t sub_237A0E004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237A0E04C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v41 = sub_237C0602C();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
  v10 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v12 = (&v36 - v11);
  v43 = v3;
  v13 = sub_237C05D3C();

  sub_237A0E884(v13, a1, a2, v12);
  v14 = 0;
  v15 = 0;
  v42 = a1;
  v44 = *(a1 + 16);
  v45 = v12;
  v40 = (v6 + 8);
  while (2)
  {
    if (v44 == v15)
    {
      v31 = *(v37 + 44);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
      (*(*(v32 - 8) + 16))(v38, v12 + v31, v32);
      return sub_2379D9054(v12, &qword_27DE9B050, &qword_237C0C9C0);
    }

    v16 = *(v42 + v14 + 32);
    v17 = *(v42 + v14 + 40);
    v18 = *(v42 + v14 + 48);
    v19 = *(v42 + v14 + 56);

    sub_237A1E09C(v18, v19);
    sub_237C05DFC();
    if (v15 >= *(*v12 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      JUMPOUT(0x237A0E44CLL);
    }

    v20 = v12[1];
    if (v15 >= *(v20 + 16))
    {
      goto LABEL_23;
    }

    v21 = *v12 + v14;
    v22 = *(v21 + 40);
    v23 = *(v21 + 48);
    v24 = *(v21 + 56);
    v25 = v20 + 8 * v15;
    v26 = *(v25 + 32);
    switch(v24)
    {
      case 4:
        v39 = *(v21 + 40);

        sub_237A1E09C(v23, 4);
        v30 = v46;
        sub_237A0FEBC(v9, v23, v26);
        v46 = v30;
        if (!v30)
        {
          goto LABEL_14;
        }

        v33 = v23;
        v34 = 4;
        goto LABEL_19;
      case 5:
        v39 = *(v21 + 40);

        sub_237A1E09C(v23, 5);
        v28 = v46;
        sub_237A11974();
        v46 = v28;
        if (!v28)
        {
LABEL_14:

          sub_237A1E0B0(v23, v24);
          v12 = v45;
LABEL_15:

          sub_237A1E0B0(v18, v19);
          (*v40)(v9, v41);
          v14 += 32;
          ++v15;
          continue;
        }

        v33 = v23;
        v34 = 5;
LABEL_19:
        sub_237A1E0B0(v33, v34);
        v12 = v45;
LABEL_20:

        sub_237A1E0B0(v18, v19);
        (*v40)(v9, v41);
        return sub_2379D9054(v12, &qword_27DE9B050, &qword_237C0C9C0);
      case 6:
        v29 = *(v25 + 32);
        if (v23)
        {
          v12 = v45;
          v27 = v46;
          sub_237A11F5C(v9, v29);
        }

        else
        {
          v12 = v45;
          v27 = v46;
          sub_237A0ED14(v9, v29);
        }

        goto LABEL_7;
      default:
        v12 = v45;
        v27 = v46;
        sub_237A13104(v9, *(v21 + 48), *(v25 + 32));
LABEL_7:
        v46 = v27;
        if (v27)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
    }
  }
}

uint64_t sub_237A0E468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v41 = sub_237C0602C();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
  v10 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v12 = (&v36 - v11);
  v43 = v3;
  v13 = sub_237C05D3C();

  sub_237A0EACC(v13, a1, a2, v12);
  v14 = 0;
  v15 = 0;
  v42 = a1;
  v44 = *(a1 + 16);
  v45 = v12;
  v40 = (v6 + 8);
  while (2)
  {
    if (v44 == v15)
    {
      v31 = *(v37 + 44);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
      (*(*(v32 - 8) + 16))(v38, v12 + v31, v32);
      return sub_2379D9054(v12, &qword_27DE9B218, &qword_237C0CAF0);
    }

    v16 = *(v42 + v14 + 32);
    v17 = *(v42 + v14 + 40);
    v18 = *(v42 + v14 + 48);
    v19 = *(v42 + v14 + 56);

    sub_237A1E09C(v18, v19);
    sub_237C05DFC();
    if (v15 >= *(*v12 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      JUMPOUT(0x237A0E868);
    }

    v20 = v12[1];
    if (v15 >= *(v20 + 16))
    {
      goto LABEL_23;
    }

    v21 = *v12 + v14;
    v22 = *(v21 + 40);
    v23 = *(v21 + 48);
    v24 = *(v21 + 56);
    v25 = v20 + 8 * v15;
    v26 = *(v25 + 32);
    switch(v24)
    {
      case 4:
        v39 = *(v21 + 40);

        sub_237A1E09C(v23, 4);
        v30 = v46;
        sub_237A10C18(v9, v23, v26);
        v46 = v30;
        if (!v30)
        {
          goto LABEL_14;
        }

        v33 = v23;
        v34 = 4;
        goto LABEL_19;
      case 5:
        v39 = *(v21 + 40);

        sub_237A1E09C(v23, 5);
        v28 = v46;
        sub_237A11974();
        v46 = v28;
        if (!v28)
        {
LABEL_14:

          sub_237A1E0B0(v23, v24);
          v12 = v45;
LABEL_15:

          sub_237A1E0B0(v18, v19);
          (*v40)(v9, v41);
          v14 += 32;
          ++v15;
          continue;
        }

        v33 = v23;
        v34 = 5;
LABEL_19:
        sub_237A1E0B0(v33, v34);
        v12 = v45;
LABEL_20:

        sub_237A1E0B0(v18, v19);
        (*v40)(v9, v41);
        return sub_2379D9054(v12, &qword_27DE9B218, &qword_237C0CAF0);
      case 6:
        v29 = *(v25 + 32);
        if (v23)
        {
          v12 = v45;
          v27 = v46;
          sub_237A12830(v9, v29);
        }

        else
        {
          v12 = v45;
          v27 = v46;
          sub_237A0F5E8(v9, v29);
        }

        goto LABEL_7;
      default:
        v12 = v45;
        v27 = v46;
        sub_237A13B6C(v9, *(v21 + 48), *(v25 + 32));
LABEL_7:
        v46 = v27;
        if (v27)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
    }
  }
}

uint64_t sub_237A0E884@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result;
  *a4 = a2;
  *(a4 + 16) = a3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v28 = result;

    v8 = 0;
    v9 = (a2 + 56);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v9 - 2);
      v11 = *(v9 - 1);
      v13 = *v9;

      sub_237A1E09C(v11, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0EB4(0, *(v10 + 16) + 1, 1, v10);
        v10 = v18;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_237BC0EB4(v14 > 1, v15 + 1, 1, v10);
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v8;
      v16 = sub_237B98FFC(v11, v13);

      result = sub_237A1E0B0(v11, v13);
      v17 = __OFADD__(v8, v16);
      v8 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_24;
      }

      v9 += 32;
      --v6;
    }

    while (v6);

    *(a4 + 8) = v10;
    if (a3)
    {
      v20 = v8;
      v4 = v28;
      goto LABEL_13;
    }

    v21 = 0;
    v20 = v8;
    v4 = v28;
  }

  else
  {
    *(a4 + 8) = MEMORY[0x277D84F90];
    if (a3)
    {
      v20 = 0;
LABEL_13:
      if (__OFADD__(v20, 1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }
  }

  LODWORD(v29[0]) = 0;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0) + 44);
  sub_237A0C928();
  result = sub_237C06A8C();
  if (!v21)
  {
    return result;
  }

  if (v4 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v23 = 0;
    do
    {
      v24 = v23 + 1;
      v25 = sub_237A1F7FC(v29, v23, v20);
      *v26 = 1065353216;
      result = v25(v29, 0);
      v23 = v24;
    }

    while (v4 != v24);
  }

  return result;
}

uint64_t sub_237A0EACC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result;
  *a4 = a2;
  *(a4 + 16) = a3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v28 = result;

    v8 = 0;
    v9 = (a2 + 56);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v9 - 2);
      v11 = *(v9 - 1);
      v13 = *v9;

      sub_237A1E09C(v11, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0EB4(0, *(v10 + 16) + 1, 1, v10);
        v10 = v18;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_237BC0EB4(v14 > 1, v15 + 1, 1, v10);
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v8;
      v16 = sub_237B98FFC(v11, v13);

      result = sub_237A1E0B0(v11, v13);
      v17 = __OFADD__(v8, v16);
      v8 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_24;
      }

      v9 += 32;
      --v6;
    }

    while (v6);

    *(a4 + 8) = v10;
    if (a3)
    {
      v20 = v8;
      v4 = v28;
      goto LABEL_13;
    }

    v21 = 0;
    v20 = v8;
    v4 = v28;
  }

  else
  {
    *(a4 + 8) = MEMORY[0x277D84F90];
    if (a3)
    {
      v20 = 0;
LABEL_13:
      if (__OFADD__(v20, 1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }
  }

  v29[0] = 0;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0) + 44);
  sub_237A20BBC();
  result = sub_237C06A8C();
  if (!v21)
  {
    return result;
  }

  if (v4 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v23 = 0;
    do
    {
      v24 = v23 + 1;
      v25 = sub_237A1F930(v29, v23, v20);
      *v26 = 0x3FF0000000000000;
      result = v25(v29, 0);
      v23 = v24;
    }

    while (v4 != v24);
  }

  return result;
}

uint64_t sub_237A0ED14(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B058, &qword_237C0C9C8);
  v54 = *(v55 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B068, &qword_237C0C9D8);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v68 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B080, &qword_237C0C9F0);
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v52 - v31;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A147D8(v32, v73, &qword_27DE9AB98, &unk_237C0B900);
    return (*(v29 + 8))(v32, v28);
  }

  v34 = v72;
  v35 = v73;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A145D4(v27, v35);
    return (*(v34 + 8))(v27, v24);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14680(v23, v35);
    return (*(v71 + 8))(v23, v20);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v68;
    sub_237C05FEC();
    sub_237A1472C(v36, v35);
    v37 = v69;
    v38 = v70;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v65;
    sub_237C05FEC();
    sub_237A147D8(v36, v35, &qword_27DE9B070, &qword_237C0C9E0);
    v38 = v66;
    v37 = v67;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v62;
    sub_237C05FEC();
    sub_237A14B24(v36, v35);
    v38 = v63;
    v37 = v64;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v59;
    sub_237C05FEC();
    sub_237A14BD0(v36, v35);
    v38 = v60;
    v37 = v61;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v39 = v56;
    sub_237C05FEC();
    sub_237A14C78(v39, v35);
    return (*(v57 + 8))(v39, v58);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (swift_dynamicCastMetatype())
    {
      v40 = v53;
      sub_237C05FEC();
      sub_237A14F24(v40, v35, v41, v42, v43, v44, v45, v46, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      return (*(v54 + 8))(v40, v55);
    }

    else
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C180A0);
      v47 = sub_237C0600C();
      MEMORY[0x2383DC360](v47);

      MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
      sub_237C05FFC();
      v48 = sub_237C094DC();
      MEMORY[0x2383DC360](v48);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v49 = v74;
      v50 = v75;
      sub_2379E8AF0();
      swift_allocError();
      *v51 = v49;
      *(v51 + 8) = v50;
      *(v51 + 16) = 0u;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 0;
      return swift_willThrow();
    }
  }
}

uint64_t sub_237A0F5E8(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B058, &qword_237C0C9C8);
  v54 = *(v55 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B068, &qword_237C0C9D8);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v68 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B080, &qword_237C0C9F0);
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v52 - v31;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14A80(v32, v73, &qword_27DE9AB98, &unk_237C0B900);
    return (*(v29 + 8))(v32, v28);
  }

  v34 = v72;
  v35 = v73;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A1487C(v27, v35);
    return (*(v34 + 8))(v27, v24);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A14928(v23, v35);
    return (*(v71 + 8))(v23, v20);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v68;
    sub_237C05FEC();
    sub_237A149D4(v36, v35);
    v37 = v69;
    v38 = v70;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v65;
    sub_237C05FEC();
    sub_237A14A80(v36, v35, &qword_27DE9B070, &qword_237C0C9E0);
    v38 = v66;
    v37 = v67;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v62;
    sub_237C05FEC();
    sub_237A14D24(v36, v35);
    v38 = v63;
    v37 = v64;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = v59;
    sub_237C05FEC();
    sub_237A14DD0(v36, v35);
    v38 = v60;
    v37 = v61;
    return (*(v38 + 8))(v36, v37);
  }

  if (swift_dynamicCastMetatype())
  {
    v39 = v56;
    sub_237C05FEC();
    sub_237A14E7C(v39, v35);
    return (*(v57 + 8))(v39, v58);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (swift_dynamicCastMetatype())
    {
      v40 = v53;
      sub_237C05FEC();
      sub_237A14FF0(v40, v35, v41, v42, v43, v44, v45, v46, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      return (*(v54 + 8))(v40, v55);
    }

    else
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C180A0);
      v47 = sub_237C0600C();
      MEMORY[0x2383DC360](v47);

      MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
      sub_237C05FFC();
      v48 = sub_237C094DC();
      MEMORY[0x2383DC360](v48);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v49 = v74;
      v50 = v75;
      sub_2379E8AF0();
      swift_allocError();
      *v51 = v49;
      *(v51 + 8) = v50;
      *(v51 + 16) = 0u;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 0;
      return swift_willThrow();
    }
  }
}

uint64_t sub_237A0FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a2;
  v126 = a3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  v112 = *(v119 - 8);
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v110 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v113 = *(v123 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x28223BE20](v123);
  v7 = &v110 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v124 = *(v8 - 8);
  v9 = v124[8];
  MEMORY[0x28223BE20](v8);
  v11 = &v110 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  v122 = *(v12 - 8);
  v13 = v122[8];
  MEMORY[0x28223BE20](v12);
  v15 = &v110 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v121 = *(v16 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v110 - v18);
  sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v19 = v123;
    v120 = v15;
    v114 = v11;
    v22 = v116;
    v21 = v119;
    v121 = v12;
    v115 = v8;
    v111 = v7;
    sub_237C05FFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    if (swift_dynamicCastMetatype())
    {
      v33 = v120;
      sub_237C05FEC();
      v34 = v121;
      result = sub_237C05F1C();
      if (result < 0)
      {
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v35 = result;
      v36 = v122;
      if (result)
      {
        v21 = 0;
        v125 = *(v117 + 16);
        v123 = v117 + 32;
        v119 = result;
        while (1)
        {
          sub_237C05F9C();
          v37 = v127 ? v127 : MEMORY[0x277D84F90];
          v38 = sub_237B42F98(v37);
          if (v125)
          {
            break;
          }

LABEL_46:
          if (++v21 == v35)
          {
            return (v36[1])(v33, v34);
          }
        }

        v22 = 0;
        v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0) + 44);
        while (1)
        {
          v39 = &v22[v126];
          if (__OFADD__(v126, v22))
          {
            break;
          }

          if (*(v38 + 16))
          {
            v40 = v21;
            v41 = (v123 + 16 * v22);
            v42 = *v41;
            v43 = v41[1];
            v44 = *(v38 + 40);
            sub_237C093CC();

            sub_237C0878C();
            v45 = sub_237C0940C();
            v46 = ~(-1 << *(v38 + 32));
            while (1)
            {
              v47 = v45 & v46;
              if (((*(v38 + 56 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
              {
                break;
              }

              v48 = (*(v38 + 48) + 16 * v47);
              v49 = 1.0;
              if (*v48 != v42 || v48[1] != v43)
              {
                v51 = sub_237C0929C();
                v45 = v47 + 1;
                if ((v51 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

            v49 = 0.0;
LABEL_42:

            v21 = v40;
          }

          else
          {
            v49 = 0.0;
          }

          ++v22;
          v52 = sub_237A1F7FC(&v127, v21, v39);
          *v53 = v49;
          v52(&v127, 0);
          if (v22 == v125)
          {

            v34 = v121;
            v36 = v122;
            v35 = v119;
            v33 = v120;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_84:
        sub_237C05FFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
        if (swift_dynamicCastMetatype())
        {
          sub_237C05FEC();
          v87 = v21;
          result = sub_237C05F1C();
          if (result < 0)
          {
LABEL_109:
            __break(1u);
            return result;
          }

          v88 = result;
          if (!result)
          {
            return (*(v112 + 8))(v22, v87);
          }

          v89 = 0;
          v90 = *(v117 + 16);
          v124 = (v117 + 40);
          v125 = v90;
          v123 = result;
          while (1)
          {
            sub_237C05F9C();
            v91 = v127;
            if (!v127)
            {
              v91 = sub_237C085AC();
            }

            if (v125)
            {
              break;
            }

LABEL_99:
            if (++v89 == v88)
            {
              return (*(v112 + 8))(v22, v87);
            }
          }

          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
          v92 = 0;
          v93 = *(result + 44);
          v94 = v124;
          while (1)
          {
            v95 = v126 + v92;
            if (__OFADD__(v126, v92))
            {
              break;
            }

            v96 = 0.0;
            if (*(v91 + 16))
            {
              v97 = *(v94 - 1);
              v98 = *v94;

              v99 = sub_237ACAC78(v97, v98);
              v101 = v100;

              if (v101)
              {
                v96 = *(*(v91 + 56) + 8 * v99);
              }
            }

            ++v92;
            v102 = sub_237A1F7FC(&v127, v89, v95);
            *v103 = v96;
            result = v102(&v127, 0);
            v94 += 2;
            if (v125 == v92)
            {

              v87 = v119;
              v22 = v116;
              v88 = v123;
              goto LABEL_99;
            }
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_102:
        v127 = 0;
        v128 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C181F0);
        v104 = sub_237C0600C();
        MEMORY[0x2383DC360](v104);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        sub_237C05FFC();
        v105 = sub_237C094DC();
        MEMORY[0x2383DC360](v105);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v106 = v127;
        v107 = v128;
        sub_2379E8AF0();
        v108 = swift_allocError();
        *v109 = v106;
        *(v109 + 8) = v107;
        *(v109 + 16) = 0u;
        *(v109 + 32) = 0u;
        *(v109 + 48) = 0;
        v118 = v108;
        return swift_willThrow();
      }
    }

    else
    {
      sub_237C05FFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_66;
      }

      v33 = v114;
      sub_237C05FEC();
      v34 = v115;
      result = sub_237C05F1C();
      if (result < 0)
      {
        goto LABEL_107;
      }

      v54 = result;
      v36 = v124;
      if (result)
      {
        v55 = 0;
        v125 = *(v117 + 16);
        v122 = result;
        v123 = v117 + 40;
        while (1)
        {
          sub_237C05F9C();
          v56 = v127;
          if (!v127)
          {
            v56 = sub_237C085AC();
          }

          if (v125)
          {
            break;
          }

LABEL_63:
          if (++v55 == v54)
          {
            return (v36[1])(v33, v34);
          }
        }

        v57 = 0;
        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0) + 44);
        v59 = v123;
        while (1)
        {
          v60 = v126 + v57;
          if (__OFADD__(v126, v57))
          {
            break;
          }

          v61 = 0.0;
          if (*(v56 + 16))
          {
            v63 = *(v59 - 1);
            v62 = *v59;

            v64 = sub_237ACAC78(v63, v62);
            v66 = v65;

            if (v66)
            {
              v61 = *(*(v56 + 56) + 8 * v64);
            }
          }

          ++v57;
          v67 = sub_237A1F7FC(&v127, v55, v60);
          *v68 = v61;
          v67(&v127, 0);
          v59 += 2;
          if (v125 == v57)
          {

            v34 = v115;
            v36 = v124;
            v33 = v114;
            v54 = v122;
            goto LABEL_63;
          }
        }

        __break(1u);
        goto LABEL_102;
      }
    }

    return (v36[1])(v33, v34);
  }

  sub_237C05FEC();
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v124 = v19;
  v125 = v16;
  if (!result)
  {
    return (*(v121 + 8))(v124, v125);
  }

  v21 = 0;
  v22 = *(v117 + 16);
  v122 = (v117 + 40);
  v123 = result;
  while (!v22)
  {
LABEL_19:
    if (++v21 == v123)
    {
      return (*(v121 + 8))(v124, v125);
    }
  }

  v23 = 0;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0) + 44);
  v25 = v122;
  while (1)
  {
    v26 = &v23[v126];
    if (__OFADD__(v126, v23))
    {
      break;
    }

    v27 = *(v25 - 1);
    v19 = *v25;

    sub_237C05F9C();
    if (v128)
    {
      if (v27 == v127 && v128 == v19)
      {

        v30 = 1.0;
        goto LABEL_18;
      }

      v29 = sub_237C0929C();

      v30 = 1.0;
      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v30 = 0.0;
LABEL_18:
    ++v23;
    v31 = sub_237A1F7FC(&v127, v21, v26);
    *v32 = v30;
    v31(&v127, 0);
    v25 += 2;
    if (v22 == v23)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_66:
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_84;
  }

  v69 = v111;
  sub_237C05FEC();
  v70 = v19;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v71 = result;
  if (result)
  {
    v72 = 0;
    v73 = *(v117 + 16);
    v124 = (v117 + 40);
    v125 = v73;
    v122 = result;
    while (1)
    {
      sub_237C05F9C();
      v74 = v127;
      if (!v127)
      {
        v74 = sub_237C085AC();
      }

      if (v125)
      {
        break;
      }

LABEL_81:
      ++v72;
      v70 = v123;
      if (v72 == v71)
      {
        return (*(v113 + 8))(v69, v70);
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
    v75 = 0;
    v76 = *(result + 44);
    v77 = v124;
    while (1)
    {
      v78 = v126 + v75;
      if (__OFADD__(v126, v75))
      {
        break;
      }

      v79 = 0;
      if (*(v74 + 16))
      {
        v80 = *(v77 - 1);
        v81 = *v77;

        v82 = sub_237ACAC78(v80, v81);
        v84 = v83;

        if (v84)
        {
          v79 = *(*(v74 + 56) + 4 * v82);
        }
      }

      ++v75;
      v85 = sub_237A1F7FC(&v127, v72, v78);
      *v86 = v79;
      result = v85(&v127, 0);
      v77 += 2;
      if (v125 == v75)
      {

        v69 = v111;
        v71 = v122;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  return (*(v113 + 8))(v69, v70);
}

uint64_t sub_237A10C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a2;
  v126 = a3;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  v112 = *(v119 - 8);
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v110 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v113 = *(v123 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x28223BE20](v123);
  v7 = &v110 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v124 = *(v8 - 8);
  v9 = v124[8];
  MEMORY[0x28223BE20](v8);
  v11 = &v110 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  v122 = *(v12 - 8);
  v13 = v122[8];
  MEMORY[0x28223BE20](v12);
  v15 = &v110 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v121 = *(v16 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v110 - v18);
  sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v19 = v123;
    v120 = v15;
    v114 = v11;
    v22 = v116;
    v21 = v119;
    v121 = v12;
    v115 = v8;
    v111 = v7;
    sub_237C05FFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    if (swift_dynamicCastMetatype())
    {
      v33 = v120;
      sub_237C05FEC();
      v34 = v121;
      result = sub_237C05F1C();
      if (result < 0)
      {
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v35 = result;
      v36 = v122;
      if (result)
      {
        v21 = 0;
        v125 = *(v117 + 16);
        v123 = v117 + 32;
        v119 = result;
        while (1)
        {
          sub_237C05F9C();
          v37 = v127 ? v127 : MEMORY[0x277D84F90];
          v38 = sub_237B42F98(v37);
          if (v125)
          {
            break;
          }

LABEL_46:
          if (++v21 == v35)
          {
            return (v36[1])(v33, v34);
          }
        }

        v22 = 0;
        v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0) + 44);
        while (1)
        {
          v39 = &v22[v126];
          if (__OFADD__(v126, v22))
          {
            break;
          }

          if (*(v38 + 16))
          {
            v40 = v21;
            v41 = (v123 + 16 * v22);
            v42 = *v41;
            v43 = v41[1];
            v44 = *(v38 + 40);
            sub_237C093CC();

            sub_237C0878C();
            v45 = sub_237C0940C();
            v46 = ~(-1 << *(v38 + 32));
            while (1)
            {
              v47 = v45 & v46;
              if (((*(v38 + 56 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
              {
                break;
              }

              v48 = (*(v38 + 48) + 16 * v47);
              v49 = 1.0;
              if (*v48 != v42 || v48[1] != v43)
              {
                v51 = sub_237C0929C();
                v45 = v47 + 1;
                if ((v51 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

            v49 = 0.0;
LABEL_42:

            v21 = v40;
          }

          else
          {
            v49 = 0.0;
          }

          ++v22;
          v52 = sub_237A1F930(&v127, v21, v39);
          *v53 = v49;
          v52(&v127, 0);
          if (v22 == v125)
          {

            v34 = v121;
            v36 = v122;
            v35 = v119;
            v33 = v120;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_84:
        sub_237C05FFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
        if (swift_dynamicCastMetatype())
        {
          sub_237C05FEC();
          v87 = v21;
          result = sub_237C05F1C();
          if (result < 0)
          {
LABEL_109:
            __break(1u);
            return result;
          }

          v88 = result;
          if (!result)
          {
            return (*(v112 + 8))(v22, v87);
          }

          v89 = 0;
          v90 = *(v117 + 16);
          v124 = (v117 + 40);
          v125 = v90;
          v123 = result;
          while (1)
          {
            sub_237C05F9C();
            v91 = v127;
            if (!v127)
            {
              v91 = sub_237C085AC();
            }

            if (v125)
            {
              break;
            }

LABEL_99:
            if (++v89 == v88)
            {
              return (*(v112 + 8))(v22, v87);
            }
          }

          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
          v92 = 0;
          v93 = *(result + 44);
          v94 = v124;
          while (1)
          {
            v95 = v126 + v92;
            if (__OFADD__(v126, v92))
            {
              break;
            }

            v96 = 0.0;
            if (*(v91 + 16))
            {
              v97 = *(v94 - 1);
              v98 = *v94;

              v99 = sub_237ACAC78(v97, v98);
              v101 = v100;

              if (v101)
              {
                v96 = *(*(v91 + 56) + 8 * v99);
              }
            }

            ++v92;
            v102 = sub_237A1F930(&v127, v89, v95);
            *v103 = v96;
            result = v102(&v127, 0);
            v94 += 2;
            if (v125 == v92)
            {

              v87 = v119;
              v22 = v116;
              v88 = v123;
              goto LABEL_99;
            }
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_102:
        v127 = 0;
        v128 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C181F0);
        v104 = sub_237C0600C();
        MEMORY[0x2383DC360](v104);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        sub_237C05FFC();
        v105 = sub_237C094DC();
        MEMORY[0x2383DC360](v105);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v106 = v127;
        v107 = v128;
        sub_2379E8AF0();
        v108 = swift_allocError();
        *v109 = v106;
        *(v109 + 8) = v107;
        *(v109 + 16) = 0u;
        *(v109 + 32) = 0u;
        *(v109 + 48) = 0;
        v118 = v108;
        return swift_willThrow();
      }
    }

    else
    {
      sub_237C05FFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_66;
      }

      v33 = v114;
      sub_237C05FEC();
      v34 = v115;
      result = sub_237C05F1C();
      if (result < 0)
      {
        goto LABEL_107;
      }

      v54 = result;
      v36 = v124;
      if (result)
      {
        v55 = 0;
        v125 = *(v117 + 16);
        v122 = result;
        v123 = v117 + 40;
        while (1)
        {
          sub_237C05F9C();
          v56 = v127;
          if (!v127)
          {
            v56 = sub_237C085AC();
          }

          if (v125)
          {
            break;
          }

LABEL_63:
          if (++v55 == v54)
          {
            return (v36[1])(v33, v34);
          }
        }

        v57 = 0;
        v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0) + 44);
        v59 = v123;
        while (1)
        {
          v60 = v126 + v57;
          if (__OFADD__(v126, v57))
          {
            break;
          }

          v61 = 0;
          if (*(v56 + 16))
          {
            v63 = *(v59 - 1);
            v62 = *v59;

            v64 = sub_237ACAC78(v63, v62);
            v66 = v65;

            if (v66)
            {
              v61 = *(*(v56 + 56) + 8 * v64);
            }
          }

          ++v57;
          v67 = sub_237A1F930(&v127, v55, v60);
          *v68 = v61;
          v67(&v127, 0);
          v59 += 2;
          if (v125 == v57)
          {

            v34 = v115;
            v36 = v124;
            v33 = v114;
            v54 = v122;
            goto LABEL_63;
          }
        }

        __break(1u);
        goto LABEL_102;
      }
    }

    return (v36[1])(v33, v34);
  }

  sub_237C05FEC();
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v124 = v19;
  v125 = v16;
  if (!result)
  {
    return (*(v121 + 8))(v124, v125);
  }

  v21 = 0;
  v22 = *(v117 + 16);
  v122 = (v117 + 40);
  v123 = result;
  while (!v22)
  {
LABEL_19:
    if (++v21 == v123)
    {
      return (*(v121 + 8))(v124, v125);
    }
  }

  v23 = 0;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0) + 44);
  v25 = v122;
  while (1)
  {
    v26 = &v23[v126];
    if (__OFADD__(v126, v23))
    {
      break;
    }

    v27 = *(v25 - 1);
    v19 = *v25;

    sub_237C05F9C();
    if (v128)
    {
      if (v27 == v127 && v128 == v19)
      {

        v30 = 1.0;
        goto LABEL_18;
      }

      v29 = sub_237C0929C();

      v30 = 1.0;
      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v30 = 0.0;
LABEL_18:
    ++v23;
    v31 = sub_237A1F930(&v127, v21, v26);
    *v32 = v30;
    v31(&v127, 0);
    v25 += 2;
    if (v22 == v23)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_66:
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_84;
  }

  v69 = v111;
  sub_237C05FEC();
  v70 = v19;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v71 = result;
  if (result)
  {
    v72 = 0;
    v73 = *(v117 + 16);
    v124 = (v117 + 40);
    v125 = v73;
    v122 = result;
    while (1)
    {
      sub_237C05F9C();
      v74 = v127;
      if (!v127)
      {
        v74 = sub_237C085AC();
      }

      if (v125)
      {
        break;
      }

LABEL_81:
      ++v72;
      v70 = v123;
      if (v72 == v71)
      {
        return (*(v113 + 8))(v69, v70);
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
    v75 = 0;
    v76 = *(result + 44);
    v77 = v124;
    while (1)
    {
      v78 = v126 + v75;
      if (__OFADD__(v126, v75))
      {
        break;
      }

      v79 = 0.0;
      if (*(v74 + 16))
      {
        v80 = *(v77 - 1);
        v81 = *v77;

        v82 = sub_237ACAC78(v80, v81);
        v84 = v83;

        if (v84)
        {
          v79 = *(*(v74 + 56) + 4 * v82);
        }
      }

      ++v75;
      v85 = sub_237A1F930(&v127, v72, v78);
      *v86 = v79;
      result = v85(&v127, 0);
      v77 += 2;
      if (v125 == v75)
      {

        v69 = v111;
        v71 = v122;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  return (*(v113 + 8))(v69, v70);
}

void sub_237A11974()
{
  OUTLINED_FUNCTION_74();
  v70 = v0;
  v71 = v1;
  v72 = v2;
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v58 = v6;
  v59 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v57 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v61 = OUTLINED_FUNCTION_0(v11);
  v62 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  v60 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v64 = v19;
  v65 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23();
  v63 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B170, &qword_237C0CA50);
  v25 = OUTLINED_FUNCTION_0(v24);
  v66 = v26;
  v67 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B178, &qword_237C15200);
  OUTLINED_FUNCTION_0(v32);
  v68 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v38 = &v57 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  OUTLINED_FUNCTION_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = &v57 - v45;
  sub_237C05FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237A19470(v46, v69, v72, v71);
    (*(v41 + 8))(v46, v39);
  }

  else
  {
    v47 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B180, &unk_237C152B0);
    if (OUTLINED_FUNCTION_51_2())
    {
      OUTLINED_FUNCTION_70_0();
      sub_237C05FEC();
      OUTLINED_FUNCTION_45_0();
      sub_237A195BC();
      (*(v47 + 8))(v38, v32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B188, &qword_237C0CA58);
      if (OUTLINED_FUNCTION_51_2())
      {
        OUTLINED_FUNCTION_70_0();
        sub_237C05FEC();
        OUTLINED_FUNCTION_45_0();
        sub_237A19708();
        (*(v66 + 8))(v31, v67);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
        if (OUTLINED_FUNCTION_51_2())
        {
          v48 = v63;
          OUTLINED_FUNCTION_70_0();
          sub_237C05FEC();
          OUTLINED_FUNCTION_45_0();
          sub_237A19854();
          (*(v64 + 8))(v48, v65);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
          if (OUTLINED_FUNCTION_51_2())
          {
            v49 = v60;
            OUTLINED_FUNCTION_70_0();
            sub_237C05FEC();
            OUTLINED_FUNCTION_48_3();
            OUTLINED_FUNCTION_45_0();
            sub_237A199A0();
            (*(v62 + 8))(v49, v61);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B190, &qword_237C152D0);
            if (OUTLINED_FUNCTION_51_2())
            {
              v50 = v57;
              OUTLINED_FUNCTION_70_0();
              sub_237C05FEC();
              sub_237A19AEC();
              (*(v58 + 8))(v50, v59);
            }

            else
            {
              v73 = 0;
              v74 = 0xE000000000000000;
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C18220);
              v51 = sub_237C0600C();
              MEMORY[0x2383DC360](v51);

              OUTLINED_FUNCTION_61_1();
              sub_237C05FFC();
              v52 = sub_237C094DC();
              MEMORY[0x2383DC360](v52);

              MEMORY[0x2383DC360](46, 0xE100000000000000);
              v53 = v73;
              v54 = v74;
              sub_2379E8AF0();
              v55 = swift_allocError();
              *v56 = v53;
              v56[1] = v54;
              OUTLINED_FUNCTION_52(v55, v56);
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_73();
}