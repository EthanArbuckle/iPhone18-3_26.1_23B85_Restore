uint64_t sub_23B46D518(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a6;
  v50 = a7;
  v40 = a5;
  v48 = a4;
  v44 = a3;
  v43 = a2;
  v42 = a1;
  v51 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v47 = *(v10 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v40 - v11;
  v12 = sub_23B50C964();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C954();
  v64 = MEMORY[0x277D84F90];
  v15 = type metadata accessor for HourTemperatureStatistics();
  v16 = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics);
  v17 = sub_23B4778AC(qword_280B42238, type metadata accessor for HourTemperatureStatistics);
  v18 = sub_23B4778AC(&qword_280B42230, type metadata accessor for HourTemperatureStatistics);
  v19 = *a5;
  v60 = v15;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  v20 = type metadata accessor for HourlyWeatherStatisticsQuery();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  (*(v21 + 16))(&v40 - v24, v19, v20, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  sub_23B46A690();
  sub_23B4F1154();
  (*(v21 + 8))(v25, v20);
  v54 = v8;
  v55 = &v64;
  v26 = v42;
  v56 = v42;
  v57 = v43;
  v27 = v41;
  v58 = v44;
  v59 = v41;
  sub_23B50B214();
  sub_23B50B0C4();
  v28 = *v40;
  v60 = v15;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  v29 = type metadata accessor for HourlyWeatherStatisticsQuery();
  (*(*(v29 - 8) + 16))(v45, v28, v29);
  v30 = ((*(v47 + 80) + 16) & ~*(v47 + 80)) + v46;
  v31 = swift_allocObject();
  sub_23B3AF918();
  *(v31 + v30) = v48;
  v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
  v34 = v49;
  v33 = v50;
  *(v32 + 8) = v49;
  *(v32 + 16) = v33;

  v35 = sub_23B50B034();
  sub_23B50B074();

  v36 = swift_allocObject();
  v36[2] = v26;
  v36[3] = v34;
  v36[4] = v33;

  v37 = v26;
  v38 = sub_23B50B034();
  sub_23B50B084();

  return (*(v52 + 8))(v27, v53);
}

void WeatherService.fetchHourlyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v32;
  a20 = v34;
  v36 = v35;
  v111 = v37;
  v113 = v25;
  v114 = v33;
  v106 = *v25;
  v107 = a23;
  v108 = v38;
  v109 = v39;
  v115 = a22;
  v116 = a24;
  v117 = a21;
  v105 = v40;
  v119 = a23 & 0xFFFFFFFFFFFFFFFELL;
  v104[2] = v41;
  v104[0] = v42;
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_32_5();
    v44 = *v43;
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_7_32(v45);
    TupleTypeMetadata = type metadata accessor for HourlyWeatherStatisticsQuery();
  }

  else
  {
    v25 = v104;
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_295();
    while (v36 != v26)
    {
      OUTLINED_FUNCTION_294();
      v47 = *(v119 + 8 * v26);
      v48 = v29[v26];
      OUTLINED_FUNCTION_13_15(v49);
      v50 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_293(v50);
    }

    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v110 = TupleTypeMetadata;
  v51 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v104[3] = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_28_6();
  v118 = v55;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_73_1(v104);
  v57 = OUTLINED_FUNCTION_2_0(v56, &a16);
  v104[4] = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_0();
  v62 = OUTLINED_FUNCTION_182_0(v61);
  v120 = MEMORY[0x277D84F90];
  v112 = v36;
  if (v36)
  {
    OUTLINED_FUNCTION_163_0();
    do
    {
      v64 = *v29++;
      v63 = v64;
      v65 = *v24++;
      v66 = *v27++;
      v67 = *v30++;
      v68 = *v26++;
      OUTLINED_FUNCTION_7_32(v63);
      v36 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_289(v36, v69, v70, v71, v72, v73, v74, v75, v104[0]);
      OUTLINED_FUNCTION_5(v76);
      v78 = v77;
      v80 = *(v79 + 64);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v81);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_200_0();
      v82();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      OUTLINED_FUNCTION_281();
      sub_23B4F1154();
      v83 = *(v78 + 8);
      v31 = (v78 + 8);
      v83(v25, v36);
      OUTLINED_FUNCTION_212();
    }

    while (!v84);
  }

  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_221_0(v85);
  OUTLINED_FUNCTION_140_0(v86);
  sub_23B50B214();
  v87 = OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_218_0(v87);
  if (v36)
  {
    OUTLINED_FUNCTION_122_0();
    v88 = v36;
    do
    {
      if (v36 == 1)
      {
        v89 = 0;
      }

      else
      {
        v89 = *v28;
      }

      OUTLINED_FUNCTION_83_1();
      v90 = *v31++;
      OUTLINED_FUNCTION_7_32(v91);
      v92 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_2(v92);
      (*(v93 + 16))(v118 + v89, v90);
      v28 += 4;
      v119 = v25;
      --v88;
    }

    while (v88);
  }

  OUTLINED_FUNCTION_124_0();
  v94 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v94);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v96 = OUTLINED_FUNCTION_81_1(WitnessTablePack);
  v97(v96);
  OUTLINED_FUNCTION_178_0();
  v98 = sub_23B50B034();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v99 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v99);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  v100 = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_181_0(v100);
  v101 = v25;
  v102 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0();

  OUTLINED_FUNCTION_56_1(&a15);
  OUTLINED_FUNCTION_194_0();
  v103();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46DF7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v38 = a2;
  v32 = a6;
  v33 = a5;
  v37 = a4;
  v35 = a3;
  v36 = a1;
  v44 = sub_23B50B214();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133938, &qword_23B5194E0);
  v10 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for HourTemperatureStatistics();
  v17 = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics);
  v18 = sub_23B4778AC(qword_280B42238, type metadata accessor for HourTemperatureStatistics);
  v19 = sub_23B4778AC(&qword_280B42230, type metadata accessor for HourTemperatureStatistics);
  v20 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v21 = type metadata accessor for HourlyWeatherStatisticsQuery();
  v34 = &v30;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v30 - v25;
  (*(v22 + 16))(&v30 - v25, v35, v21, v24);
  sub_23B50B1E4();
  v27 = v39;
  sub_23B41F478(v9, *(v38 + v20), v21);
  (*(v6 + 8))(v9, v44);
  if (v27)
  {
    return (*(v22 + 8))(v26, v21);
  }

  (*(v22 + 8))(v26, v21);
  v29 = v31;
  sub_23B3A23E0();
  swift_storeEnumTagMultiPayload();
  v33(v29);
  sub_23B398890(v29, &qword_27E133938, &qword_23B5194E0);
  return sub_23B398890(v15, &qword_27E132240, &qword_23B510230);
}

uint64_t sub_23B46E350(uint64_t a1, uint64_t a2, int *a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v106 = a4;
  v104 = a1;
  v105 = a2;
  v12 = a11;
  v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  v14 = 8 * a7;
  v118 = a7;
  v110 = a3;
  v94 = a5;
  v93 = a6;
  if (a7 == 1)
  {
    v15 = a3;
    v16 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v17 = *v13;
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v114 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v115 = v16;
    v116 = v17;
    v117 = v18;
    v19 = 1;
    type metadata accessor for HourlyWeatherStatistics();
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v111 = &v89;
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v113 = v11;
    while (v21 != v22)
    {
      v23 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v24 = v13[v22];
      v25 = *((a11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v114 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v115 = v23;
      v116 = v24;
      v117 = v25;
      v26 = type metadata accessor for HourlyWeatherStatistics();
      v21 = v118;
      *(&v89 + 8 * v22++ - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v26;
    }

    v19 = v21;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = v110;
    v12 = a11;
    v11 = v113;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D954();
  v98 = &v89;
  v92 = v27;
  v91 = *(v27 - 8);
  v28 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v90 = &v89 - v29;
  v30 = sub_23B50B214();
  v97 = &v89;
  v101 = v30;
  v109 = *(v30 - 8);
  v31 = *(v109 + 64);
  MEMORY[0x28223BE20](v30);
  v103 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = &v89;
  v99 = TupleTypeMetadata;
  v89 = *(TupleTypeMetadata - 8);
  v33 = *(v89 + 64);
  MEMORY[0x28223BE20](v34);
  v111 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = &v89;
  v38 = MEMORY[0x28223BE20](v36);
  v113 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v40 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v41 = (v12 & 0xFFFFFFFFFFFFFFFELL);
  v42 = a10 & 0xFFFFFFFFFFFFFFFELL;
  v43 = v19;
  if (v19)
  {
    v44 = 0;
    do
    {
      if (v43 == 1)
      {
        v45 = *v40;
        v46 = *v13;
        v47 = *v41;
        v114 = *v39;
        v115 = v45;
        v116 = v46;
        v117 = v47;
        v48 = 1;
        v37 = type metadata accessor for HourlyWeatherStatisticsQuery();
        v49 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v37);
        for (i = 0; v50 != i; ++i)
        {
          v52 = v40[i];
          v53 = *(v42 + 8 * i);
          v54 = v41[i];
          v114 = v39[i];
          v115 = v52;
          v116 = v53;
          v117 = v54;
          v55 = type metadata accessor for HourlyWeatherStatisticsQuery();
          v50 = v118;
          *(&v89 + 8 * i - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v55;
        }

        v48 = v50;
        v37 = swift_getTupleTypeMetadata();
        v49 = *(v37 + 16 * v44 + 32);
        v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
        v15 = v110;
      }

      *&v113[8 * v44++] = v15 + v49;
      v43 = v48;
    }

    while (v44 != v48);
  }

  v56 = 0;
  v102 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v100 = (v109 + 8);
  v57 = (v99 + 16);
  while (1)
  {
    v58 = v111;
    if (v43 == v56)
    {
      v71 = v89;
      v72 = v90;
      v73 = v99;
      (*(v89 + 16))(v90, v111, v99, v38);
      v74 = v92;
      swift_storeEnumTagMultiPayload();
      v94(v72);
      (*(v91 + 8))(v72, v74);
      return (*(v71 + 8))(v58, v73);
    }

    v110 = v57;
    v107 = v43 == 1 ? 0 : v57[4];
    v59 = v40[v56];
    v60 = v13[v56];
    v61 = v41[v56];
    v62 = *&v113[8 * v56];
    v114 = v39[v56];
    v115 = v59;
    v116 = v60;
    v117 = v61;
    v109 = v56;
    v63 = type metadata accessor for HourlyWeatherStatisticsQuery();
    v108 = &v89;
    v64 = *(v63 - 8);
    v65 = *(v64 + 64);
    v66 = MEMORY[0x28223BE20](v63);
    v68 = &v89 - v67;
    (*(v64 + 16))(&v89 - v67, v62, v63, v66);
    v69 = v103;
    sub_23B50B1E4();
    v70 = v112;
    sub_23B41F478(v69, *(v105 + v102), v63);
    v112 = v70;
    if (v70)
    {
      break;
    }

    (*v100)(v69, v101);
    (*(v64 + 8))(v68, v63);
    v56 = v109 + 1;
    v57 = v110 + 4;
    v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
    v43 = v118;
  }

  (*v100)(v69, v101);
  result = (*(v64 + 8))(v68, v63);
  v76 = v109;
  v78 = v110;
  v77 = v111;
  if (v109)
  {
    v79 = v39 - 1;
    v80 = v40 - 1;
    v81 = v42 - 8;
    do
    {
      v82 = v76 - 1;
      v83 = v79[v76];
      v84 = v80[v76];
      v85 = *(v81 + 8 * v76);
      v86 = v41[v76 - 1];
      v87 = *v78;
      v78 -= 4;
      v114 = v83;
      v115 = v84;
      v116 = v85;
      v117 = v86;
      v88 = type metadata accessor for HourlyWeatherStatistics();
      result = (*(*(v88 - 8) + 8))(&v77[v87], v88);
      v76 = v82;
    }

    while (v82);
  }

  return result;
}

void objectdestroy_26Tm()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 6);
  v8 = (*(v0 + 5) & 0xFFFFFFFFFFFFFFFELL);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_32_5();
    v9 = *v8;
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v10);
    TupleTypeMetadata = v3(0);
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27_3();
    v12 = 0;
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
    while (v5 != v12)
    {
      v19 = *(v16 + 8 * v12);
      v20 = v8[v12];
      v21 = *(v18 + 8 * v12);
      OUTLINED_FUNCTION_26_12(*(v14 + 8 * v12));
      *(v1 + 8 * v12++) = v3(255);
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_48(TupleTypeMetadata);
  v23 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v24 = (v23 + *(v22 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v22 + 8))(&v0[v23]);
  v25 = *&v0[v24 + 16];

  OUTLINED_FUNCTION_264();
  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46EC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v39 = a4;
  v10 = v6[2];
  v9 = v6[3];
  v11 = v6[4];
  v12 = v6[6];
  v37 = v6[5];
  v13 = (v37 & 0xFFFFFFFFFFFFFFFELL);
  if (v10 == 1)
  {
    v14 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    v15 = *v13;
    v16 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_54_1(*(v9 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = a3(0);
  }

  else
  {
    v36[3] = a1;
    v36[5] = a2;
    v36[6] = v7;
    v36[0] = v36;
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    v18 = 0;
    v36[4] = v9;
    v19 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v36[1] = v21;
    v36[2] = v20;
    v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
    v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
    while (v10 != v18)
    {
      v24 = *(v22 + 8 * v18);
      v25 = v13[v18];
      v26 = *(v23 + 8 * v18);
      OUTLINED_FUNCTION_54_1(*(v19 + 8 * v18));
      *(v5 + 8 * v18++) = a3(255);
    }

    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  v28 = v27;
  v30 = v29;
  v31 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v32 = *(v30 + 64);
  OUTLINED_FUNCTION_251_0(v31);
  v33 = OUTLINED_FUNCTION_243_0();
  return v34(v33);
}

uint64_t sub_23B46EE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v62 = a3;
  v61 = a2;
  v60 = a1;
  v68 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  v9 = *(v8 - 8);
  v54 = v8 - 8;
  v65 = v9;
  v64 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v52 - v10;
  v11 = sub_23B50C964();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C954();
  v82 = MEMORY[0x277D84F90];
  v14 = type metadata accessor for MonthTemperatureStatistics();
  v58 = v14;
  v15 = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics);
  v57 = v15;
  v16 = sub_23B4778AC(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics);
  v56 = v16;
  v55 = sub_23B4778AC(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics);
  v17 = *a4;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  v81 = v55;
  v18 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v52 - v22;
  (*(v19 + 16))(&v52 - v22, v17, v18, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  sub_23B46A690();
  sub_23B432448();
  (*(v19 + 8))(v23, v18);
  v24 = type metadata accessor for MonthPrecipitationStatistics();
  v53 = v24;
  v25 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics);
  v26 = sub_23B4778AC(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics);
  v27 = sub_23B4778AC(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics);
  v28 = a4[1];
  v78 = v24;
  v79 = v25;
  v80 = v26;
  v81 = v27;
  v29 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v52 - v33;
  (*(v30 + 16))(&v52 - v33, v28, v29, v32);
  sub_23B432448();
  (*(v30 + 8))(v34, v29);
  v72 = v59;
  v73 = &v82;
  v35 = v60;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v71;
  sub_23B50B4F4();
  sub_23B50B0C4();
  v36 = *a4;
  v78 = v58;
  v79 = v57;
  v80 = v56;
  v81 = v55;
  v37 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  v38 = v63;
  (*(*(v37 - 8) + 16))(v63, v36, v37);
  v39 = a4[1];
  v40 = *(v54 + 56);
  v78 = v53;
  v79 = v25;
  v80 = v26;
  v81 = v27;
  v41 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  (*(*(v41 - 8) + 16))(&v38[v40], v39, v41);
  v42 = (v64 + ((*(v65 + 80) + 16) & ~*(v65 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_23B3AF918();
  v44 = (v43 + v42);
  v46 = v66;
  v45 = v67;
  *v44 = v66;
  v44[1] = v45;

  v47 = sub_23B50B034();
  sub_23B50B074();

  v48 = swift_allocObject();
  v48[2] = v35;
  v48[3] = v46;
  v48[4] = v45;

  v49 = v35;
  v50 = sub_23B50B034();
  sub_23B50B084();

  return (*(v69 + 8))(v71, v70);
}

void WeatherService.fetchMonthlyStatistics<each A>(for:start:end:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_21();
  a19 = v26;
  a20 = v29;
  v31 = v30;
  v123 = v32;
  v125 = v23;
  v126 = v27;
  v33 = *v23;
  v120 = v34;
  v121 = v35;
  v127 = v28;
  v128 = a23;
  v118 = v33;
  v119 = a22;
  v129 = a21;
  v131 = (a22 & 0xFFFFFFFFFFFFFFFELL);
  v115[3] = v36;
  v115[1] = v37;
  if (v30 == 1)
  {
    v38 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    v39 = *(a21 & 0xFFFFFFFFFFFFFFFELL);
    v40 = *(a22 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_7_32(v41);
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery();
  }

  else
  {
    v23 = v115;
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    v24 = (v43 & 0xFFFFFFFFFFFFFFFELL);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFELL);
    while (v31)
    {
      OUTLINED_FUNCTION_294();
      v46 = *v131;
      v47 = *v45;
      OUTLINED_FUNCTION_13_15(v48);
      v49 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_293(v49);
    }

    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v122 = TupleTypeMetadata;
  v50 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v116 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_28_6();
  v130 = v54;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_73_1(v115);
  v56 = OUTLINED_FUNCTION_2_0(v55, &a17);
  v117 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_0();
  v61 = OUTLINED_FUNCTION_182_0(v60);
  v132 = MEMORY[0x277D84F90];
  v124 = v31;
  if (v31)
  {
    v62 = (v127 & 0xFFFFFFFFFFFFFFFELL);
    v63 = (v129 & 0xFFFFFFFFFFFFFFFELL);
    v64 = (v128 & 0xFFFFFFFFFFFFFFFELL);
    v65 = v131;
    v66 = v123;
    v24 = v124;
    do
    {
      v68 = *v62++;
      v67 = v68;
      v69 = *v63++;
      v70 = *v65++;
      v71 = *v64++;
      v72 = *v66++;
      OUTLINED_FUNCTION_7_32(v67);
      v73 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_289(v73, v74, v75, v76, v77, v78, v79, v80, v115[0]);
      OUTLINED_FUNCTION_5(v81);
      v83 = v82;
      v85 = *(v84 + 64);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v86);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_86_0();
      v87(v23, v72, v73);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      OUTLINED_FUNCTION_281();
      OUTLINED_FUNCTION_200_0();
      sub_23B432448();
      v88 = *(v83 + 8);
      v31 = (v83 + 8);
      v88(v23, v73);
      OUTLINED_FUNCTION_212();
    }

    while (!v89);
  }

  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_221_0(v90);
  OUTLINED_FUNCTION_140_0(v91);
  sub_23B50B4F4();
  v92 = OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_218_0(v92);
  if (v25)
  {
    OUTLINED_FUNCTION_122_0();
    v93 = v25;
    do
    {
      if (v25 == 1)
      {
        v94 = 0;
      }

      else
      {
        v94 = *v24;
      }

      OUTLINED_FUNCTION_83_1();
      v95 = *v31;
      v31 += 2;
      OUTLINED_FUNCTION_7_32(v96);
      v97 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_2(v97);
      (*(v98 + 16))(v130 + v94, v95);
      v24 += 4;
      v131 = v23;
      --v93;
    }

    while (v93);
  }

  v99 = v116;
  v100 = (v116[80] + 56) & ~v116[80];
  OUTLINED_FUNCTION_208_0();
  v102 = v101 & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  v103[2] = v25;
  OUTLINED_FUNCTION_171_0();
  v103[3] = swift_allocateMetadataPack();
  v103[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v103[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v105 = OUTLINED_FUNCTION_81_1(WitnessTablePack);
  v106(v105);
  v107 = (v103 + v102);
  v108 = v121;
  *v107 = v120;
  v107[1] = v108;

  v109 = sub_23B50B034();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v110 = swift_allocObject();
  v110[2] = v25;
  OUTLINED_FUNCTION_171_0();
  v110[3] = swift_allocateMetadataPack();
  v110[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v110[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  v111 = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_181_0(v111);
  v112 = v99;
  v113 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0();

  OUTLINED_FUNCTION_56_1(&a16);
  OUTLINED_FUNCTION_245();
  v114();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46FAF8(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v11 = *a2;

  [a3 coordinate];
  v12 = OUTLINED_FUNCTION_202();
  v13 = a7(v12);

  return v13;
}

uint64_t sub_23B46FBDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v42 = a1;
  v43 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133910, &unk_23B519490);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v31 - v11;
  v47 = type metadata accessor for MonthTemperatureStatistics();
  v46 = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics);
  v45 = sub_23B4778AC(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics);
  v44 = sub_23B4778AC(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics);
  v52[0] = a3;
  v41 = type metadata accessor for MonthPrecipitationStatistics();
  v40 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics);
  v39 = sub_23B4778AC(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics);
  v38 = sub_23B4778AC(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics);
  v12 = 0;
  v52[1] = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480) + 48);
  v37 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v32 = v9;
  for (i = (v9 + 32); ; i += 4)
  {
    if (v12 == 16)
    {
      v26 = v53;
      v27 = v33;
      sub_23B3A23E0();
      swift_storeEnumTagMultiPayload();
      v36(v27);
      sub_23B398890(v27, &qword_27E133910, &unk_23B519490);
      return sub_23B398890(v26, &qword_27E1338C0, &unk_23B5193E8);
    }

    v14 = v47;
    if (v12)
    {
      v14 = v41;
    }

    v15 = *i;
    v16 = v52[v12 / 8];
    v17 = v46;
    if (v12)
    {
      v17 = v40;
    }

    v18 = v45;
    if (v12)
    {
      v18 = v39;
    }

    v19 = v44;
    if (v12)
    {
      v19 = v38;
    }

    v48 = v14;
    v49 = v17;
    v50 = v18;
    v51 = v19;
    v20 = type metadata accessor for MonthlyWeatherStatisticsQuery();
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v20);
    v25 = &v31 - v24;
    (*(v21 + 16))(&v31 - v24, v16, v20, v23);
    sub_23B41F478(v42, *(v43 + v37), v20);
    if (v5)
    {
      break;
    }

    (*(v21 + 8))(v25, v20);
    v12 += 8;
  }

  result = (*(v21 + 8))(v25, v20);
  if (v12)
  {
    v29 = *(v32 + 32);
    v48 = v47;
    v49 = v46;
    v50 = v45;
    v51 = v44;
    v30 = type metadata accessor for MonthlyWeatherStatistics();
    return (*(*(v30 - 8) + 8))(&v53[v29], v30);
  }

  return result;
}

uint64_t sub_23B470080(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v87 = a1;
  v88 = a2;
  v14 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v15 = 8 * a6;
  v80 = a5;
  v81 = a4;
  if (a6 == 1)
  {
    v16 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v17 = *v14;
    v18 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v95 = *(a7 & 0xFFFFFFFFFFFFFFFELL);
    v96 = v16;
    v97 = v17;
    v98 = v18;
    type metadata accessor for MonthlyWeatherStatistics();
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v90 = &v76;
    MEMORY[0x28223BE20](a1);
    v20 = v10;
    v21 = 0;
    v91 = v11;
    v22 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v99 = v20;
    v23 = v20 & 0xFFFFFFFFFFFFFFFELL;
    while (a6 != v21)
    {
      v24 = *(v23 + 8 * v21);
      v25 = v14[v21];
      v26 = *((a10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v21);
      v95 = *(v22 + 8 * v21);
      v96 = v24;
      v97 = v25;
      v98 = v26;
      *(&v76 + 8 * v21++ - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for MonthlyWeatherStatistics();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v11 = v91;
    v15 = v93;
    v10 = v99;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D954();
  v84 = &v76;
  v78 = *(v27 - 8);
  v79 = v27;
  v28 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v77 = &v76 - v29;
  v83 = &v76;
  v85 = TupleTypeMetadata;
  v76 = *(TupleTypeMetadata - 8);
  v30 = *(v76 + 64);
  MEMORY[0x28223BE20](v31);
  v89 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = &v76;
  v35 = MEMORY[0x28223BE20](v33);
  v99 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v37 = (v10 & 0xFFFFFFFFFFFFFFFELL);
  v38 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  if (a6)
  {
    v39 = 0;
    v92 = a3;
    do
    {
      if (a6 == 1)
      {
        v40 = *v37;
        v41 = *v14;
        v42 = *v38;
        v95 = *v36;
        v96 = v40;
        v97 = v41;
        v98 = v42;
        v34 = type metadata accessor for MonthlyWeatherStatisticsQuery();
        v43 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v34);
        v44 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        for (i = 0; a6 != i; ++i)
        {
          v46 = v37[i];
          v47 = v14[i];
          v48 = v38[i];
          v95 = v36[i];
          v96 = v46;
          v97 = v47;
          v98 = v48;
          *&v44[8 * i] = type metadata accessor for MonthlyWeatherStatisticsQuery();
        }

        v34 = swift_getTupleTypeMetadata();
        v43 = *(v34 + 16 * v39 + 32);
        a3 = v92;
        v15 = v93;
      }

      *&v99[8 * v39++] = a3 + v43;
    }

    while (v39 != a6);
  }

  v49 = 0;
  v86 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  for (j = v85; ; j = v93)
  {
    v51 = j + 4;
    if (a6 == v49)
    {
      v63 = v76;
      v64 = v77;
      v65 = v89;
      v66 = v85;
      (*(v76 + 16))(v77, v89, v85, v35);
      v67 = v79;
      swift_storeEnumTagMultiPayload();
      v81(v64);
      (*(v78 + 8))(v64, v67);
      return (*(v63 + 8))(v65, v66);
    }

    v93 = v51;
    v91 = a6 == 1 ? 0 : v51[4];
    v52 = v36[v49];
    v53 = v37[v49];
    v54 = v14[v49];
    v55 = v38[v49];
    v90 = *&v99[8 * v49];
    v95 = v52;
    v96 = v53;
    v97 = v54;
    v98 = v55;
    v56 = type metadata accessor for MonthlyWeatherStatisticsQuery();
    v92 = &v76;
    v57 = *(v56 - 8);
    v58 = *(v57 + 64);
    v59 = MEMORY[0x28223BE20](v56);
    v61 = &v76 - v60;
    (*(v57 + 16))(&v76 - v60, v90, v56, v59);
    v62 = v94;
    sub_23B41F478(v87, *(v88 + v86), v56);
    v94 = v62;
    if (v62)
    {
      break;
    }

    (*(v57 + 8))(v61, v56);
    ++v49;
  }

  result = (*(v57 + 8))(v61, v56);
  v69 = v93;
  if (v49)
  {
    v70 = v36 - 1;
    do
    {
      v71 = v37[v49 - 1];
      v72 = v14[v49 - 1];
      v73 = v38[v49 - 1];
      v74 = *v69;
      v69 -= 4;
      v95 = v70[v49];
      v96 = v71;
      v97 = v72;
      v98 = v73;
      v75 = type metadata accessor for MonthlyWeatherStatistics();
      result = (*(*(v75 - 8) + 8))(&v89[v74], v75);
      --v49;
    }

    while (v49);
  }

  return result;
}

uint64_t sub_23B4706D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = a1;
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[6];
  v43 = v3[5];
  v11 = (v43 & 0xFFFFFFFFFFFFFFFELL);
  if (v7 == 1)
  {
    v12 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    v13 = *v11;
    v14 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_54_1(*(v8 & 0xFFFFFFFFFFFFFFFELL));
    v16 = v15;
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery();
  }

  else
  {
    v39 = a1;
    v41 = a2;
    v42 = v4;
    v37[0] = v37;
    v37[1] = a3;
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v20 = v19 - v18;
    v21 = 0;
    v40 = v8;
    v22 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v38 = v23;
    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    while (v7 != v21)
    {
      v25 = *(v24 + 8 * v21);
      v26 = v11[v21];
      v27 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v21);
      OUTLINED_FUNCTION_54_1(*(v22 + 8 * v21));
      *(v20 + 8 * v21++) = type metadata accessor for MonthlyWeatherStatisticsQuery();
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v5 = v41;
    v6 = v39;
    v8 = v40;
    v16 = v38;
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  v29 = v28;
  v31 = v30;
  v32 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v33 = *(v31 + 64);
  OUTLINED_FUNCTION_43_5();
  return sub_23B470080(v6, v5, (v3 + v35), *(v3 + v34), *(v3 + v34 + 8), v7, v8, v16, v43, v10);
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_242_0();

  return swift_deallocObject();
}

void WeatherService.fetchStatistics(for:calendar:options:timeZone:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v26;
  a20 = v27;
  v28 = v21;
  v173 = v29;
  v172 = v30;
  v169 = v31;
  v33 = v32;
  v35 = v34;
  v171 = v28;
  v170 = *v28;
  v36 = sub_23B50AA24();
  v37 = OUTLINED_FUNCTION_2_0(v36, &a15);
  v174 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_0();
  v184 = v41 - v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_1();
  v192 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_76();
  v191 = v46;
  OUTLINED_FUNCTION_24_0();
  v47 = sub_23B50AEF4();
  v48 = OUTLINED_FUNCTION_2_0(v47, &a17);
  v163 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v52);
  v196 = sub_23B50AE64();
  v53 = OUTLINED_FUNCTION_5(v196);
  v198 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v58 = OUTLINED_FUNCTION_3(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_5_1();
  v195 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v66);
  v67 = sub_23B50AD24();
  v68 = OUTLINED_FUNCTION_5(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_250_0();
  v182 = v74;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_250_0();
  v186 = v76;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_250_0();
  v181 = v78;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_250_0();
  v180 = v80;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_250_0();
  v190 = v82;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_127();
  v168 = v86;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_52();
  v179 = v88;
  sub_23B50AD14();
  sub_23B50ACE4();
  v197 = v33;
  sub_23B50ADE4();
  v89 = *(v70 + 8);
  v194 = v24;
  v187 = v89;
  v188 = v70 + 8;
  (v89)(v24, v67);
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v90 = sub_23B50CDF4();
  __swift_project_value_buffer(v90, qword_280B4E9D8);
  v91 = *(v70 + 16);
  v189 = v23;
  v92 = v23;
  v93 = v91;
  (v91)(v25, v92, v67);
  v94 = v35;
  v95 = sub_23B50CDD4();
  v96 = sub_23B50D4C4();

  v193 = v70;
  v178 = v70 + 16;
  v185 = v93;
  v183 = v20;
  v166 = v94;
  if (os_log_type_enabled(v95, v96))
  {
    v97 = OUTLINED_FUNCTION_42_0();
    v98 = OUTLINED_FUNCTION_303();
    v161 = v98;
    v162 = OUTLINED_FUNCTION_42_0();
    v199 = v162;
    OUTLINED_FUNCTION_189_0(7.2226e-34);
    *(v97 + 14) = v94;
    *v98 = v94;
    *(v97 + 22) = 2082;
    (v93)(v194, v25, v67);
    v99 = v194;
    v100 = v94;
    v101 = sub_23B50D1A4();
    v103 = v102;
    v104 = OUTLINED_FUNCTION_99_0();
    v187(v104);
    v105 = sub_23B391F1C(v101, v103, &v199);

    *(v97 + 24) = v105;
    OUTLINED_FUNCTION_300(&dword_23B38D000, v106, v107, "About to fetch weather statistics data; location=%{private,mask.hash}@, startTime=%{public}s");
    sub_23B398890(v161, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v162);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_109_0();
  }

  else
  {

    v109 = OUTLINED_FUNCTION_99_0();
    v187(v109);
    v99 = v194;
  }

  v108 = v195;
  v111 = v198 + 104;
  v110 = *(v198 + 104);
  LODWORD(v162) = *MEMORY[0x277CC9980];
  v195 = v110;
  v110(v22);
  OUTLINED_FUNCTION_304();
  v112 = *(v198 + 8);
  v113 = OUTLINED_FUNCTION_226();
  v198 += 8;
  v194 = v114;
  v114(v113);
  OUTLINED_FUNCTION_17_12(v176);
  if (v115)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v176);
    if (!v115)
    {
      sub_23B398890(v176, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v116(v190, v176, v67);
  }

  LODWORD(v176) = *MEMORY[0x277CC9968];
  v195(v22);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_273();
  v117();
  OUTLINED_FUNCTION_17_12(v108);
  if (v115)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v108);
    if (!v115)
    {
      sub_23B398890(v108, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v118 = OUTLINED_FUNCTION_241_0();
    v119(v118);
  }

  sub_23B50AE54();
  sub_23B50AD14();
  sub_23B50AE94();
  (v187)(v99, v67);
  OUTLINED_FUNCTION_56_1(&v195);
  OUTLINED_FUNCTION_245();
  v120();
  v177 = v111;
  (v195)(v22, v162, v196);
  OUTLINED_FUNCTION_226();
  sub_23B50AE24();
  OUTLINED_FUNCTION_273();
  v121();
  OUTLINED_FUNCTION_17_12(v164);
  if (v115)
  {
    v122 = v181;
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v164);
    v124 = v183;
    if (!v115)
    {
      sub_23B398890(v164, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v122 = v181;
    OUTLINED_FUNCTION_200_0();
    v123();
    v124 = v183;
  }

  (v185)(v99, v190, v67);
  v125 = OUTLINED_FUNCTION_234_0();
  (v185)(v125, v122, v67);
  sub_23B50AA04();
  OUTLINED_FUNCTION_184_0();
  v126();
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_273();
  v127();
  OUTLINED_FUNCTION_17_12(v165);
  if (v115)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v165);
    if (!v115)
    {
      sub_23B398890(v165, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_200_0();
    v128();
  }

  v129 = OUTLINED_FUNCTION_195();
  v185(v129);
  v130 = OUTLINED_FUNCTION_234_0();
  (v185)(v130, v189, v67);
  sub_23B50AA04();
  OUTLINED_FUNCTION_184_0();
  v131();
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_273();
  v132();
  OUTLINED_FUNCTION_17_12(v167);
  if (v115)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v167);
    if (!v115)
    {
      sub_23B398890(v167, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v133 = OUTLINED_FUNCTION_241_0();
    v134(v133);
  }

  v135 = OUTLINED_FUNCTION_195();
  v136 = v185;
  v185(v135);
  v137 = OUTLINED_FUNCTION_234_0();
  (v185)(v137, v124, v67);
  v138 = v184;
  v139 = sub_23B50AA04();
  MEMORY[0x28223BE20](v139);
  v140 = v166;
  *(&v160 - 6) = v171;
  *(&v160 - 5) = v140;
  OUTLINED_FUNCTION_221_0(&v160);
  v141 = v192;
  *(v142 - 16) = v138;
  *(v142 - 8) = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A0, &qword_23B5192D8);
  sub_23B50B0C4();
  v136(v99, v179, v67);
  v143 = v193;
  v144 = (*(v193 + 80) + 16) & ~*(v193 + 80);
  OUTLINED_FUNCTION_208_0();
  v146 = v145 & 0xFFFFFFFFFFFFFFF8;
  v147 = ((v145 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v148 = swift_allocObject();
  (*(v143 + 32))(v148 + v144, v99, v67);
  *(v148 + v146) = v140;
  v149 = (v148 + v147);
  v150 = v172;
  v151 = v173;
  *v149 = v172;
  v149[1] = v151;
  v152 = v140;

  v153 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  OUTLINED_FUNCTION_139_0();
  v154 = swift_allocObject();
  v154[2] = v152;
  v154[3] = v150;
  v154[4] = v151;
  v155 = v152;

  v156 = sub_23B50B034();
  sub_23B50B084();

  v157 = v187;
  (v187)(v183, v67);
  v157(v182, v67);
  v157(v181, v67);
  v157(v180, v67);
  v157(v190, v67);
  v157(v189, v67);
  v157(v179, v67);
  v158 = *(v174 + 8);
  v159 = v175;
  v158(v184, v175);
  v158(v192, v159);
  v158(v191, v159);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B471774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v48 = a5;
  v49 = a2;
  v64 = a4;
  v51 = a1;
  v7 = sub_23B50AEF4();
  v53 = v7;
  v8 = *(v7 - 8);
  v63 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v10;
  v11 = sub_23B50AA24();
  v44 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C8, &qword_23B5193F8);
  v61 = *(v12 + 16);
  v62 = v12 + 16;
  v52 = v14;
  v61(v14, a3, v11);
  v55 = *(v8 + 16);
  v60 = v8 + 16;
  v55(v10, v64, v7);
  v15 = *(v12 + 80);
  v16 = *(v8 + 80);
  v17 = v8;
  v18 = (v15 + 32) & ~v15;
  v57 = v18;
  v19 = (v13 + v16 + v18) & ~v16;
  v59 = v15 | v16;
  v20 = swift_allocObject();
  v21 = v49;
  *(v20 + 16) = v51;
  *(v20 + 24) = v21;
  v22 = *(v12 + 32);
  v56 = v12 + 32;
  v58 = v22;
  v23 = v44;
  v22(v20 + v18, v14, v44);
  v24 = *(v17 + 32);
  v54 = v17 + 32;
  v25 = v45;
  v26 = v53;
  v24(v20 + v19, v45, v53);
  v47 = v24;

  v27 = v21;
  v49 = sub_23B50B044();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338D0, &qword_23B519410);
  v28 = v52;
  v29 = v23;
  v61(v52, v48, v23);
  v30 = v25;
  v31 = v26;
  v55(v25, v64, v26);
  v32 = v19;
  v33 = swift_allocObject();
  v34 = v51;
  *(v33 + 16) = v51;
  *(v33 + 24) = v27;
  v58(v33 + v57, v28, v29);
  v24(v33 + v32, v30, v31);

  v35 = v27;
  v48 = sub_23B50B044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338D8, &qword_23B519428);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;

  v37 = v35;
  sub_23B50B044();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338E0, &qword_23B519440);
  v38 = v52;
  v61(v52, v50, v29);
  v39 = v53;
  v55(v30, v64, v53);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v37;
  v58(v40 + v57, v38, v29);
  v47(v40 + v32, v30, v39);

  v41 = v37;
  sub_23B50B044();
  v42 = sub_23B50B0B4();

  return v42;
}

uint64_t sub_23B471CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B471D80, 0, 0);
}

uint64_t sub_23B471D80()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_134_0();
  v3 = *MEMORY[0x277D7B090];
  v4 = sub_23B50C7D4();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 104))(v0, v3);
  v6 = (v0 + *(v1 + 52));
  *v6 = sub_23B4F12CC;
  v6[1] = 0;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_133_0(dword_23B5194C8);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v2 + 88) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_41_3(v7);

  return v10(v9);
}

uint64_t sub_23B471E7C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 80), &qword_27E133928, &qword_23B5194C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B471F8C()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 80), &qword_27E133928, &qword_23B5194C0);

  OUTLINED_FUNCTION_67_1();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_23B472004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v8 = *(*(type metadata accessor for StatisticsSpanFactory() - 8) + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4720D4, 0, 0);
}

uint64_t sub_23B4720D4()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = sub_23B50AEF4();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 16))(v1, v2);
  sub_23B4E6760();
  OUTLINED_FUNCTION_164_0();
  type metadata accessor for HourTemperatureStatistics();
  sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_104_0();
  sub_23B4778AC(v6, type metadata accessor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_103_0();
  v8 = sub_23B4778AC(v7, type metadata accessor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_126_0(v8);
  v9 = type metadata accessor for HourlyWeatherStatisticsQuery();
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_227_0();
  v13(v12);
  v0[7] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[16] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_132_0(v14);
  OUTLINED_FUNCTION_129_0();

  return sub_23B475FE8(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_23B4722A0()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[14];
  v1 = v0[15];
  OUTLINED_FUNCTION_4_21();
  sub_23B3A24BC(v3, v4);
  sub_23B398890(v2, &qword_27E133928, &qword_23B5194C0);
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];

  OUTLINED_FUNCTION_67_1();

  return v8();
}

uint64_t sub_23B472328()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 112), &qword_27E133928, &qword_23B5194C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B472438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4724E0, 0, 0);
}

uint64_t sub_23B4724E0()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_134_0();
  v3 = *MEMORY[0x277D7B098];
  v4 = sub_23B50C7D4();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 104))(v0, v3);
  v6 = (v0 + *(v1 + 52));
  *v6 = sub_23B41F268;
  v6[1] = 0;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_133_0(dword_23B5194A0);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v2 + 88) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_41_3(v7);

  return v10(v9);
}

uint64_t sub_23B4725DC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 80), qword_27E132C40, &qword_23B514C28);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4726EC()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 80), qword_27E132C40, &qword_23B514C28);

  OUTLINED_FUNCTION_67_1();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_23B472764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v8 = *(*(type metadata accessor for StatisticsSpanFactory() - 8) + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B472834, 0, 0);
}

uint64_t sub_23B472834()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = sub_23B50AEF4();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 16))(v1, v2);
  sub_23B4E6214();
  OUTLINED_FUNCTION_164_0();
  type metadata accessor for DayPrecipitationStatistics();
  sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_102_0();
  sub_23B4778AC(v6, type metadata accessor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_101_0();
  v8 = sub_23B4778AC(v7, type metadata accessor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_126_0(v8);
  v9 = type metadata accessor for DailyWeatherStatisticsQuery();
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_227_0();
  v13(v12);
  v0[7] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[16] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_132_0(v14);
  OUTLINED_FUNCTION_129_0();

  return sub_23B4752C8(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_23B472A00()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  OUTLINED_FUNCTION_4_21();
  sub_23B3A24BC(v2, v3);

  OUTLINED_FUNCTION_45_0();

  return v4();
}

uint64_t sub_23B472A70()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[14];
  v1 = v0[15];
  OUTLINED_FUNCTION_4_21();
  sub_23B3A24BC(v3, v4);
  sub_23B398890(v2, qword_27E132C40, &qword_23B514C28);
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];

  OUTLINED_FUNCTION_67_1();

  return v8();
}

uint64_t sub_23B472AF8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 112), qword_27E132C40, &qword_23B514C28);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B472C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132E40, &qword_23B5157C8);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E38, &qword_23B5157C0);
  v3[11] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B472CE8, 0, 0);
}

uint64_t sub_23B472CE8()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8) + 48);
  v0[2] = v5;
  v0[3] = v6;
  v7 = *MEMORY[0x277D7B090];
  v8 = sub_23B50C7D4();
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 104);
  v10(v2, v7, v8);
  v11 = (v2 + *(v1 + 52));
  *v11 = sub_23B432390;
  v11[1] = 0;
  v0[4] = v2;
  v10(v3, *MEMORY[0x277D7B098], v8);
  v12 = (v3 + *(v4 + 52));
  *v12 = sub_23B4323E4;
  v12[1] = 0;
  v0[5] = v3;
  OUTLINED_FUNCTION_133_0(&unk_23B519478);
  v19 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[13] = v14;
  *v14 = v15;
  v14[1] = sub_23B472E90;
  v17 = v0[7];
  v16 = v0[8];

  return v19(v0 + 2, v16, 1, 12, v0 + 4);
}

uint64_t sub_23B472E90()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  v3[14] = v0;

  if (!v0)
  {
    v9 = v3[12];
    sub_23B398890(v3[10], qword_27E132E40, &qword_23B5157C8);
    sub_23B398890(v9, &qword_27E132E38, &qword_23B5157C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B472FBC()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B473020()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[12];
  sub_23B398890(v0[10], qword_27E132E40, &qword_23B5157C8);
  sub_23B398890(v1, &qword_27E132E38, &qword_23B5157C0);

  OUTLINED_FUNCTION_67_1();
  v3 = v0[14];

  return v2();
}

uint64_t sub_23B4730BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  v6[24] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  v6[26] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4731A0, 0, 0);
}

uint64_t sub_23B4731A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v24 = v14[20];
  v23 = v14[21];
  if ((v23 - 13) >= 0xFFFFFFFFFFFFFFF4 && (v24 - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    v27 = v14[24];
    v26 = v14[25];
    v28 = v14[22];
    a9 = v14[19];
    a10 = v14[23];
    OUTLINED_FUNCTION_211_0();
    v14[28] = type metadata accessor for MonthTemperatureStatistics();
    v14[29] = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics);
    v14[30] = OUTLINED_FUNCTION_220_0(qword_280B420E0);
    v29 = OUTLINED_FUNCTION_220_0(&qword_280B420D8);
    v14[31] = v29;
    OUTLINED_FUNCTION_52_2(v29);
    v30 = type metadata accessor for MonthlyWeatherStatisticsQuery();
    OUTLINED_FUNCTION_2(v30);
    v32 = *(v31 + 16);
    v33 = OUTLINED_FUNCTION_25_4();
    v34(v33);
    v35 = type metadata accessor for MonthPrecipitationStatistics();
    v14[32] = v35;
    v36 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics);
    v14[33] = v36;
    v37 = OUTLINED_FUNCTION_220_0(&qword_280B41D50);
    v14[34] = v37;
    v38 = OUTLINED_FUNCTION_220_0(&qword_280B41D48);
    v14[35] = v38;
    v39 = *(v28 + 8);
    v40 = *(v27 + 48);
    v14[6] = v35;
    v14[7] = v36;
    v14[8] = v37;
    v14[9] = v38;
    v41 = type metadata accessor for MonthlyWeatherStatisticsQuery();
    OUTLINED_FUNCTION_2(v41);
    (*(v42 + 16))(v26 + v40, v39);
    v43 = swift_task_alloc();
    v14[36] = v43;
    v43[2] = a10;
    v43[3] = a9;
    v43[4] = v24;
    v43[5] = v23;
    v43[6] = v26;
    v44 = *(MEMORY[0x277D85A40] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v14[37] = v45;
    *v45 = v46;
    v45[1] = sub_23B473444;
    v48 = v14[26];
    v47 = v14[27];
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B473444()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *(v5 + 288);
  v8 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v9 = v8;
  *(v3 + 304) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 200), &qword_27E133900, &qword_23B519480);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B473578()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[27];
  sub_23B398890(v0[25], &qword_27E133900, &qword_23B519480);

  OUTLINED_FUNCTION_67_1();
  v3 = v0[38];

  return v2();
}

uint64_t sub_23B4735FC()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  v5 = *v4;
  v6 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v6;
  v18 = *(v0 + 272);
  v19 = *(v0 + 256);
  v7 = type metadata accessor for MonthlyWeatherStatistics();
  OUTLINED_FUNCTION_2(v7);
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_226();
  v11(v10);
  v12 = v4[1];
  v13 = *(v2 + 48);
  *(v0 + 112) = v19;
  *(v0 + 128) = v18;
  v14 = type metadata accessor for MonthlyWeatherStatistics();
  OUTLINED_FUNCTION_2(v14);
  (*(v15 + 32))(v12, v1 + v13);

  OUTLINED_FUNCTION_45_0();

  return v16();
}

uint64_t sub_23B47370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  v5[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4737B4, 0, 0);
}

uint64_t sub_23B4737B4()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_134_0();
  v3 = *MEMORY[0x277D7B098];
  v4 = sub_23B50C7D4();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 104))(v0, v3);
  v6 = (v0 + *(v1 + 52));
  *v6 = sub_23B442ED0;
  v6[1] = 0;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_133_0(&unk_23B519460);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v2 + 88) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_41_3(v7);

  return v10(v9);
}

uint64_t sub_23B4738B0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 80), qword_27E1331D0, &qword_23B5168C8);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4739C0()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_45_0();

  return v2();
}

uint64_t sub_23B473A18()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 80), qword_27E1331D0, &qword_23B5168C8);

  OUTLINED_FUNCTION_67_1();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_23B473A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  v6[21] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = sub_23B50AE84();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v12 = *(v11 + 64) + 15;
  v6[25] = swift_task_alloc();
  v13 = sub_23B50AD24();
  v6[26] = v13;
  v14 = *(v13 - 8);
  v6[27] = v14;
  v15 = *(v14 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v17 = sub_23B50AEF4();
  v6[31] = v17;
  v18 = *(v17 - 8);
  v6[32] = v18;
  v19 = *(v18 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v20 = sub_23B50AC34();
  v6[35] = v20;
  v21 = *(v20 - 8);
  v6[36] = v21;
  v22 = *(v21 + 64) + 15;
  v6[37] = swift_task_alloc();
  v23 = sub_23B50AC04();
  v6[38] = v23;
  v24 = *(v23 - 8);
  v6[39] = v24;
  v25 = *(v24 + 64) + 15;
  v6[40] = swift_task_alloc();
  v26 = sub_23B50ABE4();
  v6[41] = v26;
  v27 = *(v26 - 8);
  v6[42] = v27;
  v28 = *(v27 + 64) + 15;
  v6[43] = swift_task_alloc();
  v29 = sub_23B50ABF4();
  v6[44] = v29;
  v30 = *(v29 - 8);
  v6[45] = v30;
  v31 = *(v30 + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v32 = sub_23B50AC84();
  v6[48] = v32;
  v33 = *(v32 - 8);
  v6[49] = v33;
  v34 = *(v33 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B473EDC, 0, 0);
}

uint64_t sub_23B473EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[44];
  v17 = v14[42];
  v16 = v14[43];
  v19 = v14[40];
  v18 = v14[41];
  v20 = v14[38];
  v21 = v14[39];
  v22 = v14[36];
  v23 = v14[35];
  v24 = v14[30];
  v95 = v14[37];
  v97 = v14[31];
  v91 = *MEMORY[0x277CC9460];
  v93 = (v14[45] + 104);
  v89 = *v93;
  (*v93)(v14[47]);
  (*(v17 + 104))(v16, *MEMORY[0x277CC9458], v18);
  (*(v21 + 104))(v19, *MEMORY[0x277CC9468], v20);
  (*(v22 + 104))(v95, *MEMORY[0x277CC9480], v23);
  sub_23B50AEA4();
  v25 = OUTLINED_FUNCTION_51(v24, 1, v97);
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v34 = v14[53];
    v36 = v14[51];
    v35 = v14[52];
    v37 = v14[49];
    v38 = v14[50];
    v39 = v14[48];
    v77 = v14[45];
    v78 = v14[54];
    v74 = v14[44];
    v75 = v14[46];
    v70 = v14[43];
    v71 = v14[47];
    v69 = v14[40];
    v40 = v14[37];
    v72 = v14[31];
    v73 = v14[32];
    v41 = v14[29];
    v80 = v14[33];
    v81 = v14[27];
    v82 = v14[26];
    v83 = v14[25];
    v84 = v14[28];
    v85 = v14[24];
    v86 = v14[23];
    v98 = v14[19];
    v87 = v14[18];
    v88 = v14[20];
    v76 = v14[17];
    v79 = v14[16];
    v96 = v14[15];
    (*(v73 + 32))(v14[34], v14[30]);
    sub_23B50AC14();
    sub_23B50AC54();
    v42 = *(v37 + 8);
    v14[55] = v42;
    v14[56] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v38, v39);
    sub_23B50AC64();
    v43 = OUTLINED_FUNCTION_195();
    (v42)(v43);
    sub_23B50AC44();
    v42(v35, v39);
    (v89)(v75, v91, v74);
    sub_23B50AC24();
    v44 = *(v77 + 8);
    v45 = OUTLINED_FUNCTION_99_0();
    v46(v45);
    v42(v34, v39);
    (*(v73 + 16))(v80, v76, v72);
    sub_23B50AC74();
    sub_23B50AA14();
    sub_23B4778AC(&qword_27E1338E8, MEMORY[0x277CC94A0]);
    sub_23B50AD04();
    v47 = *(v81 + 8);
    v14[57] = v47;
    v14[58] = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = OUTLINED_FUNCTION_202();
    v47(v48);
    v92 = v14[11];
    v94 = v14[10];
    v14[59] = v92;
    sub_23B50A9F4();
    sub_23B50AD04();
    v49 = OUTLINED_FUNCTION_202();
    v47(v49);
    v50 = v14[13];
    v90 = v14[12];
    v14[60] = v50;
    sub_23B50AE04();
    sub_23B50AA14();
    sub_23B50ADE4();
    v51 = OUTLINED_FUNCTION_202();
    v47(v51);
    (*(v85 + 8))(v83, v86);
    v52 = type metadata accessor for DayPrecipitationSummary();
    v14[61] = v52;
    v53 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary);
    v14[62] = v53;
    v54 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary);
    v14[63] = v54;
    v55 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary);
    v14[64] = v55;
    v56 = *v87;
    v14[2] = v52;
    v14[3] = v53;
    v14[4] = v54;
    v14[5] = v55;
    v57 = type metadata accessor for DailyWeatherSummaryQuery();
    OUTLINED_FUNCTION_2(v57);
    v59 = *(v58 + 16);
    v60 = OUTLINED_FUNCTION_226();
    v61(v60);
    v62 = swift_task_alloc();
    v14[65] = v62;
    v62[2] = v98;
    v62[3] = v96;
    v62[4] = v94;
    v62[5] = v92;
    v62[6] = v90;
    v62[7] = v50;
    v62[8] = v84;
    v62[9] = v76;
    v62[10] = v88;
    v63 = *(MEMORY[0x277D85A40] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v14[66] = v64;
    *v64 = v65;
    v64[1] = sub_23B4744A4;
    v67 = v14[21];
    v66 = v14[22];
    OUTLINED_FUNCTION_85();
    v28 = 0xD00000000000002FLL;
    v31 = v62;
  }

  return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4744A4()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = v5[66];
  v7 = v5[65];
  v8 = v5[60];
  v9 = v5[59];
  v10 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v11 = v10;
  *(v3 + 536) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 160), qword_27E1331D0, &qword_23B5168C8);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B47461C()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 368);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 272);
  v20 = *(v0 + 264);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v23 = *(v0 + 200);
  v24 = *(v0 + 176);
  v9 = *(v0 + 160);
  (*(v0 + 440))(*(v0 + 432), *(v0 + 384));
  sub_23B398890(v9, qword_27E1331D0, &qword_23B5168C8);
  v2(v7, v8);

  OUTLINED_FUNCTION_67_1();
  v11 = *(v0 + 536);

  return v10();
}

uint64_t sub_23B4747AC()
{
  v1 = **(v0 + 112);
  v2 = *(v0 + 504);
  *(v0 + 48) = *(v0 + 488);
  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v6 = *(v0 + 432);
  v15 = *(v0 + 464);
  v16 = *(v0 + 424);
  v17 = *(v0 + 416);
  v18 = *(v0 + 408);
  v7 = *(v0 + 384);
  v19 = *(v0 + 400);
  v20 = *(v0 + 376);
  v21 = *(v0 + 368);
  v22 = *(v0 + 344);
  v23 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 272);
  v26 = *(v0 + 264);
  v27 = *(v0 + 240);
  v8 = *(v0 + 224);
  v9 = *(v0 + 208);
  v28 = *(v0 + 232);
  v29 = *(v0 + 200);
  v10 = *(v0 + 176);
  v30 = *(v0 + 160);
  *(v0 + 64) = v2;
  v11 = type metadata accessor for DailyWeatherSummary();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 32))(v1, v10);
  v4(v6, v7);
  v3(v8, v9);

  OUTLINED_FUNCTION_45_0();

  return v13();
}

uint64_t sub_23B47497C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v74 = a5;
  v73 = a6;
  v70 = a4;
  v67 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B8, &qword_23B5193E0);
  v7 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - v8;
  v9 = sub_23B50AD24();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = type metadata accessor for WeatherStatisticsModel();
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A0, &qword_23B5192D8);
  v24 = v23[12];
  v25 = v23[16];
  v26 = a1 + v23[20];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8) + 48);
  sub_23B3A23E0();
  v28 = v19[7];
  sub_23B3A23E0();
  v29 = v19[8];
  sub_23B3A23E0();
  v30 = v19[9];
  v31 = v17;
  sub_23B3A23E0();
  v32 = v19[10];
  sub_23B3A23E0();
  sub_23B50AD14();
  sub_23B50ACF4();
  v34 = v33;
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v35 = sub_23B50CDF4();
  __swift_project_value_buffer(v35, qword_280B4E9D8);
  v36 = v68;
  v37 = v69;
  v67 = *(v68 + 16);
  v67(v14, v17, v69);
  v38 = v70;
  v39 = sub_23B50CDD4();
  v40 = v14;
  v41 = sub_23B50D4C4();

  LODWORD(v70) = v41;
  v42 = os_log_type_enabled(v39, v41);
  v43 = v40;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v65 = v31;
    v45 = v44;
    v46 = swift_slowAlloc();
    v63 = v46;
    v64 = swift_slowAlloc();
    v75 = v64;
    *v45 = 141558787;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2113;
    *(v45 + 14) = v38;
    *v46 = v38;
    *(v45 + 22) = 2082;
    v62 = v39;
    v67(v66, v43, v37);
    v47 = v38;
    v48 = sub_23B50D1A4();
    v49 = v36;
    v50 = v37;
    v52 = v51;
    v53 = *(v49 + 8);
    v53(v43, v50);
    v54 = sub_23B391F1C(v48, v52, &v75);
    v37 = v50;

    *(v45 + 24) = v54;
    *(v45 + 32) = 2050;
    *(v45 + 34) = v34;
    v55 = v62;
    _os_log_impl(&dword_23B38D000, v62, v70, "Finished fetching weather statistics data; location=%{private,mask.hash}@, endTime=%{public}s, duration=%{public}fs", v45, 0x2Au);
    v56 = v63;
    sub_23B398890(v63, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v56, -1, -1);
    v57 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x23EE9E260](v57, -1, -1);
    v58 = v45;
    v31 = v65;
    MEMORY[0x23EE9E260](v58, -1, -1);
  }

  else
  {

    v53 = *(v36 + 8);
    v53(v40, v37);
  }

  v59 = v72;
  sub_23B477C04();
  swift_storeEnumTagMultiPayload();
  v74(v59);
  sub_23B398890(v59, &qword_27E1338B8, &qword_23B5193E0);
  v53(v31, v37);
  return sub_23B3A24BC(v22, type metadata accessor for WeatherStatisticsModel);
}

uint64_t sub_23B474F0C()
{
  OUTLINED_FUNCTION_209_0();
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_240_0();
  v7 = OUTLINED_FUNCTION_239_0();
  return sub_23B47497C(v7, v8, v9, v10, v11, v12);
}

void sub_23B474F94()
{
  OUTLINED_FUNCTION_21();
  v31 = v4;
  v32 = v3;
  v6 = v5;
  v8 = v7;
  v12 = OUTLINED_FUNCTION_301(v9, v10, v3, v11, v7, v5);
  OUTLINED_FUNCTION_6(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_2();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v16 = sub_23B50CDF4();
  __swift_project_value_buffer(v16, qword_280B4E9D8);
  v17 = v1;
  v18 = v0;
  v19 = sub_23B50CDD4();
  v20 = sub_23B50D4B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_42_0();
    v33 = v30;
    OUTLINED_FUNCTION_191_0(7.2227e-34);
    *(v21 + 14) = v18;
    *v29 = v18;
    OUTLINED_FUNCTION_252_0();
    v22 = v18;
    v23 = sub_23B50D874();
    v25 = sub_23B391F1C(v23, v24, &v33);

    *(v21 + 24) = v25;
    *(v21 + 32) = 2112;
    v26 = v1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 34) = v27;
    v29[1] = v27;
    _os_log_impl(&dword_23B38D000, v19, v20, v31, v21, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109_0();
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  *v2 = v1;
  OUTLINED_FUNCTION_99_0();
  swift_storeEnumTagMultiPayload();
  v28 = v1;
  v32(v2);
  sub_23B398890(v2, v8, v6);
  OUTLINED_FUNCTION_20();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WeatherService.insertIntoCacheInternal(requestUrl:responseJson:)(Swift::String requestUrl, Swift::String responseJson)
{
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_23B50B6B4();
}

uint64_t sub_23B4752C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 208) = a5;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  *(v7 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4753AC, 0, 0);
}

uint64_t sub_23B4753AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_211_0();
  v14[19] = type metadata accessor for DayPrecipitationStatistics();
  v14[20] = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_102_0();
  v14[21] = sub_23B4778AC(v15, type metadata accessor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_101_0();
  v17 = sub_23B4778AC(v16, type metadata accessor for DayPrecipitationStatistics);
  v14[22] = v17;
  OUTLINED_FUNCTION_52_2(v17);
  v18 = type metadata accessor for DailyWeatherStatisticsQuery();
  OUTLINED_FUNCTION_2(v18);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_25_4();
  v22(v21);
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_151_0(v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[24] = v33;
  *v33 = v34;
  v33[1] = sub_23B475528;
  v36 = v14[17];
  v35 = v14[18];
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_129_0();

  return MEMORY[0x2822008A0](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B475528()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *(v5 + 184);
  v8 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v9 = v8;
  *(v3 + 200) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 128), qword_27E132C40, &qword_23B514C28);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B47565C()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[18];
  sub_23B398890(v0[16], qword_27E132C40, &qword_23B514C28);

  OUTLINED_FUNCTION_67_1();
  v3 = v0[25];

  return v2();
}

uint64_t sub_23B4756E0()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_112_0();
  v2 = type metadata accessor for DailyWeatherStatistics();
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 32))(v1, v0);

  OUTLINED_FUNCTION_45_0();

  return v4();
}

uint64_t sub_23B475778(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = a6;
  v27 = a4;
  v28 = a5;
  v25 = a1;
  v26 = a3;
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133918, &qword_23B5194B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for DayPrecipitationStatistics();
  v18 = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics);
  v19 = sub_23B4778AC(qword_280B42190, type metadata accessor for DayPrecipitationStatistics);
  v20 = sub_23B4778AC(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics);
  v31[0] = v17;
  v31[1] = v18;
  v31[2] = v19;
  v31[3] = v20;
  v21 = type metadata accessor for DailyWeatherStatisticsQuery();
  (*(*(v21 - 8) + 16))(v16, a7, v21);
  v31[0] = v16;
  (*(v9 + 16))(v12, v25, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v12, v8);
  sub_23B469C7C(v26, v27, v28, v30, v31, sub_23B477814, v23);

  return sub_23B398890(v16, qword_27E132C40, &qword_23B514C28);
}

uint64_t sub_23B475A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133920, &qword_23B5194B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v7 - v4);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[1] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133918, &qword_23B5194B0);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133918, &qword_23B5194B0);
    return sub_23B50D354();
  }
}

uint64_t sub_23B475BA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v32 = a5;
  v33 = a6;
  v29 = a3;
  v30 = a4;
  v34 = a2;
  v28 = a1;
  v31 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F0, &qword_23B519468);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for DayPrecipitationSummary();
  v20 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary);
  v21 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary);
  v22 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary);
  v37[0] = v19;
  v37[1] = v20;
  v37[2] = v21;
  v37[3] = v22;
  v23 = type metadata accessor for DailyWeatherSummaryQuery();
  (*(*(v23 - 8) + 16))(v18, a10, v23);
  v37[0] = v18;
  (*(v11 + 16))(v14, v28, v10);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  (*(v11 + 32))(v25 + v24, v14, v10);
  sub_23B46B2FC(v29, v30, v32, v33, v35, v36, v31, v37, sub_23B47748C, v25);

  return sub_23B398890(v18, qword_27E1331D0, &qword_23B5168C8);
}

uint64_t sub_23B475E6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F8, &qword_23B519470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v7 - v4);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[1] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F0, &qword_23B519468);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F0, &qword_23B519468);
    return sub_23B50D354();
  }
}

uint64_t sub_23B475FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 208) = a5;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  *(v7 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4760CC, 0, 0);
}

uint64_t sub_23B4760CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_211_0();
  v14[19] = type metadata accessor for HourTemperatureStatistics();
  v14[20] = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_104_0();
  v14[21] = sub_23B4778AC(v15, type metadata accessor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_103_0();
  v17 = sub_23B4778AC(v16, type metadata accessor for HourTemperatureStatistics);
  v14[22] = v17;
  OUTLINED_FUNCTION_52_2(v17);
  v18 = type metadata accessor for HourlyWeatherStatisticsQuery();
  OUTLINED_FUNCTION_2(v18);
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_25_4();
  v22(v21);
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_151_0(v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[24] = v33;
  *v33 = v34;
  v33[1] = sub_23B476248;
  v36 = v14[17];
  v35 = v14[18];
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_129_0();

  return MEMORY[0x2822008A0](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B476248()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *(v5 + 184);
  v8 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v9 = v8;
  *(v3 + 200) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 128), &qword_27E133928, &qword_23B5194C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B47637C()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[18];
  sub_23B398890(v0[16], &qword_27E133928, &qword_23B5194C0);

  OUTLINED_FUNCTION_67_1();
  v3 = v0[25];

  return v2();
}

uint64_t sub_23B476400()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_112_0();
  v2 = type metadata accessor for HourlyWeatherStatistics();
  OUTLINED_FUNCTION_2(v2);
  (*(v3 + 32))(v1, v0);

  OUTLINED_FUNCTION_45_0();

  return v4();
}

uint64_t sub_23B476498(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = a6;
  v27 = a4;
  v28 = a5;
  v25 = a1;
  v26 = a3;
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133930, &qword_23B5194D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for HourTemperatureStatistics();
  v18 = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics);
  v19 = sub_23B4778AC(qword_280B42238, type metadata accessor for HourTemperatureStatistics);
  v20 = sub_23B4778AC(&qword_280B42230, type metadata accessor for HourTemperatureStatistics);
  v31[0] = v17;
  v31[1] = v18;
  v31[2] = v19;
  v31[3] = v20;
  v21 = type metadata accessor for HourlyWeatherStatisticsQuery();
  (*(*(v21 - 8) + 16))(v16, a7, v21);
  v31[0] = v16;
  (*(v9 + 16))(v12, v25, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v12, v8);
  sub_23B46D518(v26, v27, v28, v30, v31, sub_23B4779A0, v23);

  return sub_23B398890(v16, &qword_27E133928, &qword_23B5194C0);
}

uint64_t sub_23B47674C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133938, &qword_23B5194E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v7 - v4);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[1] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133930, &qword_23B5194D8);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133930, &qword_23B5194D8);
    return sub_23B50D354();
  }
}

uint64_t sub_23B4768C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v37 = a3;
  v40 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133908, &qword_23B519488);
  v6 = *(v35 - 8);
  v34 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v31 = type metadata accessor for MonthTemperatureStatistics();
  v30 = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics);
  v13 = sub_23B4778AC(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics);
  v14 = sub_23B4778AC(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics);
  v15 = type metadata accessor for MonthPrecipitationStatistics();
  v16 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics);
  v17 = sub_23B4778AC(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics);
  v18 = sub_23B4778AC(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics);
  v19 = *(v9 + 56);
  v41 = v31;
  v42 = v30;
  v43 = v13;
  v44 = v14;
  v20 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  v21 = v32;
  (*(*(v20 - 8) + 16))(v12, v32, v20);
  v44 = v18;
  v45[0] = v12;
  v22 = &v12[*(v9 + 56)];
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v23 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  (*(*(v23 - 8) + 16))(v22, v21 + v19, v23);
  v45[1] = v22;
  v24 = v33;
  v25 = v35;
  (*(v6 + 16))(v33, v36, v35);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v26, v24, v25);
  sub_23B46EE6C(v37, v38, v39, v45, sub_23B477684, v27);

  return sub_23B398890(v12, &qword_27E133900, &qword_23B519480);
}

uint64_t sub_23B476C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133910, &unk_23B519490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v7 - v4);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[1] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133908, &qword_23B519488);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133908, &qword_23B519488);
    return sub_23B50D354();
  }
}

uint64_t sub_23B476DFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23B476E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B476E88()
{
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_28_0(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_23B50AEF4();
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_125_0();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_217_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_42_5(v9);

  return sub_23B471CD8(v11, v12, v13, v14, v15);
}

uint64_t sub_23B476F90()
{
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_28_0(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_23B50AEF4();
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_125_0();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_217_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_42_5(v9);

  return sub_23B472438(v11, v12, v13, v14, v15);
}

uint64_t sub_23B477098()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_23B477CAC;

  return sub_23B472C08(v3, v5, v4);
}

uint64_t objectdestroy_56Tm()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_23B50AA24();
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_23B47726C()
{
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_28_0(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_23B50AEF4();
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_125_0();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_217_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_42_5(v9);

  return sub_23B47370C(v11, v12, v13, v14, v15);
}

uint64_t sub_23B477374()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  OUTLINED_FUNCTION_67_1();

  return v5();
}

uint64_t sub_23B4774B4()
{
  v1 = OUTLINED_FUNCTION_196_0();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  return sub_23B46C2B0(v1, v6, v7);
}

uint64_t sub_23B4774D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  OUTLINED_FUNCTION_28_0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = sub_23B50AEF4();
  OUTLINED_FUNCTION_28_0(v15);
  v17 = v16;
  v19 = v18;
  v20 = (v12 + v14 + *(v17 + 80)) & ~*(v17 + 80);
  v21 = *(v19 + 64);
  OUTLINED_FUNCTION_43_5();
  return sub_23B46C38C(a1, a2, v2 + v7, v2 + v12, v2 + v23, *(v2 + v22), *(v2 + v22 + 8));
}

uint64_t sub_23B4776AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_23B477730()
{
  OUTLINED_FUNCTION_209_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  OUTLINED_FUNCTION_28_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_43_5();
  v9 = (v0 + v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = OUTLINED_FUNCTION_239_0();
  return sub_23B46FBDC(v12, v13, v14, v15, v16);
}

uint64_t sub_23B4778AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_76Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_264();

  return swift_deallocObject();
}

uint64_t objectdestroy_110Tm(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_138_0(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = (v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v3 + v9;
  v12 = sub_23B50C7D4();
  OUTLINED_FUNCTION_6(v12);
  (*(v13 + 8))(v11);
  v14 = *(v11 + *(v2 + 60) + 8);

  v15 = *(v3 + v10 + 16);

  return swift_deallocObject();
}

uint64_t sub_23B477AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_265(a1, a2, a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_28_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = *(v12 + 64);
  OUTLINED_FUNCTION_251_0(v13);
  v15 = OUTLINED_FUNCTION_243_0();
  return a5(v15);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_139_0();

  return swift_deallocObject();
}

uint64_t sub_23B477C04()
{
  OUTLINED_FUNCTION_220();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v0;
}

id sub_23B477C58(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23B477C64(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{
  *(v3 + 48) = a1;
  v5 = *(v2 + 32);
  result = v3 + v1;
  v7 = *(v4 - 152);
  v8 = *(v4 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_90_0()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 256);
  v4 = *(v0 - 144);

  return sub_23B50B074();
}

void OUTLINED_FUNCTION_120_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 184) = v1;
  *(v2 - 176) = v3;
}

uint64_t OUTLINED_FUNCTION_127_0()
{
  result = *(v0 - 256);
  v3 = *(v1 - 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_133_0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_164_0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  return 0;
}

uint64_t OUTLINED_FUNCTION_178_0()
{
  *(v0 + v1) = *(v3 - 268) & 1;
  v5 = v0 + v2;
  v6 = *(v3 - 232);
  *(v5 + 8) = *(v3 - 240);
  *(v5 + 16) = v6;
}

uint64_t OUTLINED_FUNCTION_196_0()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

void OUTLINED_FUNCTION_199_0(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 616);
  *(v1 - 224) = v2;
  *(v1 - 216) = v3;
  v4 = *(v1 - 560);
}

void OUTLINED_FUNCTION_202_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 240) = v1;
  *(v2 - 232) = v3;
}

uint64_t OUTLINED_FUNCTION_206_0()
{

  return sub_23B3B0A98();
}

uint64_t OUTLINED_FUNCTION_220_0(unint64_t *a1)
{

  return sub_23B4778AC(a1, v1);
}

void OUTLINED_FUNCTION_233_0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  v5 = v0[5] & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t OUTLINED_FUNCTION_256_0()
{
  v2 = *(v0 - 312);

  return type metadata accessor for WeatherQuery();
}

uint64_t OUTLINED_FUNCTION_257_0()
{
  v2 = *(v0 - 336);

  return type metadata accessor for WeatherQuery();
}

uint64_t OUTLINED_FUNCTION_258()
{
  v2 = *(v0 - 272);

  return type metadata accessor for WeatherQuery();
}

void OUTLINED_FUNCTION_260()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_263()
{
  result = *(v0 - 416);
  v2 = *(v0 - 368);
  return result;
}

__n128 OUTLINED_FUNCTION_271@<Q0>(char a1@<W8>)
{
  result = *v1;
  *(v2 - 144) = *v1;
  *(v2 - 128) = a1 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_286()
{
  result = *(v0 - 768);
  v2 = *(v0 - 760);
  return result;
}

uint64_t OUTLINED_FUNCTION_287()
{
  result = *(v0 - 776);
  v2 = *(v0 - 768);
  return result;
}

uint64_t OUTLINED_FUNCTION_291()
{
  result = *(v0 - 712);
  v2 = *(v0 - 704);
  return result;
}

uint64_t OUTLINED_FUNCTION_292()
{
  result = *(v0 - 720);
  v2 = *(v0 - 712);
  return result;
}

void OUTLINED_FUNCTION_300(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x20u);
}

uint64_t OUTLINED_FUNCTION_301(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_302()
{

  return sub_23B50B0C4();
}

uint64_t OUTLINED_FUNCTION_303()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_305()
{
}

uint64_t OUTLINED_FUNCTION_306()
{

  return sub_23B3AF918();
}

uint64_t HourlyWeatherStatistics.init(hours:baselineStartDate:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for HourlyWeatherStatistics();
  v8 = *(v7 + 52);
  v9 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v9);
  (*(v10 + 32))(&a4[v8], a2);
  return sub_23B3CA20C(a3, &a4[*(v7 + 56)]);
}

uint64_t HourlyWeatherStatistics.hours.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t HourlyWeatherStatistics.baselineStartDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t HourlyWeatherStatistics.baselineStartDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

BOOL static HourlyWeatherStatistics.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v8 = (sub_23B50D324() & 1) != 0 && (v6 = type metadata accessor for HourlyWeatherStatistics(), v7 = *(v6 + 52), (sub_23B50ACD4() & 1) != 0) && static WeatherMetadata.== infix(_:_:)(a1 + *(v6 + 56), a2 + *(v6 + 56));
  return v8;
}

uint64_t sub_23B478564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372756F68 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B536030 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B478678(char a1)
{
  if (!a1)
  {
    return 0x7372756F68;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x617461646174656DLL;
}

BOOL sub_23B4786D0(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return OUTLINED_FUNCTION_9(*a1, *a2);
}

uint64_t sub_23B4786E8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return _s10WeatherKit0A6ChangeV9DirectionO9hashValueSivg_0(*v1);
}

uint64_t sub_23B4786F8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_23B3DE0C0(a1, *v2);
}

uint64_t sub_23B478708(uint64_t a1, void *a2)
{
  sub_23B50D8C4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_23B3DE0C0(v9, *v2);
  return sub_23B50D914();
}

uint64_t sub_23B478754(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B478678(*v1);
}

uint64_t sub_23B478764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_23B478564(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B478798(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *v1;
  return sub_23B3DEE7C();
}

uint64_t sub_23B4787C0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_23B3E64C0();
  *a2 = result;
  return result;
}

uint64_t sub_23B4787F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B478848(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HourlyWeatherStatistics.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v26 = *(a2 + 16);
  v27 = v5;
  v25 = a2;
  v30 = v26;
  v31 = v5;
  type metadata accessor for HourlyWeatherStatistics.CodingKeys();
  OUTLINED_FUNCTION_3_32();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v30 = *v3;
  v32 = 0;
  sub_23B50D304();
  v29 = v27;
  swift_getWitnessTable();
  v15 = v28;
  sub_23B50D7F4();
  if (!v15)
  {
    v16 = v25;
    v17 = *(v25 + 52);
    LOBYTE(v30) = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_4_22();
    sub_23B478FAC(v18, v19);
    OUTLINED_FUNCTION_6_15();
    v20 = *(v16 + 56);
    LOBYTE(v30) = 2;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_2_29();
    sub_23B478FAC(v21, v22);
    OUTLINED_FUNCTION_6_15();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t HourlyWeatherStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v55 = type metadata accessor for WeatherMetadata();
  v11 = OUTLINED_FUNCTION_6(v55);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v54 = v14;
  v15 = sub_23B50AD24();
  v16 = OUTLINED_FUNCTION_5(v15);
  v58 = v17;
  v59 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v57 = v20;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  type metadata accessor for HourlyWeatherStatistics.CodingKeys();
  OUTLINED_FUNCTION_3_32();
  swift_getWitnessTable();
  v62 = sub_23B50D754();
  v21 = OUTLINED_FUNCTION_5(v62);
  v56 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v50 - v25;
  v60 = a2;
  v61 = a3;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v27 = type metadata accessor for HourlyWeatherStatistics();
  v28 = OUTLINED_FUNCTION_5(v27);
  v52 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v50 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v63 = v26;
  v35 = v64;
  sub_23B50D964();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v56;
  v36 = v57;
  v51 = v33;
  v64 = a1;
  v39 = v58;
  v38 = v59;
  sub_23B50D304();
  v70 = 0;
  v65 = v61;
  swift_getWitnessTable();
  sub_23B50D734();
  v61 = v66;
  *v51 = v66;
  LOBYTE(v66) = 1;
  OUTLINED_FUNCTION_4_22();
  sub_23B478FAC(v40, v41);
  v42 = v36;
  sub_23B50D734();
  v60 = v27;
  v43 = v51;
  (*(v39 + 32))(v51 + *(v27 + 52), v42, v38);
  LOBYTE(v66) = 2;
  OUTLINED_FUNCTION_2_29();
  sub_23B478FAC(v44, v45);
  v46 = v54;
  sub_23B50D734();
  (*(v37 + 8))(v63, v62);
  v47 = v60;
  sub_23B3CA20C(v46, v43 + *(v60 + 56));
  v48 = v52;
  (*(v52 + 16))(v53, v43, v47);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v48 + 8))(v43, v47);
}

uint64_t sub_23B478FAC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_23B479030(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static HourlyWeatherStatistics.== infix(_:_:)(a1, a2);
}

uint64_t sub_23B4791C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B47929C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132568, &qword_23B511720);
    sub_23B408E00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B479330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HourlyWeatherStatistics.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B479358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HourlyWeatherStatistics.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B479380(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B4793F4(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B4793F4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  HourlyWeatherStatistics.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B4794B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B479524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B4795AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B479630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = HourlyWeatherStatistics.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B47971C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B479770(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B4797F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for Weather()
{
  result = qword_27E133A10;
  if (!qword_27E133A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Weather.minuteForecast.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for Weather();
  return OUTLINED_FUNCTION_26_10(&qword_27E131C90, &unk_23B514EC0, *(v0 + 20));
}

uint64_t Weather.minuteForecast.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.hourlyForecast.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for Weather();
  return OUTLINED_FUNCTION_26_10(&qword_27E131CA8, &unk_23B50ED70, *(v0 + 24));
}

uint64_t Weather.hourlyForecast.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.dailyForecast.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for Weather();
  return OUTLINED_FUNCTION_26_10(&qword_27E131CB0, &qword_23B516B60, *(v0 + 28));
}

uint64_t Weather.dailyForecast.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.weatherAlerts.getter()
{
  v1 = *(v0 + *(type metadata accessor for Weather() + 32));
}

uint64_t Weather.weatherAlerts.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for Weather() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Weather.weatherAlerts.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.availability.getter()
{
  result = OUTLINED_FUNCTION_29_9();
  v3 = (v1 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 2);
  *v0 = v4;
  *(v0 + 2) = v3;
  return result;
}

uint64_t Weather.availability.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for Weather();
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t Weather.availability.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.airQuality.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for Weather();
  return OUTLINED_FUNCTION_26_10(&qword_27E131C78, &qword_23B50ED40, *(v0 + 40));
}

uint64_t Weather.airQuality.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.weatherChanges.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for Weather();
  return OUTLINED_FUNCTION_26_10(&qword_27E131EF0, &unk_23B50F220, *(v0 + 44));
}

uint64_t Weather.weatherChanges.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for Weather() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.news.getter()
{
  *v0 = *(v1 + *(OUTLINED_FUNCTION_29_9() + 48));
}

uint64_t Weather.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:weatherAlerts:availability:airQuality:weatherChanges:news:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v34 = *(a6 + 2);
  v35 = *a6;
  v38 = *a10;
  v15 = type metadata accessor for Weather();
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v15[8];
  v22 = v15[10];
  type metadata accessor for AirQuality();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v15[11];
  type metadata accessor for WeatherChanges();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_15_14();
  sub_23B47C090(a1, a9);
  sub_23B3C2510(a2, a9 + v16, &qword_27E131C90, &unk_23B514EC0);
  sub_23B3CE5BC(a3, a9 + v15[6], &qword_27E131CA8, &unk_23B50ED70);
  sub_23B3CE5BC(a4, a9 + v15[7], &qword_27E131CB0, &qword_23B516B60);
  *(a9 + v21) = a5;
  v32 = a9 + v15[9];
  *v32 = v35;
  *(v32 + 2) = v34;
  sub_23B3C2510(a7, a9 + v22, &qword_27E131C78, &qword_23B50ED40);
  result = sub_23B3C2510(a8, a9 + v27, &qword_27E131EF0, &unk_23B50F220);
  *(a9 + v15[12]) = v38;
  return result;
}

uint64_t sub_23B47A0A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F466574756E696DLL && a2 == 0xEE00747361636572;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4172656874616577 && a2 == 0xED0000737472656CLL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1937204590 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_23B50D834();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_23B47A3AC(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      v3 = 0x6574756E696DLL;
      goto LABEL_5;
    case 2:
      v3 = 0x796C72756F68;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 3:
      result = 0x726F46796C696164;
      break;
    case 4:
      result = 0x4172656874616577;
      break;
    case 5:
      result = 0x6962616C69617661;
      break;
    case 6:
      result = 0x696C617551726961;
      break;
    case 7:
      result = 0x4372656874616577;
      break;
    case 8:
      result = 1937204590;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B47A4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B47A0A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B47A510@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B47A3A4();
  *a1 = result;
  return result;
}

uint64_t sub_23B47A538(uint64_t a1)
{
  v2 = sub_23B47C0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B47A574(uint64_t a1)
{
  v2 = sub_23B47C0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static Weather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherChanges();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v137 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v138 = v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1339E0, &qword_23B519920);
  OUTLINED_FUNCTION_6(v140);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v132 - v18;
  v142 = type metadata accessor for AirQuality();
  v20 = OUTLINED_FUNCTION_6(v142);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v139 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52();
  v141 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133138, &qword_23B5166B0);
  OUTLINED_FUNCTION_6(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_52();
  v143 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  v40 = &v132 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v132 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133150, &qword_23B5166C8);
  OUTLINED_FUNCTION_6(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  v52 = &v132 - v51;
  if (!static CurrentWeather.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v133 = v19;
  v134 = v4;
  v53 = type metadata accessor for Weather();
  v54 = a2;
  v55 = *(v53 + 20);
  v56 = *(v47 + 48);
  v135 = v53;
  v136 = a1;
  sub_23B3CE510(a1 + v55, v52, &qword_27E131C90, &unk_23B514EC0);
  v57 = v54 + v55;
  v58 = v54;
  sub_23B3CE510(v57, &v52[v56], &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_51(v52, 1, v35);
  if (v59)
  {
    OUTLINED_FUNCTION_51(&v52[v56], 1, v35);
    if (v59)
    {
      sub_23B398890(v52, &qword_27E131C90, &unk_23B514EC0);
      goto LABEL_13;
    }

LABEL_10:
    v60 = &qword_27E133150;
    v61 = &qword_23B5166C8;
    v62 = v52;
LABEL_11:
    sub_23B398890(v62, v60, v61);
    return 0;
  }

  sub_23B3CE510(v52, v46, &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_51(&v52[v56], 1, v35);
  if (v59)
  {
    sub_23B398890(v46, &qword_27E131CA0, &qword_23B5101A0);
    goto LABEL_10;
  }

  sub_23B3CE5BC(&v52[v56], v40, &qword_27E131CA0, &qword_23B5101A0);
  v63 = sub_23B44249C();
  sub_23B398890(v40, &qword_27E131CA0, &qword_23B5101A0);
  v64 = OUTLINED_FUNCTION_65();
  sub_23B398890(v64, v65, &qword_23B5101A0);
  sub_23B398890(v52, &qword_27E131C90, &unk_23B514EC0);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v67 = v135;
  v66 = v136;
  v68 = v135[6];
  if ((sub_23B4424C4() & 1) == 0)
  {
    return 0;
  }

  v69 = v67[7];
  if ((sub_23B4424EC() & 1) == 0)
  {
    return 0;
  }

  v70 = v67[8];
  v71 = *(v54 + v70);
  if (*(v66 + v70))
  {
    v72 = v134;
    if (!v71)
    {
      return 0;
    }

    v73 = *(v54 + v70);

    sub_23B3E17F4();
    v75 = v74;

    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v72 = v134;
    if (v71)
    {
      return 0;
    }
  }

  v76 = v67[9];
  v77 = (v66 + v76);
  v78 = *(v66 + v76 + 1);
  v79 = *(v66 + v76 + 2);
  v80 = (v54 + v76);
  v81 = v80[1];
  v82 = v80[2];
  v83 = *v80;
  v84 = *v77;
  if ((sub_23B3E61D8() & 1) == 0 || (sub_23B3E61D8() & 1) == 0 || (sub_23B3E61D8() & 1) == 0)
  {
    return 0;
  }

  v85 = v67[10];
  v86 = *(v30 + 48);
  v87 = v143;
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v88, v89, v90, v91);
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v92, v93, v94, v95);
  v96 = v142;
  OUTLINED_FUNCTION_51(v87, 1, v142);
  if (v59)
  {
    OUTLINED_FUNCTION_51(v87 + v86, 1, v96);
    if (v59)
    {
      sub_23B398890(v87, &qword_27E131C78, &qword_23B50ED40);
      goto LABEL_33;
    }

LABEL_31:
    v60 = &qword_27E133138;
    v61 = &qword_23B5166B0;
LABEL_46:
    v62 = v87;
    goto LABEL_11;
  }

  v97 = v141;
  sub_23B3CE510(v87, v141, &qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_51(v87 + v86, 1, v96);
  if (v98)
  {
    OUTLINED_FUNCTION_13_16();
    sub_23B47C280();
    goto LABEL_31;
  }

  v99 = v139;
  sub_23B47C090(v87 + v86, v139);
  v100 = static AirQuality.== infix(_:_:)(v97, v99);
  sub_23B47C280();
  sub_23B47C280();
  sub_23B398890(v87, &qword_27E131C78, &qword_23B50ED40);
  if (!v100)
  {
    return 0;
  }

LABEL_33:
  v101 = v67[11];
  v102 = *(v140 + 48);
  v87 = v133;
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v103, v104, v105, v106);
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v107, v108, v109, v110);
  OUTLINED_FUNCTION_51(v87, 1, v72);
  if (v59)
  {
    OUTLINED_FUNCTION_51(v87 + v102, 1, v72);
    if (v59)
    {
      sub_23B398890(v87, &qword_27E131EF0, &unk_23B50F220);
      goto LABEL_38;
    }

    goto LABEL_45;
  }

  v117 = v138;
  sub_23B3CE510(v87, v138, &qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_51(v87 + v102, 1, v72);
  if (v118)
  {
    OUTLINED_FUNCTION_10_19();
    sub_23B47C280();
LABEL_45:
    v60 = &qword_27E1339E0;
    v61 = &qword_23B519920;
    goto LABEL_46;
  }

  v119 = v87 + v102;
  v120 = v137;
  sub_23B47C090(v119, v137);
  sub_23B3E0724(*v117, *v120, v121, v122, v123, v124, v125, v126, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
  if ((v127 & 1) == 0)
  {
    sub_23B47C280();
    sub_23B47C280();
    v60 = &qword_27E131EF0;
    v61 = &unk_23B50F220;
    goto LABEL_46;
  }

  v128 = static WeatherMetadata.== infix(_:_:)(v117 + *(v72 + 20), v120 + *(v72 + 20));
  sub_23B47C280();
  sub_23B47C280();
  sub_23B398890(v87, &qword_27E131EF0, &unk_23B50F220);
  if (!v128)
  {
    return 0;
  }

LABEL_38:
  v111 = v67[12];
  v112 = *(v66 + v111);
  v113 = *(v58 + v111);
  if (!v112)
  {
    if (!v113)
    {

      return 1;
    }

    v129 = *(v58 + v111);
    goto LABEL_54;
  }

  if (!v113)
  {
    v130 = *(v66 + v111);
LABEL_54:

    return 0;
  }

  v114 = *(v66 + v111);
  swift_bridgeObjectRetain_n();

  sub_23B3DF420(v112, v113);
  v116 = v115;
  swift_bridgeObjectRelease_n();

  return (v116 & 1) != 0;
}

uint64_t Weather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1339E8, &qword_23B519928);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B47C0E8();
  sub_23B50D974();
  LOBYTE(v30) = 0;
  type metadata accessor for CurrentWeather();
  OUTLINED_FUNCTION_11_15();
  sub_23B47C480(v14, v15);
  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_5_21();
  sub_23B50D7F4();
  if (!v2)
  {
    v28 = type metadata accessor for Weather();
    v16 = v28[5];
    LOBYTE(v30) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    OUTLINED_FUNCTION_1_0(&qword_280B41A88);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    v17 = v28[6];
    LOBYTE(v30) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_1_0(&qword_280B41A90);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v18 = v28[7];
    LOBYTE(v30) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_1_0(qword_280B41A98);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v30 = *(v3 + v28[8]);
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B47C190(&qword_280B41A38, &unk_280B426F8);
    OUTLINED_FUNCTION_5_21();
    sub_23B50D794();
    v19 = (v3 + v28[9]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 2);
    LOWORD(v30) = v20;
    BYTE2(v30) = v19;
    v29 = 5;
    sub_23B448E5C();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v21 = v28[10];
    LOBYTE(v30) = 6;
    type metadata accessor for AirQuality();
    OUTLINED_FUNCTION_14_22();
    sub_23B47C480(v22, v23);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    v24 = v28[11];
    LOBYTE(v30) = 7;
    type metadata accessor for WeatherChanges();
    OUTLINED_FUNCTION_12_16();
    sub_23B47C480(v25, v26);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    v30 = *(v3 + v28[12]);
    v29 = 8;
    sub_23B47C13C();

    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t Weather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v91 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v92 = v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6(v94);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v93 = v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6(v96);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52();
  v95 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  v98 = v25;
  v97 = type metadata accessor for CurrentWeather();
  v26 = OUTLINED_FUNCTION_6(v97);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_27();
  v99 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133A00, &qword_23B519930);
  v100 = OUTLINED_FUNCTION_5(v31);
  v101 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  v37 = v89 - v36;
  v38 = type metadata accessor for Weather();
  v39 = OUTLINED_FUNCTION_6(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_27();
  v44 = v43 - v42;
  v46 = *(v45 + 20);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  v107 = v46;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v51 = *(v38 + 40);
  v52 = type metadata accessor for AirQuality();
  v53 = v51;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
  v104 = v38;
  v57 = *(v38 + 44);
  v58 = type metadata accessor for WeatherChanges();
  v106 = v57;
  v108 = v44;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  v63 = a1[3];
  v62 = a1[4];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v63);
  sub_23B47C0E8();
  v102 = v37;
  v64 = v103;
  sub_23B50D964();
  if (v64)
  {
    __swift_destroy_boxed_opaque_existential_1(v105);
    v73 = v108;
    sub_23B398890(v108 + v107, &qword_27E131C90, &unk_23B514EC0);

    sub_23B398890(v73 + v53, &qword_27E131C78, &qword_23B50ED40);
    return sub_23B398890(v73 + v106, &qword_27E131EF0, &unk_23B50F220);
  }

  else
  {
    v65 = v98;
    v89[2] = v52;
    v89[1] = v58;
    LOBYTE(v110) = 0;
    OUTLINED_FUNCTION_11_15();
    sub_23B47C480(v66, v67);
    OUTLINED_FUNCTION_23_9();
    v68 = v99;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    v103 = v53;
    OUTLINED_FUNCTION_15_14();
    v69 = v68;
    v70 = v108;
    sub_23B47C090(v69, v108);
    LOBYTE(v110) = 1;
    OUTLINED_FUNCTION_2_4(&qword_27E133180, &qword_27E131CA0, &qword_23B5101A0);
    OUTLINED_FUNCTION_23_9();
    sub_23B50D6D4();
    v71 = v104;
    sub_23B3C2510(v65, v70 + v107, &qword_27E131C90, &unk_23B514EC0);
    LOBYTE(v110) = 2;
    OUTLINED_FUNCTION_2_4(&qword_27E133188, &qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_23_9();
    v72 = v95;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    sub_23B3CE5BC(v72, v108 + v71[6], &qword_27E131CA8, &unk_23B50ED70);
    LOBYTE(v110) = 3;
    OUTLINED_FUNCTION_2_4(&qword_27E133190, &qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_23_9();
    v74 = v93;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    v75 = v103;
    v76 = v108;
    sub_23B3CE5BC(v74, v108 + v71[7], &qword_27E131CB0, &qword_23B516B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    v109 = 4;
    sub_23B47C190(&qword_27E1331A0, &qword_27E1331A8);
    sub_23B50D6D4();
    *(v76 + v71[8]) = v110;
    v109 = 5;
    sub_23B448FA0();
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    v77 = BYTE2(v110);
    v78 = v76 + v71[9];
    *v78 = v110;
    *(v78 + 2) = v77;
    LOBYTE(v110) = 6;
    OUTLINED_FUNCTION_14_22();
    sub_23B47C480(v79, v80);
    OUTLINED_FUNCTION_23_9();
    v81 = v92;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D6D4();
    sub_23B3C2510(v81, v76 + v75, &qword_27E131C78, &qword_23B50ED40);
    LOBYTE(v110) = 7;
    OUTLINED_FUNCTION_12_16();
    sub_23B47C480(v82, v83);
    OUTLINED_FUNCTION_23_9();
    v84 = v91;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D6D4();
    v85 = v108;
    sub_23B3C2510(v84, v108 + v106, &qword_27E131EF0, &unk_23B50F220);
    v109 = 8;
    sub_23B47C22C();
    OUTLINED_FUNCTION_1_24();
    sub_23B50D6D4();
    v86 = OUTLINED_FUNCTION_8_17();
    v87(v86);
    *(v85 + v71[12]) = v110;
    sub_23B3CE4B8(v85, v90);
    __swift_destroy_boxed_opaque_existential_1(v105);
    return sub_23B47C280();
  }
}

uint64_t Weather.isExpired.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v66 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = sub_23B50AD24();
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  v24 = sub_23B50B9D4();
  sub_23B50B994();
  v25 = v0 + *(type metadata accessor for CurrentWeather() + 136);
  v26 = type metadata accessor for WeatherMetadata();
  v27 = *(v26 + 20);
  v28 = sub_23B47C480(&qword_280B43110, MEMORY[0x277CC9578]);
  OUTLINED_FUNCTION_21_11();
  v67 = sub_23B50D114();
  v29 = *(v21 + 8);
  v30 = OUTLINED_FUNCTION_31();
  v29(v30);
  v31 = type metadata accessor for Weather();
  v32 = v31[10];
  v63 = v1;
  sub_23B3CE510(v1 + v32, v17, &qword_27E131C78, &qword_23B50ED40);
  v33 = type metadata accessor for AirQuality();
  OUTLINED_FUNCTION_51(v17, 1, v33);
  v65 = v24;
  v62 = v28;
  v60 = v21 + 8;
  if (v34)
  {
    v36 = v26;
    sub_23B398890(v17, &qword_27E131C78, &qword_23B50ED40);
    v61 = 0;
  }

  else
  {
    v59 = v31;
    sub_23B50B994();
    v35 = *(v33 + 68);
    v36 = v26;
    v37 = *(v26 + 20);
    OUTLINED_FUNCTION_21_11();
    v38 = sub_23B50D114();
    v31 = v59;
    v61 = v38;
    v39 = OUTLINED_FUNCTION_31();
    v29(v39);
    OUTLINED_FUNCTION_13_16();
    sub_23B47C280();
  }

  v40 = v63;
  v41 = v64;
  sub_23B3CE510(v63 + v31[5], v64, &qword_27E131C90, &unk_23B514EC0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_51(v41, 1, v42);
  if (v34)
  {
    sub_23B398890(v41, &qword_27E131C90, &unk_23B514EC0);
    v46 = 0;
    v44 = v36;
  }

  else
  {
    sub_23B50B994();
    v43 = *(v42 + 52);
    v44 = v36;
    v45 = *(v36 + 20);
    OUTLINED_FUNCTION_21_11();
    v46 = sub_23B50D114();
    v47 = OUTLINED_FUNCTION_31();
    v29(v47);
    sub_23B398890(v41, &qword_27E131CA0, &qword_23B5101A0);
  }

  if (*(v40 + v31[8]))
  {
    v48 = Array<A>.isExpired.getter();
  }

  else
  {
    v48 = 0;
  }

  v49 = v40 + v31[11];
  v50 = v66;
  sub_23B3CE510(v49, v66, &qword_27E131EF0, &unk_23B50F220);
  v51 = type metadata accessor for WeatherChanges();
  OUTLINED_FUNCTION_51(v50, 1, v51);
  if (v34)
  {
    sub_23B398890(v50, &qword_27E131EF0, &unk_23B50F220);
    v55 = 0;
  }

  else
  {
    v52 = v46;
    v53 = v29;
    sub_23B50B994();
    v54 = *(v51 + 20) + *(v44 + 20);
    OUTLINED_FUNCTION_21_11();
    v55 = sub_23B50D114();
    v56 = OUTLINED_FUNCTION_31();
    v53(v56);
    v46 = v52;
    OUTLINED_FUNCTION_10_19();
    sub_23B47C280();
  }

  return (v67 | v61 | v46 | v48 | v55) & 1;
}

uint64_t sub_23B47C090(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

unint64_t sub_23B47C0E8()
{
  result = qword_27E1339F0;
  if (!qword_27E1339F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1339F0);
  }

  return result;
}

unint64_t sub_23B47C13C()
{
  result = qword_27E1339F8;
  if (!qword_27E1339F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1339F8);
  }

  return result;
}

uint64_t sub_23B47C190(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B47C480(a2, type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B47C22C()
{
  result = qword_27E133A08;
  if (!qword_27E133A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133A08);
  }

  return result;
}

uint64_t sub_23B47C280()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_23B47C2FC()
{
  type metadata accessor for CurrentWeather();
  if (v0 <= 0x3F)
  {
    sub_23B442A7C(319, &qword_280B43628, &qword_27E131CA0, &qword_23B5101A0);
    if (v1 <= 0x3F)
    {
      sub_23B3C1C00();
      if (v2 <= 0x3F)
      {
        sub_23B3C1DD4();
        if (v3 <= 0x3F)
        {
          sub_23B442A7C(319, &qword_280B43420, &qword_27E131EB8, &unk_23B519380);
          if (v4 <= 0x3F)
          {
            sub_23B3C1F2C(319, qword_280B44448, type metadata accessor for AirQuality);
            if (v5 <= 0x3F)
            {
              sub_23B3C1F2C(319, qword_280B44640, type metadata accessor for WeatherChanges);
              if (v6 <= 0x3F)
              {
                sub_23B47C4C4();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B47C480(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_77();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B47C4C4()
{
  if (!qword_280B43888)
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43888);
    }
  }
}

uint64_t getEnumTagSinglePayload for Weather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Weather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B47C67C()
{
  result = qword_27E133A20;
  if (!qword_27E133A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133A20);
  }

  return result;
}

unint64_t sub_23B47C6D4()
{
  result = qword_27E133A28;
  if (!qword_27E133A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133A28);
  }

  return result;
}

unint64_t sub_23B47C72C()
{
  result = qword_27E133A30[0];
  if (!qword_27E133A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E133A30);
  }

  return result;
}

uint64_t DailyWeatherStatistics.init(days:baselineStartDate:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for DailyWeatherStatistics();
  v8 = *(v7 + 52);
  v9 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v9);
  (*(v10 + 32))(&a4[v8], a2);
  return sub_23B3CA20C(a3, &a4[*(v7 + 56)]);
}

uint64_t DailyWeatherStatistics.days.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DailyWeatherStatistics.baselineStartDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t DailyWeatherStatistics.baselineStartDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

BOOL static DailyWeatherStatistics.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v8 = (sub_23B50D324() & 1) != 0 && (v6 = type metadata accessor for DailyWeatherStatistics(), v7 = *(v6 + 52), (sub_23B50ACD4() & 1) != 0) && static WeatherMetadata.== infix(_:_:)(a1 + *(v6 + 56), a2 + *(v6 + 56));
  return v8;
}

uint64_t sub_23B47CA7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B536030 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B47CB94(char a1)
{
  if (!a1)
  {
    return 1937334628;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x617461646174656DLL;
}

uint64_t sub_23B47CBE8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B47CB94(*v1);
}

uint64_t sub_23B47CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_23B47CA7C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B47CC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B47CC80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DailyWeatherStatistics.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v26 = *(a2 + 16);
  v27 = v5;
  v25 = a2;
  v30 = v26;
  v31 = v5;
  type metadata accessor for DailyWeatherStatistics.CodingKeys();
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v30 = *v3;
  v32 = 0;
  sub_23B50D304();
  v29 = v27;
  swift_getWitnessTable();
  v15 = v28;
  sub_23B50D7F4();
  if (!v15)
  {
    v16 = v25;
    v17 = *(v25 + 52);
    LOBYTE(v30) = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_4_22();
    sub_23B478FAC(v18, v19);
    OUTLINED_FUNCTION_6_15();
    v20 = *(v16 + 56);
    LOBYTE(v30) = 2;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_2_29();
    sub_23B478FAC(v21, v22);
    OUTLINED_FUNCTION_6_15();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t DailyWeatherStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v55 = type metadata accessor for WeatherMetadata();
  v11 = OUTLINED_FUNCTION_6(v55);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v54 = v14;
  v15 = sub_23B50AD24();
  v16 = OUTLINED_FUNCTION_5(v15);
  v58 = v17;
  v59 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v57 = v20;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  type metadata accessor for DailyWeatherStatistics.CodingKeys();
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  v62 = sub_23B50D754();
  v21 = OUTLINED_FUNCTION_5(v62);
  v56 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v50 - v25;
  v60 = a2;
  v61 = a3;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v27 = type metadata accessor for DailyWeatherStatistics();
  v28 = OUTLINED_FUNCTION_5(v27);
  v52 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v50 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v63 = v26;
  v35 = v64;
  sub_23B50D964();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v56;
  v36 = v57;
  v51 = v33;
  v64 = a1;
  v39 = v58;
  v38 = v59;
  sub_23B50D304();
  v70 = 0;
  v65 = v61;
  swift_getWitnessTable();
  sub_23B50D734();
  v61 = v66;
  *v51 = v66;
  LOBYTE(v66) = 1;
  OUTLINED_FUNCTION_4_22();
  sub_23B478FAC(v40, v41);
  v42 = v36;
  sub_23B50D734();
  v60 = v27;
  v43 = v51;
  (*(v39 + 32))(v51 + *(v27 + 52), v42, v38);
  LOBYTE(v66) = 2;
  OUTLINED_FUNCTION_2_29();
  sub_23B478FAC(v44, v45);
  v46 = v54;
  sub_23B50D734();
  (*(v37 + 8))(v63, v62);
  v47 = v60;
  sub_23B3CA20C(v46, v43 + *(v60 + 56));
  v48 = v52;
  (*(v52 + 16))(v53, v43, v47);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v48 + 8))(v43, v47);
}

BOOL sub_23B47D420(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static DailyWeatherStatistics.== infix(_:_:)(a1, a2);
}

uint64_t sub_23B47D530(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B47D5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherStatistics.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B47D5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherStatistics.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B47D624(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B47D698(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B47D698(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  DailyWeatherStatistics.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B47D754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B47D7C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B47D848(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_39();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B47D8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = DailyWeatherStatistics.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B47D99C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B47D9F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B47DA6C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t WeatherAQIScaleCacheManager.__allocating_init(store:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WeatherAQIScaleCacheManager.init(store:)(a1, a2);
  return v4;
}

uint64_t sub_23B47DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23B50C3C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321C0, &qword_23B510190);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  result = sub_23B50C364();
  if (v18)
  {

    result = sub_23B50C374();
    if (v19)
    {

      result = sub_23B50C3B4();
      if (v20)
      {

        sub_23B50C3A4();
        v21 = sub_23B50C9B4();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v21);
        result = sub_23B398890(v16, &qword_27E1321C0, &qword_23B510190);
        if (EnumTagSinglePayload != 1)
        {
          os_unfair_lock_lock((v4 + 16));
          v23 = sub_23B3A461C((v4 + 24));
          v24 = *(v4 + 24);

          (*(v9 + 16))(v12, a1, v8);

          swift_isUniquelyReferenced_nonNull_native();
          v27 = v23;
          sub_23B47E760(v12, a2, a3);

          v25 = v27;
          *(v4 + 24) = v27;

          os_unfair_lock_unlock((v4 + 16));
          sub_23B47DE20(v25);
        }
      }
    }
  }

  return result;
}

void sub_23B47DE20(uint64_t a1)
{
  v59 = a1;
  v65 = sub_23B50C3C4();
  v1 = *(v65 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD0, &qword_23B519F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v54 - v9);
  v62 = sub_23B3A528C();
  if (v62)
  {
    v11 = *(v59 + 64);
    v61 = v59 + 64;
    v12 = 1 << *(v59 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    v55 = (v12 + 63) >> 6;
    v57 = v1 + 16;
    v58 = v1;
    v63 = (v1 + 32);

    v15 = 0;
    *&v16 = 136446210;
    v54 = v16;
    v64 = v10;
    v60 = v8;
    while (v14)
    {
      v67 = 0;
      v17 = v15;
LABEL_11:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = v58;
      v21 = (*(v59 + 48) + 16 * v19);
      v23 = *v21;
      v22 = v21[1];
      v24 = v65;
      v25 = v66;
      (*(v58 + 16))(v66, *(v59 + 56) + *(v58 + 72) * v19, v65);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD8, &qword_23B519F78);
      v27 = *(v26 + 48);
      *v8 = v23;
      v8[1] = v22;
      (*(v20 + 32))(v8 + v27, v25, v24);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);

      v10 = v64;
LABEL_12:
      sub_23B47E8D4(v8, v10);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD8, &qword_23B519F78);
      if (__swift_getEnumTagSinglePayload(v10, 1, v28) == 1)
      {

        return;
      }

      v29 = *v10;
      v30 = v10[1];
      v31 = v10 + *(v28 + 48);
      v32 = v66;
      (*v63)(v66, v31, v65);
      v33 = sub_23B44C840(v29, v30, v32);
      v35 = v34;
      v37 = v36;
      v38 = *(v62 + 16);
      sub_23B50CF04();
      v69 = v33;
      v70 = v35;
      v71 = v37;
      v39 = v67;
      sub_23B50CED4();
      if (v39)
      {

        if (qword_280B43440 != -1)
        {
          swift_once();
        }

        v40 = sub_23B50CDF4();
        __swift_project_value_buffer(v40, qword_280B4E9D8);

        v41 = sub_23B50CDD4();
        v42 = sub_23B50D4B4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v67 = v39;
          v56 = v42;
          v44 = v43;
          v45 = swift_slowAlloc();
          v68 = v45;
          *v44 = v54;
          v69 = v33;
          v70 = v35;
          v71 = v37;

          v46 = sub_23B50D184();
          v48 = sub_23B391F1C(v46, v47, &v68);

          *(v44 + 4) = v48;
          _os_log_impl(&dword_23B38D000, v41, v56, "Failed to save AQI scale to the store, error=%{public}s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x23EE9E260](v45, -1, -1);
          MEMORY[0x23EE9E260](v44, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v8 = v60;
      v10 = v64;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v55)
      {
        v67 = 0;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD8, &qword_23B519F78);
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v49);
        v14 = 0;
        goto LABEL_12;
      }

      v14 = *(v61 + 8 * v17);
      ++v15;
      if (v14)
      {
        v67 = 0;
        v15 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_280B43440 != -1)
  {
LABEL_31:
    swift_once();
  }

  v50 = sub_23B50CDF4();
  __swift_project_value_buffer(v50, qword_280B4E9D8);
  v67 = sub_23B50CDD4();
  v51 = sub_23B50D4B4();
  if (os_log_type_enabled(v67, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_23B38D000, v67, v51, "no store AQI scale database is setup - aborting caching", v52, 2u);
    MEMORY[0x23EE9E260](v52, -1, -1);
  }

  v53 = v67;
}

uint64_t sub_23B47E484()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = sub_23B3A461C((v0 + 24));
  v3 = *(v1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133AE8, &qword_23B519F88);
  sub_23B50D0B4();
  *(v1 + 24) = v2;

  os_unfair_lock_unlock((v1 + 16));
  sub_23B47DE20(v2);
}

Swift::Void __swiftcall WeatherAQIScaleCacheManager.reloadStore()()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  *(v0 + 24) = sub_23B3A4A40();

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t WeatherAQIScaleCacheManager.deinit()
{
  sub_23B398890(v0 + 24, &qword_27E133AC0, &qword_23B519F10);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t WeatherAQIScaleCacheManager.__deallocating_deinit()
{
  WeatherAQIScaleCacheManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23B47E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23B3A7084(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133088, &qword_23B519FA0);
  if ((sub_23B50D624() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_23B3A7084(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_23B50D864();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ReverseGeocodeResult() - 8) + 72) * v11;

    return sub_23B47EA8C(a1, v18);
  }

  else
  {
    sub_23B47E944(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_23B47E760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23B3A7084(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AE0, &qword_23B519F80);
  if ((sub_23B50D624() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_23B3A7084(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_23B50D864();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = sub_23B50C3C4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_23B47E9DC(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_23B47E8D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD0, &qword_23B519F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B47E944(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ReverseGeocodeResult();
  result = sub_23B437AC8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23B47E9DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23B50C3C4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23B47EA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodeResult();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Percentiles.init(p10:p50:p90:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6(v8);
  v13 = *(v9 + 32);
  v13(a4, a1, v8);
  v10 = type metadata accessor for Percentiles();
  v13(a4 + *(v10 + 28), a2, v8);
  v11 = a4 + *(v10 + 32);

  return (v13)(v11, a3, v8);
}

uint64_t Percentiles.p10.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_23B50A9E4();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t Percentiles.p10.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_23B50A9E4();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 40);

  return v8(v2, a1, v6);
}

uint64_t Percentiles.p50.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = sub_23B50A9E4();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t Percentiles.p50.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(a2 + 16);
  v6 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 40);

  return v8(v2 + v4, a1);
}

uint64_t Percentiles.p90.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = sub_23B50A9E4();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t Percentiles.p90.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  v6 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 40);

  return v8(v2 + v4, a1);
}

uint64_t static Percentiles.== infix(_:_:)()
{
  sub_23B50A9E4();
  swift_getWitnessTable();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for Percentiles();
  v1 = *(v0 + 28);
  if ((OUTLINED_FUNCTION_4_2() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_23B47EF68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3158384 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 3159408 && a2 == 0xE300000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 3160432 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B47F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_23B47EF68(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B47F0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B47F108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Percentiles.encode(to:)(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *(a2 + 16);
  type metadata accessor for Percentiles.CodingKeys();
  OUTLINED_FUNCTION_2_30();
  swift_getWitnessTable();
  v4 = sub_23B50D804();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  v23 = 0;
  sub_23B50A9E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_24();
  v13 = v20;
  sub_23B50D7F4();
  if (!v13)
  {
    v14 = v19;
    v15 = *(v19 + 28);
    v22 = 1;
    OUTLINED_FUNCTION_4_24();
    sub_23B50D7F4();
    v16 = *(v14 + 32);
    v21 = 2;
    OUTLINED_FUNCTION_4_24();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t Percentiles.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v50 = sub_23B50A9E4();
  v3 = OUTLINED_FUNCTION_5(v50);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v49 = &v42 - v11;
  type metadata accessor for Percentiles.CodingKeys();
  OUTLINED_FUNCTION_2_30();
  swift_getWitnessTable();
  v12 = sub_23B50D754();
  v13 = OUTLINED_FUNCTION_5(v12);
  v51 = v14;
  v52 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  v19 = type metadata accessor for Percentiles();
  v20 = OUTLINED_FUNCTION_5(v19);
  v45 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = v18;
  v27 = v55;
  sub_23B50D964();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v25;
  v55 = a1;
  v28 = v53;
  v58 = 0;
  v29 = v50;
  WitnessTable = swift_getWitnessTable();
  v31 = v49;
  sub_23B50D734();
  v43 = *(v28 + 32);
  v43(v44, v31, v29);
  v57 = 1;
  v32 = v48;
  OUTLINED_FUNCTION_6_16();
  v49 = WitnessTable;
  sub_23B50D734();
  v42 = v19;
  v33 = *(v19 + 28);
  v34 = v43;
  v43(&v44[v33], v32, v29);
  v56 = 2;
  v35 = v47;
  OUTLINED_FUNCTION_6_16();
  sub_23B50D734();
  v36 = OUTLINED_FUNCTION_3_34();
  v37(v36);
  v38 = v42;
  v39 = v44;
  v34(&v44[*(v42 + 32)], v35, v29);
  v40 = v45;
  (*(v45 + 16))(v46, v39, v38);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v40 + 8))(v39, v38);
}

_BYTE *sub_23B47F818(_BYTE *result, unsigned int a2, unsigned int a3)
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

WeatherKit::WeatherServiceHourlyRelativeRange::RelativeTo_optional __swiftcall WeatherServiceHourlyRelativeRange.RelativeTo.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherServiceHourlyRelativeRange.RelativeTo.rawValue.getter()
{
  if (*v0)
  {
    return 7827310;
  }

  else
  {
    return 7954788;
  }
}

unint64_t sub_23B47F9E0()
{
  result = qword_27E133B70;
  if (!qword_27E133B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133B70);
  }

  return result;
}

uint64_t sub_23B47FA58@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherServiceHourlyRelativeRange.RelativeTo.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B47FC20()
{
  result = qword_27E133B78;
  if (!qword_27E133B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133B78);
  }

  return result;
}

uint64_t Swell.init(height:direction:period:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(a3, a1);
  v10 = type metadata accessor for Swell();
  v11 = *(v10 + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6(v12);
  result = (*(v13 + 32))(a3 + v11, a2);
  *(a3 + *(v10 + 24)) = a4;
  return result;
}

uint64_t Swell.height.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Swell.height.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t Swell.direction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Swell() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Swell.direction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Swell() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Swell.period.setter(double a1)
{
  result = type metadata accessor for Swell();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_23B480024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B480134(char a1)
{
  if (!a1)
  {
    return 0x746867696568;
  }

  if (a1 == 1)
  {
    return 0x6F69746365726964;
  }

  return 0x646F69726570;
}

uint64_t sub_23B480190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B480024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4801B8(uint64_t a1)
{
  v2 = sub_23B480444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4801F4(uint64_t a1)
{
  v2 = sub_23B480444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Swell.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133B80, &qword_23B51A2C8);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B480444();
  sub_23B50D974();
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2_31();
  sub_23B3F1C50(v14, v15, &qword_23B50EFB0);
  sub_23B50D7F4();
  if (!v2)
  {
    v22 = type metadata accessor for Swell();
    v16 = *(v22 + 20);
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    OUTLINED_FUNCTION_2_31();
    sub_23B3F1C50(v17, v18, &qword_23B510118);
    sub_23B50D7F4();
    v19 = *(v3 + *(v22 + 24));
    v23 = 2;
    sub_23B50D7C4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B480444()
{
  result = qword_27E133B88;
  if (!qword_27E133B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133B88);
  }

  return result;
}

uint64_t Swell.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_5(v42);
  v39 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v10);
  v40 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v44 = &v37 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133B90, &qword_23B51A2D0);
  OUTLINED_FUNCTION_5(v43);
  v41 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v20 = type metadata accessor for Swell();
  v21 = OUTLINED_FUNCTION_6(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v26 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_23B480444();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v37 = v20;
  v28 = v42;
  v48 = 0;
  OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
  sub_23B50D734();
  v29 = *(v40 + 32);
  v30 = v44;
  v44 = v10;
  v29(v25, v30, v10);
  v47 = 1;
  OUTLINED_FUNCTION_3_8(&qword_27E133B98, &qword_27E132170, &qword_23B510118);
  sub_23B50D734();
  (*(v39 + 32))(&v25[*(v37 + 20)], v9, v28);
  v46 = 2;
  sub_23B50D704();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_4_25();
  v34(v33);
  v35 = v38;
  *&v25[*(v37 + 24)] = v32;
  sub_23B4808CC(v25, v35);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_23B480930(v25);
}

uint64_t sub_23B4808CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Swell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B480930(uint64_t a1)
{
  v2 = type metadata accessor for Swell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Swell.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v4, v5, &qword_23B50EFB0);
  if (sub_23B50D134() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118), v6 = type metadata accessor for Swell(), v7 = *(v6 + 20), OUTLINED_FUNCTION_3_35(), sub_23B3F1C50(v8, v9, &qword_23B510118), (sub_23B50D134()))
  {
    return *(a1 + *(v6 + 24)) == *(a2 + *(v6 + 24));
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for Swell.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B480BD0()
{
  result = qword_27E133BA0;
  if (!qword_27E133BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BA0);
  }

  return result;
}

unint64_t sub_23B480C28()
{
  result = qword_27E133BA8;
  if (!qword_27E133BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BA8);
  }

  return result;
}

unint64_t sub_23B480C80()
{
  result = qword_27E133BB0;
  if (!qword_27E133BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BB0);
  }

  return result;
}

uint64_t DayPrecipitationStatistics.init(day:averagePrecipitationProbability:averagePrecipitationAmount:averageSnowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  v8 = type metadata accessor for DayPrecipitationStatistics();
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v10);
  v14 = *(v11 + 32);
  v14(a4 + v9, a2, v10);
  v12 = a4 + *(v8 + 28);

  return (v14)(v12, a3, v10);
}

uint64_t DayPrecipitationStatistics.averagePrecipitationAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationStatistics() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DayPrecipitationStatistics.averagePrecipitationAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_26() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t DayPrecipitationStatistics.averageSnowfallAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationStatistics() + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DayPrecipitationStatistics.averageSnowfallAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_26() + 28);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t static DayPrecipitationStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v2 = type metadata accessor for DayPrecipitationStatistics();
  v3 = *(v2 + 24);
  sub_23B3E38E8(&qword_280B42BC0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 28);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B481150(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001FLL && 0x800000023B528820 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000023B528840 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000023B528860 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

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

unint64_t sub_23B4812B8(char a1)
{
  result = 7954788;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B481354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B481150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48137C(uint64_t a1)
{
  v2 = sub_23B4815D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4813B8(uint64_t a1)
{
  v2 = sub_23B4815D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayPrecipitationStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133BB8, &qword_23B51A488);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4815D8();
  sub_23B50D974();
  v14 = *v3;
  v24 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v15 = v3[1];
    v23 = 1;
    sub_23B50D7C4();
    v16 = type metadata accessor for DayPrecipitationStatistics();
    v17 = *(v16 + 24);
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0);
    OUTLINED_FUNCTION_2_6();
    v18 = *(v16 + 28);
    v21 = 3;
    OUTLINED_FUNCTION_2_6();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B4815D8()
{
  result = qword_27E133BC0;
  if (!qword_27E133BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BC0);
  }

  return result;
}

uint64_t DayPrecipitationStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_5(v44);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133BC8, &qword_23B51A490);
  v13 = OUTLINED_FUNCTION_5(v45);
  v43 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  v19 = type metadata accessor for DayPrecipitationStatistics();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[3];
  v25 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23B4815D8();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v40 = v9;
  v41 = v19;
  v28 = v43;
  v27 = v44;
  v29 = v45;
  v30 = v46;
  v51 = 0;
  OUTLINED_FUNCTION_3_1();
  *v24 = sub_23B50D724();
  v50 = 1;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D704();
  v39 = v24;
  v24[1] = v31;
  v49 = 2;
  sub_23B3E38E8(&qword_27E131E60);
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  v32 = *(v41 + 24);
  v37 = *(v30 + 32);
  v38 = v32;
  v37(v39 + v32, v12, v27);
  v48 = 3;
  v33 = v40;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  (*(v28 + 8))(v18, v29);
  v34 = v39;
  v37(v39 + *(v41 + 28), v33, v27);
  sub_23B4819D0(v34, v42);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_23B481A34(v34);
}

uint64_t sub_23B4819D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPrecipitationStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B481A34(uint64_t a1)
{
  v2 = type metadata accessor for DayPrecipitationStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DayPrecipitationStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B481BCC()
{
  result = qword_27E133BD0;
  if (!qword_27E133BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BD0);
  }

  return result;
}

unint64_t sub_23B481C24()
{
  result = qword_27E133BD8;
  if (!qword_27E133BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BD8);
  }

  return result;
}

unint64_t sub_23B481C7C()
{
  result = qword_27E133BE0;
  if (!qword_27E133BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BE0);
  }

  return result;
}

uint64_t sub_23B481CD0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v260 = a5;
  v259 = a4;
  v255 = a1;
  v274 = *v5;
  v275 = v5;
  v249 = sub_23B50CB54();
  v8 = OUTLINED_FUNCTION_5(v249);
  v248 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  v271 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_52();
  v270 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52();
  v269 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v49 = OUTLINED_FUNCTION_3(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v53);
  v245 = sub_23B50B7E4();
  v54 = OUTLINED_FUNCTION_5(v245);
  v244[5] = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v58);
  v59 = sub_23B50B604();
  v60 = OUTLINED_FUNCTION_3(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v68);
  v69 = sub_23B50B7B4();
  v272 = OUTLINED_FUNCTION_5(v69);
  v273 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_55(v73);
  v252 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_76();
  v281 = v76;
  v282 = sub_23B50AD24();
  v77 = OUTLINED_FUNCTION_5(v282);
  v277 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_55(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_76();
  v280 = v83;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_76();
  v279 = v85;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_76();
  v276 = v89;
  v254 = v90;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_76();
  v278 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v94 = OUTLINED_FUNCTION_3(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v97);
  v99 = v244 - v98;
  v100 = sub_23B50AEF4();
  v101 = OUTLINED_FUNCTION_5(v100);
  v103 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v101);
  v107 = v244 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v110 = v244 - v109;
  v246 = *a2;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v111 = *(Options + 20);
  v261 = a3;
  v112 = a3 + v111;
  v113 = v100;
  sub_23B3CE510(v112, v99, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_51(v99, 1, v100);
  if (v114)
  {
    v115 = v103;
    sub_23B50AEE4();
    OUTLINED_FUNCTION_51(v99, 1, v100);
    if (!v114)
    {
      sub_23B398890(v99, &qword_27E131F68, &unk_23B50F2A0);
    }
  }

  else
  {
    v115 = v103;
    (*(v103 + 32))(v110, v99, v100);
  }

  sub_23B50B9D4();
  v116 = v262;
  sub_23B50B994();
  v117 = v276;
  v256 = v110;
  sub_23B50ABA4();
  v118 = v277 + 8;
  v119 = *(v277 + 8);
  v120 = v282;
  v119(v116, v282);
  sub_23B50AEE4();
  sub_23B50ABA4();
  v122 = *(v115 + 8);
  v121 = v115 + 8;
  v258 = v113;
  v251 = v122;
  v122(v107, v113);
  v267 = v119;
  v265 = v118;
  v119(v117, v120);
  sub_23B50AC94();
  v244[4] = sub_23B50AD84();
  v244[3] = v123;
  v124 = v261;
  sub_23B3CE510(v261 + v111, v266, &qword_27E131F68, &unk_23B50F2A0);
  v125 = v124[1];
  v244[1] = *v124;
  v126 = Options;
  v127 = v124 + *(Options + 24);
  if ((*(v127 + 4) & 0xFF00) == 0x300)
  {
    sub_23B50B834();
    v128 = OUTLINED_FUNCTION_4_27(&v293);
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  }

  else
  {
    v132 = *v127;

    OUTLINED_FUNCTION_144(&v293);
    sub_23B50B824();
    sub_23B50B834();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
  }

  v137 = v264;
  v292 = *(v124 + v126[7]);
  sub_23B3A1C3C();
  v138 = v126[13];
  OUTLINED_FUNCTION_26_13();
  v139 = v282;
  v244[2] = v125;
  if (v114)
  {
    v140 = *MEMORY[0x277D7AC70];
    OUTLINED_FUNCTION_30_7(&v270);
    v151 = v268;
  }

  else
  {
    OUTLINED_FUNCTION_43_6();
    v291 = v141;
    v290 = v142 & 1;
    v143 = vdupq_n_s64(v142);
    v283 = v144;
    v284 = v141;
    v285 = v145;
    v286 = v142 & 1;
    v287 = OUTLINED_FUNCTION_36_5(vshlq_u64(v143, xmmword_23B5192A0), vshlq_u64(v143, xmmword_23B519290)).u32[0];
    v288 = v146;
    v289 = v147;
    v148 = v268;
    sub_23B3A205C();
    v149 = *MEMORY[0x277D7AC68];
    OUTLINED_FUNCTION_30_7(&v270);
    v151 = v148;
  }

  v150(v151);
  v152 = *(v124 + v126[8]);
  v153 = sub_23B50AA24();
  v154 = OUTLINED_FUNCTION_4_27(&v294);
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
  v157 = (v277 + 16);
  v158 = *(v277 + 16);
  v158(v276, v278, v139);
  v264 = v157;
  v158(v262, v279, v139);
  v159 = Options;

  OUTLINED_FUNCTION_144(&v295);
  sub_23B50AA04();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_40_4(v160, v161, v162, v153);
  sub_23B50B894();
  v163 = OUTLINED_FUNCTION_4_27(&v296);
  OUTLINED_FUNCTION_40_4(v163, v164, v165, v166);
  sub_23B50B864();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4(v167, v168, v169, v170);
  sub_23B50B874();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4(v171, v172, v173, v174);
  sub_23B50B8A4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  sub_23B3CE510(v124 + v159[9], v137, &qword_27E1338B0, &unk_23B519390);
  v179 = type metadata accessor for WeatherNetworkActivity();
  v180 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_51(v180, v181, v179);
  if (v114)
  {
    sub_23B398890(v137, &qword_27E1338B0, &unk_23B519390);
    v184 = 1;
    v182 = v247;
  }

  else
  {
    *v137;
    v182 = v137[1];
    sub_23B3CE510(&v137[*(v179 + 28)], v244[0], &qword_27E1321E8, &qword_23B5101C0);
    OUTLINED_FUNCTION_144(&v274);
    v124 = v261;
    sub_23B50C824();
    OUTLINED_FUNCTION_17_13();
    sub_23B48712C(v137, v183);
    v184 = 0;
  }

  v185 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v182, v184, 1, v185);
  v186 = v182;
  v187 = v124;
  v188 = *(v124 + v159[10]);
  sub_23B50AD94();
  v189 = *(v187 + v159[15]);
  v190 = *MEMORY[0x277D7B100];
  OUTLINED_FUNCTION_30_7(&v275);
  v191(v250);
  sub_23B50B784();
  v283 = v246;
  v284 = 0;
  v192 = v255;
  v271 = sub_23B482F30(v255, &v283);
  v193 = v280;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v194 = sub_23B50CDF4();
  __swift_project_value_buffer(v194, qword_280B4E9D8);
  v195 = OUTLINED_FUNCTION_37_5(&v273);
  v196 = v282;
  v197 = v158;
  v158(v195, v193, v282);
  v198 = v192;
  v199 = sub_23B50CDD4();
  v200 = sub_23B50D4C4();

  v201 = os_log_type_enabled(v199, v200);
  v257 = v121;
  v245 = v158;
  if (v201)
  {
    v202 = OUTLINED_FUNCTION_42_0();
    v283 = swift_slowAlloc();
    *v202 = 141558531;
    *(v202 + 4) = 1752392040;
    *(v202 + 12) = 2081;
    v292 = v198;
    sub_23B3A3BC8();
    v203 = v198;
    v204 = sub_23B50D1A4();
    v206 = sub_23B391F1C(v204, v205, &v283);

    *(v202 + 14) = v206;
    *(v202 + 22) = 2082;
    v207 = v276;
    v197(v276, v186, v196);
    v208 = sub_23B50D1A4();
    v210 = v209;
    v211 = OUTLINED_FUNCTION_32_6();
    v212(v211);
    v213 = sub_23B391F1C(v208, v210, &v283);

    *(v202 + 24) = v213;
    OUTLINED_FUNCTION_47_3(&dword_23B38D000, v214, v215, "About to fetch nano weather data; location=%{private,mask.hash}s, startTime=%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_16_1();
  }

  else
  {

    v217 = OUTLINED_FUNCTION_32_6();
    v216 = v218(v217);
    v207 = v276;
  }

  MEMORY[0x28223BE20](v216);
  v219 = v275;
  v220 = v281;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133950, &unk_23B519500);
  sub_23B50B0C4();

  v221 = v272;
  v222 = v273;
  v223 = v253;
  (*(v273 + 16))(v253, v220, v272);
  v224 = (*(v222 + 80) + 24) & ~*(v222 + 80);
  v225 = swift_allocObject();
  *(v225 + 16) = v198;
  (*(v222 + 32))(v225 + v224, v223, v221);
  v226 = v198;
  v227 = sub_23B50B034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v271 = sub_23B50B064();

  v228 = v282;
  v245(v207, v280, v282);
  v229 = v277;
  v230 = (*(v277 + 80) + 16) & ~*(v277 + 80);
  v231 = (v254 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
  v232 = (v231 + 15) & 0xFFFFFFFFFFFFFFF8;
  v233 = swift_allocObject();
  (*(v229 + 32))(v233 + v230, v207, v228);
  *(v233 + v231) = v226;
  *(v233 + v232) = v219;
  v234 = (v233 + ((v232 + 15) & 0xFFFFFFFFFFFFFFF8));
  v235 = v259;
  v236 = v260;
  *v234 = v259;
  v234[1] = v236;
  v237 = v226;

  v238 = sub_23B50B034();
  sub_23B50B074();

  v239 = swift_allocObject();
  v239[2] = v237;
  v239[3] = v235;
  v239[4] = v236;
  v240 = v237;

  v241 = sub_23B50B034();
  sub_23B50B084();

  v242 = v267;
  v267(v280, v228);
  v242(v279, v228);
  v242(v278, v228);
  v251(v256, v258);
  return (*(v273 + 8))(v281, v272);
}

void *sub_23B482F30(void *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v3 = sub_23B50CDF4();
    __swift_project_value_buffer(v3, qword_280B4E9D8);
    v4 = a1;
    v5 = sub_23B50CDD4();
    v6 = sub_23B50D4C4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_23B3A3BC8();
      v9 = v4;
      v10 = sub_23B50D1A4();
      v12 = sub_23B391F1C(v10, v11, &v14);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_23B38D000, v5, v6, "Data sets were empty, falling back to aggregate fetch; location=%{private,mask.hash}s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x23EE9E260](v8, -1, -1);
      MEMORY[0x23EE9E260](v7, -1, -1);
    }

    return &unk_284E0DC40;
  }

  else
  {
    v14 = *a2;
    return sub_23B486A94(&v14);
  }
}

uint64_t sub_23B4830CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a3 coordinate];
  return sub_23B50B734();
}

uint64_t sub_23B483150(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v148 = a7;
  v149 = a6;
  v175 = a5;
  v179 = a1;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  v10 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v147 = &v145 - v11;
  v152 = type metadata accessor for WatchWeather();
  v12 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v156 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B50B654();
  v174 = *(v14 - 8);
  v15 = *(v174 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v173 = (&v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v151 = &v145 - v22;
  MEMORY[0x28223BE20](v23);
  v161 = &v145 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v150 = &v145 - v30;
  MEMORY[0x28223BE20](v31);
  v162 = &v145 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v167 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v155 = &v145 - v37;
  MEMORY[0x28223BE20](v38);
  v163 = &v145 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v172 = &v145 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v154 = &v145 - v44;
  MEMORY[0x28223BE20](v45);
  v165 = &v145 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v145 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v153 = &v145 - v52;
  MEMORY[0x28223BE20](v53);
  v168 = &v145 - v54;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v55 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v176 = (&v145 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v178 = &v145 - v59;
  v60 = sub_23B50AD24();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  v64 = &v145 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50AD14();
  sub_23B50ABD4();
  v66 = v65;
  (*(v61 + 8))(v64, v60);
  if (qword_280B43440 != -1)
  {
LABEL_46:
    swift_once();
  }

  v67 = sub_23B50CDF4();
  v68 = __swift_project_value_buffer(v67, qword_280B4E9D8);
  v69 = a4;
  v157 = v68;
  v70 = sub_23B50CDD4();
  v71 = sub_23B50D4C4();

  v72 = os_log_type_enabled(v70, v71);
  v158 = v20;
  v164 = v28;
  v170 = v69;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v183 = v74;
    *v73 = 141558531;
    *(v73 + 4) = 1752392040;
    *(v73 + 12) = 2081;
    *&v181 = v170;
    sub_23B3A3BC8();
    v75 = v170;
    v76 = sub_23B50D1A4();
    v78 = sub_23B391F1C(v76, v77, &v183);

    *(v73 + 14) = v78;
    *(v73 + 22) = 2050;
    *(v73 + 24) = v66;
    _os_log_impl(&dword_23B38D000, v70, v71, "Got response for fetch of nano weather data + corresponding AQI scale; location=%{private,mask.hash}s, duration=%{public}f", v73, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x23EE9E260](v74, -1, -1);
    v79 = v73;
    v69 = v170;
    MEMORY[0x23EE9E260](v79, -1, -1);
  }

  v28 = v167;
  v80 = v176;
  sub_23B3CE510(v179, v176, &qword_27E132D70, &qword_23B515160);
  v81 = *v80;
  sub_23B3CE5BC(v80 + *(v177 + 48), v178, &qword_27E131EA8, &qword_23B5194F0);
  v177 = *(v81 + 16);
  if (v177)
  {
    v176 = v81;
    a4 = type metadata accessor for CurrentWeather();
    __swift_storeEnumTagSinglePayload(v168, 1, 1, a4);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    __swift_storeEnumTagSinglePayload(v165, 1, 1, v171);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    __swift_storeEnumTagSinglePayload(v163, 1, 1, v169);
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v166);
    v160 = type metadata accessor for AirQuality();
    __swift_storeEnumTagSinglePayload(v161, 1, 1, v160);
    v82 = v176;
    v159 = 0;
    v83 = 0;
    v20 = &unk_23B519370;
    while (1)
    {
      if (v177 == v83)
      {

        sub_23B3CE510(v168, v153, &qword_27E131C98, &unk_23B50ED60);
        sub_23B3CE510(v165, v154, &qword_27E131C90, &unk_23B514EC0);
        sub_23B3CE510(v163, v155, &qword_27E131C88, &unk_23B50ED50);
        v123 = v150;
        sub_23B3CE510(v162, v150, &qword_27E131C80, &qword_23B50ED48);
        v124 = v151;
        sub_23B3CE510(v161, v151, &qword_27E131C78, &qword_23B50ED40);
        v125 = v156;
        __swift_storeEnumTagSinglePayload(v156, 1, 1, a4);
        v126 = v152;
        v127 = *(v152 + 20);
        __swift_storeEnumTagSinglePayload(v125 + v127, 1, 1, v171);
        v128 = v126[6];
        __swift_storeEnumTagSinglePayload(v125 + v128, 1, 1, v169);
        v129 = v126[7];
        __swift_storeEnumTagSinglePayload(v125 + v129, 1, 1, v166);
        v130 = v126[8];
        __swift_storeEnumTagSinglePayload(v125 + v130, 1, 1, v160);
        v131 = v126[9];
        sub_23B3C2510(v153, v125, &qword_27E131C98, &unk_23B50ED60);
        sub_23B3C2510(v154, v125 + v127, &qword_27E131C90, &unk_23B514EC0);
        sub_23B3C2510(v155, v125 + v128, &qword_27E131C88, &unk_23B50ED50);
        sub_23B3C2510(v123, v125 + v129, &qword_27E131C80, &qword_23B50ED48);
        sub_23B3C2510(v124, v125 + v130, &qword_27E131C78, &qword_23B50ED40);
        *(v125 + v131) = v159;
        v132 = v170;
        v133 = sub_23B50CDD4();
        v134 = sub_23B50D4C4();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *&v183 = v136;
          *v135 = 141558275;
          *(v135 + 4) = 1752392040;
          *(v135 + 12) = 2081;
          *&v181 = v132;
          sub_23B3A3BC8();
          v137 = v132;
          v138 = sub_23B50D1A4();
          v140 = sub_23B391F1C(v138, v139, &v183);

          *(v135 + 14) = v140;
          _os_log_impl(&dword_23B38D000, v133, v134, "Successfully parsed nano weather data; location=%{private,mask.hash}s", v135, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v136);
          MEMORY[0x23EE9E260](v136, -1, -1);
          MEMORY[0x23EE9E260](v135, -1, -1);
        }

        v141 = v149;
        v142 = v147;
        v143 = v156;
        sub_23B4870D0(v156, v147, type metadata accessor for WatchWeather);
        swift_storeEnumTagMultiPayload();
        v141(v142);
        sub_23B398890(v142, qword_27E133BE8, &unk_23B51A660);
        sub_23B398890(v161, &qword_27E131C78, &qword_23B50ED40);
        sub_23B398890(v162, &qword_27E131C80, &qword_23B50ED48);
        sub_23B398890(v163, &qword_27E131C88, &unk_23B50ED50);
        sub_23B398890(v165, &qword_27E131C90, &unk_23B514EC0);
        sub_23B398890(v168, &qword_27E131C98, &unk_23B50ED60);
        sub_23B398890(v178, &qword_27E131EA8, &qword_23B5194F0);
        return sub_23B48712C(v143, type metadata accessor for WatchWeather);
      }

      if (v83 >= *(v82 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v84 = v20;
      v85 = v173;
      v86 = v82 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
      v87 = *(v174 + 72);
      v179 = v83;
      sub_23B4870D0(v86 + v87 * v83, v173, MEMORY[0x277D7ABF8]);
      sub_23B3AA378(v85, v69, v178, &v183);
      sub_23B48712C(v85, MEMORY[0x277D7ABF8]);
      if (v8)
      {

        sub_23B398890(v161, &qword_27E131C78, &qword_23B50ED40);
        sub_23B398890(v162, &qword_27E131C80, &qword_23B50ED48);
        sub_23B398890(v163, &qword_27E131C88, &unk_23B50ED50);
        sub_23B398890(v165, &qword_27E131C90, &unk_23B514EC0);
        sub_23B398890(v168, &qword_27E131C98, &unk_23B50ED60);
        return sub_23B398890(v178, &qword_27E131EA8, &qword_23B5194F0);
      }

      v20 = v84;
      sub_23B3CE510(&v183, &v181, &qword_27E133080, v84);
      if (*(&v182 + 1))
      {
        v88 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v50, v88 ^ 1u, 1, a4);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, a4);
        v90 = v172;
        if (EnumTagSinglePayload != 1)
        {
          sub_23B398890(&v183, &qword_27E133080, v84);
          v91 = v168;
          sub_23B398890(v168, &qword_27E131C98, &unk_23B50ED60);
          sub_23B486F00(v50, v91, type metadata accessor for CurrentWeather);
          v92 = v91;
          v93 = a4;
LABEL_20:
          __swift_storeEnumTagSinglePayload(v92, 0, 1, v93);
          goto LABEL_21;
        }
      }

      else
      {
        sub_23B398890(&v181, &qword_27E133080, v84);
        __swift_storeEnumTagSinglePayload(v50, 1, 1, a4);
        v90 = v172;
      }

      sub_23B398890(v50, &qword_27E131C98, &unk_23B50ED60);
      sub_23B3CE510(&v183, &v181, &qword_27E133080, v84);
      if (*(&v182 + 1))
      {
        v94 = v69;
        v95 = v171;
        v96 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v90, v96 ^ 1u, 1, v95);
        v97 = v95;
        v69 = v94;
        v8 = 0;
        v20 = v84;
        if (__swift_getEnumTagSinglePayload(v90, 1, v97) != 1)
        {
          sub_23B398890(&v183, &qword_27E133080, v84);
          v98 = v90;
          v99 = v165;
          sub_23B398890(v165, &qword_27E131C90, &unk_23B514EC0);
          v100 = v98;
          v69 = v170;
          sub_23B3CE5BC(v100, v99, &qword_27E131CA0, &qword_23B5101A0);
          v92 = v99;
          v93 = v171;
          goto LABEL_20;
        }
      }

      else
      {
        sub_23B398890(&v181, &qword_27E133080, v84);
        __swift_storeEnumTagSinglePayload(v90, 1, 1, v171);
      }

      sub_23B398890(v90, &qword_27E131C90, &unk_23B514EC0);
      sub_23B3CE510(&v183, &v181, &qword_27E133080, v20);
      if (*(&v182 + 1))
      {
        v101 = v169;
        v102 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v28, v102 ^ 1u, 1, v101);
        if (__swift_getEnumTagSinglePayload(v28, 1, v101) != 1)
        {
          sub_23B398890(&v183, &qword_27E133080, v20);
          v103 = v163;
          sub_23B398890(v163, &qword_27E131C88, &unk_23B50ED50);
          sub_23B3CE5BC(v28, v103, &qword_27E131CA8, &unk_23B50ED70);
          v92 = v103;
          v93 = v169;
          goto LABEL_20;
        }
      }

      else
      {
        sub_23B398890(&v181, &qword_27E133080, v20);
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v169);
      }

      sub_23B398890(v28, &qword_27E131C88, &unk_23B50ED50);
      sub_23B3CE510(&v183, &v181, &qword_27E133080, v20);
      if (*(&v182 + 1))
      {
        v104 = v164;
        v105 = v166;
        v106 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v104, v106 ^ 1u, 1, v105);
        if (__swift_getEnumTagSinglePayload(v104, 1, v105) != 1)
        {
          sub_23B398890(&v183, &qword_27E133080, v20);
          v107 = v162;
          sub_23B398890(v162, &qword_27E131C80, &qword_23B50ED48);
          sub_23B3CE5BC(v104, v107, &qword_27E131CB0, &qword_23B516B60);
          __swift_storeEnumTagSinglePayload(v107, 0, 1, v166);
          v28 = v167;
          v69 = v170;
          goto LABEL_21;
        }
      }

      else
      {
        sub_23B398890(&v181, &qword_27E133080, v20);
        v104 = v164;
        __swift_storeEnumTagSinglePayload(v164, 1, 1, v166);
      }

      sub_23B398890(v104, &qword_27E131C80, &qword_23B50ED48);
      sub_23B3CE510(&v183, &v181, &qword_27E133080, v20);
      if (*(&v182 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
        v108 = swift_dynamicCast();
        v28 = v167;
        v69 = v170;
        if (v108)
        {
          sub_23B398890(&v183, &qword_27E133080, v20);

          v159 = v180;
          goto LABEL_21;
        }
      }

      else
      {
        sub_23B398890(&v181, &qword_27E133080, v20);
        v28 = v167;
        v69 = v170;
      }

      v181 = v183;
      v182 = v184;
      if (!*(&v184 + 1))
      {
        break;
      }

      v109 = v158;
      v110 = v160;
      v111 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v109, v111 ^ 1u, 1, v110);
      if (__swift_getEnumTagSinglePayload(v109, 1, v110) == 1)
      {
        goto LABEL_35;
      }

      v112 = v161;
      sub_23B398890(v161, &qword_27E131C78, &qword_23B50ED40);
      sub_23B486F00(v109, v112, type metadata accessor for AirQuality);
      __swift_storeEnumTagSinglePayload(v112, 0, 1, v160);
LABEL_36:
      v20 = v84;
LABEL_21:
      v83 = v179 + 1;
      v82 = v176;
    }

    sub_23B398890(&v181, &qword_27E133080, v20);
    v109 = v158;
    __swift_storeEnumTagSinglePayload(v158, 1, 1, v160);
LABEL_35:
    sub_23B398890(v109, &qword_27E131C78, &qword_23B50ED40);
    goto LABEL_36;
  }

  v113 = v69;
  v114 = sub_23B50CDD4();
  v115 = sub_23B50D4B4();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v183 = v117;
    *v116 = 141558275;
    *(v116 + 4) = 1752392040;
    *(v116 + 12) = 2081;
    *&v181 = v113;
    sub_23B3A3BC8();
    v118 = v113;
    v119 = sub_23B50D1A4();
    v121 = sub_23B391F1C(v119, v120, &v183);

    *(v116 + 14) = v121;
    _os_log_impl(&dword_23B38D000, v114, v115, "Unexpectedly empty response when fetching nano weather data; location=%{private,mask.hash}s", v116, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x23EE9E260](v117, -1, -1);
    MEMORY[0x23EE9E260](v116, -1, -1);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v122 = 1;
  swift_willThrow();
  return sub_23B398890(v178, &qword_27E131EA8, &qword_23B5194F0);
}

uint64_t sub_23B484778(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - v10);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v12 = sub_23B50CDF4();
  __swift_project_value_buffer(v12, qword_280B4E9D8);
  v13 = a1;
  v14 = a2;
  v15 = sub_23B50CDD4();
  v16 = sub_23B50D4B4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = a4;
    v21 = v20;
    v36 = v14;
    v37 = v20;
    *v18 = 141558787;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_23B3A3BC8();
    v22 = v14;
    v23 = sub_23B50D1A4();
    v25 = sub_23B391F1C(v23, v24, &v37);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2082;
    swift_getErrorValue();
    v26 = sub_23B50D874();
    v28 = sub_23B391F1C(v26, v27, &v37);

    *(v18 + 24) = v28;
    *(v18 + 32) = 2112;
    v29 = a1;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v30;
    *v19 = v30;
    _os_log_impl(&dword_23B38D000, v15, v16, "Encountered an error when fetching nano weather; location=%{private,mask.hash}s,  error=%{public}s %@", v18, 0x2Au);
    sub_23B398890(v19, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v21, -1, -1);
    v31 = v18;
    a3 = v35;
    MEMORY[0x23EE9E260](v31, -1, -1);
  }

  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  v32 = a1;
  a3(v11);
  return sub_23B398890(v11, qword_27E133BE8, &unk_23B51A660);
}

uint64_t sub_23B484A6C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v406 = a1;
  v391 = a4;
  v382 = type metadata accessor for WatchWeather();
  v6 = OUTLINED_FUNCTION_6(v382);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v9);
  v10 = sub_23B50B654();
  v430 = *(v10 - 8);
  v11 = *(v430 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  v433 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  v29 = OUTLINED_FUNCTION_3(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v36 = OUTLINED_FUNCTION_3(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v43 = OUTLINED_FUNCTION_3(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52();
  v431 = v53;
  v404 = sub_23B50CB54();
  v54 = OUTLINED_FUNCTION_5(v404);
  v403 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  v434 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v89);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v95 = OUTLINED_FUNCTION_3(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v99);
  v398 = sub_23B50B7E4();
  v100 = OUTLINED_FUNCTION_5(v398);
  v397 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v104);
  v105 = sub_23B50B604();
  v106 = OUTLINED_FUNCTION_3(v105);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v110);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v114);
  v390 = sub_23B50B7B4();
  v115 = OUTLINED_FUNCTION_5(v390);
  v389 = v116;
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v119);
  v426 = sub_23B50AD24();
  v120 = OUTLINED_FUNCTION_5(v426);
  v432 = v121;
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v131 = OUTLINED_FUNCTION_3(v130);
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v134);
  v136 = &v377 - v135;
  v137 = sub_23B50AEF4();
  v138 = OUTLINED_FUNCTION_5(v137);
  v140 = v139;
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v138);
  v144 = &v377 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = *a2;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v146 = Options[5];
  sub_23B3CE510(a3 + v146, v136, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_51(v136, 1, v137);
  v388 = v137;
  v409 = v140;
  if (v147)
  {
    sub_23B50AEE4();
    OUTLINED_FUNCTION_51(v136, 1, v137);
    if (!v147)
    {
      sub_23B398890(v136, &qword_27E131F68, &unk_23B50F2A0);
    }
  }

  else
  {
    (*(v140 + 32))(v144, v136, v137);
  }

  sub_23B50B9D4();
  v148 = v429;
  sub_23B50B994();
  OUTLINED_FUNCTION_144(&v445);
  sub_23B50ABA4();
  v149 = v432;
  v150 = *(v432 + 8);
  v413 = v432 + 8;
  v412 = v150;
  v150(v148, v426);
  sub_23B50AC94();
  v396 = sub_23B50AD84();
  v395 = v151;
  sub_23B3CE510(a3 + v146, v415, &qword_27E131F68, &unk_23B50F2A0);
  v152 = a3[1];
  v393 = *a3;
  v153 = a3 + Options[6];
  v154 = *(v153 + 4);
  v394 = v152;
  if ((v154 & 0xFF00) == 0x300)
  {
    sub_23B50B834();
    v155 = OUTLINED_FUNCTION_4_27(v439);
    __swift_storeEnumTagSinglePayload(v155, v156, v157, v158);
  }

  else
  {
    v159 = *v153;

    sub_23B50B824();
    sub_23B50B834();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
  }

  v164 = v401;
  *&v437 = *(a3 + Options[7]);
  sub_23B3A1C3C();
  v165 = Options[13];
  OUTLINED_FUNCTION_26_13();
  v387 = v144;
  if (v147)
  {
    v166 = *MEMORY[0x277D7AC70];
    OUTLINED_FUNCTION_30_7(v427);
    v177 = v418;
  }

  else
  {
    OUTLINED_FUNCTION_43_6();
    LOBYTE(v436) = v167;
    v443[0] = v168 & 1;
    v169 = vdupq_n_s64(v168);
    *&v441 = v170;
    BYTE8(v441) = v167;
    *&v442 = v171;
    BYTE8(v442) = v168 & 1;
    *(&v442 + 9) = OUTLINED_FUNCTION_36_5(vshlq_u64(v169, xmmword_23B5192A0), vshlq_u64(v169, xmmword_23B519290)).u32[0];
    BYTE13(v442) = v172;
    BYTE14(v442) = v173;
    v174 = v418;
    sub_23B3A205C();
    v175 = *MEMORY[0x277D7AC68];
    OUTLINED_FUNCTION_30_7(v427);
    v177 = v174;
  }

  v176(v177);
  v178 = *(a3 + Options[8]);
  v179 = sub_23B50AA24();
  v180 = OUTLINED_FUNCTION_4_27(&v441 + 8);
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v179);
  v183 = *(v149 + 16);
  v184 = v426;
  v183(v429, v423, v426);
  v432 = v149 + 16;
  v401 = v183;
  v183(v392, v422, v184);

  sub_23B50AA04();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_40_4(v185, v186, v187, v179);
  sub_23B50B894();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4(v188, v189, v190, v191);
  sub_23B50B864();
  v192 = OUTLINED_FUNCTION_4_27(&v447);
  OUTLINED_FUNCTION_40_4(v192, v193, v194, v195);
  sub_23B50B874();
  v196 = OUTLINED_FUNCTION_4_27(&v448);
  OUTLINED_FUNCTION_40_4(v196, v197, v198, v199);
  sub_23B50B8A4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
  sub_23B3CE510(a3 + Options[9], v164, &qword_27E1338B0, &unk_23B519390);
  v204 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_51(v164, 1, v204);
  if (v147)
  {
    sub_23B398890(v164, &qword_27E1338B0, &unk_23B519390);
    v208 = 1;
    v206 = v402;
  }

  else
  {
    *v164;
    v205 = v164[1];
    sub_23B3CE510(&v164[*(v204 + 28)], v385, &qword_27E1321E8, &qword_23B5101C0);
    v206 = v402;
    sub_23B50C824();
    OUTLINED_FUNCTION_17_13();
    sub_23B48712C(v164, v207);
    v208 = 0;
  }

  v209 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v206, v208, 1, v209);
  v210 = *(a3 + Options[10]);
  sub_23B50AD94();
  v211 = *(a3 + Options[15]);
  v212 = *MEMORY[0x277D7B100];
  OUTLINED_FUNCTION_30_7(&v432);
  v213(v405);
  sub_23B50B784();
  *&v441 = v399;
  BYTE8(v441) = 0;
  v214 = v406;
  v428 = sub_23B482F30(v406, &v441);
  v215 = v414;
  sub_23B50AD14();
  v216 = v426;
  if (qword_280B43440 != -1)
  {
LABEL_61:
    OUTLINED_FUNCTION_0_1();
  }

  v217 = sub_23B50CDF4();
  v218 = __swift_project_value_buffer(v217, qword_280B4E9D8);
  v219 = v400;
  v220 = v401;
  v401(v400, v215, v216);
  v221 = v214;
  v418 = v218;
  v222 = sub_23B50CDD4();
  LOBYTE(v218) = sub_23B50D4C4();

  v223 = os_log_type_enabled(v222, v218);
  v434 = v221;
  if (v223)
  {
    OUTLINED_FUNCTION_42_0();
    v224 = OUTLINED_FUNCTION_41_4();
    v225 = OUTLINED_FUNCTION_42_0();
    *&v441 = v225;
    OUTLINED_FUNCTION_12_17(7.2226e-34);
    *(v214 + 14) = v434;
    *v224 = v434;
    *(v214 + 11) = 2082;
    v220(v429, v219, v216);
    v226 = v434;
    v227 = sub_23B50D1A4();
    v229 = v228;
    v230 = OUTLINED_FUNCTION_31_6();
    v231(v230);
    v232 = sub_23B391F1C(v227, v229, &v441);

    *(v214 + 3) = v232;
    OUTLINED_FUNCTION_47_3(&dword_23B38D000, v233, v234, "About to fetch cached weather data; location=%{private,mask.hash}@, startTime=%{public}s");
    sub_23B398890(v224, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v225);
    v221 = v434;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_16_1();
  }

  else
  {

    v235 = OUTLINED_FUNCTION_31_6();
    v236(v235);
  }

  v237 = v409;
  v238 = v407;
  v239 = v435[6];
  __swift_project_boxed_opaque_existential_1(v435 + 2, v435[5]);
  [v221 coordinate];
  v240 = sub_23B50B724();

  if (v240)
  {
    v429 = *(v240 + 16);
    if (v429)
    {
      v428 = v240;
      sub_23B42CD1C(v240, v221, v425, v431);
      type metadata accessor for CurrentWeather();
      v241 = OUTLINED_FUNCTION_4_27(v443);
      v432 = v242;
      __swift_storeEnumTagSinglePayload(v241, v243, v244, v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
      v245 = OUTLINED_FUNCTION_4_27(&v442);
      v427[0] = v246;
      __swift_storeEnumTagSinglePayload(v245, v247, v248, v246);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
      v249 = OUTLINED_FUNCTION_4_27(&v438 + 8);
      v424 = v250;
      __swift_storeEnumTagSinglePayload(v249, v251, v252, v250);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
      v253 = OUTLINED_FUNCTION_4_27(&v438);
      v419 = v254;
      OUTLINED_FUNCTION_40_4(v253, v255, v256, v254);
      type metadata accessor for AirQuality();
      v257 = OUTLINED_FUNCTION_4_27(&v437);
      v417 = v258;
      __swift_storeEnumTagSinglePayload(v257, v259, v260, v258);
      v416 = 0;
      v216 = 0;
      v214 = &unk_23B519370;
      v215 = v427[1];
      v261 = v433;
      while (1)
      {
        if (v429 == v216)
        {

          sub_23B3CE510(v421, v383, &qword_27E131C98, &unk_23B50ED60);
          v334 = v378;
          sub_23B3CE510(v420, v378, &qword_27E131C90, &unk_23B514EC0);
          v335 = v379;
          sub_23B3CE510(v411, v379, &qword_27E131C88, &unk_23B50ED50);
          v336 = v380;
          sub_23B3CE510(v410, v380, &qword_27E131C80, &qword_23B50ED48);
          v337 = v381;
          sub_23B3CE510(v408, v381, &qword_27E131C78, &qword_23B50ED40);
          v338 = v384;
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v339, v340, v341, v432);
          v342 = v382;
          v343 = v382[5];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v344, v345, v346, v427[0]);
          v347 = v342[6];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v348, v349, v350, v424);
          v351 = v342[7];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v352, v353, v354, v419);
          v355 = v342[8];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v356, v357, v358, v417);
          v359 = v342[9];
          sub_23B3C2510(v383, v338, &qword_27E131C98, &unk_23B50ED60);
          sub_23B3C2510(v334, v338 + v343, &qword_27E131C90, &unk_23B514EC0);
          sub_23B3C2510(v335, v338 + v347, &qword_27E131C88, &unk_23B50ED50);
          sub_23B3C2510(v336, v338 + v351, &qword_27E131C80, &qword_23B50ED48);
          sub_23B3C2510(v337, v338 + v355, &qword_27E131C78, &qword_23B50ED40);
          *(v338 + v359) = v416;
          v360 = v434;
          v361 = sub_23B50CDD4();
          v362 = sub_23B50D4C4();

          if (os_log_type_enabled(v361, v362))
          {
            swift_slowAlloc();
            v363 = OUTLINED_FUNCTION_41_4();
            OUTLINED_FUNCTION_12_17(7.2225e-34);
            *(v335 + 14) = v360;
            *v364 = v360;
            v365 = v360;
            _os_log_impl(&dword_23B38D000, v361, v362, "Successfully created product tuple; location=%{private,mask.hash}@", v335, 0x16u);
            sub_23B398890(v363, &qword_27E132D80, &qword_23B5192E0);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_16_1();
          }

          sub_23B398890(v408, &qword_27E131C78, &qword_23B50ED40);
          sub_23B398890(v410, &qword_27E131C80, &qword_23B50ED48);
          sub_23B398890(v411, &qword_27E131C88, &unk_23B50ED50);
          sub_23B398890(v420, &qword_27E131C90, &unk_23B514EC0);
          sub_23B398890(v421, &qword_27E131C98, &unk_23B50ED60);
          sub_23B398890(v431, &qword_27E131EA8, &qword_23B5194F0);
          v366 = OUTLINED_FUNCTION_23_10();
          v368 = *(v367 - 256);
          v368(v366);
          v369 = OUTLINED_FUNCTION_8_18();
          v370(v369);
          v371 = OUTLINED_FUNCTION_45_4(v444);
          v368(v371);
          v372 = OUTLINED_FUNCTION_45_4(&v445);
          v368(v372);
          v373 = OUTLINED_FUNCTION_28_7();
          v374(v373);
          sub_23B486F00(v384, v391, type metadata accessor for WatchWeather);
          v375 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_73();
          v333 = v375;
          return __swift_storeEnumTagSinglePayload(v330, v331, v332, v333);
        }

        if (v216 >= v428[2])
        {
          __break(1u);
          goto LABEL_61;
        }

        v262 = v238;
        sub_23B4870D0(v428 + ((*(v430 + 80) + 32) & ~*(v430 + 80)) + *(v430 + 72) * v216, v215, MEMORY[0x277D7ABF8]);
        v263 = v215;
        sub_23B3AA378(v215, v221, v431, &v441);
        OUTLINED_FUNCTION_19_12();
        OUTLINED_FUNCTION_15_15();
        if (*(&v438 + 1))
        {
          OUTLINED_FUNCTION_37_5(&v449);
          v264 = v432;
          swift_dynamicCast();
          v265 = OUTLINED_FUNCTION_35_7();
          __swift_storeEnumTagSinglePayload(v265, v266, v267, v264);
          v268 = OUTLINED_FUNCTION_27_10();
          OUTLINED_FUNCTION_51(v268, v269, v264);
          v270 = v238;
          if (!v147)
          {
            OUTLINED_FUNCTION_25_9();
            v271 = OUTLINED_FUNCTION_38_5(v443);
            sub_23B398890(v271, &qword_27E131C98, &unk_23B50ED60);
            sub_23B486F00(v215, v215, type metadata accessor for CurrentWeather);
            v272 = OUTLINED_FUNCTION_5_22();
            v275 = v432;
LABEL_30:
            __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
            v238 = v270;
            v221 = v434;
            goto LABEL_51;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_37_5(&v449);
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v276, v277, v278, v432);
          v270 = v238;
        }

        sub_23B398890(v215, &qword_27E131C98, &unk_23B50ED60);
        OUTLINED_FUNCTION_15_15();
        if (*(&v438 + 1))
        {
          v263 = v427[0];
          v279 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v270, v279 ^ 1u, 1, v263);
          OUTLINED_FUNCTION_51(v270, 1, v263);
          if (!v147)
          {
            OUTLINED_FUNCTION_25_9();
            v280 = OUTLINED_FUNCTION_38_5(&v442);
            sub_23B398890(v280, &qword_27E131C90, &unk_23B514EC0);
            sub_23B3CE5BC(v270, v215, &qword_27E131CA0, &qword_23B5101A0);
            v272 = OUTLINED_FUNCTION_5_22();
            v275 = v427[0];
            goto LABEL_30;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v281, v282, v283, v427[0]);
        }

        sub_23B398890(v270, &qword_27E131C90, &unk_23B514EC0);
        OUTLINED_FUNCTION_15_15();
        if (*(&v438 + 1))
        {
          OUTLINED_FUNCTION_37_5(&v442 + 8);
          v284 = v424;
          swift_dynamicCast();
          v285 = OUTLINED_FUNCTION_35_7();
          __swift_storeEnumTagSinglePayload(v285, v286, v287, v284);
          v288 = OUTLINED_FUNCTION_27_10();
          OUTLINED_FUNCTION_51(v288, v289, v284);
          v221 = v434;
          if (!v147)
          {
            OUTLINED_FUNCTION_25_9();
            v290 = OUTLINED_FUNCTION_38_5(&v438 + 8);
            sub_23B398890(v290, &qword_27E131C88, &unk_23B50ED50);
            sub_23B3CE5BC(v263, v215, &qword_27E131CA8, &unk_23B50ED70);
            v291 = OUTLINED_FUNCTION_5_22();
            v294 = &v446;
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_37_5(&v442 + 8);
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v295, v296, v297, v424);
          v221 = v434;
        }

        sub_23B398890(v263, &qword_27E131C88, &unk_23B50ED50);
        OUTLINED_FUNCTION_15_15();
        if (*(&v438 + 1))
        {
          v298 = v419;
          v299 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v261, v299 ^ 1u, 1, v298);
          OUTLINED_FUNCTION_51(v261, 1, v298);
          v238 = v262;
          if (!v147)
          {
            OUTLINED_FUNCTION_25_9();
            v300 = OUTLINED_FUNCTION_38_5(&v438);
            sub_23B398890(v300, &qword_27E131C80, &qword_23B50ED48);
            sub_23B3CE5BC(v433, v215, &qword_27E131CB0, &qword_23B516B60);
            v301 = OUTLINED_FUNCTION_5_22();
            __swift_storeEnumTagSinglePayload(v301, v302, v303, v419);
            goto LABEL_51;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v304, v305, v306, v419);
        }

        sub_23B398890(v433, &qword_27E131C80, &qword_23B50ED48);
        OUTLINED_FUNCTION_15_15();
        if (*(&v438 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_25_9();

            v416 = v436;
            goto LABEL_51;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
        }

        v437 = v441;
        v438 = v442;
        v307 = v386;
        if (!*(&v442 + 1))
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v315, v316, v317, v417);
LABEL_49:
          sub_23B398890(v307, &qword_27E131C78, &qword_23B50ED40);
          goto LABEL_50;
        }

        v308 = v417;
        swift_dynamicCast();
        v309 = OUTLINED_FUNCTION_35_7();
        __swift_storeEnumTagSinglePayload(v309, v310, v311, v308);
        v312 = OUTLINED_FUNCTION_27_10();
        OUTLINED_FUNCTION_51(v312, v313, v308);
        if (v147)
        {
          goto LABEL_49;
        }

        v314 = OUTLINED_FUNCTION_38_5(&v437);
        sub_23B398890(v314, &qword_27E131C78, &qword_23B50ED40);
        sub_23B486F00(v307, v215, type metadata accessor for AirQuality);
        v291 = OUTLINED_FUNCTION_5_22();
        v294 = &v440;
LABEL_47:
        __swift_storeEnumTagSinglePayload(v291, v292, v293, *(v294 - 32));
LABEL_50:
        v238 = v262;
LABEL_51:
        ++v216;
      }
    }
  }

  v318 = v221;
  v319 = sub_23B50CDD4();
  v320 = sub_23B50D4B4();

  if (os_log_type_enabled(v319, v320))
  {
    v321 = swift_slowAlloc();
    v322 = OUTLINED_FUNCTION_42_0();
    *&v441 = v322;
    *v321 = 141558275;
    *(v321 + 4) = 1752392040;
    *(v321 + 12) = 2081;
    *&v437 = v318;
    sub_23B3A3BC8();
    v323 = v318;
    v324 = sub_23B50D1A4();
    v326 = sub_23B391F1C(v324, v325, &v441);

    *(v321 + 14) = v326;
    _os_log_impl(&dword_23B38D000, v319, v320, "Unexpectedly empty response when fetching nano weather data; location=%{private,mask.hash}s", v321, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v322);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_38();
  }

  v327 = v412;
  v412(v414, v216);
  v328 = OUTLINED_FUNCTION_8_18();
  v329(v328);
  v327(v422, v216);
  v327(v423, v216);
  (*(v237 + 8))(v387, v388);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  v330 = OUTLINED_FUNCTION_4_27(&v421);
  return __swift_storeEnumTagSinglePayload(v330, v331, v332, v333);
}