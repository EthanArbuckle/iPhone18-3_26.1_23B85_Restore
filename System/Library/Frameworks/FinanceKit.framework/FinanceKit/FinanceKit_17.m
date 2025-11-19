uint64_t sub_1B732DADC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {

    v4 = sub_1B732FB00;
  }

  else
  {
    v4 = sub_1B732DBF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B732DBF8()
{
  v3 = *(v0 + 328);
  if (!v3)
  {

    if (qword_1EB98EA90 != -1)
    {
      swift_once();
    }

    v25 = sub_1B78000B8();
    __swift_project_value_buffer(v25, qword_1EB994930);

    v26 = sub_1B7800098();
    v27 = sub_1B78011D8();

    v28 = os_log_type_enabled(v26, v27);
    v7 = *(v0 + 304);
    if (v28)
    {
      v29 = *(v0 + 296);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v116 = v31;
      *v30 = 136315138;
      v32 = sub_1B71A3EF8(v29, v7, &v116);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1B7198000, v26, v27, "Unable to connect to extension for: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B8CA7A40](v31, -1, -1);
      MEMORY[0x1B8CA7A40](v30, -1, -1);

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), v4);
  [*(v3 + 16) auditToken];
  (*(v5 + 8))(*(v0 + 60), *(v0 + 68), *(v0 + 76), *(v0 + 84), v4, v5);
  *(v0 + 41) = *(v0 + 121);
  v6 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v6;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  *(v0 + 344) = v8;

  sub_1B71B4F10(v0 + 16);
  if (!v8)
  {

    if (qword_1EB98EA90 != -1)
    {
      swift_once();
    }

    v33 = sub_1B78000B8();
    __swift_project_value_buffer(v33, qword_1EB994930);

    v34 = sub_1B7800098();
    v7 = sub_1B78011D8();

    v35 = os_log_type_enabled(v34, v7);
    v36 = *(v0 + 304);
    if (v35)
    {
      v37 = *(v0 + 296);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v116 = v39;
      *v38 = 136315138;
      v40 = sub_1B71A3EF8(v37, v36, &v116);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_1B7198000, v34, v7, "Extension for %s has no bundle identifier", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1B8CA7A40](v39, -1, -1);
      MEMORY[0x1B8CA7A40](v38, -1, -1);

      goto LABEL_32;
    }

LABEL_31:

LABEL_32:
    v3 = 1;
    v8 = 0x1EB98E000uLL;
    while (1)
    {
      v41 = *(v0 + 288);
      v42 = (*(v0 + 280) - 1) & *(v0 + 280);
      if (!v42)
      {
        break;
      }

      v43 = *(v0 + 272);
LABEL_40:
      *(v0 + 280) = v42;
      *(v0 + 288) = v41;
      v45 = (*(v43 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v42)))));
      v46 = *v45;
      *(v0 + 296) = *v45;
      v7 = v45[1];
      *(v0 + 304) = v7;

      if (sub_1B7800E98())
      {

        if (*(v8 + 2704) != -1)
        {
          swift_once();
        }

        v89 = sub_1B78000B8();
        __swift_project_value_buffer(v89, qword_1EB994930);
        v90 = sub_1B7800098();
        v91 = sub_1B78011D8();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = *(v0 + 58);
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v116 = v94;
          *v93 = 136315138;
          v95 = 0xE500000000000000;
          v96 = 0x796C696164;
          v97 = 0xE600000000000000;
          if (v92 != 2)
          {
            v96 = 0x796C6B656577;
            v95 = 0xE600000000000000;
          }

          v98 = 0x796C72756F68;
          if (!v92)
          {
            v98 = 0x74616964656D6D69;
            v97 = 0xE900000000000065;
          }

          if (v92 <= 1)
          {
            v99 = v98;
          }

          else
          {
            v99 = v96;
          }

          if (v92 <= 1)
          {
            v100 = v97;
          }

          else
          {
            v100 = v95;
          }

          v101 = sub_1B71A3EF8(v99, v100, &v116);

          *(v93 + 4) = v101;
          _os_log_impl(&dword_1B7198000, v90, v91, "Delivery task for %s cancelled, stopping", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x1B8CA7A40](v94, -1, -1);
          MEMORY[0x1B8CA7A40](v93, -1, -1);
        }

LABEL_62:
        v63 = *(v0 + 200);

        v64 = *(v0 + 8);

        return v64(v63);
      }

      if (*(*(v0 + 272) + 16))
      {
        v47 = sub_1B724548C(v46, v7);
        if (v48)
        {
          v102 = *(*(*(v0 + 272) + 56) + 8 * v47);
          v103 = *(v102 + 16);
          v104 = MEMORY[0x1E69E7CC0];
          if (v103)
          {
            v105 = *(v0 + 256);
            *(v0 + 216) = MEMORY[0x1E69E7CC0];

            sub_1B71FDBC8(0, v103, 0);
            v104 = *(v0 + 216);
            v106 = v102 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
            v114 = *(v105 + 72);
            do
            {
              v107 = *(v0 + 264);
              sub_1B71F28A4(v106, v107);
              v108 = *v107;
              sub_1B71F2908(v107);
              *(v0 + 216) = v104;
              v110 = *(v104 + 16);
              v109 = *(v104 + 24);
              if (v110 >= v109 >> 1)
              {
                sub_1B71FDBC8((v109 > 1), v110 + 1, 1);
                v104 = *(v0 + 216);
              }

              *(v104 + 16) = v110 + 1;
              *(v104 + v110 + 32) = v108;
              v106 += v114;
              --v103;
            }

            while (v103);
          }

          *(v0 + 312) = v104;
          *(v0 + 184) = v46;
          *(v0 + 192) = v7;
          v111 = swift_task_alloc();
          *(v0 + 320) = v111;
          *v111 = v0;
          v111[1] = sub_1B732DADC;

          return sub_1B73302DC((v0 + 184));
        }
      }

      if (*(v8 + 2704) != -1)
      {
        swift_once();
      }

      v49 = sub_1B78000B8();
      __swift_project_value_buffer(v49, qword_1EB994930);

      v50 = sub_1B7800098();
      v51 = sub_1B78011D8();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v0 + 58);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *(v0 + 208) = v54;
        *v53 = 136315394;
        v55 = 0x796C696164;
        if (v52 != 2)
        {
          v55 = 0x796C6B656577;
        }

        v56 = 0xE500000000000000;
        if (v52 != 2)
        {
          v56 = 0xE600000000000000;
        }

        v57 = 0x74616964656D6D69;
        if (v52)
        {
          v57 = 0x796C72756F68;
        }

        v58 = 0xE900000000000065;
        if (v52)
        {
          v58 = 0xE600000000000000;
        }

        if (v52 <= 1)
        {
          v59 = v57;
        }

        else
        {
          v59 = v55;
        }

        if (v52 <= 1)
        {
          v60 = v58;
        }

        else
        {
          v60 = v56;
        }

        v61 = sub_1B71A3EF8(v59, v60, (v0 + 208));

        *(v53 + 4) = v61;
        *(v53 + 12) = 2080;
        v62 = sub_1B71A3EF8(v46, v7, (v0 + 208));

        *(v53 + 14) = v62;
        _os_log_impl(&dword_1B7198000, v50, v51, "Delivery for %s to %s had no registrations", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA7A40](v54, -1, -1);
        MEMORY[0x1B8CA7A40](v53, -1, -1);

        v8 = 0x1EB98E000;
      }

      else
      {
      }
    }

    while (1)
    {
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v43 = *(v0 + 272);
      if (v44 >= (((1 << *(v0 + 59)) + 63) >> 6))
      {

        goto LABEL_62;
      }

      v42 = *(v43 + 8 * v44 + 64);
      ++v41;
      if (v42)
      {
        v41 = v44;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_113;
  }

  v9 = 0x1EB98E000uLL;
  if (*(v0 + 296) == v7 && v8 == *(v0 + 304) || (sub_1B78020F8() & 1) != 0)
  {
    if (qword_1EB98EA90 != -1)
    {
      swift_once();
    }

    v10 = sub_1B78000B8();
    __swift_project_value_buffer(v10, qword_1EB994930);

    v11 = sub_1B7800098();
    v12 = sub_1B78011F8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 58);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *(v0 + 232) = v15;
      *v14 = 136315394;
      v16 = 0xE900000000000065;
      v17 = 0xE500000000000000;
      v18 = 0x796C696164;
      if (v13 != 2)
      {
        v18 = 0x796C6B656577;
        v17 = 0xE600000000000000;
      }

      v19 = 0x796C72756F68;
      if (v13)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x74616964656D6D69;
      }

      if (v13 <= 1)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (v13 <= 1)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      v22 = sub_1B71A3EF8(v20, v21, (v0 + 232));

      *(v14 + 4) = v22;
      *(v14 + 12) = 2080;

      v23 = sub_1B71A3EF8(v7, v8, (v0 + 232));

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1B7198000, v11, v12, "Initiating %s delivery to extension: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v15, -1, -1);
      v24 = v14;
LABEL_80:
      MEMORY[0x1B8CA7A40](v24, -1, -1);

      v9 = 0x1EB98E000;
      goto LABEL_82;
    }
  }

  else
  {
    if (qword_1EB98EA90 != -1)
    {
      swift_once();
    }

    v66 = sub_1B78000B8();
    __swift_project_value_buffer(v66, qword_1EB994930);

    v11 = sub_1B7800098();
    v67 = sub_1B78011F8();

    if (os_log_type_enabled(v11, v67))
    {
      v68 = *(v0 + 58);
      v69 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *(v0 + 224) = v113;
      *v69 = 136315650;
      v70 = 0xE900000000000065;
      v71 = 0xE500000000000000;
      v72 = 0x796C696164;
      if (v68 != 2)
      {
        v72 = 0x796C6B656577;
        v71 = 0xE600000000000000;
      }

      v73 = 0x796C72756F68;
      if (v68)
      {
        v70 = 0xE600000000000000;
      }

      else
      {
        v73 = 0x74616964656D6D69;
      }

      if (v68 <= 1)
      {
        v74 = v73;
      }

      else
      {
        v74 = v72;
      }

      if (v68 <= 1)
      {
        v75 = v70;
      }

      else
      {
        v75 = v71;
      }

      v76 = *(v0 + 304);
      v112 = *(v0 + 296);
      v77 = sub_1B71A3EF8(v74, v75, (v0 + 224));

      *(v69 + 4) = v77;
      *(v69 + 12) = 2080;

      v78 = sub_1B71A3EF8(v7, v8, (v0 + 224));

      *(v69 + 14) = v78;
      *(v69 + 22) = 2080;

      v79 = sub_1B71A3EF8(v112, v76, (v0 + 224));

      *(v69 + 24) = v79;
      _os_log_impl(&dword_1B7198000, v11, v67, "    Initiating %s delivery to extension %s     within: %s", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v113, -1, -1);
      v24 = v69;
      goto LABEL_80;
    }
  }

LABEL_82:
  v80 = *(v0 + 58);
  v1 = dbl_1B781A260[v80];
  v2 = dbl_1B781A240[v80];
  if (*(v9 + 2704) != -1)
  {
LABEL_113:
    swift_once();
  }

  v81 = sub_1B78000B8();
  __swift_project_value_buffer(v81, qword_1EB994930);
  v82 = sub_1B7800098();
  v83 = sub_1B78011F8();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 134218240;
    *(v84 + 4) = v2;
    *(v84 + 12) = 2048;
    *(v84 + 14) = v1;
    _os_log_impl(&dword_1B7198000, v82, v83, "Starting extension delivery with window: %f - %f", v84, 0x16u);
    MEMORY[0x1B8CA7A40](v84, -1, -1);
  }

  v85 = *(v0 + 312);
  v86 = *(v0 + 248);

  sub_1B719B06C(v86 + 56, v0 + 144);
  v87 = swift_task_alloc();
  *(v0 + 352) = v87;
  *(v87 + 16) = v1;
  *(v87 + 24) = v7;
  *(v87 + 32) = v8;
  *(v87 + 40) = v0 + 144;
  *(v87 + 48) = v3;
  *(v87 + 56) = v85;
  *(v87 + 64) = v2 - v1;
  v88 = swift_task_alloc();
  *(v0 + 360) = v88;
  *v88 = v0;
  v88[1] = sub_1B732EB0C;

  return MEMORY[0x1EEE6DD58](v0 + 57);
}

uint64_t sub_1B732EB0C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1B732F2F0;
  }

  else
  {

    v2 = sub_1B732EC34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B732EC34()
{
  v58 = v0;

  v1 = *(v0 + 57);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  if ((v1 & 1) != 0 || !*(*(v0 + 272) + 16))
  {

LABEL_6:

    goto LABEL_7;
  }

  v2 = sub_1B724548C(*(v0 + 296), *(v0 + 304));
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(*(*(v0 + 272) + 56) + 8 * v2);
  swift_bridgeObjectRetain_n();
  sub_1B72443C0(v5);

LABEL_7:
  v6 = 0x1EB98E000uLL;
  while (1)
  {
    v7 = *(v0 + 288);
    v8 = (*(v0 + 280) - 1) & *(v0 + 280);
    if (!v8)
    {
      while (1)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = *(v0 + 272);
        if (v10 >= (((1 << *(v0 + 59)) + 63) >> 6))
        {

          goto LABEL_37;
        }

        v8 = *(v9 + 8 * v10 + 64);
        ++v7;
        if (v8)
        {
          v7 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v9 = *(v0 + 272);
LABEL_15:
    *(v0 + 280) = v8;
    *(v0 + 288) = v7;
    v11 = (*(v9 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))));
    v12 = *v11;
    *(v0 + 296) = *v11;
    v13 = v11[1];
    *(v0 + 304) = v13;

    if (sub_1B7800E98())
    {
      break;
    }

    if (*(*(v0 + 272) + 16))
    {
      v14 = sub_1B724548C(v12, v13);
      if (v15)
      {
        v46 = *(*(*(v0 + 272) + 56) + 8 * v14);
        v47 = *(v46 + 16);
        v48 = MEMORY[0x1E69E7CC0];
        if (v47)
        {
          v49 = *(v0 + 256);
          *(v0 + 216) = MEMORY[0x1E69E7CC0];

          sub_1B71FDBC8(0, v47, 0);
          v48 = *(v0 + 216);
          v50 = v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
          v56 = *(v49 + 72);
          do
          {
            v51 = *(v0 + 264);
            sub_1B71F28A4(v50, v51);
            v52 = *v51;
            sub_1B71F2908(v51);
            *(v0 + 216) = v48;
            v54 = *(v48 + 16);
            v53 = *(v48 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1B71FDBC8((v53 > 1), v54 + 1, 1);
              v48 = *(v0 + 216);
            }

            *(v48 + 16) = v54 + 1;
            *(v48 + v54 + 32) = v52;
            v50 += v56;
            --v47;
          }

          while (v47);
        }

        *(v0 + 312) = v48;
        *(v0 + 184) = v12;
        *(v0 + 192) = v13;
        v55 = swift_task_alloc();
        *(v0 + 320) = v55;
        *v55 = v0;
        v55[1] = sub_1B732DADC;

        return sub_1B73302DC((v0 + 184));
      }
    }

    if (*(v6 + 2704) != -1)
    {
      swift_once();
    }

    v16 = sub_1B78000B8();
    __swift_project_value_buffer(v16, qword_1EB994930);

    v17 = sub_1B7800098();
    v18 = sub_1B78011D8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 58);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *(v0 + 208) = v21;
      *v20 = 136315394;
      v22 = 0x796C696164;
      if (v19 != 2)
      {
        v22 = 0x796C6B656577;
      }

      v23 = 0xE500000000000000;
      if (v19 != 2)
      {
        v23 = 0xE600000000000000;
      }

      v24 = 0x74616964656D6D69;
      if (v19)
      {
        v24 = 0x796C72756F68;
      }

      v25 = 0xE900000000000065;
      if (v19)
      {
        v25 = 0xE600000000000000;
      }

      if (v19 <= 1)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v19 <= 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      v28 = sub_1B71A3EF8(v26, v27, (v0 + 208));

      *(v20 + 4) = v28;
      *(v20 + 12) = 2080;
      v29 = sub_1B71A3EF8(v12, v13, (v0 + 208));

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1B7198000, v17, v18, "Delivery for %s to %s had no registrations", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v21, -1, -1);
      MEMORY[0x1B8CA7A40](v20, -1, -1);

      v6 = 0x1EB98E000;
    }

    else
    {
    }
  }

  if (*(v6 + 2704) == -1)
  {
    goto LABEL_42;
  }

LABEL_65:
  swift_once();
LABEL_42:
  v33 = sub_1B78000B8();
  __swift_project_value_buffer(v33, qword_1EB994930);
  v34 = sub_1B7800098();
  v35 = sub_1B78011D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 58);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57 = v38;
    *v37 = 136315138;
    v39 = 0xE500000000000000;
    v40 = 0x796C696164;
    v41 = 0xE600000000000000;
    if (v36 != 2)
    {
      v40 = 0x796C6B656577;
      v39 = 0xE600000000000000;
    }

    v42 = 0x796C72756F68;
    if (!v36)
    {
      v42 = 0x74616964656D6D69;
      v41 = 0xE900000000000065;
    }

    if (v36 <= 1)
    {
      v43 = v42;
    }

    else
    {
      v43 = v40;
    }

    if (v36 <= 1)
    {
      v44 = v41;
    }

    else
    {
      v44 = v39;
    }

    v45 = sub_1B71A3EF8(v43, v44, &v57);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_1B7198000, v34, v35, "Delivery task for %s cancelled, stopping", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
    MEMORY[0x1B8CA7A40](v37, -1, -1);
  }

LABEL_37:
  v30 = *(v0 + 200);

  v31 = *(v0 + 8);

  return v31(v30);
}

uint64_t sub_1B732F2F0()
{
  v71 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  v1 = *(v0 + 368);
  v2 = 0x1EB98E000uLL;
  if (qword_1EB98EA90 != -1)
  {
LABEL_63:
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EB994930);

  v4 = v1;
  v5 = sub_1B7800098();
  v6 = sub_1B78011D8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 304);
  v9 = &unk_1B780C000;
  if (v7)
  {
    v10 = v3;
    v11 = *(v0 + 296);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v70 = v14;
    *v12 = 136315394;
    v15 = sub_1B71A3EF8(v11, v8, &v70);

    *(v12 + 4) = v15;
    v3 = v10;
    *(v12 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_1B7198000, v5, v6, "Error delivering to %s: %@", v12, 0x16u);
    sub_1B7205418(v13, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    v2 = 0x1EB98E000;
    MEMORY[0x1B8CA7A40](v18, -1, -1);
    v19 = v12;
    v9 = &unk_1B780C000;
    MEMORY[0x1B8CA7A40](v19, -1, -1);
  }

  else
  {
  }

  v1 = qword_1EB994930;
  v67 = v9[14];
  v68 = v3;
  while (1)
  {
    v20 = *(v0 + 288);
    v21 = (*(v0 + 280) - 1) & *(v0 + 280);
    if (!v21)
    {
      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v22 = *(v0 + 272);
        if (v23 >= (((1 << *(v0 + 59)) + 63) >> 6))
        {

          goto LABEL_35;
        }

        v21 = *(v22 + 8 * v23 + 64);
        ++v20;
        if (v21)
        {
          v20 = v23;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v22 = *(v0 + 272);
LABEL_13:
    *(v0 + 280) = v21;
    *(v0 + 288) = v20;
    v24 = (*(v22 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v21)))));
    v25 = *v24;
    *(v0 + 296) = *v24;
    v26 = v24[1];
    *(v0 + 304) = v26;

    if (sub_1B7800E98())
    {
      break;
    }

    if (*(*(v0 + 272) + 16))
    {
      v27 = sub_1B724548C(v25, v26);
      if (v28)
      {
        v57 = *(*(*(v0 + 272) + 56) + 8 * v27);
        v58 = *(v57 + 16);
        v59 = MEMORY[0x1E69E7CC0];
        if (v58)
        {
          v60 = *(v0 + 256);
          *(v0 + 216) = MEMORY[0x1E69E7CC0];

          sub_1B71FDBC8(0, v58, 0);
          v59 = *(v0 + 216);
          v61 = v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
          v69 = *(v60 + 72);
          do
          {
            v62 = *(v0 + 264);
            sub_1B71F28A4(v61, v62);
            v63 = *v62;
            sub_1B71F2908(v62);
            *(v0 + 216) = v59;
            v65 = *(v59 + 16);
            v64 = *(v59 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_1B71FDBC8((v64 > 1), v65 + 1, 1);
              v59 = *(v0 + 216);
            }

            *(v59 + 16) = v65 + 1;
            *(v59 + v65 + 32) = v63;
            v61 += v69;
            --v58;
          }

          while (v58);
        }

        *(v0 + 312) = v59;
        *(v0 + 184) = v25;
        *(v0 + 192) = v26;
        v66 = swift_task_alloc();
        *(v0 + 320) = v66;
        *v66 = v0;
        v66[1] = sub_1B732DADC;

        return sub_1B73302DC((v0 + 184));
      }
    }

    if (*(v2 + 2704) != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_1EB994930);

    v29 = sub_1B7800098();
    v30 = sub_1B78011D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 58);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *(v0 + 208) = v33;
      *v32 = v67;
      v34 = 0x796C696164;
      if (v31 != 2)
      {
        v34 = 0x796C6B656577;
      }

      v35 = 0xE500000000000000;
      if (v31 != 2)
      {
        v35 = 0xE600000000000000;
      }

      v36 = 0x74616964656D6D69;
      if (v31)
      {
        v36 = 0x796C72756F68;
      }

      v37 = 0xE900000000000065;
      if (v31)
      {
        v37 = 0xE600000000000000;
      }

      if (v31 <= 1)
      {
        v38 = v36;
      }

      else
      {
        v38 = v34;
      }

      if (v31 <= 1)
      {
        v39 = v37;
      }

      else
      {
        v39 = v35;
      }

      v40 = sub_1B71A3EF8(v38, v39, (v0 + 208));

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      v41 = sub_1B71A3EF8(v25, v26, (v0 + 208));

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1B7198000, v29, v30, "Delivery for %s to %s had no registrations", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v33, -1, -1);
      MEMORY[0x1B8CA7A40](v32, -1, -1);

      v2 = 0x1EB98E000;
      v3 = v68;
      v1 = qword_1EB994930;
    }

    else
    {
    }
  }

  if (*(v2 + 2704) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EB994930);
  v45 = sub_1B7800098();
  v46 = sub_1B78011D8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 58);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70 = v49;
    *v48 = 136315138;
    v50 = 0xE500000000000000;
    v51 = 0x796C696164;
    v52 = 0xE600000000000000;
    if (v47 != 2)
    {
      v51 = 0x796C6B656577;
      v50 = 0xE600000000000000;
    }

    v53 = 0x796C72756F68;
    if (!v47)
    {
      v53 = 0x74616964656D6D69;
      v52 = 0xE900000000000065;
    }

    if (v47 <= 1)
    {
      v54 = v53;
    }

    else
    {
      v54 = v51;
    }

    if (v47 <= 1)
    {
      v55 = v52;
    }

    else
    {
      v55 = v50;
    }

    v56 = sub_1B71A3EF8(v54, v55, &v70);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_1B7198000, v45, v46, "Delivery task for %s cancelled, stopping", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1B8CA7A40](v49, -1, -1);
    MEMORY[0x1B8CA7A40](v48, -1, -1);
  }

LABEL_35:
  v42 = *(v0 + 200);

  v43 = *(v0 + 8);

  return v43(v42);
}

uint64_t sub_1B732FB00()
{
  v71 = v0;
  v1 = *(v0 + 336);
  v2 = 0x1EB98E000uLL;
  if (qword_1EB98EA90 != -1)
  {
LABEL_63:
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EB994930);

  v4 = v1;
  v5 = sub_1B7800098();
  v6 = sub_1B78011D8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 304);
  v9 = &unk_1B780C000;
  if (v7)
  {
    v10 = v3;
    v11 = *(v0 + 296);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v70 = v14;
    *v12 = 136315394;
    v15 = sub_1B71A3EF8(v11, v8, &v70);

    *(v12 + 4) = v15;
    v3 = v10;
    *(v12 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_1B7198000, v5, v6, "Error delivering to %s: %@", v12, 0x16u);
    sub_1B7205418(v13, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    v2 = 0x1EB98E000;
    MEMORY[0x1B8CA7A40](v18, -1, -1);
    v19 = v12;
    v9 = &unk_1B780C000;
    MEMORY[0x1B8CA7A40](v19, -1, -1);
  }

  else
  {
  }

  v1 = qword_1EB994930;
  v67 = v9[14];
  v68 = v3;
  while (1)
  {
    v20 = *(v0 + 288);
    v21 = (*(v0 + 280) - 1) & *(v0 + 280);
    if (!v21)
    {
      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v22 = *(v0 + 272);
        if (v23 >= (((1 << *(v0 + 59)) + 63) >> 6))
        {

          goto LABEL_35;
        }

        v21 = *(v22 + 8 * v23 + 64);
        ++v20;
        if (v21)
        {
          v20 = v23;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v22 = *(v0 + 272);
LABEL_13:
    *(v0 + 280) = v21;
    *(v0 + 288) = v20;
    v24 = (*(v22 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v21)))));
    v25 = *v24;
    *(v0 + 296) = *v24;
    v26 = v24[1];
    *(v0 + 304) = v26;

    if (sub_1B7800E98())
    {
      break;
    }

    if (*(*(v0 + 272) + 16))
    {
      v27 = sub_1B724548C(v25, v26);
      if (v28)
      {
        v57 = *(*(*(v0 + 272) + 56) + 8 * v27);
        v58 = *(v57 + 16);
        v59 = MEMORY[0x1E69E7CC0];
        if (v58)
        {
          v60 = *(v0 + 256);
          *(v0 + 216) = MEMORY[0x1E69E7CC0];

          sub_1B71FDBC8(0, v58, 0);
          v59 = *(v0 + 216);
          v61 = v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
          v69 = *(v60 + 72);
          do
          {
            v62 = *(v0 + 264);
            sub_1B71F28A4(v61, v62);
            v63 = *v62;
            sub_1B71F2908(v62);
            *(v0 + 216) = v59;
            v65 = *(v59 + 16);
            v64 = *(v59 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_1B71FDBC8((v64 > 1), v65 + 1, 1);
              v59 = *(v0 + 216);
            }

            *(v59 + 16) = v65 + 1;
            *(v59 + v65 + 32) = v63;
            v61 += v69;
            --v58;
          }

          while (v58);
        }

        *(v0 + 312) = v59;
        *(v0 + 184) = v25;
        *(v0 + 192) = v26;
        v66 = swift_task_alloc();
        *(v0 + 320) = v66;
        *v66 = v0;
        v66[1] = sub_1B732DADC;

        return sub_1B73302DC((v0 + 184));
      }
    }

    if (*(v2 + 2704) != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_1EB994930);

    v29 = sub_1B7800098();
    v30 = sub_1B78011D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 58);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *(v0 + 208) = v33;
      *v32 = v67;
      v34 = 0x796C696164;
      if (v31 != 2)
      {
        v34 = 0x796C6B656577;
      }

      v35 = 0xE500000000000000;
      if (v31 != 2)
      {
        v35 = 0xE600000000000000;
      }

      v36 = 0x74616964656D6D69;
      if (v31)
      {
        v36 = 0x796C72756F68;
      }

      v37 = 0xE900000000000065;
      if (v31)
      {
        v37 = 0xE600000000000000;
      }

      if (v31 <= 1)
      {
        v38 = v36;
      }

      else
      {
        v38 = v34;
      }

      if (v31 <= 1)
      {
        v39 = v37;
      }

      else
      {
        v39 = v35;
      }

      v40 = sub_1B71A3EF8(v38, v39, (v0 + 208));

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      v41 = sub_1B71A3EF8(v25, v26, (v0 + 208));

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1B7198000, v29, v30, "Delivery for %s to %s had no registrations", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v33, -1, -1);
      MEMORY[0x1B8CA7A40](v32, -1, -1);

      v2 = 0x1EB98E000;
      v3 = v68;
      v1 = qword_1EB994930;
    }

    else
    {
    }
  }

  if (*(v2 + 2704) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EB994930);
  v45 = sub_1B7800098();
  v46 = sub_1B78011D8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 58);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70 = v49;
    *v48 = 136315138;
    v50 = 0xE500000000000000;
    v51 = 0x796C696164;
    v52 = 0xE600000000000000;
    if (v47 != 2)
    {
      v51 = 0x796C6B656577;
      v50 = 0xE600000000000000;
    }

    v53 = 0x796C72756F68;
    if (!v47)
    {
      v53 = 0x74616964656D6D69;
      v52 = 0xE900000000000065;
    }

    if (v47 <= 1)
    {
      v54 = v53;
    }

    else
    {
      v54 = v51;
    }

    if (v47 <= 1)
    {
      v55 = v52;
    }

    else
    {
      v55 = v50;
    }

    v56 = sub_1B71A3EF8(v54, v55, &v70);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_1B7198000, v45, v46, "Delivery task for %s cancelled, stopping", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1B8CA7A40](v49, -1, -1);
    MEMORY[0x1B8CA7A40](v48, -1, -1);
  }

LABEL_35:
  v42 = *(v0 + 200);

  v43 = *(v0 + 8);

  return v43(v42);
}

uint64_t sub_1B73302DC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[10] = v1;
  v2[11] = v3;
  v2[12] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1B7330304, 0, 0);
}

uint64_t sub_1B7330304()
{
  v1 = v0[10];
  v2 = v1[5];
  v3 = __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = v1[15];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 12, v4);

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1B7330418;
  v7 = v0[11];
  v8 = v0[12];

  return static ExtensionServiceConfiguration.makeConnections<A, B>(extensionFinder:containingIdentifier:entitlementChecker:)(v3, v7, v8, v5, &type metadata for BackgroundDeliveryServiceConfiguration, v2, v4, &protocol witness table for BackgroundDeliveryServiceConfiguration);
}

uint64_t sub_1B7330418(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 112) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7330568, 0, 0);
}

uint64_t sub_1B7330568()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
    if (sub_1B7801958())
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];

    v9 = v8[5];
    v10 = v8[6];
    v11 = __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
    v12 = v8[15];
    v13 = __swift_project_boxed_opaque_existential_1(v8 + 12, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v14 = swift_allocObject();
    v0[19] = v14;
    *(v14 + 16) = xmmword_1B7807CD0;
    *(v14 + 32) = v7;
    *(v14 + 40) = v6;
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_1B73309C0;

    return static ExtensionServiceConfiguration.makeConnection<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(v11, v14, v13, &type metadata for BackgroundDeliveryServiceConfiguration, v9, v12, &protocol witness table for BackgroundDeliveryServiceConfiguration, v10);
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8CA5DC0](0, v0[14]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[14] + 32);
  }

  v0[15] = v3;

  [*(v3 + 16) resume];
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v0 + 8;
  v4[3] = &unk_1B781A210;
  v4[4] = 0;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1B733081C;

  return sub_1B72B9ADC();
}

uint64_t sub_1B733081C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B7330954;
  }

  else
  {

    v2 = sub_1B7330938;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7330954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73309C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1B7330F7C;
  }

  else
  {

    v4 = sub_1B7330ADC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7330ADC()
{
  v1 = v0[21];
  [*(v1 + 16) resume];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  v2[2] = v0 + 9;
  v2[3] = &unk_1B781A228;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1B7330BDC;

  return sub_1B72B9ADC();
}

uint64_t sub_1B7330BDC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B7330F0C;
  }

  else
  {
    v2 = sub_1B7330CF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7330CF0()
{
  v15 = v0;
  v1 = *(v0 + 168);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), v2);
  [*(v1 + 16) auditToken];
  (*(v3 + 8))(v14[0], v14[1], v14[2], v14[3], v2, v3);
  sub_1B71B4F10(v0 + 16);
  if ((*(v0 + 17) & 1) != 0 || *(v0 + 18) == 1)
  {
    v4 = *(v0 + 168);
  }

  else
  {
    if (qword_1EB98EA90 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EB994930);

    v6 = sub_1B7800098();
    v7 = sub_1B78011D8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B71A3EF8(v9, v8, v14);
      _os_log_impl(&dword_1B7198000, v6, v7, "Missing entitlement for internal extension: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1B8CA7A40](v11, -1, -1);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
    }

    v4 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v4);
}

uint64_t sub_1B7330F0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7330F7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7331008(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EB98EA90 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EB994930);

  v7 = sub_1B7800098();
  v8 = sub_1B78011D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1B71A3EF8(a1, a2, v14);
    _os_log_impl(&dword_1B7198000, v7, v8, "Terminating extension: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v14[0] = a1;
  v14[1] = a2;
  return (*(v12 + 8))(v14, 0xD000000000000019, 0x80000001B787A280, v11, v12);
}

uint64_t sub_1B7331324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  *(v9 + 280) = a9;
  *(v9 + 264) = a6;
  *(v9 + 272) = a7;
  *(v9 + 248) = a4;
  *(v9 + 256) = a5;
  *(v9 + 240) = a3;
  *(v9 + 232) = a8;
  *(v9 + 216) = a1;
  *(v9 + 224) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A0);
  *(v9 + 288) = v10;
  *(v9 + 296) = *(v10 - 8);
  *(v9 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B733146C, 0, 0);
}

uint64_t sub_1B733146C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 264);
  v16 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 232);
  v7 = *(v0 + 224);
  v8 = sub_1B7800DF8();
  *(v0 + 352) = v8;
  v9 = *(v8 - 8);
  *(v0 + 360) = v9;
  v10 = *(v9 + 56);
  *(v0 + 368) = v10;
  *(v0 + 376) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v1, 1, 1, v8);
  sub_1B719B06C(v4, v0 + 16);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v6;
  v11[5] = v5;
  v11[6] = v3;
  sub_1B71E4C44((v0 + 16), (v11 + 7));

  sub_1B7332598(v1, &unk_1B781A170, v11);
  sub_1B7205418(v1, &unk_1EB99C280);
  v10(v1, 1, 1, v8);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = v5;
  v12[6] = v3;
  v12[7] = v16;

  sub_1B7332FF8(v1, &unk_1B781A180, v12);
  sub_1B7205418(v1, &unk_1EB99C280);
  *(v0 + 384) = *v7;
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B7800ED8();
  v13 = swift_task_alloc();
  *(v0 + 400) = v13;
  *v13 = v0;
  v13[1] = sub_1B7331718;
  v14 = *(v0 + 288);

  return MEMORY[0x1EEE6DAD8](v0 + 408, 0, 0, v14, v0 + 208);
}

uint64_t sub_1B7331718()
{

  if (v0)
  {
    v1 = sub_1B7331EC8;
  }

  else
  {
    v1 = sub_1B7331828;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B7331828()
{
  v52 = v0;
  v1 = *(v0 + 408);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      sub_1B7331008(*(v0 + 240), *(v0 + 248), *(v0 + 256));
    }

    else if (v1 == 3)
    {
      if (qword_1EB98EA90 != -1)
      {
        swift_once();
      }

      v2 = sub_1B78000B8();
      __swift_project_value_buffer(v2, qword_1EB994930);

      v3 = sub_1B7800098();
      v4 = sub_1B78011F8();

      if (os_log_type_enabled(v3, v4))
      {
        v6 = *(v0 + 240);
        v5 = *(v0 + 248);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v51 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_1B71A3EF8(v6, v5, &v51);
        _os_log_impl(&dword_1B7198000, v3, v4, "Background delivery completed for extension: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1B8CA7A40](v8, -1, -1);
        MEMORY[0x1B8CA7A40](v7, -1, -1);
      }

      sub_1B7800D48();
      v9 = 0;
      goto LABEL_16;
    }

    v9 = 1;
LABEL_16:
    v21 = *(v0 + 216);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    *v21 = v9;

    v22 = *(v0 + 8);

    return v22();
  }

  if (!*(v0 + 408))
  {
    v10 = *(v0 + 264);
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    (*(v0 + 368))(*(v0 + 336), 1, 1, *(v0 + 352));
    v13 = swift_allocObject();
    v13[2] = 0;
    v14 = v13 + 2;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v12;
    v13[6] = v11;

    if ((swift_taskGroup_addPending() & 1) == 0)
    {
      sub_1B7205418(*(v0 + 336), &unk_1EB99C280);

      goto LABEL_26;
    }

    v15 = *(v0 + 352);
    v16 = *(v0 + 360);
    v17 = *(v0 + 328);
    sub_1B733539C(*(v0 + 336), v17);
    if ((*(v16 + 48))(v17, 1, v15) == 1)
    {
      sub_1B7205418(*(v0 + 328), &unk_1EB99C280);
      if (*v14)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1B7800CD8();
        v20 = v19;
        swift_unknownObjectRelease();
LABEL_22:

        if (v20 | v18)
        {
          v27 = v0 + 128;
          *(v0 + 128) = 0;
          *(v0 + 136) = 0;
          *(v0 + 144) = v18;
          *(v0 + 152) = v20;
        }

        else
        {
          v27 = 0;
        }

        v28 = *(v0 + 384);
        v29 = *(v0 + 336);
        *(v0 + 184) = 1;
        *(v0 + 192) = v27;
        *(v0 + 200) = v28;
        swift_task_create();

        sub_1B7205418(v29, &unk_1EB99C280);
LABEL_26:
        v30 = *(v0 + 352);
        v31 = *(v0 + 360);
        v33 = *(v0 + 312);
        v32 = *(v0 + 320);
        v34 = *(v0 + 280);
        v36 = *(v0 + 248);
        v35 = *(v0 + 256);
        v37 = *(v0 + 240);
        (*(v0 + 368))(v32, 1, 1, v30);
        sub_1B719B06C(v35, v0 + 56);
        v38 = swift_allocObject();
        v38[2] = 0;
        v39 = v38 + 2;
        v38[3] = 0;
        v38[4] = v34;
        v38[5] = v37;
        v38[6] = v36;
        sub_1B71E4C44((v0 + 56), (v38 + 7));
        sub_1B733539C(v32, v33);
        LODWORD(v30) = (*(v31 + 48))(v33, 1, v30);

        if (v30 == 1)
        {
          sub_1B7205418(*(v0 + 312), &unk_1EB99C280);
          if (*v39)
          {
LABEL_28:
            swift_getObjectType();
            swift_unknownObjectRetain();
            v40 = sub_1B7800CD8();
            v42 = v41;
            swift_unknownObjectRelease();
LABEL_31:

            if (v42 | v40)
            {
              v46 = v0 + 96;
              *(v0 + 96) = 0;
              *(v0 + 104) = 0;
              *(v0 + 112) = v40;
              *(v0 + 120) = v42;
            }

            else
            {
              v46 = 0;
            }

            v47 = *(v0 + 384);
            v48 = *(v0 + 320);
            *(v0 + 160) = 1;
            *(v0 + 168) = v46;
            *(v0 + 176) = v47;
            swift_task_create();

            sub_1B7205418(v48, &unk_1EB99C280);
            goto LABEL_35;
          }
        }

        else
        {
          v43 = *(v0 + 352);
          v44 = *(v0 + 360);
          v45 = *(v0 + 312);
          sub_1B7800DE8();
          (*(v44 + 8))(v45, v43);
          if (*v39)
          {
            goto LABEL_28;
          }
        }

        v40 = 0;
        v42 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v24 = *(v0 + 352);
      v25 = *(v0 + 360);
      v26 = *(v0 + 328);
      sub_1B7800DE8();
      (*(v25 + 8))(v26, v24);
      if (*v14)
      {
        goto LABEL_13;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_22;
  }

LABEL_35:
  v49 = swift_task_alloc();
  *(v0 + 400) = v49;
  *v49 = v0;
  v49[1] = sub_1B7331718;
  v50 = *(v0 + 288);

  return MEMORY[0x1EEE6DAD8](v0 + 408, 0, 0, v50, v0 + 208);
}

uint64_t sub_1B7331EC8()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B7331F90(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a2;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7331FBC, 0, 0);
}

uint64_t sub_1B7331FBC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  v5 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B73320D4;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v7, &unk_1B781A208, v3, sub_1B73358D8, v4, 0, 0, &type metadata for BackgroundDeliveryService.TerminationTaskResult);
}

uint64_t sub_1B73320D4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7335930, 0, 0);
}

uint64_t sub_1B733221C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_1B7801C28();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73322E0, 0, 0);
}

uint64_t sub_1B73322E0()
{
  v1 = sub_1B7802408();
  v3 = v2;
  sub_1B78021F8();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B73323BC;

  return sub_1B76B66B4(v1, v3, 0, 0, 1);
}

uint64_t sub_1B73323BC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1B7268988;
  }

  else
  {
    v5 = sub_1B733252C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B733252C()
{
  **(v0 + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7332598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1B733539C(a1, v18 - v8);
  v10 = sub_1B7800DF8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &unk_1EB99C280);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1B7800CD8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7800DE8();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1B7332774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B733279C, 0, 0);
}

uint64_t sub_1B733279C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v0[2] = v4;

  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v0 + 2;
  v6[3] = &unk_1B781A1F0;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1B73328D0;

  return sub_1B72B9ADC(sub_1B72B9ADC, dword_1B781A1F8);
}

uint64_t sub_1B73328D0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B7332A18;
  }

  else
  {

    v2 = sub_1B73329F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7332A18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7332A84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[25] = v8;
  v5[26] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B7332B5C, 0, 0);
}

uint64_t sub_1B7332B5C()
{
  v19 = v0;
  if (qword_1EB98EA90 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EB994930);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v18);
    _os_log_impl(&dword_1B7198000, v2, v3, "Sending delivery to extension: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  v13 = type metadata accessor for FinanceStore.BackgroundDataType.XPCArray();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___XPCBackgroundDataType_value] = v12;
  *(v0 + 144) = v14;
  *(v0 + 152) = v13;

  v15 = objc_msgSendSuper2((v0 + 144), sel_init);
  *(v0 + 216) = v15;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B7332E60;
  swift_continuation_init();
  *(v0 + 136) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  sub_1B7800CE8();
  (*(v11 + 32))(boxed_opaque_existential_1, v9, v10);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B7332FB0;
  *(v0 + 104) = &block_descriptor_56;
  [v8 deliverWithTypes:v15 completionHandler:v0 + 80];
  (*(v11 + 8))(boxed_opaque_existential_1, v10);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B7332E60()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7332F40, 0, 0);
}

uint64_t sub_1B7332F40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7332FB0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  return sub_1B7800D08();
}

uint64_t sub_1B7332FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if (v10)
  {
    sub_1B733539C(a1, v8);
    v11 = sub_1B7800DF8();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_1B7205418(v8, &unk_1EB99C280);
      if (*(a3 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1B7800DE8();
      (*(v12 + 8))(v8, v11);
      if (*(a3 + 16))
      {
LABEL_4:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1B7800CD8();
        v15 = v14;
        swift_unknownObjectRelease();
        v16 = (v15 | v13);
        if (v15 | v13)
        {
          v19[0] = 0;
          v19[1] = 0;
          v16 = v19;
          v19[2] = v13;
          v19[3] = v15;
        }

        goto LABEL_6;
      }
    }

    v16 = 0;
LABEL_6:
    v18[1] = 1;
    v18[2] = v16;
    v18[3] = v9;
    swift_task_create();
  }

  return v10 & 1;
}

uint64_t sub_1B7333204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7333228, 0, 0);
}

uint64_t sub_1B7333228()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[2] = v3;

  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v0 + 2;
  v5[3] = &unk_1B781A1C8;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1B733334C;

  return (sub_1B72B9ADC)();
}

uint64_t sub_1B733334C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B7333494;
  }

  else
  {

    v2 = sub_1B7333470;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7333494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7333500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[22] = v7;
  v4[23] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B73335D4, 0, 0);
}

uint64_t sub_1B73335D4()
{
  v15 = v0;
  if (qword_1EB98EA90 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EB994930);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v14);
    _os_log_impl(&dword_1B7198000, v2, v3, "Sending termination warning to extension: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v11 = v0[21];
  v0[2] = v0;
  v0[3] = sub_1B7333880;
  swift_continuation_init();
  v0[17] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1B7800CE8();
  (*(v11 + 32))(boxed_opaque_existential_1, v9, v10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7332FB0;
  v0[13] = &block_descriptor_3;
  [v8 willTerminateWithCompletionHandler_];
  (*(v11 + 8))(boxed_opaque_existential_1, v10);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7333880()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7333960, 0, 0);
}

uint64_t sub_1B7333960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73339C4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a2;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B73339F0, 0, 0);
}

uint64_t sub_1B73339F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  v5 = *(v0 + 40);
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v5;
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B7333B10;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v7, &unk_1B781A1B8, v3, sub_1B73354C0, v4, 0, 0, &type metadata for BackgroundDeliveryService.TerminationTaskResult);
}

uint64_t sub_1B7333B10()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7333C58, 0, 0);
}

uint64_t sub_1B7333C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7333CC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  v5 = sub_1B7801C28();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7333D8C, 0, 0);
}

uint64_t sub_1B7333D8C()
{
  v1 = sub_1B7802408();
  v3 = v2;
  sub_1B78021F8();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1B7333E68;

  return sub_1B76B66B4(v1, v3, 0, 0, 1);
}

uint64_t sub_1B7333E68()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1B726E850;
  }

  else
  {
    v5 = sub_1B7333FD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B7333FD8()
{
  v11 = v0;
  if (qword_1EB98EA90 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EB994930);

  v2 = sub_1B7800098();
  v3 = sub_1B78011D8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v10);
    _os_log_impl(&dword_1B7198000, v2, v3, "Termination timeout reached for extension: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  **(v0 + 16) = 2;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B7334174(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_1EB98EA90 != -1)
  {
    swift_once();
  }

  v10 = sub_1B78000B8();
  __swift_project_value_buffer(v10, qword_1EB994930);

  v11 = sub_1B7800098();
  v12 = a4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B71A3EF8(a1, a2, &v16);
    _os_log_impl(&dword_1B7198000, v11, v12, a5, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
  }

  return sub_1B7331008(a1, a2, a3);
}

uint64_t sub_1B73342EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[20] = v5;
  v2[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B73343BC, 0, 0);
}

uint64_t sub_1B73343BC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_1B7334550;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1B7800CE8();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B7332FB0;
  v1[13] = &block_descriptor_76;
  [v5 wakeWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B7334550()
{

  return MEMORY[0x1EEE6DFA0](sub_1B733592C, 0, 0);
}

uint64_t sub_1B7334630(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[20] = v5;
  v2[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7334700, 0, 0);
}

uint64_t sub_1B7334700()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_1B7334894;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1B7800CE8();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B7332FB0;
  v1[13] = &block_descriptor_73;
  [v5 wakeWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B7334894()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7334974, 0, 0);
}

uint64_t sub_1B7334974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B73349D8(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B721FB60;

  return BackgroundDeliveryService.initiateDelivery(with:frequency:)(a1, a2);
}

uint64_t sub_1B7334A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = *a2;
  v4[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7334AA8, 0, 0);
}

uint64_t sub_1B7334AA8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1B7334BA8;
  v4 = *(v0 + 24);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B7335678, v1, v5);
}

uint64_t sub_1B7334BA8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7268988, 0, 0);
}

uint64_t *sub_1B7334CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[5] = a4;
  v9[6] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 2);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v9[10] = a5;
  v9[11] = a8;
  v18 = __swift_allocate_boxed_opaque_existential_1(v9 + 7);
  (*(*(a5 - 8) + 16))(v18, a2, a5);
  v9[15] = a6;
  v9[16] = a9;
  v19 = __swift_allocate_boxed_opaque_existential_1(v9 + 12);
  (*(*(a6 - 8) + 32))(v19, a3, a6);
  return v9;
}

uint64_t sub_1B7334DF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B723838C;

  return sub_1B7331324(a1, a2, v7, v8, v9, v10, v11, v6, v12);
}

unint64_t sub_1B7334F64()
{
  result = qword_1EB992490;
  if (!qword_1EB992490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992490);
  }

  return result;
}

unint64_t sub_1B7334FBC()
{
  result = qword_1EB992498;
  if (!qword_1EB992498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992498);
  }

  return result;
}

uint64_t sub_1B7335010(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B723838C;

  return sub_1B7331F90(a1, v6, v4, v5, v7, v8, (v1 + 7));
}

uint64_t sub_1B73350E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B7332774(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B73351B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B723838C;

  return sub_1B7333204(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B73352C8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B723838C;

  return sub_1B73339C4(a1, v6, v4, v5, v7, v8, (v1 + 7));
}

uint64_t sub_1B733539C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B733540C(uint64_t a1)
{
  v4 = v1[2];
  v6 = *(v1 + 3);
  v5 = *(v1 + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B7333CC4(a1, v6, v5, v4);
}

uint64_t sub_1B73354FC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B723838C;

  return sub_1B7333500(a1, a2, v7, v6);
}

uint64_t sub_1B73355B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B7334A80(a1, v4, v5, v6);
}

uint64_t sub_1B73356A4(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B723838C;

  return sub_1B7332A84(a1, a2, v6, v7, v8);
}

uint64_t sub_1B7335768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B7334A80(a1, v4, v5, v6);
}

uint64_t sub_1B7335830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return sub_1B733221C(a1, v4);
}

id InternalTransactionResult.token.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1B72274E8(v2, v3);
}

uint64_t InternalTransactionResult.init(token:transactions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

uint64_t FinanceStore.internalTransactions(for:since:isMonitoring:)(uint64_t a1, uint64_t a2, int a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v31 - v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  static DeviceInfo.deviceType.getter(v36);
  if (LOBYTE(v36[0]))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
  }

  else
  {
    v37 = a3;
    v14 = *(v3 + 16);
    v15 = type metadata accessor for FinanceStore();
    v36[3] = v15;
    v36[4] = &off_1F2F66960;
    v36[0] = v3;
    sub_1B7205588(a1, v10, &unk_1EB993A10);
    sub_1B719B06C(v36, v34);
    v16 = *(v14 + 16);

    sub_1B72274E8(v11, v12);
    os_unfair_lock_lock((v16 + 24));
    if (*(v16 + 16))
    {
      v32 = *(v16 + 16);
    }

    else
    {
      v17 = sub_1B73ADA9C();
      *(v16 + 16) = v17;
      v32 = v17;
    }

    os_unfair_lock_unlock((v16 + 24));
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v18);
    v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v33[3] = v15;
    v33[4] = &off_1F2F66960;
    v33[0] = v22;
    type metadata accessor for InternalTransactionAsyncSequence();
    v4 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
    MEMORY[0x1EEE9AC00](v23);
    v25 = (v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v25;
    v28 = (v4 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyProvider);
    v28[3] = v15;
    v28[4] = &off_1F2F66960;
    *v28 = v27;
    sub_1B7227B6C(v10, v4 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_accountID);
    v29 = v4 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_historyToken;
    *v29 = v11;
    *(v29 + 8) = v12;
    *(v4 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_isMonitoring) = v37 & 1;
    *(v4 + OBJC_IVAR____TtC10FinanceKit32InternalTransactionAsyncSequence_coreDataStore) = v32;
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v4;
}

uint64_t FinanceStore.internalTransactions(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7335D18, 0, 0);
}

uint64_t sub_1B7335D18()
{
  v8 = v0;
  static DeviceInfo.deviceType.getter(v7);
  if (v7[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1B7306B1C;
    v5 = v0[2];
    v6 = v0[3];

    return sub_1B739F168(v5, v6);
  }
}

uint64_t FinanceStore.internalTransactionsCount(predicate:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for InternalTransactionQuery();
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7335F7C, 0, 0);
}

uint64_t sub_1B7335F7C()
{
  v26 = v0;
  static DeviceInfo.deviceType.getter(v25);
  if (v25[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[15];
    v5 = v0[16];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[9];
    v9 = v0[10];
    v10 = *(v9 + 16);
    v10(v5, v0[7], v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v0[5] = v7;
    v0[6] = &protocol witness table for InternalTransactionQuery;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    *v6 = MEMORY[0x1E69E7CC0];
    sub_1B7205588(v5, v6 + *(v7 + 20), &qword_1EB9924B0);
    sub_1B7205588(v5, v4, &qword_1EB9924B0);
    v11 = (*(v9 + 48))(v4, 1, v8);
    v12 = v0[15];
    v13 = v0[16];
    if (v11 == 1)
    {
      sub_1B7336A10(v0[16]);
      sub_1B7336A10(v12);
      v14 = 0;
    }

    else
    {
      v16 = v0[11];
      v15 = v0[12];
      v18 = v0[9];
      v17 = v0[10];
      (*(v17 + 32))(v15, v0[15], v18);
      sub_1B729D790();
      v10(v16, v15, v18);
      v14 = sub_1B71FA2E0(v16);
      (*(v17 + 8))(v15, v18);
      sub_1B7336A10(v13);
    }

    v20 = v0[13];
    v19 = v0[14];
    *(v19 + v20[8]) = v14;
    v21 = v19 + v20[6];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v19 + v20[7];
    *v22 = 0;
    *(v22 + 8) = 1;
    sub_1B7336A78(v19, boxed_opaque_existential_1);
    v23 = swift_task_alloc();
    v0[17] = v23;
    *v23 = v0;
    v23[1] = sub_1B733628C;

    return sub_1B739FC54((v0 + 2));
  }
}

uint64_t sub_1B733628C()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);

    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B733642C, 0, 0);
}

uint64_t sub_1B733642C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.internalTransactionsCount(query:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B73364F0, 0, 0);
}

uint64_t sub_1B73364F0()
{
  v7 = v0;
  static DeviceInfo.deviceType.getter(v6);
  if (v6[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1B7336AEC;
    v5 = v0[2];

    return sub_1B739FC54(v5);
  }
}

uint64_t FinanceStore.fkPaymentTransactionForTransaction(withID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7336628, 0, 0);
}

uint64_t sub_1B7336628()
{
  v7 = v0;
  static DeviceInfo.deviceType.getter(v6);
  if (v6[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1B722A3DC;
    v5 = v0[2];

    return sub_1B73A04B4(v5);
  }
}

uint64_t FinanceStore.fkPaymentTransactionsForTransactions(withIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7336760, 0, 0);
}

uint64_t sub_1B7336760()
{
  v7 = v0;
  static DeviceInfo.deviceType.getter(v6);
  if (v6[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1B7336AEC;
    v5 = v0[2];

    return sub_1B73A0848(v5);
  }
}

uint64_t FinanceStore.privateInternalTransactions(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 57) = *(a1 + 24);
  *(v2 + 96) = a1[4];
  *(v2 + 58) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B73368BC, 0, 0);
}

void sub_1B73368BC()
{
  v9 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 2;
    if (FinanceStore.isDataRestricted(for:)(v8))
    {
      sub_1B7201CA4();
      swift_allocError();
      *v1 = 2;
      swift_willThrow();
      v2 = *(v0 + 8);

      v2();
    }

    else
    {
      v3 = *(v0 + 58);
      v4 = *(v0 + 96);
      v5 = *(v0 + 57);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 24) = *(v0 + 80);
      *(v0 + 40) = v5;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_1B72BAE3C;

      sub_1B73A0E58((v0 + 16));
    }
  }
}

uint64_t sub_1B7336A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7336A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransactionQuery();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ColorExtractor.backgroundColor(forImage:contextOptions:alwaysEstimateDominantColor:)(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = sub_1B7800008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  v14 = *MEMORY[0x1E695F868];
  *(inited + 32) = *MEMORY[0x1E695F868];
  v15 = v14;
  v16 = [a1 colorSpace];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924C0);
  *(inited + 40) = v16;
  v17 = sub_1B7202E74(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &qword_1EB98F588);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v17;
  sub_1B733987C(a2, sub_1B7338FE0, 0, isUniquelyReferenced_nonNull_native, &v52);

  v19 = objc_allocWithZone(MEMORY[0x1E695F620]);
  type metadata accessor for CIContextOption(0);
  sub_1B7339B5C();
  v20 = sub_1B7800708();

  v21 = [v19 initWithOptions_];

  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v22 = sub_1B7800038();
  __swift_project_value_buffer(v22, qword_1EBA45940);
  sub_1B7800018();
  sub_1B77FFFD8();
  v23 = sub_1B7800018();
  v24 = sub_1B7801388();
  if (sub_1B7801738())
  {
    v25 = v12;
    v26 = v21;
    v27 = a1;
    v28 = v7;
    v29 = v3;
    v3 = swift_slowAlloc();
    *v3 = 0;
    v30 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v23, v24, v30, "ColorExtraction-CoreImage", "", v3, 2u);
    v31 = v3;
    LODWORD(v3) = v29;
    v7 = v28;
    a1 = v27;
    v21 = v26;
    v12 = v25;
    MEMORY[0x1B8CA7A40](v31, -1, -1);
  }

  (*(v7 + 16))(v10, v12, v6);
  sub_1B7800078();
  swift_allocObject();
  v32 = sub_1B7800068();
  if (qword_1EB98EA70 != -1)
  {
    swift_once();
  }

  v33 = sub_1B78000B8();
  __swift_project_value_buffer(v33, qword_1EB9948D0);
  v34 = a1;
  v35 = sub_1B7800098();
  v36 = sub_1B78011B8();
  v37 = os_log_type_enabled(v35, v36);
  v51 = v6;
  if (v37)
  {
    v50 = v3;
    v3 = swift_slowAlloc();
    *v3 = 134218240;
    [v34 extent];
    Width = CGRectGetWidth(v53);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        *(v3 + 4) = Width;
        *(v3 + 12) = 2048;
        [v34 extent];
        Height = CGRectGetHeight(v54);
        if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (Height > -9.22337204e18)
          {
            if (Height < 9.22337204e18)
            {
              *(v3 + 14) = Height;

              _os_log_impl(&dword_1B7198000, v35, v36, "Extracting background color using Metal from a %ldx%ld image", v3, 0x16u);
              MEMORY[0x1B8CA7A40](v3, -1, -1);
              LOBYTE(v3) = v50;
              goto LABEL_16;
            }

LABEL_30:
            __break(1u);

            __break(1u);
            return result;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  v35 = v34;
LABEL_16:

  [v21 clearCaches];
  if ((v3 & 1) != 0 || (v40 = sub_1B7337174(v34, v21, v12)) == 0)
  {
    v45 = sub_1B7800098();
    v46 = sub_1B78011B8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1B7198000, v45, v46, "Falling back to inferring dominant image color.", v47, 2u);
      MEMORY[0x1B8CA7A40](v47, -1, -1);
    }

    v41 = sub_1B733AA30(v34, v21, v12);
  }

  else
  {
    v41 = v40;
    v42 = sub_1B7800098();
    v43 = sub_1B78011B8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B7198000, v42, v43, "Extracted background by detecting similar corner colors.", v44, 2u);
      MEMORY[0x1B8CA7A40](v44, -1, -1);
    }
  }

  sub_1B733C45C(v32, "ColorExtraction-CoreImage");

  (*(v7 + 8))(v12, v51);
  return v41;
}

uint64_t sub_1B7337174(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 extent];
  Width = CGRectGetWidth(v29);
  [a1 extent];
  Height = CGRectGetHeight(v30);
  if (Height >= Width)
  {
    Height = Width;
  }

  v8 = 0.0;
  if (Height < 1.0 || Height > 50.0)
  {
    v8 = 10.0;
    if (Height < 50.0)
    {
      return 0;
    }
  }

  [a1 extent];
  v32 = CGRectInset(v31, v8, v8);
  x = v32.origin.x;
  y = v32.origin.y;
  v12 = v32.size.width;
  v13 = v32.size.height;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B78123D0;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v12;
  v33.size.height = v13;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = v12;
  v34.size.height = v13;
  MinY = CGRectGetMinY(v34);
  *(inited + 32) = MinX;
  *(inited + 40) = MinY;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = v12;
  v35.size.height = v13;
  v17 = CGRectGetMaxX(v35) + -1.0;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v12;
  v36.size.height = v13;
  v18 = CGRectGetMinY(v36);
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = v12;
  v37.size.height = v13;
  v19 = CGRectGetMinX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = v12;
  v38.size.height = v13;
  MaxY = CGRectGetMaxY(v38);
  *(inited + 64) = v19;
  *(inited + 72) = MaxY + -1.0;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = v12;
  v39.size.height = v13;
  v21 = CGRectGetMaxX(v39) + -1.0;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = v12;
  v40.size.height = v13;
  v22 = CGRectGetMaxY(v40);
  *(inited + 80) = v21;
  *(inited + 88) = v22 + -1.0;
  MEMORY[0x1EEE9AC00](v23);
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = a3;
  v24 = sub_1B755DB9C(sub_1B733D518, v28, inited);
  swift_setDeallocating();
  if ((sub_1B7339BB4(v24, 5u) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v24 >> 62)
  {
    result = sub_1B7801958();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_17:

    return 0;
  }

LABEL_12:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1B8CA5DC0](0, v24);
    goto LABEL_15;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v24 + 32);
LABEL_15:
    v27 = v26;

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t static ColorExtractor.extractBackgroundColorWithoutHardware(imageData:)@<X0>(uint64_t a1@<X8>)
{
  v114 = sub_1B7800008();
  v2 = *(v114 - 8);
  v3 = MEMORY[0x1EEE9AC00](v114);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v106 - v6;
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7800038();
  __swift_project_value_buffer(v8, qword_1EBA45940);
  sub_1B7800018();
  sub_1B77FFFD8();
  v9 = sub_1B7800018();
  v10 = sub_1B7801388();
  if (sub_1B7801738())
  {
    v11 = v7;
    v12 = a1;
    v13 = v2;
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v9, v10, v15, "ColorExtraction-Custom", "", v14, 2u);
    v16 = v14;
    v2 = v13;
    a1 = v12;
    v7 = v11;
    MEMORY[0x1B8CA7A40](v16, -1, -1);
  }

  (*(v2 + 16))(v5, v7, v114);
  sub_1B7800078();
  swift_allocObject();
  v113 = sub_1B7800068();
  if (qword_1EB98EA70 != -1)
  {
    swift_once();
  }

  v17 = sub_1B78000B8();
  __swift_project_value_buffer(v17, qword_1EB9948D0);
  v18 = sub_1B7800098();
  v19 = sub_1B78011B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1B7198000, v18, v19, "Extracting background color without Metal.", v20, 2u);
    MEMORY[0x1B8CA7A40](v20, -1, -1);
  }

  v21 = sub_1B77FF598();
  v22 = CGDataProviderCreateWithCFData(v21);

  if (v22)
  {
    v23 = CGImageCreateWithJPEGDataProvider(v22, 0, 0, kCGRenderingIntentDefault);
    if (v23 || (v23 = CGImageCreateWithPNGDataProvider(v22, 0, 0, kCGRenderingIntentDefault)) != 0)
    {
      v24 = v23;
      v25 = sub_1B7800098();
      v26 = sub_1B78011C8();
      v27 = os_log_type_enabled(v25, v26);
      v112 = v2;
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 134218240;
        *(v28 + 4) = CGImageGetWidth(v24);
        *(v28 + 12) = 2048;
        *(v28 + 14) = CGImageGetHeight(v24);

        _os_log_impl(&dword_1B7198000, v25, v26, "Image is %ldx%ld", v28, 0x16u);
        MEMORY[0x1B8CA7A40](v28, -1, -1);
      }

      else
      {

        v25 = v24;
      }

      v29 = sub_1B733B78C(v24);
      v30 = CGImageGetDataProvider(v29);
      if (v30)
      {
        v31 = v30;
        v32 = CGDataProviderCopyData(v30);

        if (v32)
        {
          BytePtr = CFDataGetBytePtr(v32);
          if (BytePtr)
          {
            v34 = BytePtr;
            v35 = CGImageGetColorSpace(v29);
            if (v35)
            {
              v36 = v35;
              Width = CGImageGetWidth(v29);
              v38 = v29;
              v39 = v36;
              v40 = Width;
              v109 = v38;
              Height = CGImageGetHeight(v38);
              *&v111 = v34;
              *&v108 = v40;
              v42 = v40;
              v43 = v39;
              v44 = Height;
              sub_1B733BC64(v34, v42, Height, v121);
              v110 = v32;
              if ((v122 & 1) == 0)
              {
                v115[0] = v121[0];
                v115[1] = v121[1];
                v45 = CGColorCreate(v43, v115);
                if (v45)
                {
                  v46 = v45;
                  if (CGColorGetAlpha(v45) > 0.9)
                  {
                    *&v108 = a1;
                    v47 = sub_1B7800098();
                    v48 = sub_1B78011B8();
                    if (os_log_type_enabled(v47, v48))
                    {
                      v49 = v43;
                      v50 = swift_slowAlloc();
                      *v50 = 0;
                      _os_log_impl(&dword_1B7198000, v47, v48, "Found background color by comparing corners", v50, 2u);
                      v51 = v49;
                      MEMORY[0x1B8CA7A40](v50, -1, -1);
                      v52 = v24;
                      v54 = v109;
                      v53 = v110;
                    }

                    else
                    {
                      v52 = v47;
                      v47 = v43;
                      v53 = v109;
                      v54 = v110;
                      v51 = v24;
                    }

                    v58 = 0;
LABEL_58:
                    v2 = v112;
                    a1 = v108;
                    goto LABEL_35;
                  }
                }
              }

              v64 = sub_1B7800098();
              v65 = sub_1B78011B8();
              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                *&v107 = v43;
                v67 = v66;
                *v66 = 0;
                _os_log_impl(&dword_1B7198000, v64, v65, "Extracting dominant color from image via k-means", v66, 2u);
                v68 = v67;
                v43 = v107;
                MEMORY[0x1B8CA7A40](v68, -1, -1);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F570);
              v69 = swift_allocObject();
              *(v69 + 16) = xmmword_1B781A380;
              *(v69 + 32) = 0;
              *(v69 + 40) = 0;
              *(v69 + 48) = xmmword_1B781A390;
              *(v69 + 64) = xmmword_1B781A3B0;
              *(v69 + 80) = xmmword_1B781A3A0;
              *(v69 + 96) = xmmword_1B781A3D0;
              *(v69 + 112) = xmmword_1B781A3C0;
              *(v69 + 128) = vdupq_n_s64(0x3FC9191919191919uLL);
              __asm { FMOV            V1.2D, #1.0 }

              *(v69 + 160) = _Q1;
              *(v69 + 176) = _Q1;
              *(v69 + 144) = xmmword_1B781A3C0;
              v75 = sub_1B733C6EC(v111, v108, v44, v69);
              swift_setDeallocating();
              swift_deallocClassInstance();
              v76 = v75;
              v77 = v109;
              if (*(v75 + 16) >= 2uLL)
              {
                v83 = *(v75 + 48);
                v111 = *(v75 + 32);
                v108 = v83;
                v84 = *(&v83 + 1);
                v85 = v110;
                if (*(&v83 + 1) >= 0.9)
                {
                }

                else
                {
                  v86 = *(v76 + 80);
                  v106 = *(v76 + 64);
                  v107 = v86;

                  v116[0] = v106;
                  v116[1] = v107;
                  v87 = CGColorCreate(v43, v116);
                  if (v87)
                  {
                    v46 = v87;
                    *&v111 = v22;
                    *&v108 = a1;
                    v88 = v87;
                    v89 = sub_1B7800098();
                    v90 = sub_1B78011B8();

                    if (os_log_type_enabled(v89, v90))
                    {
                      v91 = v43;
                      v92 = swift_slowAlloc();
                      *v92 = 134217984;
                      *(v92 + 4) = CGColorGetAlpha(v88);
                      _os_log_impl(&dword_1B7198000, v89, v90, "Background color is transparent. Taking foreground color with alpha=%f", v92, 0xCu);
                      MEMORY[0x1B8CA7A40](v92, -1, -1);
                      v93 = v24;
                      v94 = v110;
                    }

                    else
                    {
                      v93 = v89;
                      v94 = v77;
                      v89 = v43;
                      v77 = v110;
                      v91 = v24;
                    }

                    v58 = 1;
                    goto LABEL_58;
                  }
                }

                v118 = v111;
                v119 = v108;
                v120 = v84;
                v95 = CGColorCreate(v43, &v118);
                if (v95)
                {
                  v46 = v95;

                  v58 = 0;
                  goto LABEL_34;
                }

                v96 = sub_1B7800098();
                v97 = sub_1B78011D8();
                if (!os_log_type_enabled(v96, v97))
                {

                  goto LABEL_33;
                }

                v98 = swift_slowAlloc();
                LODWORD(v106) = v97;
                v99 = v98;
                *&v107 = swift_slowAlloc();
                v117 = v107;
                *v99 = 136315138;
                v116[2] = v111;
                v116[3] = v108;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924C8);
                sub_1B733D2CC();
                *&v111 = v96;
                v100 = sub_1B78021A8();
                v102 = sub_1B71A3EF8(v100, v101, &v117);

                *(v99 + 4) = v102;
                v103 = v111;
                v104 = v99;
                _os_log_impl(&dword_1B7198000, v111, v106, "Could not construct CGColor from dominant color components %s", v99, 0xCu);
                v105 = v107;
                __swift_destroy_boxed_opaque_existential_1(v107);
                MEMORY[0x1B8CA7A40](v105, -1, -1);
                MEMORY[0x1B8CA7A40](v104, -1, -1);
              }

              else
              {

                v78 = sub_1B7800098();
                v79 = sub_1B78011D8();
                if (os_log_type_enabled(v78, v79))
                {
                  v80 = swift_slowAlloc();
                  *v80 = 0;
                  _os_log_impl(&dword_1B7198000, v78, v79, "kMeans returned fewer than 2 colors. Ensure startingColors has at least two values.", v80, 2u);
                  MEMORY[0x1B8CA7A40](v80, -1, -1);
                  v81 = v24;
                  v82 = v110;
                }

                else
                {
                  v81 = v78;
                  v82 = v77;
                  v78 = v43;
                  v77 = v110;
                  v43 = v24;
                }
              }

LABEL_33:
              v46 = 0;
              v58 = -1;
LABEL_34:
              v2 = v112;
              goto LABEL_35;
            }
          }
        }
      }

      v59 = sub_1B7800098();
      v60 = sub_1B78011D8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1B7198000, v59, v60, "Could not get data from standardized image", v61, 2u);
        MEMORY[0x1B8CA7A40](v61, -1, -1);
        v62 = v24;
      }

      else
      {
        v62 = v59;
        v59 = v29;
        v29 = v24;
      }

      goto LABEL_33;
    }
  }

  v55 = sub_1B7800098();
  v56 = sub_1B78011D8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1B7198000, v55, v56, "Could not create CGImage from image data", v57, 2u);
    MEMORY[0x1B8CA7A40](v57, -1, -1);
  }

  v46 = 0;
  v58 = -1;
LABEL_35:
  *a1 = v46;
  *(a1 + 8) = v58;
  sub_1B733C45C(v113, "ColorExtraction-Custom");

  return (*(v2 + 8))(v7, v114);
}

void sub_1B73381B0(char **a1, id *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B77E4CCC(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  sub_1B7338224(v6, a2);
  *a1 = v4;
}

void sub_1B7338224(uint64_t *a1, id *a2)
{
  v4 = a1[1];
  v5 = sub_1B7802038();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924D8);
        v7 = sub_1B7800C78();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = (v7 + 32);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_1B7338498(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1B7338338(0, v4, 1, a1, a2);
  }
}

void sub_1B7338338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, id *a5)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v6 = *a4 + 48 * a3 - 48;
    v7 = a1 - a3;
LABEL_5:
    v23 = v6;
    v24 = a3;
    v22 = v7;
    while (1)
    {
      v8 = (v6 + 48);
      v9 = *a5;
      v10 = sub_1B7801008();
      v11 = [v9 countForObject_];

      v12 = *a5;
      v13 = sub_1B7801008();
      v14 = [v12 countForObject_];

      if (v14 >= v11)
      {
LABEL_4:
        a3 = v24 + 1;
        v6 = v23 + 48;
        v7 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      v15 = *(v6 + 48);
      v17 = *(v6 + 64);
      v16 = *(v6 + 80);
      v18 = *(v6 + 16);
      *v8 = *v6;
      *(v6 + 64) = v18;
      v19 = *(v6 + 32);
      *v6 = v15;
      *(v6 + 16) = v17;
      *(v6 + 32) = v16;
      v6 -= 48;
      v8[2] = v19;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B7338498(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, id *a5)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v8 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1B77E4CA4(v8);
    }

    v103 = v6;
    v104 = *(v8 + 16);
    if (v104 >= 2)
    {
      do
      {
        v105 = *v7;
        if (!*v7)
        {
          goto LABEL_126;
        }

        v7 = (v104 - 1);
        v106 = *(v8 + 16 * v104);
        v6 = *(v8 + 16 * (v104 - 1) + 40);
        sub_1B7338C4C((v105 + 48 * v106), (v105 + 48 * *(v8 + 16 * (v104 - 1) + 32)), (v105 + 48 * v6), v10, a5);
        if (v103)
        {
          break;
        }

        if (v6 < v106)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B77E4CA4(v8);
        }

        if (v104 - 2 >= *(v8 + 16))
        {
          goto LABEL_116;
        }

        v107 = (v8 + 16 * v104);
        *v107 = v106;
        v107[1] = v6;
        sub_1B77E4C18(v7);
        v104 = *(v8 + 16);
        v7 = a3;
      }

      while (v104 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v114 = v11;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v109 = v10;
      v111 = v6;
      v118 = 48 * v11;
      v13 = *v7 + 48 * v11 + 48;
      v14 = v11;
      v15 = *a5;
      v16 = sub_1B7801008();
      v124 = [v15 countForObject_];

      v17 = *a5;
      v18 = sub_1B7801008();
      v120 = [v17 countForObject_];

      v19 = v14 + 2;
      v122 = v8;
      while (v8 != v19)
      {
        v20 = *a5;
        v21 = sub_1B7801008();
        v22 = [v20 countForObject_];

        v23 = *a5;
        v24 = sub_1B7801008();
        v25 = [v23 countForObject_];

        v8 = v122;
        ++v19;
        v13 += 48;
        if (v120 < v124 == v25 >= v22)
        {
          v8 = v19 - 1;
          break;
        }
      }

      v26 = v118;
      v10 = v109;
      v6 = v111;
      v11 = v114;
      v7 = a3;
      if (v120 < v124)
      {
        if (v8 < v114)
        {
          goto LABEL_119;
        }

        if (v114 < v8)
        {
          v27 = 0;
          v28 = 48 * v8;
          v29 = v114;
          do
          {
            if (v29 != v8 + v27 - 1)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v30 = (v37 + v26);
              v31 = *(v37 + v26);
              v32 = v37 + v28;
              v33 = v30[1];
              v34 = v30[2];
              v35 = *(v32 - 48);
              v36 = *(v32 - 16);
              v30[1] = *(v32 - 32);
              v30[2] = v36;
              *v30 = v35;
              *(v32 - 48) = v31;
              *(v32 - 32) = v33;
              *(v32 - 16) = v34;
            }

            ++v29;
            --v27;
            v28 -= 48;
            v26 += 48;
          }

          while (v29 < v8 + v27);
        }
      }
    }

    v38 = v7[1];
    if (v8 < v38)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_118;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 >= v38)
        {
          v39 = v7[1];
        }

        else
        {
          v39 = v11 + a4;
        }

        if (v39 < v11)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v39)
        {
          break;
        }
      }
    }

    v40 = v8;
    if (v8 < v11)
    {
      goto LABEL_117;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B723E420(0, *(v10 + 2) + 1, 1, v10);
    }

    v42 = *(v10 + 2);
    v41 = *(v10 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v10 = sub_1B723E420((v41 > 1), v42 + 1, 1, v10);
    }

    *(v10 + 2) = v43;
    v44 = &v10[16 * v42];
    *(v44 + 4) = v114;
    *(v44 + 5) = v40;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    v116 = v40;
    if (v42)
    {
      while (1)
      {
        v8 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_48:
          if (v49)
          {
            goto LABEL_106;
          }

          v62 = &v10[16 * v43];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_109;
          }

          v68 = &v10[16 * v8 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_113;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v8 = v43 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v72 = &v10[16 * v43];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_62:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v10[16 * v8];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_69:
        v83 = v8 - 1;
        if (v8 - 1 >= v43)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v7)
        {
          goto LABEL_124;
        }

        v84 = *&v10[16 * v83 + 32];
        v85 = *&v10[16 * v8 + 40];
        sub_1B7338C4C((*v7 + 48 * v84), (*v7 + 48 * *&v10[16 * v8 + 32]), (*v7 + 48 * v85), v45, a5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v85 < v84)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B77E4CA4(v10);
        }

        if (v83 >= *(v10 + 2))
        {
          goto LABEL_103;
        }

        v86 = &v10[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        sub_1B77E4C18(v8);
        v43 = *(v10 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v43 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_104;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_105;
      }

      v57 = &v10[16 * v43];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_107;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_110;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v8 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_114;
        }

        if (v48 < v82)
        {
          v8 = v43 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v116;
    if (v116 >= v8)
    {
      goto LABEL_89;
    }
  }

  v110 = v10;
  v112 = v6;
  v125 = *v7;
  v87 = *v7 + 48 * v8 - 48;
  v88 = v11 - v8;
  v117 = v39;
LABEL_80:
  v121 = v87;
  v123 = v8;
  v119 = v88;
  v89 = v88;
  while (1)
  {
    v90 = (v87 + 48);
    v91 = *a5;
    v92 = sub_1B7801008();
    v93 = [v91 countForObject_];

    v94 = *a5;
    v95 = sub_1B7801008();
    v96 = [v94 countForObject_];

    if (v96 >= v93)
    {
LABEL_79:
      v8 = v123 + 1;
      v87 = v121 + 48;
      v40 = v117;
      v88 = v119 - 1;
      if (v123 + 1 != v117)
      {
        goto LABEL_80;
      }

      v10 = v110;
      v6 = v112;
      v7 = a3;
      if (v117 < v114)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v125)
    {
      break;
    }

    v97 = *(v87 + 48);
    v99 = *(v87 + 64);
    v98 = *(v87 + 80);
    v100 = *(v87 + 16);
    *v90 = *v87;
    *(v87 + 64) = v100;
    v101 = *(v87 + 32);
    *v87 = v97;
    *(v87 + 16) = v99;
    *(v87 + 32) = v98;
    v87 -= 48;
    v90[2] = v101;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1B7338C4C(char *__src, char *a2, char *a3, char *a4, id *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 48;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 48;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[48 * v10] <= a4)
    {
      v24 = a2;
      v25 = a4;
      memmove(a4, a2, 48 * v10);
      a2 = v24;
      a4 = v25;
    }

    v23 = a2;
    v50 = &a4[48 * v10];
    v26 = v9 < 48;
    v12 = a4;
    if (!v26 && a2 > v6)
    {
      v48 = a4;
      v45 = v6;
LABEL_23:
      v47 = v23;
      v27 = v23 - 48;
      v28 = v5 - 48;
      v29 = v50;
      do
      {
        v30 = v28;
        v31 = v28 + 48;
        v29 -= 48;
        v32 = v27;
        v33 = *a5;
        v34 = sub_1B7801008();
        v35 = [v33 countForObject_];

        v36 = *a5;
        v37 = sub_1B7801008();
        v38 = [v36 countForObject_];

        if (v38 < v35)
        {
          v5 = v30;
          if (v31 != v47)
          {
            v41 = *v32;
            v42 = *(v32 + 2);
            *(v30 + 1) = *(v32 + 1);
            *(v30 + 2) = v42;
            *v30 = v41;
          }

          v12 = v48;
          if (v50 <= v48 || (v23 = v32, v32 <= v45))
          {
            v23 = v32;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        if (v31 != v50)
        {
          v39 = *v29;
          v40 = *(v29 + 2);
          *(v30 + 1) = *(v29 + 1);
          *(v30 + 2) = v40;
          *v30 = v39;
        }

        v28 = v30 - 48;
        v50 = v29;
        v27 = v32;
      }

      while (v29 > v48);
      v50 = v29;
      v23 = v47;
      v12 = v48;
    }
  }

  else
  {
    v11 = a2;
    v12 = a4;
    if (a4 != __src || &__src[48 * v8] <= a4)
    {
      memmove(a4, __src, 48 * v8);
    }

    v50 = &v12[48 * v8];
    if (v7 >= 48 && v11 < v5)
    {
      v46 = v5;
      while (1)
      {
        v13 = *a5;
        v14 = sub_1B7801008();
        v15 = [v13 countForObject_];

        v16 = *a5;
        v17 = sub_1B7801008();
        v18 = [v16 countForObject_];

        if (v18 >= v15)
        {
          break;
        }

        v19 = v11;
        v20 = v6 == v11;
        v11 += 48;
        if (!v20)
        {
          goto LABEL_13;
        }

LABEL_14:
        v6 += 48;
        if (v12 >= v50 || v11 >= v46)
        {
          goto LABEL_16;
        }
      }

      v19 = v12;
      v20 = v6 == v12;
      v12 += 48;
      if (v20)
      {
        goto LABEL_14;
      }

LABEL_13:
      v21 = *v19;
      v22 = *(v19 + 2);
      *(v6 + 1) = *(v19 + 1);
      *(v6 + 2) = v22;
      *v6 = v21;
      goto LABEL_14;
    }

LABEL_16:
    v23 = v6;
  }

LABEL_34:
  v43 = (v50 - v12) / 48;
  if (v23 != v12 || v23 >= &v12[48 * v43])
  {
    memmove(v23, v12, 48 * v43);
  }

  return 1;
}

id sub_1B7338FE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1B719BDE4((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

unint64_t sub_1B7339030(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B8CA7A60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B8CA7A60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B73390BC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = (v6 + 32 * v4);
      v9 = *v7;
      v8 = v7[1];
      if (!v3)
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v22 = v9;
        v23 = v8;
        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F550);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 48;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = (v13 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[6 * v16 + 4])
          {
            memmove(v13 + 4, v2 + 4, 48 * v16);
          }

          v2[2] = 0;
        }

        v5 = v15 + 48 * v16;
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v13;
        v9 = v22;
        v8 = v23;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 16) = v9;
      *(v5 + 32) = v8;
      v5 += 48;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_1B7339248@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1B719BDE4(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_1B72051F0(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1B7205418(&v18, &qword_1EB992508);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B7339398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a2 + 16);
  v9 = a2 + 32;
  while (v8 != v7)
  {
    v10 = *(v9 + 8 * v7++);
    if (v10 == a1)
    {
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*(v9 + 8 * v11) == a1)
        {
          v69 = v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B71FDC78(0, v13[2] + 1, 1);
            v13 = v69;
          }

          v15 = v13[2];
          v14 = v13[3];
          if (v15 >= v14 >> 1)
          {
            sub_1B71FDC78((v14 > 1), v15 + 1, 1);
            v13 = v69;
          }

          v13[2] = v15 + 1;
          v16 = &v13[2 * v15];
          v16[4] = v11;
          v16[5] = a1;
        }

        ++v11;
      }

      while (v8 != v11);
      v24 = v13[2];
      if (v24)
      {
        v69 = v12;
        result = sub_1B71FDC38(0, v24, 0);
        v25 = v12;
        v26 = *(a3 + 16);
        v27 = 4;
        do
        {
          v28 = v13[v27];
          if (v28 >= v26)
          {
            __break(1u);
            goto LABEL_58;
          }

          v29 = (a3 + 32 + 32 * v28);
          v30 = *v29;
          v31 = v29[1];
          v69 = v25;
          v33 = v25[2];
          v32 = v25[3];
          if (v33 >= v32 >> 1)
          {
            v66 = v31;
            v67 = v30;
            result = sub_1B71FDC38((v32 > 1), v33 + 1, 1);
            v31 = v66;
            v30 = v67;
            v25 = v69;
          }

          v25[2] = v33 + 1;
          v34 = &v25[4 * v33];
          *(v34 + 2) = v30;
          *(v34 + 3) = v31;
          v27 += 2;
          --v24;
        }

        while (v24);

        v54 = v25[2];
        if (v54)
        {
LABEL_43:
          v55 = (v25 + 4);
          v56 = 0uLL;
          v57 = v54;
          v58 = 0uLL;
          do
          {
            v59 = *v55;
            v60 = v55[1];
            v55 += 2;
            v58 = vaddq_f64(v58, v60);
            v56 = vaddq_f64(v56, v59);
            --v57;
          }

          while (v57);
        }
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
        v54 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v54)
        {
          goto LABEL_43;
        }
      }
    }
  }

  if (v8)
  {
    result = sub_1B7339030(*(a2 + 16));
    if (result >= v8)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v18 = 0;
    v19 = *(v9 + 8 * result);
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v9 + 8 * v18) == v19)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v69 = v20;
        if ((result & 1) == 0)
        {
          result = sub_1B71FDC78(0, v20[2] + 1, 1);
          v20 = v69;
        }

        v22 = v20[2];
        v21 = v20[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_1B71FDC78((v21 > 1), v22 + 1, 1);
          v20 = v69;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v18;
        v23[5] = v19;
      }

      ++v18;
    }

    while (v8 != v18);
    v35 = v20[2];
    if (v35)
    {
      v36 = v20[4];
      v37 = v35 - 1;
      if (!v37)
      {
LABEL_39:

        if ((v36 & 0x8000000000000000) == 0)
        {
          if (v36 < *(a3 + 16))
          {
            return result;
          }

          goto LABEL_63;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v19 >= *(a4 + 16))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v38 = a3 + 32;
      v39 = (a4 + 32 * v19);
      v41 = v39[2];
      v40 = v39[3];
      v42 = *(a3 + 16);
      v43 = v20 + 6;
      while (v36 < v42)
      {
        v45 = *v43;
        v43 += 2;
        v44 = v45;
        if (v45 >= v42)
        {
          goto LABEL_59;
        }

        v46 = (v38 + 32 * v36);
        v47 = vsubq_f64(*v46, v41);
        v48 = vsubq_f64(v46[1], v40);
        v49 = vaddq_f64(vmulq_f64(v47, v47), vmulq_f64(v48, v48));
        v50 = (v38 + 32 * v44);
        v51 = vsubq_f64(*v50, v41);
        v52 = vsubq_f64(v50[1], v40);
        v53 = vsqrtq_f64(vpaddq_f64(v49, vaddq_f64(vmulq_f64(v51, v51), vmulq_f64(v52, v52))));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v53, 1), v53)).u8[0])
        {
          v36 = v44;
        }

        if (!--v37)
        {
          goto LABEL_39;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v69 = MEMORY[0x1E69E7CC0];
  sub_1B71FDC18(0, 4, 0);
  v61 = 0;
  v62 = v69;
  do
  {
    do
    {
      v68 = 0;
      result = MEMORY[0x1B8CA7A60](&v68, 8);
    }

    while (0x20000000000001 * v68 < 0x1FFFFFFFFFF801);
    v63 = (v68 * 0x20000000000001uLL) >> 64;
    v69 = v62;
    v65 = v62[2];
    v64 = v62[3];
    if (v65 >= v64 >> 1)
    {
      result = sub_1B71FDC18((v64 > 1), v65 + 1, 1);
      v62 = v69;
    }

    ++v61;
    v62[2] = v65 + 1;
    *&v62[v65 + 4] = vcvtd_n_f64_u64(v63, 0x35uLL) + 0.0;
  }

  while (v61 != 4);
  if (v65 > 3)
  {
    goto LABEL_61;
  }

  if (v65 == 3)
  {
  }

LABEL_66:
  __break(1u);
  return result;
}

unint64_t sub_1B733987C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_1B7339248(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_1B72051F0(v41, v39);
  v13 = *a5;
  result = sub_1B7263598(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1B7248968(v19, a4 & 1);
    result = sub_1B7263598(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CIContextOption(0);
    result = sub_1B78021C8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1B725C324();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_1B72051F0(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1B72051F0(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1B7339248(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_1B72051F0(v41, v39);
        v30 = *a5;
        result = sub_1B7263598(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_1B7248968(v34, 1);
          result = sub_1B7263598(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_1(v29);
          sub_1B72051F0(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_1B72051F0(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_1B7339248(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_1B71B7B58();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B7339B5C()
{
  result = qword_1EB98F028;
  if (!qword_1EB98F028)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F028);
  }

  return result;
}

uint64_t sub_1B7339BB4(unint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_67:
    v5 = sub_1B7801958();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8CA5DC0](v6, v2);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_64;
      }

      v8 = *(v2 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v10 = v8;
    v11 = sub_1B78010D8();

    ++v6;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B723EC60(0, v7[2] + 1, 1, v7);
      }

      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1B723EC60((v12 > 1), v13 + 1, 1, v7);
      }

      v7[2] = v13 + 1;
      v7[v13 + 4] = v11;
      v6 = v9;
    }
  }

  v14 = v7[2];
  if (v4)
  {
    v15 = sub_1B7801958();
  }

  else
  {
    v15 = *(v3 + 16);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v14 == v15)
  {
    v17 = v7[2];
    v18 = 4;
    do
    {
      if (!v17)
      {
        v31 = 0;
        v32 = a2 / 255.0;
        while (1)
        {
          if (v14)
          {
            sub_1B71FDBF8(0, v14 & ~(v14 >> 63), 0);
            if (v14 < 1)
            {
              goto LABEL_66;
            }

            v33 = v16;
            v34 = v7 + 4;
            v3 = v14;
            while (v31 < *(*v34 + 16))
            {
              v35 = *(*v34 + 8 * v31 + 32);
              v51 = v33;
              v4 = *(v33 + 16);
              v36 = *(v33 + 24);
              v2 = v4 + 1;
              if (v4 >= v36 >> 1)
              {
                sub_1B71FDBF8((v36 > 1), v4 + 1, 1);
                v33 = v51;
              }

              *(v33 + 16) = v2;
              *(v33 + 8 * v4 + 32) = v35;
              ++v34;
              if (!--v3)
              {
                v16 = MEMORY[0x1E69E7CC0];
                goto LABEL_46;
              }
            }

            __break(1u);
            goto LABEL_63;
          }

          v2 = *(v16 + 16);
          if (!v2)
          {
            goto LABEL_65;
          }

          v33 = v16;
LABEL_46:
          v37 = *(v33 + 32);
          v38 = v2 - 1;
          if (v2 == 1)
          {
            v39 = *(v33 + 32);
          }

          else
          {
            v40 = (v33 + 40);
            v41 = (v33 + 40);
            v42 = v2 - 1;
            v39 = *(v33 + 32);
            do
            {
              v43 = *v41++;
              v44 = v43;
              if (v39 < v43)
              {
                v39 = v44;
              }

              --v42;
            }

            while (v42);
            do
            {
              v45 = *v40++;
              v46 = v45;
              if (v45 < v37)
              {
                v37 = v46;
              }

              --v38;
            }

            while (v38);
          }

          v47 = v39 - v37;
          if (v32 < v47)
          {
            break;
          }

          if (++v31 == 4)
          {

            return 1;
          }
        }

        if (qword_1EB98EA70 != -1)
        {
          swift_once();
        }

        v48 = sub_1B78000B8();
        __swift_project_value_buffer(v48, qword_1EB9948D0);
        v21 = sub_1B7800098();
        v49 = sub_1B78011C8();
        if (os_log_type_enabled(v21, v49))
        {
          v23 = swift_slowAlloc();
          *v23 = 134218496;
          *(v23 + 4) = v31;
          *(v23 + 12) = 2048;
          *(v23 + 14) = v47;
          *(v23 + 22) = 2048;
          *(v23 + 24) = v32;
          v24 = "Colors are not similar because range of component at index %ld has range %f (greater than threshold of %f)";
          v26 = v49;
          v27 = v21;
          v28 = v23;
          v29 = 32;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      v19 = *(v7[v18++] + 16);
      --v17;
    }

    while (v19 == 4);

    if (qword_1EB98EA70 != -1)
    {
      swift_once();
    }

    v20 = sub_1B78000B8();
    __swift_project_value_buffer(v20, qword_1EB9948D0);
    v21 = sub_1B7800098();
    v22 = sub_1B78011D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Colors have differing numbers of components. Expected 4 (RGBA).";
      goto LABEL_32;
    }
  }

  else
  {

    if (qword_1EB98EA70 != -1)
    {
      swift_once();
    }

    v25 = sub_1B78000B8();
    __swift_project_value_buffer(v25, qword_1EB9948D0);
    v21 = sub_1B7800098();
    v22 = sub_1B78011D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Some colors have no components.";
LABEL_32:
      v26 = v22;
      v27 = v21;
      v28 = v23;
      v29 = 2;
LABEL_33:
      _os_log_impl(&dword_1B7198000, v27, v26, v24, v28, v29);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }
  }

LABEL_34:

  return 0;
}

void sub_1B733A0F0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1B7800008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7800038();
  __swift_project_value_buffer(v10, qword_1EBA45940);
  v11 = sub_1B7800018();
  v12 = sub_1B7801388();
  if (sub_1B7801738())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v11, v12, v14, "ColorExtraction-CoreImage", "RenderImage", v13, 2u);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
  }

  (*(v7 + 16))(v9, a3, v6);
  sub_1B7800078();
  swift_allocObject();
  v15 = sub_1B7800068();
  DeviceRGB = [a1 colorSpace];
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  [a1 extent];
  Width = CGRectGetWidth(v34);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = Width;
  if ((Width - 0x2000000000000000) >> 62 != 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [a1 extent];
  Height = CGRectGetHeight(v35);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = 4 * v18;
  v21 = 4 * v18 * Height;
  if ((4 * v18 * Height) >> 64 != v21 >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v21 < 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  if (v21)
  {
    v22 = sub_1B7800C78();
    *(v22 + 16) = v21;
    bzero((v22 + 32), v21);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  [a1 extent];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *MEMORY[0x1E695F910];
  v32 = DeviceRGB;

  [a2 render:a1 toBitmap:v22 + 32 rowBytes:v20 bounds:v31 format:v32 colorSpace:{v24, v26, v28, v30}];

  sub_1B733C45C(v15, "ColorExtraction-CoreImage");
}

uint64_t sub_1B733A4B0(void *a1, void *a2, CGFloat a3, CGFloat a4)
{
  [a1 extent];
  v36.x = a3;
  v36.y = a4;
  if (!CGRectContainsPoint(v37, v36))
  {
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000001FLL, 0x80000001B787A320);
    v29 = sub_1B7800F58();
    MEMORY[0x1B8CA4D30](v29);

    MEMORY[0x1B8CA4D30](8236, 0xE200000000000000);
    v30 = sub_1B7800F58();
    MEMORY[0x1B8CA4D30](v30);

    MEMORY[0x1B8CA4D30](0xD000000000000018, 0x80000001B787A340);
    [a1 extent];
    Width = CGRectGetWidth(v38);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (Width <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (Width >= 9.22337204e18)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v32 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v32);

      MEMORY[0x1B8CA4D30](120, 0xE100000000000000);
      [a1 extent];
      Height = CGRectGetHeight(v39);
      if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (Height <= -9.22337204e18)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (Height < 9.22337204e18)
      {
LABEL_36:
        v34 = sub_1B7802068();
        MEMORY[0x1B8CA4D30](v34);

        result = sub_1B7801C88();
        __break(1u);
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7800038();
  __swift_project_value_buffer(v8, qword_1EBA45940);
  v9 = sub_1B7800018();
  v10 = sub_1B7801398();
  if (sub_1B7801738())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v9, v10, v12, "ColorExtraction-CoreImage", "ColorFromPixel", v11, 2u);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  DeviceRGB = [a1 colorSpace];
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v14 = sub_1B7800C78();
  *(v14 + 32) = 0;
  *(v14 + 16) = 4;
  v15 = *MEMORY[0x1E695F910];
  v16 = DeviceRGB;
  [a2 render:a1 toBitmap:v14 + 32 rowBytes:4 bounds:v15 format:v16 colorSpace:{a3, a4, 1.0, 1.0}];

  v17 = *(v14 + 16);
  if (v17)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B71FDBF8(0, v17, 0);
    v18 = v35;
    v19 = *(v35 + 16);
    v20 = 32;
    do
    {
      v21 = *(v14 + v20);
      v22 = *(v35 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1B71FDBF8((v22 > 1), v19 + 1, 1);
      }

      *(v35 + 16) = v19 + 1;
      *(v35 + 8 * v19 + 32) = v21 / 255.0;
      ++v20;
      ++v19;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v23 = CGColorCreate(v16, (v18 + 32));

  if (v23)
  {
  }

  else
  {
    if (qword_1EB98EA70 != -1)
    {
      swift_once();
    }

    v24 = sub_1B78000B8();
    __swift_project_value_buffer(v24, qword_1EB9948D0);
    v25 = sub_1B7800098();
    v26 = sub_1B78011D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B7198000, v25, v26, "Failed to construct color from extracted pixel bitmap", v27, 2u);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v23;
}

uint64_t sub_1B733AA30(void *a1, void *a2, uint64_t a3)
{
  v95 = sub_1B7800008();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B781A3E0;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 colorWithRed:0.0 green:0.0 blue:0.0];
  *(v7 + 40) = [v8 colorWithRed:1.0 green:0.0 blue:0.0];
  *(v7 + 48) = [v8 colorWithRed:0.0 green:1.0 blue:0.0];
  *(v7 + 56) = [v8 colorWithRed:0.0 green:0.0 blue:1.0];
  *(v7 + 64) = [v8 colorWithRed:1.0 green:1.0 blue:0.0];
  *(v7 + 72) = [v8 colorWithRed:1.0 green:0.0 blue:1.0];
  *(v7 + 80) = [v8 colorWithRed:0.0 green:1.0 blue:1.0];
  *(v7 + 88) = [v8 colorWithRed:1.0 green:1.0 blue:1.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B78123D0;
  *(inited + 32) = sub_1B7800868();
  *(inited + 40) = v10;
  *(inited + 72) = sub_1B7205540(0, &qword_1EB9924E8);
  *(inited + 48) = a1;
  *(inited + 80) = sub_1B7800868();
  *(inited + 88) = v11;
  v12 = a1;
  [v12 extent];
  v17 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithCGRect_];
  v18 = sub_1B7205540(0, &qword_1EB9924F0);
  *(inited + 96) = v17;
  *(inited + 120) = v18;
  *(inited + 128) = 0x756F437475706E69;
  *(inited + 136) = 0xEA0000000000746ELL;
  v19 = MEMORY[0x1E69E6530];
  *(inited + 144) = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(inited + 168) = v19;
  *(inited + 176) = 0x61654D7475706E69;
  *(inited + 184) = 0xEA0000000000736ELL;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924F8);
  *(inited + 192) = v7;

  sub_1B72018E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  swift_arrayDestroy();
  v20 = sub_1B7800838();
  v21 = sub_1B7800708();

  v22 = [objc_opt_self() filterWithName:v20 withInputParameters:v21];

  if (!v22)
  {

    if (qword_1EB98EA70 != -1)
    {
      swift_once();
    }

    v65 = sub_1B78000B8();
    __swift_project_value_buffer(v65, qword_1EB9948D0);
    v66 = sub_1B7800098();
    v67 = sub_1B78011D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1B7198000, v66, v67, "Could not construct CIKMeans filter", v68, 2u);
      MEMORY[0x1B8CA7A40](v68, -1, -1);
    }

    return 0;
  }

  DeviceRGB = [v12 colorSpace];
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v97 = v22;
  v24 = [v22 outputImage];
  if (!v24 || (v25 = v24, v26 = [v24 imageByColorMatchingWorkingSpaceToColorSpace_], v25, (v92 = v26) == 0))
  {

    if (qword_1EB98EA70 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_60;
  }

  v90 = DeviceRGB;
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v27 = sub_1B7800038();
  v93 = __swift_project_value_buffer(v27, qword_1EBA45940);
  v28 = sub_1B7800018();
  v29 = sub_1B7801398();
  if (sub_1B7801738())
  {
    v30 = a2;
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v28, v29, v32, "ColorExtraction-CoreImage", "RenderingKMeans", v31, 2u);
    v33 = v31;
    a2 = v30;
    MEMORY[0x1B8CA7A40](v33, -1, -1);
  }

  v89 = a2;
  v91 = a3;
  sub_1B733A0F0(v92, a2, a3);
  DeviceRGB = v34;
  v35 = sub_1B7800018();
  v36 = sub_1B7801398();
  if (sub_1B7801738())
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v35, v36, v38, "ColorExtraction-CoreImage", "WeightExtraction", v37, 2u);
    MEMORY[0x1B8CA7A40](v37, -1, -1);
  }

  v39 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v39)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0.0;
    v45 = 0.0;
    while (v43 != 0x2000000000000000)
    {
      if ((v41 + 3) >= *(DeviceRGB + 2))
      {
        goto LABEL_56;
      }

      LOBYTE(v40) = *(DeviceRGB + v41 + 35);
      v40 = *&v40;
      v46 = v40 / 255.0;
      if (v45 < v40 / 255.0)
      {
        if (v46 == 1.0)
        {

          v47 = *(DeviceRGB + 2);
          if (v41 >= v47)
          {
            goto LABEL_57;
          }

          if (v41 + 1 >= v47)
          {
            goto LABEL_58;
          }

          if (v41 + 2 >= v47)
          {
            goto LABEL_59;
          }

          v48 = *(DeviceRGB + v41 + 32);
          v49 = *(DeviceRGB + v41 + 33);
          v50 = *(DeviceRGB + v41 + 34);
          v98 = MEMORY[0x1E69E7CC0];
          sub_1B71FDBF8(0, 4, 0);
          v51 = v98;
          v53 = *(v98 + 16);
          v52 = *(v98 + 24);
          v54 = v52 >> 1;
          v55 = v53 + 1;
          if (v52 >> 1 <= v53)
          {
            sub_1B71FDBF8((v52 > 1), v53 + 1, 1);
            v51 = v98;
            v52 = *(v98 + 24);
            v54 = v52 >> 1;
          }

          *(v51 + 16) = v55;
          *(v51 + 8 * v53 + 32) = v48 / 255.0;
          v56 = v53 + 2;
          if (v54 < (v53 + 2))
          {
            sub_1B71FDBF8((v52 > 1), v53 + 2, 1);
            v51 = v98;
          }

          *(v51 + 16) = v56;
          *(v51 + 8 * v55 + 32) = v49 / 255.0;
          v57 = *(v51 + 24);
          v58 = v53 + 3;
          if ((v53 + 3) > (v57 >> 1))
          {
            sub_1B71FDBF8((v57 > 1), v53 + 3, 1);
          }

          v40 = 255.0;
          v42 = v98;
          *(v98 + 16) = v58;
          *(v42 + 8 * v56 + 32) = v50 / 255.0;
          v59 = *(v42 + 24);
          if ((v53 + 4) > (v59 >> 1))
          {
            sub_1B71FDBF8((v59 > 1), v53 + 4, 1);
            v42 = v98;
          }

          *(v42 + 16) = v53 + 4;
          *(v42 + 8 * v58 + 32) = 0x3FF0000000000000;
        }

        v44 = v43;
        if (v46 >= 0.5)
        {
LABEL_43:
          v70 = v42;

          goto LABEL_45;
        }

        v45 = v46;
      }

      ++v43;
      v41 += 4;
      if (v39 == v43)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
LABEL_34:
    v60 = sub_1B78000B8();
    __swift_project_value_buffer(v60, qword_1EB9948D0);
    v61 = sub_1B7800098();
    v62 = sub_1B78011D8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = DeviceRGB;
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1B7198000, v61, v62, "CIKMeans filter failed to produce output image", v64, 2u);
      MEMORY[0x1B8CA7A40](v64, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v70 = 0;
  v44 = 0.0;
LABEL_45:
  v71 = sub_1B7800018();
  v72 = sub_1B7801398();
  if (sub_1B7801738())
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v71, v72, v74, "ColorExtraction-CoreImage", "FinalColor", v73, 2u);
    MEMORY[0x1B8CA7A40](v73, -1, -1);
  }

  if (v70)
  {
    v75 = sub_1B7800018();
    v76 = sub_1B7801398();
    if (sub_1B7801738())
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = sub_1B77FFFE8();
      _os_signpost_emit_with_name_impl(&dword_1B7198000, v75, v76, v78, "ColorExtraction-CoreImage", "QuickColor", v77, 2u);
      MEMORY[0x1B8CA7A40](v77, -1, -1);
    }

    v79 = v90;
    v80 = CGColorCreate(v90, (v70 + 32));
  }

  else
  {
    v81 = v92;
    [v92 extent];
    v82 = [v81 imageBySettingAlphaOneInExtent_];
    v83 = sub_1B7800018();
    v84 = sub_1B7801388();
    if (sub_1B7801738())
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      v86 = sub_1B77FFFE8();
      _os_signpost_emit_with_name_impl(&dword_1B7198000, v83, v84, v86, "ColorExtraction-CoreImage", "WeightedColor", v85, 2u);
      MEMORY[0x1B8CA7A40](v85, -1, -1);
    }

    (*(v94 + 16))(v96, v91, v95);
    sub_1B7800078();
    swift_allocObject();
    v87 = sub_1B7800068();
    v80 = sub_1B733A4B0(v82, v89, v44, 0.0);
    sub_1B733C45C(v87, "ColorExtraction-CoreImage");
  }

  return v80;
}

uint64_t sub_1B733B78C(void *a1)
{
  v3 = sub_1B77FE678();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v31 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = a1;
  sub_1B7801408();
  if (v43 == 1 || (v54 = v42, v55 = v43, v56 = v44, v57 = v45, CGColorSpaceCreateDeviceRGB(), sub_1B7801418(), v47 == 1))
  {
    sub_1B733D4C4();
    swift_allocError();
    v16 = 0;
LABEL_8:
    *v15 = v16;
    swift_willThrow();
    return v16;
  }

  v58 = v4;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v17 = v14;
  sub_1B77FE668();
  result = sub_1B7801208();
  v16 = v1;
  if (v1)
  {
    sub_1B733D4C4();
    swift_allocError();
    goto LABEL_8;
  }

  v36 = result;
  v37 = v21;
  if (((v20 | v19) & 0x8000000000000000) == 0)
  {
    v35 = v20;
    v34 = v19;
    v38 = sub_1B7801238();
    v39 = v22;
    v40 = v23;
    v33 = v24;
    v41 = v24;
    type metadata accessor for vImageConverter(0);
    sub_1B77FE668();
    v25 = sub_1B78013A8();
    v26 = *(v58 + 8);
    v26(v13, v3);
    sub_1B77FE668();
    sub_1B78013B8();
    v26(v10, v3);
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v31 = v41;
    sub_1B77FE668();
    v58 = v27;
    v32 = v28;
    v33 = v29;
    v30 = v31;
    v16 = sub_1B7801218();
    v26(v7, v3);

    MEMORY[0x1B8CA5540](v58, v32, v33, v30);
    MEMORY[0x1B8CA5540](v36, v34, v35, v37);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B733BC64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v4 = 0uLL;
  v5 = 1;
  if (a2 >= 2 && a3 >= 2)
  {
    if (a3 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = a3;
    }

    v7 = v6 * 0.05;
    if (v7 != INFINITY)
    {
      if (v7 <= -9.22337204e18)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      if (v7 >= 9.22337204e18)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      if (a2 >> 61)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v8 = v7;
      v122 = v7;
      v123[0] = v7;
      v9 = a2 - v7;
      if (__OFSUB__(a2, v7))
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v123[1] = v11;
      v123[2] = v7;
      v123[3] = v7;
      v10 = __OFSUB__(a3, v8);
      v12 = a3 - v8;
      if (v10)
      {
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924C8);
        result = sub_1B78021C8();
        __break(1u);
        return result;
      }

      v10 = __OFSUB__(v12, 1);
      v13 = v12 - 1;
      if (v10)
      {
        goto LABEL_108;
      }

      v14 = result;
      v106 = a4;
      v107 = 4 * a2;
      v123[4] = v13;
      v123[5] = v11;
      v123[6] = v13;
      v120 = MEMORY[0x1E69E7CC0];
      sub_1B71FDC38(0, 4, 0);
      v15 = 0;
      v16 = v120;
      while (1)
      {
        v17 = v123[v15];
        v18 = v17 * v107;
        if ((v17 * v107) >> 64 != (v17 * v107) >> 63)
        {
          break;
        }

        v19 = *&v121[v15 * 8 + 32];
        if ((v19 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_92;
        }

        v20 = v18 + 4 * v19;
        if (__OFADD__(v18, 4 * v19))
        {
          goto LABEL_93;
        }

        v119 = MEMORY[0x1E69E7CC0];
        sub_1B71FDC18(0, 4, 0);
        v21 = *(v14 + v20);
        v22 = v119;
        v24 = *(v119 + 16);
        v23 = *(v119 + 24);
        v25 = v23 >> 1;
        v26 = v24 + 1;
        if (v23 >> 1 <= v24)
        {
          sub_1B71FDC18((v23 > 1), v24 + 1, 1);
          v22 = v119;
          v23 = *(v119 + 24);
          v25 = v23 >> 1;
        }

        *(v22 + 16) = v26;
        *(v22 + 8 * v24 + 32) = v21 / 255.0;
        v27 = *(v14 + v20 + 1);
        v28 = v24 + 2;
        if (v25 < (v24 + 2))
        {
          sub_1B71FDC18((v23 > 1), v24 + 2, 1);
          v22 = v119;
        }

        *(v22 + 16) = v28;
        *(v22 + 8 * v26 + 32) = v27 / 255.0;
        v29 = *(v14 + v20 + 2);
        v30 = *(v22 + 24);
        v31 = v24 + 3;
        if ((v24 + 3) > (v30 >> 1))
        {
          sub_1B71FDC18((v30 > 1), v24 + 3, 1);
        }

        v32 = v119;
        *(v119 + 16) = v31;
        *(v32 + 32 + 8 * v28) = v29 / 255.0;
        v33 = *(v14 + v20 + 3);
        v34 = *(v32 + 24);
        v35 = v24 + 4;
        if ((v24 + 4) > (v34 >> 1))
        {
          sub_1B71FDC18((v34 > 1), v24 + 4, 1);
          v32 = v119;
          *(v119 + 16) = v35;
          *(v32 + 8 * v31 + 32) = v33 / 255.0;
          if (v24)
          {
            goto LABEL_95;
          }
        }

        else
        {
          *(v32 + 16) = v35;
          *(v32 + 32 + 8 * v31) = v33 / 255.0;
          if (v35 < 1)
          {
            goto LABEL_94;
          }

          if (v24)
          {
            goto LABEL_95;
          }
        }

        v109 = *(v32 + 48);
        v112 = *(v32 + 32);

        v120 = v16;
        v37 = *(v16 + 16);
        v36 = *(v16 + 24);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          sub_1B71FDC38((v36 > 1), v38, 1);
          v38 = v37 + 1;
          v16 = v120;
        }

        *(v16 + 16) = v38;
        v39 = v16 + 32 * v37;
        *(v39 + 32) = v112;
        *(v39 + 48) = v109;
        v15 += 2;
        if (v15 == 8)
        {
          v41 = 0;
          v116 = v16;
          v42 = v16 + 32;
          while (2)
          {
            v120 = MEMORY[0x1E69E7CC0];
            v110 = v38;
            sub_1B71FDC18(0, v38, 0);
            v43 = 0;
            v44 = v120;
            v45 = *(v120 + 16);
            v113 = v41;
            v46 = v45;
            do
            {
              v47 = v46;
              v48 = (v42 + 32 * v43);
              v50 = *v48;
              v49 = v48[1];
              v120 = v44;
              v51 = *(v44 + 24);
              if (v45 + v43 >= v51 >> 1)
              {
                v108 = v49;
                v105 = v50;
                sub_1B71FDC18((v51 > 1), v45 + v43 + 1, 1);
                v50 = v105;
                v49 = v108;
                v44 = v120;
              }

              v52 = v43 + 1;
              v118[0] = v50;
              v118[1] = v49;
              v53 = *(v118 + (v41 & 3));
              *(v44 + 16) = v45 + v43 + 1;
              *(v44 + 8 * v45 + 32 + 8 * v43) = v53;
              v46 = v47 + 1;
              v43 = v52;
            }

            while (v37 + 1 != v52);
            v54 = *(v44 + 32);
            if (v45 + v52 == 1)
            {
              v58 = *(v44 + 32);
            }

            else
            {
              v55 = v44 + 40;
              v56 = (v44 + 40);
              v57 = v47;
              v58 = *(v44 + 32);
              do
              {
                v59 = *v56++;
                v60 = v59;
                if (v58 < v59)
                {
                  v58 = v60;
                }

                --v57;
              }

              while (v57);
              v61 = 0;
              do
              {
                if (*(v55 + 8 * v61) < v54)
                {
                  v54 = *(v55 + 8 * v61);
                }

                ++v61;
              }

              while (v47 != v61);
            }

            if (v58 - v54 > 0.0196078431)
            {
            }

            else
            {
              ++v41;
              v38 = v110;
              if (v113 != 3)
              {
                continue;
              }

              v62 = v116;
              v63 = *(v116 + 16);
              if (v63)
              {
                v64 = 0;
                v65 = MEMORY[0x1E69E7CC8];
                while (1)
                {
                  if (v64 >= *(v62 + 16))
                  {
                    goto LABEL_97;
                  }

                  v66 = (v116 + 32 + 32 * v64);
                  v111 = v66[1];
                  v114 = *v66;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v120 = v65;
                  v68 = sub_1B7245A18(v114, v111);
                  v70 = *(v65 + 16);
                  v71 = (v69 & 1) == 0;
                  v10 = __OFADD__(v70, v71);
                  v72 = v70 + v71;
                  if (v10)
                  {
                    goto LABEL_98;
                  }

                  v73 = v69;
                  if (*(v65 + 24) < v72)
                  {
                    break;
                  }

                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_59;
                  }

                  v81 = v68;
                  sub_1B725C4A4();
                  v68 = v81;
                  v65 = v120;
                  if ((v73 & 1) == 0)
                  {
LABEL_60:
                    *(v65 + 8 * (v68 >> 6) + 64) |= 1 << v68;
                    v75 = (*(v65 + 48) + 32 * v68);
                    *v75 = v114;
                    v75[1] = v111;
                    *(*(v65 + 56) + 8 * v68) = 0;
                    v76 = *(v65 + 16);
                    v10 = __OFADD__(v76, 1);
                    v77 = v76 + 1;
                    if (v10)
                    {
                      goto LABEL_100;
                    }

                    *(v65 + 16) = v77;
                  }

LABEL_62:
                  v78 = *(v65 + 56);
                  v79 = *(v78 + 8 * v68);
                  v10 = __OFADD__(v79, 1);
                  v80 = v79 + 1;
                  if (v10)
                  {
                    goto LABEL_99;
                  }

                  ++v64;
                  *(v78 + 8 * v68) = v80;
                  v62 = v116;
                  if (v63 == v64)
                  {
                    goto LABEL_70;
                  }
                }

                sub_1B7248C38(v72, isUniquelyReferenced_nonNull_native);
                v65 = v120;
                v68 = sub_1B7245A18(v114, v111);
                if ((v73 & 1) != (v74 & 1))
                {
                  goto LABEL_109;
                }

LABEL_59:
                if ((v73 & 1) == 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_62;
              }

              v65 = MEMORY[0x1E69E7CC8];
LABEL_70:

              v84 = 1 << *(v65 + 32);
              v85 = -1;
              if (v84 < 64)
              {
                v85 = ~(-1 << v84);
              }

              v86 = v85 & *(v65 + 64);
              if (v86)
              {
                v87 = 0;
                v88 = __clz(__rbit64(v86));
                v89 = (v86 - 1) & v86;
                v90 = (v84 + 63) >> 6;
LABEL_78:
                v94 = *(v65 + 48);
                v95 = *(v65 + 56);
                v96 = (v94 + 32 * v88);
                v97 = *v96;
                v98 = v96[1];
                v99 = *(v95 + 8 * v88);
                if (!v89)
                {
                  goto LABEL_80;
                }

                do
                {
                  v100 = v87;
LABEL_84:
                  v101 = __clz(__rbit64(v89));
                  v89 &= v89 - 1;
                  v102 = v101 | (v100 << 6);
                  v103 = (v94 + 32 * v102);
                  v104 = *(v95 + 8 * v102);
                  v82.i64[0] = v99;
                  if (v99 <= v104)
                  {
                    v99 = v104;
                  }

                  v83.i64[0] = v104;
                  v82 = vdupq_lane_s64(vcgtq_s64(v83, v82).i64[0], 0);
                  v98 = vbslq_s8(v82, v103[1], v98);
                  v97 = vbslq_s8(v82, *v103, v97);
                }

                while (v89);
LABEL_80:
                while (1)
                {
                  v100 = v87 + 1;
                  if (__OFADD__(v87, 1))
                  {
                    goto LABEL_96;
                  }

                  if (v100 >= v90)
                  {
                    v115 = v98;
                    v117 = v97;

                    v40 = v115;
                    v4 = v117;
                    v5 = 0;
                    a4 = v106;
                    goto LABEL_89;
                  }

                  v89 = *(v65 + 64 + 8 * v100);
                  ++v87;
                  if (v89)
                  {
                    v87 = v100;
                    goto LABEL_84;
                  }
                }
              }

              v91 = 0;
              v92 = 0;
              v90 = (v84 + 63) >> 6;
              while (v90 - 1 != v92)
              {
                v87 = v92 + 1;
                v93 = *(v65 + 8 * v92 + 72);
                v91 -= 64;
                ++v92;
                if (v93)
                {
                  v89 = (v93 - 1) & v93;
                  v88 = __clz(__rbit64(v93)) - v91;
                  goto LABEL_78;
                }
              }
            }

            break;
          }

          v5 = 1;
          v40 = 0uLL;
          a4 = v106;
          v4 = 0uLL;
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
    }

    __break(1u);
    goto LABEL_102;
  }

  v40 = 0uLL;
LABEL_89:
  *a4 = v4;
  a4[1] = v40;
  a4[2].i8[0] = v5;
  return result;
}

uint64_t sub_1B733C45C(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1B7800048();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7800008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7800038();
  __swift_project_value_buffer(v10, qword_1EBA45940);
  v11 = sub_1B7800018();
  sub_1B7800058();
  v12 = sub_1B7801378();
  if (sub_1B7801738())
  {

    sub_1B7800088();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B733C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (!*(a4 + 16))
  {
    return v5;
  }

  v6 = a2;
  if ((a2 - 0x2000000000000000) >> 62 == 3)
  {
    if (a2 <= 19)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2 / 0xAuLL;
    }

    v8 = a3 / 10;
    if (a3 / 10 <= 1)
    {
      v8 = 1;
    }

    v122 = v8;
    *&v144[0] = MEMORY[0x1E69E7CC0];
    v126 = a4;

    if (a3 < 1)
    {
      v6 = v5;
LABEL_74:
      v63 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
      v64 = *(v6 + 16);
      v65 = 1;
      v134 = v64;
      while (1)
      {
        v141 = v63;
        if (v64)
        {
          break;
        }

        v93 = *(v5 + 16);
        v70 = v5;
        if (v93)
        {
LABEL_96:
          v146[0] = MEMORY[0x1E69E7CC0];
          sub_1B71FDAA8(0, v93, 0);
          v94 = v146[0];
          v95 = 32;
          do
          {
            v145 = *(v70 + v95);
            swift_dynamicCast();
            v146[0] = v94;
            v97 = *(v94 + 2);
            v96 = *(v94 + 3);
            if (v97 >= v96 >> 1)
            {
              sub_1B71FDAA8((v96 > 1), v97 + 1, 1);
              v94 = v146[0];
            }

            *(v94 + 2) = v97 + 1;
            sub_1B72051F0(v144, &v94[32 * v97 + 32]);
            v95 += 8;
            --v93;
          }

          while (v93);
        }

        v98 = objc_allocWithZone(MEMORY[0x1E696AB50]);
        v99 = sub_1B7800C18();

        v7 = [v98 initWithArray_];

        v100 = v126[2];
        if (v100)
        {
          *&v144[0] = MEMORY[0x1E69E7CC0];

          sub_1B71FDC38(0, v100, 0);
          v101 = 0;
          v4 = *&v144[0];
          v102 = v126;
          do
          {

            sub_1B7339398(v101, v70, v6, v102);
            v137 = v104;
            v142 = v103;

            *&v144[0] = v4;
            v106 = v4[2];
            v105 = v4[3];
            if (v106 >= v105 >> 1)
            {
              sub_1B71FDC38((v105 > 1), v106 + 1, 1);
              v4 = *&v144[0];
            }

            ++v101;
            v4[2] = (v106 + 1);
            v107 = &v4[4 * v106];
            *(v107 + 2) = v142;
            *(v107 + 3) = v137;
            v102 = v126;
          }

          while (v100 != v101);

          v5 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v5 = MEMORY[0x1E69E7CC0];
          v4 = MEMORY[0x1E69E7CC0];
        }

        v108 = v4[2];
        if (v108 == v126[2])
        {
          if (!v108 || v4 == v126)
          {
LABEL_113:

            *&v144[0] = v7;

            v110 = v126;
            goto LABEL_114;
          }

          v109 = 4;
          while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[v109], *&v126[v109]), vceqq_f64(*&v4[v109 + 2], *&v126[v109 + 2])))) & 1) != 0)
          {
            v109 += 4;
            if (!--v108)
            {
              goto LABEL_113;
            }
          }
        }

        v126 = v4;
        v63 = v7;
        v66 = v65++ == 5;
        v64 = v134;
        if (v66)
        {
          goto LABEL_134;
        }
      }

      *&v144[0] = v5;
      sub_1B71FDC58(0, v64, 0);
      v67 = v126;
      v68 = v126[2];
      if (!v68)
      {
        goto LABEL_138;
      }

      v69 = 0;
      v70 = *&v144[0];
      v72 = v6 + 32;
      v71 = v134;
      while (1)
      {
        if (v69 >= *(v6 + 16))
        {
          __break(1u);
          __break(1u);
          goto LABEL_136;
        }

        if (v68 != 1)
        {
          break;
        }

        v73 = 0;
LABEL_91:
        *&v144[0] = v70;
        v92 = *(v70 + 16);
        v91 = *(v70 + 24);
        v93 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          sub_1B71FDC58((v91 > 1), v92 + 1, 1);
          v72 = v6 + 32;
          v71 = v134;
          v67 = v126;
          v70 = *&v144[0];
        }

        ++v69;
        *(v70 + 16) = v93;
        *(v70 + 8 * v92 + 32) = v73;
        if (v69 == v71)
        {
          goto LABEL_96;
        }
      }

      v73 = 0;
      v74 = 0;
      v75 = (v72 + 32 * v69);
      v77 = *v75;
      v76 = v75[1];
      v78 = v67[2];
      if (v78 <= 1)
      {
        v79 = 1;
      }

      else
      {
        v79 = v67[2];
      }

      v80 = (v126 + 8);
      v81 = 1;
      while (v79 != v81)
      {
        if (v74 >= v78)
        {
          goto LABEL_121;
        }

        v83 = *v80;
        v82 = v80[1];
        v80 += 2;
        v84 = vsubq_f64(v77, v83);
        v85 = vsubq_f64(v76, v82);
        v86 = vaddq_f64(vmulq_f64(v84, v84), vmulq_f64(v85, v85));
        v87 = &v126[4 * v74 + 4];
        v88 = vsubq_f64(v77, *v87);
        v89 = vsubq_f64(v76, v87[1]);
        v90 = vsqrtq_f64(vpaddq_f64(v86, vaddq_f64(vmulq_f64(v88, v88), vmulq_f64(v89, v89))));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v90, 1), v90)).u8[0])
        {
          v73 = v81;
          v74 = v81;
        }

        if (v68 == ++v81)
        {
          goto LABEL_91;
        }
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:

      v5 = MEMORY[0x1E69E7CC0];
LABEL_123:
      v119 = *&v144[0];

      return v5;
    }

    v9 = 0;
    v121 = 4 * v6;
    v127 = 4 * v7;
    v130 = v7;
    v131 = v6;
    while (2)
    {
      v11 = v9;
      v12 = v9 * v121;
      v13 = (v9 * v121) >> 64;
      v14 = v11 + v122;
      v15 = __OFADD__(v11, v122);
      v133 = v12;
      if (v13 == v12 >> 63)
      {
        v16 = 0;
        v17 = 0;
        while (v17 < v6)
        {
          v18 = __OFADD__(v17, v7);
          v17 += v7;
          if (v18)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v18 = __OFADD__(v16++, 1);
          if (v18)
          {
            __break(1u);
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
            goto LABEL_130;
          }
        }

        v124 = v15;
        v125 = v14;
        v146[0] = v5;
        v4 = v146;
        sub_1B71FDC38(0, v16, 0);
        v19 = v146[0];
        if (v16)
        {
          v20 = 0;
          while (v20 < v6)
          {
            if (__OFADD__(v20, v7))
            {
              v21 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20 + v7;
            }

            if ((v20 - 0x2000000000000000) >> 62 != 3)
            {
              goto LABEL_126;
            }

            v22 = v133 + 4 * v20;
            if (__OFADD__(v133, 4 * v20))
            {
              goto LABEL_127;
            }

            v145 = v5;
            v4 = &v145;
            sub_1B71FDC18(0, 4, 0);
            v23 = a1;
            v24 = *(a1 + v22);
            v25 = v145;
            v7 = *(v145 + 16);
            v26 = *(v145 + 24);
            v27 = v26 >> 1;
            v28 = v7 + 1;
            if (v26 >> 1 <= v7)
            {
              sub_1B71FDC18((v26 > 1), v7 + 1, 1);
              v23 = a1;
              v25 = v145;
              v26 = *(v145 + 24);
              v27 = v26 >> 1;
            }

            *(v25 + 16) = v28;
            *(v25 + 8 * v7 + 32) = v24 / 255.0;
            v29 = v23 + v22;
            v30 = *(v23 + v22 + 1);
            v31 = v7 + 2;
            if (v27 < (v7 + 2))
            {
              sub_1B71FDC18((v26 > 1), v7 + 2, 1);
              v23 = a1;
              v25 = v145;
            }

            *(v25 + 16) = v31;
            *(v25 + 8 * v28 + 32) = v30 / 255.0;
            v32 = *(v29 + 2);
            v33 = *(v25 + 24);
            v34 = v7 + 3;
            if ((v7 + 3) > (v33 >> 1))
            {
              sub_1B71FDC18((v33 > 1), v7 + 3, 1);
              v23 = a1;
            }

            v35 = v145;
            *(v145 + 16) = v34;
            *(v35 + 32 + 8 * v31) = v32 / 255.0;
            v36 = *(v23 + v22 + 3);
            v37 = *(v35 + 24);
            v5 = v7 + 4;
            if ((v7 + 4) > (v37 >> 1))
            {
              sub_1B71FDC18((v37 > 1), v7 + 4, 1);
              v35 = v145;
              *(v145 + 16) = v5;
              *(v35 + 8 * v34 + 32) = v36 / 255.0;
              if (v7)
              {
                goto LABEL_129;
              }
            }

            else
            {
              *(v35 + 16) = v5;
              *(v35 + 32 + 8 * v34) = v36 / 255.0;
              if (v5 < 1)
              {
                goto LABEL_128;
              }

              if (v7)
              {
                goto LABEL_129;
              }
            }

            v135 = *(v35 + 48);
            v139 = *(v35 + 32);

            v146[0] = v19;
            v39 = *(v19 + 2);
            v38 = *(v19 + 3);
            if (v39 >= v38 >> 1)
            {
              v4 = v146;
              sub_1B71FDC38((v38 > 1), v39 + 1, 1);
              v19 = v146[0];
            }

            *(v19 + 2) = v39 + 1;
            v40 = &v19[32 * v39];
            *(v40 + 2) = v139;
            *(v40 + 3) = v135;
            v20 = v21;
            --v16;
            v5 = MEMORY[0x1E69E7CC0];
            v7 = v130;
            v6 = v131;
            if (!v16)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_125;
        }

        v21 = 0;
LABEL_48:
        if (v21 >= v6)
        {
LABEL_10:
          v4 = v144;
          sub_1B72443EC(v19);
          v9 = v125;
          v10 = v124;
          if (v125 >= a3)
          {
            v10 = 1;
          }

          v5 = MEMORY[0x1E69E7CC0];
          if (v10)
          {
            v6 = *&v144[0];
            goto LABEL_74;
          }

          continue;
        }

        v5 = 4 * v21;
        while (1)
        {
          v18 = __OFADD__(v21, v7);
          v7 += v21;
          v41 = v18;
          if ((v21 - 0x2000000000000000) >> 62 != 3)
          {
            break;
          }

          v42 = v133 + v5;
          if (__OFADD__(v133, v5))
          {
            goto LABEL_131;
          }

          v136 = v41;
          v145 = MEMORY[0x1E69E7CC0];
          v4 = &v145;
          sub_1B71FDC18(0, 4, 0);
          v43 = a1;
          v44 = *(a1 + v42);
          v45 = v145;
          v47 = *(v145 + 16);
          v46 = *(v145 + 24);
          v48 = v46 >> 1;
          v49 = v47 + 1;
          v140 = v7;
          if (v46 >> 1 <= v47)
          {
            sub_1B71FDC18((v46 > 1), v47 + 1, 1);
            v43 = a1;
            v45 = v145;
            v46 = *(v145 + 24);
            v48 = v46 >> 1;
          }

          *(v45 + 16) = v49;
          *(v45 + 8 * v47 + 32) = v44 / 255.0;
          v50 = v43 + v42;
          v51 = *(v43 + v42 + 1);
          v52 = v47 + 2;
          if (v48 < (v47 + 2))
          {
            sub_1B71FDC18((v46 > 1), v47 + 2, 1);
            v43 = a1;
            v45 = v145;
          }

          *(v45 + 16) = v52;
          *(v45 + 8 * v49 + 32) = v51 / 255.0;
          v53 = *(v50 + 2);
          v54 = *(v45 + 24);
          v55 = v47 + 3;
          if ((v47 + 3) > (v54 >> 1))
          {
            sub_1B71FDC18((v54 > 1), v47 + 3, 1);
            v43 = a1;
          }

          v56 = v145;
          *(v145 + 16) = v55;
          *(v56 + 32 + 8 * v52) = v53 / 255.0;
          v7 = *(v43 + v42 + 3);
          v57 = *(v56 + 24);
          v58 = v47 + 4;
          if ((v47 + 4) > (v57 >> 1))
          {
            sub_1B71FDC18((v57 > 1), v47 + 4, 1);
            v56 = v145;
            *(v145 + 16) = v58;
            *(v56 + 8 * v55 + 32) = v7 / 255.0;
            if (v47)
            {
              goto LABEL_133;
            }
          }

          else
          {
            *(v56 + 16) = v58;
            *(v56 + 32 + 8 * v55) = v7 / 255.0;
            if (v58 < 1)
            {
              goto LABEL_132;
            }

            if (v47)
            {
              goto LABEL_133;
            }
          }

          v128 = *(v56 + 48);
          v129 = *(v56 + 32);

          v146[0] = v19;
          v60 = *(v19 + 2);
          v59 = *(v19 + 3);
          if (v60 >= v59 >> 1)
          {
            v4 = v146;
            sub_1B71FDC38((v59 > 1), v60 + 1, 1);
            v19 = v146[0];
          }

          *(v19 + 2) = v60 + 1;
          v61 = &v19[32 * v60];
          *(v61 + 2) = v129;
          *(v61 + 3) = v128;
          v7 = v130;
          v6 = v131;
          v62 = v136;
          if (v140 >= v131)
          {
            v62 = 1;
          }

          v21 += v130;
          v5 += v127;
          if (v62)
          {
            goto LABEL_10;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:

        *&v144[0] = v7;
        v110 = v4;
LABEL_114:
        v146[0] = sub_1B73390BC(v110);
        sub_1B73381B0(v146, v144);
        v111 = v146[0];
        v112 = *(v146[0] + 2);
        if (v112)
        {
          v146[0] = v5;
          sub_1B71FDC38(0, v112, 0);
          v5 = v146[0];
          v113 = *(v146[0] + 2) + 1;
          v114 = 48;
          do
          {
            v116 = *&v111[v114];
            v115 = *&v111[v114 + 16];
            v146[0] = v5;
            v117 = *(v5 + 24);
            if (v113 - 1 >= v117 >> 1)
            {
              v138 = v116;
              v143 = v115;
              sub_1B71FDC38((v117 > 1), v113, 1);
              v116 = v138;
              v115 = v143;
              v5 = v146[0];
            }

            *(v5 + 16) = v113;
            v118 = (v5 + 32 * v113);
            *v118 = v116;
            v118[1] = v115;
            ++v113;
            v114 += 48;
            --v112;
          }

          while (v112);

          goto LABEL_123;
        }

        goto LABEL_122;
      }

      break;
    }

LABEL_136:
    __break(1u);
  }

  __break(1u);
LABEL_138:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1B733D2CC()
{
  result = qword_1EB9924D0;
  if (!qword_1EB9924D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9924C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9924D0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B733D360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B733D3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B733D408(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1B733D464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B733D4C4()
{
  result = qword_1EB9924E0;
  if (!qword_1EB9924E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9924E0);
  }

  return result;
}

uint64_t sub_1B733D518@<X0>(CGFloat *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B733A4B0(*(v2 + 16), *(v2 + 24), *a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t RawBankConnectData.Account.availableBalance.getter()
{
  v0 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - v13);
  v15 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v27, v20, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7341168(v20, v17, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7340F20(&v17[*(v15 + 40)], v8, type metadata accessor for RawBankConnectData.AccountBalances);
    sub_1B7340A08(v17, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7205588(v8, v14, &qword_1EB990778);
    sub_1B7340A08(v8, type metadata accessor for RawBankConnectData.AccountBalances);
    v23 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v23 - 8) + 48))(v14, 1, v23) == 1)
    {
      v22 = v14;
      goto LABEL_6;
    }

    v24 = *v14;
    v25 = v14;
LABEL_9:
    sub_1B7340A08(v25, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return v24;
  }

  sub_1B7341168(v20, v2, type metadata accessor for RawBankConnectData.LiabilityAccount);
  sub_1B7340F20(&v2[*(v0 + 40)], v6, type metadata accessor for RawBankConnectData.AccountBalances);
  sub_1B7340A08(v2, type metadata accessor for RawBankConnectData.LiabilityAccount);
  sub_1B7205588(v6, v12, &qword_1EB990778);
  sub_1B7340A08(v6, type metadata accessor for RawBankConnectData.AccountBalances);
  v21 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  if ((*(*(v21 - 8) + 48))(v12, 1, v21) != 1)
  {
    v24 = *v12;
    v25 = v12;
    goto LABEL_9;
  }

  v22 = v12;
LABEL_6:
  sub_1B7205418(v22, &qword_1EB990778);
  return 0;
}

uint64_t RawBankConnectData.Account.availableBalanceAsOf.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v37, v21, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v21, v3, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7340F20(&v3[*(v1 + 40)], v7, type metadata accessor for RawBankConnectData.AccountBalances);
    sub_1B7340A08(v3, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7205588(v7, v13, &qword_1EB990778);
    sub_1B7340A08(v7, type metadata accessor for RawBankConnectData.AccountBalances);
    v22 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
    {
      v23 = v13;
LABEL_6:
      sub_1B7205418(v23, &qword_1EB990778);
      v25 = sub_1B77FF988();
      return (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
    }

    v27 = *(v22 + 20);
    v28 = sub_1B77FF988();
    v29 = *(v28 - 8);
    v30 = &v13[v27];
    v31 = v38;
    (*(v29 + 16))(v38, v30, v28);
    sub_1B7340A08(v13, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return (*(v29 + 56))(v31, 0, 1, v28);
  }

  else
  {
    sub_1B7341168(v21, v18, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7340F20(&v18[*(v16 + 40)], v9, type metadata accessor for RawBankConnectData.AccountBalances);
    sub_1B7340A08(v18, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7205588(v9, v15, &qword_1EB990778);
    sub_1B7340A08(v9, type metadata accessor for RawBankConnectData.AccountBalances);
    v24 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v24 - 8) + 48))(v15, 1, v24) == 1)
    {
      v23 = v15;
      goto LABEL_6;
    }

    v32 = *(v24 + 20);
    v33 = sub_1B77FF988();
    v34 = *(v33 - 8);
    v35 = &v15[v32];
    v36 = v38;
    (*(v34 + 16))(v38, v35, v33);
    sub_1B7340A08(v15, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return (*(v34 + 56))(v36, 0, 1, v33);
  }
}

uint64_t RawBankConnectData.Account.availableBalanceCreditDebitIndicator.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v2, v18, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v18, v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7205588(&v6[*(v4 + 40)], v10, &qword_1EB990778);
    sub_1B7340A08(v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v19 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) != 1)
    {
      v24 = v10[*(v19 + 24)];
      result = sub_1B7340A08(v10, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      v23 = (v24 & 1) == 0;
      goto LABEL_9;
    }

    v20 = v10;
  }

  else
  {
    sub_1B7341168(v18, v15, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7205588(&v15[*(v13 + 40)], v12, &qword_1EB990778);
    sub_1B7340A08(v15, type metadata accessor for RawBankConnectData.AssetAccount);
    v21 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) != 1)
    {
      v25 = v12[*(v21 + 24)];
      result = sub_1B7340A08(v12, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      v23 = (v25 & 1) == 0;
      goto LABEL_9;
    }

    v20 = v12;
  }

  result = sub_1B7205418(v20, &qword_1EB990778);
  v23 = 2;
LABEL_9:
  *a1 = v23;
  return result;
}

uint64_t RawBankConnectData.Account.bookedBalance.getter()
{
  v0 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  v3 = MEMORY[0x1EEE9AC00](v27);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v26 - v12);
  v14 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v26[1], v19, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7341168(v19, v16, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7340F20(&v16[*(v14 + 40)], v7, type metadata accessor for RawBankConnectData.AccountBalances);
    sub_1B7340A08(v16, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7205588(&v7[*(v27 + 20)], v13, &qword_1EB990778);
    sub_1B7340A08(v7, type metadata accessor for RawBankConnectData.AccountBalances);
    v22 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v22 - 8) + 48))(v13, 1, v22) == 1)
    {
      v21 = v13;
      goto LABEL_6;
    }

    v23 = *v13;
    v24 = v13;
LABEL_9:
    sub_1B7340A08(v24, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return v23;
  }

  sub_1B7341168(v19, v2, type metadata accessor for RawBankConnectData.LiabilityAccount);
  sub_1B7340F20(&v2[*(v0 + 40)], v5, type metadata accessor for RawBankConnectData.AccountBalances);
  sub_1B7340A08(v2, type metadata accessor for RawBankConnectData.LiabilityAccount);
  sub_1B7205588(&v5[*(v27 + 20)], v11, &qword_1EB990778);
  sub_1B7340A08(v5, type metadata accessor for RawBankConnectData.AccountBalances);
  v20 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  if ((*(*(v20 - 8) + 48))(v11, 1, v20) != 1)
  {
    v23 = *v11;
    v24 = v11;
    goto LABEL_9;
  }

  v21 = v11;
LABEL_6:
  sub_1B7205418(v21, &qword_1EB990778);
  return 0;
}

uint64_t RawBankConnectData.Account.bookedBalanceAsOf.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  v4 = MEMORY[0x1EEE9AC00](v37);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - v13;
  v15 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v36[1], v20, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v20, v3, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7340F20(&v3[*(v1 + 40)], v6, type metadata accessor for RawBankConnectData.AccountBalances);
    sub_1B7340A08(v3, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7205588(&v6[*(v37 + 20)], v12, &qword_1EB990778);
    sub_1B7340A08(v6, type metadata accessor for RawBankConnectData.AccountBalances);
    v21 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) == 1)
    {
      v22 = v12;
LABEL_6:
      sub_1B7205418(v22, &qword_1EB990778);
      v24 = sub_1B77FF988();
      return (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
    }

    v26 = *(v21 + 20);
    v27 = sub_1B77FF988();
    v28 = *(v27 - 8);
    v29 = &v12[v26];
    v30 = v38;
    (*(v28 + 16))(v38, v29, v27);
    sub_1B7340A08(v12, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return (*(v28 + 56))(v30, 0, 1, v27);
  }

  else
  {
    sub_1B7341168(v20, v17, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7340F20(&v17[*(v15 + 40)], v8, type metadata accessor for RawBankConnectData.AccountBalances);
    sub_1B7340A08(v17, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B7205588(&v8[*(v37 + 20)], v14, &qword_1EB990778);
    sub_1B7340A08(v8, type metadata accessor for RawBankConnectData.AccountBalances);
    v23 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v23 - 8) + 48))(v14, 1, v23) == 1)
    {
      v22 = v14;
      goto LABEL_6;
    }

    v31 = *(v23 + 20);
    v32 = sub_1B77FF988();
    v33 = *(v32 - 8);
    v34 = &v14[v31];
    v35 = v38;
    (*(v33 + 16))(v38, v34, v32);
    sub_1B7340A08(v14, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return (*(v33 + 56))(v35, 0, 1, v32);
  }
}

uint64_t RawBankConnectData.Account.bookedBalanceCreditDebitIndicator.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v2, v18, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v18, v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v19 = *(v4 + 40);
    v20 = type metadata accessor for RawBankConnectData.AccountBalances(0);
    sub_1B7205588(&v6[v19 + *(v20 + 20)], v10, &qword_1EB990778);
    sub_1B7340A08(v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v21 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) != 1)
    {
      v28 = v10[*(v21 + 24)];
      result = sub_1B7340A08(v10, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      v27 = (v28 & 1) == 0;
      goto LABEL_9;
    }

    v22 = v10;
  }

  else
  {
    sub_1B7341168(v18, v15, type metadata accessor for RawBankConnectData.AssetAccount);
    v23 = *(v13 + 40);
    v24 = type metadata accessor for RawBankConnectData.AccountBalances(0);
    sub_1B7205588(&v15[v23 + *(v24 + 20)], v12, &qword_1EB990778);
    sub_1B7340A08(v15, type metadata accessor for RawBankConnectData.AssetAccount);
    v25 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
    if ((*(*(v25 - 8) + 48))(v12, 1, v25) != 1)
    {
      v29 = v12[*(v25 + 24)];
      result = sub_1B7340A08(v12, type metadata accessor for RawBankConnectData.InternalAccountBalance);
      v27 = (v29 & 1) == 0;
      goto LABEL_9;
    }

    v22 = v12;
  }

  result = sub_1B7205418(v22, &qword_1EB990778);
  v27 = 2;
LABEL_9:
  *a1 = v27;
  return result;
}

uint64_t RawBankConnectData.Account.currency.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v10, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v10, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v11 = sub_1B734074C();
    v12 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v13 = v4;
  }

  else
  {
    sub_1B7341168(v10, v7, type metadata accessor for RawBankConnectData.AssetAccount);
    v11 = sub_1B734074C();
    v12 = type metadata accessor for RawBankConnectData.AssetAccount;
    v13 = v7;
  }

  sub_1B7340A08(v13, v12);
  return v11;
}

uint64_t RawBankConnectData.Account.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v10, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v10, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v11 = *v4;

    v12 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v13 = v4;
  }

  else
  {
    sub_1B7341168(v10, v7, type metadata accessor for RawBankConnectData.AssetAccount);
    v11 = *v7;

    v12 = type metadata accessor for RawBankConnectData.AssetAccount;
    v13 = v7;
  }

  sub_1B7340A08(v13, v12);
  return v11;
}

uint64_t RawBankConnectData.Account.accountType.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v5, type metadata accessor for RawBankConnectData.Account);
  *a1 = swift_getEnumCaseMultiPayload() == 1;
  return sub_1B7340A08(v5, type metadata accessor for RawBankConnectData.Account);
}

uint64_t RawBankConnectData.Account.accountName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v10, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v10, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v11 = *(v4 + 6);

    v12 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v13 = v4;
  }

  else
  {
    sub_1B7341168(v10, v7, type metadata accessor for RawBankConnectData.AssetAccount);
    v11 = *(v7 + 6);

    v12 = type metadata accessor for RawBankConnectData.AssetAccount;
    v13 = v7;
  }

  sub_1B7340A08(v13, v12);
  return v11;
}

uint64_t RawBankConnectData.Account.accountDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v10, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v10, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v11 = *(v4 + 9);

    v12 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v13 = v4;
  }

  else
  {
    sub_1B7341168(v10, v7, type metadata accessor for RawBankConnectData.AssetAccount);
    v11 = *(v7 + 9);

    v12 = type metadata accessor for RawBankConnectData.AssetAccount;
    v13 = v7;
  }

  sub_1B7340A08(v13, v12);
  return v11;
}

uint64_t RawBankConnectData.Account.nextPaymentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v2, v9, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v9, v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7205588(&v6[*(v4 + 52)], a1, &qword_1EB98EBD0);
    v10 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v11 = v6;
  }

  else
  {
    v12 = sub_1B77FF988();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    v10 = type metadata accessor for RawBankConnectData.Account;
    v11 = v9;
  }

  return sub_1B7340A08(v11, v10);
}

uint64_t RawBankConnectData.Account.creditLimit.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B7340F20(v1, v7, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v7, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v8 = &v4[*(v2 + 44)];
    v9 = v8[3];
    v14[2] = v8[2];
    v15 = v9;
    v16 = v8[4];
    v10 = v8[1];
    v14[0] = *v8;
    v14[1] = v10;
    sub_1B7205588(v14, v13, &qword_1EB990780);
    sub_1B7340A08(v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    if (*(&v15 + 1))
    {
      v11 = *&v14[0];
      sub_1B7205418(v14, &qword_1EB990780);
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B7340A08(v7, type metadata accessor for RawBankConnectData.Account);
    return 0;
  }
}

uint64_t RawBankConnectData.Account.minimumPaymentAmount.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B7340F20(v1, v7, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v7, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v8 = &v4[*(v2 + 48)];
    v9 = v8[4];
    v15 = v8[3];
    v16 = v9;
    v10 = v8[2];
    v14[1] = v8[1];
    v14[2] = v10;
    v14[0] = *v8;
    sub_1B7205588(v14, v13, &qword_1EB990780);
    sub_1B7340A08(v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    if (*(&v15 + 1))
    {
      v11 = *&v14[0];
      sub_1B7205418(v14, &qword_1EB990780);
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B7340A08(v7, type metadata accessor for RawBankConnectData.Account);
    return 0;
  }
}

uint64_t RawBankConnectData.Account.overduePaymentAmount.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B7340F20(v1, v7, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v7, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v8 = &v4[*(v2 + 56)];
    v9 = v8[4];
    v15 = v8[3];
    v16 = v9;
    v10 = v8[2];
    v14[1] = v8[1];
    v14[2] = v10;
    v14[0] = *v8;
    sub_1B7205588(v14, v13, &qword_1EB990780);
    sub_1B7340A08(v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    if (*(&v15 + 1))
    {
      v11 = *&v14[0];
      sub_1B7205418(v14, &qword_1EB990780);
      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B7340A08(v7, type metadata accessor for RawBankConnectData.Account);
    return 0;
  }
}

uint64_t RawBankConnectData.Account.fpanIds.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v10, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v10, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    if (*(v4 + 2))
    {
      v11 = *(v4 + 2);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v13 = v4;
  }

  else
  {
    sub_1B7341168(v10, v7, type metadata accessor for RawBankConnectData.AssetAccount);
    if (*(v7 + 2))
    {
      v11 = *(v7 + 2);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = type metadata accessor for RawBankConnectData.AssetAccount;
    v13 = v7;
  }

  sub_1B7340A08(v13, v12);
  return v11;
}

uint64_t RawBankConnectData.Account.maskedAccountNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v2, v12, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v12, v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v14 = *(v6 + 3);
    v13 = *(v6 + 4);
    v15 = v6[40];

    v16 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v17 = v6;
  }

  else
  {
    sub_1B7341168(v12, v9, type metadata accessor for RawBankConnectData.AssetAccount);
    v14 = *(v9 + 3);
    v13 = *(v9 + 4);
    v15 = v9[40];

    v16 = type metadata accessor for RawBankConnectData.AssetAccount;
    v17 = v9;
  }

  result = sub_1B7340A08(v17, v16);
  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  return result;
}

uint64_t RawBankConnectData.Account.accountStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v2, v12, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v12, v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v13 = v6[64];
    v14 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v15 = v6;
  }

  else
  {
    sub_1B7341168(v12, v9, type metadata accessor for RawBankConnectData.AssetAccount);
    v13 = v9[64];
    v14 = type metadata accessor for RawBankConnectData.AssetAccount;
    v15 = v9;
  }

  result = sub_1B7340A08(v15, v14);
  if (v13 == 3)
  {
    v17 = 4;
  }

  else
  {
    v17 = v13;
  }

  *a1 = v17;
  return result;
}

uint64_t sub_1B734074C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - v5;
  v7 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1B7205588(v0, v6, &qword_1EB990778);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) != 1)
  {
    sub_1B7341168(v6, v13, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    goto LABEL_5;
  }

  sub_1B7205418(v6, &qword_1EB990778);
  v15 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  sub_1B7205588(v0 + *(v15 + 20), v4, &qword_1EB990778);
  if (v14(v4, 1, v7) != 1)
  {
    sub_1B7341168(v4, v11, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    v13 = v11;
LABEL_5:
    v16 = *(v13 + 6);

    sub_1B7340A08(v13, type metadata accessor for RawBankConnectData.InternalAccountBalance);
    return v16;
  }

  sub_1B7205418(v4, &qword_1EB990778);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B7340A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RawBankConnectData.Account.actions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v2, v18, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v18, v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7205588(&v6[*(v4 + 60)], v10, &qword_1EB990770);
    v19 = type metadata accessor for RawBankConnectData.Actions();
    v20 = *(*(v19 - 8) + 48);
    if (v20(v10, 1, v19) == 1)
    {
      if (qword_1EB98E9C8 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v19, qword_1EBA45918);
      sub_1B7340F20(v21, a1, type metadata accessor for RawBankConnectData.Actions);
      sub_1B7340A08(v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
      result = v20(v10, 1, v19);
      if (result != 1)
      {
        v23 = v10;
        return sub_1B7205418(v23, &qword_1EB990770);
      }

      return result;
    }

    sub_1B7340A08(v6, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v27 = v10;
    return sub_1B7341168(v27, a1, type metadata accessor for RawBankConnectData.Actions);
  }

  sub_1B7341168(v18, v15, type metadata accessor for RawBankConnectData.AssetAccount);
  sub_1B7205588(&v15[*(v13 + 44)], v12, &qword_1EB990770);
  v24 = type metadata accessor for RawBankConnectData.Actions();
  v25 = *(*(v24 - 8) + 48);
  if (v25(v12, 1, v24) != 1)
  {
    sub_1B7340A08(v15, type metadata accessor for RawBankConnectData.AssetAccount);
    v27 = v12;
    return sub_1B7341168(v27, a1, type metadata accessor for RawBankConnectData.Actions);
  }

  if (qword_1EB98E9C8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v24, qword_1EBA45918);
  sub_1B7340F20(v26, a1, type metadata accessor for RawBankConnectData.Actions);
  sub_1B7340A08(v15, type metadata accessor for RawBankConnectData.AssetAccount);
  result = (v25)(v12, 1, v24);
  if (result != 1)
  {
    v23 = v12;
    return sub_1B7205418(v23, &qword_1EB990770);
  }

  return result;
}

uint64_t sub_1B7340F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RawBankConnectData.Account.isShareable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7340F20(v1, v10, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7341168(v10, v4, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v11 = v4[*(v2 + 64)];
    v12 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v13 = v4;
  }

  else
  {
    sub_1B7341168(v10, v7, type metadata accessor for RawBankConnectData.AssetAccount);
    v11 = v7[*(v5 + 48)];
    v12 = type metadata accessor for RawBankConnectData.AssetAccount;
    v13 = v7;
  }

  sub_1B7340A08(v13, v12);
  return v11;
}

uint64_t sub_1B7341168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id FinanceXPCListener<>.init(connectionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() serviceListener];
  sub_1B7341354(v7);
  v5 = sub_1B75D0ED0(v4, v7, a1, a2);

  return v5;
}

uint64_t static XPCServiceConfiguration.makeConnection()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClientToServiceXPCConnection();
  (*(a2 + 16))(a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1B7800838();
  v6 = [v4 initWithServiceName_];

  sub_1B7341354(v9);
  v7 = sub_1B741B97C(v6, v9);

  return v7;
}

uint64_t sub_1B7341354@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCEntitlementChecker();
  v3 = swift_allocObject();
  v4 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v4;
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for XPCEntitlementChecker;
  *a1 = v3;
  return result;
}

uint64_t Institution.BackgroundRefreshConfiguration.init(maximumNumberOfRefreshes:numberOfRemainingRefreshes:retryAfterDate:lastRefreshDate:confirmationWindow:confirmationExpiryWindow:)@<X0>(__int16 a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>)
{
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v14 = refreshed[6];
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 56);
  v16(&a9[v14], 1, 1, v15);
  v17 = refreshed[7];
  v16(&a9[v17], 1, 1, v15);
  v18 = &a9[refreshed[8]];
  v19 = &a9[refreshed[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B7213740(a3, &a9[v14], &qword_1EB98EBD0);
  result = sub_1B7213740(a4, &a9[v17], &qword_1EB98EBD0);
  *v18 = a5;
  v18[8] = a6 & 1;
  *v19 = a7;
  v19[8] = a8 & 1;
  return result;
}

FinanceKit::Institution::ConsentSyncingConfiguration __swiftcall Institution.ConsentSyncingConfiguration.init(isEnabled:outdatedTokenWaitTimeout:)(Swift::Bool isEnabled, Swift::Double outdatedTokenWaitTimeout)
{
  *v2 = isEnabled;
  *(v2 + 8) = outdatedTokenWaitTimeout;
  result.outdatedTokenWaitTimeout = outdatedTokenWaitTimeout;
  result.isEnabled = isEnabled;
  return result;
}

uint64_t Institution.init(id:name:reconsentType:supportedAuthTypes:firstTransactionsRequestWindow:maxAgeTransactionsFirstRequest:maxAgeTransactionsRefreshRequest:extensionsBundleIdentifiers:backgroundRefreshConfiguration:multipleConsentsEnabled:problemReportingEnabled:termsAndConditions:financialLabEnabled:timestampSuitableForUserDisplay:piiRedactionConfiguration:privacyLabels:consentSyncingConfiguration:balanceWidgetEnabled:personalizedInsightsEnabled:supportsTransactions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int16 *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17, char a18, uint64_t *a19, __int16 *a20, char *a21, char a22, char a23, char a24)
{
  v30 = *a6;
  v42 = *a19;
  v43 = *a20;
  v44 = *a21;
  v31 = *(a21 + 1);
  v32 = type metadata accessor for Institution(0);
  v33 = v32[15];
  v34 = type metadata accessor for BankConnectTermsAndConditions();
  (*(*(v34 - 8) + 56))(a9 + v33, 1, 1, v34);
  v35 = v32[18];
  *(a9 + v35) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 34) = v30;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  sub_1B7346D14(a13, a9 + v32[12], type metadata accessor for Institution.BackgroundRefreshConfiguration);
  *(a9 + v32[13]) = a14;
  *(a9 + v32[14]) = a15;
  sub_1B7213740(a16, a9 + v33, &qword_1EB98FC40);
  *(a9 + v32[16]) = a17;
  *(a9 + v32[17]) = a18;

  *(a9 + v35) = v42;
  *(a9 + v32[19]) = v43;
  v37 = a9 + v32[20];
  *v37 = v44;
  *(v37 + 8) = v31;
  *(a9 + v32[21]) = a22;
  *(a9 + v32[22]) = a23;
  *(a9 + v32[23]) = a24;
  return result;
}

uint64_t Institution.BackgroundRefreshConfiguration.confirmationWindow.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Institution.BackgroundRefreshConfiguration.confirmationExpiryWindow.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

unint64_t sub_1B7341AC8()
{
  v1 = *v0;
  v2 = 0x7466417972746572;
  v3 = 0x726665527473616CLL;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7341BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7347CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7341BD4(uint64_t a1)
{
  v2 = sub_1B7346A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7341C10(uint64_t a1)
{
  v2 = sub_1B7346A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Institution.BackgroundRefreshConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992520);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7346A10();
  sub_1B78023F8();
  v14 = 0;
  sub_1B7801FD8();
  if (!v1)
  {
    v13 = 1;
    sub_1B7801FD8();
    type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
    v12 = 2;
    sub_1B77FF988();
    sub_1B71A6FE0(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    v11 = 3;
    sub_1B7801F38();
    v10 = 4;
    sub_1B7801F18();
    v9 = 5;
    sub_1B7801F18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Institution.BackgroundRefreshConfiguration.hash(into:)()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  sub_1B7802328();
  sub_1B7802328();
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  sub_1B7205588(v0 + *(refreshed + 24), v10, &qword_1EB98EBD0);
  v11 = *(v2 + 48);
  if (v11(v10, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v10, v1);
    sub_1B7802318();
    sub_1B71A6FE0(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  v12 = refreshed;
  sub_1B7205588(v0 + *(refreshed + 28), v8, &qword_1EB98EBD0);
  if (v11(v8, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_1B7802318();
    sub_1B71A6FE0(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  v13 = (v0 + *(v12 + 32));
  if (*(v13 + 8) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v14 = *v13;
    sub_1B7802318();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1B8CA6660](v15);
  }

  v16 = (v0 + *(v12 + 36));
  if (*(v16 + 8) == 1)
  {
    return sub_1B7802318();
  }

  v18 = *v16;
  sub_1B7802318();
  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return MEMORY[0x1B8CA6660](v19);
}

uint64_t Institution.BackgroundRefreshConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992530);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v34 - v8;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  v11 = MEMORY[0x1EEE9AC00](refreshed);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v16(&v13[v14], 1, 1, v15);
  v40 = refreshed[7];
  v43 = v13;
  v16(&v13[v40], 1, 1, v15);
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B7346A10();
  v38 = v9;
  v18 = v39;
  sub_1B78023C8();
  if (v18)
  {
    v23 = v40;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v24 = v43;
    sub_1B7205418(v43 + v42, &qword_1EB98EBD0);
    return sub_1B7205418(v24 + v23, &qword_1EB98EBD0);
  }

  else
  {
    v19 = v35;
    v20 = v36;
    v49 = 0;
    v21 = sub_1B7801E58();
    v22 = v43;
    *v43 = v21;
    v48 = 1;
    v22[1] = sub_1B7801E58();
    v47 = 2;
    sub_1B71A6FE0(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    sub_1B7801DB8();
    sub_1B7213740(v7, v43 + v42, &qword_1EB98EBD0);
    v46 = 3;
    sub_1B7801DB8();
    v25 = v43;
    sub_1B7213740(v20, v43 + v40, &qword_1EB98EBD0);
    v45 = 4;
    v26 = sub_1B7801D98();
    v27 = v19;
    v28 = v25 + refreshed[8];
    *v28 = v26;
    *(v28 + 8) = v29 & 1;
    v44 = 5;
    v30 = sub_1B7801D98();
    LOBYTE(v19) = v31;
    v32 = v25 + refreshed[9];
    (*(v27 + 8))(v38, v37);
    *v32 = v30;
    *(v32 + 8) = v19 & 1;
    sub_1B7346F80(v25, v34, type metadata accessor for Institution.BackgroundRefreshConfiguration);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_1B7346D7C(v25, type metadata accessor for Institution.BackgroundRefreshConfiguration);
  }
}

uint64_t sub_1B7342818()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_1B734285C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B787A480 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7342948(uint64_t a1)
{
  v2 = sub_1B7346A64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7342984(uint64_t a1)
{
  v2 = sub_1B7346A64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Institution.ConsentSyncingConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992538);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7346A64();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F88();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7801F98();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Institution.ConsentSyncingConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_1B7802318();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1B8CA6660](*&v2);
}

uint64_t Institution.ConsentSyncingConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1B8CA6660](*&v2);
  return sub_1B7802368();
}

uint64_t Institution.ConsentSyncingConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992548);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7346A64();
  sub_1B78023C8();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_1B7801E08();
    v13[14] = 1;
    sub_1B7801E18();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7342E20()
{
  v1 = *(v0 + 8);
  sub_1B7802318();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1B8CA6660](*&v2);
}

uint64_t sub_1B7342E6C()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1B8CA6660](*&v2);
  return sub_1B7802368();
}

uint64_t Institution.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Institution.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Institution.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Institution.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Institution.firstTransactionsRequestWindow.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t Institution.extensionsBundleIdentifiers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}