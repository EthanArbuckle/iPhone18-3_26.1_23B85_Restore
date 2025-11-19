uint64_t sub_2267E41C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_226836628();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_2267E457C(0, 0, v4, &unk_2268756C0, v8);
  }

  return result;
}

uint64_t sub_2267E42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v5 = *(*a4 + 352);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_2267E4408;

  return v9();
}

uint64_t sub_2267E4408(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2267E4558, 0, 0);
  }
}

uint64_t sub_2267E457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2267ACD9C(a3, v25 - v11);
  v13 = sub_226836628();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2267A1DC0(v12, &unk_27D7A1F30, &qword_226873360);
  }

  else
  {
    sub_226836618();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2268365D8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_226836458() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

      return v23;
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

  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2267E4818(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_226836068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2263B7458();
  (*(v8 + 16))(v12, v13, v7);
  v14 = a1;
  v15 = sub_226836038();
  v16 = sub_2268366E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v14;
    *v20 = v18;
    v21 = v14;
    _os_log_impl(&dword_2263AA000, v15, v16, "activity updated: %@", v19, 0xCu);
    sub_2267A1DC0(v20, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v20, -1, -1);
    v22 = v19;
    a1 = v18;
    v6 = v28;
    MEMORY[0x22AA821D0](v22, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v25 = sub_226836628();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a1;
    v27 = v14;
    sub_2267E457C(0, 0, v6, &unk_2268756B0, v26);
  }

  return result;
}

uint64_t sub_2267E4AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2267E4B18, a4, 0);
}

uint64_t sub_2267E4B18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2[16];
  v2[16] = v1;
  v4 = v1;

  v9 = (*v2 + 352);
  v10 = (*v9 + **v9);
  v5 = (*v9)[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2267E4C5C;
  v7 = v0[2];

  return v10();
}

uint64_t sub_2267E4C5C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_2267E4D50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2267E4DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v22 - v3;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_unknownObjectRetain();
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v22 = v13;
      v14 = sub_2263B7458();
      (*(v6 + 16))(v10, v14, v5);
      swift_unknownObjectRetain();
      v15 = sub_226836038();
      v16 = sub_2268366E8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = [v22 eventBody];
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&dword_2263AA000, v15, v16, "Intent: %@", v17, 0xCu);
        sub_2267A1DC0(v18, &unk_27D7A1D90, &unk_226873270);
        MEMORY[0x22AA821D0](v18, -1, -1);
        MEMORY[0x22AA821D0](v17, -1, -1);
      }

      (*(v6 + 8))(v10, v5);
      v20 = sub_226836628();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v12;
      sub_2267E457C(0, 0, v4, &unk_2268756A0, v21);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2267E50D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v5 = *(*a4 + 352);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_2267E51F0;

  return v9();
}

uint64_t sub_2267E51F0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2267E75F4, 0, 0);
  }
}

uint64_t sub_2267E5340(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2267E53A0(void **a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - v10;
  v12 = *a1;
  if (!*a1)
  {
    v21 = sub_2263B7458();
    (*(v3 + 16))(v11, v21, v2);
    v15 = sub_226836038();
    v22 = sub_2268366E8();
    if (!os_log_type_enabled(v15, v22))
    {
      v7 = v11;
      goto LABEL_8;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2263AA000, v15, v22, "Finished sinking activity descriptors", v17, 2u);
    v7 = v11;
    goto LABEL_6;
  }

  v13 = sub_2263B7458();
  (*(v3 + 16))(v7, v13, v2);
  v14 = v12;
  v15 = sub_226836038();
  v16 = sub_2268366C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_2263AA000, v15, v16, "Error sinking activity descriptors: %@", v17, 0xCu);
    sub_2267A1DC0(v18, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v18, -1, -1);
LABEL_6:
    MEMORY[0x22AA821D0](v17, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2267E5620(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v12 - v5;
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_226836628();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v7;

    sub_2267E457C(0, 0, v6, &unk_226875690, v11);
  }

  return result;
}

uint64_t sub_2267E5768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2263BA0A4;

  return sub_2267E5804(a5);
}

uint64_t sub_2267E5804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226836068();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267E58C4, v1, 0);
}

uint64_t sub_2267E58C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_2263B7458();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_226836038();
  v7 = sub_2268366E8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[2];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v9 + 16);

    _os_log_impl(&dword_2263AA000, v6, v7, "Received %ld activity descriptors", v10, 0xCu);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  else
  {
    v11 = v0[2];
  }

  v12 = v0[3];
  v13 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v14 = v12[20];
  v12[20] = v13;

  v19 = (*v12 + 352);
  v20 = (*v19 + **v19);
  v15 = (*v19)[1];
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_2267E5AF8;
  v17 = v0[3];

  return v20();
}

uint64_t sub_2267E5AF8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2267E5C08()
{
  v1[16] = v0;
  v2 = *(*(type metadata accessor for MeetingContextDependencies(0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = *(*(type metadata accessor for TimeOfDayContextDependencies(0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v4 = sub_226835358();
  v1[19] = v4;
  v5 = *(v4 - 8);
  v1[20] = v5;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v7 = sub_226836068();
  v1[22] = v7;
  v8 = *(v7 - 8);
  v1[23] = v8;
  v9 = *(v8 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v10 = sub_2268352B8();
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v13 = sub_2268352D8();
  v1[29] = v13;
  v14 = *(v13 - 8);
  v1[30] = v14;
  v15 = *(v14 + 64) + 15;
  v1[31] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v17 = sub_226835228();
  v1[34] = v17;
  v18 = *(v17 - 8);
  v1[35] = v18;
  v19 = *(v18 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267E5F04, v0, 0);
}

uint64_t sub_2267E5F04()
{
  v162 = v0;
  v139 = *(**(v0 + 128) + 216);
  v1 = v139();
  v2 = *(v1 + 16);
  if (v2)
  {
    v161[0] = MEMORY[0x277D84F90];
    sub_2267A0578(0, v2, 0);
    v3 = v161[0];
    v4 = v1 + 32;
    do
    {
      sub_22679CBC4(v4, v0 + 16);
      v5 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v6 = *(v5 + 8);
      sub_226836988();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v7 = *(v0 + 96);
      v8 = *(v0 + 104);
      v161[0] = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2267A0578((v9 > 1), v10 + 1, 1);
        v3 = v161[0];
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v12 = *(v0 + 312);
  sub_226835218();
  v13 = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
  v14 = MEMORY[0x277D84F90];
  v153 = v13;
  if (v13)
  {
    v15 = *(v0 + 280);
    v156 = *(v0 + 272);
    v16 = *(v0 + 264);
    v140 = v16;
    v143 = *(v0 + 312);
    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = *(v0 + 224);
    v149 = *(v0 + 232);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    sub_2268352A8();
    v137 = *MEMORY[0x277CC9968];
    v136 = *(v21 + 104);
    v136(v19);
    sub_226835298();
    v22 = *(v21 + 8);
    v22(v19, v20);
    v23 = *(v17 + 8);
    v23(v18, v149);
    v24 = *(v15 + 48);
    if (v24(v140, 1, v156) == 1)
    {
      v25 = *(v0 + 264);

      v26 = v25;
LABEL_13:
      sub_2267A1DC0(v26, &qword_27D7A2530, qword_2268738A0);
      v14 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v144 = v22;
    v132 = *(v0 + 312);
    v134 = *(v0 + 272);
    v27 = *(v0 + 256);
    v28 = *(v0 + 248);
    v29 = *(v0 + 224);
    v141 = *(v0 + 232);
    v30 = *(v0 + 208);
    v131 = *(*(v0 + 280) + 32);
    v131(*(v0 + 304), *(v0 + 264));
    sub_2268352A8();
    (v136)(v29, v137, v30);
    sub_226835298();
    v144(v29, v30);
    v23(v28, v141);
    if (v24(v27, 1, v134) == 1)
    {
      v31 = *(v0 + 256);
      (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));

      v26 = v31;
      goto LABEL_13;
    }

    (v131)(*(v0 + 296), *(v0 + 256), *(v0 + 272));
    v32 = sub_2268351A8();
    v33 = sub_2268351A8();
    v34 = [v153 predicateForEventsWithStartDate:v32 endDate:v33 calendars:0];

    v35 = [v153 eventsMatchingPredicate_];
    sub_2263B5030(0, &qword_27D7A2450, 0x277CC5A28);
    v36 = sub_226836568();

    v161[0] = MEMORY[0x277D84F90];
    if (v36 >> 62)
    {
      goto LABEL_29;
    }

    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v36; v37; i = v36)
    {
      v145 = v34;
      v38 = 0;
      v39 = v36 & 0xC000000000000001;
      v34 = (v36 & 0xFFFFFFFFFFFFFF8);
      v150 = v36 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          v41 = MEMORY[0x22AA7FDD0](v38, v36);
        }

        else
        {
          if (v38 >= v34[2])
          {
            goto LABEL_28;
          }

          v41 = *(v36 + 8 * v38 + 32);
        }

        v42 = v41;
        v43 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if ([v41 isAllDay])
        {
        }

        else
        {
          sub_2268369E8();
          v40 = *(v161[0] + 16);
          sub_226836A18();
          v36 = i;
          sub_226836A28();
          sub_2268369F8();
          v34 = v150;
        }

        ++v38;
        if (v43 == v37)
        {
          v14 = v161[0];
          v34 = v145;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v37 = sub_2268368D8();
    }

    v14 = MEMORY[0x277D84F90];
LABEL_31:
    v45 = *(v0 + 296);
    v44 = *(v0 + 304);
    v47 = *(v0 + 272);
    v46 = *(v0 + 280);

    v48 = *(v46 + 8);
    v48(v45, v47);
    v48(v44, v47);
  }

LABEL_32:
  v49 = *(v0 + 200);
  v50 = *(v0 + 176);
  v51 = *(v0 + 184);
  v52 = sub_2263B7458();
  v53 = *(v51 + 16);
  v53(v49, v52, v50);

  v54 = sub_226836038();
  v55 = sub_2268366E8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    if (v14 >> 62)
    {
      v57 = sub_2268368D8();
    }

    else
    {
      v57 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 4) = v57;

    _os_log_impl(&dword_2263AA000, v54, v55, "event count: %ld", v56, 0xCu);
    MEMORY[0x22AA821D0](v56, -1, -1);
  }

  else
  {
  }

  v58 = *(v0 + 128);
  v138 = *(*(v0 + 184) + 8);
  v138(*(v0 + 200), *(v0 + 176));
  v59 = [objc_opt_self() sharedInstance];
  [v59 updateCurrentLocationOfInterestIfTimeElapsed];
  v158 = v58;
  if (!*(v58 + 160))
  {
    v85 = *(v0 + 168);
    sub_226835338();
    sub_226835328();
    sub_226835348();
    v129 = sub_226835308();
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v130 = *(v58 + 160);
    *(v58 + 160) = v129;
  }

  v133 = v53;
  v135 = v52;
  v151 = v14;
  v154 = v59;
  v60 = *(v0 + 312);
  v61 = *(v0 + 280);
  v62 = *(v0 + 288);
  v63 = *(v0 + 272);
  v64 = *(v0 + 144);
  v142 = *(v0 + 136);
  v146 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2538, qword_226875520);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_226873690;
  v66 = type metadata accessor for TimeOfDayContextStore();
  v67 = *(v61 + 16);
  v67(v62, v60, v63);
  sub_2267EA0F8(v62, v64);
  v68 = sub_2267EAAC8(v64);
  *(v65 + 56) = v66;
  *(v65 + 64) = sub_2267E7194(&qword_27D7A2540, type metadata accessor for TimeOfDayContextStore);
  *(v65 + 32) = v68;
  v69 = type metadata accessor for MeetingContextStore(0);
  v67(v62, v60, v63);
  v70 = v154;

  sub_2267D5DDC(v62, v151, v142);
  v71 = sub_2267D65B8(v142);
  *(v65 + 96) = v69;
  *(v65 + 104) = sub_2267E7194(&qword_27D7A2548, type metadata accessor for MeetingContextStore);
  *(v65 + 72) = v71;
  v72 = type metadata accessor for LocationOfInterestContextStore();
  v73 = nullsub_1([v154 cachedLocationOfInterestAtCurrentLocation]);
  v74 = sub_2267AD2A4(v73);
  *(v65 + 136) = v72;
  *(v65 + 144) = sub_2267E7194(&qword_27D7A2550, type metadata accessor for LocationOfInterestContextStore);
  *(v65 + 112) = v74;
  v75 = type metadata accessor for MotionContextStore();
  v76 = *(v146 + 128);
  v77 = v76;
  v78 = nullsub_1(v76);
  v79 = sub_22679A4E4(v78);
  *(v65 + 176) = v75;
  *(v65 + 184) = sub_2267E7194(&qword_27D7A2558, type metadata accessor for MotionContextStore);
  *(v65 + 152) = v79;
  if (*(v158 + 160))
  {
    v80 = *(v158 + 160);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

  v81 = type metadata accessor for LiveActivityContextStore();

  v82 = nullsub_1(v80);
  v83 = sub_2267E0F94(v82);
  *(v65 + 216) = v81;
  *(v65 + 224) = sub_2267E7194(&qword_27D7A2560, type metadata accessor for LiveActivityContextStore);
  *(v65 + 192) = v83;
  v84 = *(v146 + 136);
  *(swift_task_alloc() + 16) = v65;
  os_unfair_lock_lock(v84 + 6);
  sub_2267E71DC(&v84[4]);
  os_unfair_lock_unlock(v84 + 6);
  v86 = *(v0 + 192);
  v87 = *(v0 + 176);
  v88 = *(v0 + 128);

  v90 = (v139)(v89);
  v133(v86, v135, v87);

  v91 = sub_226836038();
  v92 = sub_2268366E8();
  v159 = v84;
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 134217984;
    *(v93 + 4) = *(v90 + 16);

    _os_log_impl(&dword_2263AA000, v91, v92, "new active contexts: %ld", v93, 0xCu);
    MEMORY[0x22AA821D0](v93, -1, -1);
  }

  else
  {
  }

  v138(*(v0 + 192), *(v0 + 176));
  v94 = *(v90 + 16);
  v95 = MEMORY[0x277D84F90];
  if (v94)
  {
    v161[0] = MEMORY[0x277D84F90];
    sub_2267A0578(0, v94, 0);
    v95 = v161[0];
    v147 = v90;
    v96 = v90 + 32;
    do
    {
      sub_22679CBC4(v96, v0 + 56);
      v97 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v98 = *(v97 + 8);
      sub_226836988();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v99 = *(v0 + 112);
      v100 = *(v0 + 120);
      v161[0] = v95;
      v102 = *(v95 + 16);
      v101 = *(v95 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_2267A0578((v101 > 1), v102 + 1, 1);
        v95 = v161[0];
      }

      *(v95 + 16) = v102 + 1;
      v103 = v95 + 16 * v102;
      *(v103 + 32) = v99;
      *(v103 + 40) = v100;
      v96 += 40;
      --v94;
    }

    while (v94);
    v70 = v154;
    v90 = v147;
  }

  v104 = sub_2267DC1A4(v3, v95);

  if (v104)
  {
    v160 = v104;
    v105 = *(v0 + 312);
    v106 = *(v0 + 272);
    v107 = *(v0 + 280);

    (*(v107 + 8))(v105, v106);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v121 = swift_task_alloc();
    *(v121 + 16) = sub_2267E7220;
    *(v121 + 24) = KeyPath;

    os_unfair_lock_lock(v159 + 6);
    sub_2267E75C4(&v159[4]._os_unfair_lock_opaque, v161);
    os_unfair_lock_unlock(v159 + 6);
    v160 = v104;

    v122 = v161[0];
    v123 = v161[1];

    v124 = *(v0 + 312);
    v125 = *(v0 + 272);
    v126 = *(v0 + 280);
    if (v122)
    {
      v127 = *(v0 + 128);
      ObjectType = swift_getObjectType();
      (*(v123 + 8))(v127, v90, ObjectType, v123);
      swift_unknownObjectRelease();

      (*(v126 + 8))(v124, v125);
    }

    else
    {
      (*(v126 + 8))(*(v0 + 312), *(v0 + 272));
    }
  }

  v109 = *(v0 + 304);
  v108 = *(v0 + 312);
  v111 = *(v0 + 288);
  v110 = *(v0 + 296);
  v113 = *(v0 + 256);
  v112 = *(v0 + 264);
  v114 = *(v0 + 248);
  v115 = *(v0 + 224);
  v116 = *(v0 + 192);
  v117 = *(v0 + 200);
  v148 = *(v0 + 168);
  v152 = *(v0 + 144);
  v155 = *(v0 + 136);

  v118 = *(v0 + 8);

  return v118((v160 & 1) == 0);
}

uint64_t sub_2267E6EB0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);
  swift_unknownObjectRelease();
  v3 = *(v0 + 152);
  swift_unknownObjectRelease();
  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2267E6F10()
{
  sub_2267E6EB0();

  return MEMORY[0x282200960](v0);
}

char *sub_2267E6F48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2668, &qword_2268756F0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2267E704C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2658, &qword_2268756E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267E7194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267E71DC(uint64_t a1)
{
  v2 = *(*a1 + 16);
  *(*a1 + 16) = *(v1 + 16);
}

uint64_t sub_2267E7220()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_2267E726C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_2267E7308()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267E5768(v4, v5, v6, v2, v3);
}

uint64_t sub_2267E73A0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2267A1ED0;

  return sub_2267E50D0(a1, v5, v6, v4);
}

uint64_t sub_2267E7440()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267E4AF8(v4, v5, v6, v2, v3);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2267E7518(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2263BA0A4;

  return sub_2267E42E8(a1, v5, v6, v4);
}

float static AppPredictionDataHarvesterConstants.actionPredictionSessionDataHarvestSamplingRate.getter()
{
  v1 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002ELL, 0x80000002268CFAC0, sub_2267E8C54, &v1, MEMORY[0x277D83A90], &v2);
  return v2;
}

uint64_t sub_2267E7770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, v5);
  v3 = sub_2267E85E0(v5);
  result = sub_2267A1DC0(v5, &qword_27D7A1AA0, &qword_2268732C0);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
  return result;
}

float static AppPredictionDataHarvesterConstants.appPredictionSessionDataHarvestSamplingRate.getter()
{
  v1 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002BLL, 0x80000002268CFAF0, sub_2267E8C54, &v1, MEMORY[0x277D83A90], &v2);
  return v2;
}

float static AppPredictionDataHarvesterConstants.documentPredictionSessionDataHarvestSamplingRate.getter()
{
  v1 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD000000000000030, 0x80000002268CFB20, sub_2267E8C54, &v1, MEMORY[0x277D83A90], &v2);
  return v2;
}

uint64_t static AppPredictionDataHarvesterConstants.actionPredictionSessionDataHarvestMaxItems.getter()
{
  v1 = 10;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002ALL, 0x80000002268CFB60, sub_2267E8C58, &v1, MEMORY[0x277D83E88], &v2);
  return v2;
}

uint64_t sub_2267E7C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, v7);
  v3 = sub_2267E86AC(v7);
  v5 = v4;
  result = sub_2267A1DC0(v7, &qword_27D7A1AA0, &qword_2268732C0);
  *a2 = v3;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t static AppPredictionDataHarvesterConstants.appPredictionSessionDataHarvestMaxItems.getter()
{
  v1 = 13;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD000000000000027, 0x80000002268CFB90, sub_2267E8C58, &v1, MEMORY[0x277D83E88], &v2);
  return v2;
}

uint64_t static AppPredictionDataHarvesterConstants.documentPredictionSessionDataHarvestMaxItems.getter()
{
  v1 = 11;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002CLL, 0x80000002268CFBC0, sub_2267E8C58, &v1, MEMORY[0x277D83E88], &v2);
  return v2;
}

uint64_t static AppPredictionDataHarvesterConstants.extraItemsToLog.getter()
{
  v1 = 6;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0x6574496172747845, 0xEF676F4C6F54736DLL, sub_2267E8C58, &v1, MEMORY[0x277D83E88], &v2);
  return v2;
}

id sub_2267E80DC()
{
  result = sub_2267E80FC();
  qword_281390BF8 = result;
  return result;
}

id sub_2267E80FC()
{
  v0 = sub_226836068();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  return sub_2267E87B4();
}

uint64_t *sub_2267E834C()
{
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  return &qword_281390BF8;
}

uint64_t sub_2267E839C()
{
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }
}

id AppPredictionDataHarvesterConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppPredictionDataHarvesterConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPredictionDataHarvesterConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppPredictionDataHarvesterConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPredictionDataHarvesterConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2267E857C()
{
  result = qword_27D7A2680;
  if (!qword_27D7A2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2680);
  }

  return result;
}

unint64_t sub_2267E85E0(uint64_t a1)
{
  sub_2267A1AF8(a1, v7, &qword_27D7A1AA0, &qword_2268732C0);
  if (!v8)
  {
    sub_2267A1DC0(v7, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_5;
  }

  sub_2267E8768();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    v3 = 1;
    return v4 | (v3 << 32);
  }

  [v6 floatValue];
  v2 = v1;

  v3 = 0;
  v4 = v2;
  return v4 | (v3 << 32);
}

unint64_t sub_2267E86AC(uint64_t a1)
{
  sub_2267A1AF8(a1, v4, &qword_27D7A1AA0, &qword_2268732C0);
  if (v5)
  {
    sub_2267E8768();
    if (swift_dynamicCast())
    {
      v1 = [v3 integerValue];

      if ((v1 & 0x8000000000000000) == 0)
      {
        return v1;
      }
    }
  }

  else
  {
    sub_2267A1DC0(v4, &qword_27D7A1AA0, &qword_2268732C0);
  }

  return 0;
}

unint64_t sub_2267E8768()
{
  result = qword_28138F960;
  if (!qword_28138F960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28138F960);
  }

  return result;
}

id sub_2267E87B4()
{
  v40[4] = *MEMORY[0x277D85DE8];
  v37 = sub_226835068();
  v0 = *(v37 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v37, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_2268350D8();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = sub_2268363F8();
  v17 = sub_2268363F8();
  v18 = [v15 pathForResource:v16 ofType:v17 isDirectory:0];

  if (!v18)
  {
    sub_2267E8C00();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_226836408();

  v19 = v36;
  (*(v36 + 56))(v9, 1, 1, v10);
  (*(v0 + 104))(v4, *MEMORY[0x277CC91D8], v37);
  sub_2268350C8();
  v18 = objc_autoreleasePoolPush();
  v20 = v38;
  v21 = sub_2268350F8();
  v23 = v19;
  v24 = v14;
  if (v20)
  {
    goto LABEL_3;
  }

  v27 = v21;
  v28 = v22;
  v29 = v18;
  v30 = objc_opt_self();
  v31 = sub_226835138();
  v40[0] = 0;
  v32 = [v30 propertyListWithData:v31 options:0 format:0 error:v40];

  if (!v32)
  {
    v34 = v40[0];
    sub_226835028();

    swift_willThrow();
    sub_2267A1D24(v27, v28);
    v18 = v29;
LABEL_3:
    objc_autoreleasePoolPop(v18);
    (*(v23 + 8))(v24, v10);
    goto LABEL_5;
  }

  v33 = v40[0];
  sub_226836878();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20E8, &qword_2268745E8);
  if (swift_dynamicCast())
  {
    v18 = v39;
  }

  else
  {
    v18 = sub_2267CA88C(MEMORY[0x277D84F90]);
  }

  sub_2267A1D24(v27, v28);
  objc_autoreleasePoolPop(v29);
  (*(v23 + 8))(v24, v10);
LABEL_5:
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t sub_2267E8C00()
{
  result = qword_27D7A2688;
  if (!qword_27D7A2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2688);
  }

  return result;
}

uint64_t sub_2267E8C68()
{
  swift_beginAccess();
  v0 = *aSports_0;

  return v0;
}

uint64_t sub_2267E8CBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSports_0 = a1;
  qword_27D7A2698 = a2;
}

uint64_t sub_2267E8D18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226836068();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A0, qword_226875858);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_2268352B8();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v13 = sub_226835228();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v16 = sub_2268352D8();
  v2[19] = v16;
  v17 = *(v16 - 8);
  v2[20] = v17;
  v18 = *(v17 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267E8FA4, 0, 0);
}

uint64_t sub_2267E8FA4()
{
  v2 = v0 + 14;
  v1 = v0[14];
  v3 = v0[21];
  v4 = v0[16];
  v49 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[2];
  sub_2268352A8();
  v47 = *MEMORY[0x277CC9980];
  v46 = *(v5 + 104);
  v46(v6);
  sub_226835298();
  v9 = *(v5 + 8);
  v9(v6, v7);
  v10 = *(v4 + 48);
  if (v10(v1, 1, v49) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0 + 13;
  v50 = v0[21];
  v43 = v0[13];
  v44 = v0[15];
  v11 = v0[12];
  v12 = v0[10];
  v45 = v9;
  v13 = v0[3];
  v42 = *(v0[16] + 32);
  v42(v0[18], v0[14]);
  (v46)(v11, v47, v12);
  sub_226835298();
  v45(v11, v12);
  if (v10(v43, 1, v44) == 1)
  {
    (*(v0[16] + 8))(v0[18], v0[15]);
LABEL_4:
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];
    sub_2267A1DC0(*v2, &qword_27D7A2530, qword_2268738A0);
    v17 = sub_2267F78F4();
    (*(v15 + 16))(v14, v17, v16);
    v18 = sub_226836038();
    v19 = sub_2268366C8();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2263AA000, v18, v19, "Unable to subtract 5 hours from date", v24, 2u);
      MEMORY[0x22AA821D0](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    v25 = v0[18];
    v26 = v0[17];
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];
    v30 = v0[9];
    v31 = v0[6];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v32 = v0[1];
    v33 = MEMORY[0x277D84F90];

    return v32(v33);
  }

  (v42)(v0[17], v0[13], v0[15]);
  v35 = sub_2267EEF08();
  v36 = *v35;
  v0[22] = *v35;
  v37 = *((*MEMORY[0x277D85000] & *v36) + 0x78);
  v36;
  v48 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  v0[23] = v39;
  *v39 = v0;
  v39[1] = sub_2267E9424;
  v40 = v0[17];
  v41 = v0[18];

  return v48(v41, v40);
}

uint64_t sub_2267E9424(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(*v2 + 176);
  v8 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v6 = sub_2267E97C4;
  }

  else
  {
    v6 = sub_2267E9554;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2267E9554()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v33 = v0[7];
    v34 = MEMORY[0x277D84F90];
    result = sub_2267E98E8(0, v2, 0);
    v5 = 0;
    v6 = v34;
    v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v5 < *(v1 + 16))
    {
      v8 = v0[21];
      v9 = v0[9];
      sub_2267E9FCC(v7 + *(v3 + 72) * v5, v9);
      v10 = sub_2267E9A3C(v9, *(v9 + *(v33 + 48)), *(v9 + *(v33 + 48) + 8), v8);
      result = sub_2267A1DC0(v9, &qword_27D7A26A0, qword_226875858);
      v12 = *(v34 + 16);
      v11 = *(v34 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_2267E98E8((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v34 + 16) = v12 + 1;
      *(v34 + 8 * v12 + 32) = v10;
      if (v2 == v5)
      {
        v13 = v0[24];
        v15 = v0[17];
        v14 = v0[18];
        v16 = v0[15];
        v17 = v0[16];

        v18 = *(v17 + 8);
        v18(v15, v16);
        v18(v14, v16);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[15];
    v22 = v0[16];
    v23 = v0[24];

    v24 = *(v22 + 8);
    v24(v20, v21);
    v24(v19, v21);
    v6 = MEMORY[0x277D84F90];
LABEL_9:
    v25 = v0[18];
    v26 = v0[17];
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];
    v30 = v0[9];
    v31 = v0[6];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v32 = v0[1];

    return v32(v6);
  }

  return result;
}

uint64_t sub_2267E97C4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v11 = v0[13];
  v12 = v0[12];
  v6 = v0[9];
  v13 = v0[6];
  v7 = *(v0[16] + 8);
  v7(v0[17], v5);
  v7(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];
  v9 = v0[25];

  return v8();
}

void *sub_2267E98E8(void *a1, int64_t a2, char a3)
{
  result = sub_2267E9908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2267E9908(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26B0, &qword_2268758A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26B8, &qword_2268758A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267E9A3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v64 = a4;
  v57 = a2;
  v58 = a3;
  v5 = type metadata accessor for SportsDependencies(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v62 = &v57 - v11;
  v12 = sub_226836068();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2268352B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v57 - v25;
  v27 = sub_226835228();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33, v34);
  v37 = &v57 - v36;
  (*(v17 + 104))(v21, *MEMORY[0x277CC9980], v16, v35);
  v38 = a1;
  sub_226835298();
  (*(v17 + 8))(v21, v16);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_2267A1DC0(v26, &qword_27D7A2530, qword_2268738A0);
    v39 = sub_2267F78F4();
    v41 = v59;
    v40 = v60;
    v42 = v61;
    (*(v60 + 16))(v59, v39, v61);
    v43 = sub_226836038();
    v44 = sub_2268366C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2263AA000, v43, v44, "Unable to add 5 hours to game start date", v45, 2u);
      MEMORY[0x22AA821D0](v45, -1, -1);
    }

    (*(v40 + 8))(v41, v42);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v28 + 32))(v37, v26, v27);
    v64 = *(v28 + 16);
    v64(v32, a1, v27);
    v47 = v58;

    v48 = v62;
    sub_2267CFD64(v57, v47, v32, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A8, "Pk\n");
    v49 = *(type metadata accessor for SportsContextEntry(0) - 8);
    v61 = *(v49 + 72);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_226874180;
    v52 = v51 + v50;
    v53 = v38;
    v54 = v37;
    v55 = v64;
    v64(v32, v53, v27);
    v56 = v63;
    sub_2267D023C(v48, v63);
    sub_2267D0390(v32, 1, v56, v52);
    v55(v32, v54, v27);
    sub_2267D023C(v48, v56);
    sub_2267D0390(v32, 0, v56, v52 + v61);
    sub_2267DFB1C(v48);
    (*(v28 + 8))(v54, v27);
    return v51;
  }
}

uint64_t sub_2267E9FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A0, qword_226875858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2267EA164()
{
  type metadata accessor for TimeOfDayContext(0);
  sub_2267EB018(&qword_27D7A26C0);

  return sub_2263B6BB0();
}

uint64_t sub_2267EA1E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies;
  swift_beginAccess();
  return sub_2267EA23C(v1 + v3, a1);
}

uint64_t sub_2267EA23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA2C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies;
  swift_beginAccess();
  sub_2267EA320(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2267EA320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267EA474()
{
  v1 = *v0;
  v2 = type metadata accessor for TimeOfDayContextDependencies(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2268352B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2268352D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2268352A8();
  v19 = (*(v8 + 104))(v12, *MEMORY[0x277CC9980], v7);
  (*(*v0 + 112))(v19);
  v20 = sub_2268352C8();
  (*(v8 + 8))(v12, v7);
  (*(v14 + 8))(v18, v13);
  v21 = sub_226835228();
  v22 = (*(*(v21 - 8) + 8))(v6, v21);
  v23 = (*(v1 + 96))(v22);
  result = (*(v1 + 104))();
  if (result >= v23)
  {
    return v20 >= v23 && v20 < result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2267EA7C4(uint64_t a1)
{
  v2 = type metadata accessor for TimeOfDayContextDependencies(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267EA908@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  *a1 = result;
  return result;
}

uint64_t sub_2267EA940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TimeOfDayContext(0);
  sub_2267EB018(&qword_27D7A26C0);
  result = sub_2263B92B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2267EA9A4()
{
  v0 = sub_2267EB2B4();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226873D10;
  *(v3 + 32) = type metadata accessor for TimeOfDayContextStore.MorningContext(0);
  *(v3 + 40) = type metadata accessor for TimeOfDayContextStore.AfternoonContext(0);
  result = type metadata accessor for TimeOfDayContextStore.EveningContext(0);
  *(v3 + 48) = result;
  qword_27D7A51F0 = v3;
  return result;
}

uint64_t *sub_2267EAA1C()
{
  if (qword_27D7A4E70 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51F0;
}

uint64_t sub_2267EAA6C()
{
  if (qword_27D7A4E70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267EAAC8(uint64_t a1)
{
  v2 = swift_allocObject();
  v4 = v2;
  if (qword_27D7A4E70 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2, v3);
  v7[2] = a1;
  *(v4 + 16) = sub_2267EAD4C(sub_2267EAD20, v7, v5);
  sub_2267EA7C4(a1);
  return v4;
}

uint64_t sub_2267EABC0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_27D7A4E70 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1, a2);
  v6[2] = v3;
  *(v2 + 16) = sub_2267EAD4C(sub_2267EB334, v6, v4);
  sub_2267EA7C4(v3);
  return v2;
}

uint64_t sub_2267EACA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for TimeOfDayContext(0);
  v5 = sub_2267EB018(&qword_27D7A26C0);
  return sub_2267AD950(v3, a2, v4, v4, v5, v5);
}

uint64_t sub_2267EAD4C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_226836A08();
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2268369E8();
      v10 = *(v13 + 16);
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2267EAECC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2267EA410(a1, v5 + OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies);
  return v5;
}

uint64_t sub_2267EAF18()
{
  sub_2267EA7C4(v0 + OBJC_IVAR____TtC21AppPredictionInternal16TimeOfDayContext_dependencies);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2267EAF7C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_2267EAF9C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2267EAFD4(uint64_t a1)
{
  result = sub_2267EB018(&qword_27D7A26C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267EB018(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimeOfDayContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267EB0FC()
{
  result = sub_226835228();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2267EB170()
{
  result = sub_226835228();
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

uint64_t sub_2267EB2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26D0, "bj\n");
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A26D8;
    v3 = &unk_226875A28;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267EB3A0(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D1D3B8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2267EB43C;

  return MEMORY[0x282176408](a1);
}

uint64_t sub_2267EB43C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2267EB58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2267A1644;

  return v11(a1, a2, a3);
}

void *static RelevantContextConverter.context(from:)(void *a1)
{
  return sub_2267EC310(a1, 0x277CD3B88);
}

{
  return sub_2267EC310(a1, 0x277CDB6A0);
}

id DateRelevantContext.__allocating_init(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___ATXDateRelevantContext_startDate;
  v7 = sub_226835228();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  sub_22679CC28(a2, &v5[OBJC_IVAR___ATXDateRelevantContext_endDate]);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_2267A5D00(a2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id RelevantContextConverter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelevantContextConverter();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DateRelevantContext.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ATXDateRelevantContext_startDate;
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DateRelevantContext.init(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___ATXDateRelevantContext_startDate;
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  sub_22679CC28(a2, &v2[OBJC_IVAR___ATXDateRelevantContext_endDate]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DateRelevantContext();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2267A5D00(a2);
  (*(v7 + 8))(a1, v6);
  return v8;
}

unint64_t sub_2267EBF08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v18 - v5;
  v7 = sub_226835228();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22679CC28(v1 + OBJC_IVAR___ATXDateRelevantContext_endDate, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2267A5D00(v6);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_226836968();

    v18 = 0xD000000000000018;
    v19 = 0x80000002268CFF90;
    sub_2267CC684();
    v13 = sub_226836B48();
    MEMORY[0x22AA7F8E0](v13);

    MEMORY[0x22AA7F8E0](62, 0xE100000000000000);
    return v18;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_226836968();

    v18 = 0xD000000000000018;
    v19 = 0x80000002268CFF90;
    sub_2267CC684();
    v15 = sub_226836B48();
    MEMORY[0x22AA7F8E0](v15);

    MEMORY[0x22AA7F8E0](544175136, 0xE400000000000000);
    v16 = sub_226836B48();
    MEMORY[0x22AA7F8E0](v16);

    MEMORY[0x22AA7F8E0](62, 0xE100000000000000);
    v14 = v18;
    (*(v8 + 8))(v12, v7);
  }

  return v14;
}

id DateRelevantContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2267EC25C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_2267EC310(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = sub_226835228();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = a1;
    v18 = [v16 startDate];
    sub_2268351F8();

    v19 = [v16 endDate];
    if (v19)
    {
      v20 = v19;
      sub_2268351F8();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    (*(v10 + 56))(v8, v21, 1, v9);
    v22 = type metadata accessor for DateRelevantContext();
    v23 = objc_allocWithZone(v22);
    (*(v10 + 16))(v23 + OBJC_IVAR___ATXDateRelevantContext_startDate, v14, v9);
    sub_22679CC28(v8, v23 + OBJC_IVAR___ATXDateRelevantContext_endDate);
    v25.receiver = v23;
    v25.super_class = v22;
    v16 = objc_msgSendSuper2(&v25, sel_init);

    sub_2267A5D00(v8);
    (*(v10 + 8))(v14, v9);
  }

  return v16;
}

uint64_t type metadata accessor for DateRelevantContext()
{
  result = qword_2813904A0;
  if (!qword_2813904A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2267EC5C4()
{
  v0 = sub_226835228();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2267DF234();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2267EC6D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_2267EC7C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = sub_226836408();
  v9 = v8;
  v10 = a1;
  a5(v7, v9);

  v11 = sub_2268363F8();

  return v11;
}

uint64_t sub_2267EC8B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2267EB43C;

  return (sub_2267EE26C)(a1, a2);
}

uint64_t sub_2267EC964(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2267EDA1C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_226836B38();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26E8, &unk_226875BE0);
      v7 = sub_226836598();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_2267ED21C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2267ECC60(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836408();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_2267ECD48;

  return sub_2267EE26C(v5, v7);
}

uint64_t sub_2267ECD48()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_226835018();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_226836558();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id MegadomeContextualPersonRelationships.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MegadomeContextualPersonRelationships.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MegadomeContextualPersonRelationships();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MegadomeContextualPersonRelationships.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MegadomeContextualPersonRelationships();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2267ECFD0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F0, &qword_226875BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26E8, &unk_226875BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2267ED118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26E0, &unk_226875BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2267ED21C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2267DE5F0(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2267ED7E0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2267DC234(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_2267DC234((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_2267ED7E0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_2267ED7E0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2267EDA30(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v39 = a1[2];
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F0, &qword_226875BF0);
    v7 = swift_allocObject();
    v8 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
    v7[2] = v6;
    v7[3] = 2 * v8;
    v9 = a1[5];
    v10 = *(v2 + 32);
    v11 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v7[4] = a1[4];
    v7[5] = v9;
    v7[6] = v10;
    v12 = v7 + 7;
    if (v6 != 1)
    {
      v13 = 0;
      v40 = v2;
      v14 = v2 + 40;
      v15 = a1 + 7;
      do
      {

        v16 = *v15;
        v17 = *(v14 + 8 * v13);
        *v12 = *(v15 - 1);
        v12[1] = v16;
        v12[2] = v17;
        v12 += 3;
        ++v13;
        v15 += 2;
      }

      while (v6 - 1 != v13);
      v11 -= v13;
      v4 = v39;
      v2 = v40;
    }

    if (v4 <= v5)
    {
      goto LABEL_36;
    }

LABEL_12:
    v41 = v2 + 32;
    v20 = &a1[2 * v6 + 5];
    while (v6 < v4)
    {
      v21 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_41;
      }

      if (v5 == v6)
      {
        goto LABEL_36;
      }

      if (v6 >= v5)
      {
        goto LABEL_42;
      }

      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v41 + 8 * v6);
      if (v11)
      {
        v25 = *v20;

        v26 = __OFSUB__(v11--, 1);
        if (v26)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v27 = v7[3];
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_44;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F0, &qword_226875BF0);
        v30 = swift_allocObject();
        v31 = (_swift_stdlib_malloc_size(v30) - 32) / 24;
        v30[2] = v29;
        v30[3] = 2 * v31;
        v32 = v30 + 4;
        v33 = v7[3] >> 1;
        v12 = &v30[3 * v33 + 4];
        v34 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;
        if (v7[2])
        {
          if (v30 != v7 || v32 >= &v7[3 * v33 + 4])
          {
            memmove(v32, v7 + 4, 24 * v33);
          }

          v7[2] = 0;
        }

        else
        {
        }

        v7 = v30;
        v4 = v39;
        v26 = __OFSUB__(v34, 1);
        v11 = v34 - 1;
        if (v26)
        {
          goto LABEL_43;
        }
      }

      *v12 = v23;
      v12[1] = v22;
      v12[2] = v24;
      v12 += 3;
      ++v6;
      v20 += 2;
      if (v21 == v4)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v12 = v7 + 4;
  v11 = v19 >> 1;
  if (v4 > v5)
  {
    goto LABEL_12;
  }

LABEL_36:
  v36 = v7[3];
  if (v36 < 2)
  {
    return v7;
  }

  v37 = v36 >> 1;
  v26 = __OFSUB__(v37, v11);
  v38 = v37 - v11;
  if (!v26)
  {
    v7[2] = v38;
    return v7;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_2267EDD08()
{
  sub_226835438();
  v2 = sub_226835418();
  v3 = sub_226835408();

  if (!v0)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84F90];
    v5 = sub_2268363F8();
    v10[4] = sub_2267EED2C;
    v10[5] = v4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2267EC6D8;
    v10[3] = &block_descriptor_9;
    v6 = _Block_copy(v10);

    [v3 enumeratePeopleMatchingName:v5 block:v6];
    _Block_release(v6);

    swift_beginAccess();
    v7 = *(v4 + 16);
    if (v7[2])
    {
      v1 = v7[4];
      v8 = v7[5];
    }

    else
    {
      v1 = 0;
    }

    swift_unknownObjectRelease();
  }

  return v1;
}

void sub_2267EDEA4(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_226835438();
    v4 = sub_226835418();
    v5 = sub_226835408();

    if (!v2)
    {
      v6 = sub_2268363F8();
      v7 = [v5 personForIdentifier_];

      if (v7 && (v8 = [v7 entityIdentifier], v9 = objc_msgSend(v8, sel_stringValue), v8, v9))
      {
        sub_226836408();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_2267EDFEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26F8, &unk_226875BF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - v8;
  v10 = sub_2268353C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226835438();
  v16 = sub_226835418();
  sub_226835428();

  if (!v0)
  {
    v21 = v11;
    sub_2268353B8();
    sub_2267A1AF8(v9, v5, &qword_27D7A26F8, &unk_226875BF8);
    v17 = sub_226835458();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v5, 1, v17) == 1)
    {
      sub_2267A1DC0(v5, &qword_27D7A26F8, &unk_226875BF8);
      v16 = 0;
    }

    else
    {
      v16 = sub_226835448();
      (*(v18 + 8))(v5, v17);
    }

    sub_2267A1DC0(v9, &qword_27D7A26F8, &unk_226875BF8);
    (*(v21 + 8))(v15, v10);
  }

  return v16;
}

uint64_t sub_2267EE26C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226835478();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267EE32C, 0, 0);
}

uint64_t sub_2267EE32C()
{
  v1 = v0[3];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = objc_allocWithZone(sub_226835518());
    v0[7] = sub_226835508();
    v8 = *(MEMORY[0x277D1F3D0] + 4);
    v12 = (*MEMORY[0x277D1F3D0] + MEMORY[0x277D1F3D0]);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_2267EE4A8;
    v11 = v0[2];
    v10 = v0[3];

    return v12(v11, v10, 0);
  }

  else
  {
    v4 = v0[6];

    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }
}

uint64_t sub_2267EE4A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_2267EE9C0;
  }

  else
  {
    v5 = sub_2267EE5BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t sub_2267EE5BC()
{
  v55 = v0;
  v1 = *(v0 + 72);
  result = sub_2268354F8();
  v3 = result;
  if (result >> 62)
  {
    result = sub_2268368D8();
    v4 = result;
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  v52 = v0;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = *(v0 + 40);
    v8 = v3;
    v9 = v3 & 0xC000000000000001;
    v50 = (v7 + 8);
    v10 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    v51 = v3;
    do
    {
      if (v9)
      {
        v11 = MEMORY[0x22AA7FDD0](v6, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v6 + 32);
      }

      v12 = v11;
      sub_2268354E8();
      if (v13 <= 0.5)
      {
      }

      else
      {
        v14 = v4;
        v15 = v9;
        v16 = v5;
        v17 = *(v52 + 48);
        v18 = v10;
        v19 = *(v52 + 32);
        sub_2268354D8();
        v20 = sub_226835468();
        v22 = v21;
        v23 = v19;
        v10 = v18;
        (*v50)(v17, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2267A046C(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v10 + 2);
        v24 = *(v10 + 3);
        if (v25 >= v24 >> 1)
        {
          v10 = sub_2267A046C((v24 > 1), v25 + 1, 1, v10);
        }

        *(v10 + 2) = v25 + 1;
        v26 = &v10[16 * v25];
        *(v26 + 4) = v20;
        *(v26 + 5) = v22;
        sub_2268354E8();
        v28 = v27;
        v5 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2267ED118(0, *(v16 + 2) + 1, 1, v16);
        }

        v9 = v15;
        v4 = v14;
        v8 = v51;
        v30 = *(v5 + 2);
        v29 = *(v5 + 3);
        if (v30 >= v29 >> 1)
        {
          v5 = sub_2267ED118((v29 > 1), v30 + 1, 1, v5);
        }

        *(v5 + 2) = v30 + 1;
        *&v5[8 * v30 + 32] = v28;
      }

      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v31 = v10;
  v32 = v52;
  v33 = *(v52 + 80);

  v34 = sub_2267EDA30(v31, v5);

  v53 = v34;
  sub_2267EC964(&v53);
  v35 = v53;
  v36 = v53[2];
  if (v36)
  {
    v54 = MEMORY[0x277D84F90];
    sub_2267A0578(0, v36, 0);
    v37 = 0;
    v38 = v54;
    v39 = *(v54 + 16);
    v40 = 16 * v39;
    do
    {
      v42 = v35[v37 + 4];
      v41 = v35[v37 + 5];
      v54 = v38;
      v43 = *(v38 + 24);

      if (v39 >= v43 >> 1)
      {
        sub_2267A0578((v43 > 1), v39 + 1, 1);
        v38 = v54;
      }

      *(v38 + 16) = v39 + 1;
      v44 = v38 + v40;
      *(v44 + 32) = v42;
      *(v44 + 40) = v41;
      v40 += 16;
      v37 += 3;
      ++v39;
      --v36;
    }

    while (v36);
    v32 = v52;
    v45 = *(v52 + 56);
  }

  else
  {
    v46 = *(v52 + 72);
    v47 = *(v52 + 56);

    v38 = MEMORY[0x277D84F90];
  }

  v48 = *(v32 + 48);

  v49 = *(v32 + 8);

  return v49(v38);
}

uint64_t sub_2267EE9C0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t dispatch thunk of MegadomeContextualPersonRelationships.entityRelationships(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2267A1644;

  return v10(a1, a2);
}

uint64_t sub_2267EEC78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267ECC60(v2, v3, v4);
}

void sub_2267EED2C(void *a1)
{
  v2 = [a1 entityIdentifier];
  v3 = [v2 stringValue];

  if (v3)
  {
    v4 = sub_226836408();
    v6 = v5;

    swift_beginAccess();
    v7 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2267A046C(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2267A046C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v4;
    *(v11 + 5) = v6;
    *(v1 + 16) = v7;
    swift_endAccess();
  }
}

id sub_2267EEE40()
{
  v1 = OBJC_IVAR___ATXSportsServer____lazy_storage___listener;
  v2 = *(v0 + OBJC_IVAR___ATXSportsServer____lazy_storage___listener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ATXSportsServer____lazy_storage___listener);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCAE98]) initWithMachServiceName_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2267EEED8()
{
  result = [objc_allocWithZone(type metadata accessor for SportsServer()) init];
  qword_2813905F0 = result;
  return result;
}

uint64_t *sub_2267EEF08()
{
  if (qword_2813905E8 != -1)
  {
    swift_once();
  }

  return &qword_2813905F0;
}

id static SportsServer.shared.getter()
{
  if (qword_2813905E8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813905F0;

  return v1;
}

id sub_2267EF010()
{
  v1 = sub_226836068();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___ATXSportsServer____lazy_storage___listener] = 0;
  v7 = type metadata accessor for SportsServer();
  v15.receiver = v0;
  v15.super_class = v7;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = sub_226799540();
  (*(v2 + 16))(v6, v9, v1);
  v10 = sub_226836038();
  v11 = sub_2268366E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v10, v11, "SportsServer: init", v12, 2u);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
  v13 = sub_2267EEE40();
  [v13 resume];

  return v8;
}

uint64_t sub_2267EF20C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2267EB43C;

  return sub_2267F5388();
}

uint64_t sub_2267EF420(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2267EF4C8;

  return sub_2267F5388();
}

uint64_t sub_2267EF4C8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_226835018();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2267EF648(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A26A0, qword_226875858);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v10 = sub_226835228();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v13 = sub_226836068();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267EF88C, 0, 0);
}

uint64_t sub_2267EF88C()
{
  v47 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_226799540();
  *(v0 + 192) = v10;
  v11 = *(v3 + 16);
  *(v0 + 200) = v11;
  *(v0 + 208) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v10, v2);
  v12 = *(v7 + 16);
  v12(v4, v9, v6);
  v12(v5, v8, v6);
  v13 = sub_226836038();
  v14 = sub_2268366E8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 184);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  if (v15)
  {
    v44 = *(v0 + 152);
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v23 = 136315394;
    sub_2267F7294(&qword_28138FE40);
    v43 = v17;
    v42 = v16;
    v24 = sub_226836B48();
    v40 = v14;
    v26 = v25;
    log = v13;
    v27 = *(v21 + 8);
    v27(v19, v22);
    v28 = sub_2263B4D48(v24, v26, &v46);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = sub_226836B48();
    v31 = v30;
    v27(v20, v22);
    v32 = sub_2263B4D48(v29, v31, &v46);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_2263AA000, log, v40, "SportsServer: scheduledGameQIDs %s - %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v41, -1, -1);
    MEMORY[0x22AA821D0](v23, -1, -1);

    v33 = *(v43 + 8);
    v33(v42, v44);
  }

  else
  {

    v27 = *(v21 + 8);
    v27(v20, v22);
    v27(v19, v22);
    v33 = *(v17 + 8);
    v33(v16, v18);
  }

  *(v0 + 216) = v27;
  *(v0 + 224) = v33;
  v34 = *((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x70);
  v45 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  *(v0 + 232) = v36;
  *v36 = v0;
  v36[1] = sub_2267EFC58;
  v37 = *(v0 + 32);

  return v45();
}

uint64_t sub_2267EFC58(uint64_t a1)
{
  v3 = *(*v2 + 232);
  v4 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  if (v1)
  {
    v6 = v4[22];
    v5 = v4[23];
    v7 = v4[21];
    v9 = v4[17];
    v8 = v4[18];
    v11 = v4[13];
    v10 = v4[14];
    v12 = v4[12];
    v16 = v4[11];
    v17 = v4[10];
    v13 = v4[7];

    v14 = v4[1];

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2267EFE30, 0, 0);
  }
}

uint64_t sub_2267EFE30()
{
  v124 = v0;
  v1 = [*(v0 + 240) teams];
  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v2 = sub_226836568();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v120 = v0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2268368D8();
  v120 = v0;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v0 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA7FDD0](v5, v2);
        v0 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v5 + 32);
        v0 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v7 = v6;
      v8 = [v7 umcid];
      if (v8)
      {
        break;
      }

      ++v5;
      if (v0 == v3)
      {
        goto LABEL_24;
      }
    }

    v9 = v8;
    v10 = sub_226836408();
    v115 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2267A046C(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_2267A046C((v12 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = v115;
  }

  while (v0 != v3);
LABEL_24:
  v15 = v120;
  v16 = *(v120 + 248);
  v18 = *(v120 + 16);
  v17 = *(v120 + 24);

  v19 = sub_2267A5D68(v4);

  v20 = sub_2267F63A4(v18, v17);
  if (v16)
  {
    v21 = *(v120 + 240);

    v23 = *(v120 + 176);
    v22 = *(v120 + 184);
    v24 = *(v120 + 168);
    v26 = *(v120 + 136);
    v25 = *(v120 + 144);
    v28 = *(v120 + 104);
    v27 = *(v120 + 112);
    v30 = *(v120 + 88);
    v29 = *(v120 + 96);
    v31 = *(v120 + 80);
    v116 = *(v120 + 56);

    v32 = *(v120 + 8);

    return v32();
  }

  else
  {
    v34 = v20;
    v35 = *(v120 + 208);
    (*(v120 + 200))(*(v120 + 176), *(v120 + 192), *(v120 + 152));

    v36 = sub_226836038();
    v37 = sub_2268366E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = *(v34 + 16);

      _os_log_impl(&dword_2263AA000, v36, v37, "SportsServer: games returned %ld", v38, 0xCu);
      MEMORY[0x22AA821D0](v38, -1, -1);
    }

    else
    {
    }

    v100 = *(v120 + 160) + 8;
    result = (*(v120 + 224))(*(v120 + 176), *(v120 + 152));
    v117 = *(v34 + 16);
    if (v117)
    {
      v39 = 0;
      v109 = *(v120 + 64);
      v112 = *(v120 + 72);
      v40 = v19 + 56;
      v106 = MEMORY[0x277D84F90];
      while (v39 < *(v34 + 16))
      {
        v41 = *(v15 + 112);
        v42 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v43 = *(v112 + 72);
        v44 = v34;
        sub_2267A1AF8(v34 + v42 + v43 * v39, v41, &unk_27D7A2710, &qword_226875C20);
        if (!*(v19 + 16))
        {
          goto LABEL_33;
        }

        v45 = (v41 + *(v109 + 64));
        v46 = *v45;
        v47 = v45[1];
        v48 = *(v19 + 40);
        sub_226836C08();
        sub_226836498();
        v49 = sub_226836C48();
        v50 = -1 << *(v19 + 32);
        v51 = v49 & ~v50;
        if ((*(v40 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
        {
          v52 = ~v50;
          while (1)
          {
            v53 = (*(v19 + 48) + 16 * v51);
            v54 = *v53 == v46 && v53[1] == v47;
            if (v54 || (sub_226836B58() & 1) != 0)
            {
              break;
            }

            v51 = (v51 + 1) & v52;
            if (((*(v40 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v15 = v120;
          sub_2267F72D8(*(v120 + 112), *(v120 + 104), &unk_27D7A2710, &qword_226875C20);
          v55 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2267F3E2C(0, v106[2] + 1, 1);
            v55 = v106;
          }

          v57 = v55[2];
          v56 = v55[3];
          if (v57 >= v56 >> 1)
          {
            sub_2267F3E2C(v56 > 1, v57 + 1, 1);
            v55 = v106;
          }

          v58 = *(v120 + 104);
          v55[2] = v57 + 1;
          v106 = v55;
          result = sub_2267F72D8(v58, v55 + v42 + v57 * v43, &unk_27D7A2710, &qword_226875C20);
        }

        else
        {
LABEL_33:
          v15 = v120;
          result = sub_2267A1DC0(*(v120 + 112), &unk_27D7A2710, &qword_226875C20);
        }

        ++v39;
        v34 = v44;
        if (v39 == v117)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    else
    {
      v106 = MEMORY[0x277D84F90];
LABEL_52:
      v123 = v106;

      sub_2267F2A70(&v123);

      v59 = v123;
      v60 = v123[2];
      if (v60)
      {
        v61 = *(v15 + 128);
        v63 = *(v15 + 80);
        v62 = *(v15 + 88);
        v64 = *(v15 + 72);
        v107 = *(v15 + 48);
        v110 = *(v15 + 64);
        v105 = *(v15 + 40);
        v123 = MEMORY[0x277D84F90];
        sub_2267F3DEC(0, v60, 0);
        v65 = v123;
        v66 = v59 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v103 = v63 + 8;
        v104 = v62 + 8;
        v101 = *(v64 + 72);
        v102 = (v61 + 32);
        do
        {
          v118 = v60;
          v121 = v65;
          v113 = *(v15 + 216);
          v67 = *(v15 + 120);
          v69 = *(v15 + 88);
          v68 = *(v15 + 96);
          v70 = v15;
          v71 = *(v15 + 80);
          v72 = *(v70 + 56);
          sub_2267A1AF8(v66, v68, &unk_27D7A2710, &qword_226875C20);
          v73 = (v72 + *(v105 + 48));
          sub_2267A1AF8(v68, v69, &unk_27D7A2710, &qword_226875C20);
          v74 = *(v104 + *(v110 + 48));

          v75 = *(v104 + *(v110 + 64));

          (*v102)(v72, v69, v67);
          sub_2267F72D8(v68, v71, &unk_27D7A2710, &qword_226875C20);
          v76 = (v71 + *(v110 + 48));
          v77 = *v76;
          v78 = v76[1];
          v79 = *(v103 + *(v110 + 64));

          *v73 = v77;
          v73[1] = v78;
          v65 = v121;
          v113(v71, v67);
          v123 = v121;
          v81 = v121[2];
          v80 = v121[3];
          if (v81 >= v80 >> 1)
          {
            sub_2267F3DEC(v80 > 1, v81 + 1, 1);
            v65 = v123;
          }

          v82 = *(v70 + 56);
          v65[2] = v81 + 1;
          sub_2267F72D8(v82, v65 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v81, &qword_27D7A26A0, qword_226875858);
          v66 += v101;
          --v60;
          v15 = v70;
        }

        while (v118 != 1);
      }

      else
      {

        v65 = MEMORY[0x277D84F90];
      }

      v83 = *(v15 + 208);
      (*(v15 + 200))(*(v15 + 168), *(v15 + 192), *(v15 + 152));

      v84 = sub_226836038();
      v85 = sub_2268366E8();
      v122 = v65;
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 134217984;
        *(v86 + 4) = v65[2];

        _os_log_impl(&dword_2263AA000, v84, v85, "SportsServer: games filtered %ld", v86, 0xCu);
        MEMORY[0x22AA821D0](v86, -1, -1);
      }

      else
      {
      }

      v87 = *(v15 + 240);
      v88 = *(v15 + 224);
      v90 = *(v15 + 176);
      v89 = *(v15 + 184);
      v91 = *(v15 + 168);
      v93 = *(v15 + 144);
      v92 = *(v15 + 152);
      v94 = *(v15 + 136);
      v95 = v15;
      v98 = v15 + 104;
      v97 = *(v15 + 104);
      v96 = *(v98 + 8);
      v108 = v95[12];
      v111 = v95[11];
      v114 = v95[10];
      v119 = v95[7];

      v88(v91, v92);

      v99 = v95[1];

      return v99(v122);
    }
  }

  return result;
}

uint64_t sub_2267F0874(uint64_t (*a1)(void), const char *a2)
{
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226799540();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_226836038();
  v12 = a1();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v11, v12, a2, v13, 2u);
    MEMORY[0x22AA821D0](v13, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2267F0A34(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2267F0B00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A27F8, qword_226875D38);
    **(*(v4 + 64) + 40) = sub_226836568();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2267F0BEC(uint64_t a1, uint64_t a2, int64_t a3, void **a4)
{
  v265 = a4;
  v287 = a3;
  v261 = a2;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v263 = *(v264 - 8);
  v4 = *(v263 + 64);
  MEMORY[0x28223BE20](v264, v5);
  v270 = &v257 - v6;
  v7 = sub_2268354B8();
  v288 = *(v7 - 8);
  v289 = v7;
  v8 = *(v288 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v281 = &v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v257 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v262 = &v257 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v284 = &v257 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v282 = (&v257 - v23);
  MEMORY[0x28223BE20](v24, v25);
  v277 = &v257 - v26;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2740, &qword_226875CE8);
  v27 = *(*(v286 - 8) + 64);
  MEMORY[0x28223BE20](v286, v28);
  v280 = (&v257 - v29);
  v267 = sub_226836068();
  v272 = *(v267 - 8);
  v30 = *(v272 + 64);
  MEMORY[0x28223BE20](v267, v31);
  v268 = &v257 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v269 = &v257 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v271 = &v257 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v260 = &v257 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v283 = (&v257 - v44);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v257 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2750, &unk_226875CF0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8, v51);
  v53 = &v257 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8, v56);
  v58 = &v257 - v57;
  v59 = sub_226835228();
  v60 = *(v59 - 8);
  v61 = v60[8];
  MEMORY[0x28223BE20](v59, v62);
  v266 = &v257 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v65);
  v278 = &v257 - v66;
  MEMORY[0x28223BE20](v67, v68);
  v273 = &v257 - v69;
  MEMORY[0x28223BE20](v70, v71);
  v259 = (&v257 - v72);
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v257 - v75;
  MEMORY[0x28223BE20](v77, v78);
  v285 = &v257 - v79;
  sub_2268354C8();
  v80 = sub_226835538();
  v81 = *(v80 - 8);
  if ((*(v81 + 48))(v53, 1, v80) != 1)
  {
    sub_226835528();
    (*(v81 + 8))(v53, v80);
    if ((v60[6])(v58, 1, v59) == 1)
    {
      goto LABEL_4;
    }

    v275 = v14;
    v279 = v60;
    (v60[4])(v285, v58, v59);
    sub_2267F7294(&qword_28138FCC0);
    v89 = v287;
    v90 = sub_2268363B8();
    v91 = v289;
    v92 = v267;
    v93 = v273;
    if ((v90 & 1) == 0 || (v94 = *(v286 + 36), (sub_226836398() & 1) == 0))
    {
      v95 = sub_226799540();
      v96 = v283;
      (*(v272 + 16))(v283, v95, v92);
      v97 = v89;
      v98 = v279;
      (v279[2])(v76, v285, v59);
      v99 = v97;
      v100 = v280;
      sub_2267A1AF8(v99, v280, &unk_27D7A2740, &qword_226875CE8);
      v101 = v92;
      v102 = sub_226836038();
      v103 = sub_2268366D8();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        v290[0] = v287;
        *v104 = 136315394;
        sub_2267F7294(&qword_28138FE40);
        v105 = sub_226836B48();
        v107 = v106;
        (v98[1])(v76, v59);
        v108 = sub_2263B4D48(v105, v107, v290);

        *(v104 + 4) = v108;
        *(v104 + 12) = 2080;
        v291 = 0;
        v292 = 0xE000000000000000;
        sub_226836A48();
        MEMORY[0x22AA7F8E0](3943982, 0xE300000000000000);
        v109 = *(v286 + 36);
        v91 = v289;
        sub_226836A48();
        v110 = v291;
        v111 = v292;
        sub_2267A1DC0(v100, &unk_27D7A2740, &qword_226875CE8);
        v112 = sub_2263B4D48(v110, v111, v290);

        *(v104 + 14) = v112;
        _os_log_impl(&dword_2263AA000, v102, v103, "SportsServer: Returned date is out of requested bounds [%s] %s", v104, 0x16u);
        v113 = v287;
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v113, -1, -1);
        v114 = v104;
        v93 = v273;
        MEMORY[0x22AA821D0](v114, -1, -1);

        v92 = v267;
        (*(v272 + 8))(v96, v267);
      }

      else
      {

        sub_2267A1DC0(v100, &unk_27D7A2740, &qword_226875CE8);
        (v98[1])(v76, v59);
        (*(v272 + 8))(v96, v101);
        v92 = v101;
      }
    }

    v276 = v59;
    v115 = *(v261 + 16);
    v116 = v275;
    v287 = v115;
    if (v115)
    {
      v283 = *(v288 + 16);
      v274 = (*(v288 + 80) + 32) & ~*(v288 + 80);
      v117 = v261 + v274;
      v118 = *(v288 + 72);
      v280 = (v288 + 32);
      v286 = v288 + 16;
      v119 = (v288 + 8);
      v120 = MEMORY[0x277D84F90];
      v121 = v261 + v274;
      v122 = v277;
      (v283)(v277, v261 + v274, v91);
      while (1)
      {
        v123 = sub_226835488();
        if (!v124)
        {
          goto LABEL_14;
        }

        v291 = v123;
        v292 = v124;
        v290[0] = 778268021;
        v290[1] = 0xE400000000000000;
        sub_2267F7370();
        sub_2267F73C4();
        v125 = sub_226836378();
        v91 = v289;

        if (v125)
        {
          isa = v280->isa;
          (v280->isa)(v282, v122, v91);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v293 = v120;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2267F3E6C(0, *(v120 + 16) + 1, 1);
            v120 = v293;
          }

          v129 = *(v120 + 16);
          v128 = *(v120 + 24);
          if (v129 >= v128 >> 1)
          {
            sub_2267F3E6C(v128 > 1, v129 + 1, 1);
            v120 = v293;
          }

          *(v120 + 16) = v129 + 1;
          v91 = v289;
          (isa)(v120 + v274 + v129 * v118, v282, v289);
          v122 = v277;
        }

        else
        {
LABEL_14:
          (*v119)(v122, v91);
        }

        v121 += v118;
        if (!--v115)
        {
          break;
        }

        (v283)(v122, v121, v91);
      }

      v283 = *(v120 + 16);

      v290[0] = MEMORY[0x277D84F90];
      v130 = v287;
      sub_2267A0578(0, v287, 0);
      v131 = v290[0];
      do
      {
        v291 = 10;
        v292 = 0xE100000000000000;
        v132 = sub_2268354A8();
        if (v133)
        {
          v134 = v133;
        }

        else
        {
          v132 = 7104878;
          v134 = 0xE300000000000000;
        }

        MEMORY[0x22AA7F8E0](v132, v134);

        MEMORY[0x22AA7F8E0](8250, 0xE200000000000000);
        v135 = sub_226835498();
        if (v136)
        {
          v137 = v136;
        }

        else
        {
          v135 = 7104878;
          v137 = 0xE300000000000000;
        }

        MEMORY[0x22AA7F8E0](v135, v137);

        MEMORY[0x22AA7F8E0](2112032, 0xE300000000000000);
        v138 = sub_226835488();
        if (v139)
        {
          v140 = v139;
        }

        else
        {
          v138 = 7104878;
          v140 = 0xE300000000000000;
        }

        MEMORY[0x22AA7F8E0](v138, v140);

        v142 = v291;
        v141 = v292;
        v290[0] = v131;
        v144 = *(v131 + 16);
        v143 = *(v131 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_2267A0578((v143 > 1), v144 + 1, 1);
          v131 = v290[0];
        }

        *(v131 + 16) = v144 + 1;
        v145 = v131 + 16 * v144;
        *(v145 + 32) = v142;
        *(v145 + 40) = v141;
        v117 += v118;
        --v130;
      }

      while (v130);
      v92 = v267;
      v91 = v289;
      v146 = v275;
      v93 = v273;
      v147 = v283;
    }

    else
    {
      v131 = MEMORY[0x277D84F90];
      v147 = *(MEMORY[0x277D84F90] + 16);

      v146 = v116;
    }

    v291 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
    sub_2267D503C();
    v282 = sub_226836388();
    v286 = v148;

    v149 = v284;
    v150 = v268;
    v151 = v272;
    v152 = v271;
    if (!v147)
    {
      v283 = 0;
      v153 = sub_226799540();
      (*(v151 + 16))(v260, v153, v92);
      v154 = v259;
      v155 = v276;
      (v279[2])(v259, v285, v276);
      v156 = v286;

      v157 = sub_226836038();
      v158 = v92;
      v159 = sub_2268366D8();

      if (os_log_type_enabled(v157, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v291 = v161;
        *v160 = 136315394;
        sub_2267F7294(&qword_28138FE40);
        v280 = v157;
        v162 = sub_226836B48();
        v164 = v163;
        (v279[1])(v154, v155);
        v165 = sub_2263B4D48(v162, v164, &v291);
        v149 = v284;

        *(v160 + 4) = v165;
        *(v160 + 12) = 2080;
        *(v160 + 14) = sub_2263B4D48(v282, v156, &v291);
        v166 = v280;
        _os_log_impl(&dword_2263AA000, v280, v159, "SportsServer: No umcids found for game at %s with teams: %s", v160, 0x16u);
        swift_arrayDestroy();
        v167 = v161;
        v91 = v289;
        MEMORY[0x22AA821D0](v167, -1, -1);
        v168 = v160;
        v150 = v268;
        MEMORY[0x22AA821D0](v168, -1, -1);
      }

      else
      {

        (v279[1])(v154, v155);
      }

      v151 = v272;
      (*(v272 + 8))(v260, v158);
      v92 = v158;
      v152 = v271;
      v93 = v273;
      v147 = v283;
    }

    v169 = v287;
    if (v147 == v287)
    {

      v171 = v278;
      if (v169)
      {
LABEL_46:
        v172 = *(v288 + 16);
        v173 = v261 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
        v282 = (v279 + 2);
        v274 = *(v288 + 72);
        v273 = (v151 + 16);
        v288 += 16;
        ++v279;
        v280 = (v288 - 8);
        v272 = v151 + 8;
        *&v170 = 136315650;
        v258 = v170;
        *&v170 = 136315906;
        v257 = v170;
        v277 = v172;
        while (1)
        {
          v286 = v173;
          (v172)(v149);
          v283 = sub_226835498();
          v287 = v169;
          if (v175)
          {
            v176 = v175;
            v177 = sub_226835488();
            if (v178)
            {
              v179 = v178;
              v180 = v171;
              v181 = v92;
              v182 = v177;
              v183 = (v270 + *(v264 + 48));
              v184 = (v270 + *(v264 + 64));
              v185 = *v282;
              v186 = v276;
              (*v282)();
              *v183 = v283;
              v183[1] = v176;
              v261 = v182;
              *v184 = v182;
              v184[1] = v179;
              v187 = v265;
              v188 = *v265;

              v189 = swift_isUniquelyReferenced_nonNull_native();
              *v187 = v188;
              if ((v189 & 1) == 0)
              {
                v188 = sub_2267F2880(0, v188[2] + 1, 1, v188);
                *v265 = v188;
              }

              v190 = v269;
              v192 = v188[2];
              v191 = v188[3];
              if (v192 >= v191 >> 1)
              {
                v188 = sub_2267F2880(v191 > 1, v192 + 1, 1, v188);
                *v265 = v188;
              }

              v188[2] = v192 + 1;
              sub_2267F72D8(v270, v188 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v192, &unk_27D7A2710, &qword_226875C20);
              v193 = sub_226799540();
              (*v273)(v190, v193, v181);
              v171 = v180;
              (v185)(v180, v285, v186);
              v194 = v262;
              v91 = v289;
              v172 = v277;
              (v277)(v262, v284, v289);

              v195 = sub_226836038();
              v196 = sub_2268366E8();

              if (os_log_type_enabled(v195, v196))
              {
                v197 = swift_slowAlloc();
                v260 = swift_slowAlloc();
                v291 = v260;
                *v197 = v257;
                sub_2267F7294(&qword_28138FE40);
                v198 = sub_226836B48();
                v199 = v194;
                v201 = v200;
                v271 = *v279;
                (v271)(v278, v186);
                v202 = sub_2263B4D48(v198, v201, &v291);

                *(v197 + 4) = v202;
                *(v197 + 12) = 2080;
                v203 = sub_2268354A8();
                if (v204)
                {
                  v205 = v203;
                }

                else
                {
                  v205 = 7104878;
                }

                if (v204)
                {
                  v206 = v204;
                }

                else
                {
                  v206 = 0xE300000000000000;
                }

                v259 = v280->isa;
                v207 = v199;
                v171 = v278;
                (v259)(v207, v289);
                v208 = sub_2263B4D48(v205, v206, &v291);

                *(v197 + 14) = v208;
                *(v197 + 22) = 2080;
                v209 = sub_2263B4D48(v283, v176, &v291);

                *(v197 + 24) = v209;
                *(v197 + 32) = 2080;
                v172 = v277;
                v210 = sub_2263B4D48(v261, v179, &v291);

                *(v197 + 34) = v210;
                _os_log_impl(&dword_2263AA000, v195, v196, "SportsServer: Game at %s with team %s : %s : %s", v197, 0x2Au);
                v211 = v260;
                swift_arrayDestroy();
                MEMORY[0x22AA821D0](v211, -1, -1);
                v212 = v197;
                v91 = v289;
                MEMORY[0x22AA821D0](v212, -1, -1);

                v92 = v267;
                (*v272)(v269, v267);
                v149 = v284;
                (v259)(v284, v91);
              }

              else
              {

                v232 = v280->isa;
                (v280->isa)(v194, v91);
                v271 = *v279;
                (v271)(v171, v186);
                v92 = v267;
                (*v272)(v269, v267);
                v149 = v284;
                (v232)(v284, v91);
              }

              v146 = v275;
              v150 = v268;
              goto LABEL_48;
            }

            v149 = v284;
          }

          v213 = sub_226799540();
          (*v273)(v150, v213, v92);
          v214 = v266;
          v215 = v276;
          (*v282)(v266, v285, v276);
          (v172)(v146, v149, v91);
          v216 = v172;
          v217 = v146;
          v218 = v281;
          (v216)(v281, v149, v91);
          v219 = v150;
          v220 = sub_226836038();
          v221 = sub_2268366C8();
          if (os_log_type_enabled(v220, v221))
          {
            LODWORD(v283) = v221;
            v222 = v214;
            v223 = swift_slowAlloc();
            v224 = swift_slowAlloc();
            v291 = v224;
            *v223 = v258;
            sub_2267F7294(&qword_28138FE40);
            v225 = sub_226836B48();
            v227 = v226;
            v271 = *v279;
            (v271)(v222, v215);
            v228 = sub_2263B4D48(v225, v227, &v291);

            *(v223 + 4) = v228;
            *(v223 + 12) = 2080;
            sub_226835498();
            if (v229)
            {

              v230 = 0;
              v231 = 0xE000000000000000;
            }

            else
            {
              v231 = 0xE300000000000000;
              v230 = 6580593;
            }

            v172 = v277;
            v233 = v280->isa;
            (v280->isa)(v275, v289);
            v234 = sub_2263B4D48(v230, v231, &v291);

            *(v223 + 14) = v234;
            *(v223 + 22) = 2080;
            sub_226835488();
            if (v235)
            {

              v236 = 0;
              v237 = 0xE000000000000000;
            }

            else
            {
              v237 = 0xE500000000000000;
              v236 = 0x6469636D75;
            }

            v91 = v289;
            (v233)(v281, v289);
            v238 = sub_2263B4D48(v236, v237, &v291);

            *(v223 + 24) = v238;
            _os_log_impl(&dword_2263AA000, v220, v283, "SportsServer: Game at %s missing identifier %s %s", v223, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA821D0](v224, -1, -1);
            MEMORY[0x22AA821D0](v223, -1, -1);

            v150 = v268;
            (*v272)(v268, v92);
            v149 = v284;
            (v233)(v284, v91);
            v146 = v275;
            v171 = v278;
          }

          else
          {

            v174 = v280->isa;
            (v280->isa)(v218, v91);
            (v174)(v217, v91);
            v271 = *v279;
            (v271)(v214, v215);
            (*v272)(v219, v92);
            (v174)(v149, v91);
            v150 = v219;
            v146 = v217;
            v172 = v277;
            v171 = v278;
          }

LABEL_48:
          v173 = v286 + v274;
          v169 = v287 - 1;
          if (v287 == 1)
          {
            return (v271)(v285, v276);
          }
        }
      }
    }

    else
    {
      v239 = sub_226799540();
      (*(v151 + 16))(v152, v239, v92);
      v240 = v279;
      v241 = v93;
      v242 = v93;
      v243 = v276;
      (v279[2])(v241, v285, v276);
      v244 = v286;

      v245 = sub_226836038();
      v246 = sub_2268366C8();

      if (os_log_type_enabled(v245, v246))
      {
        v247 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v291 = v248;
        *v247 = 136315394;
        sub_2267F7294(&qword_28138FE40);
        v283 = v245;
        v249 = sub_226836B48();
        v251 = v250;
        (v240[1])(v242, v243);
        v252 = sub_2263B4D48(v249, v251, &v291);
        v149 = v284;

        *(v247 + 4) = v252;
        *(v247 + 12) = 2080;
        v253 = sub_2263B4D48(v282, v244, &v291);

        *(v247 + 14) = v253;
        v254 = v283;
        _os_log_impl(&dword_2263AA000, v283, v246, "SportsServer: Missing umcid found for game at %s with teams: %s", v247, 0x16u);
        swift_arrayDestroy();
        v255 = v248;
        v91 = v289;
        MEMORY[0x22AA821D0](v255, -1, -1);
        v256 = v247;
        v169 = v287;
        MEMORY[0x22AA821D0](v256, -1, -1);
      }

      else
      {

        (v240[1])(v242, v243);
      }

      v151 = v272;
      v92 = v267;
      (*(v272 + 8))(v271, v267);
      v150 = v268;
      v171 = v278;
      if (v169)
      {
        goto LABEL_46;
      }
    }

    return (v279[1])(v285, v276);
  }

  sub_2267A1DC0(v53, &unk_27D7A2750, &unk_226875CF0);
  (v60[7])(v58, 1, 1, v59);
LABEL_4:
  sub_2267A1DC0(v58, &qword_27D7A2530, qword_2268738A0);
  v82 = sub_226799540();
  v83 = v272;
  v84 = v267;
  (*(v272 + 16))(v48, v82, v267);
  v85 = sub_226836038();
  v86 = sub_2268366C8();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_2263AA000, v85, v86, "SportsServer: no date", v87, 2u);
    MEMORY[0x22AA821D0](v87, -1, -1);
  }

  return (*(v83 + 8))(v48, v84);
}

id SportsServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_2267F2880(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2730, &qword_226875CD8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2267F2A70(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2267F424C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2267F2B24(v5);
  *a1 = v3;
}

void sub_2267F2B24(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226836B38();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
        v6 = sub_226836598();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2267F2EB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2267F2C68(0, v2, 1, a1);
  }
}

void sub_2267F2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38, v9);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_2267A1AF8(v25, v19, &unk_27D7A2710, &qword_226875C20);
      sub_2267A1AF8(v22, v14, &unk_27D7A2710, &qword_226875C20);
      v26 = sub_2268351C8();
      sub_2267A1DC0(v14, &unk_27D7A2710, &qword_226875C20);
      sub_2267A1DC0(v19, &unk_27D7A2710, &qword_226875C20);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_2267F72D8(v25, v37, &unk_27D7A2710, &qword_226875C20);
      swift_arrayInitWithTakeFrontToBack();
      sub_2267F72D8(v27, v22, &unk_27D7A2710, &qword_226875C20);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2267F2EB8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v108 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v118 = *(v121 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v121, v10);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v120 = &v104 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v123 = &v104 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v122 = &v104 - v20;
  v21 = *(a3 + 8);
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_136;
    }

    v4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = v4;
    }

    else
    {
LABEL_130:
      v98 = sub_2267DE5F0(v4);
    }

    v99 = v6;
    v124 = v98;
    v4 = *(v98 + 2);
    if (v4 >= 2)
    {
      do
      {
        v100 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *&v98[16 * v4];
        v101 = v98;
        v102 = *&v98[16 * v4 + 24];
        sub_2267F37F8(v100 + *(v118 + 72) * a3, v100 + *(v118 + 72) * *&v98[16 * v4 + 16], v100 + *(v118 + 72) * v102, a4);
        if (v99)
        {
          break;
        }

        if (v102 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2267DE5F0(v101);
        }

        if (v4 - 2 >= *(v101 + 2))
        {
          goto LABEL_124;
        }

        v103 = &v101[16 * v4];
        *v103 = a3;
        *(v103 + 1) = v102;
        v124 = v101;
        sub_2267DE564(v4 - 1);
        v98 = v124;
        v4 = *(v124 + 2);
        a3 = v6;
      }

      while (v4 > 1);
    }

LABEL_107:

    return;
  }

  v105 = a4;
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v109 = a3;
  while (1)
  {
    v24 = v22;
    v113 = v23;
    if (v22 + 1 >= v21)
    {
      v21 = v22 + 1;
    }

    else
    {
      v107 = v6;
      v25 = v22;
      v26 = *a3;
      v27 = *(v118 + 72);
      a4 = *a3 + v27 * (v22 + 1);
      v28 = v122;
      sub_2267A1AF8(a4, v122, &unk_27D7A2710, &qword_226875C20);
      v29 = v123;
      sub_2267A1AF8(v26 + v27 * v25, v123, &unk_27D7A2710, &qword_226875C20);
      LODWORD(v117) = sub_2268351C8();
      sub_2267A1DC0(v29, &unk_27D7A2710, &qword_226875C20);
      sub_2267A1DC0(v28, &unk_27D7A2710, &qword_226875C20);
      v106 = v25;
      v4 = v25 + 2;
      v119 = v27;
      v30 = v26 + v27 * (v25 + 2);
      while (v21 != v4)
      {
        v31 = v122;
        sub_2267A1AF8(v30, v122, &unk_27D7A2710, &qword_226875C20);
        v32 = v123;
        sub_2267A1AF8(a4, v123, &unk_27D7A2710, &qword_226875C20);
        v33 = v21;
        v34 = sub_2268351C8() & 1;
        sub_2267A1DC0(v32, &unk_27D7A2710, &qword_226875C20);
        sub_2267A1DC0(v31, &unk_27D7A2710, &qword_226875C20);
        ++v4;
        v30 += v119;
        a4 += v119;
        v35 = (v117 & 1) == v34;
        v21 = v33;
        if (!v35)
        {
          v21 = v4 - 1;
          break;
        }
      }

      a3 = v109;
      v24 = v106;
      v6 = v107;
      if (v117)
      {
        if (v21 < v106)
        {
          goto LABEL_127;
        }

        if (v106 < v21)
        {
          v4 = v119 * (v21 - 1);
          v36 = v21 * v119;
          v37 = v21;
          v38 = v21;
          v39 = v106;
          a4 = v106 * v119;
          do
          {
            if (v39 != --v38)
            {
              v40 = *v109;
              if (!*v109)
              {
                goto LABEL_133;
              }

              sub_2267F72D8(v40 + a4, v112, &unk_27D7A2710, &qword_226875C20);
              if (a4 < v4 || v40 + a4 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_2267F72D8(v112, v40 + v4, &unk_27D7A2710, &qword_226875C20);
            }

            ++v39;
            v4 -= v119;
            v36 -= v119;
            a4 += v119;
          }

          while (v39 < v38);
          v24 = v106;
          v6 = v107;
          a3 = v109;
          v21 = v37;
        }
      }
    }

    v41 = *(a3 + 8);
    if (v21 < v41)
    {
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_126;
      }

      if (v21 - v24 < v105)
      {
        if (__OFADD__(v24, v105))
        {
          goto LABEL_128;
        }

        if (v24 + v105 >= v41)
        {
          v42 = *(a3 + 8);
        }

        else
        {
          v42 = v24 + v105;
        }

        if (v42 < v24)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v21 != v42)
        {
          break;
        }
      }
    }

    v22 = v21;
    if (v21 < v24)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v113;
    }

    else
    {
      v23 = sub_2267DC234(0, *(v113 + 2) + 1, 1, v113);
    }

    v4 = *(v23 + 2);
    v43 = *(v23 + 3);
    a4 = v4 + 1;
    if (v4 >= v43 >> 1)
    {
      v23 = sub_2267DC234((v43 > 1), v4 + 1, 1, v23);
    }

    *(v23 + 2) = a4;
    v44 = &v23[16 * v4];
    *(v44 + 4) = v24;
    *(v44 + 5) = v22;
    v45 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v46 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v47 = *(v23 + 4);
          v48 = *(v23 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_52:
          if (v50)
          {
            goto LABEL_114;
          }

          v63 = &v23[16 * a4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_117;
          }

          v69 = &v23[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_121;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v73 = &v23[16 * a4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_66:
        if (v68)
        {
          goto LABEL_116;
        }

        v76 = &v23[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_119;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v46 - 1;
        if (v46 - 1 >= a4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v84 = v23;
        a4 = *&v23[16 * v4 + 32];
        v85 = *&v23[16 * v46 + 40];
        sub_2267F37F8(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v23[16 * v46 + 32], *a3 + *(v118 + 72) * v85, v45);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v85 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = v84;
        }

        else
        {
          v86 = sub_2267DE5F0(v84);
        }

        if (v4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v86[16 * v4];
        *(v87 + 4) = a4;
        *(v87 + 5) = v85;
        v124 = v86;
        v4 = &v124;
        sub_2267DE564(v46);
        v23 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v23[16 * a4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_112;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_113;
      }

      v58 = &v23[16 * a4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_115;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_118;
      }

      if (v62 >= v54)
      {
        v80 = &v23[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v49 < v83)
        {
          v46 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = *(a3 + 8);
    if (v22 >= v21)
    {
      goto LABEL_96;
    }
  }

  v106 = v24;
  v107 = v6;
  v88 = *a3;
  v89 = *(v118 + 72);
  v90 = *a3 + v89 * (v21 - 1);
  v91 = -v89;
  v92 = v24 - v21;
  v110 = v89;
  v111 = v42;
  v119 = v88;
  a4 = v88 + v21 * v89;
LABEL_86:
  v116 = v90;
  v117 = v21;
  v114 = a4;
  v115 = v92;
  v93 = v90;
  while (1)
  {
    v4 = v122;
    sub_2267A1AF8(a4, v122, &unk_27D7A2710, &qword_226875C20);
    v94 = v123;
    sub_2267A1AF8(v93, v123, &unk_27D7A2710, &qword_226875C20);
    v95 = sub_2268351C8();
    sub_2267A1DC0(v94, &unk_27D7A2710, &qword_226875C20);
    sub_2267A1DC0(v4, &unk_27D7A2710, &qword_226875C20);
    if ((v95 & 1) == 0)
    {
LABEL_85:
      v21 = v117 + 1;
      v22 = v111;
      v90 = v116 + v110;
      v92 = v115 - 1;
      a4 = v114 + v110;
      if (v117 + 1 != v111)
      {
        goto LABEL_86;
      }

      v24 = v106;
      v6 = v107;
      a3 = v109;
      if (v111 < v106)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v119)
    {
      break;
    }

    v96 = v120;
    sub_2267F72D8(a4, v120, &unk_27D7A2710, &qword_226875C20);
    swift_arrayInitWithTakeFrontToBack();
    sub_2267F72D8(v96, v93, &unk_27D7A2710, &qword_226875C20);
    v93 += v91;
    a4 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_2267F37F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v9);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v46 = &v37 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v50 = a1;
  v49 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v19;
    if (v19 >= 1)
    {
      v26 = -v15;
      v27 = a4 + v19;
      v41 = a1;
      v42 = a4;
      v40 = -v15;
      do
      {
        v38 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v43 = v28;
        v44 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v38;
            goto LABEL_58;
          }

          v31 = a3;
          v39 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v46;
          sub_2267A1AF8(v32, v46, &unk_27D7A2710, &qword_226875C20);
          v34 = v29;
          v35 = v47;
          sub_2267A1AF8(v34, v47, &unk_27D7A2710, &qword_226875C20);
          v36 = sub_2268351C8();
          sub_2267A1DC0(v35, &unk_27D7A2710, &qword_226875C20);
          sub_2267A1DC0(v33, &unk_27D7A2710, &qword_226875C20);
          if (v36)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v44;
            a1 = v41;
          }

          else
          {
            v29 = v44;
            a1 = v41;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          v28 = v43;
          v30 = v32 > v42;
          v26 = v40;
          if (!v30)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        if (v31 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          a1 = v41;
          v25 = v39;
        }

        else
        {
          a2 = v44;
          v26 = v40;
          a1 = v41;
          v25 = v39;
          if (v31 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v42);
    }

LABEL_57:
    v50 = a2;
    v48 = v25;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a3;
    v44 = a4 + v18;
    v48 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      do
      {
        v21 = v15;
        v22 = v46;
        sub_2267A1AF8(a2, v46, &unk_27D7A2710, &qword_226875C20);
        v23 = v47;
        sub_2267A1AF8(a4, v47, &unk_27D7A2710, &qword_226875C20);
        v24 = sub_2268351C8();
        sub_2267A1DC0(v23, &unk_27D7A2710, &qword_226875C20);
        sub_2267A1DC0(v22, &unk_27D7A2710, &qword_226875C20);
        v15 = v21;
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v21;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v21;
          a4 += v21;
        }

        a1 += v21;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_2267F3CFC(&v50, &v49, &v48);
}

uint64_t sub_2267F3CFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2710, &qword_226875C20);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_2267F3DEC(size_t a1, int64_t a2, char a3)
{
  result = sub_2267F3E8C(a1, a2, a3, *v3, &unk_27D7A2720, &unk_226875CC8, &qword_27D7A26A0, qword_226875858);
  *v3 = result;
  return result;
}

size_t sub_2267F3E2C(size_t a1, int64_t a2, char a3)
{
  result = sub_2267F3E8C(a1, a2, a3, *v3, &qword_27D7A2730, &qword_226875CD8, &unk_27D7A2710, &qword_226875C20);
  *v3 = result;
  return result;
}

size_t sub_2267F3E6C(size_t a1, int64_t a2, char a3)
{
  result = sub_2267F4074(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2267F3E8C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_2267F4074(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2778, &unk_226875D00);
  v10 = *(sub_2268354B8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2268354B8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2267F4294()
{
  v1 = sub_226836068();
  v0[35] = v1;
  v2 = *(v1 - 8);
  v0[36] = v2;
  v3 = *(v2 + 64) + 15;
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267F43A4, 0, 0);
}

uint64_t sub_2267F43A4()
{
  v1 = v0[44];
  v2 = v0[35];
  v3 = v0[36];
  v4 = [objc_opt_self() isOptOutAvailable];
  v5 = sub_226799540();
  v0[45] = v5;
  v6 = *(v3 + 16);
  v0[46] = v6;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = sub_226836038();
  v8 = sub_2268366A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_2263AA000, v7, v8, "SportsServer: Check isOptOutAvailable %{BOOL}d", v9, 8u);
    MEMORY[0x22AA821D0](v9, -1, -1);
  }

  v10 = v0[44];
  v11 = v0[35];
  v12 = v0[36];

  v13 = *(v12 + 8);
  v0[48] = v13;
  v0[49] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  if (v4)
  {
    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 activeAccount];

    if (v15)
    {
      v16 = [v15 isAuthenticated];
    }

    else
    {
      v16 = 0;
    }

    v6(v0[43], v5, v0[35]);
    v22 = sub_226836038();
    v23 = sub_2268366A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v16;
      _os_log_impl(&dword_2263AA000, v22, v23, "SportsServer: Check isAuthenticated %{BOOL}d", v24, 8u);
      MEMORY[0x22AA821D0](v24, -1, -1);
    }

    v25 = v0[43];
    v26 = v0[35];

    v13(v25, v26);
    if (v16)
    {
      v27 = objc_opt_self();
      v0[50] = v27;
      v0[2] = v0;
      v0[7] = v0 + 53;
      v0[3] = sub_2267F48BC;
      v28 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2788, &unk_226875D20);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_2267F0A34;
      v0[21] = &block_descriptor_39;
      v0[22] = v28;
      [v27 isOnboarded_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v17 = v0 + 38;
    v6(v0[38], v5, v0[35]);
    v18 = sub_226836038();
    v19 = sub_2268366E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "SportsServer: Returning no teams - Not authenticated";
      goto LABEL_17;
    }
  }

  else
  {
    v17 = v0 + 37;
    v6(v0[37], v5, v0[35]);
    v18 = sub_226836038();
    v19 = sub_2268366E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "SportsServer: Returning no teams - Sports not available";
LABEL_17:
      _os_log_impl(&dword_2263AA000, v18, v19, v21, v20, 2u);
      MEMORY[0x22AA821D0](v20, -1, -1);
    }
  }

  v29 = *v17;
  v30 = v0[35];

  v13(v29, v30);
  v31 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];
  v33 = v0[43];
  v32 = v0[44];
  v35 = v0[41];
  v34 = v0[42];
  v37 = v0[39];
  v36 = v0[40];
  v39 = v0[37];
  v38 = v0[38];

  v40 = v0[1];

  return v40(v31);
}

uint64_t sub_2267F48BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_2267F51E8;
  }

  else
  {
    v3 = sub_2267F49CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2267F49CC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 424);
  (*(v0 + 368))(*(v0 + 336), *(v0 + 360), *(v0 + 280));
  v3 = sub_226836038();
  v4 = sub_2268366A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2263AA000, v3, v4, "SportsServer: Check isOnboarded %{BOOL}d", v5, 8u);
    MEMORY[0x22AA821D0](v5, -1, -1);
  }

  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 336);
  v9 = *(v0 + 280);

  v7(v8, v9);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 360);
  v13 = *(v0 + 280);
  if (v2)
  {
    v11(*(v0 + 328), v12, v13);
    v14 = sub_226836038();
    v15 = sub_2268366A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2263AA000, v14, v15, "SportsServer: Request start", v16, 2u);
      MEMORY[0x22AA821D0](v16, -1, -1);
    }

    v18 = *(v0 + 392);
    v17 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = *(v0 + 328);
    v21 = *(v0 + 280);

    v19(v20, v21);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 272;
    *(v0 + 88) = sub_2267F4D88;
    v22 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A27F0, &qword_226875D30);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2267F0B00;
    *(v0 + 232) = &block_descriptor_43_0;
    *(v0 + 240) = v22;
    [v17 favoritesWithCompletion_];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v11(*(v0 + 312), v12, v13);
    v23 = sub_226836038();
    v24 = sub_2268366E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2263AA000, v23, v24, "SportsServer: Returning no teams - Sync my sports not enabled", v25, 2u);
      MEMORY[0x22AA821D0](v25, -1, -1);
    }

    v27 = *(v0 + 384);
    v26 = *(v0 + 392);
    v28 = *(v0 + 312);
    v29 = *(v0 + 280);

    v27(v28, v29);
    v30 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];
    v32 = *(v0 + 344);
    v31 = *(v0 + 352);
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v36 = *(v0 + 312);
    v35 = *(v0 + 320);
    v38 = *(v0 + 296);
    v37 = *(v0 + 304);

    v39 = *(v0 + 8);

    return v39(v30);
  }
}

uint64_t sub_2267F4D88()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_2267F52B8;
  }

  else
  {
    v3 = sub_2267F4E98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2267F4E98()
{
  v27 = v0;
  v2 = *(v0 + 376);
  v3 = *(v0 + 272);
  (*(v0 + 368))(*(v0 + 320), *(v0 + 360), *(v0 + 280));

  v4 = sub_226836038();
  LOBYTE(v5) = sub_2268366A8();
  v6 = v3 >> 62;
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_6;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v6)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    *(v1 + 4) = i;

    _os_log_impl(&dword_2263AA000, v4, v5, "SportsServer: Request finish, count = %ld", v1, 0xCu);
    MEMORY[0x22AA821D0](v1, -1, -1);
LABEL_6:

    v8 = *(v0 + 392);
    (*(v0 + 384))(*(v0 + 320), *(v0 + 280));
    if (v6)
    {
      v5 = sub_2268368D8();
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v26 = MEMORY[0x277D84F90];
    v4 = &v26;
    sub_226836A08();
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v9 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x22AA7FDD0](v9, v3);
    }

    else
    {
      v11 = *(v3 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    v12 = [v11 ID];
    if (!v12)
    {
      sub_226836408();
      v12 = sub_2268363F8();
    }

    ++v9;
    [objc_allocWithZone(MEMORY[0x277CEB858]) initWithName:0 umcid:v12];

    swift_unknownObjectRelease();
    sub_2268369E8();
    v10 = *(v26 + 16);
    sub_226836A18();
    sub_226836A28();
    sub_2268369F8();
  }

  while (v5 != v9);
LABEL_18:

  v13 = objc_allocWithZone(MEMORY[0x277CEB850]);
  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v14 = sub_226836558();

  v15 = [v13 initWithTeams_];

  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v19 = *(v0 + 328);
  v18 = *(v0 + 336);
  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  v23 = *(v0 + 296);
  v22 = *(v0 + 304);

  v24 = *(v0 + 8);

  return v24(v15);
}

uint64_t sub_2267F51E8()
{
  v1 = v0[51];
  swift_willThrow();
  v2 = v0[51];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[37];
  v9 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2267F52B8()
{
  v1 = v0[52];
  swift_willThrow();
  v2 = v0[52];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[37];
  v9 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2267F5388()
{
  v1 = sub_226836068();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267F5474, 0, 0);
}

uint64_t sub_2267F5474()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_226799540();
  v0[11] = v4;
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_226836038();
  v7 = sub_2268366E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2263AA000, v6, v7, "SportsServer: requestedSchedulesForTeams", v8, 2u);
    MEMORY[0x22AA821D0](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[4];
  v11 = v0[5];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2267F55D0;

  return sub_2267F4294();
}

uint64_t sub_2267F55D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_2267F5ABC;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_2267F56F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2267F56F8()
{
  v47 = v0;
  v1 = *(v0 + 136);
  v2 = [v1 teams];
  v37 = v1;

  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v3 = sub_226836568();

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v5 = 0;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    v45 = v3 & 0xC000000000000001;
    v43 = *(v0 + 40) + 8;
    v38 = i;
    v39 = v3;
    while (1)
    {
      if (v45)
      {
        v9 = MEMORY[0x22AA7FDD0](v5, v3);
      }

      else
      {
        if (v5 >= *(v44 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = *(v0 + 104);
      (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 32));
      v13 = v10;
      v14 = sub_226836038();
      v15 = sub_2268366E8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v46 = v42;
        *v16 = 136315394;
        v17 = [v13 qid];
        if (v17)
        {
          v18 = v17;
          v19 = sub_226836408();
          v21 = v20;
        }

        else
        {
          v21 = 0xE300000000000000;
          v19 = 7104878;
        }

        v22 = sub_2263B4D48(v19, v21, &v46);

        *(v16 + 4) = v22;
        *(v16 + 12) = 2080;
        v23 = [v13 umcid];
        if (v23)
        {
          v24 = v23;
          v25 = sub_226836408();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = *(v0 + 72);
        v40 = *(v0 + 32);
        v41 = *(v0 + 112);
        v29 = sub_2263B4D48(v25, v27, &v46);

        *(v16 + 14) = v29;
        _os_log_impl(&dword_2263AA000, v14, v15, "SportsServer: favorite team: %s : %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v42, -1, -1);
        MEMORY[0x22AA821D0](v16, -1, -1);

        v41(v28, v40);
        i = v38;
        v3 = v39;
      }

      else
      {
        v6 = *(v0 + 112);
        v7 = *(v0 + 72);
        v8 = *(v0 + 32);

        v6(v7, v8);
      }

      ++v5;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v33 = *(v0 + 56);
  v32 = *(v0 + 64);
  v34 = *(v0 + 48);

  v35 = *(v0 + 8);

  return v35(v37);
}

uint64_t sub_2267F5ABC()
{
  v113 = v0;
  v1 = v0;
  v2 = *(v0 + 128);
  *(v0 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
  sub_2263B5030(0, &unk_28138F970, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(v0 + 24);
  v5 = [v4 domain];
  v6 = sub_226836408();
  v8 = v7;

  v9 = *MEMORY[0x277D7A990];
  if (v6 == sub_226836408() && v8 == v10)
  {

    goto LABEL_17;
  }

  v12 = sub_226836B58();

  if (v12)
  {
LABEL_17:
    v43 = *(v1 + 96);
    v42 = *(v1 + 104);
    v44 = *(v1 + 88);
    v45 = *(v1 + 64);
    v46 = *(v1 + 32);

    v43(v45, v44, v46);
    v47 = v4;
    v48 = sub_226836038();
    v49 = sub_2268366C8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_2263AA000, v48, v49, "Sports response error - WLK favorite error: %@", v50, 0xCu);
      sub_2267A1DC0(v51, &unk_27D7A1D90, &unk_226873270);
      MEMORY[0x22AA821D0](v51, -1, -1);
      MEMORY[0x22AA821D0](v50, -1, -1);
    }

    v53 = *(v1 + 112);
    v54 = *(v1 + 64);
    goto LABEL_20;
  }

  v13 = [v4 domain];
  v14 = sub_226836408();
  v16 = v15;

  v17 = *MEMORY[0x277D7A988];
  if (v14 == sub_226836408() && v16 == v18)
  {

    goto LABEL_40;
  }

  v20 = sub_226836B58();

  if (v20)
  {
LABEL_40:
    v88 = *(v1 + 96);
    v87 = *(v1 + 104);
    v89 = *(v1 + 88);
    v90 = *(v1 + 56);
    v91 = *(v1 + 32);

    v88(v90, v89, v91);
    v47 = v4;
    v48 = sub_226836038();
    v92 = sub_2268366C8();

    if (os_log_type_enabled(v48, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      *(v93 + 4) = v47;
      *v94 = v47;
      v95 = v47;
      _os_log_impl(&dword_2263AA000, v48, v92, "Sports response error - WLK error: %@", v93, 0xCu);
      sub_2267A1DC0(v94, &unk_27D7A1D90, &unk_226873270);
      MEMORY[0x22AA821D0](v94, -1, -1);
      MEMORY[0x22AA821D0](v93, -1, -1);
    }

    v53 = *(v1 + 112);
    v54 = *(v1 + 56);
LABEL_20:
    v55 = *(v1 + 32);
    v56 = *(v1 + 40);

    v53(v54, v55);
    v57 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];

    v58 = *(v1 + 16);
    v41 = v57;

    goto LABEL_21;
  }

LABEL_13:
  v21 = *(v1 + 128);
  v23 = *(v1 + 96);
  v22 = *(v1 + 104);
  v24 = *(v1 + 88);
  v25 = *(v1 + 48);
  v26 = *(v1 + 32);

  v23(v25, v24, v26);
  v27 = v21;
  v28 = sub_226836038();
  v29 = sub_2268366D8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v1 + 128);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v30;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_2263AA000, v28, v29, "Sports response error - Unexpected error: %@", v31, 0xCu);
    sub_2267A1DC0(v32, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v32, -1, -1);
    MEMORY[0x22AA821D0](v31, -1, -1);
  }

  v35 = *(v1 + 128);
  v36 = *(v1 + 112);
  v38 = *(v1 + 40);
  v37 = *(v1 + 48);
  v39 = *(v1 + 32);

  v36(v37, v39);
  v40 = [objc_allocWithZone(MEMORY[0x277CEB850]) init];

  v41 = v40;
LABEL_21:
  v59 = [v41 teams];

  sub_2263B5030(0, &qword_28138F9A8, 0x277CEB858);
  v60 = sub_226836568();

  v103 = v41;
  if (v60 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v62 = 0;
    v110 = v60 & 0xFFFFFFFFFFFFFF8;
    v111 = v60 & 0xC000000000000001;
    v109 = *(v1 + 40) + 8;
    v104 = i;
    v105 = v60;
    while (1)
    {
      if (v111)
      {
        v66 = MEMORY[0x22AA7FDD0](v62, v60);
      }

      else
      {
        if (v62 >= *(v110 + 16))
        {
          goto LABEL_44;
        }

        v66 = *(v60 + 8 * v62 + 32);
      }

      v67 = v66;
      v68 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v69 = *(v1 + 104);
      (*(v1 + 96))(*(v1 + 72), *(v1 + 88), *(v1 + 32));
      v70 = v67;
      v71 = sub_226836038();
      v72 = sub_2268366E8();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v112 = v108;
        *v73 = 136315394;
        v74 = [v70 qid];
        if (v74)
        {
          v75 = v74;
          v76 = sub_226836408();
          v78 = v77;
        }

        else
        {
          v78 = 0xE300000000000000;
          v76 = 7104878;
        }

        v79 = sub_2263B4D48(v76, v78, &v112);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2080;
        v80 = [v70 umcid];
        if (v80)
        {
          v81 = v80;
          v82 = sub_226836408();
          v84 = v83;
        }

        else
        {
          v84 = 0xE300000000000000;
          v82 = 7104878;
        }

        v85 = *(v1 + 72);
        v106 = *(v1 + 32);
        v107 = *(v1 + 112);
        v86 = sub_2263B4D48(v82, v84, &v112);

        *(v73 + 14) = v86;
        _os_log_impl(&dword_2263AA000, v71, v72, "SportsServer: favorite team: %s : %s", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v108, -1, -1);
        MEMORY[0x22AA821D0](v73, -1, -1);

        v107(v85, v106);
        i = v104;
        v60 = v105;
      }

      else
      {
        v63 = *(v1 + 112);
        v64 = *(v1 + 72);
        v65 = *(v1 + 32);

        v63(v64, v65);
      }

      ++v62;
      if (v68 == i)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:
  v97 = *(v1 + 72);
  v96 = *(v1 + 80);
  v99 = *(v1 + 56);
  v98 = *(v1 + 64);
  v100 = *(v1 + 48);

  v101 = *(v1 + 8);

  return v101(v103);
}

uint64_t sub_2267F63A4(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2738, &qword_226875CE0);
  v3 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v4);
  v75 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v74 = &v65[-v8];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2740, &qword_226875CE8);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73, v10);
  v79 = &v65[-v11];
  v12 = sub_2268353E8();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v84 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_226835228();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v65[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v65[-v24];
  v26 = sub_226836068();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v65[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_226799540();
  v82 = v27;
  (*(v27 + 16))(v31, v32, v26);
  v33 = v17[2];
  v80 = a1;
  v33(v25, a1, v16);
  v34 = v85;
  v70 = v33;
  v71 = v17 + 2;
  (v33)(v21);
  v81 = v31;
  v35 = sub_226836038();
  v36 = sub_2268366E8();
  v37 = os_log_type_enabled(v35, v36);
  v72 = v17;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v86 = v68;
    *v38 = 136315394;
    sub_2267F7294(&qword_28138FE40);
    v69 = v26;
    v67 = v35;
    v39 = sub_226836B48();
    v66 = v36;
    v41 = v40;
    v42 = v17[1];
    v42(v25, v16);
    v43 = sub_2263B4D48(v39, v41, &v86);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = sub_226836B48();
    v46 = v45;
    v42(v21, v16);
    v47 = sub_2263B4D48(v44, v46, &v86);

    *(v38 + 14) = v47;
    v48 = v67;
    _os_log_impl(&dword_2263AA000, v67, v66, "SportsServer: _scheduledGames %s, %s", v38, 0x16u);
    v49 = v68;
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v49, -1, -1);
    v50 = v38;
    v34 = v85;
    MEMORY[0x22AA821D0](v50, -1, -1);

    (*(v82 + 8))(v81, v69);
  }

  else
  {

    v51 = v17[1];
    v49 = v17 + 1;
    v42 = v51;
    v51(v21, v16);
    v51(v25, v16);
    (*(v82 + 8))(v81, v26);
  }

  v86 = MEMORY[0x277D84F90];
  sub_226835438();
  v52 = sub_226835418();
  v53 = v83;
  sub_2268353F8();

  if (v53)
  {
    goto LABEL_8;
  }

  sub_2267F7294(&qword_28138FCC0);
  result = sub_2268363B8();
  if (result)
  {
    v55 = v74;
    v85 = 0;
    v56 = v70;
    v70(v74, v80, v16);
    v57 = v76;
    v56(v55 + *(v76 + 48), v34, v16);
    v58 = v42;
    v59 = v75;
    sub_2267A1AF8(v55, v75, &qword_27D7A2738, &qword_226875CE0);
    v83 = *(v57 + 48);
    v60 = v72[4];
    v49 = v79;
    v60(v79, v59, v16);
    v58(&v59[v83], v16);
    sub_2267F72D8(v55, v59, &qword_27D7A2738, &qword_226875CE0);
    v60(&v49[*(v73 + 36)], &v59[*(v57 + 48)], v16);
    v61 = v84;
    v62 = (v58)(v59, v16);
    MEMORY[0x28223BE20](v62, v63);
    *&v65[-16] = v49;
    *&v65[-8] = &v86;
    v64 = v85;
    sub_2268353D8();
    if (!v64)
    {
      (*(v77 + 8))(v61, v78);
      v49 = v86;
      sub_2267A1DC0(v79, &unk_27D7A2740, &qword_226875CE8);
      return v49;
    }

    (*(v77 + 8))(v61, v78);
    sub_2267A1DC0(v79, &unk_27D7A2740, &qword_226875CE8);
LABEL_8:

    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_2267F6B20(void *a1)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v39 - v12;
  if ([a1 valueForEntitlement_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  aBlock = v46;
  v42 = v47;
  if (*(&v47 + 1))
  {
    if (swift_dynamicCast() && (v45 & 1) != 0)
    {
      v14 = v1;
      v15 = sub_226799540();
      (*(v4 + 16))(v13, v15, v3);
      v16 = a1;
      v17 = sub_226836038();
      v18 = sub_2268366E8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_2263AA000, v17, v18, "SportsServer: connection accepted %@", v19, 0xCu);
        sub_2267A1DC0(v20, &unk_27D7A1D90, &unk_226873270);
        MEMORY[0x22AA821D0](v20, -1, -1);
        MEMORY[0x22AA821D0](v19, -1, -1);
      }

      (*(v4 + 8))(v13, v3);
      v43 = sub_2267F0834;
      v44 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v42 = sub_22679BFD8;
      *(&v42 + 1) = &block_descriptor_10;
      v22 = _Block_copy(&aBlock);
      [v16 setInterruptionHandler_];
      _Block_release(v22);
      v43 = sub_2267F0854;
      v44 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v42 = sub_22679BFD8;
      *(&v42 + 1) = &block_descriptor_35_0;
      v23 = _Block_copy(&aBlock);
      [v16 setInvalidationHandler_];
      _Block_release(v23);
      v24 = ATXSportsInterface();
      [v16 setExportedInterface_];

      [v16 setExportedObject_];
      [v16 resume];
      return 1;
    }
  }

  else
  {
    sub_2267A1DC0(&aBlock, &qword_27D7A1AA0, &qword_2268732C0);
  }

  v26 = sub_226799540();
  (*(v4 + 16))(v8, v26, v3);
  v27 = a1;
  v28 = sub_226836038();
  v29 = sub_2268366C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v3;
    v32 = v31;
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v30 = 138412546;
    *(v30 + 4) = v27;
    *v32 = v27;
    *(v30 + 12) = 2080;
    v34 = sub_226836408();
    v36 = v35;
    v37 = v27;
    v38 = sub_2263B4D48(v34, v36, &aBlock);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_2263AA000, v28, v29, "SportsServer: connection rejected %@ without entitlement %s", v30, 0x16u);
    sub_2267A1DC0(v32, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x22AA821D0](v33, -1, -1);
    MEMORY[0x22AA821D0](v30, -1, -1);

    (*(v4 + 8))(v8, v40);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
  }

  return 0;
}

uint64_t dispatch thunk of SportsServer.requestedSchedulesForTeams()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1644;

  return v6();
}

uint64_t sub_2267F71E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2263BA0A4;

  return sub_2267EF420(v2);
}

uint64_t sub_2267F7294(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_226835228();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267F72D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2267F7370()
{
  result = qword_27D7A2760;
  if (!qword_27D7A2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2760);
  }

  return result;
}

unint64_t sub_2267F73C4()
{
  result = qword_27D7A2768;
  if (!qword_27D7A2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2768);
  }

  return result;
}

uint64_t sub_2267F7440()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_27D7A5058);
  __swift_project_value_buffer(v0, qword_27D7A5058);
  return sub_226836048();
}

void sub_2267F7538(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_27D7A5050 != -1)
  {
    swift_once();
  }

  v10 = sub_226836068();
  __swift_project_value_buffer(v10, qword_27D7A5058);

  oslog = sub_226836038();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2263B4D48(a3, a4, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2263B4D48(a1, a2, &v15);
    _os_log_impl(&dword_2263AA000, oslog, v11, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v13, -1, -1);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }
}

uint64_t sub_2267F76F4()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390BB8);
  __swift_project_value_buffer(v0, qword_281390BB8);
  return sub_226836048();
}

uint64_t sub_2267F7768()
{
  if (qword_281390470 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390BB8);
}

uint64_t sub_2267F77CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_281390470 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390BB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267F7874()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390C38);
  __swift_project_value_buffer(v0, qword_281390C38);
  return sub_226836048();
}

uint64_t sub_2267F78F4()
{
  if (qword_2813905D0 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390C38);
}

uint64_t sub_2267F7958@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813905D0 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390C38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267F7A00@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_2267A1AF8(v1 + 16, &v7, &qword_27D7A1A60, &unk_2268732B0);
  if (v8)
  {
    return sub_2267A1ED8(&v7, a1);
  }

  v4 = sub_2268359D8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_2268359C8();
  a1[3] = v4;
  a1[4] = &off_2839962C8;
  *a1 = result;
  if (v8)
  {
    return sub_2267A1DC0(&v7, &qword_27D7A1A60, &unk_2268732B0);
  }

  return result;
}

uint64_t sub_2267F7AC8(__int128 *a1)
{
  v3 = (*(v1 + 136))();
  sub_2267A1ED8(a1, v5);
  swift_beginAccess();

  sub_22679CE58(v5, v3 + 16);
  swift_endAccess();

  return v3;
}

uint64_t DetectedEntityContext.DetectedEntityType.typeName.getter()
{
  v1 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2267F7CA4(v0, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 0x73736572646441;
  v8 = 0x617A696E6167724FLL;
  v9 = 0x6E6F73726550;
  if (EnumCaseMultiPayload != 3)
  {
    v9 = 0x754E20656E6F6850;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v8 = v9;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = 1802398028;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  sub_2267F7D08(v5);
  return v10;
}

uint64_t sub_2267F7CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267F7D08(uint64_t a1)
{
  v2 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DetectedEntityContext.ActionEntity.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DetectedEntityContext.ActionEntity.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DetectedEntityContext.ActionEntity(0) + 20);

  return sub_2267F7CA4(v3, a1);
}

uint64_t DetectedEntityContext.ActionEntity.description.getter()
{
  v1 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD00000000000001ELL, 0x80000002268D01D0);
  if (v0[1])
  {
    v6 = *v0;
    v7 = v0[1];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 4271950;
  }

  MEMORY[0x22AA7F8E0](v6, v7);

  MEMORY[0x22AA7F8E0](0x203A65707974202CLL, 0xE800000000000000);
  v8 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
  sub_2267F7CA4(v0 + *(v8 + 20), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = 0xE700000000000000;
  v11 = 0x73736572646441;
  v12 = 0xEC0000006E6F6974;
  v13 = 0x617A696E6167724FLL;
  v14 = 0xE600000000000000;
  v15 = 0x6E6F73726550;
  if (EnumCaseMultiPayload != 3)
  {
    v15 = 0x754E20656E6F6850;
    v14 = 0xEC0000007265626DLL;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (EnumCaseMultiPayload)
  {
    v11 = 1802398028;
    v10 = 0xE400000000000000;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  sub_2267F7D08(v5);
  MEMORY[0x22AA7F8E0](v16, v17);

  MEMORY[0x22AA7F8E0](0x3A65756C6176202CLL, 0xE900000000000020);
  sub_226836A48();
  MEMORY[0x22AA7F8E0](0x656C65537369202CLL, 0xEE00203A64657463);
  if (*(v0 + *(v8 + 24)))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + *(v8 + 24)))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x22AA7F8E0](v18, v19);

  MEMORY[0x22AA7F8E0](32032, 0xE200000000000000);
  return v21[0];
}

uint64_t sub_2267F80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
  result = sub_2267FB6AC(a3, a5 + *(v8 + 20), type metadata accessor for DetectedEntityContext.DetectedEntityType);
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t sub_2267F8130(uint64_t a1, void (*a2)(char *, unint64_t, uint64_t))
{
  v68 = a1;
  v63 = a2;
  v60 = sub_226835A08();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v60, v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226835A68();
  v65 = *(v7 - 1);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FF0, qword_226874208);
  v11 = sub_226835AE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v61 = 4 * v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_226873690;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x277D1D4A0], v11);
  v17(v16 + v13, *MEMORY[0x277D1D488], v11);
  v17(v16 + 2 * v13, *MEMORY[0x277D1D478], v11);
  v18 = v62;
  v17(v16 + 3 * v13, *MEMORY[0x277D1D498], v11);
  v17(v16 + v61, *MEMORY[0x277D1D470], v11);
  v19 = v63;
  sub_2267C6F14(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = sub_226835A88();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_226835A38();
  (*(v65 + 104))(v64, *MEMORY[0x277D1D408], v66);
  sub_226835A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226872800;
  *(inited + 32) = v68;
  *(inited + 40) = v19;

  sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  v25 = sub_226835A58();
  (*(*v18 + 112))(v69, v25);
  v26 = v70;
  v27 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v28 = v67;
  v29 = (*(v27 + 16))(v23, v26, v27);
  v67 = v28;
  if (v28)
  {

    __swift_destroy_boxed_opaque_existential_1(v69);
    return v23;
  }

  v30 = v29;
  v61 = v23;
  v23 = v60;
  v31 = *(v29 + 16);
  if (!v31)
  {
    v66 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v32 = 0;
  v64 = *(v29 + 16);
  v65 = v2 + 16;
  v26 = v2 + 8;
  v59 = (v31 - 1);
  v66 = MEMORY[0x277D84F90];
LABEL_5:
  v33 = v32;
  while (v33 < *(v30 + 16))
  {
    (*(v2 + 16))(v6, v30 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v33, v23);
    v34 = v19;
    v35 = v19;
    v36 = v18;
    sub_2267F8870(v68, v35, &v72);
    if (v67)
    {
      goto LABEL_46;
    }

    (*v26)(v6, v23);
    v37 = v72;
    if (v72)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v38 = v66;
      }

      else
      {
        v38 = sub_2267FB3A0(0, v66[2] + 1, 1, v66);
      }

      v40 = v38[2];
      v39 = v38[3];
      v41 = (v40 + 1);
      if (v40 >= v39 >> 1)
      {
        v66 = (v40 + 1);
        v63 = v40;
        v42 = sub_2267FB3A0((v39 > 1), v40 + 1, 1, v38);
        v41 = v66;
        v40 = v63;
        v38 = v42;
      }

      v32 = v33 + 1;
      v38[2] = v41;
      v66 = v38;
      v38[v40 + 4] = v37;
      v18 = v36;
      v19 = v34;
      if (v59 == v33)
      {
LABEL_19:

        __swift_destroy_boxed_opaque_existential_1(v69);
        v43 = v66;
        v44 = v66[2];
        if (!v44)
        {
          v23 = MEMORY[0x277D84F90];
LABEL_38:

          return v23;
        }

        v45 = 0;
        v46 = v66 + 4;
        v23 = MEMORY[0x277D84F90];
        while (2)
        {
          if (v45 >= v43[2])
          {
            goto LABEL_41;
          }

          v26 = v46[v45];
          v47 = *(v26 + 16);
          v48 = v23[2];
          v6 = (v48 + v47);
          if (__OFADD__(v48, v47))
          {
            goto LABEL_42;
          }

          v49 = v46[v45];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v6 <= v23[3] >> 1)
          {
            if (!*(v26 + 16))
            {
LABEL_21:

              v43 = v66;
              if (v47)
              {
                goto LABEL_43;
              }

LABEL_22:
              if (v44 == ++v45)
              {
                goto LABEL_38;
              }

              continue;
            }
          }

          else
          {
            if (v48 <= v6)
            {
              v51 = v48 + v47;
            }

            else
            {
              v51 = v48;
            }

            v23 = sub_2267FB1C8(isUniquelyReferenced_nonNull_native, v51, 1, v23);
            if (!*(v26 + 16))
            {
              goto LABEL_21;
            }
          }

          break;
        }

        v6 = ((v23[3] >> 1) - v23[2]);
        v52 = *(type metadata accessor for DetectedEntityContext.ActionEntity(0) - 8);
        if (v6 < v47)
        {
          goto LABEL_44;
        }

        v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v54 = *(v52 + 72);
        swift_arrayInitWithCopy();

        v43 = v66;
        if (v47)
        {
          v55 = v23[2];
          v56 = __OFADD__(v55, v47);
          v57 = v55 + v47;
          if (v56)
          {
            goto LABEL_45;
          }

          v23[2] = v57;
        }

        goto LABEL_22;
      }

      goto LABEL_5;
    }

    ++v33;
    v18 = v36;
    v19 = v34;
    if (v64 == v33)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_41:
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

  (*v26)(v6, v23);

  __break(1u);
  return result;
}

uint64_t sub_2267F8870@<X0>(uint64_t a1@<X1>, void (*a2)(char *, unint64_t, uint64_t)@<X2>, void *a3@<X8>)
{
  v59 = a2;
  v54 = a3;
  v55 = sub_226836068();
  v58 = *(v55 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v55, v5);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2848, qword_226875EA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = (&v52 - v10);
  v61 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
  v57 = *(v61 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v61, v13);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226835B28();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226835BA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2268359E8();
  v26 = sub_226835B88();
  v28 = v27;
  result = (*(v21 + 8))(v25, v20);
  if (!v28)
  {
    goto LABEL_23;
  }

  v30 = v28;
  v31 = a1;
  v33 = v26 == a1;
  v32 = v59;
  v33 = v33 && v28 == v59;
  if (!v33 && (sub_226836B58() & 1) == 0)
  {
    v42 = sub_2267FBA9C();
    v44 = v55;
    v43 = v56;
    (*(v58 + 16))(v56, v42, v55);

    v45 = sub_226836038();
    v46 = sub_2268366C8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_2263B4D48(v31, v32, &v63);
      *(v47 + 12) = 2080;
      v49 = sub_2263B4D48(v26, v30, &v63);
      v50 = v58;
      v51 = v49;

      *(v47 + 14) = v51;
      _os_log_impl(&dword_2263AA000, v45, v46, "Mismatched bundleID: expected %s, got %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA821D0](v48, -1, -1);
      MEMORY[0x22AA821D0](v47, -1, -1);

      result = (*(v50 + 8))(v56, v44);
    }

    else
    {

      result = (*(v58 + 8))(v43, v44);
    }

LABEL_23:
    v39 = 0;
    goto LABEL_24;
  }

  v53 = sub_2268359F8();
  v34 = *(v53 + 16);
  if (v34)
  {
    v35 = *(v62 + 16);
    v36 = v53 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = *(v62 + 72);
    v59 = v35;
    v62 += 16;
    v37 = (v62 - 8);
    v38 = (v57 + 48);
    v39 = MEMORY[0x277D84F90];
    v55 = v26;
    v56 = v30;
    v35(v19, v36, v15);
    while (1)
    {
      sub_2267F8ED0(v19, v26, v30, v11);
      (*v37)(v19, v15);
      if ((*v38)(v11, 1, v61) == 1)
      {
        sub_2267A1DC0(v11, &qword_27D7A2848, qword_226875EA8);
      }

      else
      {
        sub_2267FB6AC(v11, v60, type metadata accessor for DetectedEntityContext.ActionEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_2267FB1C8(0, v39[2] + 1, 1, v39);
        }

        v41 = v39[2];
        v40 = v39[3];
        if (v41 >= v40 >> 1)
        {
          v39 = sub_2267FB1C8(v40 > 1, v41 + 1, 1, v39);
        }

        v39[2] = v41 + 1;
        sub_2267FB6AC(v60, v39 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v41, type metadata accessor for DetectedEntityContext.ActionEntity);
        v26 = v55;
        v30 = v56;
      }

      v36 += v58;
      if (!--v34)
      {
        break;
      }

      v59(v19, v36, v15);
    }
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

LABEL_24:
  *v54 = v39;
  return result;
}

uint64_t sub_2267F8ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v155 = a2;
  v156 = a3;
  v160 = a4;
  v136 = sub_226836068();
  v134 = *(v136 - 8);
  v5 = *(v134 + 64);
  MEMORY[0x28223BE20](v136, v6);
  v135 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2808, &qword_226875E68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v158 = &v132 - v11;
  v159 = sub_226835AC8();
  v157 = *(v159 - 8);
  v12 = *(v157 + 64);
  MEMORY[0x28223BE20](v159, v13);
  v150 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2810, &qword_226875E70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v146 = &v132 - v18;
  v147 = sub_226835868();
  v145 = *(v147 - 8);
  v19 = *(v145 + 64);
  MEMORY[0x28223BE20](v147, v20);
  v140 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2818, &qword_226875E78);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v138 = &v132 - v25;
  v139 = sub_226835AF8();
  v137 = *(v139 - 8);
  v26 = *(v137 + 64);
  MEMORY[0x28223BE20](v139, v27);
  v133 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2820, &qword_226875E80);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v152 = &v132 - v32;
  v153 = sub_226835838();
  v151 = *(v153 - 8);
  v33 = *(v151 + 64);
  MEMORY[0x28223BE20](v153, v34);
  v36 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2828, &qword_226875E88);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v41 = &v132 - v40;
  v42 = sub_2268358D8();
  v148 = *(v42 - 8);
  v149 = v42;
  v43 = *(v148 + 64);
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226835858();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v132 - v55;
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v132 - v59;
  v154 = a1;
  sub_226835B18();
  sub_2267FA5DC(&v163);
  v61 = *(v48 + 16);
  v61(v56, v60, v47);
  v62 = (*(v48 + 88))(v56, v47);
  if (v62 == *MEMORY[0x277D1D300])
  {
    goto LABEL_2;
  }

  v141 = v60;
  v142 = v48;
  v143 = v56;
  v144 = v47;
  if (v62 == *MEMORY[0x277D1D2F0])
  {
    sub_2267A1AF8(&v163, v161, &qword_27D7A1AA0, &qword_2268732C0);
    if (!v162)
    {
      sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
      v74 = *(v142 + 8);
      v71 = v144;
      v74(v141, v144);
      sub_2267A1DC0(v161, &qword_27D7A1AA0, &qword_2268732C0);
      v67 = v158;
      (*(v157 + 56))(v158, 1, 1, v159);
      goto LABEL_16;
    }

    v67 = v158;
    v66 = v159;
    v68 = swift_dynamicCast();
    v69 = v157;
    (*(v157 + 56))(v67, v68 ^ 1u, 1, v66);
    v70 = (*(v69 + 48))(v67, 1, v66);
    v71 = v144;
    v72 = v142;
    v73 = v141;
    if (v70 == 1)
    {
      sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
      v74 = *(v72 + 8);
      v74(v73, v71);
LABEL_16:
      v86 = v160;
      v87 = v143;
      v88 = &qword_27D7A2808;
      v89 = &qword_226875E68;
LABEL_25:
      sub_2267A1DC0(v67, v88, v89);
LABEL_26:
      v74(v87, v71);
      v98 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
      return (*(*(v98 - 8) + 56))(v86, 1, 1, v98);
    }

    v90 = v150;
    (*(v69 + 32))(v150, v67, v66);
    v91 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
    v92 = v160;
    (*(v69 + 16))(v160 + *(v91 + 20), v90, v66);
    type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    v93 = sub_226835B08();
    (*(v69 + 8))(v90, v66);
    sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
    v94 = *(v72 + 8);
    v94(v73, v71);
    v95 = v156;
    *v92 = v155;
    v92[1] = v95;
    *(v92 + *(v91 + 24)) = v93 & 1;
    (*(*(v91 - 8) + 56))(v92, 0, 1, v91);

    return (v94)(v143, v71);
  }

  if (v62 == *MEMORY[0x277D1D308])
  {
    sub_2267A1AF8(&v163, v161, &qword_27D7A1AA0, &qword_2268732C0);
    if (!v162)
    {
      sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
      v74 = *(v142 + 8);
      v71 = v144;
      v74(v141, v144);
      sub_2267A1DC0(v161, &qword_27D7A1AA0, &qword_2268732C0);
      v67 = v152;
      (*(v151 + 56))(v152, 1, 1, v153);
      goto LABEL_24;
    }

    v67 = v152;
    v75 = v153;
    v76 = swift_dynamicCast();
    v77 = v151;
    (*(v151 + 56))(v67, v76 ^ 1u, 1, v75);
    v78 = (*(v77 + 48))(v67, 1, v75);
    v79 = v142;
    v80 = v141;
    if (v78 == 1)
    {
      sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
      v74 = *(v79 + 8);
      v71 = v144;
      v74(v80, v144);
LABEL_24:
      v86 = v160;
      v87 = v143;
      v88 = &qword_27D7A2820;
      v89 = &qword_226875E80;
      goto LABEL_25;
    }

    (*(v77 + 32))(v36, v67, v75);
    v99 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
    v100 = v160;
    (*(v77 + 16))(v160 + *(v99 + 20), v36, v75);
    type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
    swift_storeEnumTagMultiPayload();
    v101 = sub_226835B08();
    (*(v77 + 8))(v36, v75);
    sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
    v102 = *(v79 + 8);
    v103 = v80;
    v104 = v144;
    v102(v103, v144);
    v105 = v156;
    *v100 = v155;
    v100[1] = v105;
    *(v100 + *(v99 + 24)) = v101 & 1;
    (*(*(v99 - 8) + 56))(v100, 0, 1, v99);

    return (v102)(v143, v104);
  }

  else
  {
    if (v62 == *MEMORY[0x277D1D320])
    {
      sub_2267A1AF8(&v163, v161, &qword_27D7A1AA0, &qword_2268732C0);
      v71 = v144;
      if (v162)
      {
        v81 = v149;
        v82 = swift_dynamicCast();
        v83 = v148;
        (*(v148 + 56))(v41, v82 ^ 1u, 1, v81);
        v84 = (*(v83 + 48))(v41, 1, v81);
        v85 = v142;
        if (v84 != 1)
        {
          (*(v83 + 32))(v46, v41, v81);
          v108 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
          v109 = v160;
          (*(v83 + 16))(v160 + *(v108 + 20), v46, v81);
          type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
          swift_storeEnumTagMultiPayload();
          v110 = sub_226835B08();
          (*(v83 + 8))(v46, v81);
          sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
          v111 = *(v85 + 8);
          v111(v141, v71);
          v112 = v156;
          *v109 = v155;
          v109[1] = v112;
          *(v109 + *(v108 + 24)) = v110 & 1;
          (*(*(v108 - 8) + 56))(v109, 0, 1, v108);

          return (v111)(v143, v71);
        }

        sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
        v74 = *(v85 + 8);
        v74(v141, v71);
      }

      else
      {
        sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
        v74 = *(v142 + 8);
        v74(v141, v71);
        sub_2267A1DC0(v161, &qword_27D7A1AA0, &qword_2268732C0);
        (*(v148 + 56))(v41, 1, 1, v149);
      }

      v87 = v143;
      sub_2267A1DC0(v41, &qword_27D7A2828, &qword_226875E88);
      v86 = v160;
      goto LABEL_26;
    }

    if (v62 == *MEMORY[0x277D1D318])
    {
      sub_2267A1AF8(&v163, v161, &qword_27D7A1AA0, &qword_2268732C0);
      v71 = v144;
      v73 = v141;
      if (v162)
      {
        v67 = v146;
        v66 = v147;
        v96 = swift_dynamicCast();
        v69 = v145;
        (*(v145 + 56))(v67, v96 ^ 1u, 1, v66);
        v97 = (*(v69 + 48))(v67, 1, v66);
        v72 = v142;
        if (v97 != 1)
        {
          v90 = v140;
          (*(v69 + 32))(v140, v67, v66);
          v91 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
          v92 = v160;
          (*(v69 + 16))(v160 + *(v91 + 20), v90, v66);
          type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
          goto LABEL_18;
        }

        sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
        v74 = *(v72 + 8);
        v74(v73, v71);
      }

      else
      {
        sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
        v74 = *(v142 + 8);
        v74(v73, v71);
        sub_2267A1DC0(v161, &qword_27D7A1AA0, &qword_2268732C0);
        v67 = v146;
        (*(v145 + 56))(v146, 1, 1, v147);
      }

      v86 = v160;
      v87 = v143;
      v88 = &qword_27D7A2810;
      v89 = &qword_226875E70;
      goto LABEL_25;
    }

    v47 = v144;
    v56 = v143;
    v48 = v142;
    v60 = v141;
    if (v62 == *MEMORY[0x277D1D310])
    {
      goto LABEL_2;
    }

    if (v62 == *MEMORY[0x277D1D2F8])
    {
      sub_2267A1AF8(&v163, v161, &qword_27D7A1AA0, &qword_2268732C0);
      if (v162)
      {
        v67 = v138;
        v66 = v139;
        v106 = swift_dynamicCast();
        v69 = v137;
        (*(v137 + 56))(v67, v106 ^ 1u, 1, v66);
        v107 = (*(v69 + 48))(v67, 1, v66);
        v71 = v144;
        v72 = v142;
        v73 = v141;
        if (v107 != 1)
        {
          v90 = v133;
          (*(v69 + 32))(v133, v67, v66);
          v91 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
          v92 = v160;
          (*(v69 + 16))(v160 + *(v91 + 20), v90, v66);
          type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
          goto LABEL_18;
        }

        sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
        v74 = *(v72 + 8);
        v74(v73, v71);
      }

      else
      {
        sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
        v74 = *(v142 + 8);
        v71 = v144;
        v74(v141, v144);
        sub_2267A1DC0(v161, &qword_27D7A1AA0, &qword_2268732C0);
        v67 = v138;
        (*(v137 + 56))(v138, 1, 1, v139);
      }

      v86 = v160;
      v87 = v143;
      v88 = &qword_27D7A2818;
      v89 = &qword_226875E78;
      goto LABEL_25;
    }

    v47 = v144;
    v56 = v143;
    v48 = v142;
    v60 = v141;
    if (v62 == *MEMORY[0x277D1D2E8] || v62 == *MEMORY[0x277D1D328])
    {
LABEL_2:
      sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
      v63 = *(v48 + 8);
      v63(v60, v47);
      v63(v56, v47);
      v64 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
      return (*(*(v64 - 8) + 56))(v160, 1, 1, v64);
    }

    v113 = sub_2267FBA9C();
    v114 = v134;
    v115 = v135;
    v116 = v136;
    (*(v134 + 16))(v135, v113, v136);
    v61(v52, v60, v47);
    v117 = v115;
    v118 = sub_226836038();
    v119 = sub_2268366C8();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v159 = v120;
      v121 = swift_slowAlloc();
      v161[0] = v121;
      *v120 = 136315138;
      sub_2267FB714(&qword_27D7A2800, MEMORY[0x277D1D330]);
      LODWORD(v158) = v119;
      v122 = sub_226836B48();
      v124 = v123;
      v125 = *(v142 + 8);
      v125(v52, v144);
      v126 = sub_2263B4D48(v122, v124, v161);

      v127 = v159;
      *(v159 + 4) = v126;
      v128 = v127;
      _os_log_impl(&dword_2263AA000, v118, v158, "Unhandled DetectedEntity case: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      v129 = v121;
      v47 = v144;
      MEMORY[0x22AA821D0](v129, -1, -1);
      MEMORY[0x22AA821D0](v128, -1, -1);

      (*(v114 + 8))(v135, v136);
    }

    else
    {

      v125 = *(v142 + 8);
      v125(v52, v47);
      (*(v114 + 8))(v117, v116);
    }

    sub_2267A1DC0(&v163, &qword_27D7A1AA0, &qword_2268732C0);
    v125(v60, v47);
    v130 = v143;
    v131 = type metadata accessor for DetectedEntityContext.ActionEntity(0);
    (*(*(v131 - 8) + 56))(v160, 1, 1, v131);
    return (v125)(v130, v47);
  }
}

uint64_t sub_2267FA5DC@<X0>(uint64_t *a1@<X8>)
{
  v120 = a1;
  v103 = sub_226836068();
  v98 = *(v103 - 8);
  v1 = *(v98 + 64);
  MEMORY[0x28223BE20](v103, v2);
  v102 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_226835AB8();
  v96 = *(v97 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v97, v5);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_226835AA8();
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v101, v8);
  v99 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226835AF8();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v104 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226835848();
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v107 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226835868();
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v110 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2268358D8();
  v114 = *(v22 - 8);
  v115 = v22;
  v23 = *(v114 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v113 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226835838();
  v117 = *(v26 - 8);
  v118 = v26;
  v27 = *(v117 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v116 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226835AC8();
  v119 = *(v30 - 8);
  v31 = *(v119 + 64);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226835828();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_226835858();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v94 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46, v47);
  v50 = &v92 - v49;
  v51 = *(v42 + 16);
  v51(&v92 - v49, v121, v41, v48);
  v52 = (*(v42 + 88))(v50, v41);
  if (v52 == *MEMORY[0x277D1D300])
  {
    (*(v42 + 96))(v50, v41);
    v53 = *(v36 + 32);
    v53(v40, v50, v35);
    v54 = v120;
    v120[3] = v35;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
    return (v53)(boxed_opaque_existential_0, v40, v35);
  }

  v57 = v120;
  if (v52 == *MEMORY[0x277D1D2F0])
  {
    (*(v42 + 96))(v50, v41);
    v58 = *(v119 + 32);
    v58(v34, v50, v30);
    v57[3] = v30;
    v59 = __swift_allocate_boxed_opaque_existential_0(v57);
    return (v58)(v59, v34, v30);
  }

  if (v52 == *MEMORY[0x277D1D308])
  {
    (*(v42 + 96))(v50, v41);
    v60 = v116;
    v61 = *(v117 + 32);
    v62 = v118;
    v61(v116, v50, v118);
    v57[3] = v62;
    v63 = __swift_allocate_boxed_opaque_existential_0(v57);
    return (v61)(v63, v60, v62);
  }

  v64 = v120;
  if (v52 == *MEMORY[0x277D1D320])
  {
    (*(v42 + 96))(v50, v41);
    v65 = v113;
    v66 = *(v114 + 32);
    v67 = v115;
    v66(v113, v50, v115);
    goto LABEL_20;
  }

  if (v52 == *MEMORY[0x277D1D318])
  {
    (*(v42 + 96))(v50, v41);
    v65 = v110;
    v66 = *(v111 + 32);
    v67 = v112;
    v66(v110, v50, v112);
    goto LABEL_20;
  }

  if (v52 == *MEMORY[0x277D1D310])
  {
    (*(v42 + 96))(v50, v41);
    v65 = v107;
    v66 = *(v108 + 32);
    v67 = v109;
    v66(v107, v50, v109);
    goto LABEL_20;
  }

  if (v52 == *MEMORY[0x277D1D2F8])
  {
    (*(v42 + 96))(v50, v41);
    v65 = v104;
    v66 = *(v105 + 32);
    v67 = v106;
    v66(v104, v50, v106);
    goto LABEL_20;
  }

  if (v52 == *MEMORY[0x277D1D2E8])
  {
    (*(v42 + 96))(v50, v41);
    v66 = *(v100 + 32);
    v65 = v99;
    v68 = v99;
    v69 = v50;
    v70 = &v124;
LABEL_19:
    v67 = *(v70 - 32);
    v66(v68, v69, v67);
LABEL_20:
    v64[3] = v67;
    v71 = __swift_allocate_boxed_opaque_existential_0(v64);
    return (v66)(v71, v65, v67);
  }

  if (v52 == *MEMORY[0x277D1D328])
  {
    (*(v42 + 96))(v50, v41);
    v66 = *(v96 + 32);
    v65 = v95;
    v68 = v95;
    v69 = v50;
    v70 = &v123;
    goto LABEL_19;
  }

  v72 = v41;
  v73 = sub_2267FBA9C();
  v74 = v98;
  (*(v98 + 16))(v102, v73, v103);
  v75 = v94;
  (v51)(v94, v121, v72);
  v76 = sub_226836038();
  v77 = sub_2268366C8();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v121 = v78;
    v79 = swift_slowAlloc();
    v122 = v79;
    *v78 = 136315138;
    sub_2267FB714(&qword_27D7A2800, MEMORY[0x277D1D330]);
    LODWORD(v119) = v77;
    v80 = sub_226836B48();
    v81 = v72;
    v93 = v72;
    v83 = v82;
    v84 = v75;
    v85 = *(v42 + 8);
    v85(v84, v81);
    v86 = sub_2263B4D48(v80, v83, &v122);

    v87 = v121;
    *(v121 + 1) = v86;
    v88 = v87;
    _os_log_impl(&dword_2263AA000, v76, v119, "Unknown DetectedEntity case encountered: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v89 = v79;
    v64 = v57;
    MEMORY[0x22AA821D0](v89, -1, -1);
    MEMORY[0x22AA821D0](v88, -1, -1);

    (*(v74 + 8))(v102, v103);
    v90 = v93;
  }

  else
  {

    v91 = v75;
    v85 = *(v42 + 8);
    v85(v91, v72);
    (*(v74 + 8))(v102, v103);
    v90 = v72;
  }

  *v64 = 0u;
  *(v64 + 1) = 0u;
  return (v85)(v50, v90);
}

uint64_t DetectedEntityContext.__deallocating_deinit()
{
  sub_2267A1DC0(v0 + 16, &qword_27D7A1A60, &unk_2268732B0);

  return swift_deallocClassInstance();
}

double sub_2267FB184()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

double sub_2267FB1B4()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

size_t sub_2267FB1C8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2830, &qword_226875E90);
  v10 = *(type metadata accessor for DetectedEntityContext.ActionEntity(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DetectedEntityContext.ActionEntity(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2267FB3A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2838, &qword_226875E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2840, &qword_226875EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267FB548()
{
  result = sub_2268358D8();
  if (v1 <= 0x3F)
  {
    result = sub_226835838();
    if (v2 <= 0x3F)
    {
      result = sub_226835AF8();
      if (v3 <= 0x3F)
      {
        result = sub_226835868();
        if (v4 <= 0x3F)
        {
          result = sub_226835AC8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_2267FB620()
{
  sub_2267D86B4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetectedEntityContext.DetectedEntityType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2267FB6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267FB714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267FB75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a5;
  v13 = sub_226836828();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v24 - v17;
  if (*(a1 + 16) && (v19 = sub_2263B9740(a2, a3), (v20 & 1) != 0))
  {
    sub_2263B4F20(*(a1 + 56) + 32 * v19, v26);
    sub_2267CAE58(v26, v27);
    a4(v27);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v21 = *(a6 - 8);
    if ((*(v21 + 48))(v18, 1, a6) != 1)
    {
      return (*(v21 + 32))(a7, v18, a6);
    }

    (*(v14 + 8))(v18, v13);
    v22 = v21;
  }

  else
  {
    v22 = *(a6 - 8);
  }

  return (*(v22 + 16))(a7, v25, a6);
}

id sub_2267FB954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PListDictionaryUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2267FB9C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PListDictionaryUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_2267FBA4C()
{
  if (qword_27D7A5130 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5260;
}

uint64_t *sub_2267FBB10()
{
  if (qword_27D7A5138 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5268;
}

uint64_t *sub_2267FBBD4()
{
  if (qword_27D7A5140 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5270;
}

uint64_t sub_2267FBC98(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_226836068();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_226836078();
}

uint64_t *sub_2267FBD24()
{
  if (qword_27D7A5148 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5278;
}

uint64_t sub_2267FBD98(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_226836068();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2267FBE10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_226836068();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2267FBF48()
{
  sub_2267CEF14();
  result = sub_226836818();
  qword_27D7A5270 = result;
  return result;
}

uint64_t sub_2267FBFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_2267CEF14();
  result = sub_226836818();
  *a4 = result;
  return result;
}

id sub_2267FC084(void *a1, void **a2)
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

id sub_2267FC0E4()
{
  type metadata accessor for WatchSmartStackSender();
  sub_2267A5F5C(v3);
  *&v0[OBJC_IVAR___ATXWatchSmartStacksSender_smartStackSender] = sub_2267A5F9C(v3);
  v2.receiver = v0;
  v2.super_class = ATXWatchSmartStacksSender;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2267FC1BC()
{
  v1 = *(v0 + OBJC_IVAR___ATXWatchSmartStacksSender_smartStackSender);
  if (v1)
  {
    return (*(*v1 + 104))();
  }

  return result;
}

unint64_t type metadata accessor for ATXWatchSmartStacksSender()
{
  result = qword_27D7A5150;
  if (!qword_27D7A5150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A5150);
  }

  return result;
}

void ATXSleepSuggestedHomePageWasCreatedDuringMigration_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "NSNumber * _Nullable ATXSleepSuggestedHomePageWasCreatedDuringMigration(void)";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to fetch sleep settings with error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void ATXSleepSuggestedHomePageWasCreatedDuringMigration_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "NSNumber * _Nullable ATXSleepSuggestedHomePageWasCreatedDuringMigration(void)";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Unable to read sleep settings because couldn't soft link HKSPSleepStore.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __getHKSPSleepStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKSPSleepStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration.m" lineNumber:17 description:{@"Unable to find class %s", "HKSPSleepStore"}];

  __break(1u);
}

void __getHKSPSleepStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SleepLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void engagementTypeForPrediction(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%@ is not a valid engagment type to call engagementTypeForPrediction with engaged==YES", buf, 0xCu);
}

void ATXSmoothedProbability_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "Invalid probability found. numerator: %f denominator: %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXSmoothedProbability_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "ATXSmoothedProbability called with invalid arguments. numerator: %f denominator: %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXProbability_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "ATXProbability called with invalid arguments. numerator: %f denominator: %f", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void shouldReturnUndefined_cold_1()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack underflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL shouldReturnUndefined(_ATXScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v8 handleFailureInFunction:v9 file:@"_ATXScoreInterpreter.m" lineNumber:224 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void drop_cold_1()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack underflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void drop(_ATXScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v8 handleFailureInFunction:v9 file:@"_ATXScoreInterpreter.m" lineNumber:214 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void push_cold_1()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack overflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void push(_ATXScoreInterpreterCtx *__strong, double)"}];
  [v8 handleFailureInFunction:v9 file:@"_ATXScoreInterpreter.m" lineNumber:194 description:@"App prediction interpreter stack overflow"];

  __break(1u);
}

void pop_cold_1()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack underflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double pop(_ATXScoreInterpreterCtx *__strong)"];
  [v8 handleFailureInFunction:v9 file:@"_ATXScoreInterpreter.m" lineNumber:204 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void ATXGamePlayKitCDecisionTree::findActionForAnswers(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered invalid predicate %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void linkChangedCallback_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "WiFi link status change: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __linkChangedCallback_block_invoke_cold_1(uint64_t *a1, unsigned __int8 *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2 ^ 1;
  v6 = 138412546;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "SSID changed to '%@', link active: %i", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void scPrefsNotifyCallback_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Airplane mode change detected. New status: %{BOOL}d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ATXUpdatePredictions_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXUpdatePredictions: Can not refresh predictions when class C locked! Reason: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __ATXUpdatePredictions_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "error regenerating gallery after process restart due to language change: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void readWholeFile_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_20(&dword_2263AA000, v1, v2, "Could not stat fd, errno=%i", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void readWholeFile_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Wrong length; expected %lu, got %lu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void readWholeFile_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_20(&dword_2263AA000, v1, v2, "Could not read; errno=%i", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void _ATXCopySqliteDatabaseClassC_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _ATXCopySqliteDatabaseClassC(NSString *__strong, NSString *__strong, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"_ATXInitialization.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"fromPath"}];
}

void _ATXCopySqliteDatabaseClassC_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _ATXCopySqliteDatabaseClassC(NSString *__strong, NSString *__strong, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"_ATXInitialization.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"toPath"}];
}

void _ATXCopySqliteDatabaseClassC_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Could not open DB for reading: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ATXCopySqliteDatabaseClassC_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Could not open DB for replacing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ATXCopySqliteDatabaseDataClassC_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error creating temporary directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ATXCopySqliteDatabaseDataClassC_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Could not write to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ATXCopySqliteDatabaseDataClassC_cold_3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 allKeys];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not find .db file in %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void _ATXExtractFilesFromDECBackupArchiveIfExists_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error parsing app predictor backup: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ATXExtractFilesFromDECBackupArchiveIfExists_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Backup file truncated: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ATXExtractFilesFromDECBackupArchiveIfExists_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Error opening %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void ATXEnableMobileAssetDataVault_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Retrying after failure to initialize datavault for DuetExpertCenterAsset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ATXEnableMobileAssetDataVault_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "Failed to initialize datavault for DuetExpertCenterAsset: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ATXSharedDefaultHomeScreenItemUpdater_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ATXDefaultHomeScreenItemUpdater *ATXSharedDefaultHomeScreenItemUpdater(void)"];
  [v1 handleFailureInFunction:v0 file:@"_ATXInitialization.m" lineNumber:111 description:@"We are class C locked while accessing a histogram"];
}

void __registerForRestoreStateNotifications_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  dlerror();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v0, v1, "Could not load symbol: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __registerForFaceSuggestionsCTSJob_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: could not set activity to CONTINUE, not refreshing face suggestions", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __registerForFaceSuggestionsCTSJob_block_invoke_642_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "void registerForFaceSuggestionsCTSJob(void)_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: regenerating Lock Screen suggestions failed: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void dateColumnNameForLaunchType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void decodeSubGenresData_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error unarchiving subgenres: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __getPRSServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXUserEducationSuggestionCustomizeFocusServer.m" lineNumber:24 description:{@"Unable to find class %s", "PRSService"}];

  __break(1u);
}

void __getPRSServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXUserEducationSuggestionCustomizeFocusServer.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getSGSuggestionsServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSGSuggestionsServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionFeedback.m" lineNumber:30 description:{@"Unable to find class %s", "SGSuggestionsService"}];

  __break(1u);
}

void __getSGSuggestionsServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSuggestionsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionFeedback.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t entropy(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 0x10uLL, size, 0x8CD5FEA2uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x828E71E3uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

void ATXUserEducationSuggestionStateToString_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "NSString * _Nonnull ATXUserEducationSuggestionStateToString(ATXUserEducationSuggestionState)";
  v5 = 2048;
  v6 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: Unknown state: %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void atx_CMFBlockListIsItemBlocked_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Boolean atx_CMFBlockListIsItemBlocked(CMFItemRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionPredictionsProcessor.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void CommunicationsFilterLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CommunicationsFilterLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXActionPredictionsProcessor.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void ATXSetInputAge_cold_1(void *a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Invalid age for %@: %f. last date cannot be in the future.", buf, 0x16u);
}

void pop_cold_1_0()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack underflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double pop(_ATXDeprecatedScoreInterpreterCtx *__strong)"];
  [v8 handleFailureInFunction:v9 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:189 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void runInstructionsAndPopResult_cold_1()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack overflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void push(_ATXDeprecatedScoreInterpreterCtx *__strong, double)"}];
  [v8 handleFailureInFunction:v9 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:179 description:@"App prediction interpreter stack overflow"];

  __break(1u);
}

void shouldReturnUndefined_cold_1_0()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack underflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL shouldReturnUndefined(_ATXDeprecatedScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v8 handleFailureInFunction:v9 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:209 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void drop_cold_1_0()
{
  v1 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_3_2(&dword_2263AA000, v2, v3, "App prediction interpreter stack underflow", v4, v5, v6, v7, 0);
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void drop(_ATXDeprecatedScoreInterpreterCtx *__strong, NSUInteger)"}];
  [v8 handleFailureInFunction:v9 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:199 description:@"App prediction interpreter stack underflow"];

  __break(1u);
}

void __atxRegisterCTSJobHandler_block_invoke_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void atxRegisterCTSJobHandler(const char * _Nonnull, __strong xpc_object_t _Nonnull, __strong ATXCTSJobHandler _Nonnull)_block_invoke"}];
  [v1 handleFailureInFunction:v0 file:@"ATXCTSJobHelper.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"handleCTSJob"}];
}

void __atxRegisterCTSJobHandlerForNonClassCLocked_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 136315138;
  v5 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unexpected run of CTS job %s when device is class-C locked", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __atxRegisterBGSTJobHandlerForNonClassCLocked_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 136315138;
  v5 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unexpected run of BGST job %s when device is class-C locked", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __getDeviceSupported_block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "os_eligibility_get_domain_answer failed with errno %d: %s", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void __getPRSServiceClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ATXFaceSuggestionServer.m" lineNumber:40 description:{@"Unable to find class %s", "PRSService"}];

  __break(1u);
}

void __getPRSServiceClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXFaceSuggestionServer.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void DNDModeSemanticTypeToSuggestedFaceType_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXModeFaceSuggestionGenerator: unhandled DNDModeSemanticType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}