uint64_t sub_24110F5C0()
{
  v188 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 584);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to send response acknowledgement. error: %@", v8, 0xCu);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 144) = *(v0 + 16);
  v12 = *(v0 + 384);
  if (*(v0 + 152) >> 60 == 15)
  {
    v13 = *(v0 + 432);
    v14 = *(v0 + 368);

    v15 = sub_241165268();
    v16 = sub_241166048();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2410F8000, v15, v16, "The data for the messages paylaod obtained from the People extension was nil.", v17, 2u);
      MEMORY[0x245CDC5E0](v17, -1, -1);
    }

    v18 = *(v0 + 544);
    v19 = *(v0 + 536);
    v20 = *(v0 + 528);
    v21 = *(v0 + 488);
    v175 = *(v0 + 304);
    v181 = *(v0 + 344);
    v22 = *(v0 + 288);
    v167 = *(v0 + 480);
    v171 = *(v0 + 280);
    v23 = *(v0 + 264);
    v164 = *(v0 + 272);
    v24 = *(v0 + 256);

    sub_2411133A8();
    swift_allocError();
    *v25 = xmmword_241167FD0;
    *(v25 + 16) = 7;
    swift_willThrow();

    sub_241102CC0(v0 + 16);
    (*(v23 + 8))(v164, v24);
    (*(v22 + 8))(v175, v171);
    v26 = v181;
    goto LABEL_8;
  }

  v182 = *(v0 + 152);
  v184 = *(v0 + 144);
  v38 = *(v0 + 528);
  sub_2410FC88C(*(v0 + 344), *(v0 + 328), &qword_27E530C48, &qword_241168010);
  v39 = v38;
  sub_2410FC88C(v0 + 144, v0 + 160, &qword_27E530C68, &unk_241168040);
  v40 = sub_241165268();
  v41 = sub_241166068();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 528);
    v44 = *(v0 + 328);
    v43 = *(v0 + 336);
    v45 = *(v0 + 288);
    v168 = *(v0 + 312);
    v172 = *(v0 + 280);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v187[0] = v176;
    *v46 = 136315394;
    sub_2411158A4(v44, v43);
    v48 = *v43;
    v49 = v43[1];
    (*(v45 + 8))(v43 + *(v168 + 48), v172);
    v50 = sub_241156B38(v48, v49, v187);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v42;
    *v47 = v42;
    v51 = v42;
    _os_log_impl(&dword_2410F8000, v40, v41, "Updating message with GUID %s in Messages with response: %@", v46, 0x16u);
    sub_2410FB29C(v47, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v176);
    MEMORY[0x245CDC5E0](v176, -1, -1);
    MEMORY[0x245CDC5E0](v46, -1, -1);
  }

  else
  {
    v52 = *(v0 + 328);

    sub_2410FB29C(v52, &qword_27E530C48, &qword_241168010);
  }

  v53 = *(v0 + 544);
  v157 = *(v0 + 536);
  v162 = *(v0 + 488);
  v165 = *(v0 + 480);
  v55 = *(v0 + 336);
  v54 = *(v0 + 344);
  v56 = *(v0 + 312);
  v169 = *(v0 + 304);
  v57 = *(v0 + 280);
  v58 = *(v0 + 288);
  v59 = *(v0 + 264);
  v159 = *(v0 + 528);
  v160 = *(v0 + 272);
  v173 = *(v0 + 472) + 1;
  v177 = *(v0 + 448);
  v158 = *(v0 + 256);
  sub_2410FC88C(v54, v55, &qword_27E530C48, &qword_241168010);
  v60 = *v55;
  v61 = v55[1];
  v62 = *(v56 + 48);
  v63 = sub_241165DA8();

  v64 = *(v58 + 8);
  (v64)(v55 + v62, v57);
  v65 = sub_2411650F8();
  IMSPIUpdatePluginMessageWithGUID();
  sub_2410FB29C(v0 + 144, &qword_27E530C68, &unk_241168040);

  sub_241102CC0(v0 + 16);

  v67 = *(v59 + 8);
  v66 = (v59 + 8);
  v67(v160, v158);
  (v64)(v169, v57);
  sub_2410FB29C(v54, &qword_27E530C48, &qword_241168010);
  if (v173 == v177)
  {
    v68 = *(v0 + 432);
    v69 = *(v0 + 368);

    v71 = *(v0 + 344);
    v70 = *(v0 + 352);
    v73 = *(v0 + 328);
    v72 = *(v0 + 336);
    v75 = *(v0 + 296);
    v74 = *(v0 + 304);
    v76 = *(v0 + 272);
    v77 = *(v0 + 248);
    v78 = *(v0 + 224);
    v79 = *(v0 + 200);

    v37 = *(v0 + 8);
    goto LABEL_15;
  }

  v81 = *(v0 + 472) + 1;
  *(v0 + 472) = v81;
  v82 = *(v0 + 432);
  if (v81 >= *(v82 + 16))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v185 = *(v0 + 456);
    v83 = *(v0 + 592);
    v85 = *(v0 + 344);
    v84 = *(v0 + 352);
    v86 = *(v0 + 336);
    v87 = *(v0 + 312);
    v64 = *(v0 + 280);
    v88 = *(v0 + 288);
    v178 = *(v0 + 304);
    v183 = *(v0 + 272);
    v66 = &qword_241168010;
    sub_2410FC88C(v82 + ((*(v0 + 596) + 32) & ~*(v0 + 596)) + *(*(v0 + 320) + 72) * v81, v84, &qword_27E530C48, &qword_241168010);
    v89 = *(v84 + 1);
    v90 = *(v87 + 48);
    *v85 = *v84;
    *(v85 + 1) = v89;
    v91 = *(v88 + 32);
    v91(&v85[v90], &v84[v83], v64);
    sub_2410FC88C(v85, v86, &qword_27E530C48, &qword_241168010);
    v92 = *(v86 + 8);

    v91(v178, (v86 + *(v87 + 48)), v64);
    sub_241165B48();
    v93 = MEMORY[0x277CEEE38];
    v57 = sub_241115914(&qword_27E530C50, MEMORY[0x277CEEE38]);
    sub_241115914(&qword_27E530C58, v93);
    sub_241165B38();
    v94 = *(v0 + 184);
    *(v0 + 480) = v94;
    v95 = sub_241165CC8();
    v182 = v94;

    v53 = sub_2411652F8();
    if (!(v53 >> 62))
    {
      v96 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v96)
      {
        goto LABEL_21;
      }

LABEL_45:
      v119 = *(v0 + 432);

      v120 = sub_241165CC8();
      v121 = sub_2411652F8();

      if (v121 >> 62)
      {
        v122 = sub_2411661F8();
        if (v122)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v122)
        {
LABEL_47:
          v187[0] = MEMORY[0x277D84F90];
          sub_241100458(0, v122 & ~(v122 >> 63), 0);
          if (v122 < 0)
          {
            __break(1u);
            swift_once();
            __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
            v108 = sub_241165268();
            v109 = sub_241166048();
            v174 = v66;
            v179 = v64;
            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v187[0] = v111;
              *v110 = 136315138;
              *(v110 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v187);
              _os_log_impl(&dword_2410F8000, v108, v109, "%s derivedPayload was nil", v110, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v111);
              MEMORY[0x245CDC5E0](v111, -1, -1);
              MEMORY[0x245CDC5E0](v110, -1, -1);
            }

            v166 = *(v0 + 304);
            v170 = *(v0 + 344);
            v112 = *(v0 + 264);
            v113 = *(v0 + 272);
            v114 = *(v0 + 256);
            v116 = *(v0 + 216);
            v115 = *(v0 + 224);
            v117 = *(v0 + 208);
            v161 = *(v0 + 288) + 8;
            v163 = *(v0 + 280);
            sub_2411133A8();
            swift_allocError();
            *v118 = v174;
            *(v118 + 8) = 0;
            *(v118 + 16) = 3;
            swift_willThrow();
            (*(v122 + 8))(v179, v57);
            (*(v116 + 8))(v115, v117);
            (*(v112 + 8))(v113, v114);
            v182(v166, v163);
            sub_2410FB29C(v170, &qword_27E530C48, &qword_241168010);

            goto LABEL_9;
          }

          v123 = 0;
          v124 = v187[0];
          v125 = v121;
          v186 = v121 & 0xC000000000000001;
          v126 = v121;
          v127 = v122;
          do
          {
            if (v186)
            {
              v128 = MEMORY[0x245CDBC20](v123, v125);
            }

            else
            {
              v128 = *(v125 + 8 * v123 + 32);
            }

            v129 = v128;
            v130 = sub_241165418();
            v132 = v131;

            v187[0] = v124;
            v134 = *(v124 + 16);
            v133 = *(v124 + 24);
            if (v134 >= v133 >> 1)
            {
              sub_241100458((v133 > 1), v134 + 1, 1);
              v124 = v187[0];
            }

            ++v123;
            *(v124 + 16) = v134 + 1;
            v135 = v124 + 16 * v134;
            *(v135 + 32) = v130;
            *(v135 + 40) = v132;
            v125 = v126;
          }

          while (v127 != v123);

          goto LABEL_58;
        }
      }

      v124 = MEMORY[0x277D84F90];
LABEL_58:
      v136 = *(v0 + 384);
      v137 = *(v0 + 368);

      v138 = sub_241165268();
      v139 = sub_241166048();

      if (os_log_type_enabled(v138, v139))
      {
        v141 = *(v0 + 360);
        v140 = *(v0 + 368);
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v187[0] = v143;
        *v142 = 136315394;
        *(v142 + 4) = sub_241156B38(v141, v140, v187);
        *(v142 + 12) = 2080;
        v144 = MEMORY[0x245CDB850](v124, MEMORY[0x277D837D0]);
        v146 = v145;

        v147 = sub_241156B38(v144, v146, v187);

        *(v142 + 14) = v147;
        _os_log_impl(&dword_2410F8000, v138, v139, "No answer choice in the original question had id %s. originalAnswerIds: %s", v142, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v143, -1, -1);
        MEMORY[0x245CDC5E0](v142, -1, -1);
      }

      else
      {
      }

      v148 = *(v0 + 360);
      v149 = *(v0 + 368);
      v180 = *(v0 + 344);
      v150 = *(v0 + 304);
      v151 = *(v0 + 280);
      v152 = *(v0 + 288);
      v153 = *(v0 + 264);
      v154 = *(v0 + 272);
      v155 = *(v0 + 256);
      sub_2411133A8();
      swift_allocError();
      *v156 = v148;
      *(v156 + 8) = v149;
      *(v156 + 16) = 1;
      swift_willThrow();

      (*(v153 + 8))(v154, v155);
      (*(v152 + 8))(v150, v151);
      v26 = v180;
LABEL_8:
      sub_2410FB29C(v26, &qword_27E530C48, &qword_241168010);
LABEL_9:
      v28 = *(v0 + 344);
      v27 = *(v0 + 352);
      v30 = *(v0 + 328);
      v29 = *(v0 + 336);
      v32 = *(v0 + 296);
      v31 = *(v0 + 304);
      v33 = *(v0 + 272);
      v34 = *(v0 + 248);
      v35 = *(v0 + 224);
      v36 = *(v0 + 200);

      v37 = *(v0 + 8);
LABEL_15:

      return v37();
    }
  }

  v96 = sub_2411661F8();
  if (!v96)
  {
    goto LABEL_45;
  }

LABEL_21:
  v57 = 0;
  while (1)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v97 = MEMORY[0x245CDBC20](v57, v53);
    }

    else
    {
      if (v57 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v97 = *(v53 + 8 * v57 + 32);
    }

    v98 = v97;
    *(v0 + 488) = v97;
    v66 = (v57 + 1);
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v100 = *(v0 + 360);
    v99 = *(v0 + 368);
    if (sub_241165418() == v100 && v101 == v99)
    {
      break;
    }

    v103 = *(v0 + 360);
    v104 = *(v0 + 368);
    v64 = sub_2411663E8();

    if (v64)
    {
      goto LABEL_35;
    }

    ++v57;
    if (v66 == v96)
    {
      goto LABEL_45;
    }
  }

LABEL_35:

  v105 = swift_task_alloc();
  *(v0 + 496) = v105;
  *v105 = v0;
  v105[1] = sub_24110D8A4;
  v107 = *(v0 + 408);
  v106 = *(v0 + 416);

  return sub_2411133FC(v107, v106);
}

uint64_t sub_241110C44()
{
  v1 = v0[71];
  v2 = v0[48];
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[71];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to get the new Messages payload from the People extension. error: %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v11 = v0[71];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[61];
  v36 = v0[38];
  v37 = v0[43];
  v16 = v0[36];
  v34 = v0[60];
  v35 = v0[35];
  v17 = v0[33];
  v32 = v0[32];
  v33 = v0[34];

  sub_2411133A8();
  swift_allocError();
  *v18 = v11;
  *(v18 + 8) = 0;
  *(v18 + 16) = 4;
  swift_willThrow();
  v19 = v11;

  (*(v17 + 8))(v33, v32);
  (*(v16 + 8))(v36, v35);
  sub_2410FB29C(v37, &qword_27E530C48, &qword_241168010);
  v21 = v0[43];
  v20 = v0[44];
  v23 = v0[41];
  v22 = v0[42];
  v25 = v0[37];
  v24 = v0[38];
  v26 = v0[34];
  v27 = v0[31];
  v28 = v0[28];
  v29 = v0[25];

  v30 = v0[1];

  return v30();
}

unint64_t sub_241110EDC(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      v12 = 0;
      if (a3)
      {
        sub_2411662B8();
        MEMORY[0x245CDB790](0xD000000000000018, 0x800000024116AEE0);
        MEMORY[0x245CDB790](a1, a2);
        v6 = 0x800000024116AF00;
        v5 = 0xD000000000000021;
      }

      else
      {
        sub_2411662B8();
        MEMORY[0x245CDB790](0xD000000000000043, 0x800000024116AF30);
        MEMORY[0x245CDB790](a1, a2);
        v5 = 46;
        v6 = 0xE100000000000000;
      }

      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v12 = 0;
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000026, 0x800000024116AE90);
      MEMORY[0x245CDB790](a1, a2);
      v5 = 0xD00000000000001ALL;
      v6 = 0x800000024116AEC0;
LABEL_13:
      MEMORY[0x245CDB790](v5, v6);
      return v12;
    }

    v12 = 0;
    sub_2411662B8();
    v7 = "nsion. Underlying error: ";
    v8 = 0xD000000000000044;
LABEL_16:
    MEMORY[0x245CDB790](v8, v7 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    sub_241166318();
    return v12;
  }

  if (a3 <= 5u)
  {
    v12 = 0;
    if (a3 == 4)
    {
      sub_2411662B8();
      v7 = "Underlying error: ";
      v8 = 0xD000000000000079;
    }

    else
    {
      sub_2411662B8();
      v7 = "provider extension.";
      v8 = 0xD000000000000062;
    }

    goto LABEL_16;
  }

  if (a3 == 6)
  {
    sub_2411662B8();

    v12 = 0xD00000000000002DLL;
    v5 = a1;
    v6 = a2;
    goto LABEL_13;
  }

  if (a1 > 1)
  {
    if (a1 ^ 2 | a2)
    {
      return 0xD00000000000003BLL;
    }

    else
    {
      return 0xD000000000000043;
    }
  }

  else if (a1 | a2)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000060;
  }
}

unint64_t sub_241111270(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v7 = sub_241110EDC(a1, a2, a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v8)
  {
    sub_241166318();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v9;
}

uint64_t sub_241111398(uint64_t a1)
{
  v2 = sub_24111615C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2411113D4(uint64_t a1)
{
  v2 = sub_24111615C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241111410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = sub_241165DA8();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = v7;
  aBlock[4] = sub_241115B48;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241135D58;
  aBlock[3] = &block_descriptor_16;
  v10 = _Block_copy(aBlock);

  IMSPIBatchFetchMessageGUIDsWithBalloonBundleID();
  _Block_release(v10);

  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v11 = sub_241165288();
  __swift_project_value_buffer(v11, qword_27E533A98);

  v12 = sub_241165268();
  v13 = sub_241166038();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(a4, a5, aBlock);
    _os_log_impl(&dword_2410F8000, v12, v13, "Resuming continuation for query with request ID %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  swift_beginAccess();
  v17 = *(v7 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CA0, &qword_241168078);
  sub_241165F78();
}

uint64_t sub_2411116B0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v135 = a5;
  v133 = a3;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  v128 = *(v126 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x28223BE20](v126);
  v127 = (&v119 - v11);
  v134 = sub_241164ED8();
  v136 = *(v134 - 8);
  v12 = *(v136 + 8);
  v13 = MEMORY[0x28223BE20](v134);
  v138 = (&v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v129 = &v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v119 - v18;
  v20 = sub_241164F58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  MEMORY[0x28223BE20](v20);
  v132 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v119 - v26;
  v28 = sub_2411650D8();
  v137 = *(v28 - 8);
  v29 = *(v137 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v30);
  v33 = &v119 - v32;
  if (!a2)
  {
    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    v48 = sub_241165288();
    __swift_project_value_buffer(v48, qword_27E533A98);
    v49 = sub_241165268();
    v50 = sub_241166048();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_18;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2410F8000, v49, v50, "Got back nil message GUID from IMSPI", v51, 2u);
    goto LABEL_13;
  }

  v120 = v31;
  v125 = a4;
  v34 = v20;
  v121 = a6;
  v131 = a1;
  v35 = qword_27E5305B8;

  if (v35 != -1)
  {
LABEL_51:
    swift_once();
  }

  v36 = sub_241165288();
  v37 = __swift_project_value_buffer(v36, qword_27E533A98);

  v38 = v135;

  v130 = v37;
  v39 = sub_241165268();
  v40 = sub_241166038();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v122 = v28;
    v42 = v41;
    v43 = swift_slowAlloc();
    v123 = v34;
    v124 = v21;
    v44 = v43;
    v139[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_241156B38(v131, a2, v139);
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_241156B38(v125, v38, v139);
    _os_log_impl(&dword_2410F8000, v39, v40, "Inspecting ScreenTime request message with GUID %s in Messages DB to see if it matches with request ID %s", v42, 0x16u);
    swift_arrayDestroy();
    v45 = v44;
    v46 = v123;
    v21 = v124;
    MEMORY[0x245CDC5E0](v45, -1, -1);
    v47 = v42;
    v28 = v122;
    MEMORY[0x245CDC5E0](v47, -1, -1);
  }

  else
  {

    v46 = v34;
  }

  sub_2410FC88C(v133, v27, &qword_27E530AB0, &qword_241168080);
  v52 = v137;
  v53 = (*(v137 + 48))(v27, 1, v28);
  v34 = v134;
  if (v53 == 1)
  {
    sub_2410FB29C(v27, &qword_27E530AB0, &qword_241168080);

    v49 = sub_241165268();
    v54 = sub_241166048();

    if (!os_log_type_enabled(v49, v54))
    {

      goto LABEL_18;
    }

    v51 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v139[0] = v55;
    *v51 = 136315138;
    v56 = sub_241156B38(v131, a2, v139);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_2410F8000, v49, v54, "Payload URL for message with GUID %s was nil. Skipping.", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x245CDC5E0](v55, -1, -1);
LABEL_13:
    MEMORY[0x245CDC5E0](v51, -1, -1);
LABEL_18:

    return 0;
  }

  (*(v52 + 32))(v33, v27, v28);
  sub_241164F28();
  if ((*(v21 + 6))(v19, 1, v46) == 1)
  {
    sub_2410FB29C(v19, &qword_27E530AA8, &qword_241167D20);

    v57 = sub_241165268();
    v58 = sub_241166048();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v28;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v139[0] = v61;
      *v60 = 136315138;
      v62 = sub_241156B38(v131, a2, v139);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_2410F8000, v57, v58, "URL components for message with GUID %s was nil. Skipping.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x245CDC5E0](v61, -1, -1);
      MEMORY[0x245CDC5E0](v60, -1, -1);

      (*(v52 + 8))(v33, v59);
    }

    else
    {

      (*(v52 + 8))(v33, v28);
    }

    return 0;
  }

  (*(v21 + 4))(v132, v19, v46);
  v64 = sub_241164F08();
  if (!v64)
  {
    goto LABEL_37;
  }

  v19 = v64;
  v123 = v46;
  v124 = v21;
  v119 = v33;
  v122 = v28;
  v65 = *(v64 + 16);
  if (!v65)
  {
LABEL_28:

    v28 = v122;
    v46 = v123;
    v33 = v119;
    v21 = v124;
LABEL_37:

    v95 = sub_241165268();
    v96 = sub_241166048();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = v28;
      v98 = swift_slowAlloc();
      v99 = v33;
      v100 = swift_slowAlloc();
      v139[0] = v100;
      *v98 = 136315138;
      v101 = sub_241156B38(v131, a2, v139);

      *(v98 + 4) = v101;
      _os_log_impl(&dword_2410F8000, v95, v96, "URL had no request ID for message with GUID %s. Skipping.", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x245CDC5E0](v100, -1, -1);
      MEMORY[0x245CDC5E0](v98, -1, -1);

      (*(v21 + 1))(v132, v46);
      (*(v137 + 8))(v99, v97);
      return 0;
    }

    (*(v21 + 1))(v132, v46);
LABEL_40:
    (*(v137 + 8))(v33, v28);
    return 0;
  }

  v33 = 0;
  v27 = 0x4974736575716572;
  v21 = v136 + 8;
  while (1)
  {
    if (v33 >= *(v19 + 2))
    {
      __break(1u);
      goto LABEL_51;
    }

    (*(v136 + 2))(v138, &v19[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 9) * v33], v34);
    if (sub_241164EB8() == 0x4974736575716572 && v66 == 0xE900000000000044)
    {
      break;
    }

    v28 = sub_2411663E8();

    if (v28)
    {
      goto LABEL_31;
    }

    ++v33;
    (*v21)(v138, v34);
    if (v65 == v33)
    {
      goto LABEL_28;
    }
  }

LABEL_31:

  v67 = (v136 + 32);
  v68 = v129;
  (*(v136 + 4))(v129, v138, v34);
  v69 = sub_241164EC8();
  v71 = v70;
  (*(v67 - 3))(v68, v34);
  v28 = v122;
  v46 = v123;
  v33 = v119;
  v21 = v124;
  if (!v71)
  {
    goto LABEL_37;
  }

  v72 = v125;
  v73 = v135;
  if ((v69 != v125 || v71 != v135) && (sub_2411663E8() & 1) == 0)
  {

    v112 = sub_241165268();
    v113 = sub_241166038();

    LODWORD(v136) = v113;
    v138 = v112;
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v139[0] = v115;
      *v114 = 136315650;
      v116 = sub_241156B38(v131, a2, v139);

      *(v114 + 4) = v116;
      *(v114 + 12) = 2080;
      v117 = sub_241156B38(v69, v71, v139);

      *(v114 + 14) = v117;
      *(v114 + 22) = 2080;
      *(v114 + 24) = sub_241156B38(v72, v73, v139);
      v118 = v138;
      _os_log_impl(&dword_2410F8000, v138, v136, "Message with GUID %s has request ID %s, is not for request with ID %s", v114, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v115, -1, -1);
      MEMORY[0x245CDC5E0](v114, -1, -1);

      (*(v124 + 1))(v132, v46);
      (*(v137 + 8))(v119, v122);
      return 0;
    }

    (*(v124 + 1))(v132, v46);
    goto LABEL_40;
  }

  v74 = v137;
  v75 = *(v137 + 16);
  v76 = v120;
  v75(v120, v33, v28);

  v77 = sub_241165268();
  v78 = v73;
  v79 = sub_241166068();

  if (os_log_type_enabled(v77, v79))
  {
    v80 = swift_slowAlloc();
    v136 = v75;
    v81 = v80;
    v82 = swift_slowAlloc();
    v138 = a2;
    v139[0] = v82;
    v83 = v82;
    *v81 = 136315650;
    *(v81 + 4) = sub_241156B38(v125, v78, v139);
    *(v81 + 12) = 2080;
    LODWORD(v135) = v79;
    v84 = v74;
    v85 = v131;
    *(v81 + 14) = sub_241156B38(v131, v138, v139);
    *(v81 + 22) = 2080;
    sub_241115914(&qword_27E530C70, MEMORY[0x277CC9260]);
    v86 = sub_2411663B8();
    v87 = v77;
    v89 = v88;
    v90 = *(v84 + 8);
    v90(v76, v28);
    v91 = sub_241156B38(v86, v89, v139);

    *(v81 + 24) = v91;
    v92 = v87;
    _os_log_impl(&dword_2410F8000, v87, v135, "Found a match! Request with ID %s has message GUID %s. Payload URL: %s", v81, 0x20u);
    swift_arrayDestroy();
    v93 = v83;
    a2 = v138;
    MEMORY[0x245CDC5E0](v93, -1, -1);
    v94 = v81;
    v75 = v136;
    v33 = v119;
    MEMORY[0x245CDC5E0](v94, -1, -1);
  }

  else
  {

    v90 = *(v74 + 8);
    v90(v76, v28);
    v85 = v131;
  }

  v102 = v28;
  v103 = v121;
  v104 = v127;
  v105 = *(v126 + 48);
  *v127 = v85;
  v104[1] = a2;
  v106 = v104;
  v75(v104 + v105, v33, v28);
  swift_beginAccess();
  v107 = *(v103 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v103 + 16) = v107;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v107 = sub_2411609C8(0, v107[2] + 1, 1, v107);
    *(v121 + 16) = v107;
  }

  v109 = v124;
  v111 = v107[2];
  v110 = v107[3];
  if (v111 >= v110 >> 1)
  {
    v107 = sub_2411609C8(v110 > 1, v111 + 1, 1, v107);
  }

  v107[2] = v111 + 1;
  sub_2411158A4(v106, v107 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v111);
  *(v121 + 16) = v107;
  swift_endAccess();
  v109[1](v132, v123);
  v90(v119, v102);
  return 0;
}

uint64_t sub_241112744(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2411661F8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2411662E8();
  *v1 = result;
  return result;
}

uint64_t sub_2411127E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2411661F8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2411661F8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_241115A18();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C88, &qword_241168068);
            v9 = sub_241112964(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_241165458();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_241112964(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CDBC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2411129E4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2411129EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241112AC4, 0, 0);
}

uint64_t sub_241112AC4()
{
  v27 = v0;
  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  v0[9] = __swift_project_value_buffer(v1, qword_27E533A98);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241156B38(0xD00000000000002CLL, 0x800000024116ABE0, &v26);
    _os_log_impl(&dword_2410F8000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  v6 = *MEMORY[0x277D19700];
  v7 = IMBalloonExtensionIDWithSuffix();
  if (v7)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = v7;
    v11 = sub_241165DD8();
    v13 = v12;

    v0[10] = v13;
    v14 = swift_task_alloc();
    v0[11] = v14;
    v14[2] = v11;
    v14[3] = v13;
    v14[4] = v9;
    v14[5] = v8;
    v15 = *(MEMORY[0x277D859E0] + 4);
    v16 = swift_task_alloc();
    v0[12] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C98, &qword_241168070);
    *v16 = v0;
    v16[1] = sub_241112E0C;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000002CLL, 0x800000024116ABE0, sub_241115AC4, v14, v17);
  }

  else
  {
    v18 = sub_241165268();
    v19 = sub_241166048();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2410F8000, v18, v19, "ScreenTime request messages extension bundle identifier was nil", v20, 2u);
      MEMORY[0x245CDC5E0](v20, -1, -1);
    }

    sub_2411133A8();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 7;
    v23 = v0[7];
    v22 = v0[8];
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_241112E0C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_241112F40, 0, 0);
}

uint64_t sub_241112F40()
{
  v55 = v0;
  v1 = v0[2];
  v2 = v0[9];
  v3 = v0[4];
  if (*(v1 + 16))
  {
    v4 = v0[4];

    v5 = sub_241165268();
    v6 = sub_241166068();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[3];
      v7 = v0[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v53 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_241156B38(v8, v7, &v53);
      *(v9 + 12) = 2080;
      v11 = *(v1 + 16);
      v12 = MEMORY[0x277D84F90];
      if (v11)
      {
        v47 = v10;
        v48 = v9;
        v49 = v6;
        v50 = v5;
        v13 = v0[6];
        v52 = v0[7];
        v14 = v0[5];
        v54 = MEMORY[0x277D84F90];
        sub_241100458(0, v11, 0);
        v12 = v54;
        v51 = v1;
        v15 = v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v16 = *(v13 + 72);
        do
        {
          v17 = v0[7];
          v18 = v0[8];
          sub_2410FC88C(v15, v18, &qword_27E530C48, &qword_241168010);
          sub_2411158A4(v18, v17);
          v19 = *v17;
          v20 = *(v52 + 8);
          v21 = *(v14 + 48);
          v22 = sub_2411650D8();
          (*(*(v22 - 8) + 8))(&v17[v21], v22);
          v54 = v12;
          v24 = *(v12 + 16);
          v23 = *(v12 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_241100458((v23 > 1), v24 + 1, 1);
            v12 = v54;
          }

          *(v12 + 16) = v24 + 1;
          v25 = v12 + 16 * v24;
          *(v25 + 32) = v19;
          *(v25 + 40) = v20;
          v15 += v16;
          --v11;
        }

        while (v11);
        v5 = v50;
        v1 = v51;
        v6 = v49;
        v10 = v47;
        v9 = v48;
      }

      v40 = MEMORY[0x245CDB850](v12, MEMORY[0x277D837D0]);
      v42 = v41;

      v43 = sub_241156B38(v40, v42, &v53);

      *(v9 + 14) = v43;
      _os_log_impl(&dword_2410F8000, v5, v6, "Matching messages for request ID %s have message GUIDs %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    v45 = v0[7];
    v44 = v0[8];

    v46 = v0[1];

    return v46(v1);
  }

  else
  {
    v26 = v0[2];

    v27 = sub_241165268();
    v28 = sub_241166048();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[3];
      v29 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_241156B38(v30, v29, &v54);
      _os_log_impl(&dword_2410F8000, v27, v28, "No ScreenTime request message in the Messages DB matched request ID %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CDC5E0](v32, -1, -1);
      MEMORY[0x245CDC5E0](v31, -1, -1);
    }

    v34 = v0[3];
    v33 = v0[4];
    sub_2411133A8();
    swift_allocError();
    *v35 = v34;
    *(v35 + 8) = v33;
    *(v35 + 16) = 2;
    v37 = v0[7];
    v36 = v0[8];

    swift_willThrow();

    v38 = v0[1];

    return v38();
  }
}

unint64_t sub_2411133A8()
{
  result = qword_27E530C60;
  if (!qword_27E530C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C60);
  }

  return result;
}

uint64_t sub_2411133FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_24111341C, 0, 0);
}

uint64_t sub_24111341C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_241113554;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_241142CF4;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241113554()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_241113C20;
  }

  else
  {
    v3 = sub_241113664;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241113664()
{
  v61 = v0;
  v55 = v0[18];
  v1 = [v55 members];
  sub_241115980();
  v2 = sub_241165EF8();

  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_2411661F8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:

    v6 = 0;
LABEL_26:
    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    v29 = v0[20];
    v30 = sub_241165288();
    __swift_project_value_buffer(v30, qword_27E533A98);
    v31 = v6;

    v32 = sub_241165268();
    v33 = sub_241166048();

    if (os_log_type_enabled(v32, v33))
    {
      v59 = v0[20];
      v34 = v30;
      v35 = v0[19];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v36 = 136315394;
      v39 = v35;
      v30 = v34;
      *(v36 + 4) = sub_241156B38(v39, v59, &v60);
      *(v36 + 12) = 2112;
      *(v36 + 14) = v31;
      *v37 = v6;
      v40 = v31;
      _os_log_impl(&dword_2410F8000, v32, v33, "Responder lacked Apple ID. DSID: %s, member: %@", v36, 0x16u);
      sub_2410FB29C(v37, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x245CDC5E0](v38, -1, -1);
      MEMORY[0x245CDC5E0](v36, -1, -1);
    }

    v41 = v0[20];
    v42 = v0[21];
    v43 = v0[19];
    sub_2411133A8();
    v44 = swift_allocError();
    *v45 = v43;
    *(v45 + 8) = v41;
    *(v45 + 16) = 6;
    swift_willThrow();

    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v30, qword_27E533A98);
    v46 = v44;
    v47 = sub_241165268();
    v48 = sub_241166048();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v44;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_2410F8000, v47, v48, "Failed to fetch family members. error: %@", v49, 0xCu);
      sub_2410FB29C(v50, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v50, -1, -1);
      MEMORY[0x245CDC5E0](v49, -1, -1);
    }

    swift_allocError();
    *v53 = v44;
    *(v53 + 8) = 0;
    *(v53 + 16) = 5;
    swift_willThrow();
    v54 = v0[1];

    return v54();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  v56 = v2 & 0xFFFFFFFFFFFFFF8;
  v57 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v57)
    {
      v5 = MEMORY[0x245CDBC20](v4, v2);
    }

    else
    {
      if (v4 >= *(v56 + 16))
      {
        goto LABEL_23;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = [v5 dsid];
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = v6;
    v10 = v2;
    v11 = v0[19];
    v58 = v0[20];
    v12 = v8;
    v13 = [v8 stringValue];

    v14 = sub_241165DD8();
    v16 = v15;

    if (v14 == v11 && v16 == v58)
    {
      break;
    }

    v18 = v0[19];
    v19 = v0[20];
    v20 = sub_2411663E8();

    v2 = v10;
    v6 = v9;
    if (v20)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_25;
    }
  }

  v6 = v9;
LABEL_18:

  v21 = [v6 appleID];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v0[21];
  v23 = v21;
  v24 = sub_241165DD8();
  v26 = v25;

  v27 = v0[1];

  return v27(v24, v26);
}

uint64_t sub_241113C20()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533A98);
  v5 = v3;
  v6 = sub_241165268();
  v7 = sub_241166048();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2410F8000, v6, v7, "Failed to fetch family members. error: %@", v8, 0xCu);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  sub_2411133A8();
  swift_allocError();
  *v12 = v3;
  *(v12 + 8) = 0;
  *(v12 + 16) = 5;
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_241113DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  v4 = sub_2411651A8();
  v3[45] = v4;
  v5 = *(v4 - 8);
  v3[46] = v5;
  v6 = *(v5 + 64) + 15;
  v3[47] = swift_task_alloc();
  v7 = sub_241165BD8();
  v3[48] = v7;
  v8 = *(v7 - 8);
  v3[49] = v8;
  v9 = *(v8 + 64) + 15;
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241113F08, 0, 0);
}

uint64_t sub_241113F08()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v6 = *(v0 + 336);
  v7 = sub_241165DA8();
  v8 = [objc_opt_self() destinationWithURI_];
  *(v0 + 408) = v8;

  v9 = sub_241165C98();
  v11 = v10;
  (*(v2 + 104))(v1, *MEMORY[0x277CEED80], v3);
  v12 = sub_241165BB8();
  v14 = v13;
  (*(v2 + 8))(v1, v3);
  if (v11)
  {
    if (v9 == v12 && v11 == v14)
    {

LABEL_7:
      v16 = MEMORY[0x277D188E0];
      goto LABEL_9;
    }

    v15 = sub_2411663E8();

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v16 = MEMORY[0x277D18868];
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  v18 = *v16;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v19;
  v20 = sub_2410FB2FC(inited);
  *(v0 + 416) = v20;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v21 = sub_241104184();
  if (!v22)
  {
LABEL_14:

    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    v24 = sub_241165288();
    __swift_project_value_buffer(v24, qword_27E533A98);
    v25 = sub_241165268();
    v26 = sub_241166068();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2410F8000, v25, v26, "Not sending response ack since self account is the responder", v27, 2u);
      MEMORY[0x245CDC5E0](v27, -1, -1);
    }

    v28 = *(v0 + 400);
    v29 = *(v0 + 376);

    v30 = *(v0 + 8);

    return v30();
  }

  if (v21 == *(v0 + 336) && v22 == *(v0 + 344))
  {

    goto LABEL_14;
  }

  v23 = sub_2411663E8();

  if (v23)
  {
    goto LABEL_14;
  }

  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v32 = sub_241165288();
  __swift_project_value_buffer(v32, qword_27E533A98);
  v33 = sub_241165268();
  v34 = sub_241166068();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2410F8000, v33, v34, "Sending response ack", v35, 2u);
    MEMORY[0x245CDC5E0](v35, -1, -1);
  }

  v36 = *(v0 + 376);
  v37 = *(v0 + 352);

  v38 = sub_241165CC8();
  sub_2411653D8();

  v39 = sub_241165CC8();
  *(v0 + 424) = sub_2411653A8();

  v40 = sub_241165C98();
  v42 = 0x6E776F6E6B6E75;
  if (v41)
  {
    v42 = v40;
  }

  v58 = v42;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v44 = swift_allocObject();
  *(v0 + 432) = v44;
  *(v44 + 16) = xmmword_241167630;
  *(v44 + 32) = v8;
  v45 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_241167FE0;
  *(v46 + 32) = 0xD000000000000010;
  *(v46 + 40) = 0x800000024116AA70;
  v47 = sub_241165188();
  v48 = MEMORY[0x277D837D0];
  *(v46 + 48) = v47;
  *(v46 + 56) = v49;
  *(v46 + 72) = v48;
  *(v46 + 80) = 0xD000000000000017;
  *(v46 + 88) = 0x800000024116AA90;
  v50 = MEMORY[0x277D839B0];
  *(v46 + 96) = 1;
  *(v46 + 120) = v50;
  *(v46 + 128) = 0x6369706F74;
  *(v46 + 136) = 0xE500000000000000;
  *(v46 + 144) = sub_241165368();
  *(v46 + 152) = v51;
  *(v46 + 168) = v48;
  *(v46 + 176) = 0x696669746E656469;
  *(v46 + 216) = v48;
  *(v46 + 184) = 0xEA00000000007265;
  *(v46 + 192) = v58;
  *(v46 + 200) = v43;
  v52 = sub_2410FB9E0(v46);
  *(v0 + 440) = v52;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530E80, &qword_241168920);
  swift_arrayDestroy();
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v53 = qword_27E533BE8;
  v54 = swift_task_alloc();
  *(v0 + 448) = v54;
  v54[2] = v53;
  v54[3] = v52;
  v54[4] = v44;
  v54[5] = v20;
  v55 = *(MEMORY[0x277D85A40] + 4);
  v56 = swift_task_alloc();
  *(v0 + 456) = v56;
  *v56 = v0;
  v56[1] = sub_2411145A8;
  v57 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v56, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_24111595C, v54, v57);
}

uint64_t sub_2411145A8()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v10 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_241114794;
  }

  else
  {
    v6 = v2[55];
    v5 = v2[56];
    v7 = v2[54];
    v8 = v2[52];

    v4 = sub_2411146EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2411146EC()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_241114794()
{
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[50];
  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[45];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];
  v12 = v0[58];

  return v11();
}

uint64_t sub_241114874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C78, &qword_241168058);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v120 - v4;
  v6 = sub_2411651A8();
  v130 = *(v6 - 8);
  v131 = v6;
  v7 = *(v130 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v127 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v120 - v10;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v128 = v5;
  v11 = sub_241165288();
  v132 = __swift_project_value_buffer(v11, qword_27E533A80);
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2410F8000, v12, v13, "Trying to derive ATPayload from MessageDetails", v14, 2u);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  v15 = sub_2411654C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AC0, &qword_241168060);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v120 - v21;
  sub_2411654F8();
  if ((*(v16 + 48))(v22, 1, v15) == 1)
  {
    sub_2410FB29C(v22, &qword_27E530AC0, &qword_241168060);
LABEL_9:
    v27 = sub_241165268();
    v28 = sub_241166048();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2410F8000, v27, v28, "MessageDetails.eventSource was unknown", v29, 2u);
      MEMORY[0x245CDC5E0](v29, -1, -1);
    }

    return 0;
  }

  v125 = a1;
  v126 = &v120;
  v23 = (*(v16 + 32))(&v120 - v18, v22, v15);
  MEMORY[0x28223BE20](v23);
  v24 = *MEMORY[0x277D39F38];
  (*(v16 + 104))(&v120 - v18, *MEMORY[0x277D39F38], v15);
  sub_2411159CC();
  v25 = sub_241165D98();
  v26 = *(v16 + 8);
  v26(&v120 - v18, v15);
  if (v25)
  {
    v26(&v120 - v18, v15);
    goto LABEL_9;
  }

  v121 = v26;
  v122 = v16 + 8;
  v123 = v15;
  v124 = &v120 - v18;
  v31 = v125;
  v32 = sub_2411655B8();
  v34 = v33;

  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    v57 = sub_241165268();
    v58 = sub_241166048();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v124;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2410F8000, v57, v58, "MessageDetails.requestID was empty", v61, 2u);
      MEMORY[0x245CDC5E0](v61, -1, -1);
    }

    v121(v60, v123);
    return 0;
  }

  MEMORY[0x28223BE20](v35);
  v37 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v16 + 16);
  v39 = v123;
  v40 = v124;
  v38(v37, v124, v123);
  v41 = (*(v16 + 88))(v37, v39);
  if (MEMORY[0x277D39F38] && v41 == v24 || MEMORY[0x277D39F40] && v41 == *MEMORY[0x277D39F40])
  {
    MEMORY[0x28223BE20](v41);
    v42 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43(v42, v40, v39);
    v44 = sub_241165268();
    v45 = sub_241166048();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v39;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v132 = &v120;
      v49 = v40;
      v50 = v48;
      v133[0] = v48;
      *v47 = 136315138;
      v51 = sub_2411654B8();
      v53 = v52;
      v54 = v42;
      v55 = v121;
      v121(v54, v46);
      v56 = sub_241156B38(v51, v53, v133);

      *(v47 + 4) = v56;
      _os_log_impl(&dword_2410F8000, v44, v45, "MessageDetails.eventSource was unsupported %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x245CDC5E0](v50, -1, -1);
      MEMORY[0x245CDC5E0](v47, -1, -1);

      v55(v49, v46);
    }

    else
    {

      v81 = v121;
      v121(&v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
      v81(v40, v39);
    }

    return 0;
  }

  if (!MEMORY[0x277D39F30] || v41 != *MEMORY[0x277D39F30])
  {
    MEMORY[0x28223BE20](v41);
    v82 = v38;
    v83 = v39;
    v84 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v82(v84, v40, v83);
    v85 = sub_241165268();
    v86 = v40;
    v87 = sub_241166048();
    if (os_log_type_enabled(v85, v87))
    {
      v88 = swift_slowAlloc();
      v132 = &v120;
      v89 = v88;
      v90 = swift_slowAlloc();
      v120 = &v120;
      v91 = v90;
      v133[0] = v90;
      *v89 = 136315138;
      v92 = sub_2411654B8();
      v94 = v93;
      v95 = v84;
      v96 = v121;
      v121(v95, v83);
      v97 = sub_241156B38(v92, v94, v133);

      *(v89 + 4) = v97;
      _os_log_impl(&dword_2410F8000, v85, v87, "MessageDetails.eventSource was unsupported %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x245CDC5E0](v91, -1, -1);
      MEMORY[0x245CDC5E0](v89, -1, -1);

      v98 = v124;
    }

    else
    {

      v96 = v121;
      v121(&v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
      v98 = v86;
    }

    v96(v98, v83);
    v96(v37, v83);
    return 0;
  }

  v120 = &v120;
  v62 = objc_allocWithZone(sub_241165378());
  v63 = sub_241165358();
  sub_2411655B8();
  v64 = v128;
  sub_241165178();

  v66 = v130;
  v65 = v131;
  if ((*(v130 + 48))(v64, 1, v131) == 1)
  {
    sub_2410FB29C(v64, &qword_27E530C78, &qword_241168058);
    v67 = sub_2411655E8();
    v68 = *(v67 - 8);
    v69 = *(v68 + 64);
    MEMORY[0x28223BE20](v67);
    v71 = &v120 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v68 + 16))(v71, v31, v67);
    v72 = sub_241165268();
    v73 = sub_241166048();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v133[0] = v75;
      *v74 = 136315138;
      v76 = sub_2411655B8();
      v132 = &v120;
      v77 = v63;
      v79 = v78;
      (*(v68 + 8))(v71, v67);
      v80 = sub_241156B38(v76, v79, v133);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_2410F8000, v72, v73, "Request ID was not a UUID %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x245CDC5E0](v75, -1, -1);
      MEMORY[0x245CDC5E0](v74, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v71, v67);
    }

    v121(v124, v123);
    return 0;
  }

  v99 = v129;
  (*(v66 + 32))(v129, v64, v65);
  sub_2411653E8();
  (*(v66 + 16))(v127, v99, v65);
  v100 = v63;
  sub_241165E38();
  sub_241165518();
  v132 = v100;
  v101 = sub_241165318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_241167FF0;
  v133[0] = 1;
  v128 = v101;
  sub_2411663B8();
  sub_241165E38();
  v103 = sub_241165458();
  v104 = objc_allocWithZone(v103);
  *(v102 + 32) = sub_241165408();
  v133[0] = 2;
  sub_2411663B8();
  sub_241165E38();
  v105 = objc_allocWithZone(v103);
  *(v102 + 40) = sub_241165408();
  v133[0] = 3;
  sub_2411663B8();
  sub_241165E38();
  v106 = objc_allocWithZone(v103);
  *(v102 + 48) = sub_241165408();
  v107 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v107)
  {
    for (i = 0; i != v107; ++i)
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v109 = MEMORY[0x245CDBC20](i, v102);
      }

      else
      {
        v109 = *(v102 + 8 * i + 32);
      }

      v110 = v109;
      sub_241165448();
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241167630;
  v133[0] = 0;
  sub_2411663B8();
  sub_241165E38();
  v112 = objc_allocWithZone(v103);
  *(inited + 32) = sub_241165408();
  v113 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  v114 = v124;
  if (v113)
  {
    for (j = 0; j != v113; ++j)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v116 = MEMORY[0x245CDBC20](j, inited);
      }

      else
      {
        v116 = *(inited + 8 * j + 32);
      }

      v117 = v116;
      sub_241165448();
    }
  }

  v133[0] = v102;
  sub_24110BDD0(inited);
  v118 = v128;
  sub_241165308();
  sub_241165568();
  sub_241165348();

  (*(v130 + 8))(v129, v131);
  sub_241165CE8();
  sub_241165588();
  sub_241165488();
  v119 = sub_241165C58();

  v121(v114, v123);
  return v119;
}

uint64_t sub_2411158A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241115914(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_241115980()
{
  result = qword_27E5307A0;
  if (!qword_27E5307A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5307A0);
  }

  return result;
}

unint64_t sub_2411159CC()
{
  result = qword_27E530C80;
  if (!qword_27E530C80)
  {
    sub_2411654C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C80);
  }

  return result;
}

unint64_t sub_241115A18()
{
  result = qword_27E530C90;
  if (!qword_27E530C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530C88, &qword_241168068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_241115AD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241115B08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241115B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  result = sub_241165418();
  v14 = HIBYTE(v13) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_63;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v52 = 0;
    v18 = sub_24113049C(result, v13, 10);
    v53 = v49;

    if (v53)
    {
      goto LABEL_63;
    }

LABEL_70:
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    a6[4] = v18;
    return result;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v51[0] = result;
    v51[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v14)
      {
        v15 = v14 - 1;
        if (v14 != 1)
        {
          v18 = 0;
          v28 = v51 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v14)
      {
        v18 = 0;
        v33 = v51;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v14)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v14)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        v22 = v51 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2411662F8();
    v15 = v50;
  }

  v17 = *result;
  if (v17 == 43)
  {
    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v25 = (result + 1);
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_61;
            }

            v27 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_61;
            }

            ++v25;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (v17 == 45)
  {
    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v15) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v15)
  {
    v18 = 0;
    if (result)
    {
      while (1)
      {
        v31 = *result - 48;
        if (v31 > 9)
        {
          goto LABEL_61;
        }

        v32 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          goto LABEL_61;
        }

        v18 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v15)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v18 = 0;
  LOBYTE(v15) = 1;
LABEL_62:
  v52 = v15;
  v36 = v15;

  if ((v36 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_63:

  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v37 = sub_241165288();
  __swift_project_value_buffer(v37, qword_27E533A98);
  v38 = a5;
  v39 = sub_241165268();
  v40 = sub_241166048();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51[0] = v43;
    *v41 = 136315394;
    *(v41 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116AC30, v51);
    *(v41 + 12) = 2112;
    *(v41 + 14) = v38;
    *v42 = v38;
    v44 = v38;
    _os_log_impl(&dword_2410F8000, v39, v40, "%s Unable to derive STAskForTimeAnswer from AskTo answer choice: %@", v41, 0x16u);
    sub_2410FB29C(v42, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x245CDC5E0](v43, -1, -1);
    MEMORY[0x245CDC5E0](v41, -1, -1);
  }

  v45 = sub_241165418();
  v47 = v46;
  sub_2411133A8();
  swift_allocError();
  *v48 = v45;
  *(v48 + 8) = v47;
  *(v48 + 16) = 0;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon23ScreenTimeAnswerHandlerV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2411160A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2411160EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_241116130(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24111615C()
{
  result = qword_27E530CA8;
  if (!qword_27E530CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530CA8);
  }

  return result;
}

uint64_t sub_2411161D0()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A08);
  __swift_project_value_buffer(v0, qword_27E533A08);
  return sub_241165278();
}

uint64_t sub_241116258()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A20);
  __swift_project_value_buffer(v0, qword_27E533A20);
  return sub_241165278();
}

uint64_t sub_24111630C()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A50);
  __swift_project_value_buffer(v0, qword_27E533A50);
  return sub_241165278();
}

uint64_t sub_241116394()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A68);
  __swift_project_value_buffer(v0, qword_27E533A68);
  return sub_241165278();
}

uint64_t sub_241116438()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A98);
  __swift_project_value_buffer(v0, qword_27E533A98);
  return sub_241165278();
}

uint64_t sub_2411164E8()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533AC8);
  __swift_project_value_buffer(v0, qword_27E533AC8);
  return sub_241165278();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_241116654()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533B28);
  __swift_project_value_buffer(v0, qword_27E533B28);
  return sub_241165278();
}

uint64_t sub_241116708()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533B58);
  __swift_project_value_buffer(v0, qword_27E533B58);
  return sub_241165278();
}

uint64_t sub_2411167BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_241165288();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_241165278();
}

uint64_t sub_241116840()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533B88);
  __swift_project_value_buffer(v0, qword_27E533B88);
  return sub_241165278();
}

uint64_t sub_2411168C8()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533BA0);
  __swift_project_value_buffer(v0, qword_27E533BA0);
  return sub_241165278();
}

uint64_t sub_241116950()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533BB8);
  __swift_project_value_buffer(v0, qword_27E533BB8);
  return sub_241165278();
}

uint64_t sub_2411169D8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2411662F8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24113049C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_241116CD8()
{
  v1 = 0xD000000000000030;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000026;
  }

  *v0;
  return result;
}

unint64_t sub_241116D2C(uint64_t a1)
{
  result = 0xD000000000000024;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000003CLL;
    }

    else
    {
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000043, 0x800000024116B720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
      sub_241166318();
      return 0;
    }
  }

  return result;
}

unint64_t sub_241116E20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_241116D2C(a1);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v4)
  {
    sub_241166318();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v5;
}

uint64_t sub_241116F24(uint64_t a1)
{
  v2 = sub_241135B70();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241116F60(uint64_t a1)
{
  v2 = sub_241135B70();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_241116F9C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_2411662B8();
    MEMORY[0x245CDB790](0xD000000000000022, 0x800000024116B810);
    MEMORY[0x245CDB790](a1, a2);
    MEMORY[0x245CDB790](0xD00000000000001BLL, 0x800000024116B840);
    return 0;
  }

  if (a3 == 1)
  {
    sub_2411662B8();
    MEMORY[0x245CDB790](0xD000000000000034, 0x800000024116B7A0);
    swift_getErrorValue();
    v4 = sub_241166458();
    MEMORY[0x245CDB790](v4);

    return 0;
  }

  return 0xD000000000000029;
}

unint64_t sub_2411170E8(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v7 = sub_241116F9C(a1, a2, a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v8)
  {
    sub_241166318();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v9;
}

uint64_t sub_241117210(uint64_t a1)
{
  v2 = sub_241135B1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24111724C(uint64_t a1)
{
  v2 = sub_241135B1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24111729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_24111734C;

  return sub_24111757C(a5, a6);
}

uint64_t sub_24111734C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_2411174EC;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_241117474;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241117474()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2411174EC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24111757C(uint64_t a1, __int16 a2)
{
  *(v3 + 312) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = sub_241165808();
  *(v3 + 152) = v4;
  v5 = *(v4 - 8);
  *(v3 + 160) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v7 = sub_241165C38();
  *(v3 + 176) = v7;
  v8 = *(v7 - 8);
  *(v3 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v10 = sub_241165BD8();
  *(v3 + 200) = v10;
  v11 = *(v10 - 8);
  *(v3 + 208) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  *(v3 + 224) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241117784, 0, 0);
}

uint64_t sub_241117784()
{
  v69 = v0;
  v1 = *(v0 + 144);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_241165C08();

    if (*(v0 + 40))
    {
      v3 = *(v0 + 256);
      v4 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_6;
    }

    sub_2410FB29C(v0 + 16, &qword_27E530CF8, &qword_2411684A0);
  }

  (*(*(v0 + 208) + 56))(*(v0 + 256), 1, 1, *(v0 + 200));
LABEL_6:
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  (*(v10 + 104))(v6, *MEMORY[0x277CEED80], v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = *(v8 + 48);
  sub_2410FC88C(v5, v7, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v6, v7 + v11, &qword_27E530658, &unk_241167410);
  v12 = *(v10 + 48);
  if (v12(v7, 1, v9) != 1)
  {
    v14 = *(v0 + 200);
    sub_2410FC88C(*(v0 + 232), *(v0 + 240), &qword_27E530658, &unk_241167410);
    v15 = v12(v7 + v11, 1, v14);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    if (v15 != 1)
    {
      v67 = *(v0 + 232);
      v22 = v1;
      v24 = *(v0 + 208);
      v23 = *(v0 + 216);
      v25 = *(v0 + 200);
      (*(v24 + 32))(v23, v7 + v11, v25);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
      v26 = sub_241165D98();
      v27 = *(v24 + 8);
      v27(v23, v25);
      sub_2410FB29C(v17, &qword_27E530658, &unk_241167410);
      v27(v16, v25);
      v1 = v22;
      sub_2410FB29C(v67, &qword_27E530658, &unk_241167410);
      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    sub_2410FB29C(*(v0 + 248), &qword_27E530658, &unk_241167410);
    (*(v19 + 8))(v16, v18);
LABEL_11:
    sub_2410FB29C(*(v0 + 232), &qword_27E530650, &qword_241167408);
    goto LABEL_12;
  }

  v13 = *(v0 + 200);
  sub_2410FB29C(*(v0 + 248), &qword_27E530658, &unk_241167410);
  if (v12(v7 + v11, 1, v13) != 1)
  {
    goto LABEL_11;
  }

  sub_2410FB29C(*(v0 + 232), &qword_27E530658, &unk_241167410);
LABEL_17:
  v28 = *(v0 + 136);
  v29 = sub_2411653A8();
  v30 = sub_241165368();
  v32 = v31;

  if (v30 == 0xD00000000000001DLL && 0x800000024116A040 == v32)
  {

LABEL_21:
    if (*(v1 + 24))
    {
      v34 = *(v1 + 24);

      sub_241165C08();

      v35 = *(v0 + 120);
      if (v35)
      {
        v36 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v37 = sub_241165978();
        v35 = v38;
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      }

      else
      {
        sub_2410FB29C(v0 + 96, &qword_27E530CF8, &qword_2411684A0);
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
      v35 = 0;
    }

    v54 = *(v0 + 184);
    v53 = *(v0 + 192);
    v55 = *(v0 + 176);
    v56 = *(v0 + 136);
    v57 = sub_2411653A8();
    (*(v54 + 104))(v53, *MEMORY[0x277CEEE20], v55);
    MEMORY[0x245CDB590](v37, v35, v57, v53);

    (*(v54 + 8))(v53, v55);
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v58 = sub_241165288();
    __swift_project_value_buffer(v58, qword_27E5339F0);
    v59 = sub_241165268();
    v60 = sub_241166068();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2410F8000, v59, v60, "Sending question without acknowledgement alert - via legacy API", v61, 2u);
      MEMORY[0x245CDC5E0](v61, -1, -1);
    }

    v62 = *(v1 + 24);
    *(v0 + 264) = v62;

    v63 = swift_task_alloc();
    *(v0 + 272) = v63;
    *v63 = v0;
    v63[1] = sub_241118068;
    v64 = *(v0 + 136);
    v65 = *(v0 + 144);
    v66 = *(v0 + 312);

    return sub_24112B48C(v64, v66, v62);
  }

  v33 = sub_2411663E8();

  if (v33)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (*(v1 + 24))
  {
    v20 = *(v1 + 24);

    sub_241165C08();

    if (*(v0 + 80))
    {
      v21 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_241165978();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    else
    {
      sub_2410FB29C(v0 + 56, &qword_27E530CF8, &qword_2411684A0);
    }
  }

  v40 = *(v0 + 160);
  v39 = *(v0 + 168);
  v41 = *(v0 + 152);
  v42 = *(v0 + 136);
  sub_241165818();
  v43 = sub_2411653A8();
  (*(v40 + 104))(v39, *MEMORY[0x277CEEB78], v41);
  sub_2411356E8(&qword_27E5309B0, MEMORY[0x277CEEBE8]);
  sub_241165C28();

  (*(v40 + 8))(v39, v41);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v44 = sub_241165288();
  __swift_project_value_buffer(v44, qword_27E5339F0);
  v45 = sub_241165268();
  v46 = sub_241166068();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v68 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_241156B38(0xD000000000000013, 0x800000024116B6C0, &v68);
    _os_log_impl(&dword_2410F8000, v45, v46, "%s on non-screenTimeMoreTimeRequest, rerouting to message compose instead", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x245CDC5E0](v48, -1, -1);
    MEMORY[0x245CDC5E0](v47, -1, -1);
  }

  v49 = swift_task_alloc();
  *(v0 + 296) = v49;
  *v49 = v0;
  v49[1] = sub_241118294;
  v50 = *(v0 + 136);
  v51 = *(v0 + 144);

  return sub_241132828(v50);
}

uint64_t sub_241118068(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *(*v2 + 264);
  v7 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v8 = sub_24111855C;
  }

  else
  {
    *(v4 + 288) = a1;
    v8 = sub_2411181B4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2411181B4()
{
  v1 = v0[36];
  v2 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
  sub_2410FB29C(v0[32], &qword_27E530658, &unk_241167410);

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_241118294()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_241118484;
  }

  else
  {
    v3 = sub_2411183A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2411183A8()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];
  sub_2410FB29C(v0[32], &qword_27E530658, &unk_241167410);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_241118484()
{
  v1 = v0[38];
  v2 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
  sub_2410FB29C(v0[32], &qword_27E530658, &unk_241167410);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24111855C()
{
  v1 = v0[35];
  v2 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
  sub_2410FB29C(v0[32], &qword_27E530658, &unk_241167410);

  v8 = v0[1];

  return v8();
}

void sub_24111868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_241165EE8();
    if (a2)
    {
LABEL_3:
      v6 = sub_241165048();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_2411187FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v16;
  v8[3] = v17;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2411188CC;

  return sub_2411189E0(a5, a6, a7, a8);
}

uint64_t sub_2411188CC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_241135C04;
  }

  else
  {
    v3 = sub_241135C20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2411189E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = sub_241165848();
  v5[34] = v6;
  v7 = *(v6 - 8);
  v5[35] = v7;
  v8 = *(v7 + 64) + 15;
  v5[36] = swift_task_alloc();
  v9 = sub_241165BD8();
  v5[37] = v9;
  v10 = *(v9 - 8);
  v5[38] = v10;
  v11 = *(v10 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  v5[42] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v15 = sub_241165728();
  v5[56] = v15;
  v16 = *(v15 - 8);
  v5[57] = v16;
  v17 = *(v16 + 64) + 15;
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241118C70, 0, 0);
}

uint64_t sub_241118C70()
{
  v272 = v0;
  v1 = v0[33];
  if (!*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
  (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

  v5 = sub_241165B78();

  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E5339F0);
    v9 = sub_241165268();
    v10 = sub_241166048();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v271[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v271);
      _os_log_impl(&dword_2410F8000, v9, v10, "%s Client is missing required entitlement com.apple.asktod", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v251 = v1;
  if (*(v1 + 24))
  {

    sub_241165C08();

    if (v0[17])
    {
      v6 = v0[55];
      v7 = v0[18];
      __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
      goto LABEL_17;
    }

    sub_2410FB29C((v0 + 14), &qword_27E530CF8, &qword_2411684A0);
  }

  (*(v0[38] + 56))(v0[55], 1, 1, v0[37]);
LABEL_17:
  v27 = v0[54];
  v26 = v0[55];
  v28 = v0[45];
  v29 = v0[42];
  v30 = v0[37];
  v31 = v0[38];
  v245 = *MEMORY[0x277CEED68];
  v255 = v31[13];
  v255(v27);
  v248 = v31[7];
  v248(v27, 0, 1, v30);
  v246 = v29;
  v32 = *(v29 + 48);
  sub_2410FC88C(v26, v28, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v27, v28 + v32, &qword_27E530658, &unk_241167410);
  v33 = v31[6];
  v0[59] = v33;
  v0[60] = (v31 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v268 = v0;
  v261 = v33;
  if (v33(v28, 1, v30) == 1)
  {
    v34 = v0[37];
    sub_2410FB29C(v0[54], &qword_27E530658, &unk_241167410);
    if (v33(v28 + v32, 1, v34) == 1)
    {
      sub_2410FB29C(v0[45], &qword_27E530658, &unk_241167410);
LABEL_31:
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v66 = sub_241165288();
      __swift_project_value_buffer(v66, qword_27E5339F0);
      v67 = sub_241165268();
      v68 = sub_241166068();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v0[55];
      if (v69)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v271[0] = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v271);
        _os_log_impl(&dword_2410F8000, v67, v68, "%s called from tests. Skipping.", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x245CDC5E0](v72, -1, -1);
        MEMORY[0x245CDC5E0](v71, -1, -1);
      }

      sub_2410FB29C(v70, &qword_27E530658, &unk_241167410);
      v73 = v0[58];
      v75 = v0[54];
      v74 = v0[55];
      v77 = v0[52];
      v76 = v0[53];
      v78 = v0[50];
      v79 = v0[51];
      v81 = v0[48];
      v80 = v0[49];
      v82 = v0[47];
      v250 = v0[46];
      v253 = v0[45];
      v256 = v0[44];
      v258 = v0[43];
      v262 = v0[41];
      v264 = v0[40];
      v267 = v0[39];
      v269 = v0[36];

      v24 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v35 = v0[37];
  sub_2410FC88C(v0[45], v0[53], &qword_27E530658, &unk_241167410);
  v36 = v33(v28 + v32, 1, v35);
  v37 = v0[53];
  v38 = v0[54];
  if (v36 == 1)
  {
    v39 = v0[37];
    v40 = v0[38];
    sub_2410FB29C(v0[54], &qword_27E530658, &unk_241167410);
    (*(v40 + 8))(v37, v39);
LABEL_22:
    sub_2410FB29C(v0[45], &qword_27E530650, &qword_241167408);
    goto LABEL_23;
  }

  v266 = v0[45];
  v61 = v0[41];
  v62 = v0[38];
  v63 = v0[37];
  (*(v62 + 32))(v61, v28 + v32, v63);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
  v64 = sub_241165D98();
  v65 = *(v62 + 8);
  v65(v61, v63);
  sub_2410FB29C(v38, &qword_27E530658, &unk_241167410);
  v65(v37, v63);
  sub_2410FB29C(v266, &qword_27E530658, &unk_241167410);
  if (v64)
  {
    goto LABEL_31;
  }

LABEL_23:
  v42 = v0[35];
  v41 = v0[36];
  v43 = v0[34];
  v44 = v0[29];
  v0[61] = sub_241165858();
  sub_241165C98();
  v45 = sub_241165CC8();
  v46 = sub_2411653A8();

  v47 = *MEMORY[0x277CEEBF8];
  v48 = *(v42 + 104);
  v0[62] = v48;
  v0[63] = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v244 = v48;
  v48(v41, v47, v43);
  v0[64] = sub_2411356E8(&qword_27E530D38, MEMORY[0x277CEEC28]);
  sub_241165C28();

  v49 = *(v42 + 8);
  v0[65] = v49;
  v0[66] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v243 = v49;
  v49(v41, v43);
  if (qword_27E530580 != -1)
  {
LABEL_114:
    swift_once();
  }

  v50 = v0[33];
  v51 = sub_241165288();
  v0[67] = __swift_project_value_buffer(v51, qword_27E5339F0);

  v52 = sub_241165268();
  v53 = sub_241166068();

  if (!os_log_type_enabled(v52, v53))
  {

    goto LABEL_39;
  }

  v54 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v271[0] = v55;
  *v54 = 136315394;
  *(v54 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v271);
  *(v54 + 12) = 2080;
  if (!*(v251 + 24))
  {
    goto LABEL_37;
  }

  v56 = *(v251 + 24);

  sub_241165C08();

  if (!v268[27])
  {
    sub_2410FB29C((v268 + 24), &qword_27E530CF8, &qword_2411684A0);
LABEL_37:

    v60 = 0xE300000000000000;
    v58 = 7104878;
    goto LABEL_38;
  }

  v57 = v268[28];
  __swift_project_boxed_opaque_existential_1(v268 + 24, v268[27]);
  v58 = sub_241165978();
  v60 = v59;
  __swift_destroy_boxed_opaque_existential_1(v268 + 24);
  if (!v60)
  {
    goto LABEL_37;
  }

LABEL_38:
  v83 = sub_241156B38(v58, v60, v271);

  *(v54 + 14) = v83;
  _os_log_impl(&dword_2410F8000, v52, v53, "%s called by client with bundle ID %s", v54, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CDC5E0](v55, -1, -1);
  MEMORY[0x245CDC5E0](v54, -1, -1);

  v0 = v268;
LABEL_39:
  v84 = v0[55];
  v85 = v0[52];
  v87 = v0[37];
  v86 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CB8, &qword_241168368);
  v88 = *(v86 + 72);
  v89 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_241167FE0;
  v91 = v90 + v89;
  (v255)(v91, *MEMORY[0x277CEED70], v87);
  (v255)(v91 + v88, *MEMORY[0x277CEED88], v87);
  (v255)(v91 + 2 * v88, *MEMORY[0x277CEED90], v87);
  (v255)(v91 + 3 * v88, *MEMORY[0x277CEEDA0], v87);
  v92 = sub_2410FC448(v90);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2410FC88C(v84, v85, &qword_27E530658, &unk_241167410);
  v93 = v261(v85, 1, v87);
  v94 = v0[52];
  if (v93 == 1)
  {

    sub_2410FB29C(v94, &qword_27E530658, &unk_241167410);
    goto LABEL_45;
  }

  v95 = v0[40];
  v96 = v0[37];
  v97 = v0[38];
  v100 = *(v97 + 32);
  v98 = v97 + 32;
  v99 = v100;
  v0[68] = v100;
  v0[69] = v98 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v100(v95, v94, v96);
  v101 = sub_241125140(v95, v92);

  if ((v101 & 1) == 0)
  {
    (*(v0[38] + 8))(v0[40], v0[37]);
LABEL_45:
    v109 = 7104878;
    if (*(v251 + 24))
    {
      v110 = *(v251 + 24);

      sub_241165C08();

      if (v0[22])
      {
        v111 = v0[23];
        __swift_project_boxed_opaque_existential_1(v0 + 19, v0[22]);
        v112 = sub_241165978();
        v114 = v113;
        __swift_destroy_boxed_opaque_existential_1(v0 + 19);
        if (v114)
        {
          v109 = v112;
LABEL_51:

          v115 = sub_241165268();
          v116 = sub_241166048();

          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v271[0] = v118;
            *v117 = 136315394;
            *(v117 + 4) = sub_241156B38(v109, v114, v271);
            *(v117 + 12) = 2080;
            *(v117 + 14) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v271);
            _os_log_impl(&dword_2410F8000, v115, v116, "Client with bundle ID %s was not in the allowlist for %s. Bailing.", v117, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CDC5E0](v118, -1, -1);
            MEMORY[0x245CDC5E0](v117, -1, -1);
          }

          v119 = v0[55];
          sub_2411354F4();
          swift_allocError();
          *v120 = v109;
          *(v120 + 8) = v114;
          *(v120 + 16) = 0;
          swift_willThrow();
          sub_2410FB29C(v119, &qword_27E530658, &unk_241167410);
LABEL_11:
          v14 = v0[58];
          v16 = v0[54];
          v15 = v0[55];
          v18 = v0[52];
          v17 = v0[53];
          v19 = v0[50];
          v20 = v0[51];
          v21 = v0[48];
          v22 = v0[49];
          v23 = v0[47];
          v247 = v0[46];
          v249 = v0[45];
          v252 = v0[44];
          v254 = v0[43];
          v257 = v0[41];
          v260 = v0[40];
          v263 = v0[39];
          v265 = v0[36];

          v24 = v0[1];
LABEL_12:

          return v24();
        }
      }

      else
      {
        sub_2410FB29C((v0 + 19), &qword_27E530CF8, &qword_2411684A0);
      }
    }

    v114 = 0xE300000000000000;
    goto LABEL_51;
  }

  v242 = v99;
  v251 = v98;
  v102 = v0[36];
  v103 = v0[34];
  v104 = v0[29];
  sub_241165C98();
  v105 = sub_241165CC8();
  v106 = sub_2411653A8();

  v244(v102, *MEMORY[0x277CEEC08], v103);
  sub_241165C28();

  v243(v102, v103);
  sub_241165C98();
  v107 = v0[51];
  if (v108)
  {
    sub_241165BA8();
  }

  else
  {
    v248(v0[51], 1, 1, v0[37]);
  }

  v121 = v246;
  v122 = v0[29];
  v123 = sub_241165268();
  v124 = sub_241166068();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = v0[29];
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v271[0] = v127;
    *v126 = 136315394;
    *(v126 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v271);
    *(v126 + 12) = 2080;
    v128 = sub_241165C98();
    if (v129)
    {
      v130 = v129;
    }

    else
    {
      v128 = 7104878;
      v130 = 0xE300000000000000;
    }

    v131 = sub_241156B38(v128, v130, v271);

    *(v126 + 14) = v131;
    _os_log_impl(&dword_2410F8000, v123, v124, "%s Client that originated the request has bundle ID %s", v126, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v127, -1, -1);
    MEMORY[0x245CDC5E0](v126, -1, -1);
  }

  v133 = v0[50];
  v132 = v0[51];
  v134 = v0[44];
  v135 = v0[37];
  (v255)(v133, *MEMORY[0x277CEED80], v135);
  v248(v133, 0, 1, v135);
  v136 = *(v246 + 48);
  sub_2410FC88C(v132, v134, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v133, v134 + v136, &qword_27E530658, &unk_241167410);
  v137 = v261(v134, 1, v135);
  v138 = &off_241167000;
  if (v137 != 1)
  {
    v140 = v0[37];
    sub_2410FC88C(v0[44], v0[49], &qword_27E530658, &unk_241167410);
    v141 = v261(v134 + v136, 1, v140);
    v142 = v0[49];
    v143 = v0[50];
    if (v141 != 1)
    {
      v188 = v0[44];
      v189 = v0[41];
      v190 = v268[38];
      v191 = v268[37];
      v242(v189, v134 + v136, v191);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
      v192 = sub_241165D98();
      v193 = *(v190 + 8);
      v193(v189, v191);
      sub_2410FB29C(v143, &qword_27E530658, &unk_241167410);
      v193(v142, v191);
      v121 = v246;
      v0 = v268;
      sub_2410FB29C(v188, &qword_27E530658, &unk_241167410);
      v138 = &off_241167000;
      if ((v192 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_93;
    }

    v145 = v0[37];
    v144 = v0[38];
    sub_2410FB29C(v0[50], &qword_27E530658, &unk_241167410);
    (*(v144 + 8))(v142, v145);
    v138 = &off_241167000;
LABEL_65:
    sub_2410FB29C(v0[44], &qword_27E530650, &qword_241167408);
    goto LABEL_66;
  }

  v139 = v0[37];
  sub_2410FB29C(v0[50], &qword_27E530658, &unk_241167410);
  if (v261(v134 + v136, 1, v139) != 1)
  {
    goto LABEL_65;
  }

  sub_2410FB29C(v0[44], &qword_27E530658, &unk_241167410);
LABEL_93:
  v194 = v0[29];
  v195 = sub_241165CC8();
  v196 = sub_2411653A8();

  v197 = sub_241165368();
  v199 = v198;

  if (v197 == 0xD00000000000001DLL && 0x800000024116A040 == v199)
  {

LABEL_97:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    inited = swift_initStackObject();
    *(inited + 16) = *(v138 + 63);
    v202 = *MEMORY[0x277D188E0];
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v203;
    sub_2410FB2FC(inited);
    swift_setDeallocating();
    sub_2410FB464(inited + 32);
LABEL_99:

LABEL_100:
    v210 = v0[59];
    v211 = v0[60];
    v212 = v0[46];
    v213 = v0[37];
    sub_2410FC88C(v0[51], v212, &qword_27E530658, &unk_241167410);
    if (v210(v212, 1, v213) == 1)
    {
      v214 = v0[67];
      sub_2410FB29C(v0[46], &qword_27E530658, &unk_241167410);
      v215 = sub_241165268();
      v216 = sub_241166068();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v271[0] = v218;
        *v217 = 136315138;
        *(v217 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v271);
        _os_log_impl(&dword_2410F8000, v215, v216, "%s Request client is not known. Not performing any response tasks.", v217, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v218);
        MEMORY[0x245CDC5E0](v218, -1, -1);
        MEMORY[0x245CDC5E0](v217, -1, -1);
      }

      v219 = swift_task_alloc();
      v0[79] = v219;
      *v219 = v0;
      v219[1] = sub_24111B574;
      v221 = v0[31];
      v220 = v0[32];
      v222 = v0[29];

      return sub_2411575C0(v221, v220, v222);
    }

    else
    {
      v223 = v0[69];
      v224 = v0[39];
      (v0[68])(v224, v0[46], v0[37]);
      v225 = sub_24115A794(v224);
      v0[76] = v225;
      v226 = swift_task_alloc();
      v0[77] = v226;
      *v226 = v0;
      v226[1] = sub_24111B108;
      v227 = v0[29];

      return sub_241134174(v225, v227);
    }
  }

  v200 = sub_2411663E8();

  if (v200)
  {
    goto LABEL_97;
  }

LABEL_66:
  v146 = v0[51];
  v147 = v0[48];
  v148 = v0[43];
  v149 = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v150 = swift_initStackObject();
  *(v150 + 16) = *(v138 + 63);
  v151 = *MEMORY[0x277D18868];
  *(v150 + 32) = sub_241165DD8();
  *(v150 + 40) = v152;
  v246 = sub_2410FB2FC(v150);
  v0[70] = v246;
  swift_setDeallocating();
  sub_2410FB464(v150 + 32);
  (v255)(v147, v245, v149);
  v248(v147, 0, 1, v149);
  v153 = *(v121 + 48);
  sub_2410FC88C(v146, v148, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v147, v148 + v153, &qword_27E530658, &unk_241167410);
  if (v261(v148, 1, v149) == 1)
  {
    v154 = v0[37];
    sub_2410FB29C(v0[48], &qword_27E530658, &unk_241167410);
    if (v261(v148 + v153, 1, v154) == 1)
    {
      v155 = v0[43];

      sub_2410FB29C(v155, &qword_27E530658, &unk_241167410);
      goto LABEL_100;
    }

    goto LABEL_71;
  }

  v156 = v0[37];
  sub_2410FC88C(v0[43], v0[47], &qword_27E530658, &unk_241167410);
  v157 = v261(v148 + v153, 1, v156);
  v158 = v0[47];
  v159 = v0[48];
  if (v157 == 1)
  {
    v161 = v0[37];
    v160 = v0[38];
    sub_2410FB29C(v0[48], &qword_27E530658, &unk_241167410);
    (*(v160 + 8))(v158, v161);
LABEL_71:
    sub_2410FB29C(v0[43], &qword_27E530650, &qword_241167408);
    goto LABEL_72;
  }

  v204 = v0[43];
  v205 = v0[41];
  v207 = v0[37];
  v206 = v0[38];
  v242(v205, v148 + v153, v207);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
  v208 = sub_241165D98();
  v209 = *(v206 + 8);
  v209(v205, v207);
  sub_2410FB29C(v159, &qword_27E530658, &unk_241167410);
  v209(v158, v207);
  v0 = v268;
  sub_2410FB29C(v204, &qword_27E530658, &unk_241167410);
  if (v208)
  {
    goto LABEL_99;
  }

LABEL_72:
  v162 = v0[30];
  v163 = MEMORY[0x277D84F90];
  v270 = MEMORY[0x277D84F90];
  v164 = *(v162 + 16);
  if (v164)
  {
    v165 = 0;
    v166 = v162 + 40;
    v259 = v162 + 40;
    do
    {
      v261 = v163;
      v167 = (v166 + 16 * v165);
      v168 = v165;
      while (1)
      {
        if (v168 >= v164)
        {
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v165 = v168 + 1;
        if (__OFADD__(v168, 1))
        {
          goto LABEL_113;
        }

        v169 = *(v167 - 1);
        v170 = *v167;
        v171 = sub_241165DA8();
        v172 = IDSCopyBestGuessIDForID();

        if (v172)
        {
          break;
        }

        v173 = sub_241165268();
        v174 = sub_241166048();

        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = v164;
          v177 = swift_slowAlloc();
          v271[0] = v177;
          *v175 = 136315138;
          *(v175 + 4) = sub_241156B38(v169, v170, v271);
          _os_log_impl(&dword_2410F8000, v173, v174, "Best guess ID for %s was nil. Skipping destination.", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v177);
          v178 = v177;
          v164 = v176;
          MEMORY[0x245CDC5E0](v178, -1, -1);
          MEMORY[0x245CDC5E0](v175, -1, -1);
        }

        v0 = v268;
        ++v168;
        v167 += 2;
        if (v165 == v164)
        {
          v163 = v261;
          goto LABEL_86;
        }
      }

      MEMORY[0x245CDB820]();
      if (*((v270 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v270 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v179 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241165F18();
      }

      sub_241165F28();
      v0 = v268;
      v163 = v270;
      v166 = v259;
    }

    while (v165 != v164);
  }

LABEL_86:
  v0[71] = v163;
  v180 = v0[29];
  v181 = sub_241165CB8();
  v0[72] = v181;
  if (!v181)
  {
    v228 = v0[29];

    v229 = v228;
    v230 = sub_241165268();
    v231 = sub_241166048();

    if (os_log_type_enabled(v230, v231))
    {
      v232 = v0[29];
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      *v233 = 138412290;
      *(v233 + 4) = v232;
      *v234 = v232;
      v235 = v232;
      _os_log_impl(&dword_2410F8000, v230, v231, "dictionaryRepresentation was nil for payload. Bailing send. payload: %@", v233, 0xCu);
      sub_2410FB29C(v234, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v234, -1, -1);
      MEMORY[0x245CDC5E0](v233, -1, -1);
    }

    v236 = v0[55];
    v237 = v0[51];
    v238 = v0[40];
    v239 = v0[37];
    v240 = v0[38];

    sub_2411354F4();
    swift_allocError();
    *v241 = 0;
    *(v241 + 8) = 0;
    *(v241 + 16) = 2;
    swift_willThrow();
    sub_2410FB29C(v237, &qword_27E530658, &unk_241167410);
    (*(v240 + 8))(v238, v239);
    sub_2410FB29C(v236, &qword_27E530658, &unk_241167410);
    goto LABEL_11;
  }

  v182 = v181;
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v183 = qword_27E533BE8;
  v184 = swift_task_alloc();
  v0[73] = v184;
  v184[2] = v183;
  v184[3] = v182;
  v184[4] = v163;
  v184[5] = v246;
  v185 = *(MEMORY[0x277D85A40] + 4);
  v186 = swift_task_alloc();
  v0[74] = v186;
  *v186 = v0;
  v186[1] = sub_24111AAC4;
  v187 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v186, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_241135BCC, v184, v187);
}

uint64_t sub_24111AAC4()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v10 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = sub_24111AF38;
  }

  else
  {
    v5 = v2[73];
    v6 = v2[72];
    v7 = v2[71];
    v8 = v2[70];

    v4 = sub_24111AC0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24111AC0C()
{
  v32 = v0;
  v29 = *(v0 + 520);
  v30 = *(v0 + 528);
  v1 = *(v0 + 504);
  v28 = *(v0 + 512);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 232);
  sub_241165C98();
  v7 = sub_241165CC8();
  v8 = sub_2411653A8();

  v2(v4, *MEMORY[0x277CEEC00], v5);
  sub_241165C28();

  v29(v4, v5);
  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v11 = *(v0 + 368);
  v12 = *(v0 + 296);
  sub_2410FC88C(*(v0 + 408), v11, &qword_27E530658, &unk_241167410);
  if (v10(v11, 1, v12) == 1)
  {
    v13 = *(v0 + 536);
    sub_2410FB29C(*(v0 + 368), &qword_27E530658, &unk_241167410);
    v14 = sub_241165268();
    v15 = sub_241166068();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, &v31);
      _os_log_impl(&dword_2410F8000, v14, v15, "%s Request client is not known. Not performing any response tasks.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CDC5E0](v17, -1, -1);
      MEMORY[0x245CDC5E0](v16, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 632) = v18;
    *v18 = v0;
    v18[1] = sub_24111B574;
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 232);

    return sub_2411575C0(v20, v19, v21);
  }

  else
  {
    v23 = *(v0 + 552);
    v24 = *(v0 + 312);
    (*(v0 + 544))(v24, *(v0 + 368), *(v0 + 296));
    v25 = sub_24115A794(v24);
    *(v0 + 608) = v25;
    v26 = swift_task_alloc();
    *(v0 + 616) = v26;
    *v26 = v0;
    v26[1] = sub_24111B108;
    v27 = *(v0 + 232);

    return sub_241134174(v25, v27);
  }
}

uint64_t sub_24111AF38()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[55];
  v6 = v0[51];
  v7 = v0[40];
  v8 = v0[37];
  v9 = v0[38];

  sub_2410FB29C(v6, &qword_27E530658, &unk_241167410);
  (*(v9 + 8))(v7, v8);
  sub_2410FB29C(v5, &qword_27E530658, &unk_241167410);
  v30 = v0[75];
  v10 = v0[58];
  v12 = v0[54];
  v11 = v0[55];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v18 = v0[48];
  v17 = v0[49];
  v19 = v0[47];
  v22 = v0[46];
  v23 = v0[45];
  v24 = v0[44];
  v25 = v0[43];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[36];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24111B108()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  v5 = *(v2 + 608);

  if (v0)
  {
    v6 = sub_24111B3C0;
  }

  else
  {
    v6 = sub_24111B23C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24111B23C()
{
  v18 = v0[65];
  v19 = v0[66];
  v14 = v0[63];
  v15 = v0[64];
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[38];
  v4 = v0[36];
  v16 = v0[37];
  v17 = v0[39];
  v5 = v0[34];
  v6 = v0[29];
  sub_241165C98();
  v7 = sub_241165CC8();
  v8 = sub_2411653A8();

  v1(v4, *MEMORY[0x277CEEBF0], v5);
  sub_241165C28();

  v18(v4, v5);
  (*(v3 + 8))(v17, v16);
  v9 = swift_task_alloc();
  v0[79] = v9;
  *v9 = v0;
  v9[1] = sub_24111B574;
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[29];

  return sub_2411575C0(v11, v10, v12);
}

uint64_t sub_24111B3C0()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[37];
  v5 = *(v0[38] + 8);
  v5(v0[39], v4);
  sub_2410FB29C(v2, &qword_27E530658, &unk_241167410);
  v5(v3, v4);
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);
  v26 = v0[78];
  v6 = v0[58];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v12 = v0[50];
  v11 = v0[51];
  v14 = v0[48];
  v13 = v0[49];
  v15 = v0[47];
  v18 = v0[46];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[36];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24111B574()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_24111B8C8;
  }

  else
  {
    v3 = sub_24111B688;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24111B688()
{
  v27 = v0[65];
  v29 = v0[66];
  v21 = v0[63];
  v23 = v0[64];
  v2 = v0[61];
  v1 = v0[62];
  v25 = v0[51];
  v33 = v0[40];
  v35 = v0[55];
  v3 = v0[38];
  v31 = v0[37];
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[29];
  sub_241165C98();
  v7 = sub_241165CC8();
  v8 = sub_2411653A8();

  v1(v4, *MEMORY[0x277CEEC10], v5);
  sub_241165C28();

  v27(v4, v5);
  sub_2410FB29C(v25, &qword_27E530658, &unk_241167410);
  (*(v3 + 8))(v33, v31);
  sub_2410FB29C(v35, &qword_27E530658, &unk_241167410);
  v9 = v0[58];
  v11 = v0[54];
  v10 = v0[55];
  v13 = v0[52];
  v12 = v0[53];
  v14 = v0[50];
  v15 = v0[51];
  v17 = v0[48];
  v16 = v0[49];
  v18 = v0[47];
  v22 = v0[46];
  v24 = v0[45];
  v26 = v0[44];
  v28 = v0[43];
  v30 = v0[41];
  v32 = v0[40];
  v34 = v0[39];
  v36 = v0[36];

  v19 = v0[1];

  return v19();
}

uint64_t sub_24111B8C8()
{
  v1 = v0[55];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  sub_2410FB29C(v0[51], &qword_27E530658, &unk_241167410);
  (*(v4 + 8))(v2, v3);
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);
  v25 = v0[80];
  v5 = v0[58];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v11 = v0[50];
  v10 = v0[51];
  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[43];
  v21 = v0[41];
  v22 = v0[40];
  v23 = v0[39];
  v24 = v0[36];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24111BC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v17;
  v8[3] = v18;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2411188CC;

  return sub_24111BCD8(a5, a6, a7, a8, v16);
}

uint64_t sub_24111BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = sub_241165728();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111BDA0, 0, 0);
}

uint64_t sub_24111BDA0()
{
  v52 = v0;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E5339F0);

  v5 = v3;
  v6 = sub_241165268();
  v7 = sub_241166068();

  if (os_log_type_enabled(v6, v7))
  {
    v48 = v0[18];
    v49 = v0[19];
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51[0] = v13;
    *v11 = 136315906;
    *(v11 + 4) = sub_241156B38(0xD00000000000003ELL, 0x800000024116B610, v51);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_241156B38(v8, v9, v51);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_241156B38(v48, v49, v51);
    *(v11 + 32) = 2112;
    *(v11 + 34) = v10;
    *v12 = v10;
    v14 = v10;
    _os_log_impl(&dword_2410F8000, v6, v7, "%s called with requestID %s, responderDSID: %s, answer: %@", v11, 0x2Au);
    sub_2410FB29C(v12, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v15 = *(v0[20] + 24);
  v0[24] = v15;
  if (v15)
  {
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[21];
    (*(v17 + 104))(v16, *MEMORY[0x277CEEB30], v18);

    v19 = sub_241165B78();
    (*(v17 + 8))(v16, v18);
    if (v19)
    {
      v21 = v0[18];
      v20 = v0[19];
      v23 = v0[16];
      v22 = v0[17];
      v24 = v0[15];

      sub_241115B6C(v23, v22, v21, v20, v24, v0 + 2);
      v33 = v0[19];
      v34 = v0[17];
      v35 = v0[15];

      v36 = v35;
      v37 = sub_241165268();
      v38 = sub_241166068();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v0[18];
        v50 = v0[19];
        v41 = v0[16];
        v40 = v0[17];
        v42 = v0[15];
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51[0] = v45;
        *v43 = 136315650;
        *(v43 + 4) = sub_241156B38(v41, v40, v51);
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_241156B38(v39, v50, v51);
        *(v43 + 22) = 2112;
        *(v43 + 24) = v42;
        *v44 = v42;
        v46 = v42;
        _os_log_impl(&dword_2410F8000, v37, v38, "Calling into ScreenTimeAnswerHandler with requestID %s, responderDSID: %s, answer: %@", v43, 0x20u);
        sub_2410FB29C(v44, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v44, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v45, -1, -1);
        MEMORY[0x245CDC5E0](v43, -1, -1);
      }

      v47 = swift_task_alloc();
      v0[25] = v47;
      *v47 = v0;
      v47[1] = sub_24111C3CC;

      return sub_24110BEC0();
    }
  }

  v25 = sub_241165268();
  v26 = sub_241166048();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v51[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_241156B38(0xD00000000000003ELL, 0x800000024116B610, v51);
    _os_log_impl(&dword_2410F8000, v25, v26, "%s Client is missing required entitlement com.apple.asktod", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CDC5E0](v28, -1, -1);
    MEMORY[0x245CDC5E0](v27, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();
  v30 = v0[23];

  v31 = v0[1];

  return v31();
}

uint64_t sub_24111C3CC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_24111C570;
  }

  else
  {
    v3 = sub_24111C4E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24111C4E0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  *(v0 + 88) = *(v0 + 16);
  sub_2410FB464(v0 + 88);
  *(v0 + 104) = *(v0 + 32);
  sub_2410FB464(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24111C570()
{
  v1 = *(v0 + 192);
  *(v0 + 56) = *(v0 + 16);
  sub_2410FB464(v0 + 56);
  *(v0 + 72) = *(v0 + 32);
  sub_2410FB464(v0 + 72);

  v2 = *(v0 + 208);
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24111C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, char a8)
{
  *(v8 + 80) = v12;
  *(v8 + 88) = v13;
  *(v8 + 138) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a7;
  *(v8 + 136) = a6;
  *(v8 + 56) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D10, &qword_241168508) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111C85C, 0, 0);
}

uint64_t sub_24111C85C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = v1;
    sub_241165BE8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = sub_241165BF8();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v5, v4, 1, v7);
  sub_2410FC88C(v5, v6, &qword_27E530D10, &qword_241168508);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 96);
  if (v9 == 1)
  {
    sub_2410FB29C(*(v0 + 96), &qword_27E530D10, &qword_241168508);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    v11 = MEMORY[0x277CEEDC8];
    *(v0 + 40) = v7;
    *(v0 + 48) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v8 + 32))(boxed_opaque_existential_1, v10, v7);
  }

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_24111CA50;
  v14 = *(v0 + 138);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 136);

  return sub_241125358(v15, v17, v0 + 16, v14);
}

uint64_t sub_24111CA50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_24111CC40;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_2410FB29C(v4 + 16, &qword_27E530CF8, &qword_2411684A0);
    v7 = sub_24111CB90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24111CB90()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  sub_2410FB29C(v0[13], &qword_27E530D10, &qword_241168508);
  v4 = v1;
  v3(v1, 0);

  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24111CC40()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  sub_2410FB29C(v0[13], &qword_27E530D10, &qword_241168508);
  sub_2410FB29C((v0 + 2), &qword_27E530CF8, &qword_2411684A0);
  v4 = v1;
  v3(0, v1);

  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];

  return v7();
}

void sub_24111CE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_241165048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_24111CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_24111CFA0;

  return sub_24111D1A8(a5);
}

uint64_t sub_24111CFA0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_24111D11C;
  }

  else
  {
    v3 = sub_24111D0B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24111D0B4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24111D11C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24111D1A8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_241165728();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111D268, 0, 0);
}

uint64_t sub_24111D268()
{
  v23 = v0;
  v1 = *(v0[8] + 24);
  v0[12] = v1;
  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = v0[7];
      v0[13] = sub_241165AD8();
      v16 = __swift_project_boxed_opaque_existential_1((v0[8] + 160), *(v0[8] + 184));
      v0[14] = v16;
      v17 = sub_241165938();
      v18 = sub_241165328();
      v20 = v19;

      v0[15] = v18;
      v0[16] = v20;
      v21 = *v16;

      return MEMORY[0x2822009F8](sub_24111D52C, v21, 0);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E5339F0);
  v8 = sub_241165268();
  v9 = sub_241166048();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B560, &v22);
    _os_log_impl(&dword_2410F8000, v8, v9, "%s Client is missing required entitlement com.apple.asktod", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24111D52C()
{
  v1 = **(v0 + 112);
  sub_241137810(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2822009F8](sub_24111D5A8, 0, 0);
}

uint64_t sub_24111D5A8()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = sub_241165938();
  sub_24112AFBC(v3, (v0 + 2));

  v4 = v0[5];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = sub_241165938();
    v0[17] = v6;
    v7 = *v5;
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_24111D6F8;

    return sub_24115F8CC(v6, v7);
  }

  else
  {
    v10 = v0[12];
    v11 = v0[13];

    sub_2410FB29C((v0 + 2), &qword_27E530CE0, &qword_2411683F8);
    v12 = v0[11];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24111D6F8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24111D80C, 0, 0);
}

uint64_t sub_24111D80C()
{
  v2 = v0[12];
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24111D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_24111D964;

  return sub_24111DAFC(a5);
}

uint64_t sub_24111D964(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_241135C08;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v7 = sub_24111DA90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24111DA90()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24111DAFC(uint64_t a1)
{
  v1[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_24111DC10;

  return sub_24112D8A8(a1);
}

uint64_t sub_24111DC10(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[8] = a1;

  if (v1)
  {
    v6 = v4[5];
    v5 = v4[6];

    v7 = v4[1];

    return v7(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24111DD58, 0, 0);
  }
}

uint64_t sub_24111DD58()
{
  v58 = v0;
  v1 = *(v0 + 64);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(*(v0 + 32) + 80);
    sub_2410FC88C(v1 + ((v5 + 32) & ~v5), v2, &qword_27E5309F0, &qword_2411692B0);

    sub_2410FC88C(v2, v3, &qword_27E5309F0, &qword_2411692B0);
    v6 = *(v3 + 8);

    v7 = *(v4 + 48);
    v8 = *(v3 + *(v4 + 64));
    v9 = sub_241165CD8();

    v56 = v9;
    if (v9)
    {

      v10 = "ngInMessages(_:)";
      v11 = 0xD00000000000001ALL;
    }

    else
    {
      v11 = 0xD00000000000001FLL;
      v10 = "_findAllMessagesForQuestion(_:)";
    }

    v29 = sub_2411650D8();
    (*(*(v29 - 8) + 8))(v3 + v7, v29);
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 16);
    v31 = sub_241165288();
    __swift_project_value_buffer(v31, qword_27E5339F0);
    v32 = v30;

    v33 = sub_241165268();
    v34 = sub_241166068();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 16);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57[0] = v37;
      *v36 = 136315394;
      v38 = sub_241165328();
      v40 = sub_241156B38(v38, v39, v57);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v41 = sub_241156B38(v11, v10 | 0x8000000000000000, v57);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_2410F8000, v33, v34, "Question %s %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v37, -1, -1);
      MEMORY[0x245CDC5E0](v36, -1, -1);
    }

    else
    {
    }

    v42 = *(v0 + 16);
    v43 = sub_241165268();
    v44 = sub_241166068();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 48);
    if (v45)
    {
      v47 = *(v0 + 16);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57[0] = v49;
      *v48 = 136315650;
      *(v48 + 4) = sub_241156B38(0xD000000000000020, 0x800000024116B510, v57);
      *(v48 + 12) = 1024;
      *(v48 + 14) = v56 == 0;
      *(v48 + 18) = 2080;
      v50 = sub_241165328();
      v52 = sub_241156B38(v50, v51, v57);

      *(v48 + 20) = v52;
      _os_log_impl(&dword_2410F8000, v43, v44, "%s returning isPending: %{BOOL}d for question ID: %s", v48, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v49, -1, -1);
      MEMORY[0x245CDC5E0](v48, -1, -1);
    }

    sub_2410FB29C(v46, &qword_27E5309F0, &qword_2411692B0);
    v54 = *(v0 + 40);
    v53 = *(v0 + 48);

    v27 = *(v0 + 8);
    v28 = v56 == 0;
  }

  else
  {
    v12 = *(v0 + 64);

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 16);
    v14 = sub_241165288();
    __swift_project_value_buffer(v14, qword_27E5339F0);
    v15 = v13;
    v16 = sub_241165268();
    v17 = sub_241166048();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 16);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v57[0] = v20;
      *v19 = 136315138;
      v21 = sub_241165328();
      v23 = sub_241156B38(v21, v22, v57);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2410F8000, v16, v17, "Question %s not found in Messages database", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245CDC5E0](v20, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);

    v27 = *(v0 + 8);
    v28 = 0;
  }

  return v27(v28);
}

uint64_t sub_24111E360(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_241165FA8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a3;
  v20[6] = a7;
  v20[7] = v18;
  v21 = a3;

  sub_24113C95C(0, 0, v16, a8, v20);
}

void sub_24111E4AC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_241165048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_24111E51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v16;
  v8[3] = v17;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2411188CC;

  return sub_24111E5EC(a5, a6, a7, a8);
}

uint64_t sub_24111E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v9 = sub_241165728();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111E740, 0, 0);
}

uint64_t sub_24111E740()
{
  v54 = v0;
  v1 = *(v0[6] + 24);
  v0[16] = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = *(v3 + 104);
  v5(v2, *MEMORY[0x277CEEB30], v4);

  v6 = sub_241165B78();
  v7 = *(v3 + 8);
  v7(v2, v4);
  if ((v6 & 1) == 0)
  {

LABEL_12:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v34 = sub_241165288();
    __swift_project_value_buffer(v34, qword_27E5339F0);
    v35 = sub_241165268();
    v36 = sub_241166048();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, v53);
      _os_log_impl(&dword_2410F8000, v35, v36, "%s Client is missing required entitlement com.apple.asktod", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x245CDC5E0](v38, -1, -1);
      MEMORY[0x245CDC5E0](v37, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    goto LABEL_17;
  }

  v8 = v0[15];
  v9 = v0[13];
  v5(v8, *MEMORY[0x277CEEB38], v9);
  v10 = sub_241165B78();
  v7(v8, v9);
  if (v10)
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[2];
    v14 = sub_241165288();
    v0[17] = __swift_project_value_buffer(v14, qword_27E5339F0);
    v15 = v13;

    v16 = v11;
    v17 = sub_241165268();
    v18 = sub_241166068();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[4];
      v52 = v0[5];
      v20 = v0[2];
      v21 = v0[3];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53[0] = v23;
      *v22 = 136315906;
      *(v22 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, v53);
      *(v22 + 12) = 2080;
      v24 = sub_241165328();
      v26 = sub_241156B38(v24, v25, v53);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_241156B38(v21, v19, v53);
      *(v22 + 32) = 2080;
      v27 = sub_241165418();
      v29 = sub_241156B38(v27, v28, v53);

      *(v22 + 34) = v29;
      _os_log_impl(&dword_2410F8000, v17, v18, "%s called with question ID: %s, responderHandle: %s, answerChoice: %s", v22, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v23, -1, -1);
      MEMORY[0x245CDC5E0](v22, -1, -1);
    }

    v30 = swift_task_alloc();
    v0[18] = v30;
    *v30 = v0;
    v30[1] = sub_24111ED68;
    v31 = v0[6];
    v32 = v0[2];

    return sub_24112D8A8(v32);
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v46 = sub_241165288();
  __swift_project_value_buffer(v46, qword_27E5339F0);
  v47 = sub_241165268();
  v48 = sub_241166048();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, v53);
    _os_log_impl(&dword_2410F8000, v47, v48, "%s Client is missing required entitlement com.apple.asktod.updateMessageBubble", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x245CDC5E0](v50, -1, -1);
    MEMORY[0x245CDC5E0](v49, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();

LABEL_17:
  v40 = v0[15];
  v42 = v0[11];
  v41 = v0[12];
  v44 = v0[9];
  v43 = v0[10];

  v45 = v0[1];

  return v45();
}

uint64_t sub_24111ED68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_24111F9F4;
  }

  else
  {
    v5 = sub_24111EE7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24111EE7C()
{
  v29 = v0;
  v1 = *(v0[19] + 16);
  v0[21] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_24111F0C8;
    v3 = v0[19];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[3];
    v7 = v0[4];

    return sub_24112B9CC(v3, v6, v7, v4);
  }

  else
  {
    v9 = v0[17];
    v10 = v0[2];

    v11 = v10;
    v12 = sub_241165268();
    v13 = sub_241166048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[2];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      v17 = sub_241165328();
      v19 = sub_241156B38(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2410F8000, v12, v13, "Question %s not found in Messages database", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CDC5E0](v16, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    v20 = v0[16];
    sub_241132370();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    v22 = v0[15];
    v24 = v0[11];
    v23 = v0[12];
    v26 = v0[9];
    v25 = v0[10];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_24111F0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v9 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v7 = sub_24111FA98;
  }

  else
  {
    v7 = sub_24111F1E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_24111F1E0()
{
  v58 = v0;
  v1 = 0;
  v49 = v0[11];
  v50 = v0[12];
  v52 = v0[9];
  v2 = v0[7];
  v47 = *(v2 + 48);
  v56 = v2;
  v46 = *(v2 + 64);
  v48 = v0[8];
  v51 = v0[19] + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  do
  {
    if (v1 >= *(v0[19] + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v14 = v0[23];
    v15 = v0[17];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v54 = v1;
    sub_2410FC88C(v51 + *(v48 + 72) * v1, v16, &qword_27E5309F0, &qword_2411692B0);
    v19 = *v16;
    v20 = *(v50 + 8);
    v21 = *(v50 + v46);
    v22 = *(v56 + 48);
    v23 = *(v56 + 64);
    *v17 = v19;
    *(v49 + 8) = v20;
    v24 = sub_2411650D8();
    v55 = *(v24 - 8);
    (*(v55 + 32))(&v17[v22], v50 + v47, v24);
    *&v17[v23] = v21;
    sub_2410FC88C(v17, v18, &qword_27E5309F0, &qword_2411692B0);
    v25 = v14;
    v26 = sub_241165268();
    v27 = sub_241166068();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[23];
    v30 = v0[10];
    v53 = v24;
    if (v28)
    {
      v44 = v27;
      log = v26;
      v31 = v0[9];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v32 = 136315394;
      sub_241135680(v30, v31, &qword_27E5309F0, &qword_2411692B0);
      v35 = *v31;
      v36 = *(v52 + 8);
      v37 = *(v56 + 48);

      (*(v55 + 8))(v31 + v37, v24);
      v38 = sub_241156B38(v35, v36, &v57);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      v39 = sub_241165CD8();

      if (!v39)
      {
        goto LABEL_14;
      }

      *(v32 + 14) = v39;
      *v33 = v39;
      _os_log_impl(&dword_2410F8000, log, v44, "Updating message bubble with GUID %s with response: %@", v32, 0x16u);
      sub_2410FB29C(v33, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245CDC5E0](v34, -1, -1);
      MEMORY[0x245CDC5E0](v32, -1, -1);

      v3 = v54;
    }

    else
    {

      sub_2410FB29C(v30, &qword_27E5309F0, &qword_2411692B0);
      v3 = v54;
    }

    v1 = v3 + 1;
    v4 = v0[24];
    v5 = v0[25];
    v6 = v0[21];
    v7 = v0[11];
    v8 = v0[9];
    sub_2410FC88C(v7, v8, &qword_27E5309F0, &qword_2411692B0);
    v9 = *v8;
    v10 = *(v52 + 8);
    v11 = *(v56 + 48);

    v12 = sub_241165DA8();

    (*(v55 + 8))(&v8[v11], v53);
    v13 = sub_2411650F8();
    IMSPIUpdatePluginMessageWithGUID();

    sub_2410FB29C(v7, &qword_27E5309F0, &qword_2411692B0);
  }

  while (v1 != v6);
  if (!*(v0[19] + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v40 = *(v51 + *(v56 + 64));
  v41 = swift_task_alloc();
  v0[27] = v41;
  *v41 = v0;
  v41[1] = sub_24111F698;
  v42 = v0[23];
  v43 = v0[6];

  sub_24112C754(v42, v40);
}

uint64_t sub_24111F698()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);

    v5 = sub_24111FB48;
  }

  else
  {
    v5 = sub_24111F7B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24111F7B4()
{
  v29 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 16);

  v4 = sub_241165268();
  v5 = sub_241166068();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  if (v6)
  {
    v27 = *(v0 + 200);
    v12 = *(v0 + 16);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, &v28);
    *(v13 + 12) = 2048;
    v15 = *(v10 + 16);

    *(v13 + 14) = v15;

    *(v13 + 22) = 2080;
    v16 = sub_241165328();
    v18 = sub_241156B38(v16, v17, &v28);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s successfully updated %ld message bubbles for question ID: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v13, -1, -1);

    sub_2410FB5B8(v8, v27);
  }

  else
  {
    v19 = *(v0 + 152);
    swift_bridgeObjectRelease_n();

    sub_2410FB5B8(v8, v7);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24111F9F4()
{
  v1 = v0[16];

  v2 = v0[20];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24111FA98()
{
  v1 = v0[19];
  v2 = v0[16];

  v3 = v0[26];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24111FB48()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 128);

  sub_2410FB5B8(v1, v2);

  v4 = *(v0 + 224);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24111FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_2411188CC;

  return sub_24111FE40(a5, a6);
}

uint64_t sub_24111FE40(uint64_t a1, __int16 a2)
{
  *(v3 + 256) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  v4 = sub_241165728();
  *(v3 + 192) = v4;
  v5 = *(v4 - 8);
  *(v3 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111FF04, 0, 0);
}

uint64_t sub_24111FF04()
{
  v42 = v0;
  v1 = *(*(v0 + 184) + 24);
  *(v0 + 216) = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

  v5 = sub_241165B78();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {

LABEL_5:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v7 = sub_241165288();
    __swift_project_value_buffer(v7, qword_27E5339F0);
    v8 = sub_241165268();
    v9 = sub_241166048();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v41);
      _os_log_impl(&dword_2410F8000, v8, v9, "%s Client is missing required entitlement com.apple.asktod", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245CDC5E0](v11, -1, -1);
      MEMORY[0x245CDC5E0](v10, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
LABEL_27:
    v33 = *(v0 + 208);

    v34 = *(v0 + 8);
LABEL_28:

    return v34();
  }

  v6 = *(v0 + 176);
  *(v0 + 224) = sub_241165AD8();
  v13 = sub_241165938();
  v14 = sub_2411653A8();

  v15 = sub_241165368();
  v17 = v16;

  if (v15 == 0xD00000000000002DLL && 0x800000024116B440 == v17)
  {
    goto LABEL_17;
  }

  v19 = sub_2411663E8();

  if (v19)
  {
LABEL_18:
    if (sub_241106974())
    {
      v25 = swift_task_alloc();
      *(v0 + 232) = v25;
      *v25 = v0;
      v25[1] = sub_241120558;

      return sub_2411422B0();
    }

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v27 = sub_241165288();
    __swift_project_value_buffer(v27, qword_27E5339F0);
    v28 = sub_241165268();
    v29 = sub_241166048();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v41);
      _os_log_impl(&dword_2410F8000, v28, v29, "%s Contact syncing not setup", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x245CDC5E0](v31, -1, -1);
      MEMORY[0x245CDC5E0](v30, -1, -1);
    }

    sub_2411327D4();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();

    goto LABEL_27;
  }

  v20 = sub_241165938();
  v21 = sub_2411653A8();

  v22 = sub_241165368();
  v24 = v23;

  if (v22 == 0xD00000000000001DLL && 0x800000024116B470 == v24)
  {
LABEL_17:

    goto LABEL_18;
  }

  v35 = sub_2411663E8();

  if (v35)
  {
    goto LABEL_18;
  }

  if (*(v0 + 256))
  {
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);

    v38 = *(v0 + 208);

    v34 = *(v0 + 8);
    goto LABEL_28;
  }

  v39 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  *(v0 + 240) = v39;
  [v39 setCachePolicy_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_241120988;
  v40 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241142CF4;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v40;
  [v39 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241120558(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a2;
  *(v4 + 144) = v2;
  *(v4 + 152) = a1;
  v5 = *(v3 + 232);
  v7 = *v2;
  *(v4 + 258) = a2;

  return MEMORY[0x2822009F8](sub_241120660, 0, 0);
}

uint64_t sub_241120660()
{
  v18 = v0;
  if ((*(v0 + 258) & 1) != 0 || (*(v0 + 152) - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v5 = sub_241165288();
    __swift_project_value_buffer(v5, qword_27E5339F0);
    v6 = sub_241165268();
    v7 = sub_241166048();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, &v17);
      _os_log_impl(&dword_2410F8000, v6, v7, "%s Determined communication limits is not enabled", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    v10 = *(v0 + 216);
    v11 = *(v0 + 224);
    sub_2411327D4();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = *(v0 + 208);

    v4 = *(v0 + 8);
    goto LABEL_10;
  }

  if (*(v0 + 256))
  {
    v2 = *(v0 + 216);
    v1 = *(v0 + 224);

    v3 = *(v0 + 208);

    v4 = *(v0 + 8);
LABEL_10:

    return v4();
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  *(v0 + 240) = v15;
  [v15 setCachePolicy_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_241120988;
  v16 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241142CF4;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v16;
  [v15 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241120988()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_241120E20;
  }

  else
  {
    v3 = sub_241120A98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241120A98()
{
  v29 = v0;
  v1 = v0[21];
  v2 = [v1 me];
  if (v2)
  {
    v3 = v2;
    if (sub_241166088())
    {
      v4 = v0[30];
      v6 = v0[27];
      v5 = v0[28];

      v7 = v0[26];

      v8 = v0[1];
      goto LABEL_15;
    }

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v18 = sub_241165288();
    __swift_project_value_buffer(v18, qword_27E5339F0);
    v19 = sub_241165268();
    v20 = sub_241166048();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v28);
      _os_log_impl(&dword_2410F8000, v19, v20, "%s Determined current user account is not a child or teen", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CDC5E0](v22, -1, -1);
      MEMORY[0x245CDC5E0](v21, -1, -1);
    }

    v14 = v0[30];
    v24 = v0[27];
    v23 = v0[28];
    sub_2411327D4();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
  }

  else
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v9 = sub_241165288();
    __swift_project_value_buffer(v9, qword_27E5339F0);
    v10 = sub_241165268();
    v11 = sub_241166048();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v28);
      _os_log_impl(&dword_2410F8000, v10, v11, "%s Missing me in FamilyCircle", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    v14 = v0[30];
    v16 = v0[27];
    v15 = v0[28];
    sub_2411327D4();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  v26 = v0[26];

  v8 = v0[1];
LABEL_15:

  return v8();
}

uint64_t sub_241120E20()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  swift_willThrow();

  v5 = v0[31];
  v6 = v0[26];

  v7 = v0[1];

  return v7();
}

uint64_t sub_241120F0C(uint64_t a1, uint64_t a2, void *a3, __int16 a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v18 = _Block_copy(a5);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_241165FA8();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a3;
  *(v21 + 48) = a4;
  *(v21 + 56) = a8;
  *(v21 + 64) = v19;
  v22 = a3;

  sub_24113C95C(0, 0, v17, a9, v21);
}

uint64_t sub_241121068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_241121108;

  return sub_241121274(a5);
}

uint64_t sub_241121108(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_241121208, 0, 0);
}

uint64_t sub_241121208()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241121274(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_241165728();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241121334, 0, 0);
}

uint64_t sub_241121334()
{
  v18 = v0;
  if (!*(v0[3] + 24))
  {
    goto LABEL_6;
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 104))(v1, *MEMORY[0x277CEEB30], v3);

  v4 = sub_241165B78();

  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1((v0[3] + 200), *(v0[3] + 224));
    v16 = off_2852EBE58 + *off_2852EBE58;
    v5 = *(off_2852EBE58 + 1);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_241121638;
    v7 = v0[2];

    return (v16)(v7, &type metadata for CommunicationLimitsSettings, &off_2852EBE48);
  }

  else
  {
LABEL_6:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v9 = sub_241165288();
    __swift_project_value_buffer(v9, qword_27E5339F0);
    v10 = sub_241165268();
    v11 = sub_241166048();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116B3E0, &v17);
      _os_log_impl(&dword_2410F8000, v10, v11, "%s Client is missing required entitlement com.apple.asktod", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    v14 = v0[6];

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_241121638(uint64_t a1, int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  v10 = *v2;

  v7 = *(v5 + 48);

  v8 = *(v10 + 8);

  return v8((a1 == 2) & ~a2);
}

uint64_t sub_2411218BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_24112196C;

  return sub_241121C50(a5, a6);
}

uint64_t sub_24112196C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_241121BC0;
  }

  else
  {
    v5 = sub_241121A84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241121A84()
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E5339F0);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "canAsk (supports-askto-responseUI) %{BOOL}d", v5, 8u);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v6 = *(v0 + 48);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  v8(v6, 0);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_241121BC0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_241121C50(__int16 a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  *(v3 + 74) = a1;
  v4 = sub_241165728();
  *(v3 + 208) = v4;
  v5 = *(v4 - 8);
  *(v3 + 216) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241121D14, 0, 0);
}

uint64_t sub_241121D14()
{
  v23 = v0;
  v1 = *(*(v0 + 200) + 24);
  *(v0 + 232) = v1;
  if (v1)
  {
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v4 = *(v0 + 208);
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = *(v0 + 192);
      if (v6 && *(v6 + 16))
      {
        v7 = *(v0 + 192);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2411673F0;
        v18 = *MEMORY[0x277D18868];
        *(inited + 32) = sub_241165DD8();
        *(inited + 40) = v19;
        v6 = sub_2410FB2FC(inited);
        swift_setDeallocating();
        sub_2410FB464(inited + 32);
      }

      sub_241165C08();
      *(v0 + 56) = 0;
      *(v0 + 64) = v6;
      *(v0 + 72) = 1;
      sub_2411324FC(v0 + 16, v0 + 80);
      v20 = swift_task_alloc();
      *(v0 + 240) = v20;
      *v20 = v0;
      v20[1] = sub_241122068;
      v21 = *(v0 + 74);

      return sub_24115A1D4(v0 + 80, v21);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E5339F0);
  v9 = sub_241165268();
  v10 = sub_241166048();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_241156B38(0xD00000000000002DLL, 0x800000024116B3B0, &v22);
    _os_log_impl(&dword_2410F8000, v9, v10, "%s Client is missing required entitlement com.apple.asktod", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v13 = 0;
  swift_willThrow();
  v14 = *(v0 + 224);

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_241122068(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_2411223E4;
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = sub_241122190;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241122190()
{
  v1 = v0[32];
  sub_241132558((v0 + 2));
  v0[33] = *(v1 + 80);

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_24112223C;
  v3 = v0[32];

  return sub_2411583BC();
}

uint64_t sub_24112223C(char a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 73) = a1;

  return MEMORY[0x2822009F8](sub_24112233C, 0, 0);
}

uint64_t sub_24112233C()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);

  if (v1 == 1)
  {
    v4 = *(*(v0 + 264) + 16);

    v5 = v4 != 0;
  }

  else
  {

    v5 = 0;
  }

  v6 = *(v0 + 224);

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_2411223E4()
{
  v1 = v0[29];
  sub_241132558((v0 + 2));

  v2 = v0[31];
  v3 = v0[28];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_2411225E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_2411188CC;

  return sub_2411226A4(a5, a6, a7);
}

uint64_t sub_2411226A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_241165728();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241122768, 0, 0);
}

uint64_t sub_241122768()
{
  v20 = v0;
  v1 = *(v0[15] + 24);
  v0[19] = v1;
  if (v1)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = v0[12];
      v7 = sub_2411656C8();
      v0[20] = v7;
      v8 = swift_task_alloc();
      v0[21] = v8;
      *v8 = v0;
      v8[1] = sub_241122A14;
      v9 = v0[15];

      return sub_24112EBC8(v7);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v11 = sub_241165288();
  __swift_project_value_buffer(v11, qword_27E5339F0);
  v12 = sub_241165268();
  v13 = sub_241166048();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(0xD000000000000038, 0x800000024116B350, &v19);
    _os_log_impl(&dword_2410F8000, v12, v13, "%s Client is missing required entitlement com.apple.asktod", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  v16 = v0[18];
  sub_241132370();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_241122A14()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_241122ED4;
  }

  else
  {

    v4 = sub_241122B30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241122B30()
{
  sub_241135730(v0[15] + 160, (v0 + 2));
  v1 = v0[5];
  v2 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v6 = *v5;
  v7 = type metadata accessor for PendingAskStore();
  v0[10] = v7;
  v0[11] = &off_2852EBB00;
  v0[7] = v6;
  type metadata accessor for ResponseHandler();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v7);
  v0[23] = sub_2411312A0(*v12, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_241122D60;
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[12];

  return sub_24113CC4C(v16, v14, v15);
}

uint64_t sub_241122D60()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_241122E5C, 0, 0);
}

uint64_t sub_241122E5C()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t sub_241122ED4()
{
  v31 = v0;

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_241156B38(0xD000000000000038, 0x800000024116B350, &v30);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s Error marking question as sent: %@", v8, 0x16u);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  sub_241135730(*(v0 + 120) + 160, v0 + 16);
  v13 = *(v0 + 40);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v13);
  v18 = *v17;
  v19 = type metadata accessor for PendingAskStore();
  *(v0 + 80) = v19;
  *(v0 + 88) = &off_2852EBB00;
  *(v0 + 56) = v18;
  type metadata accessor for ResponseHandler();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v19);
  v22 = *(v19 - 8);
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  (*(v22 + 16))(v24, v21, v19);
  *(v0 + 184) = sub_2411312A0(*v24, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_241122D60;
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v28 = *(v0 + 96);

  return sub_24113CC4C(v28, v26, v27);
}

uint64_t sub_24112341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 64) = a5;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_241123444, 0, 0);
}

uint64_t sub_241123444()
{
  v1 = *(v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 64);
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x277D858E8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_24112358C;

    return MEMORY[0x282200600]();
  }

  else
  {
    v8 = *(v0 + 32);
    (*(v0 + 24))();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24112358C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2411236A4, 0, 0);
}

uint64_t sub_2411236A4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 32);
  (*(v0 + 24))(0);
  v3 = *(v0 + 8);

  return v3();
}

void sub_241123870(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_241165048();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2411238D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[51] = a3;
  v4[52] = v3;
  v4[49] = a1;
  v4[50] = a2;
  v5 = sub_241165C38();
  v4[53] = v5;
  v6 = *(v5 - 8);
  v4[54] = v6;
  v7 = *(v6 + 64) + 15;
  v4[55] = swift_task_alloc();
  v8 = sub_241165BD8();
  v4[56] = v8;
  v9 = *(v8 - 8);
  v4[57] = v9;
  v10 = *(v9 + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241123A68, 0, 0);
}

uint64_t sub_241123A68()
{
  v43 = v0;
  v1 = v0[52];
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_241165C08();

    if (v0[25])
    {
      v3 = v0[64];
      v4 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      goto LABEL_6;
    }

    sub_2410FB29C((v0 + 22), &qword_27E530CF8, &qword_2411684A0);
  }

  (*(v0[57] + 56))(v0[64], 1, 1, v0[56]);
LABEL_6:
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[56];
  v8 = v0[57];
  v0[47] = 0;
  sub_2410FC88C(v5, v6, &qword_27E530658, &unk_241167410);
  v9 = *(v8 + 48);
  v0[65] = v9;
  v0[66] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v6, 1, v7) == 1)
  {
    v10 = v0[62];
    v11 = v0[56];
    v12 = v0[57];
    sub_2410FB29C(v0[63], &qword_27E530658, &unk_241167410);
    (*(v12 + 56))(v10, 1, 1, v11);
    v13 = type metadata accessor for AppExtensionProxy();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v17 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
    *(v16 + v17) = sub_2410FB218(MEMORY[0x277D84F90]);
    *(v16 + 16) = 1;
    sub_241135680(v10, v16 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client, &qword_27E530658, &unk_241167410);
    v0[30] = v13;
    v0[31] = sub_2411356E8(&qword_27E530660, type metadata accessor for AppExtensionProxy);
    v0[27] = v16;
  }

  else
  {
    v19 = v0[59];
    v18 = v0[60];
    v20 = v0[56];
    v21 = v0[57];
    v22 = v0[49];
    (*(v21 + 32))(v18, v0[63], v20);
    (*(v21 + 16))(v19, v18, v20);
    v23 = sub_241165CC8();
    v24 = sub_2411653A8();

    v25 = sub_241154E14(v19);
    v0[30] = type metadata accessor for AppExtensionProxy();
    v0[31] = sub_2411356E8(&qword_27E530660, type metadata accessor for AppExtensionProxy);
    v0[27] = v25;
    (*(v21 + 8))(v18, v20);
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v26 = sub_241165288();
  v0[67] = __swift_project_value_buffer(v26, qword_27E5339F0);
  sub_241135730((v0 + 27), (v0 + 32));
  v27 = sub_241165268();
  v28 = sub_241166068();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    v31 = v0[36];
    __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
    v32 = *(v31 + 8);
    v33 = sub_2411663B8();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    v36 = sub_241156B38(v33, v35, &v42);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_2410F8000, v27, v28, "Calling into app extension to get Messages data payload. messagesPayloadProvider: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245CDC5E0](v30, -1, -1);
    MEMORY[0x245CDC5E0](v29, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  v37 = *__swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
  v38 = swift_task_alloc();
  v0[68] = v38;
  *v38 = v0;
  v38[1] = sub_241123F30;
  v39 = v0[51];
  v40 = v0[49];

  return sub_241150BD0((v0 + 2), v40, v39);
}

uint64_t sub_241123F30()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_2411244C0;
  }

  else
  {
    v3 = sub_241124044;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241124044()
{
  v49 = v0;
  v1 = v0[52];
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_241165C08();

    if (v0[40])
    {
      v3 = v0[41];
      __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
      v4 = sub_241165978();
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v0 + 37);
      goto LABEL_6;
    }

    sub_2410FB29C((v0 + 37), &qword_27E530CF8, &qword_2411684A0);
  }

  v4 = 0;
  v6 = 0;
LABEL_6:
  v7 = v0[67];
  v9 = v0[54];
  v8 = v0[55];
  v10 = v0[53];
  v11 = v0[49];
  v12 = v0[50];
  v13 = sub_241165CC8();
  v14 = sub_2411653A8();

  (*(v9 + 104))(v8, *MEMORY[0x277CEEE18], v10);
  MEMORY[0x245CDB590](v4, v6, v14, v8);

  (*(v9 + 8))(v8, v10);
  sub_241102C64((v0 + 2), (v0 + 12));

  v15 = sub_241165268();
  v16 = sub_241166068();
  sub_241102CC0((v0 + 2));

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[50];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v48 = v19;
    *v18 = 136315394;
    v20 = v0[4];
    v21 = v0[5];

    v22 = sub_241156B38(v20, v21, &v48);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_241165A78();
    v23 = sub_241165468();
    v25 = sub_241156B38(v23, v24, &v48);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_2410F8000, v15, v16, "Sending message with Messages extension bundle identifier %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[61];
  v29 = v0[56];
  sub_2410FC88C(v0[64], v28, &qword_27E530658, &unk_241167410);
  v30 = v27(v28, 1, v29);
  v31 = v0[61];
  if (v30 == 1)
  {
    sub_2410FB29C(v0[61], &qword_27E530658, &unk_241167410);
  }

  else
  {
    v33 = v0[57];
    v32 = v0[58];
    v34 = v0[56];
    v35 = v0[52];
    (*(v33 + 32))(v32, v0[61], v34);
    LOBYTE(v35) = sub_241125140(v32, *(v35 + 16));
    (*(v33 + 8))(v32, v34);
    if (v35)
    {
      v36 = v0[52];
      sub_241135730(v36 + 40, (v0 + 42));
      __swift_project_boxed_opaque_existential_1(v0 + 42, v0[45]);
      v37 = *(v36 + 24);
      v0[70] = v37;
      if (v37)
      {
        v38 = MEMORY[0x277CEEDD8];
      }

      else
      {
        v38 = 0;
      }

      v39 = swift_task_alloc();
      v0[71] = v39;
      *v39 = v0;
      v39[1] = sub_241124770;
      v40 = v0[50];
      v41 = (v0 + 2);
      v42 = (v0 + 47);
      v43 = v37;
      v44 = v38;
      v45 = 1;
      goto LABEL_16;
    }
  }

  __swift_project_boxed_opaque_existential_1((v0[52] + 40), *(v0[52] + 64));
  v0[48] = 0;
  v46 = swift_task_alloc();
  v0[73] = v46;
  *v46 = v0;
  v46[1] = sub_241124C5C;
  v40 = v0[50];
  v41 = (v0 + 2);
  v42 = (v0 + 48);
  v43 = 0;
  v44 = 0;
  v45 = 0;
LABEL_16:

  return sub_241101088(v41, v43, v44, v40, v45, v42);
}

uint64_t sub_2411244C0()
{
  v37 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[49];
  v4 = v0[50];

  v5 = v3;
  v6 = v1;
  v7 = v5;
  v8 = v1;
  v9 = sub_241165268();
  v10 = sub_241166048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[49];
    v34 = v0[50];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v12 = 136315650;
    v15 = sub_241165CC8();
    v16 = sub_2411652B8();
    v18 = v17;

    v19 = sub_241156B38(v16, v18, v36);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    sub_241165A78();
    v20 = sub_241165468();
    v22 = sub_241156B38(v20, v21, v36);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2112;
    v23 = v6;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v24;
    *v13 = v24;
    _os_log_impl(&dword_2410F8000, v9, v10, "Failed to send payload over Messages. question: %s recipientGroup: %s error: %@", v12, 0x20u);
    sub_2410FB29C(v13, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v26 = v0[63];
  v25 = v0[64];
  v28 = v0[61];
  v27 = v0[62];
  v30 = v0[59];
  v29 = v0[60];
  v31 = v0[58];
  v35 = v0[55];
  swift_willThrow();
  sub_2410FB29C(v25, &qword_27E530658, &unk_241167410);

  v32 = v0[1];

  return v32();
}

uint64_t sub_241124770()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v8 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);

    v5 = sub_241124994;
  }

  else
  {
    v6 = *(v2 + 560);

    v5 = sub_241124894;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241124894()
{
  v1 = v0[64];
  sub_241102CC0((v0 + 2));
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];
  v9 = v0[55];
  v10 = v0[47];

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_241124994()
{
  v38 = v0;
  v1 = v0[70];

  sub_241102CC0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v2 = v0[72];
  v3 = v0[67];
  v4 = v0[49];
  v5 = v0[50];

  v6 = v4;
  v7 = v2;
  v8 = v6;
  v9 = v2;
  v10 = sub_241165268();
  v11 = sub_241166048();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[49];
    v35 = v0[50];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37[0] = v15;
    *v13 = 136315650;
    v16 = sub_241165CC8();
    v17 = sub_2411652B8();
    v19 = v18;

    v20 = sub_241156B38(v17, v19, v37);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    sub_241165A78();
    v21 = sub_241165468();
    v23 = sub_241156B38(v21, v22, v37);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2112;
    v24 = v7;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v25;
    *v14 = v25;
    _os_log_impl(&dword_2410F8000, v10, v11, "Failed to send payload over Messages. question: %s recipientGroup: %s error: %@", v13, 0x20u);
    sub_2410FB29C(v14, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  v27 = v0[63];
  v26 = v0[64];
  v29 = v0[61];
  v28 = v0[62];
  v31 = v0[59];
  v30 = v0[60];
  v32 = v0[58];
  v36 = v0[55];
  swift_willThrow();
  sub_2410FB29C(v26, &qword_27E530658, &unk_241167410);

  v33 = v0[1];

  return v33();
}

uint64_t sub_241124C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 384);

  if (v0)
  {
    v6 = sub_241124E88;
  }

  else
  {
    v6 = sub_241124D90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_241124D90()
{
  v1 = v0[64];
  sub_241102CC0((v0 + 2));
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];
  v9 = v0[55];
  v10 = v0[47];

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_241124E88()
{
  v37 = v0;
  sub_241102CC0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[74];
  v2 = v0[67];
  v3 = v0[49];
  v4 = v0[50];

  v5 = v3;
  v6 = v1;
  v7 = v5;
  v8 = v1;
  v9 = sub_241165268();
  v10 = sub_241166048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[49];
    v34 = v0[50];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v12 = 136315650;
    v15 = sub_241165CC8();
    v16 = sub_2411652B8();
    v18 = v17;

    v19 = sub_241156B38(v16, v18, v36);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    sub_241165A78();
    v20 = sub_241165468();
    v22 = sub_241156B38(v20, v21, v36);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2112;
    v23 = v6;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v24;
    *v13 = v24;
    _os_log_impl(&dword_2410F8000, v9, v10, "Failed to send payload over Messages. question: %s recipientGroup: %s error: %@", v12, 0x20u);
    sub_2410FB29C(v13, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v26 = v0[63];
  v25 = v0[64];
  v28 = v0[61];
  v27 = v0[62];
  v30 = v0[59];
  v29 = v0[60];
  v31 = v0[58];
  v35 = v0[55];
  swift_willThrow();
  sub_2410FB29C(v25, &qword_27E530658, &unk_241167410);

  v32 = v0[1];

  return v32();
}

uint64_t sub_241125140(uint64_t a1, uint64_t a2)
{
  v3 = sub_241165BD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2411356E8(&qword_27E530680, MEMORY[0x277CEEDA8]), v9 = sub_241165D88(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
      v17 = sub_241165D98();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_241125358(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  v34 = *MEMORY[0x277D85DE8];
  *(v5 + 872) = v4;
  *(v5 + 201) = a4;
  *(v5 + 864) = a3;
  *(v5 + 202) = a2;
  *(v5 + 856) = a1;
  v6 = sub_241165C38();
  *(v5 + 880) = v6;
  v7 = *(v6 - 8);
  *(v5 + 888) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 896) = swift_task_alloc();
  v9 = sub_241165BD8();
  *(v5 + 904) = v9;
  v10 = *(v9 - 8);
  *(v5 + 912) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 920) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  *(v5 + 928) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 936) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  *(v5 + 944) = swift_task_alloc();
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080) - 8) + 64) + 15;
  *(v5 + 968) = swift_task_alloc();
  v16 = sub_2411650D8();
  *(v5 + 976) = v16;
  v17 = *(v16 - 8);
  *(v5 + 984) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 992) = swift_task_alloc();
  v19 = sub_2411657B8();
  *(v5 + 1000) = v19;
  v20 = *(v19 - 8);
  *(v5 + 1008) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 1016) = swift_task_alloc();
  v22 = sub_241165B28();
  *(v5 + 1024) = v22;
  v23 = *(v22 - 8);
  *(v5 + 1032) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 1040) = swift_task_alloc();
  v25 = sub_241165788();
  *(v5 + 1048) = v25;
  v26 = *(v25 - 8);
  *(v5 + 1056) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 1064) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400) - 8) + 64) + 15;
  *(v5 + 1072) = swift_task_alloc();
  *(v5 + 1080) = swift_task_alloc();
  v29 = sub_241165728();
  *(v5 + 1088) = v29;
  v30 = *(v29 - 8);
  *(v5 + 1096) = v30;
  v31 = *(v30 + 64) + 15;
  *(v5 + 1104) = swift_task_alloc();
  v32 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_241125784, 0, 0);
}

uint64_t sub_241125784()
{
  v90 = v0;
  v89 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 872) + 24);
  *(v0 + 1112) = v1;
  if (v1)
  {
    v2 = *(v0 + 1104);
    v3 = *(v0 + 1096);
    v4 = *(v0 + 1088);
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 864);
      v7 = sub_241165288();
      *(v0 + 1120) = v7;
      *(v0 + 1128) = __swift_project_value_buffer(v7, qword_27E5339F0);
      sub_2410FC88C(v6, v0 + 320, &qword_27E530CF8, &qword_2411684A0);
      v8 = sub_241165268();
      v9 = sub_241166068();
      if (!os_log_type_enabled(v8, v9))
      {

        sub_2410FB29C(v0 + 320, &qword_27E530CF8, &qword_2411684A0);
        goto LABEL_21;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v88 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_241156B38(0xD00000000000005DLL, 0x800000024116B590, &v88);
      *(v10 + 12) = 2080;
      sub_2410FC88C(v0 + 320, v0 + 800, &qword_27E530CF8, &qword_2411684A0);
      if (*(v0 + 824))
      {
        v12 = *(v0 + 832);
        __swift_project_boxed_opaque_existential_1((v0 + 800), *(v0 + 824));
        v13 = sub_241165978();
        v15 = v14;
        __swift_destroy_boxed_opaque_existential_1((v0 + 800));
        if (v15)
        {
          sub_2410FB29C(v0 + 320, &qword_27E530CF8, &qword_2411684A0);
          v16 = v13;
LABEL_20:
          v36 = sub_241156B38(v16, v15, &v88);

          *(v10 + 14) = v36;
          _os_log_impl(&dword_2410F8000, v8, v9, "%s called by client with bundle ID %s", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245CDC5E0](v11, -1, -1);
          MEMORY[0x245CDC5E0](v10, -1, -1);

LABEL_21:
          v37 = *(v0 + 1080);
          v38 = *(v0 + 856);
          sub_241165298();
          v39 = sub_2411652E8();
          *(v0 + 1136) = v39;
          v40 = *(v39 - 8);
          *(v0 + 1144) = v40;
          v41 = *(v40 + 48);
          *(v0 + 1152) = v41;
          *(v0 + 1160) = (v40 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          v42 = v41(v37, 1, v39);
          v43 = *(v0 + 1080);
          if (v42 == 1)
          {
            sub_2410FB29C(v43, &qword_27E530CE8, &qword_241168400);
          }

          else
          {
            v44 = (*(v40 + 88))(v43, v39);
            v45 = *(v0 + 1080);
            if (v44 == *MEMORY[0x277CEEAD8])
            {
              (*(v40 + 96))(*(v0 + 1080), v39);
              v46 = *v45;
              sub_241165AE8();

LABEL_29:
              v48 = *(v0 + 1064);
              v49 = *(v0 + 864);
              sub_241165778();
              sub_2410FC88C(v49, v0 + 400, &qword_27E530CF8, &qword_2411684A0);
              if (*(v0 + 424))
              {
                v50 = *(v0 + 432);
                __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));
                sub_241165968();
                __swift_destroy_boxed_opaque_existential_1((v0 + 400));
              }

              else
              {
                sub_2410FB29C(v0 + 400, &qword_27E530CF8, &qword_2411684A0);
              }

              v51 = *(v0 + 1064);
              v52 = *(v0 + 1040);
              sub_241165768();

              if (sub_241165B18())
              {
                if (qword_27E530590 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v7, qword_27E533A20);
                v53 = sub_241165268();
                v54 = sub_241166068();
                if (os_log_type_enabled(v53, v54))
                {
                  v55 = swift_slowAlloc();
                  *v55 = 0;
                  _os_log_impl(&dword_2410F8000, v53, v54, "Tried to generate clientIconData but the icon data was nil", v55, 2u);
                  MEMORY[0x245CDC5E0](v55, -1, -1);
                }
              }

              else
              {
                v56 = *(v0 + 1040);
                v57 = *(v0 + 1016);
                v58 = *(v0 + 1008);
                v59 = *(v0 + 1000);
                v60 = sub_241165B08();
                sub_2411657A8();
                v61 = sub_241165708();
                v62 = MEMORY[0x277CEEB28];
                *(v0 + 464) = v61;
                *(v0 + 472) = v62;
                __swift_allocate_boxed_opaque_existential_1((v0 + 440));
                sub_2411656F8();
                v63 = sub_241165798();
                v65 = v64;

                (*(v58 + 8))(v57, v59);
                __swift_destroy_boxed_opaque_existential_1((v0 + 440));
                if (v65 >> 60 != 15)
                {
                  sub_241134D44(v63, v65);
                  v66 = sub_2411650F8();
                  sub_241109164(v63, v65);
                  *(v0 + 848) = 0;
                  v67 = [v66 compressedDataUsingAlgorithm:3 error:v0 + 848];

                  v68 = *(v0 + 848);
                  if (v67)
                  {
                    v88 = xmmword_241168290;
                    v69 = v68;
                    sub_241165108();
                    sub_241109164(v63, v65);

                    v70 = *(&v88 + 1);
                    if (*(&v88 + 1) >> 60 != 15)
                    {
                      v71 = v88;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v72 = v68;
                    v73 = sub_241165058();

                    swift_willThrow();
                    sub_241109164(v63, v65);
                  }
                }
              }

              v71 = 0;
              v70 = 0xF000000000000000;
LABEL_44:
              *(v0 + 1176) = v70;
              *(v0 + 1168) = v71;
              v74 = *(v0 + 872);
              sub_24112AFBC(*(v0 + 856), v0 + 480);
              v75 = *(v0 + 504);
              if (v75)
              {
                v76 = *__swift_project_boxed_opaque_existential_1((v0 + 480), v75);
                v77 = swift_task_alloc();
                *(v0 + 1184) = v77;
                *v77 = v0;
                v77[1] = sub_241126358;
                v78 = *(v0 + 856);
                v79 = *MEMORY[0x277D85DE8];

                return sub_24115F304(v78, v76);
              }

              else
              {
                sub_2410FB29C(v0 + 480, &qword_27E530CE0, &qword_2411683F8);
                v80 = [objc_opt_self() defaultStore];
                *(v0 + 1192) = v80;
                if (v80)
                {
                  v81 = v80;
                  *(v0 + 16) = v0;
                  *(v0 + 56) = v0 + 840;
                  *(v0 + 24) = sub_241126600;
                  v82 = swift_continuation_init();
                  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D18, &qword_241168520);
                  *(v0 + 80) = MEMORY[0x277D85DD0];
                  *(v0 + 88) = 1107296256;
                  *(v0 + 96) = sub_24112B3BC;
                  *(v0 + 104) = &block_descriptor_133;
                  *(v0 + 112) = v82;
                  [v81 aa:v0 + 80 primaryAppleAccountWithCompletion:?];
                  v83 = *MEMORY[0x277D85DE8];
                  v80 = (v0 + 16);
                }

                else
                {
                  __break(1u);
                }

                return MEMORY[0x282200938](v80);
              }
            }

            (*(v40 + 8))(*(v0 + 1080), v39);
          }

          sub_2410FC88C(*(v0 + 864), v0 + 360, &qword_27E530CF8, &qword_2411684A0);
          if (*(v0 + 384))
          {
            v47 = *(v0 + 392);
            __swift_project_boxed_opaque_existential_1((v0 + 360), *(v0 + 384));
            sub_241165978();
            __swift_destroy_boxed_opaque_existential_1((v0 + 360));
          }

          else
          {
            sub_2410FB29C(v0 + 360, &qword_27E530CF8, &qword_2411684A0);
          }

          goto LABEL_29;
        }
      }

      else
      {
        sub_2410FB29C(v0 + 800, &qword_27E530CF8, &qword_2411684A0);
      }

      sub_2410FB29C(v0 + 320, &qword_27E530CF8, &qword_2411684A0);

      v15 = 0xE300000000000000;
      v16 = 7104878;
      goto LABEL_20;
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v17 = sub_241165288();
  __swift_project_value_buffer(v17, qword_27E5339F0);
  v18 = sub_241165268();
  v19 = sub_241166048();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v88 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_241156B38(0xD00000000000005DLL, 0x800000024116B590, &v88);
    _os_log_impl(&dword_2410F8000, v18, v19, "%s Client is missing required entitlement com.apple.asktod", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x245CDC5E0](v21, -1, -1);
    MEMORY[0x245CDC5E0](v20, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();
  v23 = *(v0 + 1104);
  v24 = *(v0 + 1080);
  v25 = *(v0 + 1072);
  v26 = *(v0 + 1064);
  v27 = *(v0 + 1040);
  v28 = *(v0 + 1016);
  v29 = *(v0 + 992);
  v30 = *(v0 + 968);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v84 = *(v0 + 944);
  v85 = *(v0 + 936);
  v86 = *(v0 + 920);
  v87 = *(v0 + 896);

  v33 = *(v0 + 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33();
}

uint64_t sub_241126358()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_241126480, 0, 0);
}

uint64_t sub_241126480()
{
  v6 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 60);
  v1 = [objc_opt_self() defaultStore];
  v0[149] = v1;
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v0[2] = v0;
  v0[7] = v0 + 105;
  v0[3] = sub_241126600;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D18, &qword_241168520);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24112B3BC;
  v0[13] = &block_descriptor_133;
  v0[14] = v3;
  [v2 aa:v0 + 10 primaryAppleAccountWithCompletion:?];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241126600()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1200) = v2;
  if (v2)
  {
    v3 = sub_2411296BC;
  }

  else
  {
    v3 = sub_24112673C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24112673C()
{
  v89 = v0;
  v88[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 840);

  if (v1)
  {
    v2 = [v1 normalizedDSID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_241165DD8();
      v6 = v5;

      v2 = sub_2411169D8(v4, v6);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
  }

  v7 = 1;
LABEL_6:
  *(v0 + 1216) = v1;
  *(v0 + 204) = v7 & 1;
  *(v0 + 1208) = v2;
  v8 = *(v0 + 1160);
  v9 = *(v0 + 1152);
  v10 = *(v0 + 1136);
  v11 = *(v0 + 1072);
  v12 = *(v0 + 856);
  sub_241165298();
  if (v9(v11, 1, v10) == 1)
  {
    sub_2410FB29C(*(v0 + 1072), &qword_27E530CE8, &qword_241168400);
    goto LABEL_12;
  }

  v13 = (*(*(v0 + 1144) + 88))(*(v0 + 1072), *(v0 + 1136));
  v14 = *(v0 + 1144);
  v15 = *(v0 + 1136);
  v16 = *(v0 + 1072);
  if (v13 != *MEMORY[0x277CEEAD8])
  {
    (*(v14 + 8))(*(v0 + 1072), v15);
LABEL_12:
    *(v0 + 1280) = 0xF000000000000000;
    *(v0 + 1272) = 0;
    sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 544))
    {
      v22 = *(v0 + 552);
      __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
      sub_241165978();
      __swift_destroy_boxed_opaque_existential_1((v0 + 520));
    }

    else
    {
      sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 584))
    {
      v23 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
      sub_241165968();
      __swift_destroy_boxed_opaque_existential_1((v0 + 560));
    }

    else
    {
      sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 624))
    {
      v24 = *(v0 + 632);
      __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
      sub_241165958();
      __swift_destroy_boxed_opaque_existential_1((v0 + 600));
    }

    else
    {
      sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
    }

    v25 = *(v0 + 204);
    v26 = *(v0 + 1208);
    v27 = *(v0 + 1176);
    v28 = *(v0 + 1168);
    v29 = *(v0 + 1128);
    v30 = *(v0 + 856);
    v31 = *(v0 + 202);
    sub_241165CE8();
    sub_2411351C8(v28, v27);
    sub_2411351C8(0, 0xF000000000000000);
    sub_241165488();
    v30;
    *(v0 + 1288) = sub_241165C58();
    v32 = sub_241165268();
    v33 = sub_241166068();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 202);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v88[0] = v36;
      *v35 = 136315138;
      v37 = sub_241165468();
      v39 = sub_241156B38(v37, v38, v88);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2410F8000, v32, v33, "Attempting to inflate recipient group %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x245CDC5E0](v36, -1, -1);
      MEMORY[0x245CDC5E0](v35, -1, -1);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    v40 = *(v0 + 960);
    if (*(v0 + 664))
    {
      v41 = *(v0 + 672);
      __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1((v0 + 640));
    }

    else
    {
      v42 = *(v0 + 912);
      v43 = *(v0 + 904);
      sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
      (*(v42 + 56))(v40, 1, 1, v43);
    }

    v44 = *(v0 + 960);
    v45 = *(v0 + 952);
    v46 = *(v0 + 936);
    v47 = *(v0 + 928);
    v48 = *(v0 + 912);
    v49 = *(v0 + 904);
    (*(v48 + 104))(v45, *MEMORY[0x277CEED80], v49);
    (*(v48 + 56))(v45, 0, 1, v49);
    v50 = *(v47 + 48);
    sub_2410FC88C(v44, v46, &qword_27E530658, &unk_241167410);
    sub_2410FC88C(v45, v46 + v50, &qword_27E530658, &unk_241167410);
    v51 = *(v48 + 48);
    if (v51(v46, 1, v49) == 1)
    {
      v52 = *(v0 + 904);
      sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
      if (v51(v46 + v50, 1, v52) == 1)
      {
        sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
LABEL_34:
        v70 = *(v0 + 856);
        v71 = sub_2411653A8();
        v72 = sub_241165368();
        v74 = v73;

        if (v72 == 0xD00000000000001DLL && 0x800000024116A040 == v74)
        {

LABEL_38:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
          v76 = swift_allocObject();
          *(v76 + 16) = xmmword_2411673F0;
          v77 = *MEMORY[0x277D188E0];
          *(v76 + 32) = sub_241165DD8();
          *(v76 + 40) = v78;
          v62 = sub_2410FB2FC(v76);
          swift_setDeallocating();
          sub_2410FB464(v76 + 32);
          swift_deallocClassInstance();
          v63 = 1;
          goto LABEL_39;
        }

        v75 = sub_2411663E8();

        if (v75)
        {
          goto LABEL_38;
        }

LABEL_32:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2411673F0;
        v60 = *MEMORY[0x277D18868];
        *(inited + 32) = sub_241165DD8();
        *(inited + 40) = v61;
        v62 = sub_2410FB2FC(inited);
        swift_setDeallocating();
        sub_2410FB464(inited + 32);
        v63 = 0;
LABEL_39:
        *(v0 + 205) = v63;
        *(v0 + 1296) = v62;
        v79 = *(v0 + 201);
        sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
        *(v0 + 184) = 0;
        *(v0 + 192) = v62;
        *(v0 + 200) = v79;

        sub_2411324FC(v0 + 144, v0 + 208);
        v80 = swift_task_alloc();
        *(v0 + 1304) = v80;
        *v80 = v0;
        v80[1] = sub_241127C58;
        v81 = *(v0 + 202);
        v82 = *MEMORY[0x277D85DE8];

        return sub_24115A1D4(v0 + 208, v81);
      }
    }

    else
    {
      v53 = *(v0 + 904);
      sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
      v54 = v51(v46 + v50, 1, v53);
      v55 = *(v0 + 952);
      v56 = *(v0 + 944);
      if (v54 != 1)
      {
        v64 = *(v0 + 936);
        v65 = *(v0 + 920);
        v66 = *(v0 + 912);
        v67 = *(v0 + 904);
        (*(v66 + 32))(v65, v46 + v50, v67);
        sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
        v68 = sub_241165D98();
        v69 = *(v66 + 8);
        v69(v65, v67);
        sub_2410FB29C(v55, &qword_27E530658, &unk_241167410);
        v69(v56, v67);
        sub_2410FB29C(v64, &qword_27E530658, &unk_241167410);
        if ((v68 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v57 = *(v0 + 912);
      v58 = *(v0 + 904);
      sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
      (*(v57 + 8))(v56, v58);
    }

    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_32;
  }

  v17 = *(v0 + 984);
  v18 = *(v0 + 976);
  v19 = *(v0 + 968);
  (*(v14 + 96))(*(v0 + 1072), v15);
  v20 = *v16;
  *(v0 + 1224) = v20;
  sub_241165AF8();
  if ((*(v17 + 48))(v19, 1, v18) == 1)
  {
    v21 = *(v0 + 968);

    sub_2410FB29C(v21, &qword_27E530AB0, &qword_241168080);
    goto LABEL_12;
  }

  (*(*(v0 + 984) + 32))(*(v0 + 992), *(v0 + 968), *(v0 + 976));
  *(v0 + 1232) = [objc_opt_self() sharedSession];
  v84 = *(MEMORY[0x277CC9D20] + 4);
  v85 = swift_task_alloc();
  *(v0 + 1240) = v85;
  *v85 = v0;
  v85[1] = sub_24112722C;
  v86 = *(v0 + 992);
  v87 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28211ED00](v86, 0);
}

uint64_t sub_24112722C(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = *v4;
  v9 = *(*v4 + 1240);
  v15 = *v4;
  *(*v4 + 1248) = v3;

  if (v3)
  {
    v10 = sub_24112A174;
  }

  else
  {
    v11 = v8[154];

    v8[157] = a2;
    v8[158] = a1;
    v10 = sub_24112739C;
  }

  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24112739C()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
  v65 = v2;
  *(v0 + 1280) = v2;
  *(v0 + 1272) = v1;
  sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 544))
  {
    v3 = *(v0 + 552);
    __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
    sub_241165978();
    __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  }

  else
  {
    sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 584))
  {
    v4 = *(v0 + 592);
    __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
    sub_241165968();
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  }

  else
  {
    sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 624))
  {
    v5 = *(v0 + 632);
    __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
    sub_241165958();
    __swift_destroy_boxed_opaque_existential_1((v0 + 600));
  }

  else
  {
    sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  }

  v6 = *(v0 + 204);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1176);
  v9 = *(v0 + 1168);
  v64 = *(v0 + 1128);
  v10 = *(v0 + 856);
  v11 = *(v0 + 202);
  sub_241165CE8();
  sub_2411351C8(v9, v8);
  sub_2411351C8(v1, v65);
  sub_241165488();
  v10;
  *(v0 + 1288) = sub_241165C58();
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 202);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v66[0] = v16;
    *v15 = 136315138;
    v17 = sub_241165468();
    v19 = sub_241156B38(v17, v18, v66);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2410F8000, v12, v13, "Attempting to inflate recipient group %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245CDC5E0](v16, -1, -1);
    MEMORY[0x245CDC5E0](v15, -1, -1);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
  v20 = *(v0 + 960);
  if (*(v0 + 664))
  {
    v21 = *(v0 + 672);
    __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
    sub_241165948();
    __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  }

  else
  {
    v22 = *(v0 + 912);
    v23 = *(v0 + 904);
    sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    (*(v22 + 56))(v20, 1, 1, v23);
  }

  v24 = *(v0 + 960);
  v25 = *(v0 + 952);
  v26 = *(v0 + 936);
  v27 = *(v0 + 928);
  v28 = *(v0 + 912);
  v29 = *(v0 + 904);
  (*(v28 + 104))(v25, *MEMORY[0x277CEED80], v29);
  (*(v28 + 56))(v25, 0, 1, v29);
  v30 = *(v27 + 48);
  sub_2410FC88C(v24, v26, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v25, v26 + v30, &qword_27E530658, &unk_241167410);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v29) == 1)
  {
    v32 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    if (v31(v26 + v30, 1, v32) == 1)
    {
      sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
      goto LABEL_23;
    }

LABEL_20:
    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_21;
  }

  v33 = *(v0 + 904);
  sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
  v34 = v31(v26 + v30, 1, v33);
  v35 = *(v0 + 952);
  v36 = *(v0 + 944);
  if (v34 == 1)
  {
    v37 = *(v0 + 912);
    v38 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    (*(v37 + 8))(v36, v38);
    goto LABEL_20;
  }

  v44 = *(v0 + 936);
  v45 = *(v0 + 920);
  v46 = *(v0 + 912);
  v47 = *(v0 + 904);
  (*(v46 + 32))(v45, v26 + v30, v47);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8]);
  v48 = sub_241165D98();
  v49 = *(v46 + 8);
  v49(v45, v47);
  sub_2410FB29C(v35, &qword_27E530658, &unk_241167410);
  v49(v36, v47);
  sub_2410FB29C(v44, &qword_27E530658, &unk_241167410);
  if ((v48 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  v50 = *(v0 + 856);
  v51 = sub_2411653A8();
  v52 = sub_241165368();
  v54 = v53;

  if (v52 != 0xD00000000000001DLL || 0x800000024116A040 != v54)
  {
    v55 = sub_2411663E8();

    if (v55)
    {
      goto LABEL_27;
    }

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2411673F0;
    v40 = *MEMORY[0x277D18868];
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v41;
    v42 = sub_2410FB2FC(inited);
    swift_setDeallocating();
    sub_2410FB464(inited + 32);
    v43 = 0;
    goto LABEL_28;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2411673F0;
  v57 = *MEMORY[0x277D188E0];
  *(v56 + 32) = sub_241165DD8();
  *(v56 + 40) = v58;
  v42 = sub_2410FB2FC(v56);
  swift_setDeallocating();
  sub_2410FB464(v56 + 32);
  swift_deallocClassInstance();
  v43 = 1;
LABEL_28:
  *(v0 + 205) = v43;
  *(v0 + 1296) = v42;
  v59 = *(v0 + 201);
  sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
  *(v0 + 184) = 0;
  *(v0 + 192) = v42;
  *(v0 + 200) = v59;

  sub_2411324FC(v0 + 144, v0 + 208);
  v60 = swift_task_alloc();
  *(v0 + 1304) = v60;
  *v60 = v0;
  v60[1] = sub_241127C58;
  v61 = *(v0 + 202);
  v62 = *MEMORY[0x277D85DE8];

  return sub_24115A1D4(v0 + 208, v61);
}

uint64_t sub_241127C58(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1304);
  v10 = *v2;
  v3[164] = a1;
  v3[165] = v1;

  if (v1)
  {
    v5 = v3[162];

    v6 = sub_241128438;
  }

  else
  {
    v6 = sub_241127DAC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_241127DAC()
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(v0 + 205) == 1)
  {
    sub_2410FC88C(*(v0 + 864), v0 + 760, &qword_27E530CF8, &qword_2411684A0);
    v1 = *(v0 + 784);
    if (v1)
    {
      v2 = *(v0 + 792);
      __swift_project_boxed_opaque_existential_1((v0 + 760), *(v0 + 784));
      v3 = sub_241165978();
      v1 = v4;
      __swift_destroy_boxed_opaque_existential_1((v0 + 760));
    }

    else
    {
      sub_2410FB29C(v0 + 760, &qword_27E530CF8, &qword_2411684A0);
      v3 = 0;
    }

    v5 = *(v0 + 896);
    v6 = *(v0 + 888);
    v7 = *(v0 + 880);
    v8 = *(v0 + 856);
    v9 = sub_2411653A8();
    (*(v6 + 104))(v5, *MEMORY[0x277CEEDF8], v7);
    MEMORY[0x245CDB590](v3, v1, v9, v5);

    (*(v6 + 8))(v5, v7);
  }

  v10 = *(v0 + 1128);
  v11 = sub_241165268();
  v12 = sub_241166068();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2410F8000, v11, v12, "Checking if send destinations are valid for sending", v13, 2u);
    MEMORY[0x245CDC5E0](v13, -1, -1);
  }

  v14 = *(v0 + 1128);
  v15 = *(v0 + 201);

  v16 = sub_241165268();
  v17 = sub_241166068();
  v18 = os_log_type_enabled(v16, v17);
  if (v15 == 1)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2410F8000, v16, v17, "Validating send destinations", v19, 2u);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    v20 = swift_task_alloc();
    *(v0 + 1328) = v20;
    *v20 = v0;
    v20[1] = sub_241128640;
    v21 = *(v0 + 1312);
    v22 = *MEMORY[0x277D85DE8];

    return sub_2411583BC();
  }

  else
  {
    if (v18)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      MEMORY[0x245CDC5E0](v24, -1, -1);
    }

    v25 = *(v0 + 205);

    if (v25 == 1)
    {
      *(v0 + 1336) = [objc_allocWithZone(MEMORY[0x277D3A080]) init];
      v26 = *(MEMORY[0x277D3A058] + 4);
      v27 = swift_task_alloc();
      *(v0 + 1344) = v27;
      *v27 = v0;
      v27[1] = sub_241128DE0;
      v28 = *MEMORY[0x277D85DE8];

      return MEMORY[0x28219AFD0]();
    }

    else
    {
      v29 = *(v0 + 1128);
      v30 = sub_241165268();
      v31 = sub_241166068();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2410F8000, v30, v31, "Send destinations are valid", v32, 2u);
        MEMORY[0x245CDC5E0](v32, -1, -1);
      }

      v33 = *(v0 + 1312);
      v34 = *(v0 + 1296);
      v35 = *(v0 + 1288);
      v48 = *(v0 + 1272);
      v52 = *(v0 + 1176);
      v53 = *(v0 + 1216);
      v49 = *(v0 + 1168);
      v50 = *(v0 + 1280);
      v36 = *(v0 + 1112);
      v58 = *(v0 + 1104);
      v59 = *(v0 + 1080);
      v37 = *(v0 + 1056);
      v56 = *(v0 + 1048);
      v57 = *(v0 + 1064);
      v38 = *(v0 + 1032);
      v54 = *(v0 + 1024);
      v55 = *(v0 + 1040);
      v60 = *(v0 + 1072);
      v61 = *(v0 + 1016);
      v62 = *(v0 + 992);
      v63 = *(v0 + 968);
      v51 = *(v0 + 960);
      v64 = *(v0 + 952);
      v65 = *(v0 + 944);
      v66 = *(v0 + 936);
      v67 = *(v0 + 920);
      v68 = *(v0 + 896);

      v39 = *(v33 + 80);
      v40 = *(v33 + 74);
      v41 = sub_241165AA8();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();

      sub_241165A88();
      v44 = objc_allocWithZone(sub_2411658E8());
      v45 = sub_2411658C8();

      sub_241109164(v48, v50);
      sub_241109164(v49, v52);

      sub_241132558(v0 + 144);
      sub_2410FB29C(v51, &qword_27E530658, &unk_241167410);
      (*(v38 + 8))(v55, v54);
      (*(v37 + 8))(v57, v56);

      v46 = *(v0 + 8);
      v47 = *MEMORY[0x277D85DE8];

      return v46(v45);
    }
  }
}

uint64_t sub_241128438()
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[152];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[139];
  v8 = v0[132];
  v29 = v0[131];
  v31 = v0[133];
  v9 = v0[129];
  v25 = v0[128];
  v27 = v0[130];
  v10 = v0[120];

  sub_241109164(v3, v2);
  sub_241109164(v6, v5);

  sub_241132558((v0 + 18));
  sub_2410FB29C(v10, &qword_27E530658, &unk_241167410);
  (*(v9 + 8))(v27, v25);
  (*(v8 + 8))(v31, v29);
  v11 = v0[138];
  v12 = v0[135];
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[130];
  v16 = v0[127];
  v17 = v0[124];
  v18 = v0[121];
  v19 = v0[120];
  v20 = v0[119];
  v24 = v0[165];
  v26 = v0[118];
  v28 = v0[117];
  v30 = v0[115];
  v32 = v0[112];

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_241128640(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1328);
  v6 = *v1;
  *(*v1 + 206) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24112876C, 0, 0);
}

uint64_t sub_24112876C()
{
  v84 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1128);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 206);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "Validated send destinations: %{BOOL}d", v5, 8u);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v6 = *(v0 + 206);

  if (v6 == 1)
  {
    if (*(v0 + 205) == 1)
    {
      *(v0 + 1336) = [objc_allocWithZone(MEMORY[0x277D3A080]) init];
      v7 = *(MEMORY[0x277D3A058] + 4);
      v8 = swift_task_alloc();
      *(v0 + 1344) = v8;
      *v8 = v0;
      v8[1] = sub_241128DE0;
      v9 = *MEMORY[0x277D85DE8];

      return MEMORY[0x28219AFD0]();
    }

    else
    {
      v32 = *(v0 + 1128);
      v33 = sub_241165268();
      v34 = sub_241166068();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2410F8000, v33, v34, "Send destinations are valid", v35, 2u);
        MEMORY[0x245CDC5E0](v35, -1, -1);
      }

      v36 = *(v0 + 1312);
      v37 = *(v0 + 1296);
      v38 = *(v0 + 1288);
      v52 = *(v0 + 1272);
      v56 = *(v0 + 1176);
      v57 = *(v0 + 1216);
      v53 = *(v0 + 1168);
      v54 = *(v0 + 1280);
      v39 = *(v0 + 1112);
      v62 = *(v0 + 1104);
      v63 = *(v0 + 1080);
      v40 = *(v0 + 1056);
      v60 = *(v0 + 1048);
      v61 = *(v0 + 1064);
      v41 = *(v0 + 1032);
      v58 = *(v0 + 1024);
      v59 = *(v0 + 1040);
      v64 = *(v0 + 1072);
      v65 = *(v0 + 1016);
      v67 = *(v0 + 992);
      v69 = *(v0 + 968);
      v55 = *(v0 + 960);
      v71 = *(v0 + 952);
      v74 = *(v0 + 944);
      v77 = *(v0 + 936);
      v80 = *(v0 + 920);
      v83 = *(v0 + 896);

      v42 = *(v36 + 80);
      v43 = *(v36 + 74);
      v44 = sub_241165AA8();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();

      sub_241165A88();
      v47 = objc_allocWithZone(sub_2411658E8());
      v48 = sub_2411658C8();

      sub_241109164(v52, v54);
      sub_241109164(v53, v56);

      sub_241132558(v0 + 144);
      sub_2410FB29C(v55, &qword_27E530658, &unk_241167410);
      (*(v41 + 8))(v59, v58);
      (*(v40 + 8))(v61, v60);

      v49 = *(v0 + 8);
      v50 = *MEMORY[0x277D85DE8];

      return v49(v48);
    }
  }

  else
  {
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1296);
    v12 = *(v0 + 1288);
    v13 = *(v0 + 1280);
    v14 = *(v0 + 1272);
    v70 = *(v0 + 1216);
    v66 = *(v0 + 1176);
    v15 = *(v0 + 1168);
    v16 = *(v0 + 1112);
    v17 = *(v0 + 1056);
    v78 = *(v0 + 1048);
    v81 = *(v0 + 1064);
    v18 = *(v0 + 1032);
    v72 = *(v0 + 1024);
    v75 = *(v0 + 1040);
    v68 = *(v0 + 960);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();

    sub_241109164(v14, v13);
    sub_241109164(v15, v66);

    sub_241132558(v0 + 144);
    sub_2410FB29C(v68, &qword_27E530658, &unk_241167410);
    (*(v18 + 8))(v75, v72);
    (*(v17 + 8))(v81, v78);
    v20 = *(v0 + 1104);
    v21 = *(v0 + 1080);
    v22 = *(v0 + 1072);
    v23 = *(v0 + 1064);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 1016);
    v26 = *(v0 + 992);
    v27 = *(v0 + 968);
    v28 = *(v0 + 960);
    v29 = *(v0 + 952);
    v73 = *(v0 + 944);
    v76 = *(v0 + 936);
    v79 = *(v0 + 920);
    v82 = *(v0 + 896);

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x277D85DE8];

    return v30();
  }
}

uint64_t sub_241128DE0(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1344);
  v9 = *v2;
  *(v3 + 207) = a1;
  *(v3 + 1352) = v1;

  if (v1)
  {
    v5 = sub_24112AB68;
  }

  else
  {
    v5 = sub_241128F24;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}