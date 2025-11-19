uint64_t sub_237B3F6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D458, &qword_237C13B98);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v89 - v2;
  v4 = type metadata accessor for DataSourceIssue();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v90 = (v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v102 = (v89 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = (v89 - v12);
  MEMORY[0x28223BE20](v11);
  v92 = v89 - v13;
  v14 = sub_237C05ADC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_237C0825C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C0820C();
  sub_237A5D3A4();
  v25 = v24;
  v89[0] = 0;
  (*(v20 + 8))(v23, v19);
  v26 = *(v25 + 16);
  v95 = v14;
  if (v26)
  {
    v27 = v15 + 16;
    v101 = *(v15 + 16);
    v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v89[1] = v25;
    v29 = v25 + v28;
    v30 = *(v27 + 56);
    v99 = (v27 - 8);
    *&v100 = v30;
    v31 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F98];
    v91 = v27;
    while (1)
    {
      v101(v18, v29, v14);
      v33 = sub_237C059DC();
      v35 = v34;
      v36 = sub_2379EB318(46, 0xE100000000000000, v33, v34);
      if ((v37 & 1) != 0 || v36 < 0x4000)
      {
        break;
      }

      v98 = v31;
      v38 = sub_237C0884C();
      v40 = v39;
      v41 = v3;
      v43 = v42;
      v45 = v44;

      v46 = v43;
      v3 = v41;
      v47 = MEMORY[0x2383DC310](v38, v40, v46, v45);
      v49 = v48;

      v50 = sub_237AC9C00(v47, v49, v32);
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v32;
      sub_237B41728(v50 & 1, v47, v49);
      v32 = v103;
      sub_237B40990(v18, v41);
      if (__swift_getEnumTagSinglePayload(v41, 1, v96) != 1)
      {

        v54 = v92;
        sub_237B07BD4(v41, v92);
        sub_237B4216C(v54, v93, type metadata accessor for DataSourceIssue);
        v31 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = *(v31 + 16);
          sub_237BC1F0C();
          v31 = v61;
        }

        v56 = *(v31 + 16);
        if (v56 >= *(v31 + 24) >> 1)
        {
          sub_237BC1F0C();
          v31 = v62;
        }

        sub_237B421C8(v92, type metadata accessor for DataSourceIssue);
        (*v99)(v18, v14);
        *(v31 + 16) = v56 + 1;
        v52 = v31 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v56;
        v53 = v93;
LABEL_17:
        sub_237B07BD4(v53, v52);
        goto LABEL_18;
      }

      sub_237B42220(v41, &qword_27DE9D458);
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v32;
      sub_237B41728(1, v47, v49);

      v14 = v95;
      (*v99)(v18, v95);
      v32 = v103;
      v31 = v98;
LABEL_18:
      v29 += v100;
      if (!--v26)
      {

        goto LABEL_21;
      }
    }

    sub_237BF0708(v33, v35, v102);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = *(v31 + 16);
      sub_237BC1F0C();
      v31 = v58;
    }

    v51 = *(v31 + 16);
    if (v51 >= *(v31 + 24) >> 1)
    {
      sub_237BC1F0C();
      v31 = v59;
    }

    (*v99)(v18, v14);
    *(v31 + 16) = v51 + 1;
    v52 = v31 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v51;
    v53 = v102;
    goto LABEL_17;
  }

  v32 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F90];
LABEL_21:
  v63 = v32 + 64;
  v64 = 1 << *(v32 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v32 + 64);
  v67 = (v64 + 63) >> 6;
  v68 = 0x8000000237C1BC60;
  v69 = "noExamplesForLabel";
  v70 = v32;

  v72 = 0;
  v73 = xmmword_237C0B660;
  while (v66)
  {
LABEL_29:
    v75 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v76 = v75 | (v72 << 6);
    if ((*(*(v70 + 56) + v76) & 1) == 0)
    {
      v77 = (*(v70 + 48) + 16 * v76);
      v99 = v77[1];
      v101 = v69;
      v78 = *v77;
      v103 = 0;
      v104 = 0xE000000000000000;
      v100 = v73;

      v102 = v68;
      sub_237C08EDC();

      v103 = 0x22206C6562614CLL;
      v104 = 0xE700000000000000;
      v79 = v99;
      MEMORY[0x2383DC360](v78, v99);
      MEMORY[0x2383DC360](0xD000000000000012, v101 | 0x8000000000000000);
      v98 = v103;
      v94 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
      inited = swift_initStackObject();
      *(inited + 16) = v100;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v78;
      *(inited + 56) = v79;
      v92 = sub_237B0778C();

      v93 = sub_237C085AC();
      v81 = v96;
      v82 = v90;
      __swift_storeEnumTagSinglePayload(v90 + *(v96 + 24), 1, 1, v95);
      v83 = *(v81 + 28);
      sub_237C085AC();

      *v82 = 0xD000000000000012;
      v84 = v98;
      v82[1] = v102;
      v82[2] = v84;
      v82[3] = v94;
      *(v82 + v83) = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = *(v31 + 16);
        sub_237BC1F0C();
        v31 = v87;
      }

      v85 = *(v31 + 16);
      v69 = v101;
      if (v85 >= *(v31 + 24) >> 1)
      {
        sub_237BC1F0C();
        v31 = v88;
      }

      *(v31 + 16) = v85 + 1;
      result = sub_237B07BD4(v90, v31 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v85);
      v68 = v102;
      v73 = v100;
    }
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v67)
    {

      return v31;
    }

    v66 = *(v63 + 8 * v74);
    ++v72;
    if (v66)
    {
      v72 = v74;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237B40080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D458, &qword_237C13B98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v62 - v4;
  v6 = type metadata accessor for DataSourceIssue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v73 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = sub_237C05ADC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v80 = v17 + 16;
  v77 = 0x8000000237C1CFF0;
  v76 = "unreadableAudioFile";
  v63 = v17;
  v85 = (v17 + 8);
  v66 = 0x8000000237C1BC60;
  v65 = "noExamplesForLabel";
  v72 = a1;

  v25 = 0;
  v64 = xmmword_237C0B660;
  v89 = MEMORY[0x277D84F90];
  v79 = v14;
  v82 = v15;
  v69 = a1 + 64;
  v68 = v23;
  v78 = v7;
  if (!v22)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v75 = (v22 - 1) & v22;
    v74 = v25;
    v27 = __clz(__rbit64(v22)) | (v25 << 6);
    v28 = (*(v72 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(*(v72 + 56) + 8 * v27);
    v32 = *(v31 + 16);
    if (!v32)
    {
      v50 = v28[1];

      goto LABEL_27;
    }

    v67 = *v28;
    v33 = v31 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v34 = *(v63 + 16);
    v86 = *(v63 + 72);
    v87 = v34;
    v71 = v29;

    v70 = v31;

    v81 = 0;
    do
    {
      v35 = v90;
      v87(v90, v33, v15);
      sub_237BF3444(v35);
      if (v36)
      {
        if (v36 == 1)
        {
          sub_237BF0C98(v5);
        }

        else
        {
          if (v36 != 2)
          {
            (*v85)(v90, v15);
            v81 = 1;
            __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
            sub_237B42220(v5, &qword_27DE9D458);
            goto LABEL_22;
          }

          v91 = 0;
          v92 = 0xE000000000000000;
          sub_237C08EDC();

          v91 = sub_237C05A8C();
          v92 = v37;
          MEMORY[0x2383DC360](0xD000000000000024, v76 | 0x8000000000000000);
          v83 = v92;
          v84 = v91;
          sub_237B0778C();
          v38 = sub_237C085AC();
          v39 = *(v6 + 24);
          __swift_storeEnumTagSinglePayload(&v5[v39], 1, 1, v15);
          v40 = *(v6 + 28);
          sub_237C085AC();

          v41 = v77;
          *v5 = 0xD000000000000013;
          *(v5 + 1) = v41;
          v42 = v83;
          *(v5 + 2) = v84;
          *(v5 + 3) = v42;
          v14 = v79;
          *&v5[v40] = v38;
          v15 = v82;
          sub_237B42220(&v5[v39], &qword_27DE9AA18);
          v87(&v5[v39], v90, v15);
          v43 = &v5[v39];
          v7 = v78;
          __swift_storeEnumTagSinglePayload(v43, 0, 1, v15);
        }
      }

      else
      {
        sub_237BF0A78(v5);
      }

      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      sub_237B07BD4(v5, v14);
      sub_237B4216C(v14, v88, type metadata accessor for DataSourceIssue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v89 + 16);
        sub_237BC1F0C();
        v89 = v48;
      }

      v44 = *(v89 + 16);
      if (v44 >= *(v89 + 24) >> 1)
      {
        sub_237BC1F0C();
        v89 = v49;
      }

      sub_237B421C8(v14, type metadata accessor for DataSourceIssue);
      (*v85)(v90, v15);
      v45 = v88;
      v46 = v89;
      *(v89 + 16) = v44 + 1;
      sub_237B07BD4(v45, v46 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44);
LABEL_22:
      v33 += v86;
      --v32;
    }

    while (v32);

    if (v81)
    {

      v19 = v69;
      v23 = v68;
      goto LABEL_32;
    }

    v50 = v71;
    v30 = v67;
LABEL_27:
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_237C08EDC();

    v91 = 0x22206C6562614CLL;
    v92 = 0xE700000000000000;
    MEMORY[0x2383DC360](v30, v50);
    MEMORY[0x2383DC360](0xD000000000000012, v65 | 0x8000000000000000);
    v86 = v92;
    v87 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
    inited = swift_initStackObject();
    *(inited + 16) = v64;
    *(inited + 32) = 0x6C6562616CLL;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = v50;
    sub_237B0778C();

    v52 = sub_237C085AC();
    v53 = v73;
    __swift_storeEnumTagSinglePayload(v73 + *(v6 + 24), 1, 1, v82);
    v54 = *(v6 + 28);
    sub_237C085AC();

    *v53 = 0xD000000000000012;
    v55 = v86;
    v56 = v87;
    v53[1] = v66;
    v53[2] = v56;
    v53[3] = v55;
    *(v53 + v54) = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = *(v89 + 16);
      sub_237BC1F0C();
      v89 = v60;
    }

    v57 = *(v89 + 16);
    v14 = v79;
    v15 = v82;
    v19 = v69;
    v23 = v68;
    if (v57 >= *(v89 + 24) >> 1)
    {
      sub_237BC1F0C();
      v89 = v61;
    }

    v58 = v89;
    *(v89 + 16) = v57 + 1;
    result = sub_237B07BD4(v73, v58 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v57);
LABEL_32:
    v22 = v75;
    v25 = v74;
  }

  while (v75);
LABEL_4:
  while (2)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      if (v26 < v23)
      {
        v22 = *(v19 + 8 * v26);
        ++v25;
        if (!v22)
        {
          continue;
        }

        v25 = v26;
        goto LABEL_8;
      }

      return v89;
    }

    return result;
  }
}

uint64_t sub_237B40990@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_237BF3444(a1);
  switch(v4)
  {
    case 0:
      sub_237BF0A78(a2);
      goto LABEL_7;
    case 1:
      sub_237BF0C98(a2);
      goto LABEL_7;
    case 2:
      sub_237BF08B8(a1, a2);
LABEL_7:
      v5 = 0;
      goto LABEL_9;
  }

  v5 = 1;
LABEL_9:
  v6 = type metadata accessor for DataSourceIssue();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_237B40A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_20_27(a1, a2, a3);
  OUTLINED_FUNCTION_3_68(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_237C0932C();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
  if (OUTLINED_FUNCTION_12_38())
  {
    v14 = *v6;
    sub_237ACAC78(v5, v3);
    OUTLINED_FUNCTION_13_31();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  if (v13)
  {
    *(*(*v6 + 56) + 8 * v12) = v4;
    OUTLINED_FUNCTION_53_8();
  }

  else
  {
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_47_13();
    sub_237B41854(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_53_8();
  }
}

uint64_t type metadata accessor for MLSoundClassifier.DataSource()
{
  result = qword_27DE9D3A8;
  if (!qword_27DE9D3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_237B40B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_48_12();
  v10 = OUTLINED_FUNCTION_129(v8, v9);
  v12 = sub_237ACAC78(v10, v11);
  OUTLINED_FUNCTION_3_68(v12, v13);
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D400, &qword_237C13B60);
  if (OUTLINED_FUNCTION_12_38())
  {
    v19 = *v4;
    sub_237ACAC78(a2, a3);
    OUTLINED_FUNCTION_13_31();
    if (!v21)
    {
      goto LABEL_14;
    }

    v17 = v20;
  }

  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v5 + 56) + 32 * v17));
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_53_8();

    return sub_2379DAD24(v22, v23);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_107();
    sub_237B4188C(v26, v27, a3, v3, v28);
    OUTLINED_FUNCTION_53_8();
  }
}

uint64_t sub_237B40C78()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_237ACAC78(v4, v2);
  OUTLINED_FUNCTION_3_68(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
  if ((sub_237C090AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_237ACAC78(v5, v3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    sub_237B418F8(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_150();
  }
}

uint64_t sub_237B40DA8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_237C06A4C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = *v2;
  v16 = sub_237ACB254();
  OUTLINED_FUNCTION_3_68(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D468, &qword_237C13BA8);
  OUTLINED_FUNCTION_26_20();
  result = sub_237C090AC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = *v3;
  result = sub_237ACB254();
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_9:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v21 = result;
LABEL_5:
  v26 = *v3;
  if (v22)
  {
    *(v26[7] + 8 * v21) = a2;
  }

  else
  {
    (*(v9 + 16))(v14, a1, v6);
    return sub_237B41944(v21, v14, v26, a2);
  }

  return result;
}

uint64_t sub_237B40F68()
{
  OUTLINED_FUNCTION_153();
  v5 = v4;
  v7 = v6;
  v11 = OUTLINED_FUNCTION_20_27(v8, v9, v10);
  OUTLINED_FUNCTION_3_68(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  if (OUTLINED_FUNCTION_12_38())
  {
    v18 = *v3;
    sub_237ACAC78(v2, v0);
    OUTLINED_FUNCTION_13_31();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  if (v17)
  {
    v21 = *(*v3 + 56);
    v22 = *(v21 + 8 * v16);
    *(v21 + 8 * v16) = v1;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_47_13();
    sub_237B41854(v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_150();
  }
}

uint64_t sub_237B41088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v11 = v8;
  OUTLINED_FUNCTION_48_12();
  v16 = OUTLINED_FUNCTION_129(v14, v15);
  v18 = sub_237ACAC78(v16, v17);
  OUTLINED_FUNCTION_3_68(v18, v19);
  if (v22)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v23 = v20;
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (sub_237C090AC())
  {
    v25 = *v8;
    sub_237ACAC78(a2, a3);
    OUTLINED_FUNCTION_28_16();
    if (!v27)
    {
      goto LABEL_14;
    }

    v23 = v26;
  }

  if (v24)
  {
    v28 = *(*v11 + 56);
    v29 = a7(0);
    v30 = OUTLINED_FUNCTION_4(v29);
    v32 = *(v31 + 40);
    v33 = v30;
    v34 = v28 + *(v31 + 72) * v23;

    return v32(v34, v7, v33);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_29_11();
    sub_237B41ABC(v36, v37, a3, v7, v38);
  }
}

void sub_237B41238()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_38_13();
  v2 = sub_237C0909C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_43_9();
  v6 = sub_237ACB31C();
  OUTLINED_FUNCTION_3_68(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_237C0932C();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D210, &unk_237C132F0);
  if (OUTLINED_FUNCTION_12_38())
  {
    v13 = *v1;
    sub_237ACB31C();
    OUTLINED_FUNCTION_28_16();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  v16 = *v1;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1((v16[7] + 32 * v11));
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_150();

    sub_2379DAD24(v17, v18);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_42_11();
    v21(v20);
    v22 = OUTLINED_FUNCTION_29_11();
    sub_237B419FC(v22, v23, v0, v16);
    OUTLINED_FUNCTION_150();
  }
}

uint64_t sub_237B413C0(uint64_t a1, char a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_48_12();
  v6 = sub_237ACB370(v5);
  OUTLINED_FUNCTION_3_68(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C000, &unk_237C132D0);
  OUTLINED_FUNCTION_26_20();
  if (sub_237C090AC())
  {
    v13 = *v2;
    sub_237ACB370(a2);
    OUTLINED_FUNCTION_13_31();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v3 + 56) + 40 * v11));
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_53_8();

    return sub_237A1FCF0(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_53_8();

    return sub_237B41B44(v20, v21, v22, v23);
  }
}

void sub_237B414C8()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_38_13();
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_43_9();
  v6 = sub_237ACB424();
  OUTLINED_FUNCTION_3_68(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_237C0932C();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D260, &qword_237C13470);
  if (OUTLINED_FUNCTION_12_38())
  {
    v13 = *v1;
    sub_237ACB424();
    OUTLINED_FUNCTION_28_16();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  v16 = *v1;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = v0;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_42_11();
    v22(v21);
    v23 = OUTLINED_FUNCTION_29_11();
    sub_237B41BB0(v23, v24, v0, v16);
    OUTLINED_FUNCTION_150();
  }
}

_OWORD *sub_237B4160C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  OUTLINED_FUNCTION_48_12();
  v6 = sub_237ACB4EC();
  OUTLINED_FUNCTION_3_68(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
  OUTLINED_FUNCTION_26_20();
  if (sub_237C090AC())
  {
    v13 = *v3;
    sub_237ACB4EC();
    OUTLINED_FUNCTION_13_31();
    if (!v15)
    {
      goto LABEL_12;
    }

    v11 = v14;
  }

  v16 = *v4;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1((v16[7] + 32 * v11));
    v17 = OUTLINED_FUNCTION_37_0();

    return sub_2379DAD24(v17, v18);
  }

  else
  {
    sub_2379E8F20(a2, v20);
    return sub_237B41C58(v11, v20, v2, v16);
  }
}

uint64_t sub_237B41728(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_237ACAC78(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D460, &qword_237C13BA0);
  result = sub_237C090AC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v4;
  result = sub_237ACAC78(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    *(v16[7] + v11) = a1 & 1;
  }

  else
  {
    sub_237B41CD4(v11, a2, a3, a1 & 1, v16);
  }

  return result;
}

unint64_t sub_237B41854(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_11_40(a1, a2, a3, a4, a5);
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

_OWORD *sub_237B4188C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2379DAD24(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_237B418F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_237B41944(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_237C06A4C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

_OWORD *sub_237B419FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_237C0909C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2379DAD24(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_237B41ABC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_40(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  OUTLINED_FUNCTION_4(v11);
  result = (*(v12 + 32))(v9 + *(v12 + 72) * a1, a4);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t sub_237B41B44(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_237A1FCF0(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_237B41BB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_27_14(a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_4(v10);
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v13 = *(a4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }

  return result;
}

_OWORD *sub_237B41C58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2379DAD24(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_237B41CD4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t *sub_237B41D1C(uint64_t a1)
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

void sub_237B41E80()
{
  sub_237A6191C();
  if (v0 <= 0x3F)
  {
    sub_2379FCE48();
    if (v1 <= 0x3F)
    {
      sub_237B41F1C(319);
      if (v2 <= 0x3F)
      {
        sub_237B42024();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237B41F1C(uint64_t a1)
{
  v1 = qword_27DE9D3B8;
  if (!qword_27DE9D3B8)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D3B8);
    }
  }

  return v1;
}

void sub_237B42024()
{
  if (!qword_27DE9D3C0)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05DBC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D3C0);
    }
  }
}

uint64_t sub_237B42128(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_129(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237B4216C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237B421C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237B42220(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_129(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 8))(a1);
  return a1;
}

unint64_t *sub_237B42274(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_237B423D8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_237B423D8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_237B42360(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_237B42274(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_237B423D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
  result = sub_237C0912C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_237C093CC();

    sub_237C0878C();
    result = sub_237C0940C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B42614(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_11_40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_237C090AC();
}

uint64_t OUTLINED_FUNCTION_15_35(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_16_25()
{

  return sub_237C08B9C();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_237ACAC78(a2, a3);
}

void OUTLINED_FUNCTION_51_7()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_52_12(unint64_t *a1)
{

  return sub_237B42128(a1, v1);
}

uint64_t sub_237B42924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = v7 - 8;
  v59 = v7 - 8;
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v53 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F0, &unk_237C14A80);
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v53 - v13;
  sub_2379D9224(&qword_27DE9D438, &qword_27DE9ACA0, &unk_237C0E0E0);
  v14 = sub_237C0887C();
  v15 = a1 + *(v9 + 60);
  v16 = sub_237C0887C();
  if (v16 < v14)
  {
    v14 = v16;
  }

  v62 = MEMORY[0x277D84F90];
  sub_237AC8EB4();
  v60 = v62;
  v17 = v11;
  sub_2379FC864(a1, v11, &qword_27DE9D478, &qword_237C13BC0);
  v18 = *(v3 + 32);
  v18(v6, v11, v2);
  v19 = v57;
  sub_237C0885C();
  v18(v6, &v17[*(v59 + 60)], v2);
  v20 = v2;
  v21 = v19 + *(v54 + 52);
  sub_237C0885C();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v55 = v20;
    v56 = v21;
    if (!v14)
    {
LABEL_19:
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
      v35 = *(v59 + 36);
      sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
      for (i = v35; ; v35 = i)
      {
        sub_237C08B5C();
        if (*(v19 + v35) == v61[0])
        {
          break;
        }

        v36 = sub_237C08B9C();
        v39 = *v37;
        v38 = v37[1];

        v36(v61, 0);
        sub_237C08B6C();
        v40 = *(v59 + 36);
        v41 = v56;
        sub_237C08B5C();
        if (*(v41 + v40) == v61[0])
        {

          break;
        }

        v42 = sub_237C08B9C();
        v45 = *v43;
        v44 = v43[1];

        v42(v61, 0);
        sub_237C08B6C();
        if (v38)
        {
          v46 = v39;
        }

        else
        {
          v46 = 0;
        }

        if (v38)
        {
          v47 = v38;
        }

        else
        {
          v47 = 0xE000000000000000;
        }

        if (v44)
        {
          v48 = v45;
        }

        else
        {
          v48 = 0;
        }

        if (!v44)
        {
          v44 = 0xE000000000000000;
        }

        v49 = v60;
        v62 = v60;
        v50 = *(v60 + 16);
        if (v50 >= *(v60 + 24) >> 1)
        {
          sub_237AC8EB4();
          v49 = v62;
        }

        *(v49 + 16) = v50 + 1;
        v60 = v49;
        v51 = (v49 + 32 * v50);
        v51[4] = v46;
        v51[5] = v47;
        v51[6] = v48;
        v51[7] = v44;
        v19 = v57;
      }

      *(v19 + *(v54 + 56)) = 1;
      sub_2379D9054(v19, &qword_27DE9D4F0, &unk_237C14A80);
      return v60;
    }

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
    sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
    while (1)
    {
      sub_237C08B5C();
      if (*(v19 + v22) == v61[0])
      {
        break;
      }

      v59 = v14;
      v23 = sub_237C08B9C();
      v26 = *v24;
      v25 = v24[1];

      v23(v61, 0);
      sub_237C08B6C();
      sub_237C08B5C();
      if (*(v21 + v22) == v61[0])
      {
        goto LABEL_40;
      }

      v27 = sub_237C08B9C();
      v29 = v28[1];
      i = *v28;

      v27(v61, 0);
      sub_237C08B6C();
      if (v25)
      {
        v30 = v25;
      }

      else
      {
        v26 = 0;
        v30 = 0xE000000000000000;
      }

      if (v29)
      {
        v31 = i;
      }

      else
      {
        v31 = 0;
      }

      if (!v29)
      {
        v29 = 0xE000000000000000;
      }

      v32 = v60;
      v62 = v60;
      v33 = *(v60 + 16);
      if (v33 >= *(v60 + 24) >> 1)
      {
        sub_237AC8EB4();
        v32 = v62;
      }

      *(v32 + 16) = v33 + 1;
      v60 = v32;
      v34 = (v32 + 32 * v33);
      v34[4] = v26;
      v34[5] = v30;
      v34[6] = v31;
      v34[7] = v29;
      v14 = v59 - 1;
      v21 = v56;
      v19 = v57;
      if (v59 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:

  __break(1u);
  return result;
}

uint64_t sub_237B42F98(uint64_t a1)
{
  result = MEMORY[0x2383DC660](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_237B4694C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_237B43058()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B948, &qword_237C13CD0);
  OUTLINED_FUNCTION_9_42(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_13_32(&qword_27DE9B938);
  OUTLINED_FUNCTION_16_26();
  v6 = sub_237C0887C();
  v14 = MEMORY[0x2383DC660](v6, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v7 = *(v1 + 44);
  OUTLINED_FUNCTION_12_39(&qword_27DE9AA90);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    if (*(v0 + v7) == v13)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_6_53();
    v10 = *v9;
    v11 = v9[1];

    v8(&v13, 0);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    sub_237B4694C(&v13, v10, v11);
  }

  sub_2379D9054(v0, &qword_27DE9B948, &qword_237C13CD0);
  return v14;
}

void sub_237B431E0()
{
  OUTLINED_FUNCTION_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D520, &qword_237C13D00);
  OUTLINED_FUNCTION_9_42(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_13_32(&qword_27DE9D530);
  OUTLINED_FUNCTION_16_26();
  sub_237C0887C();
  v6 = OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_237B4A304(&qword_27DE9D4C8, &qword_27DE9CA40, &unk_237C11B10);
  v8 = OUTLINED_FUNCTION_175();
  MEMORY[0x2383DC660](v8);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v9 = *(v1 + 44);
  sub_2379D9224(&qword_27DE9D538, &qword_27DE9D528, &qword_237C13D08);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    OUTLINED_FUNCTION_26_21();
    if (v10)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_6_53();
    v13 = OUTLINED_FUNCTION_31_18(v11, v12);
    v14(v13);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    v15 = OUTLINED_FUNCTION_28_17();
    sub_237B46A98(v15, v16, &qword_237C13D08);
  }

  sub_2379D9054(v0, &qword_27DE9D520, &qword_237C13D00);
  OUTLINED_FUNCTION_150();
}

void sub_237B43384()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = *(v1 + 16);
  v15 = sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260]);
  v24[1] = MEMORY[0x2383DC660](v14, v2, v15);
  v16 = *(v1 + 16);
  if (v16)
  {
    v19 = *(v5 + 16);
    v17 = v5 + 16;
    v18 = v19;
    v20 = *(v17 + 64);
    v24[0] = v1;
    v21 = v1 + ((v20 + 32) & ~v20);
    v22 = *(v17 + 56);
    do
    {
      v23 = OUTLINED_FUNCTION_55_1();
      v18(v23);
      sub_237B46BEC(v13, v10);
      (*(v17 - 8))(v13, v2);
      v21 += v22;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B4351C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D510, &unk_237C13CF0);
  OUTLINED_FUNCTION_9_42(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_13_32(&qword_27DE9D518);
  OUTLINED_FUNCTION_16_26();
  v6 = sub_237C0887C();
  v13 = MEMORY[0x2383DC660](v6, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v7 = *(v1 + 44);
  OUTLINED_FUNCTION_12_39(&qword_27DE9C9E0);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    if (*(v0 + v7) == v12[0])
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_6_53();
    v10 = *v9;
    v8(v12, 0);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    sub_237B46EB4(v12, v10);
  }

  sub_2379D9054(v0, &qword_27DE9D510, &unk_237C13CF0);
  return v13;
}

void sub_237B4368C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_237B4A928(&qword_27DE9A920, type metadata accessor for URLResourceKey);
  v6 = MEMORY[0x2383DC660](v2, v4, v5);
  v7 = 0;
  v10[1] = v6;
  v8 = *(a1 + 16);
  while (1)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = v7 + 1;
    sub_237B46F84(v10, *(a1 + 8 * v7 + 32));

    v7 = v9;
  }

  __break(1u);
}

void sub_237B43770()
{
  OUTLINED_FUNCTION_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
  OUTLINED_FUNCTION_9_42(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_11_41(&qword_27DE9D438);
  OUTLINED_FUNCTION_16_26();
  sub_237C0887C();
  v6 = OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_237B4A304(&qword_27DE9D4B0, &qword_27DE9B210, &unk_237C11B00);
  v8 = OUTLINED_FUNCTION_175();
  v18[4] = MEMORY[0x2383DC660](v8);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v9 = *(v1 + 44);
  OUTLINED_FUNCTION_0_73();
  sub_2379D9224(v10, &qword_27DE9ACA0, &unk_237C0E0E0);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    OUTLINED_FUNCTION_26_21();
    if (v11)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_6_53();
    v14 = *v13;
    v15 = v13[1];

    v12(v18, 0);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    v16 = OUTLINED_FUNCTION_28_17();
    sub_237B47128(v16, v17, v15);
  }

  sub_2379D9054(v0, &qword_27DE9D448, &unk_237C13C80);
  OUTLINED_FUNCTION_150();
}

void sub_237B43914()
{
  OUTLINED_FUNCTION_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4B8, &qword_237C13C98);
  OUTLINED_FUNCTION_9_42(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127_0();
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_11_41(&qword_27DE9D4C0);
  OUTLINED_FUNCTION_16_26();
  sub_237C0887C();
  v6 = OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_237B4A304(&qword_27DE9D4C8, &qword_27DE9CA40, &unk_237C11B10);
  v8 = OUTLINED_FUNCTION_175();
  MEMORY[0x2383DC660](v8);
  OUTLINED_FUNCTION_16_26();
  sub_237C0885C();
  v9 = *(v1 + 44);
  OUTLINED_FUNCTION_0_73();
  sub_2379D9224(v10, &qword_27DE9AB98, &unk_237C0B900);
  while (1)
  {
    OUTLINED_FUNCTION_19_29();
    OUTLINED_FUNCTION_26_21();
    if (v11)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_6_53();
    v14 = OUTLINED_FUNCTION_31_18(v12, v13);
    v15(v14);
    OUTLINED_FUNCTION_22_24();
    sub_237C08B6C();
    v16 = OUTLINED_FUNCTION_28_17();
    sub_237B46A98(v16, v17, &unk_237C0B900);
  }

  sub_2379D9054(v0, &qword_27DE9D4B8, &qword_237C13C98);
  OUTLINED_FUNCTION_150();
}

void sub_237B43A98(uint64_t a1)
{
  v2 = 0;
  MEMORY[0x2383DC660](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_5_33();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      OUTLINED_FUNCTION_22_24();
      sub_237B4694C(v15, v16, v17);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_237B43B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = sub_237AF2238(a3);
  if (!v3)
  {
    v8 = v7;
    v9 = *(a1 + 16);
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D837D0];
    v36 = v7;
    if (v9)
    {
      v35 = a2;
      aBlock = MEMORY[0x277D84F90];
      sub_237C08FCC();
      sub_2379E8EE0(0, &qword_27DE9D4D8, 0x277CBEAC0);
      v12 = (a1 + 56);
      do
      {
        v13 = *(v12 - 3);
        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v16 = *v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4E0, &unk_237C13CC0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_237C0B670;
        *(v17 + 32) = 0x6C6562614CLL;
        *(v17 + 40) = 0xE500000000000000;
        *(v17 + 56) = v11;
        *(v17 + 64) = v15;
        *(v17 + 72) = v16;
        *(v17 + 88) = v11;
        *(v17 + 96) = 0x676E69727453;
        *(v17 + 104) = 0xE600000000000000;
        *(v17 + 152) = v11;
        *(v17 + 120) = v11;
        *(v17 + 128) = v13;
        *(v17 + 136) = v14;

        sub_237C08C0C();
        sub_237C08F8C();
        v18 = *(aBlock + 16);
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        v12 += 4;
        --v9;
      }

      while (v9);
      v10 = aBlock;
      v8 = v36;
      a2 = v35;
    }

    v19 = *(a2 + 16);
    v20 = MEMORY[0x277D84F90];
    if (v19)
    {
      aBlock = MEMORY[0x277D84F90];
      sub_237C08FCC();
      sub_2379E8EE0(0, &qword_27DE9D4D8, 0x277CBEAC0);
      v21 = (a2 + 56);
      do
      {
        v23 = *(v21 - 3);
        v22 = *(v21 - 2);
        v25 = *(v21 - 1);
        v24 = *v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4E0, &unk_237C13CC0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_237C0B670;
        *(v26 + 32) = 0x6C6562614CLL;
        *(v26 + 40) = 0xE500000000000000;
        *(v26 + 56) = v11;
        *(v26 + 64) = v25;
        *(v26 + 72) = v24;
        *(v26 + 88) = v11;
        *(v26 + 96) = 0x676E69727453;
        *(v26 + 104) = 0xE600000000000000;
        *(v26 + 152) = v11;
        *(v26 + 120) = v11;
        *(v26 + 128) = v23;
        *(v26 + 136) = v22;

        sub_237C08C0C();
        sub_237C08F8C();
        v27 = *(aBlock + 16);
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        v21 += 4;
        --v19;
      }

      while (v19);
      v20 = aBlock;
      v8 = v36;
    }

    v43 = 0;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
      sub_237B06298(v10);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v20 < 0 || (v20 & 0x4000000000000000) != 0)
    {
      sub_237B06298(v20);
    }

    v41 = sub_237AF2E0C;
    v42 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_237B440E4;
    v40 = &block_descriptor_7;
    v28 = _Block_copy(&aBlock);
    v41 = nullsub_1;
    v42 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_237B44140;
    v40 = &block_descriptor_4;
    v29 = _Block_copy(&aBlock);
    TrainedModelWithData = NLPClassifierModelCreateTrainedModelWithData();
    _Block_release(v29);
    _Block_release(v28);

    v30 = v43;
    if (v43)
    {
      type metadata accessor for CFError(0);
      sub_237B4A928(&qword_27DE9D4E8, type metadata accessor for CFError);
      swift_allocError();
      *v31 = v30;
    }

    else
    {
      if (TrainedModelWithData)
      {

        goto LABEL_21;
      }

      sub_2379E8AF0();
      swift_allocError();
      *v34 = 0xD00000000000002DLL;
      *(v34 + 8) = 0x8000000237C1D160;
      *(v34 + 16) = 0u;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0;
    }

    swift_willThrow();
  }

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
  return TrainedModelWithData;
}

uint64_t sub_237B440E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

void sub_237B44140(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void (*MLTextClassifier.model.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_237B44268;
}

void sub_237B44268(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 16) = v5;
  }

  else
  {

    *(v2 + 16) = v4;
  }
}

uint64_t MLTextClassifier.modelParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLTextClassifier() + 28);
  OUTLINED_FUNCTION_1_70();
  return sub_237B46504(v1 + v4, a1, v5);
}

uint64_t type metadata accessor for MLTextClassifier()
{
  result = qword_27DE9D490;
  if (!qword_27DE9D490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLTextClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  a10 = v27;
  v28 = type metadata accessor for MLTextClassifier.ModelParameters();
  v29 = OUTLINED_FUNCTION_20(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v34 = v33 - v32;
  v35 = sub_237C05DBC();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &a9 - v45;
  sub_237B460B4(v26, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);

  if (v20)
  {
    OUTLINED_FUNCTION_0_74();
    sub_237B46560(v24, v47);
  }

  else
  {
    (*(v38 + 16))(v43, v46, v35);
    OUTLINED_FUNCTION_1_70();
    sub_237B46504(v24, v34, v48);
    MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)();
    OUTLINED_FUNCTION_0_74();
    sub_237B46560(v24, v49);
    (*(v38 + 8))(v46, v35);
  }

  OUTLINED_FUNCTION_73();
}

void MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v184 = v1;
  v185 = v0;
  v3 = v2;
  v191 = v4;
  v186 = v5;
  v183 = v6;
  v8 = v7;
  v10 = v9;
  v173 = sub_237C05CFC();
  v11 = OUTLINED_FUNCTION_0(v173);
  v177 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v16 - v15);
  v175 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  v17 = OUTLINED_FUNCTION_4(v175);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v21 - v20);
  v22 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v23 = OUTLINED_FUNCTION_20(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v172 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v179 = v163 - v29;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  OUTLINED_FUNCTION_4(v178);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21_3(v163 - v33);
  v180 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v34 = OUTLINED_FUNCTION_4(v180);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v181 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  v44 = v163 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v45);
  v182 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = v163 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55);
  v57 = v163 - v56;
  v58 = sub_237C05DBC();
  v59 = OUTLINED_FUNCTION_0(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18_0();
  v64 = v62 - v63;
  MEMORY[0x28223BE20](v65);
  v189 = v67;
  v190 = v66;
  v68 = *(v67 + 16);
  v192 = v163 - v69;
  v187 = v8;
  v68();
  v70 = type metadata accessor for MLTextClassifier();
  v71 = v10;
  v72 = v10 + *(v70 + 28);
  OUTLINED_FUNCTION_1_70();
  v188 = v3;
  sub_237B46504(v3, v72, v73);
  v74 = v185;
  sub_237BADC50();
  v196 = v72;
  if (v74)
  {

LABEL_6:
    v80 = OUTLINED_FUNCTION_37_13();
    (v70)(v80);
    v81 = OUTLINED_FUNCTION_175();
    (v70)(v81);
    OUTLINED_FUNCTION_0_74();
    sub_237B46560(v188, v82);
LABEL_7:
    OUTLINED_FUNCTION_0_74();
    v84 = v196;
LABEL_8:
    sub_237B46560(v84, v83);
    OUTLINED_FUNCTION_73();
    return;
  }

  v169 = v57;
  v185 = v51;
  v167 = v44;
  v170 = v45;
  v166 = v64;
  v75 = v186;
  v165 = v70;
  v168 = v71;
  v76 = type metadata accessor for MLTextClassifier.ModelParameters();
  v77 = v72 + *(v76 + 36);
  if ((*(v77 + 8) & 1) == 0 && *v77 <= 0)
  {

    OUTLINED_FUNCTION_20_1();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_25_25(v85, 0xD000000000000036);
    *(v86 + 48) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_237BADE40();
  v78 = v191;
  v79 = v192;
  sub_237B45630();
  sub_237C05DEC();
  *&v195 = 0;
  *(&v195 + 1) = 0xE000000000000000;
  v87 = sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
  v88 = v170;
  v163[1] = v87;
  v89 = v185;
  sub_237C05EAC();
  v90 = *(v182 + 8);
  v182 += 8;
  v163[0] = v90;
  v90(v89, v88);
  v164 = sub_237B43058();
  v168[1] = v164;
  sub_2379FC864(v196 + *(v76 + 24), &v193, &qword_27DE9A998, &unk_237C0C100);
  if (v194)
  {
    sub_2379DAD24(&v193, &v195);
    swift_dynamicCast();
    v91 = v167;
    sub_237B68E28(v79, v183, v75, v184, v78, v167);
    v180 = v76;
    OUTLINED_FUNCTION_17_25();
    v93 = v190;
    if (__swift_getEnumTagSinglePayload(v91, 1, v190) == 1)
    {
      sub_2379D9054(v91, &qword_27DE9A9A0, &qword_237C0BF60);
      v185 = MEMORY[0x277D84F90];
      v94 = v174;
    }

    else
    {
      v95 = v189;
      (*(v189 + 32))(v166, v91, v93);
      v96 = v185;
      sub_237C05DEC();
      *&v195 = 0;
      *(&v195 + 1) = 0xE000000000000000;
      v97 = v170;
      sub_237C05EAC();
      (v163[0])(v96, v97);
      v98 = sub_237B43058();
      v99 = sub_237B458F8(v164, v98);

      if ((v99 & 1) == 0)
      {

        OUTLINED_FUNCTION_20_1();
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_25_25(v120, 0xD00000000000003ELL);
        *(v121 + 48) = 2;
        swift_willThrow();
        v122 = *(v95 + 8);
        v122(v187, v93);
        v122(v166, v93);
        v122(v192, v93);
        OUTLINED_FUNCTION_0_74();
        sub_237B46560(v188, v123);
LABEL_12:

        goto LABEL_7;
      }

      v100 = v166;
      v94 = v174;
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_38_14();
      sub_237C05DEC();
      OUTLINED_FUNCTION_30_18();
      OUTLINED_FUNCTION_38_14();
      sub_237C05DEC();
      v185 = sub_237B42924(v94);
      sub_2379D9054(v94, &qword_27DE9D478, &qword_237C13BC0);
      (*(v95 + 8))(v100, v93);
    }

    OUTLINED_FUNCTION_38_14();
    sub_237C05DEC();

    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_38_14();
    sub_237C05DEC();

    v101 = sub_237B42924(v94);
    v102 = 0;
    sub_2379D9054(v94, &qword_27DE9D478, &qword_237C13BC0);
    v103 = v176;
    sub_237B46504(v196, v176, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v105 = v177;
    v106 = v179;
    if (EnumCaseMultiPayload != 2)
    {
      sub_237B46560(v103, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
      v117 = v188;
      v118 = v173;
      v119 = v185;
LABEL_38:
      v138 = sub_237B43B9C(v101, v119, v196);
      if (!v102)
      {
        v140 = v168;
        *v168 = v138;
        v141 = v138;
        v142 = sub_237AAB394();
        v191 = 0;
        v148 = v142;

        v140[2] = v148;
        v149 = v165;
        v150 = v140 + *(v165 + 32);
        OUTLINED_FUNCTION_37_0();
        sub_237B45AB8();

        if (*(v119 + 16))
        {
          v151 = v140 + *(v149 + 36);
          sub_237B45AB8();
        }

        else
        {

          OUTLINED_FUNCTION_20_1();
          sub_2379E8AF0();
          OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_25_25(v152, 0xD00000000000001CLL);
          *(v153 + 48) = 2;
          *(v140 + *(v149 + 36)) = v154;
          type metadata accessor for MLClassifierMetrics.Contents(0);
          swift_storeEnumTagMultiPayload();
        }

        v155 = v171;
        sub_237C05D0C();
        v156 = sub_237C05CEC();
        (*(v105 + 8))(v155, v118);
        v157 = *(v164 + 16);
        v158 = *(v117 + *(v180 + 20));
        if ((sub_237A37A64() & 1) == 0)
        {
          OUTLINED_FUNCTION_45_10();
          OUTLINED_FUNCTION_45_10();
          MLTextClassifier.ModelAlgorithmType.description.getter();
          v156 = v159;
          sub_237A3825C(15);

          if (v158)
          {
            sub_237C086EC();
            v158 = v160;
          }

          else
          {
            OUTLINED_FUNCTION_20_1();
          }

          sub_237A3825C(15);
        }

        v162 = OUTLINED_FUNCTION_18_31();
        v158(v162);
        (v158)(v192, v156);
        OUTLINED_FUNCTION_0_74();
        v84 = v117;
        goto LABEL_8;
      }

      v139 = OUTLINED_FUNCTION_18_31();
      (v101)(v139);
      (v101)(v192, v102);
      OUTLINED_FUNCTION_0_74();
      sub_237B46560(v117, v92);
      OUTLINED_FUNCTION_41_10();
      goto LABEL_12;
    }

    v191 = 0;
    v107 = OUTLINED_FUNCTION_55_1();
    sub_237AF2E40(v107, v108);
    v109 = *(v101 + 16);
    v110 = MEMORY[0x277D84F90];
    if (v109)
    {
      *&v195 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_27_15();
      sub_237AC8A74();
      v110 = v195;
      v111 = (v101 + 40);
      do
      {
        v113 = *(v111 - 1);
        v112 = *v111;
        *&v195 = v110;
        v115 = *(v110 + 16);
        v114 = *(v110 + 24);

        if (v115 >= v114 >> 1)
        {
          sub_237AC8A74();
          v110 = v195;
        }

        *(v110 + 16) = v115 + 1;
        v116 = v110 + 16 * v115;
        *(v116 + 32) = v113;
        *(v116 + 40) = v112;
        v111 += 4;
        --v109;
      }

      while (v109);
      v105 = v177;
      v106 = v179;
    }

    v124 = *(v196 + *(v180 + 20));
    v117 = v188;
    v119 = v185;
    if (v124)
    {
      v125 = v124;
    }

    else
    {
      v143 = sub_2379E8EE0(0, &qword_27DE9D480, 0x277CD89C0);
      v144 = v191;
      v125 = sub_237A2AB98(v110);
      v191 = v144;
      if (v144)
      {

        v145 = OUTLINED_FUNCTION_18_31();
        (v101)(v145);
        OUTLINED_FUNCTION_2_69();
        sub_237B46560(v106, v146);
        (v101)(v192, v143);
        OUTLINED_FUNCTION_0_74();
        sub_237B46560(v117, v147);
        OUTLINED_FUNCTION_41_10();

        goto LABEL_7;
      }
    }

    v126 = v125;

    v127 = v172;
    sub_237B46504(v106, v172, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v128 = sub_237B0C068(v127);
    if (sub_237C086EC() == 0x6D6F74737543 && v129 == 0xE600000000000000)
    {
    }

    else
    {
      v131 = sub_237C0929C();

      if ((v131 & 1) == 0)
      {
        sub_2379E8EE0(0, &qword_27DE9D488, 0x277CD89B0);
        v132 = v191;
        sub_237A2B084(v128, v126);
        v102 = v132;
        v133 = v179;
        if (v132)
        {

          v134 = OUTLINED_FUNCTION_42_12();
          (v101)(v134);
          OUTLINED_FUNCTION_2_69();
          sub_237B46560(v133, v135);
          (v101)(v192, v126);
          OUTLINED_FUNCTION_0_74();
          sub_237B46560(v117, v136);
          OUTLINED_FUNCTION_41_10();

          goto LABEL_7;
        }

        OUTLINED_FUNCTION_2_69();
        sub_237B46560(v133, v161);

        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_2_69();
    sub_237B46560(v179, v137);

    v102 = v191;
LABEL_37:
    v118 = v173;
    goto LABEL_38;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLTextClassifier.ModelParameters();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C05DBC();
  v12 = OUTLINED_FUNCTION_20(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  LOBYTE(v16) = *(v3 + 8);
  v20 = *v3;
  v21 = v16;
  sub_237A70ED4(&v20, v17);
  OUTLINED_FUNCTION_1_70();
  sub_237B46504(v1, v10, v18);
  MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)();
  OUTLINED_FUNCTION_0_74();
  sub_237B46560(v1, v19);
  OUTLINED_FUNCTION_73();
}

void sub_237B45630()
{
  OUTLINED_FUNCTION_74();
  v27 = v0;
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_237C0602C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_237C05C9C();
  if (v16)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C1D190);
    v17 = v5;
    v18 = v3;
LABEL_6:
    MEMORY[0x2383DC360](v17, v18);
    MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C1D1B0);
    v23 = 0;
    v22 = 0xE000000000000000;
    sub_237C08C3C();
LABEL_11:
    sub_237BABE74(v23, v22);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v25 = v23;
    *(v25 + 8) = v22;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 1;
    swift_willThrow();
    goto LABEL_12;
  }

  sub_237C05D5C();
  sub_237C05FFC();
  v19 = *(v9 + 8);
  v20 = OUTLINED_FUNCTION_55_1();
  v19(v20);
  if (!swift_dynamicCastMetatype())
  {
    v22 = 0x8000000237C1D1E0;
    sub_237C08C3C();
    v24 = 9;
LABEL_10:
    v23 = v24 | 0xD000000000000024;
    goto LABEL_11;
  }

  sub_237C05C9C();
  if (v21)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1D210);
    v17 = v26;
    v18 = v27;
    goto LABEL_6;
  }

  sub_237C05D5C();
  sub_237C05FFC();
  (v19)(v14, v6);
  if (!swift_dynamicCastMetatype())
  {
    v22 = 0x8000000237C1D230;
    sub_237C08C3C();
    v24 = 10;
    goto LABEL_10;
  }

LABEL_12:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B458F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_237C093CC();

        sub_237C0878C();
        v18 = sub_237C0940C();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_237C0929C();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_237B45AB8()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = *(v3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v38 = &v36 - v12;
    v39 = v8;
    v40 = v6;
    v41 = v5;
    v43 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_27_15();
    sub_237AC8A74();
    v16 = v43;
    v37 = v3;
    v17 = (v3 + 56);
    v18 = v14;
    do
    {
      v20 = *(v17 - 3);
      v19 = *(v17 - 2);
      v21 = *v17;

      v22 = sub_237C086BC();
      v23 = [v1 predictedLabelForString_];

      if (v23)
      {
        v24 = sub_237C086EC();
        v26 = v25;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v43 = v16;
      v27 = *(v16 + 16);
      if (v27 >= *(v16 + 24) >> 1)
      {
        sub_237AC8A74();
        v16 = v43;
      }

      *(v16 + 16) = v27 + 1;
      v28 = v16 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      v17 += 4;
      --v18;
    }

    while (v18);
    v43 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_27_15();
    sub_237AC8A74();
    v15 = v43;
    v13 = v38;
    v29 = (v37 + 56);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v43 = v15;
      v33 = *(v15 + 16);
      v32 = *(v15 + 24);
      v34 = v15;

      v15 = v34;
      if (v33 >= v32 >> 1)
      {
        sub_237AC8A74();
        v15 = v43;
      }

      *(v15 + 16) = v33 + 1;
      v35 = v15 + 16 * v33;
      *(v35 + 32) = v30;
      *(v35 + 40) = v31;
      v29 += 4;
      --v14;
    }

    while (v14);
    v6 = v40;
    v5 = v41;
    v8 = v39;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v42 = v15;
  v43 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_2379D9224(&qword_27DE9B8B8, &qword_27DE9AE60, &qword_237C0D000);
  sub_237C06FBC();
  (*(v8 + 32))(v5, v13, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_150();
}

void sub_237B45F18(uint64_t a1)
{
  v1 = a1;
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_5_33();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = 0;

  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      v24 = OUTLINED_FUNCTION_37_0();
      v26 = sub_237B4A66C(v24, v25);

      sub_237B99678(v26);

      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_6:
        v12 = __clz(__rbit64(v7)) | (v10 << 6);
        v13 = *(v1 + 56);
        v14 = *(v13 + 8 * v12);
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = (*(v1 + 48) + 16 * v12);
          v18 = *v16;
          v17 = v16[1];

          v19 = sub_237C0898C();
          *(v19 + 16) = v15;
          v20 = v15 - 1;
          for (i = 32; ; i += 16)
          {
            v22 = (v19 + i);
            *v22 = v18;
            v22[1] = v17;
            if (!v20)
            {
              break;
            }

            --v20;
          }

          v1 = v27;
        }

        else
        {
          v23 = *(v13 + 8 * v12);

          v19 = MEMORY[0x277D84F90];
        }

        v7 &= v7 - 1;
        sub_237A96708(v19);
        sub_237A96708(v14);
      }

      while (v7);
    }
  }

  __break(1u);
}

uint64_t sub_237B460B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237B45F18(a1);
  v33 = v8;
  sub_237B4A484();
  v9 = v33[2];
  if (v9)
  {
    v29 = a3;
    v30 = a4;
    v31 = a5;
    OUTLINED_FUNCTION_34_16();
    v10 = v33;
    v11 = v33 + 5;
    v12 = v9;
    do
    {
      v14 = *(v11 - 1);
      v13 = *v11;
      v16 = v33[2];
      v15 = v33[3];

      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_33_18();
      }

      v33[2] = v16 + 1;
      v17 = &v33[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
      v11 += 4;
      --v12;
    }

    while (v12);
    OUTLINED_FUNCTION_34_16();
    v18 = v33;
    v19 = v33 + 7;
    a4 = v30;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v23 = v33[2];
      v22 = v33[3];

      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_33_18();
      }

      v33[2] = v23 + 1;
      v24 = &v33[2 * v23];
      v24[4] = v20;
      v24[5] = v21;
      v19 += 4;
      --v9;
    }

    while (v9);

    a5 = v31;
    a3 = v29;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F8, &qword_237C13CD8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_237C0B670;
  *(v25 + 32) = a2;
  *(v25 + 40) = a3;

  v26 = sub_237B99DC0(v10);

  *(v25 + 48) = v26;
  *(v25 + 56) = a4;
  *(v25 + 64) = a5;

  v27 = sub_237B99DC0(v18);

  *(v25 + 72) = v27;
  return sub_237C05CBC();
}

void MLTextClassifier.debugDescription.getter()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLTextClassifier();
  v10 = v0 + v9[7];
  v11 = MLTextClassifier.ModelParameters.description.getter();
  v13 = v12;
  v14 = v1 + v9[8];
  v15 = MLClassifierMetrics.description.getter();
  v17 = v16;
  sub_237B46504(v1 + v9[9], v8, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v9) = swift_getEnumCaseMultiPayload();
  sub_237B46560(v8, type metadata accessor for MLClassifierMetrics.Contents);
  v18 = MLClassifierMetrics.description.getter();
  v20 = v19;
  MEMORY[0x2383DC360](v11, v13);

  MEMORY[0x2383DC360](v15, v17);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v9 <= 1)
  {
    MEMORY[0x2383DC360](v18, v20);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  OUTLINED_FUNCTION_150();
}

id MLTextClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLTextClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B46504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237B46560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_237B465B8@<X0>(void *a1@<X8>)
{
  result = MLTextClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B465FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLTextClassifier.ModelParameters();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237B466DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLTextClassifier.ModelParameters();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_237B467A4()
{
  sub_2379E8EE0(319, &qword_27DE9C5F8, 0x277CD89D0);
  if (v0 <= 0x3F)
  {
    sub_237B46890();
    if (v1 <= 0x3F)
    {
      sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MLTextClassifier.ModelParameters();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MLClassifierMetrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237B46890()
{
  if (!qword_27DE9D4A0)
  {
    v0 = sub_237C08ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D4A0);
    }
  }
}

uint64_t sub_237B468E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_237C10D40;
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

BOOL sub_237B4694C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_237C093CC();
  sub_237C0878C();
  v9 = sub_237C0940C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_237C0929C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_237B481F8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_237B46A98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_237C093CC();
  sub_237C093EC();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x2383DCF70](a2);
  }

  v9 = sub_237C0940C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v15)
      {
        if (a3)
        {
          result = 0;
          a2 = v14;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v14 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v16 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;
  sub_237B48360(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  result = 1;
  v15 = a3;
LABEL_12:
  *a1 = a2;
  *(a1 + 8) = v15 & 1;
  return result;
}

BOOL sub_237B46BEC(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260]);
  v30 = a2;
  v11 = sub_237C0861C();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_237B48500(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_237B4A928(&qword_27DE9C860, MEMORY[0x277CC9260]);
    v17 = sub_237C0867C();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_237B46EB4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_237C093BC();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_237B4878C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_237B46F84(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_237C086EC();
  sub_237C093CC();
  sub_237C0878C();
  v6 = sub_237C0940C();

  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v17 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v23;
      v19 = a2;
      sub_237B48890(v19, v8, isUniquelyReferenced_nonNull_native);
      *v23 = v25;
      *a1 = v19;
      return v9 == 0;
    }

    v10 = *(*(v4 + 48) + 8 * v8);
    v11 = sub_237C086EC();
    v13 = v12;
    if (v11 == sub_237C086EC() && v13 == v14)
    {

      goto LABEL_12;
    }

    v16 = sub_237C0929C();

    if (v16)
    {
      break;
    }

    v6 = v8 + 1;
  }

LABEL_12:
  v20 = *(*(v4 + 48) + 8 * v8);
  *a1 = v20;
  v21 = v20;
  return v9 == 0;
}

uint64_t sub_237B47128(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_237C093CC();
  sub_237C093EC();
  if (a3)
  {
    sub_237C0878C();
  }

  v9 = sub_237C0940C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_15:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_237B48A60(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_14:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_237C0929C() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_237B472B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  result = sub_237C08E9C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_237B468E8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_237C093CC();
    sub_237C0878C();
    result = sub_237C0940C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B4750C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
  result = sub_237C08E9C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_237B468E8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 16 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v6 + 40);
    sub_237C093CC();
    sub_237C093EC();
    if (v19 != 1)
    {
      MEMORY[0x2383DCF70](v18);
    }

    result = sub_237C0940C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v6 + 48) + 16 * v24;
    *v29 = v18;
    *(v29 + 8) = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_237B4778C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_237C05ADC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4D0, &unk_237C13CB0);
  result = sub_237C08E9C();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_237B468E8(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260]);
    result = sub_237C0861C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B47AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D508, &qword_237C13CE8);
  result = sub_237C08E9C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_237B468E8(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_237C093BC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B47D08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D500, &qword_237C13CE0);
  result = sub_237C08E9C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v30 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237B468E8(0, (v28 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_237C086EC();
    sub_237C093CC();
    sub_237C0878C();
    v19 = sub_237C0940C();

    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    v3 = v30;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237B47F80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
  result = sub_237C08E9C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_237B468E8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v6 + 40);
    sub_237C093CC();
    sub_237C093EC();
    if (v18)
    {
      sub_237C0878C();
    }

    result = sub_237C0940C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_237B481F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237B472B0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_237B494DC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_237C093CC();
      sub_237C0878C();
      result = sub_237C0940C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_237C0929C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_237B48C1C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_237B48360(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237B4750C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_237B48D74();
        goto LABEL_18;
      }

      sub_237B49710(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_237C093CC();
    sub_237C093EC();
    if ((a2 & 1) == 0)
    {
      MEMORY[0x2383DCF70](v7);
    }

    result = sub_237C0940C();
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      do
      {
        v14 = *(v10 + 48) + 16 * a3;
        if (*(v14 + 8))
        {
          if (a2)
          {
            goto LABEL_21;
          }
        }

        else if ((a2 & 1) == 0 && *v14 == v7)
        {
          goto LABEL_21;
        }

        a3 = (a3 + 1) & v13;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_18:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v7;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA40, &unk_237C11B10);
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_237B48500(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_237C05ADC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237B4778C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_237B49960(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260]);
      v15 = sub_237C0861C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_237B4A928(&qword_27DE9C860, MEMORY[0x277CC9260]);
        v17 = sub_237C0867C();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_237B48EC4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_237B4878C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237B47AE4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237B49C78(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_237C093BC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237B490F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_237B48890(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237B47D08(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_237B49E64(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_237C086EC();
      sub_237C093CC();
      sub_237C0878C();
      v15 = sub_237C0940C();

      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for URLResourceKey(0);
        v17 = *(*(v13 + 48) + 8 * a2);
        v18 = sub_237C086EC();
        v20 = v19;
        if (v18 == sub_237C086EC() && v20 == v21)
        {
          goto LABEL_19;
        }

        v23 = sub_237C0929C();

        if (v23)
        {
          goto LABEL_20;
        }

        v15 = a2 + 1;
      }
    }

    result = sub_237B49238();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t sub_237B48A60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237B47F80(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_237B49388();
        goto LABEL_22;
      }

      sub_237B4A0B4(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_237C093CC();
    sub_237C093EC();
    if (a2)
    {
      sub_237C0878C();
    }

    result = sub_237C0940C();
    v13 = v11 + 56;
    v14 = -1 << *(v11 + 32);
    a3 = result & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = *(v11 + 48);
      do
      {
        v17 = (v16 + 16 * a3);
        v18 = v17[1];
        if (v18)
        {
          if (a2)
          {
            if (*v17 == v8 && v18 == a2)
            {
              goto LABEL_25;
            }

            result = sub_237C0929C();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B210, &unk_237C11B00);
    result = sub_237C0931C();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_237B48C1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_237B48D74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_237B48EC4()
{
  v1 = v0;
  v2 = sub_237C05ADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4D0, &unk_237C13CB0);
  v7 = *v0;
  v8 = sub_237C08E8C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_237B490F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D508, &qword_237C13CE8);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_237B49238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D500, &qword_237C13CE0);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_237B49388()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
  v2 = *v0;
  v3 = sub_237C08E8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_237B494DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  result = sub_237C08E9C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_237C093CC();

        sub_237C0878C();
        result = sub_237C0940C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_237B49710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
  result = sub_237C08E9C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v3 + 48) + 16 * (v13 | (v7 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v6 + 40);
        sub_237C093CC();
        sub_237C093EC();
        if (v18 != 1)
        {
          MEMORY[0x2383DCF70](v17);
        }

        result = sub_237C0940C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v6 + 48) + 16 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_29;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_237B49960(uint64_t a1)
{
  v2 = v1;
  v37 = sub_237C05ADC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4D0, &unk_237C13CB0);
  v10 = sub_237C08E9C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_237B4A928(&qword_27DE9C210, MEMORY[0x277CC9260]);
        result = sub_237C0861C();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_237B49C78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D508, &qword_237C13CE8);
  result = sub_237C08E9C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_237C093BC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_237B49E64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D500, &qword_237C13CE0);
  result = sub_237C08E9C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_237C086EC();
        sub_237C093CC();
        v19 = v17;
        sub_237C0878C();
        v20 = sub_237C0940C();

        v21 = -1 << *(v6 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v6 + 48) + 8 * v24) = v19;
        ++*(v6 + 16);
        v3 = v30;
        if (!v11)
        {
          goto LABEL_9;
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
        v28 = *(v13 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_237B4A0B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
  result = sub_237C08E9C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_237C093CC();
        sub_237C093EC();
        if (v17)
        {

          sub_237C0878C();
        }

        result = sub_237C0940C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_29;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_237B4A304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_237B4A36C()
{
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 < 2)
  {
LABEL_18:
    OUTLINED_FUNCTION_150();
  }

  else
  {
    v4 = 0;
    while (1)
    {
      sub_237B03780();
      v6 = (v5 * v2) >> 64;
      if (v2 > v5 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v5 * v2)
        {
          do
          {
            sub_237B03780();
          }

          while (v7 > v8 * v2);
          v6 = (v8 * v2) >> 64;
        }
      }

      v9 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v9)
      {
        v10 = *(v1 + 16);
        if (v4 >= v10)
        {
          goto LABEL_20;
        }

        if (v9 >= v10)
        {
          goto LABEL_21;
        }

        v11 = *(v1 + 32 + 8 * v4);
        v12 = *(v1 + 32 + 8 * v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237A1FC48(v1);
          v1 = v13;
        }

        v14 = *(v1 + 16);
        if (v4 >= v14)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 8 * v4) = v12;
        if (v9 >= v14)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 8 * v9) = v11;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_237B4A484()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v30 = v2 - 2;
  if (v2 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v31 = 0;
      MEMORY[0x2383DD970](&v31, 8);
      v4 = (v31 * v2) >> 64;
      if (v2 > v31 * v2)
      {
        v5 = -v2 % v2;
        if (v5 > v31 * v2)
        {
          do
          {
            v31 = 0;
            MEMORY[0x2383DD970](&v31, 8);
          }

          while (v5 > v31 * v2);
          v4 = (v31 * v2) >> 64;
        }
      }

      v6 = v3 + v4;
      if (__OFADD__(v3, v4))
      {
        break;
      }

      if (v3 != v6)
      {
        v7 = *(v1 + 16);
        if (v3 >= v7)
        {
          goto LABEL_20;
        }

        if (v6 >= v7)
        {
          goto LABEL_21;
        }

        v8 = (v1 + 32 + 32 * v3);
        v9 = v8[1];
        v10 = v8[2];
        v11 = v8[3];
        v12 = (v1 + 32 + 32 * v6);
        v13 = v12[1];
        v29 = *v12;
        v14 = v12[3];
        v27 = *v8;
        v28 = v12[2];

        v15 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237A1FD1C(v1);
          v1 = v16;
        }

        if (v3 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v17 = v1 + 32;
        v18 = (v1 + 32 + 32 * v3);
        v26 = v1;
        v19 = v18[1];
        v20 = v18[3];
        *v18 = v29;
        v18[1] = v13;
        v18[2] = v28;
        v18[3] = v15;

        v1 = v26;

        if (v6 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v21 = (v17 + 32 * v6);
        v22 = v21[1];
        v23 = v21[3];
        *v21 = v27;
        v21[1] = v9;
        v21[2] = v10;
        v21[3] = v11;

        *v25 = v26;
      }

      --v2;
      if (v3++ == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_237B4A66C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 32);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
  }

  v10 = v7 + 4;
  v11 = v8 >> 1;
  v36 = v5;
  if (v6)
  {
    v12 = 0;
    v11 -= v6;
    v13 = v6;
    do
    {
      v14 = *(v3 + v12 + 40);
      v15 = *(v2 + v12 + 32);
      v16 = *(v2 + v12 + 40);
      *v10 = *(v3 + v12 + 32);
      v10[1] = v14;
      v10[2] = v15;
      v10[3] = v16;
      v10 += 4;

      v12 += 16;
      --v13;
    }

    while (v13);
    v5 = v36;
  }

  v34 = v4;
  v35 = 16 * v6;
  while (1)
  {
    if (v4 == v6)
    {
LABEL_35:
      v31 = v7[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v11);
        v33 = v32 - v11;
        if (v30)
        {
          goto LABEL_44;
        }

        v7[2] = v33;
      }

      return v7;
    }

    if (v6 >= v4)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_40;
    }

    if (v5 == v6)
    {
      goto LABEL_35;
    }

    if (v6 >= v5)
    {
      goto LABEL_41;
    }

    v17 = *(v3 + v35 + 32);
    v18 = *(v3 + v35 + 40);
    v37 = v2;
    v19 = v2 + v35;
    v20 = *(v2 + v35 + 32);
    v21 = *(v19 + 40);
    if (v11)
    {

      v22 = v7;
    }

    else
    {
      v23 = v7[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
      v22 = swift_allocObject();
      v26 = (_swift_stdlib_malloc_size(v22) - 32) / 32;
      v22[2] = v25;
      v22[3] = 2 * v26;
      v27 = v22 + 4;
      v28 = v7[3] >> 1;
      v10 = &v22[4 * v28 + 4];
      v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
      if (v7[2])
      {
        if (v22 != v7 || v27 >= &v7[4 * v28 + 4])
        {
          memmove(v27, v7 + 4, 32 * v28);
        }

        v7[2] = 0;
      }

      else
      {
      }
    }

    v30 = __OFSUB__(v11--, 1);
    if (v30)
    {
      goto LABEL_42;
    }

    *v10 = v17;
    v10[1] = v18;
    v10[2] = v20;
    v10[3] = v21;
    v10 += 4;
    ++v6;
    v5 = v36;
    v2 = v37 + 16;
    v3 += 16;
    v7 = v22;
    v4 = v34;
  }

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
  __break(1u);
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237B4A928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_53()
{

  return sub_237C08B9C();
}

uint64_t OUTLINED_FUNCTION_11_41(unint64_t *a1)
{

  return sub_2379D9224(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_39(unint64_t *a1)
{

  return sub_2379D9224(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_32(unint64_t *a1)
{

  return sub_2379D9224(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_30@<X0>(uint64_t a1@<X8>)
{

  return sub_237B46504(v2 + a1, v1, type metadata accessor for MLClassifierMetrics);
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return sub_237B46560(v0, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
}

uint64_t OUTLINED_FUNCTION_18_31()
{
  v2 = *(v0 + 8);
  result = *(v1 - 200);
  v4 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_29()
{

  return sub_237C08B5C();
}

double OUTLINED_FUNCTION_25_25@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  return v2 - 120;
}

void OUTLINED_FUNCTION_33_18()
{

  sub_237AC8A74();
}

void OUTLINED_FUNCTION_34_16()
{

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_13()
{
  v1 = *(v0 - 176);
  v2 = *(*(v0 - 184) + 8);
  return *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_42_12()
{
  v2 = *(v0 + 8);
  result = *(v1 - 200);
  v4 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_10()
{

  return sub_237A38140(15);
}

BOOL sub_237B4AC34(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237C08ECC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void sub_237B4AD2C()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v4 = sub_237C06A4C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D580, &unk_237C16990);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D588, &unk_237C13EA0) - 8);
  v15 = *(*v14 + 72);
  v16 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237C0B660;
  v18 = (v17 + v16);
  v19 = v14[14];
  *v18 = 0xD000000000000011;
  v18[1] = 0x8000000237C1D330;
  sub_237C06A1C();
  v20 = sub_237C085AC();
  if (v1)
  {
    sub_237C06A2C();
    v21 = *(v7 + 32);
    v22 = OUTLINED_FUNCTION_85_3();
    v23(v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_237B40F18(v12, 0xD000000000000013, 0x8000000237C1D350, isUniquelyReferenced_nonNull_native);
  }

  v25 = type metadata accessor for TrainingTablePrinter(0);
  *(v3 + *(v25 + 24)) = v20;
  sub_2379E8EE0(0, &qword_27DE9AD70, 0x277D86200);
  *(v3 + *(v25 + 20)) = sub_237C08D0C();
  sub_237C05BEC();
  OUTLINED_FUNCTION_150();
}

double sub_237B4AFA4@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  sub_237C0720C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_237B4AFF4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters();
  if (v4 != *(a2 + *(v7 + 24)))
  {
    v15 = 0xD00000000000004DLL;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v16 = swift_allocError();
    v18 = "Mismatching feature extraction parameters and model parameters: overlapFactor";
LABEL_11:
    v19 = (v18 - 32);
LABEL_25:
    *v17 = v15;
    v17[1] = v19 | 0x8000000000000000;
    OUTLINED_FUNCTION_23_3(v16, v17);
    return swift_willThrow();
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v10 = 0.975;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v10 != MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter())
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v16 = swift_allocError();
    v15 = 0xD00000000000005FLL;
    v18 = "Mismatching feature extraction parameters and model parameters: featureExtractionTimeWindowSize";
    goto LABEL_11;
  }

  v11 = *(v8 + 28);
  sub_237A40628();
  if (v25)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v13 = v22;
      v14 = v23;
      goto LABEL_14;
    }
  }

  else
  {
    result = sub_237A7B808(v24, &qword_27DE9A998, &unk_237C0C100);
  }

  v13 = 1;
  v14 = 1;
LABEL_14:
  if (v6)
  {
    if (v5 == v13)
    {
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (v5 == v13)
  {
    v21 = v14;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
LABEL_24:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v16 = swift_allocError();
    v19 = "featureExtractionTimeWindowSize";
    v15 = 0xD000000000000051;
    goto LABEL_25;
  }

  return result;
}

void sub_237B4B1D8()
{
  OUTLINED_FUNCTION_74();
  v86 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  v3 = OUTLINED_FUNCTION_0(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v67 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A8, &qword_237C14028);
  v10 = OUTLINED_FUNCTION_0(v9);
  v71 = v11;
  v72 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v70 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5B0, &unk_237C14030);
  v17 = OUTLINED_FUNCTION_0(v16);
  v74 = v18;
  v75 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23();
  v73 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  v24 = OUTLINED_FUNCTION_0(v23);
  v77 = v25;
  v78 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23();
  v76 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  v31 = OUTLINED_FUNCTION_0(v30);
  v80 = v32;
  v81 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_23();
  v79 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  v82 = OUTLINED_FUNCTION_0(v37);
  v83 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  v43 = &v64 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0(v44);
  v84 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v48);
  v50 = &v64 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0(v51);
  v85 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_108();
  sub_237C05FFC();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
  }

  else
  {
    v57 = v85;
    v65 = v44;
    v66 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      OUTLINED_FUNCTION_76_5();
      sub_237C05F6C();
      (*(v57 + 8))(v0, v51);
    }

    else
    {
      sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
      if (swift_dynamicCastMetatype())
      {
        sub_237C05FEC();
        OUTLINED_FUNCTION_76_5();
        v58 = v65;
        sub_237C05F6C();
        v59 = v84;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
        if (swift_dynamicCastMetatype())
        {
          v60 = v43;
          sub_237C05FEC();
          OUTLINED_FUNCTION_76_5();
          v61 = v82;
          sub_237C05F6C();
          (*(v83 + 8))(v60, v61);
          goto LABEL_10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
        if (OUTLINED_FUNCTION_59_7())
        {
          v50 = v79;
          OUTLINED_FUNCTION_60_9();
          OUTLINED_FUNCTION_39_13();
          v58 = v81;
          OUTLINED_FUNCTION_43_10();
          v59 = v80;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
          if (OUTLINED_FUNCTION_59_7())
          {
            v50 = v76;
            OUTLINED_FUNCTION_60_9();
            OUTLINED_FUNCTION_39_13();
            v58 = v78;
            OUTLINED_FUNCTION_43_10();
            v59 = v77;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D450, &unk_237C14070);
            if (OUTLINED_FUNCTION_59_7())
            {
              v50 = v73;
              OUTLINED_FUNCTION_60_9();
              OUTLINED_FUNCTION_39_13();
              v58 = v75;
              OUTLINED_FUNCTION_43_10();
              v59 = v74;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE48, &qword_237C0ECC8);
              if (OUTLINED_FUNCTION_59_7())
              {
                v50 = v70;
                OUTLINED_FUNCTION_60_9();
                OUTLINED_FUNCTION_39_13();
                v58 = v72;
                OUTLINED_FUNCTION_43_10();
                v59 = v71;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
                if (!OUTLINED_FUNCTION_59_7())
                {
                  sub_2379E8AF0();
                  OUTLINED_FUNCTION_50();
                  v62 = swift_allocError();
                  *v63 = 0xD000000000000040;
                  v63[1] = 0x8000000237C1D3A0;
                  OUTLINED_FUNCTION_23_3(v62, v63);
                  swift_willThrow();
                  goto LABEL_10;
                }

                v50 = v67;
                OUTLINED_FUNCTION_60_9();
                OUTLINED_FUNCTION_39_13();
                v58 = v69;
                OUTLINED_FUNCTION_43_10();
                v59 = v68;
              }
            }
          }
        }
      }

      (*(v59 + 8))(v50, v58);
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B4B934()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9D540);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D540);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 50;
  *(v1 + v4) = 100;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLSoundClassifier._defaultSessionParameters.getter()
{
  if (qword_27DE9A6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v0, qword_27DE9D540);
  OUTLINED_FUNCTION_12_40();
  return sub_237B57D10();
}

id MLSoundClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLSoundClassifier() + 24));

  return v1;
}

uint64_t type metadata accessor for MLSoundClassifier()
{
  result = qword_27DE9D570;
  if (!qword_27DE9D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLSoundClassifier.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLSoundClassifier() + 24);

  *(v1 + v2) = v0;
}

uint64_t MLSoundClassifier.model.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLSoundClassifier() + 24);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_30();
}

uint64_t MLSoundClassifier.modelParameters.getter()
{
  v0 = *(type metadata accessor for MLSoundClassifier() + 28);
  OUTLINED_FUNCTION_1_71();
  return sub_237B57D10();
}

uint64_t sub_237B4BC0C()
{
  OUTLINED_FUNCTION_9();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[5] = v4;
  OUTLINED_FUNCTION_1(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237B4BCC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = type metadata accessor for MLSoundClassifier();
  *(v0 + 64) = v10;
  v11 = v10[8];
  *(v0 + 96) = v11;
  v12 = (v4 + v11);
  sub_237C06FAC();
  v13 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v14 = *(v13 + 20);
  OUTLINED_FUNCTION_106_1();
  sub_2379E51D0();
  v15 = *(v13 + 24);
  OUTLINED_FUNCTION_106_1();
  sub_2379E5C70();
  (*(v2 + 8))(v1, v3);
  *v12 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v16 = v10[9];
  *(v0 + 100) = v16;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v17 = swift_allocError();
  *v18 = 0xD0000000000000C0;
  v18[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v17, v18);
  *(v4 + v16) = v19;
  swift_storeEnumTagMultiPayload();
  *(v0 + 104) = v10[5];
  OUTLINED_FUNCTION_8_39();
  sub_237B57D10();
  OUTLINED_FUNCTION_13_19(&dword_237C150A8);
  v24 = v20;
  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_237B4BE9C;
  v22 = *(v0 + 24);

  return v24();
}

uint64_t sub_237B4BE9C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237B4BFA8()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  OUTLINED_FUNCTION_2_70();
  sub_237B57CC0();
  *(v6 + *(v3 + 24)) = v1;
  v7 = *(v3 + 28);
  OUTLINED_FUNCTION_15_36();
  sub_237B5805C();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_121_1();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_237B4C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v12 = *(v10 + 100);
  v11 = *(v10 + 104);
  v13 = *(v10 + 96);
  v14 = *(v10 + 56);
  v16 = *(v10 + 24);
  v15 = *(v10 + 32);
  v17 = *(v10 + 16);
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();
  sub_237B57CC0();
  sub_237A7B808(v17, &qword_27DE9B8D0, &qword_237C0E1E8);
  sub_237B57CC0();
  sub_237B57CC0();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();
  v18 = *(v10 + 80);
  OUTLINED_FUNCTION_68();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

void MLSoundClassifier.init(trainingData:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v61 = v1;
  v62 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLSoundClassifier();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v56 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v58 = v10;
  OUTLINED_FUNCTION_41_0();
  v11 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v12 = OUTLINED_FUNCTION_1(v11);
  v59 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v60 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = (v3 + *(v5 + 40));
  sub_237C06FAC();
  v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v35 = v33 + *(v34 + 20);
  sub_2379E51D0();
  v36 = v33 + *(v34 + 24);
  sub_2379E5C70();
  (*(v23 + 8))(v28, v21);
  v37 = v33;
  v38 = v61;
  *v37 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v39 = *(v5 + 44);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v40 = swift_allocError();
  *v41 = 0xD0000000000000C0;
  v41[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v40, v41);
  *(v3 + v39) = v42;
  swift_storeEnumTagMultiPayload();
  v43 = v62;
  sub_237A39CD0();
  if (v43)
  {
    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    OUTLINED_FUNCTION_4_59();
    sub_237B57CC0();
    sub_237A7B808(v3, &qword_27DE9B8D0, &qword_237C0E1E8);
    OUTLINED_FUNCTION_49_8();
    sub_237B57CC0();
    sub_237B57CC0();
  }

  else
  {
    sub_237B19584(v38);
    v62 = v37;
    v55 = v3;
    sub_237B3BD1C();
    if (v44)
    {
      v50 = sub_237B1903C(v44);
      v56 = v51;

      sub_237B57D10();
      v57 = v20;
      sub_237B57D10();
      v52 = *(v59 + 80);
      OUTLINED_FUNCTION_113_1();
      v53 = swift_allocObject();
      v54 = v56;
      *(v53 + 16) = v50;
    }

    else
    {
      sub_237B3C1CC();
      v46 = sub_237B192F8(v45);
      v48 = v47;

      v58 = v48;
      sub_237B57D10();
      sub_237B57D10();
      v49 = *(v59 + 80);
      OUTLINED_FUNCTION_113_1();
      v53 = swift_allocObject();
      v54 = v58;
      *(v53 + 16) = v46;
    }

    *(v53 + 24) = v54;
    OUTLINED_FUNCTION_15_36();
    sub_237B5805C();
    sub_2379DDD38();

    OUTLINED_FUNCTION_24_27();
    sub_237B57CC0();
    OUTLINED_FUNCTION_4_59();
    sub_237B57CC0();
    sub_237B57CC0();
    sub_237A7B808(v55, &qword_27DE9B8D0, &qword_237C0E1E8);
    OUTLINED_FUNCTION_49_8();
    sub_237B57CC0();
    sub_237B57CC0();
    OUTLINED_FUNCTION_22_25();
    sub_237B5805C();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B4C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4C808, 0, 0);
}

uint64_t sub_237B4C808()
{
  OUTLINED_FUNCTION_123_1();
  v11 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  if (v0[4])
  {
    v5 = v0[4];
  }

  sub_237B57D10();
  OUTLINED_FUNCTION_53_9(&dword_237C13FD0);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[7] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_66_5(v6);

  return v9(v8);
}

uint64_t sub_237B4C8E0()
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

uint64_t sub_237B4C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = *(*(_s5ModelVMa_0() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for TrainingTablePrinter(0);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v4[14] = *(v8 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v13 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = *(_s10ClassifierVMa_0() - 8);
  v4[25] = v14;
  v4[26] = *(v14 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v4[29] = v15;
  v16 = *(v15 - 8);
  v4[30] = v16;
  v17 = *(v16 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4CD20, 0, 0);
}

void sub_237B4CD20()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = type metadata accessor for MLSoundClassifier();
  *(v0 + 272) = v11;
  v12 = v11[8];
  *(v0 + 352) = v12;
  v13 = (v6 + v12);
  sub_237C06FAC();
  v14 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v15 = *(v14 + 20);
  OUTLINED_FUNCTION_106_1();
  sub_2379E51D0();
  v16 = *(v14 + 24);
  OUTLINED_FUNCTION_106_1();
  sub_2379E5C70();
  (*(v2 + 8))(v1, v3);
  *v13 = 0;
  *(v0 + 280) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v17 = v11[9];
  *(v0 + 356) = v17;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v18 = swift_allocError();
  *v19 = 0xD0000000000000C0;
  v19[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v18, v19);
  *(v6 + v17) = v20;
  swift_storeEnumTagMultiPayload();
  sub_237A39CD0();
  *(v0 + 288) = 0;
  v21 = *(v0 + 56);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  v115 = v11;
  v28 = v11[7];
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  KeyPath = swift_getKeyPath();
  v30 = *(v27 + 16);
  *(v0 + 296) = v30;
  if (v30)
  {
    v31 = *(v0 + 144);
    v32 = *(v0 + 40);
    v123 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v33 = v123;
    v34 = *(v31 + 16);
    v31 += 16;
    v35 = v32 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v117 = *(v31 + 56);
    v121 = v34;
    v36 = (v31 - 8);
    do
    {
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      v121(v37, v35, v38);
      v39 = KeyPath;
      swift_getAtKeyPath();
      (*v36)(v37, v38);
      v40 = *(v0 + 16);
      v41 = *(v0 + 24);
      v42 = *(v123 + 16);
      if (v42 >= *(v123 + 24) >> 1)
      {
        sub_237AC8A74();
      }

      *(v123 + 16) = v42 + 1;
      v43 = v123 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v41;
      v35 += v117;
      --v30;
      KeyPath = v39;
    }

    while (v30);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v44 = *(v0 + 224);
  v45 = *(v0 + 184);
  v46 = *(v0 + 192);
  v47 = *(v0 + 96);
  v48 = *(v0 + 56);
  v49 = *(v0 + 32);
  *(v0 + 304) = sub_237B42F98(v33);
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();

  sub_237B59204(v50, v46, v44);
  type metadata accessor for EventCollector();
  swift_allocObject();
  v51 = sub_237AD988C();
  *(v0 + 312) = v51;
  sub_237A40628();
  v52 = OUTLINED_FUNCTION_71_5();
  LODWORD(v47) = __swift_getEnumTagSinglePayload(v52, v53, v47);
  sub_237A7B808(v45, &qword_27DE9B8D0, &qword_237C0E1E8);
  if (v47 != 1)
  {
LABEL_17:
    v62 = *(v0 + 160);
    v63 = *(v0 + 96);
    v64 = *(v0 + 32);
    sub_237A40628();
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
    {
      sub_237A7B808(*(v0 + 160), &qword_27DE9B8D0, &qword_237C0E1E8);
      sub_237C090DC();
      OUTLINED_FUNCTION_116_1();
      return;
    }

    v66 = *(v0 + 216);
    v65 = *(v0 + 224);
    v67 = *(v0 + 200);
    v68 = *(v0 + 208);
    v69 = *(v0 + 160);
    v71 = *(v0 + 120);
    v70 = *(v0 + 128);
    v72 = *(v0 + 48);
    OUTLINED_FUNCTION_10_40();
    sub_237B5805C();
    v73 = *(v72 + 16);
    *(v0 + 320) = v73;
    sub_237B57D10();
    OUTLINED_FUNCTION_23_28();
    sub_237B57D10();
    v74 = (v68 + ((*(v67 + 80) + 16) & ~*(v67 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v122 = *(v0 + 216);
    v76 = *(v0 + 112);
    v77 = *(v0 + 120);
    v78 = *(v0 + 104);
    if (v73)
    {
      v79 = (v0 + 80);
      v118 = *(v0 + 80);
      v80 = *(v0 + 48);
      v112 = *(v0 + 40);
      v81 = v51;
      v82 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + *(v78 + 80) + 8) & ~*(v78 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_44_13();
      *(v65 + v74) = v112;
      *(v65 + v75) = v80;
      *(v65 + v82) = v81;
      OUTLINED_FUNCTION_10_40();
      sub_237B5805C();

      OUTLINED_FUNCTION_117_1();
      if (v74)
      {
        v84 = *(v0 + 224);
        v85 = *(v0 + 128);
        v87 = *(v0 + 48);
        v86 = *(v0 + 56);
        v88 = *(v0 + 40);

        OUTLINED_FUNCTION_0_75();
        sub_237B57CC0();
        OUTLINED_FUNCTION_5_55();
LABEL_24:
        sub_237B57CC0();
        OUTLINED_FUNCTION_3_69();
        sub_237B57CC0();
        sub_237A7B808(*(v0 + 32), &qword_27DE9B8D0, &qword_237C0E1E8);
        if (!*(v0 + 288))
        {
          OUTLINED_FUNCTION_67_5();
          v23 = *(v22 + 28);
          OUTLINED_FUNCTION_0_75();
          sub_237B57CC0();
        }

        OUTLINED_FUNCTION_62_6();
        v108 = *(v0 + 160);
        v109 = *(v0 + 152);
        v110 = *(v0 + 128);
        v111 = *(v0 + 120);
        v113 = *(v0 + 88);
        v114 = *(v0 + 80);
        v116 = *(v0 + 72);
        v120 = *(v0 + 64);
        OUTLINED_FUNCTION_20_28();
        sub_237B57CC0();
        sub_237B57CC0();

        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_116_1();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
      v79 = (v0 + 88);
      v119 = *(v0 + 88);
      v89 = *(v0 + 40);
      v90 = (v75 + *(v78 + 80) + 8) & ~*(v78 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_44_13();
      *(v65 + v74) = v89;
      *(v65 + v75) = v51;
      OUTLINED_FUNCTION_10_40();
      sub_237B5805C();

      OUTLINED_FUNCTION_117_1();
      if (v74)
      {
        v91 = *(v0 + 224);
        v92 = *(v0 + 128);
        v94 = *(v0 + 48);
        v93 = *(v0 + 56);
        v95 = *(v0 + 40);

        OUTLINED_FUNCTION_0_75();
        sub_237B57CC0();
        OUTLINED_FUNCTION_5_55();
        goto LABEL_24;
      }
    }

    v96 = *v79;
    v97 = *(v0 + 128);
    v98 = *(v0 + 96);
    v99 = *(v0 + 32);

    v100 = v115[5];
    OUTLINED_FUNCTION_21_28();
    sub_237B5805C();
    v101 = *(v97 + *(v98 + 20));
    sub_237C08C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_237C0B660;
    v103 = MEMORY[0x277D83C10];
    *(v102 + 56) = MEMORY[0x277D83B88];
    *(v102 + 64) = v103;
    *(v102 + 32) = 3;
    sub_237C0826C();

    v104 = v115[5];
    OUTLINED_FUNCTION_13_19(&dword_237C150A8);
    v105 = swift_task_alloc();
    *(v0 + 328) = v105;
    *v105 = v0;
    v105[1] = sub_237B4D6B8;
    OUTLINED_FUNCTION_116_1();

    __asm { BR              X0 }
  }

  v55 = *(v0 + 168);
  v54 = *(v0 + 176);
  v56 = *(v0 + 96);
  v57 = *(v0 + 32);
  v58 = *(*(v0 + 48) + 16);
  sub_237B4AD2C();
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v56);
  sub_237A6F014();
  sub_237A40628();
  v59 = OUTLINED_FUNCTION_71_5();
  if (__swift_getEnumTagSinglePayload(v59, v60, v56) != 1)
  {
    v61 = *(v0 + 168);
    sub_237BAC5E0();
    OUTLINED_FUNCTION_5_55();
    sub_237B57CC0();
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_237B4D6B8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 328);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  v5[42] = v0;

  if (v0)
  {
    v11 = v5[38];
  }

  else
  {
    v5[43] = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237B4D7CC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 256);
  v3 = *(v0 + 40);
  *(*(v0 + 32) + *(*(v0 + 272) + 24)) = *(v0 + 344);
  sub_237B4EEE4(v3, v2);
  if (v1)
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 128);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 40);

    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    OUTLINED_FUNCTION_5_55();
    sub_237B57CC0();
    OUTLINED_FUNCTION_3_69();
    sub_237B57CC0();
    sub_237A7B808(*(v0 + 32), &qword_27DE9B8D0, &qword_237C0E1E8);
    OUTLINED_FUNCTION_67_5();
    v12 = *(v11 + 20);
    OUTLINED_FUNCTION_2_70();
    sub_237B57CC0();
    OUTLINED_FUNCTION_67_5();

    if (!*(v0 + 288))
    {
      OUTLINED_FUNCTION_67_5();
      v16 = *(v15 + 28);
      OUTLINED_FUNCTION_0_75();
      sub_237B57CC0();
    }

    OUTLINED_FUNCTION_62_6();
    v44 = *(v0 + 160);
    v46 = *(v0 + 152);
    v48 = *(v0 + 128);
    v50 = *(v0 + 120);
    v52 = *(v0 + 88);
    v54 = *(v0 + 80);
    v56 = *(v0 + 72);
    v58 = *(v0 + 64);
    OUTLINED_FUNCTION_20_28();
    sub_237B57CC0();
    sub_237B57CC0();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    v18 = *(v0 + 320);
    v19 = *(v0 + 280);
    v20 = *(v0 + 352);
    v21 = *(v0 + 72);
    v22 = *(v0 + 32);
    v23 = *(*(v0 + 240) + 32);
    v23(v21, *(v0 + 256), *(v0 + 232));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v21, v22 + v20);
    if (v18)
    {
      v24 = *(v0 + 32);
      sub_237B4EEE4(*(v0 + 48), *(v0 + 248));
      v25 = *(v0 + 356);
      v26 = *(v0 + 280);
      v27 = *(v0 + 64);
      v28 = *(v0 + 32);
      v23(v27, *(v0 + 248), *(v0 + 232));
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v27, v28 + v25);
    }

    v29 = *(v0 + 312);
    v30 = *(v0 + 296);
    v31 = *(v0 + 264);
    v39 = *(v0 + 256);
    v40 = *(v0 + 248);
    v32 = *(v0 + 224);
    v41 = *(v0 + 216);
    v42 = *(v0 + 192);
    v43 = *(v0 + 184);
    v45 = *(v0 + 176);
    v47 = *(v0 + 168);
    v49 = *(v0 + 160);
    v33 = *(v0 + 128);
    v51 = *(v0 + 152);
    v53 = *(v0 + 120);
    v55 = *(v0 + 88);
    v57 = *(v0 + 80);
    v59 = *(v0 + 72);
    v60 = *(v0 + 64);
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = *(*(v0 + 304) + 16);

    sub_237B4F48C(v30, v37, v34);

    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    OUTLINED_FUNCTION_5_55();
    sub_237B57CC0();
    OUTLINED_FUNCTION_3_69();
    sub_237B57CC0();

    OUTLINED_FUNCTION_8();
  }

  return v17();
}

uint64_t sub_237B4DC00()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v0 + 128);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);

  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();
  OUTLINED_FUNCTION_5_55();
  sub_237B57CC0();
  OUTLINED_FUNCTION_3_69();
  sub_237B57CC0();
  v32 = *(v0 + 336);
  sub_237A7B808(*(v0 + 32), &qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_67_5();
  v8 = *(v7 + 20);
  OUTLINED_FUNCTION_2_70();
  sub_237B57CC0();
  if (!*(v0 + 288))
  {
    OUTLINED_FUNCTION_67_5();
    v10 = *(v9 + 28);
    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
  }

  v11 = *(v0 + 356);
  v12 = *(v0 + 352);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 248);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 192);
  v21 = *(v0 + 184);
  v22 = *(v0 + 176);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v25 = *(v0 + 152);
  v26 = *(v0 + 128);
  v27 = *(v0 + 120);
  v28 = *(v0 + 88);
  v29 = *(v0 + 80);
  v30 = *(v0 + 72);
  v31 = *(v0 + 64);
  OUTLINED_FUNCTION_20_28();
  sub_237B57CC0();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();

  return v19();
}

uint64_t sub_237B4DDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4DE90, 0, 0);
}

uint64_t sub_237B4DE90()
{
  OUTLINED_FUNCTION_123_1();
  v11 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  if (v0[4])
  {
    v5 = v0[4];
  }

  sub_237B57D10();
  OUTLINED_FUNCTION_53_9(&dword_237C14018);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[7] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_66_5(v6);

  return v9(v8);
}

uint64_t sub_237B4DF6C()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters();
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_113_1();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_121_1();

  return sub_237B4DDFC(v9, v10, v11, v12);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters();
  OUTLINED_FUNCTION_88_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = (v0 + v4);
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v10 = OUTLINED_FUNCTION_87_3();
  if (v10 == 2)
  {
LABEL_5:
    v13 = *v9;
LABEL_6:
  }

  else if (v10 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(OUTLINED_FUNCTION_87_3())
    {
      case 0u:
      case 1u:
        v11 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v11);
        (*(v12 + 8))(v0 + v4);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        OUTLINED_FUNCTION_101_0();
        v18 = v9[5];
        goto LABEL_6;
      case 4u:
        v15 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v15);
        (*(v16 + 8))(v0 + v4);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_56(*(v17 + 48));

        OUTLINED_FUNCTION_56(*(v17 + 64));
        goto LABEL_6;
      default:
        break;
    }
  }

  v14 = (v9 + *(v1 + 28));
  if (v14[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_237B4E204()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters();
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_113_1();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_121_1();

  return sub_237B4C774(v9, v10, v11, v12);
}

uint64_t sub_237B4E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4E36C, 0, 0);
}

uint64_t sub_237B4E36C()
{
  OUTLINED_FUNCTION_123_1();
  v19 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  sub_237A96C5C(v2, *(v4 + 16), (v0 + 2));
  v5 = sub_237A4CCA0(v4, (v0 + 2));
  v6 = v0[9];
  v7 = v0[10];

  v8 = sub_237A4CCA0(v7, (v0 + 2));
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  OUTLINED_FUNCTION_13_19(&dword_237C13FD0);
  v18 = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[14] = v13;
  *v13 = v14;
  v13[1] = sub_237B4E504;
  v15 = v0[12];
  v16 = v0[8];

  return v18(v16, v5, v8, v15);
}

uint64_t sub_237B4E504()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B4E600()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237B4E674()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[11];
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v7 = type metadata accessor for MLSoundClassifier.DataSource();
  v8 = OUTLINED_FUNCTION_12_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  *v1 = a1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  MLSoundClassifier.init(trainingData:parameters:)();
  OUTLINED_FUNCTION_0_75();
  return sub_237B57CC0();
}

uint64_t sub_237B4E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v6[8] = v7;
  v6[9] = *(v7 + 64);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4E8A0, 0, 0);
}

uint64_t sub_237B4E8A0()
{
  OUTLINED_FUNCTION_123_1();
  v17 = v1;
  OUTLINED_FUNCTION_33();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  OUTLINED_FUNCTION_23_28();
  sub_237B57D10();
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[11] = v8;
  *(v8 + 16) = v6;
  OUTLINED_FUNCTION_10_40();
  sub_237B5805C();
  OUTLINED_FUNCTION_53_9(&dword_237C0E1F0);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[12] = v9;
  *v9 = v10;
  v9[1] = sub_237B4E9BC;
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];
  v14 = v0[3];

  return v16(v13, v11, v12, sub_237B58630, v8);
}

uint64_t sub_237B4E9BC()
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
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 80);

    OUTLINED_FUNCTION_8();

    return v14();
  }
}

uint64_t sub_237B4EB00()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_8();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_237B4EB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v5[7] = v6;
  v5[8] = *(v6 + 64);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4EC28, 0, 0);
}

uint64_t sub_237B4EC28()
{
  OUTLINED_FUNCTION_123_1();
  v16 = v1;
  OUTLINED_FUNCTION_33();
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  OUTLINED_FUNCTION_23_28();
  sub_237B57D10();
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = v6;
  OUTLINED_FUNCTION_10_40();
  sub_237B5805C();
  OUTLINED_FUNCTION_53_9(&dword_237C0E208);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[11] = v9;
  *v9 = v10;
  v9[1] = sub_237B4ED44;
  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];

  return v15(v13, v11, sub_237B58630, v8);
}

uint64_t sub_237B4ED44()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 72);

    OUTLINED_FUNCTION_8();

    return v14();
  }
}

uint64_t sub_237B4EE88()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_8();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_237B4EEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v55 = *(v53 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v5 = v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v54 = *(v6 - 8);
  v7 = v54[8];
  MEMORY[0x28223BE20](v6);
  v9 = v44 - v8;
  v10 = type metadata accessor for MLSoundClassifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_237B57D10();
  v13 = (v12 + ((*(v11 + 80) + 16) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_237B5805C();
  *(v14 + v13) = a1;

  v15 = v52;
  sub_2379DDD80();
  v17 = v16;

  if (!v15)
  {
    v19 = v55;
    v46 = a1;
    v47 = 0;
    v52 = v9;
    KeyPath = swift_getKeyPath();
    v21 = *(v17 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v45 = v6;
      v59 = MEMORY[0x277D84F90];
      sub_237AC8A74();
      v23 = v59;
      v24 = v19 + 16;
      v25 = *(v19 + 16);
      v26 = *(v19 + 80);
      v44[1] = v17;
      v27 = v17 + ((v26 + 32) & ~v26);
      v50 = *(v19 + 72);
      v51 = v25;
      v49 = (v19 + 8);
      v28 = v53;
      v55 = v24;
      do
      {
        (v51)(v5, v27, v28);
        v29 = KeyPath;
        swift_getAtKeyPath();
        (*v49)(v5, v28);
        v31 = v57;
        v30 = v58;
        v59 = v23;
        v32 = *(v23 + 16);
        if (v32 >= *(v23 + 24) >> 1)
        {
          sub_237AC8A74();
          v23 = v59;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v31;
        *(v33 + 40) = v30;
        v27 += v50;
        --v21;
        v28 = v53;
        KeyPath = v29;
      }

      while (v21);

      v6 = v45;
      v22 = MEMORY[0x277D84F90];
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v59 = v23;
    swift_getKeyPath();
    v34 = v46;
    v35 = *(v46 + 16);
    v36 = v52;
    if (v35)
    {
      v56 = v22;
      sub_237AC8A74();
      v37 = v56;
      v38 = v54[2];
      v54 += 2;
      v55 = v38;
      v39 = v34 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
      v53 = v54[7];
      v51 = (v54 - 1);
      do
      {
        (v55)(v36, v39, v6);
        swift_getAtKeyPath();
        (*v51)(v36, v6);
        v41 = v57;
        v40 = v58;
        v56 = v37;
        v42 = *(v37 + 16);
        if (v42 >= *(v37 + 24) >> 1)
        {
          sub_237AC8A74();
          v37 = v56;
        }

        *(v37 + 16) = v42 + 1;
        v43 = v37 + 16 * v42;
        *(v43 + 32) = v41;
        *(v43 + 40) = v40;
        v39 += v53;
        --v35;
        v36 = v52;
      }

      while (v35);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v57 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    sub_2379D9224(&qword_27DE9B8B8, &qword_27DE9AE60, &qword_237C0D000);
    return sub_237C06FBC();
  }

  return result;
}

uint64_t sub_237B4F48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_237A37A64();
  if ((result & 1) == 0)
  {
    sub_237A37AEC(19);
    sub_237A37AEC(19);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters();
    v6 = *(a3 + v5[5]);
    sub_237A37AEC(19);
    v7 = *(a3 + v5[6]);
    sub_237A38140(19);
    v8 = v5[7];
    sub_237A40628();
    if (v10[3])
    {
      swift_dynamicCast();
    }

    else
    {
      sub_237A7B808(v10, &qword_27DE9A998, &unk_237C0C100);
    }

    v10[0] = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
    v10[1] = v9;

    MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C18C70);

    sub_237A3825C(19);
  }

  return result;
}

uint64_t MLSoundClassifier.init(checkpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v4 = _s5ModelVMa_0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v99 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v109 = v11;
  OUTLINED_FUNCTION_41_0();
  v105 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v12 = OUTLINED_FUNCTION_4(v105);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v106 = v16 - v15;
  OUTLINED_FUNCTION_41_0();
  v107 = _s10ClassifierVMa_0();
  v17 = OUTLINED_FUNCTION_4(v107);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v108 = v21 - v20;
  OUTLINED_FUNCTION_41_0();
  v22 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v23 = OUTLINED_FUNCTION_20(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v104 = v27 - v26;
  OUTLINED_FUNCTION_41_0();
  v103 = _s20PersistentParametersVMa_2();
  v28 = OUTLINED_FUNCTION_4(v103);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v113 = v32 - v31;
  OUTLINED_FUNCTION_41_0();
  v115 = sub_237C05ADC();
  v33 = OUTLINED_FUNCTION_0(v115);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v110 = v38 - v39;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v97 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v112 = &v97 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_58();
  v117 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v47);
  v49 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_108();
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v57 = type metadata accessor for MLSoundClassifier();
  v58 = (a2 + *(v57 + 32));
  sub_237C06FAC();
  v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v60 = v58 + *(v59 + 20);
  sub_2379E51D0();
  v61 = v58 + *(v59 + 24);
  sub_2379E5C70();
  (*(v49 + 8))(v2, v47);
  v62 = v118;
  *v58 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v116 = v58;
  swift_storeEnumTagMultiPayload();
  v114 = v57;
  v63 = *(v57 + 36);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v64 = swift_allocError();
  *v65 = 0xD0000000000000C0;
  v65[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v64, v65);
  *(a2 + v63) = v66;
  v119 = a2;
  swift_storeEnumTagMultiPayload();
  switch(*(v62 + *(type metadata accessor for MLCheckpoint() + 20)))
  {
    case 2:

      v67 = v117;
      goto LABEL_4;
    default:
      v68 = sub_237C0929C();

      v67 = v117;
      if (v68)
      {
LABEL_4:
        v102 = v63;
        sub_237C05A5C();
        sub_237C05A2C();
        v69 = v112;
        sub_237C05A3C();
        v70 = v43;
        v71 = *(v35 + 8);
        v72 = v115;
        v71(v70, v115);
        v73 = v110;
        (*(v35 + 16))(v110, v67, v72);
        v74 = v113;
        v75 = v111;
        sub_237AD5F50(v73, v113);
        if (!v75)
        {
          v111 = v71;
          v78 = v119 + *(v114 + 28);
          v79 = v103;
          v80 = v103[5];
          sub_237B57D10();
          v81 = v79[9];
          v98 = *(v74 + v79[8]);
          v82 = *(v74 + v79[6]);
          v110 = *(v74 + v81);
          LODWORD(v103) = *(v74 + v81 + 8);
          v83 = v105;
          v84 = (v78 + v105[7]);
          *v84 = 0u;
          v84[1] = 0u;
          OUTLINED_FUNCTION_86_3(v78 + v83[8]);
          *(v78 + v85) = v86;
          sub_237B57D10();
          *(v78 + v83[5]) = v98;
          *(v78 + v83[6]) = v82;
          v122 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
          v120 = v110;
          v121 = v103;
          OUTLINED_FUNCTION_11_42();
          sub_237B57CC0();
          sub_237A6F014();
          OUTLINED_FUNCTION_1_71();
          v87 = v106;
          sub_237B57D10();
          sub_237B59204(MEMORY[0x277D84FA0], v87, v108);
          sub_237B56FD4(&qword_27DE9B8A0, _s10ClassifierVMa_0);
          sub_237C0734C();
          sub_237B57D10();
          v88 = (*(v99 + 80) + 16) & ~*(v99 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_21_28();
          sub_237B5805C();
          sub_2379DD56C();
          v90 = v89;

          OUTLINED_FUNCTION_13_33();
          sub_237B57CC0();
          OUTLINED_FUNCTION_3_69();
          sub_237B57CC0();
          OUTLINED_FUNCTION_9_43();
          sub_237B57CC0();
          v91 = v69;
          v92 = v115;
          v93 = v111;
          v111(v91, v115);
          v93(v117, v92);
          v94 = v114;
          *(v119 + *(v114 + 24)) = v90;
          v95 = *(v94 + 20);
          OUTLINED_FUNCTION_21_28();
          return sub_237B5805C();
        }

        OUTLINED_FUNCTION_13_33();
        sub_237B57CC0();
        v71(v69, v72);
        v71(v67, v72);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v76 = swift_allocError();
        *v77 = 0xD00000000000003BLL;
        v77[1] = 0x8000000237C1D260;
        OUTLINED_FUNCTION_23_3(v76, v77);
        swift_willThrow();
        OUTLINED_FUNCTION_13_33();
        sub_237B57CC0();
      }

      sub_237A7B808(v119, &qword_27DE9B8D0, &qword_237C0E1E8);
      sub_237B57CC0();
      return sub_237B57CC0();
  }
}

uint64_t sub_237B5006C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B50114;

  return sub_237B91B5C();
}

uint64_t sub_237B50114()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v3)
  {
    a1 = static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(v7, a2, a3);
  }

  return a1;
}

{
  v7 = type metadata accessor for MLSoundClassifier.DataSource();
  v8 = OUTLINED_FUNCTION_12_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  *v4 = a1;
  swift_storeEnumTagMultiPayload();

  v11 = OUTLINED_FUNCTION_114_1();
  static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(v11, v12, a3);
  v14 = v13;
  OUTLINED_FUNCTION_4_59();
  result = sub_237B57CC0();
  if (!v3)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D558, &qword_237C13D68);
    v17 = OUTLINED_FUNCTION_91(v16);
    return sub_237BEC9F4(v17, v14);
  }

  return result;
}

void static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v73 = a1;
  v6 = type metadata accessor for MLTrainingSessionParameters();
  v7 = OUTLINED_FUNCTION_20(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v20 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  v30 = type metadata accessor for MLSoundClassifier.DataSource();
  v31 = OUTLINED_FUNCTION_20(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  sub_237A39CD0();
  if (!v3)
  {
    v64 = v12;
    v65 = v4;
    v61 = v26;
    v62 = v29;
    v63 = v15;
    sub_237B19584(a2);
    v60 = 0;
    v37 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    v73 = v36;
    sub_237B57D10();
    OUTLINED_FUNCTION_48_13();
    sub_237B57D10();
    v38 = *(a2 + v20[5]);
    v39 = *(a2 + v20[6]);
    v40 = v20[7];
    sub_237A40628();
    if (v71)
    {
      v41 = swift_dynamicCast();
      v43 = v61;
      v42 = v62;
      if (v41)
      {
        v59 = v67;
        v44 = v68;
      }

      else
      {
        v59 = 1;
        v44 = 1;
      }

      v45 = v63;
    }

    else
    {
      sub_237A7B808(&v69, &qword_27DE9A998, &unk_237C0C100);
      v59 = 1;
      v44 = 1;
      v42 = v62;
      v45 = v63;
      v43 = v61;
    }

    v46 = (v43 + v20[7]);
    *v46 = 0u;
    v46[1] = 0u;
    v47 = v43 + v20[8];
    *v47 = 0;
    *(v47 + 8) = 1;
    *(v43 + v20[9]) = 32;
    OUTLINED_FUNCTION_48_13();
    sub_237B57D10();
    *(v43 + v20[5]) = v38;
    *(v43 + v20[6]) = v39;
    v71 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v69 = v59;
    LOBYTE(v70) = v44;
    sub_237A6F014();
    *v47 = v37;
    *(v47 + 8) = 0;
    if (v37 >= 0.5)
    {
      if (v37 <= 15.0)
      {
        OUTLINED_FUNCTION_11_42();
        sub_237B57CC0();
LABEL_14:
        v53 = v64;
        OUTLINED_FUNCTION_15_36();
        sub_237B5805C();
        OUTLINED_FUNCTION_12_40();
        sub_237B57D10();
        v54 = type metadata accessor for SoundClassifierTrainingSessionDelegate();
        OUTLINED_FUNCTION_91(v54);
        v55 = v60;
        v56 = sub_237A48FF0(v73, 0, v42, v45);
        if (!v55)
        {
          v71 = v54;
          v72 = &off_284AC2598;
          v69 = v56;
          OUTLINED_FUNCTION_12_40();
          OUTLINED_FUNCTION_114_1();
          sub_237B57D10();
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D560, &qword_237C13D70);
          OUTLINED_FUNCTION_91(v57);
          sub_2379E4328(&v69, v53, 19);
        }

        return;
      }

      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_119_1();
      OUTLINED_FUNCTION_90_3();
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_237C08C4C();
      v51 = OUTLINED_FUNCTION_37_0();
      sub_237BABE74(v51, v52);

      OUTLINED_FUNCTION_11_42();
      sub_237B57CC0();
      v50 = 0x402E000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_92_3();
      OUTLINED_FUNCTION_119_1();
      OUTLINED_FUNCTION_92_3();
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_237C08C4C();
      v48 = OUTLINED_FUNCTION_37_0();
      sub_237BABE74(v48, v49);

      OUTLINED_FUNCTION_11_42();
      sub_237B57CC0();
      v50 = 0x3FE0000000000000;
    }

    *v47 = v50;
    *(v47 + 8) = 0;
    goto LABEL_14;
  }
}

uint64_t static MLSoundClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D558, &qword_237C13D68);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC9F4(v3, a1);
}

uint64_t static MLSoundClassifier.extractFeatures(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v4;
  v13 = *(a2 + 32);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v11 = *(a2 + 32);
  result = sub_237B5096C(a1, v10, a3);
  if (!v3)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D568, &qword_237C13D78);
    v9 = OUTLINED_FUNCTION_91(v8);
    return sub_237BECB5C(v9, v7, v12);
  }

  return result;
}

uint64_t sub_237B5096C(uint64_t a1, double *a2, uint64_t a3)
{
  v59 = a3;
  v52 = a1;
  v4 = type metadata accessor for MLTrainingSessionParameters();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v50 - v8;
  v9 = type metadata accessor for MLSoundClassifier.DataSource();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v50 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = *a2;
  v25 = a2[1];
  v27 = *(a2 + 16);
  v28 = *(a2 + 3);
  v29 = *(a2 + 32);
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 8) = 256;
  swift_storeEnumTagMultiPayload();
  if (v27)
  {
    v25 = 0.975;
  }

  v30 = &v24[v17[9]];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v31 = &v24[v17[10]];
  *v31 = 0;
  v31[8] = 1;
  *&v24[v17[11]] = 32;
  sub_237B57D10();
  *&v24[v17[7]] = 25;
  *&v24[v17[8]] = v26;
  v57 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v55 = v28;
  LOBYTE(v56) = v29;
  sub_237A6F014();
  *v31 = v25;
  v31[8] = 0;
  if (v25 < 0.5)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000056, 0x8000000237C18BD0);
    sub_237C08A8C();
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18BB0);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v32 = v55;
    v33 = v56;
    sub_237C08C4C();
    sub_237BABE74(v32, v33);

    sub_237B57CC0();
    v34 = 0x3FE0000000000000;
LABEL_7:
    *v31 = v34;
    v31[8] = 0;
    goto LABEL_9;
  }

  if (v25 > 15.0)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000056, 0x8000000237C18B50);
    sub_237C08A8C();
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18BB0);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v35 = v55;
    v36 = v56;
    sub_237C08C4C();
    sub_237BABE74(v35, v36);

    sub_237B57CC0();
    v34 = 0x402E000000000000;
    goto LABEL_7;
  }

  sub_237B57CC0();
LABEL_9:
  sub_237B5805C();
  v37 = v51;
  sub_237B57D10();
  sub_237B57D10();
  v38 = v53;
  sub_237B57D10();
  v39 = type metadata accessor for SoundClassifierTrainingSessionDelegate();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v54;
  v43 = sub_237A48FF0(v37, 1, v21, v38);
  if (v42)
  {
    sub_237B57CC0();
  }

  else
  {
    v57 = v39;
    v58 = &off_284AC2598;
    v55 = v43;
    v44 = v50;
    sub_237B57D10();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D598, &qword_237C13F90);
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();

    sub_2379E4360(&v55, v44, 19);
    v39 = v48;
    sub_237B57CC0();
  }

  return v39;
}