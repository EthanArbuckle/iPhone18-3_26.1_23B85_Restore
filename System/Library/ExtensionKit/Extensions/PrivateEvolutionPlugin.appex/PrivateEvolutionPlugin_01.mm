uint64_t sub_100012C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_10001D284();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = *(*(sub_10000210C(&qword_100028698, &qword_10001E9E8) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = *(*(type metadata accessor for PrivateEvolutionPluginArgs() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100012DB0, 0, 0);
}

uint64_t sub_100012DB0()
{
  v164 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = v2[9];
    v4 = v2[10];
    v5 = v2[11];
    v6 = v2[12];
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = sub_100013EC4;

    return generateEmbeddingsFromTexts(textItems:embeddingModelName:embeddingModelVersion:)(v1, v3, v4, v5, v6);
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v146 = sub_10001D2B4();
  sub_1000047E8(v146, qword_10002A138);
  v9 = sub_10001D294();
  v10 = sub_10001D714();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Querying embeddings from Biome.", v11, 2u);
  }

  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 144);

  v151 = v16[10];
  v148 = v16[9];
  v149 = v16[13];
  v17 = sub_10001CF54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v12, 1, 1, v17);
  v19(v13, 1, 1, v17);
  sub_100019CA4(v12, v14, &qword_100028698, &qword_10001E9E8);
  sub_100019CA4(v13, v15, &qword_100028698, &qword_10001E9E8);
  v20 = *(v18 + 48);
  isa = 0;
  if (v20(v14, 1, v17) != 1)
  {
    v22 = *(v0 + 208);
    isa = sub_10001CF34().super.isa;
    (*(v18 + 8))(v22, v17);
  }

  v23 = *(v0 + 200);
  if (v20(v23, 1, v17) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_10001CF34().super.isa;
    (*(v18 + 8))(v23, v17);
  }

  v25 = v148;
  v27 = *(v0 + 152);
  v26 = *(v0 + 160);
  v28 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v24 maxEvents:0 lastN:0 reversed:0];

  sub_10001D204();
  sub_100019E10(&qword_100028778, &type metadata accessor for Library.Streams.Zeolite.Ledger.Embedding);
  v29 = v28;
  sub_10001D214();

  sub_100004DC0((v0 + 56), v0 + 16);
  v30 = swift_allocObject();
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v31 = (v30 + 16);
  v32 = *(v0 + 48);
  sub_100004DD8((v0 + 16), *(v0 + 40));

  sub_10001D2C4();

  swift_beginAccess();
  v33 = *v31;

  sub_100005490((v0 + 16));
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(v0 + 176);
    v37 = *(v35 + 16);
    v36 = v35 + 16;
    v147 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v38 = v33 + v147;
    v155 = *(v36 + 56);
    v159 = v37;
    v39 = (v36 - 8);
    v153 = _swiftEmptyArrayStorage;
    v40 = v149;
    v37(*(v0 + 192), v33 + v147, *(v0 + 168));
    while (1)
    {
      v41 = sub_10001D234();
      if (!v42)
      {
LABEL_16:
        (*v39)(*(v0 + 192), *(v0 + 168));
        goto LABEL_17;
      }

      v43 = v25 == v41 && v42 == v151;
      if (v43)
      {

        if (!v40)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v44 = sub_10001D8E4();

        if ((v44 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (!v40)
        {
LABEL_35:
          v159(*(v0 + 184), *(v0 + 192), *(v0 + 168));
          v52 = v153;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_100004954(0, v153[2] + 1, 1, v153);
          }

          v54 = v52[2];
          v53 = v52[3];
          v153 = v52;
          if (v54 >= v53 >> 1)
          {
            v153 = sub_100004954(v53 > 1, v54 + 1, 1, v52);
          }

          v55 = *(v0 + 184);
          v56 = *(v0 + 168);
          (*v39)(*(v0 + 192), v56);
          v153[2] = v54 + 1;
          (*(v36 + 16))(v153 + v147 + v54 * v155, v55, v56);
          v25 = v148;
          goto LABEL_41;
        }
      }

      v45 = *(v0 + 192);
      v46 = sub_10001D224();
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0;
      }

      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0xE000000000000000;
      }

      *(v0 + 120) = v48;
      *(v0 + 128) = v49;
      v50 = swift_task_alloc();
      *(v50 + 16) = v0 + 120;
      v51 = sub_10000DD84(sub_100019DB8, v50, v40);

      if (v51)
      {
        goto LABEL_35;
      }

      (*v39)(*(v0 + 192), *(v0 + 168));
LABEL_41:
      v40 = v149;
LABEL_17:
      v38 += v155;
      if (!--v34)
      {

        v57 = v153;
        goto LABEL_44;
      }

      v159(*(v0 + 192), v38, *(v0 + 168));
    }
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_44:
  v59 = *(v0 + 240);
  v58 = *(v0 + 248);
  v60 = *(v0 + 224);
  v61 = *(v0 + 160);
  v62 = *(v0 + 144);
  sub_1000064C0(*(v0 + 216), &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v60, &qword_100028698, &qword_10001E9E8);
  sub_100019D54(v62, v58);
  sub_100019D54(v62, v59);

  v63 = sub_10001D294();
  v64 = sub_10001D714();

  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 240);
  v67 = *(v0 + 248);
  v154 = v57;
  if (v65)
  {
    v156 = *(v0 + 152);
    v160 = *(v0 + 160);
    v68 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v163[0] = v61;
    *v68 = 134218754;
    *(v68 + 4) = v57[2];

    *(v68 + 12) = 2080;
    v69 = *(v67 + 72);
    v70 = *(v67 + 80);

    sub_100019B20(v67);
    v71 = sub_100004CF4(v69, v70, v163);

    *(v68 + 14) = v71;
    *(v68 + 22) = 2080;
    *(v68 + 24) = sub_100004CF4(v156, v160, v163);
    *(v68 + 32) = 2080;
    if (*(v66 + 104))
    {
      v72 = *(v66 + 104);
    }

    v73 = sub_10001D684();
    v75 = v74;

    sub_100019B20(v66);
    v66 = sub_100004CF4(v73, v75, v163);

    *(v68 + 34) = v66;
    _os_log_impl(&_mh_execute_header, v63, v64, "Number of embeddings queried: %ld. Query params: embeddingModel=%s, useCase=%s, sourceTypes=%s.", v68, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100019B20(v66);
    sub_100019B20(v67);
  }

  v76 = *(v0 + 144);
  v77 = v57[2];
  v78 = qword_100028248;
  if (v77 < *(v76 + 48))
  {
    if (qword_100028248 != -1)
    {
      swift_once();
      v76 = *(v0 + 144);
    }

    v79 = *(v0 + 232);
    sub_1000047E8(v146, qword_10002A138);
    sub_100019D54(v76, v79);
    v80 = sub_10001D294();
    v81 = sub_10001D734();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 134218240;
      v83 = *(v0 + 232);
      *(v82 + 4) = v154[2];
      *(v82 + 12) = 2048;
      v84 = *(v83 + 48);
      sub_100019B20(v83);
      *(v82 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "Number of data %ld less than the threshold %lu", v82, 0x16u);
    }

    else
    {
      sub_100019B20(*(v0 + 232));
    }

    sub_100019C50();
    swift_allocError();
    *v95 = 2;
    v97 = *(v0 + 256);
    v96 = *(v0 + 264);
    v99 = *(v0 + 240);
    v98 = *(v0 + 248);
    v101 = *(v0 + 224);
    v100 = *(v0 + 232);
    v102 = *(v0 + 216);
    v150 = *(v0 + 208);
    v152 = *(v0 + 200);
    v157 = *(v0 + 192);
    v161 = *(v0 + 184);
    swift_willThrow();

    v103 = *(v0 + 8);

    return v103();
  }

  v43 = v78 == -1;
  v86 = v85;
  if (!v43)
  {
    swift_once();
  }

  sub_1000047E8(v146, qword_10002A138);

  v87 = sub_10001D294();
  v88 = sub_10001D724();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = *(v0 + 168);
    v61 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v163[0] = v90;
    *v61 = 134218242;
    *(v61 + 4) = *(v86 + 16);

    *(v61 + 12) = 2080;
    v91 = v86;
    v92 = sub_10001D684();
    v66 = v93;
    v94 = sub_100004CF4(v92, v93, v163);

    *(v61 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v87, v88, "Embeddings data (count: %ld: %s.", v61, 0x16u);
    sub_100005490(v90);
  }

  else
  {
    v91 = v86;
  }

  v104 = *(*(v0 + 144) + 56);
  if (v104 < 0)
  {
    __break(1u);
    goto LABEL_92;
  }

  v87 = sub_10000C588(v104, v91);
  if (v107)
  {
    v66 = v107;
    v61 = v106;
    v86 = v105;
    sub_10001D8F4();
    swift_unknownObjectRetain_n();
    v110 = swift_dynamicCastClass();
    if (!v110)
    {
      swift_unknownObjectRelease();
      v110 = _swiftEmptyArrayStorage;
    }

    v111 = v110[2];

    if (__OFSUB__(v66 >> 1, v61))
    {
      goto LABEL_93;
    }

    if (v111 != (v66 >> 1) - v61)
    {
      goto LABEL_94;
    }

    v109 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v109)
    {
      goto LABEL_73;
    }

    v109 = _swiftEmptyArrayStorage;
    goto LABEL_72;
  }

  while (1)
  {
    sub_10000D4C8(v87, v105, v106, v107);
    v109 = v108;
LABEL_72:
    swift_unknownObjectRelease();
LABEL_73:
    v86 = *(v0 + 144);
    v163[0] = v109;
    v87 = v163;
    sub_10000E4F4();
    v112 = *(v86 + 64);
    if ((v112 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_unknownObjectRelease();
    v107 = v66;
    v106 = v61;
    v105 = v86;
  }

  v116 = sub_10000C610(v112, v163[0]);
  if ((v115 & 1) == 0)
  {
    goto LABEL_75;
  }

  v119 = v115;
  v120 = v114;
  v121 = v113;
  sub_10001D8F4();
  swift_unknownObjectRetain_n();
  v122 = swift_dynamicCastClass();
  if (!v122)
  {
    swift_unknownObjectRelease();
    v122 = _swiftEmptyArrayStorage;
  }

  v123 = v122[2];

  if (__OFSUB__(v119 >> 1, v120))
  {
    __break(1u);
    goto LABEL_96;
  }

  if (v123 != (v119 >> 1) - v120)
  {
LABEL_96:
    swift_unknownObjectRelease();
    v115 = v119;
    v114 = v120;
    v113 = v121;
LABEL_75:
    sub_10000D4C8(v116, v113, v114, v115);
    v118 = v117;
LABEL_82:
    swift_unknownObjectRelease();
    goto LABEL_83;
  }

  v118 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v118)
  {
    v118 = _swiftEmptyArrayStorage;
    goto LABEL_82;
  }

LABEL_83:

  v124 = sub_10001D294();
  v125 = sub_10001D714();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 134217984;
    *(v126 + 4) = v118[2];

    _os_log_impl(&_mh_execute_header, v124, v125, "Number of sampled embeddings: %ld.", v126, 0xCu);
  }

  else
  {
  }

  v127 = sub_10001D294();
  v128 = sub_10001D724();

  v162 = v118;
  if (os_log_type_enabled(v127, v128))
  {
    v129 = *(v0 + 168);
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v163[0] = v131;
    *v130 = 136315138;
    v132 = sub_10001D684();
    v134 = sub_100004CF4(v132, v133, v163);

    *(v130 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v127, v128, "Sampled Embeddings data: %s\n", v130, 0xCu);
    sub_100005490(v131);
  }

  v136 = *(v0 + 256);
  v135 = *(v0 + 264);
  v138 = *(v0 + 240);
  v137 = *(v0 + 248);
  v140 = *(v0 + 224);
  v139 = *(v0 + 232);
  v142 = *(v0 + 208);
  v141 = *(v0 + 216);
  v143 = *(v0 + 192);
  v144 = *(v0 + 200);
  v158 = *(v0 + 184);

  v145 = *(v0 + 8);

  return v145(v162);
}

uint64_t sub_100013EC4(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100013FC4, 0, 0);
}

uint64_t sub_100013FC4()
{
  v102 = v0;
  v1 = v0[35];
  if (!v1)
  {
    sub_100019C50();
    swift_allocError();
    v19 = 9;
LABEL_54:
    *v18 = v19;
    v87 = v0[32];
    v86 = v0[33];
    v89 = v0[30];
    v88 = v0[31];
    v90 = v0[28];
    v91 = v0[29];
    v92 = v0[27];
    v94 = v0[26];
    v95 = v0[25];
    v96 = v0[24];
    v98 = v0[23];
    swift_willThrow();

    v93 = v0[1];

    return v93();
  }

  v2 = qword_100028248;
  v3 = v0[35];

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[18];
  v99 = sub_10001D2B4();
  sub_1000047E8(v99, qword_10002A138);
  sub_100019D54(v6, v5);
  sub_100019D54(v6, v4);

  v7 = sub_10001D294();
  v8 = sub_10001D714();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  v11 = v0[33];
  if (v9)
  {
    v4 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v4 = 134218498;
    v12 = *(v1 + 16);

    *(v4 + 4) = v12;

    *(v4 + 12) = 2080;
    v14 = *(v11 + 72);
    v13 = *(v11 + 80);

    sub_100019B20(v11);
    v15 = sub_100004CF4(v14, v13, v101);

    *(v4 + 14) = v15;
    *(v4 + 22) = 2080;
    v16 = v0[32];
    if (*(v10 + 96))
    {
      v17 = *(v16 + 88);
      v10 = *(v10 + 96);
    }

    else
    {
      v10 = 0xE300000000000000;
      v17 = 7104878;
    }

    sub_100019B20(v16);
    v20 = sub_100004CF4(v17, v10, v101);

    *(v4 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Number of embeddings generated: %ld. Model Name: %s, model version: %s.", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_100019B20(v10);
    sub_100019B20(v11);
  }

  v21 = v0[35];
  v22 = v0[18];
  if (*(v1 + 16) < *(v22 + 48))
  {
    if (qword_100028248 != -1)
    {
      swift_once();
      v22 = v0[18];
    }

    v23 = v0[29];
    sub_1000047E8(v99, qword_10002A138);
    sub_100019D54(v22, v23);
    v24 = sub_10001D294();
    v25 = sub_10001D734();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v26;
      *v26 = 134218240;
      if (v21)
      {
        v28 = *(v21 + 16);
      }

      else
      {
        v28 = 0;
      }

      v83 = v0[29];
      *(v26 + 4) = v28;
      *(v26 + 12) = 2048;
      v84 = v0;
      v85 = *(v83 + 48);
      sub_100019B20(v83);
      *(v27 + 14) = v85;
      v0 = v84;
      _os_log_impl(&_mh_execute_header, v24, v25, "Number of data %ld less than the threshold %lu", v27, 0x16u);
    }

    else
    {
      sub_100019B20(v0[29]);
    }

    sub_100019C50();
    swift_allocError();
    v19 = 2;
    goto LABEL_54;
  }

  v29 = qword_100028248;
  v30 = v0[35];

  if (v29 != -1)
  {
    swift_once();
  }

  sub_1000047E8(v99, qword_10002A138);

  v31 = sub_10001D294();
  v32 = sub_10001D724();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[21];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v101[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = *(v1 + 16);

    *(v34 + 12) = 2080;
    v36 = sub_10001D684();
    v10 = v37;
    v4 = v21;
    v38 = sub_100004CF4(v36, v37, v101);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Embeddings data (count: %ld: %s.", v34, 0x16u);
    sub_100005490(v35);
  }

  else
  {
  }

  v39 = *(v0[18] + 56);
  if (v39 < 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v31 = sub_10000C588(v39, v1);
  if (v42)
  {
    v10 = v0;
    v32 = v42;
    v4 = v41;
    v0 = v40;
    sub_10001D8F4();
    swift_unknownObjectRetain_n();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      swift_unknownObjectRelease();
      v45 = _swiftEmptyArrayStorage;
    }

    v46 = v45[2];

    if (__OFSUB__(v32 >> 1, v4))
    {
      goto LABEL_59;
    }

    if (v46 != (v32 >> 1) - v4)
    {
      goto LABEL_60;
    }

    v44 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v0 = v10;
    if (v44)
    {
      goto LABEL_33;
    }

    v44 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  while (1)
  {
    sub_10000D4C8(v31, v40, v41, v42);
    v44 = v43;
LABEL_32:
    swift_unknownObjectRelease();
LABEL_33:
    v10 = v0;
    v0 = v0[18];
    v101[0] = v44;
    v31 = v101;
    sub_10000E4F4();
    v47 = v0[8];
    if ((v47 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_unknownObjectRelease();
    v42 = v32;
    v41 = v4;
    v40 = v0;
    v0 = v10;
  }

  v51 = sub_10000C610(v47, v101[0]);
  if ((v50 & 1) == 0)
  {
    goto LABEL_35;
  }

  v55 = v50;
  v56 = v49;
  v57 = v48;
  sub_10001D8F4();
  swift_unknownObjectRetain_n();
  v58 = swift_dynamicCastClass();
  if (!v58)
  {
    swift_unknownObjectRelease();
    v58 = _swiftEmptyArrayStorage;
  }

  v59 = v58[2];

  if (__OFSUB__(v55 >> 1, v56))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (v59 != (v55 >> 1) - v56)
  {
LABEL_62:
    swift_unknownObjectRelease();
    v50 = v55;
    v49 = v56;
    v48 = v57;
LABEL_35:
    sub_10000D4C8(v51, v48, v49, v50);
    v53 = v52;
    v54 = v10;
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v53 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v54 = v10;
  if (!v53)
  {
    v53 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

LABEL_43:

  v60 = sub_10001D294();
  v61 = sub_10001D714();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = v53[2];

    _os_log_impl(&_mh_execute_header, v60, v61, "Number of sampled embeddings: %ld.", v62, 0xCu);
  }

  else
  {
  }

  v63 = sub_10001D294();
  v64 = sub_10001D724();

  v100 = v53;
  if (os_log_type_enabled(v63, v64))
  {
    v65 = v54[21];
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v101[0] = v67;
    *v66 = 136315138;
    v68 = sub_10001D684();
    v70 = sub_100004CF4(v68, v69, v101);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "Sampled Embeddings data: %s\n", v66, 0xCu);
    sub_100005490(v67);
  }

  v72 = v54[32];
  v71 = v54[33];
  v74 = v54[30];
  v73 = v54[31];
  v76 = v54[28];
  v75 = v54[29];
  v78 = v54[26];
  v77 = v54[27];
  v79 = v54[24];
  v80 = v54[25];
  v97 = v54[23];

  v81 = v54[1];

  return v81(v100);
}

uint64_t sub_1000149A0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D364();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100014A6C, 0, 0);
}

uint64_t sub_100014A6C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = _swiftEmptyArrayStorage;
  v4 = sub_100010B1C(_swiftEmptyArrayStorage);
  if (!v2)
  {
LABEL_35:
    v56 = v1[5];
    v55 = v1[6];
    sub_10000C6A4(v4);

    v57 = sub_10001D024();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = sub_10001D004();

    v61 = v1[1];

    return v61(v60);
  }

  v5 = v0[2];
  sub_10000210C(&qword_100028298, &qword_10001EA10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001DFC0;
  v7 = *(v5 + 16);
  *(v6 + 32) = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10000E208(v6, 0x617461645F6D756ELL, 0xEE0073746E696F70, isUniquelyReferenced_nonNull_native);
  v9 = v4;
  result = swift_allocObject();
  v11 = result;
  *(result + 16) = xmmword_10001DFC0;
  v68 = v0;
  if (!v7)
  {
    v21 = _swiftEmptyArrayStorage[2];
    if (v21)
    {
      goto LABEL_12;
    }

    v26 = 0.0;
LABEL_16:
    *(v11 + 32) = v26;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000E208(v11, 0x736761745F6D756ELL, 0xE800000000000000, v27);
    v28 = v9;
    v29 = swift_allocObject();
    v30 = v29;
    *(v29 + 16) = xmmword_10001DFC0;
    v1 = v0;
    if (v7)
    {
      v65 = v29;
      v67 = v9;
      v31 = v0[4];
      sub_10000D70C(0, v7, 0);
      v3 = _swiftEmptyArrayStorage;
      v34 = *(v31 + 16);
      v33 = v31 + 16;
      v32 = v34;
      v35 = v5 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v36 = *(v33 + 56);
      do
      {
        v37 = v3;
        v38 = v68[5];
        v39 = v68[3];
        v32(v38, v35, v39);
        v40 = sub_10001D344();
        (*(v33 - 8))(v38, v39);
        if (v40)
        {

          v41 = 1.0;
        }

        else
        {
          v41 = 0.0;
        }

        v3 = v37;
        v69 = v37;
        v42 = v37[2];
        v43 = v3[3];
        v44 = v42 + 1;
        if (v42 >= v43 >> 1)
        {
          sub_10000D70C((v43 > 1), v42 + 1, 1);
          v3 = v69;
        }

        v3[2] = v44;
        *&v3[v42 + 4] = v41;
        v35 += v36;
        --v7;
      }

      while (v7);
      v28 = v67;
      v1 = v68;
      v30 = v65;
    }

    else
    {
      v44 = _swiftEmptyArrayStorage[2];
      if (!v44)
      {

        v53 = 0.0;
        goto LABEL_34;
      }
    }

    if (v44 > 3)
    {
      v45 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = (v3 + 6);
      v46 = 0.0;
      v48 = v44 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v49 = *v47;
        v46 = v46 + *(v47 - 2) + *(v47 - 1) + *v47 + v47[1];
        v47 += 4;
        v48 -= 4;
      }

      while (v48);
      if (v44 == v45)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0.0;
    }

    v50 = v44 - v45;
    v51 = &v3[v45 + 4];
    do
    {
      v52 = *v51++;
      v46 = v46 + v52;
      --v50;
    }

    while (v50);
LABEL_33:

    v53 = v46;
LABEL_34:
    *(v30 + 32) = v53;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000E208(v30, 0xD000000000000013, 0x800000010001F290, v54);
    v4 = v28;
    goto LABEL_35;
  }

  v62 = result;
  v12 = v0[4];
  sub_10000D72C(0, v7, 0);
  v13 = *(v12 + 16);
  v12 += 16;
  v63 = v5;
  v14 = v5 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v64 = *(v12 + 56);
  v66 = v13;
  v15 = (v12 - 8);
  v16 = v7;
  do
  {
    v66(v0[6], v14, v0[3]);
    v17 = sub_10001D344();
    if (v17)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    result = (*v15)(v0[6], v0[3]);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      result = sub_10000D72C((v19 > 1), v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v21;
    _swiftEmptyArrayStorage[v20 + 4] = v18;
    v14 += v64;
    --v16;
  }

  while (v16);
  v3 = _swiftEmptyArrayStorage;
  v5 = v63;
  v9 = v4;
  v11 = v62;
LABEL_12:
  v22 = 0;
  v23 = 4;
  while (1)
  {
    v24 = _swiftEmptyArrayStorage[v23];
    v25 = __OFADD__(v22, v24);
    v22 += v24;
    if (v25)
    {
      break;
    }

    ++v23;
    if (!--v21)
    {

      v26 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014FA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001D6F4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000E7AC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100015040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100015068, 0, 0);
}

uint64_t sub_100015068()
{
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v1 = sub_10001D2B4();
  v0[7] = sub_1000047E8(v1, qword_10002A138);
  v2 = sub_10001D294();
  v3 = sub_10001D714();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Getting, shuffling and sampling embeddings.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1000151D4;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[2];
  v8 = v0[3];

  return sub_100012C28(v9, v8, v6, v7);
}

uint64_t sub_1000151D4(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100015308, 0, 0);
  }
}

void sub_100015308()
{
  v80 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = sub_10001D1B4();
  if (!v6)
  {
    v34 = *(v0 + 72);
    v35 = *(v0 + 56);

    v36 = sub_10001D294();
    v37 = sub_10001D734();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Model attachment not found.", v38, 2u);
    }

    v39 = *(v0 + 56);
    v40 = *(v0 + 32);

    v41 = sub_10001D294();
    v42 = sub_10001D724();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 32);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315138;
      sub_10001D1A4();
      sub_10001CED4();
      v46 = sub_10001D684();
      v48 = v47;

      v49 = sub_100004CF4(v46, v48, &v79);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Task attachments = %s.", v44, 0xCu);
      sub_100005490(v45);
    }

    sub_100019C50();
    swift_allocError();
    *v50 = 4;
    swift_willThrow();
    goto LABEL_24;
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v0 + 56);
  v10 = *(v0 + 24);
  v11 = *(v10 + 32);

  v13 = sub_100014FA8(v12);

  v78 = v13;
  v14 = *(v10 + 16);
  v15 = *(v10 + 24);

  sub_10000E7AC(&v79, v14, v15);

  LODWORD(v10) = *(v10 + 128);
  v16 = sub_10001D294();
  v17 = sub_10001D714();
  v18 = os_log_type_enabled(v16, v17);
  if (v10 == 1)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Using Espresso MIL Trainer for Private Evolution.", v19, 2u);
    }

    v20 = *(v0 + 24);

    v21 = *(v20 + 40);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = *(v0 + 80);
      v23 = sub_100011A48(*(v0 + 72), v21, v7, v8, **(v0 + 24), *(*(v0 + 24) + 8), v78);

      if (!v22)
      {
        v24 = *(v0 + 56);
        v25 = sub_10001D294();
        v26 = sub_10001D714();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Extracting outputs for Private Evolution.", v27, 2u);
        }

        sub_10001243C(v23, v14, v15, v11);
        v29 = v28;

        v30 = *(v0 + 56);

        v31 = sub_10001D294();
        v32 = sub_10001D714();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = *(v29 + 16);

          _os_log_impl(&_mh_execute_header, v31, v32, "Finishing plugin by returning %ld metrics and histogram.", v33, 0xCu);
        }

        else
        {
        }

        sub_10000C6A4(v29);

        v69 = sub_10001D024();
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        swift_allocObject();
        v72 = sub_10001D004();
LABEL_33:
        v77 = *(v0 + 8);

        v77(v72);
        return;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  if (v18)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Using CoreML Trainer for Private Evolution.", v51, 2u);
  }

  v52 = *(v0 + 24);

  v53 = *(v52 + 40);
  if (v53 < 0)
  {
    goto LABEL_37;
  }

  v54 = *(v0 + 80);
  v55 = sub_10000FE1C(*(v0 + 72), v53, v7, v8, **(v0 + 24), *(*(v0 + 24) + 8), v78);

  v56 = *(v0 + 72);
  if (!v54)
  {
    v58 = *(v0 + 56);

    v59 = sub_10001D294();
    v60 = sub_10001D714();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Extracting outputs for Private Evolution.", v61, 2u);
    }

    sub_100010DD4(v55, v14, v15, v11);
    v64 = v63;
    v65 = *(v0 + 56);

    v66 = sub_10001D294();
    v67 = sub_10001D714();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      *(v68 + 4) = *(v64 + 16);

      _os_log_impl(&_mh_execute_header, v66, v67, "Finishing plugin by returning %ld metrics and histogram.", v68, 0xCu);
    }

    else
    {
    }

    sub_10000C6A4(v64);

    v73 = sub_10001D024();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v76 = sub_10001D004();

    v72 = v76;
    goto LABEL_33;
  }

  v57 = *(v0 + 72);

LABEL_24:
  v62 = *(v0 + 8);

  v62();
}

uint64_t sub_100015A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v6 = sub_10001D364();
  v5[40] = v6;
  v7 = *(v6 - 8);
  v5[41] = v7;
  v8 = *(v7 + 64) + 15;
  v5[42] = swift_task_alloc();
  v9 = *(*(sub_10000210C(&qword_1000286D0, &qword_10001EA40) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v10 = sub_10001D4D4();
  v5[44] = v10;
  v11 = *(v10 - 8);
  v5[45] = v11;
  v12 = *(v11 + 64) + 15;
  v5[46] = swift_task_alloc();

  return _swift_task_switch(sub_100015BC8, 0, 0);
}

uint64_t sub_100015BC8()
{
  v102 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[36];
  v5 = type metadata accessor for PrivateEvolutionPluginArgs();
  sub_100019CA4(v4 + *(v5 + 84), v3, &qword_1000286D0, &qword_10001EA40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000064C0(v0[43], &qword_1000286D0, &qword_10001EA40);
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v6 = sub_10001D2B4();
    sub_1000047E8(v6, qword_10002A138);
    v7 = sub_10001D294();
    v8 = sub_10001D734();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Cannot find metadataEncodingParameters in recipe.", v9, 2u);
    }

    sub_100019C50();
    swift_allocError();
    *v10 = 12;
    swift_willThrow();
LABEL_19:
    v28 = v0[46];
    v29 = v0[42];
    v30 = v0[43];

    v31 = v0[1];

    return v31();
  }

  v11 = v0[35];
  (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
  if (!v11)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v20 = sub_10001D2B4();
    sub_1000047E8(v20, qword_10002A138);
    v21 = sub_10001D294();
    v22 = sub_10001D734();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No text data extracted for metadata encoding.", v23, 2u);
    }

    v25 = v0[45];
    v24 = v0[46];
    v26 = v0[44];

    sub_100019C50();
    swift_allocError();
    *v27 = 8;
    swift_willThrow();
    (*(v25 + 8))(v24, v26);
    goto LABEL_19;
  }

  v12 = v0[35];
  sub_10000210C(&qword_1000286E0, &qword_10001EA48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001DFC0;
  strcpy((inited + 32), "num_datapoints");
  *(inited + 47) = -18;
  sub_10000210C(&qword_100028298, &qword_10001EA10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10001DFC0;
  v15 = v12[2];
  *(v14 + 32) = v15;
  *(inited + 48) = v14;
  v0[47] = sub_100010B1C(inited);
  swift_setDeallocating();
  sub_1000064C0(inited + 32, &qword_1000286E8, &qword_10001EA50);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_10000E798(v12);
  }

  v16 = 0;
  v0[48] = v12;
  v17 = v0[41];
  while (v15 != v16)
  {
    if (v16 >= v12[2])
    {
      __break(1u);
      goto LABEL_45;
    }

    v18 = v16 + 1;
    v19 = v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16;
    sub_10001D334();
    v16 = v18;
  }

  v33 = v0[46];
  v0[49] = sub_10001D4C4();
  v0[50] = v34;
  if (v34)
  {
    v35 = swift_task_alloc();
    v0[51] = v35;
    *v35 = v0;
    v35[1] = sub_100016790;
    v36 = v0[38];
    v37 = v0[39];
    v38 = v0[36];
    v39 = v0[37];
    v40 = v0[35];

    return sub_100015040(v40, v38, v39, v36, v37);
  }

  v41 = v0[46];
  v42 = v0[37];
  sub_10001D4A4();
  v43 = v0[48];
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = v0[41];
    v101[0] = _swiftEmptyArrayStorage;
    sub_10000D74C(0, v44, 0);
    v46 = _swiftEmptyArrayStorage;
    v47 = *(v45 + 16);
    v45 += 16;
    v48 = v43 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v99 = *(v45 + 56);
    v100 = v47;
    v49 = (v45 - 8);
    do
    {
      v50 = v0[42];
      v51 = v0[40];
      v100(v50, v48, v51);
      v52 = sub_10001D324();
      (*v49)(v50, v51);
      v101[0] = v46;
      v54 = v46[2];
      v53 = v46[3];
      if (v54 >= v53 >> 1)
      {
        sub_10000D74C((v53 > 1), v54 + 1, 1);
        v46 = v101[0];
      }

      v46[2] = v54 + 1;
      v46[v54 + 4] = v52;
      v48 += v99;
      --v44;
    }

    while (v44);
    v55 = v0[48];
  }

  else
  {
    v56 = v0[48];

    v46 = _swiftEmptyArrayStorage;
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v57 = sub_10001D2B4();
  sub_1000047E8(v57, qword_10002A138);

  v58 = sub_10001D294();
  v59 = sub_10001D724();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v101[0] = v61;
    *v60 = 136315138;
    sub_10000210C(&qword_100028708, &qword_10001EA70);
    v62 = sub_10001D684();
    v64 = sub_100004CF4(v62, v63, v101);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v58, v59, "Encoding metadata with %s", v60, 0xCu);
    sub_100005490(v61);
  }

  v65 = v0[46];
  v66 = v0[37];
  sub_10001D4B4();
  sub_10000210C(&qword_1000286F0, &qword_10001EA58);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_10001DFC0;
  *(v67 + 56) = sub_10000210C(&qword_1000286F8, &qword_10001EA60);
  *(v67 + 32) = v46;
  sub_10001D2D4();

  if (!v0[28])
  {
LABEL_45:
    v90 = v0[47];

    sub_1000064C0((v0 + 25), &qword_100028700, &qword_10001EA68);
LABEL_47:
    v92 = sub_10001D294();
    v93 = sub_10001D734();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Running metadata encoding Morpheus program failed.", v94, 2u);
    }

    v95 = v0[45];
    v96 = v0[46];
    v97 = v0[44];

    sub_100019C50();
    swift_allocError();
    *v98 = 13;
    swift_willThrow();

    (*(v95 + 8))(v96, v97);
    goto LABEL_19;
  }

  sub_10000210C(&qword_100028350, qword_10001E278);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v91 = v0[47];

    goto LABEL_47;
  }

  v68 = v0[33];

  v69 = sub_10001D294();
  v70 = sub_10001D724();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v101[0] = v72;
    *v71 = 136315138;
    v73 = sub_10001D684();
    v75 = sub_100004CF4(v73, v74, v101);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Encoded metadata: %s", v71, 0xCu);
    sub_100005490(v72);
  }

  v77 = v0[46];
  v76 = v0[47];
  v79 = v0[44];
  v78 = v0[45];
  v80 = v0[42];
  v81 = v0[43];
  v82 = sub_10000C904(v68);
  v84 = v83;

  sub_10000C6A4(v76);

  v85 = sub_10001D024();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  sub_1000068E4(v82, v84);
  v88 = sub_10001D004();

  sub_100006520(v82, v84);
  (*(v78 + 8))(v77, v79);

  v89 = v0[1];

  return v89(v88);
}

uint64_t sub_100016790(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v10 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v5 = v3[50];
    v6 = v3[47];
    v7 = v3[48];

    v8 = sub_100017404;
  }

  else
  {
    v8 = sub_1000168C8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000168C8()
{
  v114 = v0;
  v2 = *(v0 + 416);
  v3 = sub_10001D014();
  v4 = *(v0 + 400);
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_10000DE30(*(v0 + 392), *(v0 + 400));
  if ((v6 & 1) == 0)
  {
    v25 = *(v0 + 400);
LABEL_15:
    v26 = *(v0 + 376);
    v27 = *(v0 + 384);

LABEL_16:

    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v28 = sub_10001D2B4();
    sub_1000047E8(v28, qword_10002A138);
    v29 = sub_10001D294();
    v30 = sub_10001D734();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get nearest neighbor distance from PE.", v31, 2u);
    }

    v32 = *(v0 + 416);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v35 = *(v0 + 352);

    sub_100019C50();
    swift_allocError();
    *v36 = 14;
    swift_willThrow();

    (*(v34 + 8))(v33, v35);
    goto LABEL_21;
  }

  sub_1000054DC(*(v3 + 56) + 32 * v5, v0 + 232);

  sub_10000210C(&qword_100028350, qword_10001E278);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = *(v0 + 400);
    v43 = *(v0 + 376);
    v44 = *(v0 + 384);

    goto LABEL_16;
  }

  v7 = *(v0 + 272);
  v8 = *(v7 + 16);
  if (v8 != *(*(v0 + 384) + 16))
  {
    v45 = *(v0 + 400);
    v46 = *(v0 + 376);

    goto LABEL_16;
  }

  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 424);
    v11 = &qword_100028710;
    v111 = *(v0 + 272);
    while (1)
    {
      v12 = *(v0 + 400);
      *(v0 + 48) = *(v0 + 392);
      *(v0 + 56) = v12;
      *(v0 + 88) = &type metadata for Float;
      if (v9 >= *(v7 + 16))
      {
        break;
      }

      *(v0 + 64) = *(v7 + 4 * v9 + 32);
      sub_10000210C(&qword_1000286C8, &unk_10001EA30);
      v13 = sub_10001D7F4();
      v14 = v11;
      sub_100019CA4(v0 + 48, v0 + 152, v11, &qword_10001EA78);
      v1 = *(v0 + 152);
      v15 = *(v0 + 160);

      v16 = sub_10000DE30(v1, v15);
      if (v17)
      {
        goto LABEL_55;
      }

      v13[(v16 >> 6) + 8] |= 1 << v16;
      v18 = (v13[6] + 16 * v16);
      *v18 = v1;
      v18[1] = v15;
      sub_100019C40((v0 + 168), (v13[7] + 32 * v16));
      v19 = v13[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_56;
      }

      v22 = *(v0 + 384);
      v13[2] = v21;

      v11 = v14;
      sub_1000064C0(v0 + 48, v14, &qword_10001EA78);
      if (v9 >= *(v22 + 16))
      {
        goto LABEL_57;
      }

      v23 = *(v0 + 384) + ((*(*(v0 + 328) + 80) + 32) & ~*(*(v0 + 328) + 80)) + *(*(v0 + 328) + 72) * v9;
      v24._rawValue = v13;
      sub_10001D314(v24, 0);
      if (v10)
      {
        v53 = *(v0 + 416);
        v54 = *(v0 + 400);
        v56 = *(v0 + 376);
        v55 = *(v0 + 384);
        (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

        goto LABEL_41;
      }

      ++v9;

      v1 = 0;
      v7 = v111;
      if (v8 == v9)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_38;
  }

  v1 = *(v0 + 424);
LABEL_27:
  v47 = *(v0 + 416);
  v48 = *(v0 + 400);

  v49 = *(v0 + 368);
  v50 = *(v0 + 296);
  sub_10001D4A4();
  v51 = *(v0 + 384);
  if (v1)
  {
    v52 = *(v0 + 376);
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

LABEL_41:

    goto LABEL_21;
  }

  v57 = *(v51 + 16);
  if (v57)
  {
    v58 = *(v0 + 328);
    v113[0] = _swiftEmptyArrayStorage;
    sub_10000D74C(0, v57, 0);
    v1 = _swiftEmptyArrayStorage;
    v59 = *(v58 + 16);
    v58 += 16;
    v60 = v51 + ((*(v58 + 64) + 32) & ~*(v58 + 64));
    v110 = *(v58 + 56);
    v112 = v59;
    v61 = (v58 - 8);
    do
    {
      v62 = *(v0 + 336);
      v63 = *(v0 + 320);
      v112(v62, v60, v63);
      v64 = sub_10001D324();
      (*v61)(v62, v63);
      v113[0] = v1;
      v66 = v1[2];
      v65 = v1[3];
      if (v66 >= v65 >> 1)
      {
        sub_10000D74C((v65 > 1), v66 + 1, 1);
        v1 = v113[0];
      }

      v1[2] = v66 + 1;
      v1[v66 + 4] = v64;
      v60 += v110;
      --v57;
    }

    while (v57);
    v67 = *(v0 + 384);
  }

  else
  {

    v1 = _swiftEmptyArrayStorage;
  }

  if (qword_100028248 != -1)
  {
    goto LABEL_58;
  }

LABEL_38:
  v68 = sub_10001D2B4();
  sub_1000047E8(v68, qword_10002A138);

  v69 = sub_10001D294();
  v70 = sub_10001D724();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v113[0] = v72;
    *v71 = 136315138;
    sub_10000210C(&qword_100028708, &qword_10001EA70);
    v73 = sub_10001D684();
    v75 = sub_100004CF4(v73, v74, v113);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Encoding metadata with %s", v71, 0xCu);
    sub_100005490(v72);
  }

  v76 = *(v0 + 368);
  v77 = *(v0 + 296);
  sub_10001D4B4();
  sub_10000210C(&qword_1000286F0, &qword_10001EA58);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10001DFC0;
  *(v78 + 56) = sub_10000210C(&qword_1000286F8, &qword_10001EA60);
  *(v78 + 32) = v1;
  sub_10001D2D4();

  if (!*(v0 + 224))
  {
    v101 = *(v0 + 376);

    sub_1000064C0(v0 + 200, &qword_100028700, &qword_10001EA68);
LABEL_51:
    v103 = sub_10001D294();
    v104 = sub_10001D734();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Running metadata encoding Morpheus program failed.", v105, 2u);
    }

    v106 = *(v0 + 360);
    v107 = *(v0 + 368);
    v108 = *(v0 + 352);

    sub_100019C50();
    swift_allocError();
    *v109 = 13;
    swift_willThrow();

    (*(v106 + 8))(v107, v108);
LABEL_21:
    v37 = *(v0 + 368);
    v38 = *(v0 + 336);
    v39 = *(v0 + 344);

    v40 = *(v0 + 8);

    return v40();
  }

  sub_10000210C(&qword_100028350, qword_10001E278);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v102 = *(v0 + 376);

    goto LABEL_51;
  }

  v79 = *(v0 + 264);

  v80 = sub_10001D294();
  v81 = sub_10001D724();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v113[0] = v83;
    *v82 = 136315138;
    v84 = sub_10001D684();
    v86 = sub_100004CF4(v84, v85, v113);

    *(v82 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v80, v81, "Encoded metadata: %s", v82, 0xCu);
    sub_100005490(v83);
  }

  v88 = *(v0 + 368);
  v87 = *(v0 + 376);
  v90 = *(v0 + 352);
  v89 = *(v0 + 360);
  v91 = *(v0 + 336);
  v92 = *(v0 + 344);
  v93 = sub_10000C904(v79);
  v95 = v94;

  sub_10000C6A4(v87);

  v96 = sub_10001D024();
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  sub_1000068E4(v93, v95);
  v99 = sub_10001D004();

  sub_100006520(v93, v95);
  (*(v89 + 8))(v88, v90);

  v100 = *(v0 + 8);

  return v100(v99);
}

uint64_t sub_100017404()
{
  (*(v0[45] + 8))(v0[46], v0[44]);
  v1 = v0[53];
  v2 = v0[46];
  v4 = v0[42];
  v3 = v0[43];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001749C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_10001CF54();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_10001D3B4();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_10001D464();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = sub_10001D454();
  v4[29] = v14;
  v15 = *(v14 - 8);
  v4[30] = v15;
  v16 = *(v15 + 64) + 15;
  v4[31] = swift_task_alloc();
  v17 = *(*(sub_10000210C(&qword_100028688, &qword_10001E9D8) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v18 = sub_10001D424();
  v4[33] = v18;
  v19 = *(v18 - 8);
  v4[34] = v19;
  v20 = *(v19 + 64) + 15;
  v4[35] = swift_task_alloc();
  v21 = *(*(sub_10000210C(&qword_100028690, &qword_10001E9E0) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v22 = *(*(sub_10000210C(&qword_100028698, &qword_10001E9E8) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v23 = *(*(sub_10000210C(&qword_1000286A0, &qword_10001E9F0) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v24 = type metadata accessor for PrivateEvolutionPluginArgs();
  v4[44] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_10001781C, 0, 0);
}

uint64_t sub_10001781C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 128);

  sub_10001A190(v1);
  v16 = *(v0 + 352);
  v15 = *(v0 + 360);
  v17 = *(v0 + 344);
  v18 = *(v0 + 328);
  v19 = *(v0 + 296);
  v20 = *(v0 + 240);
  v83 = *(v0 + 232);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  *(v0 + 368) = sub_10000C9CC(v15);
  *(v0 + 376) = v24;
  sub_10001D394();
  v25 = v21;
  v26 = *(v22 + 56);
  v26(v18, 1, 1, v25);
  v27 = *(v15 + *(v16 + 76));
  v28 = *(v16 + 68);
  *(v0 + 512) = v28;
  sub_100019CA4(v15 + v28, v19, &qword_100028690, &qword_10001E9E0);
  v29 = *(v20 + 48);
  *(v0 + 384) = v29;
  *(v0 + 392) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v30 = v29(v19, 1, v83);
  v31 = *(v0 + 296);
  if (v30 == 1)
  {
    sub_1000064C0(*(v0 + 296), &qword_100028690, &qword_10001E9E0);
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_10:
    v35 = *(v0 + 320);
    v36 = *(v0 + 160);
LABEL_13:
    v26(v35, 1, 1, v36);
    goto LABEL_15;
  }

  v32 = *(v0 + 232);
  v33 = *(v0 + 240);
  v34 = sub_10001D434();
  (*(v33 + 8))(v31, v32);
  if ((v34 & 1) == 0 && (v27 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v37 = *(v0 + 336);
  v38 = *(v0 + 184);
  v39 = *(v0 + 192);
  sub_100019CA4(*(v0 + 344), v37, &qword_1000286A0, &qword_10001E9F0);
  v40 = (*(v39 + 48))(v37, 1, v38);
  v41 = *(v0 + 336);
  v42 = *(v0 + 320);
  if (v40 == 1)
  {
    v43 = *(v0 + 160);
    sub_1000064C0(*(v0 + 336), &qword_1000286A0, &qword_10001E9F0);
    v35 = v42;
    v36 = v43;
    goto LABEL_13;
  }

  v44 = *(v0 + 184);
  v45 = *(v0 + 192);
  v46 = *(v0 + 320);
  sub_10001D374();
  (*(v45 + 8))(v41, v44);
LABEL_15:
  v47 = *(v0 + 264);
  v48 = *(v0 + 272);
  v49 = *(v0 + 256);
  sub_100019CA4(*(v0 + 360) + *(*(v0 + 352) + 64), v49, &qword_100028688, &qword_10001E9D8);
  if ((*(v48 + 48))(v49, 1, v47) == 1)
  {
    sub_1000064C0(*(v0 + 256), &qword_100028688, &qword_10001E9D8);
    *(v0 + 424) = 0;
    v51 = *(v0 + 384);
    v50 = *(v0 + 392);
    v52 = *(v0 + 288);
    v53 = *(v0 + 232);
    sub_100019CA4(*(v0 + 360) + *(v0 + 512), v52, &qword_100028690, &qword_10001E9E0);
    v54 = v51(v52, 1, v53);
    v55 = *(v0 + 288);
    if (v54 == 1)
    {
      sub_1000064C0(*(v0 + 288), &qword_100028690, &qword_10001E9E0);
      *(v0 + 456) = 0;
      v56 = *(*(v0 + 360) + *(*(v0 + 352) + 72));
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v84 = sub_100015A6C;
          v72 = swift_task_alloc();
          *(v0 + 496) = v72;
          *v72 = v0;
          v73 = sub_1000192F8;
LABEL_29:
          v72[1] = v73;
          v74 = *(v0 + 360);
          v75 = *(v0 + 136);
          v76 = *(v0 + 144);
          v77 = *(v0 + 128);

          return v84(0, v74, v77, v75, v76);
        }
      }

      else if (*(*(v0 + 360) + *(*(v0 + 352) + 72)))
      {
        v57 = swift_task_alloc();
        *(v0 + 464) = v57;
        *v57 = v0;
        v57[1] = sub_100018938;

        return sub_1000149A0(0);
      }

      v84 = sub_100015040;
      v72 = swift_task_alloc();
      *(v0 + 480) = v72;
      *v72 = v0;
      v73 = sub_100018E18;
      goto LABEL_29;
    }

    (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 288), *(v0 + 232));
    v63 = *(v0 + 376);
    v64 = *(v0 + 360);
    v65 = *(v0 + 344);
    v67 = *(v0 + 320);
    v66 = *(v0 + 328);
    v68 = *(v0 + 240);
    v69 = *(v0 + 248);
    v70 = *(v0 + 232);

    sub_100019B7C();
    swift_allocError();
    *v71 = 4;
    swift_willThrow();
    (*(v68 + 8))(v69, v70);
    sub_1000064C0(v67, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v66, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v65, &qword_1000286A0, &qword_10001E9F0);
    sub_100019B20(v64);
    v3 = *(v0 + 360);
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v78 = *(v0 + 256);
    v79 = *(v0 + 248);
    v80 = *(v0 + 224);
    v81 = *(v0 + 200);
    v82 = *(v0 + 176);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
    v58 = swift_task_alloc();
    *(v0 + 400) = v58;
    *v58 = v0;
    v58[1] = sub_100017F00;
    v59 = *(v0 + 312);
    v60 = *(v0 + 320);
    v61 = *(v0 + 280);
    v62 = *(v0 + 152);

    return sub_10000B76C(v59, v61, v60);
  }
}

uint64_t sub_100017F00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v7 = *(v4 + 376);

    v8 = sub_1000197D8;
  }

  else
  {
    *(v4 + 416) = a1;
    v8 = sub_100018030;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100018030()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  sub_1000064C0(v2, &qword_100028698, &qword_10001E9E8);
  sub_100019BD0(v3, v2);
  v4 = *(v0 + 408);
  *(v0 + 424) = v1;
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 288);
  v8 = *(v0 + 232);
  sub_100019CA4(*(v0 + 360) + *(v0 + 512), v7, &qword_100028690, &qword_10001E9E0);
  v9 = v6(v7, 1, v8);
  v10 = *(v0 + 288);
  if (v9 == 1)
  {
    sub_1000064C0(*(v0 + 288), &qword_100028690, &qword_10001E9E0);
    *(v0 + 456) = v1;
    v11 = *(*(v0 + 360) + *(*(v0 + 352) + 72));
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v65 = sub_100015A6C;
        v28 = swift_task_alloc();
        *(v0 + 496) = v28;
        *v28 = v0;
        v29 = sub_1000192F8;
LABEL_13:
        v28[1] = v29;
        v30 = *(v0 + 360);
        v31 = *(v0 + 136);
        v32 = *(v0 + 144);
        v33 = *(v0 + 128);

        return v65(v1, v30, v33, v31, v32);
      }
    }

    else if (*(*(v0 + 360) + *(*(v0 + 352) + 72)))
    {
      v12 = swift_task_alloc();
      *(v0 + 464) = v12;
      *v12 = v0;
      v12[1] = sub_100018938;

      return sub_1000149A0(v1);
    }

    v65 = sub_100015040;
    v28 = swift_task_alloc();
    *(v0 + 480) = v28;
    *v28 = v0;
    v29 = sub_100018E18;
    goto LABEL_13;
  }

  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 288), *(v0 + 232));
  if (!v1)
  {
    v34 = *(v0 + 376);
    v35 = *(v0 + 360);
    v36 = *(v0 + 344);
    v38 = *(v0 + 320);
    v37 = *(v0 + 328);
    v39 = *(v0 + 240);
    v40 = *(v0 + 248);
    v41 = *(v0 + 232);

    sub_100019B7C();
    swift_allocError();
    *v42 = 4;
    swift_willThrow();
    (*(v39 + 8))(v40, v41);
    sub_1000064C0(v38, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v37, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v36, &qword_1000286A0, &qword_10001E9F0);
    v27 = v35;
    goto LABEL_17;
  }

  v14 = *(v0 + 248);
  v15 = *(v0 + 224);
  v16 = *(v0 + 152) + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_chatPromptResponderFactory;
  v18 = *v16;
  v17 = *(v16 + 8);
  sub_10001D444();
  v18(v15);
  if (v4)
  {
    v19 = *(v0 + 376);
    v61 = *(v0 + 344);
    v63 = *(v0 + 360);
    v20 = *(v0 + 320);
    v59 = *(v0 + 328);
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 208);
    v26 = *(v0 + 216);

    (*(v26 + 8))(v23, v25);
    (*(v21 + 8))(v22, v24);
    sub_1000064C0(v20, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v59, &qword_100028698, &qword_10001E9E8);
    sub_1000064C0(v61, &qword_1000286A0, &qword_10001E9F0);
    v27 = v63;
LABEL_17:
    sub_100019B20(v27);
    v43 = *(v0 + 360);
    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    v47 = *(v0 + 320);
    v46 = *(v0 + 328);
    v49 = *(v0 + 304);
    v48 = *(v0 + 312);
    v51 = *(v0 + 288);
    v50 = *(v0 + 296);
    v52 = *(v0 + 280);
    v57 = *(v0 + 256);
    v58 = *(v0 + 248);
    v60 = *(v0 + 224);
    v62 = *(v0 + 200);
    v64 = *(v0 + 176);

    v53 = *(v0 + 8);

    return v53();
  }

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v54 = async function pointer to getTags(for:taggingArgs:chatPromptResponder:)[1];
  v55 = swift_task_alloc();
  *(v0 + 432) = v55;
  *v55 = v0;
  v55[1] = sub_100018604;
  v56 = *(v0 + 248);

  return getTags(for:taggingArgs:chatPromptResponder:)(v1, v56, v0 + 16);
}

uint64_t sub_100018604(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = v1;

  v7 = v4[53];
  if (v1)
  {
    v8 = v4[47];

    v9 = sub_100019974;
  }

  else
  {

    v4[56] = a1;
    v9 = sub_10001875C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10001875C()
{
  v1 = v0[56];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_100005490(v0 + 2);
  (*(v3 + 8))(v2, v4);
  v0[57] = v1;
  v5 = *(v0[45] + *(v0[44] + 72));
  if (v5 <= 1)
  {
    if (*(v0[45] + *(v0[44] + 72)))
    {
      v6 = swift_task_alloc();
      v0[58] = v6;
      *v6 = v0;
      v6[1] = sub_100018938;

      return sub_1000149A0(v1);
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
LABEL_8:
    v14 = sub_100015040;
    v8 = swift_task_alloc();
    v0[60] = v8;
    *v8 = v0;
    v9 = sub_100018E18;
    goto LABEL_9;
  }

  v14 = sub_100015A6C;
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v9 = sub_1000192F8;
LABEL_9:
  v8[1] = v9;
  v10 = v0[45];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[16];

  return v14(v1, v10, v13, v11, v12);
}

uint64_t sub_100018938(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[58];
  v6 = *v2;
  v4[59] = v1;

  v7 = v3[57];
  if (v1)
  {
    v8 = v4[47];

    v9 = sub_100018C98;
  }

  else
  {

    v9 = sub_100018A88;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100018A88()
{
  v1 = v0[8];
  v2 = v0[46];
  v3 = v0[47];
  v13 = v0[43];
  v14 = v0[45];
  v4 = v0[41];
  v12 = v0[40];
  v5 = v0[38];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];

  sub_10001CF44();
  sub_100019CA4(v4, v5, &qword_100028698, &qword_10001E9E8);
  sub_10001D384();
  sub_10001D3A4();

  (*(v7 + 8))(v6, v8);
  sub_1000064C0(v12, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v13, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v14);

  v10 = v0[1];

  return v10(v1);
}

uint64_t sub_100018C98()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[41];
  sub_1000064C0(v0[40], &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[22];
  v21 = v0[59];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100018E18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[60];
  v6 = *v2;
  v4[61] = v1;

  v7 = v3[57];
  if (v1)
  {
    v8 = v4[47];

    v9 = sub_100019178;
  }

  else
  {

    v9 = sub_100018F68;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100018F68()
{
  v1 = v0[11];
  v2 = v0[46];
  v3 = v0[47];
  v13 = v0[43];
  v14 = v0[45];
  v4 = v0[41];
  v12 = v0[40];
  v5 = v0[38];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];

  sub_10001CF44();
  sub_100019CA4(v4, v5, &qword_100028698, &qword_10001E9E8);
  sub_10001D384();
  sub_10001D3A4();

  (*(v7 + 8))(v6, v8);
  sub_1000064C0(v12, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v13, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v14);

  v10 = v0[1];

  return v10(v1);
}

uint64_t sub_100019178()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[41];
  sub_1000064C0(v0[40], &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[22];
  v21 = v0[61];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000192F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[62];
  v6 = *v2;
  v4[63] = v1;

  v7 = v3[57];
  if (v1)
  {
    v8 = v4[47];

    v9 = sub_100019658;
  }

  else
  {

    v9 = sub_100019448;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100019448()
{
  v1 = v0[14];
  v2 = v0[46];
  v3 = v0[47];
  v13 = v0[43];
  v14 = v0[45];
  v4 = v0[41];
  v12 = v0[40];
  v5 = v0[38];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];

  sub_10001CF44();
  sub_100019CA4(v4, v5, &qword_100028698, &qword_10001E9E8);
  sub_10001D384();
  sub_10001D3A4();

  (*(v7 + 8))(v6, v8);
  sub_1000064C0(v12, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v13, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v14);

  v10 = v0[1];

  return v10(v1);
}

uint64_t sub_100019658()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[41];
  sub_1000064C0(v0[40], &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[22];
  v21 = v0[63];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000197D8()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  (*(v0[34] + 8))(v0[35], v0[33]);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);
  v5 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[25];
  v21 = v0[22];
  v22 = v0[51];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100019974()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  sub_100005490(v0 + 2);
  (*(v6 + 8))(v5, v7);
  sub_1000064C0(v4, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v3, &qword_100028698, &qword_10001E9E8);
  sub_1000064C0(v2, &qword_1000286A0, &qword_10001E9F0);
  sub_100019B20(v1);
  v8 = v0[45];
  v10 = v0[42];
  v9 = v0[43];
  v12 = v0[40];
  v11 = v0[41];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[55];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100019B20(uint64_t a1)
{
  v2 = type metadata accessor for PrivateEvolutionPluginArgs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100019B7C()
{
  result = qword_1000286A8;
  if (!qword_1000286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286A8);
  }

  return result;
}

uint64_t sub_100019BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_100028698, &qword_10001E9E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100019C40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100019C50()
{
  result = qword_1000286D8;
  if (!qword_1000286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286D8);
  }

  return result;
}

uint64_t sub_100019CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000210C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019D14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateEvolutionPluginArgs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019DB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10001D8E4() & 1;
  }
}

uint64_t sub_100019E10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PrivateEvolutionPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateEvolutionPluginError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100019FAC()
{
  result = qword_100028788;
  if (!qword_100028788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028788);
  }

  return result;
}

unint64_t sub_10001A000()
{
  result = qword_100028790;
  if (!qword_100028790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028790);
  }

  return result;
}

unint64_t sub_10001A054()
{
  result = qword_100028798;
  if (!qword_100028798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028798);
  }

  return result;
}

uint64_t sub_10001A0AC()
{
  v0 = sub_10001D2B4();
  sub_10001A12C(v0, qword_10002A138);
  sub_1000047E8(v0, qword_10002A138);
  return sub_10001D2A4();
}

uint64_t *sub_10001A12C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10001A190@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrivateEvolutionPluginArgs();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = objc_opt_self();
  sub_10001D1C4();
  isa = sub_10001D514().super.isa;

  v29 = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:&v29];

  v13 = v29;
  if (v12)
  {
    v14 = sub_10001CF14();
    v16 = v15;

    v17 = sub_10001CE54();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_10001CE44();
    sub_10001CA20(&qword_1000287A0, type metadata accessor for PrivateEvolutionPluginArgs);
    sub_10001CE34();
    if (!v1)
    {
      sub_100006520(v14, v16);

      sub_10001BFB0(v7, v9);
      sub_10001B0B0();
      sub_100019D54(v9, a1);

      return sub_100019B20(v9);
    }

    sub_100006520(v14, v16);
  }

  else
  {
    v20 = v13;
    sub_10001CE84();

    swift_willThrow();
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v21 = sub_10001D2B4();
  sub_1000047E8(v21, qword_10002A138);
  swift_errorRetain();
  v22 = sub_10001D294();
  v23 = sub_10001D734();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Couldn't form PrivateEvolutionPluginArgs: %@", v24, 0xCu);
    sub_1000064C0(v25, &qword_100028340, &qword_10001E850);
  }

  sub_100019B7C();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();
}

uint64_t type metadata accessor for PrivateEvolutionPluginArgs()
{
  result = qword_100028800;
  if (!qword_100028800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001A658(char a1)
{
  result = 0x706E496C65646F4DLL;
  switch(a1)
  {
    case 1:
      result = 0x74754F6C65646F4DLL;
      break;
    case 2:
      result = 0x614E63697274654DLL;
      break;
    case 3:
      result = 0x6E69646465626D45;
      break;
    case 4:
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x754E656C706D6153;
      break;
    case 7:
    case 12:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6C65646F4D6C694DLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x687469726F676C41;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10001A8D4()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1 + 10301);
  return sub_10001D9A4();
}

Swift::Int sub_10001A954()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1 + 10301);
  return sub_10001D9A4();
}

uint64_t sub_10001A99C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CAD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001A9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C8A8();
  v5 = sub_10001A054();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10001AA34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1819047278;
  v5 = 0x800000010001EFC0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000010001EFC0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25968;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 1819047278;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25968;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10001D8E4();
  }

  return v11 & 1;
}

Swift::Int sub_10001AB18()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_10001ABAC()
{
  *v0;
  *v0;
  sub_10001D5A4();
}

Swift::Int sub_10001AC2C()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_10001ACBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CAE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001ACEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1819047278;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000010001EFC0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25968;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001ADEC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001A658(*a1);
  v5 = v4;
  if (v3 == sub_10001A658(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10001D8E4();
  }

  return v8 & 1;
}

Swift::Int sub_10001AE74()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001A658(v1);
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_10001AED8()
{
  sub_10001A658(*v0);
  sub_10001D5A4();
}

Swift::Int sub_10001AF2C()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001A658(v1);
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_10001AF8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10001CDE0();
  *a2 = result;
  return result;
}

unint64_t sub_10001AFBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001A658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001B004@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CDE0();
  *a1 = result;
  return result;
}

uint64_t sub_10001B038(uint64_t a1)
{
  v2 = sub_10001C8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B074(uint64_t a1)
{
  v2 = sub_10001C8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B0B0()
{
  v1 = type metadata accessor for PrivateEvolutionPluginArgs();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v42 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v42 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  result = __chkstk_darwin(v15);
  v20 = &v42 - v19;
  v21 = v0[6];
  if (!v21)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v30 = sub_10001D2B4();
    sub_1000047E8(v30, qword_10002A138);
    sub_100019D54(v0, v5);
    v24 = sub_10001D294();
    v31 = sub_10001D734();
    if (os_log_type_enabled(v24, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      v33 = *(v5 + 6);
      sub_100019B20(v5);
      *(v32 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v31, "minimumNumEvents %lu is not > 0", v32, 0xCu);
    }

    else
    {
      sub_100019B20(v5);
    }

    v29 = 1;
    goto LABEL_23;
  }

  v22 = v0[7];
  if (v22 < v21)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v23 = sub_10001D2B4();
    sub_1000047E8(v23, qword_10002A138);
    sub_100019D54(v0, v11);
    sub_100019D54(v0, v8);
    v24 = sub_10001D294();
    v25 = sub_10001D734();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      v27 = *(v11 + 6);
      sub_100019B20(v11);
      *(v26 + 4) = v27;
      *(v26 + 12) = 2048;
      v28 = *(v8 + 7);
      sub_100019B20(v8);
      *(v26 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "minimumNumEvents %lu is not <= maximumNumEvents %lu", v26, 0x16u);
    }

    else
    {
      sub_100019B20(v8);
      sub_100019B20(v11);
    }

    v29 = 2;
LABEL_23:

    sub_100019B7C();
    swift_allocError();
    *v41 = v29;
    return swift_willThrow();
  }

  v34 = v0[8];
  if (v34 < v21 || v22 < v34)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v35 = sub_10001D2B4();
    sub_1000047E8(v35, qword_10002A138);
    sub_100019D54(v0, v20);
    sub_100019D54(v0, v17);
    sub_100019D54(v0, v14);
    v24 = sub_10001D294();
    v36 = sub_10001D734();
    if (os_log_type_enabled(v24, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218496;
      v38 = *(v20 + 8);
      sub_100019B20(v20);
      *(v37 + 4) = v38;
      *(v37 + 12) = 2048;
      v39 = *(v17 + 6);
      sub_100019B20(v17);
      *(v37 + 14) = v39;
      *(v37 + 22) = 2048;
      v40 = *(v14 + 7);
      sub_100019B20(v14);
      *(v37 + 24) = v40;
      _os_log_impl(&_mh_execute_header, v24, v36, "sampleNumEvents %lu is not in [minimumNumEvents, maximumNumEvents] = [%lu, %lu]", v37, 0x20u);
    }

    else
    {
      sub_100019B20(v14);
      sub_100019B20(v17);
      sub_100019B20(v20);
    }

    v29 = 3;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10001B570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v70 - v5;
  v7 = sub_10000210C(&qword_100028690, &qword_10001E9E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v70 - v9;
  v11 = sub_10000210C(&qword_100028688, &qword_10001E9D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v70 - v13;
  v78 = sub_10000210C(&qword_1000288D8, &qword_10001EE50);
  v76 = *(v78 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v78);
  v17 = &v70 - v16;
  v18 = type metadata accessor for PrivateEvolutionPluginArgs();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v80 = a1;
  sub_100004DD8(a1, v22);
  sub_10001C8FC();
  v77 = v17;
  v24 = v79;
  sub_10001D9B4();
  if (v24)
  {
    return sub_100005490(v80);
  }

  v72 = v6;
  v73 = v10;
  v25 = v76;
  v74 = v18;
  v79 = v21;
  LOBYTE(v82) = 0;
  v26 = sub_10001D844();
  v28 = v79;
  *v79 = v26;
  v28[1] = v29;
  LOBYTE(v82) = 1;
  v28[2] = sub_10001D844();
  v28[3] = v30;
  sub_10000210C(&qword_100028828, "2\r");
  v81 = 2;
  sub_10001C950();
  v70 = 0;
  sub_10001D874();
  v28[4] = v82;
  LOBYTE(v82) = 3;
  v28[5] = sub_10001D864();
  LOBYTE(v82) = 4;
  v28[6] = sub_10001D864();
  LOBYTE(v82) = 5;
  v28[7] = sub_10001D864();
  LOBYTE(v82) = 6;
  v28[8] = sub_10001D864();
  LOBYTE(v82) = 7;
  v28[9] = sub_10001D844();
  v28[10] = v40;
  LOBYTE(v82) = 8;
  v41 = sub_10001D814();
  v71 = 0;
  v28[11] = v41;
  v28[12] = v42;
  v81 = 9;
  v43 = v71;
  sub_10001D834();
  v71 = v43;
  if (v43)
  {
    (*(v25 + 8))(v77, v78);
    v44 = 0;
    v45 = 0;
    v46 = 0;
LABEL_21:
    v54 = v79;
    v31 = v70;
    sub_100005490(v80);
    v32 = v54[1];

    if (!v31)
    {
      v37 = v54[3];
    }

    v33 = v54[4];

    v38 = v54[10];

    v34 = v54[12];

    if (v44)
    {
      v39 = v54[13];

      if (v45)
      {
LABEL_8:
        v35 = v54[15];

        v36 = v74;
        if ((v46 & 1) == 0)
        {
          return result;
        }

        return sub_1000064C0(v54 + v36[16], &qword_100028688, &qword_10001E9D8);
      }
    }

    else if (v45)
    {
      goto LABEL_8;
    }

    v36 = v74;
    if (!v46)
    {
      return result;
    }

    return sub_1000064C0(v54 + v36[16], &qword_100028688, &qword_10001E9D8);
  }

  *(v79 + 13) = v82;
  LOBYTE(v82) = 10;
  v47 = v71;
  v48 = sub_10001D844();
  v71 = v47;
  if (v47)
  {
    (*(v25 + 8))(v77, v78);
    v45 = 0;
    v46 = 0;
    v44 = 1;
    goto LABEL_21;
  }

  v50 = v79;
  *(v79 + 14) = v48;
  *(v50 + 15) = v49;
  LOBYTE(v82) = 11;
  v51 = v71;
  v52 = sub_10001D854();
  v71 = v51;
  if (v51 || (v79[128] = v52 & 1, sub_10001D424(), LOBYTE(v82) = 12, sub_10001CA20(&qword_1000284D0, &type metadata accessor for DataSourceConfig), v53 = v71, sub_10001D834(), (v71 = v53) != 0))
  {
    (*(v25 + 8))(v77, v78);
    v46 = 0;
    v44 = 1;
    v45 = 1;
    goto LABEL_21;
  }

  sub_10001CA68(v14, &v79[v74[16]], &qword_100028688, &qword_10001E9D8);
  sub_10001D454();
  LOBYTE(v82) = 13;
  sub_10001CA20(&qword_1000288F0, &type metadata accessor for TaggingParameters);
  v55 = v71;
  sub_10001D834();
  v71 = v55;
  if (v55)
  {
    (*(v25 + 8))(v77, v78);
    v44 = 1;
    v45 = 1;
    v46 = 1;
    goto LABEL_21;
  }

  sub_10001CA68(v73, &v79[v74[17]], &qword_100028690, &qword_10001E9E0);
  v81 = 14;
  sub_10001C9CC();
  v56 = v71;
  sub_10001D834();
  if (v56)
  {
    (*(v25 + 8))(v77, v78);
    sub_100005490(v80);
    v58 = v79;
    v59 = *(v79 + 1);

    v60 = v58[3];

    v61 = v58[4];

    v62 = v58[10];

    v63 = v58[12];

    v64 = v58[13];

    v65 = v58[15];

    v66 = v74;
    sub_1000064C0(v58 + v74[16], &qword_100028688, &qword_10001E9D8);
    return sub_1000064C0(v58 + v66[17], &qword_100028690, &qword_10001E9E0);
  }

  else
  {
    v79[v74[18]] = v82;
    LOBYTE(v82) = 15;
    v79[v74[19]] = sub_10001D824();
    LOBYTE(v82) = 16;
    v57 = sub_10001D814();
    v67 = &v79[v74[20]];
    *v67 = v57;
    v67[1] = v68;
    sub_10001D4D4();
    LOBYTE(v82) = 17;
    sub_10001CA20(&qword_100028900, &type metadata accessor for MetadataEncodingParameters);
    sub_10001D834();
    (*(v25 + 8))(v77, v78);
    v69 = v79;
    sub_10001CA68(v72, &v79[v74[21]], &qword_1000286D0, &qword_10001EA40);
    sub_100019D54(v69, v75);
    sub_100005490(v80);
    return sub_100019B20(v69);
  }
}

uint64_t sub_10001BFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateEvolutionPluginArgs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PrivateEvolutionPluginArgsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateEvolutionPluginArgsError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001C178(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10000210C(&qword_100028688, &qword_10001E9D8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[16];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10000210C(&qword_100028690, &qword_10001E9E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  v14 = sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[21];

  return v15(v16, a2, v14);
}

uint64_t sub_10001C31C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10000210C(&qword_100028688, &qword_10001E9D8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[16];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10000210C(&qword_100028690, &qword_10001E9E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  v14 = sub_10000210C(&qword_1000286D0, &qword_10001EA40);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[21];

  return v15(v16, a2, a2, v14);
}

void sub_10001C4AC()
{
  sub_10001C744(319, &qword_100028810, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10001C744(319, &qword_100028818, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10001C6E0();
      if (v2 <= 0x3F)
      {
        sub_10001C794(319, &qword_100028830, &type metadata accessor for DataSourceConfig);
        if (v3 <= 0x3F)
        {
          sub_10001C794(319, &qword_100028838, &type metadata accessor for TaggingParameters);
          if (v4 <= 0x3F)
          {
            sub_10001C744(319, &qword_100028840, &type metadata for AlgorithmType, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_10001C744(319, &qword_100028848, &type metadata for Bool, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_10001C794(319, &unk_100028850, &type metadata accessor for MetadataEncodingParameters);
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

void sub_10001C6E0()
{
  if (!qword_100028820)
  {
    sub_100004EDC(&qword_100028828, "2\r");
    v0 = sub_10001D744();
    if (!v1)
    {
      atomic_store(v0, &qword_100028820);
    }
  }
}

void sub_10001C744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10001C794(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001D744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10001C7FC()
{
  result = qword_1000288C0;
  if (!qword_1000288C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288C0);
  }

  return result;
}

unint64_t sub_10001C854()
{
  result = qword_1000288C8;
  if (!qword_1000288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288C8);
  }

  return result;
}

unint64_t sub_10001C8A8()
{
  result = qword_1000288D0;
  if (!qword_1000288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D0);
  }

  return result;
}

unint64_t sub_10001C8FC()
{
  result = qword_1000288E0;
  if (!qword_1000288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288E0);
  }

  return result;
}

unint64_t sub_10001C950()
{
  result = qword_1000288E8;
  if (!qword_1000288E8)
  {
    sub_100004EDC(&qword_100028828, "2\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288E8);
  }

  return result;
}

unint64_t sub_10001C9CC()
{
  result = qword_1000288F8;
  if (!qword_1000288F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288F8);
  }

  return result;
}

uint64_t sub_10001CA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001CA68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000210C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CAD0(uint64_t a1)
{
  if ((a1 - 10301) >= 7)
  {
    return 7;
  }

  else
  {
    return a1 - 10301;
  }
}

uint64_t sub_10001CAE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100024F98;
  v6._object = a2;
  v4 = sub_10001D804(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001CB34()
{
  result = qword_100028908;
  if (!qword_100028908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateEvolutionPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateEvolutionPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CCDC()
{
  result = qword_100028910;
  if (!qword_100028910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028910);
  }

  return result;
}

unint64_t sub_10001CD34()
{
  result = qword_100028918;
  if (!qword_100028918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028918);
  }

  return result;
}

unint64_t sub_10001CD8C()
{
  result = qword_100028920;
  if (!qword_100028920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028920);
  }

  return result;
}

uint64_t sub_10001CDE0()
{
  v0 = sub_10001D904();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}