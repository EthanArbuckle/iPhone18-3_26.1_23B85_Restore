uint64_t sub_21869C864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21869C8F4;

  return sub_21867FFF8();
}

uint64_t sub_21869C8F4(uint64_t a1)
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

uint64_t sub_21869C9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2186A8774;

  return sub_21869CA84();
}

uint64_t sub_21869CA84()
{
  v1[3] = v0;
  v2 = sub_2186B72AC();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F90, &unk_2186B9170) - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_21869CBEC;

  return sub_21867FFF8();
}

uint64_t sub_21869CBEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[9];
    v7 = v4[10];
    v11 = v4 + 6;
    v9 = v4[6];
    v10 = v11[1];

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v4[12] = a1;

    return MEMORY[0x2822009F8](sub_21869CD54, 0, 0);
  }
}

uint64_t sub_21869CD54()
{
  v1 = v0[3];
  v0[2] = MEMORY[0x277D84F90];
  v2 = *(v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service), v2);
  v4 = *(MEMORY[0x277D0CBC0] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_21869CE28;
  v6 = v0[12];

  return MEMORY[0x2821648A0](v6, v2, v3);
}

uint64_t sub_21869CE28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v8 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v6 = sub_21869D5F8;
  }

  else
  {
    v6 = sub_21869CF5C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21869CF5C()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v29 = v4;
    v30 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    v31 = *(v3 + 72);
    do
    {
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[4];
      sub_2186A7D78(v5, v8, &qword_27CC06F90, &unk_2186B9170);
      sub_2186A7CC4(v8, v9, &qword_27CC06F90, &unk_2186B9170);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_21867F0B8(v0[9], &qword_27CC06F90, &unk_2186B9170);
      }

      else
      {
        v11 = *v30;
        (*v30)(v0[6], v0[9], v0[4]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2186A18F0(0, *(v7 + 2) + 1, 1, v7, &qword_27CC07070, &qword_2186B93B0, MEMORY[0x277D0CB18]);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2186A18F0(v12 > 1, v13 + 1, 1, v7, &qword_27CC07070, &qword_2186B93B0, MEMORY[0x277D0CB18]);
        }

        v14 = v0[6];
        v15 = v0[4];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v13], v14, v15);
      }

      v5 += v31;
      --v2;
    }

    while (v2);
    v16 = v0[14];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v0[16] = v7;
  v18 = *(v7 + 2);
  v0[17] = v18;
  if (v18)
  {
    v19 = v0[5];
    v0[18] = MEMORY[0x277D84F90];
    v0[19] = 0;
    if (*(v7 + 2))
    {
      (*(v19 + 16))(v0[7], &v7[(*(v19 + 80) + 32) & ~*(v19 + 80)], v0[4]);
      v20 = swift_task_alloc();
      v0[20] = v20;
      *v20 = v0;
      v20[1] = sub_21869D2C4;
      v21 = v0[7];
      v22 = v0[3];

      return sub_218694F00(v21);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = v0[9];
    v23 = v0[10];
    v26 = v0[6];
    v25 = v0[7];

    v27 = v0[1];
    v28 = MEMORY[0x277D84F90];

    return v27(v28);
  }

  return result;
}

uint64_t sub_21869D2C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v9 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[18];
    v6 = v3[16];
    (*(v3[5] + 8))(v3[7], v3[4]);

    v7 = sub_21869D680;
  }

  else
  {
    (*(v3[5] + 8))(v3[7], v3[4]);
    v7 = sub_21869D428;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21869D428()
{
  MEMORY[0x21CEB10A0]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2186B7ACC();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[19] + 1;
  result = sub_2186B7AEC();
  v5 = v0[2];
  if (v3 == v2)
  {
    v6 = v0[16];
    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[6];
    v9 = v0[7];

    v11 = v0[1];

    return v11(v5);
  }

  else
  {
    v12 = v0[19] + 1;
    v0[18] = v5;
    v0[19] = v12;
    v13 = v0[16];
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0[5] + 16))(v0[7], v13 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)) + *(v0[5] + 72) * v12, v0[4]);
      v14 = swift_task_alloc();
      v0[20] = v14;
      *v14 = v0;
      v14[1] = sub_21869D2C4;
      v15 = v0[7];
      v16 = v0[3];

      return sub_218694F00(v15);
    }
  }

  return result;
}

uint64_t sub_21869D5F8()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21869D680()
{
  v1 = v0[22];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

id sub_21869D70C()
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2811ED610;

  return v1;
}

uint64_t sub_21869D768(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2186804FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_21869D7AC(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21867FF24(a1, v3 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id sub_21869D820()
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v0 = qword_2811ED610;

  return v0;
}

id sub_21869D8D8(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  sub_21867FF24(a1, v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_21869DAC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21869DB68;

  return sub_21869CA84();
}

uint64_t sub_21869DB68()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v8 = sub_2186B6F6C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for GKGameActivity(v7);
    v11 = sub_2186B7A9C();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v6 + 8);

  return v13();
}

uint64_t sub_21869DCF0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_21869DD54@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D0CC48];
  v3 = sub_2186B74BC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21869DDC8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_2186B794C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_2186B74FC();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = sub_2186B72AC();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21869DFF8, 0, 0);
}

uint64_t sub_21869DFF8()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[21];
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v70 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[6];
  v6 = *&v5[OBJC_IVAR___GKGameActivity__instanceSnapshot];
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  (*(v3 + 16))(v2, v6 + v7, v4);
  os_unfair_lock_unlock((v6 + v8));
  v9 = [v5 achievements];
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v10 = sub_2186B7B9C();

  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 2;
  *(v11 + 24) = v70;
  sub_2186911E4(sub_2186A73A8, v11, v10);
  v12 = v0[6];

  v13 = [v12 leaderboardScores];
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v14 = sub_2186B7B9C();

  sub_218691430(v14, v0 + 2);
  v25 = v0[6];

  v26 = [v25 referralLeaderboard];
  if (v26 && (v27 = v0[6], v26, (v28 = [v27 referralAchievement]) != 0))
  {
    v30 = v0[8];
    v29 = v0[9];
    v31 = v0[7];

    v32 = sub_21867F9D4();
    (*(v30 + 16))(v29, v32, v31);
    v33 = sub_2186B792C();
    v34 = sub_2186B7BEC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21867D000, v33, v34, "Invalid referral found for game activity.", v35, 2u);
      MEMORY[0x21CEB1A70](v35, -1, -1);
    }

    v36 = v0[20];
    v37 = v0[18];
    v68 = v0[19];
    v71 = v0[21];
    v39 = v0[16];
    v38 = v0[17];
    v41 = v0[8];
    v40 = v0[9];
    v42 = v0[7];

    (*(v41 + 8))(v40, v42);
    type metadata accessor for GKError(0);
    v0[4] = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError);
    sub_2186B6F5C();
    v43 = v0[3];
    swift_willThrow();
    (*(v38 + 8))(v37, v39);
    (*(v36 + 8))(v71, v68);
    v15 = v0[21];
    v16 = v0[18];
    v18 = v0[14];
    v17 = v0[15];
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[9];
    v22 = v0[2];

    v23 = v0[1];
  }

  else
  {
    v44 = v0[18];
    v45 = v0[15];
    v46 = v0[6];
    v47 = v0[2];

    sub_2186B710C();
    sub_218689A2C(v45);
    v48 = v0[18];
    v49 = v0[15];
    v51 = v0[12];
    v50 = v0[13];
    v52 = v0[10];
    v53 = v0[11];
    sub_2186B718C();
    sub_2186B715C();
    v54 = *MEMORY[0x277D0CD20];
    v72 = *(v53 + 104);
    v72(v51, v54, v52);
    LOBYTE(v48) = sub_2186B74CC();
    v55 = *(v53 + 8);
    v55(v51, v52);
    v55(v50, v52);
    if (v48)
    {
      v72(v0[14], v54, v0[10]);
    }

    else
    {
      v56 = v0[18];
      v57 = v0[14];
      sub_2186B715C();
    }

    v59 = v0[20];
    v58 = v0[21];
    v60 = v0[18];
    v61 = v0[19];
    v62 = v0[16];
    v63 = v0[17];
    v64 = v0[14];
    v66 = v0[15];
    v67 = v0[13];
    v69 = v0[12];
    v73 = v0[9];
    v65 = v0[5];
    sub_2186B716C();
    (*(v63 + 32))(v65, v60, v62);
    (*(v59 + 8))(v58, v61);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_21869E708(id *a1, void **a2, uint64_t a3)
{
  v44 = a3;
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v43);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07028, &qword_2186B9358);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v13 = *(v42 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v42);
  v16 = &v36 - v15;
  v17 = sub_2186B749C();
  v38 = *(v17 - 8);
  v39 = v17;
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v37 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [*a1 player];
  v22 = [v21 internalPlayerID];

  sub_2186B7A0C();
  sub_2186B786C();
  v23 = [v20 identifier];
  sub_2186B7A0C();

  (*(v7 + 16))(v10, v44, v43);
  v24 = v45;
  sub_2186B77DC();
  if (v24)
  {
    return (*(v13 + 8))(v16, v42);
  }

  [v20 percentComplete];
  [v20 isCompleted];
  v26 = [v20 lastReportedDate];
  v27 = v40;
  sub_2186B6FFC();

  v28 = sub_2186B701C();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = v37;
  sub_2186B768C();
  v30 = v38;
  (*(v38 + 104))(v29, *MEMORY[0x277D0CBF8], v39);
  v31 = v41;
  v32 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_2186A18F0(0, v32[2] + 1, 1, v32, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *v31 = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = sub_2186A18F0(v34 > 1, v35 + 1, 1, v32, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *v31 = v32;
  }

  v32[2] = v35 + 1;
  return (*(v30 + 32))(v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v35, v29);
}

uint64_t sub_21869EC34(void **a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_2186B749C();
  v32 = *(v16 - 8);
  v33 = v16;
  v17 = *(v32 + 64);
  MEMORY[0x28223BE20](v16);
  v31 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = [v19 player];
  v21 = [v20 internalPlayerID];

  sub_2186B7A0C();
  sub_2186B786C();
  v22 = [v19 value];
  if (([v19 context] & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    v22 = sub_2186A18F0(0, v22[2] + 1, 1, v22, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *a2 = v22;
    goto LABEL_5;
  }

  v30 = a2;
  v23 = [v19 leaderboardID];
  sub_2186B7A0C();

  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  v24 = v35;
  sub_218680544();
  if (v24)
  {
    (*(v12 + 8))(v15, v11);
  }

  v35 = v22;
  sub_2186B782C();
  v11 = v31;
  sub_2186B75EC();
  v12 = v32;
  v7 = v33;
  (*(v32 + 104))(v11, *MEMORY[0x277D0CC00], v33);
  a2 = v30;
  v22 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v28 = v22[2];
  v27 = v22[3];
  if (v28 >= v27 >> 1)
  {
    v22 = sub_2186A18F0(v27 > 1, v28 + 1, 1, v22, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *a2 = v22;
  }

  v22[2] = v28 + 1;
  return (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v11, v7);
}

uint64_t sub_21869F0A4(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070C0, &qword_2186B93E8);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07028, &qword_2186B9358);
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = sub_2186B749C();
  v2[27] = v9;
  v10 = *(v9 - 8);
  v2[28] = v10;
  v11 = *(v10 + 64) + 15;
  v2[29] = swift_task_alloc();
  v12 = sub_2186B769C();
  v2[30] = v12;
  v13 = *(v12 - 8);
  v2[31] = v13;
  v14 = *(v13 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21869F290, 0, 0);
}

uint64_t sub_21869F290()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v2 + 16))(v1, v0[20], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D0CBF8])
  {
    v5 = v0[31];
    v4 = v0[32];
    v7 = v0[29];
    v6 = v0[30];
    v8 = v0[26];
    (*(v0[28] + 96))(v7, v0[27]);
    (*(v5 + 32))(v4, v7, v6);
    sub_2186B767C();
    sub_2186B77EC();
    v16 = v0[25];
    v17 = v0[26];
    v18 = v0[24];
    v29 = v0[23];
    v19 = v0[21];
    v20 = v0[22];
    v31 = objc_opt_self();
    (*(v16 + 8))(v17, v18);
    v30 = sub_2186B79FC();
    v0[33] = v30;

    v21 = [objc_opt_self() currentGame];
    v0[34] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070C8, &unk_2186B93F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2186B8F70;
    v23 = [objc_opt_self() playerID];
    v24 = sub_2186B7A0C();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v27 = sub_2186B7A9C();
    v0[35] = v27;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21869F72C;
    swift_continuation_init();
    v0[17] = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F60, &qword_2186B9108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    sub_2186B7B1C();
    (*(v20 + 32))(boxed_opaque_existential_0, v29, v19);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21869F9D8;
    v0[13] = &block_descriptor_175;
    [v31 loadAchievementWithId:v30 forGame:v21 playerIDs:v27 withCompletionHandler:?];
    (*(v20 + 8))(boxed_opaque_existential_0, v19);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v9 = v0[19];
    (*(v0[28] + 8))(v0[29], v0[27]);
    *v9 = 0;
    v10 = v0[32];
    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[23];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21869F72C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_21869F900;
  }

  else
  {
    v3 = sub_21869F83C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21869F83C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[19];
  (*(v0[31] + 8))(v0[32], v0[30]);
  *v4 = v0[18];

  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[23];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21869F900()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  swift_willThrow();
  (*(v6 + 8))(v5, v7);

  v8 = v0[36];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[23];

  v13 = v0[1];

  return v13();
}

void sub_21869F9FC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2186B7B2C();
  }

  else
  {
    sub_2186804FC(0, a6, a7);
    sub_2186B7AAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2186B7B3C();
  }
}

uint64_t sub_21869FAE4(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F38, &qword_2186B90D8);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v2[27] = v9;
  v10 = *(v9 - 8);
  v2[28] = v10;
  v11 = *(v10 + 64) + 15;
  v2[29] = swift_task_alloc();
  v12 = sub_2186B749C();
  v2[30] = v12;
  v13 = *(v12 - 8);
  v2[31] = v13;
  v14 = *(v13 + 64) + 15;
  v2[32] = swift_task_alloc();
  v15 = sub_2186B761C();
  v2[33] = v15;
  v16 = *(v15 - 8);
  v2[34] = v16;
  v17 = *(v16 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21869FD38, 0, 0);
}

uint64_t sub_21869FD38()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v2 + 16))(v1, *(v0 + 160), v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D0CC00])
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    (*(*(v0 + 248) + 96))(v7, *(v0 + 240));
    (*(v5 + 32))(v4, v7, v6);
    v8 = [objc_allocWithZone(off_278236548) init];
    *(v0 + 288) = v8;
    v9 = sub_2186B760C();
    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 280);
      v12 = *(v0 + 224);
      v11 = *(v0 + 232);
      [v8 setContext_];
      sub_2186B75CC();
      sub_2186B783C();
      v13 = (v12 + 8);
      v14 = *(v0 + 280);
      v21 = *(v0 + 208);
      (*v13)(*(v0 + 232), *(v0 + 216));
      v22 = sub_2186B79FC();

      [v8 setLeaderboardID_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2186B8F70;
      sub_2186B75FC();
      v25 = sub_2186B787C();
      v27 = v26;
      v28 = *(v0 + 200);
      v29 = *(v0 + 208);
      v30 = *(v0 + 192);
      v35 = *(v0 + 184);
      v31 = *(v0 + 176);
      v34 = *(v0 + 168);
      v36 = objc_opt_self();
      (*(v28 + 8))(v29, v30);
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
      v32 = sub_2186B7A9C();
      *(v0 + 296) = v32;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_2186A026C;
      swift_continuation_init();
      *(v0 + 136) = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F70, &qword_2186B9128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
      sub_2186B7B1C();
      (*(v31 + 32))(boxed_opaque_existential_0, v35, v34);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_2186933E4;
      *(v0 + 104) = &block_descriptor_171;
      [v36 loadPlayersForIdentifiersPrivate:v32 withCompletionHandler:?];
      (*(v31 + 8))(boxed_opaque_existential_0, v34);
      v9 = v0 + 16;
    }

    return MEMORY[0x282200938](v9);
  }

  else
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    v15 = *(v0 + 280);
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 208);
    v19 = *(v0 + 184);
    **(v0 + 152) = 0;

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2186A026C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_2186A0560;
  }

  else
  {
    v3 = sub_2186A037C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2186A037C()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = *(v0 + 144);
    }

    result = sub_2186B7CCC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v15 = *(v0 + 264);

    (*(v14 + 8))(v13, v15);
    v9 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CEB1380](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);

  [v5 setPlayer_];
  [v5 setValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070B0, &qword_2186B93E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B9010;
  *(v9 + 32) = v5;

  (*(v7 + 8))(v6, v8);
LABEL_11:
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  **(v0 + 152) = v9;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2186A0560()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);
  v7 = v0[38];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2186A0654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t, void, unint64_t)@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v9 = *a1;

  result = sub_2186A59E8(v7, a3);
  *a4 = v9;
  return result;
}

uint64_t sub_2186A06FC(uint64_t a1)
{
  v85 = sub_2186B753C();
  v2 = *(v85 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v68 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07080, &qword_2186B93B8);
  v9 = *(*(v81 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v81);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v70 = sub_2186A6594(MEMORY[0x277D84F90]);
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v78 = v2 + 16;
  v79 = v6 + 16;
  v76 = v2 + 32;
  v77 = v6 + 32;
  v82 = v6;
  v83 = v2;
  v73 = (v6 + 8);
  v74 = (v2 + 8);
  v87 = a1;

  v19 = 0;
  v71 = v18;
  v72 = a1 + 64;
  v75 = v13;
LABEL_4:
  v20 = v19;
  v21 = v5;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
    v88 = 0;
    v19 = v20;
LABEL_10:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v87;
    v25 = v82;
    v26 = v21;
    (*(v82 + 16))(v13, *(v87 + 48) + *(v82 + 72) * v23, v21);
    v27 = v83;
    v28 = *(v24 + 56) + *(v83 + 72) * v23;
    v29 = v81;
    v30 = v85;
    (*(v83 + 16))(&v13[*(v81 + 48)], v28, v85);
    v31 = v80;
    sub_2186A7D78(v13, v80, &qword_27CC07080, &qword_2186B93B8);
    v32 = *(v29 + 48);
    v33 = v84;
    (*(v25 + 32))(v84, v31, v26);
    v34 = v31 + v32;
    v5 = v26;
    v35 = v86;
    (*(v27 + 32))(v86, v34, v30);
    v36 = v88;
    v37 = sub_2186B787C();
    if (!v36)
    {
      v40 = v37;
      v41 = v38;
      v13 = v75;
      v42 = sub_2186B752C();
      v44 = v43;
      v45 = v70;
      LODWORD(v88) = swift_isUniquelyReferenced_nonNull_native();
      v89 = v45;
      v47 = sub_2186A1B54(v40, v41, sub_218683C08);
      v48 = *(v45 + 16);
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_27;
      }

      v69 = v42;
      if (*(v45 + 24) >= v50)
      {
        v56 = v86;
        v55 = v84;
        if (v88)
        {
          goto LABEL_19;
        }

        LODWORD(v88) = v46;
        v70 = v47;
        sub_2186A4B0C();
        v47 = v70;
        LOBYTE(v46) = v88;
      }

      else
      {
        v51 = v46;
        sub_2186A5130(v50, v88);
        v52 = sub_2186A1B54(v40, v41, sub_218683C08);
        v53 = v46 & 1;
        LOBYTE(v46) = v51;
        v54 = v51 & 1;
        v55 = v84;
        if (v54 != v53)
        {
          goto LABEL_29;
        }

        v47 = v52;
      }

      v56 = v86;
LABEL_19:
      if (v46)
      {
        v57 = v47;

        v70 = v89;
        v58 = (v89[7] + 16 * v57);
        v59 = v58[1];
        *v58 = v69;
        v58[1] = v44;

        (*v74)(v56, v85);
        (*v73)(v55, v5);
        sub_21867F0B8(v13, &qword_27CC07080, &qword_2186B93B8);
      }

      else
      {
        v60 = v44;
        v61 = v89;
        v89[(v47 >> 6) + 8] |= 1 << v47;
        v62 = (v61[6] + 16 * v47);
        *v62 = v40;
        v62[1] = v41;
        v63 = (v61[7] + 16 * v47);
        *v63 = v69;
        v63[1] = v60;
        (*v74)(v56, v85);
        (*v73)(v55, v5);
        sub_21867F0B8(v13, &qword_27CC07080, &qword_2186B93B8);
        v64 = v61[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_28;
        }

        v70 = v61;
        v61[2] = v66;
      }

      v18 = v71;
      v14 = v72;
      goto LABEL_4;
    }

    (*v74)(v35, v30);
    (*v73)(v33, v5);
    v39 = v75;
    sub_21867F0B8(v75, &qword_27CC07080, &qword_2186B93B8);
    v20 = v19;
    v21 = v5;
    v13 = v39;
    v18 = v71;
    v14 = v72;
  }

  while (v17);
LABEL_6:
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v70;
    }

    v17 = *(v14 + 8 * v19);
    ++v20;
    if (v17)
    {
      v88 = 0;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_2186B7E7C();
  __break(1u);
  return result;
}

id GSGameActivitySupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GSGameActivitySupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2186A0E44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07050, &qword_2186B9370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v38[1] = v1;
  v53 = MEMORY[0x277D84F90];
  sub_2186A5B9C(0, v11, 0);
  v12 = v53;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = sub_2186B7C8C();
  v16 = result;
  v17 = 0;
  v52 = *(a1 + 36);
  v39 = a1 + 72;
  v40 = *MEMORY[0x277D0CD90];
  v46 = v10;
  v42 = v11;
  v43 = a1;
  v41 = a1 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_27;
    }

    if (v52 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v48 = 1 << v16;
    v49 = v16 >> 6;
    v47 = v17;
    v51 = v12;
    v19 = (*(a1 + 48) + 16 * v16);
    v21 = *v19;
    v20 = v19[1];
    v22 = (*(a1 + 56) + 16 * v16);
    v23 = *v22;
    v24 = v22[1];
    v50 = *(v45 + 48);
    swift_bridgeObjectRetain_n();

    sub_2186B786C();

    sub_2186B751C();
    v25 = sub_2186B753C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v6, 1, v25) == 1)
    {
      (*(v26 + 104))(&v10[v50], v40, v25);
      if (v27(v6, 1, v25) != 1)
      {
        sub_21867F0B8(v6, &qword_27CC07050, &qword_2186B9370);
      }
    }

    else
    {
      (*(v26 + 32))(&v10[v50], v6, v25);
    }

    v12 = v51;
    v53 = v51;
    v29 = *(v51 + 16);
    v28 = *(v51 + 24);
    v13 = v41;
    v30 = v42;
    if (v29 >= v28 >> 1)
    {
      sub_2186A5B9C(v28 > 1, v29 + 1, 1);
      v12 = v53;
    }

    *(v12 + 16) = v29 + 1;
    v10 = v46;
    result = sub_2186A7CC4(v46, v12 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29, &qword_27CC07038, &qword_2186B9368);
    a1 = v43;
    v18 = 1 << *(v43 + 32);
    if (v16 >= v18)
    {
      goto LABEL_29;
    }

    v31 = *(v13 + 8 * v49);
    if ((v31 & v48) == 0)
    {
      goto LABEL_30;
    }

    if (v52 != *(v43 + 36))
    {
      goto LABEL_31;
    }

    v32 = v31 & (-2 << (v16 & 0x3F));
    if (v32)
    {
      v18 = __clz(__rbit64(v32)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v49 << 6;
      v34 = v49 + 1;
      v35 = (v39 + 8 * v49);
      while (v34 < (v18 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_2186A7D2C(v16, v52, 0);
          v18 = __clz(__rbit64(v36)) + v33;
          goto LABEL_24;
        }
      }

      result = sub_2186A7D2C(v16, v52, 0);
LABEL_24:
      v10 = v46;
    }

    v17 = v47 + 1;
    v16 = v18;
    if (v47 + 1 == v30)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2186A12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_2186A7D78(a3, v24 - v10, &qword_27CC06E10, &qword_2186B9590);
  v12 = sub_2186B7B7C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21867F0B8(v11, &qword_27CC06E10, &qword_2186B9590);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2186B7B6C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2186B7B0C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2186B7A3C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);

    return v22;
  }

LABEL_8:
  sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

size_t sub_2186A15F4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07068, &qword_2186B9388);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0) - 8);
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

char *sub_2186A17E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
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

size_t sub_2186A18F0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2186A1ACC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070B0, &qword_2186B93E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2186A1B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_2186B7EBC();
  sub_2186B7A4C();
  v7 = sub_2186B7ECC();

  return a3(a1, a2, v7);
}

unint64_t sub_2186A1BD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
  v5 = sub_2186B79CC();

  return sub_2186A1C80(a1, v5);
}

unint64_t sub_2186A1C80(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_218680664(&qword_27CC07048, &qword_27CC06F40, &unk_2186B90E0);
      v16 = sub_2186B79EC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2186A1E44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
  v34 = a2;
  v13 = sub_2186B79CC();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_218680664(&qword_27CC07048, &qword_27CC06F40, &unk_2186B90E0);
      v21 = sub_2186B79EC();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_2186A2F50(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_2186A2128(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2186B7EBC();
  sub_2186B7A4C();
  v9 = sub_2186B7ECC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2186B7E5C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2186A31F4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2186A2278(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2186B7CDC();

    if (v17)
    {

      sub_2186804FC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_2186B7CCC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2186A24EC(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2186A2CAC(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_2186A2ECC(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_2186804FC(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_2186B7C3C();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_2186B7C4C();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_2186A3374(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2186A24EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2186B7D2C();
    v24 = v10;
    sub_2186B7CBC();
    if (sub_2186B7CEC())
    {
      sub_2186804FC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2186A2CAC(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_2186B7C3C();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_2186B7CEC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2186A26EC(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07060, &qword_2186B9380);
  result = sub_2186B7D1C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
      result = sub_2186B79CC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2186A2A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07090, &qword_2186B93C8);
  result = sub_2186B7D1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2186B7EBC();
      sub_2186B7A4C();
      result = sub_2186B7ECC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2186A2CAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2186B7D1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_2186B7C3C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_2186A2ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2186B7C3C();
  v5 = -1 << *(a2 + 32);
  result = sub_2186B7CAC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2186A2F50(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v7;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2186A26EC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2186A3504();
      goto LABEL_12;
    }

    sub_2186A39E0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
  v15 = sub_2186B79CC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    do
    {
      v20(v10, *(v32 + 48) + v22 * a2, v6);
      sub_218680664(&qword_27CC07048, &qword_27CC06F40, &unk_2186B90E0);
      v23 = sub_2186B79EC();
      (*(v19 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v30;
  v25 = *v31;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2186B7E6C();
  __break(1u);
  return result;
}

uint64_t sub_2186A31F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2186A2A4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2186A3744();
      goto LABEL_16;
    }

    sub_2186A3D00(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2186B7EBC();
  sub_2186B7A4C();
  result = sub_2186B7ECC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2186B7E5C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2186B7E6C();
  __break(1u);
  return result;
}

void sub_2186A3374(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2186A2CAC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2186A38A0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2186A3F38(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_2186B7C3C();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_2186804FC(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_2186B7C4C();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2186B7E6C();
  __break(1u);
}

void *sub_2186A3504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07060, &qword_2186B9380);
  v7 = *v0;
  v8 = sub_2186B7D0C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_2186A3744()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07090, &qword_2186B93C8);
  v2 = *v0;
  v3 = sub_2186B7D0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2186A38A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2186B7D0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2186A39E0(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07060, &qword_2186B9380);
  v10 = sub_2186B7D1C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
      result = sub_2186B79CC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2186A3D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07090, &qword_2186B93C8);
  result = sub_2186B7D1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2186B7EBC();

      sub_2186B7A4C();
      result = sub_2186B7ECC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2186A3F38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2186B7D1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_2186B7C3C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

void sub_2186A4144(uint64_t a1, char a2, uint64_t *a3)
{
  v75 = a3;
  v6 = sub_2186B753C();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v71 = *(v74 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v11 = v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v63 - v15;
  v67 = *(a1 + 16);
  if (!v67)
  {
    goto LABEL_24;
  }

  v63[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v14 + 48);
  v18 = *(v70 + 80);
  v68 = a1;
  v19 = a1 + ((v18 + 32) & ~v18);
  v20 = (v71 + 32);
  v21 = (v72 + 32);
  v65 = v19;
  sub_2186A7D78(v19, v16, &qword_27CC07038, &qword_2186B9368);
  v64 = *v20;
  v64(v11, v16, v74);
  v22 = *v21;
  v66 = v17;
  v69 = v6;
  v23 = v6;
  v24 = v22;
  v22(v73, &v16[v17], v23);
  v25 = *v75;
  v27 = sub_2186A1BD8(v11);
  v28 = *(v25 + 16);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v26;
  if (*(v25 + 24) >= v30)
  {
    if (a2)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2186A47B0();
      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v32 = v75;
  sub_2186A4C84(v30, a2 & 1);
  v33 = *v32;
  v34 = sub_2186A1BD8(v11);
  if ((v31 & 1) == (v35 & 1))
  {
    v27 = v34;
    if ((v31 & 1) == 0)
    {
LABEL_14:
      v38 = v74;
      v39 = *v75;
      *(*v75 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v64((v39[6] + *(v71 + 72) * v27), v11, v38);
      v40 = v69;
      v24((v39[7] + *(v72 + 72) * v27), v73, v69);
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v39[2] = v43;
      if (v67 != 1)
      {
        v44 = 1;
        while (v44 < *(v68 + 16))
        {
          sub_2186A7D78(v65 + *(v70 + 72) * v44, v16, &qword_27CC07038, &qword_2186B9368);
          v45 = *v20;
          (*v20)(v11, v16, v74);
          v46 = *v21;
          (*v21)(v73, &v16[v66], v40);
          v47 = *v75;
          v48 = sub_2186A1BD8(v11);
          v50 = *(v47 + 16);
          v51 = (v49 & 1) == 0;
          v42 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v42)
          {
            goto LABEL_26;
          }

          v53 = v49;
          if (*(v47 + 24) < v52)
          {
            v54 = v75;
            sub_2186A4C84(v52, 1);
            v55 = *v54;
            v48 = sub_2186A1BD8(v11);
            if ((v53 & 1) != (v56 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v53)
          {
            goto LABEL_11;
          }

          v57 = v74;
          v58 = *v75;
          *(*v75 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          v59 = v48;
          v45((v58[6] + *(v71 + 72) * v48), v11, v57);
          v60 = v58[7] + *(v72 + 72) * v59;
          v40 = v69;
          v46(v60, v73, v69);
          v61 = v58[2];
          v42 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v42)
          {
            goto LABEL_27;
          }

          ++v44;
          v58[2] = v62;
          if (v67 == v44)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v36 = swift_allocError();
    swift_willThrow();

    v78 = v36;
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v72 + 8))(v73, v69);
      (*(v71 + 8))(v11, v74);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2186B7E7C();
  __break(1u);
LABEL_29:
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_2186B7D4C();
  MEMORY[0x21CEB1070](0xD00000000000001BLL, 0x80000002186BA180);
  sub_2186B7DDC();
  MEMORY[0x21CEB1070](39, 0xE100000000000000);
  sub_2186B7DEC();
  __break(1u);
}

char *sub_2186A47B0()
{
  v1 = v0;
  v43 = sub_2186B753C();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07018, &qword_2186B9348);
  v6 = *v0;
  v7 = sub_2186B7E0C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2186A4B0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07088, &qword_2186B93C0);
  v2 = *v0;
  v3 = sub_2186B7E0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2186A4C84(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2186B753C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - v12;
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07018, &qword_2186B9348);
  v52 = a2;
  result = sub_2186B7E1C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
      result = sub_2186B79CC();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2186A5130(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07088, &qword_2186B93C0);
  v40 = a2;
  result = sub_2186B7E1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2186B7EBC();
      sub_2186B7A4C();
      result = sub_2186B7ECC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2186A53F0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_2186B7CFC();

    if (v7)
    {
      v8 = sub_2186A5598();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v11 = *(v3 + 40);
  v12 = sub_2186B7C3C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_2186B7C4C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2186A38A0(&qword_27CC070A0, &qword_2186B93D8);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_2186A5720(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_2186A5598()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2186B7CCC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2186A24EC(v4, v3, &qword_27CC070A0, &qword_2186B93D8, &qword_27CC06E60, &off_278236520);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2186B7C3C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2186B7C4C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2186A5720(v9);
  result = sub_2186B7C4C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2186A5720(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2186B7C9C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2186B7C3C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2186A58C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CEB1380](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2186B7CCC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2186A59E8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2186B7CCC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_2186B7CCC();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2186A5AE0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2186A5AE0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_2186B7CCC();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_2186B7D7C();
    *v1 = result;
  }

  return result;
}

size_t sub_2186A5B9C(size_t a1, int64_t a2, char a3)
{
  result = sub_2186A5BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2186A5BBC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07058, &qword_2186B9378);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368) - 8);
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

uint64_t sub_2186A5DAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2186B7CCC();
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
      result = sub_2186B7CCC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218680664(&qword_27CC070B8, &qword_27CC06F60, &qword_2186B9108);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F60, &qword_2186B9108);
            v9 = sub_2186A61E4(v13, i, a3);
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
        sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
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

uint64_t sub_2186A5F60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2186B7CCC();
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
      result = sub_2186B7CCC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218680664(&qword_27CC070A8, &qword_27CC06F68, &qword_2186B9118);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F68, &qword_2186B9118);
            v9 = sub_2186A626C(v13, i, a3);
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
        sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
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

uint64_t **sub_2186A6114(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_2186B7CCC();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v9 = sub_2186A1ACC(v8, 0);

    a4 = sub_2186A62EC(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_2186A67A0();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v9;
}

void (*sub_2186A61E4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEB1380](a2, a3);
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
    return sub_2186A6264;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2186A626C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEB1380](a2, a3);
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
    return sub_2186A8708;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2186A62EC(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_2186B7CBC();
  sub_2186804FC(0, a5, a6);
  sub_21869D768(a7, a5, a6);
  result = sub_2186B7BBC();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_2186B7CEC())
      {
        goto LABEL_30;
      }

      sub_2186804FC(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_2186A6530(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2186B7CCC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2186B7D7C();
}

unint64_t sub_2186A6594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07088, &qword_2186B93C0);
    v3 = sub_2186B7E2C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2186A1B54(v5, v6, sub_218683C08);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2186A67A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2186818F8;

  return sub_21868F3D0(v3, v4, v5, v2);
}

uint64_t sub_2186A685C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v9 = sub_2186A6114(*a1, &qword_27CC06E70, &off_278236548, &qword_27CC06E78);

  v5 = sub_2186A81BC(&v9, v4, v3);

  if (v9 >> 62)
  {
    result = sub_2186B7CCC();
    v7 = result;
    if (result >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
LABEL_3:
      sub_2186A7F6C(v5, v7, &qword_27CC06E70, &off_278236548);
      v8 = sub_2186A70E0(v9);

      *a1 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2186A69B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0);
  result = MEMORY[0x21CEB11C0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v7, v16, v2);
      sub_2186A1E44(v9, v7);
      (*(v14 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_2186A6B5C(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_2186B7CCC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEB1380](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    MEMORY[0x28223BE20](v6);
    v11[2] = &v13;
    v8 = sub_2186A58C0(sub_2186A8728, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_2186A6CA4(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_2186A6B5C(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_2186B7CCC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_2186B7CCC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEB1380](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    MEMORY[0x28223BE20](v12);
    v25[2] = &v27;
    v14 = sub_2186A58C0(sub_2186A7DE0, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x21CEB1380](v2, v6);
    v16 = MEMORY[0x21CEB1380](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_2186A6530(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_2186A6530(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
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
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_2186B7CCC();
}

uint64_t sub_2186A6F40(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2186B7CCC())
  {
    v4 = sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    v5 = sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
    result = MEMORY[0x21CEB11C0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = &off_278236520;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEB1380](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2186A2278(&v12, v10, &qword_27CC06E60, &off_278236520, &qword_27CC070A0, &qword_2186B93D8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2186B7CCC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2186A70E0(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2186B7CCC())
  {
    v4 = sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
    v5 = sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
    result = MEMORY[0x21CEB11C0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = &off_278236548;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEB1380](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2186A2278(&v12, v10, &qword_27CC06E70, &off_278236548, &qword_27CC07098, &qword_2186B93D0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2186B7CCC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2186A7280(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEB11C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2186A2128(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
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

uint64_t sub_2186A7360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for GKGameActivityTestUtils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GKGameActivityTestUtils(_WORD *result, int a2, int a3)
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

uint64_t sub_2186A7754()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_218681150;

  return sub_21869DAC0(v2, v3);
}

uint64_t sub_2186A7800()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2186818F8;

  return sub_21869A7D4(v2, v3);
}

uint64_t sub_2186A78B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818F8;

  return sub_2186943E0(a1, v4);
}

uint64_t sub_2186A7954()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) activityDefinition];
  [v2 supportsPartyCode];

  return sub_2186B719C();
}

uint64_t sub_2186A7A00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_21869357C(v2, v3);
}

uint64_t objectdestroy_54Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2186A7B18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_218692C64(v2, v3);
}

uint64_t sub_2186A7BCC()
{
  v2 = *(sub_2186B74BC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2186818F8;

  return sub_21869B2A0(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_2186A7CC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2186A7D2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2186A7D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2186A7DFC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  return sub_2186B7C4C() & 1;
}

uint64_t sub_2186A7E64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_2186804FC(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
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
  result = sub_2186B7CCC();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_2186B7CCC();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2186A7F6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2186B7CCC();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_2186B7CCC();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_2186A5AE0(result);
    return sub_2186A7E64(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_2186A8050(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_2186B7CCC();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v18 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEB1380](v6, a1);
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 leaderboardID];
    v10 = sub_2186B7A0C();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
      break;
    }

    v14 = sub_2186B7E5C();

    if (v14)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_2186A81BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v9 = sub_2186A8050(*a1, a2, a3);
  v11 = v9;
  if (v3)
  {
    return v11;
  }

  v34 = a3;
  if (v10)
  {
    if (v8 >> 62)
    {
      return sub_2186B7CCC();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = a1;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == sub_2186B7CCC())
      {
        return v11;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v11;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CEB1380](v12, v8);
      goto LABEL_16;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v14 = *(v8 + 8 * v12 + 32);
LABEL_16:
    v4 = v14;
    v15 = [v14 leaderboardID];
    v16 = sub_2186B7A0C();
    v18 = v17;

    if (v16 == a2 && v18 == v34)
    {
LABEL_8:
    }

    else
    {
      v20 = sub_2186B7E5C();

      if ((v20 & 1) == 0)
      {
        if (v11 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x21CEB1380](v11, v8);
            v22 = MEMORY[0x21CEB1380](v12, v8);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 >= v23)
            {
              goto LABEL_53;
            }

            if (v12 >= v23)
            {
              goto LABEL_54;
            }

            v24 = *(v8 + 32 + 8 * v12);
            v21 = *(v8 + 32 + 8 * v11);
            v22 = v24;
          }

          v25 = v22;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = sub_2186A6530(v8);
            v26 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v26) = 0;
          }

          v27 = v8 & 0xFFFFFFFFFFFFFF8;
          v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v25;

          if ((v8 & 0x8000000000000000) != 0 || v26)
          {
            v8 = sub_2186A6530(v8);
            v27 = v8 & 0xFFFFFFFFFFFFFF8;
            if ((v12 & 0x8000000000000000) != 0)
            {
LABEL_45:
              __break(1u);
              return v11;
            }
          }

          else if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v12 >= *(v27 + 16))
          {
            goto LABEL_51;
          }

          v29 = v27 + 8 * v12;
          v30 = *(v29 + 32);
          *(v29 + 32) = v21;

          *v33 = v8;
        }

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_50;
        }
      }
    }

    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_2186B7CCC();
}

uint64_t sub_2186A846C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2186818F8;

  return sub_21868FF24(v3, v2);
}

uint64_t objectdestroy_143Tm()
{
  v1 = sub_2186B74BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2186A85D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2186A85F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2186A8784()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_identifier);
  v2 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_identifier + 8);

  return v1;
}

uint64_t sub_2186A87CC()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_groupIdentifier);
  v2 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_groupIdentifier + 8);

  return v1;
}

uint64_t sub_2186A8814()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_title);
  v2 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_title + 8);

  return v1;
}

id sub_2186A885C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_2186B79FC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2186A88C8()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_details);
  v2 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_details + 8);

  return v1;
}

uint64_t sub_2186A8A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = [v1 _fallbackURL];
  v8 = sub_2186B6FAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  if (v7)
  {
    v11 = *(v8 - 8);
    v15[0] = *(v9 + 56);
    v15[1] = v9 + 56;
    v10(v6, 1, 1, v8);
    sub_2186AD6F4(&qword_27CC07118, MEMORY[0x277CC9260]);
    sub_2186B7E3C();

    if ((*(v11 + 48))(v6, 1, v8) == 1)
    {
      v12 = a1;
      v13 = 1;
    }

    else
    {
      (*(v11 + 32))(a1, v6, v8);
      v12 = a1;
      v13 = 0;
    }

    return (v15[0])(v12, v13, 1, v8);
  }

  else
  {

    return (v10)(a1, 1, 1, v8);
  }
}

id GKGameActivityDefinition.playerRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = [v1 minPlayers];
  if (result && (v5 = result, v6 = [result integerValue], v5, (result = objc_msgSend(v2, sel_internalMaxPlayers)) != 0))
  {
    v7 = result;
    v8 = [result integerValue];

    if (v8 < 0)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07128, &unk_2186B94C0);
      result = sub_218680664(&qword_27CC07130, &qword_27CC07128, &unk_2186B94C0);
      *(a1 + 32) = result;
      *a1 = v6;
    }

    else
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC0, &qword_2186B92E0);
      result = sub_218680664(&qword_27CC07120, &qword_27CC06FC0, &qword_2186B92E0);
      *(a1 + 32) = result;
      if (v8 < v6)
      {
        __break(1u);
      }

      else
      {
        *a1 = v6;
        *(a1 + 8) = v8;
      }
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_2186A8E64()
{
  result = [v0 internalMaxPlayers];
  if (result)
  {
    v2 = result;
    v3 = [result integerValue];
    result = v2;
    if (v3 == -1)
    {

      return 0;
    }
  }

  return result;
}

void *sub_2186A8F10()
{
  v1 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2186A8FBC(uint64_t a1)
{
  v3 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2186A90D0()
{
  GKGameActivityDefinition.playerRange.getter(&v1);
  if (v2)
  {
    sub_2186A9180(&v1, v3);
    sub_2186A9180(v3, &v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FB8, &qword_2186B94D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07128, &unk_2186B94C0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21867F0B8(&v1, &qword_27CC06FB0, &unk_2186B92D0);
    return 0;
  }
}

uint64_t sub_2186A9180(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2186A91F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  v4 = sub_2186B7A9C();

  return v4;
}

void GKGameActivityDefinition.loadAchievementDescriptions(completionHandler:)(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 associatedAchievementDescriptionIDs];
  v7 = sub_2186B7AAC();

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a1;
    v10[4] = a2;
    v13[4] = sub_2186A95D4;
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2186A95E0;
    v13[3] = &block_descriptor_3;
    v11 = _Block_copy(v13);
    v12 = v3;

    [v9 loadAchievementDescriptionsWithCompletionHandler_];
    _Block_release(v11);
  }

  else
  {
    a1(MEMORY[0x277D84F90], 0);
  }
}

uint64_t sub_2186A93A4(unint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v33 = a3;
  if (a1)
  {
    v6 = a1;
    v35 = MEMORY[0x277D84F90];
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      do
      {
        v27 = a2;
        v28 = a5;
        v29 = a4;
        v30 = v8;
        v9 = 0;
        v31 = v6;
        v32 = v6 & 0xC000000000000001;
        while (1)
        {
          if (v32)
          {
            v10 = MEMORY[0x21CEB1380](v9, v6);
          }

          else
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_17;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = [v33 associatedAchievementDescriptionIDs];
          v14 = sub_2186B7AAC();

          v15 = [v11 identifier];
          v16 = sub_2186B7A0C();
          v18 = v17;

          v34[0] = v16;
          v34[1] = v18;
          MEMORY[0x28223BE20](v19);
          v26[2] = v34;
          a5 = sub_2186ADE70(sub_2186AEA98, v26, v14);

          if (a5)
          {
            a5 = &v35;
            sub_2186B7D9C();
            v20 = *(v35 + 16);
            sub_2186B7DBC();
            sub_2186B7DCC();
            sub_2186B7DAC();
          }

          else
          {
          }

          v6 = v31;
          ++v9;
          if (v12 == v30)
          {
            v29(v35, v27);
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v22 = a4;
        v23 = a2;
        v24 = sub_2186B7CCC();
        a2 = v23;
        a4 = v22;
        v8 = v24;
      }

      while (v24);
    }

    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = 0;
  }

  a4(v21, a2);
}

void GKGameActivityDefinition.loadLeaderboards(completionHandler:)(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 associatedLeaderboardIDs];
  v7 = sub_2186B7AAC();

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v3 associatedLeaderboardIDs];
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2186A9758;
    v12[3] = &block_descriptor_3;
    v11 = _Block_copy(v12);

    [v9 loadLeaderboardsWithIDs:v10 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a1(MEMORY[0x277D84F90], 0);
  }
}

uint64_t sub_2186A976C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_2186804FC(0, a4, a5);
    v6 = sub_2186B7AAC();
  }

  v9 = a3;
  v8(v6, a3);
}

void sub_2186A9820(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v7 = a1;
  if (a1)
  {
    sub_2186804FC(0, a4, a5);
    v7 = sub_2186B7A9C();
  }

  if (a2)
  {
    v8 = sub_2186B6F6C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7);
}

uint64_t sub_2186A9BC0(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_2186B6FAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = [v3 imageURL];
  if (!v18)
  {
    return a1(0, 0);
  }

  v19 = v18;
  sub_2186B6F9C();

  (*(v11 + 32))(v17, v15, v10);
  sub_2186804FC(0, &qword_27CC07158, off_278236500);
  (*(v11 + 16))(v9, v17, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_218682758(v9, a1, a2);
  sub_21867F0B8(v9, &qword_27CC06D70, &qword_2186B92A0);
  return (*(v11 + 8))(v17, v10);
}

void sub_2186A9E00(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_2186A9E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2186B6F6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id GKGameActivityDefinition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2186AA094()
{
  v0 = sub_2186B6FAC();
  v94 = *(v0 - 8);
  v1 = *(v94 + 64);
  MEMORY[0x28223BE20](v0);
  v93 = v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2186B72BC();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v89 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2186B75AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v82 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07198, &qword_2186B94D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v74 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v74 - v22;
  v83 = sub_2186B71EC();
  v84 = v24;
  v74[1] = sub_2186B739C();
  v85 = v25;
  v86 = sub_2186B736C();
  v87 = v26;
  v74[2] = sub_2186B738C();
  v88 = v27;
  v28 = sub_2186B732C();
  v92 = v23;
  sub_2186B72EC();
  sub_2186B72CC();
  v29 = 0;
  if ((v30 & 1) == 0)
  {
    result = sub_2186B72CC();
    if (v32)
    {
      __break(1u);
      goto LABEL_36;
    }

    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  sub_2186B72DC();
  v81 = v28;
  v80 = v29;
  if (v33)
  {
    v34 = v0;
    v79 = 0;
    goto LABEL_8;
  }

  result = sub_2186B72DC();
  if (v35)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v34 = v0;
  v79 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_8:
  v78 = sub_2186B731C();
  sub_2186B737C();
  v36 = sub_2186B78FC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v16, 1, v36) == 1)
  {
    sub_21867F0B8(v16, &qword_27CC07198, &qword_2186B94D8);
    v38 = v34;
    (*(v94 + 56))(v21, 1, 1, v34);
LABEL_11:
    v77 = 0;
    goto LABEL_13;
  }

  sub_2186AF21C(v21);
  (*(v37 + 8))(v16, v36);
  v39 = v94;
  v38 = v34;
  if ((*(v94 + 48))(v21, 1, v34) == 1)
  {
    goto LABEL_11;
  }

  v77 = sub_2186B6F8C();
  (*(v39 + 8))(v21, v34);
LABEL_13:
  sub_2186B72FC();
  v40 = v82;
  (*(v7 + 104))(v82, *MEMORY[0x277D0CEE8], v6);
  sub_2186AD6F4(&qword_27CC071A0, MEMORY[0x277D0CF00]);
  sub_2186B7A7C();
  sub_2186B7A7C();
  if (v97 == v95 && v98 == v96)
  {
    v41 = 1;
  }

  else
  {
    v42 = sub_2186B7E5C();
    v41 = 1;
    if ((v42 & 1) == 0)
    {
      v41 = 2;
    }
  }

  v76 = v41;
  v43 = *(v7 + 8);
  v43(v40, v6);
  v43(v12, v6);

  v44 = v89;
  sub_2186B73BC();
  v46 = v90;
  v45 = v91;
  v47 = (*(v90 + 88))(v44, v91);
  if (v47 == *MEMORY[0x277D0CB40])
  {
    v48 = 0;
    v49 = v94;
    v50 = v92;
  }

  else
  {
    v49 = v94;
    v50 = v92;
    if (v47 == *MEMORY[0x277D0CB38])
    {
      v48 = 1;
    }

    else if (v47 == *MEMORY[0x277D0CB48])
    {
      v48 = 2;
    }

    else
    {
      (*(v46 + 8))(v44, v45);
      v48 = 0;
    }
  }

  sub_2186B733C();
  sub_2186B735C();
  v82 = sub_2186B73AC();
  sub_2186B730C();
  v92 = sub_2186B79FC();

  if (v85)
  {
    v91 = sub_2186B79FC();
  }

  else
  {
    v91 = 0;
  }

  v51 = v88;
  v90 = sub_2186B79FC();

  if (v51)
  {
    v89 = sub_2186B79FC();
  }

  else
  {
    v89 = 0;
  }

  v52 = (*(v49 + 48))(v50, 1, v38);
  v75 = v38;
  if (v52 == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_2186B6F8C();
    (*(v49 + 8))(v50, v38);
  }

  v53 = objc_allocWithZone(GKGameActivityDefinition);
  v54 = sub_2186B79AC();

  v55 = sub_2186B7A9C();
  v85 = v55;

  v56 = sub_2186B7A9C();
  v86 = v56;

  v57 = sub_2186B79FC();
  v87 = v57;

  v58 = sub_2186B6F8C();
  v73 = v57;
  v71 = v55;
  v72 = v56;
  v70 = v48;
  v59 = v77;
  v69 = v54;
  v60 = v54;
  v61 = v79;
  v62 = v80;
  v63 = v53;
  v64 = v91;
  v65 = v92;
  v67 = v89;
  v66 = v90;
  v68 = v88;
  v84 = [v63 initWithIdentifier:v92 groupIdentifier:v91 title:v90 details:v89 supportPartyCode:v81 & 1 fallbackURL:v88 maxPlayers:v80 minPlayers:v79 defaultProperties:v69 imageURL:v77 releaseState:v76 playStyle:v70 associatedLeaderboardIDs:v71 associatedAchievementDescriptionIDs:v72 language:v73 partyStartURL:v58];

  (*(v94 + 8))(v93, v75);
  return v84;
}

uint64_t sub_2186AA998()
{
  v0 = sub_2186B72BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186B73BC();
  v5 = (*(v1 + 88))(v4, v0);
  result = 0;
  if (v5 != *MEMORY[0x277D0CB40])
  {
    if (v5 == *MEMORY[0x277D0CB38])
    {
      return 1;
    }

    else if (v5 == *MEMORY[0x277D0CB48])
    {
      return 2;
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2186AAACC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_2186B6FAC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  result = sub_218680544();
  if (!v2)
  {
    v18[6] = 0;
    v13 = [v1 identifier];
    v17[2] = a1;
    v14 = v13;
    v17[1] = sub_2186B7A0C();

    v15 = [v1 language];
    sub_2186B7A0C();

    v16 = [v3 partyStartURL];
    sub_2186B6F9C();

    v18[3] = sub_2186B708C();
    v18[4] = sub_2186AD6F4(&qword_27CC071A8, MEMORY[0x277D0C9B8]);
    __swift_allocate_boxed_opaque_existential_0(v18);
    sub_2186B707C();
    sub_2186B77BC();
    (*(v8 + 8))(v11, v7);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return result;
}

id sub_2186AAD3C()
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CC07C08;

  return v1;
}

id static GKGameActivityDefinitionSupport.shared.getter()
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CC07C08;

  return v1;
}

uint64_t static GKGameActivityDefinitionSPIs.loadGameActivityDefinitions(support:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21869C8F4;
  v2 = MEMORY[0x277D84F90];

  return sub_2186AB138(v2);
}

uint64_t GKGameActivityDefinitionSupport.loadGameActivityDefinitions()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2186A8774;
  v2 = MEMORY[0x277D84F90];

  return sub_2186AB138(v2);
}

uint64_t sub_2186AAF28()
{
  v0 = sub_21867FC04();
  sub_21867FF24(v0, v6);
  v1 = type metadata accessor for GKGameActivityDefinitionSupport();
  v2 = objc_allocWithZone(v1);
  sub_21867FF24(v6, v2 + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  qword_27CC07C08 = v3;
  return result;
}

id sub_2186AAFA4(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21867FF24(a1, v3 + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t *sub_2186AB018()
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  return &qword_27CC07C08;
}

id sub_2186AB0C4(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  sub_21867FF24(a1, v1 + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_2186AB138(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2186B794C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_2186B73CC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F48, &unk_2186B9500) - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071B8, &qword_2186B9510);
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2[19] = v15;
  v16 = *(v15 - 8);
  v2[20] = v16;
  v2[21] = *(v16 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186AB3EC, 0, 0);
}

uint64_t sub_2186AB3EC()
{
  v1 = v0[23];
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v2 = v0[4];
  v3 = OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service;
  v0[24] = OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service;
  v4 = *(v2 + v3 + 24);
  v5 = *(v2 + v3 + 32);
  __swift_project_boxed_opaque_existential_0((v2 + v3), v4);
  v6 = *(MEMORY[0x277D0CBB8] + 4);
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_2186AB5A0;
  v8 = v0[23];

  return MEMORY[0x282164898](v8, v4, v5);
}

uint64_t sub_2186AB5A0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_2186AC058;
  }

  else
  {
    v3 = sub_2186AB6B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2186AB6B4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v18 = v0[18];
  v6 = v0[15];
  v7 = v0[3];
  v8 = v0[4];
  v9 = sub_2186B789C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  (*(v3 + 16))(v2, v1, v5);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v10, v2, v5);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v12 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  sub_218680664(&qword_27CC071C0, &qword_27CC06F58, &qword_2186B90F8);
  sub_218680664(&qword_27CC071C8, &qword_27CC06F58, &qword_2186B90F8);
  sub_2186B762C();
  v13 = *(MEMORY[0x277D0D0B0] + 4);
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_2186AB8EC;
  v15 = v0[18];
  v16 = v0[16];

  return MEMORY[0x282164EA8](v16);
}

uint64_t sub_2186AB8EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *(*v2 + 144);
  v7 = *(*v2 + 136);
  v8 = *(*v2 + 128);
  v9 = *v2;
  *(*v2 + 224) = v1;

  (*(v7 + 8))(v6, v8);
  if (v1)
  {
    v10 = sub_2186AC3C4;
  }

  else
  {
    *(v4 + 232) = a1;
    v10 = sub_2186ABA78;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2186ABA78()
{
  v1 = (v0[4] + v0[24]);
  v0[2] = MEMORY[0x277D84F90];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(MEMORY[0x277D0CBC8] + 4);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_2186ABB48;
  v6 = v0[29];

  return MEMORY[0x2821648A8](v6, v2, v3);
}

uint64_t sub_2186ABB48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *(*v2 + 232);
  v8 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v6 = sub_2186AC4B4;
  }

  else
  {
    v6 = sub_2186ABC7C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2186ABC7C()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[9];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v37 = v4;
    v38 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    v39 = *(v3 + 72);
    do
    {
      v9 = v0[13];
      v8 = v0[14];
      v10 = v0[8];
      sub_2186A7D78(v5, v8, &qword_27CC06F48, &unk_2186B9500);
      sub_2186AD86C(v8, v9);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_21867F0B8(v0[13], &qword_27CC06F48, &unk_2186B9500);
      }

      else
      {
        v11 = *v38;
        (*v38)(v0[10], v0[13], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2186AD8DC(0, *(v7 + 2) + 1, 1, v7, &qword_27CC071D8, &qword_2186B9608, MEMORY[0x277D0CB78]);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2186AD8DC(v12 > 1, v13 + 1, 1, v7, &qword_27CC071D8, &qword_2186B9608, MEMORY[0x277D0CB78]);
        }

        v14 = v0[10];
        v15 = v0[8];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v13], v14, v15);
      }

      v5 += v39;
      --v2;
    }

    while (v2);
    v16 = v0[31];

    v17 = *(v7 + 2);
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_18:

    v41 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_12:
  v18 = v0[9];
  v20 = *(v18 + 16);
  v19 = v18 + 16;
  v40 = v20;
  v21 = &v7[(*(v19 + 64) + 32) & ~*(v19 + 64)];
  v22 = *(v19 + 56);
  do
  {
    v23 = v0[11];
    v24 = v0[8];
    v40(v23, v21, v24);
    sub_2186AA094();
    v25 = (*(v19 - 8))(v23, v24);
    MEMORY[0x21CEB10A0](v25);
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2186B7ACC();
    }

    sub_2186B7AEC();
    v21 += v22;
    --v17;
  }

  while (v17);
  v41 = v0[2];

LABEL_19:
  v27 = v0[22];
  v28 = v0[18];
  v30 = v0[14];
  v29 = v0[15];
  v31 = v0[13];
  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[7];
  (*(v0[20] + 8))(v0[23], v0[19]);

  v35 = v0[1];

  return v35(v41);
}

uint64_t sub_2186AC058()
{
  v1 = v0[26];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_21867F9D4();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to refresh game activity definitions: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[20];
  v18 = v0[21];
  v19 = v0[19];
  v32 = v0[18];
  v20 = v0[15];
  v21 = v0[3];
  v22 = v0[4];
  v23 = sub_2186B789C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  (*(v17 + 16))(v16, v15, v19);
  v24 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v17 + 32))(v25 + v24, v16, v19);
  *(v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v26 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  sub_218680664(&qword_27CC071C0, &qword_27CC06F58, &qword_2186B90F8);
  sub_218680664(&qword_27CC071C8, &qword_27CC06F58, &qword_2186B90F8);
  sub_2186B762C();
  v27 = *(MEMORY[0x277D0D0B0] + 4);
  v28 = swift_task_alloc();
  v0[27] = v28;
  *v28 = v0;
  v28[1] = sub_2186AB8EC;
  v29 = v0[18];
  v30 = v0[16];

  return MEMORY[0x282164EA8](v30);
}

uint64_t sub_2186AC3C4()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186AC4B4()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  v1 = v0[32];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186AC5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2186AC5CC, 0, 0);
}

uint64_t sub_2186AC5CC()
{
  v1 = v0[6];
  v2 = (v0[4] + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071D0, &qword_2186B9600);
  v5 = sub_2186B750C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B8F70;
  *(v9 + v8) = 0;
  (*(v6 + 104))(v9 + v8, *MEMORY[0x277D0CD50], v5);

  sub_2186ADF1C(v10);
  v0[7] = v9;
  v11 = *(MEMORY[0x277D0CBB0] + 4);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_2186AC794;
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  return MEMORY[0x282164890](v14, v13, v9, v15, v3, v4);
}

uint64_t sub_2186AC794()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2186AC8D0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2186AC8D0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2186ACAA8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2186ACB5C;
  v5 = MEMORY[0x277D84F90];

  return sub_2186AB138(v5);
}

uint64_t sub_2186ACB5C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2186ACCEC, 0, 0);
  }

  else
  {

    type metadata accessor for GKGameActivityDefinition(v4);
    v5 = sub_2186B7A9C();

    v6 = *(v3 + 24);
    (v6)[2](v6, v5, 0);

    _Block_release(v6);
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_2186ACCEC()
{
  v1 = *(v0 + 40);

  v2 = sub_2186B6F6C();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t GKGameActivityDefinitionSupport.loadGameActivityDefinitions(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2186B750C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186ACE4C, 0, 0);
}

uint64_t sub_2186ACE4C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[5];
    v17 = v0[6];
    v18 = MEMORY[0x277D84F90];
    sub_2186ADAB8(0, v2, 0);
    v3 = v18;
    v16 = *MEMORY[0x277D0CD48];
    v15 = *(v4 + 104);
    v5 = (v1 + 40);
    do
    {
      v6 = v0[4];
      v7 = *v5;
      *v0[6] = *(v5 - 1);
      *(v17 + 8) = v7;
      v15();
      v9 = *(v18 + 16);
      v8 = *(v18 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_2186ADAB8(v8 > 1, v9 + 1, 1);
      }

      v10 = v0[6];
      v11 = v0[4];
      *(v18 + 16) = v9 + 1;
      (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v10, v11);
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_2186AD00C;
  v13 = v0[3];

  return sub_2186AB138(v3);
}

uint64_t sub_2186AD00C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2186AD1A4;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_2186AD134;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2186AD134()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[10];

  return v3(v4);
}

uint64_t sub_2186AD1A4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2186AD398(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2186B7AAC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2186AD46C;

  return GKGameActivityDefinitionSupport.loadGameActivityDefinitions(with:)(v5);
}

uint64_t sub_2186AD46C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v9 = sub_2186B6F6C();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    type metadata accessor for GKGameActivityDefinition(v8);
    v12 = sub_2186B7A9C();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v7 + 8);

  return v14();
}

id GKGameActivityDefinitionSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKGameActivityDefinitionSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2186AD6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186AD73C(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_218681150;

  return sub_2186AC5A4(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_2186AD86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F48, &unk_2186B9500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_2186AD8DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_2186ADAB8(size_t a1, int64_t a2, char a3)
{
  result = sub_2186ADC98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2186ADB38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_218681150;

  return sub_2186AD398(v2, v3, v4);
}

uint64_t sub_2186ADBEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_2186ACAA8(v2, v3);
}

size_t sub_2186ADC98(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071D0, &qword_2186B9600);
  v10 = *(sub_2186B750C() - 8);
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
  v15 = *(sub_2186B750C() - 8);
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

uint64_t sub_2186ADE70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2186ADF1C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2186AD8DC(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27CC071D0, &qword_2186B9600, MEMORY[0x277D0CD78]);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_2186B750C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2186AE06C(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 associatedAchievementDescriptionIDs];
  v6 = sub_2186B7AAC();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_2186AEA2C;
    v9[4] = v4;
    aBlock[4] = sub_2186AEAFC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2186A95E0;
    aBlock[3] = &block_descriptor_85;
    v10 = _Block_copy(aBlock);
    v11 = a1;

    [v8 loadAchievementDescriptionsWithCompletionHandler_];
    _Block_release(v10);
  }

  else
  {
    sub_2186804FC(0, &qword_27CC07078, &off_278236528);
    v12 = sub_2186B7A9C();
    (a2)[2](a2, v12, 0);
  }
}

void sub_2186AE260(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 associatedLeaderboardIDs];
  v6 = sub_2186B7AAC();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = [a1 associatedLeaderboardIDs];
    aBlock[4] = sub_2186AEA00;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2186A9758;
    aBlock[3] = &block_descriptor_75;
    v10 = _Block_copy(aBlock);

    [v8 loadLeaderboardsWithIDs:v9 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    sub_2186804FC(0, &qword_27CC06FD8, &off_278236540);
    v11 = sub_2186B7A9C();
    (a2)[2](a2, v11, 0);
  }
}

id sub_2186AE444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v58 = a7;
  v59 = a8;
  v57 = a6;
  v69 = a20;
  v70 = a21;
  v65 = a17;
  v66 = a18;
  v64 = a16;
  v67 = a14;
  v68 = a19;
  v62 = a13;
  v63 = a15;
  v60 = a11;
  v61 = a12;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v57 - v30;
  v32 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  *&v22[OBJC_IVAR___GKGameActivityDefinition___minPlayers] = 0;
  v33 = &v22[OBJC_IVAR___GKGameActivityDefinition_identifier];
  *v33 = a1;
  v33[1] = a2;
  v34 = &v22[OBJC_IVAR___GKGameActivityDefinition_groupIdentifier];
  *v34 = a3;
  v34[1] = a4;
  v35 = &v22[OBJC_IVAR___GKGameActivityDefinition_title];
  v36 = v57;
  v37 = v58;
  *v35 = a5;
  v35[1] = v36;
  v38 = &v22[OBJC_IVAR___GKGameActivityDefinition_details];
  v39 = v59;
  *v38 = v37;
  v38[1] = v39;
  v22[OBJC_IVAR___GKGameActivityDefinition_supportsPartyCode] = a9;
  sub_2186A7D78(a10, v31, &qword_27CC06D70, &qword_2186B92A0);
  v40 = sub_2186B6FAC();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v31, 1, v40) == 1)
  {
    sub_21867F0B8(v31, &qword_27CC06D70, &qword_2186B92A0);
    v42 = 0;
  }

  else
  {
    v42 = sub_2186B6F8C();
    (*(v41 + 8))(v31, v40);
  }

  *&v22[OBJC_IVAR___GKGameActivityDefinition__fallbackURL] = v42;
  v43 = v60;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_internalMaxPlayers] = v60;
  swift_beginAccess();
  v44 = *&v22[v32];
  v45 = v61;
  *&v22[v32] = v61;
  v46 = v43;
  v47 = v45;

  v48 = v63;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_defaultProperties] = v62;
  v49 = v67;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_imageURL] = v67;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_releaseState] = v48;
  v50 = v65;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_playStyle] = v64;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_associatedLeaderboardIDs] = v50;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_associatedAchievementDescriptionIDs] = v66;
  v51 = &v22[OBJC_IVAR___GKGameActivityDefinition_language];
  v52 = v69;
  *v51 = v68;
  v51[1] = v52;
  v53 = v49;
  v54 = v70;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_partyStartURL] = sub_2186B6F8C();
  v71.receiver = v22;
  v71.super_class = GKGameActivityDefinition;
  v55 = objc_msgSendSuper2(&v71, sel_init);
  (*(v41 + 8))(v54, v40);
  sub_21867F0B8(a10, &qword_27CC06D70, &qword_2186B92A0);
  return v55;
}

uint64_t sub_2186AE764(void *a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_2186B6FAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  v17 = [a1 imageURL];
  if (v17)
  {
    v18 = v17;
    sub_2186B6F9C();

    (*(v9 + 32))(v15, v13, v8);
    sub_2186804FC(0, &qword_27CC07158, off_278236500);
    (*(v9 + 16))(v7, v15, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_218682758(v7, sub_2186AE9F8, v16);
    sub_21867F0B8(v7, &qword_27CC06D70, &qword_2186B92A0);
    (*(v9 + 8))(v15, v8);
  }

  else
  {
    a2[2](a2, 0, 0);
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2186AEA98(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2186B7E5C() & 1;
  }
}

uint64_t sub_2186AEB0C()
{
  sub_2186AEF8C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071E8, &qword_2186B9610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071F0, &qword_2186B9618);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v28 = v0;
  sub_2186B780C();
  v19 = *(v3 + 56);
  v19(v18, 0, 1, v2);
  (*(v3 + 104))(v16, *MEMORY[0x277D0D4C8], v2);
  v19(v16, 0, 1, v2);
  v20 = *(v6 + 48);
  sub_2186AEFD4(v18, v9);
  sub_2186AEFD4(v16, &v9[v20]);
  v21 = *(v3 + 48);
  if (v21(v9, 1, v2) == 1)
  {
    sub_21867F0B8(v16, &qword_27CC071F0, &qword_2186B9618);
    sub_21867F0B8(v18, &qword_27CC071F0, &qword_2186B9618);
    if (v21(&v9[v20], 1, v2) == 1)
    {
      sub_21867F0B8(v9, &qword_27CC071F0, &qword_2186B9618);
      return sub_2186B781C();
    }

    goto LABEL_6;
  }

  v22 = v29;
  sub_2186AEFD4(v9, v29);
  if (v21(&v9[v20], 1, v2) == 1)
  {
    sub_21867F0B8(v16, &qword_27CC071F0, &qword_2186B9618);
    sub_21867F0B8(v18, &qword_27CC071F0, &qword_2186B9618);
    (*(v3 + 8))(v22, v2);
LABEL_6:
    sub_21867F0B8(v9, &qword_27CC071E8, &qword_2186B9610);
    return 0;
  }

  v23 = v27;
  (*(v3 + 32))(v27, &v9[v20], v2);
  sub_2186AF044(&qword_27CC071F8, sub_2186AEF8C);
  v24 = sub_2186B79EC();
  v25 = *(v3 + 8);
  v25(v23, v2);
  sub_21867F0B8(v16, &qword_27CC071F0, &qword_2186B9618);
  sub_21867F0B8(v18, &qword_27CC071F0, &qword_2186B9618);
  v25(v29, v2);
  sub_21867F0B8(v9, &qword_27CC071F0, &qword_2186B9618);
  if (v24)
  {
    return sub_2186B781C();
  }

  return 0;
}

void sub_2186AEF8C()
{
  if (!qword_27CC071E0)
  {
    v0 = sub_2186B77FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC071E0);
    }
  }
}

uint64_t sub_2186AEFD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071F0, &qword_2186B9618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2186AF044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186AF184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2186B794C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2186AF21C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_2186B78EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07200, &unk_2186B9620);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_2186B78BC();
  sub_2186AEB0C();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    sub_2186AF4A8();
    sub_2186B78AC();
    sub_2186B78CC();
    v16 = *(v2 + 8);
    v16(v8, v1);
    sub_2186B78AC();
    sub_2186B78DC();
    v16(v6, v1);
    sub_2186B7BFC();
  }

  else
  {
    v18 = sub_2186B6FAC();
    return (*(*(v18 - 8) + 56))(v20, 1, 1, v18);
  }
}

unint64_t sub_2186AF4A8()
{
  result = qword_27CC07208;
  if (!qword_27CC07208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC07208);
  }

  return result;
}

uint64_t sub_2186AF500()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_identifier);
  v2 = *(v0 + OBJC_IVAR___GKChallengeDefinition_identifier + 8);

  return v1;
}

uint64_t sub_2186AF548()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_groupIdentifier);
  v2 = *(v0 + OBJC_IVAR___GKChallengeDefinition_groupIdentifier + 8);

  return v1;
}

uint64_t sub_2186AF590()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_title);
  v2 = *(v0 + OBJC_IVAR___GKChallengeDefinition_title + 8);

  return v1;
}

uint64_t sub_2186AF5D8()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_details);
  v2 = *(v0 + OBJC_IVAR___GKChallengeDefinition_details + 8);

  return v1;
}

void *sub_2186AF6B8()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_leaderboard);
  v2 = v1;
  return v1;
}

id sub_2186AF718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = (v13 + OBJC_IVAR___GKChallengeDefinition_identifier);
  *v14 = a1;
  v14[1] = a2;
  v15 = (v13 + OBJC_IVAR___GKChallengeDefinition_groupIdentifier);
  *v15 = a3;
  v15[1] = a4;
  v16 = (v13 + OBJC_IVAR___GKChallengeDefinition_title);
  *v16 = a5;
  v16[1] = a6;
  v17 = (v13 + OBJC_IVAR___GKChallengeDefinition_details);
  *v17 = a7;
  v17[1] = a8;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_isRepeatable) = a9;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_durationOptions) = a10;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_leaderboard) = a11;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_imageUrl) = a12;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_releaseState) = a13;
  v19.super_class = GKChallengeDefinition;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_2186AF8E4(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = [v3 imageUrl];
  if (!v10)
  {
    return a1(0, 0);
  }

  v11 = v10;
  sub_2186804FC(0, &qword_27CC07158, off_278236500);
  sub_2186B6F9C();
  v12 = sub_2186B6FAC();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_218682758(v9, a1, a2);

  return sub_21867F0B8(v9, &qword_27CC06D70, &qword_2186B92A0);
}

id GKChallengeDefinition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2186AFD68()
{
  v0 = sub_21867FC04();
  sub_21867FF24(v0, v8);
  v1 = type metadata accessor for GKChallengeDefinitionSupport();
  v2 = objc_allocWithZone(v1);
  sub_21867FF24(v8, &v2[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service]);
  v3 = &v2[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader];
  *v3 = &unk_2186B97D0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider];
  *v4 = sub_2186B03A0;
  v4[1] = 0;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0(v8);
  qword_27CC07C30 = v5;
  return result;
}

uint64_t sub_2186AFE24(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F10, &qword_2186B90B0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186AFEF0, 0, 0);
}

uint64_t sub_2186AFEF0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v8 = v1[19];
  v7 = v1[20];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B8F70;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;

  v10 = sub_2186B7A9C();
  v1[24] = v10;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2186B0128;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F78, &qword_2186B9130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2186A06D8;
  v1[13] = &block_descriptor_4;
  [v13 loadLeaderboardsWithIDs:v10 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2186B0128()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2186B0324;
  }

  else
  {
    v3 = sub_2186B0238;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2186B0238()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *(v0 + 144);
    }

    result = sub_2186B7CCC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v4 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CEB1380](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_11:
  v6 = *(v0 + 184);

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_2186B0324()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_2186B03A0()
{
  v0 = [objc_opt_self() playerID];
  v1 = sub_2186B7A0C();

  return v1;
}

id sub_2186B0400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  sub_21867FF24(a1, &v11[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service]);
  v12 = &v11[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider];
  *v13 = a4;
  *(v13 + 1) = a5;
  v16.receiver = v11;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t *sub_2186B04B4()
{
  if (qword_27CC07C28 != -1)
  {
    swift_once();
  }

  return &qword_27CC07C30;
}

id static GKChallengeDefinitionSupport.shared.getter()
{
  if (qword_27CC07C28 != -1)
  {
    swift_once();
  }

  v1 = qword_27CC07C30;

  return v1;
}

id sub_2186B05BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  sub_21867FF24(a1, &v5[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service]);
  v12 = &v5[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider];
  *v13 = a4;
  *(v13 + 1) = a5;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_2186B0690()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07270, &qword_2186B9660);
  *v3 = v0;
  v3[1] = sub_2186B0770;

  return sub_218682BE4((v0 + 2), &unk_2186B9658);
}

uint64_t sub_2186B0770()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2186B08A8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2186B088C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186B08A8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2186B090C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2186B794C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_2186B6EEC();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07198, &qword_2186B94D8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07290, &unk_2186B9770) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v15 = sub_2186B776C();
  v2[19] = v15;
  v16 = *(v15 - 8);
  v2[20] = v16;
  v17 = *(v16 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v18 = sub_2186B778C();
  v2[23] = v18;
  v19 = *(v18 - 8);
  v2[24] = v19;
  v20 = *(v19 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07298, &qword_2186B9780) - 8);
  v2[27] = v21;
  v22 = *(v21 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072A0, &qword_2186B9788);
  v2[31] = v24;
  v25 = *(v24 - 8);
  v2[32] = v25;
  v26 = *(v25 + 64) + 15;
  v2[33] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2[34] = v27;
  v28 = *(v27 - 8);
  v2[35] = v28;
  v2[36] = *(v28 + 64);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186B0DA0, 0, 0);
}

uint64_t sub_2186B0DA0()
{
  v1 = v0[38];
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072A8, &qword_2186B9790);
  v3 = sub_2186B779C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2186B8F70;
  *(v7 + v6) = 0;
  v0[39] = v7;
  (*(v4 + 104))(v7 + v6, *MEMORY[0x277D0D410], v3);
  v8 = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v0[40] = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v9 = (v2 + v8);
  v10 = *(v2 + v8 + 24);
  v11 = *(v2 + v8 + 32);
  __swift_project_boxed_opaque_existential_0(v9, v10);
  v12 = *(MEMORY[0x277D0CBE8] + 4);

  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_2186B108C;
  v14 = v0[38];

  return MEMORY[0x2821648C8](v14, v7, v10, v11);
}

uint64_t sub_2186B108C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_2186B2ED0;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_2186B11A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186B11A8()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v18 = v0[33];
  v7 = v0[30];
  v8 = v0[5];
  v9 = sub_2186B789C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v6 + 16))(v3, v1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, v3, v5);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07280, &unk_2186B9758);
  sub_2186B6B18(&qword_27CC072B0);
  sub_2186B6B18(&qword_27CC072B8);
  sub_2186B762C();
  v13 = *(MEMORY[0x277D0D0B0] + 4);
  v14 = swift_task_alloc();
  v0[43] = v14;
  *v14 = v0;
  v14[1] = sub_2186B13C4;
  v15 = v0[33];
  v16 = v0[31];

  return MEMORY[0x282164EA8](v16);
}

uint64_t sub_2186B13C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(*v2 + 264);
  v6 = *(*v2 + 256);
  v7 = *(*v2 + 248);
  v10 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2186B3228;
  }

  else
  {
    v8 = sub_2186B1538;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2186B1538()
{
  if (*(v0[44] + 16))
  {
    v1 = (v0[5] + v0[40]);
    v0[2] = MEMORY[0x277D84F90];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v2);
    v4 = *(MEMORY[0x277D0CBF0] + 4);
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_2186B1764;
    v6 = v0[44];

    return MEMORY[0x2821648D0](v6, v2, v3);
  }

  else
  {
    v7 = v0[38];
    v8 = v0[34];
    v9 = v0[35];
    v10 = v0[4];

    (*(v9 + 8))(v7, v8);
    *v10 = MEMORY[0x277D84F90];
    v12 = v0[37];
    v11 = v0[38];
    v13 = v0[33];
    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    v17 = v0[25];
    v18 = v0[26];
    v20 = v0[21];
    v19 = v0[22];
    v23 = v0[18];
    v24 = v0[15];
    v25 = v0[14];
    v26 = v0[13];
    v27 = v0[12];
    v28 = v0[11];
    v29 = v0[8];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2186B1764(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v5 = *(*v2 + 352);
  v8 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v6 = sub_2186B3384;
  }

  else
  {
    v6 = sub_2186B1898;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2186B1898()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v127 = *(v3 + 72);
    v6 = (v4 + 48);
    v122 = v4;
    v124 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v10 = *(v0 + 184);
      sub_2186A7D78(v5, v8, &qword_27CC07298, &qword_2186B9780);
      sub_2186B6B68(v8, v9);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_21867F0B8(*(v0 + 224), &qword_27CC07298, &qword_2186B9780);
      }

      else
      {
        v11 = *v124;
        (*v124)(*(v0 + 208), *(v0 + 224), *(v0 + 184));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2186B6810(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2186B6810(v12 > 1, v13 + 1, 1, v7);
        }

        v14 = *(v0 + 208);
        v15 = *(v0 + 184);
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v13], v14, v15);
      }

      v5 += v127;
      --v2;
    }

    while (v2);
    v16 = *(v0 + 376);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v7;
  v18 = *(v7 + 2);
  *(v0 + 400) = v18;
  if (v18)
  {
    v19 = MEMORY[0x277D84F90];
    v20 = *(v0 + 192);
    *(v0 + 408) = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader;
    *(v0 + 464) = *(v20 + 80);
    *(v0 + 468) = *MEMORY[0x277D0D1B0];
    *(v0 + 472) = *MEMORY[0x277D0CEE8];
    *(v0 + 476) = *MEMORY[0x277D0CEF0];
    *(v0 + 480) = *MEMORY[0x277D0CEE0];
    v116 = *(v0 + 384);
    *(v0 + 416) = 0;
    *(v0 + 424) = v19;
    if (!*(v7 + 2))
    {
LABEL_56:
      __break(1u);
      return result;
    }

    v21 = 0;
    v22 = &qword_27CC07290;
    while (1)
    {
      v23 = *(v0 + 468);
      v24 = *(v0 + 176);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 152);
      (*(*(v0 + 192) + 16))(*(v0 + 200), &v7[((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 192) + 72) * v21], *(v0 + 184));
      sub_2186B775C();
      (*(v26 + 16))(v25, v24, v27);
      if ((*(v26 + 88))(v25, v27) == v23)
      {
        v28 = *(v0 + 168);
        v29 = *(v0 + 144);
        v30 = *(v0 + 128);
        v31 = *(v0 + 136);
        (*(*(v0 + 160) + 96))(v28, *(v0 + 152));
        (*(v31 + 32))(v29, v28, v30);
        v32 = sub_2186B783C();
        *(v0 + 432) = v33;
        if (!v116)
        {
          v107 = *(v0 + 176);
          v108 = *(v0 + 152);
          v109 = *(v0 + 160);
          v110 = (*(v0 + 40) + *(v0 + 408));
          v111 = v32;
          v112 = v33;
          (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
          (*(v109 + 8))(v107, v108);
          v113 = v110[1];
          v130 = (*v110 + **v110);
          v114 = (*v110)[1];
          v115 = swift_task_alloc();
          *(v0 + 440) = v115;
          *v115 = v0;
          v115[1] = sub_2186B2418;

          return v130(v111, v112);
        }

        v34 = *(v0 + 176);
        v35 = *(v0 + 152);
        v36 = *(v0 + 160);
        v37 = *(v0 + 136);
        v38 = *(v0 + 144);
        v39 = *(v0 + 128);

        (*(v37 + 8))(v38, v39);
        (*(v36 + 8))(v34, v35);
        v116 = 0;
      }

      else
      {
        v40 = *(v0 + 168);
        v41 = *(v0 + 152);
        v42 = *(*(v0 + 160) + 8);
        v42(*(v0 + 176), v41);
        v42(v40, v41);
      }

      v43 = *(v0 + 200);
      v44 = *(v0 + 120);
      sub_2186B76CC();
      v45 = sub_2186B75AC();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45) == 1)
      {
        goto LABEL_25;
      }

      v47 = *(v0 + 472);
      v48 = *(v0 + 112);
      sub_2186A7D78(*(v0 + 120), v48, v22, &unk_2186B9770);
      v49 = (*(v46 + 88))(v48, v45);
      if (v49 == v47)
      {
        goto LABEL_25;
      }

      if (v49 != *(v0 + 476))
      {
        break;
      }

      v50 = 2;
LABEL_26:
      v128 = v50;
      v51 = *(v0 + 200);
      sub_21867F0B8(*(v0 + 120), v22, &unk_2186B9770);
      sub_2186B771C();
      sub_2186B774C();
      v53 = v52;
      sub_2186B772C();
      sub_2186B76AC();
      v55 = v54;
      v125 = sub_2186B76BC();
      v56 = sub_2186B777C();
      v57 = *(v56 + 16);
      if (v57)
      {
        v117 = v55;
        v58 = v22;
        *(v0 + 24) = MEMORY[0x277D84F90];
        sub_2186B6BD8(0, v57, 0);
        v59 = *(v0 + 24);
        v60 = 32;
        do
        {
          v61 = *(v0 + 88);
          v62 = *(v56 + v60);

          sub_2186B38F0(v63, v61);

          *(v0 + 24) = v59;
          v65 = *(v59 + 16);
          v64 = *(v59 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_2186B6BD8(v64 > 1, v65 + 1, 1);
            v59 = *(v0 + 24);
          }

          v67 = *(v0 + 80);
          v66 = *(v0 + 88);
          v68 = *(v0 + 72);
          *(v59 + 16) = v65 + 1;
          (*(v67 + 32))(v59 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v65, v66, v68);
          v60 += 8;
          --v57;
        }

        while (v57);

        v22 = v58;
        v55 = v117;
      }

      else
      {
      }

      v69 = *(v0 + 200);
      v70 = *(v0 + 96);
      sub_2186B773C();
      v71 = sub_2186B78FC();
      v72 = *(v71 - 8);
      v73 = (*(v72 + 48))(v70, 1, v71);
      v75 = *(v0 + 96);
      v74 = *(v0 + 104);
      if (v73 == 1)
      {
        sub_21867F0B8(*(v0 + 96), &qword_27CC07198, &qword_2186B94D8);
        v76 = sub_2186B6FAC();
        (*(*(v76 - 8) + 56))(v74, 1, 1, v76);
        v77 = 0;
      }

      else
      {
        sub_2186AF21C(*(v0 + 104));
        (*(v72 + 8))(v75, v71);
        v78 = sub_2186B6FAC();
        v79 = *(v78 - 8);
        v77 = 0;
        if ((*(v79 + 48))(v74, 1, v78) != 1)
        {
          v80 = *(v0 + 104);
          v77 = sub_2186B6F8C();
          (*(v79 + 8))(v80, v78);
        }
      }

      v81 = sub_2186B79FC();

      if (v53)
      {
        v82 = sub_2186B79FC();
      }

      else
      {
        v82 = 0;
      }

      v83 = sub_2186B79FC();

      if (v55)
      {
        v55 = sub_2186B79FC();
      }

      v84 = *(v0 + 72);
      v85 = objc_allocWithZone(GKChallengeDefinition);
      v86 = sub_2186B7A9C();

      [v85 initWithIdentifier:v81 groupIdentifier:v82 title:v83 details:v55 isRepeatable:v125 & 1 durationOptions:v86 leaderboard:0 imageUrl:v77 releaseState:v128];

      MEMORY[0x21CEB10A0]();
      if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v93 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2186B7ACC();
      }

      v87 = *(v0 + 400);
      v89 = *(v0 + 192);
      v88 = *(v0 + 200);
      v90 = *(v0 + 184);
      v91 = *(v0 + 416) + 1;
      sub_2186B7AEC();
      result = (*(v89 + 8))(v88, v90);
      v92 = *(v0 + 16);
      if (v91 == v87)
      {
        v94 = *(v0 + 392);

        goto LABEL_50;
      }

      v21 = *(v0 + 416) + 1;
      *(v0 + 416) = v21;
      *(v0 + 424) = v92;
      v7 = *(v0 + 392);
      if (v21 >= *(v7 + 2))
      {
        goto LABEL_56;
      }
    }

    v50 = 2;
    if (v49 == *(v0 + 480))
    {
      goto LABEL_26;
    }

    (*(v46 + 8))(*(v0 + 112), v45);
LABEL_25:
    v50 = 1;
    goto LABEL_26;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_50:
  v95 = *(v0 + 32);
  (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
  *v95 = v92;
  v97 = *(v0 + 296);
  v96 = *(v0 + 304);
  v98 = *(v0 + 264);
  v100 = *(v0 + 232);
  v99 = *(v0 + 240);
  v101 = *(v0 + 224);
  v102 = *(v0 + 200);
  v103 = *(v0 + 208);
  v105 = *(v0 + 168);
  v104 = *(v0 + 176);
  v118 = *(v0 + 144);
  v119 = *(v0 + 120);
  v120 = *(v0 + 112);
  v121 = *(v0 + 104);
  v123 = *(v0 + 96);
  v126 = *(v0 + 88);
  v129 = *(v0 + 64);

  v106 = *(v0 + 8);

  return v106();
}