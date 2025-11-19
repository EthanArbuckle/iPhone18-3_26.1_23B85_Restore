uint64_t sub_182048A70(uint64_t a1, int a2)
{
  v6 = *(v2 + 952);
  if (!v6)
  {
    __break(1u);
    goto LABEL_90;
  }

  v7 = v2;
  if (*(v2 + 1026))
  {
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v8 = qword_1EA837250;

    if (v8 == -1)
    {
LABEL_4:
      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {

LABEL_9:
        v9 = 0;
LABEL_10:
        if (*(v6 + 1097) != 1)
        {
LABEL_16:

          return 0;
        }

        v4 = *(v7 + 80);
        v10 = *(v7 + 88);
        v11 = qword_1EA837250;

        if (v11 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
        {

          goto LABEL_16;
        }

LABEL_73:
        v110 = v6;
        v109 = v9;
        v27 = 0x8000000182BDB0F0;
        if (qword_1EA837248 == -1)
        {
          goto LABEL_74;
        }

        goto LABEL_93;
      }

      v113 = v7;
      v5 = 0x8000000182BDB110;
      if (qword_1EA837248 == -1)
      {
LABEL_69:
        v46 = sub_182AD2698();
        __swift_project_value_buffer(v46, qword_1EA843418);
        v47 = swift_allocObject();
        *(v47 + 16) = "servicePendingSendData(stream:burstLimitReschedule:)";
        *(v47 + 24) = 52;
        *(v47 + 32) = 2;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_181F8C724;
        *(v48 + 24) = v47;
        v49 = swift_allocObject();
        *(v49 + 16) = v4;
        *(v49 + 24) = v3;
        v50 = swift_allocObject();
        *(v50 + 16) = 0xD000000000000015;
        *(v50 + 24) = v5;

        v51 = sub_182AD2678();
        v52 = sub_182AD38A8();
        v110 = swift_allocObject();
        *(v110 + 16) = 32;
        v112 = swift_allocObject();
        *(v112 + 16) = 8;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_18206B168;
        *(v53 + 24) = v48;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_181F8C718;
        *(v54 + 24) = v53;
        v109 = swift_allocObject();
        *(v109 + 16) = 32;
        v114 = swift_allocObject();
        *(v114 + 16) = 8;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_181F8C720;
        *(v55 + 24) = v49;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_181F8C718;
        *(v56 + 24) = v55;
        v115 = swift_allocObject();
        *(v115 + 16) = 32;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_181F8C720;
        *(v57 + 24) = v50;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_181F8C718;
        *(v58 + 24) = v57;
        LODWORD(v108) = v52;
        v111 = v51;
        if (os_log_type_enabled(v51, v52))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v118 = 0;
          *v59 = 770;
          v117[0] = v60;
          v122 = (v59 + 2);
          v124 = sub_181F8C728;
          v125 = v110;
          v9 = 0;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v112;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C714;
          v125 = v54;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v109;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v114;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C714;
          v125 = v56;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v115;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v116;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C714;
          v125 = v58;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v61 = v111;
          _os_log_impl(&dword_181A37000, v111, v108, "%s %s %s", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v60, -1, -1);
          MEMORY[0x1865DF520](v59, -1, -1);
        }

        else
        {

          v9 = 0;
        }

        v7 = v113;
        goto LABEL_10;
      }

LABEL_91:
      swift_once();
      goto LABEL_69;
    }

LABEL_67:
    swift_once();
    goto LABEL_4;
  }

  if (*(v6 + 1097))
  {

    goto LABEL_9;
  }

  v116 = a1;
  LODWORD(v112) = a2;
  v13 = *(v2 + 304);
  v10 = (0x202020100uLL >> (8 * v13));

  v115 = sub_182232B60(v13);

  v14 = *(v7 + 352);
  if (v10)
  {
    swift_beginAccess();
    if (v10 == 1)
    {
      v15 = 200;
    }

    else
    {
      v15 = 352;
    }
  }

  else
  {
    swift_beginAccess();
    v15 = 48;
  }

  v114 = *(v14 + v15);
  v16 = *(v7 + 376);
  swift_beginAccess();
  v17 = *(v16 + 40);
  if (!*(v17 + 16) || (v18 = sub_18224EF74(v10), (v19 & 1) == 0))
  {
LABEL_90:
    swift_endAccess();
    __break(1u);
    goto LABEL_91;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  swift_endAccess();
  v21 = *(v7 + 1026);

  v22 = sub_182211074(v6, v21);

  v4 = &v104;
  v24 = *(v7 + 296);
  v25 = *(v7 + 304);
  MEMORY[0x1EEE9AC00](v23);
  v9 = v116;

  v113 = v7;
  v3 = v6;
  LODWORD(v115) = sub_18202FE30(v6, v24, v10, v25, v20, v114, v115, v22, sub_18206AC88, v7, sub_18206AC94, v7, sub_18206AC9C);

  v6 = *(*(v9 + 56) + 48);
  swift_beginAccess();
  v26 = 0;
  v7 = *(v9 + 320);
  if (*(v9 + 312))
  {
    goto LABEL_48;
  }

  v27 = *(v9 + 304);
  if (*(v9 + 112) == 5)
  {
    v26 = nw_frame_unclaimed_length(*(v9 + 88));
    if (!v27)
    {
      goto LABEL_47;
    }

LABEL_32:
    isa = v27[4].isa;
    v34 = (v27[3].isa + isa);
    if (v27[2].isa < v34)
    {
      v34 = v27[2].isa;
    }

    v118 = v27;
    v119 = isa;
    v120 = v34;
    v35 = swift_retain_n();
    v4 = v27;
    do
    {
      if (isa == v120)
      {
        if ((sub_181AC81FC(v35) & 1) == 0)
        {

          v9 = v116;
          goto LABEL_47;
        }

        v4 = v118;
        isa = v119;
      }

      v38 = &v4[isa];
      isa = (isa + 1);
      v119 = isa;
      v39 = v38[5];
      swift_beginAccess();
      if (*(v39 + 40) == 5)
      {
        v36 = *(v39 + 16);

        v37 = nw_frame_unclaimed_length(v36);
      }

      else
      {
        v40 = *(v39 + 88);
        if (v40)
        {
          v41 = *(v39 + 72);
          v42 = *(v39 + 80);
          v31 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v31)
          {
            goto LABEL_65;
          }

          v37 = v40 - v43;
          if (__OFSUB__(v40, v43))
          {
            goto LABEL_66;
          }
        }

        else
        {

          v37 = 0;
        }
      }

      swift_endAccess();

      v31 = __OFADD__(v26, v37);
      v26 += v37;
    }

    while (!v31);
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v28 = *(v9 + 160);
  if (v28)
  {
    v29 = *(v9 + 144);
    v30 = *(v9 + 152);
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      v26 = v28 - v32;
      if (!__OFSUB__(v28, v32))
      {
        if (!v27)
        {
          goto LABEL_47;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

  v26 = 0;
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_47:
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_72;
  }

LABEL_48:
  if (__CFADD__(v7, v26))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  swift_endAccess();
  v44 = v113;
  if (v6 < v7 + v26 && *(*(v113 + 144) + 48) >= *(*(v113 + 144) + 32))
  {
    sub_18205CF18();
  }

  sub_182170B00();
  if ((v115 & 1) == 0)
  {
    goto LABEL_16;
  }

  v27 = *(v44 + 80);
  v4 = *(v44 + 88);
  v45 = qword_1EA837250;

  if (v45 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {

    if ((v112 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v122 = 0;
  v123 = 0xE000000000000000;
  sub_182AD3BA8();

  v122 = 0xD00000000000001FLL;
  v123 = 0x8000000182BDB0D0;
  v80 = v9;
  v81 = *(v9 + 32);
  v82 = *(v80 + 40);

  MEMORY[0x1865D9CA0](v81, v82);

  v83 = v122;
  v115 = v123;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v84 = sub_182AD2698();
  __swift_project_value_buffer(v84, qword_1EA843418);
  v85 = swift_allocObject();
  *(v85 + 16) = "servicePendingSendData(stream:burstLimitReschedule:)";
  *(v85 + 24) = 52;
  *(v85 + 32) = 2;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_181F8C724;
  *(v86 + 24) = v85;
  v87 = swift_allocObject();
  *(v87 + 16) = v27;
  *(v87 + 24) = v4;
  v88 = swift_allocObject();
  v89 = v115;
  *(v88 + 16) = v83;
  *(v88 + 24) = v89;

  v90 = sub_182AD2678();
  v91 = sub_182AD38A8();
  v107 = swift_allocObject();
  *(v107 + 16) = 32;
  v108 = swift_allocObject();
  *(v108 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_18206B168;
  *(v92 + 24) = v86;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_181F8C718;
  *(v93 + 24) = v92;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v110 = swift_allocObject();
  *(v110 + 16) = 8;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_181F8C720;
  *(v94 + 24) = v87;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_181F8C718;
  *(v95 + 24) = v94;
  v111 = swift_allocObject();
  LOBYTE(v111[2].isa) = 32;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_181F8C720;
  *(v96 + 24) = v88;
  v27 = swift_allocObject();
  v27[2].isa = sub_181F8C718;
  v27[3].isa = v96;
  v97 = v91;
  v98 = v91;
  v10 = v90;
  if (os_log_type_enabled(v90, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v117[0] = 0;
    v106 = v99;
    *v99 = 770;
    v105 = v100;
    v118 = v99 + 2;
    v121 = v100;
    v122 = sub_181F8C728;
    v123 = v107;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v108;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C714;
    v123 = v93;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v109;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v110;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C714;
    v123 = v95;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v111;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v114;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C714;
    v123 = v27;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v101 = v97;
    v102 = v106;
    _os_log_impl(&dword_181A37000, v10, v101, "%s %s %s", v106, 0x20u);
    v103 = v105;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v103, -1, -1);
    MEMORY[0x1865DF520](v102, -1, -1);

    goto LABEL_87;
  }

LABEL_86:

LABEL_87:
  v9 = v116;
  if ((v112 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_58:
  if (*(v9 + 24))
  {
    __break(1u);
LABEL_93:
    swift_once();
LABEL_74:
    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);
    v63 = swift_allocObject();
    *(v63 + 16) = "servicePendingSendData(stream:burstLimitReschedule:)";
    *(v63 + 24) = 52;
    *(v63 + 32) = 2;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C724;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = v4;
    *(v65 + 24) = v10;
    v66 = swift_allocObject();
    *(v66 + 16) = 0xD000000000000017;
    *(v66 + 24) = v27;

    v67 = sub_182AD2678();
    v68 = sub_182AD38A8();
    v112 = swift_allocObject();
    *(v112 + 16) = 32;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_18206B168;
    *(v69 + 24) = v64;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C718;
    *(v70 + 24) = v69;
    v111 = swift_allocObject();
    LOBYTE(v111[2].isa) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C720;
    *(v71 + 24) = v65;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C718;
    *(v72 + 24) = v71;
    v115 = swift_allocObject();
    *(v115 + 16) = 32;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C720;
    *(v73 + 24) = v66;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C718;
    *(v74 + 24) = v73;
    v75 = v68;
    if (os_log_type_enabled(v67, v68))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v118 = 0;
      *v76 = 770;
      v108 = v77;
      v117[0] = v77;
      v122 = (v76 + 2);
      v124 = sub_181F8C728;
      v125 = v112;
      v78 = v109;
      sub_181F73AE0(&v124, &v122, &v118, v117);
      if (v78)
      {

        while (1)
        {

          __break(1u);
        }
      }

      v124 = sub_181F8C728;
      v125 = v113;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C714;
      v125 = v70;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v111;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v114;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C714;
      v125 = v72;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v115;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v116;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C714;
      v125 = v74;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      _os_log_impl(&dword_181A37000, v67, v75, "%s %s %s", v76, 0x20u);
      v79 = v108;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v79, -1, -1);
      MEMORY[0x1865DF520](v76, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_18205F50C(*(v9 + 16));
LABEL_60:

  return 1;
}

uint64_t QUICConnectionImplementation.handleOutbound(frame:from:metadataComplete:connectionComplete:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v9 = v4;
  LODWORD(v199) = a3;
  v12 = *(a1 + 16);
  v210 = *a1;
  v211 = v12;
  v212 = *(a1 + 32);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 128);
  v219 = *(a1 + 112);
  v220 = v17;
  v221 = *(a1 + 144);
  v18 = *(a1 + 96);
  v217 = *(a1 + 80);
  v218 = v18;
  v226 = *(a1 + 208);
  v19 = *(a1 + 192);
  v20 = *(a1 + 160);
  v21 = *(a1 + 168);
  v224 = *(a1 + 176);
  v225 = v19;
  v213 = v14;
  v214 = v13;
  v215 = v16;
  v216 = v15;
  v222 = v20;
  v223 = v21;
  if (BYTE8(v211) == 5)
  {
    v6 = nw_frame_unclaimed_length(v210);
    goto LABEL_9;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  v22 = __OFADD__(v13, v16);
  v23 = v13 + v16;
  if (v22)
  {
    __break(1u);
    goto LABEL_89;
  }

  v6 = v15 - v23;
  if (__OFSUB__(v15, v23))
  {
    __break(1u);
LABEL_8:
    v6 = 0;
  }

LABEL_9:
  ObjectType = *(v4 + 80);
  v5 = *(v4 + 88);
  v24 = qword_1EA837250;

  if (v24 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    LODWORD(v8) = byte_1EA843430;
    if (byte_1EA843430 & 1) != 0 && (__nwlog_is_datapath_logging_enabled())
    {
      *&v207[0] = 0;
      *(&v207[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BDA4E0);
      if (a2)
      {
        v90 = sub_182AD2F38();
        v92 = v91;
      }

      else
      {
LABEL_89:
        v92 = 0xE900000000000073;
        v90 = 0x776F6C46206C6C41;
      }

      MEMORY[0x1865D9CA0](v90, v92);

      MEMORY[0x1865D9CA0](0x20657A69732820, 0xE700000000000000);
      v203 = v6;
      v93 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v93);

      MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BDA500);
      if (v199)
      {
        v94 = 1702195828;
      }

      else
      {
        v94 = 0x65736C6166;
      }

      if (v199)
      {
        v95 = 0xE400000000000000;
      }

      else
      {
        v95 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v94, v95);

      v196 = *(&v207[0] + 1);
      osloga = *&v207[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v96 = sub_182AD2698();
      __swift_project_value_buffer(v96, qword_1EA843418);
      v97 = swift_allocObject();
      *(v97 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
      *(v97 + 24) = 63;
      *(v97 + 32) = 2;
      v190 = swift_allocObject();
      *(v190 + 16) = sub_181F8C724;
      *(v190 + 24) = v97;
      v98 = swift_allocObject();
      *(v98 + 16) = ObjectType;
      *(v98 + 24) = v5;
      v166 = swift_allocObject();
      *(v166 + 16) = osloga;
      *(v166 + 24) = v196;

      oslog = sub_182AD2678();
      v194 = sub_182AD38A8();
      v191 = swift_allocObject();
      *(v191 + 16) = 32;
      v170 = swift_allocObject();
      *(v170 + 16) = 8;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_18206B168;
      *(v99 + 24) = v190;
      v100 = swift_allocObject();
      *(v100 + 16) = sub_181F8C718;
      *(v100 + 24) = v99;
      v173 = v100;
      v177 = swift_allocObject();
      *(v177 + 16) = 32;
      v181 = swift_allocObject();
      LOBYTE(v181[2].isa) = 8;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_181F8C720;
      *(v101 + 24) = v98;
      ObjectType = swift_allocObject();
      *(ObjectType + 16) = sub_181F8C718;
      *(ObjectType + 24) = v101;
      v186 = swift_allocObject();
      *(v186 + 16) = 32;
      v189 = swift_allocObject();
      *(v189 + 16) = 8;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_181F8C720;
      *(v102 + 24) = v166;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_181F8C718;
      *(v103 + 24) = v102;
      if (os_log_type_enabled(oslog, v194))
      {
        v167 = v103;
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v209[0] = 0;
        v160 = v105;
        bufb = v104;
        *v104 = 770;
        v202 = v105;
        v203 = v104 + 2;
        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v191;
        v25 = 0;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v170;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v173;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v177;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v181;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = ObjectType;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v186;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v189;
        sub_181F73AE0(v207, &v203, v209, &v202);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v167;
        sub_181F73AE0(v207, &v203, v209, &v202);

        _os_log_impl(&dword_181A37000, oslog, v194, "%s %s %s", bufb, 0x20u);
        ObjectType = v160;
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v160, -1, -1);
        MEMORY[0x1865DF520](bufb, -1, -1);

        goto LABEL_13;
      }
    }

    v25 = 0;
LABEL_13:
    swift_beginAccess();
    v26 = *(v9 + 40);
    if (*(v26 + 16))
    {
      v27 = sub_18224EEF0(a2);
      if (v28)
      {
        if (*(*(*(v26 + 56) + 8 * v27) + 16))
        {
          type metadata accessor for QUICDatagramFlow();
          swift_unknownObjectRetain();
          v29 = swift_dynamicCastClass();
          if (v29)
          {
            sub_18204CE84(&v210, v29);
            return swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v30 = *(v9 + 40);
    if (!*(v30 + 16))
    {
      goto LABEL_30;
    }

    v31 = sub_18224EEF0(a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_30;
    }

    v5 = *(*(*(v30 + 56) + 8 * v31) + 16);
    if (!v5)
    {
      goto LABEL_30;
    }

    type metadata accessor for QUICStreamInstance();
    swift_unknownObjectRetain();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      break;
    }

    if (*(v33 + 24))
    {
      if (v8)
      {
        a4 = *(v9 + 80);
        v34 = *(v9 + 88);
        v35 = qword_1EA837248;

        if (v35 != -1)
        {
          swift_once();
        }

        v36 = sub_182AD2698();
        __swift_project_value_buffer(v36, qword_1EA843418);

        v37 = sub_182AD2678();
        v38 = sub_182AD38A8();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v196 = v5;
          v40 = swift_slowAlloc();
          *&v207[0] = v40;
          *v39 = 136315650;
          v41 = sub_182AD3BF8();
          ObjectType = v42;
          v8 = sub_181C64FFC(v41, v42, v207);

          *(v39 + 4) = v8;
          *(v39 + 12) = 2080;
          a4 = sub_181C64FFC(a4, v34, v207);

          *(v39 + 14) = a4;
          *(v39 + 22) = 2080;
          *(v39 + 24) = sub_181C64FFC(0xD00000000000002BLL, 0x8000000182BDA3B0, v207);
          _os_log_impl(&dword_181A37000, v37, v38, "%s %s %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v40, -1, -1);
          MEMORY[0x1865DF520](v39, -1, -1);
        }

        else
        {
        }
      }

      Frame.finalize(success:)(0);
      swift_unknownObjectRelease();
      v54 = *(&v210 + 1);
      v53 = v210;
      v55 = v211;
      v56 = BYTE8(v211);
      v25 = *(&v212 + 1);
      v74 = v212;
      v9 = v213;
      a2 = v223;
      if (v213 == 2 && v212 == 0)
      {
        goto LABEL_37;
      }

      sub_181F68EF4(v210, *(&v210 + 1), v211, BYTE8(v211));

      sub_181F68F3C(v74, v25, v9);
      __break(1u);
      goto LABEL_55;
    }

    v65 = *(v33 + 16);
    oslog = v33;
    if (!v21 || (v66 = *(v21 + 24)) == 0)
    {
      v21 = a4;
      if ((v65 & 2) != 0)
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    v191 = *(v33 + 16);
    if (v66 < 1)
    {
      __break(1u);
LABEL_125:
      swift_once();
      goto LABEL_47;
    }

    v189 = v6;
    v196 = v5;
    v67 = *(v21 + 32);
    v68 = *(v21 + 16);
    if (v67 < v68)
    {
      v68 = 0;
    }

    v69 = v21 + 40 * (v67 - v68);
    v70 = *(v69 + 40);
    v71 = *(v69 + 56);
    v208 = *(v69 + 72);
    v207[0] = v70;
    v207[1] = v71;
    v5 = *(&v71 + 1);
    ObjectType = swift_getObjectType();
    sub_181F49AE8(v207, &v203);
    if (qword_1ED4100E8 != -1)
    {
      goto LABEL_125;
    }

LABEL_47:
    LOWORD(v203) = word_1ED411CB0;
    v204 = qword_1ED411CB8;
    v205 = qword_1ED411CC0;
    v206 = byte_1ED411CC8;
    v72 = *(v5 + 48);
    sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);
    v73 = v72(&v203, ObjectType, v5);
    sub_18206A19C(v207);
    sub_181F48350(v204, v205, v206);
    if (v73)
    {
      v21 = a4 | v199;
      goto LABEL_56;
    }

LABEL_55:
    v21 = a4;
LABEL_56:
    v5 = v196;
    v33 = oslog;
    v6 = v189;
    v65 = v191;
    if ((v191 & 2) != 0)
    {
      goto LABEL_62;
    }

LABEL_57:
    if (((*(v9 + 1024) ^ ((v65 & 1) == 0)) & 1) != 0 || (ObjectType = v33, swift_beginAccess(), v33 = ObjectType, *(ObjectType + 368) != 1))
    {
LABEL_62:
      if (!v8)
      {
        goto LABEL_66;
      }

      goto LABEL_63;
    }

    if (!v8)
    {
      goto LABEL_66;
    }

    v192 = v21;
    v75 = *(v9 + 80);
    v76 = *(v9 + 88);

    if (__nwlog_is_datapath_logging_enabled())
    {
      v189 = v6;
      v196 = v5;
      *&v207[0] = 0;
      *(&v207[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](91, 0xE100000000000000);
      v191 = v65;
      v202 = v65;
      v127 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v127);

      MEMORY[0x1865D9CA0](0xD000000000000039, 0x8000000182BDA4A0);
      v128 = v207[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v129 = sub_182AD2698();
      __swift_project_value_buffer(v129, qword_1EA843418);
      v130 = swift_allocObject();
      *(v130 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
      *(v130 + 24) = 63;
      *(v130 + 32) = 2;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_181F8C724;
      *(v131 + 24) = v130;
      v183 = swift_allocObject();
      v183[2].isa = v75;
      v183[3].isa = v76;
      v156 = swift_allocObject();
      *(v156 + 16) = v128;

      v153 = sub_182AD2678();
      v132 = sub_182AD38A8();
      v159 = swift_allocObject();
      LOBYTE(v159[2].isa) = 32;
      v162 = swift_allocObject();
      *(v162 + 16) = 8;
      v133 = swift_allocObject();
      *(v133 + 16) = sub_18206B168;
      *(v133 + 24) = v131;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_181F8C718;
      *(v134 + 24) = v133;
      bufa = v134;
      v169 = swift_allocObject();
      *(v169 + 16) = 32;
      v172 = swift_allocObject();
      *(v172 + 16) = 8;
      v135 = swift_allocObject();
      *(v135 + 16) = sub_181F8C720;
      *(v135 + 24) = v183;
      v136 = swift_allocObject();
      *(v136 + 16) = sub_181F8C718;
      *(v136 + 24) = v135;
      v175 = v136;
      v179 = swift_allocObject();
      *(v179 + 16) = 32;
      v184 = swift_allocObject();
      LOBYTE(v184[2].isa) = 8;
      v137 = swift_allocObject();
      *(v137 + 16) = sub_181F8C720;
      *(v137 + 24) = v156;
      v138 = swift_allocObject();
      *(v138 + 16) = sub_181F8C718;
      *(v138 + 24) = v137;
      v157 = v132;
      if (os_log_type_enabled(v153, v132))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v200 = v140;
        v201 = 0;
        *v139 = 770;
        v202 = v139 + 2;
        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v159;
        sub_181F73AE0(v207, &v202, &v201, &v200);
        if (v25)
        {
          goto LABEL_145;
        }

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v162;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = bufa;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v169;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v172;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v175;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v179;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v184;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v138;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        _os_log_impl(&dword_181A37000, v153, v157, "%s %s %s", v139, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v140, -1, -1);
        MEMORY[0x1865DF520](v139, -1, -1);
      }

      else
      {
      }

      v5 = v196;
      v6 = v189;
      v65 = v191;
      LODWORD(v21) = v192;
    }

    else
    {

      LODWORD(v21) = v192;
    }

LABEL_63:
    v193 = v21;
    ObjectType = *(v9 + 80);
    v77 = *(v9 + 88);

    if (__nwlog_is_datapath_logging_enabled())
    {
      v196 = v5;
      *&v207[0] = 0;
      *(&v207[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDA440);
      v191 = v65;
      v202 = v65;
      v106 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v106);

      MEMORY[0x1865D9CA0](0x20657A697328205DLL, 0xE800000000000000);
      v189 = v6;
      v202 = v6;
      v107 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v107);

      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDA460);
      if (v199)
      {
        v108 = 1702195828;
      }

      else
      {
        v108 = 0x65736C6166;
      }

      if (v199)
      {
        v109 = 0xE400000000000000;
      }

      else
      {
        v109 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v108, v109);

      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDA480);
      if (a4)
      {
        v110 = 1702195828;
      }

      else
      {
        v110 = 0x65736C6166;
      }

      if (a4)
      {
        v111 = 0xE400000000000000;
      }

      else
      {
        v111 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v110, v111);

      MEMORY[0x1865D9CA0](0x616E69467369202CLL, 0xEB00000000203A6CLL);
      if (v193)
      {
        v112 = 1702195828;
      }

      else
      {
        v112 = 0x65736C6166;
      }

      if (v193)
      {
        v113 = 0xE400000000000000;
      }

      else
      {
        v113 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v112, v113);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v199 = *(&v207[0] + 1);
      v114 = *&v207[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v115 = sub_182AD2698();
      __swift_project_value_buffer(v115, qword_1EA843418);
      v116 = swift_allocObject();
      *(v116 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
      *(v116 + 24) = 63;
      *(v116 + 32) = 2;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_181F8C724;
      *(v117 + 24) = v116;
      v118 = swift_allocObject();
      *(v118 + 16) = ObjectType;
      *(v118 + 24) = v77;
      v154 = swift_allocObject();
      *(v154 + 16) = v114;
      *(v154 + 24) = v199;

      v158 = sub_182AD2678();
      ObjectType = sub_182AD38A8();
      buf = swift_allocObject();
      buf[16] = 32;
      v168 = swift_allocObject();
      *(v168 + 16) = 8;
      v119 = swift_allocObject();
      *(v119 + 16) = sub_18206B168;
      *(v119 + 24) = v117;
      v120 = swift_allocObject();
      *(v120 + 16) = sub_181F8C718;
      *(v120 + 24) = v119;
      v171 = v120;
      v161 = swift_allocObject();
      *(v161 + 16) = 32;
      v174 = swift_allocObject();
      *(v174 + 16) = 8;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_181F8C720;
      *(v121 + 24) = v118;
      v122 = swift_allocObject();
      *(v122 + 16) = sub_181F8C718;
      *(v122 + 24) = v121;
      v178 = v122;
      v182 = swift_allocObject();
      LOBYTE(v182[2].isa) = 32;
      v187 = swift_allocObject();
      *(v187 + 16) = 8;
      v123 = swift_allocObject();
      *(v123 + 16) = sub_181F8C720;
      *(v123 + 24) = v154;
      v124 = swift_allocObject();
      *(v124 + 16) = sub_181F8C718;
      *(v124 + 24) = v123;
      if (os_log_type_enabled(v158, ObjectType))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v200 = v126;
        v201 = 0;
        *v125 = 770;
        v155 = v126;
        v202 = v125 + 2;
        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = buf;
        sub_181F73AE0(v207, &v202, &v201, &v200);
        if (v25)
        {

          while (1)
          {

            __break(1u);
          }
        }

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v168;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v171;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v161;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v174;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v178;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v182;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C728;
        *(&v207[0] + 1) = v187;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        *&v207[0] = sub_181F8C714;
        *(&v207[0] + 1) = v124;
        sub_181F73AE0(v207, &v202, &v201, &v200);

        _os_log_impl(&dword_181A37000, v158, ObjectType, "%s %s %s", v125, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v155, -1, -1);
        MEMORY[0x1865DF520](v125, -1, -1);
      }

      else
      {
      }

      v5 = v196;
      v6 = v189;
      v65 = v191;
    }

    else
    {
    }

    v33 = oslog;
    v21 = v193;
LABEL_66:
    if (v6 >= 1)
    {
      sub_182064CEC(&v210, v33, v21 & 1);
      return swift_unknownObjectRelease();
    }

    if (v21)
    {
      a4 = v65;
      swift_beginAccess();
      if (*(*(v9 + 936) + 16))
      {
        sub_18225BD68(v65);
        if (v78)
        {
          swift_endAccess();
          if (!v8)
          {
LABEL_75:
            LOBYTE(v207[0]) = 1;
            QUICConnectionImplementation.stop(flow:path:direction:)(a2, v79, v207);
            goto LABEL_82;
          }

          ObjectType = *(v9 + 80);
          a4 = *(v9 + 88);

          if (!__nwlog_is_datapath_logging_enabled())
          {

            goto LABEL_75;
          }

          v196 = v5;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v141 = sub_182AD2698();
          __swift_project_value_buffer(v141, qword_1EA843418);
          v142 = swift_allocObject();
          *(v142 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
          *(v142 + 24) = 63;
          *(v142 + 32) = 2;
          v143 = swift_allocObject();
          *(v143 + 16) = sub_181F8C724;
          *(v143 + 24) = v142;
          v144 = swift_allocObject();
          *(v144 + 16) = ObjectType;
          *(v144 + 24) = a4;
          v145 = swift_allocObject();
          *(v145 + 16) = 0xD00000000000002ALL;
          *(v145 + 24) = 0x8000000182BDA410;

          v185 = sub_182AD2678();
          v146 = sub_182AD38A8();
          v188 = swift_allocObject();
          *(v188 + 16) = 32;
          v189 = swift_allocObject();
          *(v189 + 16) = 8;
          v147 = swift_allocObject();
          *(v147 + 16) = sub_18206B168;
          *(v147 + 24) = v143;
          v21 = swift_allocObject();
          *(v21 + 16) = sub_181F8C718;
          *(v21 + 24) = v147;
          v191 = swift_allocObject();
          *(v191 + 16) = 32;
          v195 = swift_allocObject();
          *(v195 + 16) = 8;
          v148 = swift_allocObject();
          *(v148 + 16) = sub_181F8C720;
          *(v148 + 24) = v144;
          v149 = swift_allocObject();
          *(v149 + 16) = sub_181F8C718;
          *(v149 + 24) = v148;
          oslog = swift_allocObject();
          LOBYTE(oslog[2].isa) = 32;
          v199 = swift_allocObject();
          *(v199 + 16) = 8;
          v6 = swift_allocObject();
          *(v6 + 16) = sub_181F8C720;
          *(v6 + 24) = v145;
          v150 = swift_allocObject();
          *(v150 + 16) = sub_181F8C718;
          *(v150 + 24) = v6;
          ObjectType = v150;
          v180 = v146;
          v57 = v185;
          if (os_log_type_enabled(v185, v146))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v200 = v152;
            v201 = 0;
            *v151 = 770;
            v176 = v152;
            v202 = v151 + 2;
            *&v207[0] = sub_181F8C728;
            *(&v207[0] + 1) = v188;
            sub_181F73AE0(v207, &v202, &v201, &v200);
            if (v25)
            {
LABEL_145:

              __break(1u);

              while (1)
              {

                __break(1u);
              }
            }

            *&v207[0] = sub_181F8C728;
            *(&v207[0] + 1) = v189;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C714;
            *(&v207[0] + 1) = v21;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C728;
            *(&v207[0] + 1) = v191;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C728;
            *(&v207[0] + 1) = v195;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C714;
            *(&v207[0] + 1) = v149;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C728;
            *(&v207[0] + 1) = oslog;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C728;
            *(&v207[0] + 1) = v199;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            *&v207[0] = sub_181F8C714;
            *(&v207[0] + 1) = ObjectType;
            sub_181F73AE0(v207, &v202, &v201, &v200);

            _os_log_impl(&dword_181A37000, v185, v180, "%s %s %s", v151, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v176, -1, -1);
            MEMORY[0x1865DF520](v151, -1, -1);

            v5 = v196;
            goto LABEL_75;
          }

LABEL_141:

          v5 = v196;
          goto LABEL_75;
        }
      }

      swift_endAccess();
    }

    a4 = *(v9 + 80);
    v80 = *(v9 + 88);
    v81 = qword_1EA837248;

    if (v81 != -1)
    {
      swift_once();
    }

    v82 = sub_182AD2698();
    __swift_project_value_buffer(v82, qword_1EA843418);

    v83 = sub_182AD2678();
    v84 = sub_182AD38D8();

    if (os_log_type_enabled(v83, v84))
    {
      v21 = "is for an unknown stream ID";
      v85 = swift_slowAlloc();
      v196 = v5;
      v6 = swift_slowAlloc();
      *&v207[0] = v6;
      *v85 = 136315650;
      v86 = sub_182AD3BF8();
      ObjectType = v87;
      v88 = sub_181C64FFC(v86, v87, v207);

      *(v85 + 4) = v88;
      *(v85 + 12) = 2080;
      a4 = sub_181C64FFC(a4, v80, v207);

      *(v85 + 14) = a4;
      *(v85 + 22) = 2080;
      *(v85 + 24) = sub_181C64FFC(0xD000000000000028, 0x8000000182BDA3E0, v207);
      _os_log_impl(&dword_181A37000, v83, v84, "%s %s %s", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v6, -1, -1);
      MEMORY[0x1865DF520](v85, -1, -1);
    }

    else
    {
    }

LABEL_82:
    Frame.finalize(success:)(0);
    swift_unknownObjectRelease();
    v54 = *(&v210 + 1);
    v53 = v210;
    v55 = v211;
    v56 = BYTE8(v211);
    v89 = v212;
    v9 = v213;
    a2 = v223;
    if (v213 == 2 && v212 == 0)
    {
      goto LABEL_37;
    }

    sub_181F68EF4(v210, *(&v210 + 1), v211, BYTE8(v211));

    sub_181F68F3C(v89, *(&v89 + 1), v9);
    __break(1u);
LABEL_85:
    swift_once();
  }

  swift_unknownObjectRelease();
LABEL_30:
  v44 = *(v9 + 80);
  v43 = *(v9 + 88);
  *&v207[0] = 0;
  *(&v207[0] + 1) = 0xE000000000000000;

  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000020, 0x8000000182BDA380);
  v203 = a2;
  sub_182AD3E18();
  v45 = *(&v207[0] + 1);
  a4 = *&v207[0];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v46 = sub_182AD2698();
  __swift_project_value_buffer(v46, qword_1EA843418);

  v47 = sub_182AD2678();
  v48 = sub_182AD38B8();

  if (os_log_type_enabled(v47, v48))
  {
    v6 = swift_slowAlloc();
    ObjectType = swift_slowAlloc();
    *&v207[0] = ObjectType;
    *v6 = 136315650;
    v49 = sub_182AD3BF8();
    v21 = sub_181C64FFC(v49, v50, v207);

    *(v6 + 4) = v21;
    *(v6 + 12) = 2080;
    v51 = sub_181C64FFC(v44, v43, v207);

    *(v6 + 14) = v51;
    *(v6 + 22) = 2080;
    v52 = sub_181C64FFC(a4, v45, v207);

    *(v6 + 24) = v52;
    _os_log_impl(&dword_181A37000, v47, v48, "%s %s %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](ObjectType, -1, -1);
    MEMORY[0x1865DF520](v6, -1, -1);
  }

  else
  {
  }

  Frame.finalize(success:)(0);
  v54 = *(&v210 + 1);
  v53 = v210;
  v55 = v211;
  v56 = BYTE8(v211);
  v58 = *(&v212 + 1);
  v57 = v212;
  v59 = v213;
  a2 = v223;
  if (v213 != 2 || v212 != 0)
  {
    sub_181F68EF4(v210, *(&v210 + 1), v211, BYTE8(v211));

    sub_181F68F3C(v57, v58, v59);
    __break(1u);
    goto LABEL_141;
  }

LABEL_37:
  if ((v222 & 1) == 0)
  {
    if (v221)
    {
      v60 = v53;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      MEMORY[0x1865DF520](v221, -1, -1);
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v56 = v63;
    }
  }

  sub_181F68EF4(v53, v54, v55, v56);
}

uint64_t sub_18204CE84(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v8 = *(a1 + 16);
  v74 = *a1;
  v75 = v8;
  v76 = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v87 = *(a1 + 208);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a1 + 192);
  v85 = *(a1 + 176);
  v86 = v13;
  v14 = *(a1 + 128);
  v81 = *(a1 + 112);
  v82 = v14;
  v15 = *(a1 + 160);
  v83 = *(a1 + 144);
  v84 = v15;
  v16 = *(a1 + 96);
  v79 = *(a1 + 80);
  v80 = v16;
  *&v77 = v10;
  *(&v77 + 1) = v9;
  *&v78 = v12;
  *(&v78 + 1) = v11;
  if (BYTE8(v75) == 5)
  {
    v4 = nw_frame_unclaimed_length(v74);
    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v17 = __OFADD__(v9, v12);
  v18 = v9 + v12;
  if (v17)
  {
    __break(1u);
    goto LABEL_35;
  }

  v4 = v11 - v18;
  if (__OFSUB__(v11, v18))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_6:
  if (v4 <= 0)
  {
LABEL_11:
    v33 = v2[10];
    v32 = v2[11];
    v34 = qword_1EA837248;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_182AD2698();
    __swift_project_value_buffer(v35, qword_1EA843418);

    v22 = sub_182AD2678();
    v36 = sub_182AD38D8();

    if (os_log_type_enabled(v22, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v59 = v38;
      *v37 = 136315650;
      v39 = sub_182AD3BF8();
      v41 = sub_181C64FFC(v39, v40, &v59);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = sub_181C64FFC(v33, v32, &v59);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_181C64FFC(0xD00000000000002CLL, 0x8000000182BDAF80, &v59);
      _os_log_impl(&dword_181A37000, v22, v36, "%s %s %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v38, -1, -1);
      v31 = v37;
      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4 > *(a2 + 64))
  {
    v3 = v2[10];
    v6 = v2[11];
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BDAFB0);
    v73 = v4;
    v19 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v19);

    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDAFE0);
    LOWORD(v73) = *(a2 + 64);
    v20 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v20);

    v4 = 0xE000000000000000;
    v5 = 0;
    if (qword_1EA837248 == -1)
    {
LABEL_9:
      v21 = sub_182AD2698();
      __swift_project_value_buffer(v21, qword_1EA843418);

      v22 = sub_182AD2678();
      v23 = sub_182AD38D8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v59 = v25;
        *v24 = 136315650;
        v26 = sub_182AD3BF8();
        v28 = sub_181C64FFC(v26, v27, &v59);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        v29 = sub_181C64FFC(v3, v6, &v59);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2080;
        v30 = sub_181C64FFC(v5, v4, &v59);

        *(v24 + 24) = v30;
        _os_log_impl(&dword_181A37000, v22, v23, "%s %s %s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v25, -1, -1);
        v31 = v24;
LABEL_15:
        MEMORY[0x1865DF520](v31, -1, -1);

LABEL_20:
        Frame.finalize(success:)(0);
        goto LABEL_28;
      }

      goto LABEL_19;
    }

LABEL_36:
    swift_once();
    goto LABEL_9;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v69 = v84;
  v70 = v85;
  v71 = v86;
  v72 = v87;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  v68 = v83;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v59 = v74;
  v60 = v75;
  v43 = Frame.unclaimedBytes.getter();
  if (v45)
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = sub_181AC1C5C(v43, v44);
    sub_1820D46D8(v47);
    v46 = v73;
  }

  Frame.finalize(success:)(1);
  v48 = *(a2 + 24);
  v49 = *(a2 + 32);
  v50 = *(a2 + 40);
  if (v48)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(a2 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v59 = xmmword_182AF01F0;
  *&v60 = v51;
  BYTE8(v60) = v48;
  *&v61 = v49;
  BYTE8(v61) = v50;
  *&v62 = v46;

  sub_181F82F10(2u, &v59);

  if (v2[119])
  {

    sub_182047340(v52, 0, 0);
  }

LABEL_28:
  v53 = v74;
  v54 = v75;
  v55 = BYTE8(v75);
  v56 = v76;
  v57 = v77;
  if (v77 == 2 && v76 == 0)
  {
    if ((v84 & 1) == 0)
    {
      if (v83)
      {
        MEMORY[0x1865DF520](v83, -1, -1);
      }
    }

    sub_181F68EF4(v53, *(&v53 + 1), v54, v55);
  }

  else
  {
    sub_181F68EF4(v74, *(&v74 + 1), v75, BYTE8(v75));

    result = sub_181F68F3C(v56, *(&v56 + 1), v57);
    __break(1u);
  }

  return result;
}

void QUICConnectionImplementation.outboundStopping(flow:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  if (!*(v4 + 16) || (v5 = sub_18224EEF0(a1), (v6 & 1) == 0) || !*(*(*(v4 + 56) + 8 * v5) + 16) || (type metadata accessor for QUICDatagramFlow(), !swift_dynamicCastClass()))
  {
    v7 = v2[5];
    if (*(v7 + 16))
    {
      v8 = sub_18224EEF0(a1);
      if (v9)
      {
        if (*(*(*(v7 + 56) + 8 * v8) + 16))
        {
          type metadata accessor for QUICStreamInstance();
          swift_unknownObjectRetain();
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = *(v10 + 16);
            v12 = v10;
            v13 = *(v10 + 24);
            v15 = v2[10];
            v14 = v2[11];
            v16 = qword_1EA837250;

            if (v13)
            {
              if (v16 != -1)
              {
                swift_once();
              }

              if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
              {
                v93 = 0;
                v94 = 0xE000000000000000;
                sub_182AD3BA8();
                MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDA540);
                v92 = a1;
                sub_182AD3E18();
                MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BDA580);
                if (qword_1EA837248 != -1)
                {
                  swift_once();
                }

                v37 = sub_182AD2698();
                __swift_project_value_buffer(v37, qword_1EA843418);
                v38 = swift_allocObject();
                *(v38 + 16) = "outboundStopping(flow:)";
                *(v38 + 24) = 23;
                *(v38 + 32) = 2;
                v39 = swift_allocObject();
                *(v39 + 16) = sub_181F8C724;
                *(v39 + 24) = v38;
                v40 = swift_allocObject();
                *(v40 + 16) = v15;
                *(v40 + 24) = v14;
                v41 = swift_allocObject();
                *(v41 + 16) = 0;
                *(v41 + 24) = 0xE000000000000000;

                v42 = sub_182AD2678();
                v43 = sub_182AD38A8();
                v76 = swift_allocObject();
                *(v76 + 16) = 32;
                v79 = swift_allocObject();
                *(v79 + 16) = 8;
                v44 = swift_allocObject();
                *(v44 + 16) = sub_18206B168;
                *(v44 + 24) = v39;
                v45 = swift_allocObject();
                *(v45 + 16) = sub_181F8C718;
                *(v45 + 24) = v44;
                v73 = swift_allocObject();
                *(v73 + 16) = 32;
                v82 = swift_allocObject();
                *(v82 + 16) = 8;
                v46 = swift_allocObject();
                *(v46 + 16) = sub_181F8C720;
                *(v46 + 24) = v40;
                v47 = swift_allocObject();
                *(v47 + 16) = sub_181F8C718;
                *(v47 + 24) = v46;
                v85 = swift_allocObject();
                *(v85 + 16) = 32;
                v88 = swift_allocObject();
                *(v88 + 16) = 8;
                v48 = swift_allocObject();
                *(v48 + 16) = sub_181F8C720;
                *(v48 + 24) = v41;
                v49 = swift_allocObject();
                *(v49 + 16) = sub_181F8C718;
                *(v49 + 24) = v48;
                v70 = v43;
                v50 = v42;
                if (os_log_type_enabled(v42, v43))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  v90 = v52;
                  v91 = 0;
                  *v51 = 770;
                  v92 = v51 + 2;
                  v93 = sub_181F8C728;
                  v94 = v76;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v79;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C714;
                  v94 = v45;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v73;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v82;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C714;
                  v94 = v47;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v85;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v88;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C714;
                  v94 = v49;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  _os_log_impl(&dword_181A37000, v50, v70, "%s %s %s", v51, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1865DF520](v52, -1, -1);
                  MEMORY[0x1865DF520](v51, -1, -1);

                  goto LABEL_28;
                }
              }

LABEL_28:
              swift_unknownObjectRelease();
              return;
            }

            if (v16 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
            {
              v93 = 0;
              v94 = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDA5B0);
              sub_182AD3E18();
              MEMORY[0x1865D9CA0](0x6D6165727473202CLL, 0xE900000000000020);
              v92 = v11;
              v53 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v53);

              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v54 = sub_182AD2698();
              __swift_project_value_buffer(v54, qword_1EA843418);
              v55 = swift_allocObject();
              *(v55 + 16) = "outboundStopping(flow:)";
              *(v55 + 24) = 23;
              *(v55 + 32) = 2;
              v56 = swift_allocObject();
              *(v56 + 16) = sub_181F8C724;
              *(v56 + 24) = v55;
              v57 = swift_allocObject();
              *(v57 + 16) = v15;
              *(v57 + 24) = v14;
              v58 = swift_allocObject();
              *(v58 + 16) = 0;
              *(v58 + 24) = 0xE000000000000000;

              oslog = sub_182AD2678();
              v59 = sub_182AD38A8();
              v71 = swift_allocObject();
              *(v71 + 16) = 32;
              v74 = swift_allocObject();
              *(v74 + 16) = 8;
              v60 = swift_allocObject();
              *(v60 + 16) = sub_18206B168;
              *(v60 + 24) = v56;
              v61 = swift_allocObject();
              *(v61 + 16) = sub_181F8C718;
              *(v61 + 24) = v60;
              v77 = swift_allocObject();
              *(v77 + 16) = 32;
              v80 = swift_allocObject();
              *(v80 + 16) = 8;
              v62 = swift_allocObject();
              *(v62 + 16) = sub_181F8C720;
              *(v62 + 24) = v57;
              v63 = swift_allocObject();
              *(v63 + 16) = sub_181F8C718;
              *(v63 + 24) = v62;
              v83 = swift_allocObject();
              *(v83 + 16) = 32;
              v89 = swift_allocObject();
              *(v89 + 16) = 8;
              v64 = swift_allocObject();
              *(v64 + 16) = sub_181F8C720;
              *(v64 + 24) = v58;
              v65 = swift_allocObject();
              *(v65 + 16) = sub_181F8C718;
              *(v65 + 24) = v64;
              v86 = v65;
              v68 = v59;
              if (os_log_type_enabled(oslog, v59))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v90 = v67;
                v91 = 0;
                *v66 = 770;
                v92 = v66 + 2;
                v93 = sub_181F8C728;
                v94 = v71;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v74;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C714;
                v94 = v61;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v77;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v80;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C714;
                v94 = v63;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v83;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v89;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C714;
                v94 = v86;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                _os_log_impl(&dword_181A37000, oslog, v68, "%s %s %s", v66, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v67, -1, -1);
                MEMORY[0x1865DF520](v66, -1, -1);

                goto LABEL_27;
              }
            }

LABEL_27:
            sub_182048A70(v12, 1);
            goto LABEL_28;
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v18 = v2[10];
    v17 = v2[11];
    v19 = qword_1EA837250;

    if (v19 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
    {
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDA540);
      v92 = a1;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDA560);
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1EA843418);
      v21 = swift_allocObject();
      *(v21 + 16) = "outboundStopping(flow:)";
      *(v21 + 24) = 23;
      *(v21 + 32) = 2;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_181F8C724;
      *(v22 + 24) = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = v18;
      *(v23 + 24) = v17;
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0xE000000000000000;

      v25 = sub_182AD2678();
      v26 = sub_182AD38A8();
      v75 = swift_allocObject();
      *(v75 + 16) = 32;
      v78 = swift_allocObject();
      *(v78 + 16) = 8;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_18206B168;
      *(v27 + 24) = v22;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_181F8C718;
      *(v28 + 24) = v27;
      v29 = swift_allocObject();
      *(v29 + 16) = 32;
      v81 = swift_allocObject();
      *(v81 + 16) = 8;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_181F8C720;
      *(v30 + 24) = v23;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_181F8C718;
      *(v31 + 24) = v30;
      v84 = swift_allocObject();
      *(v84 + 16) = 32;
      v87 = swift_allocObject();
      *(v87 + 16) = 8;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_181F8C720;
      *(v32 + 24) = v24;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_181F8C718;
      *(v33 + 24) = v32;
      v72 = v26;
      v34 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v90 = v36;
        v91 = 0;
        *v35 = 770;
        v92 = v35 + 2;
        v93 = sub_181F8C728;
        v94 = v75;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v78;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C714;
        v94 = v28;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v29;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v81;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C714;
        v94 = v31;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v84;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v87;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C714;
        v94 = v33;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        _os_log_impl(&dword_181A37000, v34, v72, "%s %s %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v36, -1, -1);
        MEMORY[0x1865DF520](v35, -1, -1);

        return;
      }
    }
  }
}

uint64_t QUICConnectionImplementation.getMetadata<A>(flow:)(uint64_t a1, ValueMetadata *a2)
{
  if (a2 != &type metadata for QUICStreamProtocol)
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16))
  {
    v6 = sub_18224EEF0(a1);
    if (v7)
    {
      if (*(*(*(v5 + 56) + 8 * v6) + 16))
      {
        type metadata accessor for QUICDatagramFlow();
        swift_unknownObjectRetain();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = v8;
          v10 = _s7Network18QUICStreamProtocolV8metadataAA0C8MetadataCyACGyFZ_0();
          swift_beginAccess();
          v11 = *(v10 + 64);
          if (v11)
          {
            v12 = *(v9 + 24);
            *(v11 + 24) = *(v9 + 16);
            *(v11 + 32) = v12;
            v13 = *(v9 + 64);

            swift_unknownObjectRelease();
            *(v11 + 64) = v13;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v22 = *(v10 + 64);
          if (v22)
          {
            *(v22 + 66) = 2;
          }

          type metadata accessor for ProtocolMetadata();
          result = swift_dynamicCastClass();
          if (!result)
          {
            goto LABEL_29;
          }

          return result;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v14 = *(v2 + 40);
  if (!*(v14 + 16))
  {
    return 0;
  }

  v15 = sub_18224EEF0(a1);
  if ((v16 & 1) == 0 || !*(*(*(v14 + 56) + 8 * v15) + 16))
  {
    return 0;
  }

  type metadata accessor for QUICStreamInstance();
  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (!v17 || *(v17 + 24) == 1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v18 = v17;
  v19 = *(v17 + 16);
  v20 = _s7Network18QUICStreamProtocolV8metadataAA0C8MetadataCyACGyFZ_0();
  swift_beginAccess();
  v21 = *(v20 + 64);
  if (v21)
  {
    *(v21 + 16) = v19;
  }

  if (*(v18 + 24))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = *(v18 + 16);
    swift_unknownObjectRelease();
    v24 = *(v20 + 64);
    if (v24)
    {
      *(v24 + 66) = (v23 & 2) != 0;
    }
  }

  type metadata accessor for ProtocolMetadata();
  result = swift_dynamicCastClass();
  if (!result)
  {
LABEL_29:

    return 0;
  }

  return result;
}

uint64_t sub_18204EED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 1128) == 1 && (swift_beginAccess(), (*(a2 + 24) & 1) == 0) && *(v2 + 1126) == 1)
  {
    v6 = sub_181F7D92C(*(a2 + 16));
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  if (*(v3 + 1127) == 1)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  v11 = *(v3 + 80);
  v12 = *(v3 + 88);
  type metadata accessor for QUICDatagramFlow();
  swift_allocObject();

  v13 = sub_181F7D7A8(v6, v8 & 1, v9, v10, v11, v12);
  sub_182168DE4(v13, *(a1 + 112));
  v15 = *(v13 + 48);
  v14 = *(v13 + 56);
  v16 = qword_1EA837250;

  if (v16 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    v34 = 0xD000000000000023;
    v35 = 0x8000000182BDC210;
    if (*(a1 + 112))
    {
      v17 = sub_182AD2F38();
      v19 = v18;
    }

    else
    {
      v19 = 0xE900000000000073;
      v17 = 0x776F6C46206C6C41;
    }

    MEMORY[0x1865D9CA0](v17, v19);

    v20 = v34;
    v21 = v35;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v22 = sub_182AD2698();
    __swift_project_value_buffer(v22, qword_1EA843418);

    v23 = sub_182AD2678();
    v24 = sub_182AD38A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v25 = 136315650;
      v26 = sub_182AD3BF8();
      v33 = a1;
      v28 = sub_181C64FFC(v26, v27, &v34);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_181C64FFC(v15, v14, &v34);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2080;
      v30 = sub_181C64FFC(v20, v21, &v34);

      *(v25 + 24) = v30;
      a1 = v33;
      _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v32, -1, -1);
      MEMORY[0x1865DF520](v25, -1, -1);

      goto LABEL_21;
    }
  }

LABEL_21:
  swift_beginAccess();
  if (*(v3 + 139) == 9)
  {
    sub_18216AAA8(*(a1 + 112));
  }
}

uint64_t sub_18204F2A0(unsigned __int8 a1)
{
  v3 = *(v1 + 1160);
  if (v3 > 5)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v1 + 1152);
    v5 = *(v1 + 1144);
    sub_18206AF08(v5, v4, v3);
  }

  v6 = *(v1 + 1168);
  if (*(v1 + 1176) == 255)
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    v7 = *(v1 + 1176);
  }

  v16 = 1;
  v9 = xmmword_182AF0200;
  v10 = 0;
  v11 = 1;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v4;

  sub_181F82F10(a1, &v9);
}

uint64_t sub_18204F36C()
{
  v1 = *(v0 + 360);
  if (*(v1 + 56))
  {
    *(v1 + 56) = 0;

    v2 = *(v1 + 920);
    v3 = *(v1 + 928);
    *&v14 = *(v1 + 912);
    *(&v14 + 1) = v2;
    v15 = v3;
    sub_181F68EA8(v14, v2, v3);
    sub_1822935B8(&v14, 1);
    sub_181F68E5C(v14, *(&v14 + 1), v15);
    v4 = *(v1 + 936);
    v5 = *(v1 + 944);
    *(v1 + 936) = 0u;
    v6 = *(v1 + 952);
    *(v1 + 952) = 6;
    sub_181F68E5C(v4, v5, v6);
    v7 = *(v1 + 64);
    v8 = *(v1 + 72);
    *(v1 + 64) = 0u;
    v9 = *(v1 + 80);
    *(v1 + 80) = 6;
    sub_181F68E5C(v7, v8, v9);
    v10 = *(v1 + 912);
    v11 = *(v1 + 920);
    *(v1 + 912) = 0u;
    v12 = *(v1 + 928);
    *(v1 + 928) = 6;
    sub_181F68E5C(v10, v11, v12);
  }

  return result;
}

void sub_18204F460()
{
  swift_beginAccess();
  v1 = *(v0 + 139);
  if (v1 == 11)
  {
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = qword_1EA837250;

    if (v18 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_26;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v19 = sub_182AD2698();
    __swift_project_value_buffer(v19, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, v40);

      *(v8 + 4) = v22;
      *(v8 + 12) = 2080;
      v23 = sub_181C64FFC(v17, v16, v40);

      *(v8 + 14) = v23;
      *(v8 + 22) = 2080;
      v15 = 0x8000000182BDBDC0;
      v14 = 0xD000000000000019;
      goto LABEL_17;
    }
  }

  else if (v1 == 1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = qword_1EA837250;

    if (v4 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_26;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, v40);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_181C64FFC(v3, v2, v40);

      *(v8 + 14) = v13;
      *(v8 + 22) = 2080;
      v14 = 0xD000000000000020;
      v15 = 0x8000000182BDBDE0;
LABEL_17:
      *(v8 + 24) = sub_181C64FFC(v14, v15, v40);
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      v24 = v8;
LABEL_23:
      MEMORY[0x1865DF520](v24, -1, -1);

      return;
    }
  }

  else
  {

    sub_1820352F4();

    sub_181F8330C();

    v41 = 11;
    swift_beginAccess();
    sub_18203BF4C(&v41);
    swift_endAccess();

    sub_181F8BB34(1);

    v25 = *(v0 + 1200);
    LODWORD(v40[0]) = *(v0 + 1196);
    BYTE4(v40[0]) = v25;
    sub_18216AC50(0, v40);
    if (*(v0 + 977))
    {
      return;
    }

    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v40[0] = 0;
    v40[1] = 0xE000000000000000;

    sub_182AD3BA8();

    strcpy(v40, "QUIC Packets: ");
    HIBYTE(v40[1]) = -18;
    v28 = MEMORY[0x1865D9F40](MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7508]);
    MEMORY[0x1865D9CA0](v28);

    v30 = v40[0];
    v29 = v40[1];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v31 = sub_182AD2698();
    __swift_project_value_buffer(v31, qword_1EA843418);

    v6 = sub_182AD2678();
    v32 = sub_182AD38D8();

    if (os_log_type_enabled(v6, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136315650;
      v35 = sub_182AD3BF8();
      v37 = sub_181C64FFC(v35, v36, v40);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = sub_181C64FFC(v27, v26, v40);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2080;
      v39 = sub_181C64FFC(v30, v29, v40);

      *(v33 + 24) = v39;
      _os_log_impl(&dword_181A37000, v6, v32, "%s %s %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v34, -1, -1);
      v24 = v33;
      goto LABEL_23;
    }
  }

LABEL_26:
}

uint64_t sub_18204FAD8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v12 = v5;
  v167 = 0;
  v13 = *(*(v5 + 296) + 32);
  if (!*(v13 + 16))
  {
    goto LABEL_70;
  }

  v7 = a5;
  v10 = a3;
  v6 = a2;
  v8 = a1;
  LOBYTE(v11) = 0;
  v9 = 0x202020100uLL >> (8 * a1);
  v15 = sub_18224EF74(v9);
  if ((v16 & 1) == 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v17 = *(*(v13 + 56) + 8 * v15);
  swift_beginAccess();
  if (!*(*(v17 + 16) + 16))
  {
    return 1;
  }

  if (*(v12 + 1033) == 1 && !v8 || *(v12 + 1125) == 1 && v8 == 1)
  {

    sub_181F83258(v9);

    return 1;
  }

  v19 = sub_182235DC0(v8);

  if (!v19)
  {
    return 0;
  }

  v20 = *(v12 + 352);
  if (v9)
  {
    swift_beginAccess();
    if (v9 == 1)
    {
      v21 = 200;
    }

    else
    {
      v21 = 352;
    }
  }

  else
  {
    swift_beginAccess();
    v21 = 48;
  }

  v22 = *(v20 + v21);
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = -1;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v12 + 376);
  swift_beginAccess();
  v25 = *(v24 + 40);
  if (!*(v25 + 16))
  {
    goto LABEL_95;
  }

  v26 = sub_18224EF74(0x202020100uLL >> (8 * v8));
  if ((v27 & 1) == 0)
  {
    goto LABEL_95;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();

  v107 = sub_182232B60(v8);

  if ((sub_181F840C0(v9) & 1) == 0)
  {
    v106 = v28;
    v29 = v7;
    v30 = v6;
    v31 = a4;
    v32 = v23;
    v33 = *(v12 + 296);

    sub_1822986E8(v9, 0, 1, v33, 0, 0, 0, 1);

    v23 = v32;
    a4 = v31;
    v6 = v30;
    v7 = v29;
    v28 = v106;
  }

  if (!v8 && (sub_181F831D0(v9) & 1) == 0)
  {
    LOBYTE(v123) = 1;
    LOBYTE(v108) = 1;
    *&v138 = 0;
    *(&v138 + 1) = 2;
    *&v139 = 0;
    *(&v139 + 1) = 1;
    *&v140 = 0;
    *(&v140 + 1) = 257;

    sub_181F82F10(v9, &v138);
  }

  if (v107 >= v7)
  {
    v38 = qword_1EA837250;

    if (v38 == -1)
    {
LABEL_31:
      if (byte_1EA843430)
      {
        *&v138 = 0;
        *(&v138 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v138 = 0xD000000000000011;
        *(&v138 + 1) = 0x8000000182BDBE80;
        v39 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v39);

        MEMORY[0x1865D9CA0](540884000, 0xE400000000000000);
        *&v123 = v107;
        v40 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v40);

        v41 = v138;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v42 = sub_182AD2698();
        __swift_project_value_buffer(v42, qword_1EA843418);

        v43 = sub_182AD2678();
        v44 = sub_182AD38A8();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *&v138 = v46;
          *v45 = 136315650;
          v47 = sub_182AD3BF8();
          v49 = sub_181C64FFC(v47, v48, &v138);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          *(v45 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v138);
          *(v45 + 22) = 2080;
          v50 = sub_181C64FFC(v41, *(&v41 + 1), &v138);

          *(v45 + 24) = v50;
          _os_log_impl(&dword_181A37000, v43, v44, "%s %s %s", v45, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v46, -1, -1);
          MEMORY[0x1865DF520](v45, -1, -1);
        }

        else
        {
        }
      }

      return 0;
    }

LABEL_91:
    swift_once();
    goto LABEL_31;
  }

  if (__OFSUB__(v7, v107))
  {
    __break(1u);
    goto LABEL_91;
  }

  v104 = a4;
  if (v8 - 2 >= 3)
  {
    if (!v8)
    {

      v34 = v7 - v107;
      v35 = v28;
      v36 = v23;
      v37 = 0;
      v51 = v6;
      v52 = 1;
      goto LABEL_43;
    }

    v34 = v7 - v107;
    v35 = v28;
    v36 = v23;
    v37 = 1;
  }

  else
  {

    v34 = v7 - v107;
    v35 = v28;
    v36 = v23;
    v37 = v8;
  }

  v51 = v6;
  v52 = 0;
LABEL_43:
  a4 = v23;
  v53 = sub_181F834CC(v34, v35, v36, v37, v51, v52);
  v54 = v28;
  v55 = v53;
  v105 = v54;
  v103 = v23;

  v23 = sub_182232B60(v8);

  v56 = __OFADD__(v55, v23);
  v11 = v55 + v23;
  if (v56)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v23 = &v108;
  v166 = v11;
  if ((v10 & 1) == 0)
  {
    v57 = *(v6 + 912);
    v58 = *(v6 + 880);
    v133 = *(v6 + 896);
    v134 = v57;
    v59 = *(v6 + 912);
    v135 = *(v6 + 928);
    v60 = *(v6 + 848);
    v61 = *(v6 + 816);
    v129 = *(v6 + 832);
    v130 = v60;
    v62 = *(v6 + 848);
    v63 = *(v6 + 880);
    v131 = *(v6 + 864);
    v132 = v63;
    v64 = *(v6 + 784);
    v65 = *(v6 + 752);
    v125 = *(v6 + 768);
    v126 = v64;
    v66 = *(v6 + 784);
    v67 = *(v6 + 816);
    v127 = *(v6 + 800);
    v128 = v67;
    v68 = *(v6 + 752);
    v123 = *(v6 + 736);
    v124 = v68;
    v146 = v133;
    v147 = v59;
    v148 = *(v6 + 928);
    v142 = v129;
    v143 = v62;
    v144 = v131;
    v145 = v58;
    v140 = v125;
    *v141 = v66;
    *&v141[16] = v127;
    *&v141[32] = v61;
    LOBYTE(v136) = *(v6 + 944);
    LOBYTE(v149) = *(v6 + 944);
    v138 = v123;
    v139 = v65;
    if (sub_182015D6C(&v138) == 1)
    {
LABEL_97:
      __break(1u);
LABEL_98:

      sub_181F68EF4(v23, v7, v8, a4);

      sub_181F68F3C(v9, v10, v11);
      __break(1u);
      goto LABEL_99;
    }

    v118 = v146;
    v119 = v147;
    v120 = v148;
    LOBYTE(v121) = v149;
    v114 = v142;
    v115 = v143;
    v116 = v144;
    v117 = v145;
    v110 = v140;
    v111 = *v141;
    v112 = *&v141[16];
    v113 = *&v141[32];
    v108 = v138;
    v109 = v139;
    if (sub_182015D80(&v108) == 1)
    {
      v69 = nullsub_41(&v108);
      v70 = v69[7];
      v174 = v69[6];
      v175 = v70;
      v71 = v69[9];
      v176 = v69[8];
      v177 = v71;
      v72 = v69[3];
      v170 = v69[2];
      v171 = v72;
      v73 = v69[5];
      v172 = v69[4];
      v173 = v73;
      v74 = v69[1];
      v168 = *v69;
      v169 = v74;
      v162 = v133;
      v163 = v134;
      v164 = v135;
      v165 = v136;
      v158 = v129;
      v159 = v130;
      v160 = v131;
      v161 = v132;
      v154 = v125;
      v155 = v126;
      v156 = v127;
      v157 = v128;
      v152 = v123;
      v153 = v124;
      sub_182015D94(&v152, v151);
      v75 = sub_1820636BC(v11);
    }

    else
    {
      v76 = nullsub_41(&v108);
      v77 = v76[11];
      v178 = v76[10];
      v179 = v77;
      v180 = v76[12];
      v78 = v76[7];
      v174 = v76[6];
      v175 = v78;
      v79 = v76[9];
      v176 = v76[8];
      v177 = v79;
      v80 = v76[3];
      v170 = v76[2];
      v171 = v80;
      v81 = v76[5];
      v172 = v76[4];
      v173 = v81;
      v82 = v76[1];
      v168 = *v76;
      v169 = v82;
      v162 = v133;
      v163 = v134;
      v164 = v135;
      v165 = v136;
      v158 = v129;
      v159 = v130;
      v160 = v131;
      v161 = v132;
      v154 = v125;
      v155 = v126;
      v156 = v127;
      v157 = v128;
      v152 = v123;
      v153 = v124;
      sub_182015D94(&v152, v151);
      v75 = sub_182062690(v11);
    }

    v83 = v75;
    sub_181F49A88(&v123, &qword_1EA839B88);
    if ((v83 & 1) == 0)
    {
      return 0;
    }
  }

  v84 = v11;
  v85 = *(v6 + 24);
  v86 = *(v6 + 32);
  swift_beginAccess();
  v87 = *(v12 + 48);
  if (!*(v87 + 16) || (v88 = sub_18224F070(v85, v86), (v89 & 1) == 0))
  {
    memset(&v141[8], 0, 33);
    v142 = 0u;
    v143 = 0u;
    *&v144 = 0;
    DWORD2(v144) = 2;
    BYTE12(v144) = 1;
    v145 = 0uLL;
    LOBYTE(v146) = 1;
    *(&v146 + 1) = 0;
    v147 = 0uLL;
    LOWORD(v148) = 256;
    BYTE2(v148) = 0;
    *(&v148 + 1) = 0;
    LOBYTE(v149) = -1;
    *&v139 = 0;
    v138 = 0uLL;
    BYTE8(v139) = 6;
    v140 = 0uLL;
    v141[0] = 2;
    v133 = v146;
    v134 = 0u;
    v135 = v148;
    LOBYTE(v136) = -1;
    v129 = 0u;
    v130 = 0u;
    v131 = v144;
    v132 = 0u;
    v125 = 0uLL;
    v126 = *v141;
    v127 = *&v141[16];
    v128 = *&v141[32];
    v123 = 0u;
    v124 = v139;

    *&v141[24] = Frame.bufferLength.getter();
    sub_182050C60(&v138, &v166, v12, v7, v105, v103, v8, v6, v107, v9, v104 & 1, &v167);
    v7 = *(&v138 + 1);
    v23 = v138;
    v8 = v139;
    a4 = BYTE8(v139);
    v10 = *(&v140 + 1);
    v9 = v140;
    LOBYTE(v11) = v141[0];
    if (v141[0] != 2 || v140 != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_58;
  }

  v90 = *(*(v87 + 56) + 8 * v88);
  v91 = *(v90 + 16);
  if ((v91 & 2) != 0)
  {
    if ((~v91 & 5) != 0)
    {
      *(v90 + 16) = v91 | 5;
    }

    goto LABEL_63;
  }

  v92 = *(v90 + 288);
  v93 = *(v90 + 296);
  *&v108 = *(v90 + 280);
  v102 = v108;
  *(&v108 + 1) = v92;
  LOBYTE(v109) = v93;
  v100 = *(v90 + 312);
  v99 = *(v90 + 320);
  *&v152 = *(v90 + 304);
  v101 = v152;
  *(&v152 + 1) = v100;
  LOBYTE(v153) = v99;

  sub_181F68EA8(v102, v92, v93);
  sub_181F68EA8(v101, v100, v99);
  OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v152, v84, v84, 1uLL, &v123);
  sub_181F68E5C(v152, *(&v152 + 1), v153);
  sub_181F68E5C(v108, *(&v108 + 1), v109);
  v148 = v135;
  v149 = v136;
  v150 = v137;
  v144 = v131;
  v145 = v132;
  v146 = v133;
  v147 = v134;
  *&v141[16] = v127;
  *&v141[32] = v128;
  v142 = v129;
  v143 = v130;
  v138 = v123;
  v139 = v124;
  v140 = v125;
  *v141 = v126;
  if (sub_181F3D1E4(&v138) == 1)
  {
LABEL_62:

LABEL_63:
    swift_beginAccess();
    return v167;
  }

  LOBYTE(v11) = v90;
  v10 = *(&v149 + 1);
  v120 = v148;
  v121 = v149;
  v122 = v150;
  v116 = v144;
  v117 = v145;
  v118 = v146;
  v119 = v147;
  v112 = *&v141[16];
  v113 = *&v141[32];
  v114 = v142;
  v115 = v143;
  v108 = v138;
  v109 = v139;
  v110 = v140;
  v111 = *v141;
  if (v150)
  {

    v7 = *(&v108 + 1);
    v23 = v108;
    v8 = v109;
    a4 = BYTE8(v109);
    v10 = *(&v110 + 1);
    v9 = v110;
    LOBYTE(v11) = v111;
    if (v111 != 2 || v110 != 0)
    {

      sub_181F68EF4(v23, v7, v8, a4);

      sub_181F68F3C(v9, v10, v11);
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_58:
    if ((v146 & 1) == 0 && v145)
    {
      MEMORY[0x1865DF520](v145, -1, -1);
    }

    sub_181F68EF4(v23, v7, v8, a4);
    goto LABEL_62;
  }

LABEL_72:
  if (v10)
  {
    v94 = *(v10 + 24);
  }

  else
  {
    v94 = 0;
  }

  v10 = v105;
  v23 = v107;
  a4 = v104;
  v56 = __OFADD__(v94, 1);
  v95 = v94 + 1;
  if (v56)
  {
    goto LABEL_93;
  }

  if (v95 != 1)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    swift_endAccess();
    __break(1u);
LABEL_96:

    sub_181F68EF4(v23, v7, v8, a4);

    sub_181F68F3C(v9, v10, v11);
    __break(1u);
    goto LABEL_97;
  }

  FrameArray.popFirst()(&v152);
  sub_182050C60(&v152, &v166, v12, v7, v105, v103, v8, v6, v107, v9, v104 & 1, &v167);

  v7 = *(&v152 + 1);
  v23 = v152;
  v8 = v153;
  a4 = BYTE8(v153);
  v10 = *(&v154 + 1);
  v9 = v154;
  LOBYTE(v11) = v155;
  if (v155 != 2 || v154 != 0)
  {
    goto LABEL_98;
  }

  if ((v162 & 1) == 0 && v161)
  {
    MEMORY[0x1865DF520](v161, -1, -1);
  }

  sub_181F68EF4(v23, v7, v8, a4);

  v7 = *(&v108 + 1);
  v8 = v109;
  a4 = BYTE8(v109);
  v10 = *(&v110 + 1);
  v9 = v110;
  LODWORD(v11) = v111;
  v96 = v117;
  v97 = v118;
  v105 = v108;

  if (v11 == 2 && __PAIR128__(v10, v9) == 0)
  {
    if (v96)
    {
      v98 = v97;
    }

    else
    {
      v98 = 1;
    }

    if ((v98 & 1) == 0)
    {
      MEMORY[0x1865DF520](v96, -1, -1);
    }

    sub_181F68EF4(v105, v7, v8, a4);
    goto LABEL_62;
  }

LABEL_99:

  sub_181F68EF4(v105, v7, v8, a4);

  result = sub_181F68F3C(v9, v10, v11);
  __break(1u);
  return result;
}

uint64_t sub_182050C60(uint64_t a1, Swift::Int *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7, uint64_t a8, Swift::Int a9, unsigned __int8 a10, char a11, _BYTE *a12)
{
  v12 = a1;
  v13 = *(a1 + 16);
  v146 = *a1;
  v147 = v13;
  v148 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  v18 = *(a1 + 192);
  v159 = *(a1 + 176);
  v160 = v18;
  v161 = *(a1 + 208);
  v19 = *(a1 + 128);
  v155 = *(a1 + 112);
  v156 = v19;
  v20 = *(a1 + 144);
  v158 = *(a1 + 160);
  v157 = v20;
  v21 = *(a1 + 96);
  v153 = *(a1 + 80);
  v154 = v21;
  v149 = v14;
  v150 = v15;
  v151 = v17;
  v152 = v16;
  v22 = 1;
  LOBYTE(v126) = 1;
  LOBYTE(v116) = 1;
  LOBYTE(v113[0]) = 1;
  v134 = 0uLL;
  *&v135 = 0;
  BYTE8(v135) = 6;
  v136 = 0uLL;
  v23 = 2;
  v137[0] = 2;
  memset(&v137[8], 0, 33);
  memset(&v137[48], 0, 32);
  *&v138 = 0;
  DWORD2(v138) = 2;
  BYTE12(v138) = 1;
  *v139 = 0uLL;
  v139[16] = 1;
  v140 = 0;
  *&v139[24] = 0;
  v141 = 0;
  v142 = 256;
  v143 = 0;
  v144 = 0;
  v24 = 255;
  v145 = -1;
  v25 = Frame.bufferLength.getter();
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 6;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 2;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = v25;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0;
  *(v12 + 136) = 2;
  *(v12 + 140) = 1;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 1;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 256;
  *(v12 + 194) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = -1;
  if (BYTE8(v147) == 5)
  {
    v26 = nw_frame_unclaimed_length(v146);
LABEL_9:
    LOBYTE(v28) = a7;
    v29 = a3;
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v27 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
    __break(1u);
    goto LABEL_115;
  }

  v26 = v16 - v27;
  LOBYTE(v28) = a7;
  v29 = a3;
  if (__OFSUB__(v16, v27))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_10:
  v23 = a2;
  swift_beginAccess();
  v24 = *a2;
  if (*a2 < v26 && Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(*a2, 0, 1))
  {
    Frame.collapse()();
    Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v24, 0, 1);
  }

  if (BYTE8(v147) == 5)
  {
    v12 = nw_frame_unclaimed_length(v146);
    goto LABEL_21;
  }

  if (!v152)
  {
    goto LABEL_20;
  }

  v30 = v150 + v151;
  if (__OFADD__(v150, v151))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v12 = v152 - v30;
  if (__OFSUB__(v152, v30))
  {
    __break(1u);
LABEL_20:
    v12 = 0;
  }

LABEL_21:
  v31 = &v126;
  v23 = &v116;
  v32 = v29[37];

  sub_181F83BF4(0x202020100uLL >> (8 * v28), a8, &v126);
  v33 = v126;
  if (!v126)
  {
LABEL_25:

    sub_1820223F0(&v134);
    v24 = 0;
    goto LABEL_26;
  }

  v108 = v12;
  v34 = *(&v126 + 1);
  v23 = v127;
  LOBYTE(v126) = 4;
  LOBYTE(v128) = 1;
  *(&v130 + 1) = 0;
  v129 = 0uLL;
  *(&v128 + 1) = 0;
  LOBYTE(v130) = 0;
  v131[0] = 1;
  *&v132 = 0;
  DWORD2(v132) = 0;
  *v133 = 0;
  *&v133[16] = 0;
  *&v133[25] = 512;
  v133[27] = 0;
  v131[24] = 0x202020100uLL >> (8 * v28);
  v133[24] = v28 < 3u;
  *(&v126 + 1) = a6;
  v127 = 0uLL;
  v131[1] = v28;
  *&v131[32] = a5;
  *&v131[40] = MEMORY[0x1E69E7CC0];

  *&v131[8] = v34;

  *&v131[16] = v23;
  v133[8] = 2;
  v35 = *(v32 + 24);
  if (v35)
  {
    v36 = *(v35 + 16);
    if (v36 >> 62)
    {
      sub_182AD3EA8();
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    v36 = 0;
  }

  v38 = &v126;
  v24 = 0;
  v39 = sub_182224F04(a6, v36);
  v23 = v39;
  v28 = v40;
  v12 = v41;
  if (v41)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v42 = a4 - a9;
  if (__OFSUB__(a4, a9))
  {
    goto LABEL_116;
  }

  if (__OFSUB__(v42, v39))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v43 = sub_181F843F4(1u >> a7, v42 - v39);
  v22 = v43;
  v38 = v44;
  v12 = v45;
  if (__OFADD__(v44, v45))
  {
    __break(1u);
LABEL_122:
    v101 = v43;
    swift_once();
    v43 = v101;
LABEL_57:
    v24 = qword_1EA8387E8;
    if (is_mul_ok(v43, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      __break(1u);
    }

    v102 = v43;
    swift_once();
    v43 = v102;
LABEL_59:
    v12 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
LABEL_61:
        if (qword_1EA8431F0)
        {
          sub_181FF499C(&v116, v43 * v24 / v12 / qword_1EA8431F0, v29);

          result = swift_beginAccess();
          *a12 = 1;
          return result;
        }

        __break(1u);
        goto LABEL_128;
      }
    }

    else
    {
      __break(1u);
    }

    v103 = v43;
    swift_once();
    v43 = v103;
    goto LABEL_61;
  }

  *(&v128 + 1) = v44 + v45;
  *&v129 = a9;
  v38 = &v146;
  v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(0, a9, 1);
  if ((v43 & 1) == 0)
  {
    v134 = xmmword_182AED510;
    LOBYTE(v135) = 16;
    sub_181F5F494();
    swift_willThrowTypedImpl();

    v138 = v132;
    *v139 = *v133;
    *&v139[12] = *&v133[12];
    *&v137[16] = v130;
    *&v137[32] = *v131;
    *&v137[48] = *&v131[16];
    *&v137[64] = *&v131[32];
    v134 = v126;
    v135 = v127;
    v136 = v128;
    *v137 = v129;
    sub_181F843A0(&v134);
    LOBYTE(v28) = 0;
    v79 = v29[10];
    v78 = v29[11];
    *&v134 = 0;
    *(&v134 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v134 = 0xD00000000000001BLL;
    *(&v134 + 1) = 0x8000000182BDC000;
    sub_18222E40C(2uLL, 0, 0x10u);
    MEMORY[0x1865D9CA0](v80, v81);

    MEMORY[0x1865D9CA0](0x2065646F63202CLL, 0xE700000000000000);
    v82 = sub_18222E40C(2uLL, 0, 0x10u);
    sub_18202232C(2, 0, 16);

    *&v126 = v82;
    v83 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v83);

    v84 = *(&v134 + 1);
    v22 = v134;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v85 = sub_182AD2698();
    __swift_project_value_buffer(v85, qword_1EA843418);

    v86 = sub_182AD2678();
    v31 = sub_182AD38B8();

    if (os_log_type_enabled(v86, v31))
    {
      v32 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v134 = v28;
      *v32 = 136315650;
      v87 = sub_182AD3BF8();
      v89 = sub_181C64FFC(v87, v88, &v134);

      *(v32 + 4) = v89;
      v29 = a3;
      *(v32 + 12) = 2080;
      v90 = sub_181C64FFC(v79, v78, &v134);

      *(v32 + 14) = v90;
      *(v32 + 22) = 2080;
      v91 = sub_181C64FFC(v22, v84, &v134);

      *(v32 + 24) = v91;
      _os_log_impl(&dword_181A37000, v86, v31, "%s %s %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v28, -1, -1);
      MEMORY[0x1865DF520](v32, -1, -1);
    }

    else
    {
    }

    v92 = *(v29[37] + 32);
    if (*(v92 + 16))
    {
      v93 = sub_18224EF74(a10);
      if (v94)
      {
        v95 = *(*(v92 + 56) + 8 * v93);
        swift_beginAccess();
        v96 = *(v95 + 16);
        if (v96[2])
        {
          swift_beginAccess();
          v22 = v96[4];
          v31 = v96[5];
          v32 = v96[6];
          v28 = v96[7];

          sub_18206AF20(v22, v31);
          sub_181FCCC18(0, 1);
          swift_endAccess();

          sub_18206B01C(v22, v31);
        }
      }
    }

    Frame.finalize(success:)(0);
    v68 = *(&v146 + 1);
    v43 = v146;
    v69 = v147;
    v70 = BYTE8(v147);
    v24 = *(&v148 + 1);
    v38 = v148;
    v12 = v149;
    if (v149 == 2 && v148 == 0)
    {
      if ((v158 & 1) != 0 || !v157)
      {
        goto LABEL_106;
      }

      v38 = v146;
      v73 = v157;
      v24 = *(&v146 + 1);
      v12 = v147;
      LOBYTE(v22) = BYTE8(v147);
LABEL_104:
      MEMORY[0x1865DF520](v73, -1);
LABEL_105:
      v43 = v38;
      v68 = v24;
      v69 = v12;
      v70 = v22;
LABEL_106:
      sub_181F68EF4(v43, v68, v69, v70);
    }

    goto LABEL_137;
  }

  if (a7 >= 3u)
  {
    v133[26] = *(a8 + 1091);
  }

  if (BYTE8(v147) == 5)
  {
    v111 = nw_frame_unclaimed_length(v146);
  }

  else if (v152)
  {
    v74 = v150 + v151;
    if (__OFADD__(v150, v151))
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (__OFSUB__(v152, v74))
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v111 = v152 - v74;
  }

  else
  {
    v111 = 0;
  }

  if (v131[1] - 3 >= 2)
  {
    v75 = *(v32 + 24);
    v136 = v128;
    *v137 = v129;
    *&v137[16] = v130;
    *&v137[32] = *v131;
    v134 = v126;
    v135 = v127;
    *&v137[64] = *&v131[32];
    *&v137[50] = *&v131[18];
    *&v137[34] = *&v131[2];
    *&v137[72] = *&v131[40];
    *&v139[12] = *&v133[12];
    v138 = v132;
    *v139 = *v133;

    v38 = &v134;
    sub_182223AA4(&v146, 1, a6, v75);

    v29 = a3;
  }

  else
  {
    v136 = v128;
    *v137 = v129;
    *&v137[16] = v130;
    *&v137[32] = *v131;
    v134 = v126;
    v135 = v127;
    *&v137[64] = *&v131[32];
    *&v137[50] = *&v131[18];
    *&v137[34] = *&v131[2];
    *&v137[72] = *&v131[40];
    *&v139[12] = *&v133[12];
    v138 = v132;
    *v139 = *v133;
    v38 = &v134;
    v43 = sub_182224A10(&v146, 1, a6);
  }

  if (BYTE8(v147) == 5)
  {
    v43 = nw_frame_unclaimed_length(v146);
    v31 = v43;
  }

  else
  {
    if (v152)
    {
      v76 = v150 + v151;
      if (__OFADD__(v150, v151))
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      v31 = v152 - v76;
      if (!__OFSUB__(v152, v76))
      {
        goto LABEL_86;
      }

      __break(1u);
    }

    v31 = 0;
  }

LABEL_86:
  if (__OFSUB__(v111, v31))
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  *&v127 = v111 - v31;
  if (v111 - v31 != v23)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (__OFSUB__(v23, v28))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  *(&v127 + 1) = v23 - v28;
  LOBYTE(v128) = 0;
  *&v113[0] = MEMORY[0x1E69E7CC0];
  v38 = v33;
  sub_181F81BC4(&v146, 1, v22, v113);
  v22 = v77;

  *&v131[40] = *&v113[0];
  if (BYTE8(v147) == 5)
  {
    v43 = nw_frame_unclaimed_length(v146);
    v97 = v43;
  }

  else
  {
    v97 = v152;
    if (v152)
    {
      v98 = v150 + v151;
      if (__OFADD__(v150, v151))
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v97 = v152 - v98;
      if (__OFSUB__(v152, v98))
      {
LABEL_136:
        __break(1u);
LABEL_137:
        sub_181F68EF4(v43, v68, v69, v70);

        sub_181F68F3C(v38, v24, v12);
        __break(1u);
        goto LABEL_138;
      }
    }
  }

  v99 = __OFSUB__(v31, v97);
  v100 = v31 - v97;
  if (v99)
  {
    goto LABEL_133;
  }

  *(&v128 + 1) = v100;
  WORD4(v132) = v22 & 0x101;
  Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(0, a9, 1);

  v124 = v132;
  v125[0] = *v133;
  v31 = &v126;
  v23 = &v116;
  *(v125 + 12) = *&v133[12];
  v120 = v130;
  v121 = *v131;
  v122 = *&v131[16];
  v123 = *&v131[32];
  v116 = v126;
  v117 = v127;
  v118 = v128;
  v119 = v129;
  nullsub_41(&v116);
  v138 = v124;
  *v139 = v125[0];
  *&v139[12] = *(v125 + 12);
  *&v137[16] = v120;
  *&v137[32] = v121;
  *&v137[48] = v122;
  *&v137[64] = v123;
  v134 = v116;
  v135 = v117;
  v136 = v118;
  *v137 = v119;
  v12 = v108;
LABEL_26:
  if (BYTE8(v147) == 5)
  {
    v37 = nw_frame_unclaimed_length(v146);
LABEL_36:
    if (v37 >= v12)
    {
      goto LABEL_39;
    }

    v47 = v12 - v37;
    if (__OFSUB__(v12, v37))
    {
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  if (!v152)
  {
    if (v12 <= 0)
    {
LABEL_39:
      v132 = v138;
      *v133 = *v139;
      *&v133[12] = *&v139[12];
      v130 = *&v137[16];
      *v131 = *&v137[32];
      *&v131[16] = *&v137[48];
      *&v131[32] = *&v137[64];
      v126 = v134;
      v127 = v135;
      v128 = v136;
      v129 = *v137;
      if (sub_182064AC8(&v126) == 1)
      {
        Frame.finalize(success:)(0);
        v24 = *(&v146 + 1);
        v38 = v146;
        v12 = v147;
        LOBYTE(v22) = BYTE8(v147);
        v32 = *(&v148 + 1);
        v31 = v148;
        LOBYTE(v28) = v149;
        v23 = *(&v158 + 1);
        if (v149 == 2 && v148 == 0)
        {
          goto LABEL_66;
        }

        sub_181F68EF4(v146, *(&v146 + 1), v147, BYTE8(v147));

        sub_181F68F3C(v31, v32, v28);
        __break(1u);
      }

      v124 = v132;
      v125[0] = *v133;
      *(v23 + 156) = *(v31 + 156);
      v120 = v130;
      v121 = *v131;
      v122 = *&v131[16];
      v123 = *&v131[32];
      v116 = v126;
      v117 = v127;
      v118 = v128;
      v119 = v129;

      v48 = sub_182235FB4(&v116, &v146);
      if (v24)
      {
        v51 = v48;
        v52 = v49;
        v53 = v50;

        v24 = v29[10];
        v23 = v29[11];
        *&v113[0] = 0;
        *(&v113[0] + 1) = 0xE000000000000000;

        sub_182AD3BA8();

        *&v113[0] = 0xD00000000000001ALL;
        *(&v113[0] + 1) = 0x8000000182BDBFE0;
        sub_18222E40C(v51, v52, v53);
        MEMORY[0x1865D9CA0](v54, v55);

        MEMORY[0x1865D9CA0](0x2065646F63202CLL, 0xE700000000000000);
        v56 = sub_18222E40C(v51, v52, v53);
        sub_18202232C(v51, v52, v53);

        v115 = v56;
        v57 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v57);

        v12 = *(&v113[0] + 1);
        v22 = *&v113[0];
        if (qword_1EA837248 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_120;
      }

LABEL_56:

      v71 = *(a8 + 32);
      *&v113[0] = *(a8 + 24);
      BYTE8(v113[0]) = v71;
      sub_182171338(&v146, v113, (a11 & 1) == 0);

      *&v124 = a8;
      v38 = v29[44];

      v43 = mach_continuous_time();
      if (qword_1EA837030 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_122;
    }

    v47 = v12;
LABEL_38:
    Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v47, 0, 1);
    goto LABEL_39;
  }

  v46 = v150 + v151;
  if (__OFADD__(v150, v151))
  {
    goto LABEL_118;
  }

  v37 = v152 - v46;
  if (!__OFSUB__(v152, v46))
  {
    goto LABEL_36;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  swift_once();
LABEL_45:
  v58 = sub_182AD2698();
  __swift_project_value_buffer(v58, qword_1EA843418);

  v59 = sub_182AD2678();
  v60 = sub_182AD38B8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v113[0] = v62;
    *v61 = 136315650;
    v63 = sub_182AD3BF8();
    v65 = sub_181C64FFC(v63, v64, v113);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = sub_181C64FFC(v24, v23, v113);

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    v67 = sub_181C64FFC(v22, v12, v113);

    *(v61 + 24) = v67;
    _os_log_impl(&dword_181A37000, v59, v60, "%s %s %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v62, -1, -1);
    MEMORY[0x1865DF520](v61, -1, -1);
  }

  else
  {
  }

  Frame.finalize(success:)(0);
  v113[8] = v124;
  v114[0] = v125[0];
  *(v114 + 12) = *(v125 + 12);
  v113[4] = v120;
  v113[5] = v121;
  v113[6] = v122;
  v113[7] = v123;
  v113[0] = v116;
  v113[1] = v117;
  v113[2] = v118;
  v113[3] = v119;
  sub_181F843A0(v113);
  v24 = *(&v146 + 1);
  v38 = v146;
  v12 = v147;
  LOBYTE(v22) = BYTE8(v147);
  v32 = *(&v148 + 1);
  v31 = v148;
  LOBYTE(v28) = v149;
  if (v149 == 2 && v148 == 0)
  {
LABEL_66:
    if (v158)
    {
      goto LABEL_105;
    }

    v73 = v157;
    if (!v157)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_139:
  sub_181F68EF4(v38, v24, v12, v22);

  result = sub_181F68F3C(v31, v32, v28);
  __break(1u);
  return result;
}

uint64_t sub_1820520C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(a1 + 56) + 48);
  result = swift_beginAccess();
  v6 = 0;
  v7 = *(a1 + 320);
  if ((*(a1 + 312) & 1) == 0)
  {
    v8 = *(a1 + 304);
    if (*(a1 + 112) == 5)
    {
      result = nw_frame_unclaimed_length(*(a1 + 88));
      v6 = result;
      if (!v8)
      {
        goto LABEL_24;
      }

LABEL_9:
      v14 = v8[4];
      v15 = v8[3] + v14;
      if (v8[2] < v15)
      {
        v15 = v8[2];
      }

      v30 = v8[4];
      v31 = v15;
      result = swift_retain_n();
      v16 = v8;
      do
      {
        if (v14 == v31)
        {
          if ((sub_181AC81FC(result) & 1) == 0)
          {

            goto LABEL_24;
          }

          v16 = v8;
          v14 = v30;
        }

        v19 = &v16[v14++];
        v30 = v14;
        v20 = v19[5];
        result = swift_beginAccess();
        if (*(v20 + 40) == 5)
        {
          v17 = *(v20 + 16);

          v18 = nw_frame_unclaimed_length(v17);
        }

        else
        {
          v21 = *(v20 + 88);
          if (v21)
          {
            v22 = *(v20 + 72);
            v23 = *(v20 + 80);
            v12 = __OFADD__(v22, v23);
            v24 = v22 + v23;
            if (v12)
            {
              goto LABEL_39;
            }

            v18 = v21 - v24;
            if (__OFSUB__(v21, v24))
            {
              goto LABEL_40;
            }
          }

          else
          {

            v18 = 0;
          }
        }

        swift_endAccess();

        v12 = __OFADD__(v6, v18);
        v6 += v18;
      }

      while (!v12);
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v9 = *(a1 + 160);
    if (v9)
    {
      v10 = *(a1 + 144);
      v11 = *(a1 + 152);
      v12 = __OFADD__(v10, v11);
      v13 = v10 + v11;
      if (v12)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v6 = v9 - v13;
      if (__OFSUB__(v9, v13))
      {
LABEL_45:
        __break(1u);
        return result;
      }

      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      if (v8)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_25:
  if (__CFADD__(v7, v6))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_endAccess();
  if (v4 < v7 + v6)
  {
    result = swift_beginAccess();
    *(a1 + 328) = 1;
    return result;
  }

  v25 = *(v2 + 304);
  if (*(a1 + 328) == 1 && (swift_beginAccess(), *(a1 + 368) == 2))
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    swift_beginAccess();

    sub_181F6C974(v26, v27, 3u);
    swift_endAccess();
  }

  else
  {
  }

  if (*(a1 + 24))
  {
    goto LABEL_43;
  }

  v28 = *(*(a1 + 56) + 48);
  v29 = 5;
  if (!v28)
  {
    v29 = 1;
  }

  *&v32 = v29;
  *(&v32 + 1) = 0x4800000000000000;
  v33 = a1;
  v34 = v28;
  v35 = xmmword_182AEB780;

  sub_181F82F10(0x202020100uLL >> (8 * v25), &v32);
}

void sub_1820523DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v15 = *(a1 + 16);
    v16 = *(*(a1 + 56) + 48);
    v17 = 0x202020100uLL >> (8 * *(v1 + 304));
    v33 = xmmword_182AF0210;
    v34 = v15;
    v35 = 0;
    v36 = v16;

    sub_181F82F10(v17, &v33);

    v19 = *(v1 + 80);
    v18 = *(v1 + 88);
    v20 = qword_1EA837248;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1EA843418);

    v22 = sub_182AD2678();
    v23 = sub_182AD38D8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v33 = v25;
      *v24 = 136315650;
      v26 = sub_182AD3BF8();
      v28 = sub_181C64FFC(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = sub_181C64FFC(v19, v18, &v33);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_181C64FFC(0xD000000000000014, 0x8000000182BDC0F0, &v33);
      _os_log_impl(&dword_181A37000, v22, v23, "%s %s %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v25, -1, -1);
      MEMORY[0x1865DF520](v24, -1, -1);

      v30 = *(a1 + 372);
      if ((v30 & 0x800) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v30 = *(a1 + 372);
      if ((v30 & 0x800) != 0)
      {
LABEL_16:
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        swift_beginAccess();

        sub_181F6C974(v31, v32, 4u);
        swift_endAccess();

        return;
      }
    }

    *(a1 + 372) = v30 | 0x800;
    goto LABEL_16;
  }

  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = qword_1EA837248;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_182AD2698();
  __swift_project_value_buffer(v5, qword_1EA843418);

  v6 = sub_182AD2678();
  v7 = sub_182AD38D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v33 = v9;
    *v8 = 136315650;
    v10 = sub_182AD3BF8();
    v12 = sub_181C64FFC(v10, v11, &v33);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_181C64FFC(v3, v2, &v33);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_181C64FFC(0xD00000000000002ALL, 0x8000000182BDC0C0, &v33);
    _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v9, -1, -1);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  else
  {
  }
}

void sub_182052860()
{
  if ((*(v0 + 1125) & 1) == 0)
  {
    swift_beginAccess();
    if (*(v0 + 139) - 9 >= 3)
    {
      v15 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = qword_1EA837248;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843418);

      v18 = sub_182AD2678();
      v19 = sub_182AD38C8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v26[0] = v21;
        *v20 = 136315650;
        v22 = sub_182AD3BF8();
        v24 = sub_181C64FFC(v22, v23, v26);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v25 = sub_181C64FFC(v15, v14, v26);

        *(v20 + 14) = v25;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_181C64FFC(0xD00000000000003DLL, 0x8000000182BDADC0, v26);
        _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);

        return;
      }
    }

    else
    {
      sub_182047548(1);
      if (*(v0 + 1024) == 1)
      {
        v1 = 0x202020100uLL >> (8 * *(v0 + 304));
        v26[0] = xmmword_182AF0220;

        sub_181F82F10(v1, v26);
      }

      *(v0 + 1125) = 1;
      v3 = *(v0 + 80);
      v2 = *(v0 + 88);
      v4 = qword_1EA837250;

      if (v4 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1)
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v5 = sub_182AD2698();
        __swift_project_value_buffer(v5, qword_1EA843418);

        v6 = sub_182AD2678();
        v7 = sub_182AD38A8();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          *&v26[0] = v9;
          *v8 = 136315650;
          v10 = sub_182AD3BF8();
          v12 = sub_181C64FFC(v10, v11, v26);

          *(v8 + 4) = v12;
          *(v8 + 12) = 2080;
          v13 = sub_181C64FFC(v3, v2, v26);

          *(v8 + 14) = v13;
          *(v8 + 22) = 2080;
          *(v8 + 24) = sub_181C64FFC(0xD000000000000018, 0x8000000182BDAE00, v26);
          _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v9, -1, -1);
          MEMORY[0x1865DF520](v8, -1, -1);

          return;
        }
      }
    }
  }
}

void sub_182052CC8()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    goto LABEL_44;
  }

  if (*(v1 + 16))
  {
    v2 = v0;
    sub_18224F168(8);
    if (v3)
    {
      v4 = sub_1822CDE04();
      if (*(v1 + 16))
      {
        v5 = v4;
        sub_18224F168(9);
        if (v6)
        {
          v7 = sub_1822CDE04();
          if (*(v1 + 16))
          {
            sub_18224F168(4);
            if (v8)
            {
              v9 = sub_1822CDE04();
              if ((v9 & 0x8000000000000000) == 0)
              {
LABEL_11:
                swift_beginAccess();
                if (*(*(v0 + 288) + 16))
                {
                  sub_18224F168(4);
                  if (v10)
                  {
                    v11 = sub_1822CDE04();
                    if ((v11 & 0x8000000000000000) == 0)
                    {
LABEL_16:
                      v12 = *(v0 + 1024);
                      v13 = *(v0 + 80);
                      v14 = *(v0 + 88);
                      swift_beginAccess();

                      sub_18202539C(v12, v5, v13, v14);
                      swift_endAccess();

                      v15 = *(v0 + 1024);
                      v16 = *(v0 + 80);
                      v17 = *(v0 + 88);
                      swift_beginAccess();

                      sub_18202539C(v15, v7, v16, v17);
                      swift_endAccess();

                      if (*(v1 + 16) && (v18 = sub_18224F168(17), (v19 & 1) != 0))
                      {
                        v20 = (*(v1 + 56) + 56 * v18);
                        v21 = *v20;
                        v22 = v20[1];
                        v23 = v20[2];
                        v24 = v20[3];
                        v25 = v20[4];
                        sub_18206A3C4(*v20, v22, v23, v24, v25);

                        v26 = sub_1822CDE04();
                        sub_18206A46C(v21, v22, v23, v24, v25);
                        v27 = 0xFFFFLL;
                        if (v26 < 0xFFFF)
                        {
                          v27 = v26;
                        }
                      }

                      else
                      {

                        v27 = 0;
                      }

                      v2[39] = v27;
                      sub_1820531D4(v2);
                      v28 = v2[9];
                      v29 = v2[10];
                      v30 = v2[11];
                      type metadata accessor for FlowControlConnection();
                      swift_allocObject();

                      v2[18] = sub_18221249C(v28, v29, v30);

                      sub_182210D38(v9, v11);

                      swift_beginAccess();
                      v31 = v2[63];
                      if (v31 >> 62)
                      {
                        v32 = sub_182AD3EB8();
                        if (!v32)
                        {
                          goto LABEL_31;
                        }
                      }

                      else
                      {
                        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (!v32)
                        {
                          goto LABEL_31;
                        }
                      }

                      if (v32 < 1)
                      {
                        __break(1u);
LABEL_43:
                        __break(1u);
LABEL_44:
                        __break(1u);
                        return;
                      }

                      v33 = 0;
                      do
                      {
                        if ((v31 & 0xC000000000000001) != 0)
                        {
                          MEMORY[0x1865DA790](v33, v31);
                        }

                        else
                        {
                        }

                        ++v33;

                        sub_18220EA24(v9, v11);
                      }

                      while (v32 != v33);
LABEL_31:
                      swift_endAccess();
                      swift_beginAccess();
                      v34 = v2[79];
                      if (v34 >> 62)
                      {
                        v35 = sub_182AD3EB8();
                        if (v35)
                        {
LABEL_33:
                          if (v35 >= 1)
                          {
                            v36 = 0;
                            do
                            {
                              if ((v34 & 0xC000000000000001) != 0)
                              {
                                MEMORY[0x1865DA790](v36, v34);
                              }

                              else
                              {
                              }

                              ++v36;

                              sub_18220EA24(v9, v11);
                            }

                            while (v35 != v36);
                            goto LABEL_40;
                          }

                          goto LABEL_43;
                        }
                      }

                      else
                      {
                        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v35)
                        {
                          goto LABEL_33;
                        }
                      }

LABEL_40:
                      swift_endAccess();
                      return;
                    }

                    __break(1u);
                  }
                }

                v11 = 0;
                goto LABEL_16;
              }

              __break(1u);
            }
          }

          v9 = 0;
          goto LABEL_11;
        }
      }
    }
  }
}

void sub_1820531D4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  v3 = qword_1EA837250;

  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    v15[0] = 0xD000000000000019;
    v15[1] = 0x8000000182BDAF30;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, v15);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_181C64FFC(v2, v1, v15);

      *(v8 + 14) = v13;
      *(v8 + 22) = 2080;
      v14 = sub_181C64FFC(0xD000000000000019, 0x8000000182BDAF30, v15);

      *(v8 + 24) = v14;
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall QUICConnectionImplementation.wakeup()()
{

  sub_181F896D8();
}

uint64_t sub_1820534F8()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  sub_18206A1F0(v1, v2);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  sub_18206A1F0(v3, v4);

  v5 = *(v0 + 464);
  v14[4] = *(v0 + 448);
  v14[5] = v5;
  v6 = *(v0 + 496);
  v14[6] = *(v0 + 480);
  v14[7] = v6;
  v7 = *(v0 + 400);
  v14[0] = *(v0 + 384);
  v14[1] = v7;
  v8 = *(v0 + 432);
  v14[2] = *(v0 + 416);
  v14[3] = v8;
  sub_18206A234(v14);
  v9 = *(v0 + 592);
  v15[4] = *(v0 + 576);
  v15[5] = v9;
  v10 = *(v0 + 624);
  v15[6] = *(v0 + 608);
  v15[7] = v10;
  v11 = *(v0 + 528);
  v15[0] = *(v0 + 512);
  v15[1] = v11;
  v12 = *(v0 + 560);
  v15[2] = *(v0 + 544);
  v15[3] = v12;
  sub_18206A234(v15);

  sub_181F8465C(*(v0 + 984));
  sub_18206A288(*(v0 + 1048));

  return sub_182023268(*(v0 + 1144), *(v0 + 1152), *(v0 + 1160));
}

uint64_t QUICConnectionImplementation.deinit()
{

  swift_unknownObjectRelease();
  sub_181F74148(*(v0 + 120), *(v0 + 128));

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  sub_18206A1F0(v1, v2);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  sub_18206A1F0(v3, v4);

  v5 = *(v0 + 464);
  v14[4] = *(v0 + 448);
  v14[5] = v5;
  v6 = *(v0 + 496);
  v14[6] = *(v0 + 480);
  v14[7] = v6;
  v7 = *(v0 + 400);
  v14[0] = *(v0 + 384);
  v14[1] = v7;
  v8 = *(v0 + 432);
  v14[2] = *(v0 + 416);
  v14[3] = v8;
  sub_18206A234(v14);
  v9 = *(v0 + 592);
  v15[4] = *(v0 + 576);
  v15[5] = v9;
  v10 = *(v0 + 624);
  v15[6] = *(v0 + 608);
  v15[7] = v10;
  v11 = *(v0 + 528);
  v15[0] = *(v0 + 512);
  v15[1] = v11;
  v12 = *(v0 + 560);
  v15[2] = *(v0 + 544);
  v15[3] = v12;
  sub_18206A234(v15);

  sub_181F8465C(*(v0 + 984));
  sub_18206A288(*(v0 + 1048));

  sub_182023268(*(v0 + 1144), *(v0 + 1152), *(v0 + 1160));
  return v0;
}

uint64_t QUICConnectionImplementation.__deallocating_deinit()
{
  QUICConnectionImplementation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_182053A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16) && (v6 = sub_18224EEF0(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v10 = *(v8 + 64);
    v9 = *(v8 + 72);
    v11 = *(v8 + 80);
    if (v11 == 4)
    {

      sub_181F68EA8(v10, v9, 4u);
      sub_181F636F0(v10, &v26);
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = v12;
LABEL_16:
          v20 = v10;
          v21 = v9;
          v22 = 4;
LABEL_26:
          sub_181F68E5C(v20, v21, v22);

          return v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50);
        if (swift_dynamicCastClass())
        {
          v13 = sub_18228121C();
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

        swift_unknownObjectRelease();
      }

      v17 = v10;
      v18 = v9;
      v19 = 4;
    }

    else
    {
      v26 = *(*(v5 + 56) + 8 * v6);
      v27 = 0x60000001EEFC4E48uLL;

      sub_181F68EA8(v10, v9, v11);
      if (sub_181F6433C(&v26))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
LABEL_25:
          v13 = v16;
          v20 = v10;
          v21 = v9;
          v22 = v11;
          goto LABEL_26;
        }

        swift_unknownObjectRelease();
      }

      v17 = v10;
      v18 = v9;
      v19 = v11;
    }

    sub_181F68E5C(v17, v18, v19);
    v10 = *(v8 + 64);
    v9 = *(v8 + 72);
    v11 = *(v8 + 80);
    if (v11 == 4)
    {
      sub_181F68EA8(*(v8 + 64), *(v8 + 72), 4u);
      sub_181F636F0(v10, &v26);
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;

LABEL_31:
          sub_181F68E5C(v10, v9, 4u);
          return v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50);
        if (swift_dynamicCastClass())
        {
          v24 = sub_18228121C();

          swift_unknownObjectRelease();
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_181F68E5C(v10, v9, 4u);
      return 0;
    }

    v26 = v3;
    v27 = 0x60000001EEFC49F0uLL;

    sub_181F68EA8(v10, v9, v11);
    v25 = sub_181F6433C(&v26);

    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    sub_181F68E5C(v10, v9, v11);
  }

  else
  {
    v26 = v3;
    v27 = 0x60000001EEFC49F0uLL;
    swift_unknownObjectRetain();
    v14 = sub_181F6433C(&v26);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_182053DD0(uint64_t a1)
{
  v5 = v1;
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
    v8 = *(v1 + 80);
    v7 = *(v1 + 88);

    sub_182AD3BA8();

    v125 = 0x8000000182BDB640;
    v122 = v6;
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843418);

    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v124 = v14;
      *v13 = 136315650;
      v15 = sub_182AD3BF8();
      v17 = sub_181C64FFC(v15, v16, &v124);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_181C64FFC(v8, v7, &v124);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v19 = sub_181C64FFC(0xD000000000000024, 0x8000000182BDB640, &v124);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    goto LABEL_34;
  }

  if ((v6 & 2) != 0 && *(v1 + 1024) != ((*(a1 + 16) & 1) == 0))
  {
    v2 = 0xD000000000000016;
    v3 = *(v1 + 80);
    v20 = *(v1 + 88);

    sub_182AD3BA8();

    v124 = 0xD00000000000002BLL;
    v125 = 0x8000000182BDB5E0;
    v122 = v6;
    v21 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v21);

    v4 = 0xD00000000000002BLL;
    v6 = 0x8000000182BDB5E0;
    if (qword_1EA837248 == -1)
    {
LABEL_9:
      v22 = sub_182AD2698();
      __swift_project_value_buffer(v22, qword_1EA843418);

      v23 = sub_182AD2678();
      v24 = sub_182AD38B8();

      if (os_log_type_enabled(v23, v24))
      {
        v118 = v4;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v124 = v26;
        *v25 = 136315650;
        v27 = sub_182AD3BF8();
        v29 = sub_181C64FFC(v27, v28, &v124);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v30 = sub_181C64FFC(v3, v20, &v124);

        *(v25 + 14) = v30;
        v2 = 0xD000000000000016;
        *(v25 + 22) = 2080;
        v31 = sub_181C64FFC(v118, v6, &v124);

        *(v25 + 24) = v31;
        _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v26, -1, -1);
        MEMORY[0x1865DF520](v25, -1, -1);
      }

      else
      {
      }

      v54 = *(v5 + 1144);
      v55 = *(v5 + 1152);
      *(v5 + 1144) = v2 + 10;
      *(v5 + 1152) = 0x8000000182BDB610;
      v56 = *(v5 + 1160);
      *(v5 + 1160) = 2;
      sub_182023268(v54, v55, v56);
      goto LABEL_34;
    }

LABEL_63:
    swift_once();
    goto LABEL_9;
  }

  v20 = v1 + 936;
  swift_beginAccess();
  v33 = *(v1 + 936);
  if (!*(v33 + 16) || (v34 = sub_18225BD68(v6), (v35 & 1) == 0))
  {
    swift_endAccess();
    v43 = sub_1820572A4(v6);
    if ((*(a1 + 40) & 1) != 0 && v43 >= 0x100u)
    {
      v44 = *(a1 + 24);
      if (v44 < 0)
      {
        __break(1u);
      }

      else
      {
        v45 = *(*(a1 + 32) + 16);
        v20 = v44 + v45;
        if (!__OFADD__(v44, v45))
        {
          v46 = *(v5 + 80);
          v47 = *(v5 + 88);
          swift_beginAccess();

          sub_18222EEF8(v46, v47, v6, v20);
          swift_endAccess();
          goto LABEL_41;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    if ((v43 & 1) == 0)
    {
LABEL_34:
      v42 = 0;
      return v42 & 1;
    }

    swift_beginAccess();
    v33 = *v20;
    if (!*(*v20 + 16) || (v34 = sub_18225BD68(v6), (v48 & 1) == 0))
    {
      swift_endAccess();
LABEL_42:
      v42 = 1;
      return v42 & 1;
    }
  }

  v36 = *(*(v33 + 56) + 8 * v34);
  swift_endAccess();
  swift_beginAccess();
  v37 = *(v5 + 40);
  if (!*(v37 + 16) || (v38 = sub_18224EEF0(v36), (v39 & 1) == 0))
  {
    v50 = *(v5 + 80);
    v49 = *(v5 + 88);

    sub_182AD3BA8();

    v122 = 0xD00000000000001FLL;
    v123 = 0x8000000182BDB5A0;
    if (v36)
    {
      v51 = sub_182AD2F38();
      v53 = v52;
    }

    else
    {
      v51 = 0x776F6C46206C6C41;
      v53 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v51, v53);

    v58 = v122;
    v57 = v123;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v59 = sub_182AD2698();
    __swift_project_value_buffer(v59, qword_1EA843418);

    v60 = sub_182AD2678();
    v61 = sub_182AD38B8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v122 = v63;
      *v62 = 136315650;
      v64 = sub_182AD3BF8();
      v66 = sub_181C64FFC(v64, v65, &v122);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = sub_181C64FFC(v50, v49, &v122);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2080;
      v68 = sub_181C64FFC(v58, v57, &v122);

      *(v62 + 24) = v68;
      _os_log_impl(&dword_181A37000, v60, v61, "%s %s %s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v63, -1, -1);
      MEMORY[0x1865DF520](v62, -1, -1);

      goto LABEL_42;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (!*(*(*(v37 + 56) + 8 * v38) + 16))
  {

LABEL_46:
    v71 = *(v5 + 80);
    v70 = *(v5 + 88);
    v122 = 0;
    v123 = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDAE40);
    if (v36)
    {
      v72 = sub_182AD2F38();
      v74 = v73;
    }

    else
    {
      v72 = 0x776F6C46206C6C41;
      v74 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v72, v74);

    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDAE60);
    v76 = v122;
    v75 = v123;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v77 = sub_182AD2698();
    __swift_project_value_buffer(v77, qword_1EA843418);

    v78 = sub_182AD2678();
    v79 = sub_182AD38B8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v122 = v81;
      *v80 = 136315650;
      v82 = sub_182AD3BF8();
      v84 = sub_181C64FFC(v82, v83, &v122);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v85 = sub_181C64FFC(v71, v70, &v122);

      *(v80 + 14) = v85;
      *(v80 + 22) = 2080;
      v86 = sub_181C64FFC(v76, v75, &v122);

      *(v80 + 24) = v86;
      _os_log_impl(&dword_181A37000, v78, v79, "%s %s %s", v80, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v81, -1, -1);
      MEMORY[0x1865DF520](v80, -1, -1);
    }

    else
    {
    }

    goto LABEL_42;
  }

  type metadata accessor for QUICStreamInstance();

  swift_unknownObjectRetain();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v41 = v40;
  if (!*(*(a1 + 32) + 16) && (*(a1 + 40) & 1) == 0)
  {
    v87 = *(v5 + 80);
    v88 = *(v5 + 88);
    v89 = qword_1EA837250;

    if (v89 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
    {
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDB5C0);
      v121 = 0;
      v90 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v90);

      MEMORY[0x1865D9CA0](0x2074657366666F20, 0xE800000000000000);
      v121 = *(a1 + 24);
      v91 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v91);

      MEMORY[0x1865D9CA0](0x206E696620, 0xE500000000000000);
      MEMORY[0x1865D9CA0](0x65736C6166, 0xE500000000000000);
      MEMORY[0x1865D9CA0](0x65727473206E6F20, 0xEB00000000206D61);
      v92 = *(v41 + 32);
      v93 = *(v41 + 40);

      MEMORY[0x1865D9CA0](v92, v93);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v94 = sub_182AD2698();
      __swift_project_value_buffer(v94, qword_1EA843418);
      v95 = swift_allocObject();
      *(v95 + 16) = "processStreamFrame(frame:)";
      *(v95 + 24) = 26;
      *(v95 + 32) = 2;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_181F8C724;
      *(v96 + 24) = v95;
      v97 = swift_allocObject();
      *(v97 + 16) = v87;
      *(v97 + 24) = v88;
      v98 = swift_allocObject();
      *(v98 + 16) = 0;
      *(v98 + 24) = 0xE000000000000000;

      v99 = sub_182AD2678();
      v100 = sub_182AD38A8();
      v112 = swift_allocObject();
      *(v112 + 16) = 32;
      v113 = swift_allocObject();
      *(v113 + 16) = 8;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_18206B168;
      *(v101 + 24) = v96;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_181F8C718;
      *(v102 + 24) = v101;
      v111 = swift_allocObject();
      *(v111 + 16) = 32;
      v114 = swift_allocObject();
      *(v114 + 16) = 8;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_181F8C720;
      *(v103 + 24) = v97;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_181F8C718;
      *(v104 + 24) = v103;
      v115 = swift_allocObject();
      *(v115 + 16) = 32;
      v116 = swift_allocObject();
      *(v116 + 16) = 8;
      v105 = swift_allocObject();
      *(v105 + 16) = sub_181F8C720;
      *(v105 + 24) = v98;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_181F8C718;
      *(v106 + 24) = v105;
      v117 = v106;
      v107 = v100;
      v108 = v99;
      if (os_log_type_enabled(v99, v100))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v119 = v110;
        v120 = 0;
        *v109 = 770;
        v121 = v109 + 2;
        v122 = sub_181F8C728;
        v123 = v112;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v113;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C714;
        v123 = v102;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v111;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v114;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C714;
        v123 = v104;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v115;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v116;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C714;
        v123 = v117;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        _os_log_impl(&dword_181A37000, v108, v107, "%s %s %s", v109, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v110, -1, -1);
        MEMORY[0x1865DF520](v109, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v42 = sub_182028028(v5, a1);

  swift_unknownObjectRelease();
  return v42 & 1;
}

uint64_t sub_182055194(uint64_t a1)
{
  v133 = *(a1 + 16);
  v134 = *(a1 + 32);
  v136 = *(a1 + 24);
  if ((v136 & 1) == 0)
  {
    if (*(a1 + 40))
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v127 = v1;
          sub_182AD3BA8();

          v140 = 0xD000000000000025;
          v141 = 0x8000000182BDBCC0;
          v88 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v88);

          MEMORY[0x1865D9CA0](0x203A776F6C66202CLL, 0xE800000000000000);
          v142[0] = v133;
          v89 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v89);

          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v90 = sub_182AD2698();
          __swift_project_value_buffer(v90, qword_1EA843418);
          v91 = swift_allocObject();
          *(v91 + 16) = "processDatagramFrame(frame:)";
          *(v91 + 24) = 28;
          *(v91 + 32) = 2;
          v92 = swift_allocObject();
          *(v92 + 16) = sub_181F8C724;
          *(v92 + 24) = v91;
          v93 = swift_allocObject();
          *(v93 + 16) = 1564427099;
          *(v93 + 24) = 0xE400000000000000;
          v94 = swift_allocObject();
          *(v94 + 16) = 0xD000000000000025;
          *(v94 + 24) = 0x8000000182BDBCC0;

          v95 = sub_182AD2678();
          v96 = sub_182AD38A8();
          v11 = swift_allocObject();
          *(v11 + 16) = 32;
          v119 = swift_allocObject();
          *(v119 + 16) = 8;
          v97 = swift_allocObject();
          *(v97 + 16) = sub_18206B168;
          *(v97 + 24) = v92;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_181F8C718;
          *(v13 + 24) = v97;
          v121 = swift_allocObject();
          *(v121 + 16) = 32;
          v123 = swift_allocObject();
          *(v123 + 16) = 8;
          v98 = swift_allocObject();
          *(v98 + 16) = sub_181F8C720;
          *(v98 + 24) = v93;
          v99 = swift_allocObject();
          *(v99 + 16) = sub_181F8C718;
          *(v99 + 24) = v98;
          v125 = v99;
          v130 = swift_allocObject();
          *(v130 + 16) = 32;
          v16 = swift_allocObject();
          *(v16 + 16) = 8;
          v100 = swift_allocObject();
          *(v100 + 16) = sub_181F8C720;
          *(v100 + 24) = v94;
          v18 = swift_allocObject();
          *(v18 + 16) = sub_181F8C718;
          *(v18 + 24) = v100;
          v19 = v96;
          v20 = v95;
          if (os_log_type_enabled(v95, v96))
          {
            goto LABEL_81;
          }

          goto LABEL_86;
        }

        goto LABEL_16;
      }

LABEL_31:
      v132 = 0;
      v21 = 1;
      goto LABEL_33;
    }

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v127 = v1;
        v140 = 0;
        v141 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDBCC0);
        v103 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v103);

        MEMORY[0x1865D9CA0](0x203A776F6C66202CLL, 0xE800000000000000);
        v104 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v104);

        MEMORY[0x1865D9CA0](0x7865746E6F63202CLL, 0xEB00000000203A74);
        v142[0] = v134;
        v105 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v105);

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v106 = sub_182AD2698();
        __swift_project_value_buffer(v106, qword_1EA843418);
        v107 = swift_allocObject();
        *(v107 + 16) = "processDatagramFrame(frame:)";
        *(v107 + 24) = 28;
        *(v107 + 32) = 2;
        v108 = swift_allocObject();
        *(v108 + 16) = sub_181F8C724;
        *(v108 + 24) = v107;
        v109 = swift_allocObject();
        *(v109 + 16) = 1564427099;
        *(v109 + 24) = 0xE400000000000000;
        v110 = swift_allocObject();
        *(v110 + 16) = 0;
        *(v110 + 24) = 0xE000000000000000;

        v111 = sub_182AD2678();
        v112 = sub_182AD38A8();
        v31 = swift_allocObject();
        *(v31 + 16) = 32;
        v120 = swift_allocObject();
        *(v120 + 16) = 8;
        v113 = swift_allocObject();
        *(v113 + 16) = sub_18206B168;
        *(v113 + 24) = v108;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C718;
        *(v33 + 24) = v113;
        v122 = swift_allocObject();
        *(v122 + 16) = 32;
        v124 = swift_allocObject();
        *(v124 + 16) = 8;
        v114 = swift_allocObject();
        *(v114 + 16) = sub_181F8C720;
        *(v114 + 24) = v109;
        v115 = swift_allocObject();
        *(v115 + 16) = sub_181F8C718;
        *(v115 + 24) = v114;
        v126 = v115;
        v131 = swift_allocObject();
        *(v131 + 16) = 32;
        v36 = swift_allocObject();
        *(v36 + 16) = 8;
        v116 = swift_allocObject();
        *(v116 + 16) = sub_181F8C720;
        *(v116 + 24) = v110;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_181F8C718;
        *(v38 + 24) = v116;
        v39 = v112;
        v40 = v111;
        if (os_log_type_enabled(v111, v112))
        {
          goto LABEL_85;
        }

        goto LABEL_88;
      }

LABEL_29:
      v21 = 0;
      goto LABEL_30;
    }

LABEL_32:
    v21 = 0;
    v132 = 0;
    goto LABEL_33;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v127 = v1;
        v140 = 0;
        v141 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDBCC0);
        v22 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v22);

        MEMORY[0x1865D9CA0](0x7865746E6F63202CLL, 0xEB00000000203A74);
        v142[0] = v134;
        v23 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v23);

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v24 = sub_182AD2698();
        __swift_project_value_buffer(v24, qword_1EA843418);
        v25 = swift_allocObject();
        *(v25 + 16) = "processDatagramFrame(frame:)";
        *(v25 + 24) = 28;
        *(v25 + 32) = 2;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_181F8C724;
        *(v26 + 24) = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = 1564427099;
        *(v27 + 24) = 0xE400000000000000;
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0xE000000000000000;

        v29 = sub_182AD2678();
        v30 = sub_182AD38A8();
        v31 = swift_allocObject();
        *(v31 + 16) = 32;
        v120 = swift_allocObject();
        *(v120 + 16) = 8;
        v32 = swift_allocObject();
        *(v32 + 16) = sub_18206B168;
        *(v32 + 24) = v26;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C718;
        *(v33 + 24) = v32;
        v122 = swift_allocObject();
        *(v122 + 16) = 32;
        v124 = swift_allocObject();
        *(v124 + 16) = 8;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_181F8C720;
        *(v34 + 24) = v27;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_181F8C718;
        *(v35 + 24) = v34;
        v126 = v35;
        v131 = swift_allocObject();
        *(v131 + 16) = 32;
        v36 = swift_allocObject();
        *(v36 + 16) = 8;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_181F8C720;
        *(v37 + 24) = v28;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_181F8C718;
        *(v38 + 24) = v37;
        v39 = v30;
        v40 = v29;
        if (os_log_type_enabled(v29, v30))
        {
LABEL_85:
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v138 = v118;
          v139[0] = 0;
          *v117 = 770;
          v142[0] = v117 + 2;
          v140 = sub_181F8C728;
          v141 = v31;
          v21 = 0;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C728;
          v141 = v120;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C714;
          v141 = v33;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C728;
          v141 = v122;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C728;
          v141 = v124;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C714;
          v141 = v126;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C728;
          v141 = v131;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C728;
          v141 = v36;
          sub_181F73AE0(&v140, v142, v139, &v138);

          v140 = sub_181F8C714;
          v141 = v38;
          sub_181F73AE0(&v140, v142, v139, &v138);

          _os_log_impl(&dword_181A37000, v40, v39, "%s %s %s", v117, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v118, -1, -1);
          MEMORY[0x1865DF520](v117, -1, -1);

LABEL_89:
          v132 = 1;
          v1 = v127;
          goto LABEL_33;
        }

LABEL_88:

        v21 = 0;
        goto LABEL_89;
      }

      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    goto LABEL_31;
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v127 = v1;
    sub_182AD3BA8();

    v140 = 0xD000000000000025;
    v141 = 0x8000000182BDBCC0;
    v142[0] = *(*(a1 + 48) + 16);
    v3 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v3);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843418);
    v5 = swift_allocObject();
    *(v5 + 16) = "processDatagramFrame(frame:)";
    *(v5 + 24) = 28;
    *(v5 + 32) = 2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_181F8C724;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = 1564427099;
    *(v7 + 24) = 0xE400000000000000;
    v8 = swift_allocObject();
    *(v8 + 16) = 0xD000000000000025;
    *(v8 + 24) = 0x8000000182BDBCC0;

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();
    v11 = swift_allocObject();
    *(v11 + 16) = 32;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18206B168;
    *(v12 + 24) = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C718;
    *(v13 + 24) = v12;
    v121 = swift_allocObject();
    *(v121 + 16) = 32;
    v123 = swift_allocObject();
    *(v123 + 16) = 8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C720;
    *(v14 + 24) = v7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C718;
    *(v15 + 24) = v14;
    v125 = v15;
    v130 = swift_allocObject();
    *(v130 + 16) = 32;
    v16 = swift_allocObject();
    *(v16 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C720;
    *(v17 + 24) = v8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v17;
    v19 = v10;
    v20 = v9;
    if (os_log_type_enabled(v9, v10))
    {
LABEL_81:
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v138 = v102;
      v139[0] = 0;
      *v101 = 770;
      v142[0] = v101 + 2;
      v140 = sub_181F8C728;
      v141 = v11;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C728;
      v141 = v119;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C714;
      v141 = v13;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C728;
      v141 = v121;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C728;
      v141 = v123;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C714;
      v141 = v125;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C728;
      v141 = v130;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C728;
      v141 = v16;
      sub_181F73AE0(&v140, v142, v139, &v138);

      v140 = sub_181F8C714;
      v141 = v18;
      sub_181F73AE0(&v140, v142, v139, &v138);

      _os_log_impl(&dword_181A37000, v20, v19, "%s %s %s", v101, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v102, -1, -1);
      MEMORY[0x1865DF520](v101, -1, -1);

LABEL_87:
      v21 = 1;
      goto LABEL_89;
    }

LABEL_86:

    goto LABEL_87;
  }

LABEL_16:
  v21 = 1;
LABEL_30:
  v132 = 1;
LABEL_33:
  swift_beginAccess();
  v41 = v1[5];
  v42 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 64);
  v46 = (v43 + 63) >> 6;

  v47 = 0;
  v48 = v21;
  while (v45)
  {
LABEL_36:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = v49 | (v47 << 6);
    if (*(*(*(v41 + 56) + 8 * v50) + 16))
    {
      v128 = *(*(v41 + 48) + 8 * v50);
      type metadata accessor for QUICDatagramFlow();
      swift_unknownObjectRetain();
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
        goto LABEL_52;
      }

      if (*(v52 + 40))
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_45:
        v53 = *(v52 + 16);
        v54 = *(v52 + 24);
        swift_unknownObjectRelease();
        if (v54)
        {
          v48 = v21;
          if (v136)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v48 = v21;
          if ((v136 & 1) == 0)
          {
            v48 = v21;
            if (v53 == v133)
            {
LABEL_55:
              v55 = v128;
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (v21)
        {
          v48 = 1;
          goto LABEL_52;
        }

        if (*(v52 + 32) == v134)
        {
          goto LABEL_45;
        }

LABEL_51:
        v48 = 0;
LABEL_52:
        swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v51 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v51 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v51);
    ++v47;
    if (v45)
    {
      v47 = v51;
      goto LABEL_36;
    }
  }

  v56 = v1;
  v57 = sub_182169080();
  v42 = v1[10];
  v21 = v1[11];
  if (v58)
  {
    v59 = qword_1EA837248;

    if (v59 == -1)
    {
LABEL_58:
      v60 = sub_182AD2698();
      __swift_project_value_buffer(v60, qword_1EA843418);

      v61 = sub_182AD2678();
      v62 = sub_182AD38B8();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v140 = v64;
        *v63 = 136315650;
        v65 = sub_182AD3BF8();
        v67 = sub_181C64FFC(v65, v66, &v140);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v68 = sub_181C64FFC(v42, v21, &v140);

        *(v63 + 14) = v68;
        *(v63 + 22) = 2080;
        *(v63 + 24) = sub_181C64FFC(0xD000000000000022, 0x8000000182BDBC60, &v140);
        _os_log_impl(&dword_181A37000, v61, v62, "%s %s %s", v63, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v64, -1, -1);
        MEMORY[0x1865DF520](v63, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_75:
    swift_once();
    goto LABEL_58;
  }

  v55 = v57;
  type metadata accessor for QUICDatagramFlow();
  swift_allocObject();

  v69 = sub_181F7D7A8(v133, v136, v134, v48 & 1, v42, v21);
  sub_182168DE4(v69, v55);
  v71 = *(v69 + 48);
  v70 = *(v69 + 56);
  v72 = qword_1EA837250;

  if (v72 == -1)
  {
    if (v132)
    {
      goto LABEL_62;
    }

LABEL_69:
  }

  else
  {
    swift_once();
    if (!v132)
    {
      goto LABEL_69;
    }

LABEL_62:
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDBC90);
    v139[0] = v55;
    sub_182AD3E18();
    v73 = v140;
    v74 = v141;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v75 = sub_182AD2698();
    __swift_project_value_buffer(v75, qword_1EA843418);

    v76 = sub_182AD2678();
    v77 = sub_182AD38A8();

    if (!os_log_type_enabled(v76, v77))
    {

      goto LABEL_69;
    }

    v129 = v55;
    v78 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v140 = v137;
    *v78 = 136315650;
    v79 = sub_182AD3BF8();
    v135 = v73;
    v81 = sub_181C64FFC(v79, v80, &v140);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    v82 = sub_181C64FFC(v71, v70, &v140);

    *(v78 + 14) = v82;
    *(v78 + 22) = 2080;
    v83 = sub_181C64FFC(v135, v74, &v140);

    *(v78 + 24) = v83;
    _os_log_impl(&dword_181A37000, v76, v77, "%s %s %s", v78, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v137, -1, -1);
    v84 = v78;
    v55 = v129;
    MEMORY[0x1865DF520](v84, -1, -1);
  }

  swift_beginAccess();
  if (*(v56 + 139) == 9)
  {
    sub_18216AAA8(v55);
  }

LABEL_72:

  Frame.init(copyBuffer:)(v86, &v140);
  v85 = 1;
  sub_1821716E4(&v140, v55, 1, 0);
  return v85;
}

uint64_t sub_1820572A4(unint64_t a1)
{
  v2 = v1;
  if ((a1 & 2) != 0)
  {
    swift_beginAccess();
    v8 = v1[31];
    v142 = v1[30];
    v143 = v8;
    v9 = v1[29];
    v140 = v1[28];
    v141 = v9;
    v10 = v1[27];
    *&v139[16] = v1[26];
    *&v139[32] = v10;
    v7 = v1[24];
    v6 = v1[25];
  }

  else
  {
    swift_beginAccess();
    v3 = v1[39];
    v142 = v1[38];
    v143 = v3;
    v4 = v1[37];
    v140 = v1[36];
    v141 = v4;
    v5 = v1[35];
    *&v139[16] = v1[34];
    *&v139[32] = v5;
    v7 = v1[32];
    v6 = v1[33];
  }

  v138 = v7;
  *v139 = v6;
  v118 = *(&v142 + 1);
  v120 = *(&v143 + 1);
  LODWORD(v117) = v143;
  v115 = *(&v141 + 1);
  v11 = v142;
  v12 = *(&v140 + 1);
  v13 = v141;
  v14 = *&v139[40];
  v15 = v140;
  v111 = *&v139[8];
  v113 = *&v139[24];
  v16 = v6;
  v17 = v7;
  sub_18206ADDC(&v138, &v132);
  v132 = v17;
  v133[0] = v16;
  *&v133[8] = v111;
  *&v133[24] = v113;
  *&v133[40] = v14;
  LOBYTE(v134) = v15;
  *(&v134 + 1) = v12;
  LOBYTE(v135) = v13;
  *(&v135 + 1) = v115;
  LOBYTE(v136) = v11;
  *(&v136 + 1) = v118;
  LOBYTE(v137) = v117;
  *(&v137 + 1) = v120;
  v142 = v136;
  v143 = v137;
  v140 = v134;
  v141 = v135;
  *&v139[16] = *&v133[16];
  *&v139[32] = *&v133[32];
  v138 = v17;
  *v139 = *v133;
  v18 = *(v2 + 1024);
  v19 = *(v2 + 10);
  v20 = *(v2 + 11);

  v21 = sub_1820248B8(a1, v18, v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = ~v26;

  if (v28)
  {
    sub_18206A234(&v132);
    v29 = *(v2 + 143);
    v30 = *(v2 + 144);
    *(v2 + 143) = v23;
    *(v2 + 144) = v25;
    v31 = *(v2 + 1160);
    *(v2 + 1160) = v27;
    sub_182023268(v29, v30, v31);
LABEL_6:
    v32 = 0;
    v33 = 0;
    return v33 | v32;
  }

  if ((v21 & 1) == 0)
  {
    v33 = v21 & 0x100;
    sub_18206A234(&v132);
    v32 = 0;
    return v33 | v32;
  }

  if (v13)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_18206A234(&v132);
  v20 = a1;
  if (v12 > a1)
  {
    goto LABEL_6;
  }

  v16 = *(v2 + 10);
  v21 = *(v2 + 11);
  v34 = qword_1EA837250;

  if (v34 != -1)
  {
LABEL_49:
    swift_once();
  }

  v117 = v2;
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v126 = v12;
    v127 = v20;
    v128 = xmmword_182AE8BA0;
    v129 = 0;
    v130 = v12;
    v131 = 0;
    swift_beginAccess();
    v35 = sub_1820625E8();
    if ((v36 & 1) == 0)
    {
      v16 = v35;
      while (1)
      {
        v51 = sub_182169080();
        if (v52)
        {
          break;
        }

        v53 = sub_1820621FC(v51, v16);
        if (*(v53 + 24))
        {
          goto LABEL_57;
        }

        v12 = v53;
        v54 = *(v2 + 1024);
        v55 = *(v2 + 36);
        v56 = sub_181F9E4E8(v54, *(v2 + 35), *(v53 + 16));
        if (*(v12 + 24))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v57 = v56;
        v58 = sub_181F9E654(v54, v55, *(v12 + 16));
        if ((v58 | v57) < 0)
        {
          __break(1u);
          goto LABEL_49;
        }

        v59 = v58;

        sub_18220EA24(v57, v59);

        sub_18202E5D8();
        v60 = *(v2 + 11);
        v120 = *(v2 + 10);
        v123 = 0;
        v124 = 0xE000000000000000;

        sub_182AD3BA8();

        if (v16 == v20)
        {
          v122 = v20;
          v123 = 0xD000000000000018;
          v124 = 0x8000000182BDB6E0;
          v61 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v61);
        }

        else
        {
          v122 = v16;
          v123 = 0xD000000000000018;
          v124 = 0x8000000182BDB6E0;
          v62 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v62);

          MEMORY[0x1865D9CA0](0x666F2074756F2820, 0xEF29726564726F20);
        }

        v63 = v123;
        v64 = v124;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v65 = sub_182AD2698();
        __swift_project_value_buffer(v65, qword_1EA843418);

        v66 = sub_182AD2678();
        v21 = sub_182AD3898();

        if (os_log_type_enabled(v66, v21))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v123 = v68;
          *v67 = 136315650;
          v69 = sub_182AD3BF8();
          v71 = sub_181C64FFC(v69, v70, &v123);
          v2 = v117;

          *(v67 + 4) = v71;
          *(v67 + 12) = 2080;
          v72 = sub_181C64FFC(v120, v60, &v123);

          *(v67 + 14) = v72;
          *(v67 + 22) = 2080;
          v73 = sub_181C64FFC(v63, v64, &v123);

          *(v67 + 24) = v73;
          _os_log_impl(&dword_181A37000, v66, v21, "%s %s %s", v67, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v68, -1, -1);
          v74 = v67;
          v20 = a1;
          MEMORY[0x1865DF520](v74, -1, -1);
        }

        else
        {
        }

        v16 = sub_1820625E8();
        if (v50)
        {
          goto LABEL_15;
        }
      }

      v76 = *(v2 + 10);
      v75 = *(v2 + 11);
      v123 = 0;
      v124 = 0xE000000000000000;

      sub_182AD3BA8();

      v123 = 0xD000000000000021;
      v124 = 0x8000000182BDB6B0;
      v122 = v16;
      v77 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v77);

      v79 = v123;
      v78 = v124;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v80 = sub_182AD2698();
      __swift_project_value_buffer(v80, qword_1EA843418);

      v81 = sub_182AD2678();
      v82 = sub_182AD38B8();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v123 = v84;
        *v83 = 136315650;
        v85 = sub_182AD3BF8();
        v87 = sub_181C64FFC(v85, v86, &v123);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2080;
        v88 = sub_181C64FFC(v76, v75, &v123);

        *(v83 + 14) = v88;
        *(v83 + 22) = 2080;
        v89 = sub_181C64FFC(v79, v78, &v123);

        *(v83 + 24) = v89;
        _os_log_impl(&dword_181A37000, v81, v82, "%s %s %s", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v84, -1, -1);
        MEMORY[0x1865DF520](v83, -1, -1);

        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_15:
    v37 = v20 + 4;
    if (v20 < 0xFFFFFFFFFFFFFFFCLL)
    {
      break;
    }

    __break(1u);
LABEL_51:
    v126 = 0;
    v127 = 0xE000000000000000;
    sub_182AD3BA8();

    v126 = 0xD00000000000001ELL;
    v127 = 0x8000000182BDB700;
    v125[0] = v20;
    v91 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v91);

    MEMORY[0x1865D9CA0](544175136, 0xE400000000000000);
    v125[0] = v12;
    v92 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v92);

    v20 = v126;
    v120 = v127;
    if (qword_1EA837248 != -1)
    {
LABEL_59:
      swift_once();
    }

    v93 = sub_182AD2698();
    __swift_project_value_buffer(v93, qword_1EA843418);
    v94 = swift_allocObject();
    *(v94 + 16) = "createInboundStreams(streamID:)";
    *(v94 + 24) = 31;
    *(v94 + 32) = 2;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_181F8C724;
    *(v95 + 24) = v94;
    v96 = swift_allocObject();
    *(v96 + 16) = v16;
    *(v96 + 24) = v21;
    v97 = swift_allocObject();
    *(v97 + 16) = v20;
    *(v97 + 24) = v120;

    v98 = sub_182AD2678();
    v16 = sub_182AD38A8();
    v110 = swift_allocObject();
    *(v110 + 16) = 32;
    v112 = swift_allocObject();
    *(v112 + 16) = 8;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_18206B168;
    *(v99 + 24) = v95;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_181F8C718;
    *(v100 + 24) = v99;
    v109 = v100;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_181F8C720;
    *(v102 + 24) = v96;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_181F8C718;
    *(v103 + 24) = v102;
    v116 = swift_allocObject();
    *(v116 + 16) = 32;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_181F8C720;
    *(v104 + 24) = v97;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_181F8C718;
    *(v105 + 24) = v104;
    v108 = v16;
    if (os_log_type_enabled(v98, v16))
    {
      v16 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v122 = v106;
      v123 = 0;
      *v16 = 770;
      v107 = v106;
      v125[0] = v16 + 2;
      v126 = sub_181F8C728;
      v127 = v110;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v112;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C714;
      v127 = v109;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v101;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v114;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C714;
      v127 = v103;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v116;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v119;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C714;
      v127 = v105;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      _os_log_impl(&dword_181A37000, v98, v108, "%s %s %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v107, -1, -1);
      MEMORY[0x1865DF520](v16, -1, -1);
    }

    else
    {
    }

    v2 = v117;
    v20 = a1;
  }

  if (v37 >> 62)
  {
    v39 = *(v2 + 10);
    v38 = *(v2 + 11);
    v40 = qword_1EA837248;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_182AD2698();
    __swift_project_value_buffer(v41, qword_1EA843418);

    v42 = sub_182AD2678();
    v43 = sub_182AD38B8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v126 = v45;
      *v44 = 136315650;
      v46 = sub_182AD3BF8();
      v48 = sub_181C64FFC(v46, v47, &v126);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_181C64FFC(v39, v38, &v126);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_181C64FFC(0xD000000000000019, 0x8000000182BDB690, &v126);
      _os_log_impl(&dword_181A37000, v42, v43, "%s %s %s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v45, -1, -1);
      MEMORY[0x1865DF520](v44, -1, -1);

LABEL_46:
      v33 = 0;
      v32 = 1;
      return v33 | v32;
    }

LABEL_45:

    goto LABEL_46;
  }

  v32 = 1;
  swift_beginAccess();
  v33 = 0;
  if ((v20 & 2) != 0)
  {
    *(v2 + 57) = v37;
    *(v2 + 464) = 0;
  }

  else
  {
    *(v2 + 73) = v37;
    *(v2 + 592) = 0;
  }

  return v33 | v32;
}

uint64_t sub_1820584AC(uint64_t a1, uint64_t a2, uint8_t *a3)
{
  v5 = *(v3 + 144);
  if (*(v5 + 32) < a3)
  {
    *(v5 + 32) = a3;
    v7 = *(v3 + 80);
    v6 = *(v3 + 88);
    v8 = qword_1EA837250;

    if (v8 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v123 = v3;
        sub_182AD3BA8();

        strcpy(v129, "MAX_DATA was ");
        HIWORD(v129[1]) = -4864;
        v21 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v21);

        MEMORY[0x1865D9CA0](0x776F6E207369202CLL, 0xE900000000000020);
        v128 = a3;
        v22 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v22);

        v23 = v129[0];
        v24 = v129[1];
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v25 = sub_182AD2698();
        __swift_project_value_buffer(v25, qword_1EA843418);
        v26 = swift_allocObject();
        *(v26 + 16) = "processMaxData(frame:)";
        *(v26 + 24) = 22;
        *(v26 + 32) = 2;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_181F8C724;
        *(v27 + 24) = v26;
        v28 = swift_allocObject();
        *(v28 + 16) = v7;
        *(v28 + 24) = v6;
        v29 = swift_allocObject();
        *(v29 + 16) = v23;
        *(v29 + 24) = v24;

        v30 = sub_182AD2678();
        v31 = sub_182AD38A8();
        v96 = swift_allocObject();
        *(v96 + 16) = 32;
        v100 = swift_allocObject();
        *(v100 + 16) = 8;
        v32 = swift_allocObject();
        *(v32 + 16) = sub_18206B168;
        *(v32 + 24) = v27;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C718;
        *(v33 + 24) = v32;
        v104 = swift_allocObject();
        *(v104 + 16) = 32;
        v108 = swift_allocObject();
        *(v108 + 16) = 8;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_181F8C720;
        *(v34 + 24) = v28;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_181F8C718;
        *(v35 + 24) = v34;
        v112 = swift_allocObject();
        *(v112 + 16) = 32;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v36 = swift_allocObject();
        *(v36 + 16) = sub_181F8C720;
        *(v36 + 24) = v29;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_181F8C718;
        *(v37 + 24) = v36;
        v38 = v31;
        if (os_log_type_enabled(v30, v31))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v126 = v40;
          v127 = 0;
          *v39 = 770;
          v95 = v40;
          v128 = v39 + 2;
          v129[0] = sub_181F8C728;
          v129[1] = v96;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v100;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C714;
          v129[1] = v33;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v104;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v108;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C714;
          v129[1] = v35;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v112;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v116;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C714;
          v129[1] = v37;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          _os_log_impl(&dword_181A37000, v30, v38, "%s %s %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v95, -1, -1);
          MEMORY[0x1865DF520](v39, -1, -1);
        }

        else
        {
        }

        v3 = v123;
      }

      else
      {
      }

      if (*(*(v3 + 144) + 32) >= *(*(v3 + 144) + 48))
      {
        v10 = *(v3 + 80);
        v9 = *(v3 + 88);

        if (__nwlog_is_datapath_logging_enabled())
        {
          v124 = v3;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v59 = sub_182AD2698();
          __swift_project_value_buffer(v59, qword_1EA843418);
          v60 = swift_allocObject();
          *(v60 + 16) = "processMaxData(frame:)";
          *(v60 + 24) = 22;
          *(v60 + 32) = 2;
          v61 = swift_allocObject();
          *(v61 + 16) = sub_181F8C724;
          *(v61 + 24) = v60;
          v62 = swift_allocObject();
          *(v62 + 16) = v10;
          *(v62 + 24) = v9;
          v63 = swift_allocObject();
          *(v63 + 16) = 0xD000000000000023;
          *(v63 + 24) = 0x8000000182BDB790;

          v64 = sub_182AD2678();
          v65 = sub_182AD38A8();
          v106 = swift_allocObject();
          *(v106 + 16) = 32;
          v110 = swift_allocObject();
          *(v110 + 16) = 8;
          v66 = swift_allocObject();
          *(v66 + 16) = sub_18206B168;
          *(v66 + 24) = v61;
          v67 = swift_allocObject();
          *(v67 + 16) = sub_181F8C718;
          *(v67 + 24) = v66;
          v114 = swift_allocObject();
          *(v114 + 16) = 32;
          v118 = swift_allocObject();
          *(v118 + 16) = 8;
          v68 = swift_allocObject();
          *(v68 + 16) = sub_181F8C720;
          *(v68 + 24) = v62;
          v69 = swift_allocObject();
          *(v69 + 16) = sub_181F8C718;
          *(v69 + 24) = v68;
          v102 = swift_allocObject();
          *(v102 + 16) = 32;
          v121 = swift_allocObject();
          *(v121 + 16) = 8;
          v70 = swift_allocObject();
          *(v70 + 16) = sub_181F8C720;
          *(v70 + 24) = v63;
          v71 = swift_allocObject();
          *(v71 + 16) = sub_181F8C718;
          *(v71 + 24) = v70;
          v72 = v65;
          v73 = v65;
          v74 = v64;
          if (os_log_type_enabled(v64, v73))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v126 = v76;
            v127 = 0;
            *v75 = 770;
            v98 = v76;
            v128 = v75 + 2;
            v129[0] = sub_181F8C728;
            v129[1] = v106;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v110;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v67;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v114;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v118;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v69;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v102;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v121;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v71;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            _os_log_impl(&dword_181A37000, v74, v72, "%s %s %s", v75, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v98, -1, -1);
            MEMORY[0x1865DF520](v75, -1, -1);
          }

          else
          {
          }

          v3 = v124;
        }

        else
        {
        }

        v11 = (v3 + 1026);
        if ((*(v3 + 1026) & 1) == 0)
        {
          goto LABEL_22;
        }

        v13 = *(v3 + 80);
        v12 = *(v3 + 88);

        if (__nwlog_is_datapath_logging_enabled())
        {
          v125 = v3;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v77 = sub_182AD2698();
          __swift_project_value_buffer(v77, qword_1EA843418);
          v78 = swift_allocObject();
          *(v78 + 16) = "processMaxData(frame:)";
          *(v78 + 24) = 22;
          *(v78 + 32) = 2;
          v79 = swift_allocObject();
          *(v79 + 16) = sub_181F8C724;
          *(v79 + 24) = v78;
          v80 = swift_allocObject();
          *(v80 + 16) = v13;
          *(v80 + 24) = v12;
          v81 = swift_allocObject();
          *(v81 + 16) = 0x656B636F6C626E75;
          *(v81 + 24) = 0xE900000000000064;

          v82 = sub_182AD2678();
          v83 = sub_182AD38A8();
          v107 = swift_allocObject();
          *(v107 + 16) = 32;
          v111 = swift_allocObject();
          *(v111 + 16) = 8;
          v84 = swift_allocObject();
          *(v84 + 16) = sub_18206B168;
          *(v84 + 24) = v79;
          v85 = swift_allocObject();
          *(v85 + 16) = sub_181F8C718;
          *(v85 + 24) = v84;
          v115 = swift_allocObject();
          *(v115 + 16) = 32;
          v119 = swift_allocObject();
          *(v119 + 16) = 8;
          v86 = swift_allocObject();
          *(v86 + 16) = sub_181F8C720;
          *(v86 + 24) = v80;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_181F8C718;
          *(v87 + 24) = v86;
          v103 = swift_allocObject();
          *(v103 + 16) = 32;
          v122 = swift_allocObject();
          *(v122 + 16) = 8;
          v88 = swift_allocObject();
          *(v88 + 16) = sub_181F8C720;
          *(v88 + 24) = v81;
          v89 = swift_allocObject();
          *(v89 + 16) = sub_181F8C718;
          *(v89 + 24) = v88;
          v90 = v83;
          v91 = v83;
          v92 = v82;
          if (os_log_type_enabled(v82, v91))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v126 = v94;
            v127 = 0;
            *v93 = 770;
            v99 = v94;
            v128 = v93 + 2;
            v129[0] = sub_181F8C728;
            v129[1] = v107;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v111;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v85;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v115;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v119;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v87;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v103;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v122;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v89;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            _os_log_impl(&dword_181A37000, v92, v90, "%s %s %s", v93, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v99, -1, -1);
            MEMORY[0x1865DF520](v93, -1, -1);
          }

          else
          {
          }

          v3 = v125;
        }

        else
        {
        }

        goto LABEL_21;
      }
    }

    else
    {

      if (*(*(v3 + 144) + 32) >= *(*(v3 + 144) + 48))
      {
        v11 = (v3 + 1026);
        if ((*(v3 + 1026) & 1) == 0)
        {
LABEL_22:
          *v11 = 0;
          return 1;
        }

LABEL_21:
        *(v3 + 1123) = 1;
        goto LABEL_22;
      }
    }

    v18 = *(v3 + 1144);
    v19 = *(v3 + 1152);
    *(v3 + 1144) = 0xD000000000000028;
    *(v3 + 1152) = 0x8000000182BDB7C0;
    v20 = *(v3 + 1160);
    *(v3 + 1160) = 0;
    sub_182023268(v18, v19, v20);
    return 0;
  }

  v15 = *(v3 + 80);
  v14 = *(v3 + 88);
  v16 = qword_1EA837250;

  if (v16 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
LABEL_17:

    return 0;
  }

  sub_182AD3BA8();

  v129[0] = 0xD00000000000001ALL;
  v129[1] = 0x8000000182BDB770;
  v128 = a3;
  v41 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v41);

  MEMORY[0x1865D9CA0](0x73697865203D3C20, 0xED000020676E6974);
  v128 = *(*(v3 + 144) + 32);
  v42 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v42);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v43 = sub_182AD2698();
  __swift_project_value_buffer(v43, qword_1EA843418);
  v44 = swift_allocObject();
  *(v44 + 16) = "processMaxData(frame:)";
  *(v44 + 24) = 22;
  *(v44 + 32) = 2;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_181F8C724;
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v15;
  *(v46 + 24) = v14;
  v47 = swift_allocObject();
  *(v47 + 16) = 0xD00000000000001ALL;
  *(v47 + 24) = 0x8000000182BDB770;

  v48 = sub_182AD2678();
  v49 = sub_182AD38A8();
  v105 = swift_allocObject();
  *(v105 + 16) = 32;
  v109 = swift_allocObject();
  *(v109 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_18206B168;
  *(v50 + 24) = v45;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_181F8C718;
  *(v51 + 24) = v50;
  v113 = swift_allocObject();
  *(v113 + 16) = 32;
  v117 = swift_allocObject();
  *(v117 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_181F8C720;
  *(v52 + 24) = v46;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_181F8C718;
  *(v53 + 24) = v52;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v120 = swift_allocObject();
  *(v120 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_181F8C720;
  *(v54 + 24) = v47;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_181F8C718;
  *(v55 + 24) = v54;
  v56 = v48;
  if (!os_log_type_enabled(v48, v49))
  {

    goto LABEL_17;
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v126 = v58;
  v127 = 0;
  *v57 = 770;
  v97 = v58;
  v128 = v57 + 2;
  v129[0] = sub_181F8C728;
  v129[1] = v105;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v109;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C714;
  v129[1] = v51;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v113;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v117;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C714;
  v129[1] = v53;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v101;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v120;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C714;
  v129[1] = v55;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  _os_log_impl(&dword_181A37000, v56, v49, "%s %s %s", v57, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v97, -1, -1);
  MEMORY[0x1865DF520](v57, -1, -1);

  return 0;
}

BOOL sub_18205A1E8(uint64_t a1, uint64_t a2, unint64_t a3, uint8_t *a4)
{
  v8 = *(v4 + 80);
  v7 = *(v4 + 88);
  v9 = qword_1EA837250;

  if (v9 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    v120 = v4;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v93 = sub_182AD2698();
    __swift_project_value_buffer(v93, qword_1EA843418);
    v94 = swift_allocObject();
    *(v94 + 16) = "processMaxStreamData(frame:)";
    *(v94 + 24) = 28;
    *(v94 + 32) = 2;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_181F8C724;
    *(v95 + 24) = v94;
    v96 = swift_allocObject();
    *(v96 + 16) = v8;
    *(v96 + 24) = v7;
    v97 = swift_allocObject();
    *(v97 + 16) = 0xD000000000000017;
    *(v97 + 24) = 0x8000000182BD9A40;

    oslog = sub_182AD2678();
    v116 = sub_182AD38A8();
    v115 = swift_allocObject();
    *(v115 + 16) = 32;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_18206B168;
    *(v98 + 24) = v95;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_181F8C718;
    *(v99 + 24) = v98;
    v100 = swift_allocObject();
    *(v100 + 16) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_181F8C720;
    *(v101 + 24) = v96;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_181F8C718;
    *(v102 + 24) = v101;
    v103 = swift_allocObject();
    *(v103 + 16) = 32;
    v104 = swift_allocObject();
    *(v104 + 16) = 8;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_181F8C720;
    *(v105 + 24) = v97;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_181F8C718;
    *(v106 + 24) = v105;
    if (os_log_type_enabled(oslog, v116))
    {
      v110 = v99;
      v112 = v102;
      v107 = v100;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v124 = 0;
      *v108 = 770;
      v111 = v109;
      v121 = v109;
      v122 = v108 + 2;
      v125 = sub_181F8C728;
      v126 = v115;
      sub_181F73AE0(&v125, &v122, &v124, &v121);
      v4 = v120;

      v125 = sub_181F8C728;
      v126 = v113;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C714;
      v126 = v110;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C728;
      v126 = v107;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C728;
      v126 = v114;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C714;
      v126 = v112;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C728;
      v126 = v103;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C728;
      v126 = v104;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      v125 = sub_181F8C714;
      v126 = v106;
      sub_181F73AE0(&v125, &v122, &v124, &v121);

      _os_log_impl(&dword_181A37000, oslog, v116, "%s %s %s", v108, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v111, -1, -1);
      MEMORY[0x1865DF520](v108, -1, -1);
    }

    else
    {

      v4 = v120;
    }
  }

  else
  {
  }

  if (a3 >> 62)
  {
    v10 = 0x8000000182BDB960;
    v11 = *(v4 + 1144);
    v12 = *(v4 + 1152);
    v13 = 0xD000000000000011;
LABEL_8:
    *(v4 + 1144) = v13;
    *(v4 + 1152) = v10;
    v14 = *(v4 + 1160);
    *(v4 + 1160) = 2;
LABEL_9:
    sub_182023268(v11, v12, v14);
    return 0;
  }

  if ((a3 & 2) != 0 && ((*(v4 + 1024) ^ ((a3 & 1) == 0)) & 1) == 0)
  {
    v42 = *(v4 + 80);
    v41 = *(v4 + 88);
    v118 = v4;
    v125 = 0;
    v126 = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000033, 0x8000000182BDB810);
    v122 = a3;
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    MEMORY[0x1865D9CA0](93, 0xE100000000000000);
    v45 = v125;
    v44 = v126;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v46 = sub_182AD2698();
    __swift_project_value_buffer(v46, qword_1EA843418);

    v47 = sub_182AD2678();
    v48 = sub_182AD38B8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v125 = v50;
      *v49 = 136315650;
      v51 = sub_182AD3BF8();
      v53 = sub_181C64FFC(v51, v52, &v125);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = sub_181C64FFC(v42, v41, &v125);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2080;
      v55 = sub_181C64FFC(v45, v44, &v125);

      *(v49 + 24) = v55;
      _os_log_impl(&dword_181A37000, v47, v48, "%s %s %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v50, -1, -1);
      MEMORY[0x1865DF520](v49, -1, -1);
    }

    else
    {
    }

    v11 = *(v118 + 1144);
    v12 = *(v118 + 1152);
    *(v118 + 1144) = 0xD000000000000027;
    *(v118 + 1152) = 0x8000000182BDB850;
    v14 = *(v118 + 1160);
    *(v118 + 1160) = 2;
    goto LABEL_9;
  }

  swift_beginAccess();
  v16 = *(v4 + 936);
  if (*(v16 + 16) && (v17 = sub_18225BD68(a3), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    swift_beginAccess();
    v20 = *(v4 + 40);
    if (*(v20 + 16) && (v21 = sub_18224EEF0(v19), (v22 & 1) != 0))
    {
      if (*(*(*(v20 + 56) + 8 * v21) + 16))
      {
        type metadata accessor for QUICStreamInstance();

        swift_unknownObjectRetain();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          sub_182032A1C(a4);
          v25 = *(v24 + 372);
          if ((v25 & 0x10000) == 0 && (v25 & 0x10) == 0)
          {
            swift_beginAccess();
            sub_1820265B0(v24);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          return 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v75 = *(v4 + 80);
      v74 = *(v4 + 88);
      v122 = 0;
      v123 = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000029, 0x8000000182BDB930);
      if (v19)
      {
        v76 = sub_182AD2F38();
        v78 = v77;
      }

      else
      {
        v76 = 0x776F6C46206C6C41;
        v78 = 0xE900000000000073;
      }

      MEMORY[0x1865D9CA0](v76, v78);

      MEMORY[0x1865D9CA0](0x535B20646E6120, 0xE700000000000000);
      v124 = a3;
      v79 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v79);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BDA320);
      v80 = v122;
      v81 = v123;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v82 = sub_182AD2698();
      __swift_project_value_buffer(v82, qword_1EA843418);

      v83 = sub_182AD2678();
      v84 = sub_182AD38B8();

      if (os_log_type_enabled(v83, v84))
      {
        v119 = v75;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v122 = v86;
        *v85 = 136315650;
        v87 = sub_182AD3BF8();
        v89 = v80;
        v90 = sub_181C64FFC(v87, v88, &v122);

        *(v85 + 4) = v90;
        *(v85 + 12) = 2080;
        v91 = sub_181C64FFC(v119, v74, &v122);

        *(v85 + 14) = v91;
        *(v85 + 22) = 2080;
        v92 = sub_181C64FFC(v89, v81, &v122);

        *(v85 + 24) = v92;
        _os_log_impl(&dword_181A37000, v83, v84, "%s %s %s", v85, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v86, -1, -1);
        MEMORY[0x1865DF520](v85, -1, -1);
      }

      else
      {
      }

      return 1;
    }

    else
    {
      v57 = *(v4 + 80);
      v56 = *(v4 + 88);
      v122 = 0;
      v123 = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000002FLL, 0x8000000182BDB900);
      if (v19)
      {
        v58 = sub_182AD2F38();
        v60 = v59;
      }

      else
      {
        v58 = 0x776F6C46206C6C41;
        v60 = 0xE900000000000073;
      }

      MEMORY[0x1865D9CA0](v58, v60);

      MEMORY[0x1865D9CA0](0x535B20646E6120, 0xE700000000000000);
      v124 = a3;
      v61 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v61);

      MEMORY[0x1865D9CA0](93, 0xE100000000000000);
      v63 = v122;
      v62 = v123;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v64 = sub_182AD2698();
      __swift_project_value_buffer(v64, qword_1EA843418);

      v65 = sub_182AD2678();
      v66 = sub_182AD38B8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v122 = v68;
        *v67 = 136315650;
        v69 = sub_182AD3BF8();
        v71 = sub_181C64FFC(v69, v70, &v122);

        *(v67 + 4) = v71;
        *(v67 + 12) = 2080;
        v72 = sub_181C64FFC(v57, v56, &v122);

        *(v67 + 14) = v72;
        *(v67 + 22) = 2080;
        v73 = sub_181C64FFC(v63, v62, &v122);

        *(v67 + 24) = v73;
        _os_log_impl(&dword_181A37000, v65, v66, "%s %s %s", v67, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v68, -1, -1);
        MEMORY[0x1865DF520](v67, -1, -1);
      }

      else
      {
      }

      return 1;
    }
  }

  else
  {
    swift_endAccess();
    if ((a3 & 2) != 0 && *(v4 + 1024) != ((a3 & 1) == 0))
    {
      v10 = 0x8000000182BDB8D0;
      v11 = *(v4 + 1144);
      v12 = *(v4 + 1152);
      v13 = 0xD00000000000002CLL;
      goto LABEL_8;
    }

    v26 = sub_1820572A4(a3);
    v27 = v26;
    v28 = v26;
    result = v26 > 0xFFu;
    if (v28 <= 0xFF && (v27 & 1) != 0)
    {
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDB880);
      v122 = a3;
      v29 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v29);

      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDB8B0);
      v31 = v125;
      v30 = v126;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v32 = sub_182AD2698();
      __swift_project_value_buffer(v32, qword_1EA843418);

      v33 = sub_182AD2678();
      v34 = sub_182AD38B8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v125 = v36;
        *v35 = 136315650;
        v37 = sub_182AD3BF8();
        v39 = sub_181C64FFC(v37, v38, &v125);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v125);
        *(v35 + 22) = 2080;
        v40 = sub_181C64FFC(v31, v30, &v125);

        *(v35 + 24) = v40;
        _os_log_impl(&dword_181A37000, v33, v34, "%s %s %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v36, -1, -1);
        MEMORY[0x1865DF520](v35, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_18205B53C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = qword_1EA837250;

  if (v7 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v123 = v3;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v79 = sub_182AD2698();
      __swift_project_value_buffer(v79, qword_1EA843418);
      v80 = swift_allocObject();
      *(v80 + 16) = "processStreamDataBlocked(frame:)";
      *(v80 + 24) = 32;
      *(v80 + 32) = 2;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_181F8C724;
      *(v81 + 24) = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v6;
      *(v82 + 24) = v5;
      v83 = swift_allocObject();
      *(v83 + 16) = 0xD000000000000021;
      *(v83 + 24) = 0x8000000182BDBAB0;

      oslog = sub_182AD2678();
      v125 = sub_182AD38A8();
      v117 = swift_allocObject();
      *(v117 + 16) = 32;
      v115 = swift_allocObject();
      *(v115 + 16) = 8;
      v84 = swift_allocObject();
      *(v84 + 16) = sub_18206B168;
      *(v84 + 24) = v81;
      v85 = swift_allocObject();
      *(v85 + 16) = sub_181F8C718;
      *(v85 + 24) = v84;
      v119 = swift_allocObject();
      *(v119 + 16) = 32;
      v121 = swift_allocObject();
      *(v121 + 16) = 8;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_181F8C720;
      *(v86 + 24) = v82;
      v87 = swift_allocObject();
      *(v87 + 16) = sub_181F8C718;
      *(v87 + 24) = v86;
      v88 = swift_allocObject();
      *(v88 + 16) = 32;
      v89 = swift_allocObject();
      *(v89 + 16) = 8;
      v90 = swift_allocObject();
      *(v90 + 16) = sub_181F8C720;
      *(v90 + 24) = v83;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_181F8C718;
      *(v91 + 24) = v90;
      if (os_log_type_enabled(oslog, v125))
      {
        v111 = v85;
        v92 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = 0;
        v112 = v129;
        buf = v92;
        *v92 = 770;
        v131 = (v92 + 2);
        v133 = sub_181F8C728;
        v134 = v117;
        sub_181F73AE0(&v133, &v131, &v130, &v129);
        v3 = v123;

        v133 = sub_181F8C728;
        v134 = v115;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C714;
        v134 = v111;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v119;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v121;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C714;
        v134 = v87;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v88;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v89;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C714;
        v134 = v91;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        _os_log_impl(&dword_181A37000, oslog, v125, "%s %s %s", buf, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v112, -1, -1);
        MEMORY[0x1865DF520](buf, -1, -1);
      }

      else
      {

        v3 = v123;
      }
    }

    else
    {
    }

    if (a3 >> 62)
    {
      v9 = *(v3 + 80);
      v8 = *(v3 + 88);

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_39;
      }

      v133 = 0;
      v134 = 0xE000000000000000;
      sub_182AD3BA8();

      v133 = 0xD000000000000012;
      v134 = 0x8000000182BDBA90;
      v131 = a3;
      v93 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v93);

      v94 = v133;
      v95 = v134;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v96 = sub_182AD2698();
      __swift_project_value_buffer(v96, qword_1EA843418);
      v97 = swift_allocObject();
      *(v97 + 16) = "processStreamDataBlocked(frame:)";
      *(v97 + 24) = 32;
      *(v97 + 32) = 2;
      v98 = swift_allocObject();
      *(v98 + 16) = sub_181F8C724;
      *(v98 + 24) = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v9;
      *(v99 + 24) = v8;
      v100 = swift_allocObject();
      *(v100 + 16) = v94;
      *(v100 + 24) = v95;

      v101 = sub_182AD2678();
      v102 = sub_182AD38A8();
      v118 = swift_allocObject();
      *(v118 + 16) = 32;
      v120 = swift_allocObject();
      *(v120 + 16) = 8;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_18206B168;
      *(v103 + 24) = v98;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_181F8C718;
      *(v104 + 24) = v103;
      v122 = swift_allocObject();
      *(v122 + 16) = 32;
      v124 = swift_allocObject();
      *(v124 + 16) = 8;
      v105 = swift_allocObject();
      *(v105 + 16) = sub_181F8C720;
      *(v105 + 24) = v99;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_181F8C718;
      *(v106 + 24) = v105;
      v116 = swift_allocObject();
      *(v116 + 16) = 32;
      v126 = swift_allocObject();
      *(v126 + 16) = 8;
      v107 = swift_allocObject();
      *(v107 + 16) = sub_181F8C720;
      *(v107 + 24) = v100;
      v108 = swift_allocObject();
      *(v108 + 16) = sub_181F8C718;
      *(v108 + 24) = v107;
      v16 = v101;
      if (os_log_type_enabled(v101, v102))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v129 = v110;
        v130 = 0;
        *v109 = 770;
        v114 = v110;
        v131 = (v109 + 2);
        v133 = sub_181F8C728;
        v134 = v118;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v120;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C714;
        v134 = v104;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v122;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v124;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C714;
        v134 = v106;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v116;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C728;
        v134 = v126;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        v133 = sub_181F8C714;
        v134 = v108;
        sub_181F73AE0(&v133, &v131, &v130, &v129);

        _os_log_impl(&dword_181A37000, v16, v102, "%s %s %s", v109, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v114, -1, -1);
        v47 = v109;
        goto LABEL_36;
      }

LABEL_39:

      return 0;
    }
  }

  else
  {

    if (a3 >> 62)
    {
      return 0;
    }
  }

  if (a3 & 2) != 0 && ((*(v3 + 1024) ^ ((a3 & 1) == 0)))
  {
    v11 = *(v3 + 80);
    v10 = *(v3 + 88);
    v133 = 0;
    v134 = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](21339, 0xE200000000000000);
    v131 = a3;
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    MEMORY[0x1865D9CA0](0xD000000000000034, 0x8000000182BDBA50);
    v14 = v133;
    v13 = v134;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);

    v16 = sub_182AD2678();
    v17 = sub_182AD38B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v133 = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, &v133);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_181C64FFC(v11, v10, &v133);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      v24 = &v133;
LABEL_35:
      v59 = sub_181C64FFC(v14, v13, v24);

      *(v18 + 24) = v59;
      _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      v47 = v18;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  swift_beginAccess();
  v25 = *(v3 + 936);
  if (!*(v25 + 16) || (v26 = v3, v27 = sub_18225BD68(a3), (v28 & 1) == 0))
  {
    swift_endAccess();
    v133 = 0;
    v134 = 0xE000000000000000;
    sub_182AD3BA8();

    v133 = 0xD00000000000002ELL;
    v134 = 0x8000000182BDB9F0;
    v131 = a3;
    v36 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v36);

    v38 = v133;
    v37 = v134;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v39 = sub_182AD2698();
    __swift_project_value_buffer(v39, qword_1EA843418);

    v16 = sub_182AD2678();
    v40 = sub_182AD38B8();

    if (!os_log_type_enabled(v16, v40))
    {

LABEL_37:

      return 0;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v133 = v42;
    *v41 = 136315650;
    v43 = sub_182AD3BF8();
    v45 = sub_181C64FFC(v43, v44, &v133);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v133);
    *(v41 + 22) = 2080;
    v46 = sub_181C64FFC(v38, v37, &v133);

    *(v41 + 24) = v46;
    _os_log_impl(&dword_181A37000, v16, v40, "%s %s %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v42, -1, -1);
    v47 = v41;
LABEL_36:
    MEMORY[0x1865DF520](v47, -1, -1);
    goto LABEL_37;
  }

  v29 = v3;
  v30 = *(*(v25 + 56) + 8 * v27);
  swift_endAccess();
  swift_beginAccess();
  v31 = *(v3 + 40);
  if (!*(v31 + 16) || (v32 = sub_18224EEF0(v30), v29 = v26, (v33 & 1) == 0))
  {
    v49 = *(v29 + 80);
    v48 = *(v29 + 88);
    v131 = 0;
    v132 = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000002DLL, 0x8000000182BDBA20);
    if (v30)
    {
      v50 = sub_182AD2F38();
      v52 = v51;
    }

    else
    {
      v50 = 0x776F6C46206C6C41;
      v52 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v50, v52);

    MEMORY[0x1865D9CA0](0x20646E6120, 0xE500000000000000);
    v130 = a3;
    v53 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v53);

    v14 = v131;
    v13 = v132;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v54 = sub_182AD2698();
    __swift_project_value_buffer(v54, qword_1EA843418);

    v16 = sub_182AD2678();
    v17 = sub_182AD38B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v131 = v19;
      *v18 = 136315650;
      v55 = sub_182AD3BF8();
      v57 = sub_181C64FFC(v55, v56, &v131);

      *(v18 + 4) = v57;
      *(v18 + 12) = 2080;
      v58 = sub_181C64FFC(v49, v48, &v131);

      *(v18 + 14) = v58;
      *(v18 + 22) = 2080;
      v24 = &v131;
      goto LABEL_35;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (*(*(*(v31 + 56) + 8 * v32) + 16))
  {
    type metadata accessor for QUICStreamInstance();

    swift_unknownObjectRetain();
    v34 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v34)
    {

      return 1;
    }
  }

  else
  {
  }

  v61 = *(v29 + 80);
  v60 = *(v29 + 88);
  v131 = 0;
  v132 = 0xE000000000000000;

  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0x20776F6C66, 0xE500000000000000);
  if (v30)
  {
    v62 = sub_182AD2F38();
    v64 = v63;
  }

  else
  {
    v62 = 0x776F6C46206C6C41;
    v64 = 0xE900000000000073;
  }

  MEMORY[0x1865D9CA0](v62, v64);

  MEMORY[0x1865D9CA0](0x72747320726F6620, 0xEE002044496D6165);
  v130 = a3;
  v65 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v65);

  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDAE60);
  v66 = v131;
  v67 = v132;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v68 = sub_182AD2698();
  __swift_project_value_buffer(v68, qword_1EA843418);

  v69 = sub_182AD2678();
  v70 = sub_182AD38B8();

  if (os_log_type_enabled(v69, v70))
  {
    osloga = v61;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v131 = v72;
    *v71 = 136315650;
    v73 = sub_182AD3BF8();
    v75 = v66;
    v76 = sub_181C64FFC(v73, v74, &v131);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    v77 = sub_181C64FFC(osloga, v60, &v131);

    *(v71 + 14) = v77;
    *(v71 + 22) = 2080;
    v78 = sub_181C64FFC(v75, v67, &v131);

    *(v71 + 24) = v78;
    _os_log_impl(&dword_181A37000, v69, v70, "%s %s %s", v71, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v72, -1, -1);
    MEMORY[0x1865DF520](v71, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_18205CDE0(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = *(v2 + 376);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (!*(v7 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_18224EF74(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  result = swift_endAccess();
  if (v10)
  {
    v12 = v10 - 1;
    if (!__OFSUB__(v10, 1))
    {
      if ((v12 & 0x8000000000000000) != 0 || v12 < *(a1 + 32))
      {
        goto LABEL_7;
      }

      if (*(v3 + 952))
      {

        sub_18206ACD0(a1, v16);
        sub_18200DBFC(a1);

        return 1;
      }

LABEL_13:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_12:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  v13 = *(v3 + 1144);
  v14 = *(v3 + 1152);
  *(v3 + 1144) = 0xD000000000000022;
  *(v3 + 1152) = 0x8000000182BDB4F0;
  v15 = *(v3 + 1160);
  *(v3 + 1160) = 4;
  sub_182023268(v13, v14, v15);
  return 0;
}

void sub_18205CF18()
{
  if (*(v0 + 1026))
  {
    return;
  }

  v1 = v0;
  *(v0 + 1026) = 1;
  v2 = *(*(v0 + 144) + 48);
  v3 = 0x202020100uLL >> (8 * *(v0 + 304));
  v48 = xmmword_182AF0230;
  v49 = v2;

  sub_181F82F10(v3, &v48);

  if (*(v0 + 952) && (v4 = , v5 = sub_182047340(v4, 0, 0), , (v5 & 1) != 0))
  {
    v7 = *(v1 + 80);
    v6 = *(v1 + 88);
    v8 = qword_1EA837250;

    if (v8 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);
    v10 = swift_allocObject();
    *(v10 + 16) = "sendDataBlocked()";
    *(v10 + 24) = 17;
    *(v10 + 32) = 2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F8C724;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = 0xD000000000000011;
    *(v13 + 24) = 0x8000000182BDB170;

    v14 = sub_182AD2678();
    v15 = sub_182AD38A8();
    v16 = swift_allocObject();
    *(v16 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_18206B168;
    *(v17 + 24) = v11;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v17;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C720;
    *(v19 + 24) = v12;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v19;
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C720;
    *(v21 + 24) = v13;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C718;
    *(v22 + 24) = v21;
    v39 = v15;
    v23 = v14;
    if (os_log_type_enabled(v14, v15))
    {
LABEL_22:
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      v46 = 0;
      *v37 = 770;
      v47 = v37 + 2;
      *&v48 = sub_181F8C728;
      *(&v48 + 1) = v16;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C728;
      *(&v48 + 1) = v40;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C714;
      *(&v48 + 1) = v18;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C728;
      *(&v48 + 1) = v41;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C728;
      *(&v48 + 1) = v42;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C714;
      *(&v48 + 1) = v20;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C728;
      *(&v48 + 1) = v43;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C728;
      *(&v48 + 1) = v44;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      *&v48 = sub_181F8C714;
      *(&v48 + 1) = v22;
      sub_181F73AE0(&v48, &v47, &v46, &v45);

      _os_log_impl(&dword_181A37000, v23, v39, "%s %s %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v38, -1, -1);
      MEMORY[0x1865DF520](v37, -1, -1);

      return;
    }
  }

  else
  {
    v25 = *(v1 + 80);
    v24 = *(v1 + 88);
    v26 = qword_1EA837250;

    if (v26 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v27 = sub_182AD2698();
    __swift_project_value_buffer(v27, qword_1EA843418);
    v28 = swift_allocObject();
    *(v28 + 16) = "sendDataBlocked()";
    *(v28 + 24) = 17;
    *(v28 + 32) = 2;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C724;
    *(v29 + 24) = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    *(v30 + 24) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = 0xD00000000000001BLL;
    *(v31 + 24) = 0x8000000182BDB150;

    v32 = sub_182AD2678();
    v33 = sub_182AD38A8();
    v16 = swift_allocObject();
    *(v16 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_18206B168;
    *(v34 + 24) = v29;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v34;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C720;
    *(v35 + 24) = v30;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v35;
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C720;
    *(v36 + 24) = v31;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C718;
    *(v22 + 24) = v36;
    v39 = v33;
    v23 = v32;
    if (os_log_type_enabled(v32, v33))
    {
      goto LABEL_22;
    }
  }

LABEL_16:
}

uint64_t sub_18205DC2C(uint64_t a1)
{
  v4 = v1;
  swift_beginAccess();
  if (*(a1 + 368) == 1)
  {
    v2 = *(a1 + 32);
    v6 = *(a1 + 40);
    swift_beginAccess();

    sub_181F6C974(v2, v6, 2u);
    swift_endAccess();
  }

  if (*(a1 + 372))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v7 = *(a1 + 16);
  v8 = *(*(a1 + 56) + 48);
  v9 = 0x202020100uLL >> (8 * *(v1 + 304));
  v58 = xmmword_182AF0240;
  v59 = v7;
  v60 = v8;

  sub_181F82F10(v9, &v58);

  if (!*(v1 + 952) || (v10 = , v11 = sub_182047340(v10, 0, 0), , (v11 & 1) == 0))
  {
    v15 = *(v4 + 80);
    v14 = *(v4 + 88);
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v58 = 0xD000000000000027;
    *(&v58 + 1) = 0x8000000182BDB240;
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);

    MEMORY[0x1865D9CA0](v17, v16);

    v18 = v58;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v19 = sub_182AD2698();
    __swift_project_value_buffer(v19, qword_1EA843418);

    v20 = sub_182AD2678();
    v21 = sub_182AD38B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v58 = v23;
      *v22 = 136315650;
      v24 = sub_182AD3BF8();
      v26 = sub_181C64FFC(v24, v25, &v58);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_181C64FFC(v15, v14, &v58);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      v28 = sub_181C64FFC(v18, *(&v18 + 1), &v58);

      *(v22 + 24) = v28;
      _os_log_impl(&dword_181A37000, v20, v21, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v23, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v3 = *(v4 + 80);
  v4 = *(v4 + 88);
  v12 = qword_1EA837250;

  if (v12 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
    goto LABEL_11;
  }

  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v58 = 0xD00000000000001DLL;
  *(&v58 + 1) = 0x8000000182BDB270;
  v30 = *(a1 + 32);
  v29 = *(a1 + 40);

  MEMORY[0x1865D9CA0](v30, v29);

  v54 = *(&v58 + 1);
  v2 = v58;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v31 = sub_182AD2698();
  __swift_project_value_buffer(v31, qword_1EA843418);
  v32 = swift_allocObject();
  *(v32 + 16) = "sendStreamDataBlocked(stream:)";
  *(v32 + 24) = 30;
  *(v32 + 32) = 2;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_181F8C724;
  *(v33 + 24) = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  *(v34 + 24) = v4;
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  *(v35 + 24) = v54;

  v36 = sub_182AD2678();
  v37 = sub_182AD38A8();
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_18206B168;
  *(v38 + 24) = v33;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_181F8C718;
  *(v39 + 24) = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_181F8C720;
  *(v41 + 24) = v34;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_181F8C718;
  *(v42 + 24) = v41;
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_181F8C720;
  *(v43 + 24) = v35;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_181F8C718;
  *(v44 + 24) = v43;
  v48 = v37;
  v45 = v36;
  if (!os_log_type_enabled(v36, v37))
  {

LABEL_11:

    return 1;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v55 = v47;
  v56 = 0;
  *v46 = 770;
  v57 = v46 + 2;
  *&v58 = sub_181F8C728;
  *(&v58 + 1) = v49;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C728;
  *(&v58 + 1) = v50;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C714;
  *(&v58 + 1) = v39;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C728;
  *(&v58 + 1) = v40;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C728;
  *(&v58 + 1) = v51;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C714;
  *(&v58 + 1) = v42;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C728;
  *(&v58 + 1) = v52;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C728;
  *(&v58 + 1) = v53;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  *&v58 = sub_181F8C714;
  *(&v58 + 1) = v44;
  sub_181F73AE0(&v58, &v57, &v56, &v55);

  _os_log_impl(&dword_181A37000, v45, v48, "%s %s %s", v46, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v47, -1, -1);
  MEMORY[0x1865DF520](v46, -1, -1);

  return 1;
}

uint64_t sub_18205E6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 1024);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);

  v9 = sub_1820245A4(v6, v7, v8);
  v11 = v10;
  swift_endAccess();

  if (v11)
  {
    v13 = v3[10];
    v12 = v3[11];
    v14 = qword_1EA837248;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);

    v16 = sub_182AD2678();
    v17 = sub_182AD38B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v58[0] = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, v58);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_181C64FFC(v13, v12, v58);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_181C64FFC(0xD000000000000010, 0x8000000182BDAEE0, v58);
      _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v24 = v3[10];
  v25 = v3[11];

  sub_1820273A4(v9, v24, v25);

  v27 = v3[10];
  v26 = v3[11];
  v28 = qword_1EA837250;

  if (v28 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    goto LABEL_19;
  }

  sub_182AD3BA8();

  strcpy(v58, "updating flow ");
  HIBYTE(v58[1]) = -18;
  if (a2)
  {
    v29 = sub_182AD2F38();
    v31 = v30;
  }

  else
  {
    v31 = 0xE900000000000073;
    v29 = 0x776F6C46206C6C41;
  }

  MEMORY[0x1865D9CA0](v29, v31);

  MEMORY[0x1865D9CA0](0x79656B20726F6620, 0xE900000000000020);
  v33 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v33);

  v34 = v58[0];
  v35 = v58[1];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v36 = sub_182AD2698();
  __swift_project_value_buffer(v36, qword_1EA843418);

  v37 = sub_182AD2678();
  v38 = sub_182AD38A8();

  if (!os_log_type_enabled(v37, v38))
  {

LABEL_19:

    goto LABEL_20;
  }

  v55 = v38;
  v39 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v58[0] = v56;
  *v39 = 136315650;
  v40 = sub_182AD3BF8();
  v53 = v34;
  log = v37;
  v42 = v27;
  v43 = a2;
  v44 = sub_181C64FFC(v40, v41, v58);

  *(v39 + 4) = v44;
  *(v39 + 12) = 2080;
  v45 = sub_181C64FFC(v42, v26, v58);

  *(v39 + 14) = v45;
  *(v39 + 22) = 2080;
  a2 = v43;
  v46 = sub_181C64FFC(v53, v35, v58);

  *(v39 + 24) = v46;
  _os_log_impl(&dword_181A37000, log, v55, "%s %s %s", v39, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v56, -1, -1);
  MEMORY[0x1865DF520](v39, -1, -1);

LABEL_20:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v3[117];
  v3[117] = 0x8000000000000000;
  sub_182258D30(a2, v9, isUniquelyReferenced_nonNull_native);
  v3[117] = v57;
  swift_endAccess();
  if ((*(a1 + 373) & 4) == 0)
  {
    v48 = *(a1 + 32);
    v49 = *(a1 + 40);
    swift_beginAccess();

    sub_181F6D028(v48, v49, 1u);
    swift_endAccess();
  }

  v50 = *(a1 + 32);
  v51 = *(a1 + 40);
  swift_beginAccess();

  v32 = 1;
  sub_181F6C974(v50, v51, 1u);
  swift_endAccess();

  sub_1820654E4(a1);
  sub_18216AAA8(a2);
  return v32;
}

void sub_18205ED80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  if (*(a1 + 16))
  {
    type metadata accessor for QUICStreamInstance();
    swift_unknownObjectRetain();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      if (*(v5 + 368) || (swift_beginAccess(), *(v5 + 369)))
      {
        if (*(v5 + 24) != 1)
        {
          sub_1820654E4(v5);
          goto LABEL_26;
        }

        v7 = *(a2 + 80);
        v6 = *(a2 + 88);
        v50[0] = 0;
        v50[1] = 0xE000000000000000;

        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0x206D6165727473, 0xE700000000000000);
        v9 = *(v5 + 32);
        v8 = *(v5 + 40);

        MEMORY[0x1865D9CA0](v9, v8);

        MEMORY[0x1865D9CA0](0x6F6C6620726F6620, 0xEA00000000002077);
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDAE80);
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v10 = sub_182AD2698();
        __swift_project_value_buffer(v10, qword_1EA843418);

        v11 = sub_182AD2678();
        v12 = sub_182AD38B8();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50[0] = v49;
          *v13 = 136315650;
          v14 = sub_182AD3BF8();
          v16 = v7;
          v17 = sub_181C64FFC(v14, v15, v50);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2080;
          v18 = sub_181C64FFC(v16, v6, v50);

          *(v13 + 14) = v18;
          *(v13 + 22) = 2080;
          v19 = sub_181C64FFC(0, 0xE000000000000000, v50);

          *(v13 + 24) = v19;
          _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v49, -1, -1);
          v20 = v13;
LABEL_10:
          MEMORY[0x1865DF520](v20, -1, -1);

LABEL_26:
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        if (sub_18205E6E0(v5, v3))
        {
          goto LABEL_26;
        }

        v39 = *(a2 + 80);
        v38 = *(a2 + 88);
        v40 = qword_1EA837248;

        if (v40 != -1)
        {
          swift_once();
        }

        v41 = sub_182AD2698();
        __swift_project_value_buffer(v41, qword_1EA843418);

        v11 = sub_182AD2678();
        v42 = sub_182AD38B8();

        if (os_log_type_enabled(v11, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v50[0] = v44;
          *v43 = 136315650;
          v45 = sub_182AD3BF8();
          v47 = sub_181C64FFC(v45, v46, v50);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2080;
          v48 = sub_181C64FFC(v39, v38, v50);

          *(v43 + 14) = v48;
          *(v43 + 22) = 2080;
          *(v43 + 24) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BDAEA0, v50);
          _os_log_impl(&dword_181A37000, v11, v42, "%s %s %s", v43, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v44, -1, -1);
          v20 = v43;
          goto LABEL_10;
        }
      }

      goto LABEL_26;
    }

    swift_unknownObjectRelease();
  }

  v22 = *(a2 + 80);
  v21 = *(a2 + 88);
  v51 = 0;
  v52 = 0xE000000000000000;

  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDAE40);
  if (v3)
  {
    v23 = sub_182AD2F38();
    v25 = v24;
  }

  else
  {
    v25 = 0xE900000000000073;
    v23 = 0x776F6C46206C6C41;
  }

  MEMORY[0x1865D9CA0](v23, v25);

  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDAE60);
  v27 = v51;
  v26 = v52;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v28 = sub_182AD2698();
  __swift_project_value_buffer(v28, qword_1EA843418);

  v29 = sub_182AD2678();
  v30 = sub_182AD38B8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v51 = v32;
    *v31 = 136315650;
    v33 = sub_182AD3BF8();
    v35 = sub_181C64FFC(v33, v34, &v51);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = sub_181C64FFC(v22, v21, &v51);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    v37 = sub_181C64FFC(v27, v26, &v51);

    *(v31 + 24) = v37;
    _os_log_impl(&dword_181A37000, v29, v30, "%s %s %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v32, -1, -1);
    MEMORY[0x1865DF520](v31, -1, -1);
  }

  else
  {
  }
}