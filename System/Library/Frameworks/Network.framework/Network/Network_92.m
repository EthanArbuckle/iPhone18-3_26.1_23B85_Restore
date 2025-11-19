uint64_t sub_18205F50C(_WORD *a1)
{
  v6 = v1[10];
  v5 = v1[11];
  v7 = qword_1EA837250;

  if (v7 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    v33 = v1;
    sub_182AD3BA8();

    aBlock = 0xD000000000000020;
    v40 = 0x8000000182BDB1B0;
    v38 = a1;
    v13 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v13);

    v2 = 0xD000000000000020;
    v3 = 0x8000000182BDB1B0;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v8 = v1[12];
    if (v8)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
LABEL_9:
    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843418);
    v15 = swift_allocObject();
    *(v15 + 16) = "burstLimitReached(_:)";
    *(v15 + 24) = 21;
    *(v15 + 32) = 2;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C724;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v5;
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v3;

    oslog = sub_182AD2678();
    v34 = sub_182AD38A8();
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18206B168;
    *(v19 + 24) = v16;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = 32;
    v2 = swift_allocObject();
    *(v2 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C720;
    *(v22 + 24) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C718;
    *(v23 + 24) = v22;
    v6 = swift_allocObject();
    *(v6 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C720;
    *(v25 + 24) = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v3 = oslog;
    if (os_log_type_enabled(oslog, v34))
    {
      v28 = v20;
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = 0;
      v29 = v36;
      buf = v27;
      *v27 = 770;
      v38 = v27 + 2;
      aBlock = sub_181F8C728;
      v40 = v32;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);
      v1 = v33;

      aBlock = sub_181F8C728;
      v40 = v31;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      v3 = v28;
      aBlock = sub_181F8C714;
      v40 = v28;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      aBlock = sub_181F8C728;
      v40 = v21;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      aBlock = sub_181F8C728;
      v40 = v2;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      aBlock = sub_181F8C714;
      v40 = v23;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      aBlock = sub_181F8C728;
      v40 = v6;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      aBlock = sub_181F8C728;
      v40 = v24;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      aBlock = sub_181F8C714;
      v40 = v26;
      sub_181F73AE0(&aBlock, &v38, &v37, &v36);

      v5 = buf;
      _os_log_impl(&dword_181A37000, oslog, v34, "%s %s %s", buf, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v29, -1, -1);
      MEMORY[0x1865DF520](buf, -1, -1);
    }

    else
    {

      v1 = v33;
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = a1;
  v10 = *(v8 + 16);
  v43 = sub_18206ACC8;
  v44 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_181B7D048;
  v42 = &block_descriptor_13;
  v11 = _Block_copy(&aBlock);

  nw_queue_context_async(v10, v11);
  _Block_release(v11);
}

uint64_t sub_18205FDBC(void *a1, uint8_t *a2)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = qword_1EA837250;

  if (v5 != -1)
  {
LABEL_136:
    swift_once();
  }

  v159 = byte_1EA843430;
  v157 = a2;
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
LABEL_141:
    v180 = 0;
    v181 = 0xE000000000000000;
    sub_182AD3BA8();

    v180 = 0xD000000000000018;
    v181 = 0x8000000182BDB200;
    v178 = a2;
    v90 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v90);

    v91 = v180;
    v92 = v181;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v93 = sub_182AD2698();
    __swift_project_value_buffer(v93, qword_1EA843418);
    v94 = swift_allocObject();
    *(v94 + 16) = "burstLimitReached(_:)";
    *(v94 + 24) = 21;
    *(v94 + 32) = 2;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_181F8C724;
    *(v95 + 24) = v94;
    v96 = swift_allocObject();
    *(v96 + 16) = v3;
    *(v96 + 24) = v4;
    v97 = swift_allocObject();
    *(v97 + 16) = v91;
    *(v97 + 24) = v92;

    v171 = sub_182AD2678();
    v98 = sub_182AD38A8();
    v168 = swift_allocObject();
    *(v168 + 16) = 32;
    v163 = swift_allocObject();
    *(v163 + 16) = 8;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_18206B168;
    *(v99 + 24) = v95;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_181F8C718;
    *(v100 + 24) = v99;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v102 = swift_allocObject();
    *(v102 + 16) = 8;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_181F8C720;
    *(v103 + 24) = v96;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_181F8C718;
    *(v104 + 24) = v103;
    v105 = swift_allocObject();
    *(v105 + 16) = 32;
    v106 = swift_allocObject();
    *(v106 + 16) = 8;
    v107 = swift_allocObject();
    *(v107 + 16) = sub_181F8C720;
    *(v107 + 24) = v97;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_181F8C718;
    *(v108 + 24) = v107;
    v155 = v98;
    if (os_log_type_enabled(v171, v98))
    {
      v152 = v104;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v174 = 0;
      *v109 = 770;
      v173[0] = v110;
      v178 = v109 + 2;
      v180 = sub_181F8C728;
      v181 = v168;
      sub_181F73AE0(&v180, &v178, &v174, v173);
      v150 = v110;

      v180 = sub_181F8C728;
      v181 = v163;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      v180 = sub_181F8C714;
      v181 = v100;
      sub_181F73AE0(&v180, &v178, &v174, v173);
      a2 = v157;

      v180 = sub_181F8C728;
      v181 = v101;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      v180 = sub_181F8C728;
      v181 = v102;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      v180 = sub_181F8C714;
      v181 = v152;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      v180 = sub_181F8C728;
      v181 = v105;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      v180 = sub_181F8C728;
      v181 = v106;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      v180 = sub_181F8C714;
      v181 = v108;
      sub_181F73AE0(&v180, &v178, &v174, v173);

      _os_log_impl(&dword_181A37000, v171, v155, "%s %s %s", v109, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v150, -1, -1);
      MEMORY[0x1865DF520](v109, -1, -1);
    }

    else
    {

      a2 = v157;
    }
  }

  else
  {
  }

  v3 = a1;
  result = swift_beginAccess();
  v7 = a1[80];
  if (v7 >> 62)
  {
    result = sub_182AD3EB8();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v8 = v7 & 0xC000000000000001;
  v162 = v7 & 0xFFFFFFFFFFFFFF8;
  v154 = v7 + 32;

  v9 = 0;
  v10 = 0;
  v151 = 0;
  v153 = 1;
  v170 = v4;
  v165 = v7;
  v167 = v7 & 0xC000000000000001;
  do
  {
    v11 = v10;
    while (1)
    {
      if (v8)
      {
        v12 = MEMORY[0x1865DA790](v11, v7);
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (v11 >= *(v162 + 16))
        {
          goto LABEL_130;
        }

        v12 = *(v7 + 8 * v11 + 32);

        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }
      }

      if (v9)
      {
        break;
      }

      v3 = *(v12 + 16);
      v13 = *(v12 + 24);

      if (v13)
      {
        if (v10 == v4)
        {
          goto LABEL_65;
        }

        v9 = 0;
        ++v11;
      }

      else
      {
        v9 = v3 == a2;
        if (v10 == v4)
        {
          goto LABEL_65;
        }

        ++v11;
      }
    }

    v14 = *(*(v12 + 56) + 48);
    swift_beginAccess();
    v15 = *(v12 + 320);
    if (*(v12 + 312))
    {
      v16 = 0;
    }

    else
    {
      v17 = *(v12 + 304);
      if (*(v12 + 112) == 5)
      {
        v16 = nw_frame_unclaimed_length(*(v12 + 88));
        if (v17)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v18 = *(v12 + 160);
        if (v18)
        {
          v19 = *(v12 + 144);
          v20 = *(v12 + 152);
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
            __break(1u);
          }

          else
          {
            v16 = v18 - v22;
            if (!__OFSUB__(v18, v22))
            {
              if (!v17)
              {
                goto LABEL_45;
              }

LABEL_30:
              oslog = v14;
              v3 = *(v17 + 4);
              v23 = *(v17 + 3) + v3;
              if (*(v17 + 2) < v23)
              {
                v23 = *(v17 + 2);
              }

              v174 = v17;
              v175 = v3;
              v176 = v23;
              v24 = swift_retain_n();
              v25 = v17;
              while (1)
              {
                if (v3 == v176)
                {
                  if ((sub_181AC81FC(v24) & 1) == 0)
                  {

                    v7 = v165;
                    v14 = oslog;
                    goto LABEL_45;
                  }

                  v25 = v174;
                  v3 = v175;
                }

                v27 = &v25[8 * v3++];
                v175 = v3;
                v28 = *(v27 + 5);
                swift_beginAccess();
                if (*(v28 + 40) == 5)
                {
                  v26 = *(v28 + 16);

                  v4 = nw_frame_unclaimed_length(v26);
                }

                else
                {
                  v29 = *(v28 + 88);
                  if (v29)
                  {
                    v30 = *(v28 + 72);
                    v31 = *(v28 + 80);
                    v21 = __OFADD__(v30, v31);
                    v32 = v30 + v31;
                    if (v21)
                    {
                      goto LABEL_132;
                    }

                    v4 = v29 - v32;
                    if (__OFSUB__(v29, v32))
                    {
                      goto LABEL_133;
                    }
                  }

                  else
                  {

                    v4 = 0;
                  }
                }

                swift_endAccess();

                v21 = __OFADD__(v16, v4);
                v16 += v4;
                if (v21)
                {
                  goto LABEL_129;
                }
              }
            }
          }

          __break(1u);
          goto LABEL_152;
        }

        v16 = 0;
        if (v17)
        {
          goto LABEL_30;
        }
      }

LABEL_45:
      v4 = v170;
      v8 = v167;
      if (v16 < 0)
      {
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }
    }

    v3 = v15 + v16;
    if (__CFADD__(v15, v16))
    {
      goto LABEL_140;
    }

    swift_endAccess();
    if (v14 < v3)
    {
      if (v159)
      {
        v3 = a1[10];
        v33 = a1[11];

        if (__nwlog_is_datapath_logging_enabled())
        {
          v178 = 0;
          v179 = 0xE000000000000000;
          sub_182AD3BA8();

          v178 = 0x73203A636E797361;
          v179 = 0xEF20656369767265;
          if (*(v12 + 24))
          {
            __break(1u);

            __break(1u);

            __break(1u);

            while (1)
            {

              __break(1u);
            }
          }

          v174 = *(v12 + 16);
          v34 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v34);

          v35 = v178;
          v36 = v179;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v37 = sub_182AD2698();
          __swift_project_value_buffer(v37, qword_1EA843418);
          v38 = swift_allocObject();
          *(v38 + 16) = "burstLimitReached(_:)";
          *(v38 + 24) = 21;
          *(v38 + 32) = 2;
          v39 = swift_allocObject();
          *(v39 + 16) = sub_181F8C724;
          *(v39 + 24) = v38;
          oslogd = swift_allocObject();
          oslogd[2].isa = v3;
          oslogd[3].isa = v33;
          v130 = swift_allocObject();
          *(v130 + 16) = v35;
          *(v130 + 24) = v36;

          v40 = sub_182AD2678();
          v41 = sub_182AD38A8();
          v134 = swift_allocObject();
          *(v134 + 16) = 32;
          v135 = swift_allocObject();
          *(v135 + 16) = 8;
          v42 = swift_allocObject();
          *(v42 + 16) = sub_18206B168;
          *(v42 + 24) = v39;
          v43 = swift_allocObject();
          *(v43 + 16) = sub_181F8C718;
          *(v43 + 24) = v42;
          v137 = swift_allocObject();
          *(v137 + 16) = 32;
          v139 = swift_allocObject();
          *(v139 + 16) = 8;
          v44 = swift_allocObject();
          *(v44 + 16) = sub_181F8C720;
          *(v44 + 24) = oslogd;
          v45 = swift_allocObject();
          *(v45 + 16) = sub_181F8C718;
          *(v45 + 24) = v44;
          v141 = v45;
          v143 = swift_allocObject();
          *(v143 + 16) = 32;
          osloga = swift_allocObject();
          LOBYTE(osloga[2].isa) = 8;
          v46 = swift_allocObject();
          *(v46 + 16) = sub_181F8C720;
          *(v46 + 24) = v130;
          v3 = swift_allocObject();
          *(v3 + 16) = sub_181F8C718;
          *(v3 + 24) = v46;
          v131 = v41;
          v47 = v41;
          v48 = v40;
          if (os_log_type_enabled(v40, v47))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v173[0] = 0;
            *v49 = 770;
            v51 = v50;
            v174 = v49 + 2;
            v177 = v50;
            v178 = sub_181F8C728;
            v179 = v134;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C728;
            v179 = v135;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C714;
            v179 = v43;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C728;
            v179 = v137;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C728;
            v179 = v139;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C714;
            v179 = v141;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C728;
            v179 = v143;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C728;
            v179 = osloga;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v178 = sub_181F8C714;
            v179 = v3;
            sub_181F73AE0(&v178, &v174, v173, &v177);

            v3 = v48;
            _os_log_impl(&dword_181A37000, v48, v131, "%s %s %s", v49, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v51, -1, -1);
            MEMORY[0x1865DF520](v49, -1, -1);
          }

          else
          {
          }

          a2 = v157;
          v7 = v165;
        }

        else
        {
        }

        v4 = v170;
        v8 = v167;
      }

      if (sub_182048A70(v12, 0))
      {
        v151 = *(v12 + 16);
        v153 = *(v12 + 24);
      }
    }

    v9 = 1;
  }

  while (v10 != v4);
LABEL_65:
  v52 = 0;
  do
  {
    if (v8)
    {
      v53 = MEMORY[0x1865DA790](v52, v7);
      v21 = __OFADD__(v52++, 1);
      if (v21)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v52 >= *(v162 + 16))
      {
        goto LABEL_131;
      }

      v53 = *(v154 + 8 * v52);

      v21 = __OFADD__(v52++, 1);
      if (v21)
      {
        goto LABEL_126;
      }
    }

    v54 = *(*(v53 + 56) + 48);
    swift_beginAccess();
    v55 = *(v53 + 320);
    if (*(v53 + 312))
    {
      v56 = 0;
    }

    else
    {
      a2 = *(v53 + 304);
      if (*(v53 + 112) == 5)
      {
        v56 = nw_frame_unclaimed_length(*(v53 + 88));
        if (a2)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v57 = *(v53 + 160);
        if (v57)
        {
          v58 = *(v53 + 144);
          v59 = *(v53 + 152);
          v21 = __OFADD__(v58, v59);
          v60 = v58 + v59;
          if (v21)
          {
            goto LABEL_134;
          }

          v56 = v57 - v60;
          if (__OFSUB__(v57, v60))
          {
            goto LABEL_135;
          }

          if (a2)
          {
LABEL_81:
            v3 = *(a2 + 4);
            v61 = *(a2 + 3) + v3;
            if (*(a2 + 2) < v61)
            {
              v61 = *(a2 + 2);
            }

            v174 = a2;
            v175 = v3;
            v176 = v61;
            v62 = swift_retain_n();
            v63 = a2;
            do
            {
              if (v3 == v176)
              {
                if ((sub_181AC81FC(v62) & 1) == 0)
                {

                  goto LABEL_96;
                }

                v63 = v174;
                v3 = v175;
              }

              v65 = &v63[8 * v3++];
              v175 = v3;
              v66 = *(v65 + 5);
              swift_beginAccess();
              if (*(v66 + 40) == 5)
              {
                v64 = *(v66 + 16);

                v4 = nw_frame_unclaimed_length(v64);
              }

              else
              {
                v67 = *(v66 + 88);
                if (v67)
                {
                  v68 = *(v66 + 72);
                  v69 = *(v66 + 80);
                  v21 = __OFADD__(v68, v69);
                  v70 = v68 + v69;
                  if (v21)
                  {
                    goto LABEL_123;
                  }

                  v4 = v67 - v70;
                  if (__OFSUB__(v67, v70))
                  {
                    goto LABEL_124;
                  }
                }

                else
                {

                  v4 = 0;
                }
              }

              swift_endAccess();

              v21 = __OFADD__(v56, v4);
              v56 += v4;
            }

            while (!v21);
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }
        }

        else
        {
          v56 = 0;
          if (a2)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_96:
      a2 = v157;
      if (v56 < 0)
      {
        goto LABEL_127;
      }
    }

    v3 = v55 + v56;
    if (__CFADD__(v55, v56))
    {
      goto LABEL_128;
    }

    swift_endAccess();
    if (v54 >= v3)
    {
      v7 = v165;
      goto LABEL_105;
    }

    v7 = v165;
    if (v159)
    {
      v71 = a1[10];
      v72 = a1[11];

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_101;
      }

      v178 = 0;
      v179 = 0xE000000000000000;
      sub_182AD3BA8();

      v178 = 0x73203A636E797361;
      v179 = 0xEF20656369767265;
      if (*(v53 + 24))
      {
        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

      v174 = *(v53 + 16);
      v74 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v74);

      v75 = v179;
      oslogb = v178;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v76 = sub_182AD2698();
      __swift_project_value_buffer(v76, qword_1EA843418);
      v77 = swift_allocObject();
      *(v77 + 16) = "burstLimitReached(_:)";
      *(v77 + 24) = 21;
      *(v77 + 32) = 2;
      v78 = swift_allocObject();
      *(v78 + 16) = sub_181F8C724;
      *(v78 + 24) = v77;
      v128 = swift_allocObject();
      *(v128 + 16) = v71;
      *(v128 + 24) = v72;
      v132 = swift_allocObject();
      *(v132 + 16) = oslogb;
      *(v132 + 24) = v75;

      oslogc = sub_182AD2678();
      v144 = sub_182AD38A8();
      v136 = swift_allocObject();
      *(v136 + 16) = 32;
      v133 = swift_allocObject();
      *(v133 + 16) = 8;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_18206B168;
      *(v79 + 24) = v78;
      v80 = swift_allocObject();
      *(v80 + 16) = sub_181F8C718;
      *(v80 + 24) = v79;
      v140 = v80;
      v142 = swift_allocObject();
      *(v142 + 16) = 32;
      v138 = swift_allocObject();
      *(v138 + 16) = 8;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_181F8C720;
      *(v81 + 24) = v128;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_181F8C718;
      *(v82 + 24) = v81;
      v83 = swift_allocObject();
      *(v83 + 16) = 32;
      v84 = swift_allocObject();
      *(v84 + 16) = 8;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_181F8C720;
      *(v4 + 24) = v132;
      v85 = swift_allocObject();
      *(v85 + 16) = sub_181F8C718;
      *(v85 + 24) = v4;
      if (!os_log_type_enabled(oslogc, v144))
      {

LABEL_101:

        goto LABEL_102;
      }

      v129 = v84;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v173[0] = 0;
      v127 = v87;
      *v86 = 770;
      v174 = v86 + 2;
      v177 = v87;
      v178 = sub_181F8C728;
      v179 = v136;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v133;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C714;
      v179 = v140;
      sub_181F73AE0(&v178, &v174, v173, &v177);
      v4 = v83;

      v178 = sub_181F8C728;
      v179 = v142;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v138;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C714;
      v179 = v82;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v83;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v129;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C714;
      v179 = 0;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      _os_log_impl(&dword_181A37000, oslogc, v144, "%s %s %s", v86, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v127, -1, -1);
      MEMORY[0x1865DF520](v86, -1, -1);
    }

LABEL_102:
    if (sub_182048A70(v53, 0))
    {
      v151 = *(v53 + 16);
      v153 = *(v53 + 24);
    }

LABEL_105:
    v3 = *(v53 + 16);
    v73 = *(v53 + 24);

    if (((v3 == a2) & ~v73) != 0)
    {
      break;
    }

    v8 = v167;
  }

  while (v52 != v170);

  if (v153)
  {
    return result;
  }

  if (v159)
  {
    v88 = a1[10];
    v89 = a1[11];

    if (!__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_119;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v111 = sub_182AD2698();
    __swift_project_value_buffer(v111, qword_1EA843418);
    v112 = swift_allocObject();
    *(v112 + 16) = "burstLimitReached(_:)";
    *(v112 + 24) = 21;
    *(v112 + 32) = 2;
    v113 = swift_allocObject();
    *(v113 + 16) = sub_181F8C724;
    *(v113 + 24) = v112;
    v114 = swift_allocObject();
    *(v114 + 16) = v88;
    *(v114 + 24) = v89;
    v115 = swift_allocObject();
    *(v115 + 16) = 0xD000000000000011;
    *(v115 + 24) = 0x8000000182BDB1E0;

    v116 = sub_182AD2678();
    v117 = sub_182AD38A8();
    v118 = swift_allocObject();
    *(v118 + 16) = 32;
    v164 = swift_allocObject();
    *(v164 + 16) = 8;
    v119 = swift_allocObject();
    *(v119 + 16) = sub_18206B168;
    *(v119 + 24) = v113;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_181F8C718;
    *(v120 + 24) = v119;
    v160 = swift_allocObject();
    *(v160 + 16) = 32;
    v166 = swift_allocObject();
    *(v166 + 16) = 8;
    v121 = swift_allocObject();
    *(v121 + 16) = sub_181F8C720;
    *(v121 + 24) = v114;
    v122 = swift_allocObject();
    *(v122 + 16) = sub_181F8C718;
    *(v122 + 24) = v121;
    v169 = swift_allocObject();
    *(v169 + 16) = 32;
    v172 = swift_allocObject();
    *(v172 + 16) = 8;
    v123 = swift_allocObject();
    *(v123 + 16) = sub_181F8C720;
    *(v123 + 24) = v115;
    v124 = swift_allocObject();
    *(v124 + 16) = sub_181F8C718;
    *(v124 + 24) = v123;
    v158 = v117;
    v4 = v116;
    if (os_log_type_enabled(v116, v117))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v173[0] = 0;
      *v125 = 770;
      v156 = v126;
      v174 = v125 + 2;
      v177 = v126;
      v178 = sub_181F8C728;
      v179 = v118;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v164;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C714;
      v179 = v120;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v160;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v166;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C714;
      v179 = v122;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v169;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C728;
      v179 = v172;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      v178 = sub_181F8C714;
      v179 = v124;
      sub_181F73AE0(&v178, &v174, v173, &v177);

      _os_log_impl(&dword_181A37000, v116, v158, "%s %s %s", v125, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v156, -1, -1);
      MEMORY[0x1865DF520](v125, -1, -1);

      return sub_18205F50C(v151);
    }

LABEL_152:

LABEL_119:
  }

  return sub_18205F50C(v151);
}

uint64_t sub_1820621B4(unint64_t a1)
{

  sub_18221227C(a1);
}

uint64_t sub_1820621FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v2[117];
  v2[117] = 0x8000000000000000;
  sub_182258D30(a1, a2, isUniquelyReferenced_nonNull_native);
  v2[117] = v34;
  swift_endAccess();
  v7 = v2[10];
  v8 = v2[11];
  type metadata accessor for QUICStreamInstance();
  swift_allocObject();

  v9 = sub_1820271F0(a2, 0, 1, v7, v8);
  v10 = v9;
  v11 = *(v9 + 372);
  if ((a2 & 2) != 0)
  {
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_7;
    }

    v12 = v11 | 0x400;
  }

  else
  {
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    v12 = v11 & 0xFFFFFBFF;
  }

  *(v9 + 372) = v12;
LABEL_7:

  sub_182168DE4(v13, a1);

  v15 = v3[10];
  v14 = v3[11];
  v16 = qword_1EA837250;

  if (v16 != -1)
  {
    swift_once();
  }

  if ((byte_1EA843430 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_182AD3BA8();

  v35 = 0x6572747320746573;
  v36 = 0xEB00000000206D61;
  v17 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v17);

  MEMORY[0x1865D9CA0](0x6F6C6620726F6620, 0xEA00000000002077);
  if (a1)
  {
    v18 = sub_182AD2F38();
    v20 = v19;
  }

  else
  {
    v20 = 0xE900000000000073;
    v18 = 0x776F6C46206C6C41;
  }

  MEMORY[0x1865D9CA0](v18, v20);

  v22 = v35;
  v21 = v36;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v23 = sub_182AD2698();
  __swift_project_value_buffer(v23, qword_1EA843418);

  v24 = sub_182AD2678();
  v25 = sub_182AD38A8();

  if (!os_log_type_enabled(v24, v25))
  {

LABEL_18:

    return v10;
  }

  v26 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v35 = v33;
  *v26 = 136315650;
  v27 = sub_182AD3BF8();
  v29 = sub_181C64FFC(v27, v28, &v35);

  *(v26 + 4) = v29;
  *(v26 + 12) = 2080;
  v30 = sub_181C64FFC(v15, v14, &v35);

  *(v26 + 14) = v30;
  *(v26 + 22) = 2080;
  v31 = sub_181C64FFC(v22, v21, &v35);

  *(v26 + 24) = v31;
  _os_log_impl(&dword_181A37000, v24, v25, "%s %s %s", v26, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v33, -1, -1);
  MEMORY[0x1865DF520](v26, -1, -1);

  return v10;
}

unint64_t sub_1820625E8()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 > 0)
  {
    if (result >= v3)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (v3 < result)
  {
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_17;
    }

LABEL_6:
    v4 = __CFADD__(result, v2);
    v5 = result + v2;
    if (!v4)
    {
      if (!(v5 >> 62))
      {
        *(v0 + 40) = v5;
        *(v0 + 24) = 0;
        *(v0 + 32) = 1;
        return result;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_9:
  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_182062690(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  if (*v1 <= v4)
  {
    if (a1 < 1)
    {
      goto LABEL_4;
    }
  }

  else if (a1 < 1 || *v1 - v4 >= a1)
  {
LABEL_4:
    if (qword_1EA837250 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000029, 0x8000000182BDBF90);
    v6 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v6);

    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDBF50);
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BDBFC0);
    v63 = v3;
    v8 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v8);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);
    v10 = swift_allocObject();
    *(v10 + 16) = "canSend(packetLength:)";
    *(v10 + 24) = 22;
    *(v10 + 32) = 2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F8C724;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = 1564427099;
    *(v12 + 24) = 0xE400000000000000;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;

    v14 = sub_182AD2678();
    v2 = sub_182AD38A8();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18206B168;
    *(v15 + 24) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v50 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v12;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C720;
    *(v20 + 24) = v13;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    v49 = v2;
    v22 = v14;
    if (os_log_type_enabled(v14, v2))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61 = v24;
      v62 = 0;
      *v23 = 770;
      v48 = v24;
      v63 = v23 + 2;
      v64 = sub_181F8C728;
      v65 = v51;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v53;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C714;
      v65 = v50;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v17;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v54;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C714;
      v65 = v19;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v56;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v58;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C714;
      v65 = v21;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v2 = v22;
      _os_log_impl(&dword_181A37000, v22, v49, "%s %s %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v48, -1, -1);
      MEMORY[0x1865DF520](v23, -1, -1);
    }

    else
    {
    }
  }

  if (((v4 | v3) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_5:
  if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
  {
    return 1;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BDBF20);
  v63 = v4;
  v25 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v25);

  MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDBF50);
  v63 = v2;
  v26 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v26);

  MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDBF70);
  v63 = v3;
  v27 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v27);

  v28 = v64;
  v29 = v65;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v30 = sub_182AD2698();
  __swift_project_value_buffer(v30, qword_1EA843418);
  v31 = swift_allocObject();
  *(v31 + 16) = "canSend(packetLength:)";
  *(v31 + 24) = 22;
  *(v31 + 32) = 2;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_181F8C724;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = 1564427099;
  *(v33 + 24) = 0xE400000000000000;
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  *(v34 + 24) = v29;

  v35 = sub_182AD2678();
  v36 = sub_182AD38A8();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_18206B168;
  *(v38 + 24) = v32;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_181F8C718;
  *(v39 + 24) = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_181F8C720;
  *(v41 + 24) = v33;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_181F8C718;
  *(v42 + 24) = v41;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_181F8C720;
  *(v43 + 24) = v34;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_181F8C718;
  *(v44 + 24) = v43;
  v52 = v36;
  v45 = v35;
  if (!os_log_type_enabled(v35, v36))
  {

    return 1;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v61 = v47;
  v62 = 0;
  *v46 = 770;
  v63 = v46 + 2;
  v64 = sub_181F8C728;
  v65 = v37;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v55;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C714;
  v65 = v39;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v40;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v57;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C714;
  v65 = v42;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v59;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v60;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C714;
  v65 = v44;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  _os_log_impl(&dword_181A37000, v45, v52, "%s %s %s", v46, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v47, -1, -1);
  MEMORY[0x1865DF520](v46, -1, -1);

  return 1;
}

uint64_t sub_1820636BC(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  if (*v1 <= v4)
  {
    if (a1 < 1)
    {
      goto LABEL_4;
    }
  }

  else if (a1 < 1 || *v1 - v4 >= a1)
  {
LABEL_4:
    if (qword_1EA837250 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000029, 0x8000000182BDBF90);
    v6 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v6);

    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDBF50);
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BDBFC0);
    v63 = v3;
    v8 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v8);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);
    v10 = swift_allocObject();
    *(v10 + 16) = "canSend(packetLength:)";
    *(v10 + 24) = 22;
    *(v10 + 32) = 2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F8C724;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = 1564427099;
    *(v12 + 24) = 0xE400000000000000;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;

    v14 = sub_182AD2678();
    v2 = sub_182AD38A8();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18206B168;
    *(v15 + 24) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v50 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v12;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C720;
    *(v20 + 24) = v13;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    v49 = v2;
    v22 = v14;
    if (os_log_type_enabled(v14, v2))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61 = v24;
      v62 = 0;
      *v23 = 770;
      v48 = v24;
      v63 = v23 + 2;
      v64 = sub_181F8C728;
      v65 = v51;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v53;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C714;
      v65 = v50;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v17;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v54;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C714;
      v65 = v19;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v56;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C728;
      v65 = v58;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v64 = sub_181F8C714;
      v65 = v21;
      sub_181F73AE0(&v64, &v63, &v62, &v61);

      v2 = v22;
      _os_log_impl(&dword_181A37000, v22, v49, "%s %s %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v48, -1, -1);
      MEMORY[0x1865DF520](v23, -1, -1);
    }

    else
    {
    }
  }

  if (((v4 | v3) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_5:
  if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
  {
    return 1;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BDBF20);
  v63 = v4;
  v25 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v25);

  MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDBF50);
  v63 = v2;
  v26 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v26);

  MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDBF70);
  v63 = v3;
  v27 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v27);

  v28 = v64;
  v29 = v65;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v30 = sub_182AD2698();
  __swift_project_value_buffer(v30, qword_1EA843418);
  v31 = swift_allocObject();
  *(v31 + 16) = "canSend(packetLength:)";
  *(v31 + 24) = 22;
  *(v31 + 32) = 2;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_181F8C724;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = 1564427099;
  *(v33 + 24) = 0xE400000000000000;
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  *(v34 + 24) = v29;

  v35 = sub_182AD2678();
  v36 = sub_182AD38A8();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_18206B168;
  *(v38 + 24) = v32;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_181F8C718;
  *(v39 + 24) = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_181F8C720;
  *(v41 + 24) = v33;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_181F8C718;
  *(v42 + 24) = v41;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_181F8C720;
  *(v43 + 24) = v34;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_181F8C718;
  *(v44 + 24) = v43;
  v52 = v36;
  v45 = v35;
  if (!os_log_type_enabled(v35, v36))
  {

    return 1;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v61 = v47;
  v62 = 0;
  *v46 = 770;
  v63 = v46 + 2;
  v64 = sub_181F8C728;
  v65 = v37;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v55;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C714;
  v65 = v39;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v40;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v57;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C714;
  v65 = v42;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v59;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C728;
  v65 = v60;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  v64 = sub_181F8C714;
  v65 = v44;
  sub_181F73AE0(&v64, &v63, &v62, &v61);

  _os_log_impl(&dword_181A37000, v45, v52, "%s %s %s", v46, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v47, -1, -1);
  MEMORY[0x1865DF520](v46, -1, -1);

  return 1;
}

uint64_t sub_1820646E8(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);

  return sub_182AD3BF8();
}

char *sub_182064734(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v3;
  v10 = v9 + 32 + (a1 << 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v8);
  v12 = a3 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = (v10 + (a3 << 6));
  v15 = (v9 + 32 + (a2 << 6));
  v16 = v14 << 6;
  v17 = &v15[64 * v14];
  if (result != v15 || result >= v17)
  {
    result = memmove(result, v15, v16);
  }

  v19 = *(v9 + 16);
  v11 = __OFADD__(v19, v12);
  v20 = v19 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v20;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_182064810(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1820648D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for NWEndpoint();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_181F49A88(a4, &unk_1EA839C20);
  }

  if (v17 < 1)
  {
    return sub_181F49A88(a4, &unk_1EA839C20);
  }

  result = sub_181FE4EE0(a4, v15);
  if (v12 >= v17)
  {
    return sub_181F49A88(a4, &unk_1EA839C20);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_182064A58(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_182064AC8(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_182064AF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_182064BD0(unint64_t result, _BYTE *a2, uint64_t *a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 80 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 80 * v7;
  a2 = (v9 + 32 + 80 * v8);
  if (result != a2 || result >= &a2[80 * v14])
  {
    result = memmove(result, a2, 80 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x50uLL);
  a3 = &qword_1EA839C08;
  a2 = v18;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_181AB5D28(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_181AB5D28(a4, v18, &qword_1EA839C08);
}

uint64_t sub_182064CEC(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[1];
  v42 = *a1;
  v43 = v5;
  v44 = a1[2];
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v57 = *(a1 + 208);
  v9 = *(a1 + 8);
  v8 = *(a1 + 9);
  v10 = a1[12];
  v55 = a1[11];
  v56 = v10;
  v11 = a1[8];
  v51 = a1[7];
  v52 = v11;
  v12 = a1[10];
  v53 = a1[9];
  v54 = v12;
  v13 = a1[6];
  v49 = a1[5];
  v50 = v13;
  v45 = v6;
  v46 = v7;
  v47 = v9;
  v48 = v8;
  if ((*(v3 + 1024) & 1) == 0)
  {
    swift_beginAccess();
    if (*(v3 + 139) == 1)
    {
      v41 = 6;
      swift_beginAccess();
      sub_18203BF4C(&v41);
      swift_endAccess();
    }
  }

  if (BYTE8(v43) == 5)
  {
    v14 = v42;
    nw_frame_unclaimed_length(v42);
    v15 = *(v3 + 144);

    v7 = nw_frame_unclaimed_length(v14);
LABEL_15:
    v27 = *(v15 + 56);
    v28 = __CFADD__(v27, v7);
    v29 = v27 + v7;
    if (!v28)
    {
      *(v15 + 56) = v29;

      return sub_18202E758(&v42, a3 & 1);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    v15 = *(v3 + 144);

    v7 = 0;
    goto LABEL_15;
  }

  v16 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v8 - v16;
  if (!__OFSUB__(v8, v16))
  {
    if (v7 > 0xFFFFFFFFLL)
    {
      v7 = *(v3 + 80);
      a3 = *(v3 + 88);
      v17 = qword_1EA837248;

      if (v17 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

    v15 = *(v3 + 144);

    if (v7 < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_11:
  v18 = sub_182AD2698();
  __swift_project_value_buffer(v18, qword_1EA843418);

  v19 = sub_182AD2678();
  v20 = sub_182AD38B8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40[0] = v22;
    *v21 = 136315650;
    v23 = sub_182AD3BF8();
    v25 = sub_181C64FFC(v23, v24, v40);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_181C64FFC(v7, a3, v40);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_181C64FFC(0xD00000000000001FLL, 0x8000000182BDB030, v40);
    _os_log_impl(&dword_181A37000, v19, v20, "%s %s %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v22, -1, -1);
    MEMORY[0x1865DF520](v21, -1, -1);
  }

  else
  {
  }

  Frame.finalize(success:)(0);
  v32 = *(&v42 + 1);
  v31 = v42;
  v33 = v43;
  v34 = BYTE8(v43);
  v35 = v44;
  v36 = v45;
  if (v45 == 2 && v44 == 0)
  {
    if ((v54 & 1) == 0)
    {
      if (v53)
      {
        v37 = v42;
        v38 = v43;
        v39 = BYTE8(v43);
        MEMORY[0x1865DF520](v53, -1, -1);
        v32 = *(&v37 + 1);
        v31 = v37;
        v33 = v38;
        v34 = v39;
      }
    }

    sub_181F68EF4(v31, v32, v33, v34);
  }

  else
  {
    sub_181F68EF4(v42, *(&v42 + 1), v43, BYTE8(v43));

    result = sub_181F68F3C(v35, *(&v35 + 1), v36);
    __break(1u);
  }

  return result;
}

unint64_t sub_1820650DC(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = *v6;
  v10 = *v6 + 32;
  v5 = (v10 + result);
  v6 = (v10 + result + a3);
  if (!v8)
  {
    goto LABEL_13;
  }

  v11 = *(v9 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
    goto LABEL_27;
  }

  v14 = (v10 + a2);
  if (v6 != v14 || v6 >= &v14[v13])
  {
    v16 = a3;
    v17 = a4;
    v18 = a5;
    result = memmove(v6, v14, v13);
    a3 = v16;
    a5 = v18;
    a4 = v17;
  }

  v19 = *(v9 + 16);
  v12 = __OFADD__(v19, v8);
  v20 = v19 + v8;
  if (!v12)
  {
    *(v9 + 16) = v20;
LABEL_13:
    if (a3 < 1)
    {
      return result;
    }

    if ((a5 & 0x1000000000000000) == 0)
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v21 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a4 & 0xFFFFFFFFFFFFLL) != a3)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      v32[0] = a4;
      v32[1] = a5 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(a5) & 0xF) == a3)
      {
        return memcpy(v5, v32, a3);
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    goto LABEL_29;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v22 = 4 << ((a4 & 0x800000000000000) != 0);
  if ((a5 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v23 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v24 = 15;
  while (1)
  {
    result = v24;
    if ((v24 & 0xC) == v22)
    {
      v27 = a4;
      v28 = a5;
      result = sub_18208A330(v24, a4, a5);
      a5 = v28;
      a4 = v27;
      if (v23 <= result >> 16)
      {
        goto LABEL_46;
      }
    }

    else if (v23 <= v24 >> 16)
    {
      goto LABEL_46;
    }

    v25 = a4;
    v26 = a5;
    *v5 = sub_182AD31C8();
    if ((v24 & 0xC) == v22)
    {
      break;
    }

    if (v23 <= v24 >> 16)
    {
      goto LABEL_42;
    }

LABEL_37:
    result = sub_182AD3178();
    a5 = v26;
    a4 = v25;
    v24 = result;
    if (++v5 >= v6)
    {
      return result;
    }
  }

  if (v23 > sub_18208A330(v24, v25, v26) >> 16)
  {
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v29 = a3;
  result = sub_182AD3CF8();
  a3 = v29;
  v31 = v30;
  v21 = result;
  if (v31 != v29)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_18:
  if (!v21)
  {
    goto LABEL_47;
  }

  return memcpy(v5, v21, a3);
}

void sub_182065328()
{
  if (qword_1EA837210 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EA8433D0;
  if ((xmmword_1EA8433D0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12[0] = 8;
    v12[1] = xmmword_1EA8433D0;
    v12[2] = 0;
    v12[3] = 0;
    v12[5] = 0;
    v12[6] = 0;
    v12[4] = 0x4000000000000000;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *(v0 + 288);
    *(v0 + 288) = 0x8000000000000000;
    sub_182258A90(v12, 8, isUniquelyReferenced_nonNull_native);
    *(v0 + 288) = v11[0];
    v11[0] = 9;
    v11[1] = v1;
    v11[2] = 0;
    v11[3] = 0;
    v11[5] = 0;
    v11[6] = 0;
    v11[4] = 0x4800000000000000;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 288);
    *(v0 + 288) = 0x8000000000000000;
    sub_182258A90(v11, 9, v3);
    *(v0 + 288) = v10;
    swift_endAccess();
    v4 = *(v0 + 1024);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    swift_beginAccess();

    sub_182025C3C(v4, v1, v5, v6);
    swift_endAccess();

    v7 = *(v0 + 1024);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    swift_beginAccess();

    sub_182025C3C(v7, v1, v8, v9);
    swift_endAccess();
  }
}

uint64_t sub_1820654E4(uint64_t result)
{
  if (*(result + 24))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = result;
  v4 = *(result + 16);
  v5 = *(v1 + 1024);
  v6 = *(v2 + 280);
  swift_beginAccess();
  v7 = *(v2 + 288);
  result = sub_181F9E4E8(v5, v6, v4);
  if (*(v3 + 24))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_181F9E654(v5, v7, *(v3 + 16));
  if ((result | v8) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;

  sub_18220EA24(v8, v9);

  swift_beginAccess();
  if (*(v3 + 368) == 1 && (*(v3 + 373) & 0x40) == 0)
  {
    swift_beginAccess();
    sub_1820265B0(v3);
    swift_endAccess();
    swift_beginAccess();
    sub_182023D88(v3);
    swift_endAccess();
  }

  return sub_182048A70(v3, 1);
}

uint64_t sub_182065660(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 1024) != 1 || *(a2 + 168) == 0 || *(a2 + 81) != 0)
  {
    return 0;
  }

  v5 = *(a2 + 88);
  v6 = *(a2 + 152);
  result = swift_beginAccess();
  v8 = *(v2 + 139);
  if ((v8 | 2) == 3)
  {
    if (v6 == 2)
    {
      return 0;
    }
  }

  else if (v8 != 2 || v6 == 2)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    v10 = v5;
    type metadata accessor for Protector();
    swift_allocObject();

    *(v2 + 376) = sub_18223E444(0, &v10);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_182065748(uint64_t a1)
{
  v2 = *(a1 + 81);
  if (v2 == 5)
  {
    v29 = *(v1 + 80);
    v28 = *(v1 + 88);
    v30 = qword_1EA837248;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = sub_182AD2698();
    __swift_project_value_buffer(v31, qword_1EA843418);

    v32 = sub_182AD2678();
    v33 = sub_182AD38B8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315650;
      v36 = sub_182AD3BF8();
      v38 = sub_181C64FFC(v36, v37, &v48);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = sub_181C64FFC(v29, v28, &v48);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_181C64FFC(0xD00000000000002ALL, 0x8000000182BDBD20, &v48);
      _os_log_impl(&dword_181A37000, v32, v33, "%s %s %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v35, -1, -1);
      MEMORY[0x1865DF520](v34, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v5 = *(a1 + 104);
    v6 = *(a1 + 112);
    if (v2 != *(v1 + 304))
    {
      v7 = *(v1 + 88);
      v46 = *(v1 + 80);
      v47 = v1;

      sub_182AD3BA8();

      v48 = 0xD000000000000016;
      v49 = 0x8000000182BDBD50;
      v8 = 0xE700000000000000;
      v9 = 0x6C616974696E69;
      v10 = 0xE500000000000000;
      v11 = 0x7474722D30;
      v12 = 3174507;
      if (v2 != 3)
      {
        v12 = 3240043;
      }

      if (v2 != 2)
      {
        v11 = v12;
        v10 = 0xE300000000000000;
      }

      if (v2)
      {
        v9 = 0x6B616873646E6168;
        v8 = 0xE900000000000065;
      }

      if (v2 <= 1)
      {
        v13 = v9;
      }

      else
      {
        v13 = v11;
      }

      if (v2 <= 1)
      {
        v14 = v8;
      }

      else
      {
        v14 = v10;
      }

      MEMORY[0x1865D9CA0](v13, v14);

      v15 = v49;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v16 = sub_182AD2698();
      __swift_project_value_buffer(v16, qword_1EA843418);

      v17 = sub_182AD2678();
      v18 = sub_182AD38D8();

      v45 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v42 = v48;
        v19 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v19 = 136315650;
        v20 = sub_182AD3BF8();
        v44 = v6;
        v22 = v5;
        v23 = v4;
        v24 = v3;
        v25 = sub_181C64FFC(v20, v21, &v48);

        *(v19 + 4) = v25;
        *(v19 + 12) = 2080;
        v26 = sub_181C64FFC(v46, v7, &v48);

        *(v19 + 14) = v26;
        *(v19 + 22) = 2080;
        v3 = v24;
        v4 = v23;
        v5 = v22;
        v6 = v44;
        v27 = sub_181C64FFC(v42, v15, &v48);

        *(v19 + 24) = v27;
        _os_log_impl(&dword_181A37000, v17, v45, "%s %s %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v43, -1, -1);
        MEMORY[0x1865DF520](v19, -1, -1);
      }

      else
      {
      }

      v1 = v47;
      *(v47 + 304) = v2;
    }

    v40 = *(v1 + 328);

    sub_182297830(v5, v3, v4, v40, v6, v5);
  }

  return v2 != 5;
}

unint64_t sub_182065C64(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_182065D0C(void *result, char a2)
{
  v3 = result[4];
  v4 = result[1] >> 59;
  if (v4 == 9)
  {
    v156 = result[2];
    v155 = result[3];
    swift_beginAccess();
    v157 = sub_181FD1138(v155, v3);
    result = swift_endAccess();
    if (v157)
    {
      v158 = *(v156 + 32);
      v159 = *(v156 + 40);
      swift_beginAccess();

      sub_181F6C974(v158, v159, 5u);
      swift_endAccess();
    }
  }

  else if (v4 == 2)
  {
    v233 = result[6];
    v232 = *(v233 + 16);
    if (v232)
    {
      v5 = v2;
      v6 = a2;
      v7 = 0;
      v8 = v233 + 32;
      v228 = v5;
      while (1)
      {
        v9 = *(v8 + 16 * v7 + 8);
        v10 = v3 - v9;
        if (v3 < v9)
        {
          goto LABEL_142;
        }

        if (((v10 | v3) & 0x8000000000000000) != 0)
        {
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v11 = *(v5 + 328);
        if (!v6)
        {
          break;
        }

        if (v6 == 1)
        {
          swift_beginAccess();
          v12 = *(v11 + 104);
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = 0;
            v15 = (v12 + 40);
            while (*(v15 - 1) != v10 || *v15 != v3)
            {
              v15 += 2;
              if (v13 == ++v14)
              {

                goto LABEL_56;
              }
            }

            v231 = v7;
            v39 = qword_1EA837250;

            if (v39 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
            {
              *&v243 = 0;
              *(&v243 + 1) = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDB540);
              *&v237 = v10;
              v69 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v69);

              MEMORY[0x1865D9CA0](45, 0xE100000000000000);
              *&v237 = v3;
              v70 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v70);

              MEMORY[0x1865D9CA0](0x65646E6920746120, 0xEA00000000002078);
              *&v237 = v14;
              v71 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v71);

              MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BDB560);
              *&v237 = *(v12 + 16);
              v72 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v72);

              v73 = *(&v243 + 1);
              v222 = v243;
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v74 = sub_182AD2698();
              __swift_project_value_buffer(v74, qword_1EA843418);
              v75 = swift_allocObject();
              *(v75 + 16) = "acknowledged(between:and:)";
              *(v75 + 24) = 26;
              *(v75 + 32) = 2;
              v76 = swift_allocObject();
              *(v76 + 16) = sub_181F8C724;
              *(v76 + 24) = v75;
              v77 = swift_allocObject();
              *(v77 + 16) = 1564427099;
              *(v77 + 24) = 0xE400000000000000;
              bufd = swift_allocObject();
              *(bufd + 2) = v222;
              *(bufd + 3) = v73;

              oslog = sub_182AD2678();
              v78 = sub_182AD38A8();
              v177 = swift_allocObject();
              *(v177 + 16) = 32;
              v186 = swift_allocObject();
              *(v186 + 16) = 8;
              v79 = swift_allocObject();
              *(v79 + 16) = sub_18206B168;
              *(v79 + 24) = v76;
              v80 = swift_allocObject();
              *(v80 + 16) = sub_181F8C718;
              *(v80 + 24) = v79;
              v191 = v80;
              v196 = swift_allocObject();
              *(v196 + 16) = 32;
              v201 = swift_allocObject();
              *(v201 + 16) = 8;
              v81 = swift_allocObject();
              *(v81 + 16) = sub_181F8C720;
              *(v81 + 24) = v77;
              v82 = swift_allocObject();
              *(v82 + 16) = sub_181F8C718;
              *(v82 + 24) = v81;
              v208 = v82;
              v215 = swift_allocObject();
              *(v215 + 16) = 32;
              v223 = swift_allocObject();
              *(v223 + 16) = 8;
              v83 = swift_allocObject();
              *(v83 + 16) = sub_181F8C720;
              *(v83 + 24) = bufd;
              v84 = swift_allocObject();
              *(v84 + 16) = sub_181F8C718;
              *(v84 + 24) = v83;
              buf = v78;
              if (os_log_type_enabled(oslog, v78))
              {
                v162 = v84;
                v85 = swift_slowAlloc();
                v86 = swift_slowAlloc();
                v236[0] = 0;
                *v85 = 770;
                v252[0] = v86;
                *&v237 = v85 + 2;
                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v177;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v186;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C714;
                *(&v243 + 1) = v191;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v196;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v201;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C714;
                *(&v243 + 1) = v208;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v215;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v223;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C714;
                *(&v243 + 1) = v162;
                sub_181F73AE0(&v243, &v237, v236, v252);

                _os_log_impl(&dword_181A37000, oslog, buf, "%s %s %s", v85, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v86, -1, -1);
                MEMORY[0x1865DF520](v85, -1, -1);
              }

              else
              {
              }

              v5 = v228;
              v6 = a2;
            }

            sub_1820233F4(v14);
            v40 = *(v11 + 176);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_148;
            }

            *(v11 + 176) = v42;
            v8 = v233 + 32;
            v7 = v231;
            goto LABEL_57;
          }

LABEL_37:

LABEL_57:
          swift_endAccess();

          goto LABEL_58;
        }

        v230 = v7;
        if ((*(v11 + 240) & 0x10) != 0)
        {
          swift_beginAccess();
          v29 = *(v11 + 192);
          v30 = *(v29 + 16);
          if (!v30)
          {

            goto LABEL_85;
          }

          v31 = 0;
          v32 = v30 - 1;
          v33 = 32;
          while (1)
          {
            v34 = *(v29 + v33 + 16);
            v249[0] = *(v29 + v33);
            v249[1] = v34;
            v35 = *(v29 + v33 + 32);
            v36 = *(v29 + v33 + 48);
            v37 = *(v29 + v33 + 64);
            v251 = *(v29 + v33 + 80);
            v249[3] = v36;
            v250 = v37;
            v249[2] = v35;
            v38 = *&v249[0];
            v245 = *(v29 + v33 + 32);
            v246 = *(v29 + v33 + 48);
            v247 = *(v29 + v33 + 64);
            v248 = *(v29 + v33 + 80);
            v243 = *(v29 + v33);
            v244 = *(v29 + v33 + 16);
            if (v37 == 1)
            {
              break;
            }

            v239 = v245;
            v240 = v246;
            v241 = v247;
            v242 = v248;
            v237 = v243;
            v238 = v244;
            sub_18206AD2C(v249, v236);
            sub_18206AD88(&v237);
            if (v32 == v31)
            {

              v5 = v228;
LABEL_85:
              v235 = 1;
              swift_beginAccess();
              v56 = *(v11 + 192);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v11 + 192) = v56;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v56 = sub_181F598B0(0, *(v56 + 2) + 1, 1, v56);
                *(v11 + 192) = v56;
              }

              v59 = *(v56 + 2);
              v58 = *(v56 + 3);
              if (v59 >= v58 >> 1)
              {
                v56 = sub_181F598B0((v58 > 1), v59 + 1, 1, v56);
              }

              *(v56 + 2) = v59 + 1;
              v60 = &v56[88 * v59];
              *(v60 + 4) = MEMORY[0x1E69E7CC0];
              v61 = v60 + 32;
              *(v61 + 8) = 0u;
              *(v61 + 24) = 0u;
              *(v61 + 5) = -1;
              *(v61 + 6) = -1;
              *(v61 + 7) = 0;
              v61[64] = 1;
              v62 = *(&v234 + 3);
              *(v61 + 65) = v234;
              *(v61 + 17) = v62;
              *(v61 + 9) = 0;
              v61[80] = 1;
              *(v11 + 192) = v56;
              if (v59 < *(v56 + 2))
              {
                v63 = *(*v61 + 16);
                if (v63)
                {
                  v64 = 0;
                  v65 = (*v61 + 40);
                  v7 = v230;
                  while (*(v65 - 1) != v10 || *v65 != v3)
                  {
                    v65 += 2;
                    if (v63 == ++v64)
                    {
                      goto LABEL_105;
                    }
                  }

                  if (qword_1EA837250 != -1)
                  {
                    swift_once();
                  }

                  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
                  {
                    *&v243 = 0;
                    *(&v243 + 1) = 0xE000000000000000;
                    sub_182AD3BA8();
                    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDB540);
                    *&v237 = v10;
                    v121 = sub_182AD41B8();
                    MEMORY[0x1865D9CA0](v121);

                    MEMORY[0x1865D9CA0](45, 0xE100000000000000);
                    *&v237 = v3;
                    v122 = sub_182AD41B8();
                    MEMORY[0x1865D9CA0](v122);

                    MEMORY[0x1865D9CA0](0x65646E6920746120, 0xEA00000000002078);
                    *&v237 = v64;
                    v123 = sub_182AD41B8();
                    MEMORY[0x1865D9CA0](v123);

                    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BDB560);
                    *&v237 = *(*v61 + 16);
                    v124 = sub_182AD41B8();
                    MEMORY[0x1865D9CA0](v124);

                    v219 = *(&v243 + 1);
                    v226 = v243;
                    if (qword_1EA837248 != -1)
                    {
                      swift_once();
                    }

                    v125 = sub_182AD2698();
                    __swift_project_value_buffer(v125, qword_1EA843418);
                    v126 = swift_allocObject();
                    *(v126 + 16) = "acknowledged(between:and:)";
                    *(v126 + 24) = 26;
                    *(v126 + 32) = 2;
                    v127 = swift_allocObject();
                    *(v127 + 16) = sub_181F8C724;
                    *(v127 + 24) = v126;
                    v205 = swift_allocObject();
                    *(v205 + 16) = 1564427099;
                    *(v205 + 24) = 0xE400000000000000;
                    v212 = swift_allocObject();
                    *(v212 + 16) = v226;
                    *(v212 + 24) = v219;

                    v227 = sub_182AD2678();
                    v164 = sub_182AD38A8();
                    bufb = swift_allocObject();
                    bufb[16] = 32;
                    oslogb = swift_allocObject();
                    LOBYTE(oslogb[2].isa) = 8;
                    v128 = swift_allocObject();
                    *(v128 + 16) = sub_18206B168;
                    *(v128 + 24) = v127;
                    v129 = swift_allocObject();
                    *(v129 + 16) = sub_181F8C718;
                    *(v129 + 24) = v128;
                    v180 = v129;
                    v184 = swift_allocObject();
                    *(v184 + 16) = 32;
                    v189 = swift_allocObject();
                    *(v189 + 16) = 8;
                    v130 = swift_allocObject();
                    *(v130 + 16) = sub_181F8C720;
                    *(v130 + 24) = v205;
                    v131 = swift_allocObject();
                    *(v131 + 16) = sub_181F8C718;
                    *(v131 + 24) = v130;
                    v194 = v131;
                    v199 = swift_allocObject();
                    *(v199 + 16) = 32;
                    v206 = swift_allocObject();
                    *(v206 + 16) = 8;
                    v132 = swift_allocObject();
                    *(v132 + 16) = sub_181F8C720;
                    *(v132 + 24) = v212;
                    v133 = swift_allocObject();
                    *(v133 + 16) = sub_181F8C718;
                    *(v133 + 24) = v132;
                    v213 = v133;
                    if (os_log_type_enabled(v227, v164))
                    {
                      v134 = swift_slowAlloc();
                      v135 = swift_slowAlloc();
                      v236[0] = 0;
                      v136 = v134;
                      *v134 = 770;
                      v137 = v134 + 2;
                      v138 = v135;
                      v252[0] = v135;
                      *&v237 = v137;
                      *&v243 = sub_181F8C728;
                      *(&v243 + 1) = bufb;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C728;
                      *(&v243 + 1) = oslogb;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C714;
                      *(&v243 + 1) = v180;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C728;
                      *(&v243 + 1) = v184;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C728;
                      *(&v243 + 1) = v189;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C714;
                      *(&v243 + 1) = v194;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C728;
                      *(&v243 + 1) = v199;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C728;
                      *(&v243 + 1) = v206;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      *&v243 = sub_181F8C714;
                      *(&v243 + 1) = v213;
                      sub_181F73AE0(&v243, &v237, v236, v252);

                      _os_log_impl(&dword_181A37000, v227, v164, "%s %s %s", v136, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x1865DF520](v138, -1, -1);
                      MEMORY[0x1865DF520](v136, -1, -1);
                    }

                    else
                    {
                    }

                    v5 = v228;
                  }

                  sub_1820233F4(v64);
                  v67 = *(v61 + 9);
                  v41 = __OFADD__(v67, 1);
                  v68 = v67 + 1;
                  if (!v41)
                  {
                    *(v61 + 9) = v68;
                    goto LABEL_104;
                  }

LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);

                  while (1)
                  {

                    __break(1u);
                  }
                }

LABEL_104:
                v7 = v230;
LABEL_105:
                *(v11 + 192) = v56;
                swift_endAccess();
                goto LABEL_106;
              }

LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            ++v31;
            v33 += 88;
            if (v31 >= *(v29 + 16))
            {
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }
          }

          sub_18206AD2C(v249, &v237);

          v52 = *(v38 + 16);
          v5 = v228;
          if (v52)
          {
            v53 = 0;
            v54 = (v38 + 40);
            v7 = v230;
            while (*(v54 - 1) != v10 || *v54 != v3)
            {
              ++v53;
              v54 += 2;
              if (v52 == v53)
              {
                goto LABEL_83;
              }
            }

            v55 = *(&v250 + 1);
            if (qword_1EA837250 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
            {
              *&v237 = 0;
              *(&v237 + 1) = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDB540);
              v236[0] = v10;
              v139 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v139);

              MEMORY[0x1865D9CA0](45, 0xE100000000000000);
              v236[0] = v3;
              v140 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v140);

              MEMORY[0x1865D9CA0](0x65646E6920746120, 0xEA00000000002078);
              v236[0] = v53;
              v141 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v141);

              MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BDB560);
              v236[0] = *(v38 + 16);
              v142 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v142);

              v220 = v237;
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v143 = sub_182AD2698();
              __swift_project_value_buffer(v143, qword_1EA843418);
              v144 = swift_allocObject();
              *(v144 + 16) = "acknowledged(between:and:)";
              *(v144 + 24) = 26;
              *(v144 + 32) = 2;
              v145 = swift_allocObject();
              *(v145 + 16) = sub_181F8C724;
              *(v145 + 24) = v144;
              v146 = swift_allocObject();
              *(v146 + 16) = 1564427099;
              *(v146 + 24) = 0xE400000000000000;
              v165 = swift_allocObject();
              *(v165 + 16) = v220;

              bufc = sub_182AD2678();
              oslogc = sub_182AD38A8();
              v181 = swift_allocObject();
              *(v181 + 16) = 32;
              v185 = swift_allocObject();
              *(v185 + 16) = 8;
              v147 = swift_allocObject();
              *(v147 + 16) = sub_18206B168;
              *(v147 + 24) = v145;
              v148 = swift_allocObject();
              *(v148 + 16) = sub_181F8C718;
              *(v148 + 24) = v147;
              v190 = v148;
              v195 = swift_allocObject();
              *(v195 + 16) = 32;
              v200 = swift_allocObject();
              *(v200 + 16) = 8;
              v149 = swift_allocObject();
              *(v149 + 16) = sub_181F8C720;
              *(v149 + 24) = v146;
              v150 = swift_allocObject();
              *(v150 + 16) = sub_181F8C718;
              *(v150 + 24) = v149;
              v207 = v150;
              v214 = swift_allocObject();
              *(v214 + 16) = 32;
              v221 = swift_allocObject();
              *(v221 + 16) = 8;
              v151 = swift_allocObject();
              *(v151 + 16) = sub_181F8C720;
              *(v151 + 24) = v165;
              v152 = swift_allocObject();
              *(v152 + 16) = sub_181F8C718;
              *(v152 + 24) = v151;
              if (os_log_type_enabled(bufc, oslogc))
              {
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                v252[0] = 0;
                *v153 = 770;
                v166 = v154;
                v234 = v154;
                v236[0] = v153 + 2;
                *&v237 = sub_181F8C728;
                *(&v237 + 1) = v181;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C728;
                *(&v237 + 1) = v185;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C714;
                *(&v237 + 1) = v190;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C728;
                *(&v237 + 1) = v195;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C728;
                *(&v237 + 1) = v200;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C714;
                *(&v237 + 1) = v207;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C728;
                *(&v237 + 1) = v214;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C728;
                *(&v237 + 1) = v221;
                sub_181F73AE0(&v237, v236, v252, &v234);

                *&v237 = sub_181F8C714;
                *(&v237 + 1) = v152;
                sub_181F73AE0(&v237, v236, v252, &v234);

                _os_log_impl(&dword_181A37000, bufc, oslogc, "%s %s %s", v153, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v166, -1, -1);
                MEMORY[0x1865DF520](v153, -1, -1);
              }

              else
              {
              }

              v5 = v228;
            }

            sub_1820233F4(v53);
            if (__OFADD__(v55, 1))
            {
              goto LABEL_152;
            }

            *(&v247 + 1) = v55 + 1;
          }

          v7 = v230;
LABEL_83:
          v239 = v245;
          v240 = v246;
          v241 = v247;
          v242 = v248;
          v237 = v243;
          v238 = v244;
          sub_18206AD88(&v237);
LABEL_106:

          v6 = a2;
          v8 = v233 + 32;
        }

        else
        {
          swift_beginAccess();
          v22 = *(v11 + 192);

          v23 = swift_isUniquelyReferenced_nonNull_native();
          *(v11 + 192) = v22;
          if (v23)
          {
            if (!*(v22 + 2))
            {
              goto LABEL_146;
            }
          }

          else
          {
            v22 = sub_182083548(v22);
            *(v11 + 192) = v22;
            if (!*(v22 + 2))
            {
              goto LABEL_146;
            }
          }

          v24 = *(v22 + 4);
          v25 = *(v24 + 16);
          if (v25)
          {
            v26 = 0;
            v27 = (v24 + 40);
            while (*(v27 - 1) != v10 || *v27 != v3)
            {
              v27 += 2;
              if (v25 == ++v26)
              {
                goto LABEL_70;
              }
            }

            if (qword_1EA837250 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
            {
              *&v243 = 0;
              *(&v243 + 1) = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDB540);
              *&v237 = v10;
              v104 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v104);

              MEMORY[0x1865D9CA0](45, 0xE100000000000000);
              *&v237 = v3;
              v105 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v105);

              MEMORY[0x1865D9CA0](0x65646E6920746120, 0xEA00000000002078);
              *&v237 = v26;
              v106 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v106);

              MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BDB560);
              *&v237 = *(*(v22 + 4) + 16);
              v107 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v107);

              v108 = *(&v243 + 1);
              v203 = v243;
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v109 = sub_182AD2698();
              __swift_project_value_buffer(v109, qword_1EA843418);
              v110 = swift_allocObject();
              *(v110 + 16) = "acknowledged(between:and:)";
              *(v110 + 24) = 26;
              *(v110 + 32) = 2;
              v111 = swift_allocObject();
              *(v111 + 16) = sub_181F8C724;
              *(v111 + 24) = v110;
              v210 = swift_allocObject();
              *(v210 + 16) = 1564427099;
              *(v210 + 24) = 0xE400000000000000;
              v217 = swift_allocObject();
              *(v217 + 16) = v203;
              *(v217 + 24) = v108;

              bufa = sub_182AD2678();
              v112 = sub_182AD38A8();
              v179 = swift_allocObject();
              *(v179 + 16) = 32;
              v183 = swift_allocObject();
              *(v183 + 16) = 8;
              v113 = swift_allocObject();
              *(v113 + 16) = sub_18206B168;
              *(v113 + 24) = v111;
              v114 = swift_allocObject();
              *(v114 + 16) = sub_181F8C718;
              *(v114 + 24) = v113;
              v188 = swift_allocObject();
              *(v188 + 16) = 32;
              v193 = swift_allocObject();
              *(v193 + 16) = 8;
              v115 = swift_allocObject();
              *(v115 + 16) = sub_181F8C720;
              *(v115 + 24) = v210;
              v116 = swift_allocObject();
              *(v116 + 16) = sub_181F8C718;
              *(v116 + 24) = v115;
              v198 = v116;
              v204 = swift_allocObject();
              *(v204 + 16) = 32;
              v211 = swift_allocObject();
              *(v211 + 16) = 8;
              v117 = swift_allocObject();
              *(v117 + 16) = sub_181F8C720;
              *(v117 + 24) = v217;
              v118 = swift_allocObject();
              *(v118 + 16) = sub_181F8C718;
              *(v118 + 24) = v117;
              v218 = v118;
              v163 = v112;
              if (os_log_type_enabled(bufa, v112))
              {
                v119 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                v236[0] = 0;
                *v119 = 770;
                v161 = v120;
                v252[0] = v120;
                *&v237 = v119 + 2;
                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v179;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v183;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C714;
                *(&v243 + 1) = v114;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v188;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v193;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C714;
                *(&v243 + 1) = v198;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v204;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C728;
                *(&v243 + 1) = v211;
                sub_181F73AE0(&v243, &v237, v236, v252);

                *&v243 = sub_181F8C714;
                *(&v243 + 1) = v218;
                sub_181F73AE0(&v243, &v237, v236, v252);

                _os_log_impl(&dword_181A37000, bufa, v163, "%s %s %s", v119, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v161, -1, -1);
                MEMORY[0x1865DF520](v119, -1, -1);
              }

              else
              {
              }

              v5 = v228;
              v6 = a2;
            }

            sub_1820233F4(v26);
            v50 = *(v22 + 13);
            v41 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v41)
            {
              goto LABEL_150;
            }

            *(v22 + 13) = v51;
          }

LABEL_70:
          *(v11 + 192) = v22;
          swift_endAccess();

          v8 = v233 + 32;
          v7 = v230;
        }

LABEL_58:
        if (++v7 != *(v233 + 16))
        {
          v47 = *(v8 + 16 * v7);
          v48 = v10 >= v47;
          v49 = v10 - v47;
          if (!v48)
          {
            goto LABEL_144;
          }

          v3 = v49 - 2;
          if (v49 < 2)
          {
            goto LABEL_145;
          }
        }

        if (v7 == v232)
        {
          return result;
        }
      }

      swift_beginAccess();
      v17 = *(v11 + 16);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = (v17 + 40);
        while (*(v20 - 1) != v10 || *v20 != v3)
        {
          v20 += 2;
          if (v18 == ++v19)
          {

            v6 = a2;
            goto LABEL_57;
          }
        }

        v43 = v7;
        v44 = qword_1EA837250;

        if (v44 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
        {
          *&v243 = 0;
          *(&v243 + 1) = 0xE000000000000000;
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDB540);
          *&v237 = v10;
          v87 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v87);

          MEMORY[0x1865D9CA0](45, 0xE100000000000000);
          *&v237 = v3;
          v88 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v88);

          MEMORY[0x1865D9CA0](0x65646E6920746120, 0xEA00000000002078);
          *&v237 = v19;
          v89 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v89);

          MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BDB560);
          *&v237 = *(v17 + 16);
          v90 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v90);

          v91 = *(&v243 + 1);
          v224 = v243;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v92 = sub_182AD2698();
          __swift_project_value_buffer(v92, qword_1EA843418);
          v93 = swift_allocObject();
          *(v93 + 16) = "acknowledged(between:and:)";
          *(v93 + 24) = 26;
          *(v93 + 32) = 2;
          v94 = swift_allocObject();
          *(v94 + 16) = sub_181F8C724;
          *(v94 + 24) = v93;
          v95 = swift_allocObject();
          *(v95 + 16) = 1564427099;
          *(v95 + 24) = 0xE400000000000000;
          bufe = swift_allocObject();
          *(bufe + 2) = v224;
          *(bufe + 3) = v91;

          v225 = sub_182AD2678();
          v216 = sub_182AD38A8();
          osloga = swift_allocObject();
          LOBYTE(osloga[2].isa) = 32;
          v178 = swift_allocObject();
          *(v178 + 16) = 8;
          v96 = swift_allocObject();
          *(v96 + 16) = sub_18206B168;
          *(v96 + 24) = v94;
          v97 = swift_allocObject();
          *(v97 + 16) = sub_181F8C718;
          *(v97 + 24) = v96;
          v182 = v97;
          v187 = swift_allocObject();
          *(v187 + 16) = 32;
          v192 = swift_allocObject();
          *(v192 + 16) = 8;
          v98 = swift_allocObject();
          *(v98 + 16) = sub_181F8C720;
          *(v98 + 24) = v95;
          v99 = swift_allocObject();
          *(v99 + 16) = sub_181F8C718;
          *(v99 + 24) = v98;
          v197 = v99;
          v202 = swift_allocObject();
          *(v202 + 16) = 32;
          v209 = swift_allocObject();
          *(v209 + 16) = 8;
          v100 = swift_allocObject();
          *(v100 + 16) = sub_181F8C720;
          *(v100 + 24) = bufe;
          v101 = swift_allocObject();
          *(v101 + 16) = sub_181F8C718;
          *(v101 + 24) = v100;
          if (os_log_type_enabled(v225, v216))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v236[0] = 0;
            *v102 = 770;
            v160 = v103;
            v252[0] = v103;
            *&v237 = v102 + 2;
            *&v243 = sub_181F8C728;
            *(&v243 + 1) = osloga;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C728;
            *(&v243 + 1) = v178;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C714;
            *(&v243 + 1) = v182;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C728;
            *(&v243 + 1) = v187;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C728;
            *(&v243 + 1) = v192;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C714;
            *(&v243 + 1) = v197;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C728;
            *(&v243 + 1) = v202;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C728;
            *(&v243 + 1) = v209;
            sub_181F73AE0(&v243, &v237, v236, v252);

            *&v243 = sub_181F8C714;
            *(&v243 + 1) = v101;
            sub_181F73AE0(&v243, &v237, v236, v252);

            _os_log_impl(&dword_181A37000, v225, v216, "%s %s %s", v102, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v160, -1, -1);
            MEMORY[0x1865DF520](v102, -1, -1);
          }

          else
          {
          }

          v5 = v228;
        }

        sub_1820233F4(v19);
        v45 = *(v11 + 88);
        v41 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v41)
        {
          goto LABEL_149;
        }

        *(v11 + 88) = v46;
        v6 = a2;
        v7 = v43;
LABEL_56:
        v8 = v233 + 32;
        goto LABEL_57;
      }

      goto LABEL_37;
    }
  }

  return result;
}

unint64_t sub_182068D70(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_182068E48()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = qword_1EA837250;

  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);
    v6 = swift_allocObject();
    *(v6 + 16) = "processDataBlocked(frame:)";
    *(v6 + 24) = 26;
    *(v6 + 32) = 2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_181F8C724;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v1;
    v9 = swift_allocObject();
    *(v9 + 16) = 0xD00000000000001ALL;
    *(v9 + 24) = 0x8000000182BDB9A0;

    oslog = sub_182AD2678();
    v26 = sub_182AD38A8();
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v10 = swift_allocObject();
    *(v10 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18206B168;
    *(v11 + 24) = v7;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C718;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = 32;
    v14 = swift_allocObject();
    *(v14 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C720;
    *(v15 + 24) = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = 32;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v9;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    if (os_log_type_enabled(oslog, v26))
    {
      v23 = v13;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      v31 = 0;
      *v20 = 770;
      v22 = v21;
      v32 = v20 + 2;
      v28 = sub_181F8C728;
      v29 = v25;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v10;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C714;
      v29 = v12;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v23;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v14;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C714;
      v29 = v16;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v17;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v27;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C714;
      v29 = v19;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      _os_log_impl(&dword_181A37000, oslog, v26, "%s %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);

      return 1;
    }
  }

  return 1;
}

uint64_t sub_18206957C(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 72);
  if (!v4)
  {
    v16 = *(v2 + 80);
    v15 = *(v2 + 88);
    v17 = qword_1EA837248;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843418);

    v19 = sub_182AD2678();
    v20 = sub_182AD38B8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v122[0] = v22;
      *v21 = 136315650;
      v23 = sub_182AD3BF8();
      v25 = sub_181C64FFC(v23, v24, v122);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_181C64FFC(v16, v15, v122);

      *(v21 + 14) = v26;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BDBB10, v122);
      _os_log_impl(&dword_181A37000, v19, v20, "%s %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v7 = (v2 + 216);
  v8 = a1[4];
  v9 = a1[5];
  swift_beginAccess();
  v10 = *(v2 + 232);
  v121[0] = *(v2 + 216);
  v121[1] = v10;
  v11 = *(v2 + 264);
  v121[2] = *(v2 + 248);
  v121[3] = v11;
  v12 = *(v2 + 232);
  v117 = *(v2 + 216);
  v118 = v12;
  v13 = *(v2 + 264);
  v119 = *(v2 + 248);
  v120 = v13;
  *&v109[0] = v8;
  sub_1822C38F8(v109, &v110);
  sub_18206AE38(v121, v116);

  v122[0] = v117;
  v122[1] = v118;
  v122[2] = v119;
  v122[3] = v120;
  sub_18206AE94(v122);
  if (*(&v110 + 1))
  {
    sub_18206A1F0(v110, *(&v110 + 1));
    return 1;
  }

  if ((v6 & 0x8000000000000000) != 0 || v6 < v5)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v40 = sub_182AD2698();
    __swift_project_value_buffer(v40, qword_1EA843418);
    v41 = sub_182AD2678();
    v42 = sub_182AD38B8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v117 = v44;
      *v43 = 136315650;
      v45 = sub_182AD3BF8();
      v47 = sub_181C64FFC(v45, v46, &v117);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v117);
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_181C64FFC(0xD000000000000054, 0x8000000182BDBBB0, &v117);
      _os_log_impl(&dword_181A37000, v41, v42, "%s %s %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v44, -1, -1);
      MEMORY[0x1865DF520](v43, -1, -1);
    }

    v48 = *(v3 + 1144);
    v49 = *(v3 + 1152);
    *(v3 + 1144) = 0xD00000000000002DLL;
    *(v3 + 1152) = 0x8000000182BDBC10;
    v50 = *(v3 + 1160);
    *(v3 + 1160) = 4;
    sub_182023268(v48, v49, v50);
    return 0;
  }

  swift_beginAccess();
  v27 = *(v2 + 288);
  v99 = v9;
  v100 = v6;
  if (*(v27 + 16) && (v28 = sub_18224F168(14), (v29 & 1) != 0))
  {
    v30 = (*(v27 + 56) + 56 * v28);
    v31 = *v30;
    v32 = v30[2];
    v33 = v30[3];
    v35 = v30[4];
    v34 = v30[5];
    v36 = v30[6];
    v98 = v30[1];
    sub_18206A3C4(*v30, v98, v32, v33, v35);
    v37 = v36;
    v38 = v31;
    v39 = v34;
  }

  else
  {
    v98 = 0;
    v32 = 0;
    v33 = 0;
    v35 = 0;
    v39 = 0;
    v37 = 0;
    v38 = 0x1FFFFFFFE0;
  }

  if (*(v3 + 248))
  {
    v51 = *(*(v3 + 216) + 16) + 1;
  }

  else
  {
    v51 = *(*(v3 + 216) + 16);
  }

  if (v38 >> 5 != 0xFFFFFFFF || HIDWORD(v35))
  {
    *&v117 = v38;
    *(&v117 + 1) = v98;
    *&v118 = v32;
    *(&v118 + 1) = v33;
    *&v119 = v35;
    *(&v119 + 1) = v39;
    *&v120 = v37;
    v62 = v38;
    v63 = sub_1822CDE04();
    sub_18206AEE8(v62, v98, v32, v33, v35);
    if (v51 < v63)
    {
      goto LABEL_28;
    }

LABEL_35:
    v65 = *(v3 + 80);
    v64 = *(v3 + 88);
    v66 = qword_1EA837248;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = sub_182AD2698();
    __swift_project_value_buffer(v67, qword_1EA843418);

    v68 = sub_182AD2678();
    v69 = sub_182AD3898();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v117 = v71;
      *v70 = 136315650;
      v72 = sub_182AD3BF8();
      v74 = sub_181C64FFC(v72, v73, &v117);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = sub_181C64FFC(v65, v64, &v117);

      *(v70 + 14) = v75;
      *(v70 + 22) = 2080;
      *(v70 + 24) = sub_181C64FFC(0xD00000000000003CLL, 0x8000000182BDBB30, &v117);
      _os_log_impl(&dword_181A37000, v68, v69, "%s %s %s", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v71, -1, -1);
      MEMORY[0x1865DF520](v70, -1, -1);

      return 1;
    }

LABEL_50:

    return 1;
  }

  if (v51 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

LABEL_28:
  swift_beginAccess();
  v52 = *(v3 + 248);
  if (v52)
  {
    if (sub_1822C3DC0(v52, v8))
    {
      v53 = *(v3 + 248);
      if (v53)
      {
        v54 = *(v3 + 240);
        *(v3 + 240) = 0;
        *(v3 + 248) = 0;
        *(v3 + 256) = 0;
        *(v3 + 264) = 0;
        sub_18206A1F0(v54, v53);
      }
    }
  }

  v55 = *(v3 + 232);
  v116[0] = *v7;
  v116[1] = v55;
  v56 = *(v3 + 264);
  v58 = *v7;
  v57 = *(v3 + 232);
  v116[2] = *(v3 + 248);
  v116[3] = v56;
  v110 = v58;
  v111 = v57;
  v59 = *(v3 + 264);
  v112 = *(v3 + 248);
  v113 = v59;
  sub_1822C5718(v100, &v114);
  v117 = v110;
  v118 = v111;
  v119 = v112;
  v120 = v113;
  sub_18206AE38(v116, v109);
  sub_18206AE94(&v117);
  v60 = v115;
  if (v115)
  {
    v61 = v114;
    goto LABEL_42;
  }

  v76 = *(v3 + 232);
  v109[0] = *v7;
  v109[1] = v76;
  v77 = *(v3 + 264);
  v79 = *v7;
  v78 = *(v3 + 232);
  v109[2] = *(v3 + 248);
  v109[3] = v77;
  v103 = v79;
  v104 = v78;
  v80 = *(v3 + 264);
  v105 = *(v3 + 248);
  v106 = v80;
  v102 = v8;
  sub_1822C38F8(&v102, &v107);
  v110 = v103;
  v111 = v104;
  v112 = v105;
  v113 = v106;
  sub_18206AE38(v109, v101);
  sub_18206AE94(&v110);
  v60 = v108;
  if (v108)
  {
    v61 = v107;
LABEL_42:
    sub_18206A1F0(v61, v60);
    swift_endAccess();
    v82 = *(v3 + 80);
    v81 = *(v3 + 88);
    v83 = qword_1EA837250;

    if (v83 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v84 = sub_182AD2698();
      __swift_project_value_buffer(v84, qword_1EA843418);

      v85 = sub_182AD2678();
      v86 = sub_182AD38A8();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v110 = v88;
        *v87 = 136315650;
        v89 = sub_182AD3BF8();
        v91 = sub_181C64FFC(v89, v90, &v110);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2080;
        v92 = sub_181C64FFC(v82, v81, &v110);

        *(v87 + 14) = v92;
        *(v87 + 22) = 2080;
        *(v87 + 24) = sub_181C64FFC(0xD00000000000003FLL, 0x8000000182BDBB70, &v110);
        _os_log_impl(&dword_181A37000, v85, v86, "%s %s %s", v87, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v88, -1, -1);
        MEMORY[0x1865DF520](v87, -1, -1);

        return 1;
      }
    }

    goto LABEL_50;
  }

  v93 = *&v109[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v93;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v93 = sub_181F59E18(0, *(v93 + 2) + 1, 1, v93);
    *v7 = v93;
  }

  v96 = *(v93 + 2);
  v95 = *(v93 + 3);
  if (v96 >= v95 >> 1)
  {
    v93 = sub_181F59E18((v95 > 1), v96 + 1, 1, v93);
  }

  *(v93 + 2) = v96 + 1;
  v97 = &v93[32 * v96];
  *(v97 + 4) = v100;
  *(v97 + 5) = v8;
  *(v97 + 6) = v99;
  v97[56] = 0;
  *v7 = v93;
  swift_endAccess();
  return 1;
}

uint64_t sub_18206A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for QUICStreamInstance();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_182AD3EB8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_182AD3EB8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_18206A1F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18206A288(uint64_t result)
{
  if (result != 1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_18206A310()
{
  result = qword_1EA839BF8;
  if (!qword_1EA839BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BF8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network19QUICConnectionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_18206A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 59;
  if ((a5 >> 59) <= 0x10)
  {
    if (((1 << v6) & 0x18005) != 0)
    {
    }

    if (v6 == 13)
    {
    }
  }

  return result;
}

uint64_t sub_18206A450(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  if (!(a2 >> 62))
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_18206A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 59;
  if ((a5 >> 59) <= 0x10)
  {
    if (((1 << v6) & 0x18005) != 0)
    {
    }

    if (v6 == 13)
    {
    }
  }

  return result;
}

uint64_t sub_18206A510(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_182AD3EB8();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_182AD3EB8();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_18206A634(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18206A6DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = &v13[64 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18206A7AC(unint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + (result << 6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[4 * a3];
      v15 = (v9 + 32 + (a2 << 6));
      v16 = v14 << 6;
      v17 = &v15[64 * v14];
      if (result != v15 || result >= v17)
      {
        result = memmove(result, v15, v16);
      }

      v19 = *(v9 + 16);
      v11 = __OFADD__(v19, v12);
      v20 = v19 + v12;
      if (!v11)
      {
        *(v9 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    v21 = a4[1];
    v39[0] = *a4;
    v39[1] = v21;
    v23 = *a4;
    v22 = a4[1];
    v39[2] = a4[2];
    v24 = *(a4 + 7);
    v40 = *(a4 + 6);
    v28[0] = v23;
    v28[1] = v22;
    v28[2] = a4[2];
    v29 = *(a4 + 6);
    sub_181AB5D28(v39, v30, &qword_1EA839C18);
    v24(&v31, v28);

    v34 = v31;
    v35 = v32;
    v36[0] = v33[0];
    *(v36 + 10) = *(v33 + 10);
    v37[0] = v31;
    v37[1] = v32;
    v38[0] = v33[0];
    *(v38 + 10) = *(v33 + 10);
    sub_181AB5D28(&v34, v28, &qword_1EA839C10);
    result = sub_181F49A88(v37, &qword_1EA839C10);
    v25 = v34;
    v26 = v35;
    v27 = v36[0];
    *(v10 + 42) = *(v36 + 10);
    v10[1] = v26;
    v10[2] = v27;
    *v10 = v25;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_18206A98C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

char *sub_18206AA78(char *result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = &v8[a3];
  v12 = (v7 + 32 + a2);
  if (&v8[a3] != v12 || result >= &v12[v11])
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, v11);
    a4 = v15;
    a3 = v14;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return memcpy(v8, (a4 + 32), a3);
}

unint64_t sub_18206AB64(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 56 * v7;
  a2 = (v9 + 32 + 56 * v8);
  if (result != a2 || result >= &a2[56 * v14])
  {
    result = memmove(result, a2, 56 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(a4 + 16);
  v20 = *(a4 + 32);
  *(v10 + 48) = *(a4 + 48);
  *(v10 + 16) = v19;
  *(v10 + 32) = v20;
  *v10 = v18;
  a3 = &qword_1EA839C18;
  a2 = v21;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_181AB5D28(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_181AB5D28(a4, v21, &qword_1EA839C18);
}

uint64_t sub_18206AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 >> 5 != 0xFFFFFFFF || HIDWORD(a5) != 0)
  {
    return sub_18206A46C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_18206AF08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_18206AF20(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 59)
  {
    case 2uLL:
    case 0x19uLL:
    case 0x1CuLL:
    case 0x1DuLL:

      goto LABEL_4;
    case 3uLL:
    case 8uLL:

      goto LABEL_4;
    case 6uLL:
    case 0x14uLL:
    case 0x15uLL:

      goto LABEL_4;
    case 7uLL:

      goto LABEL_4;
    case 9uLL:

    case 0x12uLL:

      goto LABEL_4;
    case 0x16uLL:
    case 0x1EuLL:

      goto LABEL_4;
    case 0x17uLL:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18206B01C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 59)
  {
    case 2uLL:
    case 0x19uLL:
    case 0x1CuLL:
    case 0x1DuLL:

      goto LABEL_4;
    case 3uLL:
    case 8uLL:

      goto LABEL_4;
    case 6uLL:
    case 0x14uLL:
    case 0x15uLL:

      goto LABEL_4;
    case 7uLL:

      goto LABEL_4;
    case 9uLL:

    case 0x12uLL:

      goto LABEL_4;
    case 0x16uLL:
    case 0x1EuLL:

      goto LABEL_4;
    case 0x17uLL:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18206B118()
{
  (*(v0 + 16))(&v2);

  return sub_182AD3BF8();
}

void sub_18206B17C(uint64_t a1@<X8>)
{
  sub_18206FFAC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_18206B1C0(uint64_t a1@<X8>)
{
  sub_18206FFAC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_18206B204()
{
  sub_182AD44E8();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18206B2B0()
{
  sub_182AD44E8();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18206B318()
{
  v0 = sub_182AD25A8();
  __swift_allocate_value_buffer(v0, qword_1EA843230);
  __swift_project_value_buffer(v0, qword_1EA843230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D08);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_182AF06D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "actorName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADD0];
  v8 = sub_182AD2588();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_182AD2598();
}

uint64_t sub_18206B4E0()
{
  while (1)
  {
    result = sub_182AD2428();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_182AD2488();
    }
  }

  return result;
}

uint64_t sub_18206B560()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_182AD2558(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_182AD2558(), !v1))
    {
      type metadata accessor for NWActorSystemProtobuf_ActorID(0);
      return sub_182AD23A8();
    }
  }

  return result;
}

uint64_t sub_18206B624@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return sub_182AD23B8();
}

uint64_t sub_18206B828(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  sub_182AD23C8();
  sub_18206E848();
  return sub_182AD2F48() & 1;
}

uint64_t sub_18206B8D4()
{
  v0 = sub_182AD25A8();
  __swift_allocate_value_buffer(v0, qword_1EA843248);
  __swift_project_value_buffer(v0, qword_1EA843248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D08);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_182AEB7D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "callID";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADD0];
  v8 = sub_182AD2588();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recipient";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "invocationTarget";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "genericSubs";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "arguments";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "options";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_182AD2598();
}

uint64_t sub_18206BBA0()
{
  while (1)
  {
    result = sub_182AD2428();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_182AD2478();
          break;
        case 5:
          sub_182AD2448();
          break;
        case 6:
          sub_182AD2498();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_14;
        case 2:
          sub_18206BCA8();
          break;
        case 3:
LABEL_14:
          sub_182AD2488();
          break;
      }
    }
  }
}

uint64_t sub_18206BCA8()
{
  type metadata accessor for NWActorSystemProtobuf_RemoteCall(0);
  type metadata accessor for NWActorSystemProtobuf_ActorID(0);
  sub_18206E270(&qword_1EA839CE8, type metadata accessor for NWActorSystemProtobuf_ActorID);
  return sub_182AD24A8();
}

uint64_t sub_18206BD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_182AD2558(), !v4))
  {
    result = sub_18206BEA4(v3, a1, a2, a3);
    if (!v4)
    {
      v11 = v3[3];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_182AD2558();
      }

      if (*(v3[4] + 16))
      {
        sub_182AD2548();
      }

      if (*(v3[5] + 16))
      {
        sub_182AD2518();
      }

      if (v3[6])
      {
        sub_182AD2568();
      }

      type metadata accessor for NWActorSystemProtobuf_RemoteCall(0);
      return sub_182AD23A8();
    }
  }

  return result;
}

uint64_t sub_18206BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NWActorSystemProtobuf_ActorID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWActorSystemProtobuf_RemoteCall(0);
  sub_181AB5D28(a1 + *(v12 + 40), v7, &qword_1EA839D28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_181F49A88(v7, &qword_1EA839D28);
  }

  sub_18206F09C(v7, v11, type metadata accessor for NWActorSystemProtobuf_ActorID);
  sub_18206E270(&qword_1EA839CE8, type metadata accessor for NWActorSystemProtobuf_ActorID);
  sub_182AD2578();
  return sub_18206F104(v11, type metadata accessor for NWActorSystemProtobuf_ActorID);
}

uint64_t sub_18206C0B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 4) = MEMORY[0x1E69E7CC0];
  *(a2 + 5) = v4;
  *(a2 + 6) = 0;
  sub_182AD23B8();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for NWActorSystemProtobuf_ActorID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_18206C16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_182AD23C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18206C1E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_182AD23C8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_18206C414()
{
  v0 = sub_182AD25A8();
  __swift_allocate_value_buffer(v0, qword_1EA843260);
  __swift_project_value_buffer(v0, qword_1EA843260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D08);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_182AF06E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "callID";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADD0];
  v8 = sub_182AD2588();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "error";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "metrics";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_182AD2598();
}

uint64_t sub_18206C660()
{
  while (1)
  {
    result = sub_182AD2428();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_18206C73C();
      }

      else if (result == 5)
      {
        sub_18206C7F0();
      }
    }

    else if (result == 1)
    {
      sub_182AD2488();
    }

    else if (result == 2)
    {
      sub_182AD2458();
    }
  }

  return result;
}

uint64_t sub_18206C73C()
{
  type metadata accessor for NWActorSystemProtobuf_Reply(0);
  type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
  sub_18206E270(&qword_1EA839C68, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
  return sub_182AD24A8();
}

uint64_t sub_18206C7F0()
{
  type metadata accessor for NWActorSystemProtobuf_Reply(0);
  type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
  sub_18206E270(&qword_1EA839C88, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
  return sub_182AD24A8();
}

uint64_t sub_18206C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_182AD2558(), !v4))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = sub_18206C9C0(v3, a1, a2, a3);
          if (!v4)
          {
            sub_18206CBD0(v3, a1, a2, a3);
            type metadata accessor for NWActorSystemProtobuf_Reply(0);
            return sub_182AD23A8();
          }

          return result;
        }

LABEL_13:
        result = sub_182AD2528();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_18206C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWActorSystemProtobuf_Reply(0);
  sub_181AB5D28(a1 + *(v12 + 28), v7, &qword_1EA839D48);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_181F49A88(v7, &qword_1EA839D48);
  }

  sub_18206F09C(v7, v11, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
  sub_18206E270(&qword_1EA839C68, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
  sub_182AD2578();
  return sub_18206F104(v11, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
}

uint64_t sub_18206CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWActorSystemProtobuf_Reply(0);
  sub_181AB5D28(a1 + *(v12 + 32), v7, &qword_1EA839D40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_181F49A88(v7, &qword_1EA839D40);
  }

  sub_18206F09C(v7, v11, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
  sub_18206E270(&qword_1EA839C88, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
  sub_182AD2578();
  return sub_18206F104(v11, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
}

uint64_t sub_18206CDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_182AE7580;
  sub_182AD23B8();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_18206D09C()
{
  v0 = sub_182AD25A8();
  __swift_allocate_value_buffer(v0, qword_1EA843288);
  __swift_project_value_buffer(v0, qword_1EA843288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D08);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D10) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_182AE9730;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "remoteExecutionTime";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADD0];
  v6 = sub_182AD2588();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_182AD2598();
}

uint64_t sub_18206D208()
{
  while (1)
  {
    result = sub_182AD2428();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_182AD2468();
    }
  }

  return result;
}

uint64_t sub_18206D278()
{
  if (!*v0 || (result = sub_182AD2538(), !v1))
  {
    type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
    return sub_182AD23A8();
  }

  return result;
}

uint64_t sub_18206D348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_182AD23C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18206D3BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_182AD23C8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_18206D5EC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_182AD23C8();
  sub_18206E848();
  return sub_182AD2F48() & 1;
}

uint64_t sub_18206D680(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1865D9CA0](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x8000000182BDC4B0;
  return result;
}

uint64_t sub_18206D6EC()
{
  v0 = sub_182AD25A8();
  __swift_allocate_value_buffer(v0, qword_1EA8432B0);
  __swift_project_value_buffer(v0, qword_1EA8432B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D08);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_182AF06D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADD0];
  v8 = sub_182AD2588();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arguments";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_182AD2598();
}

uint64_t sub_18206D8B4()
{
  result = sub_182AD2428();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_18206F8E8();
        sub_182AD2438();
      }

      else if (result == 2)
      {
        sub_182AD2448();
      }

      result = sub_182AD2428();
    }
  }

  return result;
}

uint64_t sub_18206D970()
{
  if (!*v0 || (sub_18206F8E8(), result = sub_182AD2508(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_182AD2518(), !v1))
    {
      type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
      return sub_182AD23A8();
    }
  }

  return result;
}

uint64_t sub_18206DA48@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  return sub_182AD23B8();
}

uint64_t sub_18206DAA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;

  return v4;
}

uint64_t sub_18206DB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_182AD23C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18206DB7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_182AD23C8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_18206DD18()
{
  sub_182AD44E8();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18206DDE0()
{
  sub_182AD44E8();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18206DE38()
{
  v0 = sub_182AD25A8();
  __swift_allocate_value_buffer(v0, qword_1EA8432C8);
  __swift_project_value_buffer(v0, qword_1EA8432C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D08);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_182AEB7D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ACTOR_RESOLUTION_FAILED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADD0];
  v8 = sub_182AD2588();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAILED_TO_EXECUTE";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UNDERLYING";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CODABLE_CLIENT";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NONCODABLE_CLIENT";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NSERROR";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_182AD2598();
}

uint64_t sub_18206E124@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_182AD25A8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_18206E270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18206E848()
{
  result = qword_1EA839D18;
  if (!qword_1EA839D18)
  {
    sub_182AD23C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839D18);
  }

  return result;
}

uint64_t sub_18206E894(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_18206EA24(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_181C1F2E4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_182082F30(v13, a3, a4, &v12);
  v10 = v4;
  sub_181C1F2E4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_18206EA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_182AD1D58();
  v11 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_182AD1D78();
  sub_182082F30(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_18206EADC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_181F49B58(a3, a4);
          return sub_18206E894(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18206EC44(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for NWActorSystemProtobuf_ActorID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_182AD4268() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for NWActorSystemProtobuf_RemoteCall(0);
  v15 = *(v14 + 40);
  v16 = a1;
  v17 = *(v11 + 48);
  v28 = v14;
  v29 = v16;
  sub_181AB5D28(v16 + v15, v13, &qword_1EA839D28);
  v18 = a2 + v15;
  v19 = a2;
  sub_181AB5D28(v18, &v13[v17], &qword_1EA839D28);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_181AB5D28(v13, v10, &qword_1EA839D28);
    if (v20(&v13[v17], 1, v4) != 1)
    {
      sub_18206F09C(&v13[v17], v7, type metadata accessor for NWActorSystemProtobuf_ActorID);
      v24 = *v10 == *v7 && v10[1] == v7[1];
      if (v24 || (sub_182AD4268() & 1) != 0)
      {
        v25 = v10[2] == v7[2] && v10[3] == v7[3];
        if (v25 || (sub_182AD4268() & 1) != 0)
        {
          sub_182AD23C8();
          sub_18206E848();
          v19 = a2;
          v26 = sub_182AD2F48();
          sub_18206F104(v7, type metadata accessor for NWActorSystemProtobuf_ActorID);
          sub_18206F104(v10, type metadata accessor for NWActorSystemProtobuf_ActorID);
          sub_181F49A88(v13, &qword_1EA839D28);
          if ((v26 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      sub_18206F104(v7, type metadata accessor for NWActorSystemProtobuf_ActorID);
      sub_18206F104(v10, type metadata accessor for NWActorSystemProtobuf_ActorID);
      v21 = &qword_1EA839D28;
LABEL_10:
      sub_181F49A88(v13, v21);
      goto LABEL_11;
    }

    sub_18206F104(v10, type metadata accessor for NWActorSystemProtobuf_ActorID);
LABEL_9:
    v21 = &qword_1EA839D30;
    goto LABEL_10;
  }

  if (v20(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_181F49A88(v13, &qword_1EA839D28);
LABEL_24:
  v27 = v29;
  if (v29[2] == v19[2] && v29[3] == v19[3] || (sub_182AD4268()) && (sub_1820810E8(v27[4], v19[4]) & 1) != 0 && (sub_181B09C90(v27[5], v19[5]) & 1) != 0 && v27[6] == v19[6])
  {
    sub_182AD23C8();
    sub_18206E848();
    v22 = sub_182AD2F48();
    return v22 & 1;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_18206F09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18206F104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18206F164(void *a1, void *a2)
{
  v4 = type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = (&v39 - v8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D50);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v39 - v9;
  v11 = type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v39 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D58);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_182AD4268() & 1) == 0 || (sub_18206EADC(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_21;
  }

  v39 = v6;
  v41 = v10;
  v21 = type metadata accessor for NWActorSystemProtobuf_Reply(0);
  v42 = a2;
  v40 = v21;
  v22 = *(v21 + 28);
  v23 = *(v18 + 48);
  sub_181AB5D28(a1 + v22, v20, &qword_1EA839D48);
  sub_181AB5D28(v42 + v22, &v20[v23], &qword_1EA839D48);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) == 1)
  {
    if (v24(&v20[v23], 1, v11) == 1)
    {
      sub_181F49A88(v20, &qword_1EA839D48);
      goto LABEL_12;
    }

LABEL_10:
    v25 = &qword_1EA839D58;
    v26 = v20;
LABEL_20:
    sub_181F49A88(v26, v25);
    goto LABEL_21;
  }

  sub_181AB5D28(v20, v17, &qword_1EA839D48);
  if (v24(&v20[v23], 1, v11) == 1)
  {
    sub_18206F104(v17, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
    goto LABEL_10;
  }

  sub_18206F09C(&v20[v23], v14, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
  v27 = sub_18206F7EC(v17, v14);
  sub_18206F104(v14, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
  sub_18206F104(v17, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
  sub_181F49A88(v20, &qword_1EA839D48);
  if ((v27 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v28 = v41;
  v29 = *(v40 + 32);
  v30 = *(v44 + 48);
  sub_181AB5D28(a1 + v29, v41, &qword_1EA839D40);
  sub_181AB5D28(v42 + v29, v28 + v30, &qword_1EA839D40);
  v31 = v46;
  v32 = *(v45 + 48);
  if (v32(v28, 1, v46) != 1)
  {
    v34 = v43;
    sub_181AB5D28(v28, v43, &qword_1EA839D40);
    if (v32(v28 + v30, 1, v31) == 1)
    {
      sub_18206F104(v34, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
      goto LABEL_18;
    }

    v36 = v28 + v30;
    v37 = v39;
    sub_18206F09C(v36, v39, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    if (*v34 != *v37)
    {
      sub_18206F104(v37, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
      sub_18206F104(v34, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
      v25 = &qword_1EA839D40;
      goto LABEL_19;
    }

    sub_182AD23C8();
    sub_18206E848();
    v38 = sub_182AD2F48();
    sub_18206F104(v37, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    sub_18206F104(v34, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    sub_181F49A88(v28, &qword_1EA839D40);
    if (v38)
    {
      goto LABEL_15;
    }

LABEL_21:
    v33 = 0;
    return v33 & 1;
  }

  if (v32(v28 + v30, 1, v31) != 1)
  {
LABEL_18:
    v25 = &qword_1EA839D50;
LABEL_19:
    v26 = v28;
    goto LABEL_20;
  }

  sub_181F49A88(v28, &qword_1EA839D40);
LABEL_15:
  sub_182AD23C8();
  sub_18206E848();
  v33 = sub_182AD2F48();
  return v33 & 1;
}

uint64_t sub_18206F7EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_181B09C90(a1[2], *(a2 + 16)))
  {
    type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
    sub_182AD23C8();
    sub_18206E848();
    return sub_182AD2F48() & 1;
  }

  return 0;
}

unint64_t sub_18206F8E8()
{
  result = qword_1EA839D70;
  if (!qword_1EA839D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839D70);
  }

  return result;
}

uint64_t sub_18206F964()
{
  result = sub_182AD23C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18206FA08()
{
  sub_18206FB08(319, &unk_1EA836A08);
  if (v0 <= 0x3F)
  {
    sub_18206FB08(319, &qword_1EA839D98);
    if (v1 <= 0x3F)
    {
      sub_182AD23C8();
      if (v2 <= 0x3F)
      {
        sub_18206FC68(319, &qword_1EA839DA0, type metadata accessor for NWActorSystemProtobuf_ActorID);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18206FB08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_182AD3488();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_18206FB7C()
{
  sub_182AD23C8();
  if (v0 <= 0x3F)
  {
    sub_18206FC68(319, &qword_1EA839DB8, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
    if (v1 <= 0x3F)
    {
      sub_18206FC68(319, &qword_1EA839DC0, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18206FC68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_182AD39B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18206FCE4()
{
  result = sub_182AD23C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18206FD88()
{
  sub_18206FB08(319, &qword_1EA839D98);
  if (v0 <= 0x3F)
  {
    sub_182AD23C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_18206FE40()
{
  result = qword_1EA839DE8;
  if (!qword_1EA839DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839DE8);
  }

  return result;
}

unint64_t sub_18206FE98()
{
  result = qword_1EA839DF0;
  if (!qword_1EA839DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839DF0);
  }

  return result;
}

unint64_t sub_18206FF00()
{
  result = qword_1EA839E00;
  if (!qword_1EA839E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E00);
  }

  return result;
}

unint64_t sub_18206FF58()
{
  result = qword_1EA839E08;
  if (!qword_1EA839E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E08);
  }

  return result;
}

uint64_t sub_18206FFDC()
{
  v1 = *v0;
  sub_182AD44E8();
  hash = nw_proxy_config_get_hash(v1);
  MEMORY[0x1865DB070](hash);
  return sub_182AD4558();
}

uint64_t sub_182070058()
{
  v1 = *v0;
  sub_182AD44E8();
  hash = nw_proxy_config_get_hash(v1);
  MEMORY[0x1865DB070](hash);
  return sub_182AD4558();
}

unint64_t sub_1820700C4()
{
  result = qword_1EA839E10;
  if (!qword_1EA839E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E10);
  }

  return result;
}

uint64_t sub_18207011C@<X0>(_WORD *a1@<X8>)
{
  v2 = sub_1822C1360();

  *a1 = v2;
  return result;
}

BOOL _s7Network8PathFlowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 64);
  v9 = *(a1 + 96);
  v8 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 116);
  v13 = *(a1 + 120);
  v12 = *(a1 + 128);
  v14 = *(a1 + 153);
  v15 = *(a1 + 156);
  v16 = *(a1 + 164);
  v17 = *(a1 + 200);
  v18 = *a2;
  v19 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = *(a2 + 64);
  v23 = *(a2 + 96);
  v22 = *(a2 + 104);
  v24 = *(a2 + 112);
  v25 = *(a2 + 116);
  v27 = *(a2 + 120);
  v26 = *(a2 + 128);
  v28 = *(a2 + 153);
  v29 = *(a2 + 156);
  v30 = *(a2 + 164);
  v31 = *(a2 + 200);
  if (v17)
  {
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  if ((v17 & 2) != 0)
  {
    if ((v31 & 2) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 2) != 0)
  {
    return 0;
  }

  if ((v17 & 4) != 0)
  {
    if ((v31 & 4) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 4) != 0)
  {
    return 0;
  }

  if ((v17 & 8) != 0)
  {
    if ((v31 & 8) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 8) != 0)
  {
    return 0;
  }

  if ((v17 & 0x10) != 0)
  {
    if ((v31 & 0x10) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 0x10) != 0)
  {
    return 0;
  }

  if ((v17 & 0x20) != 0)
  {
    if ((v31 & 0x20) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 0x20) != 0)
  {
    return 0;
  }

  if ((v17 & 0x40) != 0)
  {
    if ((v31 & 0x40) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 0x40) != 0)
  {
    return 0;
  }

  if ((v17 & 0x80) != 0)
  {
    if ((v31 & 0x80) == 0)
    {
      return 0;
    }
  }

  else if ((v31 & 0x80) != 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v21)
    {
      return 0;
    }

    v79 = v12;
    v82 = v26;
    v85 = v28;
    v88 = v14;
    v91 = v29;
    v94 = v15;
    v103 = v24;
    v106 = v16;
    v97 = v30;
    v100 = v22;
    v118 = v23;
    v112 = v25;
    v115 = v10;
    v109 = v8;
    v32 = sub_18208108C(v7, v21);
    v8 = v109;
    v25 = v112;
    v10 = v115;
    v23 = v118;
    v22 = v100;
    v24 = v103;
    v16 = v106;
    v30 = v97;
    v29 = v91;
    v15 = v94;
    v28 = v85;
    v14 = v88;
    v12 = v79;
    v26 = v82;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v5)
  {
    if (!v19)
    {
      return 0;
    }

    v80 = v12;
    v83 = v26;
    v86 = v28;
    v89 = v14;
    v92 = v29;
    v95 = v15;
    v104 = v24;
    v107 = v16;
    v98 = v30;
    v101 = v22;
    v119 = v23;
    v113 = v25;
    v116 = v10;
    v110 = v8;
    type metadata accessor for Endpoint(0);
    v33 = v19;
    v78 = v5;
    v34 = sub_182AD3978();

    v8 = v110;
    v25 = v113;
    v10 = v116;
    v23 = v119;
    v22 = v101;
    v24 = v104;
    v16 = v107;
    v30 = v98;
    v29 = v92;
    v15 = v95;
    v28 = v86;
    v14 = v89;
    v12 = v80;
    v26 = v83;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v87 = v28;
  v90 = v14;
  v84 = v26;
  v93 = v29;
  v96 = v15;
  v105 = v24;
  v108 = v16;
  v99 = v30;
  v102 = v22;
  v120 = v23;
  if (v6)
  {
    v111 = v8;
    v114 = v25;
    v117 = v10;
    if (!v20)
    {
      return 0;
    }

    v35 = v12;
    type metadata accessor for Endpoint(0);
    v36 = v20;
    v37 = v6;
    v38 = sub_182AD3978();

    v12 = v35;
    v25 = v114;
    v10 = v117;
    v8 = v111;
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v81 = v12;
  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    v39 = v8;
    v40 = v25;
    v41 = v10;
    if ((sub_18208108C(v4, v18) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = v8;
    v40 = v25;
    v41 = v10;
    if (v18)
    {
      return 0;
    }
  }

  if (!v13)
  {
    if (!v27)
    {
      goto LABEL_58;
    }

LABEL_61:

    return 0;
  }

  if (!v27)
  {
    goto LABEL_61;
  }

  swift_retain_n();
  swift_retain_n();
  v42 = sub_1820F6A90(v13, v27);

  if (!v42)
  {
    return 0;
  }

LABEL_58:
  if (v11)
  {
    LOBYTE(v43) = 0;
    LOBYTE(v44) = 0;
    LOBYTE(v45) = 0;
    v46 = 0;
    LOBYTE(v47) = 0;
    LOBYTE(v48) = 0;
    LOBYTE(v49) = 0;
    LOBYTE(v50) = 0;
    LOBYTE(v51) = 0;
    LOBYTE(v52) = 0;
    LOBYTE(v53) = 0;
    v54 = 0;
    LOBYTE(v55) = 0;
    LOBYTE(v56) = 0;
    LOBYTE(v57) = 0;
    LOBYTE(v58) = 0;
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v40)
    {
      v60 = 0;
    }

    else
    {
      v60 = v120;
    }

    if (v60 == v9)
    {
      v61 = v40;
    }

    else
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }

    v43 = HIBYTE(v41);
    v44 = HIWORD(v41);
    v46 = v41;
    v45 = v41 >> 8;
    v47 = HIBYTE(v39);
    v48 = HIWORD(v39);
    v49 = v39 >> 40;
    v50 = HIDWORD(v39);
    v51 = v39 >> 24;
    v52 = v39 >> 16;
    v54 = v39;
    v53 = v39 >> 8;
    v55 = HIBYTE(v9);
    v56 = HIWORD(v9);
    v57 = v9 >> 40;
    v58 = HIDWORD(v9);
  }

  LOBYTE(v122) = v58;
  BYTE1(v122) = v57;
  BYTE2(v122) = v56;
  BYTE3(v122) = v55;
  BYTE4(v122) = v54;
  BYTE5(v122) = v53;
  BYTE6(v122) = v52;
  BYTE7(v122) = v51;
  BYTE8(v122) = v50;
  BYTE9(v122) = v49;
  BYTE10(v122) = v48;
  BYTE11(v122) = v47;
  BYTE12(v122) = v46;
  BYTE13(v122) = v45;
  BYTE14(v122) = v44;
  HIBYTE(v122) = v43;
  if (v40)
  {
    LOBYTE(v62) = 0;
    LOBYTE(v63) = 0;
    LOBYTE(v64) = 0;
    v65 = 0;
    LOBYTE(v66) = 0;
    LOBYTE(v67) = 0;
    LOBYTE(v68) = 0;
    LOBYTE(v69) = 0;
    LOBYTE(v70) = 0;
    LOBYTE(v71) = 0;
    LOBYTE(v72) = 0;
    v73 = 0;
    LOBYTE(v74) = 0;
    LOBYTE(v75) = 0;
    LOBYTE(v76) = 0;
    LOBYTE(v77) = 0;
  }

  else
  {
    v77 = HIDWORD(v120);
    v76 = v120 >> 40;
    v75 = HIWORD(v120);
    v74 = HIBYTE(v120);
    v72 = v102 >> 8;
    v71 = v102 >> 16;
    v70 = v102 >> 24;
    v69 = HIDWORD(v102);
    v68 = v102 >> 40;
    v67 = HIWORD(v102);
    v73 = v102;
    v66 = HIBYTE(v102);
    v64 = v105 >> 8;
    v63 = HIWORD(v105);
    v65 = v105;
    v62 = HIBYTE(v105);
  }

  LOBYTE(v121) = v77;
  BYTE1(v121) = v76;
  BYTE2(v121) = v75;
  BYTE3(v121) = v74;
  BYTE4(v121) = v73;
  BYTE5(v121) = v72;
  BYTE6(v121) = v71;
  BYTE7(v121) = v70;
  BYTE8(v121) = v69;
  BYTE9(v121) = v68;
  BYTE10(v121) = v67;
  BYTE11(v121) = v66;
  BYTE12(v121) = v65;
  BYTE13(v121) = v64;
  BYTE14(v121) = v63;
  HIBYTE(v121) = v62;
  if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v122, &v121))
  {
    return 0;
  }

  if (v108)
  {
    if ((v99 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v99 & 1) != 0 || v93 != v96 || (v93 ^ v96) >> 32)
  {
    return 0;
  }

  if (v90)
  {
    return v87 != 0;
  }

  if (v87)
  {
    return 0;
  }

  return (v84 ^ v81) >> 32 == 0;
}

__n128 __swift_memcpy202_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_18207072C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 202))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_182070788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 202) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 202) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_182070834(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_182070854(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

unint64_t sub_182070898()
{
  result = qword_1EA839E20;
  if (!qword_1EA839E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E20);
  }

  return result;
}

unint64_t sub_1820708F0()
{
  result = qword_1EA839E28;
  if (!qword_1EA839E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E28);
  }

  return result;
}

unint64_t sub_182070948()
{
  result = qword_1EA839E30;
  if (!qword_1EA839E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E30);
  }

  return result;
}

unint64_t sub_1820709A0()
{
  result = qword_1EA839E38;
  if (!qword_1EA839E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E38);
  }

  return result;
}

uint64_t sub_1820709F8()
{
  sub_182070A54(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SwiftTLSProtocol.SwiftTLSInstance.__allocating_init()()
{
  v0 = swift_allocObject();
  SwiftTLSProtocol.SwiftTLSInstance.init()();
  return v0;
}

uint64_t sub_182070AB4()
{

  sub_182AD29B8();
  sub_182AD28B8();
  sub_182AD2988();
  sub_182AD2968();
  sub_182AD29A8();
  sub_182AD2948();
  v0 = sub_182AD2908();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839E88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_182AD28E8();
  v7 = *(v1 + 48);
  if (v7(v6, 1, v0) == 1)
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E69D4F28], v0);
    if (v7(v6, 1, v0) != 1)
    {
      sub_181F49A88(v6, &qword_1EA839E88);
    }
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
  }

  return sub_182AD2928();
}

uint64_t sub_182070CF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_182AD28A8();
  v6 = v5;

  *(v2 + 16) = v4;
  *(v2 + 24) = v6;
  v7 = sub_182AD2978();

  *(v2 + 32) = v7;
  v8 = sub_182AD2958();

  *(v2 + 40) = v8;
  v9 = sub_182AD2998();

  *(v2 + 56) = v9;
  v10 = sub_182AD2938();

  *(v2 + 64) = v10;
  v11 = sub_182AD2908();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD2918();
  v15 = sub_182AD28F8();
  v16 = sub_182AD29C8();
  (*(*(v16 - 8) + 8))(a1, v16);
  result = (*(v12 + 8))(v14, v11);
  if (v15 <= 0x1Cu)
  {
    if (v15 == 23)
    {
      v18 = 0;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v15 == 29)
  {
    v18 = 2;
    goto LABEL_10;
  }

  if (v15 != 4588)
  {
LABEL_7:
    v18 = 1;
    goto LABEL_10;
  }

  v18 = 3;
LABEL_10:
  *(v2 + 48) = v18;
  return result;
}

uint64_t sub_182070ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18207575C();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t SwiftTLSProtocol.SwiftTLSProtocolOptions.serverName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SwiftTLSProtocol.SwiftTLSProtocolOptions.serverName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SwiftTLSProtocol.SwiftTLSProtocolOptions.quicTransportParameters.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t SwiftTLSProtocol.SwiftTLSProtocolOptions.applicationProtocols.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

Network::SwiftTLSProtocol::SwiftTLSProtocolOptions::KeyExchangeGroup_optional __swiftcall SwiftTLSProtocol.SwiftTLSProtocolOptions.KeyExchangeGroup.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue > 0x1Cu)
  {
    if (rawValue == 4588)
    {
      *v1 = 3;
      return rawValue;
    }

    if (rawValue == 29)
    {
      *v1 = 2;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 23)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 24)
  {
    goto LABEL_8;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_182071128()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t sub_1820711C8()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t SwiftTLSProtocol.SwiftTLSProtocolOptions.serverRawPublicKeyCertificates.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t SwiftTLSProtocol.SwiftTLSProtocolOptions.serverRawPrivateKey.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

double SwiftTLSProtocol.SwiftTLSProtocolOptions.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

Swift::OpaquePointer_optional __swiftcall SwiftTLSProtocol.SwiftTLSProtocolOptions.serialize()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

double SwiftTLSProtocol.SwiftTLSProtocolOptions.deepCopy()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

double sub_1820713AC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

void sub_182071410()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v18 = v3;
    v19 = v4;
    v20 = v2;
    if (*(v0 + 72) == 255)
    {
      v5 = *(v0 + 56);
      v6 = *(v1 + 64);
      *(v1 + 56) = v1;
      *(v1 + 64) = &off_1EEFB9680;
      *(v1 + 72) = 3;
      sub_181F32390(v3, v4, v2);

      sub_181F3D4C0(v5, v6, 0xFFu);
    }

    else
    {
      sub_181F32390(v3, v4, v2);
    }

    v7 = *(v1 + 72);
    if (v7 == 255)
    {
      __break(1u);
      return;
    }

    v8 = *(v1 + 64);
    v15 = *(v1 + 56);
    v16 = v8;
    v17 = v7;
    sub_181F32390(v15, v8, v7);
    OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(&v15, 1);
    sub_181F68E5C(v15, v16, v17);
    sub_181F68E5C(v18, v19, v20);
  }

  *(v1 + 24) = 0;

  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v11 = *(v1 + 48);
  *(v1 + 48) = -1;
  sub_181F3D4C0(v9, v10, v11);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v14 = *(v1 + 72);
  *(v1 + 72) = -1;

  sub_181F3D4C0(v12, v13, v14);
}

void sub_18207152C()
{
  v6 = *(v1 + 48);
  if (v6 == 255)
  {
    return;
  }

  v7 = *(v1 + 24);
  if (!v7)
  {
    return;
  }

  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v71 = v9;
  v72 = v8;
  v73 = v6;
  if (*(v1 + 72) == 255)
  {
    v0 = *(v1 + 56);
    v2 = *(v1 + 64);
    *(v1 + 56) = v1;
    *(v1 + 64) = &off_1EEFB9680;
    *(v1 + 72) = 3;
    sub_181F32390(v9, v8, v6);

    sub_181F3D4C0(v0, v2, 0xFFu);
  }

  else
  {
    sub_181F32390(v9, v8, v6);
  }

  v10 = *(v1 + 72);
  if (v10 == 255)
  {
    goto LABEL_39;
  }

  v7 = v23;
  v11 = *(v1 + 64);
  *&v39 = *(v1 + 56);
  *(&v39 + 1) = v11;
  LOBYTE(v40) = v10;
  sub_181F68EA8(v39, v11, v10);
  OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v39, 1uLL, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, v54);
  sub_181F68E5C(v39, *(&v39 + 1), v40);
  v67 = v54[11];
  v68 = v54[12];
  v69 = v54[13];
  v70 = v55;
  v65 = v54[9];
  v66 = v54[10];
  v60 = v54[4];
  v61 = v54[5];
  v63 = v54[7];
  v64 = v54[8];
  v62 = v54[6];
  v56 = v54[0];
  v57 = v54[1];
  v58 = v54[2];
  v59 = v54[3];
  v12 = sub_181F3D1E4(&v56);
  v13 = __OFSUB__(v12, 1);
  if (v12 == 1)
  {
    sub_181F3D4C0(v9, v8, v6);
LABEL_16:

    return;
  }

  v20 = v6;
  v51 = v68;
  v52 = v69;
  v53 = v70;
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v50 = v67;
  v43 = v60;
  v44 = v61;
  v45 = v62;
  v46 = v63;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v42 = v59;
  v1 = *(&v69 + 1);
  if (v70)
  {
LABEL_10:
    sub_181F3D4C0(v9, v8, v20);

    v2 = *(&v39 + 1);
    v1 = v39;
    v7 = v40;
    LOBYTE(v6) = BYTE8(v40);
    v9 = *(&v41 + 1);
    v8 = v41;
    LOBYTE(v3) = v42;
    if (v42 != 2 || v41 != 0)
    {
      goto LABEL_41;
    }

    if ((v49 & 1) == 0)
    {
      if (v48)
      {
        MEMORY[0x1865DF520](v48, -1, -1);
      }
    }

    sub_181F68EF4(v1, v2, v7, v6);
    goto LABEL_16;
  }

  v2 = 0;
  v21 = v9;
  v22 = v8;
  while (v1)
  {
    v14 = *(v1 + 24);
    v13 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (v13)
    {
      goto LABEL_37;
    }

LABEL_25:
    if (v15 < 1)
    {
      goto LABEL_10;
    }

    FrameArray.popFirst()(&v25);
    v23[10] = v35;
    v23[11] = v36;
    v23[12] = v37;
    v24 = v38;
    v23[6] = v31;
    v23[7] = v32;
    v23[8] = v33;
    v23[9] = v34;
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    v16 = Frame.unclaimedBytes.getter();
    if ((v18 & 1) != 0 || !v16 || v17 == v16)
    {
      Frame.finalize(success:)(0);
      v3 = *(&v25 + 1);
      v9 = v25;
      v4 = v26;
      v5 = BYTE8(v26);
      v6 = *(&v27 + 1);
      v0 = v27;
      v8 = v28;
      v1 = *(&v35 + 1);
      if (v28 != 2 || v27 != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v19 = sub_181AC1C5C(v16, v17);
      sub_182071BC8(v19);

      Frame.finalize(success:)(1);
      v3 = *(&v25 + 1);
      v9 = v25;
      v4 = v26;
      v5 = BYTE8(v26);
      v8 = *(&v27 + 1);
      v6 = v27;
      v0 = v28;
      v1 = *(&v35 + 1);
      if (v28 != 2 || v27 != 0)
      {
        goto LABEL_40;
      }
    }

    if ((v35 & 1) == 0 && v34)
    {
      MEMORY[0x1865DF520](v34, -1, -1);
    }

    sub_181F68EF4(v9, v3, v4, v5);

    v9 = v21;
    v8 = v22;
    v1 = *(&v52 + 1);
    v13 = __OFSUB__(v53, 1);
    if (v53 == 1)
    {
      goto LABEL_10;
    }
  }

  v15 = 1;
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  sub_181F68EF4(v9, v3, v4, v5);

  sub_181F68F3C(v0, v6, v8);
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_181F68EF4(v9, v3, v4, v5);

  sub_181F68F3C(v6, v8, v0);
  __break(1u);
LABEL_41:
  sub_181F68EF4(v1, v2, v7, v6);

  sub_181F68F3C(v8, v9, v3);
  __break(1u);
}

uint64_t sub_182071BC8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;

  swift_beginAccess();
  result = sub_182AD2AC8();
  v45 = result;
  v39 = *(result - 8);
  v7 = *(v39 + 64);
LABEL_2:
  v8 = 0;
  while (1)
  {
    MEMORY[0x1EEE9AC00](result);

    v9 = sub_182AD29E8();
    if (v3)
    {
      (*(v39 + 8))(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v45);

      v43 = xmmword_182AF1390;
      v44 = 0x80;
      sub_181F5F494();
      swift_willThrowTypedImpl();

      return 5;
    }

    v10 = v9;
    v3 = 0;

    if (!v10)
    {
      if (v8)
      {
LABEL_23:
      }

      else
      {
        if (!a1)
        {
          return result;
        }

        v8 = 0;
      }

      if (*(v4 + 168) >= 2uLL)
      {

        swift_unknownObjectRetain();
        v19 = sub_182AD2A98();

        if (v19)
        {
          sub_182036268(v19);
          v3 = 0;
        }

        sub_182AD2A28();

        if ((sub_182AD28D8() & 1) == 0)
        {

          v20 = sub_182AD2A58();

          sub_182036BAC(v20);

          v21 = sub_182AD2A18();

          if (v21)
          {

            v22 = sub_182AD2A08();

            sub_182035AA4(v21, v22, 0);
          }

          v23 = sub_182AD2A68();

          if (v23)
          {

            v24 = sub_182AD2A28();

            sub_182035AA4(v23, v24, 1);
          }
        }

        v25 = sub_182AD2A78();

        v26 = *(v25 + 16);

        if (v26)
        {

          v27 = sub_182AD2A78();

          sub_182AD2A88();

          sub_182035F70(v27);
        }

        v28 = sub_182AD29F8();

        if (v28)
        {
          sub_1820368AC(1);
        }

        swift_unknownObjectRelease();
      }

      if (v8)
      {
        if (*(v4 + 146) == 1 && *(v4 + 160) != 1)
        {
          *(v4 + 160) = 1;
          v29 = v8;
          v30 = 0;
        }

        else
        {
          v29 = v8;
          v30 = 2;
        }

        sub_1820724C8(v29, v30);
      }

      else
      {

        v31 = sub_182AD2AA8();

        if (v31)
        {

          v32 = sub_182AD2AA8();

          sub_182072BE4(v32);
        }
      }

      v33 = *(v4 + 146);

      if (v33 == 1)
      {
        sub_182AD2A08();
      }

      else
      {
        sub_182AD2A28();
      }

      result = sub_182AD28D8();
      a1 = 0;
      if (result)
      {
        *(v4 + 145) = 1;
        v34 = *(v4 + 16);
        v35 = *(v4 + 24);
        v36 = *(v4 + 32);
        *&v43 = v34;
        *(&v43 + 1) = v35;
        v44 = v36;
        if (*(v4 + 128) == 6 && *(v4 + 112) == 0)
        {
          sub_181F68EA8(v34, v35, v36);
          if (*(v4 + 128) == 6 && *(v4 + 112) == 0)
          {
            *(v4 + 112) = v4;
            *(v4 + 120) = &protocol witness table for DefaultOneToOneProtocol;
            *(v4 + 128) = 3;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v34, v35, v36);
        }

        v37 = *(v4 + 120);
        v38 = *(v4 + 128);
        v40 = *(v4 + 112);
        v41 = v37;
        v42 = v38;
        sub_181F68EA8(v40, v37, v38);
        InputHandlerLinkage.invokeConnected(_:)(&v40);
        sub_181F68E5C(v40, v41, v42);
        sub_181F68E5C(v43, *(&v43 + 1), v44);
        a1 = 0;
      }

      goto LABEL_2;
    }

    if (!v8)
    {
      v8 = v10;
      goto LABEL_4;
    }

    v11 = *(v10 + 16);
    v12 = *(v8 + 16);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v8 + 24) >> 1)
    {
      if (!*(v10 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v18 = v12 + v11;
      }

      else
      {
        v18 = v12;
      }

      result = sub_181ADBA10(result, v18, 1, v8);
      v8 = result;
      if (!*(v10 + 16))
      {
LABEL_20:

        if (v11)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    v14 = *(v8 + 16);
    if ((*(v8 + 24) >> 1) - v14 < v11)
    {
      goto LABEL_62;
    }

    memcpy((v8 + v14 + 32), (v10 + 32), v11);

    if (v11)
    {
      v15 = *(v8 + 16);
      v16 = __OFADD__(v15, v11);
      v17 = v15 + v11;
      if (v16)
      {
        goto LABEL_63;
      }

      *(v8 + 16) = v17;
    }

LABEL_4:
    if ((*(v4 + 160) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_182072228(__int128 *a1)
{
  v2 = a1;
  v3 = a1[7];
  v39 = a1[6];
  v40 = v3;
  v4 = a1[3];
  v35 = a1[2];
  v36 = v4;
  v5 = a1[5];
  v37 = a1[4];
  v38 = v5;
  v6 = a1[1];
  v33 = *a1;
  v34 = v6;
  v7 = *(a1 + 160);
  *v44 = *(a1 + 161);
  *&v44[3] = *(a1 + 41);
  v8 = *(a1 + 21);
  v9 = a1[12];
  v46 = a1[11];
  v47 = v9;
  v11 = *(a1 + 26);
  v10 = *(a1 + 27);
  v12 = v2[8];
  v13 = v2[9];
  LOBYTE(v2) = *(v2 + 224);
  v41 = v12;
  v42 = v13;
  v43 = v7;
  v45 = v8;
  v48 = v11;
  v49 = v10;
  v50 = v2;
  v14 = *(v1 + 48);
  if (v14 == 255)
  {
    v26 = v13;

    v18 = *(&v33 + 1);
    v17 = v33;
    v20 = v34;
    v19 = BYTE8(v34);
    v14 = *(&v35 + 1);
    v1 = v35;
    LOBYTE(v16) = v36;
    if (v36 == 2 && v35 == 0)
    {
      if ((v7 & 1) == 0 && v26.n128_u64[0])
      {
        MEMORY[0x1865DF520](v26.n128_u64[0], -1, -1, v26);
        v18 = *(&v33 + 1);
        v17 = v33;
        v20 = v34;
        v19 = BYTE8(v34);
      }

      sub_181F68EF4(v17, v18, v20, v19);

      v21 = 0;
      return v21 & 1;
    }
  }

  else
  {
    v15 = *(v1 + 32);
    v16 = *(v1 + 40);
    v30 = v15;
    v31 = v16;
    v32 = v14;
    if (*(v1 + 72) == 255)
    {
      v22 = *(v1 + 56);
      v23 = *(v1 + 64);
      *(v1 + 56) = v1;
      *(v1 + 64) = &off_1EEFB9680;
      *(v1 + 72) = 3;
      sub_181F32390(v15, v16, v14);

      sub_181F3D4C0(v22, v23, 0xFFu);
    }

    else
    {
      v17 = sub_181F32390(v15, v16, v14);
    }

    v20 = *(v1 + 72);
    if (v20 != 255)
    {
      v24 = *(v1 + 64);
      v27 = *(v1 + 56);
      v28 = v24;
      v29 = v20;
      sub_181F32390(v27, v24, v20);
      v21 = OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v27, &v33);
      sub_181F68E5C(v27, v28, v29);
      sub_181F3D4C0(v15, v16, v14);
      return v21 & 1;
    }

    __break(1u);
  }

  sub_181F68EF4(v17, v18, v20, v19);

  result = sub_181F68F3C(v1, v14, v16);
  __break(1u);
  return result;
}

uint64_t sub_182072434()
{

  sub_181F3D4C0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_181F3D4C0(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1820724C8(uint64_t result, unsigned __int8 a2)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *(v2 + 8 * a2 + 240);
    v7 = *(v6 + 48);
    v8 = result;
    if (v7 == 255)
    {
      sub_181F73CAC(v71);
    }

    else
    {
      v9 = *(v6 + 32);
      v10 = *(v6 + 40);
      *&v56 = v9;
      *(&v56 + 1) = v10;
      LOBYTE(v57) = v7;
      if (*(v6 + 72) == 255)
      {
        v2 = *(v6 + 56);
        v3 = *(v6 + 64);
        *(v6 + 56) = v6;
        *(v6 + 64) = &off_1EEFB9680;
        *(v6 + 72) = 3;
        swift_retain_n();
        sub_181F32390(v9, v10, v7);
        sub_181F3D4C0(v2, v3, 0xFFu);
      }

      else
      {

        sub_181F32390(v9, v10, v7);
      }

      v11 = *(v6 + 72);
      if (v11 == 255)
      {
        __break(1u);
        goto LABEL_63;
      }

      v12 = *(v6 + 64);
      *&v41 = *(v6 + 56);
      *(&v41 + 1) = v12;
      LOBYTE(v42) = v11;
      sub_181F32390(v41, v12, v11);
      OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v41, v5, v5, 1uLL, v71);
      sub_181F68E5C(v41, *(&v41 + 1), v42);
      sub_181F3D4C0(v9, v10, v7);
    }

    v68 = v71[12];
    v69 = v71[13];
    v70 = v72;
    v64 = v71[8];
    v65 = v71[9];
    v66 = v71[10];
    v67 = v71[11];
    v60 = v71[4];
    v61 = v71[5];
    v62 = v71[6];
    v63 = v71[7];
    v56 = v71[0];
    v57 = v71[1];
    v58 = v71[2];
    v59 = v71[3];
    v13 = sub_181F3D1E4(&v56);
    if (v13 == 1)
    {
    }

    v7 = *(&v69 + 1);
    v53 = v68;
    v54 = v69;
    v55 = v70;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    v52 = v67;
    v45 = v60;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    if (v70)
    {
      goto LABEL_33;
    }

    if (*(&v69 + 1))
    {
      v15 = *(*(&v69 + 1) + 24);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = 1;
      if (!__OFSUB__(v13, 1))
      {
LABEL_13:
        if (v17 != 1)
        {
          goto LABEL_33;
        }

        v38 = v67;
        v39 = v68;
        v34 = v63;
        v35 = v64;
        v40 = v69;
        v36 = v65;
        v37 = v66;
        v29 = v58;
        v30 = v59;
        v31 = v60;
        v32 = v61;
        v33 = v62;
        v27 = v56;
        v28 = v57;
        v13 = Frame.unclaimedBytes.getter();
        if (v18)
        {
LABEL_15:
          Frame.finalize(success:)(0);
          if (v7)
          {
            v19 = *(v7 + 32);
            if (*(v7 + 16) >= *(v7 + 24) + v19)
            {
              v20 = *(v7 + 24) + v19;
            }

            else
            {
              v20 = *(v7 + 16);
            }

            *&v27 = v7;
            *(&v27 + 1) = v19;
            *&v28 = v20;
            v21 = swift_retain_n();
            while (1)
            {
              if (v19 == v20)
              {
                if ((sub_181AC81FC(v21) & 1) == 0)
                {

                  break;
                }

                v19 = *(&v27 + 1);
                v20 = v28;
              }

              *(&v27 + 1) = v19 + 1;
              swift_beginAccess();

              Frame.finalize(success:)(0);
              swift_endAccess();

              ++v19;
            }
          }

          FrameArray.init()(&v27);

          v9 = *(&v41 + 1);
          v8 = v41;
          v10 = v42;
          LOBYTE(v3) = BYTE8(v42);
          v7 = *(&v43 + 1);
          v2 = v43;
          v4 = v44;
          if (v44 != 2 || v43 != 0)
          {
            goto LABEL_65;
          }

          v7 = v36;
          LOBYTE(v2) = v37;
          if ((v51 & 1) == 0 && v50)
          {
            MEMORY[0x1865DF520](v50, -1, -1);
          }

          sub_181F68EF4(v8, v9, v10, v3);

          v47 = v33;
          v48 = v34;
          v49 = v35;
          v43 = v29;
          v44 = v30;
          v45 = v31;
          v46 = v32;
          v41 = v27;
          v42 = v28;
          v5 = *(&v27 + 1);
          v6 = v27;
          v8 = v28;
          LOBYTE(v9) = BYTE8(v28);
          v22 = v29;
          v23 = v30;
          if (v30 == 2 && v43 == 0)
          {
            goto LABEL_50;
          }

          sub_181F68EF4(v41, *(&v41 + 1), v42, BYTE8(v42));

          sub_181F68F3C(v22, *(&v22 + 1), v23);
          __break(1u);
LABEL_33:
          Frame.finalize(success:)(0);
          if (v7)
          {
            v24 = *(v7 + 32);
            if (*(v7 + 16) >= *(v7 + 24) + v24)
            {
              v25 = *(v7 + 24) + v24;
            }

            else
            {
              v25 = *(v7 + 16);
            }

            *&v27 = v7;
            *(&v27 + 1) = v24;
            *&v28 = v25;
            v26 = swift_retain_n();
            while (1)
            {
              if (v24 == v25)
              {
                if ((sub_181AC81FC(v26) & 1) == 0)
                {

                  break;
                }

                v24 = *(&v27 + 1);
                v25 = v28;
              }

              *(&v27 + 1) = v24 + 1;
              swift_beginAccess();

              Frame.finalize(success:)(0);
              swift_endAccess();

              ++v24;
            }
          }

          FrameArray.init()(&v27);

          v9 = *(&v41 + 1);
          v8 = v41;
          v10 = v42;
          v3 = BYTE8(v42);
          v7 = *(&v43 + 1);
          v2 = v43;
          v4 = v44;
          v5 = *(&v51 + 1);
          if (v44 == 2 && v43 == 0)
          {
            v7 = v36;
            v2 = v37;
            if ((v51 & 1) == 0 && v50)
            {
              MEMORY[0x1865DF520](v50, -1, -1);
            }

            sub_181F68EF4(v8, v9, v10, v3);

            v47 = v33;
            v48 = v34;
            v49 = v35;
            v43 = v29;
            v44 = v30;
            v45 = v31;
            v46 = v32;
            v41 = v27;
            v42 = v28;
            v5 = *(&v27 + 1);
            v6 = v27;
            v8 = v28;
            v9 = BYTE8(v28);
            v3 = *(&v29 + 1);
            v10 = v29;
            v4 = v30;
            if (v30 == 2 && v43 == 0)
            {
LABEL_50:
              if ((v2 & 1) == 0)
              {
                if (v7)
                {
                  MEMORY[0x1865DF520](v7, -1, -1);
                }
              }

              sub_181F68EF4(v6, v5, v8, v9);
            }

            goto LABEL_64;
          }

LABEL_63:
          sub_181F68EF4(v8, v9, v10, v3);

          sub_181F68F3C(v2, v7, v4);
          __break(1u);
LABEL_64:
          sub_181F68EF4(v6, v5, v8, v9);

          sub_181F68F3C(v10, v3, v4);
          __break(1u);
LABEL_65:
          sub_181F68EF4(v8, v9, v10, v3);

          result = sub_181F68F3C(v2, v7, v4);
          __break(1u);
          return result;
        }

        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_59:
    if (!v13 || v14 - v13 != v5)
    {
      goto LABEL_15;
    }

    sub_1822A51AC(v8, v13);
    sub_182072228(&v41);
  }

  return result;
}

void sub_182072BE4(int a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v19 = v4;
  v20 = v5;
  v21 = v6;
  if (*(v2 + 128) == 6 && *(v2 + 112) == 0)
  {
    sub_181F68EA8(v4, v5, v6);
    if (*(v2 + 128) == 6 && *(v2 + 112) == 0)
    {
      *(v2 + 112) = v2;
      *(v2 + 120) = &protocol witness table for DefaultOneToOneProtocol;
      *(v2 + 128) = 3;

      sub_181F68E5C(0, 0, 6u);
    }
  }

  else
  {
    sub_181F68EA8(v4, v5, v6);
  }

  v7 = *(v2 + 120);
  v8 = *(v2 + 128);
  v16 = *(v2 + 112);
  v17 = v7;
  v18 = v8;
  v14 = a1;
  v15 = 0;
  sub_181F68EA8(v16, v7, v8);
  InputHandlerLinkage.invokeError(_:error:)(&v16, &v14);
  sub_181F68E5C(v16, v17, v18);
  sub_181F68E5C(v19, v20, v21);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  if (*(v2 + 128) == 6 && *(v2 + 112) == 0)
  {
    sub_181F68EA8(v9, v10, v11);
    if (*(v2 + 128) == 6 && *(v2 + 112) == 0)
    {
      *(v2 + 112) = v2;
      *(v2 + 120) = &protocol witness table for DefaultOneToOneProtocol;
      *(v2 + 128) = 3;

      sub_181F68E5C(0, 0, 6u);
    }
  }

  else
  {
    sub_181F68EA8(v9, v10, v11);
  }

  v12 = *(v2 + 120);
  v13 = *(v2 + 128);
  v16 = *(v2 + 112);
  v17 = v12;
  v18 = v13;
  sub_181F68EA8(v16, v12, v13);
  InputHandlerLinkage.invokeDisconnected(_:)(&v16);
  sub_181F68E5C(v16, v17, v18);
  sub_181F68E5C(v19, v20, v21);
}

Swift::Void __swiftcall SwiftTLSProtocol.SwiftTLSInstance.destroy()()
{
  sub_182071410();
  sub_182071410();
  sub_182071410();
  sub_182071410();
  swift_beginAccess();
  if (*(v0 + 168) != 1)
  {
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 216);
  v3[2] = *(v0 + 200);
  v3[3] = v2;
  v4 = *(v0 + 232);
  v3[0] = *(v0 + 168);
  v3[1] = v1;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  swift_endAccess();
  sub_181F49A88(v3, &qword_1EA839BF0);
}

Swift::Void __swiftcall SwiftTLSProtocol.SwiftTLSInstance.connected()()
{
  v1 = v0;
  if (*(v0 + 145))
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v138[0] = v2;
    v138[1] = v3;
    LOBYTE(v138[2]) = v4;
    if (*(v0 + 128) == 6 && *(v0 + 112) == 0)
    {
      sub_181F68EA8(v2, v3, v4);
      if (*(v0 + 128) == 6 && *(v0 + 112) == 0)
      {
        *(v0 + 112) = v0;
        *(v0 + 120) = &protocol witness table for DefaultOneToOneProtocol;
        *(v0 + 128) = 3;

        sub_181F68E5C(0, 0, 6u);
      }
    }

    else
    {
      sub_181F68EA8(v2, v3, v4);
    }

    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v137[0] = *(v0 + 112);
    v137[1] = v5;
    LOBYTE(v137[2]) = v6;
    sub_181F68EA8(v137[0], v5, v6);
    InputHandlerLinkage.invokeConnected(_:)(v137);
    sub_181F68E5C(v137[0], v137[1], v137[2]);
    sub_181F68E5C(v138[0], v138[1], v138[2]);
    return;
  }

  if (*(v0 + 161))
  {
    return;
  }

  *(v0 + 161) = 1;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  *v131 = *(v0 + 16);
  *&v131[8] = v7;
  v131[16] = v8;
  sub_181F68EA8(*v131, v7, v8);
  InputHandlerLinkage.invokeGetParameters()(v136);
  sub_181F68E5C(*v131, *&v131[8], v131[16]);
  memcpy(v137, v136, sizeof(v137));
  memcpy(v138, v136, 0x188uLL);
  if (sub_182064A58(v138) != 1)
  {
    if ((v138[15] & 0x200) != 0)
    {
      *(v0 + 146) = 1;
      sub_182AD2AB8();
      *(v0 + 152) = sub_182AD2A48();
    }

    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    if (v11 == 4)
    {
      sub_181F68EA8(*(v0 + 16), *(v0 + 24), 4u);
      sub_181F636F0(v10, v136);
      if (*&v136[0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BD8);
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = v12;
          LOBYTE(v11) = 4;
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
      }

      sub_181F49A88(v137, &qword_1EA839BE8);
      v24 = v10;
      v25 = v9;
      v26 = 4;
    }

    else
    {
      *&v136[0] = v0;
      *(&v136[0] + 1) = 0x60000001EEFD6190uLL;
      sub_181F68EA8(v10, v9, v11);

      v14 = sub_181F6433C(v136);

      if (v14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BD8);
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v13 = v15;
LABEL_20:
          sub_181F49A88(v137, &qword_1EA839BE8);
          sub_181F68E5C(v10, v9, v11);
          v16 = v13 + *(*v13 + 128);
          swift_beginAccess();
          v136[0] = *v16;
          v17 = *(v16 + 16);
          v18 = *(v16 + 32);
          v19 = *(v16 + 48);
          *&v136[4] = *(v16 + 64);
          v136[2] = v18;
          v136[3] = v19;
          v136[1] = v17;
          sub_1820752F4(v136, v131);

          if (*&v136[0] != 1)
          {
            swift_beginAccess();
            v20 = *(v1 + 184);
            v21 = *(v1 + 216);
            *&v131[32] = *(v1 + 200);
            *&v131[48] = v21;
            *v131 = *(v1 + 168);
            *&v131[16] = v20;
            v22 = v136[0];
            *(v1 + 184) = v136[1];
            v23 = v136[3];
            *(v1 + 200) = v136[2];
            *(v1 + 216) = v23;
            *&v131[64] = *(v1 + 232);
            *(v1 + 232) = *&v136[4];
            *(v1 + 168) = v22;
            sub_181F49A88(v131, &qword_1EA839BF0);
          }

          goto LABEL_27;
        }

        swift_unknownObjectRelease();
      }

      sub_181F49A88(v137, &qword_1EA839BE8);
      v24 = v10;
      v25 = v9;
      v26 = v11;
    }

    sub_181F68E5C(v24, v25, v26);
  }

LABEL_27:
  swift_beginAccess();
  v27 = *(v1 + 184);
  v136[0] = *(v1 + 168);
  v136[1] = v27;
  v28 = *(v1 + 216);
  v136[2] = *(v1 + 200);
  v136[3] = v28;
  *&v136[4] = *(v1 + 232);
  v29 = *&v136[0];
  v30 = *(v1 + 192);
  v132 = *(v1 + 176);
  v133 = v30;
  v31 = *(v1 + 224);
  v134 = *(v1 + 208);
  v135 = v31;
  if (!*&v136[0])
  {
    v36 = *(v1 + 184);
    v37 = *(v1 + 216);
    *&v131[32] = *(v1 + 200);
    *&v131[48] = v37;
    *&v131[64] = *(v1 + 232);
    *v131 = *(v1 + 168);
    *&v131[16] = v36;
    sub_1820752BC(v131, &v130);
    if (qword_1EA8371B0 != -1)
    {
      swift_once();
    }

    v38 = sub_182AD2698();
    __swift_project_value_buffer(v38, qword_1EA843360);
    v39 = sub_182AD2678();
    v40 = sub_182AD38B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_181A37000, v39, v40, "Failed to find QUIC instance on TLS options", v41, 2u);
      MEMORY[0x1865DF520](v41, -1, -1);
    }

    sub_182072BE4(22);
    goto LABEL_78;
  }

  if (*&v136[0] != 1)
  {
    v42 = *(v1 + 240);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1820752F4(v136, v131);
    *(v42 + 24) = v1;

    v43 = *(v1 + 248);
    *(v43 + 24) = v1;

    v127 = *(v1 + 256);
    *(v127 + 24) = v1;

    v128 = *(v1 + 264);
    v128[3] = v1;

    v44 = *(v42 + 72);
    if (v44 == 255 && (v45 = *(v42 + 56), v46 = *(v42 + 64), *(v42 + 56) = v42, *(v42 + 64) = &off_1EEFB9680, *(v42 + 72) = 3, , sub_181F3D4C0(v45, v46, 0xFFu), v44 = *(v42 + 72), v44 == 255))
    {
      __break(1u);
    }

    else
    {
      v48 = *(v42 + 56);
      v47 = *(v42 + 64);
      v49 = v29[12];
      v129 = v29[11];
      v29[11] = v48;
      v29[12] = v47;
      v50 = *(v29 + 104);
      *(v29 + 104) = v44;
      sub_181F68EA8(v48, v47, v44);
      v126 = v48;
      v51 = v48;
      v52 = v47;
      sub_181F68EA8(v51, v47, v44);
      sub_181F68E5C(v129, v49, v50);
      LODWORD(v53) = *(v29 + 952);
      v54 = v29[117];
      v129 = v29;
      v55 = v29[118];
      if (v53 == 6)
      {
        if (v54 | v55)
        {
          LOBYTE(v53) = 6;
        }

        else
        {
          v53 = v129;
          v129[117] = v129;
          v53[118] = &off_1EEFB17F0;
          *(v53 + 952) = 3;

          sub_181F68E5C(0, 0, 6u);
          v54 = v53[117];
          v55 = v53[118];
          LOBYTE(v53) = *(v53 + 952);
        }
      }

      sub_181F68EA8(v54, v55, v53);
      sub_181F3D4C0(v126, v52, v44);
      v56 = *(v42 + 32);
      v57 = *(v42 + 40);
      *(v42 + 32) = v54;
      *(v42 + 40) = v55;
      v58 = *(v42 + 48);
      *(v42 + 48) = v53;
      sub_181F3D4C0(v56, v57, v58);
      v59 = *(v43 + 72);
      if (v59 != 255 || (v60 = *(v43 + 56), v61 = *(v43 + 64), *(v43 + 56) = v43, *(v43 + 64) = &off_1EEFB9680, *(v43 + 72) = 3, , sub_181F3D4C0(v60, v61, 0xFFu), v59 = *(v43 + 72), v59 != 255))
      {
        v62 = *(v43 + 56);
        v63 = *(v43 + 64);
        v64 = v129;
        v65 = v129[14];
        v66 = v129[15];
        v129[14] = v62;
        v64[15] = v63;
        v67 = *(v64 + 128);
        *(v64 + 128) = v59;
        sub_181F68EA8(v62, v63, v59);
        sub_181F68EA8(v62, v63, v59);
        sub_181F68E5C(v65, v66, v67);
        v68 = *(v64 + 952);
        v69 = v64[117];
        v70 = v64[118];
        if (v68 == 6)
        {
          if (v69 | v70)
          {
            LOBYTE(v68) = 6;
          }

          else
          {
            v64[117] = v64;
            v64[118] = &off_1EEFB17F0;
            *(v64 + 952) = 3;

            sub_181F68E5C(0, 0, 6u);
            v69 = v64[117];
            v70 = v64[118];
            LOBYTE(v68) = *(v64 + 952);
          }
        }

        sub_181F68EA8(v69, v70, v68);
        sub_181F3D4C0(v62, v63, v59);
        v71 = *(v43 + 32);
        v72 = *(v43 + 40);
        *(v43 + 32) = v69;
        *(v43 + 40) = v70;
        v73 = *(v43 + 48);
        *(v43 + 48) = v68;
        sub_181F3D4C0(v71, v72, v73);
        v74 = v127;
        v75 = *(v127 + 72);
        if (v75 != 255 || (v76 = *(v127 + 56), v77 = *(v127 + 64), *(v127 + 56) = v127, *(v74 + 64) = &off_1EEFB9680, *(v74 + 72) = 3, , sub_181F3D4C0(v76, v77, 0xFFu), v75 = *(v74 + 72), v75 != 255))
        {
          v78 = *(v74 + 56);
          v79 = *(v74 + 64);
          v80 = v64[17];
          v81 = v64[18];
          v64[17] = v78;
          v64[18] = v79;
          v82 = *(v64 + 152);
          *(v64 + 152) = v75;
          sub_181F68EA8(v78, v79, v75);
          sub_181F68EA8(v78, v79, v75);
          sub_181F68E5C(v80, v81, v82);
          v83 = *(v64 + 952);
          v84 = v64[117];
          v85 = v64[118];
          if (v83 == 6)
          {
            if (v84 | v85)
            {
              LOBYTE(v83) = 6;
            }

            else
            {
              v64[117] = v64;
              v64[118] = &off_1EEFB17F0;
              *(v64 + 952) = 3;

              sub_181F68E5C(0, 0, 6u);
              v84 = v64[117];
              v85 = v64[118];
              LOBYTE(v83) = *(v64 + 952);
            }
          }

          sub_181F68EA8(v84, v85, v83);
          sub_181F3D4C0(v78, v79, v75);
          v86 = *(v74 + 32);
          v87 = *(v74 + 40);
          *(v74 + 32) = v84;
          *(v74 + 40) = v85;
          v88 = *(v74 + 48);
          *(v74 + 48) = v83;
          sub_181F3D4C0(v86, v87, v88);
          v89 = v128;
          v90 = *(v128 + 72);
          if (v90 != 255 || (v91 = v128[7], v92 = v128[8], v128[7] = v128, v89[8] = &off_1EEFB9680, *(v89 + 72) = 3, , sub_181F3D4C0(v91, v92, 0xFFu), v90 = *(v89 + 72), v90 != 255))
          {
            v93 = v89[7];
            v94 = v89[8];
            v95 = v64[20];
            v96 = v64[21];
            v64[20] = v93;
            v64[21] = v94;
            v97 = *(v64 + 176);
            *(v64 + 176) = v90;
            sub_181F68EA8(v93, v94, v90);
            sub_181F68EA8(v93, v94, v90);
            sub_181F68E5C(v95, v96, v97);
            v98 = *(v64 + 952);
            v99 = v64[117];
            v100 = v64[118];
            if (v98 == 6)
            {
              if (v99 | v100)
              {
                LOBYTE(v98) = 6;
              }

              else
              {
                v64[117] = v64;
                v64[118] = &off_1EEFB17F0;
                *(v64 + 952) = 3;

                sub_181F68E5C(0, 0, 6u);
                v99 = v64[117];
                v100 = v64[118];
                LOBYTE(v98) = *(v64 + 952);
              }
            }

            sub_181F68EA8(v99, v100, v98);
            sub_181F3D4C0(v93, v94, v90);
            v101 = v128;
            v102 = v128[4];
            v103 = v128[5];
            v128[4] = v99;
            v101[5] = v100;
            v104 = *(v101 + 48);
            *(v101 + 48) = v98;
            sub_181F3D4C0(v102, v103, v104);
            if (*(v1 + 146) == 1)
            {
              *v131 = v64;
              *&v131[8] = v132;
              *&v131[24] = v133;
              *&v131[40] = v134;
              *&v131[56] = v135;
              v127 = sub_182AD29C8();
              v128 = &v126;
              v105 = *(v127 - 8);
              MEMORY[0x1EEE9AC00](v127);
              v107 = &v126 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);

              sub_182070AB4();
              v108 = sub_182AD2AC8();
              v126 = &v126;
              MEMORY[0x1EEE9AC00](v108);
              v118 = sub_182AD29D8();
              (*(v105 + 8))(v107, v127);

              if (v118)
              {

                if (qword_1EA8371B0 != -1)
                {
                  swift_once();
                }

                v119 = sub_182AD2698();
                __swift_project_value_buffer(v119, qword_1EA843360);
                v114 = sub_182AD2678();
                v115 = sub_182AD38B8();
                if (!os_log_type_enabled(v114, v115))
                {
                  goto LABEL_76;
                }

                v116 = swift_slowAlloc();
                *v116 = 0;
                v117 = "Server handshaker unexpectedly set up bytes";
LABEL_75:
                _os_log_impl(&dword_181A37000, v114, v115, v117, v116, 2u);
                MEMORY[0x1865DF520](v116, -1, -1);
LABEL_76:

                sub_182072BE4(22);
LABEL_77:
                swift_unknownObjectRelease();
LABEL_78:
                sub_181F49A88(v136, &qword_1EA839BF0);
                return;
              }
            }

            else
            {
              *v131 = v64;
              *&v131[8] = v132;
              *&v131[24] = v133;
              *&v131[40] = v134;
              *&v131[56] = v135;
              v127 = sub_182AD29C8();
              v128 = &v126;
              v109 = *(v127 - 8);
              MEMORY[0x1EEE9AC00](v127);
              v111 = &v126 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);

              sub_182070AB4();
              v112 = sub_182AD2AC8();
              v126 = &v126;
              MEMORY[0x1EEE9AC00](v112);
              v120 = sub_182AD29D8();
              (*(v109 + 8))(v111, v127);

              if (!v120)
              {
                if (qword_1EA8371B0 != -1)
                {
                  swift_once();
                }

                v113 = sub_182AD2698();
                __swift_project_value_buffer(v113, qword_1EA843360);
                v114 = sub_182AD2678();
                v115 = sub_182AD38B8();
                if (!os_log_type_enabled(v114, v115))
                {
                  goto LABEL_76;
                }

                v116 = swift_slowAlloc();
                *v116 = 0;
                v117 = "Failed to set up client handshaker";
                goto LABEL_75;
              }

              sub_1820724C8(v120, 0);
            }

            sub_182AD2A28();

            if ((sub_182AD28D8() & 1) == 0)
            {

              v121 = sub_182AD2A58();

              sub_182036BAC(v121);

              v122 = sub_182AD2A18();

              if (v122)
              {

                v123 = sub_182AD2A08();

                sub_182035AA4(v122, v123, 0);
              }

              v124 = sub_182AD2A68();

              if (v124)
              {

                v125 = sub_182AD2A28();

                sub_182035AA4(v124, v125, 1);
                sub_181F49A88(v136, &qword_1EA839BF0);

                swift_unknownObjectRelease();
                return;
              }
            }

            goto LABEL_77;
          }

LABEL_90:
          __break(1u);
          return;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  if (qword_1EA8371B0 != -1)
  {
    swift_once();
  }

  v32 = sub_182AD2698();
  __swift_project_value_buffer(v32, qword_1EA843360);
  v33 = sub_182AD2678();
  v34 = sub_182AD38B8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_181A37000, v33, v34, "Failed to find TLS options", v35, 2u);
    MEMORY[0x1865DF520](v35, -1, -1);
  }

  sub_182072BE4(22);
}