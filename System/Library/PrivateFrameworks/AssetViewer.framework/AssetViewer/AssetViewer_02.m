uint64_t sub_241261CB8()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

uint64_t sub_241261D50()
{
  sub_241353CCC();
}

uint64_t sub_241261DD4()
{
  sub_241354ADC();
  sub_241353CCC();

  return sub_241354B1C();
}

void sub_241261E74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64657473656ELL;
  if (v2 != 1)
  {
    v5 = 0x7974696C616572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2053403509;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL AssetLoader.FileMetadata.isUSDZPlus.getter()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  if (!v0[16])
  {
LABEL_6:

    return v2 != 2 || v3 != 2;
  }

  v4 = sub_24135497C();

  if ((v4 & 1) == 0)
  {
    if (v1 == 2)
    {
      v5 = sub_24135497C();

      result = 0;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      return v2 != 2 || v3 != 2;
    }

    goto LABEL_6;
  }

  return v2 != 2 || v3 != 2;
}

uint64_t AssetLoader.FileMetadata.description.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  if (v1 != 2)
  {
    if (v1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x245CE20D0](v9, v10);

    v4 = 0;
    v3 = 0xE000000000000000;
    if (v2 != 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = 0xE100000000000000;
    v8 = 63;
    goto LABEL_18;
  }

  v3 = 0xE100000000000000;
  v4 = 63;
  if (v2 == 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x245CE20D0](v5, v6);

  v8 = 0;
  v7 = 0xE000000000000000;
LABEL_18:
  sub_2413545EC();
  MEMORY[0x245CE20D0](0x74654D656C69463CLL, 0xEF2E206174616461);
  sub_2413546CC();
  MEMORY[0x245CE20D0](0x616C506F74756120, 0xEA00000000003A79);
  MEMORY[0x245CE20D0](v4, v3);

  MEMORY[0x245CE20D0](0x6974616D696E6120, 0xEF3A706F6F4C6E6FLL);
  MEMORY[0x245CE20D0](v8, v7);

  MEMORY[0x245CE20D0](0x737265564C424920, 0xEC0000003A6E6F69);
  v11 = sub_24135491C();
  MEMORY[0x245CE20D0](v11);

  return 0;
}

uint64_t sub_24126228C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = a1[5];
  v21[4] = a1[4];
  v21[5] = v11;
  v22[0] = a1[6];
  *(v22 + 9) = *(a1 + 105);
  v12 = a1[1];
  v21[0] = *a1;
  v21[1] = v12;
  v13 = a1[3];
  v21[2] = a1[2];
  v21[3] = v13;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v14 = qword_27E53A740;
  v15 = sub_241353EEC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = qword_27E537D00;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27E53A738;
  v18 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = 9;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;

  sub_241327238(0, 0, v10, &unk_241366D40, v19);

  return a4(v21);
}

uint64_t sub_2412624BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_24135164C();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  v8 = sub_24135152C();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  sub_241353ECC();
  v6[44] = sub_241353EBC();
  v10 = sub_241353E8C();
  v6[45] = v10;
  v6[46] = v9;

  return MEMORY[0x2822009F8](sub_241262610, v10, v9);
}

uint64_t sub_241262610()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[35];
  sub_241352C5C();
  v5 = *(v2 + 16);
  v0[47] = v5;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_241262704;
  v7 = v0[43];

  return MEMORY[0x282129AA0](v7, 0, 0);
}

uint64_t sub_241262704(uint64_t a1)
{
  v3 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  v4 = v3[45];
  v5 = v3[46];
  if (v1)
  {
    v6 = sub_241262C50;
  }

  else
  {
    v6 = sub_241262818;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_241262818()
{
  v43 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  sub_24135163C();
  v4 = sub_2413515FC();
  v33 = v5;
  v34 = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_27E537C60 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 400);
  v32 = *(v0 + 376);
  v7 = *(v0 + 336);
  v35 = *(v0 + 288);
  v30 = *(v0 + 280);
  v31 = *(v0 + 328);
  v8 = xmmword_27E541898;
  v9 = qword_27E5418A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_241365C30;
  *(v10 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A60);
  v11 = *(sub_241351DEC() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_241365EA0;
  v14 = (v13 + v12);
  *v14 = xmmword_241365E70;
  v14[1] = xmmword_241364640;
  v14[2] = xmmword_241365EE0;
  v14[3] = xmmword_241365D00;
  (*(v11 + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_241365EA0;
  v32(v16 + v15, v30, v31);

  v17 = sub_2412452E4(MEMORY[0x277D84F90]);
  *(v0 + 272) = 1;
  *(v0 + 144) = v34;
  *(v0 + 152) = v33;
  *(v0 + 160) = 512;
  *(v0 + 162) = 2;
  *(v0 + 168) = 1;
  *(v0 + 176) = v8;
  *(v0 + 192) = v9;
  *(v0 + 208) = v10;
  *(v0 + 216) = v13;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = *(v0 + 272);
  *(v0 + 248) = v16;
  *(v0 + 256) = v17;
  sub_24127C094(v0 + 144);
  v18 = *(v0 + 224);
  v40 = *(v0 + 208);
  v41 = v18;
  v42[0] = *(v0 + 240);
  *(v42 + 9) = *(v0 + 249);
  v19 = *(v0 + 160);
  v36 = *(v0 + 144);
  v37 = v19;
  v20 = *(v0 + 192);
  v38 = *(v0 + 176);
  v39 = v20;
  v35(&v36);
  v21 = v41;
  *(v0 + 80) = v40;
  *(v0 + 96) = v21;
  *(v0 + 112) = v42[0];
  *(v0 + 121) = *(v42 + 9);
  v22 = v37;
  *(v0 + 16) = v36;
  *(v0 + 32) = v22;
  v23 = v39;
  *(v0 + 48) = v38;
  *(v0 + 64) = v23;
  sub_241246278(v0 + 16, &qword_27E538348);
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v24 = sub_241352FFC();
  __swift_project_value_buffer(v24, qword_27E5384A0);
  v25 = sub_241352FDC();
  v26 = sub_2413540DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_241215000, v25, v26, "Loaded via Entity.init", v27, 2u);
    MEMORY[0x245CE4870](v27, -1, -1);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_241262C50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241262CC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v10 = qword_27E537B10;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_241352FFC();
  __swift_project_value_buffer(v11, qword_27E5384A0);
  v12 = sub_241352FDC();
  v13 = sub_2413540DC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [objc_opt_self() currentThread];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_241215000, v12, v13, "Using legacy SceneImport loading, Thread: %@", v14, 0xCu);
    sub_241246278(v15, &unk_27E539B90);
    MEMORY[0x245CE4870](v15, -1, -1);
    MEMORY[0x245CE4870](v14, -1, -1);
  }

  sub_241274E34(a1, a2, a3, a4, a5);
  swift_bridgeObjectRelease_n();
}

uint64_t sub_241262E74(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E5384A0);
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = [objc_opt_self() currentThread];
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_241215000, v7, v8, "Using legacy SceneImport loading, Thread: %@", v9, 0xCu);
    sub_241246278(v10, &unk_27E539B90);
    MEMORY[0x245CE4870](v10, -1, -1);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  return sub_241262FEC(a1, a2, a3);
}

uint64_t sub_241262FEC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v140 = a2;
  v141 = a3;
  v166 = *MEMORY[0x277D85DE8];
  Information = type metadata accessor for AssetLoader.LoadInformation();
  MEMORY[0x28223BE20](Information);
  v5 = v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_24135152C();
  v6 = *(v153 - 8);
  v7 = MEMORY[0x28223BE20](v153);
  v134 = v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v152 = v129 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v154 = v129 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v150 = v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v148 = v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v129 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v137 = v129 - v21;
  v133 = v22;
  MEMORY[0x28223BE20](v20);
  v138 = v129 - v23;
  v24 = sub_2413515EC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(MEMORY[0x277D778A8]);
  v29 = sub_24135144C();
  v30 = [v28 initSceneFromURL_];

  if (!v30)
  {
    goto LABEL_12;
  }

  v151 = v6;
  v131 = v5;
  v132 = a1;
  v31 = v30;
  v32 = [v30 rootNode];
  v33 = sub_241353BDC();
  v34 = sub_241353BDC();
  v35 = [v32 dictionaryMetadataWithKey:v33 dictionaryKey:v34];

  if (!v35)
  {

    a1 = v132;
LABEL_12:
    LOBYTE(v164[0]) = 0;
    return sub_241267EFC(a1, v164, v140, v141);
  }

  v130 = v31;
  v36 = [v35 resourcePathArray];
  sub_241246158(0, &qword_27E538570);
  v139 = sub_241353E2C();

  sub_2413515DC();
  sub_2413515BC();
  v38 = v37;
  (*(v25 + 8))(v27, v24);
  v39 = v38 * 1000.0;
  if (COERCE__INT64(fabs(v38 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
  }

  else if (v39 < 9.22337204e18)
  {
    v31 = v35;
    v149 = v19;
    *&v164[0] = v39;
    v40 = sub_24135491C();
    v42 = sub_2412720D0(8uLL, v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    MEMORY[0x245CE2060](v42, v44, v46, v48);

    if (qword_27E537BD8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_7:
  *&v164[0] = qword_27E539620;
  v49 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v138);

  *&v164[0] = qword_27E539620;
  v50 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  v51 = v149;
  sub_24135146C();

  v52 = v151;
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v53 = sub_241352FFC();
  v54 = __swift_project_value_buffer(v53, qword_27E5384A0);
  v55 = v148;
  v56 = v51;
  v57 = v153;
  v146 = *(v52 + 16);
  v147 = v52 + 16;
  v146(v148, v56, v153);
  v129[1] = v54;
  v58 = sub_241352FDC();
  v59 = sub_2413540DC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v164[0] = v61;
    *v60 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260]);
    v62 = sub_24135491C();
    v63 = v55;
    v65 = v64;
    v148 = *(v52 + 8);
    (v148)(v63, v57);
    v66 = sub_2412DDC2C(v62, v65, v164);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_241215000, v58, v59, "Unzipping to '%s'", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x245CE4870](v61, -1, -1);
    MEMORY[0x245CE4870](v60, -1, -1);
  }

  else
  {

    v148 = *(v52 + 8);
    (v148)(v55, v57);
  }

  v68 = v150;
  v69 = [objc_opt_self() defaultManager];
  v70 = v149;
  v71 = sub_24135144C();
  *&v164[0] = 0;
  v72 = [v69 createDirectoryAtURL:v71 withIntermediateDirectories:1 attributes:0 error:v164];

  v73 = *&v164[0];
  if (!v72)
  {
    v92 = *&v164[0];

    v93 = sub_24135139C();

    swift_willThrow();
    goto LABEL_34;
  }

  v74 = v139;
  if (v139 >> 62)
  {
    v75 = sub_2413544EC();
  }

  else
  {
    v75 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v151;
  v129[0] = v31;
  if (!v75)
  {
    v79 = v73;
    v142 = 0;
LABEL_36:
    MEMORY[0x28223BE20](v79);
    v129[-2] = v70;
    sub_24125F980(sub_241280800, &v129[-4], v74);
    v98 = v97;

    v99 = v98;
    v145 = *(v98 + 2);
    if (!v145)
    {
      v101 = MEMORY[0x277D84F90];
LABEL_51:

      v114 = sub_241352FDC();
      v115 = sub_2413540DC();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 134217984;
        *(v116 + 4) = *(v101 + 16);

        _os_log_impl(&dword_241215000, v114, v115, "Found %ld USDZ files", v116, 0xCu);
        MEMORY[0x245CE4870](v116, -1, -1);
      }

      else
      {
      }

      v117 = v151;
      v119 = v140;
      v118 = v141;
      v120 = v131;
      sub_24127BF00(v132, v131);
      v121 = *(Information + 40);

      *(v120 + v121) = v101;
      LOBYTE(v164[0]) = 1;
      v122 = v134;
      v123 = v153;
      v146(v134, v70, v153);
      v124 = (*(v117 + 80) + 16) & ~*(v117 + 80);
      v125 = (v133 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
      v126 = swift_allocObject();
      (*(v117 + 32))(v126 + v124, v122, v123);
      v127 = (v126 + v125);
      *v127 = v119;
      v127[1] = v118;

      sub_241267EFC(v120, v164, sub_24128084C, v126);

      v128 = v148;
      (v148)(v137, v123);
      v128(v138, v123);
      sub_241244A8C(v120);
      return (v128)(v149, v123);
    }

    v100 = 0;
    v144 = v151 + 8;
    v150 = (v151 + 32);
    v101 = MEMORY[0x277D84F90];
    v102 = v153;
    while (1)
    {
      if (v100 >= *(v99 + 2))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v103 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v31 = v99;
      v104 = *(v151 + 72);
      v146(v154, &v99[v103 + v104 * v100], v102);
      sub_2413513FC();
      v105 = sub_241353C8C();
      v107 = v106;

      if (v105 == 2053403509 && v107 == 0xE400000000000000)
      {
        break;
      }

      v108 = sub_24135497C();

      if (v108)
      {
        goto LABEL_45;
      }

      (v148)(v154, v102);
LABEL_39:
      ++v100;
      v70 = v149;
      v99 = v31;
      if (v145 == v100)
      {
        goto LABEL_51;
      }
    }

LABEL_45:
    v109 = *v150;
    (*v150)(v152, v154, v102);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v164[0] = v101;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2412DE254(0, *(v101 + 16) + 1, 1);
      v101 = *&v164[0];
    }

    v112 = *(v101 + 16);
    v111 = *(v101 + 24);
    if (v112 >= v111 >> 1)
    {
      sub_2412DE254(v111 > 1, v112 + 1, 1);
      v101 = *&v164[0];
    }

    *(v101 + 16) = v112 + 1;
    v113 = v101 + v103 + v112 * v104;
    v102 = v153;
    v109(v113, v152, v153);
    goto LABEL_39;
  }

  v77 = objc_opt_self();
  v150 = (v74 & 0xC000000000000001);
  v136 = v74 & 0xFFFFFFFFFFFFFF8;
  v144 = v76 + 8;
  v145 = v77;
  v78 = v73;
  v31 = 0;
  v142 = 0;
  v143 = v75;
  while (1)
  {
    if (v150)
    {
      v80 = MEMORY[0x245CE29C0](v31, v74);
    }

    else
    {
      if (v31 >= *(v136 + 16))
      {
        goto LABEL_58;
      }

      v80 = *(v74 + 8 * v31 + 32);
    }

    v81 = v80;
    v82 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      goto LABEL_57;
    }

    v83 = [v80 path];
    sub_241353C0C();

    sub_24135146C();

    v84 = [v81 resolvedPath];
    if (!v84)
    {
      sub_241353C0C();
      v84 = sub_241353BDC();
    }

    v85 = [v145 resourceWithPath_];

    if (v85)
    {
      break;
    }

    (v148)(v68, v153);
LABEL_20:

    ++v31;
    if (v82 == v143)
    {
      goto LABEL_36;
    }
  }

  v86 = [v85 dataNoCopy];
  if (!v86)
  {
    (v148)(v68, v153);

    goto LABEL_20;
  }

  v87 = v86;
  v88 = sub_24135154C();
  v90 = v89;

  v91 = v142;
  sub_24135155C();
  v142 = v91;
  if (!v91)
  {
    (v148)(v68, v153);
    sub_24125D520(v88, v90);

    v81 = v85;
    v74 = v139;
    goto LABEL_20;
  }

  (v148)(v68, v153);

  sub_24125D520(v88, v90);

  v31 = v129[0];
  v93 = v142;
LABEL_34:
  *&v162[0] = v93;
  sub_24127BE04(v162);
  v159 = v162[4];
  v160 = v162[5];
  v161[0] = v163[0];
  *(v161 + 9) = *(v163 + 9);
  v155 = v162[0];
  v156 = v162[1];
  v157 = v162[2];
  v158 = v162[3];
  v94 = v93;
  v140(&v155);

  v164[4] = v159;
  v164[5] = v160;
  v165[0] = v161[0];
  *(v165 + 9) = *(v161 + 9);
  v164[0] = v155;
  v164[1] = v156;
  v164[2] = v157;
  v164[3] = v158;
  sub_241246278(v164, &qword_27E538348);
  v95 = v153;
  v96 = v148;
  (v148)(v137, v153);
  v96(v138, v95);
  return (v96)(v70, v95);
}

uint64_t sub_241263F88(uint64_t a1)
{
  v73 = a1;
  v2 = sub_241353ABC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v70 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v71 = &v70 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v70 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v70 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v72 = v1;
  v19 = sub_241353AEC();

  MEMORY[0x245CE1E60](0x79616C506F747561, 0xE800000000000000);
  v75 = v19;
  sub_241353B2C();
  v74 = *(v3 + 8);
  v74(v18, v2);
  v20 = v76;
  if (v76 != 2)
  {
    *(v73 + 17) = v76;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v21 = sub_241352FFC();
    __swift_project_value_buffer(v21, qword_27E5384A0);
    v22 = sub_241352FDC();
    v23 = sub_2413540DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v20 & 1;
      _os_log_impl(&dword_241215000, v22, v23, "[AssetLoader] USDZ+ specifies shouldAutoPlay = %{BOOL}d", v24, 8u);
      MEMORY[0x245CE4870](v24, -1, -1);
    }
  }

  MEMORY[0x245CE1E60](0x6B63616279616C70, 0xEC00000065646F4DLL);
  sub_241353B2C();

  v25 = v74;
  v74(v16, v2);
  if (v77)
  {
    if (v76 == 1886351212 && v77 == 0xE400000000000000)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_24135497C();
    }

    v28 = v73;

    *(v28 + 18) = v26 & 1;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v29 = sub_241352FFC();
    __swift_project_value_buffer(v29, qword_27E5384A0);
    v30 = sub_241352FDC();
    v31 = sub_2413540DC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = 136315138;
      if (v26)
      {
        v34 = 5457241;
      }

      else
      {
        v34 = 20302;
      }

      if (v26)
      {
        v35 = 0xE300000000000000;
      }

      else
      {
        v35 = 0xE200000000000000;
      }

      v36 = sub_2412DDC2C(v34, v35, &v76);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_241215000, v30, v31, "[AssetLoader] USDZ+ specifies shouldAnimationLoop = %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245CE4870](v33, -1, -1);
      MEMORY[0x245CE4870](v32, -1, -1);
    }

LABEL_26:

    v25 = v74;
    goto LABEL_41;
  }

  MEMORY[0x245CE1E60](0x6B63616279616C70, 0xEC00000065646F4DLL);
  sub_241353AFC();
  v25(v13, v2);
  if (v77)
  {
    if (v76 == 1886351212 && v77 == 0xE400000000000000)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_24135497C();
    }

    v28 = v73;

    *(v28 + 18) = v27 & 1;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v38 = sub_241352FFC();
    __swift_project_value_buffer(v38, qword_27E5384A0);
    v39 = sub_241352FDC();
    v40 = sub_2413540DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76 = v42;
      *v41 = 136315138;
      if (v27)
      {
        v43 = 5457241;
      }

      else
      {
        v43 = 20302;
      }

      if (v27)
      {
        v44 = 0xE300000000000000;
      }

      else
      {
        v44 = 0xE200000000000000;
      }

      v45 = sub_2412DDC2C(v43, v44, &v76);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_241215000, v39, v40, "[AssetLoader] USDZ customLayerData specifies shouldAnimationLoop = %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x245CE4870](v42, -1, -1);
      v46 = v41;
      v25 = v74;
      MEMORY[0x245CE4870](v46, -1, -1);
    }
  }

  else
  {
    MEMORY[0x245CE1E60](0xD000000000000016, 0x800000024135EC60);
    sub_241353AFC();
    v25(v10, v2);
    v37 = v76;
    if (v76 != 2)
    {
      v28 = v73;
      *(v73 + 18) = v76;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v63 = sub_241352FFC();
      __swift_project_value_buffer(v63, qword_27E5384A0);
      v30 = sub_241352FDC();
      v64 = sub_2413540DC();
      if (os_log_type_enabled(v30, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136315138;
        if (v37)
        {
          v67 = 5457241;
        }

        else
        {
          v67 = 20302;
        }

        if (v37)
        {
          v68 = 0xE300000000000000;
        }

        else
        {
          v68 = 0xE200000000000000;
        }

        v69 = sub_2412DDC2C(v67, v68, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_241215000, v30, v64, "[AssetLoader] USDZ customLayerData specifies shouldAnimationLoop = %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x245CE4870](v66, -1, -1);
        MEMORY[0x245CE4870](v65, -1, -1);
      }

      goto LABEL_26;
    }

    v28 = v73;
  }

LABEL_41:
  v47 = v71;
  MEMORY[0x245CE1E60](0xD000000000000019, 0x800000024135EC80);
  sub_241353AFC();
  v25(v47, v2);
  if ((v77 & 1) == 0)
  {
    v59 = v76;
    *(v28 + 24) = v76;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v60 = sub_241352FFC();
    __swift_project_value_buffer(v60, qword_27E5384A0);
    v51 = sub_241352FDC();
    v61 = sub_2413540DC();
    if (!os_log_type_enabled(v51, v61))
    {
      goto LABEL_52;
    }

    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v59;
    v54 = "[AssetLoader] USDZ customLayerData specifies Apple:preferredIblVersion = %ld";
    v55 = v61;
    v56 = v51;
    v57 = v53;
    v58 = 12;
    goto LABEL_51;
  }

  v48 = v70;
  MEMORY[0x245CE1E60](0xD000000000000019, 0x800000024135EC80);
  sub_241353AFC();
  v25(v48, v2);
  if ((v76 & 0x100000000) == 0)
  {
    v49 = v76;
    *(v28 + 24) = v76;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v50 = sub_241352FFC();
    __swift_project_value_buffer(v50, qword_27E5384A0);
    v51 = sub_241352FDC();
    v52 = sub_2413540DC();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_52;
    }

    v53 = swift_slowAlloc();
    *v53 = 67109120;
    *(v53 + 4) = v49;
    v54 = "[AssetLoader] USDZ customLayerData specifies (Int32) Apple:preferredIblVersion = %d";
    v55 = v52;
    v56 = v51;
    v57 = v53;
    v58 = 8;
LABEL_51:
    _os_log_impl(&dword_241215000, v56, v55, v54, v57, v58);
    MEMORY[0x245CE4870](v53, -1, -1);
LABEL_52:
  }
}

uint64_t sub_2412649DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v31 = a8;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v30 = a1;
  v28 = a6;
  v29 = a9;
  v12 = sub_24135152C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v16 = *(Information - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](Information - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a7;
  sub_24127BF00(a6, v18);
  (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v13 + 80) + v21 + 8) & ~*(v13 + 80);
  v23 = swift_allocObject();
  sub_241244A20(v18, v23 + v19);
  v24 = (v23 + v20);
  v25 = v30;
  v26 = v29;
  *v24 = v31;
  v24[1] = v26;
  *(v23 + v21) = v25;
  (*(v13 + 32))(v23 + v22, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_24127D500(v28, &v35, v32, v33, v34, sub_24127F2AC);
}

uint64_t sub_241264C24(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v83 = a5;
  v84 = a4;
  v85 = a3;
  v87 = a2;
  v7 = sub_2413538CC();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2413538FC();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24135152C();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = v11;
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v68 - v13;
  v15 = sub_24135164C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2413517BC();
  v86 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v97 = *a1;
  v98 = v22;
  v99 = a1[2];
  v100 = *(a1 + 6);
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v23 = sub_241352FFC();
  __swift_project_value_buffer(v23, qword_27E5384A0);
  sub_241255B50(&v97, &v93);
  v24 = sub_241352FDC();
  v25 = sub_2413540DC();
  sub_241244AE8(&v97);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v70 = v16;
    v27 = v26;
    v28 = swift_slowAlloc();
    v71 = v15;
    v29 = v28;
    v88[0] = v28;
    *v27 = 136315138;
    v89 = v97;
    v90 = v98;
    v91 = v99;
    v92 = v100;
    sub_241255B50(&v97, &v93);
    v30 = AssetLoader.FileMetadata.description.getter();
    v69 = v18;
    v31 = v19;
    v32 = v14;
    v34 = v33;
    v93 = v89;
    v94 = v90;
    v95 = v91;
    v96 = v92;
    sub_241244AE8(&v93);
    v35 = sub_2412DDC2C(v30, v34, v88);
    v14 = v32;
    v19 = v31;
    v18 = v69;

    *(v27 + 4) = v35;
    _os_log_impl(&dword_241215000, v24, v25, "[AssetLoader] fileMetadata %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v36 = v29;
    v15 = v71;
    MEMORY[0x245CE4870](v36, -1, -1);
    v37 = v27;
    v16 = v70;
    MEMORY[0x245CE4870](v37, -1, -1);
  }

  sub_241352DAC();
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v39 = *(v87 + *(Information + 20));
  *(&v94 + 1) = MEMORY[0x277D841D8];
  *&v93 = v39;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&v93);
  v40 = sub_241352CAC();
  (*(v86 + 8))(v21, v19);
  sub_24135163C();
  v41 = sub_2413515FC();
  v43 = v42;
  (*(v16 + 8))(v18, v15);
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v44 = qword_27E53A740;
  v45 = sub_241353EEC();
  (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
  v46 = qword_27E537D00;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_27E53A738;
  v48 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  *(v49 + 32) = v44;
  *(v49 + 40) = 3;
  *(v49 + 48) = v41;
  *(v49 + 56) = v43;

  sub_241327238(0, 0, v14, &unk_241366D20, v49);

  result = sub_241352D9C();
  if (result)
  {
    sub_241351ECC();
    sub_241351C6C();

    v51 = sub_241351E6C();
    v86 = v40;
    v52 = v79;
    v53 = v80;
    v54 = v81;
    (*(v80 + 16))(v79, v82, v81);
    v55 = (*(v53 + 80) + 120) & ~*(v53 + 80);
    v56 = swift_allocObject();
    v57 = v98;
    *(v56 + 56) = v97;
    *(v56 + 16) = v51;
    *(v56 + 24) = v41;
    v59 = v84;
    v58 = v85;
    *(v56 + 32) = v43;
    *(v56 + 40) = v58;
    *(v56 + 48) = v59;
    *(v56 + 72) = v57;
    *(v56 + 88) = v99;
    v60 = v83;
    *(v56 + 104) = v100;
    *(v56 + 112) = v60;
    (*(v53 + 32))(v56 + v55, v52, v54);
    *&v91 = sub_24127F3A8;
    *(&v91 + 1) = v56;
    *&v89 = MEMORY[0x277D85DD0];
    *(&v89 + 1) = 1107296256;
    *&v90 = sub_2412F49E8;
    *(&v90 + 1) = &block_descriptor_267;
    v61 = _Block_copy(&v89);
    sub_241255B50(&v97, &v93);

    sub_241351E9C();
    _Block_release(v61);

    sub_241351EBC();
    v62 = *(v87 + *(Information + 28));
    if (v62)
    {
      v63 = v62;
      *&v95 = sub_24127F42C;
      *(&v95 + 1) = v51;
      *&v93 = MEMORY[0x277D85DD0];
      *(&v93 + 1) = 1107296256;
      *&v94 = sub_2412D5698;
      *(&v94 + 1) = &block_descriptor_270;
      v64 = _Block_copy(&v93);

      v65 = v72;
      sub_2413538DC();
      *&v89 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
      sub_24123D370(&qword_27E539880, &unk_27E538930);
      v66 = v74;
      v67 = v77;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v65, v66, v64);

      _Block_release(v64);

      (*(v76 + 8))(v66, v67);
      (*(v73 + 8))(v65, v75);
    }

    else
    {
      sub_241351E8C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2412656EC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(int8x16_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52[0] = a8;
  v52[1] = a6;
  v53 = a5;
  v54 = a2;
  v13 = *(a7 + 16);
  v76 = *a7;
  v77 = v13;
  v78 = *(a7 + 32);
  v79 = *(a7 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v52 - v15;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v17 = qword_27E53A740;
  v18 = sub_241353EEC();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = qword_27E537D00;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27E53A738;
  v21 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 32) = v17;
  *(v22 + 40) = 3;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;

  sub_241327238(0, 0, v16, &unk_241366D28, v22);

  if (a1)
  {
    if ([objc_opt_self() forceUseOldProcessLoadedEntities])
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v23 = sub_241352FFC();
      __swift_project_value_buffer(v23, qword_27E5384A0);
      v24 = sub_241352FDC();
      v25 = sub_2413540DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_241215000, v24, v25, "force using old processLoadedEntities", v26, 2u);
        MEMORY[0x245CE4870](v26, -1, -1);
      }

      v27 = *(a7 + 16);
      v70 = *a7;
      v71 = v27;
      v72[0] = *(a7 + 32);
      *&v72[1] = *(a7 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_241365C30;
      *(v28 + 32) = v52[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
      v29 = sub_24135152C();
      v30 = *(v29 - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_241365EA0;
      (*(v30 + 16))(v32 + v31, a9, v29);

      sub_241265FA4(&v70, v28, v32, &v63);

      v53(&v63);
      v73 = v67;
      v74 = v68;
      v75[0] = v69[0];
      *(v75 + 9) = *(v69 + 9);
      v70 = v63;
      v71 = v64;
      v33 = v65;
      v34 = v66;
    }

    else
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v46 = sub_241352FFC();
      __swift_project_value_buffer(v46, qword_27E5384A0);
      v47 = sub_241352FDC();
      v48 = sub_2413540DC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_241215000, v47, v48, "using new processLoadedEntitiesCDM", v49, 2u);
        MEMORY[0x245CE4870](v49, -1, -1);
      }

      v50 = *(a7 + 16);
      v63 = *a7;
      v64 = v50;
      v65 = *(a7 + 32);
      *&v66 = *(a7 + 48);
      sub_241267118(v63.i64, v52[0], &v70);
      v63 = v76;
      v64 = v77;
      v65 = v78;
      *&v66 = v79;
      v55 = v72[0];
      v67 = v70;
      v68 = v71;
      LOBYTE(v69[0]) = v72[0];
      *(v69 + 8) = *(v72 + 8);
      sub_24127C094(&v63);
      v60 = v67;
      v61 = v68;
      v62[0] = v69[0];
      *(v62 + 9) = *(v69 + 9);
      v56 = v63;
      v57 = v64;
      v58 = v65;
      v59 = v66;
      sub_241255B50(a7, &v70);
      v53(&v56);
      v73 = v60;
      v74 = v61;
      v75[0] = v62[0];
      *(v75 + 9) = *(v62 + 9);
      v70 = v56;
      v71 = v57;
      v33 = v58;
      v34 = v59;
    }

    v72[0] = v33;
    v72[1] = v34;
    sub_241246278(&v70, &qword_27E538348);
    *&v72[0] = nullsub_6;
    *(&v72[0] + 1) = 0;
    v70.i64[0] = MEMORY[0x277D85DD0];
    v70.i64[1] = 1107296256;
    *&v71 = sub_2412F49E8;
    *(&v71 + 1) = &block_descriptor_281;
    v45 = &v70;
  }

  else
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v35 = sub_241352FFC();
    __swift_project_value_buffer(v35, qword_27E5384A0);
    v36 = sub_241352FDC();
    v37 = sub_2413540BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63.i64[0] = v39;
      *v38 = 136315138;
      v70.i64[0] = 0xD000000000000022;
      v70.i64[1] = 0x800000024135EDF0;
      *&v71 = 0;
      BYTE8(v71) = 0;
      sub_241255C30();
      v40 = sub_241354A3C();
      v42 = sub_2412DDC2C(v40, v41, v63.i64);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_241215000, v36, v37, "%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x245CE4870](v39, -1, -1);
      MEMORY[0x245CE4870](v38, -1, -1);
    }

    sub_241255C30();
    v43 = swift_allocError();
    *v44 = 0xD000000000000022;
    *(v44 + 8) = 0x800000024135EDF0;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    v63.i64[0] = v43;
    sub_24127BE04(&v63);
    v60 = v67;
    v61 = v68;
    v62[0] = v69[0];
    *(v62 + 9) = *(v69 + 9);
    v56 = v63;
    v57 = v64;
    v58 = v65;
    v59 = v66;
    v53(&v56);
    v73 = v60;
    v74 = v61;
    v75[0] = v62[0];
    *(v75 + 9) = *(v62 + 9);
    v70 = v56;
    v71 = v57;
    v72[0] = v58;
    v72[1] = v59;
    sub_241246278(&v70, &qword_27E538348);
    *&v58 = nullsub_6;
    *(&v58 + 1) = 0;
    v56.i64[0] = MEMORY[0x277D85DD0];
    v56.i64[1] = 1107296256;
    *&v57 = sub_2412F49E8;
    *(&v57 + 1) = &block_descriptor_278;
    v45 = &v56;
  }

  v51 = _Block_copy(v45);
  sub_241351E9C();
  _Block_release(v51);
}

void sub_241265FA4(int8x16_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, int8x16_t *a4@<X8>)
{
  v123 = a3;
  v7 = sub_241351D5C();
  v120 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v119 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_241351DEC();
  v118 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v117 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_24135173C();
  v10 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v106 - v14;
  v16 = sub_24135164C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v141 = *a1;
  v142 = v20;
  v143 = a1[2];
  v144 = a1[3].i64[0];
  v132 = a2;
  if (a2 >> 62)
  {
LABEL_53:
    v21 = sub_2413544EC();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_54:
    v133.i64[0] = 0;
    v133.i64[1] = 0xE000000000000000;
    sub_2413545EC();

    v133.i64[0] = 0xD000000000000020;
    v133.i64[1] = 0x800000024135ECD0;
    v98 = sub_24135152C();
    v99 = MEMORY[0x245CE21F0](v123, v98);
    MEMORY[0x245CE20D0](v99);

    v100 = v133;
    sub_241255C30();
    v101 = swift_allocError();
    *v102 = v100;
    v102[1].i64[0] = 0;
    v102[1].i8[8] = 0;
    v133.i64[0] = v101;
    sub_24127BE04(&v133);
    v103 = v138;
    a4[4] = v137;
    a4[5] = v103;
    a4[6] = *v139;
    *(a4 + 105) = *&v139[9];
    v104 = v134;
    *a4 = v133;
    a4[1] = v104;
    v105 = v136;
    a4[2] = v135;
    a4[3] = v105;
    return;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_54;
  }

LABEL_3:
  v106 = v7;
  sub_24135163C();
  v121 = sub_2413515FC();
  v23 = v22;
  (*(v17 + 8))(v19, v16);
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v24 = qword_27E53A740;
  v25 = sub_241353EEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v115 = v25;
  v114 = v27;
  v113 = v26 + 56;
  (v27)(v15, 1, 1);
  v28 = qword_27E537D00;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_27E53A738;
  v30 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v111 = v30;
  v116 = v24;
  *(v31 + 32) = v24;
  *(v31 + 40) = 4;
  *(v31 + 48) = v121;
  *(v31 + 56) = v23;
  v112 = v29;

  sub_241327238(0, 0, v15, &unk_241366C78, v31);

  v127 = sub_24135255C();
  if (v21 >= 1)
  {
    v108 = v23;
    v109 = v15;
    v110 = a4;
    v33 = 0;
    v34 = v132;
    v131 = v132 & 0xC000000000000001;
    v126 = (v10 + 8);
    v7 = MEMORY[0x277D84F98];
    *&v32 = 136315138;
    v124 = v32;
    v125 = v21;
    do
    {
      if (v131)
      {
        v15 = MEMORY[0x245CE29C0](v33);
      }

      else
      {
        v15 = *(v34 + 8 * v33 + 32);
      }

      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v36 = sub_241352FFC();
      v37 = __swift_project_value_buffer(v36, qword_27E5384A0);

      v129 = v37;
      v38 = sub_241352FDC();
      v39 = sub_2413540DC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v133.i64[0] = v41;
        *v40 = v124;
        v140 = v15;
        sub_241352C5C();

        v42 = sub_241353C7C();
        v44 = sub_2412DDC2C(v42, v43, v133.i64);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_241215000, v38, v39, "processLoadedEntities, entity: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x245CE4870](v41, -1, -1);
        MEMORY[0x245CE4870](v40, -1, -1);
      }

      printHierarchy(entity:level:debugString:)(v15, 0, 0, 0xE000000000000000);
      v45 = swift_conformsToProtocol2();
      if (v45)
      {
        v10 = v45;
        swift_retain_n();
        v16 = v15;
      }

      else
      {
        sub_24135181C();
        swift_allocObject();
        v16 = sub_24135180C();
        swift_retain_n();
        sub_24135189C();

        v10 = MEMORY[0x277CDABD0];
      }

      v133.i64[0] = 0;
      v133.i64[1] = 0xE000000000000000;
      v140 = v15;
      v128 = sub_241352C5C();
      sub_2413546CC();
      sub_241353C9C();

      v46 = RESceneCreate();

      v134.i64[1] = MEMORY[0x277D841D8];
      v133.i64[0] = v46;
      sub_2413516EC();
      __swift_destroy_boxed_opaque_existential_0(&v133);
      v17 = sub_24135249C();
      (*v126)(v12, v130);
      sub_2413524EC();
      a4 = v47;
      swift_getObjectType();
      sub_24135244C();
      swift_unknownObjectRelease();
      sub_24135253C();

      if ((v7 & 0xC000000000000001) != 0)
      {
        if (v7 < 0)
        {
          v19 = v7;
        }

        else
        {
          v19 = (v7 & 0xFFFFFFFFFFFFFF8);
        }

        v48 = sub_2413544EC();
        if (__OFADD__(v48, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        v7 = sub_24126DB8C(v19, v48 + 1);
      }

      else
      {
      }

      ++v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133.i64[0] = v7;
      sub_2412A686C(v17, v15, isUniquelyReferenced_nonNull_native);

      v7 = v133.i64[0];
      sub_2413517EC();

      v34 = v132;
    }

    while (v125 != v33);
    v49 = v132;

    v51 = sub_24125FE48(v50);

    v53 = sub_241260218(v52);
    v125 = 0;

    v55 = sub_2413220E4(v54);

    if (v55)
    {
      v130 = sub_24135252C();
      v127 = v56;
      LODWORD(v126) = v57;
    }

    else
    {
      v130 = 0;
      v127 = 0;
      LODWORD(v126) = 1;
    }

    v58 = v122;

    v59 = sub_241352FDC();
    v60 = sub_2413540DC();

    v61 = os_log_type_enabled(v59, v60);
    v107 = v51;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v133.i64[0] = v63;
      *v62 = v124;
      v64 = MEMORY[0x245CE21F0](v49, v128);
      v66 = sub_2412DDC2C(v64, v65, v133.i64);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_241215000, v59, v60, "SceneInformation entities: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x245CE4870](v63, -1, -1);
      MEMORY[0x245CE4870](v62, -1, -1);
    }

    v67 = sub_241352FDC();
    v68 = sub_2413540DC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v140 = v70;
      *v69 = 136315394;
      v71 = MEMORY[0x245CE21F0](v53, v58);
      v73 = sub_2412DDC2C(v71, v72, &v140);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      if (v126)
      {
        v75 = -1;
      }

      else
      {
        v75 = 0;
      }

      v74.i64[1] = v127;
      v74.i64[0] = v130;
      v133 = vbslq_s8(vdupq_n_s32(v75), xmmword_241366910, v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
      sub_24123D370(&qword_27E539BA0, &unk_27E538B20);
      v76 = sub_2413549BC();
      v78 = sub_2412DDC2C(v76, v77, &v140);
      v58 = v122;

      *(v69 + 14) = v78;
      _os_log_impl(&dword_241215000, v67, v68, "SceneInformation anchorTypes: %s) gravity: %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v70, -1, -1);
      MEMORY[0x245CE4870](v69, -1, -1);
    }

    v79 = v120;
    v80 = v119;
    v81 = v116;
    v82 = v118;
    v83 = v117;
    if (v131)
    {
      MEMORY[0x245CE29C0](0, v132);
      if (!v53[2])
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      if (!v53[2])
      {
        goto LABEL_45;
      }
    }

    (*(v82 + 16))(v83, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v58);
    if (sub_24131487C(v83))
    {

      sub_24135192C();

      (*(v82 + 8))(v83, v58);
      goto LABEL_49;
    }

    (*(v82 + 8))(v83, v58);
LABEL_45:
    if (v107[2])
    {
      v84 = v106;
      (*(v79 + 16))(v80, v107 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v106);

      v85 = sub_241314B6C(v80);
      v86 = v115;
      v87 = v112;
      if (v85)
      {
        sub_24135192C();

        (*(v79 + 8))(v80, v84);
      }

      else
      {
        (*(v79 + 8))(v80, v84);
      }

      goto LABEL_51;
    }

LABEL_49:
    v86 = v115;
    v87 = v112;
LABEL_51:
    v88 = sub_24125FBC8(v7);

    v89 = v123;

    sub_241255B50(&v141, &v133);

    v133 = v141;
    v134 = v142;
    v135 = v143;
    LOBYTE(v140) = v126 & 1;
    v136.i64[0] = v144;
    v137.i64[0] = v88;
    v137.i64[1] = v53;
    v138.i64[0] = v130;
    v138.i64[1] = v127;
    v139[0] = v126 & 1;
    *&v139[8] = v89;
    *&v139[16] = MEMORY[0x277D84F98];
    sub_24127C094(&v133);
    v90 = v138;
    v91 = v110;
    v110[4] = v137;
    v91[5] = v90;
    v91[6] = *v139;
    *(v91 + 105) = *&v139[9];
    v92 = v134;
    *v91 = v133;
    v91[1] = v92;
    v93 = v136;
    v91[2] = v135;
    v91[3] = v93;
    v94 = v109;
    v114(v109, 1, 1, v86);
    v95 = swift_allocObject();
    v96 = v111;
    *(v95 + 16) = v87;
    *(v95 + 24) = v96;
    *(v95 + 32) = v81;
    *(v95 + 40) = 4;
    v97 = v108;
    *(v95 + 48) = v121;
    *(v95 + 56) = v97;

    sub_241327238(0, 0, v94, &unk_241366C80, v95);

    return;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_241267118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v83 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v68 - v6;
  v7 = sub_241351DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24135173C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v68 - v13;
  v16 = *a1;
  v15 = a1[1];
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  *&v73 = v10;
  v17 = qword_27E53A740;
  v18 = sub_241353EEC();
  v19 = *(v18 - 8);
  v77 = *(v19 + 56);
  v78 = v18;
  v76 = v19 + 56;
  v77(v14, 1, 1);
  v20 = qword_27E537D00;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_27E53A738;
  v22 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v74 = v22;
  v75 = v21;
  v84 = v17;
  *(v23 + 32) = v17;
  *(v23 + 40) = 4;
  *(v23 + 48) = v16;
  *(v23 + 56) = v15;

  sub_241327238(0, 0, v14, &unk_241366D30, v23);

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v24 = sub_241352FFC();
  v25 = __swift_project_value_buffer(v24, qword_27E5384A0);

  v26 = sub_241352FDC();
  v27 = sub_2413540DC();

  v28 = os_log_type_enabled(v26, v27);
  v81 = v14;
  v82 = v7;
  v79 = v16;
  v80 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v85 = a2;
    *&v86 = v30;
    *v29 = 136315138;
    sub_241352C5C();

    v31 = sub_241353C7C();
    v33 = sub_2412DDC2C(v31, v32, &v86);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_241215000, v26, v27, "start processLoadedEntitiesCDM, rootEntity: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x245CE4870](v30, -1, -1);
    MEMORY[0x245CE4870](v29, -1, -1);
  }

  v34 = v73;

  v35 = sub_241352FDC();
  v36 = sub_2413540DC();

  v37 = os_log_type_enabled(v35, v36);
  v68[1] = v25;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136315138;
    sub_241352C5C();
    sub_24135191C();
    v73 = v40;
    *&v86 = 0x7B42424141;
    *(&v86 + 1) = 0xE500000000000000;
    v41 = sub_241302460();
    MEMORY[0x245CE20D0](v41);

    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    v42 = sub_241302460();
    MEMORY[0x245CE20D0](v42);

    MEMORY[0x245CE20D0](125, 0xE100000000000000);
    v43 = sub_2412DDC2C(v86, *(&v86 + 1), &v85);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_241215000, v35, v36, "[debugPrint] processLoadedEntitiesCDM bounds: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x245CE4870](v39, -1, -1);
    MEMORY[0x245CE4870](v38, -1, -1);
  }

  v44 = v82;
  v46 = v79;
  v45 = v80;
  printHierarchy(entity:level:debugString:)(a2, 0, 0, 0xE000000000000000);
  v47 = RESceneCreate();
  sub_24135255C();
  *(&v87 + 1) = MEMORY[0x277D841D8];
  *&v86 = v47;
  v48 = v69;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&v86);
  sub_24135249C();
  (*(v70 + 8))(v48, v71);
  sub_2413524EC();
  swift_getObjectType();
  sub_24135244C();
  swift_unknownObjectRelease();
  sub_24135295C();
  RESceneAddEntity();
  sub_2413517EC();
  v49 = v72;
  sub_24126B05C(a2, v72);
  v50 = *(v8 + 48);
  if (v50(v49, 1, v44) == 1)
  {
    *v34 = xmmword_241365E70;
    v34[1] = xmmword_241364640;
    v34[2] = xmmword_241365EE0;
    v34[3] = xmmword_241365D00;
    (*(v8 + 104))(v34, *MEMORY[0x277CDAD70], v44);
    v51 = v50(v49, 1, v44) == 1;
    v52 = v49;
    v53 = v84;
    if (!v51)
    {
      sub_241246278(v52, &qword_27E538940);
    }
  }

  else
  {
    (*(v8 + 32))(v34, v49, v44);
    v53 = v84;
  }

  if (sub_24131487C(v34))
  {
    v54 = sub_241352FDC();
    v55 = sub_2413540DC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_241215000, v54, v55, "Rotating asset 90°", v56, 2u);
      v57 = v56;
      v53 = v84;
      MEMORY[0x245CE4870](v57, -1, -1);
    }

    sub_241352C5C();
    sub_24135192C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A60);
  v58 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_241365EA0;
  (*(v8 + 16))(v59 + v58, v34, v44);
  sub_24126B6A8(a2, v59, &v86);

  (*(v8 + 8))(v34, v44);
  v60 = v88;
  v61 = v87;
  v62 = v89;
  v63 = v83;
  *v83 = v86;
  v63[1] = v61;
  *(v63 + 32) = v60;
  *(v63 + 40) = v62;
  v64 = v81;
  (v77)(v81, 1, 1, v78);
  v65 = swift_allocObject();
  v66 = v74;
  *(v65 + 16) = v75;
  *(v65 + 24) = v66;
  *(v65 + 32) = v53;
  *(v65 + 40) = 4;
  *(v65 + 48) = v46;
  *(v65 + 56) = v45;

  sub_241327238(0, 0, v64, &unk_241366D38, v65);
}

uint64_t sub_241267AEC(void (*a1)(__int128 *))
{
  sub_241255C30();
  v2 = swift_allocError();
  *v3 = 0xD000000000000017;
  *(v3 + 8) = 0x800000024135EE50;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *&v12[0] = v2;
  sub_24127BE04(v12);
  v9 = v12[4];
  v10 = v12[5];
  v11[0] = v13[0];
  *(v11 + 9) = *(v13 + 9);
  v5 = v12[0];
  v6 = v12[1];
  v7 = v12[2];
  v8 = v12[3];
  a1(&v5);
  v14[4] = v9;
  v14[5] = v10;
  v15[0] = v11[0];
  *(v15 + 9) = *(v11 + 9);
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  return sub_241246278(v14, &qword_27E538348);
}

uint64_t sub_241267BEC(void (*a1)(__int128 *))
{
  sub_241255C30();
  v2 = swift_allocError();
  *v3 = 0xD000000000000027;
  *(v3 + 8) = 0x800000024135EE70;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *&v12[0] = v2;
  sub_24127BE04(v12);
  v9 = v12[4];
  v10 = v12[5];
  v11[0] = v13[0];
  *(v11 + 9) = *(v13 + 9);
  v5 = v12[0];
  v6 = v12[1];
  v7 = v12[2];
  v8 = v12[3];
  a1(&v5);
  v14[4] = v9;
  v14[5] = v10;
  v15[0] = v11[0];
  *(v15 + 9) = *(v11 + 9);
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  return sub_241246278(v14, &qword_27E538348);
}

uint64_t sub_241267CEC(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  *&v14[0] = a3;
  sub_24127BE04(v14);
  v11 = v14[4];
  v12 = v14[5];
  v13[0] = v15[0];
  *(v13 + 9) = *(v15 + 9);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  v5 = a3;
  a1(&v7);
  v16[4] = v11;
  v16[5] = v12;
  v17[0] = v13[0];
  *(v17 + 9) = *(v13 + 9);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  return sub_241246278(v16, &qword_27E538348);
}

uint64_t sub_241267DB8(void (*a1)(void))
{
  v2 = [objc_opt_self() currentThread];
  v3 = [v2 isMainThread];

  if (v3)
  {
    sub_24135395C();
    a1();
  }

  else
  {
    sub_241246158(0, &qword_27E538920);
    v4 = sub_24135416C();
    sub_24135417C();
  }

  return sub_241353A4C();
}

uint64_t sub_241267EFC(uint64_t a1, unsigned __int8 *a2, void (*a3)(void), uint64_t a4)
{
  v116 = a4;
  v114 = a3;
  v6 = sub_2413538CC();
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x28223BE20](v6);
  v104 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2413538FC();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2413522BC();
  v113 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v110 = *(Information - 8);
  v11 = MEMORY[0x28223BE20](Information);
  v125 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v112 = v101 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v115 = v101 - v16;
  v111 = v17;
  MEMORY[0x28223BE20](v15);
  v109 = v101 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578);
  MEMORY[0x28223BE20](v119);
  v118 = v101 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v21 = v101 - v20;
  v136 = sub_24135152C();
  v124 = *(v136 - 1);
  v22 = MEMORY[0x28223BE20](v136);
  v129 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v131 = v101 - v24;
  v25 = sub_2413517BC();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *a2;
  sub_241352DAC();
  v29 = *(a1 + *(Information + 20));
  *(&v154 + 1) = MEMORY[0x277D841D8];
  *&aBlock = v29;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v30 = sub_241352CAC();
  (*(v26 + 8))(v28, v25);
  v133 = sub_241352D9C();
  if (v133)
  {
    v101[1] = v30;
    v31 = swift_allocObject();
    v32 = *(a1 + *(Information + 40));
    v33 = *(v32 + 16);
    v117 = v31;
    v122 = Information;
    v123 = a1;
    if (v33)
    {
      *&aBlock = MEMORY[0x277D84F90];
      sub_2412DE294(0, v33, 0);
      v34 = sub_2413521FC();
      v35 = aBlock;
      v134 = *(v124 + 16);
      v135 = v124 + 16;
      v36 = (v32 + ((*(v124 + 80) + 32) & ~*(v124 + 80)));
      v127 = *(v124 + 72);
      v128 = v34;
      v126 = (v124 + 8);
      do
      {
        v138 = v33;
        v37 = v131;
        v38 = v136;
        v39 = v35;
        v40 = v134;
        v134(v131, v36, v136);
        v137 = *(v132 + 48);
        v40(v21, v37, v38);
        v40(v129, v37, v38);
        v35 = v39;

        v41 = sub_2413521EC();
        (*v126)(v37, v38);
        *&v21[v137] = v41;
        *&aBlock = v39;
        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2412DE294(v42 > 1, v43 + 1, 1);
          v35 = aBlock;
        }

        *(v35 + 16) = v43 + 1;
        sub_24127EFF0(v21, v35 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v43, &qword_27E538128);
        v36 += v127;
        v33 = v138 - 1;
      }

      while (v138 != 1);
      if (*(v35 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130);
        v44 = sub_24135483C();
      }

      else
      {
        v44 = MEMORY[0x277D84F98];
      }

      v56 = v117;
      v55 = v125;
      *&aBlock = v44;
      sub_24127218C(v35, 1, &aBlock);
      v132 = 0;

      v54 = aBlock;
      *(v56 + 16) = aBlock;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538580);
      v48 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_241365EA0;
      v50 = *(v132 + 48);
      v52 = v124 + 16;
      v51 = *(v124 + 16);
      v53 = v136;
      v51((v49 + v48), a1, v136);
      sub_2413521FC();
      v134 = v51;
      v135 = v52;
      v51(v131, a1, v53);

      *(v49 + v48 + v50) = sub_2413521EC();
      v54 = sub_24124569C(v49);
      swift_setDeallocating();
      sub_241246278(v49 + v48, &qword_27E538128);
      swift_deallocClassInstance();
      *(v117 + 16) = v54;

      v132 = 0;
      v55 = v125;
    }

    v57 = 1 << *(v54 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v54 + 64);
    v60 = ((v57 + 63) >> 6);
    v137 = v113 + 8;
    v138 = v54;

    v61 = 0;
    if (v59)
    {
      while (1)
      {
        v62 = v61;
LABEL_21:
        v63 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v64 = v63 | (v62 << 6);
        v65 = v138;
        v66 = v118;
        v134(v118, (*(v138 + 48) + *(v124 + 72) * v64), v136);
        *(v66 + *(v119 + 48)) = *(*(v65 + 56) + 8 * v64);

        v67 = v120;
        sub_2413521AC();
        sub_2413516FC();
        (*v137)(v67, v121);
        RESceneImportOperationSetFunctionConstant();
        sub_241353C9C();
        RESceneImportOperationSetMaterialDefinitionPath();

        RESceneImportOperationSetUnitType();
        RESceneImportOperationSetIsolateFromEngine();
        sub_241246278(v66, &qword_27E538578);
        v55 = v125;
        if (!v59)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      if (v62 >= v60)
      {
        break;
      }

      v59 = *(v54 + 64 + 8 * v62);
      ++v61;
      if (v59)
      {
        v61 = v62;
        goto LABEL_21;
      }
    }

    v68 = swift_allocObject();
    v69 = v117;
    v70 = v114;
    v68[2] = v117;
    v68[3] = v70;
    v68[4] = v116;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    v72 = v123;
    v73 = v109;
    sub_24127BF00(v123, v109);
    sub_24127BF00(v73, v115);
    v74 = v111;
    v75 = *(v110 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v69;
    *(v76 + 24) = v71;
    v137 = v71;
    v138 = v76;
    sub_241244A20(v73, v76 + ((v75 + 32) & ~v75));
    v77 = v112;
    sub_24127BF00(v72, v112);
    sub_24127BF00(v77, v55);
    v78 = (v75 + 48) & ~v75;
    v79 = v78 + v74;
    v80 = swift_allocObject();
    v81 = v133;
    v80[2] = v69;
    v80[3] = v81;
    v80[4] = sub_24127EF3C;
    v80[5] = v68;
    sub_241244A20(v77, v80 + v78);
    v82 = v108;
    *(v80 + v79) = v108;
    v83 = v72 + *(v122 + 28);
    v84 = *v83;
    if (*v83)
    {
      v85 = *(v83 + 8);
      v86 = v117;
      swift_retain_n();

      sub_24127EF78(v84, v85);
      sub_241244A8C(v125);
      sub_241244A8C(v115);
      v87 = swift_allocObject();
      v88 = v138;
      v87[2] = sub_24127EF48;
      v87[3] = v88;
      v87[4] = v85;
      v87[5] = v86;
      v87[6] = sub_24127EF3C;
      v87[7] = v68;
      v87[8] = sub_24127EF60;
      v87[9] = v80;
      *&v155 = sub_24127EFB8;
      *(&v155 + 1) = v87;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v154 = sub_2412D5698;
      *(&v154 + 1) = &block_descriptor_1;
      v89 = _Block_copy(&aBlock);

      v136 = v85;

      v90 = v102;
      sub_2413538DC();
      *&v146 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
      v91 = v84;
      sub_24123D370(&qword_27E539880, &unk_27E538930);
      v92 = v104;
      v93 = v107;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v90, v92, v89);

      _Block_release(v89);

      (*(v106 + 8))(v92, v93);
      (*(v103 + 8))(v90, v105);
    }

    else
    {
      v94 = v117;
      swift_retain_n();

      v95 = v137;

      v96 = v94;
      v97 = v115;
      v98 = v132;
      sub_241273248(v96, v95, v115);
      if (v98)
      {
        sub_241244A8C(v125);
        sub_241244A8C(v97);
        *&aBlock = v98;
        sub_24127BE04(&aBlock);
        v100 = v117;
        swift_beginAccess();
        *(v100 + 16) = MEMORY[0x277D84F98];

        v150 = v157;
        v151 = v158;
        v152[0] = v159[0];
        *(v152 + 9) = *(v159 + 9);
        v146 = aBlock;
        v147 = v154;
        v148 = v155;
        v149 = v156;
        v114(&v146);
      }

      else
      {
        sub_241244A8C(v97);
        v99 = v125;
        sub_241269024(v117, v81, sub_24127EF3C, v68, v125, v82);
        sub_241244A8C(v99);
      }
    }
  }

  else
  {
    sub_241255C30();
    v45 = swift_allocError();
    *v46 = 0xD00000000000002CLL;
    *(v46 + 8) = 0x800000024135ED20;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *&v146 = v45;
    sub_24127BE04(&v146);
    v143 = v150;
    v144 = v151;
    v145[0] = v152[0];
    *(v145 + 9) = *(v152 + 9);
    v139 = v146;
    v140 = v147;
    v141 = v148;
    v142 = v149;
    v114(&v139);

    v157 = v143;
    v158 = v144;
    v159[0] = v145[0];
    *(v159 + 9) = *(v145 + 9);
    aBlock = v139;
    v154 = v140;
    v155 = v141;
    v156 = v142;
    return sub_241246278(&aBlock, &qword_27E538348);
  }
}

uint64_t sub_241268F90(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v5 = a1[5];
  v9[4] = a1[4];
  v9[5] = v5;
  v10[0] = a1[6];
  *(v10 + 9) = *(a1 + 105);
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v7 = a1[3];
  v9[2] = a1[2];
  v9[3] = v7;
  swift_beginAccess();
  *(a2 + 16) = MEMORY[0x277D84F98];

  return a3(v9);
}

uint64_t sub_241269024(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v93 = a6;
  v94 = a4;
  v92 = a3;
  v90 = a2;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v88 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v89 = v10;
  v91 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24135152C();
  v111 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v102 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578);
  v12 = MEMORY[0x28223BE20](v101);
  v100 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538590);
  v103 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v85 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v85 - v22;
  if (qword_27E537B10 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v24 = sub_241352FFC();
    v87 = __swift_project_value_buffer(v24, qword_27E5384A0);
    v25 = sub_241352FDC();
    v26 = sub_2413540DC();
    v27 = os_log_type_enabled(v25, v26);
    v106 = v21;
    if (v27)
    {
      v28 = v18;
      v29 = v15;
      v30 = a1;
      v31 = a5;
      v32 = v7;
      v33 = v23;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_241215000, v25, v26, "importModelFile..... start finalizeBlock part", v34, 2u);
      v35 = v34;
      v23 = v33;
      v7 = v32;
      a5 = v31;
      a1 = v30;
      v15 = v29;
      v18 = v28;
      MEMORY[0x245CE4870](v35, -1, -1);
    }

    sub_241351FDC();
    v105 = sub_241351FCC();
    swift_beginAccess();
    v36 = *(*(a1 + 16) + 16);
    v37 = MEMORY[0x277D84F90];
    v107 = v18;
    v95 = a5;
    v110 = v15;
    if (!v36)
    {
      break;
    }

    v109 = v7;
    aBlock[0] = MEMORY[0x277D84F90];

    sub_2412DE274(0, v36, 0);
    v38 = v104;
    a1 = aBlock[0];
    v21 = (v104 + 64);
    v7 = sub_24135445C();
    v98 = v111 + 16;
    v97 = v111 + 32;
    v96 = v21;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v38 + 32))
    {
      a5 = v7 >> 6;
      v15 = 1 << v7;
      if ((*&v21[8 * (v7 >> 6)] & (1 << v7)) == 0)
      {
        goto LABEL_44;
      }

      v108 = v36;
      LODWORD(v112) = *(v38 + 36);
      v39 = v111;
      v18 = v23;
      v40 = v99;
      v41 = v114;
      (*(v111 + 16))(v99, *(v38 + 48) + *(v111 + 72) * v7, v114);
      v42 = *(*(v38 + 56) + 8 * v7);
      v43 = *(v39 + 32);
      v44 = v100;
      v45 = v40;
      v23 = v18;
      v43(v100, v45, v41);
      *(v44 + *(v101 + 48)) = v42;

      v46 = v109;
      v47 = sub_241269BC0(v18, v44);
      if (v46)
      {

        sub_241246278(v44, &qword_27E538578);
      }

      v109 = 0;
      *&v18[*(v110 + 48)] = v47;
      sub_241246278(v44, &qword_27E538578);
      aBlock[0] = a1;
      v49 = *(a1 + 16);
      v48 = *(a1 + 24);
      v21 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        sub_2412DE274(v48 > 1, v49 + 1, 1);
        a1 = aBlock[0];
      }

      *(a1 + 16) = v21;
      sub_24127EFF0(v18, a1 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v49, &qword_27E538590);
      v38 = v104;
      if (v7 >= -(-1 << *(v104 + 32)))
      {
        goto LABEL_45;
      }

      v21 = v96;
      if ((*&v96[8 * a5] & v15) == 0)
      {
        goto LABEL_46;
      }

      if (v112 != *(v104 + 36))
      {
        goto LABEL_47;
      }

      v7 = sub_24135447C();
      v36 = v108 - 1;
      v18 = v102;
      if (v108 == 1)
      {
        v108 = a1;

        v7 = v109;
        v37 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v108 = MEMORY[0x277D84F90];
  v18 = v102;
LABEL_19:
  v50 = sub_241352FDC();
  v51 = sub_2413540DC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_241215000, v50, v51, "importModelFile..... importCompletedBlock completed", v52, 2u);
    MEMORY[0x245CE4870](v52, -1, -1);
  }

  v109 = v7;

  v53 = *(v108 + 16);
  if (v53)
  {
    aBlock[0] = v37;
    v54 = v108;
    sub_2412DE254(0, v53, 0);
    v55 = aBlock[0];
    v56 = v54 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v57 = *(v103 + 72);
    v58 = v53;
    v59 = (v111 + 32);
    v60 = v56;
    v103 = v58;
    v112 = v57;
    do
    {
      v61 = v106;
      sub_241246210(v60, v106, &qword_27E538590);
      v62 = v61;
      v63 = v107;
      sub_24127EFF0(v62, v107, &qword_27E538590);

      v64 = *v59;
      (*v59)(v18, v63, v114);
      aBlock[0] = v55;
      v65 = v18;
      v67 = *(v55 + 16);
      v66 = *(v55 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_2412DE254(v66 > 1, v67 + 1, 1);
        v55 = aBlock[0];
      }

      *(v55 + 16) = v67 + 1;
      v64((v55 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v67), v65, v114);
      v60 += v112;
      --v58;
      v18 = v65;
    }

    while (v58);
    v104 = v55;
    aBlock[0] = MEMORY[0x277D84F90];
    v68 = v103;
    sub_24135466C();
    v69 = (v111 + 8);
    v71 = v106;
    v70 = v107;
    do
    {
      sub_241246210(v56, v71, &qword_27E538590);
      sub_24127EFF0(v71, v70, &qword_27E538590);
      (*v69)(v70, v114);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      v56 += v112;
      --v68;
    }

    while (v68);

    v72 = aBlock[0];
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
  }

  sub_241351ECC();

  v73 = sub_241351E7C();
  v74 = v91;
  sub_24127BF00(v95, v91);
  v75 = (*(v88 + 80) + 40) & ~*(v88 + 80);
  v76 = v75 + v89;
  v77 = (((v75 + v89) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v92;
  v78[2] = v73;
  v78[3] = v79;
  v78[4] = v94;
  sub_241244A20(v74, v78 + v75);
  *(v78 + v76) = v93;
  *(v78 + (v76 & 0xFFFFFFFFFFFFFFF8) + 8) = v72;
  *(v78 + v77) = v104;
  aBlock[4] = sub_24127F058;
  aBlock[5] = v78;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412F49E8;
  aBlock[3] = &block_descriptor_155;
  v80 = _Block_copy(aBlock);

  sub_241351E9C();
  _Block_release(v80);

  if (v72 >> 62)
  {
    result = sub_2413544EC();
    v82 = result;
    if (!result)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v82 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v82)
    {
      goto LABEL_39;
    }
  }

  if (v82 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v82; ++i)
    {
      MEMORY[0x245CE29C0](i, v72);
      sub_241351EBC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v84 = 32;
    do
    {

      sub_241351EBC();

      v84 += 8;
      --v82;
    }

    while (v82);
  }

LABEL_39:

  if (!*(v95 + *(Information + 28)))
  {
    sub_241351E8C();
  }
}

uint64_t sub_241269BC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2413522DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2413521CC();
  sub_241351FBC();

  if (!v2)
  {
    v3 = sub_2413522CC();
    sub_241352C5C();
    sub_24135191C();
    if (REAABBIsEmpty())
    {
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v11 = sub_241352FFC();
      __swift_project_value_buffer(v11, qword_27E5384A0);
      v12 = sub_241352FDC();
      v13 = sub_2413540BC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v19 = v12;
        v15 = v14;
        *v14 = 0;
        v16 = v15;
        v12 = v19;
        MEMORY[0x245CE4870](v16, -1, -1);
      }
    }

    (*(v7 + 8))(v9, v6);
    v17 = sub_24135152C();
    (*(*(v17 - 8) + 16))(a1, a2, v17);
  }

  return v3;
}

void sub_241269E3C(char a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8)
{
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v14 = sub_241352FFC();
  __swift_project_value_buffer(v14, qword_27E5384A0);
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1 & 1;
    _os_log_impl(&dword_241215000, v15, v16, "AssetLoadRequest success? %{BOOL}d", v17, 8u);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  if (a1)
  {
    LOBYTE(v43) = a6;
    if (qword_27E537C60 != -1)
    {
      swift_once();
    }

    v18 = qword_27E541898;
    v19 = unk_27E5418A0;
    v20 = qword_27E5418A8;

    LOBYTE(v32) = a6;
    sub_24127C7E4(a5, &v43, v18, v19, v20, a3, a4, a7, v32, a8);

    *&v45 = nullsub_6;
    *(&v45 + 1) = 0;
    *&v43 = MEMORY[0x277D85DD0];
    *(&v43 + 1) = 1107296256;
    *&v44 = sub_2412F49E8;
    *(&v44 + 1) = &block_descriptor_161;
    p_aBlock = &v43;
  }

  else
  {
    v22 = sub_241352FDC();
    v23 = sub_2413540BC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v41[0] = v25;
      *v24 = 136315138;
      *&v43 = 0xD000000000000022;
      *(&v43 + 1) = 0x800000024135EDF0;
      *&v44 = 0;
      BYTE8(v44) = 0;
      sub_241255C30();
      v26 = sub_241354A3C();
      v28 = sub_2412DDC2C(v26, v27, v41);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_241215000, v22, v23, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x245CE4870](v25, -1, -1);
      MEMORY[0x245CE4870](v24, -1, -1);
    }

    sub_241255C30();
    v29 = swift_allocError();
    *v30 = 0xD000000000000022;
    *(v30 + 8) = 0x800000024135EDF0;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *&v41[0] = v29;
    sub_24127BE04(v41);
    v38 = v41[4];
    v39 = v41[5];
    v40[0] = v42[0];
    *(v40 + 9) = *(v42 + 9);
    aBlock = v41[0];
    v35 = v41[1];
    v36 = v41[2];
    v37 = v41[3];
    a3(&aBlock);
    v47 = v38;
    v48 = v39;
    v49[0] = v40[0];
    *(v49 + 9) = *(v40 + 9);
    v43 = aBlock;
    v44 = v35;
    v45 = v36;
    v46 = v37;
    sub_241246278(&v43, &qword_27E538348);
    *&v36 = nullsub_6;
    *(&v36 + 1) = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v35 = sub_2412F49E8;
    *(&v35 + 1) = &block_descriptor_158;
    p_aBlock = &aBlock;
  }

  v31 = _Block_copy(p_aBlock);
  sub_241351E9C();
  _Block_release(v31);
}

uint64_t sub_24126A284(void (*a1)(void), uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1();
  v14 = swift_allocObject();
  v14[2] = a4 + 16;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24127EFE0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_2412807B4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24126A860;
  aBlock[3] = &block_descriptor_149;
  v16 = _Block_copy(aBlock);

  dispatch_sync(a3, v16);
  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24126A544(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v21[1] = a5;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578);
  MEMORY[0x28223BE20](v25);
  v7 = v21 - v6;
  swift_beginAccess();
  v8 = *a1;
  v9 = *a1 + 64;
  v10 = 1 << *(*a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(*a1 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = *(v8 + 48);
    v19 = sub_24135152C();
    (*(*(v19 - 8) + 16))(v7, v18 + *(*(v19 - 8) + 72) * v17, v19);
    *&v7[*(v25 + 48)] = *(*(v8 + 56) + 8 * v17);

    sub_2413521BC();
    v12 &= v12 - 1;
    result = sub_241246278(v7, &qword_27E538578);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v22(v20);
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24126A888(id *a1)
{
  v1 = [*a1 path];
  sub_241353C0C();

  sub_24135146C();
}

void sub_24126A908(void **a1, void (*a2)(__int128 *), uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (*a1)
  {
    *&v15[0] = *a1;
    sub_24127BE04(v15);
    v12 = v15[4];
    v13 = v15[5];
    v14[0] = v16[0];
    *(v14 + 9) = *(v16 + 9);
    v8 = v15[0];
    v9 = v15[1];
    v10 = v15[2];
    v11 = v15[3];
    v7 = v5;
    a2(&v8);
    v17[4] = v12;
    v17[5] = v13;
    v18[0] = v14[0];
    *(v18 + 9) = *(v14 + 9);
    v17[0] = v8;
    v17[1] = v9;
    v17[2] = v10;
    v17[3] = v11;
    sub_241246278(v17, &qword_27E538348);
  }

  sub_24127EB48(a4);
}

void sub_24126A9E4(uint64_t *a1, void (*a2)(int8x16_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = (a4 + *(type metadata accessor for AssetLoader.LoadInformation() + 32));
  v11 = *v9;
  v10 = v9[1];
  v12 = qword_27E537C60;

  if (v12 != -1)
  {
    swift_once();
  }

  v23.i64[0] = v11;
  v23.i64[1] = v10;
  v24.i16[0] = 514;
  v24.i8[2] = 2;
  v24.i64[1] = 3;
  v25 = xmmword_27E541898;
  v26.i64[0] = qword_27E5418A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_241365C30;
  *(v13 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v14 = sub_24135152C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_241365EA0;
  (*(v15 + 16))(v17 + v16, a5, v14);

  sub_241265FA4(&v23, v13, v17, v19);

  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v22 = v26.i64[0];
  sub_241244AE8(v21);
  a2(v19);
  v27 = v19[4];
  v28 = v19[5];
  v29[0] = v20[0];
  *(v29 + 9) = *(v20 + 9);
  v23 = v19[0];
  v24 = v19[1];
  v25 = v19[2];
  v26 = v19[3];
  sub_241246278(&v23, &qword_27E538348);
  sub_24127EB48(a6);
}

uint64_t sub_24126AC54(uint64_t a1, uint64_t a2, void (*a3)(int8x16_t *), uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = sub_241352AEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  sub_24127C104(a2, &v37);
  sub_241352ADC();
  v13 = sub_241352C2C();
  v14 = (v10 + 8);
  v27 = a1;
  v28 = a4;
  v29 = a3;
  v15 = v13;
  (*v14)(v12, v9);
  v16 = (v30 + *(type metadata accessor for AssetLoader.LoadInformation() + 32));
  v18 = *v16;
  v17 = v16[1];
  v19 = qword_27E537C60;

  if (v19 != -1)
  {
    swift_once();
  }

  v37.i64[0] = v18;
  v37.i64[1] = v17;
  v38.i16[0] = 514;
  v38.i8[2] = 2;
  *(v38.i32 + 3) = v31;
  v38.i8[7] = v32;
  v38.i64[1] = 3;
  v39 = xmmword_27E541898;
  v40.i64[0] = qword_27E5418A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_241365C30;
  *(v20 + 32) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v21 = sub_24135152C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_241365EA0;
  (*(v22 + 16))(v24 + v23, v27, v21);

  sub_241265FA4(&v37, v20, v24, v35);

  v33[0] = v37;
  v33[1] = v38;
  v33[2] = v39;
  v34 = v40.i64[0];
  sub_241244AE8(v33);
  v29(v35);

  v41 = v35[4];
  v42 = v35[5];
  v43[0] = v36[0];
  *(v43 + 9) = *(v36 + 9);
  v37 = v35[0];
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  return sub_241246278(&v37, &qword_27E538348);
}

uint64_t sub_24126B05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_241352B6C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_241351DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_241351E0C();
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365C30;
  *(inited + 32) = a1;

  while (1)
  {
    v13 = inited >> 62;
    if (inited >> 62)
    {
      break;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_4:
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](0, inited);
      v14 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v14 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v13)
      {
LABEL_7:
        v15 = *(v14 + 16);
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_16;
      }
    }

    if (!sub_2413544EC())
    {
      goto LABEL_39;
    }

    if (sub_2413544EC() < 1)
    {
      goto LABEL_40;
    }

    v15 = sub_2413544EC();
LABEL_16:
    v17 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v47 = inited;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v13)
      {
        if (v17 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_2413544EC();
      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_22;
    }

LABEL_23:
    inited = sub_24135461C();
    v47 = inited;
LABEL_24:
    sub_241257B58(0, 1, 0);
    v47 = inited;
    if (swift_conformsToProtocol2())
    {

      if (qword_27E537B10 == -1)
      {
LABEL_31:
        v20 = sub_241352FFC();
        __swift_project_value_buffer(v20, qword_27E5384A0);

        v21 = sub_241352FDC();
        v22 = sub_2413540DC();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v39 = v23;
          v24 = swift_slowAlloc();
          v42 = v7;
          v40 = v24;
          v46 = v24;
          *v23 = 136315138;
          v25 = v44;
          v38 = v22;
          sub_24135183C();
          v26 = v43;
          sub_241351DFC();
          v27 = v45;
          (*(v45 + 8))(v25, v10);
          v28 = AnchoringComponent.Target.arql_description.getter();
          v41 = v10;
          v29 = a2;
          v31 = v30;
          (*(v8 + 8))(v26, v42);
          v32 = sub_2412DDC2C(v28, v31, &v46);
          a2 = v29;
          v10 = v41;

          v33 = v39;
          *(v39 + 1) = v32;
          v34 = v33;
          _os_log_impl(&dword_241215000, v21, v38, "found anchor type: %s", v33, 0xCu);
          v35 = v40;
          __swift_destroy_boxed_opaque_existential_0(v40);
          v36 = v35;
          v7 = v42;
          MEMORY[0x245CE4870](v36, -1, -1);
          MEMORY[0x245CE4870](v34, -1, -1);
        }

        else
        {

          v25 = v44;
          v27 = v45;
        }

        sub_24135183C();
        sub_241351DFC();

        (*(v27 + 8))(v25, v10);
        v19 = 0;
        return (*(v8 + 56))(a2, v19, 1, v7);
      }

LABEL_41:
      swift_once();
      goto LABEL_31;
    }

    sub_241352C5C();
    sub_2413518AC();
    sub_241281024(v6);

    inited = v47;
    if (v47 >> 62)
    {
      if (sub_2413544EC() <= 0)
      {
LABEL_29:

        v19 = 1;
        return (*(v8 + 56))(a2, v19, 1, v7);
      }
    }

    else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_29;
    }
  }

  result = sub_2413544EC();
  if (result)
  {
    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_43;
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_24126B6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v45 = a1;
  v43 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538328);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538550);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v39 - v6;
  v40 = sub_241352B6C();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  swift_allocObject();
  v10 = sub_24135180C();
  sub_241352C1C();
  v11 = [objc_opt_self() debug3DPreserveWorldTransform];
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v12 = sub_241352FFC();
  v41 = __swift_project_value_buffer(v12, qword_27E5384A0);
  v13 = sub_241352FDC();
  v14 = sub_2413540DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11;
    _os_log_impl(&dword_241215000, v13, v14, "preservingWorldTransform: %{BOOL}d", v15, 8u);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  sub_2413518AC();
  sub_241352B5C();

  v16 = *(v7 + 8);
  v17 = v40;
  v16(v9, v40);
  sub_2413518AC();
  sub_241311514(1, v9, v11);
  v16(v9, v17);
  sub_2413519BC();
  sub_2413519CC();
  sub_241352E3C();
  sub_2413519CC();
  v18 = v39;
  sub_241352BAC();
  sub_241352B7C();
  sub_241246278(v18, &qword_27E538550);
  v19 = sub_2413516CC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_241352B7C();
  sub_241246278(v18, &qword_27E538550);
  sub_241352BEC();
  sub_241352BCC();

  sub_241352BCC();
  v20 = v42;
  sub_241352E7C();
  v21 = sub_241352E8C();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = sub_241352A7C();
  sub_241352ACC();
  v22(v47, 0);

  v23 = sub_241352FDC();
  v24 = sub_2413540DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v10;
    v47[0] = v26;
    *v25 = 136315138;

    v27 = sub_241353C7C();
    v29 = sub_2412DDC2C(v27, v28, v47);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_241215000, v23, v24, "processLoadedEntities post-fixups, wrapperEntity: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245CE4870](v26, -1, -1);
    MEMORY[0x245CE4870](v25, -1, -1);
  }

  printHierarchy(entity:level:debugString:)(v10, 0, 0, 0xE000000000000000);
  v30 = sub_24127E020(v45);
  v32 = v31;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_241365C30;
  *(v35 + 32) = v10;
  v36 = v43;
  *v43 = v35;
  v36[1] = v44;
  v36[2] = v30;
  v36[3] = v32;
  *(v36 + 32) = v34 & 1;
  v37 = MEMORY[0x277D84F98];
  v36[5] = MEMORY[0x277D84F90];
  v36[6] = v37;
}

void sub_24126BCBC(uint64_t a1, int a2)
{
  v61 = a2;
  v62 = sub_241352B6C();
  v56 = *(v62 - 8);
  v3 = MEMORY[0x28223BE20](v62);
  v60 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v52 - v5;
  v7 = sub_2413517DC();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538558);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v52 - v10;
  v12 = sub_241352AAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352A8C();
  v16 = sub_241351E0C();
  sub_241352ABC();
  (*(v13 + 8))(v15, v12);
  v17 = (*(*(v16 - 8) + 48))(v11, 1, v16);
  sub_241246278(v11, &qword_27E538558);
  if (v17 == 1)
  {
    return;
  }

  if (qword_27E537B10 != -1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v18 = sub_241352FFC();
  v19 = __swift_project_value_buffer(v18, qword_27E5384A0);

  v20 = sub_241352FDC();
  v21 = sub_2413540DC();

  v22 = os_log_type_enabled(v20, v21);
  v52[1] = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v63[0] = v24;
    *v23 = 136315394;
    v25 = sub_241352C0C();
    v27 = sub_2412DDC2C(v25, v26, v63);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = v53;
    sub_24135296C();
    sub_2413516FC();
    (*(v54 + 8))(v28, v55);
    v29 = sub_241353C7C();
    v31 = sub_2412DDC2C(v29, v30, v63);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_241215000, v20, v21, "Found anchorComponent on %s %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v24, -1, -1);
    MEMORY[0x245CE4870](v23, -1, -1);
  }

  v32 = sub_241352C5C();
  v33 = sub_24135188C();
  if (!v33)
  {
    return;
  }

  v59 = v33;
  sub_2413518AC();
  sub_24127F10C(&qword_27E538B00, MEMORY[0x277CDB190]);
  v34 = v62;
  v35 = sub_24135404C();
  if (v35)
  {
    v36 = v35;
    v64 = MEMORY[0x277D84F90];
    sub_24135466C();
    sub_24135403C();
    if (v36 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v37 = sub_24135408C();

      v37(v63, 0);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      sub_24135407C();
      --v36;
    }

    while (v36);
    v57 = *(v56 + 8);
    v57(v6, v34);
    v6 = v64;
  }

  else
  {
    v57 = *(v56 + 8);
    v57(v6, v34);
    v6 = MEMORY[0x277D84F90];
  }

  v52[0] = a1;
  v58 = v32;
  if (!(v6 >> 62))
  {
    v38 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v38 = sub_2413544EC();
  if (v38)
  {
LABEL_13:
    v39 = 0;
    v56 = v6 & 0xC000000000000001;
    a1 = v6 & 0xFFFFFFFFFFFFFF8;
    v40 = v60;
    do
    {
      if (v56)
      {
        MEMORY[0x245CE29C0](v39, v6);
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v39 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          swift_once();
          goto LABEL_3;
        }
      }

      sub_2413518AC();
      sub_241352B5C();

      v57(v40, v62);
      ++v39;
    }

    while (v41 != v38);
  }

LABEL_25:

  v42 = v53;
  sub_24135296C();
  sub_2413516FC();
  v43 = v55;
  v44 = *(v54 + 8);
  v44(v42, v55);
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REComponentCopy();
    sub_24135296C();
    sub_2413516FC();
    v44(v42, v43);
    REEntityAddExistingComponent();
    sub_2413517EC();
  }

  if (!sub_24135246C())
  {
    goto LABEL_31;
  }

  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  if (!REEntityGetCustomComponent())
  {
    goto LABEL_31;
  }

  REComponentCopy();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityAddExistingComponent();
  sub_2413517EC();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityRemoveComponentByClass();

  v45 = sub_241352FDC();
  v46 = sub_2413540DC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63[0] = v48;
    *v47 = 136315138;
    v49 = sub_241352C0C();
    v51 = sub_2412DDC2C(v49, v50, v63);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_241215000, v45, v46, "Moved the RAInteractions Component from old entity to new: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245CE4870](v48, -1, -1);
    MEMORY[0x245CE4870](v47, -1, -1);

LABEL_31:

    return;
  }
}

uint64_t sub_24126C678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_241352B6C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_241351E0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (swift_conformsToProtocol2())
  {

    sub_24135183C();
    sub_241351DFC();

    (*(v9 + 8))(v11, v8);
    v13 = sub_241351DEC();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }

  v23 = v8;
  v24 = a2;
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365C30;
  *(inited + 32) = v12;

  while (1)
  {
    v16 = inited >> 62;
    if (!(inited >> 62))
    {
      break;
    }

    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_38;
    }

    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_39;
    }

LABEL_6:
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](0, inited);
      v17 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v17 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v16)
      {
LABEL_9:
        result = *(v17 + 16);
        if (!result)
        {
          goto LABEL_36;
        }

        goto LABEL_18;
      }
    }

    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_36;
    }

    result = sub_2413544EC();
    if (result < 1)
    {
      goto LABEL_37;
    }

    result = sub_2413544EC();
LABEL_18:
    v18 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_35;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v26 = inited;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v16)
      {
        if (v18 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_2413544EC();
      goto LABEL_25;
    }

    if (v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    inited = sub_24135461C();
    v26 = inited;
LABEL_26:
    sub_241257B58(0, 1, 0);
    v26 = inited;
    if (swift_conformsToProtocol2())
    {

      sub_24135183C();
      v21 = v24;
      sub_241351DFC();

      (*(v9 + 8))(v11, v23);
      v22 = sub_241351DEC();
      return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
    }

    sub_241352C5C();
    sub_2413518AC();
    sub_241281024(v7);

    inited = v26;
    if (v26 >> 62)
    {
      result = sub_2413544EC();
      if (result <= 0)
      {
LABEL_31:

        v20 = sub_241351DEC();
        return (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
      }
    }

    else
    {
      result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result <= 0)
      {
        goto LABEL_31;
      }
    }
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_24126CB90(uint64_t a1)
{
  v61 = sub_241352B6C();
  v56 = *(v61 - 8);
  v2 = MEMORY[0x28223BE20](v61);
  v60 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v52 - v4;
  v6 = sub_2413517DC();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538558);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v52 - v9;
  v11 = sub_241352AAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352A8C();
  v15 = sub_241351E0C();
  sub_241352ABC();
  (*(v12 + 8))(v14, v11);
  v16 = (*(*(v15 - 8) + 48))(v10, 1, v15);
  sub_241246278(v10, &qword_27E538558);
  if (v16 == 1)
  {
    return;
  }

  if (qword_27E537B10 != -1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v17 = sub_241352FFC();
  v18 = __swift_project_value_buffer(v17, qword_27E5384A0);

  v19 = sub_241352FDC();
  v20 = sub_2413540DC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62[0] = v22;
    *v21 = 136315394;
    v23 = sub_241352C0C();
    v25 = sub_2412DDC2C(v23, v24, v62);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = v53;
    sub_24135296C();
    sub_2413516FC();
    (*(v54 + 8))(v26, v55);
    v27 = sub_241353C7C();
    v29 = sub_2412DDC2C(v27, v28, v62);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_241215000, v19, v20, "Found anchorComponent on %s %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v22, -1, -1);
    MEMORY[0x245CE4870](v21, -1, -1);
  }

  v30 = sub_241352C5C();
  v59 = sub_24135188C();
  if (!v59)
  {
    return;
  }

  v58 = v30;
  sub_2413518AC();
  sub_24127F10C(&qword_27E538B00, MEMORY[0x277CDB190]);
  v31 = v61;
  v32 = sub_24135404C();
  if (v32)
  {
    v33 = v32;
    v63 = MEMORY[0x277D84F90];
    sub_24135466C();
    sub_24135403C();
    if (v33 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v34 = sub_24135408C();

      v34(v62, 0);
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      sub_24135407C();
      --v33;
    }

    while (v33);
    v57 = *(v56 + 8);
    v57(v5, v31);
    v35 = v63;
  }

  else
  {
    v57 = *(v56 + 8);
    v57(v5, v31);
    v35 = MEMORY[0x277D84F90];
  }

  v52[1] = v18;
  v52[2] = a1;
  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v36 = sub_2413544EC();
  if (v36)
  {
LABEL_13:
    v37 = 0;
    v56 = v35 & 0xC000000000000001;
    a1 = v35 & 0xFFFFFFFFFFFFFF8;
    v5 = v59;
    do
    {
      if (v56)
      {
        MEMORY[0x245CE29C0](v37, v35);
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v37 >= *(a1 + 16))
        {
          goto LABEL_22;
        }

        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          swift_once();
          goto LABEL_3;
        }
      }

      v39 = v35;
      v40 = v60;
      sub_2413518AC();
      sub_241352B5C();

      v41 = v40;
      v35 = v39;
      v57(v41, v61);
      ++v37;
    }

    while (v38 != v36);
  }

LABEL_25:

  v42 = v53;
  sub_24135296C();
  sub_2413516FC();
  v43 = v55;
  v44 = *(v54 + 8);
  v44(v42, v55);
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REComponentCopy();
    sub_24135296C();
    sub_2413516FC();
    v44(v42, v43);
    REEntityAddExistingComponent();
    sub_2413517EC();
  }

  if (!sub_24135246C())
  {
    goto LABEL_31;
  }

  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  if (!REEntityGetCustomComponent())
  {
    goto LABEL_31;
  }

  REComponentCopy();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityAddExistingComponent();
  sub_2413517EC();
  sub_24135296C();
  sub_2413516FC();
  v44(v42, v43);
  REEntityRemoveComponentByClass();

  v45 = sub_241352FDC();
  v46 = sub_2413540DC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62[0] = v48;
    *v47 = 136315138;
    v49 = sub_241352C0C();
    v51 = sub_2412DDC2C(v49, v50, v62);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_241215000, v45, v46, "Moved the RAInteractions Component from old entity to new: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245CE4870](v48, -1, -1);
    MEMORY[0x245CE4870](v47, -1, -1);

LABEL_31:

    return;
  }
}

void sub_24126D540(uint64_t a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24135152C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  v10 = __swift_project_value_buffer(v9, qword_27E5384A0);
  v41 = *(v3 + 16);
  v41(v8, a1, v2);
  v42 = v10;
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = a1;
    v14 = v3;
    v15 = v13;
    v16 = swift_slowAlloc();
    v40 = v6;
    v17 = v16;
    v44[0] = v16;
    *v15 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260]);
    v18 = sub_24135491C();
    v20 = v19;
    v43 = *(v14 + 8);
    v43(v8, v2);
    v21 = sub_2412DDC2C(v18, v20, v44);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_241215000, v11, v12, "Cleaning up temporary files at %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    v6 = v40;
    MEMORY[0x245CE4870](v22, -1, -1);
    a1 = v39;
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  else
  {

    v43 = *(v3 + 8);
    v43(v8, v2);
  }

  v23 = [objc_opt_self() defaultManager];
  v24 = sub_24135144C();
  v44[0] = 0;
  v25 = [v23 removeItemAtURL:v24 error:v44];

  v26 = v44[0];
  if (v25)
  {

    v27 = v26;
  }

  else
  {
    v40 = v44[0];
    v28 = v44[0];
    v29 = sub_24135139C();

    swift_willThrow();
    v41(v6, a1, v2);
    v30 = sub_241352FDC();
    v31 = sub_2413540BC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v6;
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v32 = 136315138;
      sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260]);
      v35 = sub_24135491C();
      v37 = v36;
      v43(v33, v2);
      v38 = sub_2412DDC2C(v35, v37, v44);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_241215000, v30, v31, "Failed to cleanup temporary files at %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x245CE4870](v34, -1, -1);
      MEMORY[0x245CE4870](v32, -1, -1);
    }

    else
    {

      v43(v6, v2);
    }
  }
}

unint64_t sub_24126DA74(unint64_t a1, uint64_t *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_2413544EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x245CE29C0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = *a2;

    if (v9 && v8 == v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_24126DB8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538568);
    v2 = sub_24135482C();
    v19 = v2;
    sub_2413546EC();
    v3 = sub_24135479C();
    if (v3)
    {
      v4 = v3;
      sub_241352C5C();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24135255C();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2412A3B9C(v12 + 1, 1);
        }

        v2 = v19;
        sub_24127F10C(&qword_27E5389B0, MEMORY[0x277CDB1C8]);
        result = sub_241353B8C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24135479C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_24126DDFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B80);
    v2 = sub_24135482C();
    v19 = v2;
    sub_2413546EC();
    v3 = sub_24135479C();
    if (v3)
    {
      v4 = v3;
      sub_241246158(0, &qword_27E538A40);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EntityController();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2412A4678(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2413542AC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_24135479C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_24126E030(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  result = sub_24126DA74(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_2413544EC();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_2413544EC())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x245CE29C0](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    v12 = *a2;

    if (!v12 || v11 != v12)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x245CE29C0](v8, v5);
          v14 = MEMORY[0x245CE29C0](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_47;
          }

          if (v9 >= v15)
          {
            goto LABEL_48;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_24130B06C(v5);
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          v5 = sub_24130B06C(v5);
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_45;
        }

        *(v17 + 8 * v9 + 32) = v13;

        *a1 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_44;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_2413544EC();
}

uint64_t sub_24126E2A0(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = sub_24135472C();
    if (result == *(a4 + 36))
    {
      sub_24135473C();
      sub_241352C5C();
      swift_dynamicCast();
      sub_2412FD968(v8);
      v6 = v5;

      if (v6)
      {
        sub_2413546FC();
        v7 = sub_24135475C();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return sub_24135447C();
}

uint64_t sub_24126E3F8(uint64_t result, unint64_t a2, int a3, char a4, uint64_t a5)
{
  v7 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_24135472C();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_24135473C();
      sub_241352C5C();
      swift_dynamicCast();
      a2 = sub_2412FD968(v12);
      v10 = v9;

      if (v10)
      {
LABEL_12:
        v11 = *(a5 + 56);
        v8 = *(*(a5 + 48) + 8 * a2);
        *v7 = *(v11 + 8 * a2);

        return v8;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24135477C();
    sub_241352C5C();
    swift_dynamicCast();
    v8 = v12;
    sub_24135255C();
    swift_dynamicCast();
    *v7 = v12;
    return v8;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_24126E5B0(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_24135477C();
      sub_241246158(0, &qword_27E538A40);
      swift_dynamicCast();
      type metadata accessor for EntityController();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_24135472C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24135473C();
  sub_241246158(0, &qword_27E538A40);
  swift_dynamicCast();
  a2 = sub_2412FDC20(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t _s11AssetViewer0A6LoaderV12FileMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_24135497C() & 1) != 0)
  {
  }

  return 0;
}

unint64_t sub_24126E81C()
{
  result = qword_27E5384C0;
  if (!qword_27E5384C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5384C0);
  }

  return result;
}

unint64_t sub_24126E874()
{
  result = qword_27E5384C8;
  if (!qword_27E5384C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5384C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackedRaycastState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackedRaycastState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AssetLoader.LoadInformation()
{
  result = qword_27E5384D0;
  if (!qword_27E5384D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24126EA9C()
{
  sub_24135152C();
  if (v0 <= 0x3F)
  {
    sub_24126EB74();
    if (v1 <= 0x3F)
    {
      sub_24126EBD8();
      if (v2 <= 0x3F)
      {
        sub_24126EC50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24126EB74()
{
  if (!qword_27E5384E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5384E8);
    v0 = sub_24135432C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E5384E0);
    }
  }
}

void sub_24126EBD8()
{
  if (!qword_27E5384F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5384F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E5384F0);
    }
  }
}

void sub_24126EC50()
{
  if (!qword_27E538500)
  {
    sub_24135152C();
    v0 = sub_241353E7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E538500);
    }
  }
}

__n128 __swift_memcpy56_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24126ECC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24126ED0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24126ED84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24126EDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24126EE38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24124647C;

  return sub_241347174(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24126EF10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538328);
  MEMORY[0x28223BE20](v0 - 8);
  v24[0] = v24 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_241352B6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  swift_allocObject();
  v9 = sub_24135180C();
  sub_241352C1C();

  sub_2413518AC();
  sub_241352B5C();

  v10 = *(v6 + 8);
  v10(v8, v5);
  sub_2413518AC();
  sub_241311740(1, v8);
  v10(v8, v5);
  sub_2413519BC();
  sub_2413519CC();
  sub_241352E3C();
  sub_2413519CC();
  sub_241352BAC();
  sub_241352B7C();
  sub_241246278(v4, &qword_27E538550);
  v11 = sub_2413516CC();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_241352B7C();
  sub_241246278(v4, &qword_27E538550);
  sub_241352BEC();
  sub_241352BCC();

  sub_241352BCC();
  v12 = v24[0];
  sub_241352E7C();
  v13 = sub_241352E8C();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = sub_241352A7C();
  sub_241352ACC();
  v14(v25, 0);
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v15 = sub_241352FFC();
  __swift_project_value_buffer(v15, qword_27E5384A0);

  v16 = sub_241352FDC();
  v17 = sub_2413540DC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[1] = v9;
    v25[0] = v19;
    *v18 = 136315138;

    v20 = sub_241353C7C();
    v22 = sub_2412DDC2C(v20, v21, v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_241215000, v16, v17, "processLoadedEntities post-fixups, wrapperEntity: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CE4870](v19, -1, -1);
    MEMORY[0x245CE4870](v18, -1, -1);
  }

  printHierarchy(entity:level:debugString:)(v9, 0, 0, 0xE000000000000000);
  return v9;
}

uint64_t sub_24126F3F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *), void *a5)
{
  v10 = sub_241352AEC();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v96 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v97 = v13;
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v90 - v15;
  v16 = sub_24135152C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v106 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v90 - v20;
  v22 = swift_allocObject();
  v100 = a2;
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v108 = v21;
  v109 = v22;
  v23 = *(v17 + 16);
  v24 = a1;
  v107 = v16;
  v25 = v16;
  v26 = a1;
  v27 = v23;
  v23(v21, v24, v25);
  v104 = Information;
  v101 = a3;

  v102 = a5;

  ServiceLocator = REEngineGetServiceLocator();
  v29 = MEMORY[0x245CE3AB0](ServiceLocator);
  v103 = a4;
  if (v29)
  {
    v30 = RERenderManagerGetRenderDevice();
    if (([objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v116[3] = sub_241351AFC();
      v116[4] = MEMORY[0x277CDAC58];
      __swift_allocate_boxed_opaque_existential_1(v116);
      swift_unknownObjectRetain();
      v94 = v30;
      v31 = sub_241351AEC();
      v32 = *(v26 + *(v104 + 28));
      v105 = v17;
      if (!v32)
      {
        v66 = v27;
        MEMORY[0x28223BE20](v31);
        v65 = v108;
        v67 = v109;
        *(&v90 - 6) = v108;
        *(&v90 - 5) = v116;
        *(&v90 - 4) = sub_2412807A0;
        *(&v90 - 3) = v67;
        *(&v90 - 2) = v26;
        v68 = [objc_opt_self() currentThread];
        v69 = [v68 isMainThread];

        if (v69)
        {
          v106 = &v90;
          sub_241352C5C();
          sub_24127C104(v116, &v124);
          v70 = v91;
          sub_241352ADC();
          v72 = sub_241352C2C();
          (*(v92 + 8))(v70, v93);
          v73 = (v26 + *(v104 + 32));
          v75 = *v73;
          v74 = v73[1];
          v76 = qword_27E537C60;

          if (v76 != -1)
          {
            swift_once();
          }

          v124.i64[0] = v75;
          v124.i64[1] = v74;
          LOWORD(v125) = 514;
          BYTE2(v125) = 2;
          *(&v125 + 3) = v112;
          BYTE7(v125) = v113;
          *(&v125 + 1) = 3;
          v126 = xmmword_27E541898;
          *&v127 = qword_27E5418A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_241365C30;
          *(v77 + 32) = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
          v78 = (*(v105 + 80) + 32) & ~*(v105 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_241365EA0;
          v66(v79 + v78, v108, v107);

          sub_241265FA4(&v124, v77, v79, &v117);

          v114[0] = v124;
          v114[1] = v125;
          v114[2] = v126;
          v115 = v127;
          sub_241244AE8(v114);
          v128 = v121;
          v129 = v122;
          v130[0] = v123[0];
          *(v130 + 9) = *(v123 + 9);
          v124 = v117;
          v125 = v118;
          v126 = v119;
          v127 = v120;
          if (qword_27E537D08 != -1)
          {
            swift_once();
          }

          v80 = qword_27E53A740;
          v81 = sub_241353EEC();
          v82 = v99;
          (*(*(v81 - 8) + 56))(v99, 1, 1, v81);
          v83 = qword_27E537D00;
          v84 = v101;

          v85 = v103;
          if (v83 != -1)
          {
            swift_once();
          }

          v86 = qword_27E53A738;
          v87 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
          v88 = swift_allocObject();
          *(v88 + 16) = v86;
          *(v88 + 24) = v87;
          *(v88 + 32) = v80;
          *(v88 + 40) = 9;
          *(v88 + 48) = v100;
          *(v88 + 56) = v84;

          sub_241327238(0, 0, v82, &unk_241366D68, v88);

          v110[4] = v128;
          v110[5] = v129;
          *v111 = v130[0];
          *&v111[9] = *(v130 + 9);
          v110[0] = v124;
          v110[1] = v125;
          v110[2] = v126;
          v110[3] = v127;
          v85(v110);
          swift_unknownObjectRelease();

          sub_241246278(&v124, &qword_27E538348);
          v17 = v105;
          v64 = v107;
          v65 = v108;
        }

        else
        {
          sub_241246158(0, &qword_27E538920);
          v71 = sub_24135416C();
          sub_24135417C();

          swift_unknownObjectRelease();
          v64 = v107;
          v17 = v105;
        }

        goto LABEL_28;
      }

      if (qword_27E537B10 == -1)
      {
LABEL_5:
        v33 = sub_241352FFC();
        __swift_project_value_buffer(v33, qword_27E5384A0);
        v34 = sub_241352FDC();
        v35 = sub_2413540DC();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_241215000, v34, v35, "Loading Reality File in background", v36, 2u);
          MEMORY[0x245CE4870](v36, -1, -1);
        }

        v37 = swift_allocObject();
        v101 = v37;
        *(v37 + 16) = 0;
        v104 = v37 + 16;
        sub_241352C5C();
        sub_24127C104(v116, &v124);
        v38 = v108;
        v39 = sub_241352B9C();
        v103 = v39;
        sub_241246278(&v124, &qword_27E538528);
        v124.i64[0] = v39;
        v40 = swift_allocObject();
        v102 = v40;
        v41 = v109;
        v40[2] = sub_2412807A0;
        v40[3] = v41;
        v40[4] = v37;
        v42 = v98;
        sub_24127BF00(v26, v98);
        v43 = v107;
        v27(v106, v38, v107);
        v44 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v45 = v105;
        v46 = (v97 + *(v105 + 80) + v44) & ~*(v105 + 80);
        v47 = (v95 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_2412807A0;
        *(v48 + 24) = v41;
        sub_241244A20(v42, v48 + v44);
        v49 = v43;
        v50 = v101;
        (*(v45 + 32))(v48 + v46, v106, v49);
        *(v48 + v47) = v50;
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538530);
        sub_24123D370(&qword_27E538538, &qword_27E538530);
        v51 = sub_24135319C();

        v52 = v104;
        swift_beginAccess();
        *v52 = v51;

        if (*v52)
        {
          v53 = qword_27E537B18;

          if (v53 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D50);
          sub_24123D370(&qword_27E538540, &qword_27E539D50);
          sub_2413530BC();
          swift_endAccess();
        }

        else
        {
        }

        swift_unknownObjectRelease();
        v64 = v107;
        v17 = v105;
        v65 = v108;
LABEL_28:
        __swift_destroy_boxed_opaque_existential_0(v116);
        goto LABEL_29;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  sub_241255C30();
  v54 = swift_allocError();
  *v55 = 0xD000000000000020;
  *(v55 + 8) = 0x800000024135ECA0;
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v124.i64[0] = v54;
  sub_24127BE04(&v124);
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v56 = qword_27E53A740;
  v57 = sub_241353EEC();
  v58 = v99;
  (*(*(v57 - 8) + 56))(v99, 1, 1, v57);
  v59 = qword_27E537D00;
  v60 = v101;

  if (v59 != -1)
  {
    swift_once();
  }

  v61 = qword_27E53A738;
  v62 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  *(v63 + 24) = v62;
  *(v63 + 32) = v56;
  *(v63 + 40) = 9;
  *(v63 + 48) = v100;
  *(v63 + 56) = v60;

  sub_241327238(0, 0, v58, &unk_241366D58, v63);

  v121 = v128;
  v122 = v129;
  v123[0] = v130[0];
  *(v123 + 9) = *(v130 + 9);
  v117 = v124;
  v118 = v125;
  v119 = v126;
  v120 = v127;
  v103(&v117);

  v64 = v107;
  v65 = v108;
LABEL_29:
  (*(v17 + 8))(v65, v64);
}

uint64_t sub_24127042C(int a1, id a2)
{
  if (a1 != 1)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [a2 pixelFormat];
  if ((v3 - 10) < 2)
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (v3 != 71 && v3 != 70)
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E5384A0);
    v6 = a2;
    v7 = sub_241352FDC();
    v8 = sub_2413540BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v6 pixelFormat];

      _os_log_impl(&dword_241215000, v7, v8, "Unexpected pixel format %lu", v9, 0xCu);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v4 = 2;
LABEL_13:

  return v4;
}

void sub_2412705A0(uint64_t a1, double a2)
{
  v3 = v2;
  sub_241353A8C();
  v5 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  sub_24135394C();
  sub_241353A2C();
  sub_24135484C();
  if (v75)
  {
LABEL_2:
    v64 = v5;
    while (1)
    {
      v6 = RETextureImportOperationGetImageUTType();
      if (v6)
      {
        v7 = v6;
        v8 = RETextureImportOperationCopyImageProperties();
        if (v8)
        {
          v9 = v8;
          PixelFormatMode = RETextureImportOperationGetPixelFormatMode();
          v11 = RETextureImportOperationCopyTextureDescriptorTemplate();
          v72 = RETextureImportOperationGetMipmapMode() != 2;
          v12 = v11;
          v13 = sub_24127042C(PixelFormatMode, v12);
          v15 = v14;
          v16 = objc_allocWithZone(ASVTextureDescription);
          v17 = v9;
          v18 = v7;
          v19 = sub_241353BDC();

          v20 = [v16 initWithName:v19 destinationPixelFormat:v13 imageProperties:v15 fileType:v17 generateMipmaps:v18, v72];

          if (v20)
          {
            v24 = v20;
            MEMORY[0x245CE21C0]();
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_241353E4C();
            }

            sub_241353E6C();

            v5 = v76;
            sub_24135484C();
            goto LABEL_2;
          }

          goto LABEL_3;
        }
      }

      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v21 = sub_241352FFC();
      __swift_project_value_buffer(v21, qword_27E5384A0);
      v18 = sub_241352FDC();
      v22 = sub_2413540BC();
      if (os_log_type_enabled(v18, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_241215000, v18, v22, "Either file type and/or image properties is NULL", v23, 2u);
        MEMORY[0x245CE4870](v23, -1, -1);
      }

LABEL_3:

      sub_24135484C();
      if (!v75)
      {
        v3 = v2;
        v5 = v64;
        break;
      }
    }
  }

  v25 = [objc_opt_self() defaultTextureConverters];
  if (!v25)
  {
    sub_241246158(0, &qword_27E538510);
    sub_241353E2C();
    v25 = sub_241353E1C();
  }

  v26 = objc_opt_self();
  sub_241246158(0, &qword_27E538518);
  v27 = sub_241353E1C();
  v28 = [v26 conversionEstimatesFromTextureDescriptions:v27 toFitAvailableMemory:a1 withConverters:v25 preferredMaxTextureSize:0 outcome:a2];

  if (v28)
  {
    sub_241246158(0, &qword_27E538520);
    v29 = sub_241353E2C();
    v30 = v29;
    if (v29 >> 62)
    {
LABEL_52:
      v73 = sub_2413544EC();
    }

    else
    {
      v73 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v26;
    v57 = v28;
    if (!v73)
    {
LABEL_42:

      [v56 peakMemoryForConversionEstimates_];

      return;
    }

    v31 = 0;
    v70 = v30 & 0xC000000000000001;
    v58 = v30 & 0xFFFFFFFFFFFFFF8;
    v32 = &selRef_addConstraints_;
    v65 = v5;
    while (1)
    {
      if (v70)
      {
        v33 = MEMORY[0x245CE29C0](v31, v30);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v31 >= *(v58 + 16))
        {
          goto LABEL_51;
        }

        v33 = *(v30 + 8 * v31 + 32);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      v28 = v33;
      v35 = [v28 downsamplingFactor];
      if (v35 == 1)
      {
      }

      else
      {
        v36 = v35;
        kdebug_texture_downsample_begin();
        v69 = v36;
        if (HIDWORD(v36))
        {

          __break(1u);
          return;
        }

        v67 = v34;
        if (qword_27E537B10 != -1)
        {
          swift_once();
        }

        v37 = sub_241352FFC();
        __swift_project_value_buffer(v37, qword_27E5384A0);
        v5 = v28;
        v38 = sub_241352FDC();
        v39 = sub_2413540DC();
        v71 = v3;
        v66 = v28;
        if (os_log_type_enabled(v38, v39))
        {
          v3 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v74 = v63;
          *v3 = 136316162;
          v40 = [v5 name];
          v61 = v38;
          v41 = v30;
          v42 = sub_241353C0C();
          v44 = v43;

          v45 = v42;
          v30 = v41;
          v46 = sub_2412DDC2C(v45, v44, &v74);

          *(v3 + 4) = v46;
          *(v3 + 12) = 1024;
          LOBYTE(v44) = v39;
          v26 = v69;
          *(v3 + 14) = v69;
          *(v3 + 18) = 1024;
          [v5 originalSize];
          v59 = v47;

          *(v3 + 20) = v59;
          *(v3 + 24) = 1024;
          v32 = &selRef_addConstraints_;
          [v5 originalSize];
          v60 = v48;

          *(v3 + 26) = v60;
          *(v3 + 30) = 2112;
          v49 = [objc_opt_self() currentThread];
          *(v3 + 32) = v49;
          v28 = v61;
          *v62 = v49;
          _os_log_impl(&dword_241215000, v61, v44, "Downsampling %s by a factor of %u, original size: %dx%d, Thread: %@", v3, 0x28u);
          sub_241246278(v62, &unk_27E539B90);
          MEMORY[0x245CE4870](v62, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x245CE4870](v63, -1, -1);
          MEMORY[0x245CE4870](v3, -1, -1);
        }

        else
        {

          v26 = v69;
        }

        if ((v26 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v50 = [v5 name];

        sub_241353C0C();
        sub_241353A3C();
        v3 = v71;
        if (v71)
        {

          return;
        }

        [v5 v32[166]];
        [v5 v32[166]];
        kdebug_texture_downsample_end();
        v5 = v65;
        v28 = v66;
        v34 = v67;
      }

      ++v31;
      if (v34 == v73)
      {
        goto LABEL_42;
      }
    }
  }

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v51 = sub_241352FFC();
  __swift_project_value_buffer(v51, qword_27E5384A0);
  v52 = sub_241352FDC();
  v53 = sub_2413540BC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_241215000, v52, v53, "File too big to load on this device", v54, 2u);
    MEMORY[0x245CE4870](v54, -1, -1);
  }

  sub_241255C30();
  swift_allocError();
  *(v55 + 8) = 0;
  *(v55 + 16) = 0;
  *v55 = 3;
  *(v55 + 24) = 2;
  swift_willThrow();
}

void sub_241270F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_OWORD *), uint64_t a7)
{
  v33 = a3;
  v34 = a4;
  v38 = a2;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v32 = *(Information - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](Information);
  v12 = sub_241353ABC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v37 = a6;
  v39 = v13;
  v13[4] = a7;
  sub_241353A9C();
  sub_241352C5C();
  v35 = a5;

  v36 = a7;

  v14 = sub_241353A7C();
  if (v14)
  {
    v15 = v14;
    sub_241353A8C();
    MEMORY[0x245CE1E80](0xD000000000000031, 0x800000024135EEA0);
    LOBYTE(v42[0]) = 0;
    sub_241353B0C();

    v16 = v38;
    sub_2412705A0(*(v38 + *(Information + 36)), *(v38 + *(Information + 36) + 8));

    sub_24127BF00(v16, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v28 = swift_allocObject();
    v29 = v34;
    v28[2] = v33;
    v28[3] = v29;
    v28[4] = v15;
    sub_241244A20(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v30 = (v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = MEMORY[0x277D84F90];
    v30[1] = 0x656E6961746E6F43;
    v30[2] = 0xE900000000000072;

    sub_241353A4C();
    if (*(v16 + *(Information + 28)))
    {
      sub_24135397C();
    }

    else
    {
      sub_241353A6C();
    }
  }

  else
  {
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v17 = sub_241352FFC();
    __swift_project_value_buffer(v17, qword_27E5384A0);
    v18 = sub_241352FDC();
    v19 = sub_2413540DC();
    v20 = v39;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_241215000, v18, v19, "Unable to create Live Pipeline Instance", v21, 2u);
      MEMORY[0x245CE4870](v21, -1, -1);
    }

    MEMORY[0x28223BE20](v22);
    *(&v32 - 2) = sub_241280850;
    *(&v32 - 1) = v20;
    v23 = [objc_opt_self() currentThread];
    v24 = [v23 isMainThread];

    if (v24)
    {
      sub_241255C30();
      v25 = swift_allocError();
      *v26 = 0xD000000000000027;
      *(v26 + 8) = 0x800000024135EE70;
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *&v42[0] = v25;
      sub_24127BE04(v42);
      swift_beginAccess();
      v40[4] = v42[4];
      v40[5] = v42[5];
      v41[0] = v43[0];
      *(v41 + 9) = *(v43 + 9);
      v40[0] = v42[0];
      v40[1] = v42[1];
      v40[2] = v42[2];
      v40[3] = v42[3];
      v37(v40);
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v31 = sub_24135416C();
      sub_24135417C();
    }
  }
}

uint64_t sub_241271608(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v83 = a3;
  v84 = a2;
  v81 = a1;
  v9 = sub_2413538CC();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2413538FC();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v12 = *(Information - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](Information);
  v71 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v79 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  *(v21 + 3) = a4;
  v70 = a4;
  *(v21 + 4) = a5;
  LODWORD(v84) = *v84;
  sub_24127BF00(a1, v20);
  v22 = *(v12 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  sub_241244A20(v20, v24 + v23);
  *(v24 + v23 + v13) = v84;
  v25 = v24 + ((v23 + v13) & 0xFFFFFFFFFFFFFFF8);
  *(v25 + 8) = sub_241280850;
  *(v25 + 16) = v21;
  swift_retain_n();
  v82 = a5;
  v26 = v81;
  swift_retain_n();
  v84 = v21;

  sub_2413514EC();
  sub_241353B1C();
  swift_allocObject();
  v27 = sub_241353ADC();
  if (!v27)
  {
    v44 = v71;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v45 = sub_241352FFC();
    __swift_project_value_buffer(v45, qword_27E5384A0);
    sub_24127BF00(v26, v44);
    v46 = sub_241352FDC();
    v47 = sub_2413540DC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&aBlock = v49;
      *v48 = 136380675;
      v50 = sub_2413514EC();
      v52 = v51;
      sub_241244A8C(v44);
      v53 = sub_2412DDC2C(v50, v52, &aBlock);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_241215000, v46, v47, "Unable to create stage for file %{private}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v54 = v49;
      v27 = 0;
      MEMORY[0x245CE4870](v54, -1, -1);
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    else
    {

      v55 = sub_241244A8C(v44);
    }

    MEMORY[0x28223BE20](v55);
    v61 = v84;
    *(&v69 - 2) = sub_241280850;
    *(&v69 - 1) = v61;
    v62 = [objc_opt_self() currentThread];
    v63 = [v62 isMainThread];

    if (v63)
    {
      sub_241255C30();
      v64 = swift_allocError();
      *v65 = 0xD000000000000017;
      *(v65 + 8) = 0x800000024135EE50;
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      *&aBlock = v64;
      sub_24127BE04(&aBlock);
      swift_beginAccess();
      v85[4] = v91;
      v85[5] = v92;
      v86[0] = v93[0];
      *(v86 + 9) = *(v93 + 9);
      v85[0] = aBlock;
      v85[1] = v88;
      v85[2] = v89;
      v85[3] = v90;
      v70(v85);
    }

    else
    {
      sub_241246158(0, &qword_27E538920);
      v66 = sub_24135416C();
      sub_24135417C();
    }

    goto LABEL_15;
  }

  v28 = v78;
  sub_24127BF00(v26, v78);
  v29 = v79;
  sub_24127BF00(v28, v79);
  v30 = (v22 + 40) & ~v22;
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = sub_241280850;
  v31[4] = v84;
  v32 = sub_241244A20(v28, v31 + v30);
  v33 = (v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_2412807B0;
  v33[1] = v24;
  v34 = v26 + *(Information + 28);
  v35 = v27;
  v36 = *v34;
  v37 = v24;
  if (!*v34)
  {
    MEMORY[0x28223BE20](v32);
    *(&v69 - 2) = sub_2412807AC;
    *(&v69 - 1) = v31;
    v56 = objc_opt_self();

    v57 = [v56 currentThread];
    v27 = v35;
    v58 = [v57 isMainThread];

    if (v58)
    {
      v59 = v83;

      v60 = v82;

      sub_241270F54(v27, v29, sub_2412807B0, v37, v59, v70, v60);

      sub_241244A8C(v29);
    }

    else
    {
      sub_241244A8C(v29);
      sub_241246158(0, &qword_27E538920);
      v67 = sub_24135416C();
      sub_24135417C();
    }

LABEL_15:

    return v27;
  }

  v38 = *(v34 + 8);

  sub_24127EF78(v36, v38);
  sub_241244A8C(v29);

  v39 = swift_allocObject();
  *(v39 + 16) = sub_2412807AC;
  *(v39 + 24) = v31;
  *&v89 = sub_2412807B4;
  *(&v89 + 1) = v39;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v88 = sub_2412D5698;
  *(&v88 + 1) = &block_descriptor_412;
  v40 = _Block_copy(&aBlock);

  v41 = v72;
  sub_2413538DC();
  *&v85[0] = MEMORY[0x277D84F90];
  sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
  v81 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  Information = v37;
  sub_24123D370(&qword_27E539880, &unk_27E538930);
  v42 = v74;
  v43 = v77;
  sub_24135444C();
  MEMORY[0x245CE2540](0, v41, v42, v40);
  _Block_release(v40);

  (*(v76 + 8))(v42, v43);
  (*(v73 + 8))(v41, v75);

  return v81;
}

unint64_t sub_2412720D0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_241353CFC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_241353D9C();
}

uint64_t sub_24127218C(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v54 = a3;
  v6 = sub_24135152C();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128);
  result = MEMORY[0x28223BE20](v9);
  v53 = &v45 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v14 = *(result + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = *(v11 + 72);
  v45 = v15;
  v46 = a1;
  v16 = a1 + v15;
  v17 = v53;
  sub_241246210(v16, v53, &qword_27E538128);
  v18 = *(v48 + 32);
  v51 = (v48 + 32);
  v52 = v6;
  v18(v8, v17, v6);
  v49 = v14;
  v19 = *(v17 + v14);
  v20 = *v54;
  v22 = sub_2412FDA8C(v8);
  v23 = *(v20 + 2);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v21;
  if (*(v20 + 3) >= v25)
  {
    v17 = v51;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v28 = v19;
    while (1)
    {
LABEL_8:
      v19 = *v54;
      v47 = v17 - 3;
      if (v3)
      {
        v3 = v52;
        (*(v17 - 3))(v8, v52);
        *(*(v19 + 7) + 8 * v22) = v28;
      }

      else
      {
        *(v19 + (v22 >> 6) + 8) |= 1 << v22;
        v3 = v52;
        result = (v18)(*(v19 + 6) + *(v48 + 72) * v22, v8, v52);
        *(*(v19 + 7) + 8 * v22) = v28;
        v29 = *(v19 + 2);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        *(v19 + 2) = v31;
      }

      v18 = (v13 - 1);
      if (v13 == 1)
      {
        return result;
      }

      v13 = v46 + v50 + v45;
      while (1)
      {
        v32 = v53;
        sub_241246210(v13, v53, &qword_27E538128);
        v19 = *v17;
        (*v17)(v8, v32, v3);
        v33 = *(v32 + v49);
        v34 = *v54;
        v22 = sub_2412FDA8C(v8);
        v36 = *(v34 + 2);
        v37 = (v35 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          break;
        }

        v39 = v35;
        if (*(v34 + 3) < v38)
        {
          sub_2412A37C0(v38, 1);
          v40 = sub_2412FDA8C(v8);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_27;
          }

          v22 = v40;
        }

        v42 = *v54;
        if (v39)
        {
          v3 = v52;
          (*v47)(v8, v52);
          *(*(v42 + 7) + 8 * v22) = v33;

          v17 = v51;
        }

        else
        {
          *(v42 + (v22 >> 6) + 8) |= 1 << v22;
          v17 = v51;
          v3 = v52;
          result = (v19)(*(v42 + 6) + *(v48 + 72) * v22, v8, v52);
          *(*(v42 + 7) + 8 * v22) = v33;
          v43 = *(v42 + 2);
          v30 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v30)
          {
            goto LABEL_25;
          }

          *(v42 + 2) = v44;
        }

        v13 += v50;
        v18 = (v18 - 1);
        if (!v18)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v19;
      sub_2412A7DA0();
    }
  }

  sub_2412A37C0(v25, a2 & 1);
  v26 = sub_2412FDA8C(v8);
  if ((v3 & 1) == (v27 & 1))
  {
    v22 = v26;
    v28 = v19;
    v17 = v51;
    goto LABEL_8;
  }

LABEL_27:
  result = sub_2413549DC();
  __break(1u);
  return result;
}

uint64_t sub_241272604(uint64_t a1, uint64_t a2, double a3)
{
  v107 = *MEMORY[0x277D85DE8];
  v102 = MEMORY[0x277D84F90];
  log = *(a2 + 16);
  if (!log)
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
LABEL_34:
    v39 = [objc_opt_self() defaultTextureConverters];
    v3 = v39;
    v40 = v39;
    if (!v39)
    {
      sub_241246158(0, &qword_27E538510);
      sub_241353E2C();
      v40 = sub_241353E1C();

      sub_241353E2C();
      v3 = sub_241353E1C();
    }

    v41 = objc_opt_self();
    v42 = v39;
    v43 = [v41 viewerMemoryAvailableForTexturesOnHighMemoryDevices];
    v101 = 0;
    Texture = objc_opt_self();
    sub_241246158(0, &qword_27E538518);
    v44 = sub_241353E1C();
    v4 = &_OBJC_LABEL_PROTOCOL___CAMDynamicShutterControlDelegate;

    if (qword_27E537B10 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_37;
  }

  Texture = 0;
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
  while (1)
  {
    TextureCount = RESceneImportOperationGetTextureCount();
    if (TextureCount < 0)
    {
      goto LABEL_68;
    }

    v88 = Texture;
    if (TextureCount)
    {
      break;
    }

LABEL_3:
    Texture = v88 + 1;
    if ((v88 + 1) == log)
    {
      goto LABEL_34;
    }
  }

  v3 = 0;
  v96 = TextureCount;
  while (1)
  {
    Texture = RESceneImportOperationGetTexture();
    v4 = RETextureImportOperationCopyTextureAssetPath();
    v9 = sub_241353C0C();
    v11 = v10;
    PixelFormatMode = RETextureImportOperationGetPixelFormatMode();
    v13 = RETextureImportOperationCopyTextureDescriptorTemplate();
    MipmapMode = RETextureImportOperationGetMipmapMode();
    v14 = RETextureImportOperationGetImageUTType();
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v94 = RETextureImportOperationCopyImageProperties();
    if (!v94)
    {

LABEL_18:

      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v28 = sub_241352FFC();
      __swift_project_value_buffer(v28, qword_27E5384A0);
      v29 = sub_241352FDC();
      v30 = sub_2413540BC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_241215000, v29, v30, "Either file type and/or image properties is NULL", v31, 2u);
        MEMORY[0x245CE4870](v31, -1, -1);
      }

      goto LABEL_8;
    }

    v93 = v13;
    v16 = sub_24127042C(PixelFormatMode, v93);
    v90 = v17;
    v91 = v16;
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      sub_2412FDA14(v9, v11);
      if (v18)
      {

        sub_2413545EC();

        v105 = 0xD00000000000001CLL;
        v106 = 0x800000024135EDD0;
        MEMORY[0x245CE20D0](v9, v11);
        goto LABEL_76;
      }
    }

    v19 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v19;
    v20 = sub_2412FDA14(v9, v11);
    v22 = *(v19 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (*(v19 + 24) < v25)
    {
      sub_2412A3520(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_2412FDA14(v9, v11);
      if ((v26 & 1) != (v27 & 1))
      {
        while (1)
        {
          sub_2413549DC();
          __break(1u);
LABEL_78:

LABEL_79:
          v103 = 0;
          v104 = 0xE000000000000000;
          sub_2413545EC();

          v103 = 0xD000000000000011;
          v104 = 0x800000024135EDB0;
          v80 = [isUniquelyReferenced_nonNull_native name];

          v81 = sub_241353C0C();
          v83 = v82;

          MEMORY[0x245CE20D0](v81, v83);

LABEL_76:
          sub_2413547DC();
          __break(1u);
        }
      }

LABEL_23:
      if ((v26 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v33 = v20;
    sub_2412A7C38();
    v20 = v33;
    if ((v26 & 1) == 0)
    {
LABEL_26:
      isUniquelyReferenced_nonNull_native = v105;
      *(v105 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v34 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v20);
      *v34 = v9;
      v34[1] = v11;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v20) = Texture;
      v35 = *(isUniquelyReferenced_nonNull_native + 16);
      v24 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v24)
      {
        goto LABEL_67;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v36;
      goto LABEL_28;
    }

LABEL_24:
    v32 = v20;

    isUniquelyReferenced_nonNull_native = v105;
    *(*(v105 + 56) + 8 * v32) = Texture;
LABEL_28:
    v37 = [objc_allocWithZone(ASVTextureDescription) initWithName:v4 destinationPixelFormat:v91 imageProperties:v90 fileType:v94 generateMipmaps:v15, MipmapMode != 2];

    if (v37)
    {
      v38 = v37;
      MEMORY[0x245CE21C0]();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
    }

    else
    {
    }

LABEL_8:
    v3 = (v3 + 1);
    if (v96 == v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
LABEL_37:
    v45 = sub_241352FFC();
    __swift_project_value_buffer(v45, qword_27E5384A0);
    v46 = sub_241352FDC();
    v47 = sub_2413540DC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      swift_beginAccess();
      *(v48 + 4) = v101;
      _os_log_impl(&dword_241215000, v46, v47, "highMemoryDeviceOutcome: %ld", v48, 0xCu);
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    swift_beginAccess();
    if (v101 == 3)
    {

      v49 = sub_241352FDC();
      v50 = sub_2413540BC();
      v51 = 2;
      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_241215000, v49, v50, "File too big to load on *any* device", v52, 2u);
        goto LABEL_63;
      }

      goto LABEL_65;
    }

    v53 = sub_241353E1C();
    Texture = [Texture *(v4 + 808)];

    if (!Texture)
    {
      goto LABEL_61;
    }

    sub_241246158(0, &qword_27E538520);
    v54 = sub_241353E2C();

    if (!(v54 >> 62))
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
        goto LABEL_45;
      }

LABEL_73:
    }

    v55 = sub_2413544EC();
    if (!v55)
    {
      goto LABEL_73;
    }

LABEL_45:
    v4 = 0;
    v97 = v54 & 0xFFFFFFFFFFFFFF8;
    v98 = v54 & 0xC000000000000001;
    a1 = 136315394;
    v95 = isUniquelyReferenced_nonNull_native;
    v85 = v54;
LABEL_49:
    if (v98)
    {
      v56 = MEMORY[0x245CE29C0](v4, v54);
      v57 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v4 >= *(v97 + 16))
    {
      continue;
    }

    break;
  }

  v56 = *(v54 + 8 * v4 + 32);
  v57 = (v4 + 1);
  if (!__OFADD__(v4, 1))
  {
LABEL_52:
    v100 = v57;
    v58 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = v56;
    v59 = [isUniquelyReferenced_nonNull_native name];
    v60 = sub_241353C0C();
    v62 = v61;

    if (!*(v58 + 16))
    {
      goto LABEL_78;
    }

    v63 = sub_2412FDA14(v60, v62);
    v65 = v64;

    if ((v65 & 1) == 0)
    {
      goto LABEL_79;
    }

    v3 = *(*(v58 + 56) + 8 * v63);
    Texture = [isUniquelyReferenced_nonNull_native downsamplingFactor];

    if (Texture != 1)
    {
      kdebug_texture_downsample_begin();
      if (HIDWORD(Texture))
      {
        goto LABEL_70;
      }

      v66 = isUniquelyReferenced_nonNull_native;
      v67 = sub_241352FDC();
      v68 = sub_2413540DC();

      v92 = v68;
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v103 = v89;
        *v69 = 136315394;
        loga = v67;
        v70 = v66;
        v71 = [v66 name];
        v72 = sub_241353C0C();
        v74 = v73;

        v66 = v70;
        v75 = sub_2412DDC2C(v72, v74, &v103);

        *(v69 + 4) = v75;
        *(v69 + 12) = 1024;
        *(v69 + 14) = Texture;
        _os_log_impl(&dword_241215000, loga, v92, "Downsampling %s by a factor of %u", v69, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x245CE4870](v89, -1, -1);
        v76 = v69;
        v54 = v85;
        MEMORY[0x245CE4870](v76, -1, -1);
      }

      else
      {
      }

      RETextureImportOperationSetDimensionsMode();
      RETextureImportOperationSetDownsampleFactor();
      v3 = &selRef_addConstraints_;
      [v66 estimatedMemoryDelta];
      [v66 estimatedMemoryDelta];
      kdebug_texture_downsample_end();
    }

    ++v4;
    isUniquelyReferenced_nonNull_native = v95;
    if (v100 == v55)
    {
      goto LABEL_73;
    }

    goto LABEL_49;
  }

LABEL_60:
  __break(1u);
LABEL_61:

  v49 = sub_241352FDC();
  v77 = sub_2413540BC();
  if (os_log_type_enabled(v49, v77))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_241215000, v49, v77, "File too big to load on *this* device", v52, 2u);
    v51 = 3;
LABEL_63:
    MEMORY[0x245CE4870](v52, -1, -1);
  }

  else
  {
    v51 = 3;
  }

LABEL_65:

  sub_241255C30();
  swift_allocError();
  *(v78 + 8) = 0;
  *(v78 + 16) = 0;
  *v78 = v51;
  *(v78 + 24) = 2;
  swift_willThrow();
}

void sub_241273248(int64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v68 = a2;
  v67 = sub_2413522BC();
  i = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578);
  v6 = MEMORY[0x28223BE20](v69);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - v8;
  if (qword_27E537B10 != -1)
  {
LABEL_39:
    swift_once();
  }

  v10 = sub_241352FFC();
  v65 = __swift_project_value_buffer(v10, qword_27E5384A0);
  v11 = sub_241352FDC();
  v12 = sub_2413540DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_241215000, v11, v12, "importModelFile..... begin preflight", v13, 2u);
    MEMORY[0x245CE4870](v13, -1, -1);
  }

  swift_beginAccess();
  v63 = a1;
  v14 = *(a1 + 16);
  a1 = v14 + 64;
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = (i + 8);
  v70 = v14;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v9;
      i = v20;
LABEL_12:
      v22 = __clz(__rbit64(v17)) | (i << 6);
      v23 = v70;
      v24 = *(v70 + 48);
      v25 = sub_24135152C();
      v26 = *(v25 - 8);
      v27 = v24 + *(v26 + 72) * v22;
      v9 = v21;
      (*(v26 + 16))(v21, v27, v25);
      *(v21 + *(v69 + 48)) = *(*(v23 + 56) + 8 * v22);

      v28 = v66;
      sub_2413521AC();
      sub_2413516FC();
      (*v19)(v28, v67);
      swift_beginAccess();
      LODWORD(v22) = RESceneImportOperationPreflight();
      swift_endAccess();
      if (!v22)
      {
        break;
      }

      v17 &= v17 - 1;
      sub_241246278(v21, &qword_27E538578);
      v20 = i;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    v56 = v68;
    swift_beginAccess();
    v57 = *(v56 + 16);
    if (v57)
    {
      type metadata accessor for CFError(0);
      sub_24127F10C(&qword_27E538588, type metadata accessor for CFError);
      v58 = v57;
      swift_allocError();
      *v59 = v58;
    }

    else
    {
      sub_241255C30();
      swift_allocError();
      *v60 = 0xD00000000000001ELL;
      *(v60 + 8) = 0x800000024135ED70;
      *(v60 + 16) = 0;
      *(v60 + 24) = 0;
    }

    swift_willThrow();

    sub_241246278(v21, &qword_27E538578);
  }

  else
  {
    while (1)
    {
LABEL_8:
      i = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (i >= v18)
      {
        break;
      }

      v17 = *(a1 + 8 * i);
      ++v20;
      if (v17)
      {
        v21 = v9;
        goto LABEL_12;
      }
    }

    v29 = sub_241352FDC();
    v30 = sub_2413540DC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_241215000, v29, v30, "importModelFile..... preflight completed", v31, 2u);
      MEMORY[0x245CE4870](v31, -1, -1);
    }

    v32 = v63;
    swift_beginAccess();

    v34 = v61;
    v35 = sub_24125F684(v33);

    Information = type metadata accessor for AssetLoader.LoadInformation();
    sub_241272604(*(v62 + *(Information + 36)), v35, *(v62 + *(Information + 36) + 8));

    if (!v34)
    {
      v37 = sub_241352FDC();
      v38 = sub_2413540DC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_241215000, v37, v38, "importModelFile..... begin run part", v39, 2u);
        MEMORY[0x245CE4870](v39, -1, -1);
      }

      swift_beginAccess();
      v40 = *(v32 + 16);
      v41 = v40 + 64;
      v42 = 1 << *(v40 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v40 + 64);
      a1 = (v42 + 63) >> 6;
      v70 = v40;
      swift_bridgeObjectRetain_n();
      v45 = 0;
      for (i = &unk_241366CD0; v44; v45 = v9)
      {
        v9 = v45;
LABEL_27:
        v46 = __clz(__rbit64(v44)) | (v9 << 6);
        v47 = v70;
        v48 = *(v70 + 48);
        v49 = sub_24135152C();
        v50 = *(v49 - 8);
        v51 = v48 + *(v50 + 72) * v46;
        v52 = v64;
        (*(v50 + 16))(v64, v51, v49);
        *(v52 + *(v69 + 48)) = *(*(v47 + 56) + 8 * v46);

        sub_2413521DC();
        v44 &= v44 - 1;
        sub_241246278(v52, &qword_27E538578);
      }

      while (1)
      {
        v9 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_38;
        }

        if (v9 >= a1)
        {

          v53 = sub_241352FDC();
          v54 = sub_2413540DC();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_241215000, v53, v54, "importModelFile..... run completed", v55, 2u);
            MEMORY[0x245CE4870](v55, -1, -1);
          }

          return;
        }

        v44 = *(v41 + 8 * v9);
        ++v45;
        if (v44)
        {
          goto LABEL_27;
        }
      }
    }
  }
}

uint64_t sub_241273A28(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v171 = a2;
  v159 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128);
  v165 = *(v10 - 8);
  v166 = v10;
  MEMORY[0x28223BE20](v10);
  v172 = v132 - v11;
  v12 = sub_2413538CC();
  v137 = *(v12 - 8);
  v138 = v12;
  MEMORY[0x28223BE20](v12);
  v135 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2413538FC();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2413522BC();
  v148 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v145 = *(Information - 8);
  v17 = MEMORY[0x28223BE20](Information);
  v150 = v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v147 = v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v152 = v132 - v22;
  v146 = v23;
  MEMORY[0x28223BE20](v21);
  v144 = v132 - v24;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578);
  MEMORY[0x28223BE20](v155);
  v154 = v132 - v25;
  v170 = sub_24135152C();
  v158 = *(v170 - 8);
  v26 = MEMORY[0x28223BE20](v170);
  v163 = v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v164 = v132 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v29 - 8);
  v141 = v132 - v30;
  v31 = sub_2413517BC();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  v139 = a3;
  *(v35 + 2) = a3;
  *(v35 + 3) = a4;
  v36 = a5;
  *(v35 + 4) = a5;
  *(v35 + 5) = a6;
  v153 = v35;
  v37 = a6;
  v143 = *v171;
  sub_241352DAC();
  v38 = v159;
  v39 = *(v159 + *(Information + 20));
  *(&v181 + 1) = MEMORY[0x277D841D8];
  *&aBlock = v39;
  v142 = a4;

  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v40 = sub_241352CAC();
  (*(v32 + 8))(v34, v31);
  v149 = v40;
  v41 = sub_241352D9C();
  v140 = v36;
  if (v41)
  {
    v167 = v41;
    v132[1] = v37;
    v42 = swift_allocObject();
    v43 = *(v38 + *(Information + 40));
    v44 = *(v43 + 16);
    v45 = Information;
    v151 = v42;
    if (v44)
    {
      v132[0] = Information;
      *&aBlock = MEMORY[0x277D84F90];
      sub_2412DE294(0, v44, 0);
      v46 = sub_2413521FC();
      v47 = aBlock;
      v168 = *(v158 + 16);
      v169 = (v158 + 16);
      v48 = v43 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
      v161 = *(v158 + 72);
      v162 = v46;
      v160 = (v158 + 8);
      v49 = v172;
      do
      {
        v171 = v47;
        v50 = v164;
        v51 = v170;
        v52 = v168;
        v168(v164, v48, v170);
        v53 = v166[12];
        v52(v49, v50, v51);
        v52(v163, v50, v51);

        v54 = sub_2413521EC();
        v55 = v50;
        v47 = v171;
        (*v160)(v55, v51);
        *(v172 + v53) = v54;
        v49 = v172;
        *&aBlock = v47;
        v57 = *(v47 + 16);
        v56 = *(v47 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_2412DE294(v56 > 1, v57 + 1, 1);
          v49 = v172;
          v47 = aBlock;
        }

        *(v47 + 16) = v57 + 1;
        sub_24127EFF0(v49, v47 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v57, &qword_27E538128);
        v48 += v161;
        --v44;
      }

      while (v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130);
      *&aBlock = sub_24135483C();
      sub_24127218C(v47, 1, &aBlock);
      v166 = 0;

      v58 = aBlock;
      *(v151 + 16) = aBlock;

      v45 = v132[0];
    }

    else
    {
      v69 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538580);
      v70 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_241365EA0;
      v72 = v71 + v70;
      v172 = v166[12];
      v74 = (v158 + 16);
      v73 = *(v158 + 16);
      v75 = v170;
      v73(v71 + v70, v69, v170);
      sub_2413521FC();
      v168 = v73;
      v169 = v74;
      v73(v164, v69, v75);

      *(v72 + v172) = sub_2413521EC();
      v58 = sub_24124569C(v71);
      swift_setDeallocating();
      sub_241246278(v72, &qword_27E538128);
      swift_deallocClassInstance();
      *(v151 + 16) = v58;

      v166 = 0;
    }

    v76 = v58 + 64;
    v77 = 1 << *(v58 + 32);
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & *(v58 + 64);
    v59 = ((v77 + 63) >> 6);
    v171 = (v148 + 8);
    v172 = v58;

    v80 = 0;
    while (v79)
    {
      v81 = v80;
      v82 = v172;
LABEL_22:
      v83 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v84 = v83 | (v81 << 6);
      v85 = v154;
      v168(v154, (*(v82 + 48) + *(v158 + 72) * v84), v170);
      *(v85 + *(v155 + 48)) = *(*(v82 + 56) + 8 * v84);

      v86 = v156;
      sub_2413521AC();
      sub_2413516FC();
      (*v171)(v86, v157);
      RESceneImportOperationSetFunctionConstant();
      sub_241353C9C();
      RESceneImportOperationSetMaterialDefinitionPath();

      RESceneImportOperationSetUnitType();
      RESceneImportOperationSetIsolateFromEngine();
      sub_241246278(v85, &qword_27E538578);
    }

    v82 = v172;
    while (1)
    {
      v81 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v81 >= v59)
      {
        break;
      }

      v79 = *(v76 + 8 * v81);
      ++v80;
      if (v79)
      {
        v80 = v81;
        goto LABEL_22;
      }
    }

    v87 = swift_allocObject();
    v88 = v151;
    v87[2] = v151;
    v87[3] = sub_2412807A0;
    v87[4] = v153;
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    v90 = v159;
    v91 = v144;
    sub_24127BF00(v159, v144);
    sub_24127BF00(v91, v152);
    v92 = v146;
    v93 = *(v145 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v88;
    *(v94 + 24) = v89;
    v172 = v89;
    v170 = v94;
    sub_241244A20(v91, v94 + ((v93 + 32) & ~v93));
    v95 = v147;
    sub_24127BF00(v90, v147);
    sub_24127BF00(v95, v150);
    v96 = (v93 + 48) & ~v93;
    v97 = v96 + v92;
    v98 = swift_allocObject();
    v99 = v88;
    v100 = v167;
    v98[2] = v88;
    v98[3] = v100;
    v98[4] = sub_2412807B8;
    v98[5] = v87;
    v171 = v87;
    v101 = v98;
    sub_241244A20(v95, v98 + v96);
    v102 = v143;
    *(v101 + v97) = v143;
    v103 = v102;
    v104 = v90 + *(v45 + 28);
    v105 = *v104;
    v169 = v101;
    if (v105)
    {
      v106 = *(v104 + 8);
      swift_retain_n();

      v107 = v171;

      sub_24127EF78(v105, v106);
      sub_241244A8C(v150);
      sub_241244A8C(v152);
      v108 = swift_allocObject();
      v109 = v170;
      v108[2] = sub_24128081C;
      v108[3] = v109;
      v108[4] = v106;
      v108[5] = v99;
      v108[6] = sub_2412807B8;
      v108[7] = v107;
      v108[8] = sub_241280834;
      v108[9] = v101;
      *&v182 = sub_2412807A4;
      *(&v182 + 1) = v108;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v181 = sub_2412D5698;
      *(&v181 + 1) = &block_descriptor_391;
      v110 = _Block_copy(&aBlock);

      v168 = v106;

      v111 = v133;
      sub_2413538DC();
      *&v173 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
      sub_24123D370(&qword_27E539880, &unk_27E538930);
      v112 = v135;
      v113 = v138;
      sub_24135444C();
      MEMORY[0x245CE2540](0, v111, v112, v110);

      _Block_release(v110);

      (*(v137 + 8))(v112, v113);
      (*(v134 + 8))(v111, v136);
    }

    else
    {
      swift_retain_n();
      v114 = v100;

      v115 = v172;

      v116 = v171;

      v117 = v115;
      v118 = v152;
      v119 = v166;
      sub_241273248(v88, v117, v152);
      if (v119)
      {
        sub_241244A8C(v150);
        v120 = v141;
        v121 = v142;
        sub_241244A8C(v152);
        *&aBlock = v119;
        sub_24127BE04(&aBlock);
        swift_beginAccess();
        *(v88 + 16) = MEMORY[0x277D84F98];

        if (qword_27E537D08 != -1)
        {
          swift_once();
        }

        v123 = qword_27E53A740;
        v124 = sub_241353EEC();
        (*(*(v124 - 8) + 56))(v120, 1, 1, v124);
        v125 = v120;
        v126 = qword_27E537D00;

        v127 = v121;
        if (v126 != -1)
        {
          swift_once();
        }

        v128 = qword_27E53A738;
        v129 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
        v130 = swift_allocObject();
        *(v130 + 16) = v128;
        *(v130 + 24) = v129;
        *(v130 + 32) = v123;
        *(v130 + 40) = 9;
        *(v130 + 48) = v139;
        *(v130 + 56) = v127;

        sub_241327238(0, 0, v125, &unk_241366D80, v130);

        v177 = v184;
        v178 = v185;
        v179[0] = v186[0];
        *(v179 + 9) = *(v186 + 9);
        v173 = aBlock;
        v174 = v181;
        v175 = v182;
        v176 = v183;
        v140(&v173);
      }

      else
      {
        sub_241244A8C(v118);
        v122 = v150;
        sub_241269024(v88, v114, sub_2412807B8, v116, v150, v103);
        sub_241244A8C(v122);
      }
    }
  }

  else
  {
    sub_241255C30();
    v59 = swift_allocError();
    *v60 = 0xD00000000000002CLL;
    *(v60 + 8) = 0x800000024135ED20;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *&aBlock = v59;
    sub_24127BE04(&aBlock);
    if (qword_27E537D08 != -1)
    {
LABEL_36:
      swift_once();
    }

    v61 = qword_27E53A740;
    v62 = sub_241353EEC();
    v63 = v141;
    (*(*(v62 - 8) + 56))(v141, 1, 1, v62);
    v64 = qword_27E537D00;
    v65 = v142;

    if (v64 != -1)
    {
      swift_once();
    }

    v66 = qword_27E53A738;
    v67 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v67;
    *(v68 + 32) = v61;
    *(v68 + 40) = 9;
    *(v68 + 48) = v139;
    *(v68 + 56) = v65;

    sub_241327238(0, 0, v63, &unk_241366D78, v68);

    v177 = v184;
    v178 = v185;
    v179[0] = v186[0];
    *(v179 + 9) = *(v186 + 9);
    v173 = aBlock;
    v174 = v181;
    v175 = v182;
    v176 = v183;
    v140(&v173);
  }
}

uint64_t sub_241274E34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v183 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v10 - 8);
  v159 = &v148 - v11;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  MEMORY[0x28223BE20](Information);
  v13 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_24135152C();
  v175 = *(v178 - 8);
  v14 = MEMORY[0x28223BE20](v178);
  v158 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v176 = &v148 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v153 = &v148 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v177 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v172 = &v148 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v174 = &v148 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v160 = &v148 - v27;
  v154 = v28;
  MEMORY[0x28223BE20](v26);
  v161 = &v148 - v29;
  v30 = sub_2413515EC();
  v173 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  v162 = a2;
  v163 = a4;
  v33[2] = a2;
  v33[3] = a3;
  v33[4] = a4;
  v33[5] = a5;
  v34 = objc_allocWithZone(MEMORY[0x277D778A8]);
  v166 = a3;
  swift_bridgeObjectRetain_n();
  v165 = a5;
  swift_retain_n();
  v35 = sub_24135144C();
  v36 = [v34 initSceneFromURL_];

  if (!v36)
  {
    goto LABEL_12;
  }

  v151 = v13;
  v152 = a1;
  v157 = v33;
  v37 = [v36 rootNode];
  v38 = v36;
  v39 = sub_241353BDC();
  v40 = sub_241353BDC();
  v41 = [v37 dictionaryMetadataWithKey:v39 dictionaryKey:v40];

  if (!v41)
  {

    a1 = v152;
LABEL_12:
    LOBYTE(v181[0]) = 0;
    v75 = v166;

    v76 = v165;

    sub_241273A28(a1, v181, v162, v75, v163, v76);

    swift_bridgeObjectRelease_n();
  }

  v150 = v38;
  v42 = [v41 resourcePathArray];
  sub_241246158(0, &qword_27E538570);
  v164 = sub_241353E2C();

  sub_2413515DC();
  sub_2413515BC();
  v44 = v43;
  (*(v173 + 8))(v32, v30);
  v45 = v44 * 1000.0;
  if (COERCE__INT64(fabs(v44 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v45 <= -9.22337204e18)
  {
    goto LABEL_42;
  }

  if (v45 >= 9.22337204e18)
  {
    goto LABEL_43;
  }

  v149 = v41;
  *&v181[0] = v45;
  v46 = sub_24135491C();
  v48 = sub_2412720D0(8uLL, v46, v47);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  MEMORY[0x245CE2060](v48, v50, v52, v54);

  if (qword_27E537BD8 != -1)
  {
    goto LABEL_44;
  }

LABEL_7:
  *&v181[0] = qword_27E539620;
  v55 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v161);

  *&v181[0] = qword_27E539620;
  v56 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  v57 = v174;
  sub_24135146C();

  v58 = v159;
  v59 = v172;
  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v60 = sub_241352FFC();
  v61 = __swift_project_value_buffer(v60, qword_27E5384A0);
  v62 = v175;
  v63 = v178;
  v170 = *(v175 + 16);
  v171 = v175 + 16;
  v170(v59, v57, v178);
  v148 = v61;
  v64 = sub_241352FDC();
  v65 = sub_2413540DC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = v59;
    v68 = swift_slowAlloc();
    *&v181[0] = v68;
    *v66 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260]);
    v69 = v58;
    v70 = sub_24135491C();
    v72 = v71;
    v172 = *(v175 + 8);
    (v172)(v67, v63);
    v73 = v70;
    v58 = v69;
    v74 = sub_2412DDC2C(v73, v72, v181);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_241215000, v64, v65, "Unzipping to '%s'", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x245CE4870](v68, -1, -1);
    MEMORY[0x245CE4870](v66, -1, -1);
  }

  else
  {

    v172 = *(v62 + 8);
    (v172)(v59, v63);
  }

  v78 = v166;
  v79 = [objc_opt_self() defaultManager];
  v80 = sub_24135144C();
  *&v181[0] = 0;
  v81 = [v79 createDirectoryAtURL:v80 withIntermediateDirectories:1 attributes:0 error:v181];

  v82 = *&v181[0];
  v83 = v158;
  if (!v81)
  {
    v102 = *&v181[0];

    v103 = sub_24135139C();

    swift_willThrow();
    goto LABEL_33;
  }

  v84 = v164;
  if (v164 >> 62)
  {
    v85 = sub_2413544EC();
    if (!v85)
    {
LABEL_46:
      v89 = v82;
      v167 = 0;
LABEL_47:
      MEMORY[0x28223BE20](v89);
      *(&v148 - 2) = v174;
      sub_24125F980(sub_241280800, &v148 - 4, v84);
      v115 = v114;

      v116 = v115;
      v169 = *(v115 + 16);
      if (!v169)
      {
        v119 = MEMORY[0x277D84F90];
LABEL_62:

        v132 = sub_241352FDC();
        v133 = sub_2413540DC();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = 134217984;
          *(v134 + 4) = *(v119 + 16);

          _os_log_impl(&dword_241215000, v132, v133, "Found %ld USDZ files", v134, 0xCu);
          MEMORY[0x245CE4870](v134, -1, -1);
        }

        else
        {
        }

        v135 = v174;
        v136 = v151;
        v137 = Information;
        sub_24127BF00(v152, v151);
        v138 = *(v137 + 40);

        *(v136 + v138) = v119;
        LOBYTE(v181[0]) = 1;
        v139 = v153;
        v140 = v178;
        v170(v153, v135, v178);
        v141 = v175;
        v142 = (*(v175 + 80) + 16) & ~*(v175 + 80);
        v143 = (v154 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
        v144 = swift_allocObject();
        (*(v141 + 32))(v144 + v142, v139, v140);
        v145 = (v144 + v143);
        v146 = v157;
        *v145 = sub_2412807A0;
        v145[1] = v146;

        sub_241267EFC(v136, v181, sub_24128084C, v144);

        v147 = v172;
        (v172)(v160, v140);
        v147(v161, v140);
        sub_241244A8C(v136);
        v147(v135, v140);
      }

      v117 = 0;
      v118 = v175;
      v168 = v175 + 8;
      v173 = v175 + 32;
      v119 = MEMORY[0x277D84F90];
      v120 = v178;
      while (2)
      {
        if (v117 >= *(v116 + 16))
        {
          __break(1u);
        }

        v121 = (*(v118 + 80) + 32) & ~*(v118 + 80);
        v122 = v116;
        v123 = *(v118 + 72);
        v170(v177, (v116 + v121 + v123 * v117), v120);
        sub_2413513FC();
        v124 = sub_241353C8C();
        v126 = v125;

        if (v124 == 2053403509 && v126 == 0xE400000000000000)
        {

          goto LABEL_56;
        }

        v127 = sub_24135497C();

        if (v127)
        {
LABEL_56:
          v128 = *v173;
          v120 = v178;
          (*v173)(v176, v177, v178);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v181[0] = v119;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2412DE254(0, *(v119 + 16) + 1, 1);
            v120 = v178;
            v119 = *&v181[0];
          }

          v131 = *(v119 + 16);
          v130 = *(v119 + 24);
          if (v131 >= v130 >> 1)
          {
            sub_2412DE254(v130 > 1, v131 + 1, 1);
            v120 = v178;
            v119 = *&v181[0];
          }

          *(v119 + 16) = v131 + 1;
          v128(v119 + v121 + v131 * v123, v176, v120);
        }

        else
        {
          v120 = v178;
          (v172)(v177, v178);
        }

        v116 = v122;
        ++v117;
        v118 = v175;
        if (v169 == v117)
        {
          goto LABEL_62;
        }

        continue;
      }
    }
  }

  else
  {
    v85 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v85)
    {
      goto LABEL_46;
    }
  }

  v86 = objc_opt_self();
  v173 = v84 & 0xC000000000000001;
  v156 = v84 & 0xFFFFFFFFFFFFFF8;
  v168 = v175 + 8;
  v169 = v86;
  v87 = v82;
  v88 = 0;
  v167 = 0;
  while (1)
  {
    if (v173)
    {
      v90 = MEMORY[0x245CE29C0](v88, v84);
    }

    else
    {
      if (v88 >= *(v156 + 16))
      {
        goto LABEL_40;
      }

      v90 = *(v84 + 8 * v88 + 32);
    }

    v91 = v90;
    v92 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
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
      swift_once();
      goto LABEL_7;
    }

    v93 = [v90 path];
    sub_241353C0C();

    sub_24135146C();

    v94 = [v91 resolvedPath];
    if (!v94)
    {
      sub_241353C0C();
      v94 = sub_241353BDC();
    }

    v95 = [v169 resourceWithPath_];

    if (v95)
    {
      break;
    }

    (v172)(v83, v178);
LABEL_19:

    ++v88;
    if (v92 == v85)
    {
      goto LABEL_47;
    }
  }

  v96 = [v95 dataNoCopy];
  if (!v96)
  {
    (v172)(v83, v178);

    goto LABEL_19;
  }

  v97 = v96;
  v98 = sub_24135154C();
  v100 = v99;

  v101 = v167;
  sub_24135155C();
  v167 = v101;
  if (!v101)
  {
    (v172)(v83, v178);
    sub_24125D520(v98, v100);

    v91 = v95;
    v84 = v164;
    goto LABEL_19;
  }

  (v172)(v83, v178);

  sub_24125D520(v98, v100);

  v78 = v166;
  v103 = v167;
  v58 = v159;
LABEL_33:
  *&v181[0] = v103;
  sub_24127BE04(v181);
  v104 = v103;
  v105 = v103;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v106 = qword_27E53A740;
  v107 = sub_241353EEC();
  (*(*(v107 - 8) + 56))(v58, 1, 1, v107);
  v108 = qword_27E537D00;

  if (v108 != -1)
  {
    swift_once();
  }

  v109 = qword_27E53A738;
  v110 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v111 = swift_allocObject();
  *(v111 + 16) = v109;
  *(v111 + 24) = v110;
  *(v111 + 32) = v106;
  *(v111 + 40) = 9;
  *(v111 + 48) = v162;
  *(v111 + 56) = v78;

  sub_241327238(0, 0, v58, &unk_241366D70, v111);

  v179[4] = v181[4];
  v179[5] = v181[5];
  v180[0] = v182[0];
  *(v180 + 9) = *(v182 + 9);
  v179[0] = v181[0];
  v179[1] = v181[1];
  v179[2] = v181[2];
  v179[3] = v181[3];
  v163(v179);

  v112 = v178;
  v113 = v172;
  (v172)(v160, v178);
  v113(v161, v112);
  v113(v174, v112);
}

uint64_t sub_241276040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v119 = a8;
  v120 = a3;
  v116 = a2;
  v121 = a1;
  v12 = sub_241352AEC();
  v100 = *(v12 - 8);
  v101 = v12;
  MEMORY[0x28223BE20](v12);
  v99 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v104 = *(Information - 8);
  MEMORY[0x28223BE20](Information);
  v105 = v15;
  v106 = (&v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v16 - 8);
  v108 = &v98 - v17;
  v18 = sub_24135152C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v111 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v98 - v22;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v109 = a5;
  v110 = a7;
  v25 = a6;
  v24[4] = a6;
  v24[5] = a7;
  v26 = v119;
  v24[6] = v119;
  v27 = swift_allocObject();
  v28 = v120;
  v29 = v121;
  *(v27 + 2) = v116;
  *(v27 + 3) = v28;
  *(v27 + 4) = sub_241280818;
  *(v27 + 5) = v24;
  v117 = v27;
  v118 = v23;
  v114 = v19;
  v115 = v18;
  v30 = v23;
  v31 = v28;
  v107 = *(v19 + 16);
  v107(v30, v29, v18);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v112 = v24;

  ServiceLocator = REEngineGetServiceLocator();
  v33 = MEMORY[0x245CE3AB0](ServiceLocator);
  v113 = v25;
  if (v33)
  {
    v102 = a4;
    v34 = RERenderManagerGetRenderDevice();
    if (([objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v128[3] = sub_241351AFC();
      v128[4] = MEMORY[0x277CDAC58];
      __swift_allocate_boxed_opaque_existential_1(v128);
      swift_unknownObjectRetain();
      v35 = sub_241351AEC();
      if (!*&v121[*(Information + 28)])
      {
        v111 = Information;
        MEMORY[0x28223BE20](v35);
        v71 = v117;
        v72 = v118;
        *(&v98 - 6) = v118;
        *(&v98 - 5) = v128;
        *(&v98 - 4) = sub_2412807A0;
        *(&v98 - 3) = v71;
        *(&v98 - 2) = v121;
        v73 = [objc_opt_self() currentThread];
        v74 = [v73 isMainThread];

        if (v74)
        {
          sub_241352C5C();
          sub_24127C104(v128, &v136);
          v75 = v99;
          sub_241352ADC();
          v76 = sub_241352C2C();
          v98 = v34;
          v106 = &v98;
          v79 = v76;
          (*(v100 + 8))(v75, v101);
          v80 = &v121[*(v111 + 8)];
          v82 = *v80;
          v81 = v80[1];
          v83 = qword_27E537C60;

          if (v83 != -1)
          {
            swift_once();
          }

          *&v136 = v82;
          *(&v136 + 1) = v81;
          LOWORD(v137) = 514;
          BYTE2(v137) = 2;
          *(&v137 + 3) = v124;
          BYTE7(v137) = v125;
          *(&v137 + 1) = 3;
          v138 = xmmword_27E541898;
          *&v139 = qword_27E5418A8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_241365C30;
          *(v84 + 32) = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
          v85 = (*(v114 + 80) + 32) & ~*(v114 + 80);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_241365EA0;
          v107((v86 + v85), v72, v115);

          sub_241265FA4(&v136, v84, v86, &v129);

          v126[0] = v136;
          v126[1] = v137;
          v126[2] = v138;
          v127 = v139;
          sub_241244AE8(v126);
          v140 = v133;
          v141 = v134;
          v142[0] = v135[0];
          *(v142 + 9) = *(v135 + 9);
          v136 = v129;
          v137 = v130;
          v138 = v131;
          v139 = v132;
          v87 = qword_27E537D08;
          v88 = v102;

          v89 = v119;

          if (v87 != -1)
          {
            swift_once();
          }

          v90 = qword_27E53A740;
          v91 = sub_241353EEC();
          v92 = v108;
          (*(*(v91 - 8) + 56))(v108, 1, 1, v91);
          v93 = qword_27E537D00;
          v94 = v120;

          if (v93 != -1)
          {
            swift_once();
          }

          v95 = qword_27E53A738;
          v96 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
          v97 = swift_allocObject();
          *(v97 + 16) = v95;
          *(v97 + 24) = v96;
          *(v97 + 32) = v90;
          *(v97 + 40) = 9;
          *(v97 + 48) = v116;
          *(v97 + 56) = v94;

          sub_241327238(0, 0, v92, &unk_241366C58, v97);

          v122[4] = v140;
          v122[5] = v141;
          *v123 = v142[0];
          *&v123[9] = *(v142 + 9);
          v122[0] = v136;
          v122[1] = v137;
          v122[2] = v138;
          v122[3] = v139;
          sub_24124E364(v122, v88, v109, v113, v110, v89);
          swift_unknownObjectRelease();

          sub_241246278(&v136, &qword_27E538348);
        }

        else
        {
          sub_241246158(0, &qword_27E538920);
          v77 = sub_24135416C();
          sub_24135417C();

          swift_unknownObjectRelease();
        }

        goto LABEL_20;
      }

      if (qword_27E537B10 == -1)
      {
LABEL_5:
        v98 = v34;
        v36 = sub_241352FFC();
        __swift_project_value_buffer(v36, qword_27E5384A0);
        v37 = sub_241352FDC();
        v38 = sub_2413540DC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_241215000, v37, v38, "Loading Reality File in background", v39, 2u);
          MEMORY[0x245CE4870](v39, -1, -1);
        }

        v40 = swift_allocObject();
        v108 = v40;
        *(v40 + 16) = 0;
        v116 = (v40 + 16);
        sub_241352C5C();
        sub_24127C104(v128, &v136);
        v41 = v118;
        v42 = sub_241352B9C();
        v110 = v42;
        sub_241246278(&v136, &qword_27E538528);
        *&v136 = v42;
        v43 = swift_allocObject();
        v109 = v43;
        v44 = v117;
        v43[2].isa = sub_2412807A0;
        v43[3].isa = v44;
        v43[4].isa = v40;
        v45 = v106;
        sub_24127BF00(v121, v106);
        v46 = v41;
        v47 = v115;
        v107(v111, v46, v115);
        v48 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v49 = v114;
        v50 = (v105 + *(v114 + 80) + v48) & ~*(v114 + 80);
        v51 = (v103 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_2412807A0;
        *(v52 + 24) = v44;
        v53 = v45;
        v54 = v108;
        sub_241244A20(v53, v52 + v48);
        (*(v49 + 32))(v52 + v50, v111, v47);
        *(v52 + v51) = v54;
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538530);
        sub_24123D370(&qword_27E538538, &qword_27E538530);
        v55 = sub_24135319C();

        v56 = v116;
        swift_beginAccess();
        *v56 = v55;

        if (*v56)
        {
          v57 = qword_27E537B18;

          if (v57 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D50);
          sub_24123D370(&qword_27E538540, &qword_27E539D50);
          sub_2413530BC();
          swift_endAccess();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

LABEL_20:
        __swift_destroy_boxed_opaque_existential_0(v128);
        goto LABEL_21;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  sub_241255C30();
  v58 = swift_allocError();
  *v59 = 0xD000000000000020;
  *(v59 + 8) = 0x800000024135ECA0;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *&v136 = v58;
  sub_24127BE04(&v136);
  v60 = qword_27E537D08;

  v61 = v26;
  v62 = a4;
  if (v60 != -1)
  {
    swift_once();
  }

  v63 = qword_27E53A740;
  v64 = sub_241353EEC();
  v65 = v108;
  (*(*(v64 - 8) + 56))(v108, 1, 1, v64);
  v66 = qword_27E537D00;

  v67 = v31;
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = qword_27E53A738;
  v69 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  *(v70 + 24) = v69;
  *(v70 + 32) = v63;
  *(v70 + 40) = 9;
  *(v70 + 48) = v116;
  *(v70 + 56) = v67;

  sub_241327238(0, 0, v65, &unk_241366C48, v70);

  v133 = v140;
  v134 = v141;
  v135[0] = v142[0];
  *(v135 + 9) = *(v142 + 9);
  v129 = v136;
  v130 = v137;
  v131 = v138;
  v132 = v139;
  sub_24124E364(&v129, v62, v109, v113, v110, v61);

LABEL_21:
  (*(v114 + 8))(v118, v115);
}

uint64_t sub_2412771F8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t))
{
  v163 = a8;
  v164 = a4;
  v162 = a3;
  v184 = a2;
  v172 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128);
  v178 = *(v12 - 1);
  v179 = v12;
  MEMORY[0x28223BE20](v12);
  v185 = &v140 - v13;
  v14 = sub_2413538CC();
  v145 = *(v14 - 8);
  v146 = v14;
  MEMORY[0x28223BE20](v14);
  v143 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2413538FC();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_2413522BC();
  v154 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation();
  v151 = *(Information - 1);
  v18 = MEMORY[0x28223BE20](Information);
  v155 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v153 = &v140 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v160 = &v140 - v23;
  v152 = v24;
  MEMORY[0x28223BE20](v22);
  v150 = &v140 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538578);
  MEMORY[0x28223BE20](v167);
  v166 = &v140 - v26;
  v183 = sub_24135152C();
  v170 = *(v183 - 8);
  v27 = MEMORY[0x28223BE20](v183);
  v176 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v177 = &v140 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v30 - 8);
  v147 = &v140 - v31;
  v32 = sub_2413517BC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  v36[2] = a5;
  v36[3] = a6;
  v148 = a6;
  v37 = v163;
  v36[4] = a7;
  v36[5] = v37;
  v36[6] = a9;
  v38 = swift_allocObject();
  v39 = v164;
  v38[2] = v162;
  v38[3] = v39;
  v38[4] = sub_241280818;
  v38[5] = v36;
  v165 = v38;
  v149 = *v184;
  sub_241352DAC();
  v40 = *(v172 + Information[5]);
  *(&v194 + 1) = MEMORY[0x277D841D8];
  *&aBlock = v40;
  v159 = a5;
  swift_retain_n();
  v41 = a7;
  swift_retain_n();
  swift_retain_n();

  v156 = v36;

  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v42 = sub_241352CAC();
  (*(v33 + 8))(v35, v32);
  v43 = sub_241352D9C();
  v157 = a9;
  v158 = v41;
  if (v43)
  {
    v44 = v43;
    v140 = v42;
    v45 = swift_allocObject();
    v46 = v172;
    v47 = *(v172 + Information[10]);
    v48 = *(v47 + 16);
    v180 = v44;
    v161 = v45;
    if (v48)
    {
      *&aBlock = MEMORY[0x277D84F90];
      sub_2412DE294(0, v48, 0);
      v49 = sub_2413521FC();
      v50 = aBlock;
      v181 = *(v170 + 16);
      v182 = v170 + 16;
      v51 = (v47 + ((*(v170 + 80) + 32) & ~*(v170 + 80)));
      v174 = *(v170 + 72);
      v175 = v49;
      v173 = (v170 + 8);
      v52 = v185;
      v53 = v176;
      v54 = v177;
      do
      {
        v55 = v183;
        v56 = v50;
        v57 = v181;
        v181(v54, v51, v183);
        v184 = v179[12];
        v57(v52, v54, v55);
        v57(v53, v54, v55);
        v50 = v56;

        v58 = sub_2413521EC();
        (*v173)(v54, v55);
        *(v185 + v184) = v58;
        v52 = v185;
        *&aBlock = v56;
        v59 = *(v56 + 16);
        v60 = *(v50 + 24);
        if (v59 >= v60 >> 1)
        {
          sub_2412DE294(v60 > 1, v59 + 1, 1);
          v52 = v185;
          v50 = aBlock;
        }

        *(v50 + 16) = v59 + 1;
        sub_24127EFF0(v52, v50 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v59, &qword_27E538128);
        v51 += v174;
        --v48;
      }

      while (v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130);
      *&aBlock = sub_24135483C();
      sub_24127218C(v50, 1, &aBlock);
      v179 = 0;

      v61 = aBlock;
      *(v161 + 16) = aBlock;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538580);
      v73 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_241365EA0;
      v75 = v74 + v73;
      v185 = v179[12];
      v77 = v170 + 16;
      v76 = *(v170 + 16);
      v78 = v183;
      v76(v74 + v73, v46, v183);
      sub_2413521FC();
      v59 = v177;
      v181 = v76;
      v182 = v77;
      v76(v177, v46, v78);

      *(v75 + v185) = sub_2413521EC();
      v61 = sub_24124569C(v74);
      swift_setDeallocating();
      sub_241246278(v75, &qword_27E538128);
      swift_deallocClassInstance();
      *(v161 + 16) = v61;

      v179 = 0;
    }

    v79 = v61 + 64;
    v80 = 1 << *(v61 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v61 + 64);
    v83 = (v80 + 63) >> 6;
    v184 = v154 + 8;
    v185 = v61;

    v39 = 0;
    v84 = v166;
    if (v82)
    {
      while (1)
      {
        v85 = v39;
LABEL_21:
        v86 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v87 = v86 | (v85 << 6);
        v88 = v185;
        v181(v84, (*(v185 + 48) + *(v170 + 72) * v87), v183);
        *(v84 + *(v167 + 48)) = *(*(v88 + 56) + 8 * v87);

        v89 = v168;
        sub_2413521AC();
        sub_2413516FC();
        (*v184)(v89, v169);
        v61 = aBlock;
        RESceneImportOperationSetFunctionConstant();
        v59 = v172;
        sub_241353C9C();
        RESceneImportOperationSetMaterialDefinitionPath();

        RESceneImportOperationSetUnitType();
        RESceneImportOperationSetIsolateFromEngine();
        sub_241246278(v84, &qword_27E538578);
        if (!v82)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v85 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v85 >= v83)
      {
        break;
      }

      v82 = *(v79 + 8 * v85);
      ++v39;
      if (v82)
      {
        v39 = v85;
        goto LABEL_21;
      }
    }

    v90 = swift_allocObject();
    v91 = v161;
    v90[2] = v161;
    v90[3] = sub_2412807A0;
    v90[4] = v165;
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    v93 = v172;
    v94 = v150;
    sub_24127BF00(v172, v150);
    sub_24127BF00(v94, v160);
    v95 = v152;
    v96 = *(v151 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = v91;
    *(v97 + 24) = v92;
    v184 = v97;
    v185 = v92;
    sub_241244A20(v94, v97 + ((v96 + 32) & ~v96));
    v98 = v153;
    sub_24127BF00(v93, v153);
    v99 = v155;
    sub_24127BF00(v98, v155);
    v100 = (v96 + 48) & ~v96;
    v101 = v100 + v95;
    v102 = v90;
    v103 = swift_allocObject();
    v104 = v91;
    v103[2] = v91;
    v105 = v180;
    v103[3] = v180;
    v103[4] = sub_2412807B8;
    v103[5] = v102;
    v106 = v103 + v100;
    v107 = v103;
    sub_241244A20(v98, v106);
    v108 = v149;
    *(v107 + v101) = v149;
    v109 = v93 + Information[7];
    v110 = *v109;
    v182 = v102;
    v183 = v107;
    if (v110)
    {
      v111 = *(v109 + 8);
      swift_retain_n();

      sub_24127EF78(v110, v111);
      sub_241244A8C(v99);
      sub_241244A8C(v160);
      v112 = swift_allocObject();
      v181 = v110;
      v113 = v184;
      v112[2] = sub_24128081C;
      v112[3] = v113;
      v112[4] = v111;
      v112[5] = v104;
      v112[6] = sub_2412807B8;
      v112[7] = v102;
      v112[8] = sub_241280834;
      v112[9] = v107;
      *&v195 = sub_2412807A4;
      *(&v195 + 1) = v112;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_2412D5698;
      *(&v194 + 1) = &block_descriptor_206;
      v114 = _Block_copy(&aBlock);

      v179 = v111;

      v115 = v141;
      sub_2413538DC();
      *&v186 = MEMORY[0x277D84F90];
      sub_24127F10C(&qword_27E539870, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
      sub_24123D370(&qword_27E539880, &unk_27E538930);
      v116 = v143;
      v117 = v146;
      sub_24135444C();
      v118 = v181;
      MEMORY[0x245CE2540](0, v115, v116, v114);

      _Block_release(v114);

      (*(v145 + 8))(v116, v117);
      (*(v142 + 8))(v115, v144);
    }

    else
    {
      v119 = v105;
      v120 = v104;
      swift_retain_n();
      v121 = v119;

      v122 = v185;

      v123 = v104;
      v124 = v122;
      v125 = v160;
      v126 = v179;
      sub_241273248(v123, v124, v160);
      if (v126)
      {
        sub_241244A8C(v155);
        v127 = v157;
        v128 = v164;
        sub_241244A8C(v125);
        *&aBlock = v126;
        sub_24127BE04(&aBlock);
        swift_beginAccess();
        *(v120 + 16) = MEMORY[0x277D84F98];

        v130 = qword_27E537D08;

        v131 = v127;

        if (v130 != -1)
        {
          swift_once();
        }

        v132 = qword_27E53A740;
        v133 = sub_241353EEC();
        v134 = v147;
        (*(*(v133 - 8) + 56))(v147, 1, 1, v133);
        v135 = qword_27E537D00;

        if (v135 != -1)
        {
          swift_once();
        }

        v136 = qword_27E53A738;
        v137 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
        v138 = swift_allocObject();
        *(v138 + 16) = v136;
        *(v138 + 24) = v137;
        *(v138 + 32) = v132;
        *(v138 + 40) = 9;
        *(v138 + 48) = v162;
        *(v138 + 56) = v128;

        sub_241327238(0, 0, v134, &unk_241366D10, v138);

        v190 = v197;
        v191 = v198;
        v192[0] = v199[0];
        *(v192 + 9) = *(v199 + 9);
        v186 = aBlock;
        v187 = v194;
        v188 = v195;
        v189 = v196;
        sub_24124E364(&v186, v159, v148, v158, v163, v131);
      }

      else
      {
        sub_241244A8C(v125);
        v129 = v155;
        sub_241269024(v120, v121, sub_2412807B8, v102, v155, v108);
        sub_241244A8C(v129);
      }
    }
  }

  else
  {
    sub_241255C30();
    v61 = swift_allocError();
    *v62 = 0xD00000000000002CLL;
    *(v62 + 8) = 0x800000024135ED20;
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *&aBlock = v61;
    sub_24127BE04(&aBlock);
    v63 = qword_27E537D08;
    v59 = v159;

    if (v63 != -1)
    {
LABEL_35:
      swift_once();
    }

    v64 = v59;
    v65 = qword_27E53A740;
    v66 = sub_241353EEC();
    v67 = v147;
    (*(*(v66 - 8) + 56))(v147, 1, 1, v66);
    v68 = qword_27E537D00;
    v69 = v39;

    if (v68 != -1)
    {
      swift_once();
    }

    v70 = qword_27E53A738;
    v71 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
    v72 = swift_allocObject();
    *(v72 + 16) = v70;
    *(v72 + 24) = v71;
    *(v72 + 32) = v65;
    *(v72 + 40) = 9;
    *(v72 + 48) = v162;
    *(v72 + 56) = v69;

    sub_241327238(0, 0, v67, &unk_241366D08, v72);

    v190 = v197;
    v191 = v198;
    v192[0] = v199[0];
    *(v192 + 9) = *(v199 + 9);
    v186 = aBlock;
    v187 = v194;
    v188 = v195;
    v189 = v196;
    sub_24124E364(&v186, v64, v148, v158, v163, v157);
  }
}

uint64_t sub_2412787A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v167 = a1;
  v189 = *MEMORY[0x277D85DE8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v15 - 8);
  v158 = &v150 - v16;
  Information = type metadata accessor for AssetLoader.LoadInformation();
  MEMORY[0x28223BE20](Information);
  v156 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_24135152C();
  v180 = *(v183 - 8);
  v18 = MEMORY[0x28223BE20](v183);
  v182 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v181 = &v150 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v153 = &v150 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v184 = &v150 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v174 = &v150 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v175 = &v150 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v159 = &v150 - v31;
  v154 = v32;
  MEMORY[0x28223BE20](v30);
  v160 = &v150 - v33;
  v34 = sub_2413515EC();
  v178 = *(v34 - 8);
  v179 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_allocObject();
  v37[2] = a4;
  v37[3] = a5;
  v162 = a5;
  v163 = a7;
  v37[4] = a6;
  v37[5] = a7;
  v37[6] = a8;
  v38 = swift_allocObject();
  v161 = a2;
  v38[2] = a2;
  v38[3] = a3;
  v38[4] = sub_241280818;
  v38[5] = v37;
  v165 = v38;
  v39 = objc_allocWithZone(MEMORY[0x277D778A8]);
  v169 = a4;
  swift_retain_n();
  v168 = a6;
  swift_retain_n();
  v170 = a8;
  swift_retain_n();
  v166 = a3;
  v40 = v167;
  swift_bridgeObjectRetain_n();
  v164 = v37;
  swift_retain_n();
  v41 = sub_24135144C();
  v42 = [v39 initSceneFromURL_];

  if (!v42)
  {
    goto LABEL_12;
  }

  v43 = [v42 rootNode];
  v44 = sub_241353BDC();
  v45 = sub_241353BDC();
  v46 = [v43 dictionaryMetadataWithKey:v44 dictionaryKey:v45];

  if (!v46)
  {

LABEL_12:
    LOBYTE(v187[0]) = 0;
    v76 = v169;

    v77 = v168;

    v78 = v170;

    v79 = v166;

    sub_2412771F8(v40, v187, v161, v79, v76, v162, v77, v163, v78);

    swift_bridgeObjectRelease_n();

    goto LABEL_66;
  }

  v47 = [v46 resourcePathArray];
  sub_241246158(0, &qword_27E538570);
  v176 = sub_241353E2C();

  sub_2413515DC();
  sub_2413515BC();
  v49 = v48;
  (*(v178 + 8))(v36, v179);
  v50 = v49 * 1000.0;
  if (COERCE__INT64(fabs(v49 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v50 <= -9.22337204e18)
  {
    goto LABEL_42;
  }

  if (v50 >= 9.22337204e18)
  {
    goto LABEL_43;
  }

  v152 = v42;
  *&v187[0] = v50;
  v51 = sub_24135491C();
  v53 = sub_2412720D0(8uLL, v51, v52);
  v55 = v54;
  v57 = v56;
  v59 = v58;

  MEMORY[0x245CE2060](v53, v55, v57, v59);

  if (qword_27E537BD8 != -1)
  {
    goto LABEL_44;
  }

LABEL_7:
  v151 = v46;
  *&v187[0] = qword_27E539620;
  v60 = qword_27E539620;
  MRQLFileManager.documentDirectory()(v160);

  *&v187[0] = qword_27E539620;
  v61 = qword_27E539620;
  MRQLFileManager.createTemporaryDirectory(destinationURL:)();

  v62 = v175;
  sub_24135146C();

  if (qword_27E537B10 != -1)
  {
    swift_once();
  }

  v63 = sub_241352FFC();
  v64 = __swift_project_value_buffer(v63, qword_27E5384A0);
  v65 = v180;
  v66 = v174;
  v67 = v183;
  v177 = *(v180 + 16);
  v178 = v180 + 16;
  v177(v174, v62, v183);
  v150 = v64;
  v68 = sub_241352FDC();
  v69 = sub_2413540DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v187[0] = v71;
    *v70 = 136315138;
    sub_24127F10C(&qword_27E539990, MEMORY[0x277CC9260]);
    v72 = sub_24135491C();
    v74 = v73;
    v179 = *(v65 + 8);
    v179(v66, v67);
    v75 = sub_2412DDC2C(v72, v74, v187);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_241215000, v68, v69, "Unzipping to '%s'", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x245CE4870](v71, -1, -1);
    MEMORY[0x245CE4870](v70, -1, -1);
  }

  else
  {

    v179 = *(v65 + 8);
    v179(v66, v67);
  }

  v46 = v176;
  v80 = [objc_opt_self() defaultManager];
  v81 = v175;
  v82 = sub_24135144C();
  *&v187[0] = 0;
  v83 = [v80 createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:v187];

  v84 = *&v187[0];
  if (!v83)
  {
    v102 = *&v187[0];

    v103 = sub_24135139C();

    swift_willThrow();
    v104 = v158;
    goto LABEL_33;
  }

  if (v46 >> 62)
  {
    v85 = sub_2413544EC();
    if (!v85)
    {
LABEL_46:
      v88 = v84;
      v171 = 0;
LABEL_47:
      MEMORY[0x28223BE20](v88);
      v149 = v81;
      sub_24125F980(sub_24127EF18, &v150 - 4, v46);
      v117 = v116;

      v176 = *(v117 + 16);
      if (!v176)
      {
        v120 = MEMORY[0x277D84F90];
LABEL_62:

        v134 = sub_241352FDC();
        v135 = sub_2413540DC();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 134217984;
          *(v136 + 4) = *(v120 + 16);

          _os_log_impl(&dword_241215000, v134, v135, "Found %ld USDZ files", v136, 0xCu);
          MEMORY[0x245CE4870](v136, -1, -1);
        }

        else
        {
        }

        v137 = v165;
        v138 = v156;
        sub_24127BF00(v167, v156);
        v139 = *(Information + 40);

        *(v138 + v139) = v120;
        LOBYTE(v187[0]) = 1;
        v140 = v153;
        v141 = v183;
        v177(v153, v175, v183);
        v142 = v180;
        v143 = (*(v180 + 80) + 16) & ~*(v180 + 80);
        v144 = (v154 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
        v145 = swift_allocObject();
        (*(v142 + 32))(v145 + v143, v140, v141);
        v146 = (v145 + v144);
        *v146 = sub_2412807A0;
        v146[1] = v137;

        sub_241267EFC(v138, v187, sub_24127EF38, v145);

        v147 = v179;
        v179(v159, v141);
        v147(v160, v141);
        sub_241244A8C(v138);
        v147(v175, v141);

        swift_bridgeObjectRelease_n();

        goto LABEL_66;
      }

      v118 = 0;
      v119 = v180;
      v174 = (v180 + 8);
      v182 = (v180 + 32);
      v120 = MEMORY[0x277D84F90];
      v121 = v183;
      while (2)
      {
        if (v118 >= *(v117 + 16))
        {
          __break(1u);
        }

        v122 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v123 = v117;
        v124 = *(v119 + 72);
        v177(v184, (v117 + v122 + v124 * v118), v121);
        sub_2413513FC();
        v125 = sub_241353C8C();
        v127 = v126;

        if (v125 == 2053403509 && v127 == 0xE400000000000000)
        {

          goto LABEL_56;
        }

        v128 = sub_24135497C();

        if (v128)
        {
LABEL_56:
          v129 = *v182;
          (*v182)(v181, v184, v121);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v187[0] = v120;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2412DE254(0, *(v120 + 16) + 1, 1);
            v120 = *&v187[0];
          }

          v132 = *(v120 + 16);
          v131 = *(v120 + 24);
          if (v132 >= v131 >> 1)
          {
            sub_2412DE254(v131 > 1, v132 + 1, 1);
            v120 = *&v187[0];
          }

          *(v120 + 16) = v132 + 1;
          v133 = v120 + v122 + v132 * v124;
          v121 = v183;
          v129(v133, v181, v183);
        }

        else
        {
          v179(v184, v121);
        }

        ++v118;
        v119 = v180;
        v117 = v123;
        if (v176 == v118)
        {
          goto LABEL_62;
        }

        continue;
      }
    }
  }

  else
  {
    v85 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v85)
    {
      goto LABEL_46;
    }
  }

  v173 = objc_opt_self();
  v174 = (v46 & 0xC000000000000001);
  v157 = v46 & 0xFFFFFFFFFFFFFF8;
  v172 = v180 + 8;
  v86 = v84;
  v87 = 0;
  v171 = 0;
  while (1)
  {
    if (v174)
    {
      v89 = MEMORY[0x245CE29C0](v87, v46);
    }

    else
    {
      if (v87 >= *(v157 + 16))
      {
        goto LABEL_40;
      }

      v89 = *(v46 + 8 * v87 + 32);
    }

    v90 = v89;
    v91 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
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
      swift_once();
      goto LABEL_7;
    }

    v92 = [v89 path];
    sub_241353C0C();

    sub_24135146C();

    v93 = [v90 resolvedPath];
    if (!v93)
    {
      sub_241353C0C();
      v93 = sub_241353BDC();
    }

    v94 = [v173 resourceWithPath_];

    if (v94)
    {
      break;
    }

    v179(v182, v183);
LABEL_19:

    ++v87;
    v46 = v176;
    if (v91 == v85)
    {
      goto LABEL_47;
    }
  }

  v95 = [v94 dataNoCopy];
  if (!v95)
  {
    v179(v182, v183);

    goto LABEL_19;
  }

  v96 = v95;
  v97 = sub_24135154C();
  v99 = v98;

  v100 = v182;
  v101 = v171;
  sub_24135155C();
  v171 = v101;
  if (!v101)
  {
    v179(v100, v183);
    sub_24125D520(v97, v99);

    v90 = v94;
    v81 = v175;
    goto LABEL_19;
  }

  v179(v100, v183);

  sub_24125D520(v97, v99);

  v104 = v158;
  v103 = v171;
LABEL_33:
  *&v187[0] = v103;
  sub_24127BE04(v187);

  v105 = v103;
  v106 = v166;
  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v107 = v103;
  v108 = qword_27E53A740;
  v109 = sub_241353EEC();
  (*(*(v109 - 8) + 56))(v104, 1, 1, v109);
  v110 = qword_27E537D00;

  if (v110 != -1)
  {
    swift_once();
  }

  v111 = qword_27E53A738;
  v112 = sub_24127F10C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  *(v113 + 24) = v112;
  *(v113 + 32) = v108;
  *(v113 + 40) = 9;
  *(v113 + 48) = v161;
  *(v113 + 56) = v106;

  sub_241327238(0, 0, v104, &unk_241366CC8, v113);

  v185[4] = v187[4];
  v185[5] = v187[5];
  v186[0] = v188[0];
  *(v186 + 9) = *(v188 + 9);
  v185[0] = v187[0];
  v185[1] = v187[1];
  v185[2] = v187[2];
  v185[3] = v187[3];
  sub_24124E364(v185, v169, v162, v168, v163, v170);

  v114 = v179;
  v115 = v183;
  v179(v159, v183);
  v114(v160, v115);
  v114(v175, v115);

  swift_bridgeObjectRelease_n();

LABEL_66:
}