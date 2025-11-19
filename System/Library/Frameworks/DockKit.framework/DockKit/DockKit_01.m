uint64_t sub_2381B684C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, double a7)
{
  v55 = a5;
  v51 = a4;
  v48 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3930, &qword_2381CC970);
  v53 = *(v54 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v47 - v12;
  SPVector3DMake(0.0, 0.0, 0.0, &v69);
  v62 = *(&v69 + 1);
  v60 = v69;
  v50 = *(&v70 + 1);
  v58 = v70;
  SPVector3DMake(0.0, 0.0, 0.0, &v69);
  v61 = *(&v69 + 1);
  v59 = v69;
  v49 = *(&v70 + 1);
  v57 = v70;
  v13 = *(a3 + 16);
  v14 = *(a1 + 16);
  v56 = a6;
  v47 = a1;
  if (v13 != v14 || !v14)
  {
LABEL_27:
    if (!v14 || (v30 = v48, *(v48 + 16) != v14))
    {
LABEL_53:
      *&v70 = v57;
      *(&v70 + 1) = v49;
      *&v69 = v59;
      *(&v69 + 1) = v61;
      *&v72 = v58;
      *(&v72 + 1) = v50;
      *&v71 = v60;
      *(&v71 + 1) = v62;
      *&v73 = a7;
      *(&v73 + 1) = v51;
      v66 = v71;
      v67 = v72;
      v68 = v73;
      v65 = v70;
      v64 = v69;
      v45 = v51;
      sub_2381C8E3C(&v69, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
      v46 = v52;
      sub_2381CA26C();
      (*(v53 + 8))(v46, v54);
      if (v55)
      {
        sub_2381CA27C();
      }

      return sub_2381C8E84(&v69);
    }

    sub_2381CA04C();
    v31 = 0;
    v32 = (v30 + 32);
    v33 = (v47 + 40);
    while (1)
    {
      v35 = *(v33 - 1);
      v34 = *v33;

      if (v35 == sub_2381CA01C() && v34 == v36)
      {
        break;
      }

      v38 = sub_2381CA40C();

      if (v38)
      {
        goto LABEL_39;
      }

      if (v35 == sub_2381CA03C() && v34 == v39)
      {

LABEL_45:
        if (v31 >= v14)
        {
          goto LABEL_59;
        }

        v40 = *v32 ^ 0x8000000000000000;
        v41 = &v73;
        goto LABEL_41;
      }

      v42 = sub_2381CA40C();

      if (v42)
      {
        goto LABEL_45;
      }

      if (v35 == sub_2381CA02C() && v34 == v43)
      {
      }

      else
      {
        v44 = sub_2381CA40C();

        if ((v44 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      if (v31 >= v14)
      {
        goto LABEL_61;
      }

      v40 = *v32;
      v41 = &v72;
LABEL_41:
      *(v41 - 32) = v40;
LABEL_42:
      ++v31;
      ++v32;
      v33 += 2;
      if (v14 == v31)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if (v31 >= v14)
    {
      goto LABEL_57;
    }

    v40 = *v32;
    v41 = &v74;
    goto LABEL_41;
  }

  sub_2381CA04C();
  v15 = 0;
  v16 = (a3 + 32);
  v17 = (a1 + 40);
  while (1)
  {
    v19 = *(v17 - 1);
    v18 = *v17;

    if (v19 == sub_2381CA01C() && v18 == v20)
    {
      break;
    }

    v22 = sub_2381CA40C();

    if (v22)
    {
      goto LABEL_13;
    }

    if (v19 == sub_2381CA03C() && v18 == v24)
    {

LABEL_19:
      if (v15 >= v13)
      {
        goto LABEL_58;
      }

      v25 = *v16 ^ 0x8000000000000000;
      v26 = &v73 + 8;
      goto LABEL_15;
    }

    v27 = sub_2381CA40C();

    if (v27)
    {
      goto LABEL_19;
    }

    if (v19 == sub_2381CA02C() && v18 == v28)
    {
    }

    else
    {
      v29 = sub_2381CA40C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v15 >= v13)
    {
      goto LABEL_60;
    }

    v25 = *v16;
    v26 = &v72 + 8;
LABEL_15:
    *(v26 - 32) = v25;
LABEL_16:
    ++v15;
    ++v16;
    v17 += 2;
    if (v13 == v15)
    {
      goto LABEL_27;
    }
  }

LABEL_13:
  if (v15 < v13)
  {
    v25 = *v16;
    v26 = &v75;
    goto LABEL_15;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_2381B6E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;

  sub_2381CA25C();
  v13 = sub_2381CA24C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_23819DBD4(0, 0, v12, &unk_2381CC920, v15);
}

uint64_t sub_2381B7070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_2381CA24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;

  a5(0, 0, v11, a4, v13);
}

uint64_t sub_2381B7180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B724C, 0, 0);
}

uint64_t sub_2381B724C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v0[10] = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23819C000, v7, v8, "Stopping tracking states", v9, 2u);
    MEMORY[0x2383EBBE0](v9, -1, -1);
  }

  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];

  v14 = *(v12 + 8);
  v0[13] = v14;
  v14(v10, v11);
  v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v16 = *(v13 + v15);
  v0[14] = v16;
  if (v16)
  {
    v17 = *(MEMORY[0x277D05B50] + 4);
    v23 = (*MEMORY[0x277D05B50] + MEMORY[0x277D05B50]);
    v16;
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_2381B744C;

    return v23();
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_2381B744C()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B7598, 0, 0);
  }

  else
  {

    v5 = *(v3 + 64);
    v4 = *(v3 + 72);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_2381B7598()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  v3(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 128);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_23819C000, v9, v10, "Failed stopping tracking states: %@", v13, 0xCu);
    sub_2381A6070(v14, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v14, -1, -1);
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 56) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2381B7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2381CA0AC();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v5[12] = *(v10 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B7880, 0, 0);
}

uint64_t sub_2381B7880()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[5];
  v6 = v0[6];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v8 = *(v5 + v7);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = v8;

  sub_2381B2A6C(v8, sub_2381C88E4, v10, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingSummaryCallback, sub_2381C982C, sub_2381C9830);

  v12 = *(v5 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v0[14] = v12;
  if (v12)
  {
    v13 = *(v5 + v7);
    v0[15] = v13;
    if (v13)
    {
      v14 = *(MEMORY[0x277D05B58] + 4);
      v37 = (*MEMORY[0x277D05B58] + MEMORY[0x277D05B58]);
      v13;
      v15 = v12;
      v16 = swift_task_alloc();
      v0[16] = v16;
      *v16 = v0;
      v16[1] = sub_2381B7CA8;

      return v37(v15);
    }

    else
    {
      v35 = swift_task_alloc();
      v0[18] = v35;
      *v35 = v0;
      v35[1] = sub_2381B7E20;
      v36 = v0[5];

      return sub_2381B8C4C();
    }
  }

  else
  {
    sub_2381A319C();
    v18 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
    (*(v0[8] + 16))(v0[9], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[7]);
    v20 = v18;
    v21 = sub_2381CA08C();
    v22 = sub_2381CA2CC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_23819C000, v21, v22, "Failed to get tracking Summary: %@", v23, 0xCu);
      sub_2381A6070(v24, &qword_27DEF32F0, &qword_2381CB490);
      MEMORY[0x2383EBBE0](v24, -1, -1);
      MEMORY[0x2383EBBE0](v23, -1, -1);
    }

    v28 = v0[9];
    v27 = v0[10];
    v29 = v0[7];
    v30 = v0[8];
    v31 = v0[6];

    (*(v30 + 8))(v28, v29);
    sub_2381CA27C();

    v32 = v0[13];
    v33 = v0[9];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_2381B7CA8()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B7F68, 0, 0);
  }

  else
  {
    v4 = *(v3 + 120);

    v5 = swift_task_alloc();
    *(v3 + 144) = v5;
    *v5 = v3;
    v5[1] = sub_2381B7E20;
    v6 = *(v3 + 40);

    return sub_2381B8C4C();
  }
}

uint64_t sub_2381B7E20()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B8130, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2381B7F68()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 40) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 56));
  v3 = v2;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v4, v5, "Failed to get tracking Summary: %@", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);

  (*(v13 + 8))(v11, v12);
  sub_2381CA27C();

  v15 = *(v0 + 104);
  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2381B8130()
{
  v1 = v0[19];
  (*(v0[8] + 16))(v0[9], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[7]);
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "Failed to get tracking Summary: %@", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[6];

  (*(v12 + 8))(v10, v11);
  sub_2381CA27C();

  v14 = v0[13];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2381B82EC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v104 = a6;
  v103 = a4;
  v9 = sub_2381CA0AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DockAccessory.TrackedSubjectType(0);
  v117 = *(v113 - 8);
  v14 = *(v117 + 64);
  v15 = MEMORY[0x28223BE20](v113);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = v94 - v18;
  v115 = sub_2381C9FDC();
  v19 = *(v115 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v115);
  v114 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v112 = v94 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3910, &qword_2381CC938);
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v99 = v94 - v25;
  v26 = type metadata accessor for DockAccessory.TrackingState(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v100 = v94 - v31;
  if (a2 >> 60 != 15)
  {
    v97 = v29;
    v98 = v30;
    v105 = v17;
    sub_2381C9FCC();
    v32 = a1;
    sub_2381C89E4(a1, a2);
    v33 = sub_2381C9F9C();
    if (v33)
    {
      v34 = v33;
      v95 = v32;
      v96 = a2;
      v35 = sub_2381C9FBC();
      v36 = v35;
      if (v35 >> 62)
      {
        v91 = v35;
        result = sub_2381CA39C();
        v36 = v91;
        v38 = v105;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v38 = v105;
        if (result)
        {
LABEL_5:
          v94[1] = v34;
          if (result < 1)
          {
            __break(1u);
            return result;
          }

          v39 = 0;
          v109 = v36 & 0xC000000000000001;
          v108 = *MEMORY[0x277D05BF8];
          v106 = (v19 + 8);
          v107 = (v19 + 104);
          v40 = MEMORY[0x277D84F90];
          v110 = result;
          v111 = v36;
          do
          {
            if (v109)
            {
              MEMORY[0x2383EB4F0](v39);
            }

            else
            {
              v42 = *(v36 + 8 * v39 + 32);
            }

            v43 = v112;
            sub_2381C9F7C();
            v45 = v114;
            v44 = v115;
            (*v107)(v114, v108, v115);
            sub_2381C41C0(&qword_27DEF3918, MEMORY[0x277D05C00]);
            sub_2381CA1AC();
            sub_2381CA1AC();
            v46 = *v106;
            (*v106)(v45, v44);
            v46(v43, v44);
            if (v119 == v118)
            {
              v47 = v116;
              sub_2381C9F2C();
              sub_2381C9F6C();
              v49 = v48;
              v51 = v50;
              v53 = v52;
              v55 = v54;
              v56 = sub_2381C9F3C();
              v58 = v57;
              v59 = sub_2381C9F4C();
              v61 = v60;
              v62 = sub_2381C9F5C();
              v64 = v63;
              v65 = type metadata accessor for DockAccessory.TrackedPerson(0);
              v66 = &v47[v65[5]];
              *v66 = v49;
              *(v66 + 1) = v51;
              *(v66 + 2) = v53;
              *(v66 + 3) = v55;
              v67 = &v47[v65[6]];
              *v67 = v56;
              v67[8] = v58 & 1;
              v68 = &v47[v65[7]];
              *v68 = v59;
              v68[8] = v61 & 1;
              v69 = &v47[v65[8]];
              *v69 = v62;
              v69[8] = v64 & 1;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_2381A2FC4(0, v40[2] + 1, 1, v40);
              }

              v71 = v40[2];
              v70 = v40[3];
              v72 = v71 + 1;
              v38 = v105;
              if (v71 >= v70 >> 1)
              {
                v40 = sub_2381A2FC4(v70 > 1, v71 + 1, 1, v40);
              }

              v41 = v116;
            }

            else
            {
              sub_2381C9F2C();
              sub_2381C9F6C();
              v74 = v73;
              v76 = v75;
              v78 = v77;
              v80 = v79;
              v81 = sub_2381C9F3C();
              v83 = v82;
              v84 = type metadata accessor for DockAccessory.TrackedObject(0);
              v85 = (v38 + *(v84 + 20));
              *v85 = v74;
              v85[1] = v76;
              v85[2] = v78;
              v85[3] = v80;
              v86 = v38 + *(v84 + 24);
              *v86 = v81;
              *(v86 + 8) = v83 & 1;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_2381A2FC4(0, v40[2] + 1, 1, v40);
              }

              v71 = v40[2];
              v87 = v40[3];
              v72 = v71 + 1;
              if (v71 >= v87 >> 1)
              {
                v40 = sub_2381A2FC4(v87 > 1, v71 + 1, 1, v40);
              }

              v41 = v38;
            }

            ++v39;

            v40[2] = v72;
            sub_2381C4A44(v41, v40 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v71, type metadata accessor for DockAccessory.TrackedSubjectType);
            v36 = v111;
          }

          while (v110 != v39);

          goto LABEL_29;
        }
      }

      v40 = MEMORY[0x277D84F90];
LABEL_29:
      v92 = v100;
      sub_2381C9F8C();
      *(v92 + *(v97 + 20)) = v40;
      sub_2381C4208(v92, v98, type metadata accessor for DockAccessory.TrackingState);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
      v93 = v99;
      sub_2381CA26C();
      (*(v101 + 8))(v93, v102);
      if (v103)
      {
        sub_2381CA27C();
        sub_2381C84F4(v95, v96);

        return sub_2381C4AAC(v92, type metadata accessor for DockAccessory.TrackingState);
      }

      else
      {
        sub_2381C4AAC(v92, type metadata accessor for DockAccessory.TrackingState);
        sub_2381C84F4(v95, v96);
      }
    }

    sub_2381C84F4(a1, a2);
  }

  (*(v10 + 16))(v13, a5 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v9);
  v88 = sub_2381CA08C();
  v89 = sub_2381CA2CC();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_23819C000, v88, v89, "Got nil tracking trackingSummary", v90, 2u);
    MEMORY[0x2383EBBE0](v90, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
  return sub_2381CA27C();
}

uint64_t sub_2381B8C4C()
{
  *(v1 + 40) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B8CE8, 0, 0);
}

uint64_t sub_2381B8CE8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  v0[7] = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x277D05B60] + 4);
    v9 = (*MEMORY[0x277D05B60] + MEMORY[0x277D05B60]);
    v3;
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_2381B8E0C;

    return v9();
  }

  else
  {
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2381B8E0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 72);
  v8 = *v3;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 96) = v2;

  if (v2)
  {
    v6 = sub_2381B915C;
  }

  else
  {

    v6 = sub_2381B8F2C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2381B8F2C()
{
  if (v0[11] >> 60 == 15)
  {
    goto LABEL_14;
  }

  v1 = v0[5];
  v2 = *(v1 + v0[7]);
  if (!v2)
  {
    v23 = v0[10];
LABEL_11:
    sub_2381C84F4(v23, v0[11]);
    goto LABEL_14;
  }

  v3 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v4 = v0[10];
  if (!v3)
  {
    v23 = v0[10];
    goto LABEL_11;
  }

  v5 = v3;
  v6 = v2;
  v7 = sub_2381C9B0C();
  v8 = sub_2381C991C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = sub_2381C9B0C();

    sub_2381C9A2C();
    v13 = sub_2381CA2FC();

    v15 = v0[10];
    v14 = v0[11];
    if (v13)
    {
      v16 = v0[6];
      v26 = sub_2381C992C();
      v18 = v17;
      v19 = sub_2381CA24C();
      (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v5;
      v20[5] = v26;
      v20[6] = v18;
      v5 = v5;
      sub_23819DED4(0, 0, v16, &unk_2381CC930, v20);
    }

    v21 = v15;
    v22 = v14;
  }

  else
  {
    v21 = v0[10];
    v22 = v0[11];
  }

  sub_2381C84F4(v21, v22);

LABEL_14:
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2381B915C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2();
}

uint64_t DockAccessory.track(_:cameraInformation:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v4;
  *(v2 + 105) = *(a2 + 89);
  v5 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v5;
  v6 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v6;
  v7 = swift_task_alloc();
  *(v2 + 128) = v7;
  *v7 = v2;
  v7[1] = sub_2381B9288;

  return sub_2381B93BC(a1, (v2 + 16), 0);
}

{
  v4 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v4;
  *(v2 + 105) = *(a2 + 89);
  v5 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v5;
  v6 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v6;
  v7 = swift_task_alloc();
  *(v2 + 128) = v7;
  *v7 = v2;
  v7[1] = sub_2381B9288;

  return sub_2381BBF14(a1, (v2 + 16), 0);
}

uint64_t sub_2381B9288()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381C9834, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2381B93BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3478, &qword_2381CB390) - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF36F8, &qword_2381CC0B0);
  *(v4 + 160) = v8;
  v9 = *(v8 - 8);
  *(v4 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v11 = type metadata accessor for DockAccessory.Observation(0);
  *(v4 + 184) = v11;
  v12 = *(v11 - 8);
  *(v4 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v14 = sub_2381CA0AC();
  *(v4 + 208) = v14;
  v15 = *(v14 - 8);
  *(v4 + 216) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *a2;
  v19 = a2[1];
  *(v4 + 232) = v17;
  *(v4 + 240) = v18;
  *(v4 + 248) = v19;
  *(v4 + 408) = *(a2 + 16);
  v20 = *(a2 + 3);
  *(v4 + 256) = *(a2 + 2);
  *(v4 + 272) = v20;
  v21 = *(a2 + 4);
  *(v4 + 409) = *(a2 + 80);
  v22 = *(a2 + 11);
  *(v4 + 288) = v21;
  *(v4 + 304) = v22;
  *(v4 + 410) = *(a2 + 104);

  return MEMORY[0x2822009F8](sub_2381B95F8, 0, 0);
}

uint64_t sub_2381B95F8()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF32C8;
  v2 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v3 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if ((v4 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v6 = v0[17];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  v0[40] = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  if ((*(v6 + v7) & 1) == 0)
  {
    (*(v0[27] + 16))(v0[29], v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[26]);
    v8 = sub_2381CA08C();
    v9 = sub_2381CA2DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23819C000, v8, v9, "Starting tracker", v10, 2u);
      MEMORY[0x2383EBBE0](v10, -1, -1);
    }

    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[27];
    v14 = v0[17];

    (*(v13 + 8))(v11, v12);
    v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v16 = *(v14 + v15);
    v0[41] = v16;
    if (v16)
    {
      v17 = *(MEMORY[0x277D05B68] + 4);
      v133 = (*MEMORY[0x277D05B68] + MEMORY[0x277D05B68]);
      v16;
      v18 = swift_task_alloc();
      v0[42] = v18;
      *v18 = v0;
      v18[1] = sub_2381BA538;

      return v133();
    }

    *(v0[17] + v0[40]) = 1;
  }

  v21 = v0[30];
  v20 = v0[31];
  v22 = [objc_allocWithZone(sub_2381C9D0C()) init];
  v127 = v0;
  v0[43] = v22;
  sub_2381C8508(0, &qword_27DEF38D8, 0x277CCACA8);
  sub_2381CA30C();
  sub_2381C9CEC();
  if (v20 != 2)
  {
    v28 = *MEMORY[0x277CE5850];
    v29 = sub_2381CA0FC();
    v31 = v30;
    if (v29 != sub_2381CA0FC() || v31 != v32)
    {
      v33 = sub_2381CA40C();

      if ((v33 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_22;
    }

    goto LABEL_82;
  }

  v23 = *MEMORY[0x277CE5870];
  v24 = sub_2381CA0FC();
  v26 = v25;
  if (v24 == sub_2381CA0FC() && v26 == v27)
  {
LABEL_82:

    goto LABEL_22;
  }

  sub_2381CA40C();

LABEL_22:
  sub_2381CA30C();
  sub_2381C9CEC();
  while (1)
  {
    v34 = v127;
    v35 = v127[15];
    sub_2381C9CBC();
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = v127[24];
      v38 = v127[25];
      v131 = v127[23];
      v39 = v127[21];
      v40 = v127[15] + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v128 = *(v37 + 72);
      v129 = (v39 + 48);
      v126 = (v39 + 8);
      v134 = v22;
      do
      {
        v41 = v34[25];
        sub_2381C4208(v40, v41, type metadata accessor for DockAccessory.Observation);
        v42 = qword_2381CCA28[*v41];
        v43 = v34[25];
        v45 = v34[19];
        v44 = v34[20];
        v46 = *(v38 + 1);
        v47 = v38[2];
        v48 = v38[3];
        v49 = v38[4];
        v50 = v38[5];
        v136.origin.x = v47;
        v136.origin.y = v48;
        v136.size.width = v49;
        v136.size.height = v50;
        CGRectGetMinX(v136);
        v137.origin.x = v47;
        v137.origin.y = v48;
        v137.size.width = v49;
        v137.size.height = v50;
        CGRectGetMinY(v137);
        v138.origin.x = v47;
        v138.origin.y = v48;
        v138.size.width = v49;
        v138.size.height = v50;
        CGRectGetHeight(v138);
        v139.origin.x = v47;
        v139.origin.y = v48;
        v139.size.width = v49;
        v139.size.height = v50;
        CGRectGetWidth(v139);
        v140.origin.x = v47;
        v140.origin.y = v48;
        v140.size.width = v49;
        v140.size.height = v50;
        CGRectGetHeight(v140);
        sub_2381A6008(v43 + *(v131 + 28), v45, &qword_27DEF3478, &qword_2381CB390);
        if ((*v129)(v45, 1, v44) == 1)
        {
          sub_2381A6070(v34[19], &qword_27DEF3478, &qword_2381CB390);
        }

        else
        {
          v51 = v34[22];
          v53 = v34[19];
          v52 = v34[20];
          v54 = [objc_opt_self() radians];
          sub_2381C98BC();

          v55 = *v126;
          (*v126)(v53, v52);
          sub_2381C98AC();
          v55(v51, v52);
          v34 = v127;
        }

        v56 = objc_allocWithZone(sub_2381C99DC());
        sub_2381C99CC();
        v22 = v134;
        v57 = sub_2381C9CAC();
        v59 = v58;
        MEMORY[0x2383EB370](v57, v58, v60, v61, v62);
        if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2381CA1FC();
        }

        v63 = v34[25];
        sub_2381CA20C();
        v57(v127 + 2, 0);
        sub_2381C4AAC(v63, type metadata accessor for DockAccessory.Observation);
        v40 += v128;
        --v36;
      }

      while (v36);
    }

    if ((*(v34 + 409) & 1) == 0)
    {
      v65 = v34 + 37;
      v66 = v34[36];
      v67 = v34[34];
      v68 = v67;
      v69 = v127[32];
      v70 = v69;
      *&v71 = v66;
      *(&v71 + 1) = *v65;
      v130 = v71;
      v72 = v127[33];
      v73 = v127[35];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E0, &qword_2381CC8D8);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_2381CB350;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E8, &qword_2381CC8E0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_2381CB350;
      *(v75 + 32) = v69.i32[0];
      *(v75 + 36) = v67.i32[0];
      v34 = v127;
      *(v75 + 40) = v66;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F0, &qword_2381CC8E8);
      *(v74 + 56) = v76;
      *(v74 + 32) = v75;
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_2381CB350;
      *(v77 + 32) = vzip2_s32(v70, v68);
      *(v77 + 40) = DWORD1(v130);
      *(v74 + 88) = v76;
      *(v74 + 64) = v77;
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_2381CB350;
      *(v78 + 32) = vzip1_s32(v72, v73);
      *(v78 + 40) = DWORD2(v130);
      *(v74 + 120) = v76;
      *(v74 + 96) = v78;
      v79 = objc_allocWithZone(MEMORY[0x277CBEA60]);
      v80 = sub_2381CA1CC();

      [v79 initWithArray_];

      sub_2381C9C8C();
    }

    if ((*(v34 + 410) & 1) == 0)
    {
      v81 = v34[38];
      v82 = v34[39];
      sub_2381C9CCC();
      sub_2381C9CDC();
    }

    v83 = *(v34 + 408);
    if (v83 <= 3)
    {
      break;
    }

LABEL_41:
    if (v83 > 5)
    {
      goto LABEL_50;
    }

    if (v83 != 4)
    {
      goto LABEL_60;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_86;
    }

    v83 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_46:
    if (v83 != 2)
    {
      goto LABEL_63;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_87;
    }

    v83 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_50:
    if (v83 != 6)
    {
      goto LABEL_66;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_88;
    }

    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_54:
    v84 = *MEMORY[0x277CE5870];
    v85 = sub_2381CA0FC();
    v87 = v86;
    if (v85 == sub_2381CA0FC() && v87 == v88)
    {
      goto LABEL_82;
    }

    v119 = sub_2381CA40C();

    if (v119)
    {
      goto LABEL_22;
    }

    v120 = *MEMORY[0x277CE5878];
    v121 = sub_2381CA0FC();
    v123 = v122;
    if (v121 == sub_2381CA0FC() && v123 == v124)
    {
      goto LABEL_82;
    }

    v125 = sub_2381CA40C();

    if (v125)
    {
      goto LABEL_22;
    }
  }

  if (*(v34 + 408) > 1u)
  {
    goto LABEL_46;
  }

  if (!*(v34 + 408))
  {
    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v83 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_41;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_89;
  }

  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_60:
    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_90;
    }

    if (result > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_63:
      result = sub_2381C9DDC();
      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_91;
      }

      if (result > 0x7FFFFFFF)
      {
        __break(1u);
LABEL_66:
        result = sub_2381C9DDC();
        if (result < 0xFFFFFFFF80000000)
        {
          goto LABEL_92;
        }

        if (result > 0x7FFFFFFF)
        {
LABEL_93:
          __break(1u);
          return result;
        }
      }
    }
  }

LABEL_68:
  v89 = v34[16];
  sub_2381C9C9C();
  v90 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v90 timeIntervalSince1970];

  sub_2381C9CFC();
  v91 = v34[17];
  if (v89)
  {
    v92 = v34[16];
    v93 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v94 = *(v91 + v93);
    v34[44] = v94;
    if (v94)
    {
      v95 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v96 = v92;
      v94;
      v97 = [v95 initWithCVPixelBuffer_];
      v34[45] = v97;
      v98 = *(MEMORY[0x277D05B88] + 4);
      v132 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
      v99 = swift_task_alloc();
      v34[46] = v99;
      *v99 = v34;
      v99[1] = sub_2381BB2DC;
      v100 = v22;
      v101 = v97;
      goto LABEL_73;
    }

LABEL_76:
    v106 = v34[43];
    v107 = v34;
    v110 = v34 + 28;
    v108 = v34[28];
    v109 = v110[1];
    v111 = v107[25];
    v112 = v107[22];
    v114 = v107[18];
    v113 = v107[19];
    v115 = v107[17];
    v116 = sub_2381CA24C();
    (*(*(v116 - 8) + 56))(v114, 1, 1, v116);
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = 0;
    v117[4] = v115;

    sub_23819DBD4(0, 0, v114, &unk_2381CC8D0, v117);

    v118 = v107[1];

    return v118();
  }

  else
  {
    v102 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v103 = *(v91 + v102);
    v34[48] = v103;
    if (!v103)
    {
      goto LABEL_76;
    }

    v104 = *(MEMORY[0x277D05B88] + 4);
    v132 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
    v103;
    v105 = swift_task_alloc();
    v34[49] = v105;
    *v105 = v34;
    v105[1] = sub_2381BB568;
    v100 = v22;
    v101 = 0;
LABEL_73:

    return v132(v100, v101);
  }
}

uint64_t sub_2381BA538()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2381BA64C, 0, 0);
}

uint64_t sub_2381BA64C()
{
  *(v0[17] + v0[40]) = 1;
  v2 = v0[30];
  v1 = v0[31];
  v3 = [objc_allocWithZone(sub_2381C9D0C()) init];
  v111 = v0;
  v0[43] = v3;
  sub_2381C8508(0, &qword_27DEF38D8, 0x277CCACA8);
  sub_2381CA30C();
  sub_2381C9CEC();
  if (v1 == 2)
  {
    v4 = *MEMORY[0x277CE5870];
    v5 = sub_2381CA0FC();
    v7 = v6;
    if (v5 != sub_2381CA0FC() || v7 != v8)
    {
      sub_2381CA40C();
    }

    goto LABEL_14;
  }

  v10 = *MEMORY[0x277CE5850];
  v11 = sub_2381CA0FC();
  v13 = v12;
  if (v11 == sub_2381CA0FC() && v13 == v14)
  {
    goto LABEL_14;
  }

  v16 = sub_2381CA40C();

  if (v16)
  {
LABEL_15:
    sub_2381CA30C();
    sub_2381C9CEC();
    goto LABEL_16;
  }

  v17 = *MEMORY[0x277CE5870];
  v18 = sub_2381CA0FC();
  v20 = v19;
  if (v18 == sub_2381CA0FC() && v20 == v21)
  {
    goto LABEL_14;
  }

  v103 = sub_2381CA40C();

  if (v103)
  {
    goto LABEL_15;
  }

  v104 = *MEMORY[0x277CE5878];
  v105 = sub_2381CA0FC();
  v107 = v106;
  if (v105 == sub_2381CA0FC() && v107 == v108)
  {
LABEL_14:

    goto LABEL_15;
  }

  v109 = sub_2381CA40C();

  if (v109)
  {
    goto LABEL_15;
  }

LABEL_16:
  v22 = v0;
  v23 = v0[15];
  sub_2381C9CBC();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v111[24];
    v26 = v111[25];
    v115 = v111[23];
    v27 = v111[21];
    v28 = v111[15] + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v112 = *(v25 + 72);
    v113 = (v27 + 48);
    v110 = (v27 + 8);
    v117 = v3;
    do
    {
      v29 = v22[25];
      sub_2381C4208(v28, v29, type metadata accessor for DockAccessory.Observation);
      v30 = qword_2381CCA28[*v29];
      v31 = v22[25];
      v33 = v22[19];
      v32 = v22[20];
      v34 = *(v26 + 1);
      v35 = v26[2];
      v36 = v26[3];
      v37 = v26[4];
      v38 = v26[5];
      v119.origin.x = v35;
      v119.origin.y = v36;
      v119.size.width = v37;
      v119.size.height = v38;
      CGRectGetMinX(v119);
      v120.origin.x = v35;
      v120.origin.y = v36;
      v120.size.width = v37;
      v120.size.height = v38;
      CGRectGetMinY(v120);
      v121.origin.x = v35;
      v121.origin.y = v36;
      v121.size.width = v37;
      v121.size.height = v38;
      CGRectGetHeight(v121);
      v122.origin.x = v35;
      v122.origin.y = v36;
      v122.size.width = v37;
      v122.size.height = v38;
      CGRectGetWidth(v122);
      v123.origin.x = v35;
      v123.origin.y = v36;
      v123.size.width = v37;
      v123.size.height = v38;
      CGRectGetHeight(v123);
      sub_2381A6008(v31 + *(v115 + 28), v33, &qword_27DEF3478, &qword_2381CB390);
      if ((*v113)(v33, 1, v32) == 1)
      {
        sub_2381A6070(v22[19], &qword_27DEF3478, &qword_2381CB390);
      }

      else
      {
        v39 = v22[22];
        v41 = v22[19];
        v40 = v22[20];
        v42 = [objc_opt_self() radians];
        sub_2381C98BC();

        v43 = *v110;
        (*v110)(v41, v40);
        sub_2381C98AC();
        v43(v39, v40);
        v22 = v111;
      }

      v44 = objc_allocWithZone(sub_2381C99DC());
      sub_2381C99CC();
      v3 = v117;
      v45 = sub_2381C9CAC();
      v47 = v46;
      MEMORY[0x2383EB370](v45, v46, v48, v49, v50);
      if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52 = *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2381CA1FC();
      }

      v51 = v22[25];
      sub_2381CA20C();
      v45(v111 + 2, 0);
      sub_2381C4AAC(v51, type metadata accessor for DockAccessory.Observation);
      v28 += v112;
      --v24;
    }

    while (v24);
  }

  if ((*(v22 + 409) & 1) == 0)
  {
    v53 = v22 + 37;
    v54 = v22[36];
    v55 = v22[34];
    v56 = v55;
    v57 = v111[32];
    v58 = v57;
    *&v59 = v54;
    *(&v59 + 1) = *v53;
    v114 = v59;
    v60 = v111[33];
    v61 = v111[35];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E0, &qword_2381CC8D8);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2381CB350;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38E8, &qword_2381CC8E0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2381CB350;
    *(v63 + 32) = v57.i32[0];
    *(v63 + 36) = v55.i32[0];
    v22 = v111;
    *(v63 + 40) = v54;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F0, &qword_2381CC8E8);
    *(v62 + 56) = v64;
    *(v62 + 32) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_2381CB350;
    *(v65 + 32) = vzip2_s32(v58, v56);
    *(v65 + 40) = DWORD1(v114);
    *(v62 + 88) = v64;
    *(v62 + 64) = v65;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_2381CB350;
    *(v66 + 32) = vzip1_s32(v60, v61);
    *(v66 + 40) = DWORD2(v114);
    *(v62 + 120) = v64;
    *(v62 + 96) = v66;
    v67 = objc_allocWithZone(MEMORY[0x277CBEA60]);
    v68 = sub_2381CA1CC();

    [v67 initWithArray_];

    sub_2381C9C8C();
  }

  if ((*(v22 + 410) & 1) == 0)
  {
    v69 = v22[38];
    v70 = v22[39];
    sub_2381C9CCC();
    sub_2381C9CDC();
  }

  v71 = *(v22 + 408);
  if (v71 <= 3)
  {
    if (*(v22 + 408) > 1u)
    {
      goto LABEL_39;
    }

    if (*(v22 + 408))
    {
      goto LABEL_47;
    }

    result = sub_2381C9DDC();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v71 = 0x7FFFFFFF;
    if (result <= 0x7FFFFFFF)
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  if (v71 > 5)
  {
    goto LABEL_43;
  }

  if (v71 != 4)
  {
    goto LABEL_50;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_75;
  }

  v71 = 0x7FFFFFFF;
  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_39:
  if (v71 != 2)
  {
    goto LABEL_53;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_76;
  }

  v71 = 0x7FFFFFFF;
  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_43:
  if (v71 != 6)
  {
    goto LABEL_56;
  }

  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_77;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_47:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_50:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_53:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (result <= 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_56:
  result = sub_2381C9DDC();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_82:
    __break(1u);
    return result;
  }

LABEL_58:
  v73 = v22[16];
  sub_2381C9C9C();
  v74 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v74 timeIntervalSince1970];

  sub_2381C9CFC();
  v75 = v22[17];
  if (v73)
  {
    v76 = v22[16];
    v77 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v78 = *(v75 + v77);
    v22[44] = v78;
    if (v78)
    {
      v79 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v80 = v76;
      v78;
      v81 = [v79 initWithCVPixelBuffer_];
      v22[45] = v81;
      v82 = *(MEMORY[0x277D05B88] + 4);
      v116 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
      v83 = swift_task_alloc();
      v22[46] = v83;
      *v83 = v22;
      v83[1] = sub_2381BB2DC;
      v84 = v3;
      v85 = v81;
LABEL_63:

      return v116(v84, v85);
    }
  }

  else
  {
    v86 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v87 = *(v75 + v86);
    v22[48] = v87;
    if (v87)
    {
      v88 = *(MEMORY[0x277D05B88] + 4);
      v116 = (*MEMORY[0x277D05B88] + MEMORY[0x277D05B88]);
      v87;
      v89 = swift_task_alloc();
      v22[49] = v89;
      *v89 = v22;
      v89[1] = sub_2381BB568;
      v84 = v3;
      v85 = 0;
      goto LABEL_63;
    }
  }

  v90 = v22[43];
  v91 = v22;
  v94 = v22 + 28;
  v92 = v22[28];
  v93 = v94[1];
  v95 = v91[25];
  v96 = v91[22];
  v98 = v91[18];
  v97 = v91[19];
  v99 = v91[17];
  v100 = sub_2381CA24C();
  (*(*(v100 - 8) + 56))(v98, 1, 1, v100);
  v101 = swift_allocObject();
  v101[2] = 0;
  v101[3] = 0;
  v101[4] = v99;

  sub_23819DBD4(0, 0, v98, &unk_2381CC8D0, v101);

  v102 = v91[1];

  return v102();
}

uint64_t sub_2381BB2DC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_2381BB7E8;
  }

  else
  {
    v5 = *(v2 + 352);

    v4 = sub_2381BB3FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381BB3FC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = sub_2381CA24C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_23819DBD4(0, 0, v7, &unk_2381CC8D0, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2381BB568()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v6 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_2381BBA1C;
  }

  else
  {

    v4 = sub_2381BB684;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381BB684()
{
  v1 = v0[43];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v9 = sub_2381CA24C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_23819DBD4(0, 0, v7, &unk_2381CC8D0, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2381BB7E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 128);

  v3 = *(v0 + 376);
  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 136) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 208));
  v4 = v3;
  v5 = sub_2381CA08C();
  v6 = sub_2381CA2DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23819C000, v5, v6, "caught err %@, returning public", v7, 0xCu);
    sub_2381A6070(v8, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v8, -1, -1);
    MEMORY[0x2383EBBE0](v7, -1, -1);
  }

  v11 = *(v0 + 344);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 208);
  v15 = *(v0 + 216);
  v16 = *(v0 + 200);
  v17 = *(v0 + 176);
  v21 = *(v0 + 152);
  v22 = *(v0 + 144);

  (*(v15 + 8))(v13, v14);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v3, v18);
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2381BBA1C()
{
  v1 = *(v0 + 400);
  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 136) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 208));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 344);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v19 = *(v0 + 152);
  v20 = *(v0 + 144);

  (*(v13 + 8))(v11, v12);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v1, v16);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t DockAccessory.track(_:cameraInformation:image:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  *(v3 + 105) = *(a2 + 89);
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  v9 = swift_task_alloc();
  *(v3 + 128) = v9;
  *v9 = v3;
  v9[1] = sub_2381BBD0C;

  return sub_2381B93BC(a1, (v3 + 16), a3);
}

{
  v6 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  *(v3 + 105) = *(a2 + 89);
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  v9 = swift_task_alloc();
  *(v3 + 128) = v9;
  *v9 = v3;
  v9[1] = sub_2381B9288;

  return sub_2381BBF14(a1, (v3 + 16), a3);
}

uint64_t sub_2381BBD0C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381BBE40, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2381BBF14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v7 = sub_2381CA0AC();
  *(v4 + 176) = v7;
  v8 = *(v7 - 8);
  *(v4 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  *(v4 + 200) = v10;
  *(v4 + 208) = v11;
  *(v4 + 216) = v12;
  *(v4 + 65) = *(a2 + 16);
  v13 = *(a2 + 3);
  *(v4 + 16) = *(a2 + 2);
  *(v4 + 32) = v13;
  *(v4 + 48) = *(a2 + 4);
  *(v4 + 64) = *(a2 + 80);
  *(v4 + 224) = *(a2 + 11);
  *(v4 + 66) = *(a2 + 104);

  return MEMORY[0x2822009F8](sub_2381BC058, 0, 0);
}

uint64_t sub_2381BC058()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF32C8;
  v2 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v3 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if ((v4 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v6 = *(v0 + 160);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  *(v0 + 240) = OBJC_IVAR____TtC7DockKit13DockAccessory__tracking;
  if ((*(v6 + v7) & 1) == 0)
  {
    (*(*(v0 + 184) + 16))(*(v0 + 200), v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 176));
    v8 = sub_2381CA08C();
    v9 = sub_2381CA2DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23819C000, v8, v9, "Starting tracker", v10, 2u);
      MEMORY[0x2383EBBE0](v10, -1, -1);
    }

    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);

    (*(v13 + 8))(v11, v12);
    v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v16 = *(v14 + v15);
    *(v0 + 248) = v16;
    if (v16)
    {
      v17 = *(MEMORY[0x277D05B68] + 4);
      v90 = (*MEMORY[0x277D05B68] + MEMORY[0x277D05B68]);
      v16;
      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = sub_2381BC948;

      return v90();
    }

    *(*(v0 + 160) + *(v0 + 240)) = 1;
  }

  v20 = *(v0 + 208);
  if (*(v0 + 216) != 2)
  {
    v35 = *MEMORY[0x277CE5850];
    v36 = *(v0 + 208);
    v37 = sub_2381CA0FC();
    v39 = v38;
    if (v37 == sub_2381CA0FC() && v39 == v40)
    {
    }

    else
    {
      v42 = sub_2381CA40C();

      if ((v42 & 1) == 0)
      {
        v43 = *MEMORY[0x277CE5870];
        v44 = sub_2381CA0FC();
        v46 = v45;
        if (v44 == sub_2381CA0FC() && v46 == v47)
        {
        }

        else
        {
          v83 = sub_2381CA40C();

          if ((v83 & 1) == 0)
          {
            v84 = *MEMORY[0x277CE5878];
            v85 = sub_2381CA0FC();
            v87 = v86;
            if (v85 == sub_2381CA0FC() && v87 == v88)
            {
            }

            else
            {
              v89 = sub_2381CA40C();

              if ((v89 & 1) == 0)
              {
                v34 = 0;
                goto LABEL_33;
              }
            }

            v34 = 2;
            goto LABEL_33;
          }
        }

        v34 = 3;
        goto LABEL_33;
      }
    }

    v34 = 4;
    goto LABEL_33;
  }

  v21 = *MEMORY[0x277CE5870];
  v22 = *(v0 + 208);
  v23 = sub_2381CA0FC();
  v25 = v24;
  if (v23 == sub_2381CA0FC() && v25 == v26)
  {
    goto LABEL_21;
  }

  v28 = sub_2381CA40C();

  if (v28)
  {
LABEL_22:
    v34 = 0;
    goto LABEL_33;
  }

  v29 = *MEMORY[0x277CE5878];
  v30 = sub_2381CA0FC();
  v32 = v31;
  if (v30 == sub_2381CA0FC() && v32 == v33)
  {
LABEL_21:

    goto LABEL_22;
  }

  v82 = sub_2381CA40C();

  if (v82)
  {
    goto LABEL_22;
  }

  v34 = 0;
LABEL_33:
  v48 = qword_2381CCA40[*(v0 + 65)];
  v49 = *(v0 + 66);
  v51 = *(v0 + 224);
  v50 = *(v0 + 232);
  v52 = *(v0 + 152);
  v53 = objc_allocWithZone(sub_2381C9D3C());
  v54 = sub_2381C9D2C();
  *(v0 + 264) = v54;
  v55 = *(v0 + 160);
  if (v52)
  {
    v56 = *(v0 + 152);
    v57 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v58 = *(v55 + v57);
    *(v0 + 272) = v58;
    if (v58)
    {
      v59 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v60 = v56;
      v58;
      v61 = [v59 initWithCVPixelBuffer_];
      *(v0 + 280) = v61;
      v62 = *(MEMORY[0x277D05B80] + 4);
      v91 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v63 = v54;
      v64 = swift_task_alloc();
      *(v0 + 288) = v64;
      *v64 = v0;
      v64[1] = sub_2381BD0C0;
      v65 = *(v0 + 144);
      v66 = v61;
      v67 = v34;
      v68 = v48;
      v69 = v54;
LABEL_38:

      return v91(v65, v66, v67, v68, v69);
    }
  }

  else
  {
    v70 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v71 = *(v55 + v70);
    *(v0 + 304) = v71;
    if (v71)
    {
      v72 = *(MEMORY[0x277D05B80] + 4);
      v91 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v71;
      v73 = swift_task_alloc();
      *(v0 + 312) = v73;
      *v73 = v0;
      v73[1] = sub_2381BD328;
      v65 = *(v0 + 144);
      v66 = 0;
      v67 = v34;
      v68 = v48;
      v69 = v54;
      goto LABEL_38;
    }
  }

  v74 = *(v0 + 264);
  v75 = *(v0 + 192);
  v76 = *(v0 + 200);
  v78 = *(v0 + 160);
  v77 = *(v0 + 168);
  v79 = sub_2381CA24C();
  (*(*(v79 - 8) + 56))(v77, 1, 1, v79);
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = 0;
  v80[4] = v78;

  sub_23819DBD4(0, 0, v77, &unk_2381CC8C0, v80);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_2381BC948()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2381BCA5C, 0, 0);
}

uint64_t sub_2381BCA5C()
{
  *(*(v0 + 160) + *(v0 + 240)) = 1;
  v1 = *(v0 + 208);
  if (*(v0 + 216) != 2)
  {
    v18 = *MEMORY[0x277CE5850];
    v19 = *(v0 + 208);
    v20 = sub_2381CA0FC();
    v22 = v21;
    if (v20 == sub_2381CA0FC() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_2381CA40C();

      if ((v25 & 1) == 0)
      {
        v26 = *MEMORY[0x277CE5870];
        v27 = sub_2381CA0FC();
        v29 = v28;
        if (v27 == sub_2381CA0FC() && v29 == v30)
        {
        }

        else
        {
          v32 = sub_2381CA40C();

          if ((v32 & 1) == 0)
          {
            v33 = *MEMORY[0x277CE5878];
            v34 = sub_2381CA0FC();
            v36 = v35;
            if (v34 == sub_2381CA0FC() && v36 == v37)
            {
            }

            else
            {
              v73 = sub_2381CA40C();

              if ((v73 & 1) == 0)
              {
                v17 = 0;
                goto LABEL_31;
              }
            }

            v17 = 2;
            goto LABEL_31;
          }
        }

        v17 = 3;
        goto LABEL_31;
      }
    }

    v17 = 4;
    goto LABEL_31;
  }

  v2 = *MEMORY[0x277CE5870];
  v3 = *(v0 + 208);
  v4 = sub_2381CA0FC();
  v6 = v5;
  if (v4 == sub_2381CA0FC() && v6 == v7)
  {
    goto LABEL_27;
  }

  v9 = sub_2381CA40C();

  if (v9)
  {
LABEL_28:
    v17 = 0;
    goto LABEL_31;
  }

  v10 = *MEMORY[0x277CE5878];
  v11 = sub_2381CA0FC();
  v13 = v12;
  if (v11 == sub_2381CA0FC() && v13 == v14)
  {
LABEL_27:

    goto LABEL_28;
  }

  v16 = sub_2381CA40C();

  if (v16)
  {
    goto LABEL_28;
  }

  v17 = 0;
LABEL_31:
  v38 = qword_2381CCA40[*(v0 + 65)];
  v39 = *(v0 + 66);
  v41 = *(v0 + 224);
  v40 = *(v0 + 232);
  v42 = *(v0 + 152);
  v43 = objc_allocWithZone(sub_2381C9D3C());
  v44 = sub_2381C9D2C();
  *(v0 + 264) = v44;
  v45 = *(v0 + 160);
  if (v42)
  {
    v46 = *(v0 + 152);
    v47 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v48 = *(v45 + v47);
    *(v0 + 272) = v48;
    if (v48)
    {
      v49 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v50 = v46;
      v48;
      v51 = [v49 initWithCVPixelBuffer_];
      *(v0 + 280) = v51;
      v52 = *(MEMORY[0x277D05B80] + 4);
      v74 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v53 = v44;
      v54 = swift_task_alloc();
      *(v0 + 288) = v54;
      *v54 = v0;
      v54[1] = sub_2381BD0C0;
      v55 = *(v0 + 144);
      v56 = v51;
      v57 = v17;
      v58 = v38;
      v59 = v44;
LABEL_36:

      return v74(v55, v56, v57, v58, v59);
    }
  }

  else
  {
    v60 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    v61 = *(v45 + v60);
    *(v0 + 304) = v61;
    if (v61)
    {
      v62 = *(MEMORY[0x277D05B80] + 4);
      v74 = (*MEMORY[0x277D05B80] + MEMORY[0x277D05B80]);
      v61;
      v63 = swift_task_alloc();
      *(v0 + 312) = v63;
      *v63 = v0;
      v63[1] = sub_2381BD328;
      v55 = *(v0 + 144);
      v56 = 0;
      v57 = v17;
      v58 = v38;
      v59 = v44;
      goto LABEL_36;
    }
  }

  v65 = *(v0 + 264);
  v66 = *(v0 + 192);
  v67 = *(v0 + 200);
  v69 = *(v0 + 160);
  v68 = *(v0 + 168);
  v70 = sub_2381CA24C();
  (*(*(v70 - 8) + 56))(v68, 1, 1, v70);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v69;

  sub_23819DBD4(0, 0, v68, &unk_2381CC8C0, v71);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_2381BD0C0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_2381BD574;
  }

  else
  {
    v6 = *(v2 + 272);
    v5 = *(v2 + 280);

    v4 = sub_2381BD1F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381BD1F0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = sub_2381CA24C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_23819DBD4(0, 0, v4, &unk_2381CC8C0, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2381BD328()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_2381BD78C;
  }

  else
  {

    v4 = sub_2381BD444;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381BD444()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v6 = sub_2381CA24C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_23819DBD4(0, 0, v4, &unk_2381CC8C0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2381BD574()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 152);

  v4 = *(v0 + 296);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 160) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 176));
  v5 = v4;
  v6 = sub_2381CA08C();
  v7 = sub_2381CA2DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23819C000, v6, v7, "caught err %@, returning public", v8, 0xCu);
    sub_2381A6070(v9, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v9, -1, -1);
    MEMORY[0x2383EBBE0](v8, -1, -1);
  }

  v12 = *(v0 + 264);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = *(v0 + 176);
  v16 = *(v0 + 184);
  v17 = *(v0 + 168);

  (*(v16 + 8))(v14, v15);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v4, v18);
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2381BD78C()
{
  v1 = *(v0 + 320);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 160) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 176));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_23819C000, v3, v4, "caught err %@, returning public", v5, 0xCu);
    sub_2381A6070(v6, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v6, -1, -1);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v9 = *(v0 + 264);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 168);

  (*(v13 + 8))(v11, v12);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v1, v15);
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t DockAccessory.selectSubject(at:)(double a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v4 = sub_2381C9C7C();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_2381CA0AC();
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381BDB84, 0, 0);
}

uint64_t sub_2381BDB84()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    sub_2381A319C();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    v35 = *(v0 + 120);
    v34 = *(v0 + 128);
    v36 = *(v0 + 96);

    v37 = *(v0 + 8);
LABEL_18:

    return v37();
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 136) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v8 = *(v5 + 16);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = swift_slowAlloc();
    *v13 = 134349312;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2050;
    *(v13 + 14) = v11;
    _os_log_impl(&dword_23819C000, v9, v10, "API: selectSubject: %{public}f, %{public}f", v13, 0x16u);
    MEMORY[0x2383EBBE0](v13, -1, -1);
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);

  v20 = *(v16 + 8);
  *(v0 + 160) = v20;
  *(v0 + 168) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v14, v15);
  *(v0 + 176) = [objc_allocWithZone(sub_2381C9ADC()) init];
  (*(v18 + 104))(v17, *MEMORY[0x277D05BA0], v19);
  *(v0 + 248) = sub_2381C9C6C();
  (*(v18 + 8))(v17, v19);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v21 = qword_27DEF32C8;
  v22 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  *(v0 + 184) = qword_27DEF32C8;
  *(v0 + 192) = v22;
  v23 = *(v21 + v22);

  os_unfair_lock_lock(v23 + 4);

  v24 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  *(v0 + 200) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  v25 = *(v21 + v24);
  v26 = *(v21 + v22);

  os_unfair_lock_unlock(v26 + 4);

  if (v25 == 1)
  {
    v27 = *(v1 + v2);
    *(v0 + 208) = v27;
    if (v27)
    {
      v28 = *(MEMORY[0x277D05B70] + 4);
      v51 = (*MEMORY[0x277D05B70] + MEMORY[0x277D05B70]);
      v27;
      v29 = swift_task_alloc();
      *(v0 + 216) = v29;
      *v29 = v0;
      v29[1] = sub_2381BE034;
      v30.n128_u64[0] = *(v0 + 56);
      v31.n128_u64[0] = *(v0 + 64);

      return v51(v30, v31);
    }

    v43 = *(v0 + 192);
    v42 = *(v0 + 200);
    v44 = *(v0 + 184);
    v45 = *(v44 + v43);

    os_unfair_lock_lock(v45 + 4);

    LODWORD(v42) = *(v44 + v42);
    v46 = *(v44 + v43);

    os_unfair_lock_unlock(v46 + 4);

    if (v42 == 1)
    {
      v47 = *(v0 + 176);
      MEMORY[0x2383EAC30](*(v0 + 248), 0);
    }

    v48 = *(v0 + 120);
    v49 = *(v0 + 128);
    v50 = *(v0 + 96);

    v37 = *(v0 + 8);
    goto LABEL_18;
  }

  v38 = *(MEMORY[0x277D05B08] + 4);
  v39 = swift_task_alloc();
  *(v0 + 232) = v39;
  *v39 = v0;
  v39[1] = sub_2381BE238;
  v40.n128_u64[0] = *(v0 + 56);
  v41.n128_u64[0] = *(v0 + 64);

  return MEMORY[0x28215B1A8](v40, v41);
}

uint64_t sub_2381BE034()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_2381BE34C;
  }

  else
  {

    v4 = sub_2381BE150;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381BE150()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v3 + v2);

  os_unfair_lock_lock(v4 + 4);

  LODWORD(v1) = *(v3 + v1);
  v5 = *(v3 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if (v1 == 1)
  {
    v6 = *(v0 + 176);
    MEMORY[0x2383EAC30](*(v0 + 248), 0);
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 96);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2381BE238()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2381BE668;
  }

  else
  {
    v3 = sub_2381C98A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BE34C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 72) + *(v0 + 136), *(v0 + 104));
  v3 = v1;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v4, v5, "caught err %@, returning public", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);

  v11(v12, v13);
  sub_2381A319C();
  v14 = swift_allocError();
  sub_23819FD88(v1, v15);

  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v18 + v17);

  os_unfair_lock_lock(v19 + 4);

  LOBYTE(v16) = *(v18 + v16);
  v20 = *(v18 + v17);

  os_unfair_lock_unlock(v20 + 4);

  if (v16)
  {
    if (v14)
    {
      *(v0 + 40) = v14;
      v21 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      v22 = swift_dynamicCast();
      v23 = *(v0 + 48);
      if (v22)
      {
        v24 = *(v0 + 48);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v0 + 176);
    MEMORY[0x2383EAC30](*(v0 + 248), v24);
  }

  v26 = *(v0 + 176);
  if (v14)
  {
    swift_allocError();
    sub_23819FD88(v14, v27);
    swift_willThrow();

    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 96);
  }

  else
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = *(v0 + 96);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2381BE668()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 72) + *(v0 + 136), *(v0 + 104));
  v3 = v1;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v4, v5, "caught err %@, returning public", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);

  v11(v12, v13);
  sub_2381A319C();
  v14 = swift_allocError();
  sub_23819FD88(v1, v15);

  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v18 + v17);

  os_unfair_lock_lock(v19 + 4);

  LOBYTE(v16) = *(v18 + v16);
  v20 = *(v18 + v17);

  os_unfair_lock_unlock(v20 + 4);

  if (v16)
  {
    if (v14)
    {
      *(v0 + 40) = v14;
      v21 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      v22 = swift_dynamicCast();
      v23 = *(v0 + 48);
      if (v22)
      {
        v24 = *(v0 + 48);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v0 + 176);
    MEMORY[0x2383EAC30](*(v0 + 248), v24);
  }

  v26 = *(v0 + 176);
  if (v14)
  {
    swift_allocError();
    sub_23819FD88(v14, v27);
    swift_willThrow();

    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 96);
  }

  else
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = *(v0 + 96);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t DockAccessory.selectSubjects(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2381C99BC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_2381C9C7C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_2381CA0AC();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381BEB00, 0, 0);
}

uint64_t sub_2381BEB00()
{
  v76 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    *(v0 + 152) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    v9 = *(v5 + 16);
    *(v0 + 160) = v9;
    *(v0 + 168) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v6 + v8, v4);

    v10 = sub_2381CA08C();
    v11 = sub_2381CA2BC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    if (v12)
    {
      v73 = *(v0 + 120);
      v16 = *(v0 + 72);
      v17 = *(v0 + 56);
      v71 = *(v0 + 144);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v75 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x2383EB3A0](v17, v16);
      v22 = sub_2381C3094(v20, v21, &v75);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_23819C000, v10, v11, "API: selectSubjects: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x2383EBBE0](v19, -1, -1);
      MEMORY[0x2383EBBE0](v18, -1, -1);

      v23 = *(v14 + 8);
      v23(v71, v73);
    }

    else
    {

      v23 = *(v14 + 8);
      v23(v13, v15);
    }

    *(v0 + 176) = v23;
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 96);
    *(v0 + 184) = [objc_allocWithZone(sub_2381C9ADC()) init];
    (*(v31 + 104))(v30, *MEMORY[0x277D05BA0], v32);
    *(v0 + 248) = sub_2381C9C6C();
    (*(v31 + 8))(v30, v32);
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v33 = qword_27DEF32C8;
    v34 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    *(v0 + 192) = qword_27DEF32C8;
    *(v0 + 200) = v34;
    v35 = *(v33 + v34);

    os_unfair_lock_lock(v35 + 4);

    v36 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
    *(v0 + 208) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
    v37 = *(v33 + v36);
    v38 = *(v33 + v34);

    os_unfair_lock_unlock(v38 + 4);

    if (v37 == 1)
    {
      v39 = *(v1 + v2);
      if (v39)
      {
        v40 = *(v0 + 56);
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = *(v0 + 80);
          v75 = MEMORY[0x277D84F90];
          v69 = v39;
          sub_2381C365C(0, v41, 0);
          v43 = v75;
          v44 = *(v42 + 16);
          v42 += 16;
          v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
          v70 = *(v42 + 56);
          v72 = v44;
          v46 = (v42 - 8);
          do
          {
            v47 = *(v0 + 88);
            v48 = *(v0 + 72);
            v72(v47, v45, v48);
            v49 = sub_2381C999C();
            v51 = v50;
            (*v46)(v47, v48);
            v75 = v43;
            v53 = *(v43 + 16);
            v52 = *(v43 + 24);
            if (v53 >= v52 >> 1)
            {
              sub_2381C365C((v52 > 1), v53 + 1, 1);
              v43 = v75;
            }

            *(v43 + 16) = v53 + 1;
            v54 = v43 + 16 * v53;
            *(v54 + 32) = v49;
            *(v54 + 40) = v51;
            v45 += v70;
            --v41;
          }

          while (v41);
          v66 = v69;
        }

        else
        {
          v66 = v39;
          v43 = MEMORY[0x277D84F90];
        }

        *(v0 + 216) = v66;
        *(v0 + 224) = v43;
        v67 = *(MEMORY[0x277D05B78] + 4);
        v74 = (*MEMORY[0x277D05B78] + MEMORY[0x277D05B78]);
        v68 = swift_task_alloc();
        *(v0 + 232) = v68;
        *v68 = v0;
        v68[1] = sub_2381BF09C;

        return v74(v43);
      }
    }

    v56 = *(v0 + 200);
    v55 = *(v0 + 208);
    v57 = *(v0 + 192);
    v58 = *(v57 + v56);

    os_unfair_lock_lock(v58 + 4);

    LODWORD(v55) = *(v57 + v55);
    v59 = *(v57 + v56);

    os_unfair_lock_unlock(v59 + 4);

    if (v55 == 1)
    {
      v60 = *(v0 + 184);
      MEMORY[0x2383EAC30](*(v0 + 248), 0);
    }

    v61 = *(v0 + 136);
    v62 = *(v0 + 144);
    v63 = *(v0 + 112);
    v64 = *(v0 + 88);

    v29 = *(v0 + 8);
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 112);
    v28 = *(v0 + 88);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_2381BF09C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_2381BF2B0;
  }

  else
  {
    v6 = *(v2 + 216);
    v5 = *(v2 + 224);

    v4 = sub_2381BF1BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381BF1BC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v3 + v2);

  os_unfair_lock_lock(v4 + 4);

  LODWORD(v1) = *(v3 + v1);
  v5 = *(v3 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if (v1 == 1)
  {
    v6 = *(v0 + 184);
    MEMORY[0x2383EAC30](*(v0 + 248), 0);
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2381BF2B0()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v5(v7, v9 + v6, v8);
  v10 = v1;
  v11 = sub_2381CA08C();
  v12 = sub_2381CA2DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 240);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_23819C000, v11, v12, "caught err %@, returning public", v14, 0xCu);
    sub_2381A6070(v15, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v15, -1, -1);
    MEMORY[0x2383EBBE0](v14, -1, -1);
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 176);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 120);

  v19(v20, v22);
  sub_2381A319C();
  v23 = swift_allocError();
  sub_23819FD88(v18, v24);

  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  v27 = *(v0 + 192);
  v28 = *(v27 + v26);

  os_unfair_lock_lock(v28 + 4);

  LOBYTE(v25) = *(v27 + v25);
  v29 = *(v27 + v26);

  os_unfair_lock_unlock(v29 + 4);

  if (v25)
  {
    if (v23)
    {
      *(v0 + 40) = v23;
      v30 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      v31 = swift_dynamicCast();
      v32 = *(v0 + 48);
      if (v31)
      {
        v33 = *(v0 + 48);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = *(v0 + 184);
    MEMORY[0x2383EAC30](*(v0 + 248), v33);
  }

  v35 = *(v0 + 184);
  if (v23)
  {
    swift_allocError();
    sub_23819FD88(v23, v36);
    swift_willThrow();

    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v39 = *(v0 + 112);
    v40 = *(v0 + 88);
  }

  else
  {
    v42 = *(v0 + 136);
    v43 = *(v0 + 144);
    v44 = *(v0 + 112);
    v45 = *(v0 + 88);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t DockAccessory.setFramingMode(_:)(_BYTE *a1)
{
  *(v2 + 56) = v1;
  v4 = sub_2381C9C7C();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v7 = sub_2381CA0AC();
  *(v2 + 88) = v7;
  v8 = *(v7 - 8);
  *(v2 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 201) = *a1;

  return MEMORY[0x2822009F8](sub_2381BF73C, 0, 0);
}

uint64_t sub_2381BF73C()
{
  v61 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    sub_2381A319C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 80);

    v24 = *(v0 + 8);
LABEL_17:

    return v24();
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 56);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 120) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v8 = *(v5 + 16);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v1;
    v12 = *(v0 + 201);
    v13 = *(v0 + 96);
    v58 = *(v0 + 88);
    v59 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v60 = v15;
    *v14 = 136446210;
    *(v0 + 200) = v12;
    v16 = sub_2381CA10C();
    v18 = sub_2381C3094(v16, v17, &v60);
    v1 = v11;

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23819C000, v9, v10, "API: setFramingMode: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383EBBE0](v15, -1, -1);
    MEMORY[0x2383EBBE0](v14, -1, -1);

    v19 = *(v13 + 8);
    v19(v59, v58);
  }

  else
  {
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);

    v19 = *(v27 + 8);
    v19(v25, v26);
  }

  *(v0 + 144) = v19;
  v28 = *(v0 + 201);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 64);
  *(v0 + 152) = [objc_allocWithZone(sub_2381C9ADC()) init];
  (*(v30 + 104))(v29, *MEMORY[0x277D05B98], v31);
  *(v0 + 202) = sub_2381C9C6C();
  (*(v30 + 8))(v29, v31);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v32 = qword_27DEF32C8;
  v33 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  *(v0 + 160) = qword_27DEF32C8;
  *(v0 + 168) = v33;
  v34 = *(v32 + v33);

  os_unfair_lock_lock(v34 + 4);

  v35 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  *(v0 + 176) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  v36 = *(v32 + v35);
  v37 = *(v32 + v33);

  os_unfair_lock_unlock(v37 + 4);

  if (v36 == 1)
  {
    v38 = *(v1 + v2);
    if (v38)
    {
      v39 = v38;
      sub_2381C9C0C();
    }

    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v42 = *(v0 + 160);
    v43 = *(v42 + v41);

    os_unfair_lock_lock(v43 + 4);

    LODWORD(v40) = *(v42 + v40);
    v44 = *(v42 + v41);

    os_unfair_lock_unlock(v44 + 4);

    if (v40 == 1)
    {
      v45 = *(v0 + 152);
      MEMORY[0x2383EAC30](*(v0 + 202), 0);
    }

    v46 = *(v0 + 201);
    v47 = *(v0 + 56);
    v48 = *(v47 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);
    v49 = swift_task_alloc();
    *(v49 + 16) = v47;
    *(v49 + 24) = v46;
    v50 = swift_task_alloc();
    *(v50 + 16) = sub_2381C4ED0;
    *(v50 + 24) = v49;

    os_unfair_lock_lock(v48 + 4);
    sub_2381C4EE8(v51);
    os_unfair_lock_unlock(v48 + 4);
    v55 = *(v0 + 104);
    v54 = *(v0 + 112);
    v56 = *(v0 + 80);

    v24 = *(v0 + 8);
    goto LABEL_17;
  }

  v52 = *(MEMORY[0x277D05B10] + 4);
  v53 = swift_task_alloc();
  *(v0 + 184) = v53;
  *v53 = v0;
  v53[1] = sub_2381BFC7C;

  return MEMORY[0x28215B1C0](v28);
}

uint64_t sub_2381BFC7C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_2381BFF3C;
  }

  else
  {
    v3 = sub_2381BFD90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381BFD90()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v4 + v3);

  os_unfair_lock_lock(v5 + 4);

  LODWORD(v2) = *(v4 + v2);
  v6 = *(v4 + v3);

  os_unfair_lock_unlock(v6 + 4);

  if (v2 == 1)
  {
    v7 = *(v0 + 152);
    MEMORY[0x2383EAC30](*(v0 + 202), 0);
  }

  v8 = *(v0 + 201);
  v9 = *(v0 + 56);
  v10 = *(v9 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v12 = swift_task_alloc();
  *(v12 + 16) = sub_2381C4ED0;
  *(v12 + 24) = v11;

  os_unfair_lock_lock(v10 + 4);
  sub_2381C4EE8(v13);
  os_unfair_lock_unlock(v10 + 4);
  if (v1)
  {
  }

  else
  {
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2381BFF3C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 56) + *(v0 + 120), *(v0 + 88));
  v3 = v1;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23819C000, v4, v5, "caught err %@, returning public", v7, 0xCu);
    sub_2381A6070(v8, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v8, -1, -1);
    MEMORY[0x2383EBBE0](v7, -1, -1);
  }

  v11 = *(v0 + 192);
  v12 = *(v0 + 144);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 88);

  v12(v13, v15);
  sub_2381A319C();
  v16 = swift_allocError();
  sub_23819FD88(v11, v17);

  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v20 + v19);

  os_unfair_lock_lock(v21 + 4);

  LOBYTE(v18) = *(v20 + v18);
  v22 = *(v20 + v19);

  os_unfair_lock_unlock(v22 + 4);

  if (v18)
  {
    if (v16)
    {
      *(v0 + 40) = v16;
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      v24 = swift_dynamicCast();
      v25 = *(v0 + 48);
      if (v24)
      {
        v26 = *(v0 + 48);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v0 + 152);
    MEMORY[0x2383EAC30](*(v0 + 202), v26);
  }

  if (v16)
  {
    v28 = *(v0 + 152);
    swift_allocError();
    sub_23819FD88(v16, v29);
    swift_willThrow();

    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 80);
  }

  else
  {
    v35 = *(v0 + 201);
    v36 = *(v0 + 56);
    v37 = *(v36 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);
    v38 = swift_task_alloc();
    *(v38 + 16) = v36;
    *(v38 + 24) = v35;
    v39 = swift_task_alloc();
    *(v39 + 16) = sub_2381C4ED0;
    *(v39 + 24) = v38;

    os_unfair_lock_lock(v37 + 4);
    sub_2381C4EE8(v40);
    os_unfair_lock_unlock(v37 + 4);
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 80);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t DockAccessory.setRegionOfInterest(_:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 88) = v4;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_2381C9C7C();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = sub_2381CA0AC();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381C044C, 0, 0);
}

uint64_t sub_2381C044C()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    sub_2381A319C();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    v49 = *(v0 + 136);
    v48 = *(v0 + 144);
    v50 = *(v0 + 112);

    v51 = *(v0 + 8);
LABEL_16:

    return v51();
  }

  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 152) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v8 = *(v5 + 16);
  *(v0 + 160) = v8;
  *(v0 + 168) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6 + v7, v4);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = swift_slowAlloc();
    *v15 = 134349824;
    *(v15 + 4) = v14;
    *(v15 + 12) = 2050;
    *(v15 + 14) = v13;
    *(v15 + 22) = 2050;
    *(v15 + 24) = v12;
    *(v15 + 32) = 2050;
    *(v15 + 34) = v11;
    _os_log_impl(&dword_23819C000, v9, v10, "API: setRegionOfInterest: %{public}f, %{public}f, %{public}f, %{public}f", v15, 0x2Au);
    MEMORY[0x2383EBBE0](v15, -1, -1);
  }

  v16 = *(v0 + 144);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);

  v22 = *(v18 + 8);
  *(v0 + 176) = v22;
  *(v0 + 184) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v16, v17);
  *(v0 + 192) = [objc_allocWithZone(sub_2381C9ADC()) init];
  (*(v20 + 104))(v19, *MEMORY[0x277D05BA8], v21);
  *(v0 + 240) = sub_2381C9C6C();
  (*(v20 + 8))(v19, v21);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v23 = qword_27DEF32C8;
  v24 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  *(v0 + 200) = qword_27DEF32C8;
  *(v0 + 208) = v24;
  v25 = *(v23 + v24);

  os_unfair_lock_lock(v25 + 4);

  v26 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  *(v0 + 216) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled;
  v27 = *(v23 + v26);
  v28 = *(v23 + v24);

  os_unfair_lock_unlock(v28 + 4);

  if (v27 == 1)
  {
    v29 = *(v1 + v2);
    if (v29)
    {
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);
      v33 = *(v0 + 56);
      v32 = *(v0 + 64);
      v34 = v29;
      sub_2381C9BFC();
    }

    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 200);
    v45 = *(v44 + v43);

    os_unfair_lock_lock(v45 + 4);

    LODWORD(v42) = *(v44 + v42);
    v46 = *(v44 + v43);

    os_unfair_lock_unlock(v46 + 4);

    if (v42 == 1)
    {
      v47 = *(v0 + 192);
      MEMORY[0x2383EAC30](*(v0 + 240), 0);
    }

    v52 = *(v0 + 88);
    v53 = *(v52 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);
    v54 = swift_task_alloc();
    v55 = *(v0 + 56);
    v56 = *(v0 + 72);
    *(v54 + 16) = v52;
    *(v54 + 40) = v56;
    *(v54 + 24) = v55;
    v57 = swift_task_alloc();
    *(v57 + 16) = sub_2381C4F04;
    *(v57 + 24) = v54;

    os_unfair_lock_lock(v53 + 4);
    sub_2381C9884(v58);
    os_unfair_lock_unlock(v53 + 4);
    v60 = *(v0 + 136);
    v59 = *(v0 + 144);
    v61 = *(v0 + 112);

    v51 = *(v0 + 8);
    goto LABEL_16;
  }

  v36 = *(MEMORY[0x277D05B18] + 4);
  v37 = swift_task_alloc();
  *(v0 + 224) = v37;
  *v37 = v0;
  v37[1] = sub_2381C0B78;
  v38.n128_u64[0] = *(v0 + 72);
  v39.n128_u64[0] = *(v0 + 80);
  v40.n128_u64[0] = *(v0 + 56);
  v41.n128_u64[0] = *(v0 + 64);

  return MEMORY[0x28215B1D0](v40, v41, v38, v39);
}

uint64_t sub_2381C0B78()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2381C0E40;
  }

  else
  {
    v3 = sub_2381C0C8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2381C0C8C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v4 + v3);

  os_unfair_lock_lock(v5 + 4);

  LODWORD(v2) = *(v4 + v2);
  v6 = *(v4 + v3);

  os_unfair_lock_unlock(v6 + 4);

  if (v2 == 1)
  {
    v7 = *(v0 + 192);
    MEMORY[0x2383EAC30](*(v0 + 240), 0);
  }

  v8 = *(v0 + 88);
  v9 = *(v8 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);
  v10 = swift_task_alloc();
  v11 = *(v0 + 56);
  v12 = *(v0 + 72);
  *(v10 + 16) = v8;
  *(v10 + 40) = v12;
  *(v10 + 24) = v11;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_2381C4F04;
  *(v13 + 24) = v10;

  os_unfair_lock_lock(v9 + 4);
  sub_2381C9884(v14);
  os_unfair_lock_unlock(v9 + 4);
  if (v1)
  {
  }

  else
  {
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = *(v0 + 112);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2381C0E40()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 136), *(v0 + 88) + *(v0 + 152), *(v0 + 120));
  v3 = v1;
  v4 = sub_2381CA08C();
  v5 = sub_2381CA2DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v4, v5, "caught err %@, returning public", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);

  v11(v12, v13);
  sub_2381A319C();
  v14 = swift_allocError();
  sub_23819FD88(v1, v15);

  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 200);
  v19 = *(v18 + v17);

  os_unfair_lock_lock(v19 + 4);

  LOBYTE(v16) = *(v18 + v16);
  v20 = *(v18 + v17);

  os_unfair_lock_unlock(v20 + 4);

  if (v16)
  {
    if (v14)
    {
      *(v0 + 40) = v14;
      v21 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
      sub_2381C8508(0, &qword_27DEF35E0, 0x277CCA9B8);
      v22 = swift_dynamicCast();
      v23 = *(v0 + 48);
      if (v22)
      {
        v24 = *(v0 + 48);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v0 + 192);
    MEMORY[0x2383EAC30](*(v0 + 240), v24);
  }

  if (v14)
  {
    v26 = *(v0 + 192);
    swift_allocError();
    sub_23819FD88(v14, v27);
    swift_willThrow();

    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 112);
  }

  else
  {
    v33 = *(v0 + 88);
    v34 = *(v33 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);
    v35 = swift_task_alloc();
    v36 = *(v0 + 56);
    v37 = *(v0 + 72);
    *(v35 + 16) = v33;
    *(v35 + 40) = v37;
    *(v35 + 24) = v36;
    v38 = swift_task_alloc();
    *(v38 + 16) = sub_2381C4F04;
    *(v38 + 24) = v35;

    os_unfair_lock_lock(v34 + 4);
    sub_2381C9884(v39);
    os_unfair_lock_unlock(v34 + 4);
    v41 = *(v0 + 136);
    v40 = *(v0 + 144);
    v42 = *(v0 + 112);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t DockAccessory.animate(motion:)(_BYTE *a1)
{
  *(v2 + 88) = v1;
  v4 = sub_2381C9DCC();
  *(v2 + 96) = v4;
  v5 = *(v4 - 8);
  *(v2 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v7 = sub_2381CA0AC();
  *(v2 + 120) = v7;
  v8 = *(v7 - 8);
  *(v2 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v10 = sub_2381C998C();
  *(v2 + 168) = v10;
  v11 = *(v10 - 8);
  *(v2 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 297) = *a1;

  return MEMORY[0x2822009F8](sub_2381C13BC, 0, 0);
}

uint64_t sub_2381C13BC()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF32C8;
  v2 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v3 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if ((v4 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v6 = v0[11];
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock;
  v0[24] = OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock;
  v0[25] = *(v6 + v7);
  v8 = *(MEMORY[0x277D213A0] + 4);
  v11 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_2381C1574;

  return v11();
}

uint64_t sub_2381C1574()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2381C168C, 0, 0);
}

uint64_t sub_2381C168C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastAnimateCommandTime;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  sub_2381C995C();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = v0[11];
  if (fabs(v7) >= 1.0 / *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxAnimateFrequency))
  {
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[22];
    sub_2381C997C();
    swift_beginAccess();
    (*(v24 + 40))(v4 + v5, v21, v23);
    swift_endAccess();
    v0[28] = *(v8 + v22);
    sub_2381CA07C();
    sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8]);

    v17 = sub_2381CA21C();
    v19 = v25;
    v20 = sub_2381C1AC0;
  }

  else
  {
    (*(v0[16] + 16))(v0[20], v8 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[15]);
    v9 = sub_2381CA08C();
    v10 = sub_2381CA2BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23819C000, v9, v10, "rate limiting animate", v11, 2u);
      MEMORY[0x2383EBBE0](v11, -1, -1);
    }

    v12 = v0[24];
    v13 = v0[20];
    v14 = v0[15];
    v15 = v0[16];
    v16 = v0[11];

    (*(v15 + 8))(v13, v14);
    v0[27] = *(v16 + v12);
    sub_2381CA07C();
    sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8]);

    v17 = sub_2381CA21C();
    v19 = v18;
    v20 = sub_2381C1974;
  }

  return MEMORY[0x2822009F8](v20, v17, v19);
}

uint64_t sub_2381C1974()
{
  v1 = *(v0 + 216);
  sub_2381CA05C();

  return MEMORY[0x2822009F8](sub_2381C19E4, 0, 0);
}

uint64_t sub_2381C19E4()
{
  sub_2381A319C();
  swift_allocError();
  *v1 = 7;
  swift_willThrow();
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2381C1AC0()
{
  v1 = *(v0 + 224);
  sub_2381CA05C();

  return MEMORY[0x2822009F8](sub_2381C1B30, 0, 0);
}

uint64_t sub_2381C1B30()
{
  v48 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 88);
    v6 = v3;
    v7 = sub_2381C9C2C();

    v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    *(v0 + 232) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
    v9 = *(v4 + 16);
    *(v0 + 240) = v9;
    *(v0 + 248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10 = *(v0 + 120);
    if (v7)
    {
      v9(*(v0 + 144), v5 + v8, v10);
      v11 = sub_2381CA08C();
      v12 = sub_2381CA2BC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 297);
        v14 = *(v0 + 128);
        v44 = *(v0 + 120);
        v45 = *(v0 + 144);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v47 = v16;
        *v15 = 136446210;
        *(v0 + 296) = v13;
        v17 = sub_2381CA10C();
        v19 = sub_2381C3094(v17, v18, &v47);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23819C000, v11, v12, "API: animate: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x2383EBBE0](v16, -1, -1);
        MEMORY[0x2383EBBE0](v15, -1, -1);

        v20 = *(v14 + 8);
        v20(v45, v44);
      }

      else
      {
        v37 = *(v0 + 144);
        v38 = *(v0 + 120);
        v39 = *(v0 + 128);

        v20 = *(v39 + 8);
        v20(v37, v38);
      }

      *(v0 + 256) = v20;
      result = (*(*(v0 + 104) + 104))(*(v0 + 112), **(&unk_278A49C20 + *(v0 + 297)), *(v0 + 96));
      v40 = *(v1 + v2);
      *(v0 + 264) = v40;
      if (v40)
      {
        v41 = *(MEMORY[0x277D05B90] + 4);
        v46 = (*MEMORY[0x277D05B90] + MEMORY[0x277D05B90]);
        v40;
        v42 = swift_task_alloc();
        *(v0 + 272) = v42;
        *v42 = v0;
        v42[1] = sub_2381C1F3C;
        v43 = *(v0 + 112);

        return v46(v43);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v9(*(v0 + 152), v5 + v8, v10);
    v22 = sub_2381CA08C();
    v23 = sub_2381CA2DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23819C000, v22, v23, "Tracking button off, motors disabled", v24, 2u);
      MEMORY[0x2383EBBE0](v24, -1, -1);
    }

    v25 = *(v0 + 152);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);

    (*(v27 + 8))(v25, v26);
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  sub_2381A319C();
  swift_allocError();
  *v28 = v21;
  swift_willThrow();
  v29 = *(v0 + 184);
  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v34 = *(v0 + 112);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2381C1F3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = v1;

  if (v1)
  {
    v7 = sub_2381C2148;
  }

  else
  {
    *(v4 + 288) = a1;
    v7 = sub_2381C2080;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2381C2080()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];
  v7 = v0[36];

  return v6(v7);
}

uint64_t sub_2381C2148()
{
  v1 = v0[35];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v3(v5, v7 + v4, v6);
  v8 = v1;
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[35];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23819C000, v9, v10, "caught err %@, returning public", v12, 0xCu);
    sub_2381A6070(v13, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v13, -1, -1);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  v16 = v0[35];
  v17 = v0[32];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[15];

  v17(v18, v20);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v16, v21);
  swift_willThrow();

  v22 = v0[23];
  v24 = v0[19];
  v23 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[14];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2381C236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_2381CA0AC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = sub_2381C998C();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381C24CC, 0, 0);
}

uint64_t sub_2381C24CC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock;
  v0[20] = OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock;
  v0[21] = *(v1 + v2);
  v3 = *(MEMORY[0x277D21398] + 4);
  v6 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_2381C2594;

  return v6();
}

uint64_t sub_2381C2594(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_2381C26B4, 0, 0);
}

uint64_t sub_2381C26B4()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 88);
    sub_2381C996C();
    v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_lastSummaryPublishTime;
    swift_beginAccess();
    (*(v4 + 16))(v1, v5 + v6, v3);
    sub_2381C994C();
    v8 = v7;
    v9 = *(v4 + 8);
    v9(v1, v3);
    v9(v2, v3);
    if (v8 > 0.05)
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      v13 = *(v0 + 88);
      sub_2381C996C();
      swift_beginAccess();
      (*(v12 + 40))(v5 + v6, v10, v11);
      swift_endAccess();
      v14 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
      swift_beginAccess();
      v15 = *(v13 + v14);
      if (!v15)
      {
LABEL_8:
        (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 88) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 96));
        v19 = sub_2381CA08C();
        v20 = sub_2381CA2DC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_23819C000, v19, v20, "no summary", v21, 2u);
          MEMORY[0x2383EBBE0](v21, -1, -1);
        }

        v22 = *(v0 + 160);
        v24 = *(v0 + 104);
        v23 = *(v0 + 112);
        v26 = *(v0 + 88);
        v25 = *(v0 + 96);

        (*(v24 + 8))(v23, v25);
        *(v0 + 184) = *(v26 + v22);
        sub_2381CA07C();
        sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8]);

        v27 = sub_2381CA21C();
        v29 = v28;
        v30 = sub_2381C2C20;
        goto LABEL_22;
      }

      v16 = v15;
      if (!sub_2381C9BCC())
      {
LABEL_7:

        goto LABEL_8;
      }

      v17 = sub_2381C9FAC();
      if (v18 >> 60 == 15)
      {

        goto LABEL_7;
      }

      v37 = v17;
      v38 = v18;
      v39 = *(*(v0 + 88) + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
      if (v39)
      {
        v40 = v16;
        v41 = v39;
        v42 = sub_2381C9B0C();

        v43 = sub_2381C991C();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          v45 = swift_unknownObjectWeakLoadStrong();
          if (!v45)
          {
            __break(1u);
            return MEMORY[0x2822009F8](v45, v46, v47);
          }

          v48 = v45;
          v49 = sub_2381C9B0C();

          sub_2381C9A2C();
          LOBYTE(v48) = sub_2381CA2FC();

          if (v48)
          {
            v50 = *(v0 + 120);
            v51 = sub_2381C992C();
            v57 = v52;
            v58 = v51;
            v53 = sub_2381CA24C();
            (*(*(v53 - 8) + 56))(v50, 1, 1, v53);
            v54 = swift_allocObject();
            v54[2] = 0;
            v54[3] = 0;
            v54[4] = v41;
            v54[5] = v58;
            v54[6] = v57;
            v55 = v41;
            sub_23819DED4(0, 0, v50, &unk_2381CC8C8, v54);
          }
        }

        sub_2381C84F4(v37, v38);
      }

      else
      {

        sub_2381C84F4(v37, v38);
      }
    }

    *(v0 + 192) = *(*(v0 + 88) + *(v0 + 160));
    sub_2381CA07C();
    sub_2381C41C0(&qword_27DEF35F0, MEMORY[0x277D213A8]);

    v27 = sub_2381CA21C();
    v29 = v56;
    v30 = sub_2381C2CB4;
LABEL_22:
    v45 = v30;
    v46 = v27;
    v47 = v29;

    return MEMORY[0x2822009F8](v45, v46, v47);
  }

  v32 = *(v0 + 144);
  v31 = *(v0 + 152);
  v34 = *(v0 + 112);
  v33 = *(v0 + 120);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2381C2C20()
{
  v1 = v0[23];
  sub_2381CA05C();

  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2381C2CB4()
{
  v1 = v0[24];
  sub_2381CA05C();

  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t DockAccessory.hashValue.getter()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  v0 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381C2E24(void *a1, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier;
  v3 = *a1 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier;
  v4 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);

  return sub_2381C99AC();
}

uint64_t sub_2381C2E7C()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  v2 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381C2F38()
{
  v1 = *v0 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier;
  MEMORY[0x2383EB620](0);
  v2 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  return sub_2381CA0BC();
}

uint64_t sub_2381C2FDC()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  v2 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381C3094(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2381C3160(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2381C85AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2381C3160(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2381C326C(a5, a6);
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
    result = sub_2381CA36C();
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

uint64_t sub_2381C326C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2381C32B8(a1, a2);
  sub_2381C33E8(&unk_284AF7948);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2381C32B8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2381C34D4(v5, 0);
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

  result = sub_2381CA36C();
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
        v10 = sub_2381CA17C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2381C34D4(v10, 0);
        result = sub_2381CA32C();
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

uint64_t sub_2381C33E8(uint64_t result)
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

  result = sub_2381C3548(result, v12, 1, v3);
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

void *sub_2381C34D4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F8, &qword_2381CC8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2381C3548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38F8, &qword_2381CC8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2381C363C(void *a1, int64_t a2, char a3)
{
  result = sub_2381C367C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2381C365C(char *a1, int64_t a2, char a3)
{
  result = sub_2381C37B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2381C367C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B0, &qword_2381CC860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B8, &qword_2381CB240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2381C37B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38D0, &qword_2381CC8B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2381C38BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2381CA45C();
  sub_2381CA14C();
  v6 = sub_2381CA49C();

  return sub_2381C3934(a1, a2, v6);
}

unint64_t sub_2381C3934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2381CA40C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s7DockKit0A9AccessoryC0C5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((v5 & 0xC0) != 0x40)
      {
        return 0;
      }

      v6 = *a1;
      v7 = *a2;
      if (v2 != v4)
      {
        return 0;
      }
    }

    else
    {
      v10 = v3 ^ 0x80;
      v11 = v5 & 0xC0;
      if (*&v2 | v10)
      {
        v13 = v11 == 128 && *&v4 == 1;
        if (!v13 || v5 != 128)
        {
          return 0;
        }
      }

      else
      {
        v12 = v11 == 128 && *&v4 == 0;
        if (!v12 || v5 != 128)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  else
  {
    if (v5 >= 0x40)
    {
      return 0;
    }

    v12 = *&v2 == *&v4;
    v8 = v5 ^ v3 ^ 1;
    if (!v12)
    {
      v8 = 0;
    }

    return v8 & 1;
  }
}

BOOL _s7DockKit0A9AccessoryC12BatteryStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_2381CA40C();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v5)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v4 == v7;
    }
  }

  return result;
}

BOOL _s7DockKit0A9AccessoryC13TrackedObjectV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2381C99AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DockAccessory.TrackedObject(0);
  result = CGRectEqualToRect(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)));
  if (!result)
  {
    return result;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if ((v8 & 1) == 0)
  {
    if (*v7 != *v9)
    {
      v10 = 1;
    }

    return (v10 & 1) == 0;
  }

  return (v10 & 1) != 0;
}

BOOL _s7DockKit0A9AccessoryC13TrackedPersonV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2381C99AC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DockAccessory.TrackedPerson(0);
  result = CGRectEqualToRect(*(a1 + v4[5]), *(a2 + v4[5]));
  if (!result)
  {
    return result;
  }

  v6 = v4[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if ((v18 & 1) == 0)
  {
    if (*v17 != *v19)
    {
      v20 = 1;
    }

    return (v20 & 1) == 0;
  }

  return (v20 & 1) != 0;
}

BOOL _s7DockKit0A9AccessoryC18TrackedSubjectTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for DockAccessory.TrackedObject(0);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DockAccessory.TrackedPerson(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DockAccessory.TrackedSubjectType(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3968, &qword_2381CCA18);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v35 - v21;
  v23 = *(v20 + 56);
  sub_2381C4208(a1, &v35 - v21, type metadata accessor for DockAccessory.TrackedSubjectType);
  sub_2381C4208(a2, &v22[v23], type metadata accessor for DockAccessory.TrackedSubjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2381C4208(v22, v15, type metadata accessor for DockAccessory.TrackedSubjectType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2381C4A44(&v22[v23], v6, type metadata accessor for DockAccessory.TrackedObject);
      if ((sub_2381C99AC() & 1) != 0 && CGRectEqualToRect(*&v15[*(v36 + 20)], *&v6[*(v36 + 20)]))
      {
        v24 = *(v36 + 24);
        v25 = *&v15[v24];
        v26 = v15[v24 + 8];
        v27 = &v6[v24];
        v28 = *v27;
        v29 = v27[8];
        sub_2381C4AAC(v6, type metadata accessor for DockAccessory.TrackedObject);
        if (v26)
        {
          if (v29)
          {
LABEL_21:
            sub_2381C4AAC(v15, type metadata accessor for DockAccessory.TrackedObject);
            sub_2381C4AAC(v22, type metadata accessor for DockAccessory.TrackedSubjectType);
            return 1;
          }
        }

        else
        {
          if (v25 == v28)
          {
            v34 = v29;
          }

          else
          {
            v34 = 1;
          }

          if ((v34 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_2381C4AAC(v6, type metadata accessor for DockAccessory.TrackedObject);
      }

      sub_2381C4AAC(v15, type metadata accessor for DockAccessory.TrackedObject);
      sub_2381C4AAC(v22, type metadata accessor for DockAccessory.TrackedSubjectType);
      return 0;
    }

    v30 = type metadata accessor for DockAccessory.TrackedObject;
    v31 = v15;
LABEL_11:
    sub_2381C4AAC(v31, v30);
    sub_2381A6070(v22, &qword_27DEF3968, &qword_2381CCA18);
    return 0;
  }

  sub_2381C4208(v22, v17, type metadata accessor for DockAccessory.TrackedSubjectType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = type metadata accessor for DockAccessory.TrackedPerson;
    v31 = v17;
    goto LABEL_11;
  }

  sub_2381C4A44(&v22[v23], v10, type metadata accessor for DockAccessory.TrackedPerson);
  v32 = _s7DockKit0A9AccessoryC13TrackedPersonV2eeoiySbAE_AEtFZ_0(v17, v10);
  sub_2381C4AAC(v10, type metadata accessor for DockAccessory.TrackedPerson);
  sub_2381C4AAC(v17, type metadata accessor for DockAccessory.TrackedPerson);
  sub_2381C4AAC(v22, type metadata accessor for DockAccessory.TrackedSubjectType);
  return v32;
}

uint64_t sub_2381C41C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2381C4208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2381C4270(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = sub_2381C9B0C();

      sub_2381C9A2C();
      LOBYTE(v17) = sub_2381CA2FC();

      if (v17)
      {
        v19 = sub_2381CA24C();
        (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 32) = v6;
        *(v20 + 40) = a3;
        *(v20 + 48) = a5;
        *(v20 + 56) = a4;
        *(v20 + 64) = a1;
        v21 = v6;

        sub_23819DED4(0, 0, v14, &unk_2381CC8A8, v20);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381C4420(uint64_t a1, unint64_t a2, void *a3)
{
  v53 = a2;
  v49 = a1;
  v5 = sub_2381C9D5C();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2381C9DCC();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2381CA0AC();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF38C8, &qword_2381CC898);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - v17;
  v19 = sub_2381C9DAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v44 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v44 - v28;
  v30 = a3;
  sub_2381C9D8C();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_2381A6070(v18, &qword_27DEF38C8, &qword_2381CC898);
  }

  (*(v20 + 32))(v29, v18, v19);
  (*(v54 + 16))(v14, v3 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_logger, v11);
  v32 = *(v20 + 16);
  v32(v27, v29, v19);
  v32(v24, v29, v19);
  v33 = v53;

  v34 = sub_2381CA08C();
  v35 = sub_2381CA2DC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v45 = v11;
    v37 = v36;
    v44 = swift_slowAlloc();
    v55 = v44;
    *v37 = 136315650;
    *(v37 + 4) = sub_2381C3094(v49, v33, &v55);
    *(v37 + 12) = 256;
    v38 = v46;
    LODWORD(v53) = v35;
    sub_2381C9D7C();
    v39 = sub_2381C9D4C();
    (*(v47 + 8))(v38, v48);
    v40 = *(v20 + 8);
    v40(v27, v19);
    *(v37 + 14) = v39;
    *(v37 + 15) = 256;
    v41 = v50;
    sub_2381C9D9C();
    v42 = sub_2381C9D4C();
    (*(v51 + 8))(v41, v52);
    v40(v24, v19);
    *(v37 + 17) = v42;
    _os_log_impl(&dword_23819C000, v34, v53, "Received trajectory progress feedback: s='%s' type='%hhu' status='%hhu'", v37, 0x12u);
    v43 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x2383EBBE0](v43, -1, -1);
    MEMORY[0x2383EBBE0](v37, -1, -1);

    (*(v54 + 8))(v14, v45);
  }

  else
  {
    v40 = *(v20 + 8);
    v40(v24, v19);
    v40(v27, v19);

    (*(v54 + 8))(v14, v11);
  }

  return (v40)(v29, v19);
}

uint64_t sub_2381C49A8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2381CA15C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_2381C4A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2381C4AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2381C4B6C()
{
  result = qword_27DEF3510;
  if (!qword_27DEF3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3510);
  }

  return result;
}

unint64_t sub_2381C4BC0()
{
  result = qword_27DEF3518;
  if (!qword_27DEF3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3518);
  }

  return result;
}

unint64_t sub_2381C4C14()
{
  result = qword_27DEF3520;
  if (!qword_27DEF3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3520);
  }

  return result;
}

unint64_t sub_2381C4C68()
{
  result = qword_27DEF3528;
  if (!qword_27DEF3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3528);
  }

  return result;
}

unint64_t sub_2381C4CBC()
{
  result = qword_27DEF3530;
  if (!qword_27DEF3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3530);
  }

  return result;
}

void SPRotation3DGetEulerAngles(SPRotation3D a1@<0:Q0, 16:Q1>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X8>)
{
  _Q1 = *a2;
  if (a3 == 2)
  {
    v7 = *a2;
    _Q1.i64[0] = *(a2 + 16);
  }

  else if (a3 == 1)
  {
    v7 = vextq_s8(_Q1, *(a2 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a2 + 24);
  v27 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  v26 = *(a2 + 32);
  __asm { FMLA            D0, D1, V4.D[1] }

  v28 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v27.f64[0] - _D9 * v28 + v8 * v27.f64[0] - _D9 * v28;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v27.f64[1];
  _V4.D[1] = v26;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a3 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a3 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a4 = v23;
  *(a4 + 16) = v22;
  *(a4 + 32) = a3;
}

void SPVector3DMake(double a1@<D0>, double a2@<D1>, double a3@<D2>, double *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_2381C4E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 sub_2381C4F04()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC7DockKit13DockAccessory__roi;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

unint64_t sub_2381C4F70()
{
  result = qword_27DEF3600;
  if (!qword_27DEF3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3600);
  }

  return result;
}

unint64_t sub_2381C4FC8()
{
  result = qword_27DEF3608;
  if (!qword_27DEF3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3608);
  }

  return result;
}

unint64_t sub_2381C5020()
{
  result = qword_27DEF3610;
  if (!qword_27DEF3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3610);
  }

  return result;
}

unint64_t sub_2381C5078()
{
  result = qword_27DEF3618;
  if (!qword_27DEF3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3618);
  }

  return result;
}

unint64_t sub_2381C51B4()
{
  result = qword_27DEF3638;
  if (!qword_27DEF3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3638);
  }

  return result;
}

unint64_t sub_2381C5254()
{
  result = qword_27DEF3648;
  if (!qword_27DEF3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3648);
  }

  return result;
}

unint64_t sub_2381C52AC()
{
  result = qword_27DEF3650;
  if (!qword_27DEF3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3650);
  }

  return result;
}

unint64_t sub_2381C534C()
{
  result = qword_27DEF3660;
  if (!qword_27DEF3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3660);
  }

  return result;
}

unint64_t sub_2381C53A4()
{
  result = qword_27DEF3668;
  if (!qword_27DEF3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3668);
  }

  return result;
}

uint64_t sub_2381C5488()
{
  result = sub_2381CA0AC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2381C553C()
{
  result = sub_2381CA0AC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for DockAccessory.Identifier(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_2381C998C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2381C56D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_2381C99BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2381C5798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2381C99BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2381C583C()
{
  result = sub_2381C99BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy105_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2381C58FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_2381C5944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockAccessory.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DockAccessory.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2381C5B3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3478, &qword_2381CB390);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2381C5C04(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3478, &qword_2381CB390);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2381C5CB0()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_2381C5D4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2381C5D4C()
{
  if (!qword_27DEF36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF36F8, &qword_2381CC0B0);
    v0 = sub_2381CA31C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEF36F0);
    }
  }
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2381C5E24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t sub_2381C5E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DockAccessory.MotionState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  v6 = v5;
  *(a1 + 72) = v5;
  return a1;
}

void *assignWithCopy for DockAccessory.MotionState(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  *a1 = v3;
  a1[1] = v4;
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  a1[6] = a2[6];
  a1[7] = v8;
  a1[4] = v7;
  a1[5] = v6;
  a1[8] = a2[8];
  v9 = a1[9];
  v10 = a2[9];
  v11 = v10;
  a1[9] = v10;

  return a1;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for DockAccessory.MotionState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 32) = v4;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for DockAccessory.MotionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DockAccessory.MotionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

void sub_2381C627C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_2381C7574(319, a4, a5, MEMORY[0x277D857B8]);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2381C6390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  sub_2381C7574(319, a4, a5, MEMORY[0x277D857B8]);
  if (v8 <= 0x3F)
  {
    sub_2381C7574(319, a6, a5, MEMORY[0x277D857A8]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2381C64AC()
{
  result = type metadata accessor for DockAccessory.TrackedPerson(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DockAccessory.TrackedObject(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2381C6550()
{
  sub_2381C99BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_2381C7574(319, &qword_27DEF3780, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2381C7574(319, &qword_27DEF3788, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_155Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381C99BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_156Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381C99BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2381C6750()
{
  sub_2381C99BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_2381C7574(319, &qword_27DEF3780, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2381C6824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381C998C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2381C68F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2381C998C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2381C69AC()
{
  sub_2381C998C();
  if (v0 <= 0x3F)
  {
    sub_2381C6B6C(319, &qword_27DEF37B0, type metadata accessor for DockAccessory.TrackedSubjectType, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2381C6AD0()
{
  sub_2381C6B6C(319, &qword_27DEF37C8, type metadata accessor for DockAccessory.TrackingState, MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2381C6B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2381C6C40()
{
  sub_2381C6B6C(319, &qword_27DEF37C8, type metadata accessor for DockAccessory.TrackingState, MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    sub_2381C6B6C(319, &qword_27DEF37E0, type metadata accessor for DockAccessory.TrackingState, MEMORY[0x277D857A8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DockAccessory.AccessoryEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DockAccessory.AccessoryEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2381C6DE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2381C6E10(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_2381C6F5C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2381C6FEC(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2381C70C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_2381C7108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_112Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_113Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t __swift_get_extra_inhabitant_index_121Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_122Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void sub_2381C7574(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2381C7610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381C7630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DockAccessory.Limits.Limit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DockAccessory.Limits.Limit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2381C76F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2381C7784(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2381C7888(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_2381C78DC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2381C797C()
{
  result = qword_27DEF3848;
  if (!qword_27DEF3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3848);
  }

  return result;
}

unint64_t sub_2381C79D4()
{
  result = qword_27DEF3850;
  if (!qword_27DEF3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3850);
  }

  return result;
}

unint64_t sub_2381C7A2C()
{
  result = qword_27DEF3858;
  if (!qword_27DEF3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3858);
  }

  return result;
}

unint64_t sub_2381C7A84()
{
  result = qword_27DEF3860;
  if (!qword_27DEF3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3860);
  }

  return result;
}

unint64_t sub_2381C7ADC()
{
  result = qword_27DEF3868;
  if (!qword_27DEF3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3868);
  }

  return result;
}

unint64_t sub_2381C7B34()
{
  result = qword_27DEF3870;
  if (!qword_27DEF3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3870);
  }

  return result;
}

unint64_t sub_2381C7B8C()
{
  result = qword_27DEF3878;
  if (!qword_27DEF3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3878);
  }

  return result;
}

unint64_t sub_2381C7BE4()
{
  result = qword_27DEF3880;
  if (!qword_27DEF3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3880);
  }

  return result;
}

unint64_t sub_2381C7C3C()
{
  result = qword_27DEF3888;
  if (!qword_27DEF3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3888);
  }

  return result;
}

unint64_t sub_2381C7C94()
{
  result = qword_27DEF3890;
  if (!qword_27DEF3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3890);
  }

  return result;
}

unint64_t sub_2381C7CEC()
{
  result = qword_27DEF3898;
  if (!qword_27DEF3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3898);
  }

  return result;
}

unint64_t sub_2381C7D44()
{
  result = qword_27DEF38A0;
  if (!qword_27DEF38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38A0);
  }

  return result;
}

unint64_t sub_2381C7D9C()
{
  result = qword_27DEF38A8;
  if (!qword_27DEF38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38A8);
  }

  return result;
}

unint64_t sub_2381C7DF4()
{
  result = qword_27DEF38B0;
  if (!qword_27DEF38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38B0);
  }

  return result;
}

unint64_t sub_2381C7E4C()
{
  result = qword_27DEF38B8;
  if (!qword_27DEF38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38B8);
  }

  return result;
}

unint64_t sub_2381C7EA4()
{
  result = qword_27DEF38C0;
  if (!qword_27DEF38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF38C0);
  }

  return result;
}

uint64_t sub_2381C7EF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_2381CA40C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_2381CA40C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_2381CA40C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2381CA40C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2381C8060(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2381C80B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381A6E64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2381C8180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2381A6574;

  return sub_2381A6B80(a1, v4, v5, v7, v6);
}

uint64_t sub_2381C8240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23819DAE0;

  return sub_2381A6890(a1, v4, v5, v7, v6);
}

uint64_t sub_2381C8300()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2381C8358(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2381A6574;

  return sub_2381A668C(a1, v10, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2381C8440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381C236C(a1, v4, v5, v6);
}

uint64_t sub_2381C84F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2381C8060(a1, a2);
  }

  return a1;
}

uint64_t sub_2381C8508(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2381C856C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress);
  *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress) = v2;

  return v2;
}

uint64_t sub_2381C85AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2381C8608()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2381C8658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2381A6574;

  return sub_2381AEFA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2381C87CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381B7750(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2381C88E4(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_2381B82EC(a1, a2, a3, a4, v10, v11);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_2381C8060(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2381C89D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2381C89E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2381C8A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381B7180(a1, v4, v5, v6);
}

uint64_t sub_2381C8B40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2381C8C2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2381A6574;

  return sub_2381B5D0C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2381C8D80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, double a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958) - 8);
  v14 = v6 + ((*(v13 + 80) + 16) & ~*(v13 + 80));

  return sub_2381B684C(a1, a2, a3, a4, a5, v14, a6);
}

uint64_t sub_2381C8E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  v5 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  v6 = v5;
  *(a2 + 72) = v5;
  return a2;
}

uint64_t sub_2381C8EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381B592C(a1, v4, v5, v6);
}

uint64_t sub_2381C8FCC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381B43C8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_350Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_2381C91A4(void *a1, uint64_t a2, int a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_2381B4B3C(a1, a2, a3, v8, v9);
}

uint64_t objectdestroy_287Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2381C9284()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2381C92BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_2381B3DF8(a1, v4, v5, v6);
}

uint64_t objectdestroy_346Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2381C94A0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2381A6574;

  return sub_2381B3494(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_371Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_2381C963C(void *a1, uint64_t a2, int a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_2381B3924(a1, a2, a3, v8);
}

uint64_t objectdestroy_316Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2381C9710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23819DAE0;

  return sub_2381B2D98(a1, v4, v5, v6);
}