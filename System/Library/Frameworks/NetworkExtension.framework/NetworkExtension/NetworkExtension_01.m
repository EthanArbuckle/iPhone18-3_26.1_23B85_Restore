uint64_t sub_1BA854C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BA854C74()
{
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;
}

uint64_t NEAppExtensionConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1BA854CD0(void *a1)
{
  v2 = *v1;
  sub_1BA8549FC(a1);
  return 1;
}

uint64_t *sub_1BA854D58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[8] = 0;
  a2[9] = 0;
  a2[7] = 0;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BA854EAC()
{
  v181 = v0;
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  *(v0 + 192) = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
LABEL_50:
    v116 = *(v0 + 8);

    return v116(v3);
  }

  if (qword_1EBC0E910 != -1)
  {
LABEL_66:
    swift_once();
    v1 = *(v0 + 184);
  }

  v5 = sub_1BAA398CC();
  *(v0 + 200) = __swift_project_value_buffer(v5, qword_1EBC11B98);
  v6 = v1;
  v7 = sub_1BAA398AC();
  v8 = sub_1BAA39F9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = 0x3E612F6E3CLL;
    v10 = *(v0 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v180[0] = v12;
    *v11 = 136315394;
    v13 = [v10 extensionPointName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BAA39D9C();
      v17 = v16;
    }

    else
    {
      v17 = 0xE500000000000000;
      v15 = 0x3E612F6E3CLL;
    }

    v18 = *(v0 + 184);
    v19 = sub_1BA85AE0C(v15, v17, v180);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v20 = [v18 extensionBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v9 = sub_1BAA39D9C();
      v23 = v22;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_1BA85AE0C(v9, v23, v180);

    *(v11 + 14) = v24;
    _os_log_impl(&dword_1BA83C000, v7, v8, "NEExtensionBaseProviderHost - querying extension %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFC150](v12, -1, -1);
    MEMORY[0x1BFAFC150](v11, -1, -1);
  }

  v25 = [*(v0 + 184) extensionPointName];
  if (!v25 || (v26 = *(v0 + 184), v25, (v27 = [v26 extensionBundleIdentifier]) == 0))
  {
LABEL_49:
    v3 = 0;
    goto LABEL_50;
  }

  v28 = *(v0 + 184);

  v29 = sub_1BAA397FC();
  *(v0 + 208) = v29;
  v30 = *(v29 - 8);
  v31 = v30;
  *(v0 + 216) = v30;
  v32 = *(v30 + 64) + 15;
  v33 = swift_task_alloc();
  *(v0 + 224) = v33;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECA0, &qword_1BAA4D098) - 8) + 64) + 15;
  v35 = swift_task_alloc();
  v36 = [v28 &_OBJC_LABEL_PROTOCOL___NEPrettyDescription + 7];
  if (v36)
  {
    v37 = v36;
    sub_1BAA39D9C();
  }

  dyld_get_active_platform();
  sub_1BAA3977C();
  v38 = *(v0 + 184);
  (*(v31 + 56))(v35, 0, 1, v29);
  v177 = *(v31 + 32);
  v177(v33, v35, v29);

  *(v0 + 232) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECA8, &qword_1BAA4D0A0) - 8) + 64);
  v39 = swift_task_alloc();
  *(v0 + 240) = v39;
  v40 = sub_1BAA3989C();
  *(v0 + 248) = v40;
  v41 = *(v40 - 8);
  *(v0 + 256) = v41;
  v42 = *(v41 + 56);
  *(v0 + 264) = v42;
  *(v0 + 272) = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v42(v39, 1, 1, v40);
  v43 = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  *(v0 + 280) = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  if (*(v38 + v43))
  {
    v44 = sub_1BAA398AC();
    v45 = sub_1BAA39F9C();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_20;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "NEExtensionBaseProviderHost - appExtensionMonitor already exists";
    goto LABEL_19;
  }

  v61 = swift_task_alloc();
  (*(v31 + 16))(v61, v33, v29);
  v62 = _s21NEAppExtensionMonitorCMa(0);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  v66 = sub_1BAA397EC();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  *(v65 + 16) = sub_1BAA397DC();

  sub_1BAA397CC();

  v177(v65 + OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionMonitor_appExtensionPoint, v61, v29);

  v69 = *(v38 + v43);
  *(v38 + v43) = v65;

  v70 = *(v38 + v43);
  *(v0 + 288) = v70;
  if (v70)
  {

    v71 = swift_task_alloc();
    *(v0 + 296) = v71;
    *v71 = v0;
    v71[1] = sub_1BA856014;

    return sub_1BA85824C();
  }

  v117 = *(v0 + 200);
  v44 = sub_1BAA398AC();
  v45 = sub_1BAA39F9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "NEExtensionBaseProviderHost - created new appExtensionMonitor";
LABEL_19:
    _os_log_impl(&dword_1BA83C000, v44, v45, v47, v46, 2u);
    MEMORY[0x1BFAFC150](v46, -1, -1);
  }

LABEL_20:
  v48 = *(v0 + 200);
  v49 = *(v0 + 184);

  v50 = v49;
  v51 = sub_1BAA398AC();
  v52 = sub_1BAA39F9C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v0 + 184);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v180[0] = v55;
    *v54 = 136315138;
    v56 = [v53 extensionPointName];
    if (v56)
    {
      v57 = v56;
      v58 = sub_1BAA39D9C();
      v60 = v59;
    }

    else
    {
      v58 = 0;
      v60 = 0xE000000000000000;
    }

    v73 = sub_1BA85AE0C(v58, v60, v180);

    *(v54 + 4) = v73;
    _os_log_impl(&dword_1BA83C000, v51, v52, "NEExtensionBaseProviderHost - added extension point %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1BFAFC150](v55, -1, -1);
    MEMORY[0x1BFAFC150](v54, -1, -1);
  }

  v74 = *(*(v0 + 184) + *(v0 + 280));
  if (v74)
  {
    v75 = *(v74 + 16);
    v76 = sub_1BAA397BC();
    v77 = *(v76 - 8);
    v78 = *(v77 + 64) + 15;
    v79 = swift_task_alloc();

    sub_1BAA397CC();
    v80 = sub_1BAA397AC();

    (*(v77 + 8))(v79, v76);
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC0];
  }

  v81 = *(v0 + 200);

  v82 = sub_1BAA398AC();
  v83 = sub_1BAA39F9C();

  v172 = v80;
  if (os_log_type_enabled(v82, v83))
  {
    v84 = *(v0 + 248);
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v180[0] = v86;
    *v85 = 136315138;
    v87 = MEMORY[0x1BFAF8B50](v80, v84);
    v89 = sub_1BA85AE0C(v87, v88, v180);

    *(v85 + 4) = v89;
    v80 = v172;
    _os_log_impl(&dword_1BA83C000, v82, v83, "NEExtensionBaseProviderHost - identities %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1BFAFC150](v86, -1, -1);
    MEMORY[0x1BFAFC150](v85, -1, -1);
  }

  v178 = *(v80 + 16);
  if (!v178)
  {
LABEL_46:
    v108 = *(v0 + 200);

    v109 = sub_1BAA398AC();
    v110 = sub_1BAA39F9C();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_1BA83C000, v109, v110, "NEExtensionBaseProviderHost - no matching extension found", v111, 2u);
      MEMORY[0x1BFAFC150](v111, -1, -1);
    }

    v112 = *(v0 + 240);
    v114 = *(v0 + 216);
    v113 = *(v0 + 224);
    v115 = *(v0 + 208);

    (*(v114 + 8))(v113, v115);
    sub_1BA84BC58(v112, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

    goto LABEL_49;
  }

  v90 = 0;
  v91 = *(v0 + 256);
  v175 = v80 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v92 = (v91 + 8);
  v171 = (v91 + 8);
  while (1)
  {
    if (v90 >= *(v80 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    v93 = *(v0 + 248);
    v94 = *(v0 + 184);
    v95 = *(v91 + 64);
    v96 = v175 + *(v91 + 72) * v90;
    v97 = swift_task_alloc();
    (*(v91 + 16))(v97, v96, v93);
    v98 = sub_1BAA3987C();
    v100 = v99;
    v101 = [v94 extensionBundleIdentifier];
    if (!v101)
    {

      goto LABEL_37;
    }

    v102 = v101;
    v103 = sub_1BAA39D9C();
    v105 = v104;

    if (v98 == v103 && v100 == v105)
    {
      break;
    }

    v107 = sub_1BAA3A15C();

    v92 = (v91 + 8);
    v80 = v172;
    if (v107)
    {
      goto LABEL_56;
    }

LABEL_37:
    ++v90;
    (*v92)(v97, *(v0 + 248));

    if (v178 == v90)
    {
      goto LABEL_46;
    }
  }

LABEL_56:

  v119 = *(v0 + 264);
  v118 = *(v0 + 272);
  v120 = *(v0 + 248);
  v121 = *(v0 + 256);
  v122 = *(v0 + 240);
  v123 = *(v0 + 200);
  sub_1BA84BC58(v122, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  (*(v121 + 32))(v122, v97, v120);
  v119(v122, 0, 1, v120);

  v124 = sub_1BAA398AC();
  v125 = sub_1BAA39F9C();
  if (!os_log_type_enabled(v124, v125))
  {
LABEL_61:

    v155 = *(v0 + 248);
    v156 = *(v0 + 256);
    v157 = *(v0 + 240);
    v158 = *(v0 + 232) + 15;
    v159 = sub_1BAA3982C();
    *(v0 + 312) = v159;
    v160 = *(v159 - 8);
    v161 = v160;
    *(v0 + 320) = v160;
    v162 = *(v160 + 64) + 15;
    *(v0 + 328) = swift_task_alloc();
    swift_beginAccess();
    v163 = swift_task_alloc();
    sub_1BA84985C(v157, v163, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
    v132 = (*(v156 + 48))(v163, 1, v155);
    if (v132 != 1)
    {
      sub_1BAA3981C();

      v164 = sub_1BAA3985C();
      *(v0 + 336) = v164;
      v165 = *(v164 - 8);
      *(v0 + 344) = v165;
      *(v0 + 352) = *(v165 + 64);
      v166 = swift_task_alloc();
      *(v0 + 360) = v166;
      v167 = swift_task_alloc();
      *(v0 + 368) = v167;
      (*(v161 + 16))();
      v168 = *(MEMORY[0x1E6966BC8] + 4);
      v169 = swift_task_alloc();
      *(v0 + 376) = v169;
      *v169 = v0;
      v169[1] = sub_1BA856C98;
      v132 = v166;
      v133 = v167;

      return MEMORY[0x1EEDC0880](v132, v133);
    }

    __break(1u);
    goto LABEL_68;
  }

  v173 = v125;
  log = v124;
  v127 = *(v0 + 248);
  v126 = *(v0 + 256);
  v128 = *(v0 + 240);
  v129 = *(v0 + 232) + 15;
  v130 = swift_slowAlloc();
  v170 = swift_slowAlloc();
  v180[0] = v170;
  *v130 = 136315650;
  swift_beginAccess();
  v131 = swift_task_alloc();
  sub_1BA84985C(v128, v131, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v179 = *(v126 + 48);
  v132 = v179(v131, 1, v127);
  if (v132 == 1)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v135 = *(v0 + 240);
  v134 = *(v0 + 248);
  v136 = *(v0 + 232) + 15;
  v137 = sub_1BAA3988C();
  v139 = v138;
  v176 = *v171;
  (*v171)(v131, v134);

  v140 = sub_1BA85AE0C(v137, v139, v180);

  *(v130 + 4) = v140;
  *(v130 + 12) = 2080;
  v141 = swift_task_alloc();
  sub_1BA84985C(v135, v141, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v132 = v179(v141, 1, v134);
  if (v132 == 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v143 = *(v0 + 240);
  v142 = *(v0 + 248);
  v144 = *(v0 + 232) + 15;
  v145 = sub_1BAA3987C();
  v147 = v146;
  v176(v141, v142);

  v148 = sub_1BA85AE0C(v145, v147, v180);

  *(v130 + 14) = v148;
  *(v130 + 22) = 2080;
  v149 = swift_task_alloc();
  sub_1BA84985C(v143, v149, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v132 = v179(v149, 1, v142);
  if (v132 != 1)
  {
    v150 = *(v0 + 248);
    v151 = sub_1BAA3986C();
    v153 = v152;
    v176(v149, v150);

    v154 = sub_1BA85AE0C(v151, v153, v180);

    *(v130 + 24) = v154;
    v124 = log;
    _os_log_impl(&dword_1BA83C000, log, v173, "NEExtensionBaseProviderHost - found extension - <%s> <%s> <%s>", v130, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFC150](v170, -1, -1);
    MEMORY[0x1BFAFC150](v130, -1, -1);
    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return MEMORY[0x1EEDC0880](v132, v133);
}

uint64_t sub_1BA856014()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_1BA857574;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_1BA856130;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BA856130()
{
  v127 = v0;
  v1 = v0;
  v2 = v0[25];
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEExtensionBaseProviderHost - created new appExtensionMonitor", v5, 2u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  v6 = v0[25];
  v7 = v0[23];

  v8 = v7;
  v9 = sub_1BAA398AC();
  v10 = sub_1BAA39F9C();

  v120 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[23];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v126 = v13;
    *v12 = 136315138;
    v14 = [v11 extensionPointName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1BAA39D9C();
      v18 = v17;

      v1 = v0;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = sub_1BA85AE0C(v16, v18, &v126);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1BA83C000, v9, v10, "NEExtensionBaseProviderHost - added extension point %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFAFC150](v13, -1, -1);
    MEMORY[0x1BFAFC150](v12, -1, -1);
  }

  v20 = *(v1[23] + v1[35]);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = sub_1BAA397BC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 64) + 15;
    v25 = swift_task_alloc();

    sub_1BAA397CC();
    v26 = sub_1BAA397AC();

    (*(v23 + 8))(v25, v22);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v27 = v1[25];

  v28 = sub_1BAA398AC();
  v29 = sub_1BAA39F9C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v1[31];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v126 = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x1BFAF8B50](v26, v30);
    v35 = sub_1BA85AE0C(v33, v34, &v126);

    *(v31 + 4) = v35;
    v1 = v120;
    _os_log_impl(&dword_1BA83C000, v28, v29, "NEExtensionBaseProviderHost - identities %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1BFAFC150](v32, -1, -1);
    MEMORY[0x1BFAFC150](v31, -1, -1);
  }

  v124 = *(v26 + 16);
  if (!v124)
  {
LABEL_25:
    v56 = v1[25];

    v57 = sub_1BAA398AC();
    v58 = sub_1BAA39F9C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1BA83C000, v57, v58, "NEExtensionBaseProviderHost - no matching extension found", v59, 2u);
      MEMORY[0x1BFAFC150](v59, -1, -1);
    }

    v60 = v1[30];
    v62 = v1[27];
    v61 = v1[28];
    v63 = v1[26];

    (*(v62 + 8))(v61, v63);
    sub_1BA84BC58(v60, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

    v64 = v1[1];

    return v64(0);
  }

  v38 = 0;
  v39 = v1[32];
  v122 = v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v40 = (v39 + 8);
  v119 = (v39 + 8);
  while (1)
  {
    if (v38 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v41 = v1[31];
    v42 = v1[23];
    v43 = *(v39 + 64);
    v44 = v122 + *(v39 + 72) * v38;
    v45 = swift_task_alloc();
    (*(v39 + 16))(v45, v44, v41);
    v46 = sub_1BAA3987C();
    v48 = v47;
    v49 = [v42 extensionBundleIdentifier];
    if (!v49)
    {

      goto LABEL_16;
    }

    v50 = v49;
    v51 = sub_1BAA39D9C();
    v53 = v52;

    if (v46 == v51 && v48 == v53)
    {
      break;
    }

    v55 = sub_1BAA3A15C();

    v40 = (v39 + 8);
    v1 = v120;
    if (v55)
    {
      goto LABEL_31;
    }

LABEL_16:
    ++v38;
    (*v40)(v45, v1[31]);

    if (v124 == v38)
    {
      goto LABEL_25;
    }
  }

  v1 = v120;
LABEL_31:

  v66 = v1[33];
  v67 = v1[34];
  v68 = v1[31];
  v69 = v1[32];
  v70 = v1[30];
  v71 = v1[25];
  sub_1BA84BC58(v70, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  (*(v69 + 32))(v70, v45, v68);
  v66(v70, 0, 1, v68);

  v72 = sub_1BAA398AC();
  v73 = sub_1BAA39F9C();
  if (os_log_type_enabled(v72, v73))
  {
    log = v72;
    v75 = v1[31];
    v74 = v1[32];
    v76 = v1;
    v77 = v1[30];
    v78 = v76[29] + 15;
    v79 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v126 = v118;
    *v79 = 136315650;
    swift_beginAccess();
    v80 = swift_task_alloc();
    sub_1BA84985C(v77, v80, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
    v125 = *(v74 + 48);
    v36 = v125(v80, 1, v75);
    if (v36 != 1)
    {
      v82 = v76[30];
      v81 = v76[31];
      v83 = v76[29] + 15;
      v84 = sub_1BAA3988C();
      v86 = v85;
      v123 = *v119;
      (*v119)(v80, v81);

      v87 = sub_1BA85AE0C(v84, v86, &v126);

      *(v79 + 4) = v87;
      *(v79 + 12) = 2080;
      v88 = swift_task_alloc();
      sub_1BA84985C(v82, v88, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
      v36 = v125(v88, 1, v81);
      if (v36 != 1)
      {
        v90 = v76[30];
        v89 = v76[31];
        v91 = v76[29] + 15;
        v92 = sub_1BAA3987C();
        v94 = v93;
        v123(v88, v89);

        v95 = sub_1BA85AE0C(v92, v94, &v126);

        *(v79 + 14) = v95;
        *(v79 + 22) = 2080;
        v96 = swift_task_alloc();
        sub_1BA84985C(v90, v96, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
        v36 = v125(v96, 1, v89);
        if (v36 != 1)
        {
          v97 = v76[31];
          v98 = sub_1BAA3986C();
          v100 = v99;
          v123(v96, v97);

          v101 = sub_1BA85AE0C(v98, v100, &v126);

          *(v79 + 24) = v101;
          _os_log_impl(&dword_1BA83C000, log, v73, "NEExtensionBaseProviderHost - found extension - <%s> <%s> <%s>", v79, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1BFAFC150](v118, -1, -1);
          MEMORY[0x1BFAFC150](v79, -1, -1);

          v1 = v76;
          goto LABEL_37;
        }

LABEL_45:
        __break(1u);
        return MEMORY[0x1EEDC0880](v36, v37);
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_37:
  v102 = v1;
  v103 = v1[32];
  v105 = v102[30];
  v104 = v102[31];
  v106 = v102[29] + 15;
  v107 = sub_1BAA3982C();
  v102[39] = v107;
  v108 = *(v107 - 8);
  v109 = v108;
  v102[40] = v108;
  v110 = *(v108 + 64) + 15;
  v102[41] = swift_task_alloc();
  swift_beginAccess();
  v111 = swift_task_alloc();
  sub_1BA84985C(v105, v111, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v36 = (*(v103 + 48))(v111, 1, v104);
  if (v36 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_1BAA3981C();

  v112 = sub_1BAA3985C();
  v102[42] = v112;
  v113 = *(v112 - 8);
  v102[43] = v113;
  v102[44] = *(v113 + 64);
  v114 = swift_task_alloc();
  v102[45] = v114;
  v115 = swift_task_alloc();
  v102[46] = v115;
  (*(v109 + 16))();
  v116 = *(MEMORY[0x1E6966BC8] + 4);
  v117 = swift_task_alloc();
  v102[47] = v117;
  *v117 = v102;
  v117[1] = sub_1BA856C98;
  v36 = v114;
  v37 = v115;

  return MEMORY[0x1EEDC0880](v36, v37);
}

uint64_t sub_1BA856C98()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_1BA857728;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_1BA856DB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1BA856DB4()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = sub_1BAA3984C();
  if (v1)
  {
    (*(v0[43] + 8))(v0[45], v0[42]);
    v4 = v0[45];
    v5 = v0[25];

    v6 = v1;
    v7 = sub_1BAA398AC();
    v8 = sub_1BAA39F9C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BA83C000, v7, v8, "failed to create xpc connection with the extension, error:%@", v9, 0xCu);
      sub_1BA84BC58(v10, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v10, -1, -1);
      MEMORY[0x1BFAFC150](v9, -1, -1);
    }

    v14 = v0[40];
    v13 = v0[41];
    v15 = v0[39];
    v16 = v0[30];
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[26];

    (*(v14 + 8))(v13, v15);
    (*(v18 + 8))(v17, v19);
    goto LABEL_5;
  }

  v21 = v0[45];
  v22 = v0[42];
  v23 = v0[43];
  v24 = v0[23];
  v101 = v0[24];
  v25 = *(v24 + v101);
  *(v24 + v101) = v3;

  v26 = swift_task_alloc();
  v100 = *(v23 + 32);
  v27 = v26;
  v100(v26, v21, v22);
  v28 = _s21NEAppExtensionProcessCMa(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess;
  v33 = *(v23 + 56);
  v33(v31 + OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess, 1, 1, v22);
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECB8, &qword_1BAA4D0B8) - 8) + 64) + 15;
  v35 = swift_task_alloc();
  v100(v35, v27, v22);
  v33(v35, 0, 1, v22);
  swift_beginAccess();
  sub_1BA85B3B4(v35, v31 + v32);
  swift_endAccess();

  v36 = *(v24 + OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess);
  *(v24 + OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess) = v31;

  v37 = *(v24 + v101);
  if (v37)
  {
    v38 = v0[23];
    v39 = v37;
    result = [v38 extensionXPCProtocol];
    if (result)
    {
      v41 = result;
      v42 = v0[23];
      v43 = objc_opt_self();
      v44 = [v43 interfaceWithProtocol_];

      [v39 setRemoteObjectInterface_];
      v45 = [v42 extensionQueue];
      if (v45)
      {
        v47 = v0[23];
        v46 = v0[24];

        v48 = *(v47 + v46);
        if (!v48)
        {
          goto LABEL_20;
        }

        v49 = v0[23];
        v50 = v48;
        result = [v49 extensionQueue];
        if (!result)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v51 = result;
        [v50 _setQueue_];
      }

      v52 = v0[23];
      v53 = *&v52[v0[24]];
      if (!v53)
      {
        goto LABEL_20;
      }

      v54 = v53;
      result = [v52 extensionExportedObject];
      if (result)
      {
        v55 = result;
        v57 = v0[23];
        v56 = v0[24];
        [v54 setExportedObject_];

        v58 = *(v57 + v56);
        if (v58)
        {
          v59 = v0[23];
          v60 = v58;
          result = [v59 extensionHostXPCProtocol];
          if (result)
          {
            v61 = result;
            v63 = v0[23];
            v62 = v0[24];
            v64 = [v43 interfaceWithProtocol_];

            [v60 setExportedInterface_];
            v65 = *(v63 + v62);
            if (v65)
            {
              v67 = v0[23];
              v66 = v0[24];
              v68 = swift_allocObject();
              *(v68 + 16) = v67;
              v0[6] = sub_1BA85B424;
              v0[7] = v68;
              v0[2] = MEMORY[0x1E69E9820];
              v0[3] = 1107296256;
              v0[4] = sub_1BA854C18;
              v0[5] = &block_descriptor_4;
              v69 = _Block_copy(v0 + 2);
              v70 = v0[7];
              v71 = v67;
              v72 = v65;

              [v72 setInvalidationHandler_];
              _Block_release(v69);

              v73 = *&v67[v66];
              if (v73)
              {
                v75 = v0[23];
                v74 = v0[24];
                v76 = swift_allocObject();
                *(v76 + 16) = v75;
                v0[12] = sub_1BA85B47C;
                v0[13] = v76;
                v0[8] = MEMORY[0x1E69E9820];
                v0[9] = 1107296256;
                v0[10] = sub_1BA854C18;
                v0[11] = &block_descriptor_25;
                v77 = _Block_copy(v0 + 8);
                v78 = v0[13];
                v79 = v75;
                v80 = v73;

                [v80 setInterruptionHandler_];
                _Block_release(v77);

                v81 = *&v75[v74];
                if (v81)
                {
                  [v81 resume];
                }
              }
            }

            goto LABEL_20;
          }

LABEL_30:
          __break(1u);
          return result;
        }

LABEL_20:
        v82 = v0[25];
        v83 = sub_1BAA398AC();
        v84 = sub_1BAA39F9C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_1BA83C000, v83, v84, "NEExtensionBaseProviderHost - getExtensionXPCConnection DONE", v85, 2u);
          MEMORY[0x1BFAFC150](v85, -1, -1);
        }

        v87 = v0[40];
        v86 = v0[41];
        v88 = v0[39];
        v16 = v0[30];
        v90 = v0[27];
        v89 = v0[28];
        v91 = v0[26];
        v92 = v83;
        v93 = v0[23];
        v94 = v0[24];

        (*(v87 + 8))(v86, v88);
        (*(v90 + 8))(v89, v91);
        v20 = *(v93 + v94);
        v95 = v20;
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v16 = v0[30];
  v98 = v0[27];
  v97 = v0[28];
  v99 = v0[26];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v98 + 8))(v97, v99);
LABEL_5:
  v20 = 0;
LABEL_23:
  sub_1BA84BC58(v16, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

  v96 = v0[1];

  return v96(v20);
}

uint64_t sub_1BA857574()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[25];

  v4 = v1;
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[38];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEExtensionBaseProviderHost - error querying extensions %@", v9, 0xCu);
    sub_1BA84BC58(v10, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v10, -1, -1);
    MEMORY[0x1BFAFC150](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[30];
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_1BA84BC58(v13, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_1BA857728()
{
  v1 = v0[46];

  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[25];

  v5 = v2;
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BA83C000, v6, v7, "failed to create xpc connection with the extension, error:%@", v8, 0xCu);
    sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v9, -1, -1);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  v15 = v0[30];
  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[26];

  (*(v13 + 8))(v12, v14);
  (*(v17 + 8))(v16, v18);
  sub_1BA84BC58(v15, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

  v19 = v0[1];

  return v19(0);
}

id sub_1BA85790C()
{
  v1 = v0;
  v2 = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  v3 = *(v0 + OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection);
  if (v3)
  {
    v4 = [v3 processIdentifier];
  }

  else
  {
    v4 = 0;
  }

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v5 = sub_1BAA398CC();
  __swift_project_value_buffer(v5, qword_1EBC11B98);
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_1BA83C000, v6, v7, "NEExtensionBaseProviderHost - invalidateExtensionProcess pid:%d", v8, 8u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  result = *(v1 + v2);
  if (result)
  {
    result = [result invalidate];
  }

  if (*(v1 + OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess))
  {
    v10 = *(v1 + OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess);

    sub_1BA857EF8();
  }

  return result;
}

id sub_1BA857AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1BAA39D8C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1BA857B70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1BAA39D9C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

id sub_1BA857D54()
{
  v1 = v0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionQueue] = 0;
  v2 = &v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionPointName];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionBundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionXPCProtocol] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionHostXPCProtocol] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionDelegate] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_extensionExportedObject] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor] = 0;
  *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection] = 0;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEExtensionBaseProviderHost - init", v7, 2u);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v9.receiver = v1;
  v9.super_class = NEExtensionBaseProviderHost;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1BA857EF8()
{
  v1 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess;
  swift_beginAccess();
  v2 = sub_1BAA3985C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v0 + v1, 1, v2);
  if (!v4)
  {
    v5 = *(v3 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v7, v0 + v1, v2);
    sub_1BAA3980C();
    (*(v3 + 8))(v7, v2);
  }

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v8 = sub_1BAA398CC();
  __swift_project_value_buffer(v8, qword_1EBC11B98);
  v9 = sub_1BAA398AC();
  v10 = sub_1BAA39F9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BA83C000, v9, v10, "NEAppExtensionProcess: invalidated app extension process", v11, 2u);
    MEMORY[0x1BFAFC150](v11, -1, -1);
  }
}

uint64_t sub_1BA8580C8()
{
  sub_1BA84BC58(v0 + OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionProcess_extensionProcess, &qword_1EBC0ECB8, &qword_1BAA4D0B8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BA858164()
{
  sub_1BA8581F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BA8581F4()
{
  if (!qword_1EBC0E7D0)
  {
    sub_1BAA3985C();
    v0 = sub_1BAA3A03C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC0E7D0);
    }
  }
}

uint64_t sub_1BA85826C()
{
  v1 = *(v0[2] + 16);
  v2 = sub_1BAA397FC();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[4] = v3;
  v5 = *(v3 + 64) + 15;
  v6 = swift_task_alloc();
  v0[5] = v6;
  (*(v4 + 16))();
  v7 = *(MEMORY[0x1E6966BB0] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1BA8583A4;

  return MEMORY[0x1EEDC07C8](v6);
}

uint64_t sub_1BA8583A4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 56) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_1BA85863C;
  }

  else
  {
    v8 = *(v2 + 40);

    v7 = sub_1BA858524;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BA858524()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEAppExtensionMonitor: added app extension point", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BA85863C()
{
  v1 = v0[5];

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_1BAA398CC();
  __swift_project_value_buffer(v3, qword_1EBC11B98);
  v4 = v2;
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BA83C000, v5, v6, "Error adding app extension point: %@", v9, 0xCu);
    sub_1BA84BC58(v10, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v10, -1, -1);
    MEMORY[0x1BFAFC150](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BA85880C()
{
  v1 = *(v0[2] + 16);
  v2 = sub_1BAA397FC();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[4] = v3;
  v5 = *(v3 + 64) + 15;
  v6 = swift_task_alloc();
  v0[5] = v6;
  (*(v4 + 16))();
  v7 = *(MEMORY[0x1E6966BC0] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1BA858944;

  return MEMORY[0x1EEDC07D8](v6);
}

uint64_t sub_1BA858944()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 56) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_1BA858BDC;
  }

  else
  {
    v8 = *(v2 + 40);

    v7 = sub_1BA858AC4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BA858AC4()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEAppExtensionMonitor: removed app extension point", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BA858BDC()
{
  v1 = v0[5];

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_1BAA398CC();
  __swift_project_value_buffer(v3, qword_1EBC11B98);
  v4 = v2;
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BA83C000, v5, v6, "Error removing app extension point: %@", v9, 0xCu);
    sub_1BA84BC58(v10, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v10, -1, -1);
    MEMORY[0x1BFAFC150](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BA858D8C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionMonitor_state;
  v3 = sub_1BAA397BC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionMonitor_appExtensionPoint;
  v5 = sub_1BAA397FC();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t sub_1BA858E98()
{
  result = sub_1BAA397BC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1BAA397FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BA858F74()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEExtensionBaseProviderHost - cancelWithError", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = [v0 extensionDelegate];
  if (v5)
  {
    v6 = v5;
    oslog = sub_1BAA395FC();
    [v6 cancelWithError_];
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_1BAA398AC();
    v7 = sub_1BAA39F9C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BA83C000, oslog, v7, "NEExtensionBaseProviderHost - cancelWithError failed - nil extensionDelegate", v8, 2u);
      MEMORY[0x1BFAFC150](v8, -1, -1);
    }
  }
}

void sub_1BA85912C(char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v11 = sub_1BAA398CC();
  __swift_project_value_buffer(v11, qword_1EBC11B98);
  v12 = sub_1BAA398AC();
  v13 = sub_1BAA39F9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BA83C000, v12, v13, a2, v14, 2u);
    MEMORY[0x1BFAFC150](v14, -1, -1);
  }

  if (*&a1[OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection])
  {
    v15 = [a1 extensionDelegate];
    if (v15)
    {
      [v15 handleXPCError];
      swift_unknownObjectRelease();
    }

    if (*&a1[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor])
    {
      v16 = sub_1BAA39EFC();
      (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = a1;
      v18 = a1;
      sub_1BA8598CC(0, 0, v10, a4, v17);
    }

    else
    {
      sub_1BA85934C();
    }
  }
}

void *sub_1BA85934C()
{
  v1 = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  result = *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection];
  if (result)
  {
    [result setExportedObject_];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    [v0 setExtensionDelegate_];
    [v0 setExtensionBundleIdentifier_];
    [v0 setExtensionPointName_];
    [v0 setExtensionHostXPCProtocol_];
    [v0 setExtensionExportedObject_];
    [v0 setExtensionQueue_];
    [v0 setExtensionExportedObject_];
    v4 = *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess];
    *&v0[OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionProcess] = 0;
  }

  return result;
}

uint64_t sub_1BA859468()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  v0[3] = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1BA85961C;

    return sub_1BA8587EC();
  }

  else
  {
    *(v1 + v2) = 0;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v6 = sub_1BAA398CC();
    __swift_project_value_buffer(v6, qword_1EBC11B98);
    v7 = sub_1BAA398AC();
    v8 = sub_1BAA39F9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BA83C000, v7, v8, "NEExtensionBaseProviderHost - cleanup appExtensionMonitor removed", v9, 2u);
      MEMORY[0x1BFAFC150](v9, -1, -1);
    }

    v10 = v0[2];

    sub_1BA85934C();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BA85961C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1BA859868;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1BA859738;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BA859738()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEExtensionBaseProviderHost - cleanup appExtensionMonitor removed", v7, 2u);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v8 = v0[2];

  sub_1BA85934C();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1BA859868()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1BA8598CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1BA84985C(a3, v24 - v10, &qword_1EBC0EAC0, &qword_1BAA4CD50);
  v12 = sub_1BAA39EFC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BA84BC58(v11, &qword_1EBC0EAC0, &qword_1BAA4CD50);
  }

  else
  {
    sub_1BAA39EEC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BAA39E8C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BAA39DDC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1BA84BC58(a3, &qword_1EBC0EAC0, &qword_1BAA4CD50);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BA84BC58(a3, &qword_1EBC0EAC0, &qword_1BAA4CD50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BA859B78()
{
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = 0;
  v3 = *(v0 + OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection);
  if (v3)
  {
    aBlock[4] = sub_1BA85BB28;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA871994;
    aBlock[3] = &block_descriptor_93;
    v4 = _Block_copy(aBlock);
    v5 = v3;

    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1BAA3A04C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECC8, &qword_1BAA4D168);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v7 = *(v2 + 16);

      return v10;
    }

    else
    {
      swift_beginAccess();
      v9 = *(v2 + 16);

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

id sub_1BA859D4C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_1BA859DE8()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEExtensionBaseProviderHost - SETUP", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA859F34;
  v6 = *(v0 + 16);

  return sub_1BA854E8C();
}

uint64_t sub_1BA859F34(void *a1)
{
  v3 = *(*v1 + 24);
  v5 = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1BA85A038, 0, 0);
}

uint64_t sub_1BA85A038()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1BA85A124;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 6, 0, 0, 0x29287075746573, 0xE700000000000000, sub_1BA85BAA4, v2, v5);
}

uint64_t sub_1BA85A124()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  v5 = *(v2 + 32);
  if (v0)
  {

    v6 = sub_1BA85A284;
  }

  else
  {

    v6 = sub_1BA85A26C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1BA85A29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  v7 = sub_1BA859B78();
  v9 = v8;
  if (v7)
  {
    v10 = v7;
    (*(v3 + 16))(v6, a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, v6, v2);
    aBlock[4] = sub_1BA85BAAC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8719FC;
    aBlock[3] = &block_descriptor_87;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v10 setupWithReply_];
    _Block_release(v13);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v14 = sub_1BAA398CC();
    __swift_project_value_buffer(v14, qword_1EBC11B98);
    v15 = sub_1BAA398AC();
    v16 = sub_1BAA39F9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BA83C000, v15, v16, "NEExtensionBaseProviderHost - setup - proxy not good", v17, 2u);
      MEMORY[0x1BFAFC150](v17, -1, -1);
    }

    v18 = v9;
    if (!v9)
    {
      sub_1BA84E364();
      v18 = swift_allocError();
      *v19 = 1;
    }

    aBlock[0] = v18;
    v20 = v9;
    sub_1BAA39E9C();
  }
}

uint64_t sub_1BA85A57C(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEExtensionBaseProviderHost - proxy.setup - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA85A81C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA84DE80;

  return sub_1BA859DC8();
}

unint64_t type metadata accessor for NEExtensionBaseProviderHost()
{
  result = qword_1EBC0EC90;
  if (!qword_1EBC0EC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EC90);
  }

  return result;
}

id sub_1BA85ADA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NEExtensionBaseProviderHostExportedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA85AE0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BA85AED8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BA85B4BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BA85AED8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BA85AFE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BAA3A09C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BA85AFE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA85B030(a1, a2);
  sub_1BA85B160(&unk_1F387C248);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BA85B030(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BA85B24C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BAA3A09C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BAA39E1C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BA85B24C(v10, 0);
        result = sub_1BAA3A06C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BA85B160(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1BA85B2C0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BA85B24C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECC0, &unk_1BAA4D0C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BA85B2C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECC0, &unk_1BAA4D0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BA85B3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECB8, &qword_1BAA4D0B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA85B4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BA85B518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E9A0;

  return sub_1BA859448(a1, v4, v5, v6);
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA85B60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E6FC;

  return sub_1BA859448(a1, v4, v5, v6);
}

uint64_t sub_1BA85B6C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v6 = sub_1BAA398CC();
  __swift_project_value_buffer(v6, qword_1EBC11B98);
  v7 = a1;
  v8 = sub_1BAA398AC();
  v9 = sub_1BAA39F9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BA83C000, v8, v9, "NEExtensionBaseProviderHostExportedObject - cancelWithError called with %@", v10, 0xCu);
    sub_1BA84BC58(v11, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v11, -1, -1);
    MEMORY[0x1BFAFC150](v10, -1, -1);
  }

  v14 = *(a2 + OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate);
  if (v14)
  {
    v15 = v14;
    sub_1BA858F74();
  }

  v16 = *(a3 + 16);

  return v16(a3, 1);
}

uint64_t sub_1BA85B860()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA85BCF4(v2);
}

uint64_t sub_1BA85B90C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA85BCF0(v2);
}

uint64_t objectdestroy_40Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA85B9F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA85A81C(v2, v3);
}

uint64_t sub_1BA85BAAC(char a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80) - 8) + 80);

  return sub_1BA85A57C(a1);
}

uint64_t getEnumTagSinglePayload for NEExtensionBaseProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEExtensionBaseProviderError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BA85BC84()
{
  result = qword_1EBC0ECD0;
  if (!qword_1EBC0ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0ECD0);
  }

  return result;
}

uint64_t sub_1BA85BCF8()
{
  v0 = sub_1BAA398CC();
  __swift_allocate_value_buffer(v0, qword_1EBC11B98);
  __swift_project_value_buffer(v0, qword_1EBC11B98);
  return sub_1BAA398BC();
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

uint64_t static NEURLFilter.verdict(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA85BE00, 0, 0);
}

uint64_t sub_1BA85BE00()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  type metadata accessor for Verdict(0);
  *v3 = v0;
  v3[1] = sub_1BA85BF00;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x2874636964726576, 0xED0000293A726F66, sub_1BA85C248, v1, v4);
}

uint64_t sub_1BA85BF00()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_1BA85C060;
  }

  else
  {

    v6 = sub_1BA85C048;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1BA85C078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1BAA3961C();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_1BA85C250;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA85C2F4;
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);

  [ObjCClassFromMetadata verdictForURL:v8 completionHandler:v11];
  _Block_release(v11);
}

void sub_1BA85C248(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1BA85C078(a1);
}

uint64_t sub_1BA85C250()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA85C2F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NEURLFilterPrefilter.tag.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NEURLFilterPrefilter.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NEURLFilterPrefilter(0) + 20);

  return sub_1BA85C3F4(v3, a1);
}

uint64_t sub_1BA85C3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NEURLFilterPrefilter.init(data:tag:bitCount:hashCount:murmurSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  *a7 = a2;
  a7[1] = a3;
  v12 = type metadata accessor for NEURLFilterPrefilter(0);
  result = sub_1BA85C55C(a1, a7 + v12[5]);
  *(a7 + v12[6]) = a4;
  *(a7 + v12[7]) = a5;
  *(a7 + v12[8]) = a6;
  return result;
}

uint64_t sub_1BA85C55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *NEURLFilterControlProvider.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NEURLFilterControlProviderConfiguration();
  (*(v5 + 16))(v8, v2, a1);
  return sub_1BA85C748(v8, v9, a1, a2);
}

uint64_t NEURLFilterControlProviderConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NEURLFilterControlProviderConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t *sub_1BA85C748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for NEURLFilterControlProviderConfiguration();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = sub_1BA85CDA0(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_1BA85C8B8()
{
  result = type metadata accessor for NEURLFilterPrefilter.PrefilterData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BA85C998()
{
  result = sub_1BAA3964C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of NEURLFilterControlProvider.start()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E9A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of NEURLFilterControlProvider.stop(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BA84E9A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of NEURLFilterControlProvider.fetchPrefilter(existingPrefilterTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1BA84E6FC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t *sub_1BA85CDA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  (*(v7 + 32))(&v20 - v12);
  (*(v7 + 16))(v11, v13, a3);
  v14 = sub_1BA854D58(v11, a2, a3, *(a4 + 8));
  v15 = v14[8];
  v14[8] = &unk_1F38BC8D0;

  v16 = &unk_1F38BC8D0;

  v17 = v14[9];
  v14[9] = &unk_1F38BC960;
  v18 = &unk_1F38BC960;

  (*(v7 + 8))(v13, a3);
  return v14;
}

uint64_t sub_1BA85CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_1BAA39EDC();
  v6[15] = sub_1BAA39ECC();
  v8 = sub_1BAA39E8C();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA85CFB0, v8, v7);
}

uint64_t sub_1BA85CFB0()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED10, &qword_1BAA4D348);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1BA85D128;

  return v7(v1, v2);
}

uint64_t sub_1BA85D128()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_1BA85D2E0;
  }

  else
  {
    v7 = sub_1BA85D264;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BA85D264()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v3(1, 0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BA85D2E0()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  v5 = v1;
  v4(0, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[1];

  return v6();
}

void sub_1BA85D500(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BAA395FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1BA85D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1BAA39EDC();
  sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA85D608, v9, v8);
}

uint64_t sub_1BA85D608()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED10, &qword_1BAA4D348);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1BA85D788;
  v6 = v0[13];

  return v8(v6, v1, v2);
}

uint64_t sub_1BA85D788()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_1BA85D908;
  }

  else
  {
    v7 = sub_1BA85D8C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1BA85D8C4()
{
  v1 = *(v0 + 120);
  (*(v0 + 112))(1, 0);
  exit(0);
}

void sub_1BA85D908()
{
  v1 = *(v0 + 152);
  v4 = v0 + 112;
  v3 = *(v0 + 112);
  v2 = *(v4 + 8);
  v5 = v1;
  v3(0, v1);

  exit(0);
}

uint64_t sub_1BA85DAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
  v8[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED08, &qword_1BAA4D340) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = type metadata accessor for NEURLFilterPrefilter(0);
  v8[23] = v13;
  v14 = *(v13 - 8);
  v8[24] = v14;
  v15 = *(v14 + 64) + 15;
  v8[25] = swift_task_alloc();
  sub_1BAA39EDC();
  v8[26] = sub_1BAA39ECC();
  v17 = sub_1BAA39E8C();
  v8[27] = v17;
  v8[28] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1BA85DCA8, v17, v16);
}

uint64_t sub_1BA85DCA8()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED10, &qword_1BAA4D348);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 32);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1BA85DE2C;
  v6 = v0[22];
  v7 = v0[13];
  v8 = v0[14];

  return v10(v6, v7, v8, v1, v2);
}

uint64_t sub_1BA85DE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_1BA85E4F4;
  }

  else
  {
    v7 = sub_1BA85DF68;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BA85DF68()
{
  v1 = v0[23];
  v2 = v0[22];
  if ((*(v0[24] + 48))(v2, 1, v1) != 1)
  {
    v8 = v0[25];
    v9 = v0[20];
    v11 = v0[17];
    v10 = v0[18];
    sub_1BA85EB0C(v2, v8);
    v12 = sub_1BAA3964C();
    v13 = *(v12 - 8);
    v14 = v9;
    v15 = *(v13 + 56);
    v15(v14, 1, 1, v12);
    sub_1BA85C3F4(v8 + *(v1 + 20), v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v0[25];
      v17 = v0[23];
      v19 = v0[19];
      v18 = v0[20];
      v20 = v0[18];
      sub_1BA84BC58(v18, &qword_1EBC0ED00, &qword_1BAA4D338);
      (*(v13 + 32))(v18, v20, v12);
      v59 = v15;
      v15(v18, 0, 1, v12);
      v21 = *(v16 + v17[6]);
      v61 = v16[1];
      v63 = *v16;
      v22 = *(v16 + v17[7]);
      v23 = *(v16 + v17[8]);
      sub_1BA85EB70(v18, v19);
      result = (*(v13 + 48))(v19, 1, v12);
      if (result == 1)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v25 = *MEMORY[0x1E69E9BB0];
      v26 = v0[26];
      v27 = v0[19];

      sub_1BAA3963C();
      (*(v13 + 8))(v27, v12);
      sub_1BAA39DDC();

      v28 = sandbox_extension_issue_file();

      if (!v28)
      {
        v47 = v0[25];
        v49 = v0[20];
        v48 = v0[21];
        v51 = v0[15];
        v50 = v0[16];
        v59(v48, 1, 1, v12);
        v51(0, 0xF000000000000000, v48, 0, 0, 0, 0, 0, 0, 0);
        sub_1BA84BC58(v48, &qword_1EBC0ED00, &qword_1BAA4D338);
        sub_1BA84BC58(v49, &qword_1EBC0ED00, &qword_1BAA4D338);
        v33 = v47;
        goto LABEL_15;
      }

      result = sub_1BAA39E0C();
      if (v21 <= 0xFFFFFFFFLL)
      {
        if (((v22 | v21) & 0x8000000000000000) == 0)
        {
          if (v22 <= 0xFFFFFFFFLL)
          {
            v30 = v0[25];
            v31 = v0[20];
            v32 = v0[16];
            (v0[15])(0, 0xF000000000000000, v31, result, v29, v63, v61, v21, __PAIR64__(v23, v22), 0);

            sub_1BA84BC58(v31, &qword_1EBC0ED00, &qword_1BAA4D338);
            v33 = v30;
LABEL_15:
            sub_1BA85EBE0(v33);
            goto LABEL_16;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v35 = v0[25];
    v34 = v0[26];
    v36 = v0[23];
    v37 = v0[21];
    v38 = v0[18];
    v39 = *v38;
    v64 = v38[1];

    v40 = *(v35 + v36[6]);
    v60 = v35[1];
    v62 = *v35;
    v41 = *(v35 + v36[7]);
    v42 = *(v35 + v36[8]);
    result = (v15)(v37, 1, 1, v12);
    if (v40 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (((v41 | v40) & 0x8000000000000000) == 0)
    {
      if (v41 <= 0xFFFFFFFFLL)
      {
        v43 = v0[25];
        v45 = v0[20];
        v44 = v0[21];
        v46 = v0[16];
        (v0[15])(v39, v64, v44, 0, 0, v62, v60, v40, __PAIR64__(v42, v41), 0);
        sub_1BA84724C(v39, v64);
        sub_1BA84BC58(v44, &qword_1EBC0ED00, &qword_1BAA4D338);
        sub_1BA84BC58(v45, &qword_1EBC0ED00, &qword_1BAA4D338);
        v33 = v43;
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = v0[26];
  v4 = v0[21];
  v6 = v0[15];
  v5 = v0[16];

  sub_1BA84BC58(v2, &qword_1EBC0ED08, &qword_1BAA4D340);
  v7 = sub_1BAA3964C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v6(0, 0xF000000000000000, v4, 0, 0, 0, 0, 0, 0, 0);
  sub_1BA84BC58(v4, &qword_1EBC0ED00, &qword_1BAA4D338);
LABEL_16:
  v52 = v0[25];
  v54 = v0[21];
  v53 = v0[22];
  v56 = v0[19];
  v55 = v0[20];
  v57 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v58 = v0[1];

  return v58();
}

uint64_t sub_1BA85E4F4()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[21];
  v5 = v0[15];
  v4 = v0[16];

  v6 = sub_1BAA3964C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = v1;
  v5(0, 0xF000000000000000, v3, 0, 0, 0, 0, 0, 0, v1);

  sub_1BA84BC58(v3, &qword_1EBC0ED00, &qword_1BAA4D338);
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v14 = v0[1];

  return v14();
}

void sub_1BA85E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, unsigned int a9, unsigned int a10, uint64_t a11, uint64_t a12)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v26 - v18;
  if (v20 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1BAA3968C();
  }

  sub_1BA85EB70(a3, v19);
  v22 = sub_1BAA3964C();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v19, 1, v22) != 1)
  {
    v24 = sub_1BAA3961C();
    (*(v23 + 8))(v19, v22);
  }

  if (a5)
  {
    a5 = sub_1BAA39D8C();
  }

  if (a7)
  {
    a7 = sub_1BAA39D8C();
  }

  if (a11)
  {
    v25 = sub_1BAA395FC();
  }

  else
  {
    v25 = 0;
  }

  (*(a12 + 16))(a12, v21, v24, a5, a7, a8, a9, a10, v25);
}

uint64_t sub_1BA85EA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BA84E6FC;

  return sub_1BA85DAF4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BA85EB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NEURLFilterPrefilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA85EB70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA85EBE0(uint64_t a1)
{
  v2 = type metadata accessor for NEURLFilterPrefilter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA85EC44(uint64_t a1)
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
  v10[1] = sub_1BA84E9A0;

  return sub_1BA85D570(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA85ED18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA85CF14(a1, v4, v5, v6, v7, v8);
}

void sub_1BA85EE3C()
{
  v1 = v0;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEURLFilterControlProviderHost - init", v5, 2u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  v6 = sub_1BAA39D8C();
  [v1 setExtensionPointName_];

  v7 = sub_1BAA39D8C();
  [v1 setExtensionBundleIdentifier_];

  [v1 setExtensionXPCProtocol_];
  [v1 setExtensionHostXPCProtocol_];
  v8 = [objc_allocWithZone(type metadata accessor for NEURLFilterControlProviderHostExportedObject()) init];
  [v1 setExportedObject_];

  v9 = [v1 exportedObject];
  if (v9)
  {
    v10 = v9;
    [v1 setExtensionExportedObject_];
    v11 = [v1 extensionExportedObject];

    if (v11)
    {
      v13 = *&v11[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate];
      *&v11[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate] = v1;
      v12 = v1;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA85F120()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEURLFilterControlProviderHost - start", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA85F26C;
  v6 = *(v0 + 16);

  return sub_1BA854E8C();
}

uint64_t sub_1BA85F26C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA85F36C, 0, 0);
}

uint64_t sub_1BA85F36C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1BA85F464;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0x29287472617473, 0xE700000000000000, sub_1BA862A08, v3, v6);
}

uint64_t sub_1BA85F464()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_1BA85F614;
  }

  else
  {

    v6 = sub_1BA85F5AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BA85F5AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA85F614()
{
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1BA85F67C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - v8;
  v10 = sub_1BA8625D8(a3);
  v12 = v11;
  if (v10)
  {
    v13 = v10;
    (*(v6 + 16))(v9, a1, v5);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v9, v5);
    aBlock[4] = sub_1BA862A94;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA85F960;
    aBlock[3] = &block_descriptor_72;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v13 startWithReply_];
    _Block_release(v16);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v17 = sub_1BAA398CC();
    __swift_project_value_buffer(v17, qword_1EBC11B98);
    v18 = sub_1BAA398AC();
    v19 = sub_1BAA39F9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BA83C000, v18, v19, "NEURLFilterControlProviderHost - start - proxy not good", v20, 2u);
      MEMORY[0x1BFAFC150](v20, -1, -1);
    }

    v21 = v12;
    if (!v12)
    {
      sub_1BA84E364();
      v21 = swift_allocError();
      *v22 = 1;
    }

    aBlock[0] = v21;
    v23 = v12;
    sub_1BAA39E9C();
  }
}

void sub_1BA85F960(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1BA85FB4C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA862B34;

  return sub_1BA85F100();
}

uint64_t sub_1BA85FBF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA85FC14, 0, 0);
}

uint64_t sub_1BA85FC14()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEURLFilterControlProviderHost - stop", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1BA85FD60;
  v6 = *(v0 + 24);

  return sub_1BA854E8C();
}

uint64_t sub_1BA85FD60(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA85FE60, 0, 0);
}

uint64_t sub_1BA85FE60()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1BA85FF64;
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x74697728706F7473, 0xEB00000000293A68, sub_1BA862944, v4, v7);
}

uint64_t sub_1BA85FF64()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_1BA860114;
  }

  else
  {

    v6 = sub_1BA8600AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BA8600AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA860114()
{
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1BA86017C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  v12 = sub_1BA8625D8(a3);
  v14 = v13;
  if (v12)
  {
    v15 = v12;
    (*(v8 + 16))(v11, a1, v7);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    (*(v8 + 32))(v17 + v16, v11, v7);
    aBlock[4] = sub_1BA862950;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA85F960;
    aBlock[3] = &block_descriptor_49_0;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v15 stopWithStopReason:a4 reply:v18];
    _Block_release(v18);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v19 = sub_1BAA398CC();
    __swift_project_value_buffer(v19, qword_1EBC11B98);
    v20 = sub_1BAA398AC();
    v21 = sub_1BAA39F9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BA83C000, v20, v21, "NEURLFilterControlProviderHost - stop - proxy not good", v22, 2u);
      MEMORY[0x1BFAFC150](v22, -1, -1);
    }

    v23 = v14;
    if (!v14)
    {
      sub_1BA84E364();
      v23 = swift_allocError();
      *v24 = 1;
    }

    aBlock[0] = v23;
    v25 = v14;
    sub_1BAA39E9C();
  }
}

uint64_t sub_1BA860470(char a1, void *a2, uint64_t a3, const char *a4)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v7 = sub_1BAA398CC();
  __swift_project_value_buffer(v7, qword_1EBC11B98);
  v8 = a2;
  v9 = sub_1BAA398AC();
  v10 = sub_1BAA39F9C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_1BA83C000, v9, v10, a4, v11, 0x12u);
    sub_1BA84BC58(v12, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v12, -1, -1);
    MEMORY[0x1BFAFC150](v11, -1, -1);
  }

  if (a2)
  {
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39E9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39EAC();
  }
}

uint64_t sub_1BA8607E0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1BA86089C;

  return sub_1BA85FBF4(a1);
}

uint64_t sub_1BA86089C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v1)
  {
    if (v6)
    {
      v9 = *(v4 + 24);
      v10 = sub_1BAA395FC();

      (v9)[2](v9, 0, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v11 = *(v4 + 24);
    v11[2](v11, a1 & 1, 0);
    _Block_release(v11);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BA860A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED28, &qword_1BAA4D3E8) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED30, &qword_1BAA4D3F0);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA860B64, 0, 0);
}

uint64_t sub_1BA860B64()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEURLFilterControlProviderHost - fetchPrefilterData", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1BA860CB0;
  v6 = *(v0 + 48);

  return sub_1BA854E8C();
}

uint64_t sub_1BA860CB0(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA860DB0, 0, 0);
}

uint64_t sub_1BA860DB0()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1BA860EB4;
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD00000000000001CLL, 0x80000001BAA51100, sub_1BA8625CC, v5, v9);
}

uint64_t sub_1BA860EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 112);
  if (v0)
  {

    v6 = sub_1BA86118C;
  }

  else
  {

    v6 = sub_1BA860FFC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BA860FFC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 56))(v4, 0, 1, v2);
  sub_1BA84BBCC(v4, v1, &qword_1EBC0ED30, &qword_1BAA4D3F0);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v20 = *(v0 + 56);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1BA84BBCC(*(v0 + 88), v5, &qword_1EBC0ED30, &qword_1BAA4D3F0);
  v9 = v6[12];
  v10 = (v5 + v6[16]);
  v11 = (v5 + v6[20]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v5 + v6[24]);
  v15 = *(v5 + v6[28]);
  LODWORD(v6) = *(v5 + v6[32]);
  v19 = *v10;
  v18 = *v5;
  sub_1BA84BBCC(v5 + v9, v7, &qword_1EBC0ED00, &qword_1BAA4D338);

  *v8 = v18;
  *(v8 + 16) = v19;
  *(v8 + 32) = v12;
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  *(v8 + 52) = v15;
  *(v8 + 56) = v6;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BA86118C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 56))(v4, 1, 1, v2);
  v5 = v2[12];
  v6 = &v1[v2[16]];
  v7 = &v1[v2[20]];
  v8 = v2[24];
  v9 = v2[28];
  v10 = v2[32];
  *v1 = xmmword_1BAA4D380;
  v11 = sub_1BAA3964C();
  (*(*(v11 - 8) + 56))(&v1[v5], 1, 1, v11);
  *v6 = 0;
  *(v6 + 1) = 0;
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v1[v8] = 0;
  *&v1[v9] = 0;
  *&v1[v10] = 0;
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);
  v26 = *(v0 + 56);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  sub_1BA84BBCC(*(v0 + 88), v12, &qword_1EBC0ED30, &qword_1BAA4D3F0);
  v16 = v13[12];
  v17 = (v12 + v13[16]);
  v18 = (v12 + v13[20]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v12 + v13[24]);
  LODWORD(v1) = *(v12 + v13[28]);
  LODWORD(v13) = *(v12 + v13[32]);
  v25 = *v17;
  v24 = *v12;
  sub_1BA84BBCC(v12 + v16, v14, &qword_1EBC0ED00, &qword_1BAA4D338);

  *v15 = v24;
  *(v15 + 16) = v25;
  *(v15 + 32) = v19;
  *(v15 + 40) = v20;
  *(v15 + 48) = v21;
  *(v15 + 52) = v1;
  *(v15 + 56) = v13;
  v22 = *(v0 + 8);

  return v22();
}

void sub_1BA861380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED38, qword_1BAA4D3F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = sub_1BA8625D8(a3);
  v15 = v14;
  if (v13)
  {
    v16 = v13;
    swift_unknownObjectRetain();
    if (a5)
    {
      a5 = sub_1BAA39D8C();
    }

    (*(v9 + 16))(v12, a1, v8);
    v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25 = swift_allocObject();
    (*(v9 + 32))(v25 + v24, v12, v8);
    aBlock[4] = sub_1BA862798;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA861A24;
    aBlock[3] = &block_descriptor_6;
    v26 = _Block_copy(aBlock);

    [v16 fetchPrefilterDataWithTag:a5 reply:v26];
    _Block_release(v26);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v17 = sub_1BAA398CC();
    __swift_project_value_buffer(v17, qword_1EBC11B98);
    v18 = sub_1BAA398AC();
    v19 = sub_1BAA39F9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BA83C000, v18, v19, "NEURLFilterControlProviderHost - fetchPrefilterData - proxy not good", v20, 2u);
      MEMORY[0x1BFAFC150](v20, -1, -1);
    }

    v21 = v15;
    if (!v15)
    {
      sub_1BA84E364();
      v21 = swift_allocError();
      *v22 = 1;
    }

    aBlock[0] = v21;
    v23 = v15;
    sub_1BAA39E9C();
  }
}

uint64_t sub_1BA861690(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, void *a11, uint64_t a12)
{
  v54 = a8;
  v55 = a7;
  v56 = a5;
  v52 = a4;
  v53 = a6;
  v51 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED30, &qword_1BAA4D3F0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v47 - v16);
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v18 = a12;
  v19 = sub_1BAA398CC();
  __swift_project_value_buffer(v19, qword_1EBC11B98);
  sub_1BA84BC34(a1, a2);
  v20 = a11;
  v21 = sub_1BAA398AC();
  v22 = sub_1BAA39F9C();
  sub_1BA84BCDC(a1, a2);

  if (os_log_type_enabled(v21, v22))
  {
    v49 = v14;
    v57 = a12;
    v23 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58 = v48;
    *v23 = 136315394;
    if (a2 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v24 = a1;
    }

    if (a2 >> 60 == 15)
    {
      v25 = 0xC000000000000000;
    }

    else
    {
      v25 = a2;
    }

    v50 = a1;
    sub_1BA84BC34(a1, a2);
    v26 = sub_1BAA3965C();
    v28 = v27;
    sub_1BA84724C(v24, v25);
    v29 = sub_1BA85AE0C(v26, v28, &v58);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2112;
    if (a11)
    {
      v30 = a11;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = v31;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    *(v23 + 14) = v31;
    v35 = v47;
    *v47 = v32;
    _os_log_impl(&dword_1BA83C000, v21, v22, "NEURLFilterControlProviderHost - proxy.fetchPrefilterData - done %s %@", v23, 0x16u);
    sub_1BA84BC58(v35, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v35, -1, -1);
    v36 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1BFAFC150](v36, -1, -1);
    MEMORY[0x1BFAFC150](v23, -1, -1);

    v18 = v57;
    v14 = v49;
    a1 = v50;
    if (!a11)
    {
      goto LABEL_16;
    }

LABEL_13:
    v58 = a11;
    v33 = a11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED38, qword_1BAA4D3F8);
    return sub_1BAA39E9C();
  }

  if (a11)
  {
    goto LABEL_13;
  }

LABEL_16:
  LODWORD(v50) = a10;
  v37 = v14[12];
  v38 = v14[16];
  v57 = v18;
  v39 = (v17 + v38);
  v40 = (v17 + v14[20]);
  v41 = v14[24];
  v42 = v14[28];
  v43 = v14[32];
  *v17 = a1;
  v17[1] = a2;
  sub_1BA85EB70(v51, v17 + v37);
  v44 = v53;
  v45 = v56;
  *v39 = v52;
  v39[1] = v45;
  v46 = v55;
  *v40 = v44;
  v40[1] = v46;
  *(v17 + v41) = v54;
  *(v17 + v42) = a9;
  *(v17 + v43) = v50;
  sub_1BA84BC34(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED38, qword_1BAA4D3F8);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA861A24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, void *a9)
{
  v33 = a8;
  v34 = a7;
  v35 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = *(a1 + 40);
  v32 = *(a1 + 32);
  if (a2)
  {

    v19 = a2;
    a2 = sub_1BAA3969C();
    v21 = v20;

    if (a3)
    {
LABEL_3:
      sub_1BAA3962C();
      v22 = sub_1BAA3964C();
      (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
      goto LABEL_6;
    }
  }

  else
  {

    v21 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v23 = sub_1BAA3964C();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
LABEL_6:
  if (!a4)
  {
    v24 = 0;
    v26 = a9;
    if (a5)
    {
      goto LABEL_8;
    }

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v24 = sub_1BAA39D9C();
  a4 = v25;
  v26 = a9;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_8:
  v27 = sub_1BAA39D9C();
  a5 = v28;
LABEL_11:
  v29 = v26;
  v32(a2, v21, v17, v24, a4, v27, a5, v35, __PAIR64__(v33, v34), v26);

  sub_1BA84BCDC(a2, v21);

  return sub_1BA84BC58(v17, &qword_1EBC0ED00, &qword_1BAA4D338);
}

uint64_t sub_1BA861DEC(uint64_t a1, const void *a2, void *a3)
{
  v3[10] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[12] = v8;
  v3[13] = _Block_copy(a2);
  if (a1)
  {
    v9 = sub_1BAA39D9C();
    a1 = v10;
  }

  else
  {
    v9 = 0;
  }

  v3[14] = a1;
  a3;
  v11 = swift_task_alloc();
  v3[15] = v11;
  *v11 = v3;
  v11[1] = sub_1BA861F2C;

  return sub_1BA860A4C((v3 + 2), v8, v9, a1);
}

uint64_t sub_1BA861F2C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v35 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v37 = *v0;
  v34 = *(*v0 + 16);
  v33 = *(*v0 + 24);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 56);
  v8 = *(*v0 + 64);
  v9 = *(*v0 + 68);
  v10 = *v0;
  v11 = *(*v0 + 72);

  if (v36)
  {
    if (v35)
    {
      v12 = v10;
      v13 = v10[13];
      v14 = sub_1BAA395FC();

      (v13)[2](v13, 0, 0, 0, 0, 0, 0, 0, v14);
      _Block_release(v13);

      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v32 = v11;
  if (!v35)
  {
    sub_1BA84BCDC(v34, v33);

LABEL_9:
    v12 = v10;
    goto LABEL_20;
  }

  v15 = v5;
  v12 = v10;
  v31 = v9;
  v16 = v7;
  if (v33 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1BAA3968C();
  }

  v18 = v12[11];
  sub_1BA84BBCC(v12[12], v18, &qword_1EBC0ED00, &qword_1BAA4D338);
  v19 = sub_1BAA3964C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v22 = 0;
  if (v21 != 1)
  {
    v23 = v12[11];
    v22 = sub_1BAA3961C();
    (*(v20 + 8))(v23, v19);
  }

  if (v15)
  {
    v24 = sub_1BAA39D8C();
  }

  else
  {
    v24 = 0;
  }

  if (v16)
  {
    v25 = sub_1BAA39D8C();
  }

  else
  {
    v25 = 0;
  }

  v26 = v12[13];
  (v26)[2](v26, v17, v22, v24, v25, v8, v31, v32, 0);

  _Block_release(v26);
  sub_1BA84BCDC(v34, v33);

LABEL_20:
  v28 = v12[11];
  v27 = v12[12];

  v29 = *(v37 + 8);

  return v29();
}

void __swiftcall NEURLFilterControlProviderHost.init()(NEURLFilterControlProviderHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NEURLFilterControlProviderHost.init()()
{
  *(v0 + OBJC_IVAR___NEURLFilterControlProviderHost_exportedObject) = 0;
  v2.super_class = NEURLFilterControlProviderHost;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for NEURLFilterControlProviderHost()
{
  result = qword_1EBC0ED20;
  if (!qword_1EBC0ED20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0ED20);
  }

  return result;
}

id sub_1BA8624C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NEURLFilterControlProviderHostExportedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA862518()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA861DEC(v2, v3, v4);
}

uint64_t sub_1BA8625D8(void *a1)
{
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = 0;
  if (a1)
  {
    v10[4] = sub_1BA85BB28;
    v10[5] = v2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BA871994;
    v10[3] = &block_descriptor_26_0;
    v4 = _Block_copy(v10);

    v5 = [a1 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1BAA3A04C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED40, &qword_1BAA4D410);
    if (swift_dynamicCast())
    {
      v6 = v10[0];
      swift_beginAccess();
      v7 = *(v3 + 16);

      return v6;
    }

    else
    {
      swift_beginAccess();
      v9 = *(v3 + 16);

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA862890()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA8607E0(v2, v3, v4);
}

uint64_t sub_1BA86295C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA85FB4C(v2, v3);
}

uint64_t objectdestroy_19Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1BA862B44()
{
  result = sub_1BAA39D8C();
  qword_1EBC0ED48 = result;
  return result;
}

uint64_t sub_1BA862BA0()
{
  result = sub_1BAA39D8C();
  qword_1EBC0ED50 = result;
  return result;
}

id sub_1BA862BFC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

NetworkExtension::NEURLFilterManager::Status_optional __swiftcall NEURLFilterManager.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NetworkExtension::NEURLFilterManager::Error_optional __swiftcall NEURLFilterManager.Error.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xE)
  {
    v2 = 14;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BA862CB0()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1 + 1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA862D28()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1 + 1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA862D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA86DFC4();
  v5 = sub_1BA86E018();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t static NEURLFilterManager.shared.getter()
{
  if (qword_1EBC0E928 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BA862E48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1BAA39E4C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id sub_1BA862EC8()
{
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v1 = result;
    v2 = type metadata accessor for NEURLFilterManager();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    result = sub_1BA8630C4(v1);
    qword_1EBC0ED58 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA862F38(uint64_t a1, uint64_t *a2)
{
  sub_1BA84985C(a1, v5, &qword_1EBC0ED60, &qword_1BAA4D460);
  v3 = *a2;
  swift_beginAccess();
  sub_1BA8651E8(v5, v3 + 64, &qword_1EBC0ED60, &qword_1BAA4D460);
  return swift_endAccess();
}

uint64_t sub_1BA863014(uint64_t a1)
{
  swift_beginAccess();
  sub_1BA8651E8(a1, v1 + 64, &qword_1EBC0ED60, &qword_1BAA4D460);
  return swift_endAccess();
}

uint64_t sub_1BA8630C4(void *a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_1BAA39FBC();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAA39FAC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1BAA3995C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v20 = &OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_statusObserver;
  sub_1BAA3994C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA86E658(&qword_1EBC0EE50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE58, &qword_1BAA4D8C0);
  sub_1BA86E6A0(&qword_1EBC0EE60, &qword_1EBC0EE58, &qword_1BAA4D8C0);
  sub_1BAA3A05C();
  (*(v21 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  *(v1 + 16) = sub_1BAA39FEC();
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  v11 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  v12 = sub_1BAA3960C();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = v23;
  *(v2 + 32) = v23;
  v14 = v13;
  sub_1BA863658();
  v15 = *(v2 + 32);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BAA39FCC();
    aBlock[4] = sub_1BA86ECF8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA862E48;
    aBlock[3] = &block_descriptor_286;
    v18 = _Block_copy(aBlock);
    [v16 setChangedQueue:v17 andHandler:v18];

    _Block_release(v18);
    v14 = v17;
  }

  return v2;
}

void sub_1BA863470()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1EBC0E918 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1EBC0ED48 object:0];
}

id *NEURLFilterManager.deinit()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 defaultCenter];
    [v4 removeObserver_];

    v5 = v0[6];
  }

  else
  {
    v5 = 0;
  }

  v0[6] = 0;

  sub_1BA84BC58((v0 + 8), &qword_1EBC0ED60, &qword_1BAA4D460);
  sub_1BA84BC58(v0 + OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription, &qword_1EBC0ED68, &qword_1BAA4D468);
  return v0;
}

uint64_t NEURLFilterManager.__deallocating_deinit()
{
  NEURLFilterManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BA863658()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v7[4] = sub_1BA86DFBC;
  v8 = v0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BA863908;
  v7[3] = &block_descriptor_194;
  v3 = _Block_copy(v7);

  v4 = [v1 addObserverForName:@"com.apple.networkextension.statuschanged" object:0 queue:v2 usingBlock:v3];
  _Block_release(v3);

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v5 = 0;
  }

  v6 = *(v0 + 48);
  *(v0 + 48) = v5;
}

uint64_t sub_1BA8637C8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1EBC0E920 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_1EBC0ED50 object:0];

  swift_beginAccess();
  sub_1BA84985C(a2 + 64, &v7, &qword_1EBC0ED60, &qword_1BAA4D460);
  if (!v8)
  {
    return sub_1BA84BC58(&v7, &qword_1EBC0ED60, &qword_1BAA4D460);
  }

  sub_1BA8549AC(&v7, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 8))(a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1BA863908(uint64_t a1)
{
  v2 = sub_1BAA3957C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BAA3956C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA8639FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA86ECFC;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_229;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA863B58()
{
  v1 = *(v0 + 16);
  sub_1BAA39FDC();
  return v3;
}

uint64_t sub_1BA863BDC(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA863D38;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA863D88;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_7;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA863D88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_1BA863DF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 16);
  sub_1BAA39FDC();
  v4[64] = *v4;
  return sub_1BA863EA8;
}

void sub_1BA863EA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1BA86ECFC;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA86ED00;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_15;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BA86ECFC;
  *(v11 + 24) = v10;
  v2[4] = sub_1BA86ED00;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_26_1;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA86412C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA86ED04;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_217;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA864288()
{
  v1 = *(v0 + 16);
  sub_1BAA39FDC();
  return v3;
}

void sub_1BA8642E8(uint64_t a1@<X0>, SEL *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v6 = [v4 urlFilter];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 *a2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

uint64_t sub_1BA864388(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA864554;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_36;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA8644E4(uint64_t a1, char a2, SEL *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = [v3 urlFilter];
    [v6 *a3];
  }
}

void (*sub_1BA86457C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 16);
  sub_1BAA39FDC();
  v4[64] = *v4;
  return sub_1BA864634;
}

void sub_1BA864634(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1BA86ED04;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA86ED00;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_49_1;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BA86ED04;
  *(v11 + 24) = v10;
  v2[4] = sub_1BA86ED00;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_60;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA8648B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA86ED08;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA86ED00;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_205;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

double sub_1BA864A1C()
{
  v1 = *(v0 + 16);
  sub_1BAA39FDC();
  return v3;
}

void sub_1BA864A7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = 0;
  if (v3)
  {
    v5 = [v3 urlFilter];
    if (v5)
    {
      v6 = v5;
      [v5 prefilterFetchInterval];
      v4 = v7;
    }
  }

  *a2 = v4;
}

uint64_t sub_1BA864B10(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BA864CE4;
  *(v5 + 24) = v4;
  v8[4] = sub_1BA86ED00;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BA863DB0;
  v8[3] = &block_descriptor_70;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA864C74(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = [v2 urlFilter];
    [v4 setPrefilterFetchInterval_];
  }
}

void (*sub_1BA864CF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + 16);
  sub_1BAA39FDC();
  return sub_1BA864DA0;
}

void sub_1BA864DA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  isEscapingClosureAtFileLocation = *(*a1 + 64);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1BA86ED08;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA86ED00;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_82;
    v8 = _Block_copy(v2);
    v9 = v2[5];

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BA86ED08;
  *(v11 + 24) = v10;
  v2[4] = sub_1BA86ED00;
  v2[5] = v11;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_93_0;
  v12 = _Block_copy(v2);
  v13 = v2[5];

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA865030(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED68, &qword_1BAA4D468);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BA84985C(a1, &v11 - v6, &qword_1EBC0ED68, &qword_1BAA4D468);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  sub_1BA8651E8(v7, v8 + v9, &qword_1EBC0ED68, &qword_1BAA4D468);
  return swift_endAccess();
}

uint64_t sub_1BA865110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  return sub_1BA84985C(v1 + v3, a1, &qword_1EBC0ED68, &qword_1BAA4D468);
}

uint64_t sub_1BA865178(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  sub_1BA8651E8(a1, v1 + v3, &qword_1EBC0ED68, &qword_1BAA4D468);
  return swift_endAccess();
}

uint64_t sub_1BA8651E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA865380()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  return sub_1BAA39FDC();
}

uint64_t sub_1BA8653E8@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = *(a1 + 24);
  if (v10 && (v11 = [v10 urlFilter]) != 0)
  {
    v12 = v11;
    v13 = [v11 *a2];
    if (v13)
    {
      v14 = v13;
      sub_1BAA3962C();

      v15 = sub_1BAA3964C();
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    }

    else
    {

      v18 = sub_1BAA3964C();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    }

    return sub_1BA84BBCC(v9, a3, &qword_1EBC0ED00, &qword_1BAA4D338);
  }

  else
  {
    v16 = sub_1BAA3964C();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_1BA8655D8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED70, &qword_1BAA4D470);
  sub_1BAA39FDC();
  return v3;
}

void sub_1BA865640(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 && (v6 = [v4 urlFilter]) != 0)
  {
    v7 = v6;
    v8 = [v6 *a2];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1BAA39D9C();
      v12 = v11;
    }

    else
    {

      v10 = 0;
      v12 = 0;
    }

    *a3 = v10;
    a3[1] = v12;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

id sub_1BA865734@<X0>(void *a1@<X8>)
{
  result = *(v1 + 24);
  if (result)
  {
    result = [result payloadInfo];
  }

  *a1 = result;
  return result;
}

uint64_t sub_1BA8657A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1BAA39FDC();
  return v5;
}

uint64_t sub_1BA8657FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE40, &qword_1BAA4D8B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = v19 - v10;
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 identifier];
    if (v14)
    {
      v15 = v14;
      sub_1BAA396CC();

      v16 = sub_1BAA396DC();
      (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    }

    else
    {
      v16 = sub_1BAA396DC();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    }

    sub_1BA84BBCC(v8, v11, &qword_1EBC0EE40, &qword_1BAA4D8B8);
    sub_1BAA396DC();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {

      result = sub_1BA84BC58(v11, &qword_1EBC0EE40, &qword_1BAA4D8B8);
      *a2 = 0;
    }

    else
    {
      v18 = sub_1BAA396BC();

      result = (*(v17 + 8))(v11, v16);
      *a2 = v18;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1BA865A48()
{
  v1 = *(v0 + 16);
  sub_1BAA39FDC();
  return v3;
}

void sub_1BA865AA8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = [v3 payloadInfo];
    v5 = v4;
    if (v4)
    {
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_1BA865B30()
{
  v1 = *(v0 + 16);
  sub_1BAA39FDC();
  return v3;
}

void sub_1BA865B90(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = [v3 payloadInfo];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 profileSource];

      v7 = v6 == 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

void sub_1BA865C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38[2] = a6;
  v38[3] = a4;
  v38[5] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED00, &qword_1BAA4D338);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v38 - v13;
  v15 = *(a1 + 24);
  if (v15 && (v16 = v15, (v17 = [v16 urlFilter]) != 0))
  {
    v38[0] = a7;
  }

  else
  {
    v18 = sub_1BA86E894();
    if (!v18)
    {
      sub_1BA866BEC();
      swift_allocError();
      *v37 = 6;
      swift_willThrow();

      return;
    }

    v16 = v18;
    v38[0] = a7;

    v15 = v16;
  }

  v19 = [v16 urlFilter];
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v38[1] = v7;
  v21 = sub_1BAA3961C();
  [v20 setPirServerURL_];

  v22 = [v16 urlFilter];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  sub_1BA84985C(a3, v14, &qword_1EBC0ED00, &qword_1BAA4D338);
  v24 = sub_1BAA3964C();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v14, 1, v24) != 1)
  {
    v26 = sub_1BAA3961C();
    (*(v25 + 8))(v14, v24);
  }

  [v23 setPirPrivacyPassIssuerURL_];

  v27 = [v16 urlFilter];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1BAA39D8C();
    [v28 setPirAuthenticationToken_];

    v30 = [v16 urlFilter];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1BAA39D8C();
      [v31 setControlProviderBundleIdentifier_];

      v33 = *(a1 + 24);
      *(a1 + 24) = v15;
      v34 = v16;

      v35 = [objc_opt_self() createConnectionForURLFilter];
      v36 = *(a1 + 40);
      *(a1 + 40) = v35;

      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1BA866018()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  v3 = sub_1BA8474EC(0, &qword_1EBC0ED80, off_1E7F046A0);
  *v2 = v0;
  v2[1] = sub_1BA866104;
  v4 = *(v0 + 144);

  return MEMORY[0x1EEE6DE38](v0 + 128, 0, 0, 0xD000000000000015, 0x80000001BAA511C0, sub_1BA866840, v4, v3);
}

uint64_t sub_1BA866104()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1BA8663BC;
  }

  else
  {
    v3 = sub_1BA866218;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BA866218()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BA86CA40;
  *(v5 + 24) = v4;
  v0[12] = sub_1BA86ED00;
  v0[13] = v5;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1BA863DB0;
  v0[11] = &block_descriptor_111;
  v6 = _Block_copy(v0 + 8);
  v7 = v0[13];

  v8 = v2;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_1BA8663BC()
{
  v1 = v0[20];
  v2 = v0[18];
  sub_1BAA3A07C();
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD00000000000002ALL, 0x80000001BAA511E0);
  v0[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  v3 = v0[14];
  v4 = v0[15];
  sub_1BAA396EC();

  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA866B90;
  *(v6 + 24) = v2;
  v0[6] = sub_1BA86ED00;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA863DB0;
  v0[5] = &block_descriptor_100;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[20];
    v11 = v0[18];
    type metadata accessor for NEURLFilterManager();
    v12 = sub_1BAA395FC();
    sub_1BA866BEC();
    swift_allocError();
    sub_1BA86C600(v12, v13);

    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  return result;
}

void sub_1BA86662C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v10 = v9;
    v11 = sub_1BAA39FCC();
    (*(v5 + 16))(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v4);
    *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1BA86E7A8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA874700;
    aBlock[3] = &block_descriptor_309;
    v14 = _Block_copy(aBlock);

    [v10 loadConfigurationsWithCompletionQueue:v11 handler:v14];
    _Block_release(v14);
  }
}

id sub_1BA866848(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_1BAA3A07C();
    MEMORY[0x1BFAF8AF0](0xD00000000000002ALL, 0x80000001BAA511E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    sub_1BAA3A0FC();
    sub_1BAA396EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
    return sub_1BAA39E9C();
  }

  else
  {
    if (a1)
    {
      v4 = sub_1BA8745F4(a1);
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_19;
        }

        for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BAA3A10C())
        {
          v8 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1BFAF8D80](v8, v5);
            }

            else
            {
              if (v8 >= *(v6 + 16))
              {
                goto LABEL_18;
              }

              v9 = *(v5 + 8 * v8 + 32);
            }

            v10 = v9;
            v11 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v12 = [v9 urlFilter];
            if (v12)
            {
              v13 = v12;

              sub_1BAA3A07C();

              v14 = [v10 description];
              v15 = sub_1BAA39D9C();
              v17 = v16;

              MEMORY[0x1BFAF8AF0](v15, v17);

              sub_1BAA396EC();

              goto LABEL_22;
            }

            ++v8;
            if (v11 == i)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          ;
        }

LABEL_20:

        sub_1BAA396EC();
      }
    }

    result = sub_1BA86E894();
    if (result)
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
      return sub_1BAA39EAC();
    }
  }

  return result;
}

uint64_t sub_1BA866B20(uint64_t a1, void *a2)
{
  *(a1 + 56) = 1;
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  v4 = a2;

  v5 = [objc_opt_self() createConnectionForURLFilter];
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BA866B90()
{
  *(v0 + 56) = 0;
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t type metadata accessor for NEURLFilterManager()
{
  result = qword_1EBC0E8E0;
  if (!qword_1EBC0E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA866BEC()
{
  result = qword_1EBC0ED88;
  if (!qword_1EBC0ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0ED88);
  }

  return result;
}

uint64_t sub_1BA866C60()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED90, &qword_1BAA4D498);
  *v4 = v0;
  v4[1] = sub_1BA866D68;

  return MEMORY[0x1EEE6DE38](v0 + 4, 0, 0, 0xD000000000000018, 0x80000001BAA51210, sub_1BA86CA48, v2, v5);
}

uint64_t sub_1BA866D68()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1BA866EA0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1BA866E84;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BA866EA0()
{
  v1 = v0[9];
  v2 = v0[7];

  sub_1BAA3A07C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000023, 0x80000001BAA51230);
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAA396EC();

  type metadata accessor for NEURLFilterManager();
  v5 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v5, v6);

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

void sub_1BA867008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = sub_1BA86E488();
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v10 = sub_1BAA39FCC();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1BA86E6E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA874700;
  aBlock[3] = &block_descriptor_295;
  v13 = _Block_copy(aBlock);

  [v9 loadConfigurationsWithCompletionQueue:v10 handler:v13];
  _Block_release(v13);
}

id sub_1BA867208(uint64_t a1, id a2)
{
  if (a2)
  {
    v37 = 0xE000000000000000;
    v3 = a2;
    sub_1BAA3A07C();
    MEMORY[0x1BFAF8AF0](0xD000000000000023, 0x80000001BAA51230);
    v42 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    sub_1BAA3A0FC();
    sub_1BAA396EC();

    aBlock = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
    return sub_1BAA39E9C();
  }

  if (!a1 || (v5 = sub_1BA8745F4(a1)) == 0)
  {
    aBlock = MEMORY[0x1E69E7CC0];
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
    return sub_1BAA39EAC();
  }

  v6 = v5;
  v42 = MEMORY[0x1E69E7CC0];
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_26:
    v8 = sub_1BAA3A10C();
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_27:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_28:
    aBlock = v7;
    goto LABEL_29;
  }

LABEL_7:
  v35 = v7;
  v9 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFAF8D80](v9, v6);
    }

    else
    {
      if (v9 >= *(v35 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = [v10 urlFilter];
    if (v13)
    {
      break;
    }

LABEL_9:
    ++v9;
    if (v12 == v8)
    {

      goto LABEL_28;
    }
  }

  v14 = v8;

  result = [objc_opt_self() sharedManagerForAllUsers];
  if (result)
  {
    v15 = result;
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v16 = v15;
    v17 = sub_1BAA39FCC();
    v40 = sub_1BA86ECF8;
    v41 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1BA862E48;
    v39 = &block_descriptor_298;
    v18 = _Block_copy(&aBlock);
    [v16 setChangedQueue:v17 andHandler:v18];
    _Block_release(v18);

    v19 = type metadata accessor for NEURLFilterManager();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1BA8630C4(v16);
    v23 = *(v22 + 24);
    *(v22 + 24) = v11;
    v24 = v11;

    *(v22 + 56) = 1;
    v25 = [objc_opt_self() createConnectionForURLFilter];
    v26 = *(v22 + 40);
    *(v22 + 40) = v25;

    v27 = [objc_opt_self() defaultCenter];
    v28 = [objc_opt_self() mainQueue];
    v40 = sub_1BA86ED94;
    v41 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1BA863908;
    v39 = &block_descriptor_302;
    v29 = _Block_copy(&aBlock);

    v30 = [v27 addObserverForName:@"com.apple.networkextension.statuschanged" object:0 queue:v28 usingBlock:v29];
    _Block_release(v29);

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = 0;
    }

    v8 = v14;
    v32 = *(v22 + 48);
    *(v22 + 48) = v31;

    MEMORY[0x1BFAF8B20](v33);
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BAA39E6C();
    }

    sub_1BAA39E7C();

    v7 = v42;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA867758(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 168) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86777C, 0, 0);
}

uint64_t sub_1BA86777C()
{
  v1 = swift_task_alloc();
  v0[7].i64[0] = v1;
  v1[1] = vextq_s8(v0[6], v0[6], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[7].i64[1] = v3;
  v4 = type metadata accessor for NEURLFilterManager();
  v0[8].i64[0] = v4;
  *v3 = v0;
  v3[1] = sub_1BA867880;

  return MEMORY[0x1EEE6DE38](&v0[5], 0, 0, 0xD00000000000001FLL, 0x80000001BAA51260, sub_1BA86CA50, v1, v4);
}

uint64_t sub_1BA867880()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1BA867E50;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1BA86799C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BA86799C()
{
  v1 = v0[10];
  v0[18] = v1;
  if (*(v1 + 56) == 1)
  {
    v2 = *(v0 + 168);
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BA86ECFC;
    *(v5 + 24) = v4;
    v0[6] = sub_1BA86ED00;
    v0[7] = v5;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1BA863DB0;
    v0[5] = &block_descriptor_126;
    v6 = _Block_copy(v0 + 2);
    v7 = v0[7];

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      v9 = swift_task_alloc();
      v0[19] = v9;
      *v9 = v0;
      v9[1] = sub_1BA867CD8;

      return sub_1BA868B50();
    }
  }

  else
  {
    sub_1BA866BEC();
    v10 = swift_allocError();
    *v11 = 1;
    swift_willThrow();

    sub_1BAA3A07C();
    v0[8] = 0;
    v0[9] = 0xE000000000000000;
    MEMORY[0x1BFAF8AF0](0xD000000000000015, 0x80000001BAA51280);
    v0[11] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    sub_1BAA3A0FC();
    v12 = v0[8];
    v13 = v0[9];
    sub_1BAA396EC();

    v14 = sub_1BAA395FC();
    swift_allocError();
    sub_1BA86C600(v14, v15);

    swift_willThrow();
    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_1BA867CD8()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1BA867FB0;
  }

  else
  {
    v3 = sub_1BA867DEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BA867DEC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BA867E50()
{
  v1 = v0[14];

  v2 = v0[17];
  sub_1BAA3A07C();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000015, 0x80000001BAA51280);
  v0[11] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  v3 = v0[8];
  v4 = v0[9];
  sub_1BAA396EC();

  v5 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v5, v6);

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1BA867FB0()
{
  v1 = v0[18];

  v2 = v0[20];
  sub_1BAA3A07C();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000015, 0x80000001BAA51280);
  v0[11] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  v3 = v0[8];
  v4 = v0[9];
  sub_1BAA396EC();

  v5 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v5, v6);

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

void sub_1BA868110(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = sub_1BA86E488();
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v12 = sub_1BAA39FCC();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1BA86E59C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA874700;
  aBlock[3] = &block_descriptor_279;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  [v11 loadConfigurationsWithCompletionQueue:v12 handler:v15];
  _Block_release(v15);
}

unint64_t sub_1BA868320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v8 = sub_1BAA396DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE38, &qword_1BAA4D8B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE40, &qword_1BAA4D8B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v84 = v66 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v85 = v66 - v24;
  v25 = sub_1BA86E488();
  v26 = type metadata accessor for NEURLFilterManager();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v83 = sub_1BA8630C4(v25);
  if (a2)
  {
    aBlock[0] = a2;
    v29 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
    sub_1BAA39E9C();
LABEL_3:
    aBlock[0] = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
    return sub_1BAA39EAC();
  }

  v77 = v16;
  v78 = v8;
  v73 = v21;
  v79 = v13;
  v70 = v12;
  if (!a1)
  {
    goto LABEL_3;
  }

  result = sub_1BA8745F4(a1);
  if (!result)
  {
    goto LABEL_3;
  }

  v31 = result;
  v32 = v9;
  if (!(result >> 62))
  {
    v33 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v79;
    if (v33)
    {
      goto LABEL_8;
    }

LABEL_31:

    goto LABEL_3;
  }

  result = sub_1BAA3A10C();
  v33 = result;
  v34 = v79;
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_8:
  v66[1] = a4;
  if (v33 >= 1)
  {
    v35 = 0;
    v82 = v31 & 0xC000000000000001;
    v74 = (v32 + 48);
    v75 = (v32 + 56);
    v67 = (v32 + 32);
    v72 = (v32 + 8);
    v69 = @"com.apple.networkextension.statuschanged";
    v68 = v87;
    v36 = &qword_1EBC0EE40;
    v80 = v31;
    v76 = v33;
    while (1)
    {
      if (v82)
      {
        v38 = MEMORY[0x1BFAF8D80](v35, v31);
      }

      else
      {
        v38 = *(v31 + 8 * v35 + 32);
      }

      v37 = v38;
      v39 = [v38 urlFilter];
      if (!v39)
      {
        goto LABEL_11;
      }

      v40 = [v37 identifier];
      if (v40)
      {
        v41 = v40;
        sub_1BAA396CC();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = *v75;
      v44 = v85;
      v45 = v78;
      (*v75)(v85, v42, 1, v78);
      v46 = v84;
      sub_1BAA396CC();
      v43(v46, 0, 1, v45);
      v47 = *(v34 + 48);
      v48 = v77;
      sub_1BA84985C(v44, v77, v36, &qword_1BAA4D8B8);
      sub_1BA84985C(v46, v48 + v47, v36, &qword_1BAA4D8B8);
      v49 = v36;
      v50 = *v74;
      if ((*v74)(v48, 1, v45) == 1)
      {
        break;
      }

      v52 = v73;
      sub_1BA84985C(v48, v73, v36, &qword_1BAA4D8B8);
      if (v50(v48 + v47, 1, v45) == 1)
      {
        sub_1BA84BC58(v84, v36, &qword_1BAA4D8B8);
        sub_1BA84BC58(v85, v36, &qword_1BAA4D8B8);
        (*v72)(v52, v45);
        v31 = v80;
LABEL_24:
        sub_1BA84BC58(v48, &qword_1EBC0EE38, &qword_1BAA4D8B0);
        v33 = v76;
        v34 = v79;
        goto LABEL_11;
      }

      v53 = v70;
      (*v67)(v70, v48 + v47, v45);
      sub_1BA86E658(&qword_1EBC0EE48, MEMORY[0x1E69695A8]);
      v71 = sub_1BAA39D7C();
      v54 = *v72;
      (*v72)(v53, v45);
      sub_1BA84BC58(v84, v49, &qword_1BAA4D8B8);
      sub_1BA84BC58(v85, v49, &qword_1BAA4D8B8);
      v54(v52, v45);
      sub_1BA84BC58(v48, v49, &qword_1BAA4D8B8);
      v36 = v49;
      if (v71)
      {
        goto LABEL_26;
      }

      v34 = v79;
      v31 = v80;
      v33 = v76;
LABEL_11:
      ++v35;

      if (v33 == v35)
      {
        goto LABEL_31;
      }
    }

    sub_1BA84BC58(v84, v36, &qword_1BAA4D8B8);
    sub_1BA84BC58(v85, v36, &qword_1BAA4D8B8);
    v51 = v50(v48 + v47, 1, v45);
    v31 = v80;
    if (v51 == 1)
    {
      sub_1BA84BC58(v48, v36, &qword_1BAA4D8B8);
LABEL_26:
      v55 = v36;
      v56 = v83;
      v57 = *(v83 + 24);
      *(v83 + 24) = v37;
      v58 = v37;

      *(v56 + 56) = 1;
      v59 = [objc_opt_self() createConnectionForURLFilter];
      v60 = *(v56 + 40);
      *(v56 + 40) = v59;

      v61 = [objc_opt_self() defaultCenter];
      v62 = [objc_opt_self() mainQueue];
      v87[2] = sub_1BA86ED94;
      v87[3] = v56;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v87[0] = sub_1BA863908;
      v87[1] = &block_descriptor_283;
      v63 = _Block_copy(aBlock);

      v64 = [v61 addObserverForName:v69 object:0 queue:v62 usingBlock:v63];

      _Block_release(v63);
      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      if (!v65)
      {
        swift_unknownObjectRelease();
        v65 = 0;
      }

      v34 = v79;
      v31 = v80;
      v33 = v76;
      v37 = *(v83 + 48);
      *(v83 + 48) = v65;
      v36 = v55;
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA868B70()
{
  v1 = *(*(v0 + 16) + 16);
  sub_1BAA39FDC();
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1BA868CBC;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0xD000000000000013, 0x80000001BAA512A0, sub_1BA86CA74, v4, v5);
}

uint64_t sub_1BA868CBC()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1BA868FFC;
  }

  else
  {
    v3 = sub_1BA868DD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BA868DD0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    sub_1BA866BEC();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAA398CC();
    __swift_project_value_buffer(v4, qword_1EBC11B98);
    v5 = v2;
    v6 = sub_1BAA398AC();
    v7 = sub_1BAA39F8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BA83C000, v6, v7, "failed to save the URL Filter configurations: %@", v8, 0xCu);
      sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v9, -1, -1);
      MEMORY[0x1BFAFC150](v8, -1, -1);
    }

    type metadata accessor for NEURLFilterManager();
    v12 = sub_1BAA395FC();
    swift_allocError();
    sub_1BA86C600(v12, v13);

    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1BA868FFC()
{
  v1 = *(v0 + 32);
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to save the URL Filter configurations: %@", v6, 0xCu);
    sub_1BA84BC58(v7, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v7, -1, -1);
    MEMORY[0x1BFAFC150](v6, -1, -1);
  }

  type metadata accessor for NEURLFilterManager();
  v10 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v10, v11);

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

void sub_1BA8691DC(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    sub_1BA866BEC();
    swift_allocError();
    v7 = 7;
LABEL_9:
    *v6 = v7;
    swift_willThrow();
    return;
  }

  v2 = *(a1 + 24);
  if (!v2 || (v3 = [v2 urlFilter]) == 0)
  {
    sub_1BA866BEC();
    swift_allocError();
    v7 = 3;
    goto LABEL_9;
  }

  sub_1BA8474EC(0, &qword_1EBC0EE28, 0x1E695DF70);
  v4 = MEMORY[0x1BFAF8D20](MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 24);
  if (v5 && ([v5 checkValidityAndCollectErrors_] & 1) == 0)
  {
    sub_1BA866BEC();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_1BA86931C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(a2 + 24);
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BAA39FCC();
    (*(v5 + 16))(v8, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v8, v4);
    aBlock[4] = sub_1BA86E3D8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8538E4;
    aBlock[3] = &block_descriptor_273;
    v16 = _Block_copy(aBlock);

    [v12 saveConfiguration:v11 withCompletionQueue:v13 handler:v16];
    _Block_release(v16);
  }
}

uint64_t sub_1BA869528(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v3 = sub_1BAA398CC();
    __swift_project_value_buffer(v3, qword_1EBC11B98);
    v4 = a1;
    v5 = sub_1BAA398AC();
    v6 = sub_1BAA39F8C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1BA83C000, v5, v6, "failed to save the URL Filter configuration: %@", v7, 0xCu);
      sub_1BA84BC58(v8, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v8, -1, -1);
      MEMORY[0x1BFAFC150](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39E9C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39EAC();
  }
}

uint64_t sub_1BA869700()
{
  v1 = *(*(v0 + 16) + 16);
  sub_1BAA39FDC();
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1BA86984C;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0xD000000000000017, 0x80000001BAA512C0, sub_1BA86CA98, v4, v5);
}

uint64_t sub_1BA86984C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1BA869B8C;
  }

  else
  {
    v3 = sub_1BA869960;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BA869960()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    sub_1BA866BEC();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAA398CC();
    __swift_project_value_buffer(v4, qword_1EBC11B98);
    v5 = v2;
    v6 = sub_1BAA398AC();
    v7 = sub_1BAA39F8C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BA83C000, v6, v7, "failed to remove the URL Filter configuration: %@", v8, 0xCu);
      sub_1BA84BC58(v9, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v9, -1, -1);
      MEMORY[0x1BFAFC150](v8, -1, -1);
    }

    type metadata accessor for NEURLFilterManager();
    v12 = sub_1BAA395FC();
    swift_allocError();
    sub_1BA86C600(v12, v13);

    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_1BA869B8C()
{
  v1 = *(v0 + 32);
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to remove the URL Filter configuration: %@", v6, 0xCu);
    sub_1BA84BC58(v7, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
    MEMORY[0x1BFAFC150](v7, -1, -1);
    MEMORY[0x1BFAFC150](v6, -1, -1);
  }

  type metadata accessor for NEURLFilterManager();
  v10 = sub_1BAA395FC();
  sub_1BA866BEC();
  swift_allocError();
  sub_1BA86C600(v10, v11);

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BA869D6C(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 56) == 1)
    {
      return result;
    }

    v1 = 7;
  }

  else
  {
    v1 = 1;
  }

  sub_1BA866BEC();
  swift_allocError();
  *v2 = v1;
  return swift_willThrow();
}

void sub_1BA869DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(a2 + 24);
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BAA39FCC();
    (*(v5 + 16))(v8, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v8, v4);
    *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1BA86E330;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8538E4;
    aBlock[3] = &block_descriptor_267;
    v16 = _Block_copy(aBlock);

    [v12 removeConfiguration:v11 withCompletionQueue:v13 handler:v16];
    _Block_release(v16);
  }
}

uint64_t sub_1BA86A000(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v5 = sub_1BAA398CC();
    __swift_project_value_buffer(v5, qword_1EBC11B98);
    v6 = a1;
    v7 = sub_1BAA398AC();
    v8 = sub_1BAA39F8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BA83C000, v7, v8, "failed to remove the URL Filter configuration: %@", v9, 0xCu);
      sub_1BA84BC58(v10, &qword_1EBC0ECB0, &qword_1BAA4D0B0);
      MEMORY[0x1BFAFC150](v10, -1, -1);
      MEMORY[0x1BFAFC150](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39E9C();
  }

  else
  {
    v14 = *(a3 + 24);
    *(a3 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
    return sub_1BAA39EAC();
  }
}

uint64_t sub_1BA86A1E4()
{
  v1 = *(*(v0 + 16) + 16);
  sub_1BAA39FDC();
  [*(*(v0 + 16) + 40) resetCache];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BA86A2C0()
{
  v1 = *(*(v0 + 16) + 16);
  sub_1BAA39FDC();
  [*(*(v0 + 16) + 40) fetchServerParameters];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BA86A37C(uint64_t result)
{
  if (*(result + 40))
  {
    if (*(result + 56) == 1)
    {
      return result;
    }

    v1 = 7;
  }

  else
  {
    v1 = 9;
  }

  sub_1BA866BEC();
  swift_allocError();
  *v2 = v1;
  return swift_willThrow();
}

uint64_t sub_1BA86A3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = [v4 status];
    v6 = 0x40203020100uLL >> (8 * v5);
    if (v5 > 5)
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v8 = v6;
  return a3(&v8);
}

uint64_t sub_1BA86A45C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1BAA39D6C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1BA86A4EC(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86A50C, 0, 0);
}

uint64_t sub_1BA86A50C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BA86A6F0;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(v3 + 40);
  if (v6)
  {
    v7 = v1[17];
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_1BA86CABC;
    v8[4] = v5;
    v1[14] = sub_1BA86CAC0;
    v1[15] = v8;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BA86A45C;
    v1[13] = &block_descriptor_143;
    v9 = _Block_copy(v1 + 10);
    v10 = v1[15];
    v11 = v6;

    [v11 fetchExtendedStatusWithCompletionHandler_];

    _Block_release(v9);
  }

  else
  {
    **(*(v4 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1BA86A6F0()
{
  v3 = *v0;
  **(*v0 + 128) = *(*v0 + 144);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA86A7E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED98, &qword_1BAA4D4D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v7 - v4, *MEMORY[0x1E69E8650]);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDA0, &qword_1BAA4D4D8);
  a1[4] = sub_1BA86E6A0(&qword_1EBC0EDA8, &qword_1EBC0EDA0, &qword_1BAA4D4D8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1BAA39F2C();
}

uint64_t sub_1BA86A93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_1BAA39EFC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_1BA86F78C(0, 0, v12, &unk_1BAA4D890, v15);
  return sub_1BAA39F0C();
}

uint64_t sub_1BA86AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE20, &unk_1BAA4D898);
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE08, &qword_1BAA4D878) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = sub_1BAA3A00C();
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA86ACA4, 0, 0);
}

uint64_t sub_1BA86ACA4()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EBC0E920 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  sub_1BAA3A01C();

  sub_1BAA39FFC();
  v3 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8]);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1BA86AE00;
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];

  return MEMORY[0x1EEE6D8C8](v7, v8, v3);
}

uint64_t sub_1BA86AE00()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1BA86B084;
  }

  else
  {
    v3 = sub_1BA86AF14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BA86AF30()
{
  v1 = v0[22];
  v2 = sub_1BAA3957C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    (*(v0[24] + 8))(v0[25], v0[23]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *(MEMORY[0x1E69E86C8] + 4);
    v7 = swift_task_alloc();
    v0[28] = v7;
    *v7 = v0;
    v7[1] = sub_1BA86B110;

    return MEMORY[0x1EEE6DA60](500000000);
  }
}

uint64_t sub_1BA86B084()
{
  *(v0 + 128) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1BA86B110()
{
  v2 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](sub_1BA86B218, 0, 0);
}

uint64_t sub_1BA86B218()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1BA86B3FC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(v3 + 40);
  if (v6)
  {
    v7 = v1[17];
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_1BA86ED90;
    v8[4] = v5;
    v1[14] = sub_1BA86ED10;
    v1[15] = v8;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BA86A45C;
    v1[13] = &block_descriptor_261;
    v9 = _Block_copy(v1 + 10);
    v10 = v1[15];
    v11 = v6;

    [v11 fetchExtendedStatusWithCompletionHandler_];

    _Block_release(v9);
  }

  else
  {
    **(*(v4 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1BA86B3FC()
{
  v2 = *v0;
  *(*v0 + 234) = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1BA86B4E0, 0, 0);
}

uint64_t sub_1BA86B4E0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  *(v0 + 233) = *(v0 + 234);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880);
  sub_1BAA39F1C();
  (*(v4 + 8))(v2, v3);
  sub_1BA84BC58(v1, &qword_1EBC0EE08, &qword_1BAA4D878);
  v6 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8]);
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_1BA86AE00;
  v9 = *(v0 + 200);
  v10 = *(v0 + 176);
  v11 = *(v0 + 184);

  return MEMORY[0x1EEE6D8C8](v10, v11, v6);
}

uint64_t sub_1BA86B634@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDB0, &qword_1BAA4D4E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v7 - v4, *MEMORY[0x1E69E8650]);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDB8, &unk_1BAA4D4E8);
  a1[4] = sub_1BA86E6A0(&qword_1EBC0EDC0, &qword_1EBC0EDB8, &unk_1BAA4D4E8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1BAA39F2C();
}

uint64_t sub_1BA86B784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_1BA86F78C(0, 0, v10, &unk_1BAA4D868, v13);
  return sub_1BAA39F0C();
}

uint64_t sub_1BA86B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE00, &qword_1BAA4D870);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE08, &qword_1BAA4D878) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1BAA3A00C();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA86BADC, 0, 0);
}

uint64_t sub_1BA86BADC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EBC0E918 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  sub_1BAA3A01C();

  sub_1BAA39FFC();
  v3 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8]);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1BA86BC38;
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x1EEE6D8C8](v7, v8, v3);
}

uint64_t sub_1BA86BC38()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1BA86BF7C;
  }

  else
  {
    v3 = sub_1BA86BD4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BA86BD68()
{
  v1 = *(v0 + 56);
  v2 = sub_1BAA3957C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 48);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    *(v0 + 104) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850);
    sub_1BAA39F1C();
    (*(v7 + 8))(v6, v9);
    sub_1BA84BC58(v1, &qword_1EBC0EE08, &qword_1BAA4D878);
    v10 = sub_1BA86E658(&qword_1EBC0EE10, MEMORY[0x1E6969EF8]);
    v11 = *(MEMORY[0x1E69E85A8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_1BA86BC38;
    v13 = *(v0 + 80);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);

    return MEMORY[0x1EEE6D8C8](v14, v15, v10);
  }
}

uint64_t sub_1BA86BF7C()
{
  *(v0 + 16) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1BA86C008(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 40);
  if (v5)
  {
    v6 = [v5 lastDisconnectError];
  }

  else
  {
    v6 = 0;
  }

  a2(v6);
}

uint64_t sub_1BA86C07C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86C09C, 0, 0);
}

uint64_t sub_1BA86C09C()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDC8, &qword_1BAA4D4F8);
  *v2 = v0;
  v2[1] = sub_1BA86C180;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0xD000000000000013, 0x80000001BAA51300, sub_1BA86CB1C, v5, v3);
}

uint64_t sub_1BA86C180()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BA86C274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF0, &qword_1BAA4D848);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  v11 = *(v5 + 16);
  v11(aBlock - v9, a1, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = swift_allocObject();
    v15[2] = sub_1BA86E06C;
    v15[3] = v13;
    v15[4] = a2;
    aBlock[4] = sub_1BA86E094;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA86A45C;
    aBlock[3] = &block_descriptor_239;
    v16 = _Block_copy(aBlock);
    v17 = v14;

    [v17 fetchExtendedStatusWithCompletionHandler_];

    _Block_release(v16);
  }

  else
  {
    LOBYTE(aBlock[0]) = 14;
    sub_1BAA39EAC();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1BA86C4FC(void *a1)
{
  if (a1)
  {
    type metadata accessor for NEURLFilterManager();
    v2 = a1;
    v3 = sub_1BAA395FC();
    sub_1BA86C600(v3, &v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF0, &qword_1BAA4D848);
    sub_1BAA39EAC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF0, &qword_1BAA4D848);
    sub_1BAA39EAC();
  }
}

unint64_t sub_1BA86C5B0()
{
  result = sub_1BA851440(&unk_1F387C270);
  qword_1EBC11BB0 = result;
  return result;
}

unint64_t sub_1BA86C5D8()
{
  result = sub_1BA851454(&unk_1F387C370);
  qword_1EBC11BB8 = result;
  return result;
}

void sub_1BA86C600(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1BAA39D9C();
  v7 = v6;

  if (v5 == 0xD00000000000001ALL && 0x80000001BAA51420 == v7)
  {

LABEL_15:
    [a1 code];
    if (qword_1EBC0E930 != -1)
    {
      swift_once();
    }

    v20 = qword_1EBC11BB0;
    if (!*(qword_1EBC11BB0 + 16))
    {
      goto LABEL_28;
    }

    v21 = sub_1BA851AE4();
    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v9 = sub_1BAA3A15C();

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = [a1 domain];
  v11 = sub_1BAA39D9C();
  v13 = v12;

  if (v11 == 0xD00000000000001BLL && 0x80000001BAA51440 == v13)
  {
  }

  else
  {
    v15 = sub_1BAA3A15C();

    if ((v15 & 1) == 0)
    {
      v16 = [a1 domain];
      v17 = sub_1BAA39D9C();
      v19 = v18;

      if (v17 == 0xD000000000000029 && 0x80000001BAA51460 == v19)
      {

LABEL_27:
        v39 = a1;
        sub_1BA8474EC(0, &qword_1EBC0EE70, 0x1E696ABC0);
        v26 = a1;
        swift_dynamicCast();
        return;
      }

      v25 = sub_1BAA3A15C();

      if (v25)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }
  }

  [a1 code];
  if (qword_1EBC0E938 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBC11BB8;
  if (!*(qword_1EBC11BB8 + 16) || (v21 = sub_1BA851AE4(), (v24 & 1) == 0))
  {
LABEL_28:
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v27 = sub_1BAA398CC();
    __swift_project_value_buffer(v27, qword_1EBC11B98);
    v28 = a1;
    v29 = sub_1BAA398AC();
    v30 = sub_1BAA39F8C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315394;
      v33 = [v28 domain];
      v34 = sub_1BAA39D9C();
      v36 = v35;

      v37 = sub_1BA85AE0C(v34, v36, &v39);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2048;
      v38 = [v28 code];

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1BA83C000, v29, v30, "mapError unexpected error domain %s code %ld", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAFC150](v32, -1, -1);
      MEMORY[0x1BFAFC150](v31, -1, -1);
    }

    else
    {
    }

    v23 = 13;
    goto LABEL_34;
  }

LABEL_19:
  v23 = *(*(v20 + 56) + v21);
LABEL_34:
  *a2 = v23;
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

unint64_t sub_1BA86CB28()
{
  result = qword_1EBC0EDD0;
  if (!qword_1EBC0EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDD0);
  }

  return result;
}

unint64_t sub_1BA86CB80()
{
  result = qword_1EBC0EDD8;
  if (!qword_1EBC0EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDD8);
  }

  return result;
}

uint64_t keypath_get_145Tm@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = sub_1BAA39FDC();
  *a2 = v5;
  return result;
}

void sub_1BA86CC4C()
{
  sub_1BA86DCC4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of NEURLFilterManager.loadFromPreferences()()
{
  v2 = *(*v0 + 488);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return v6();
}

uint64_t dispatch thunk of static NEURLFilterManager.loadAllFromPreferences()()
{
  v5 = (*(v0 + 496) + **(v0 + 496));
  v2 = *(*(v0 + 496) + 4);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA86D3A0;

  return v5();
}

uint64_t sub_1BA86D3A0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of static NEURLFilterManager.enableConfig(enable:serviceID:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 504) + **(v2 + 504));
  v6 = *(*(v2 + 504) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA84E6FC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of NEURLFilterManager.saveToPreferences()()
{
  v2 = *(*v0 + 512);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return v6();
}

uint64_t dispatch thunk of NEURLFilterManager.removeFromPreferences()()
{
  v2 = *(*v0 + 520);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return v6();
}

uint64_t dispatch thunk of NEURLFilterManager.resetPIRCache()()
{
  v2 = *(*v0 + 528);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return v6();
}

uint64_t dispatch thunk of NEURLFilterManager.refreshPIRParameters()()
{
  v2 = *(*v0 + 536);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return v6();
}

uint64_t dispatch thunk of NEURLFilterManager.status.getter(uint64_t a1)
{
  v4 = *(*v1 + 552);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BA84E9A0;

  return v8(a1);
}

uint64_t dispatch thunk of NEURLFilterManager.lastDisconnectError.getter(uint64_t a1)
{
  v4 = *(*v1 + 584);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BA84E9A0;

  return v8(a1);
}

void sub_1BA86DCC4()
{
  if (!qword_1EBC0E8F0)
  {
    sub_1BAA3960C();
    v0 = sub_1BAA3A03C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC0E8F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for NEURLFilterManager.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEURLFilterManager.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NEURLFilterManager.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEURLFilterManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BA86DFC4()
{
  result = qword_1EBC0EDE0;
  if (!qword_1EBC0EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDE0);
  }

  return result;
}

unint64_t sub_1BA86E018()
{
  result = qword_1EBC0EDE8;
  if (!qword_1EBC0EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EDE8);
  }

  return result;
}

uint64_t sub_1BA86E0A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E6FC;

  return sub_1BA86B97C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BA86E1C0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA86AB44(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_139Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA86E330(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA86A000(a1, v1 + v4, v5);
}

uint64_t sub_1BA86E400(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

id sub_1BA86E488()
{
  result = [objc_opt_self() sharedManagerForAllUsers];
  if (result)
  {
    v1 = result;
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v2 = v1;
    v3 = sub_1BAA39FCC();
    v5[4] = sub_1BA86ECF8;
    v5[5] = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1BA862E48;
    v5[3] = &block_descriptor_289;
    v4 = _Block_copy(v5);
    [v2 setChangedQueue:v3 andHandler:v4];
    _Block_release(v4);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA86E59C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1BA868320(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1BA86E658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA86E6A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_263Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1BA86E7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

id sub_1BA86E894()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_1BAA39D6C();

    if (*(v3 + 16) && (v4 = sub_1BA850978(0xD000000000000013, 0x80000001BAA51500), (v5 & 1) != 0))
    {
      sub_1BA85B4BC(*(v3 + 56) + 32 * v4, v24);

      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v6 = [v0 mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = sub_1BAA39D6C();

    if (*(v8 + 16) && (v9 = sub_1BA850978(0x656C646E75424643, 0xEC000000656D614ELL), (v10 & 1) != 0))
    {
      sub_1BA85B4BC(*(v8 + 56) + 32 * v9, v24);

      swift_dynamicCast();
    }

    else
    {
    }
  }

LABEL_12:
  v11 = objc_allocWithZone(NEConfiguration);

  v12 = sub_1BAA39D8C();

  v13 = [v11 initWithName:v12 grade:2];

  if (!v13)
  {

    return v13;
  }

  v14 = [v0 mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    sub_1BAA39D9C();
  }

  v16 = sub_1BAA39D8C();

  [v13 setApplication_];

  v17 = sub_1BAA39D8C();

  [v13 setApplicationName_];

  v18 = [objc_allocWithZone(NEURLFilterConfiguration) init];
  [v13 setUrlFilter_];

  result = [v13 urlFilter];
  if (result)
  {
    v20 = result;
    v21 = [v0 mainBundle];
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      sub_1BAA39D9C();
    }

    v23 = sub_1BAA39D8C();

    [v20 setAppBundleIdentifier_];

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA86EF88(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_1BAA396DC();
  v3[2] = v6;
  v7 = *(v6 - 8);
  v3[3] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[4] = v9;
  v3[5] = _Block_copy(a3);
  sub_1BAA396CC();
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1BA86F0C0;

  return (sub_1BA86F464)(a1, v9);
}

uint64_t sub_1BA86F0C0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    if (v5)
    {
      v10 = *(v3 + 40);
      v11 = sub_1BAA395FC();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v12 = *(v3 + 40);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  v13 = *(v3 + 32);

  v14 = *(v9 + 8);

  return v14();
}

NEURLFilterManagerPrivate __swiftcall NEURLFilterManagerPrivate.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NEURLFilterManagerPrivate()
{
  result = qword_1EBC0EE80;
  if (!qword_1EBC0EE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EE80);
  }

  return result;
}

uint64_t sub_1BA86F3A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BA84E9A0;

  return sub_1BA86EF88(v2, v3, v4);
}

uint64_t sub_1BA86F464(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA86F488, 0, 0);
}

uint64_t sub_1BA86F488()
{
  v1 = *(v0 + 40);
  type metadata accessor for NEURLFilterManager();
  v2 = sub_1BAA396BC();
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1BA86F540;
  v4 = *(v0 + 72);

  return sub_1BA867758(v4, v2);
}

uint64_t sub_1BA86F540()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BA86F67C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1BA86F67C()
{
  v1 = *(v0 + 64);

  sub_1BAA3A07C();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x1BFAF8AF0](0xD000000000000031, 0x80000001BAA515C0);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
  sub_1BAA3A0FC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1BAA396EC();

  swift_willThrow();
  v4 = *(v0 + 8);
  v5 = *(v0 + 64);

  return v4();
}

uint64_t sub_1BA86F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1BA871480(a3, v27 - v11);
  v13 = sub_1BAA39EFC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1BA8714F0(v12);
  }

  else
  {
    sub_1BAA39EEC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1BAA39E8C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1BAA39DDC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1BA8714F0(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BA8714F0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1BA86FA64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1BA86FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v6[15] = sub_1BAA39EDC();
  v6[16] = sub_1BAA39ECC();
  v6[17] = sub_1BAA39ECC();
  v8 = sub_1BAA39E8C();
  v6[18] = v8;
  v6[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA86FB78, v8, v7);
}

uint64_t sub_1BA86FB78()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE90, &qword_1BAA4D918);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1BA86FCF0;

  return v7(v1, v2);
}

uint64_t sub_1BA86FCF0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BA86FE18, v5, v4);
}

uint64_t sub_1BA86FE18()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA86FEA4, v5, v4);
}

uint64_t sub_1BA86FEA4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  byte_1EBC0EE89 = v1;
  v4(v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BA86FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[25] = sub_1BAA39EDC();
  v7[26] = sub_1BAA39ECC();
  v7[27] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA86FFD4, v9, v8);
}

uint64_t sub_1BA86FFD4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];

  v5 = objc_opt_self();
  sub_1BA871864();
  v6 = sub_1BAA39FCC();
  v0[6] = sub_1BA8718B0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA86FA64;
  v0[5] = &block_descriptor_8;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  LOBYTE(v4) = [v5 registerWithOptions:0 queue:v6 handler:v7];
  *(v0 + 272) = v4;
  _Block_release(v7);

  byte_1EBC0EE88 = v4;
  v10 = sub_1BAA39E8C();
  v0[28] = v10;
  v0[29] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BA87014C, v10, v9);
}

uint64_t sub_1BA87014C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  swift_beginAccess();
  *(v2 + 16) = v1;
  if (v1)
  {
    v3 = *(v0 + 200);
    *(v0 + 240) = sub_1BAA39ECC();
    v5 = sub_1BAA39E8C();
    *(v0 + 248) = v5;
    *(v0 + 256) = v4;

    return MEMORY[0x1EEE6DFA0](sub_1BA870244, v5, v4);
  }

  else
  {
    v6 = *(v0 + 208);

    v7 = *(v0 + 192);
    (*(v0 + 184))(0);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1BA870244()
{
  sub_1BA8517C0(v0[22] + 16, (v0 + 13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE90, &qword_1BAA4D918);
  swift_dynamicCast();
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1BA8703BC;

  return v7(v1, v2);
}

uint64_t sub_1BA8703BC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 273) = a1;

  v4 = *(v2 + 256);
  v5 = *(v2 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BA8704E4, v5, v4);
}

uint64_t sub_1BA8704E4()
{
  v1 = v0[30];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[28];
  v3 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1BA870550, v2, v3);
}

uint64_t sub_1BA870550()
{
  v1 = *(v0 + 273);
  v2 = *(v0 + 208);

  byte_1EBC0EE89 = v1;
  v3 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 273));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BA870630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1BAA39EDC();
  v7[16] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[17] = v9;
  v7[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA8706CC, v9, v8);
}