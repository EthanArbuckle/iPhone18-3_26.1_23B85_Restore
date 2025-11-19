void (*sub_1C55232C0(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 192))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5526934();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5521160();
  return sub_1C5523498;
}

void sub_1C5523498(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5523554(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5523554(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5523554(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5526934();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C5523690()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C55236C4()
{
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C55236F8()
{
  v2 = *(v0 + 40);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1C552372C()
{
  v1 = [objc_opt_self() defaultStore];
  if (v1)
  {
    return v1;
  }

  sub_1C54888D0();
  return sub_1C5404B48();
}

void *sub_1C552381C(uint64_t a1, void *a2, void *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = v3;
  sub_1C5522CD8();
  v4 = sub_1C5404B48();
  sub_1C5421A5C(v4, v6 + 2);
  sub_1C5594B14();
  MEMORY[0x1E69E5928](a1);
  v6[3] = a1;
  MEMORY[0x1E69E5928](a2);
  v6[4] = a2;
  MEMORY[0x1E69E5928](a3);
  v10 = a3;
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  if (a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_1C5523A00(a1, a2);
  }

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a2);
  v6[5] = v11;
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id sub_1C5523A00(uint64_t a1, void *a2)
{
  v76 = a2;
  v75 = a1;
  v73 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v74 = 0;
  v91 = 0;
  v90 = 0;
  v85 = 0;
  v77 = sub_1C5594C74();
  v78 = *(v77 - 8);
  v79 = v78;
  v80 = *(v78 + 64);
  v3 = MEMORY[0x1EEE9AC00](v76);
  v82 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = v21 - v82;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v83 = v21 - v82;
  v98 = v5;
  v97 = v4;
  v96 = v2;
  v84 = [v4 aida_accountForiCloudAccount_];
  if (v84)
  {
    v72 = v84;
    v66 = v84;
    v91 = v84;
    v69 = 0;
    sub_1C5500480();
    v6 = v76;
    v7 = v66;
    v67 = *MEMORY[0x1E698B7C0];
    v8 = v67;
    v9 = sub_1C5596574();
    v70 = sub_1C54FEA68(v76, v66, v9, v10);
    v68 = v70;

    v90 = v70;
    sub_1C54118E0();
    v11 = v70;
    v71 = sub_1C54FEAC0(v70);
    if (v71)
    {
      v65 = v71;
      v85 = v71;
      v62 = v71;

      v63 = v62;
      v64 = v74;
    }

    else
    {
      v12 = v83;
      v13 = sub_1C54B05F8();
      (*(v79 + 16))(v12, v13, v77);
      v60 = sub_1C5594C54();
      v57 = v60;
      v59 = sub_1C5596954();
      v58 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v61 = sub_1C5596E04();
      if (os_log_type_enabled(v60, v59))
      {
        v14 = v74;
        v48 = sub_1C5596A74();
        v44 = v48;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v46 = 0;
        v49 = sub_1C5419DC0(0);
        v47 = v49;
        v50 = sub_1C5419DC0(v46);
        v89 = v48;
        v88 = v49;
        v87 = v50;
        v51 = 0;
        v52 = &v89;
        sub_1C5419E14(0, &v89);
        sub_1C5419E14(v51, v52);
        v86 = v61;
        v53 = v21;
        MEMORY[0x1EEE9AC00](v21);
        v54 = &v21[-6];
        v21[-4] = v15;
        v21[-3] = &v88;
        v21[-2] = &v87;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v56 = v14;
        if (v14)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v57, v58, "Failed to create profile picture store.", v44, 2u);
          v42 = 0;
          sub_1C5419E74(v47);
          sub_1C5419E74(v50);
          sub_1C5596A54();

          v43 = v56;
        }
      }

      else
      {

        v43 = v74;
      }

      v41 = v43;

      (*(v79 + 8))(v83, v77);
      v63 = 0;
      v64 = v41;
    }
  }

  else
  {
    v16 = v81;
    v17 = sub_1C54B05F8();
    (*(v79 + 16))(v16, v17, v77);
    v39 = sub_1C5594C54();
    v36 = v39;
    v38 = sub_1C5596954();
    v37 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v40 = sub_1C5596E04();
    if (os_log_type_enabled(v39, v38))
    {
      v18 = v74;
      v27 = sub_1C5596A74();
      v23 = v27;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v25 = 0;
      v28 = sub_1C5419DC0(0);
      v26 = v28;
      v29 = sub_1C5419DC0(v25);
      v95 = v27;
      v94 = v28;
      v93 = v29;
      v30 = 0;
      v31 = &v95;
      sub_1C5419E14(0, &v95);
      sub_1C5419E14(v30, v31);
      v92 = v40;
      v32 = v21;
      MEMORY[0x1EEE9AC00](v21);
      v33 = &v21[-6];
      v21[-4] = v19;
      v21[-3] = &v94;
      v21[-2] = &v93;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v35 = v18;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v36, v37, "Unable to get GrandSlam account for iCloud account.", v23, 2u);
        v21[1] = 0;
        sub_1C5419E74(v26);
        sub_1C5419E74(v29);
        sub_1C5596A54();

        v22 = v35;
      }
    }

    else
    {

      v22 = v74;
    }

    v21[0] = v22;

    (*(v79 + 8))(v81, v77);
    v63 = 0;
    v64 = v21[0];
  }

  return v63;
}

uint64_t sub_1C55243A4()
{
  v1[9] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v2 = sub_1C5594C74();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v1[13] = swift_task_alloc();
  v1[3] = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C55244D8, 0, 0);
}

uint64_t sub_1C55244D8()
{
  v7 = v0[13];
  v5 = v0[9];
  v0[2] = v0;
  sub_1C5522CD8();
  v6 = sub_1C5404B48();
  v0[14] = v6;
  v0[4] = v6;
  v1 = sub_1C5596814();
  (*(*(v1 - 8) + 56))(v7, 1);

  MEMORY[0x1E69E5928](v6);
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v5;
  v2[5] = v6;
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v9 = sub_1C5524CAC(0, 0, v7, &unk_1C55B6058, v2, MEMORY[0x1E69E7CA8] + 8);
  v0[15] = v9;
  sub_1C5408CA0(v7);
  v3 = swift_task_alloc();
  *(v8 + 128) = v3;
  *v3 = *(v8 + 16);
  v3[1] = sub_1C55246A8;

  return MEMORY[0x1EEE6DA40](v11, v9, v10);
}

uint64_t sub_1C55246A8()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C55247C0, 0, 0);
}

uint64_t sub_1C55247C0()
{
  v15 = v0[14];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v1 = v0[9];
  v0[2] = v0;

  MEMORY[0x1E69E5928](v15);
  (*(*v1 + 152))(v15);
  v2 = sub_1C54B05F8();
  (*(v17 + 16))(v16, v2, v18);
  v20 = sub_1C5594C54();
  v19 = sub_1C5596944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v21 = sub_1C5596E04();
  if (os_log_type_enabled(v20, v19))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v11 = sub_1C5419DC0(0);
    v12 = sub_1C5419DC0(0);
    *(v14 + 40) = buf;
    *(v14 + 48) = v11;
    *(v14 + 56) = v12;
    sub_1C5419E14(0, (v14 + 40));
    sub_1C5419E14(0, (v14 + 40));
    *(v14 + 64) = v21;
    v13 = swift_task_alloc();
    v13[2] = v14 + 40;
    v13[3] = v14 + 48;
    v13[4] = v14 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, v20, v19, "Contact data loaded successfully", buf, 2u);
    sub_1C5419E74(v11);
    sub_1C5419E74(v12);
    sub_1C5596A54();
  }

  v8 = *(v14 + 112);
  v9 = *(v14 + 96);
  v7 = *(v14 + 80);
  v6 = *(v14 + 88);
  v3 = MEMORY[0x1E69E5920](v20);
  (*(v6 + 8))(v9, v7, v3);
  MEMORY[0x1E69E5920](v8);

  v4 = *(*(v14 + 16) + 8);

  return v4();
}

uint64_t sub_1C5524BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C5524C18, 0, 0);
}

uint64_t sub_1C5524C18()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_1C552523C(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_1C5524CAC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_1C55B60F0;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_1C5408B78(v53, v56);
  v57 = sub_1C5596814();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_1C5408CA0(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_1C5596804();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_1C55967A4();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_1C55965C4();
    sub_1C5526B3C(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_1C5526CFC();
  v16 = v13;

  return v16;
}

uint64_t sub_1C552523C(void *a1)
{
  v140 = a1;
  v171 = 0;
  v170 = 0;
  v139 = 0;
  v165 = 0;
  v164 = 0;
  v159 = 0;
  v141 = sub_1C5594C74();
  v142 = *(v141 - 8);
  v143 = v142;
  v146 = *(v142 + 64);
  v2 = MEMORY[0x1EEE9AC00](v140);
  v148 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = v26 - v148;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v145 = v26 - v148;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v147 = v26 - v148;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v149 = v26 - v148;
  v171 = v5;
  v170 = v1;
  v151 = *(v1 + 40);
  v150 = v151;
  v6 = v151;
  if (v151)
  {
    v138 = v150;
    v7 = v149;
    v129 = v150;
    v165 = v150;
    v8 = sub_1C54B05F8();
    v130 = *(v143 + 16);
    v131 = (v143 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v130(v7, v8, v141);
    v136 = sub_1C5594C54();
    v132 = v136;
    v135 = sub_1C5596944();
    v133 = v135;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v137 = sub_1C5596E04();
    if (os_log_type_enabled(v136, v135))
    {
      v9 = v139;
      v120 = sub_1C5596A74();
      v116 = v120;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v118 = 0;
      v121 = sub_1C5419DC0(0);
      v119 = v121;
      v122 = sub_1C5419DC0(v118);
      v155[0] = v120;
      v154 = v121;
      v153 = v122;
      v123 = 0;
      v124 = v155;
      sub_1C5419E14(0, v155);
      sub_1C5419E14(v123, v124);
      v152 = v137;
      v125 = v26;
      MEMORY[0x1EEE9AC00](v26);
      v126 = &v26[-6];
      v26[-4] = v10;
      v26[-3] = &v154;
      v26[-2] = &v153;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v128 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v132, v133, "Loading profile picture for contact", v116, 2u);
        v114 = 0;
        sub_1C5419E74(v119);
        sub_1C5419E74(v122);
        sub_1C5596A54();

        v115 = v128;
      }
    }

    else
    {

      v115 = v139;
    }

    v109 = v115;

    v110 = *(v143 + 8);
    v111 = (v143 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v110(v149, v141);
    v113 = [v129 profilePictureForAccountOwner];
    v112 = v113;
    v164 = v113;
    v11 = v113;
    if (v113)
    {
      v108 = v112;
      v106 = v112;
      v159 = v112;
      v107 = UIImagePNGRepresentation(v112);
      if (v107)
      {
        v105 = v107;
        v100 = v107;
        v101 = sub_1C55948D4();
        v102 = v12;

        v103 = v101;
        v104 = v102;
      }

      else
      {
        v103 = 0;
        v104 = 0xF000000000000000;
      }

      v98 = v104;
      v99 = v103;
      if (v104 >> 60 == 15)
      {
        v95 = 0;
      }

      else
      {
        v96 = v99;
        v97 = v98;
        v92 = v98;
        v93 = v99;
        v94 = sub_1C55948C4();
        sub_1C544DEAC(v93, v92);
        v95 = v94;
      }

      v13 = v147;
      v86 = v95;
      [v140 setImageData_];

      v14 = sub_1C54B05F8();
      v130(v13, v14, v141);
      v90 = sub_1C5594C54();
      v87 = v90;
      v89 = sub_1C5596944();
      v88 = v89;
      v91 = sub_1C5596E04();
      if (os_log_type_enabled(v90, v89))
      {
        v15 = v109;
        v77 = sub_1C5596A74();
        v73 = v77;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v75 = 0;
        v78 = sub_1C5419DC0(0);
        v76 = v78;
        v79 = sub_1C5419DC0(v75);
        v158 = v77;
        v157 = v78;
        v156 = v79;
        v80 = 0;
        v81 = &v158;
        sub_1C5419E14(0, &v158);
        sub_1C5419E14(v80, v81);
        v155[1] = v91;
        v82 = v26;
        MEMORY[0x1EEE9AC00](v26);
        v83 = &v26[-6];
        v26[-4] = v16;
        v26[-3] = &v157;
        v26[-2] = &v156;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v85 = v15;
        if (v15)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v87, v88, "Profile picture loaded and set on contact", v73, 2u);
          v71 = 0;
          sub_1C5419E74(v76);
          sub_1C5419E74(v79);
          sub_1C5596A54();

          v72 = v85;
        }
      }

      else
      {

        v72 = v109;
      }

      v69 = v72;

      v110(v147, v141);
      v70 = v69;
    }

    else
    {
      v17 = v145;
      v18 = sub_1C54B05F8();
      v130(v17, v18, v141);
      v67 = sub_1C5594C54();
      v64 = v67;
      v66 = sub_1C5596934();
      v65 = v66;
      v68 = sub_1C5596E04();
      if (os_log_type_enabled(v67, v66))
      {
        v19 = v109;
        v55 = sub_1C5596A74();
        v51 = v55;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v53 = 0;
        v56 = sub_1C5419DC0(0);
        v54 = v56;
        v57 = sub_1C5419DC0(v53);
        v163 = v55;
        v162 = v56;
        v161 = v57;
        v58 = 0;
        v59 = &v163;
        sub_1C5419E14(0, &v163);
        sub_1C5419E14(v58, v59);
        v160 = v68;
        v60 = v26;
        MEMORY[0x1EEE9AC00](v26);
        v61 = &v26[-6];
        v26[-4] = v20;
        v26[-3] = &v162;
        v26[-2] = &v161;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v63 = v19;
        if (v19)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v64, v65, "No profile picture available for account owner", v51, 2u);
          v49 = 0;
          sub_1C5419E74(v54);
          sub_1C5419E74(v57);
          sub_1C5596A54();

          v50 = v63;
        }
      }

      else
      {

        v50 = v109;
      }

      v48 = v50;

      v110(v145, v141);
      [v140 setImageData_];
      v70 = v48;
    }

    v46 = v70;

    return v46;
  }

  else
  {
    v21 = v144;
    v22 = sub_1C54B05F8();
    (*(v143 + 16))(v21, v22, v141);
    v44 = sub_1C5594C54();
    v41 = v44;
    v43 = sub_1C5596954();
    v42 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v45 = sub_1C5596E04();
    if (os_log_type_enabled(v44, v43))
    {
      v23 = v139;
      v32 = sub_1C5596A74();
      v28 = v32;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v30 = 0;
      v33 = sub_1C5419DC0(0);
      v31 = v33;
      v34 = sub_1C5419DC0(v30);
      v169 = v32;
      v168 = v33;
      v167 = v34;
      v35 = 0;
      v36 = &v169;
      sub_1C5419E14(0, &v169);
      sub_1C5419E14(v35, v36);
      v166 = v45;
      v37 = v26;
      MEMORY[0x1EEE9AC00](v26);
      v38 = &v26[-6];
      v26[-4] = v24;
      v26[-3] = &v168;
      v26[-2] = &v167;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v40 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v41, v42, "No profile picture store available", v28, 2u);
        v26[1] = 0;
        sub_1C5419E74(v31);
        sub_1C5419E74(v34);
        sub_1C5596A54();

        v27 = v40;
      }
    }

    else
    {

      v27 = v139;
    }

    v26[0] = v27;

    (*(v143 + 8))(v144, v141);
    return v26[0];
  }
}

uint64_t sub_1C5526494@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5526500(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1C5594B24();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1C5526934();
  sub_1C5594AE4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C5526670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1C5594B24();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1C5526934();
  v8 = v22;
  sub_1C5594AD4();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_1C5526888()
{
  v2 = qword_1EC15E508;
  if (!qword_1EC15E508)
  {
    sub_1C5522CD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5526934()
{
  v2 = qword_1EC15E510;
  if (!qword_1EC15E510)
  {
    type metadata accessor for ProfilePictureElementViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E510);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ProfilePictureElementViewModel()
{
  v1 = qword_1EC168370;
  if (!qword_1EC168370)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C5526A28()
{
  MEMORY[0x1E69E5920](*(v0 + 2));
  MEMORY[0x1E69E5920](*(v0 + 3));
  MEMORY[0x1E69E5920](*(v0 + 4));
  sub_1C5401EF8(v0 + 5);
  v3 = OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(&v0[v3]);
  return v4;
}

uint64_t sub_1C5526B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1C5526D10(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5524BC8(a1, v6, v7, v8, v9);
}

uint64_t sub_1C5526E10()
{
  updated = sub_1C5594B24();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

id static AppleAccountHeaderViewFactory.createAppleAccountHeaderView(contact:account:showAccountDetails:showChangeButton:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v14 = "Fatal error";
  v15 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v16 = "AppleAccountUI/AppleAccountHeaderViewFactory.swift";
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v28 = 0;
  v22 = 0;
  v17 = (*(*(sub_1C5595774() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v10 - v17;
  v35 = MEMORY[0x1EEE9AC00](v23);
  v34 = v5;
  v33 = v6 & 1;
  v32 = v7 & 1;
  v31 = v4;
  MEMORY[0x1E69E5928](v35);
  MEMORY[0x1E69E5928](v19);
  v8 = sub_1C542ABC0();
  v24 = v36;
  sub_1C5566B44(v23, v19, v20 & 1, v21 & 1, v8 & 1, v22, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E518);
  sub_1C55271EC(v24, &v30);
  v25 = v29;
  memcpy(v29, v24, sizeof(v29));
  v26 = sub_1C5595484();
  v28 = v26;
  MEMORY[0x1E69E5928](v26);
  v27 = [v26 view];
  MEMORY[0x1E69E5920](v26);
  if (v27)
  {
    v13 = v27;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v12 = v13;
  v11 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  sub_1C5595764();
  sub_1C5595474();
  sub_1C545EC80(v36);
  return v26;
}

uint64_t sub_1C55271EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = a1[2];
  v5 = a1[3];
  sub_1C5594CF4();
  *(a2 + 24) = v5;
  v6 = a1[4];

  *(a2 + 32) = v6;
  *(a2 + 40) = a1[5];
  v7 = a1[6];
  sub_1C5594CF4();
  *(a2 + 48) = v7;
  v8 = a1[7];

  *(a2 + 56) = v8;
  *(a2 + 64) = *(a1 + 64);
  v9 = a1[9];

  *(a2 + 72) = v9;
  *(a2 + 80) = *(a1 + 80);
  v10 = a1[11];

  *(a2 + 88) = v10;
  *(a2 + 96) = *(a1 + 96);
  v11 = a1[13];

  *(a2 + 104) = v11;
  v12 = a1[14];
  MEMORY[0x1E69E5928](v12);
  *(a2 + 112) = v12;
  v13 = a1[15];

  *(a2 + 120) = v13;
  v14 = a1[16];

  *(a2 + 128) = v14;
  v15 = a1[17];

  *(a2 + 136) = v15;
  v16 = a1[18];
  MEMORY[0x1E69E5928](v16);
  *(a2 + 144) = v16;
  *(a2 + 152) = *(a1 + 152);
  v18 = a1[20];
  MEMORY[0x1E69E5928](v18);
  result = a2;
  *(a2 + 160) = v18;
  return result;
}

id AppleAccountHeaderViewFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AppleAccountHeaderViewFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id AppleAccountHeaderViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountHeaderViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5527618(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1C5527658(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_1C5527698(char a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E698B7D8];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698B7D8]);
    return v2;
  }

  else
  {
    v3 = *MEMORY[0x1E698B7C8];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698B7C8]);
    return v3;
  }
}

uint64_t sub_1C5527720()
{
  sub_1C5596E04();
  *v0 = "legacy";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  *(v0 + 24) = "recovery";
  *(v0 + 32) = 8;
  *(v0 + 40) = 2;
  sub_1C540FCD8();
  v4 = sub_1C5596D64();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1C55279FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5527720();
  *a1 = result;
  return result;
}

uint64_t sub_1C5527A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5527854();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C5527A84()
{
  v2 = qword_1EC15E520;
  if (!qword_1EC15E520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5527B64()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5527BD4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5527CD8()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5527D48(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5527E4C()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5527EBC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5527FC0()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5528030(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5528134()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C55281A4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55282A8()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5528318(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C552841C()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C552848C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5528590()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55285F8(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C55286E4()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C552874C(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C5528838()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C55288A0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C5528980()
{
  v10[11] = 0;
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v7 = *v3;
  v8 = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];

  swift_endAccess();
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v6;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588);
  MEMORY[0x1C6946C30](v10, v1);
  v9 = v10[1];

  return v9;
}

uint64_t sub_1C5528A90()
{
  swift_beginAccess();

  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588);
  sub_1C55960A4();
  sub_1C5436F54();
}

void (*sub_1C5528BE0(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x108uLL);
  *a1 = v1;
  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v5 = *v4;
  v1[27] = *v4;
  v6 = v4[1];
  v1[28] = v6;
  v7 = v4[2];
  v1[29] = v7;
  v8 = v4[3];
  v1[30] = v8;
  v9 = v4[4];
  v1[31] = v9;

  swift_endAccess();
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588);
  MEMORY[0x1C6946C30]();
  return sub_1C5528D28;
}

void sub_1C5528D28(void **a1, char a2)
{
  v18 = *a1;
  if (a2)
  {
    v4 = v18[31];
    v3 = v18[30];
    v2 = v18[29];
    v9 = v18[28];
    v8 = v18[27];
    v5 = v18[18];
    v6 = v18[19];
    v7 = v18[20];

    v18[5] = v8;
    v18[6] = v9;
    v18[7] = v2;
    v18[8] = v3;
    v18[9] = v4;
    v18[21] = v5;
    v18[22] = v6;
    v18[23] = v7;
  }

  else
  {
    v12 = v18[31];
    v11 = v18[30];
    v10 = v18[29];
    v17 = v18[28];
    v16 = v18[27];
    v13 = v18[18];
    v14 = v18[19];
    v15 = v18[20];

    v18[10] = v16;
    v18[11] = v17;
    v18[12] = v10;
    v18[13] = v11;
    v18[14] = v12;
    v18[24] = v13;
    v18[25] = v14;
    v18[26] = v15;
  }

  sub_1C55960A4();
  sub_1C5436F54();

  free(v18);
}

double sub_1C5528EFC@<D0>(double *a1@<X8>)
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588);
  sub_1C55960C4();

  result = v7;
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 3) = v6;
  a1[4] = v7;
  return result;
}

double sub_1C5529040@<D0>(double *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[4];

  swift_endAccess();
  result = v9;
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  a1[4] = v9;
  return result;
}

__n128 *sub_1C55290FC(__n128 *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C552917C(a1, v5);
  v3 = v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel;
  swift_beginAccess();
  sub_1C55291E8(a1, v3);
  swift_endAccess();
  result = a1;
  sub_1C5436F54();
  return result;
}

__n128 sub_1C552917C(__n128 *a1, __n128 *a2)
{
  v3 = a1->n128_u64[0];

  a2->n128_u64[0] = v3;
  v5 = a1->n128_u64[1];

  a2->n128_u64[1] = v5;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

double sub_1C55291E8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;

  *(a2 + 8) = *(a1 + 8);

  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

_BYTE *sub_1C5529294(__n128 *a1)
{
  v8 = 0;
  v7 = a1;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers] = 0;
  *&v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages] = 0;
  v8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset] = 0;
  v2 = v8;
  sub_1C552917C(a1, v6);
  memcpy(&v2[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel], a1, 0x28uLL);
  v5.receiver = v8;
  v5.super_class = type metadata accessor for IconBubbleViewController();
  v4 = [(__n128 *)&v5 initWithNibName:0 bundle:?];
  MEMORY[0x1E69E5928](v4);
  v8 = v4;
  sub_1C5436F54();
  MEMORY[0x1E69E5920](v8);
  return v4;
}

id sub_1C5529438(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void sub_1C552948C()
{
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset = 0;
  sub_1C552ED6C();
  sub_1C5596CA4();
  __break(1u);
}

double sub_1C55295F8()
{
  MEMORY[0x1E69E5928](v0);
  sub_1C552EDA4();
  v2 = sub_1C5404B48();
  [v0 setView_];
  MEMORY[0x1E69E5920](v2);
  *&result = MEMORY[0x1E69E5920](v0).n128_u64[0];
  return result;
}

double sub_1C55296D4()
{
  v39 = v0;
  MEMORY[0x1E69E5928](v0);
  v38.receiver = v0;
  v38.super_class = type metadata accessor for IconBubbleViewController();
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v36 = [v35 view];
  (MEMORY[0x1E69E5920])();
  if (v36)
  {
    v34 = v36;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v32 = sub_1C552AAE0(v34);
  MEMORY[0x1E69E5920](v34);
  sub_1C5527BD4(v32);
  v33 = sub_1C5527B64();
  if (v33)
  {
    v31 = v33;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v29 = sub_1C552AE20(v31, v35);
  MEMORY[0x1E69E5920](v31);
  sub_1C5527D48(v29);
  v30 = sub_1C5527CD8();
  if (v30)
  {
    v28 = v30;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v26 = sub_1C552B1C4(v28);
  MEMORY[0x1E69E5920](v28);
  sub_1C5527EBC(v26);
  v27 = sub_1C5527CD8();
  if (v27)
  {
    v25 = v27;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v23 = sub_1C552B2C8(v25);
  MEMORY[0x1E69E5920](v25);
  sub_1C5528030(v23);
  v24 = sub_1C5527CD8();
  if (v24)
  {
    v22 = v24;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v20 = sub_1C552B3CC(v22);
  MEMORY[0x1E69E5920](v22);
  sub_1C55281A4(v20);
  v21 = sub_1C5527CD8();
  if (v21)
  {
    v19 = v21;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v17 = sub_1C552B4D0(v19);
  MEMORY[0x1E69E5920](v19);
  sub_1C5528318(v17);
  v18 = sub_1C5527CD8();
  if (v18)
  {
    v16 = v18;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v14 = sub_1C552B5D4(v16);
  MEMORY[0x1E69E5920](v16);
  sub_1C552848C(v14);
  v15 = sub_1C5527CD8();
  if (v15)
  {
    v13 = v15;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v11 = sub_1C552B6D8(v13);
  MEMORY[0x1E69E5920](v13);
  sub_1C55285F8(v11);
  v1 = sub_1C552B9F0();
  sub_1C552874C(v1);
  v12 = sub_1C5527CD8();
  if (v12)
  {
    v10 = v12;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v9 = sub_1C5528134();
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v7 = sub_1C5527FC0();
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v5 = sub_1C5528BE0(v37);
  sub_1C552BF30(v10, v2, v8, v6);
  (v5)(v37, 0, v3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v8);
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

double sub_1C5529FF0(double a1, double a2)
{
  v8 = a1;
  v9 = a2;
  v7 = v2;
  MEMORY[0x1E69E5928](v2);
  v6.receiver = v2;
  v6.super_class = type metadata accessor for IconBubbleViewController();
  objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
  *&result = (MEMORY[0x1E69E5920])().n128_u64[0];
  return result;
}

double sub_1C552A090()
{
  v15 = v0;
  MEMORY[0x1E69E5928](v0);
  v14.receiver = v0;
  v14.super_class = type metadata accessor for IconBubbleViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  MEMORY[0x1E69E5920](v0);
  v13 = sub_1C5527CD8();
  if (v13)
  {
    v11 = v13;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 87;
    LODWORD(v5) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v10 = [v12 view];
  *&v1 = (MEMORY[0x1E69E5920])().n128_u64[0];
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 88;
    LODWORD(v5) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v8 = [v9 layer];
  MEMORY[0x1E69E5920](v9);
  v6 = *MEMORY[0x1E6979DE8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6979DE8]);
  sub_1C545C2A0(v6);
  v7 = sub_1C5596554();
  MEMORY[0x1E69E5920](v6);

  [v11 moveAndResizeWithinParentLayer:v8 usingGravity:v7 animate:0];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  *&result = MEMORY[0x1E69E5920](v11).n128_u64[0];
  return result;
}

double sub_1C552A35C()
{
  v23 = v0;
  v21 = sub_1C5527CD8();
  if (v21)
  {
    v20 = v21;
  }

  else
  {
    LOBYTE(v4) = 2;
    v6 = 97;
    LODWORD(v8) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v19 = [v20 isPlaying];
  *&result = MEMORY[0x1E69E5920](v20).n128_u64[0];
  if (!v19)
  {
    v18 = sub_1C5527CD8();
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 99;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    v16 = sub_1C5528134();
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 101;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    v14 = sub_1C5527FC0();
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 102;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    v11 = sub_1C5528BE0(v22);
    sub_1C552BF30(v17, v2, v15, v13);
    (v11)(v22, 0, v3);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v17);
    v12 = sub_1C5527CD8();
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 105;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    [v10 play];
    *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  }

  return result;
}

double sub_1C552A6D0()
{
  v5 = sub_1C5527CD8();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 109;
    LODWORD(v3) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v4 pause];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C552A7A8(void *a1)
{
  v16 = 0;
  v18 = a1;
  v17 = v1;
  if ((sub_1C5528838() & 1) == 0 && a1 > 1)
  {
    MEMORY[0x1E69E5928](a1);
    v16 = a1;
    v13 = sub_1C5527CD8();
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v11 = sub_1C5527FC0();
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v9 = sub_1C5527E4C();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v7 = sub_1C55282A8();
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v5 = sub_1C5528BE0(v15);
    v4 = sub_1C552D0B8(a1, v12, v3, v10, v8, v6);
    v5(v4);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v12);
    *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  }

  return result;
}

id sub_1C552AAE0(void *a1)
{
  sub_1C552EDA4();
  v21 = sub_1C5404B48();
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  sub_1C545C768();
  sub_1C5596E04();
  v18 = v1;
  v7 = [v21 0x1FBB5C529];
  v6 = [a1 0x1FBB5C529];
  v8 = [v7 0x1FBB28F65];
  MEMORY[0x1E69E5920](v6);
  *&v2 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  *v18 = v8;
  v10 = [v21 0x1FBBB59CCLL];
  v9 = [a1 0x1FBBB59CCLL];
  v11 = [v10 0x1FBB28F65];
  MEMORY[0x1E69E5920](v9);
  *&v3 = MEMORY[0x1E69E5920](v10).n128_u64[0];
  v18[1] = v11;
  v13 = [v21 0x1FBBB4950];
  v12 = [a1 0x1FBBB4950];
  v14 = [v13 0x1FBB28F65];
  MEMORY[0x1E69E5920](v12);
  *&v4 = MEMORY[0x1E69E5920](v13).n128_u64[0];
  v18[2] = v14;
  v16 = [v21 0x1FBB20D25];
  v15 = [a1 0x1FBB20D25];
  v17 = [v16 0x1FBB28F65];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  v18[3] = v17;
  sub_1C540FCD8();
  v20 = sub_1C5596704();

  [a1 addConstraints_];
  MEMORY[0x1E69E5920](v20);
  return v21;
}

void *sub_1C552AE20(void *a1, uint64_t a2)
{
  v12 = sub_1C552AFFC();
  v13 = v2;
  if (!v2)
  {
    return 0;
  }

  sub_1C552EE08();
  sub_1C5594CF4();
  v3 = sub_1C552B174(v12, v13, 1.0);
  v9 = v3;
  if (!v3)
  {

    return 0;
  }

  swift_unknownObjectRetain();
  [v9 setDelegate_];
  swift_unknownObjectRelease();
  v7 = [a1 layer];
  v5 = *MEMORY[0x1E6979DE8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6979DE8]);
  sub_1C545C2A0(v5);
  v6 = sub_1C5596554();
  MEMORY[0x1E69E5920](v5);

  [v9 addToLayer:v7 onTop:1 gravity:v6];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);

  return v9;
}

uint64_t sub_1C552AFFC()
{
  sub_1C5439370();
  v5 = sub_1C5576C44();
  sub_1C55965F4();
  v4 = sub_1C5596554();

  sub_1C55965F4();
  v3 = sub_1C5596554();

  v6 = [v5 pathForResource:v4 ofType:v3];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  if (!v6)
  {
    return 0;
  }

  v1 = sub_1C5596574();
  MEMORY[0x1E69E5920](v6);
  return v1;
}

id sub_1C552B1C4(void *a1)
{
  sub_1C552B268();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B268()
{
  if (qword_1EC168530 != -1)
  {
    swift_once();
  }

  return &qword_1EC168538;
}

id sub_1C552B2C8(void *a1)
{
  sub_1C552B36C();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B36C()
{
  if (qword_1EC168548 != -1)
  {
    swift_once();
  }

  return &qword_1EC168550;
}

id sub_1C552B3CC(void *a1)
{
  sub_1C552B470();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B470()
{
  if (qword_1EC168560 != -1)
  {
    swift_once();
  }

  return &qword_1EC168568;
}

id sub_1C552B4D0(void *a1)
{
  sub_1C552B574();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B574()
{
  if (qword_1EC168500 != -1)
  {
    swift_once();
  }

  return &qword_1EC168508;
}

id sub_1C552B5D4(void *a1)
{
  sub_1C552B678();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B678()
{
  if (qword_1EC168518 != -1)
  {
    swift_once();
  }

  return &qword_1EC168520;
}

uint64_t sub_1C552B6D8(void *a1)
{
  sub_1C552EE6C();
  v7 = sub_1C5596E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5B8);
  sub_1C552EED0();
  sub_1C5596914();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5D0);
    sub_1C5596C74();
    if (v6)
    {
      break;
    }

    sub_1C552B8D0(v5);
    v2 = sub_1C5596554();

    v3 = [a1 publishedLayerWithKey:v2 required:0];
    MEMORY[0x1E69E5920](v2);
    if (!v3)
    {
      break;
    }

    MEMORY[0x1E69E5928](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5D8);
    sub_1C5596754();
    MEMORY[0x1E69E5920](v3);
  }

  sub_1C5594CF4();
  sub_1C541439C();
  return v7;
}

uint64_t sub_1C552B8D0(uint64_t result)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C5596DF4();
    v2 = sub_1C55965F4();
    MEMORY[0x1C6947980](v2);

    sub_1C5596DC4();
    v3 = sub_1C55965F4();
    MEMORY[0x1C6947980](v3);

    sub_1C5594CF4();
    sub_1C5401ECC();
    return sub_1C55965D4();
  }

  return result;
}

uint64_t sub_1C552B9F0()
{
  v25 = 0;
  v18 = 0;
  [objc_opt_self() isSolariumEnabled];
  v16 = sub_1C55965F4();
  v17 = v0;
  v9 = v0;
  v11 = v16;
  v23 = v16;
  v24 = v0;
  v19 = sub_1C552BBB8();
  v20 = v1;
  v21 = v2;
  v22 = v3;
  sub_1C5594CF4();
  v10 = &v7;
  MEMORY[0x1EEE9AC00](&v7);
  v12 = v6;
  v6[2] = v11;
  v6[3] = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E5E0);
  v14 = sub_1C5418C84();
  sub_1C552F018();
  v15 = sub_1C5596684();
  v8 = v15;

  sub_1C5409FBC();

  return v8;
}

uint64_t sub_1C552BBB8()
{
  v3[2] = 0;
  v3[3] = 7;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5B8);
  v0 = sub_1C552F0A0();
  MEMORY[0x1C6947230](v3, v2, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E600);
  sub_1C552F144();
  sub_1C5596CD4();
  return v3[4];
}

id sub_1C552BC98@<X0>(void *a1@<X8>)
{
  sub_1C5418C84();
  sub_1C5596DF4();
  v1 = sub_1C55965F4();
  MEMORY[0x1C6947980](v1);

  sub_1C5596DD4();
  v2 = sub_1C55965F4();
  MEMORY[0x1C6947980](v2);

  sub_1C5596DD4();
  v3 = sub_1C55965F4();
  MEMORY[0x1C6947980](v3);

  sub_1C5594CF4();
  sub_1C5401ECC();
  v8 = sub_1C55965D4();
  v7 = v4;
  sub_1C5439370();
  v5 = sub_1C5576C44();
  result = sub_1C552BE8C(v8, v7, v5, 0);
  *a1 = result;
  return result;
}

id sub_1C552BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C5596554();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 withConfiguration:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

void sub_1C552BF30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = sub_1C5527E4C();
  if (v16)
  {
    v12 = v16;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  [v12 beginTime];
  *(a2 + 16) = v4;

  [a3 setContents_];
  swift_unknownObjectRelease();
  [a4 setContents_];
  swift_unknownObjectRelease();
  v11 = sub_1C552841C();
  if (v11)
  {
    v10 = v11;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v9 = sub_1C552841C();
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v5 = sub_1C552C504();
  v7 = sub_1C552C510(v5);

  sub_1C552C5F0();
  sub_1C5594CF4();
  v6 = sub_1C5596554();

  [v10 addAnimation:v7 forKey:v6];
}

id sub_1C552C510(double a1)
{
  SRGB = CGColorCreateSRGB(0.0, 0.4784, 1.0, 1.0);
  v2 = [objc_opt_self() labelColor];
  v4 = [v2 CGColor];
  MEMORY[0x1E69E5920](v2);
  v5 = sub_1C552E998(SRGB, v4, a1);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](SRGB);
  return v5;
}

uint64_t *sub_1C552C5F0()
{
  if (qword_1EC1685A8 != -1)
  {
    swift_once();
  }

  return &qword_1EC1685B0;
}

id sub_1C552C650(void *a1, uint64_t a2, void *a3)
{
  result = [a1 playbackTime];
  if (v4 >= 13.2833333)
  {
    v5 = *(a2 + 8);
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      *(a2 + 8) = v7;
      [a1 setPlaybackTime_];
      return [a3 setBeginTime_];
    }
  }

  return result;
}

double sub_1C552C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v39 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E610);
  sub_1C552F1CC();
  if ((sub_1C55968F4() & 1) == 0)
  {
    sub_1C552EE6C();
    v5 = sub_1C5596744();
    v16 = sub_1C552CEB8(a2, v5);
    v38 = v16;
    v17 = sub_1C5596744();
    if (!v17)
    {
      sub_1C5596C94();
      __break(1u);
    }

    if (v16 == 0x8000000000000000 && v17 == -1)
    {
      sub_1C5596C94();
      __break(1u);
    }

    v37 = v16 % v17;
    sub_1C5596774();
    v14 = v36;
    v35 = v36;
    sub_1C5418C84();
    v15 = sub_1C5596744();
    if (!v15)
    {
      sub_1C5596C94();
      __break(1u);
    }

    if (v16 == 0x8000000000000000 && v15 == -1)
    {
      sub_1C5596C94();
      __break(1u);
    }

    v34 = v16 % v15;
    sub_1C5596774();
    v12 = v33;
    v32 = v33;
    v13 = [objc_opt_self() disableActions];
    v31 = v13 & 1;
    [objc_opt_self() setDisableActions_];
    if ([v36 contents])
    {
      sub_1C5596AF4();
      sub_1C551433C(v19, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v29, 0, sizeof(v29));
      v30 = 0;
    }

    v11 = v30 == 0;
    sub_1C544435C(v29);
    if (v11)
    {
      [v12 CGImage];
      [v14 setContents_];
      swift_unknownObjectRelease();
LABEL_37:
      [objc_opt_self() setDisableActions_];
      MEMORY[0x1E69E5920](v12);
      *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
      return result;
    }

    if ([v14 contents])
    {
      sub_1C5596AF4();
      sub_1C551433C(v20, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v26, 0, sizeof(v26));
      v27 = 0;
    }

    if (!v27)
    {
      sub_1C5596C94();
      __break(1u);
    }

    sub_1C551433C(v26, v28);
    type metadata accessor for CGImage();
    swift_dynamicCast();
    v9 = v25;
    v10 = [v12 CGImage];
    MEMORY[0x1E69E5928](v10);
    v23 = v9;
    v24 = v10;
    if (v9)
    {
      sub_1C5402C1C(&v23, &v22);
      if (v24)
      {
        v21 = v24;
        sub_1C552F2EC();
        v7 = sub_1C5594B74();
        MEMORY[0x1E69E5920](v21);
        MEMORY[0x1E69E5920](v22);
        sub_1C5401EF8(&v23);
        v8 = v7;
        goto LABEL_32;
      }

      MEMORY[0x1E69E5920](v22);
    }

    else if (!v24)
    {
      sub_1C5401EF8(&v23);
      v8 = 1;
LABEL_32:
      MEMORY[0x1E69E5920](v10);
      *&v6 = MEMORY[0x1E69E5920](v9).n128_u64[0];
      if ((v8 & 1) == 0)
      {
        [v12 CGImage];
        [v14 setContents_];
        swift_unknownObjectRelease();
      }

      goto LABEL_37;
    }

    sub_1C550728C(&v23);
    v8 = 0;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1C552CEB8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v5 = v2 * a2;
  if ((v2 * a2) >> 64 == (v2 * a2) >> 63)
  {
    v4 = *result / 1.5;
    if (((*&v4 >> 52) & 0x7FFLL) == 0x7FF)
    {
      result = sub_1C5596C94();
      __break(1u);
    }

    if (v4 <= -9.22337204e18)
    {
      result = sub_1C5596C94();
      __break(1u);
    }

    if (v4 >= 9.22337204e18)
    {
      result = sub_1C5596C94();
      __break(1u);
    }

    if (!__OFADD__(v5, v4))
    {
      return v5 + v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C552D0B8(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_1C55288A0(1);
  [a1 CGImage];
  [a4 setContents_];
  swift_unknownObjectRelease();
  [a2 playbackTime];
  if (v6 >= *(a3 + 16))
  {
    [a2 playbackTime];
    [a5 setBeginTime_];
  }

  else
  {
    [a5 setBeginTime_];
  }

  [a5 beginTime];
  v16 = sub_1C552D374(v7);
  sub_1C552D3A8();
  sub_1C5594CF4();
  v15 = sub_1C5596554();

  [a6 addAnimation:v16 forKey:v15];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  [a6 setOpacity_];
  [a2 playbackTime];
  v9 = v8;
  result = 1.0;
  if (v9 > 1.0)
  {
    [a5 beginTime];
    v14 = sub_1C552D414(a6, v11);
    if (v14)
    {
      sub_1C552D674();
      sub_1C5594CF4();
      v13 = sub_1C5596554();

      [a6 addAnimation:v14 forKey:v13];
      [a5 beginTime];
      [a5 setBeginTime_];
      *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
    }
  }

  return result;
}

uint64_t *sub_1C552D3A8()
{
  if (qword_1EC168578 != -1)
  {
    swift_once();
  }

  return &qword_1EC168580;
}

id sub_1C552D414(void *a1, double a2)
{
  v16 = 0.0;
  v20 = a1;
  v19 = a2;
  v11 = [a1 presentationLayer];
  if (v11)
  {
    sub_1C55965F4();
    v8 = sub_1C5596554();

    v9 = [v11 valueForKeyPath_];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v11);
    if (v9)
    {
      sub_1C5596AF4();
      sub_1C551433C(v12, &v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0uLL;
      v14 = 0uLL;
    }

    v17 = v13;
    v18 = v14;
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
  }

  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v15;
      v7 = 0;
    }

    else
    {
      v6 = 0.0;
      v7 = 1;
    }

    v4 = v6;
    v5 = v7;
  }

  else
  {
    sub_1C544435C(&v17);
    v4 = 0.0;
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v16 = v4;
  return sub_1C552E6D8(v16, v16 * 0.75, a2);
}

uint64_t *sub_1C552D674()
{
  if (qword_1EC168590 != -1)
  {
    swift_once();
  }

  return &qword_1EC168598;
}

id sub_1C552D6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1C5596554();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

id sub_1C552D908()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconBubbleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C552DA40(void *a1)
{
  v29[4] = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v29[5] = a1;
  *&v1 = MEMORY[0x1E69E5928](a1).n128_u64[0];
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    LOBYTE(v12) = 2;
    v13 = 331;
    LODWORD(v14) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v21 playbackTime];
  v20 = v2;
  v3 = sub_1C5528BE0(v29);
  *v4 = v20;
  v3();
  MEMORY[0x1E69E5920](v21);
  *&result = MEMORY[0x1E69E5928](a1).n128_u64[0];
  if (a1)
  {
    v28 = a1;
    v6 = [a1 isPlaying];
    if ((v6 & 1) != 0 && (v19 = sub_1C5527E4C()) != 0)
    {
      v27 = v19;
      v7 = sub_1C55286E4();
      v18 = v7;
      if (v7)
      {
        v26 = v7;
        v8 = sub_1C5528590();
        v17 = v8;
        if (v8)
        {
          v25 = v8;
          v15 = sub_1C5528BE0(v24);
          sub_1C552C650(a1, v9, v19);
          v15();
          v16 = sub_1C5528BE0(v23);
          v11 = sub_1C552C740(a1, v10, v18, v17);
          v16(v11);

          MEMORY[0x1E69E5920](v19);
          *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
        }

        else
        {

          MEMORY[0x1E69E5920](v19);
          *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v19);
        *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
      }
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_1C552DE98()
{
  result = sub_1C55965F4();
  qword_1EC168508 = result;
  qword_1EC168510 = v1;
  return result;
}

uint64_t sub_1C552DEDC()
{
  v1 = *sub_1C552B574();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552DF18()
{
  result = sub_1C55965F4();
  qword_1EC168520 = result;
  qword_1EC168528 = v1;
  return result;
}

uint64_t sub_1C552DF5C()
{
  v1 = *sub_1C552B678();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552DF98()
{
  result = sub_1C55965F4();
  qword_1EC168538 = result;
  qword_1EC168540 = v1;
  return result;
}

uint64_t sub_1C552DFDC()
{
  v1 = *sub_1C552B268();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E018()
{
  result = sub_1C55965F4();
  qword_1EC168550 = result;
  qword_1EC168558 = v1;
  return result;
}

uint64_t sub_1C552E05C()
{
  v1 = *sub_1C552B36C();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E098()
{
  result = sub_1C55965F4();
  qword_1EC168568 = result;
  qword_1EC168570 = v1;
  return result;
}

uint64_t sub_1C552E0DC()
{
  v1 = *sub_1C552B470();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E118()
{
  result = sub_1C55965F4();
  qword_1EC168580 = result;
  qword_1EC168588 = v1;
  return result;
}

uint64_t sub_1C552E15C()
{
  v1 = *sub_1C552D3A8();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E198()
{
  result = sub_1C55965F4();
  qword_1EC168598 = result;
  qword_1EC1685A0 = v1;
  return result;
}

uint64_t sub_1C552E1DC()
{
  v1 = *sub_1C552D674();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E218()
{
  result = sub_1C55965F4();
  qword_1EC1685B0 = result;
  qword_1EC1685B8 = v1;
  return result;
}

uint64_t sub_1C552E25C()
{
  v1 = *sub_1C552C5F0();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E298@<X0>(uint64_t *a1@<X8>)
{
  sub_1C5596DF4();
  v1 = sub_1C55965F4();
  MEMORY[0x1C6947980](v1);

  sub_1C5596DC4();
  v2 = sub_1C55965F4();
  MEMORY[0x1C6947980](v2);

  sub_1C5594CF4();
  sub_1C5401ECC();
  result = sub_1C55965D4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1C552E3DC(double a1, double a2, double a3)
{
  sub_1C552F36C();
  v3 = sub_1C55965F4();
  v9 = sub_1C552E5C0(v3, v4);
  MEMORY[0x1E69E5928](v9);
  sub_1C552F3D0();
  v6 = sub_1C552E680();
  [v9 setTimingFunction_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v9);
  sub_1C5596854();
  [v9 setFromValue_];
  swift_unknownObjectRelease();
  sub_1C5596854();
  [v9 setToValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v9);
  [v9 setBeginTime_];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5928](v9);
  v8 = *MEMORY[0x1E69797E0];
  [v9 setFillMode_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return v9;
}

id sub_1C552E5C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];
  MEMORY[0x1E69E5920](v5);
  return v3;
}

id sub_1C552E6D8(double a1, double a2, double a3)
{
  sub_1C552F36C();
  v3 = sub_1C55965F4();
  v9 = sub_1C552E5C0(v3, v4);
  MEMORY[0x1E69E5928](v9);
  sub_1C552F3D0();
  v6 = sub_1C552E680();
  [v9 setTimingFunction_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5928](v9);
  [v9 setDuration_];
  MEMORY[0x1E69E5920](v9);
  sub_1C5596854();
  [v9 setFromValue_];
  swift_unknownObjectRelease();
  sub_1C5596854();
  [v9 setToValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v9);
  [v9 setBeginTime_];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5928](v9);
  v8 = *MEMORY[0x1E69797E0];
  [v9 setFillMode_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  [v9 setRemovedOnCompletion_];
  MEMORY[0x1E69E5920](v9);
  return v9;
}

void *sub_1C552E92C@<X0>(void *a1@<X8>)
{
  CATransform3DMakeScale(&v3, 2.0, 2.0, 1.0);
  memcpy(__dst, &v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x80uLL);
}

id sub_1C552E998(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C552F36C();
  v3 = sub_1C55965F4();
  v10 = sub_1C552E5C0(v3, v4);
  MEMORY[0x1E69E5928](v10);
  [v10 setDuration_];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5928](a1);
  [v10 setFromValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](a2);
  [v10 setToValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v10);
  [v10 setBeginTime_];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5928](v10);
  v9 = *MEMORY[0x1E69797E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69797E0]);
  [v10 setFillMode_];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5928](v10);
  [v10 setRemovedOnCompletion_];
  MEMORY[0x1E69E5920](v10);
  return v10;
}

id sub_1C552EB78(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v8 initWithPath:a1 retinaScale:?];
  MEMORY[0x1E69E5920](v6);
  return v4;
}

unint64_t sub_1C552EDA4()
{
  v2 = qword_1EC15E590;
  if (!qword_1EC15E590)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E590);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552EE08()
{
  v2 = qword_1EC15E5A0;
  if (!qword_1EC15E5A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E5A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552EE6C()
{
  v2 = qword_1EC15E5B0;
  if (!qword_1EC15E5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552EED0()
{
  v2 = qword_1EC15E5C0;
  if (!qword_1EC15E5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E5B8);
    sub_1C552EF74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552EF74()
{
  v2 = qword_1EC15E5C8;
  if (!qword_1EC15E5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F018()
{
  v2 = qword_1EC15E5F0;
  if (!qword_1EC15E5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15E5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F0A0()
{
  v2 = qword_1EC15E5F8;
  if (!qword_1EC15E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E5B8);
    sub_1C552EF74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F144()
{
  v2 = qword_1EC15E608;
  if (!qword_1EC15E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F1CC()
{
  v2 = qword_1EC15E618;
  if (!qword_1EC15E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E618);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CGImage()
{
  v4 = qword_1EC15E6A0;
  if (!qword_1EC15E6A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15E6A0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C552F2EC()
{
  v2 = qword_1EC15E620;
  if (!qword_1EC15E620)
  {
    type metadata accessor for CGImage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F36C()
{
  v2 = qword_1EC15E628;
  if (!qword_1EC15E628)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E628);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552F3D0()
{
  v2 = qword_1EC15E630;
  if (!qword_1EC15E630)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E630);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C552F434(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C552F514(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

unint64_t sub_1C552F700()
{
  v2 = qword_1EC15E6A8;
  if (!qword_1EC15E6A8)
  {
    type metadata accessor for CGImage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F798()
{
  v2 = qword_1EC15E6B0;
  if (!qword_1EC15E6B0)
  {
    type metadata accessor for CGImage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C552F818()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C552F858()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();
  return v2;
}

AppleAccountUI::InformationLabelView::Link __swiftcall InformationLabelView.Link.init(text:url:)(Swift::String text, Swift::String_optional url)
{
  v49 = v2;
  v62 = text;
  v63 = url;
  v50 = sub_1C5530088;
  v51 = sub_1C5531474;
  v52 = sub_1C5473EFC;
  v53 = sub_1C545C6D4;
  v54 = sub_1C545C6D4;
  v55 = sub_1C5473FA4;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v56 = 0;
  v57 = sub_1C5594C74();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v62._object);
  v61 = v27 - v60;
  v72 = v4;
  v73 = v3;
  v70 = v5;
  v71 = v6;
  sub_1C5594CF4();
  v74 = v62;
  sub_1C5594CF4();
  v75 = v63;
  v69 = v63;
  v48 = v63.value._object == 0;
  if (!v63.value._object)
  {
    v7 = v61;
    v8 = sub_1C54B05F8();
    (*(v58 + 16))(v7, v8, v57);
    v46 = sub_1C5594C54();
    v47 = sub_1C5596964();
    v35 = 17;
    v37 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = 32;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = 32;
    v9 = swift_allocObject();
    v38 = v9;
    *(v9 + 16) = v50;
    *(v9 + 24) = 0;
    v10 = swift_allocObject();
    v11 = v38;
    v39 = v10;
    *(v10 + 16) = v51;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v39;
    v43 = v12;
    *(v12 + 16) = v52;
    *(v12 + 24) = v13;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v42 = sub_1C5596E04();
    v44 = v14;

    v15 = v40;
    v16 = v44;
    *v44 = v53;
    v16[1] = v15;

    v17 = v41;
    v18 = v44;
    v44[2] = v54;
    v18[3] = v17;

    v19 = v43;
    v20 = v44;
    v44[4] = v55;
    v20[5] = v19;
    sub_1C540FCD8();

    if (os_log_type_enabled(v46, v47))
    {
      v21 = v56;
      v28 = sub_1C5596A74();
      v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v29 = sub_1C5419DC0(0);
      v30 = sub_1C5419DC0(1);
      v31 = &v68;
      v68 = v28;
      v32 = &v67;
      v67 = v29;
      v33 = &v66;
      v66 = v30;
      sub_1C5419E14(2, &v68);
      sub_1C5419E14(1, v31);
      v64 = v53;
      v65 = v40;
      sub_1C5419E28(&v64, v31, v32, v33);
      v34 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v64 = v54;
        v65 = v41;
        sub_1C5419E28(&v64, &v68, &v67, &v66);
        v27[1] = 0;
        v64 = v55;
        v65 = v43;
        sub_1C5419E28(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_1C5355000, v46, v47, "%s Link has text but no url", v28, 0xCu);
        sub_1C5419E74(v29);
        sub_1C5419E74(v30);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v22 = MEMORY[0x1E69E5920](v46);
    (*(v58 + 8))(v61, v57, v22);
  }

  v27[0] = &v74;
  sub_1C5530020(&v74, v49);

  v23 = v27[0];
  sub_1C54876D8();
  result.url.value._object = v26;
  result.url.value._countAndFlagsBits = v25;
  result.text._object = v24;
  result.text._countAndFlagsBits = v23;
  return result;
}

void *sub_1C5530020(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1C5594CF4();
  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];
  sub_1C5594CF4();
  result = a2;
  a2[3] = v6;
  return result;
}

uint64_t sub_1C5530098@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  result = sub_1C54ED570(v3, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

uint64_t InformationLabelView.init(text:link:isLinkOnNewLine:textAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v14 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  sub_1C5594CF4();
  *__b = a1;
  *&__b[8] = a2;
  sub_1C54ED570(v14, v12);
  *&__b[16] = v14;
  *&__b[24] = v12;
  *&__b[32] = v13;
  __b[48] = a4;
  __b[49] = a5;
  sub_1C547E08C(__b, a6);
  sub_1C54ED608(v14, v12);

  return sub_1C547E034(__b);
}

uint64_t *InformationLabelView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v136 = &v209;
  v135 = a1;
  v251 = 0;
  v250 = 0;
  memset(__b, 0, 0x32uLL);
  v209 = 0u;
  v210 = 0u;
  v207 = 0;
  v208 = 0;
  v137 = 0;
  v151 = 0;
  v138 = sub_1C55953B4();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v142 = &v42 - v141;
  v143 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v144 = &v42 - v143;
  v145 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v42 - v145;
  v6 = sub_1C5594764();
  v147 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v148 = &v42 - v147;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68);
  v149 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v42 - v149;
  v152 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v42 - v152;
  v154 = sub_1C5594794();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v154);
  v158 = &v42 - v157;
  v159 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v42 - v157);
  v160 = &v42 - v159;
  v251 = &v42 - v159;
  v161 = *v1;
  v162 = v1[1];
  v163 = v1[2];
  v167 = v1[3];
  v164 = *(v1 + 2);
  v165 = *(v1 + 48);
  v166 = *(v1 + 49);
  v250 = v1;
  sub_1C54ED570(v163, v167);
  if (!v167)
  {
    goto LABEL_12;
  }

  v132 = v163;
  v133 = v167;
  v134 = v164;
  v131 = *(&v164 + 1);
  v128 = v164;
  v129 = v167;
  v130 = v163;
  *&v209 = v163;
  *(&v209 + 1) = v167;
  v210 = v164;
  sub_1C5594CF4();
  if (!v131)
  {

LABEL_12:
    v51 = 0;
    sub_1C55953A4();
    v49 = "";
    v53 = 1;
    sub_1C55965F4();
    v48 = v36;
    sub_1C5595394();

    sub_1C5594CF4();
    sub_1C5595384();

    sub_1C55965F4();
    v50 = v37;
    sub_1C5595394();

    (*(v139 + 16))(v144, v146, v138);
    (*(v139 + 32))(v142, v144, v138);
    (*(v139 + 8))(v146, v138);
    sub_1C55953D4();
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v236 = v53 & 1;
    v229 = sub_1C55959E4();
    v230 = v38;
    v231 = v39;
    v232 = v40;
    v52 = v226;
    v226[0] = v229;
    v226[1] = v38;
    v227 = v39 & 1 & v53;
    v228 = v40;
    sub_1C5595E14();
    sub_1C5414260(v52);
    v55 = v221;
    v221[0] = v237;
    v221[1] = v238;
    v222 = v239 & 1 & v53;
    v223 = v240;
    v224 = v241;
    v225 = v242;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6C8);
    sub_1C5531480();
    v56 = &v243;
    sub_1C5595C54();
    sub_1C5414260(v55);
    v57 = v245;
    v62 = 49;
    memcpy(v245, v56, 0x31uLL);
    v58 = v220;
    memcpy(v220, v245, 0x31uLL);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6D8);
    v64 = sub_1C5531520();
    v70 = v244;
    sub_1C540EFD8(v58, v63, v244);
    sub_1C55315C8(v58);
    v59 = v246;
    memcpy(v246, v70, v62);
    sub_1C553161C(v59, &v218);
    v60 = v217;
    memcpy(v217, v59, v62);
    v69 = v219;
    sub_1C540EFD8(v60, v63, v219);
    sub_1C55315C8(v60);
    v61 = __dst;
    memcpy(__dst, v69, v62);
    sub_1C553161C(v61, &v215);
    v65 = v214;
    memcpy(v214, v61, v62);
    v66 = v216;
    sub_1C54108A0(v65, v63, v63, v64, v64, v216);
    sub_1C55315C8(v65);
    v67 = v248;
    v68 = 50;
    memcpy(v248, v66, 0x32uLL);
    memcpy(__b, v248, 0x32uLL);
    sub_1C55315C8(v69);
    sub_1C55315C8(v70);
    goto LABEL_13;
  }

  v126 = v128;
  v127 = v131;
  v117 = v131;
  v118 = v128;
  v207 = v128;
  v208 = v131;
  v122 = 0;
  v9 = sub_1C5596DF4();
  v120 = &v205;
  v205 = v9;
  v206 = v10;
  v124 = "";
  v123 = 1;
  v11 = sub_1C55965F4();
  v119 = v12;
  MEMORY[0x1C6947980](v11);

  sub_1C5594CF4();
  v121 = v204;
  v204[0] = v161;
  v204[1] = v162;
  sub_1C5596DD4();
  sub_1C5401ECC();
  v13 = sub_1C55965F4();
  v125 = v14;
  MEMORY[0x1C6947980](v13);

  v115 = sub_1C55965F4();
  v116 = v15;
  v16 = v137;
  v90 = v203;
  v203[0] = v115;
  v203[1] = v116;
  v103 = MEMORY[0x1E69E6158];
  v101 = MEMORY[0x1E69E61C8];
  v102 = MEMORY[0x1E69E61C0];
  v107 = &v205;
  sub_1C5596DD4();
  sub_1C5401ECC();
  v105 = "";
  v110 = 0;
  v111 = 1;
  v17 = sub_1C55965F4();
  v91 = v18;
  MEMORY[0x1C6947980](v17);

  v94 = 2;
  v19 = sub_1C5596DF4();
  v98 = &v201;
  v201 = v19;
  v202 = v20;
  v96 = 1;
  v21 = sub_1C55965F4();
  v92 = v22;
  MEMORY[0x1C6947980](v21);

  sub_1C5594CF4();
  v93 = v200;
  v200[0] = v130;
  v200[1] = v129;
  sub_1C5596DD4();
  sub_1C5401ECC();
  v23 = sub_1C55965F4();
  v95 = v24;
  MEMORY[0x1C6947980](v23);

  v199[2] = v118;
  v199[3] = v117;
  sub_1C5596DD4();
  v25 = sub_1C55965F4();
  v97 = v26;
  MEMORY[0x1C6947980](v25);

  v100 = v201;
  v99 = v202;
  sub_1C5594CF4();
  sub_1C5401ECC();
  v27 = sub_1C55965D4();
  v104 = v199;
  v199[0] = v27;
  v199[1] = v28;
  sub_1C5596DD4();
  sub_1C5401ECC();
  v29 = sub_1C55965F4();
  v106 = v30;
  MEMORY[0x1C6947980](v29);

  v109 = v205;
  v108 = v206;
  sub_1C5594CF4();
  sub_1C5401ECC();
  v112 = sub_1C55965D4();
  v113 = v31;
  v32 = sub_1C55948B4();
  (*(*(v32 - 8) + 56))(v150, v111);
  sub_1C55312B8(v148);
  sub_1C5594784();
  v114 = v16;
  if (v16)
  {

    (*(v155 + 56))(v153, 1, 1, v154);
  }

  else
  {
    (*(v155 + 56))(v153, 0, 1, v154);
  }

  if ((*(v155 + 48))(v153, 1, v154) == 1)
  {
    sub_1C553198C(v153);

    goto LABEL_12;
  }

  (*(v155 + 32))(v160, v153, v154);
  (*(v155 + 16))(v158, v160, v154);
  v183 = sub_1C55959F4();
  v184 = v33;
  v185 = v34;
  v186 = v35;
  v71 = v180;
  v180[0] = v183;
  v180[1] = v33;
  v72 = 1;
  v181 = v34 & 1;
  v182 = v35;
  sub_1C5595E14();
  sub_1C5414260(v71);
  v74 = v175;
  v175[0] = v187;
  v175[1] = v188;
  v176 = v189 & 1 & v72;
  v177 = v190;
  v178 = v191;
  v179 = v192;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6C8);
  sub_1C5531480();
  v75 = &v193;
  sub_1C5595C54();
  sub_1C5414260(v74);
  v76 = v195;
  v81 = 49;
  memcpy(v195, v75, 0x31uLL);
  v77 = v174;
  memcpy(v174, v195, 0x31uLL);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6D8);
  v83 = sub_1C5531520();
  v89 = v194;
  sub_1C540EFD8(v77, v82, v194);
  sub_1C55315C8(v77);
  v78 = v196;
  memcpy(v196, v89, v81);
  sub_1C553161C(v78, &v172);
  v79 = v171;
  memcpy(v171, v78, v81);
  v88 = v173;
  sub_1C540EFD8(v79, v82, v173);
  sub_1C55315C8(v79);
  v80 = v197;
  memcpy(v197, v88, v81);
  sub_1C553161C(v80, &v169);
  v84 = v168;
  memcpy(v168, v80, v81);
  v85 = v170;
  sub_1C540FD1C(v84, v82, v82, v83, v83, v170);
  sub_1C55315C8(v84);
  v86 = v198;
  v87 = 50;
  memcpy(v198, v85, 0x32uLL);
  memcpy(__b, v198, 0x32uLL);
  sub_1C55315C8(v88);
  sub_1C55315C8(v89);
  (*(v155 + 8))(v160, v154);

LABEL_13:
  v43 = v213;
  v47 = __b;
  v44 = 50;
  memcpy(v213, __b, 0x32uLL);
  sub_1C55316D4(v213, &v212);
  v46 = v211;
  memcpy(v211, v43, v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6E8);
  sub_1C5531814();
  sub_1C540EFD8(v46, v45, v135);
  sub_1C55318B4(v46);
  return sub_1C55318B4(v47);
}

uint64_t sub_1C55312B8@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v12 = 0;
  v8 = sub_1C5594734();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v3 - v3;
  v1 = sub_1C5594744();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v3 - v4;
  (*(v5 + 104))();
  (*(v6 + 104))(v11, *MEMORY[0x1E6968728], v8);
  return sub_1C5594754();
}

unint64_t sub_1C5531480()
{
  v2 = qword_1EC15E6D0;
  if (!qword_1EC15E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E6C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5531520()
{
  v2 = qword_1EC15E6E0;
  if (!qword_1EC15E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E6D8);
    sub_1C5531480();
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55315C8(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_1C553161C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  v8 = *(a1 + 40);

  result = a2;
  *(a2 + 40) = v8;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1C55316D4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  sub_1C553178C(*a1, v4, v5);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 49) = v10 & 1;
  return result;
}

uint64_t sub_1C553178C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C54130AC(a1, a2, a3 & 1);
  sub_1C5594CF4();
}

unint64_t sub_1C5531814()
{
  v2 = qword_1EC15E6F0;
  if (!qword_1EC15E6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E6E8);
    sub_1C5531520();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5531904(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C5412EA0(a1, a2, a3 & 1);
}

uint64_t sub_1C553198C(uint64_t a1)
{
  v3 = sub_1C5594794();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_14AppleAccountUI20InformationLabelViewV4LinkVSg(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < 0x100000000uLL)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_1C5531BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5531CE8(uint64_t result, int a2, int a3)
{
  v3 = (result + 50);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C5531ED4(uint64_t a1)
{
  type metadata accessor for BeneficiaryDetailsView.Coordinator();
  MEMORY[0x1E69E5928](a1);
  return sub_1C5461820(a1);
}

id sub_1C5531F58(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 trustedContactStatus];
  MEMORY[0x1E69E5920](a2);
  type metadata accessor for Status();
  sub_1C5461DBC();
  if (sub_1C5596E24())
  {
    sub_1C553225C();
    MEMORY[0x1E69E5928](a3);
    MEMORY[0x1E69E5928](a2);
    v7 = sub_1C5461BF0(a3, a2);
    MEMORY[0x1E69E5928](v7);
    v11 = v7;
  }

  else
  {
    sub_1C55321F8();
    MEMORY[0x1E69E5928](a3);
    MEMORY[0x1E69E5928](a2);
    v6 = sub_1C5461BF0(a3, a2);
    MEMORY[0x1E69E5928](v6);
    v11 = v6;
  }

  sub_1C5461EA0();
  v10 = sub_1C5404B48();
  v4 = [v10 viewModelForFlow:2 withContact:{a2, MEMORY[0x1E69E5928](a2).n128_f64[0]}];
  MEMORY[0x1E69E5920](a2);
  sub_1C5461F04();
  MEMORY[0x1E69E5928](a2);
  v5 = sub_1C5461C38(a2, v4);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  return v5;
}

unint64_t sub_1C55321F8()
{
  v2 = qword_1EC15E6F8;
  if (!qword_1EC15E6F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E6F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C553225C()
{
  v2 = qword_1EC15E700;
  if (!qword_1EC15E700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E700);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5532300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5531ED4(*v1);
  *a1 = result;
  return result;
}

void sub_1C55323C4()
{
  sub_1C54F03D4();
  sub_1C5595724();
  __break(1u);
}

unint64_t sub_1C5532404()
{
  v2 = qword_1EC15E708;
  if (!qword_1EC15E708)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E708);
    return WitnessTable;
  }

  return v2;
}

AppleAccountUI::AAUISignInDataclassActionFlowStage_optional __swiftcall AAUISignInDataclassActionFlowStage.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1C5596E04();
  *v2 = "dataclassActionOffer";
  *(v2 + 8) = 20;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dataclassActionMergeList";
  *(v2 + 32) = 24;
  *(v2 + 40) = 2;
  sub_1C540FCD8();
  v5 = sub_1C5596D64();

  if (v5)
  {
    if (v5 != 1)
    {

      *v4 = 2;
      return result;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

unint64_t sub_1C5532694()
{
  v2 = qword_1EC15E710;
  if (!qword_1EC15E710)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E710);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5532804@<X0>(uint64_t *a1@<X8>)
{
  result = AAUISignInDataclassActionFlowStage.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5532834()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C553289C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5532934(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___AAUISignInDataclassActionFlow_navController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C55329E0;
}

void sub_1C55329E0(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1C5401EF8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1C5532AAC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionFlow_signInDataclassActionFlowDirector);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C5532B14(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___AAUISignInDataclassActionFlow_signInDataclassActionFlowDirector);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C5532C00()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionFlow_account);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5532C70(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionFlow_account);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5532D78()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionFlow_dataclassActionsStore);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5532DE8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionFlow_dataclassActionsStore);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignInDataclassActionFlow.init(navController:account:dataclassActionsStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v12 = a2;
  v11 = a3;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___AAUISignInDataclassActionFlow_signInDataclassActionFlowDirector = 0;
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  v4 = v14;
  MEMORY[0x1E69E5928](a2);
  *&v4[OBJC_IVAR___AAUISignInDataclassActionFlow_account] = a2;
  v5 = v14;
  MEMORY[0x1E69E5928](a3);
  *&v5[OBJC_IVAR___AAUISignInDataclassActionFlow_dataclassActionsStore] = a3;
  v10.receiver = v14;
  v10.super_class = type metadata accessor for SignInDataclassActionFlow();
  v9 = objc_msgSendSuper2(&v10, sel_init);
  MEMORY[0x1E69E5928](v9);
  v14 = v9;
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v14);
  return v9;
}

uint64_t sub_1C55331A4(uint64_t a1)
{
  v51 = a1;
  v67 = 0;
  v66 = 0;
  v50 = 0;
  v61 = 0;
  v52 = sub_1C5594C74();
  v53 = *(v52 - 8);
  v54 = v53;
  v2 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v2;
  v66 = v1;
  v56 = sub_1C5532834();
  if (v56)
  {
    v49 = v56;
    v47 = v56;
    v61 = v56;
    v46 = type metadata accessor for SignInDataclassActionFlowDirector();
    swift_unknownObjectRetain();
    v4 = v47;
    v48 = sub_1C5532C00();
    v5 = sub_1C5532D78();
    v6 = sub_1C553379C(v51, v47, v48, v5);
    sub_1C5532B14(v6);
    v60 = sub_1C5532AAC();
    if (v60)
    {
      v45 = v60;

      sub_1C5410D10();
      v43 = 0;
      v59 = 0;
      v7 = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v8 = v45;
      v40 = v7;
      v41 = v9;
      sub_1C5594CF4();
      v42 = sub_1C5596554();
      v10 = v42;

      v57[0] = 0;
      v57[1] = v42;
      v58 = v43;
      v11 = *(*v8 + 280);
      v44 = v57;
      v11();
      sub_1C545CDC0(v44);
    }

    else
    {
      sub_1C5410D10();
    }

    return v50;
  }

  else
  {
    v12 = v55;
    v13 = sub_1C54B05F8();
    (*(v54 + 16))(v12, v13, v52);
    v37 = sub_1C5594C54();
    v34 = v37;
    v36 = sub_1C5596954();
    v35 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v38 = sub_1C5596E04();
    if (os_log_type_enabled(v37, v36))
    {
      v14 = v50;
      v25 = sub_1C5596A74();
      v21 = v25;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v23 = 0;
      v26 = sub_1C5419DC0(0);
      v24 = v26;
      v27 = sub_1C5419DC0(v23);
      v65 = v25;
      v64 = v26;
      v63 = v27;
      v28 = 0;
      v29 = &v65;
      sub_1C5419E14(0, &v65);
      sub_1C5419E14(v28, v29);
      v62 = v38;
      v30 = &v17;
      MEMORY[0x1EEE9AC00](&v17);
      v31 = &v17 - 6;
      *(&v17 - 4) = v15;
      *(&v17 - 3) = &v64;
      *(&v17 - 2) = &v63;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v33 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v34, v35, "SignInDataclassActionFlow: Error invoking buddy, no navigation controller found.", v21, 2u);
        v19 = 0;
        sub_1C5419E74(v24);
        sub_1C5419E74(v27);
        sub_1C5596A54();

        v20 = v33;
      }
    }

    else
    {

      v20 = v50;
    }

    v18 = v20;

    (*(v54 + 8))(v55, v52);
    return v18;
  }
}

id SignInDataclassActionFlow.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionFlow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C55339F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1C5533A48()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*sub_1C5533AB0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533B48;
}

void sub_1C5533B48(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_1C546E12C();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

uint64_t sub_1C5533BF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C5533C4C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5533CCC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533D64;
}

void sub_1C5533D64(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1C5401EF8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1C5533E28()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1C5533E80(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5533F54()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C5533FA4(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_1C5533FF0()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1C5534048(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55340C0()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  MEMORY[0x1E69E5928](v2);
  swift_endAccess();
  return v2;
}

double sub_1C5534118(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55341EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x1E69E5928](a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a2);
  swift_endAccess();
  MEMORY[0x1E69E5928](a3);
  *(v4 + 48) = a3;
  MEMORY[0x1E69E5928](a4);
  *(v4 + 56) = a4;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1C5534370(uint64_t a1)
{
  v309 = a1;
  v382 = 0;
  v307 = 0;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v308 = 0;
  v374 = 0;
  v373 = 0;
  v367 = 0;
  v346 = 0;
  v345 = 0;
  v310 = sub_1C5594C74();
  v311 = *(v310 - 8);
  v312 = v311;
  v318 = *(v311 + 64);
  v2 = MEMORY[0x1EEE9AC00](v309);
  v320 = (v318 + 15) & 0xFFFFFFFFFFFFFFF0;
  v313 = &v82 - v320;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v314 = &v82 - v320;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v315 = &v82 - v320;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v316 = &v82 - v320;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v317 = &v82 - v320;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v319 = &v82 - v320;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v321 = &v82 - v320;
  v322 = *v8;
  v323 = *(v8 + 8);
  v324 = *(v8 + 16);
  v380 = v322;
  v381 = v323;
  v382 = v324;
  v379 = v1;
  v325 = (*(*v1 + 128))();
  if (v325)
  {
    v305 = v325;
    v304 = v325;
    v374 = v325;
    if (v324)
    {
      if (v324 != 1)
      {
        v300 = v323;
        v56 = v314;
        v124 = v323;
        v57 = v323;
        v373 = v124;
        v58 = sub_1C54B05F8();
        (*(v312 + 16))(v56, v58, v310);
        v59 = v124;
        v132 = 7;
        v133 = swift_allocObject();
        *(v133 + 16) = v124;
        v143 = sub_1C5594C54();
        v125 = v143;
        v142 = sub_1C5596944();
        v126 = v142;
        v127 = 17;
        v136 = swift_allocObject();
        v128 = v136;
        v129 = 32;
        *(v136 + 16) = 32;
        v60 = swift_allocObject();
        v61 = v129;
        v137 = v60;
        v130 = v60;
        *(v60 + 16) = 8;
        v131 = v61;
        v62 = swift_allocObject();
        v63 = v133;
        v134 = v62;
        *(v62 + 16) = sub_1C55380D4;
        *(v62 + 24) = v63;
        v64 = swift_allocObject();
        v65 = v134;
        v140 = v64;
        v135 = v64;
        *(v64 + 16) = sub_1C5473EFC;
        *(v64 + 24) = v65;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
        v138 = sub_1C5596E04();
        v139 = v66;

        v67 = v136;
        v68 = v139;
        *v139 = sub_1C545C6D4;
        v68[1] = v67;

        v69 = v137;
        v70 = v139;
        v139[2] = sub_1C545C6D4;
        v70[3] = v69;

        v71 = v139;
        v72 = v140;
        v139[4] = sub_1C5473FA4;
        v71[5] = v72;
        sub_1C540FCD8();

        if (os_log_type_enabled(v143, v142))
        {
          v74 = v308;
          v117 = sub_1C5596A74();
          v114 = v117;
          v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
          v118 = sub_1C5419DC0(0);
          v116 = v118;
          v120 = 1;
          v119 = sub_1C5419DC0(1);
          v372 = v117;
          v371 = v118;
          v370 = v119;
          v121 = &v372;
          sub_1C5419E14(2, &v372);
          sub_1C5419E14(v120, v121);
          v368 = sub_1C545C6D4;
          v369 = v128;
          sub_1C5419E28(&v368, v121, &v371, &v370);
          v122 = v74;
          v123 = v74;
          if (v74)
          {
            v112 = 0;

            __break(1u);
          }

          else
          {
            v368 = sub_1C545C6D4;
            v369 = v130;
            sub_1C5419E28(&v368, &v372, &v371, &v370);
            v110 = 0;
            v111 = 0;
            v368 = sub_1C5473FA4;
            v369 = v135;
            sub_1C5419E28(&v368, &v372, &v371, &v370);
            v108 = 0;
            v109 = 0;
            _os_log_impl(&dword_1C5355000, v125, v126, "Deferring action from stage: %s", v114, 0xCu);
            sub_1C5419E74(v116);
            sub_1C5419E74(v119);
            sub_1C5596A54();

            v113 = v108;
          }
        }

        else
        {
          v75 = v308;

          v113 = v75;
        }

        v107 = v113;

        (*(v312 + 8))(v314, v310);
        swift_getObjectType();
        v105 = 0;
        type metadata accessor for WelcomeFlowResult();
        v76 = v124;
        v106 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(1, v124, v105, v105);
        [v304 welcomeFlowEndedWithResult_];
        swift_unknownObjectRelease();

        v225 = v107;
        goto LABEL_57;
      }

      v301 = v323;
      v216 = v323;
      v39 = v323;
      v367 = v216;
      v219 = sub_1C545C2A0(v216);
      v220 = v40;
      v217 = v219;
      v218 = v40;
      sub_1C5594CF4();
      v366 = 0;
      v364 = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v365 = v41;
      v362 = v219;
      v363 = v220;
      v221 = MEMORY[0x1C69471A0](v364, v41, v219, v220);
      sub_1C5401ECC();
      if (v221)
      {
        v42 = v317;

        v43 = sub_1C54B05F8();
        (*(v312 + 16))(v42, v43, v310);
        v214 = sub_1C5594C54();
        v211 = v214;
        v213 = sub_1C5596944();
        v212 = v213;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
        v215 = sub_1C5596E04();
        if (os_log_type_enabled(v214, v213))
        {
          v44 = v308;
          v202 = sub_1C5596A74();
          v198 = v202;
          v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
          v200 = 0;
          v203 = sub_1C5419DC0(0);
          v201 = v203;
          v204 = sub_1C5419DC0(v200);
          v350[0] = v202;
          v349 = v203;
          v348 = v204;
          v205 = 0;
          v206 = v350;
          sub_1C5419E14(0, v350);
          sub_1C5419E14(v205, v206);
          v347 = v215;
          v207 = &v82;
          MEMORY[0x1EEE9AC00](&v82);
          v208 = &v82 - 6;
          *(&v82 - 4) = v45;
          *(&v82 - 3) = &v349;
          *(&v82 - 2) = &v348;
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
          sub_1C5419F0C();
          sub_1C55966B4();
          v210 = v44;
          if (v44)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1C5355000, v211, v212, "Declined Stage: Dataclass Action Offer. Loading merge action list.", v198, 2u);
            v196 = 0;
            sub_1C5419E74(v201);
            sub_1C5419E74(v204);
            sub_1C5596A54();

            v197 = v210;
          }
        }

        else
        {

          v197 = v308;
        }

        v194 = v197;

        (*(v312 + 8))(v317, v310);
        sub_1C5536C44();

        v195 = v194;
LABEL_50:
        v144 = v195;

        v225 = v144;
LABEL_57:
        v104 = v225;
        swift_unknownObjectRelease();
        return v104;
      }

      sub_1C5594CF4();
      v361 = 1;
      v359 = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v360 = v46;
      v358[1] = v217;
      v358[2] = v218;
      v193 = MEMORY[0x1C69471A0](v359, v46, v217, v218);
      sub_1C5401ECC();
      if (v193)
      {
        v47 = v316;

        v48 = sub_1C54B05F8();
        (*(v312 + 16))(v47, v48, v310);
        v191 = sub_1C5594C54();
        v188 = v191;
        v190 = sub_1C5596944();
        v189 = v190;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
        v192 = sub_1C5596E04();
        if (os_log_type_enabled(v191, v190))
        {
          v49 = v308;
          v179 = sub_1C5596A74();
          v175 = v179;
          v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
          v177 = 0;
          v180 = sub_1C5419DC0(0);
          v178 = v180;
          v181 = sub_1C5419DC0(v177);
          v353 = v179;
          v352 = v180;
          v351 = v181;
          v182 = 0;
          v183 = &v353;
          sub_1C5419E14(0, &v353);
          sub_1C5419E14(v182, v183);
          v350[1] = v192;
          v184 = &v82;
          MEMORY[0x1EEE9AC00](&v82);
          v185 = &v82 - 6;
          *(&v82 - 4) = v50;
          *(&v82 - 3) = &v352;
          *(&v82 - 2) = &v351;
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
          sub_1C5419F0C();
          sub_1C55966B4();
          v187 = v49;
          if (v49)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1C5355000, v188, v189, "Declined Stage: Dataclass Merge Action List. Going back to Dataclass action offer.", v175, 2u);
            v173 = 0;
            sub_1C5419E74(v178);
            sub_1C5419E74(v181);
            sub_1C5596A54();

            v174 = v187;
          }
        }

        else
        {

          v174 = v308;
        }

        v169 = v174;

        (*(v312 + 8))(v316, v310);
        v170 = v306 + 24;
        v171 = &v354;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_endAccess();
        v355[0] = Strong;
        if (Strong)
        {
          v166 = v355[0];
          v51 = v355[0];
          sub_1C5401EF8(v355);
          v167 = [v166 popViewControllerAnimated_];

          v168 = v167;
        }

        else
        {
          sub_1C5401EF8(v355);
          v168 = 0;
        }

        v195 = v169;
        goto LABEL_50;
      }

      v52 = v315;

      v53 = sub_1C54B05F8();
      (*(v312 + 16))(v52, v53, v310);
      v164 = sub_1C5594C54();
      v161 = v164;
      v163 = sub_1C5596954();
      v162 = v163;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v165 = sub_1C5596E04();
      if (os_log_type_enabled(v164, v163))
      {
        v54 = v308;
        v152 = sub_1C5596A74();
        v148 = v152;
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v150 = 0;
        v153 = sub_1C5419DC0(0);
        v151 = v153;
        v154 = sub_1C5419DC0(v150);
        v358[0] = v152;
        v357 = v153;
        v356 = v154;
        v155 = 0;
        v156 = v358;
        sub_1C5419E14(0, v358);
        sub_1C5419E14(v155, v156);
        v355[1] = v165;
        v157 = &v82;
        MEMORY[0x1EEE9AC00](&v82);
        v158 = &v82 - 6;
        *(&v82 - 4) = v55;
        *(&v82 - 3) = &v357;
        *(&v82 - 2) = &v356;
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v160 = v54;
        if (v54)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v161, v162, "Declined Stage: Unknown.", v148, 2u);
          v146 = 0;
          sub_1C5419E74(v151);
          sub_1C5419E74(v154);
          sub_1C5596A54();

          v147 = v160;
        }
      }

      else
      {

        v147 = v308;
      }

      v145 = v147;

      (*(v312 + 8))(v315, v310);

      swift_unknownObjectRelease();
      return v145;
    }

    else
    {
      v302 = v322;
      v303 = v323;
      v295 = v323;
      v294 = v322;
      sub_1C5594CF4();
      v9 = v295;
      v346 = v294;
      v345 = v295;
      v296 = sub_1C545C2A0(v295);
      v298 = v10;
      v344 = 0;
      v11 = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v297 = v12;
      v299 = MEMORY[0x1C69471A0](v296, v298, v11);

      if (v299)
      {
        v291 = &v326;
        swift_beginAccess();
        v292 = *(v306 + 40);
        swift_endAccess();
        v293 = v292 ^ 1;
      }

      else
      {
        v293 = 0;
      }

      v290 = v293;

      if (v290)
      {
        sub_1C55362E0();
        v288 = &v327;
        swift_beginAccess();
        *(v306 + 40) = 1;
        swift_endAccess();

        swift_unknownObjectRelease();
        return v308;
      }

      else
      {
        v285 = sub_1C545C2A0(v295);
        v286 = v13;
        v283 = v285;
        v284 = v13;
        sub_1C5594CF4();
        v343 = 0;
        v341 = AAUISignInDataclassActionFlowStage.rawValue.getter();
        v342 = v14;
        v339 = v285;
        v340 = v286;
        v287 = MEMORY[0x1C69471A0](v341, v14, v285, v286);
        sub_1C5401ECC();
        if (v287 & 1) != 0 || (, sub_1C5594CF4(), v338 = 1, v336 = AAUISignInDataclassActionFlowStage.rawValue.getter(), v337 = v15, v335[1] = v283, v335[2] = v284, v282 = MEMORY[0x1C69471A0](v336, v15, v283, v284), sub_1C5401ECC(), (v282))
        {

          v20 = v319;
          v21 = sub_1C54B05F8();
          (*(v312 + 16))(v20, v21, v310);
          v22 = v295;
          v249 = 7;
          v250 = swift_allocObject();
          *(v250 + 16) = v295;
          v260 = sub_1C5594C54();
          v242 = v260;
          v259 = sub_1C5596944();
          v243 = v259;
          v244 = 17;
          v253 = swift_allocObject();
          v245 = v253;
          v246 = 32;
          *(v253 + 16) = 32;
          v23 = swift_allocObject();
          v24 = v246;
          v254 = v23;
          v247 = v23;
          *(v23 + 16) = 8;
          v248 = v24;
          v25 = swift_allocObject();
          v26 = v250;
          v251 = v25;
          *(v25 + 16) = sub_1C55380D4;
          *(v25 + 24) = v26;
          v27 = swift_allocObject();
          v28 = v251;
          v257 = v27;
          v252 = v27;
          *(v27 + 16) = sub_1C5473EFC;
          *(v27 + 24) = v28;
          v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
          v255 = sub_1C5596E04();
          v256 = v29;

          v30 = v253;
          v31 = v256;
          *v256 = sub_1C545C6D4;
          v31[1] = v30;

          v32 = v254;
          v33 = v256;
          v256[2] = sub_1C545C6D4;
          v33[3] = v32;

          v34 = v256;
          v35 = v257;
          v256[4] = sub_1C5473FA4;
          v34[5] = v35;
          sub_1C540FCD8();

          if (os_log_type_enabled(v260, v259))
          {
            v36 = v308;
            v235 = sub_1C5596A74();
            v232 = v235;
            v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
            v236 = sub_1C5419DC0(0);
            v234 = v236;
            v238 = 1;
            v237 = sub_1C5419DC0(1);
            v332[0] = v235;
            v331 = v236;
            v330 = v237;
            v239 = v332;
            sub_1C5419E14(2, v332);
            sub_1C5419E14(v238, v239);
            v328 = sub_1C545C6D4;
            v329 = v245;
            sub_1C5419E28(&v328, v239, &v331, &v330);
            v240 = v36;
            v241 = v36;
            if (v36)
            {
              v230 = 0;

              __break(1u);
            }

            else
            {
              v328 = sub_1C545C6D4;
              v329 = v247;
              sub_1C5419E28(&v328, v332, &v331, &v330);
              v228 = 0;
              v229 = 0;
              v328 = sub_1C5473FA4;
              v329 = v252;
              sub_1C5419E28(&v328, v332, &v331, &v330);
              v226 = 0;
              v227 = 0;
              _os_log_impl(&dword_1C5355000, v242, v243, "Completed Stage: %s. Ending Dataclass Action Flow.", v232, 0xCu);
              sub_1C5419E74(v234);
              sub_1C5419E74(v237);
              sub_1C5596A54();

              v231 = v226;
            }
          }

          else
          {
            v37 = v308;

            v231 = v37;
          }

          v224 = v231;

          (*(v312 + 8))(v319, v310);
          swift_getObjectType();
          v222 = 0;
          type metadata accessor for WelcomeFlowResult();
          v38 = v295;
          sub_1C5594CF4();
          v223 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(v222, v295, v294, v222);
          [v304 welcomeFlowEndedWithResult_];
          swift_unknownObjectRelease();

          v225 = v224;
          goto LABEL_57;
        }

        v16 = v321;

        v17 = sub_1C54B05F8();
        (*(v312 + 16))(v16, v17, v310);
        v280 = sub_1C5594C54();
        v277 = v280;
        v279 = sub_1C5596954();
        v278 = v279;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
        v281 = sub_1C5596E04();
        if (os_log_type_enabled(v280, v279))
        {
          v18 = v308;
          v268 = sub_1C5596A74();
          v264 = v268;
          v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
          v266 = 0;
          v269 = sub_1C5419DC0(0);
          v267 = v269;
          v270 = sub_1C5419DC0(v266);
          v335[0] = v268;
          v334 = v269;
          v333 = v270;
          v271 = 0;
          v272 = v335;
          sub_1C5419E14(0, v335);
          sub_1C5419E14(v271, v272);
          v332[1] = v281;
          v273 = &v82;
          MEMORY[0x1EEE9AC00](&v82);
          v274 = &v82 - 6;
          *(&v82 - 4) = v19;
          *(&v82 - 3) = &v334;
          *(&v82 - 2) = &v333;
          v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
          sub_1C5419F0C();
          sub_1C55966B4();
          v276 = v18;
          if (v18)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1C5355000, v277, v278, "Completed Stage: Unknown.", v264, 2u);
            v262 = 0;
            sub_1C5419E74(v267);
            sub_1C5419E74(v270);
            sub_1C5596A54();

            v263 = v276;
          }
        }

        else
        {

          v263 = v308;
        }

        v261 = v263;

        (*(v312 + 8))(v321, v310);

        swift_unknownObjectRelease();
        return v261;
      }
    }
  }

  else
  {
    v77 = v313;
    v78 = sub_1C54B05F8();
    (*(v312 + 16))(v77, v78, v310);
    v102 = sub_1C5594C54();
    v99 = v102;
    v101 = sub_1C5596954();
    v100 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v103 = sub_1C5596E04();
    if (os_log_type_enabled(v102, v101))
    {
      v79 = v308;
      v90 = sub_1C5596A74();
      v86 = v90;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v88 = 0;
      v91 = sub_1C5419DC0(0);
      v89 = v91;
      v92 = sub_1C5419DC0(v88);
      v378 = v90;
      v377 = v91;
      v376 = v92;
      v93 = 0;
      v94 = &v378;
      sub_1C5419E14(0, &v378);
      sub_1C5419E14(v93, v94);
      v375 = v103;
      v95 = &v82;
      MEMORY[0x1EEE9AC00](&v82);
      v96 = &v82 - 6;
      *(&v82 - 4) = v80;
      *(&v82 - 3) = &v377;
      *(&v82 - 2) = &v376;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v98 = v79;
      if (v79)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v99, v100, "SignInDataclassActionFlowDirector: Missing reference to the buddy flow invoker.", v86, 2u);
        v84 = 0;
        sub_1C5419E74(v89);
        sub_1C5419E74(v92);
        sub_1C5596A54();

        v85 = v98;
      }
    }

    else
    {

      v85 = v308;
    }

    v83 = v85;

    (*(v312 + 8))(v313, v310);
    return v83;
  }
}

uint64_t sub_1C55362E0()
{
  v10 = sub_1C55380DC;
  v32 = 0;
  v30 = 0;
  v11 = 0;
  v15 = sub_1C5596284();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v14 = &v6 - v7;
  v19 = sub_1C55962A4();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v6 - v8;
  v32 = v0;
  v31 = 0;
  v22 = sub_1C55375AC(&v31);
  v30 = v22;
  sub_1C5444CF8();
  v21 = sub_1C5596984();

  swift_unknownObjectRetain();
  v1 = swift_allocObject();
  v2 = v10;
  v3 = v1;
  v4 = v22;
  *(v3 + 16) = v9;
  *(v3 + 24) = v4;
  v28 = v2;
  v29 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1C544364C;
  v27 = &block_descriptor_18;
  v20 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v11, v18, v14, v20);
  (*(v12 + 8))(v14, v15);
  (*(v16 + 8))(v18, v19);
  _Block_release(v20);
  MEMORY[0x1E69E5920](v21);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5536574(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v49 = a1;
  v50 = 0;
  v66 = 0;
  v65 = 0;
  v40 = 0;
  v57 = 0;
  v55 = 0;
  v41 = sub_1C5594C74();
  v42 = *(v41 - 8);
  v43 = v42;
  v44 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](0);
  v45 = v12 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v2;
  v65 = v3;
  type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();

  v64[3] = type metadata accessor for SignInDataclassActionFlowDirector();
  v64[4] = &off_1F447DEA8;
  v64[0] = v49;
  v48 = SignInDataclassActionInvokingOBWelcomeController.__allocating_init(model:flowDirector:)(v46, v64);
  v4 = v48;
  v47 = &v63;
  swift_beginAccess();
  v5 = *(v49 + 32);
  *(v49 + 32) = v48;

  swift_endAccess();
  v51 = v49 + 24;
  v52 = &v62;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v39 = v53;
    v35 = v53;
    v57 = v53;
    v37 = &v56;
    swift_beginAccess();
    v38 = *(v49 + 32);
    v36 = v38;
    v6 = v38;
    swift_endAccess();
    if (v38)
    {
      v34 = v36;
      v32 = v36;
      v55 = v36;
      [v35 pushViewController_animated_];

      return v40;
    }
  }

  v7 = v45;
  v8 = sub_1C54B05F8();
  (*(v43 + 16))(v7, v8, v41);
  v30 = sub_1C5594C54();
  v27 = v30;
  v29 = sub_1C5596954();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v31 = sub_1C5596E04();
  if (os_log_type_enabled(v30, v29))
  {
    v9 = v40;
    v18 = sub_1C5596A74();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v16 = 0;
    v19 = sub_1C5419DC0(0);
    v17 = v19;
    v20 = sub_1C5419DC0(v16);
    v61 = v18;
    v60 = v19;
    v59 = v20;
    v21 = 0;
    v22 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v21, v22);
    v58 = v31;
    v23 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v24 = &v12[-6];
    v12[-4] = v10;
    v12[-3] = &v60;
    v12[-2] = &v59;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v26 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v27, v28, "Unable to present dataclass action offer.", v14, 2u);
      v12[1] = 0;
      sub_1C5419E74(v17);
      sub_1C5419E74(v20);
      sub_1C5596A54();

      v13 = v26;
    }
  }

  else
  {

    v13 = v40;
  }

  v12[0] = v13;

  (*(v43 + 8))(v45, v41);
  return v12[0];
}

uint64_t sub_1C5536C44()
{
  v10 = sub_1C553814C;
  v32 = 0;
  v30 = 0;
  v11 = 0;
  v15 = sub_1C5596284();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v14 = &v6 - v7;
  v19 = sub_1C55962A4();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v6 - v8;
  v32 = v0;
  v31 = 1;
  v22 = sub_1C55375AC(&v31);
  v30 = v22;
  sub_1C5444CF8();
  v21 = sub_1C5596984();

  swift_unknownObjectRetain();
  v1 = swift_allocObject();
  v2 = v10;
  v3 = v1;
  v4 = v22;
  *(v3 + 16) = v9;
  *(v3 + 24) = v4;
  v28 = v2;
  v29 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1C544364C;
  v27 = &block_descriptor_46;
  v20 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v11, v18, v14, v20);
  (*(v12 + 8))(v14, v15);
  (*(v16 + 8))(v18, v19);
  _Block_release(v20);
  MEMORY[0x1E69E5920](v21);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5536EDC(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v49 = a1;
  v50 = 0;
  v66 = 0;
  v65 = 0;
  v40 = 0;
  v57 = 0;
  v55 = 0;
  v41 = sub_1C5594C74();
  v42 = *(v41 - 8);
  v43 = v42;
  v44 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](0);
  v45 = v12 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v2;
  v65 = v3;
  type metadata accessor for SignInDataclassMergeActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();

  v64[3] = type metadata accessor for SignInDataclassActionFlowDirector();
  v64[4] = &off_1F447DEA8;
  v64[0] = v49;
  v48 = SignInDataclassMergeActionInvokingOBWelcomeController.__allocating_init(model:flowDirector:)(v46, v64);
  v4 = v48;
  v47 = &v63;
  swift_beginAccess();
  v5 = *(v49 + 32);
  *(v49 + 32) = v48;

  swift_endAccess();
  v51 = v49 + 24;
  v52 = &v62;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v39 = v53;
    v35 = v53;
    v57 = v53;
    v37 = &v56;
    swift_beginAccess();
    v38 = *(v49 + 32);
    v36 = v38;
    v6 = v38;
    swift_endAccess();
    if (v38)
    {
      v34 = v36;
      v32 = v36;
      v55 = v36;
      [v35 pushViewController_animated_];

      return v40;
    }
  }

  v7 = v45;
  v8 = sub_1C54B05F8();
  (*(v43 + 16))(v7, v8, v41);
  v30 = sub_1C5594C54();
  v27 = v30;
  v29 = sub_1C5596954();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v31 = sub_1C5596E04();
  if (os_log_type_enabled(v30, v29))
  {
    v9 = v40;
    v18 = sub_1C5596A74();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v16 = 0;
    v19 = sub_1C5419DC0(0);
    v17 = v19;
    v20 = sub_1C5419DC0(v16);
    v61 = v18;
    v60 = v19;
    v59 = v20;
    v21 = 0;
    v22 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v21, v22);
    v58 = v31;
    v23 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v24 = &v12[-6];
    v12[-4] = v10;
    v12[-3] = &v60;
    v12[-2] = &v59;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v26 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v27, v28, "Unable to present dataclass action offer.", v14, 2u);
      v12[1] = 0;
      sub_1C5419E74(v17);
      sub_1C5419E74(v20);
      sub_1C5596A54();

      v13 = v26;
    }
  }

  else
  {

    v13 = v40;
  }

  v12[0] = v13;

  (*(v43 + 8))(v45, v41);
  return v12[0];
}

char *sub_1C55375AC(uint64_t a1)
{
  v42 = a1;
  v50 = sub_1C55381BC;
  v54 = sub_1C5473EFC;
  v56 = sub_1C545C6D4;
  v58 = sub_1C545C6D4;
  v61 = sub_1C5473FA4;
  v78 = 0;
  v77 = 0;
  v72 = 0;
  v40 = 0;
  v47 = sub_1C5594C74();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v43 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v18 - v43;
  v44 = &v18 - v43;
  v48 = *MEMORY[0x1EEE9AC00](v42);
  v78 = v48 & 1;
  v77 = v2;
  v3 = sub_1C54B05F8();
  (*(v45 + 16))(v1, v3, v47);
  v49 = 17;
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = sub_1C5594C54();
  v66 = sub_1C5596944();
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v60 = sub_1C5596E04();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1C540FCD8();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v40;
    v33 = sub_1C5596A74();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v34 = sub_1C5419DC0(0);
    v35 = sub_1C5419DC0(1);
    v36 = &v71;
    v71 = v33;
    v37 = &v70;
    v70 = v34;
    v38 = &v69;
    v69 = v35;
    sub_1C5419E14(2, &v71);
    sub_1C5419E14(1, v36);
    v67 = v56;
    v68 = v57;
    sub_1C5419E28(&v67, v36, v37, v38);
    v39 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      v31 = 0;
      v67 = v61;
      v68 = v62;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_1C5355000, v65, v66, "Creating model for stage: %s", v33, 0xCu);
      sub_1C5419E74(v34);
      sub_1C5419E74(v35);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v16 = MEMORY[0x1E69E5920](v65);
  (*(v45 + 8))(v44, v47, v16);
  if (v48)
  {
    v23 = &v75;
    v24 = 32;
    v25 = 0;
    swift_beginAccess();
    v28 = *(v41 + 56);
    MEMORY[0x1E69E5928](v28);
    swift_endAccess();
    v26 = &v74;
    swift_beginAccess();
    v27 = *(v41 + 48);
    MEMORY[0x1E69E5928](v27);
    swift_endAccess();
    v29 = [v28 dataclassesWithLocalDataForAddingAccount_];
    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v28);
    if (v29)
    {
      v22 = v29;
      v19 = v29;
      v20 = sub_1C5596714();
      MEMORY[0x1E69E5920](v19);
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v73 = v21;
    if (v21)
    {
      v76 = v73;
    }

    else
    {
      v76 = sub_1C5596E04();
      if (v73)
      {
        sub_1C541439C();
      }
    }

    v18 = v76;
    v72 = v76;
    type metadata accessor for SignInDataclassActionMergeListModel();
    return SignInDataclassActionMergeListModel.__allocating_init(dataclassList:)(v18);
  }

  else
  {
    type metadata accessor for SignInDataclassActionOfferModel();
    return SignInDataclassActionOfferModel.__allocating_init()();
  }
}

uint64_t sub_1C5537E84()
{
  sub_1C55381C8();
  MEMORY[0x1C6948CE0](v0 + 3);
  sub_1C5401EF8(v0 + 4);
  MEMORY[0x1E69E5920](v0[6]);
  MEMORY[0x1E69E5920](v0[7]);
  return v2;
}

void (*sub_1C5537FBC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return sub_1C545A074;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C5538208()
{
  v2 = qword_1EC15E740;
  if (!qword_1EC15E740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E740);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5538338@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  v7 = v4;
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x70))(v2);
  sub_1C5458604(v6, a2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C55383E0(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v6);
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x78))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5538488@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C55384EC(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C55385E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5538684(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x90))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5538730()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C55387A0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55388A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5538948(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA8))(v3);
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C5538A08()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_dataclassActionsStore);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5538A78(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_dataclassActionsStore);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5538B80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5538C20(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  v6 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2);
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xC0))(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1C5538CD8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5538D40(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *SignOutRemainedInformationActionInvokingOBWelcomeController.init(model:stage:flowDirector:dataclassActionsStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  MEMORY[0x1E69E5928](a2);
  *OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_stage = a2;
  v5 = v19;
  sub_1C5432498(a3, v14);
  sub_1C5458604(v14, &v5[OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_flowDirector]);
  v6 = v19;
  MEMORY[0x1E69E5928](a4);
  *&v6[OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_dataclassActionsStore] = a4;
  v7 = v19;
  swift_unknownObjectRetain();
  *&v7[OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_model] = a1;
  v13.receiver = v19;
  v13.super_class = type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  v12 = objc_msgSendSuper2(&v13, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v12);
  v19 = v12;
  SignOutRemainedInformationActionInvokingOBWelcomeController.setupInvokingActions()();
  MEMORY[0x1E69E5920](a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v19);
  return v12;
}

Swift::Void __swiftcall SignOutRemainedInformationActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v62 = sub_1C553F634;
  v63 = sub_1C553F63C;
  v64 = sub_1C545AE98;
  v65 = sub_1C545C6DC;
  v66 = sub_1C545C6D4;
  v67 = sub_1C545C6D4;
  v68 = sub_1C545C6E8;
  v86 = 0;
  v69 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v70 = sub_1C5594C74();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = v20 - v73;
  v86 = MEMORY[0x1EEE9AC00](v75);
  *&v0 = MEMORY[0x1E69E5928](v86).n128_u64[0];
  v76 = [v75 primaryButton];
  if (v76)
  {
    v61 = v76;
    v59 = v76;
    v80 = v76;
    MEMORY[0x1E69E5920](v75);
    *&v1 = MEMORY[0x1E69E5928](v75).n128_u64[0];
    v2 = [v75 secondaryButton];
    v60 = v2;
    if (v2)
    {
      v58 = v60;
      v57 = v60;
      v79 = v60;
      MEMORY[0x1E69E5920](v75);
      v51 = 0;
      v45 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v75);
      v46 = 24;
      v47 = 7;
      v42 = swift_allocObject();
      *(v42 + 16) = v75;
      v44 = sub_1C54398B0();
      v43 = v3;
      v41 = sub_1C545B878();
      sub_1C53FE664();
      v56 = sub_1C5596A44();
      v78 = v56;
      MEMORY[0x1E69E5928](v75);
      v49 = swift_allocObject();
      *(v49 + 16) = v75;
      v52 = sub_1C54398B0();
      v50 = v4;
      v48 = sub_1C545B878();
      sub_1C53FE664();
      v55 = sub_1C5596A44();
      v77 = v55;
      v53 = 0x1FB0D4000uLL;
      v54 = 64;
      [v59 0x1FB0D4EF8];
      [v57 (v53 + 3832)];
      MEMORY[0x1E69E5920](v55);
      MEMORY[0x1E69E5920](v56);
      MEMORY[0x1E69E5920](v57);
      MEMORY[0x1E69E5920](v59);
      return;
    }

    MEMORY[0x1E69E5920](v75);
    MEMORY[0x1E69E5920](v59);
  }

  else
  {
    MEMORY[0x1E69E5920](v75);
  }

  v5 = v74;
  v6 = sub_1C54B0910();
  (*(v71 + 16))(v5, v6, v70);
  MEMORY[0x1E69E5928](v75);
  v30 = 7;
  v31 = swift_allocObject();
  *(v31 + 16) = v75;
  v39 = sub_1C5594C54();
  v40 = sub_1C5596954();
  v28 = 17;
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v29 = 32;
  v7 = swift_allocObject();
  v8 = v31;
  v32 = v7;
  *(v7 + 16) = v64;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v32;
  v36 = v9;
  *(v9 + 16) = v65;
  *(v9 + 24) = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v35 = sub_1C5596E04();
  v37 = v11;

  v12 = v33;
  v13 = v37;
  *v37 = v66;
  v13[1] = v12;

  v14 = v34;
  v15 = v37;
  v37[2] = v67;
  v15[3] = v14;

  v16 = v36;
  v17 = v37;
  v37[4] = v68;
  v17[5] = v16;
  sub_1C540FCD8();

  if (os_log_type_enabled(v39, v40))
  {
    v18 = v69;
    v21 = sub_1C5596A74();
    v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v22 = sub_1C5419DC0(1);
    v23 = sub_1C5419DC0(0);
    v24 = &v85;
    v85 = v21;
    v25 = &v84;
    v84 = v22;
    v26 = &v83;
    v83 = v23;
    sub_1C5419E14(2, &v85);
    sub_1C5419E14(1, v24);
    v81 = v66;
    v82 = v33;
    sub_1C5419E28(&v81, v24, v25, v26);
    v27 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v81 = v67;
      v82 = v34;
      sub_1C5419E28(&v81, &v85, &v84, &v83);
      v20[1] = 0;
      v81 = v68;
      v82 = v36;
      sub_1C5419E28(&v81, &v85, &v84, &v83);
      _os_log_impl(&dword_1C5355000, v39, v40, "%@: Failed to create buttons.", v21, 0xCu);
      sub_1C5419E74(v22);
      sub_1C5419E74(v23);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v19 = MEMORY[0x1E69E5920](v39);
  (*(v71 + 8))(v74, v70, v19);
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C553A3F4(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x80))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignOutRemainedInformationActionInvokingOBWelcomeController.viewDidLoad()()
{
  v7 = v0;
  (MEMORY[0x1E69E5928])();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = (MEMORY[0x1E69E5920])();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB8))(v1);
  type metadata accessor for SignOutRemainInformationModel();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
  }

  if (v4)
  {
    v2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB0))();
    MEMORY[0x1E69E5920](v4);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_1C553A6A4(v3);
    MEMORY[0x1E69E5920](v3);
  }
}

double sub_1C553A6A4(void *a1)
{
  [v1 addChildViewController_];
  v60 = [a1 view];
  *&v2 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v60)
  {
    v58 = v60;
  }

  else
  {
    LOBYTE(v10) = 2;
    v16 = 44;
    LODWORD(v22) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v58 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v58);
  v56 = [v1 contentView];
  MEMORY[0x1E69E5920](v1);
  v57 = [a1 view];
  *&v3 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v57)
  {
    v55 = v57;
  }

  else
  {
    LOBYTE(v11) = 2;
    v17 = 45;
    LODWORD(v23) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v56 addSubview_];
  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v56);
  v52 = objc_opt_self();
  sub_1C545C768();
  sub_1C5596E04();
  v53 = v4;
  v54 = [a1 view];
  *&v5 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v54)
  {
    v51 = v54;
  }

  else
  {
    LOBYTE(v12) = 2;
    v18 = 47;
    LODWORD(v24) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v48 = [v51 0x1FBB23FD2];
  MEMORY[0x1E69E5920](v51);
  v46 = [v1 contentView];
  v47 = [v46 0x1FBB23FD2];
  v49 = [v48 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v47);
  MEMORY[0x1E69E5920](v48);
  *v53 = v49;
  v50 = [a1 view];
  *&v6 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v50)
  {
    v45 = v50;
  }

  else
  {
    LOBYTE(v13) = 2;
    v19 = 48;
    LODWORD(v25) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v42 = [v45 0x1FBBB4950];
  MEMORY[0x1E69E5920](v45);
  v40 = [v1 contentView];
  v41 = [v40 0x1FBBB4950];
  MEMORY[0x1E69E5920](v40);
  v43 = [v42 constraintEqualToAnchor:v41 constant:-1.0];
  MEMORY[0x1E69E5920](v41);
  MEMORY[0x1E69E5920](v42);
  v53[1] = v43;
  v44 = [a1 view];
  *&v7 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v44)
  {
    v39 = v44;
  }

  else
  {
    LOBYTE(v14) = 2;
    v20 = 49;
    LODWORD(v26) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v36 = [v39 0x1FBB20D25];
  MEMORY[0x1E69E5920](v39);
  v34 = [v1 contentView];
  v35 = [v34 0x1FBB20D25];
  v37 = [v36 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5920](v36);
  v53[2] = v37;
  v38 = [a1 view];
  *&v8 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v38)
  {
    v33 = v38;
  }

  else
  {
    LOBYTE(v15) = 2;
    v21 = 50;
    LODWORD(v27) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v30 = [v33 0x1FBBC2576];
  MEMORY[0x1E69E5920](v33);
  v28 = [v1 headerView];
  v29 = [v28 0x1FBBC2576];
  v31 = [v30 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v30);
  v53[3] = v31;
  sub_1C540FCD8();
  v32 = sub_1C5596704();

  [v52 activateConstraints_];
  MEMORY[0x1E69E5920](v32);
  [v1 didMoveToParentViewController_];
  *&result = MEMORY[0x1E69E5920](v1).n128_u64[0];
  return result;
}

double sub_1C553B084(uint64_t a1, void *a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = [a2 primaryButton];
  if (v5[0])
  {
    v3 = v5[0];
    MEMORY[0x1E69E5928](v5[0]);
    sub_1C5401EF8(v5);
    [v3 showsBusyIndicator];
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    sub_1C5401EF8(v5);
    MEMORY[0x1E69E5920](a2);
  }

  return sub_1C553B178();
}

double sub_1C553B178()
{
  v65 = sub_1C545AE98;
  v66 = sub_1C545C6DC;
  v67 = sub_1C545C6D4;
  v68 = sub_1C545C6D4;
  v69 = sub_1C545C6E8;
  v91 = 0;
  v70 = 0;
  v79 = 0;
  v71 = sub_1C5594C74();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v26 - v74;
  v91 = v0;
  v76 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xA0))();
  v77 = [v76 dataclassesWithNonUploadedData];
  MEMORY[0x1E69E5920](v76);
  if (v77)
  {
    v63 = v77;
    v60 = v77;
    v61 = sub_1C5596714();
    MEMORY[0x1E69E5920](v60);
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  v59 = v62;
  if (v62)
  {
    v58 = v59;
    v56 = v59;
    v79 = v59;
    v78 = v59;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E820);
    sub_1C553F644();
    v1 = sub_1C55968F4();
    if ((v1 & 1) == 0)
    {
      sub_1C553C310(v56);

      return result;
    }
  }

  v3 = v75;
  v4 = sub_1C54B0910();
  (*(v72 + 16))(v3, v4, v71);
  MEMORY[0x1E69E5928](v64);
  v45 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = v64;
  v54 = sub_1C5594C54();
  v55 = sub_1C5596974();
  v43 = 17;
  v48 = swift_allocObject();
  *(v48 + 16) = 64;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v44 = 32;
  v5 = swift_allocObject();
  v6 = v46;
  v47 = v5;
  *(v5 + 16) = v65;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v47;
  v51 = v7;
  *(v7 + 16) = v66;
  *(v7 + 24) = v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v50 = sub_1C5596E04();
  v52 = v9;

  v10 = v48;
  v11 = v52;
  *v52 = v67;
  v11[1] = v10;

  v12 = v49;
  v13 = v52;
  v52[2] = v68;
  v13[3] = v12;

  v14 = v51;
  v15 = v52;
  v52[4] = v69;
  v15[5] = v14;
  sub_1C540FCD8();

  if (os_log_type_enabled(v54, v55))
  {
    v16 = v70;
    v36 = sub_1C5596A74();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v37 = sub_1C5419DC0(1);
    v38 = sub_1C5419DC0(0);
    v39 = &v84;
    v84 = v36;
    v40 = &v83;
    v83 = v37;
    v41 = &v82;
    v82 = v38;
    sub_1C5419E14(2, &v84);
    sub_1C5419E14(1, v39);
    v80 = v67;
    v81 = v48;
    sub_1C5419E28(&v80, v39, v40, v41);
    v42 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v80 = v68;
      v81 = v49;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v34 = 0;
      v80 = v69;
      v81 = v51;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_1C5355000, v54, v55, "%@: No dataclass with unsynced data. Not showing unsynced data alert. Advancing to removed data sheet step.", v36, 0xCu);
      sub_1C5419E74(v37);
      sub_1C5419E74(v38);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v17 = v64;
  v18 = MEMORY[0x1E69E5920](v54);
  v19 = (*(v72 + 8))(v75, v71, v18);
  v20 = *v17;
  v28 = MEMORY[0x1E69E7D40];
  v21 = *((v20 & *MEMORY[0x1E69E7D40]) + 0x70);
  v33 = &v88;
  v21(v19);
  v22 = v64;
  v30 = v89;
  v31 = v90;
  v29 = __swift_project_boxed_opaque_existential_0(v33, v89);
  v23 = (*((*v22 & *v28) + 0x88))();
  v32 = v86;
  v86[0] = 0;
  v86[1] = v23;
  v87 = 0;
  (*(v31 + 32))();
  sub_1C545CDC0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  *&v24 = MEMORY[0x1E69E5928](v64).n128_u64[0];
  v85 = [v64 primaryButton];
  if (v85)
  {
    v26 = &v85;
    v27 = v85;
    MEMORY[0x1E69E5928](v85);
    sub_1C5401EF8(v26);
    *&v25 = MEMORY[0x1E69E5920](v64).n128_u64[0];
    [v27 hidesBusyIndicator];
    *&result = MEMORY[0x1E69E5920](v27).n128_u64[0];
  }

  else
  {
    sub_1C5401EF8(&v85);
    *&result = MEMORY[0x1E69E5920](v64).n128_u64[0];
  }

  return result;
}

uint64_t sub_1C553BBA8(uint64_t a1, uint64_t *a2)
{
  v42 = a1;
  v48 = a2;
  v50 = sub_1C545AE98;
  v54 = sub_1C545C6DC;
  v56 = sub_1C545C6D4;
  v58 = sub_1C545C6D4;
  v61 = sub_1C545C6E8;
  v78 = 0;
  v77 = 0;
  v41 = 0;
  v47 = sub_1C5594C74();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v43 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v25 - v43;
  v44 = &v25 - v43;
  v78 = MEMORY[0x1EEE9AC00](v42);
  v77 = v3;
  v4 = sub_1C54B0910();
  (*(v45 + 16))(v2, v4, v47);
  MEMORY[0x1E69E5928](v48);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = sub_1C5594C54();
  v66 = sub_1C5596974();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v5 = swift_allocObject();
  v6 = v53;
  v55 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v55;
  v62 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v60 = sub_1C5596E04();
  v63 = v9;

  v10 = v57;
  v11 = v63;
  *v63 = v56;
  v11[1] = v10;

  v12 = v59;
  v13 = v63;
  v63[2] = v58;
  v13[3] = v12;

  v14 = v62;
  v15 = v63;
  v63[4] = v61;
  v15[5] = v14;
  sub_1C540FCD8();

  if (os_log_type_enabled(v65, v66))
  {
    v16 = v41;
    v34 = sub_1C5596A74();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v35 = sub_1C5419DC0(1);
    v36 = sub_1C5419DC0(0);
    v37 = &v71;
    v71 = v34;
    v38 = &v70;
    v70 = v35;
    v39 = &v69;
    v69 = v36;
    sub_1C5419E14(2, &v71);
    sub_1C5419E14(1, v37);
    v67 = v56;
    v68 = v57;
    sub_1C5419E28(&v67, v37, v38, v39);
    v40 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      v32 = 0;
      v67 = v61;
      v68 = v62;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_1C5355000, v65, v66, "%@: Declining action.", v34, 0xCu);
      sub_1C5419E74(v35);
      sub_1C5419E74(v36);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v17 = v48;
  v18 = MEMORY[0x1E69E5920](v65);
  v19 = (*(v45 + 8))(v44, v47, v18);
  v20 = *v17;
  v26 = MEMORY[0x1E69E7D40];
  v21 = *((v20 & *MEMORY[0x1E69E7D40]) + 0x70);
  v31 = &v74;
  v21(v19);
  v22 = v48;
  v28 = v75;
  v29 = v76;
  v27 = __swift_project_boxed_opaque_existential_0(v31, v75);
  v23 = (*((*v22 & *v26) + 0x88))();
  v30 = v72;
  v72[0] = 0;
  v72[1] = v23;
  v73 = 1;
  (*(v29 + 32))();
  sub_1C545CDC0(v30);
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

double sub_1C553C310(uint64_t a1)
{
  v29 = a1;
  v24 = sub_1C553F6CC;
  v26 = sub_1C553F6D4;
  v17 = "Fatal error";
  v18 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v19 = "AppleAccountUI/SignOutRemainedInformationActionInvokingOBWelcomeController.swift";
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  v20 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v11 - v20;
  v21 = (*(*(type metadata accessor for SignOutUnsyncedDataAlert() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v29);
  v30 = (&v11 - v21);
  v36 = v3;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E838);
  sub_1C5594CF4();
  MEMORY[0x1E69E5928](v32);
  v22 = 24;
  v23 = 7;
  v4 = swift_allocObject();
  v5 = v32;
  v25 = v4;
  *(v4 + 16) = v32;
  MEMORY[0x1E69E5928](v5);
  v27 = swift_allocObject();
  *(v27 + 16) = v32;
  sub_1C5544E40();
  _swift_stdlib_has_malloc_size();
  sub_1C5548FE4(v29, v24, v25, v26, v27, v28, v30);
  v31 = sub_1C5595484();
  v34 = v31;
  [v32 addChildViewController_];
  *&v6 = MEMORY[0x1E69E5928](v32).n128_u64[0];
  v33 = [v32 view];
  MEMORY[0x1E69E5920](v32);
  if (v33)
  {
    v16 = v33;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v14 = v16;
  *&v7 = MEMORY[0x1E69E5928](v31).n128_u64[0];
  v15 = [v31 view];
  *&v8 = MEMORY[0x1E69E5920](v31).n128_u64[0];
  if (v15)
  {
    v13 = v15;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v12 = v13;
  [v14 addSubview_];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v14);
  *&v9 = MEMORY[0x1E69E5928](v32).n128_u64[0];
  [v31 didMoveToParentViewController_];
  MEMORY[0x1E69E5920](v32);
  *&result = MEMORY[0x1E69E5920](v31).n128_u64[0];
  return result;
}

uint64_t sub_1C553C728(uint64_t a1)
{
  v48 = a1;
  v50 = sub_1C545AE98;
  v54 = sub_1C545C6DC;
  v56 = sub_1C545C6D4;
  v58 = sub_1C545C6D4;
  v61 = sub_1C545C6E8;
  v38 = MEMORY[0x1E69E85E0];
  v39 = &unk_1C55B6AE0;
  v72 = 0;
  v40 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v41 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v26 - v41;
  v47 = sub_1C5594C74();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v43 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v48);
  v3 = &v26 - v43;
  v44 = &v26 - v43;
  v72 = v2;
  v4 = sub_1C54B0910();
  (*(v45 + 16))(v3, v4, v47);
  MEMORY[0x1E69E5928](v48);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = sub_1C5594C54();
  v66 = sub_1C5596974();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v5 = swift_allocObject();
  v6 = v53;
  v55 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v55;
  v62 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v60 = sub_1C5596E04();
  v63 = v9;

  v10 = v57;
  v11 = v63;
  *v63 = v56;
  v11[1] = v10;

  v12 = v59;
  v13 = v63;
  v63[2] = v58;
  v13[3] = v12;

  v14 = v62;
  v15 = v63;
  v63[4] = v61;
  v15[5] = v14;
  sub_1C540FCD8();

  if (os_log_type_enabled(v65, v66))
  {
    v16 = v40;
    v31 = sub_1C5596A74();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v32 = sub_1C5419DC0(1);
    v33 = sub_1C5419DC0(0);
    v34 = &v71;
    v71 = v31;
    v35 = &v70;
    v70 = v32;
    v36 = &v69;
    v69 = v33;
    sub_1C5419E14(2, &v71);
    sub_1C5419E14(1, v34);
    v67 = v56;
    v68 = v57;
    sub_1C5419E28(&v67, v34, v35, v36);
    v37 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      v29 = 0;
      v67 = v61;
      v68 = v62;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_1C5355000, v65, v66, "%@: User confirmed removing unsynced data. Advancing to removed data sheet step.", v31, 0xCu);
      sub_1C5419E74(v32);
      sub_1C5419E74(v33);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x1E69E5920](v65);
  (*(v45 + 8))(v44, v47, v17);
  v27 = 0;
  v18 = sub_1C5596814();
  (*(*(v18 - 8) + 56))(v42, 1);
  MEMORY[0x1E69E5928](v48);
  sub_1C55967E4();
  v28 = sub_1C55967D4();
  v19 = swift_allocObject();
  v20 = v38;
  v21 = v48;
  v22 = v27;
  v23 = v42;
  v24 = v39;
  v19[2] = v28;
  v19[3] = v20;
  v19[4] = v21;
  sub_1C54061EC(v22, v22, v23, v24, v19, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C553CE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  v4[4] = sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v5 = swift_task_alloc();
  *(v7 + 48) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1C553CF48;

  return sub_1C553D0A0();
}

uint64_t sub_1C553CF48()
{
  *(*v0 + 16) = *v0;

  v3 = sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C545F50C, v3, v1);
}

uint64_t sub_1C553D0A0()
{
  v1[37] = v0;
  v1[34] = v1;
  v1[35] = 0;
  v1[36] = 0;
  v1[32] = 0;
  v1[33] = 0;
  v2 = sub_1C5596284();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v3 = sub_1C55962A4();
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v1[35] = v0;
  sub_1C55967E4();
  v1[44] = sub_1C55967D4();
  v6 = sub_1C55967A4();
  v1[45] = v6;
  v1[46] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C553D24C, v6, v4);
}

uint64_t sub_1C553D24C()
{
  *(v0 + 272) = v0;
  sub_1C553F6DC();
  v3 = sub_1C5404B48();
  *(v0 + 376) = v3;
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1C553D38C;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E848);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_1C553DBB4;
  *(v0 + 104) = &block_descriptor_19;
  [v3 tnlDisclaimerLabelWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C553D38C()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 272) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 384) = v1;
  if (v1)
  {
    v2 = *(v6 + 352);
    v3 = *(v6 + 344);
    v4 = sub_1C553D7E8;
  }

  else
  {
    v2 = *(v6 + 352);
    v3 = *(v6 + 344);
    v4 = sub_1C553D504;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C553D504()
{
  v1 = *(v0 + 376);
  v11 = *(v0 + 344);
  v10 = *(v0 + 336);
  v12 = *(v0 + 328);
  v8 = *(v0 + 320);
  v7 = *(v0 + 312);
  v9 = *(v0 + 304);
  v5 = *(v0 + 296);
  *(v0 + 272) = v0;
  v6 = *(v0 + 240);
  v16 = *(v0 + 248);
  *(v0 + 256) = v6;
  *(v0 + 264) = v16;
  MEMORY[0x1E69E5920](v1);
  sub_1C5444CF8();
  v15 = sub_1C5596984();
  v14 = swift_allocObject();
  MEMORY[0x1E69E5928](v5);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v5);

  sub_1C5594CF4();
  v2 = swift_allocObject();
  v2[2] = v14;
  v2[3] = v6;
  v2[4] = v16;
  *(v0 + 224) = sub_1C553F7F0;
  *(v0 + 232) = v2;
  *(v0 + 192) = MEMORY[0x1E69E9820];
  *(v0 + 200) = 1107296256;
  *(v0 + 204) = 0;
  *(v0 + 208) = sub_1C544364C;
  *(v0 + 216) = &block_descriptor_60;
  v13 = _Block_copy((v0 + 192));
  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](0, v11, v8, v13);
  (*(v7 + 8))(v8, v9);
  (*(v10 + 8))(v11, v12);
  _Block_release(v13);

  MEMORY[0x1E69E5920](v15);

  v3 = *(*(v0 + 272) + 8);

  return v3();
}

uint64_t sub_1C553D7E8()
{
  v17 = *(v0 + 384);
  v6 = *(v0 + 376);
  v12 = *(v0 + 344);
  v11 = *(v0 + 336);
  v13 = *(v0 + 328);
  v9 = *(v0 + 320);
  v8 = *(v0 + 312);
  v10 = *(v0 + 304);
  v7 = *(v0 + 296);
  *(v0 + 272) = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v6);
  v1 = v17;
  *(v0 + 288) = v17;
  sub_1C5444CF8();
  v16 = sub_1C5596984();
  v15 = swift_allocObject();
  MEMORY[0x1E69E5928](v7);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v7);

  v2 = v17;
  v3 = swift_allocObject();
  *(v3 + 16) = v15;
  *(v3 + 24) = v17;
  *(v0 + 176) = sub_1C553F780;
  *(v0 + 184) = v3;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 156) = 0;
  *(v0 + 160) = sub_1C544364C;
  *(v0 + 168) = &block_descriptor_53;
  v14 = _Block_copy((v0 + 144));
  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](0, v12, v9, v14);
  (*(v8 + 8))(v9, v10);
  (*(v11 + 8))(v12, v13);
  _Block_release(v14);

  MEMORY[0x1E69E5920](v16);

  v4 = *(*(v0 + 272) + 8);

  return v4();
}

double sub_1C553DAE0(void *a1)
{
  v4[1] = a1;
  v4[0] = [a1 primaryButton];
  if (v4[0])
  {
    v2 = v4[0];
    MEMORY[0x1E69E5928](v4[0]);
    sub_1C5401EF8(v4);
    [v2 hidesBusyIndicator];
    *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  }

  else
  {
    sub_1C5401EF8(v4);
    *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  }

  return result;
}

double sub_1C553DBB4(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1C542501C(v9, a3, MEMORY[0x1E69E6158]);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    v10[0] = sub_1C5596574();
    v10[1] = v3;
    sub_1C5425080(v9, v10, MEMORY[0x1E69E6158]);
    MEMORY[0x1E69E5920](a2);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C553DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v67 = a2;
  v66 = a1;
  v65 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v63 = 0;
  v82 = 0;
  v68 = sub_1C5594C74();
  v69 = *(v68 - 8);
  v70 = v69;
  v3 = MEMORY[0x1EEE9AC00](v66);
  v71 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v3 + 16;
  v90 = v3 + 16;
  v88 = v5;
  v89 = v6;
  v73 = &v87;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v74 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v62 = v74;
    v56 = v74;
    v82 = v74;
    v9 = v74;
    v10 = [v56 primaryButton];
    v81 = v10;
    if (v10)
    {
      v55 = v81;
      v11 = v81;
      sub_1C5401EF8(&v81);

      [v55 hidesBusyIndicator];
    }

    else
    {
      sub_1C5401EF8(&v81);
    }

    v12 = *v56;
    v47 = MEMORY[0x1E69E7D40];
    v13 = *((v12 & *MEMORY[0x1E69E7D40]) + 0x70);
    v53 = &v78;
    v13();
    v14 = v56;
    v50 = v79;
    v51 = v80;
    v48 = __swift_project_boxed_opaque_existential_0(v53, v79);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7F8);
    v42 = 1;
    v43 = sub_1C5596E04();
    v44 = v15;
    v16 = sub_1C55965F4();
    v17 = v44;
    *v44 = v16;
    v17[1] = v18;
    sub_1C5594CF4();
    v19 = v67;
    v20 = v44;
    v21 = v64;
    v46 = MEMORY[0x1E69E6158];
    v44[5] = MEMORY[0x1E69E6158];
    v20[2] = v19;
    v20[3] = v21;
    sub_1C540FCD8();
    v49 = sub_1C5596454();
    v22 = (*((*v14 & *v47) + 0x88))();
    v76[0] = v49;
    v76[1] = v22;
    v77 = 0;
    v23 = *(v51 + 32);
    v52 = v76;
    v23();
    sub_1C545CDC0(v52);
    __swift_destroy_boxed_opaque_existential_0(v53);

    return v63;
  }

  else
  {
    v7 = v71;
    v8 = sub_1C54B0910();
    (*(v70 + 16))(v7, v8, v68);
    v60 = sub_1C5594C54();
    v57 = v60;
    v59 = sub_1C5596944();
    v58 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v61 = sub_1C5596E04();
    if (os_log_type_enabled(v60, v59))
    {
      v24 = v63;
      v33 = sub_1C5596A74();
      v29 = v33;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v31 = 0;
      v34 = sub_1C5419DC0(0);
      v32 = v34;
      v35 = sub_1C5419DC0(v31);
      v86 = v33;
      v85 = v34;
      v84 = v35;
      v36 = 0;
      v37 = &v86;
      sub_1C5419E14(0, &v86);
      sub_1C5419E14(v36, v37);
      v83 = v61;
      v38 = v27;
      MEMORY[0x1EEE9AC00](v27);
      v39 = &v27[-6];
      v27[-4] = v25;
      v27[-3] = &v85;
      v27[-2] = &v84;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v41 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v57, v58, "Self is nil, skip fetching tnl disclaimer label.", v29, 2u);
        v27[1] = 0;
        sub_1C5419E74(v32);
        sub_1C5419E74(v35);
        sub_1C5596A54();

        v28 = v41;
      }
    }

    else
    {

      v28 = v63;
    }

    v27[0] = v28;

    (*(v70 + 8))(v71, v68);
    return v27[0];
  }
}

uint64_t sub_1C553E48C(uint64_t a1, void *a2)
{
  v139 = a2;
  v138 = a1;
  v137 = 0;
  v169 = 0;
  v168 = 0;
  v136 = 0;
  v162 = 0;
  v140 = sub_1C5594C74();
  v141 = *(v140 - 8);
  v142 = v141;
  v143 = *(v141 + 64);
  v2 = MEMORY[0x1EEE9AC00](v138);
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = &v51 - v145;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v146 = &v51 - v145;
  v147 = v3 + 16;
  v169 = v3 + 16;
  v168 = v4;
  v148 = &v167;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v149 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v135 = v149;
    v129 = v149;
    v162 = v149;
    v7 = v149;
    v8 = [v129 primaryButton];
    v161 = v8;
    if (v8)
    {
      v128 = v161;
      v9 = v161;
      sub_1C5401EF8(&v161);

      [v128 hidesBusyIndicator];
    }

    else
    {
      sub_1C5401EF8(&v161);
    }

    v10 = v144;
    v11 = sub_1C54B0910();
    (*(v142 + 16))(v10, v11, v140);
    v12 = v129;
    v98 = 24;
    v113 = 7;
    v13 = swift_allocObject();
    v14 = v139;
    v103 = v13;
    *(v13 + 16) = v129;
    v15 = v14;
    v111 = swift_allocObject();
    *(v111 + 16) = v139;
    sub_1C54398B0();

    v127 = sub_1C5594C54();
    v99 = v127;
    v126 = sub_1C5596954();
    v100 = v126;
    v107 = 17;
    v117 = swift_allocObject();
    v101 = v117;
    v106 = 64;
    *(v117 + 16) = 64;
    v118 = swift_allocObject();
    v102 = v118;
    v109 = 8;
    *(v118 + 16) = 8;
    v112 = 32;
    v16 = swift_allocObject();
    v17 = v103;
    v104 = v16;
    *(v16 + 16) = sub_1C545AE98;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v104;
    v119 = v18;
    v105 = v18;
    *(v18 + 16) = sub_1C545C6DC;
    *(v18 + 24) = v19;
    v120 = swift_allocObject();
    v108 = v120;
    *(v120 + 16) = v106;
    v121 = swift_allocObject();
    v110 = v121;
    *(v121 + 16) = v109;
    v20 = swift_allocObject();
    v21 = v111;
    v114 = v20;
    *(v20 + 16) = sub_1C5467F9C;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v114;
    v115 = v22;
    *(v22 + 16) = sub_1C5467FA4;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v115;
    v124 = v24;
    v116 = v24;
    *(v24 + 16) = sub_1C545C6DC;
    *(v24 + 24) = v25;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v122 = sub_1C5596E04();
    v123 = v26;

    v27 = v117;
    v28 = v123;
    *v123 = sub_1C545C6D4;
    v28[1] = v27;

    v29 = v118;
    v30 = v123;
    v123[2] = sub_1C545C6D4;
    v30[3] = v29;

    v31 = v119;
    v32 = v123;
    v123[4] = sub_1C545C6E8;
    v32[5] = v31;

    v33 = v120;
    v34 = v123;
    v123[6] = sub_1C545C6D4;
    v34[7] = v33;

    v35 = v121;
    v36 = v123;
    v123[8] = sub_1C545C6D4;
    v36[9] = v35;

    v37 = v123;
    v38 = v124;
    v123[10] = sub_1C545C6E8;
    v37[11] = v38;
    sub_1C540FCD8();

    if (os_log_type_enabled(v127, v126))
    {
      v39 = v136;
      v91 = sub_1C5596A74();
      v88 = v91;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v94 = 2;
      v92 = sub_1C5419DC0(2);
      v90 = v92;
      v93 = sub_1C5419DC0(0);
      v155 = v91;
      v154 = v92;
      v153 = v93;
      v95 = &v155;
      sub_1C5419E14(v94, &v155);
      sub_1C5419E14(v94, v95);
      v151 = sub_1C545C6D4;
      v152 = v101;
      sub_1C5419E28(&v151, v95, &v154, &v153);
      v96 = v39;
      v97 = v39;
      if (v39)
      {
        v86 = 0;

        __break(1u);
      }

      else
      {
        v151 = sub_1C545C6D4;
        v152 = v102;
        sub_1C5419E28(&v151, &v155, &v154, &v153);
        v84 = 0;
        v85 = 0;
        v151 = sub_1C545C6E8;
        v152 = v105;
        sub_1C5419E28(&v151, &v155, &v154, &v153);
        v82 = 0;
        v83 = 0;
        v151 = sub_1C545C6D4;
        v152 = v108;
        sub_1C5419E28(&v151, &v155, &v154, &v153);
        v80 = 0;
        v81 = 0;
        v151 = sub_1C545C6D4;
        v152 = v110;
        sub_1C5419E28(&v151, &v155, &v154, &v153);
        v78 = 0;
        v79 = 0;
        v151 = sub_1C545C6E8;
        v152 = v116;
        sub_1C5419E28(&v151, &v155, &v154, &v153);
        v76 = 0;
        v77 = 0;
        _os_log_impl(&dword_1C5355000, v99, v100, "%@: Failed to fetch theft and loss disclaimer label. Error: %@", v88, 0x16u);
        sub_1C5419E74(v90);
        sub_1C5419E74(v93);
        sub_1C5596A54();

        v87 = v76;
      }
    }

    else
    {
      v40 = v136;

      v87 = v40;
    }

    v41 = v129;
    v74 = v87;

    v42 = (*(v142 + 8))(v144, v140);
    v43 = *v41;
    v68 = MEMORY[0x1E69E7D40];
    v44 = *((v43 & *MEMORY[0x1E69E7D40]) + 0x70);
    v73 = &v158;
    v44(v42);
    v45 = v129;
    v70 = v159;
    v71 = v160;
    v69 = __swift_project_boxed_opaque_existential_0(v73, v159);
    v46 = (*((*v45 & *v68) + 0x88))();
    v156[0] = 0;
    v156[1] = v46;
    v157 = 0;
    v47 = *(v71 + 32);
    v72 = v156;
    v47();
    sub_1C545CDC0(v72);
    __swift_destroy_boxed_opaque_existential_0(v73);

    return v74;
  }

  else
  {
    v5 = v146;
    v6 = sub_1C54B0910();
    (*(v142 + 16))(v5, v6, v140);
    v133 = sub_1C5594C54();
    v130 = v133;
    v132 = sub_1C5596944();
    v131 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v134 = sub_1C5596E04();
    if (os_log_type_enabled(v133, v132))
    {
      v48 = v136;
      v59 = sub_1C5596A74();
      v55 = v59;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v57 = 0;
      v60 = sub_1C5419DC0(0);
      v58 = v60;
      v61 = sub_1C5419DC0(v57);
      v166 = v59;
      v165 = v60;
      v164 = v61;
      v62 = 0;
      v63 = &v166;
      sub_1C5419E14(0, &v166);
      sub_1C5419E14(v62, v63);
      v163 = v134;
      v64 = &v51;
      MEMORY[0x1EEE9AC00](&v51);
      v65 = &v51 - 6;
      *(&v51 - 4) = v49;
      *(&v51 - 3) = &v165;
      *(&v51 - 2) = &v164;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v67 = v48;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v130, v131, "Self is nil, skip fetching tnl disclaimer label.", v55, 2u);
        v53 = 0;
        sub_1C5419E74(v58);
        sub_1C5419E74(v61);
        sub_1C5596A54();

        v54 = v67;
      }
    }

    else
    {

      v54 = v136;
    }

    v52 = v54;

    (*(v142 + 8))(v146, v140);
    return v52;
  }
}

unint64_t sub_1C553F644()
{
  v2 = qword_1EC15E828;
  if (!qword_1EC15E828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E820);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C553F6DC()
{
  v2 = qword_1EC15E840;
  if (!qword_1EC15E840)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E840);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1C553FC48(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C553CE70(a1, v6, v7, v8);
}

uint64_t sub_1C553FD8C()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C553FE64(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C553FF68()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C553FFF4(uint64_t a1, uint64_t a2, char a3)
{

  v5 = v3 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;

  swift_endAccess();
}

uint64_t sub_1C5540128(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v1 = (v3 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
    swift_beginAccess();
    v2 = *v1;
    result = swift_endAccess();
    if (v2)
    {
      return sub_1C55401D4();
    }
  }

  return result;
}

uint64_t sub_1C55401D4()
{
  v41 = 0;
  v57 = 0;
  v40 = 0;
  v51 = 0;
  v50 = 0;
  v42 = sub_1C5594C74();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v0;
  v46 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  v48 = &v56;
  swift_beginAccess();
  v49 = *v46;
  v47 = v49;
  v2 = v49;
  swift_endAccess();
  if (v49)
  {
    v38 = v47;
    v36 = v47;
    v51 = v47;
    v3 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
    v37 = v3;
    if (v3)
    {
      v35 = v37;
      v33 = v37;
      v50 = v37;
      v32 = *(v39 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController);
      v4 = v32;
      [v32 presentSettingsForMode:0 fromViewController:v33];

      return v40;
    }
  }

  v5 = v45;
  v6 = sub_1C54B05F8();
  (*(v44 + 16))(v5, v6, v42);
  v30 = sub_1C5594C54();
  v27 = v30;
  v29 = sub_1C5596954();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v31 = sub_1C5596E04();
  if (os_log_type_enabled(v30, v29))
  {
    v7 = v40;
    v18 = sub_1C5596A74();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v16 = 0;
    v19 = sub_1C5419DC0(0);
    v17 = v19;
    v20 = sub_1C5419DC0(v16);
    v55 = v18;
    v54 = v19;
    v53 = v20;
    v21 = 0;
    v22 = &v55;
    sub_1C5419E14(0, &v55);
    sub_1C5419E14(v21, v22);
    v52 = v31;
    v23 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v24 = &v10 - 6;
    *(&v10 - 4) = v8;
    *(&v10 - 3) = &v54;
    *(&v10 - 2) = &v53;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v26 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v27, v28, "No view controller to present SNaP editor.", v14, 2u);
      v12 = 0;
      sub_1C5419E74(v17);
      sub_1C5419E74(v20);
      sub_1C5596A54();

      v13 = v26;
    }
  }

  else
  {

    v13 = v40;
  }

  v11 = v13;

  (*(v44 + 8))(v45, v42);
  return v11;
}

uint64_t sub_1C5540738()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C55407A0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  *v4 = a1;
  swift_endAccess();
  return sub_1C5540128(v6 & 1);
}

void (*sub_1C5540864(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[3] = v1;
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  v5 = *v3;
  swift_endAccess();
  *(v4 + 32) = v5;
  return sub_1C5540918;
}

void sub_1C5540918(uint64_t a1)
{
  v1 = *a1;
  sub_1C55407A0(*(*a1 + 32) & 1);
  free(v1);
}

id sub_1C5540984()
{
  sub_1C55421B8();
  sub_1C554221C();
  v0 = sub_1C5404B48();
  return sub_1C55409D4(v0);
}

uint64_t sub_1C5540A14()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1C5540AAC(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = v3;
  *&v3[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view] = 0;
  v18[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor] = 0;
  v7 = OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController;
  sub_1C55421B8();
  sub_1C554221C();
  v4 = sub_1C5404B48();
  *&v18[v7] = sub_1C55409D4(v4);

  v5 = &v18[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented];
  *v5 = a1;
  *(v5 + 1) = a2;
  v5[16] = a3;
  v14.receiver = v18;
  v14.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x1E69E5928](v13);
  v18 = v13;
  v10 = *&v13[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController];
  MEMORY[0x1E69E5928](v10);
  [v10 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v10);

  MEMORY[0x1E69E5920](v18);
  return v13;
}

uint64_t sub_1C5540C88()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v1 = *v3;
  *v3 = 0;
  MEMORY[0x1E69E5920](v1);
  return swift_endAccess();
}

uint64_t sub_1C5540D74(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  return swift_endAccess();
}

void sub_1C5540E74(uint64_t a1)
{
  v44 = a1;
  v54 = 0;
  v69 = 0;
  v68 = 0;
  v42 = 0;
  v51 = sub_1C5594C74();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  v48 = *(v46 + 64);
  v1 = &v8 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v1;
  v69 = MEMORY[0x1EEE9AC00](v44);
  v68 = v2;
  v3 = sub_1C54B05F8();
  (*(v50 + 16))(v1, v3, v51);
  v56 = sub_1C5594C54();
  v52 = v56;
  v55 = sub_1C5596944();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v57 = sub_1C5596E04();
  if (os_log_type_enabled(v56, v55))
  {
    v4 = v42;
    v33 = sub_1C5596A74();
    v29 = v33;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v31 = 0;
    v34 = sub_1C5419DC0(0);
    v32 = v34;
    v35 = sub_1C5419DC0(v31);
    v61 = v33;
    v60 = v34;
    v59 = v35;
    v36 = 0;
    v37 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v36, v37);
    v58 = v57;
    v38 = &v8;
    MEMORY[0x1EEE9AC00](&v8);
    v39 = &v8 - 6;
    *(&v8 - 4) = v5;
    *(&v8 - 3) = &v60;
    *(&v8 - 2) = &v59;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v41 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v52, v53, "SNaP editor dismissed.", v29, 2u);
      v27 = 0;
      sub_1C5419E74(v32);
      sub_1C5419E74(v35);
      sub_1C5596A54();

      v28 = v41;
    }
  }

  else
  {

    v28 = v42;
  }

  (*(v47 + 8))(v49, v45);
  v17 = (v43 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented);
  v18 = &v67;
  v26 = 0;
  swift_beginAccess();
  v21 = *v17;
  v22 = v17[1];
  v19 = *(v17 + 16);

  swift_endAccess();

  v65[0] = v21;
  v65[1] = v22;
  v66 = v19;
  v23 = 0;
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  v20 = v65;
  sub_1C55960A4();
  sub_1C5436F54();

  sub_1C55407A0(v23);
  v24 = [objc_opt_self() defaultCenter];
  v25 = *sub_1C55415F0();
  v6 = v25;
  v62[0] = v26;
  v62[1] = v26;
  v62[2] = v26;
  v63 = v26;
  if (v26)
  {
    v11 = v63;
    v14 = v62;
    __swift_project_boxed_opaque_existential_0(v62, v63);
    v9 = *(v11 - 8);
    v10 = v9;
    v13 = &v8;
    MEMORY[0x1EEE9AC00](&v8);
    v12 = &v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))();
    v15 = sub_1C5596E14();
    (*(v10 + 8))(v12, v11);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v24 postNotificationName:v25 object:{v16, v9}];
  swift_unknownObjectRelease();
}

uint64_t *sub_1C55415F0()
{
  if (qword_1EC169340 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B4E0;
}

id sub_1C55417E8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C55418A0(uint64_t a1, uint64_t a2, char a3)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;

  v10 = a1;
  v11 = a2;
  v12 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  MEMORY[0x1C6946C30](&v9, v3);
  v8 = v9;

  return v8 & 1;
}

uint64_t sub_1C554194C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  sub_1C55960A4();
  sub_1C5436F54();
}

void (*sub_1C5541A34(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v4;
  v4[20] = a4 & 1;
  *(v4 + 10) = a3;
  *(v4 + 9) = a2;

  *v4 = a2;
  *(v4 + 1) = a3;
  v4[16] = a4;
  *(v4 + 11) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  MEMORY[0x1C6946C30]();
  return sub_1C5541B34;
}

void sub_1C5541B34(uint64_t *a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v2 = *(v10 + 20);
    v5 = *(v10 + 80);
    v4 = *(v10 + 72);
    v3 = *(v10 + 17);

    *(v10 + 24) = v4;
    *(v10 + 32) = v5;
    *(v10 + 40) = v2;
    *(v10 + 18) = v3;
  }

  else
  {
    v6 = *(v10 + 20);
    v9 = *(v10 + 80);
    v8 = *(v10 + 72);
    v7 = *(v10 + 17);

    *(v10 + 48) = v8;
    *(v10 + 56) = v9;
    *(v10 + 64) = v6;
    *(v10 + 19) = v7;
  }

  sub_1C55960A4();
  sub_1C5436F54();

  free(v10);
}

uint64_t sub_1C5541C88()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0);
  sub_1C55960C4();

  return v1;
}

uint64_t sub_1C5541D90(uint64_t a1, uint64_t a2, char a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

char *sub_1C5541E04()
{
  type metadata accessor for SNaPEditorInteraction();
  v0 = sub_1C5541C88();
  return sub_1C5540A5C(v0, v2, v1 & 1);
}

uint64_t sub_1C5541E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1C5541C88();
  v10 = v5;
  v11 = v6;
  v12 = a1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented;
  swift_beginAccess();
  *v12 = v9;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11 & 1;

  swift_endAccess();
  v7 = sub_1C55418A0(a2, a3, a4 & 1);
  return sub_1C55407A0(v7 & 1);
}

void *sub_1C5541FD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15 = a4;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v11 = v4;

  sub_1C5541F78();
  v9[0] = v5;
  v9[1] = v6;
  v10 = v7 & 1;
  sub_1C55422A8();
  sub_1C5595CA4();
  result = v9;
  sub_1C5436F54();
  return result;
}

uint64_t sub_1C55420A0()
{
  sub_1C55965F4();
  sub_1C5594CF4();
  v1 = sub_1C5596554();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  result = v1;
  qword_1EC16B4E0 = v1;
  return result;
}

uint64_t sub_1C5542130()
{
  v0 = sub_1C55415F0();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

id sub_1C5542168(uint64_t a1)
{
  v4 = [v1 initWithContactStore_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1C55421B8()
{
  v2 = qword_1EC15E890;
  if (!qword_1EC15E890)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E890);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C554221C()
{
  v2 = qword_1EC15E898;
  if (!qword_1EC15E898)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E898);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C55422A8()
{
  v2 = qword_1EC15E8A8;
  if (!qword_1EC15E8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E8A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5542324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C554243C(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C5542604()
{
  result = sub_1C55965F4();
  qword_1EC1693D8 = result;
  qword_1EC1693E0 = v1;
  return result;
}

uint64_t *sub_1C5542648()
{
  if (qword_1EC1693D0 != -1)
  {
    swift_once();
  }

  return &qword_1EC1693D8;
}

uint64_t sub_1C55426A8()
{
  v1 = *sub_1C5542648();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C55426E4()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC1693F0);
  __swift_project_value_buffer(v1, qword_1EC1693F0);
  sub_1C5542648();
  sub_1C5594CF4();
  sub_1C55965F4();
  return sub_1C5594C64();
}

uint64_t sub_1C5542778()
{
  if (qword_1EC1693E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC1693F0);
}

uint64_t static AAUILogger.AAUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5542778();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5542848()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC169410);
  __swift_project_value_buffer(v1, qword_1EC169410);
  sub_1C5542648();
  sub_1C5594CF4();
  sub_1C55965F4();
  return sub_1C5594C64();
}

uint64_t sub_1C55428DC()
{
  if (qword_1EC169408 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC169410);
}

uint64_t static AAUILogger.pps.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55428DC();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55429AC()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC169430);
  __swift_project_value_buffer(v1, qword_1EC169430);
  sub_1C5542648();
  sub_1C5594CF4();
  sub_1C55965F4();
  return sub_1C5594C64();
}

uint64_t sub_1C5542A40()
{
  if (qword_1EC169428 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC169430);
}

uint64_t static AAUILogger.extension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5542A40();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5542B4C(uint64_t a1)
{
  sub_1C5594CF4();
  *v1 = a1;
}

uint64_t sub_1C5542B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v12 = a1;
  v8 = sub_1C5542F98;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E980);
  v6 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v17 = &v6 - v7;
  v21 = &v6 - v7;
  v20 = v4;
  sub_1C5594CF4();
  v9 = &v18;
  v19 = v12;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988);
  v11 = sub_1C5543DDC();
  sub_1C544B78C();
  sub_1C5596064();

  v15 = sub_1C5543EFC();
  sub_1C540EFD8(v16, v14, v17);
  sub_1C5543F84(v16);
  sub_1C5544010(v17, v16);
  sub_1C540EFD8(v16, v14, v13);
  sub_1C5543F84(v16);
  return sub_1C5543F84(v17);
}

uint64_t sub_1C5542D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v10 = 0;
  v9 = sub_1C5542FA0;
  v27 = 0;
  v26 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v20 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v21 = &v6 - v7;
  v27 = &v6 - v7;
  v26 = v4;
  sub_1C5594CF4();
  v15 = &v25;
  v25 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9A0);
  v13 = sub_1C5544128();
  v14 = sub_1C5543E74();
  sub_1C55441B0();
  sub_1C5596114();
  v19 = sub_1C5543DDC();
  sub_1C540EFD8(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_1C540EFD8(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_1C5542FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = 0;
  bzero(v11, 0x111uLL);
  v4 = *a1;
  v12 = v4;
  MEMORY[0x1E69E5928](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9C8);
  sub_1C5544238();
  sub_1C5412C88();
  sub_1C5596024();
  MEMORY[0x1E69E5920](v4);
  memcpy(__dst, v10, sizeof(__dst));
  memcpy(v9, __dst, 0x111uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9A0);
  sub_1C5543E74();
  sub_1C540EFD8(v9, v6, v11);
  sub_1C55442C0(v9);
  memcpy(v14, v11, 0x111uLL);
  sub_1C5544334(v14, v8);
  memcpy(v7, v14, 0x111uLL);
  sub_1C540EFD8(v7, v6, a2);
  sub_1C55442C0(v7);
  return sub_1C55442C0(v11);
}

void *sub_1C5543144@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = v107;
  v92 = a1;
  v93 = a2;
  v100 = 0;
  v99 = 0;
  v97 = 0;
  v132[1] = a1;
  v130 = [a1 icon];
  if (v130)
  {
    v131 = v130;
  }

  else
  {
    sub_1C5418C84();
    sub_1C55965F4();
    v131 = sub_1C54FA360();
    if (v130)
    {
      sub_1C5401EF8(&v130);
    }
  }

  v90 = v131;
  if (v131)
  {
    v89 = v90;
    v84 = v90;
    v100 = v90;
    v2 = v90;
    v98 = sub_1C5595ED4();
    v78 = MEMORY[0x1E6981748];
    v79 = MEMORY[0x1E6981710];
    v83 = &v99;
    v74 = &v98;
    sub_1C540EFD8(&v98, MEMORY[0x1E6981748], &v99);
    sub_1C5410D10();
    v75 = v99;

    v96 = v75;
    v81 = &v97;
    v76 = &v96;
    sub_1C540EFD8(&v96, v78, &v97);
    sub_1C5410D10();
    v77 = v97;

    v94 = v77;
    v80 = &v94;
    sub_1C540F554(&v94, v78, &v95);
    sub_1C5410D10();
    v82 = v95;
    v85 = v95;

    v132[0] = v82;
    sub_1C5410D10();
    sub_1C5410D10();

    v88 = v85;
  }

  else
  {
    v128 = 0;
    sub_1C540F554(&v128, MEMORY[0x1E6981748], &v129);
    v86 = v129;
    v87 = v129;

    v132[0] = v86;
    v88 = v87;
  }

  v68 = v88;
  v60[3] = sub_1C5595434();
  v3 = v92;
  v60[4] = v60;
  MEMORY[0x1EEE9AC00](v60);
  v60[1] = v59;
  v59[2] = v4;
  v60[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEF0);
  sub_1C5413E98();
  v62 = 0;
  v63 = 1;
  sub_1C5596064();

  v5 = v91;
  v6 = v91[35];
  v91[85] = v91[36];
  v5[84] = v6;
  v7 = v5[37];
  v8 = v5[38];
  v9 = v5[39];
  v125 = v109[22];
  v5[88] = v9;
  v5[87] = v8;
  v5[86] = v7;
  v10 = v5[84];
  v5[30] = v5[85];
  v5[29] = v10;
  v11 = v5[86];
  v12 = v5[87];
  v13 = v5[88];
  v109[10] = v125;
  v5[33] = v13;
  v5[32] = v12;
  v5[31] = v11;
  v60[7] = sub_1C5596214();
  v60[6] = v14;
  v60[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF00);
  sub_1C5413F20();
  v61 = v109;
  sub_1C5595D24();
  sub_1C5413FA8(v61);
  v15 = v91;
  v91[90] = v110;
  v16 = v111;
  v17 = v112;
  v18 = v113;
  v15[94] = v114;
  v15[93] = v18;
  v15[92] = v17;
  v15[91] = v16;
  v19 = v115;
  v20 = v116;
  v21 = v117;
  v15[98] = v118;
  v15[97] = v21;
  v15[96] = v20;
  v15[95] = v19;
  v22 = v119;
  v23 = v120;
  v126 = v122;
  v15[101] = v121;
  v15[100] = v23;
  v15[99] = v22;
  v15[16] = v15[90];
  v24 = v15[91];
  v25 = v15[92];
  v26 = v15[93];
  v15[20] = v15[94];
  v15[19] = v26;
  v15[18] = v25;
  v15[17] = v24;
  v27 = v15[95];
  v28 = v15[96];
  v29 = v15[97];
  v15[24] = v15[98];
  v15[23] = v29;
  v15[22] = v28;
  v15[21] = v27;
  v30 = v15[99];
  v31 = v15[100];
  v32 = v15[101];
  v108[24] = v126;
  v15[27] = v32;
  v15[26] = v31;
  v15[25] = v30;
  v65 = sub_1C55957E4();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9D8);
  sub_1C55444A4();
  v66 = v108;
  sub_1C5595D84();
  sub_1C5413FA8(v66);
  v33 = v91;
  v34 = v91[53];
  v35 = v91[54];
  v36 = v91[55];
  v91[106] = v91[56];
  v33[105] = v36;
  v33[104] = v35;
  v33[103] = v34;
  v37 = v33[57];
  v38 = v33[58];
  v39 = v33[59];
  v33[110] = v33[60];
  v33[109] = v39;
  v33[108] = v38;
  v33[107] = v37;
  v40 = v33[61];
  v41 = v33[62];
  v42 = v33[63];
  v33[114] = v33[64];
  v33[113] = v42;
  v33[112] = v41;
  v33[111] = v40;
  v43 = v33[65];
  v44 = v33[66];
  v45 = v33[67];
  v127 = v123;
  v33[117] = v45;
  v33[116] = v44;
  v33[115] = v43;
  v46 = v33[103];
  v47 = v33[104];
  v48 = v33[105];
  v33[3] = v33[106];
  v33[2] = v48;
  v33[1] = v47;
  *v33 = v46;
  v49 = v33[107];
  v50 = v33[108];
  v51 = v33[109];
  v33[7] = v33[110];
  v33[6] = v51;
  v33[5] = v50;
  v33[4] = v49;
  v52 = v33[111];
  v53 = v33[112];
  v54 = v33[113];
  v33[11] = v33[114];
  v33[10] = v54;
  v33[9] = v53;
  v33[8] = v52;
  v55 = v33[115];
  v56 = v33[116];
  v57 = v33[117];
  v107[240] = v127;
  v33[14] = v57;
  v33[13] = v56;
  v33[12] = v55;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9E8);
  v70 = sub_1C5544548();
  v73 = v124;
  v67 = v107;
  sub_1C540EFD8(v107, v69, v124);
  sub_1C5413FA8(v67);
  v105 = v68;
  v72 = &v105;
  v106[0] = &v105;
  v71 = v104;
  sub_1C55445EC(v73, v104);
  v106[1] = v71;
  v103[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9F8);
  v103[1] = v69;
  v101 = sub_1C554472C();
  v102 = v70;
  sub_1C540F5A0(v106, 2uLL, v103, v93);
  sub_1C5413FA8(v71);
  sub_1C5410D10();
  sub_1C5413FA8(v73);
  result = v132;
  sub_1C5410D10();
  return result;
}

uint64_t sub_1C554386C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v91, 0, sizeof(v91));
  memset(v69, 0, sizeof(v69));
  v92 = a1;
  v43 = [a1 title];
  if (v43)
  {
    v37 = sub_1C5596574();
    v38 = v2;
    MEMORY[0x1E69E5920](v43);
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v87 = v39;
  v88 = v40;
  if (v40)
  {
    v89 = v87;
    v90 = v88;
  }

  else
  {
    v89 = sub_1C55965F4();
    v90 = v3;
  }

  v85 = v89;
  v86 = v90;
  sub_1C54141E8();
  v81 = sub_1C5595A04();
  v82 = v4;
  v83 = v5;
  v84 = v6;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  sub_1C55958E4();
  v77 = v81;
  v78 = v30;
  v79 = v31 & 1;
  v80 = v32;
  v73 = sub_1C55959C4();
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v33 = v7;
  v34 = v8;
  v35 = v9;

  sub_1C5412EA0(v81, v30, v31 & 1);

  v70[0] = v73;
  v70[1] = v33;
  v71 = v34 & 1;
  v72 = v35;
  sub_1C540EFD8(v70, MEMORY[0x1E6981148], v91);
  sub_1C5414260(v70);
  v36 = [a1 subtitle];
  if (v36)
  {
    v26 = sub_1C5596574();
    v27 = v10;
    MEMORY[0x1E69E5920](v36);
    v28 = v26;
    v29 = v27;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v65 = v28;
  v66 = v29;
  if (v29)
  {
    v67 = v65;
    v68 = v66;
  }

  else
  {
    v67 = sub_1C55965F4();
    v68 = v11;
  }

  v63 = v67;
  v64 = v68;
  v59 = sub_1C5595A04();
  v60 = v12;
  v61 = v13;
  v62 = v14;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  sub_1C5595914();
  v55 = v59;
  v56 = v19;
  v57 = v20 & 1;
  v58 = v21;
  v51 = sub_1C55959C4();
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v22 = v15;
  v23 = v16;
  v24 = v17;

  sub_1C5412EA0(v59, v19, v20 & 1);

  v48[0] = v51;
  v48[1] = v22;
  v49 = v23 & 1;
  v50 = v24;
  v25 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v48, MEMORY[0x1E6981148], v69);
  sub_1C5414260(v48);
  sub_1C54142A8(v91, v46);
  v47[0] = v46;
  sub_1C54142A8(v69, v45);
  v47[1] = v45;
  v44[0] = v25;
  v44[1] = v25;
  sub_1C540F5A0(v47, 2uLL, v44, a2);
  sub_1C5414260(v45);
  sub_1C5414260(v46);
  sub_1C5414260(v69);
  return sub_1C5414260(v91);
}

unint64_t sub_1C5543DDC()
{
  v2 = qword_1EC15E990;
  if (!qword_1EC15E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E988);
    sub_1C5543E74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5543E74()
{
  v2 = qword_1EC15E998;
  if (!qword_1EC15E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5543EFC()
{
  v2 = qword_1EC15E9A8;
  if (!qword_1EC15E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5543F84(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9B0) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C5544010(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E9B0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E988);
  (*(*(v2 - 8) + 16))(a2 + v4, a1 + v4);
  return a2;
}

unint64_t sub_1C5544128()
{
  v2 = qword_1EC15E9B8;
  if (!qword_1EC15E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55441B0()
{
  v2 = qword_1EC15E9C0;
  if (!qword_1EC15E9C0)
  {
    type metadata accessor for AAUIWalletCardListItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5544238()
{
  v2 = qword_1EC15E9D0;
  if (!qword_1EC15E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55442C0(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  sub_1C5412EA0(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

uint64_t sub_1C5544334(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  sub_1C54130AC(v4, v5, v6 & 1);
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6 & 1;
  v7 = *(a1 + 80);
  sub_1C5594CF4();
  *(a2 + 80) = v7;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  sub_1C54130AC(v8, v9, v10 & 1);
  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  *(a2 + 104) = v10 & 1;
  v11 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v11;
  memcpy((a2 + 120), (a1 + 120), 0x70uLL);
  memcpy((a2 + 232), (a1 + 232), 0x29uLL);
  return a2;
}

unint64_t sub_1C55444A4()
{
  v2 = qword_1EC15E9E0;
  if (!qword_1EC15E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9D8);
    sub_1C5413F20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5544548()
{
  v2 = qword_1EC15E9F0;
  if (!qword_1EC15E9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E9E8);
    sub_1C55444A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E9F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55445EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v10 = *(a1 + 80);
  sub_1C5594CF4();
  *(a2 + 80) = v10;
  memcpy((a2 + 88), (a1 + 88), 0x70uLL);
  memcpy((a2 + 200), (a1 + 200), 0x29uLL);
  return a2;
}