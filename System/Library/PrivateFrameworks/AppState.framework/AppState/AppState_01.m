unint64_t sub_2225E5A14()
{
  result = qword_280D9EBC0;
  if (!qword_280D9EBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9EBC0);
  }

  return result;
}

uint64_t ASDArcadeSubscriptionManager.deinit()
{
  [*(v0 + 128) removeObserver_];
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  sub_2225E53B4(*(v0 + 144), *(v0 + 152));
  v4 = *(v0 + 160);

  return v0;
}

uint64_t ASDArcadeSubscriptionManager.__deallocating_deinit()
{
  ASDArcadeSubscriptionManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

id ASDArcadeSubscriptionManager.subscriptionState.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *a1 = v3;
  v4 = *(v1 + 152);
  *(a1 + 8) = v4;
  return sub_2225E5394(v3, v4);
}

void sub_2225E5B54(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *(v3 + 144);
  *(v3 + 144) = v2;
  v6 = *(v3 + 152);
  *(v3 + 152) = v4;
  sub_2225E5394(v2, v4);
  sub_2225E5394(v5, v6);
  sub_2225E53B4(v5, v6);
  v7 = v5;
  v8 = v6;
  sub_2225E5C84(&v7);
  sub_2225E53B4(v5, v6);
}

void ASDArcadeSubscriptionManager.subscriptionState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 144);
  *(v1 + 144) = v2;
  LOBYTE(v2) = *(v1 + 152);
  *(v1 + 152) = v3;
  sub_2225E5394(v4, v2);
  sub_2225E53B4(v4, v2);
  v5 = v4;
  v6 = v2;
  sub_2225E5C84(&v5);
  sub_2225E53B4(v4, v2);
}

void sub_2225E5C84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22261AF10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  swift_beginAccess();
  v7 = *(v2 + 152);
  v14 = *(v2 + 144);
  v15 = v7;
  v17 = v6;
  v18 = a1;
  sub_2225E5394(v14, v7);
  LOBYTE(a1) = static ArcadeState.== infix(_:_:)(&v14, &v17);
  sub_2225E53B4(v14, v15);
  if ((a1 & 1) == 0)
  {
    v8 = *(v2 + 160);
    v9 = *(v2 + 152);
    v14 = *(v2 + 144);
    v15 = v9;
    sub_2225E5394(v14, v9);
    sub_22261AE90();
    sub_2225E53B4(v14, v15);
    if (qword_280D9ED08 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    v10 = *(sub_22261AF30() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v13 = *(v2 + 144);
    v16 = &type metadata for ArcadeState;
    v14 = v13;
    v15 = *(v2 + 152);
    sub_2225E5394(v13, v15);
    sub_22261AEC0();
    sub_2225E22D4(&v14, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B050();
  }
}

void (*ASDArcadeSubscriptionManager.subscriptionState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  sub_2225E5394(v5, v6);
  return sub_2225E5FA0;
}

void sub_2225E5FA0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 32);
  v7 = *(v5 + 144);
  v8 = *(v5 + 152);
  *(v5 + 144) = v4;
  *(v5 + 152) = v6;
  v9 = *(v3 + 40);
  if (a2)
  {
    sub_2225E5394(v4, v6);
    sub_2225E5394(v7, v8);
    sub_2225E53B4(v7, v8);
    v12 = v7;
    v13 = v8;
    sub_2225E5C84(&v12);
    sub_2225E53B4(v7, v8);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
  }

  else
  {
    sub_2225E5394(v7, v8);
    sub_2225E53B4(v7, v8);
    v12 = v7;
    v13 = v8;
    sub_2225E5C84(&v12);
    v10 = v7;
    v11 = v8;
  }

  sub_2225E53B4(v10, v11);

  free(v3);
}

uint64_t sub_2225E6090()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_22261AF10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v19 = unk_280DA0A40;
  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v8 = *(sub_22261AF30() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v11 = sub_22261AC50();
  v12 = sub_22261B1E0();
  v14 = v13;

  v21[3] = MEMORY[0x277D837D0];
  v21[0] = v12;
  v21[1] = v14;
  sub_22261AEC0();
  sub_2225E22D4(v21, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B060();

  v15 = sub_22261B310();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v17 = v20;
  v16[4] = v1;
  v16[5] = v17;

  sub_2225FEE4C(0, 0, v5, &unk_22261DAD8, v16);
}

uint64_t sub_2225E63B8()
{
  v1 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 81) = 0;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_2225E6488;

  return ASDArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v0 + 72, (v0 + 81));
}

uint64_t sub_2225E6488()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2225E6608;
  }

  else
  {
    sub_2225E53B4(*(v2 + 72), *(v2 + 80));
    v4 = sub_2225E65A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225E65A8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2225E6608()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v3 = *(sub_22261AF30() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  swift_getErrorValue();
  v6 = v0[6];
  v7 = v0[7];
  v0[5] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t ASDArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v4;
  *(v3 + 368) = *v4;
  v6 = *(*(sub_22261AF10() - 8) + 64) + 15;
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 345) = *a2;

  return MEMORY[0x2822009F8](sub_2225E6918, 0, 0);
}

uint64_t sub_2225E6918()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 345);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  sub_2225D6718(qword_280DA0A20, v0 + 16);
  v63 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v6 = *(sub_22261AF30() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D9A0;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 240) = &type metadata for ArcadeEntitlementRefreshCondition;
  *(v0 + 216) = v1;
  sub_22261AEC0();
  sub_2225E22D4(v0 + 216, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  swift_beginAccess();
  v9 = *(v5 + 144);
  v10 = *(v5 + 152);
  *(v0 + 272) = &type metadata for ArcadeState;
  *(v0 + 248) = v9;
  *(v0 + 256) = v10;
  sub_2225E5394(v9, v10);
  sub_22261AEC0();
  sub_2225E22D4(v0 + 248, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  v11 = *(v5 + 24);
  if (v11)
  {
    v12 = *(*(v0 + 360) + 16);
    v13 = MEMORY[0x277D837D0];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    *(v0 + 296) = 0;
  }

  v14 = *(v0 + 345);
  v15 = *(v0 + 376);
  *(v0 + 280) = v12;
  *(v0 + 288) = v11;
  *(v0 + 304) = v13;

  sub_22261AEE0();
  sub_2225E22D4(v0 + 280, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v16 = v14 >> 6;
  v17 = *(v0 + 345);
  if (v14 >> 6 > 1)
  {
    if (v16 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
      v27 = sub_22261B110();
      if (v17 == 192)
      {
        v45 = *(v0 + 360);
        v46 = v45[7];
        v47 = v45[8];
        __swift_project_boxed_opaque_existential_1(v45 + 4, v46);
        v48 = *(v47 + 16);
        swift_retain_n();
        v48(1, sub_2225E7E88, v27, v46, v47);
      }

      else
      {
        v49 = *(v0 + 360);
        v50 = v49[14];
        v51 = v49[15];
        v66 = sub_2225E7A54(1, v50, v51, v27, v49, *(v0 + 368));
        v53 = v52;
        v54 = v49[7];
        v55 = v49[8];
        __swift_project_boxed_opaque_existential_1(v49 + 4, v54);
        v56 = *(v55 + 8);

        v56(1, 1, v50, v51, v66, v53, v54, v55);
      }

      v26 = MEMORY[0x277D21FB0];
      goto LABEL_17;
    }

    v29 = *(v0 + 360);
    v65 = *(v0 + 368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
    v30 = sub_22261B110();
    v32 = v29[7];
    v31 = v29[8];
    __swift_project_boxed_opaque_existential_1(v29 + 4, v32);
    v33 = *(v31 + 16);

    v34 = v31;
    v26 = MEMORY[0x277D21FB0];
    v33(1, sub_2225E9290, v30, v32, v34);
    v36 = v29[14];
    v35 = v29[15];
    v37 = swift_allocObject();
    *(v37 + 16) = v29;
    *(v37 + 24) = v17 & 1;
    *(v37 + 32) = v36;
    *(v37 + 40) = v35;
    *(v37 + 48) = v65;
    *(v0 + 120) = sub_22261AFD0();
    *(v0 + 128) = v26;
    __swift_allocate_boxed_opaque_existential_0((v0 + 96));

    sub_22261AFC0();
    sub_2225E8E20(qword_280D9EC28, &qword_27D010AB8, &qword_22261D9E8);
    v27 = sub_22261B0E0();

    v28 = (v0 + 96);
  }

  else
  {
    v18 = *(v0 + 360);
    v64 = *(v0 + 368);
    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
      v38 = sub_22261B110();
      v40 = v18[7];
      v39 = v18[8];
      __swift_project_boxed_opaque_existential_1(v18 + 4, v40);
      v41 = *(v39 + 16);

      v41(1, sub_2225E9290, v38, v40, v39);
      v43 = v18[14];
      v42 = v18[15];
      v44 = swift_allocObject();
      *(v44 + 16) = v18;
      *(v44 + 24) = v17 & 1;
      *(v44 + 32) = v43;
      *(v44 + 40) = v42;
      *(v44 + 48) = v64;
      *(v0 + 160) = sub_22261AFD0();
      v26 = MEMORY[0x277D21FB0];
      *(v0 + 168) = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_0((v0 + 136));

      sub_22261AFC0();
      sub_2225E8E20(qword_280D9EC28, &qword_27D010AB8, &qword_22261D9E8);
      v27 = sub_22261B0E0();

      v28 = (v0 + 136);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
      v19 = sub_22261B110();
      v21 = v18[7];
      v20 = v18[8];
      __swift_project_boxed_opaque_existential_1(v18 + 4, v21);
      v22 = *(v20 + 16);

      v22(1, sub_2225E9290, v19, v21, v20);
      v24 = v18[14];
      v23 = v18[15];
      v25 = swift_allocObject();
      *(v25 + 16) = v18;
      *(v25 + 24) = v17 & 1;
      *(v25 + 32) = v24;
      *(v25 + 40) = v23;
      *(v25 + 48) = v64;
      *(v0 + 200) = sub_22261AFD0();
      v26 = MEMORY[0x277D21FB0];
      *(v0 + 208) = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_0((v0 + 176));

      sub_22261AFC0();
      sub_2225E8E20(qword_280D9EC28, &qword_27D010AB8, &qword_22261D9E8);
      v27 = sub_22261B0E0();

      v28 = (v0 + 176);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v28);

LABEL_17:
  *(v0 + 400) = v27;
  v58 = *(v0 + 360);
  v57 = *(v0 + 368);
  *(v0 + 80) = sub_22261AFD0();
  *(v0 + 88) = v26;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));

  sub_22261AFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC0, &qword_22261D9F0);
  sub_2225E8E20(&qword_280D9EC20, &qword_27D010AC0, &qword_22261D9F0);
  v59 = sub_22261B0E0();
  *(v0 + 408) = v59;

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v60 = swift_task_alloc();
  *(v0 + 416) = v60;
  *v60 = v0;
  v60[1] = sub_2225E72A4;
  v61 = *(v0 + 360);

  return sub_2225E840C(v0 + 336, v59, v61);
}

uint64_t sub_2225E72A4()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2225E73A0, 0, 0);
}

uint64_t sub_2225E73A0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v1 + 136);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  os_unfair_lock_lock(v4 + 4);
  sub_2225E8DE8(v6);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v14 = *(v0 + 376);
  v11 = *(v0 + 352);
  os_unfair_lock_unlock(v4 + 4);

  *v11 = v2;
  *(v11 + 8) = v3;

  v12 = *(v0 + 8);

  return v12();
}

BOOL sub_2225E75D0(unint64_t a1)
{
  v38 = sub_22261ADE0();
  v2 = *(v38 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - v8;
  if (a1)
  {
    v9 = a1;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(v10 + 16); i; i = sub_22261B5B0())
    {
      v12 = 0;
      v41 = v10;
      v42 = v9 & 0xC000000000000001;
      v33 = (v2 + 1);
      v34 = (v2 + 4);
      v39 = v9;
      v40 = i;
      while (1)
      {
        if (v42)
        {
          v13 = MEMORY[0x223DBB940](v12, v9);
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v2 = v13;
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v15 = *(v43 + 24);
        if (v15)
        {
          v16 = *(v43 + 16);
          v17 = [v13 familyID];
          v18 = [v17 stringValue];

          v19 = sub_22261B1E0();
          v21 = v20;

          if (v19 == v16 && v15 == v21)
          {

            v9 = v39;
          }

          else
          {
            v23 = sub_22261B620();

            v9 = v39;
            if ((v23 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v24 = [v2 expiryDate];
          if (!v24)
          {
            goto LABEL_26;
          }

          v25 = v24;
          v26 = v36;
          sub_22261ADC0();

          v27 = v35;
          v28 = v38;
          (*v34)(v35, v26, v38);
          v29 = v37;
          sub_22261ADD0();
          LOBYTE(v25) = sub_22261AD90();
          v30 = *v33;
          (*v33)(v29, v28);
          v30(v27, v28);
          if (v25)
          {
            goto LABEL_26;
          }
        }

LABEL_5:

        ++v12;
        v10 = v41;
        if (v14 == v40)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

LABEL_25:
  v2 = 0;
LABEL_26:

  return v2 != 0;
}

uint64_t sub_2225E78EC(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v17 = sub_22261B5B0();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v17 != v6;
    if (v17 == v6)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DBB940](v6, a1);
    }

    else
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = [v8 stringValue];
    v11 = sub_22261B1E0();
    v13 = v12;

    if (v11 == v4 && v2 == v13)
    {

      return 1;
    }

    v15 = sub_22261B620();

    ++v6;
  }

  while ((v15 & 1) == 0);
  return v7;
}

void (*sub_2225E7A54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(int a1, char a2, char a3, void *a4)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a5;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a6;

  return sub_2225E91DC;
}

void sub_2225E7AFC(int a1, char a2, char a3, id a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a4)
  {
    sub_22261B0F0();
    return;
  }

  if ((a5 & 1) == 0 || (a2 & 1) == 0 || (a3 & 1) == 0)
  {
    v19 = a4;
    goto LABEL_11;
  }

  type metadata accessor for Code(0);
  v12 = a4;
  sub_2225E9210();
  if ((sub_22261AD00() & 1) == 0)
  {
LABEL_11:
    sub_22261B0D0();

    return;
  }

  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v13 = *(sub_22261AF30() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AEB0();
  sub_22261AEB0();
  sub_22261B060();

  v16 = a6[7];
  v17 = a6[8];
  __swift_project_boxed_opaque_existential_1(a6 + 4, v16);
  v18 = *(v17 + 8);

  v18(1, 1, a7, a8, sub_2225E9268, a9, v16, v17);
}

void sub_2225E7D88(int a1, int a2, int a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_22261B0D0();
  }

  else
  {
    sub_22261B0F0();
  }
}

void sub_2225E7E08(int a1, int a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_22261B0D0();
  }

  else
  {
    sub_22261B0F0();
  }
}

uint64_t sub_2225E7E90(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
    v11 = sub_22261B110();
    v12 = sub_2225E7A54(a3 & 1, a4, a5, v11, a2, a6);
    v14 = v13;
    v15 = a2[7];
    v16 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v15);
    (*(v16 + 8))(1, 1, a4, a5, v12, v14, v15, v16);

    return v11;
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);

    return sub_22261B0C0();
  }
}

uint64_t sub_2225E7FC8(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if (!sub_2225E75D0(*a1) && (v12 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);

    return sub_22261B0C0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
  v14 = sub_22261B110();
  v15 = sub_2225E7A54(a3 & 1, a4, a5, v14, a2, a6);
  v17 = v16;
  v18 = a2[7];
  v19 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v18);
  (*(v19 + 8))(1, 1, a4, a5, v15, v17, v18, v19);

  return v14;
}

uint64_t sub_2225E8120(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if (sub_2225E75D0(*a1) && (v12 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);

    return sub_22261B0C0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
  v14 = sub_22261B110();
  v15 = sub_2225E7A54(a3 & 1, a4, a5, v14, a2, a6);
  v17 = v16;
  v18 = a2[7];
  v19 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v18);
  (*(v19 + 8))(1, 1, a4, a5, v15, v17, v18, v19);

  return v14;
}

uint64_t sub_2225E8278(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC0, &qword_22261D9F0);
  v6 = sub_22261B110();
  v7 = a2[7];
  v8 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  *(v9 + 32) = v4;
  *(v9 + 33) = v5;
  v10 = *(v8 + 24);

  v10(sub_2225E9270, v9, v7, v8);

  return v6;
}

void sub_2225E836C(int a1, int a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_22261B0D0();
  }

  else
  {

    sub_22261B0F0();
  }
}

uint64_t sub_2225E840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a1;
  v3[27] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v5 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC0, &qword_22261D9F0);
  v7 = sub_2225E8E20(&qword_280D9EC20, &qword_27D010AC0, &qword_22261D9F0);
  v8 = *(MEMORY[0x277D22390] + 4);
  v9 = swift_task_alloc();
  v3[32] = v9;
  *v9 = v3;
  v9[1] = sub_2225E8570;

  return MEMORY[0x282180360](v3 + 22, v6, v7);
}

uint64_t sub_2225E8570()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_2225E8AD4;
  }

  else
  {
    *(v2 + 272) = *(v2 + 176);
    v4 = sub_2225E868C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225E868C()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[31];
  sub_2225D6718(qword_280DA0A20, (v0 + 2));
  v33 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v3 = *(sub_22261AF30() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  if (v1)
  {
    v6 = v0[34];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AD8, &qword_22261DB28);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v0[12] = 0;
    v0[13] = 0;
  }

  v8 = v0[35];
  v10 = v0[30];
  v9 = v0[31];
  v0[11] = v6;
  v0[14] = v7;

  sub_22261AEE0();
  sub_2225E22D4((v0 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  if (v8)
  {
    v11 = v0[35];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AD0, &qword_22261DB20);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v0[16] = 0;
    v0[17] = 0;
  }

  v13 = v0[34];
  v14 = v0[30];
  v15 = v0[27];
  v0[15] = v11;
  v0[18] = v12;

  sub_22261AEE0();
  sub_2225E22D4((v0 + 15), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B060();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  LOBYTE(v14) = sub_2225E75D0(v13);

  if (v14)
  {
    v16 = v0[27];
    v17 = v0[28];

    v18 = v16[13];
    __swift_project_boxed_opaque_existential_1(v16 + 9, v16[12]);
    sub_22261AF80();
    v19 = sub_22261B0B0();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v17, 1, v19);
    v22 = v0[28];
    if (v21 == 1)
    {
      sub_2225E22D4(v0[28], &qword_27D0108E8, qword_22261DAE0);
      v23 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_22261B0A0();

      v23 = v0[25];
      (*(v20 + 8))(v22, v19);
    }

    v25 = 2;
  }

  else
  {
    v24 = v0[27];
    LOBYTE(v24) = sub_2225E78EC(v0[35]);

    v25 = 0;
    if (v24)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }
  }

  v27 = v0[30];
  v26 = v0[31];
  v29 = v0[28];
  v28 = v0[29];
  v30 = v0[26];
  *v30 = v23;
  *(v30 + 8) = v25;

  v31 = v0[1];

  return v31();
}

uint64_t sub_2225E8AD4()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[29];
  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v3 = *(sub_22261AF30() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  swift_getErrorValue();
  v6 = v0[19];
  v7 = v0[20];
  v0[10] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  v10 = v0[30];
  v9 = v0[31];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[26];
  *v13 = 1;
  *(v13 + 8) = 3;

  v14 = v0[1];

  return v14();
}

void sub_2225E8D38(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  v7 = *(a2 + 144);
  *(a2 + 144) = a3;
  v8 = *(a2 + 152);
  *(a2 + 152) = a4;
  sub_2225E5394(v7, v8);
  sub_2225E5394(a3, a4);
  sub_2225E53B4(v7, v8);
  v9 = v7;
  v10 = v8;
  sub_2225E5C84(&v9);
  sub_2225E53B4(v7, v8);
}

uint64_t sub_2225E8E20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2225E8F00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *a1 = v4;
  v5 = *(v3 + 152);
  *(a1 + 8) = v5;
  return sub_2225E5394(v4, v5);
}

uint64_t sub_2225E8F60(uint64_t a1, _BYTE *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225E2AA0;

  return ASDArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(a1, a2);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2225E905C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2225E90B8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2225E911C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2225E2AA0;

  return sub_2225E63B8();
}

unint64_t sub_2225E9210()
{
  result = qword_27D010858;
  if (!qword_27D010858)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010858);
  }

  return result;
}

void sub_2225E9270(int a1, int a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *(v3 + 33);
  sub_2225E836C(a1, a2, a3);
}

void sub_2225E9294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_appQuery);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    [v2 setObserver_];
  }
}

uint64_t sub_2225E933C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2225D83D0(0, &qword_280D9F278, 0x277CEC328);
    v4 = sub_22261B2B0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2225E9448()
{
  sub_22261B500();
  swift_getObjectType();
  v1 = sub_22261B750();

  v7 = v1;
  MEMORY[0x223DBB650](0x7265755170706128, 0xEB00000000203A79);
  v2 = [*(v0 + OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_appQuery) description];
  v3 = sub_22261B1E0();
  v5 = v4;

  MEMORY[0x223DBB650](v3, v5);

  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return v7;
}

id sub_2225E9668()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 ASDDeviceAppFetcher.init(regulatoryLogger:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

id ASDDeviceAppFetcher.observeQuery(_:on:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v12[5] = *a1;
  v13 = v7;
  v8 = sub_2225F1EE4();
  sub_2225D6718(a2, v12);
  v9 = objc_allocWithZone(type metadata accessor for ASDDeviceAppFetcher.QueryObservation());

  v10 = sub_2225EA3E8(v8, v12, a3, a4);

  return v10;
}

uint64_t ASDDeviceAppFetcher.fetchQuery(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  *(v2 + 64) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_2225E9814, 0, 0);
}

uint64_t sub_2225E9814()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AE0, &qword_22261DB48);
  *v6 = v0;
  v6[1] = sub_2225E9930;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EA55C, v4, v7);
}

uint64_t sub_2225E9930()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2225E9A68;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2225E9A4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225E9A68()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2225E9ACC(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  v42 = a2;
  v39 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
  v37 = *(v41 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - v6;
  v7 = sub_22261AE30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v14 = sub_22261B440();
  v15 = a3;
  sub_22261AE10();

  sub_2225EA67C(a4, aBlock);
  v16 = v44;
  v17 = v13;
  if (v44)
  {
    v18 = v45;
    __swift_project_boxed_opaque_existential_1(aBlock, v44);
    (*(v18 + 3))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    sub_2225EA6EC(aBlock);
  }

  v19 = v42;
  v47 = v42;
  v48 = v15;
  v35 = sub_2225F1EE4();
  v36 = v17;
  v20 = v8;
  v21 = *(v8 + 16);
  v34 = v7;
  v21(v11, v17, v7);
  v22 = v37;
  v23 = v40;
  v24 = v41;
  (*(v37 + 16))(v40, v39, v41);
  v25 = (*(v20 + 80) + 25) & ~*(v20 + 80);
  v26 = (v9 + *(v22 + 80) + v25) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v15;
  v28 = v11;
  v29 = v34;
  (*(v20 + 32))(v27 + v25, v28, v34);
  (*(v22 + 32))(v27 + v26, v23, v24);
  v45 = sub_2225EA78C;
  v46 = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225E933C;
  v44 = &block_descriptor;
  v30 = _Block_copy(aBlock);
  sub_2225EA89C(v19, v15);

  v31 = v35;
  [v35 executeQueryWithResultHandler_];
  _Block_release(v30);

  return (*(v20 + 8))(v36, v29);
}

uint64_t sub_2225E9F30(uint64_t a1, void *a2)
{
  sub_22261B3F0();
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  v4 = sub_22261B440();
  sub_22261AE10();

  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
    return sub_22261B2D0();
  }

  else
  {
    if (a1)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
    return sub_22261B2E0();
  }
}

id sub_2225EA0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v12[5] = *a1;
  v13 = v7;
  v8 = sub_2225F1EE4();
  sub_2225D6718(a2, v12);
  v9 = objc_allocWithZone(type metadata accessor for ASDDeviceAppFetcher.QueryObservation());

  v10 = sub_2225EA3E8(v8, v12, a3, a4);

  return v10;
}

uint64_t sub_2225EA184(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  *(v2 + 64) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_2225EA1B0, 0, 0);
}

uint64_t sub_2225EA1B0()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AE0, &qword_22261DB48);
  *v6 = v0;
  v6[1] = sub_2225EA2CC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EA8E4, v4, v7);
}

uint64_t sub_2225EA2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2225EA8E0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2225EA8EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_2225EA3E8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_appQuery] = a1;
  sub_2225D6718(a2, &v4[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_taskScheduler]);
  v10 = &v4[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_observer];
  *v10 = a3;
  *(v10 + 1) = a4;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = a1;

  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_2225EA8D4;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2225E933C;
  v17[3] = &block_descriptor_16;
  v14 = _Block_copy(v17);
  v15 = v12;

  [v11 executeQueryWithResultHandler_];
  _Block_release(v14);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

uint64_t get_enum_tag_for_layout_string_8AppState16RegulatoryLogger_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2225EA584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2225EA5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2225EA67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B80, &unk_22261DC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225EA6EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B80, &unk_22261DC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2225EA754(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {
    goto LABEL_7;
  }

  if (a2 == 3)
  {
  }
}

uint64_t sub_2225EA78C(uint64_t a1, void *a2)
{
  v5 = *(sub_22261AE30() - 8);
  v6 = ((*(v5 + 80) + 25) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8) - 8) + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);

  return sub_2225E9F30(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2225EA89C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2 >= 2u)
    {
      return result;
    }
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
    return result;
  }

  return result;
}

uint64_t ASDPurchaseHistory.update(in:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2225EA910, 0, 0);
}

uint64_t sub_2225EA910()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2225EAA08;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x6928657461647075, 0xEB00000000293A6ELL, sub_2225EAE4C, v3, v6);
}

uint64_t sub_2225EAA08()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2225EE2C0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2225EE2B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EAB24(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
  v3 = *(v21 - 8);
  v22 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = sub_22261AE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v13 = sub_22261B440();
  sub_22261AE10();

  (*(v7 + 16))(v10, v12, v6);
  v14 = v21;
  (*(v3 + 16))(v5, v23, v21);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + *(v3 + 80) + v15) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  (*(v3 + 32))(v17 + v16, v5, v14);
  aBlock[4] = sub_2225EE1AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EAE54;
  aBlock[3] = &block_descriptor_57;
  v18 = _Block_copy(aBlock);

  [v24 updateWithContext:v25 withCompletionHandler:v18];
  _Block_release(v18);
  return (*(v7 + 8))(v12, v6);
}

void sub_2225EAE54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t ASDPurchaseHistory.update(for:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2225EAEE4, 0, 0);
}

uint64_t sub_2225EAEE4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2225EAFE8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0x6628657461647075, 0xEF293A6E693A726FLL, sub_2225EB430, v4, v7);
}

uint64_t sub_2225EAFE8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2225EA8E0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2225EE2B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EB104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
  v4 = *(v21[0] - 8);
  v21[1] = *(v4 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v6 = v21 - v5;
  v7 = sub_22261AE30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v14 = sub_22261B440();
  sub_22261AE10();

  (*(v8 + 16))(v11, v13, v7);
  v15 = v21[0];
  (*(v4 + 16))(v6, v22, v21[0]);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v7);
  (*(v4 + 32))(v18 + v17, v6, v15);
  aBlock[4] = sub_2225EE048;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EAE54;
  aBlock[3] = &block_descriptor_51;
  v19 = _Block_copy(aBlock);

  [v23 updateForAccountID:v24 withContext:v25 withCompletionHandler:v19];
  _Block_release(v19);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_2225EB43C(void *a1)
{
  sub_22261B3F0();
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  v2 = sub_22261B440();
  sub_22261AE10();

  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
    return sub_22261B2D0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
    return sub_22261B2E0();
  }
}

uint64_t ASDPurchaseHistory.fetchAllApps(of:compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2225EB55C, 0, 0);
}

uint64_t sub_2225EB55C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_2225EE614(v0[3]);
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  *v6 = v0;
  v6[1] = sub_2225EB67C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EDC5C, v4, v7);
}

uint64_t sub_2225EB67C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2225EB800;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2225EB798;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EB798()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2225EB800()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

uint64_t ASDPurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2225EB890, 0, 0);
}

{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_2225EBBC4, 0, 0);
}

uint64_t sub_2225EB890()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_2225EE8B0(v0[4], v0[3]);
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  *v6 = v0;
  v6[1] = sub_2225EB9B0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EE2C8, v4, v7);
}

uint64_t sub_2225EB9B0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2225EBB34;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2225EBACC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EBACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2225EBB34()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_2225EBBC4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_2225D6718(*(v0 + 80), v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  sub_2225D2F1C((v0 + 16), v4 + 24);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = sub_2225EDC64;
  v6[5] = v4;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_2225EBD24;

  return MEMORY[0x282200740](v0 + 56, v5, v5, 0, 0, &unk_22261DC48, v6, v5);
}

uint64_t sub_2225EBD24()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2225EBEA8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_2225EBE40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EBE40()
{
  v1 = v0[12];

  v2 = v0[7];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2225EBEA8()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t ASDPurchaseHistory.fetchAllApps(for:compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2225EBF38, 0, 0);
}

uint64_t sub_2225EBF38()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  sub_2225D6718(*(v0 + 72), v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  sub_2225D2F1C((v0 + 16), v3 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = sub_2225EDD40;
  v5[5] = v3;
  v6 = *(MEMORY[0x277D859B8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_2225EC08C;

  return MEMORY[0x282200740](v0 + 56, v4, v4, 0, 0, &unk_22261DC58, v5, v4);
}

uint64_t sub_2225EC08C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2225EC210;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2225EC1A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EC1A8()
{
  v1 = v0[11];

  v2 = v0[7];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2225EC210()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_2225EC27C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);
  v3 = *(v21 - 8);
  v22 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = sub_22261AE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v13 = sub_22261B440();
  sub_22261AE10();

  (*(v7 + 16))(v10, v12, v6);
  v14 = v21;
  (*(v3 + 16))(v5, v23, v21);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + *(v3 + 80) + v15) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  (*(v3 + 32))(v17 + v16, v5, v14);
  aBlock[4] = sub_2225EDF40;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EC6BC;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  [v24 executeQuery:v25 withResultHandler:v18];
  _Block_release(v18);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_2225EC5A4(uint64_t a1, void *a2)
{
  sub_22261B3F0();
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  v4 = sub_22261B440();
  sub_22261AE10();

  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);
    return sub_22261B2D0();
  }

  else
  {
    if (a1)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);
    return sub_22261B2E0();
  }
}

uint64_t sub_2225EC6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2225D83D0(0, &qword_280D9EBD8, 0x277CEC410);
    v4 = sub_22261B2B0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2225EC760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF8, &qword_22261DCB8);
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0) - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225EC878, 0, 0);
}

uint64_t sub_2225EC878()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = **(v0 + 120);
    v3 = (v1 + 32);
    v4 = sub_22261B310();
    v5 = *(v4 - 8);
    v30 = *(v5 + 56);
    v29 = (v5 + 48);
    v28 = (v5 + 8);
    do
    {
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      v9 = *(v0 + 152);
      v10 = *v3++;
      v32 = *(v0 + 136);
      v30(v7, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v32;
      *(v11 + 48) = v9;
      *(v11 + 56) = v10;
      sub_2225EDE20(v7, v8);
      LODWORD(v8) = (*v29)(v8, 1, v4);
      v13 = v32;

      v14 = *(v0 + 184);
      if (v8 == 1)
      {
        sub_2225EDE90(*(v0 + 184));
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_22261B300();
        (*v28)(v14, v4);
        if (*v12)
        {
LABEL_8:
          v17 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_22261B2C0();
          v16 = v18;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
      v19 = v16 | v15;
      if (v16 | v15)
      {
        v19 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      v6 = *(v0 + 192);
      *(v0 + 80) = 1;
      *(v0 + 88) = v19;
      *(v0 + 96) = v31;
      swift_task_create();

      sub_2225EDE90(v6);
      --v2;
    }

    while (v2);
  }

  v20 = *(v0 + 176);
  v21 = **(v0 + 120);
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C00, &qword_22261DCD8);
  sub_22261B350();
  *(v0 + 208) = MEMORY[0x277D84F90];
  v22 = sub_2225EDEF8(&qword_280D9EBF0, &qword_27D010BF8, &qword_22261DCB8);
  v23 = *(MEMORY[0x277D856D0] + 4);
  v24 = swift_task_alloc();
  *(v0 + 216) = v24;
  *v24 = v0;
  v24[1] = sub_2225ECC08;
  v25 = *(v0 + 176);
  v26 = *(v0 + 160);

  return MEMORY[0x282200308](v0 + 104, v26, v22);
}

uint64_t sub_2225ECC08()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[26];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v5 = sub_2225ED10C;
  }

  else
  {
    v5 = sub_2225ECD40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225ECD40()
{
  v2 = v0 + 104;
  v1 = *(v0 + 104);
  if (!v1)
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v19 = *(v0 + 112);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    *v19 = v16;

    v20 = *(v0 + 8);

    return v20();
  }

  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v38 = *(v0 + 104);
    }

    v4 = sub_22261B5B0();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 208);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v39 = *(v0 + 208);
    }

    v40 = sub_22261B5B0();
    v8 = v40 + v4;
    if (!__OFADD__(v40, v4))
    {
      goto LABEL_6;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v7 + v4;
  if (__OFADD__(v7, v4))
  {
    goto LABEL_42;
  }

LABEL_6:
  v9 = *(v0 + 208);
  LODWORD(v10) = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

  if (v10 != 1 || (v13 = v5 & 0xFFFFFFFFFFFFFF8, v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v14 < v8))
  {
    if (v6)
    {
      goto LABEL_44;
    }

    v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

  v15 = *(v0 + 208);
  while (1)
  {
    v24 = *(v13 + 16);
    if (v3)
    {
      break;
    }

    v25 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v14 - v24 >= v4)
    {
      v42 = v15;
      v43 = v4;
      v14 = v13 + 8 * v24 + 32;
      v44 = v0 + 104;
      if (v3)
      {
        goto LABEL_26;
      }

      sub_2225D83D0(0, &qword_280D9EBD8, 0x277CEC410);
      swift_arrayInitWithCopy();
LABEL_29:

      v2 = v44;
      v15 = v42;
      if (v43 > 0)
      {
        v31 = *(v13 + 16);
        v32 = __OFADD__(v31, v43);
        v33 = v31 + v43;
        if (v32)
        {
          __break(1u);
          goto LABEL_46;
        }

        *(v13 + 16) = v33;
      }

      goto LABEL_32;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v41 = *(v0 + 208);
    sub_22261B5B0();
LABEL_17:
    v23 = *(v0 + 208);
    v10 = sub_22261B520();
    v15 = v10;
    v13 = v10 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v10 = sub_22261B5B0();
  v25 = v10;
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_24:

  if (v4 > 0)
  {
    __break(1u);
LABEL_26:
    if (v25 >= 1)
    {
      sub_2225EDEF8(&qword_280D9EBF8, &qword_27D010BF0, &qword_22261DC28);
      for (i = 0; i != v25; ++i)
      {
        v27 = *(v0 + 200);
        v28 = sub_222606430((v0 + 48), i, v1);
        v30 = *v29;
        (v28)(v0 + 48, 0);
        *(v14 + 8 * i) = v30;
      }

      goto LABEL_29;
    }

LABEL_46:
    __break(1u);
    return MEMORY[0x282200308](v10, v11, v12);
  }

LABEL_32:
  *(v0 + 208) = v15;
  v34 = sub_2225EDEF8(&qword_280D9EBF0, &qword_27D010BF8, &qword_22261DCB8);
  v35 = *(MEMORY[0x277D856D0] + 4);
  v36 = swift_task_alloc();
  *(v0 + 216) = v36;
  *v36 = v0;
  v36[1] = sub_2225ECC08;
  v37 = *(v0 + 176);
  v11 = *(v0 + 160);
  v10 = v2;
  v12 = v34;

  return MEMORY[0x282200308](v10, v11, v12);
}

uint64_t sub_2225ED10C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v4 = v0[1];
  v5 = v0[28];

  return v4();
}

uint64_t sub_2225ED184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_2225ED1AC, 0, 0);
}

uint64_t sub_2225ED1AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = (*(v0 + 40))(*(v0 + 56));
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  *v6 = v0;
  v6[1] = sub_2225ED2D0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EE2C8, v4, v7);
}

uint64_t sub_2225ED2D0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2225ED45C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2225ED3EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225ED3EC()
{
  v1 = *(v0 + 24);

  *v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2225ED45C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_2225ED4C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2225ED4EC, 0, 0);
}

uint64_t sub_2225ED4EC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2225ED5E4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x6928657461647075, 0xEB00000000293A6ELL, sub_2225EE2CC, v3, v6);
}

uint64_t sub_2225ED5E4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2225ED700;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2225DD7E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225ED700()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2225ED764(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2225ED78C, 0, 0);
}

uint64_t sub_2225ED78C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2225ED890;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0x6628657461647075, 0xEF293A6E693A726FLL, sub_2225EE2B0, v4, v7);
}

uint64_t sub_2225ED890()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2225E9A68;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2225EE2B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225ED9AC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225D767C;

  return ASDPurchaseHistory.fetchAllApps(of:compatibleWith:)(a1, a2);
}

uint64_t sub_2225EDA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225EE2C4;

  return ASDPurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(a1, a2, a3);
}

uint64_t sub_2225EDB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2225EE2C4;

  return ASDPurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(a1, a2, a3);
}

uint64_t sub_2225EDBB4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225EE2C4;

  return ASDPurchaseHistory.fetchAllApps(for:compatibleWith:)(a1, a2);
}

uint64_t sub_2225EDC78(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2225E2E18;

  return sub_2225EC760(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_2225EDD4C(uint64_t a1)
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
  v10[1] = sub_2225E2AA0;

  return sub_2225ED184(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2225EDE20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225EDE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2225EDEF8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2225EDF40(uint64_t a1, void *a2)
{
  v4 = *(sub_22261AE30() - 8);
  v5 = ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0) - 8) + 80);

  return sub_2225EC5A4(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_44Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_22261AE30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x2821FE8E8](v2, v13 + v14, v15 | 7);
}

uint64_t sub_2225EE1BC(void *a1)
{
  v2 = *(sub_22261AE30() - 8);
  v3 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v2 + 64);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8) - 8) + 80);
  return sub_2225EB43C(a1);
}

id sub_2225EE2D0(void *a1)
{
  v1 = a1;
  v2 = [v1 redownloadParams];
  sub_22261B1E0();

  sub_2225EE3F8();
  sub_22261B470();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C18, &unk_22261DCF0);
  sub_2225EE44C();
  sub_22261B1C0();

  v3 = sub_22261B1D0();

  return v3;
}

unint64_t sub_2225EE3F8()
{
  result = qword_280D9EC08;
  if (!qword_280D9EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EC08);
  }

  return result;
}

unint64_t sub_2225EE44C()
{
  result = qword_280D9EBB0;
  if (!qword_280D9EBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010C18, &unk_22261DCF0);
    sub_2225DC9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EBB0);
  }

  return result;
}

void *sub_2225EE4D0(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
  v5 = v4;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  [v4 setAccountID_];
  [v5 setIsHidden_];
  [v5 setIsFirstParty_];
  [v5 setIsPreorder_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C20, qword_22261DD10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22261DD00;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277CEC420]) initWithName:*MEMORY[0x277CEC4E0] ascending:0];
  sub_2225D83D0(0, &qword_280D9EBB8, 0x277CEC420);
  v8 = sub_22261B2A0();

  [v5 setSortOptions_];

  return v5;
}

void *sub_2225EE614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  sub_2225EEA28(a1, v13 - v4);
  v6 = sub_22261B0B0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2225D8124(v5);
LABEL_5:
    v10 = 0;
    v11 = 1;
    return sub_2225EE4D0(v10, v11);
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v8 = v13[1];
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [v8 longLongValue];

  v10 = v9;
  v11 = 0;
  return sub_2225EE4D0(v10, v11);
}

void *sub_2225EE784(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2225EE4D0(a2, a3 & 1);
  v5 = *(a1 + 16);
  if (v5)
  {
    v11 = MEMORY[0x277D84F90];
    sub_22261B570();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
      sub_22261B550();
      v8 = *(v11 + 16);
      sub_22261B580();
      sub_22261B590();
      sub_22261B560();
      --v5;
    }

    while (v5);
  }

  sub_2225D83D0(0, &qword_280D9F270, 0x277CCABB0);
  v9 = sub_22261B2A0();

  [v4 setStoreIDs_];

  return v4;
}

void *sub_2225EE8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  sub_2225EEA28(a2, v15 - v6);
  v8 = sub_22261B0B0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2225D8124(v7);
LABEL_5:
    v12 = 0;
    v13 = 1;
    return sub_2225EE784(a1, v12, v13);
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v10 = v15[1];
  (*(v9 + 8))(v7, v8);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v10 longLongValue];

  v12 = v11;
  v13 = 0;
  return sub_2225EE784(a1, v12, v13);
}

uint64_t sub_2225EEA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225EEA98(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
    return sub_22261B2D0();
  }

  if (!a1)
  {
    type metadata accessor for ASDError(0);
    sub_2225F016C(MEMORY[0x277D84F90]);
    sub_2225F029C();
    sub_22261AD70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
    return sub_22261B2D0();
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
  return sub_22261B2E0();
}

uint64_t sub_2225EEB94(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C38, &qword_22261DDA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_22261AE00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  if (a2)
  {
    v19 = a2;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
  }

  else
  {
    sub_2225DE5AC(a1, v7, &qword_27D010C38, &qword_22261DDA0);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      (*(v9 + 16))(v13, v15, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
      sub_22261B2E0();
      return (*(v9 + 8))(v15, v8);
    }

    sub_2225EFFD4(v7);
    type metadata accessor for ASDError(0);
    v18 = 901;
    sub_2225F016C(MEMORY[0x277D84F90]);
    sub_2225F029C();
    sub_22261AD70();
    v18 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
  }

  return sub_22261B2D0();
}

Swift::Bool __swiftcall ASDPurchaseManager.isDeletableSystemApp(_:)(Swift::String a1)
{
  v1 = MEMORY[0x223DBBBF0]();
  v2 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v3 = sub_2225EFE00();
  v4 = v3 != 0;

  objc_autoreleasePoolPop(v1);
  return v4;
}

uint64_t ASDPurchaseManager.start(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2225EEF28, 0, 0);
}

uint64_t sub_2225EEF28()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_2225EFED8();
  *v4 = v0;
  v4[1] = sub_2225EF028;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x3A5F287472617473, 0xE900000000000029, sub_2225EFECC, v2, v5);
}

uint64_t sub_2225EF028()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2225EF208;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2225EF144;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225EF144()
{
  v1 = *(v0 + 16);
  if ([v1 error])
  {
    swift_willThrow();

    v2 = *(v0 + 8);
    v3 = 0;
  }

  else
  {
    v4 = [v1 success];

    v2 = *(v0 + 8);
    v3 = v4;
  }

  return v2(v3);
}

uint64_t sub_2225EF208()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3(0);
}

void sub_2225EF270(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2225F0388;
  *(v13 + 24) = v12;
  aBlock[4] = sub_2225F0414;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EF450;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  [a2 startPurchase:a3 withResultHandler:v14];
  _Block_release(v14);
}

void sub_2225EF450(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t ASDPurchaseManager.install(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2225EF550, 0, 0);
}

uint64_t sub_2225EF550()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_22261AE00();
  *v4 = v0;
  v4[1] = sub_2225EF654;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x286C6C6174736E69, 0xEB00000000293A5FLL, sub_2225EFF24, v2, v5);
}

uint64_t sub_2225EF654()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225EF790, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2225EF790()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_2225EF7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = sub_22261B1D0();
  NSClassFromString(v10);

  v11 = objc_opt_self();
  (*(v6 + 16))(v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  aBlock[4] = sub_2225EFF30;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EF9E0;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  [v11 installApp:a3 withCompletionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_2225EF9E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C38, &qword_22261DDA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_22261ADF0();
    v12 = sub_22261AE00();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_22261AE00();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_2225EFFD4(v9);
}

BOOL sub_2225EFB24()
{
  v0 = MEMORY[0x223DBBBF0]();
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v2 = sub_2225EFE00();
  v3 = v2 != 0;

  objc_autoreleasePoolPop(v0);
  return v3;
}

uint64_t sub_2225EFBB4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225EFC4C;

  return ASDPurchaseManager.start(_:)(a1);
}

uint64_t sub_2225EFC4C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2225EFD54(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225E2AA0;

  return ASDPurchaseManager.install(_:)(a1, a2);
}

id sub_2225EFE00()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22261B1D0();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22261AD80();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_2225EFED8()
{
  result = qword_27D010C28;
  if (!qword_27D010C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D010C28);
  }

  return result;
}

uint64_t sub_2225EFF30(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98) - 8) + 80);

  return sub_2225EEB94(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2225EFFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C38, &qword_22261DDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2225F003C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22261B700();
  sub_22261B210();
  v6 = sub_22261B740();

  return sub_2225F00B4(a1, a2, v6);
}

unint64_t sub_2225F00B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22261B620())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2225F016C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C40, &qword_22261DDA8);
    v3 = sub_22261B5E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2225DE5AC(v4, &v13, &qword_27D010C48, &qword_22261DDB0);
      v5 = v13;
      v6 = v14;
      result = sub_2225F003C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2225F02F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2225F029C()
{
  result = qword_27D0108B0;
  if (!qword_27D0108B0)
  {
    type metadata accessor for ASDError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0108B0);
  }

  return result;
}

_OWORD *sub_2225F02F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2225F0388(void **a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8) - 8) + 80);
  v5 = *a1;

  return sub_2225EEA98(v5, a2);
}

uint64_t sub_2225F0414(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2225F0454(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  if (a4)
  {
    v12 = sub_22261B1D0();
  }

  else
  {
    v12 = 0;
  }

  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2225F0550;
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);

  [v11 getSubscriptionEntitlementsForSegment:a1 ignoreCaches:a2 & 1 requestingBundleId:v12 withCacheInfoResultHandler:v13];
  _Block_release(v13);
}

uint64_t sub_2225F0550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_2225D83D0(0, &qword_280D9EBC8, 0x277CEC4A0);
    v8 = sub_22261B2B0();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

uint64_t sub_2225F0610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2225F06CC;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);

  [v5 getCachedSubscriptionEntitlementsForSegment:a1 withResultHandler:v6];
  _Block_release(v6);
}

uint64_t sub_2225F06E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2225F0794;
  v6[3] = &block_descriptor_2;
  v4 = _Block_copy(v6);

  [v3 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler_];
  _Block_release(v4);
}

uint64_t sub_2225F07A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_2225D83D0(0, a5, a6);
    v8 = sub_22261B2B0();
  }

  v11 = a4;
  v10(v8, a3, a4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2225F0888(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22261B450();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_2225F092C()
{
  v1 = *v0;

  v2 = *(*v0 + 12);
  v3 = v1[10];
  v4 = sub_22261B450();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_2225F09C0()
{
  sub_2225F092C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static AvailableUpdate.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_22261B620();
  }
}

uint64_t AvailableUpdate.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x223DBBB60](*v0);

  return sub_22261B210();
}

uint64_t AvailableUpdate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  sub_22261B210();
  return sub_22261B740();
}

uint64_t sub_2225F0B60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  sub_22261B210();
  return sub_22261B740();
}

uint64_t sub_2225F0BC4()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x223DBBB60](*v0);

  return sub_22261B210();
}

uint64_t sub_2225F0C18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  sub_22261B210();
  return sub_22261B740();
}

unint64_t sub_2225F0C7C()
{
  result = qword_27D010C58;
  if (!qword_27D010C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010C58);
  }

  return result;
}

uint64_t sub_2225F0CD0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_22261B620();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2225F0D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225F0D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2225F0DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_2225D8D00(a2, &v17 - v12);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225DB76C(v13);
  if (a2 != 6)
  {
    return 0;
  }

  sub_2225D8D00(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = 1;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload || (sub_2225D8D00(v11, v8), *v8 >= 2u))
    {
      v15 = 0;
    }
  }

  sub_2225DB76C(v11);
  return v15;
}

uint64_t DefaultAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22261B190();
  return v0;
}

uint64_t DefaultAppStateDataSource.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22261B190();
  return v0;
}

uint64_t DefaultAppStateDataSource.state(forAppWith:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for State();
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t DefaultAppStateDataSource.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DefaultAppStateDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225F1108@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for State();
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

double sub_2225F11D8@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_280D9F4B8 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v4 = qword_280DA0AC0;
  if (*(qword_280DA0AC0 + 16) && (v5 = sub_2225F17A8(v3), (v6 & 1) != 0))
  {
    sub_2225D6718(*(v4 + 56) + 40 * v5, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2225F1290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C60, &unk_22261E048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22261D5B0;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for StoreAppRuleset;
  *(inited + 72) = &off_2835C22E8;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for BetaAppRuleset;
  *(inited + 120) = &off_2835C22D8;
  v1 = sub_2225DDF60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A20, &qword_22261D370);
  result = swift_arrayDestroy();
  qword_280DA0AC8 = v1;
  return result;
}

double sub_2225F135C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2225F173C(*a1), (v6 & 1) != 0))
  {
    sub_2225D6718(*(v4 + 56) + 40 * v5, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    State.key.getter(&v10);
    (*(v8 + 8))(&v10, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2225F1424()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225F14A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C68, &qword_22261E098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22261DFF0;
  *(inited + 32) = 0;
  *(inited + 64) = &_s7BuyableVN;
  *(inited + 72) = &off_2835C2218;
  *(inited + 80) = 1;
  *(inited + 112) = &_s7WaitingVN;
  *(inited + 120) = &off_2835C2DD8;
  *(inited + 128) = 5;
  *(inited + 160) = &_s10InstallingVN;
  *(inited + 168) = &off_2835C26D8;
  *(inited + 176) = 6;
  *(inited + 208) = &_s9InstalledVN;
  *(inited + 216) = &off_2835C26A8;
  *(inited + 224) = 7;
  *(inited + 256) = &_s15RemoteInstalledVN;
  *(inited + 264) = &off_2835C1488;
  *(inited + 272) = 2;
  *(inited + 304) = &_s9PurchasedVN;
  *(inited + 312) = &off_2835C2778;
  *(inited + 320) = 3;
  *(inited + 352) = &_s9UpdatableVN;
  *(inited + 360) = &off_2835C2DA8;
  *(inited + 368) = 4;
  *(inited + 400) = &_s12DownloadableVN;
  *(inited + 408) = &off_2835C2490;
  *(inited + 416) = 8;
  *(inited + 448) = &_s8OpenableVN;
  *(inited + 456) = &off_2835C2748;
  *(inited + 464) = 9;
  *(inited + 496) = &_s7UnknownVN;
  *(inited + 504) = &off_2835C2D78;
  v1 = sub_2225DDE34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A58, qword_22261E0A0);
  result = swift_arrayDestroy();
  qword_280DA0AC0 = v1;
  return result;
}

unint64_t sub_2225F1650(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](a1);
  v4 = sub_22261B740();

  return sub_2225F1814(a1, v4);
}

unint64_t sub_2225F16BC(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB60](a1);
  MEMORY[0x223DBBB40](a2 & 1);
  v6 = sub_22261B740();

  return sub_2225F1880(a1, a2 & 1, v6);
}

unint64_t sub_2225F173C(char a1)
{
  v3 = *(v1 + 40);
  sub_22261B700();
  MEMORY[0x223DBBB40](a1 & 1);
  v4 = sub_22261B740();

  return sub_2225F1904(a1 & 1, v4);
}

unint64_t sub_2225F17A8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22261B700();
  sub_2225DFBC8();
  v4 = sub_22261B740();

  return sub_2225F1974(a1, v4);
}

unint64_t sub_2225F1814(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2225F1880(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (!((*(*(v3 + 48) + 16 * result) != a1) | (*(*(v3 + 48) + 16 * result + 8) ^ a2) & 1))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2225F1904(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2225F1974(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      v26 = v4;
      if (v6 > 4)
      {
        if (*(*(v25 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v10 = 0x696C6C6174736E69;
            v11 = 0xEA0000000000676ELL;
          }

          else
          {
            v10 = 0x656C6C6174736E69;
            v11 = 0xE900000000000064;
          }
        }

        else if (v6 == 7)
        {
          v10 = 0x6E4965746F6D6572;
          v11 = 0xEF64656C6C617473;
        }

        else if (v6 == 8)
        {
          v11 = 0xE800000000000000;
          v10 = 0x656C62616E65706FLL;
        }

        else
        {
          v11 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x6C62617461647075;
        }

        else
        {
          v7 = 0x64616F6C6E776F64;
        }

        if (v6 == 3)
        {
          v8 = 0xE900000000000065;
        }

        else
        {
          v8 = 0xEC000000656C6261;
        }

        if (v6 == 2)
        {
          v7 = 0x6573616863727570;
          v8 = 0xE900000000000064;
        }

        v9 = *(*(v25 + 48) + v4) ? 0x676E6974696177 : 0x656C6261797562;
        v10 = v6 <= 1 ? v9 : v7;
        v11 = v6 <= 1 ? 0xE700000000000000 : v8;
      }

      v12 = 0x656C62616E65706FLL;
      if (v5 != 8)
      {
        v12 = 0x6E776F6E6B6E75;
      }

      v13 = 0xE800000000000000;
      if (v5 != 8)
      {
        v13 = 0xE700000000000000;
      }

      if (v5 == 7)
      {
        v12 = 0x6E4965746F6D6572;
        v13 = 0xEF64656C6C617473;
      }

      v14 = 0x696C6C6174736E69;
      if (v5 != 5)
      {
        v14 = 0x656C6C6174736E69;
      }

      v15 = 0xEA0000000000676ELL;
      if (v5 != 5)
      {
        v15 = 0xE900000000000064;
      }

      if (v5 <= 6)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 3)
      {
        v16 = 0x6C62617461647075;
      }

      else
      {
        v16 = 0x64616F6C6E776F64;
      }

      if (v5 == 3)
      {
        v17 = 0xE900000000000065;
      }

      else
      {
        v17 = 0xEC000000656C6261;
      }

      if (v5 == 2)
      {
        v16 = 0x6573616863727570;
        v17 = 0xE900000000000064;
      }

      if (v5)
      {
        v18 = 0x676E6974696177;
      }

      else
      {
        v18 = 0x656C6261797562;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = 0xE700000000000000;
      }

      v19 = v5 <= 4 ? v16 : v12;
      v20 = v5 <= 4 ? v17 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_22261B620();

      if (v21)
      {
        return v26;
      }

      v4 = (v26 + 1) & v23;
      if (((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v26;
  }

  return v4;
}

uint64_t dispatch thunk of DeviceAppFetcher.fetchQuery(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225D3D18;

  return v11(a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_8AppState06DeviceA5QueryO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_2225F1E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2225F1E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2225F1EBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t *sub_2225F1EE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v46 = *v0;
  if (v2 <= 1)
  {
    if (!*(v0 + 8))
    {
      v4 = v1[2];
      if (v4)
      {
        v47 = MEMORY[0x277D84F90];
        sub_22261B570();
        v5 = v46 + 56;
        v6 = -1 << *(v46 + 32);
        v7 = sub_22261B4B0();
        result = v46;
        v8 = 0;
        while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(result + 32))
        {
          v10 = v7 >> 6;
          if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
          {
            goto LABEL_56;
          }

          v11 = *(result + 9);
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          sub_22261B550();
          v12 = *(v47 + 16);
          sub_22261B580();
          sub_22261B590();
          sub_22261B560();
          result = v46;
          v9 = 1 << *(v46 + 32);
          if (v7 >= v9)
          {
            goto LABEL_58;
          }

          v13 = *(v5 + 8 * v10);
          if ((v13 & (1 << v7)) == 0)
          {
            goto LABEL_60;
          }

          if (v11 != *(v46 + 36))
          {
            goto LABEL_62;
          }

          v14 = v13 & (-2 << (v7 & 0x3F));
          if (v14)
          {
            v9 = __clz(__rbit64(v14)) | v7 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = v10 << 6;
            v16 = v10 + 1;
            v17 = (v46 + 64 + 8 * v10);
            while (v16 < (v9 + 63) >> 6)
            {
              v19 = *v17++;
              v18 = v19;
              v15 += 64;
              ++v16;
              if (v19)
              {
                sub_2225F24E0(v7, v11, 0);
                result = v46;
                v9 = __clz(__rbit64(v18)) + v15;
                goto LABEL_11;
              }
            }

            sub_2225F24E0(v7, v11, 0);
            result = v46;
          }

LABEL_11:
          ++v8;
          v7 = v9;
          if (v8 == v4)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_54;
      }

LABEL_46:
      sub_2225E53D4();
      v41 = sub_22261B2A0();

      v42 = [objc_opt_self() queryForStoreItemIDs_];
LABEL_47:
      v43 = v42;

      return v43;
    }

    v38 = v1[2];
    if (!v38 || (v39 = sub_2225D7D54(v1[2], 0), v40 = sub_2226064B8(&v47, v39 + 4, v38, v46), sub_2225EA89C(v46, 1u), sub_2225F24EC(), v40 == v38))
    {
      v44 = sub_22261B2A0();

      v45 = [objc_opt_self() queryForBundleIDs_];

      return v45;
    }

    __break(1u);
LABEL_45:
    sub_2225E53D4();
    v41 = sub_22261B2A0();

    v42 = [objc_opt_self() queryForBetaAppsWithStoreItemIDs_];
    goto LABEL_47;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {

      return v1;
    }

    else
    {
      v36 = objc_opt_self();
      if (v46)
      {
        v37 = [v36 queryForBetaApps];
      }

      else
      {
        v37 = [v36 queryForStoreApps];
      }

      return v37;
    }
  }

  v20 = v1[2];
  if (!v20)
  {
    goto LABEL_45;
  }

  v47 = MEMORY[0x277D84F90];
  sub_22261B570();
  v21 = v46 + 56;
  v22 = -1 << *(v46 + 32);
  v23 = sub_22261B4B0();
  result = v46;
  v24 = 0;
  while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(result + 32))
  {
    v26 = v23 >> 6;
    if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
    {
      goto LABEL_55;
    }

    v27 = *(result + 9);
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    sub_22261B550();
    v28 = *(v47 + 16);
    sub_22261B580();
    sub_22261B590();
    sub_22261B560();
    result = v46;
    v25 = 1 << *(v46 + 32);
    if (v23 >= v25)
    {
      goto LABEL_57;
    }

    v29 = *(v21 + 8 * v26);
    if ((v29 & (1 << v23)) == 0)
    {
      goto LABEL_59;
    }

    if (v27 != *(v46 + 36))
    {
      goto LABEL_61;
    }

    v30 = v29 & (-2 << (v23 & 0x3F));
    if (v30)
    {
      v25 = __clz(__rbit64(v30)) | v23 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v26 << 6;
      v32 = v26 + 1;
      v33 = (v46 + 64 + 8 * v26);
      while (v32 < (v25 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_2225F24E0(v23, v27, 0);
          result = v46;
          v25 = __clz(__rbit64(v34)) + v31;
          goto LABEL_27;
        }
      }

      sub_2225F24E0(v23, v27, 0);
      result = v46;
    }

LABEL_27:
    ++v24;
    v23 = v25;
    if (v24 == v20)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
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
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_2225F24E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a4;
  sub_2225D6718(a2, v32);
  sub_2225DE5AC(a3, v31, &qword_27D010C70, &unk_22261E1F0);
  if (qword_280D9F2C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22261B150();
  v9 = __swift_project_value_buffer(v8, qword_280DA0A90);
  v30[3] = v8;
  v30[4] = MEMORY[0x277D22508];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  v11 = swift_allocObject();
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  sub_2225D6718(v32, v11 + 72);
  sub_2225DE5AC(v31, v11 + 112, &qword_27D010C70, &unk_22261E1F0);
  *(v11 + 152) = v7;
  v12 = MEMORY[0x277D84F90];
  *(v11 + 160) = sub_2225DD970(MEMORY[0x277D84F90]);
  sub_2225EA89C(v5, v6);
  *(v11 + 168) = sub_2225DE080(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v11 + 200) = sub_22261B190();
  sub_2225D6718(v30, v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v11 + 192) = v16;
  v18 = v33;
  v17 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v28 = v5;
  v29 = v6;
  v27[3] = sub_22261AFD0();
  v27[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v27);
  sub_22261AFC0();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = *(v17 + 8);

  v21 = v20(&v28, v27, sub_2225F766C, v19, v18, v17);
  v23 = v22;

  sub_2225E22D4(v31, &qword_27D010C70, &unk_22261E1F0);
  __swift_destroy_boxed_opaque_existential_1(v30);

  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_2225EA754(v5, v6);
  v24 = *(v11 + 176);
  *(v11 + 176) = v21;
  *(v11 + 184) = v23;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_2225E22D4(a3, &qword_27D010C70, &unk_22261E1F0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_2225F280C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2225F286C(a1);
  }

  return result;
}

uint64_t sub_2225F286C(void *a1)
{
  v3 = *v1;
  v4 = sub_22261AF10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = a1;
  v33 = sub_2225F481C;
  v34 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C88, &unk_22261E330);
  sub_2225F776C();
  v16 = sub_22261B1C0();
  v15 = v6;

  v7 = v1[5];
  v18 = v1[6];
  v17 = __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v8 = *(sub_22261AF30() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v35 = v3;
  v32 = v1;

  sub_22261AEC0();
  sub_2225E22D4(&v32, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v35 = MEMORY[0x277D837D0];
  v32 = v16;
  v33 = v15;
  sub_22261AEC0();
  sub_2225E22D4(&v32, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v11 = v1[24];
  v29 = a1;
  v30 = v1;
  v31 = v3;
  v26 = sub_2225F7854;
  v27 = &v28;
  os_unfair_lock_lock(v11 + 4);
  sub_2225F793C(&v32);
  os_unfair_lock_unlock(v11 + 4);
  v22 = a1;
  v23 = v1;
  v24 = v32;
  v25 = v3;
  v19 = sub_2225F790C;
  v20 = &v21;
  os_unfair_lock_lock(v11 + 4);
  sub_2225F793C(&v32);
  os_unfair_lock_unlock(v11 + 4);
  v12 = v32;

  v13 = v1[25];
  v32 = v12;
  sub_22261B180();
}

uint64_t DeviceAppStateDataSource.deinit()
{
  v1 = *(v0 + 176);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2225EA754(*(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  sub_2225E22D4(v0 + 112, &qword_27D010C70, &unk_22261E1F0);
  v2 = *(v0 + 160);

  v3 = *(v0 + 168);

  v4 = *(v0 + 176);
  swift_unknownObjectRelease();
  v5 = *(v0 + 192);

  v6 = *(v0 + 200);

  return v0;
}

uint64_t DeviceAppStateDataSource.__deallocating_deinit()
{
  DeviceAppStateDataSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

uint64_t DeviceAppStateDataSource.description.getter()
{
  v1 = *v0;
  v2 = sub_22261B750();
  MEMORY[0x223DBB650](v2);

  MEMORY[0x223DBB650](0x203A797265757128, 0xE800000000000000);
  v4 = v0[7];
  v5 = *(v0 + 64);
  sub_22261B5A0();
  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return 0;
}

uint64_t DeviceAppStateDataSource.load()()
{
  v1[21] = v0;
  v1[22] = *v0;
  v2 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_22261AF30();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225F2E90, 0, 0);
}

uint64_t sub_2225F2E90()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  sub_22261AEB0();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v5);
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  v7 = *(v6 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_2225F3008;

  return v11(v0 + 136, v5, v6);
}

uint64_t sub_2225F3008(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_2225F311C;
  }

  else
  {
    v5 = sub_2225F33BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225F311C()
{
  v1 = v0;
  v2 = v0[29];
  v3 = v0[25];
  v16 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v1[21];
  v18 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v8 = *(v3 + 72);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v1[5] = v6;
  v1[2] = v7;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v1[9] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(v3 + 16))(boxed_opaque_existential_0, v16, v5);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v10 = v1[14];
  v11 = v1[15];
  v1[13] = v11;
  v12 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 10), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();
  (*(v3 + 8))(v16, v5);

  v13 = v1[1];
  v14 = v1[29];

  return v13();
}

uint64_t sub_2225F33BC()
{
  v19 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[21];
  v3 = v0[22];
  v5 = *(v4 + 192);
  v6 = swift_task_alloc();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = 0;
  v6[5] = v3;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_2225F7674;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_2225F7694(&v18);
  if (v2)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
    v9 = v0[28];
    v11 = v0[25];
    v10 = v0[26];
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[21];
    os_unfair_lock_unlock(v5 + 4);
    v15 = v18;

    v16 = *(v14 + 200);
    v0[20] = v15;
    sub_22261B180();
    (*(v11 + 8))(v10, v12);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2225F353C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  *(v5 + 176) = a3;
  *(v5 + 184) = v6;
  *(v5 + 145) = a4;
  *(v5 + 168) = a2;
  *(v5 + 192) = *v6;
  v8 = *(*(sub_22261AF10() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v5 + 200) = v9;
  *(v5 + 208) = v10;
  *(v5 + 146) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_2225F360C, 0, 0);
}

uint64_t sub_2225F360C()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = v3[12];
  v5 = v3[13];
  __swift_project_boxed_opaque_existential_1(v3 + 9, v4);
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  v6 = *(v5 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = sub_2225F375C;

  return v10(v0 + 136, v4, v5);
}

uint64_t sub_2225F375C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_2225F39BC;
  }

  else
  {
    v5 = sub_2225F3870;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225F3870()
{
  v17 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v4 + 192);
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v3;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_2225F790C;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v6 + 4);
  sub_2225F793C(&v16);
  os_unfair_lock_unlock(v6 + 4);
  if (v2)
  {
  }

  else
  {
    v10 = *(v0 + 224);
    v11 = *(v0 + 145);
    v12 = v16;

    if (v11)
    {
      v13 = *(*(v0 + 184) + 200);
      *(v0 + 160) = v12;
      sub_22261B180();
    }

    v14 = *(v0 + 200);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2225F39BC()
{
  v1 = v0;
  v2 = v0[29];
  v5 = v0 + 24;
  v4 = v0[24];
  v3 = v5[1];
  v6 = v1[23];
  v18 = v1[21];
  v19 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v7 = sub_22261AF30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v1[5] = v4;
  v1[2] = v6;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v1[9] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(v8 + 16))(boxed_opaque_existential_0, v18, v7);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v12 = v1[14];
  v13 = v1[15];
  v1[13] = v13;
  v14 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 10), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();

  v15 = v1[1];
  v16 = v1[29];

  return v15();
}

uint64_t DeviceAppStateDataSource.reloadState(forAppsWith:synchronizing:)(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_22261AF30();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_22261AF10();
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225F3DAC, 0, 0);
}

uint64_t sub_2225F3DAC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  *(v0 + 48) = v6;
  *(v0 + 56) = 0;

  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C78, &unk_22261E800);
  *(v0 + 16) = v6;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 16, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  (*(v4 + 32))(v2, v1, v3);
  sub_22261AF20();
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_2225F3F30;
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 57);

  return sub_2225F353C((v0 + 48), v8, v6, v10);
}

uint64_t sub_2225F3F30()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(v2 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  sub_2225EA754(*(v2 + 48), *(v2 + 56));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225F4108, 0, 0);
  }

  else
  {
    v9 = *(v2 + 120);
    v8 = *(v2 + 128);
    v10 = *(v2 + 96);

    v11 = *(v7 + 8);

    return v11();
  }
}

uint64_t sub_2225F4108()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t DeviceAppStateDataSource.reloadAllStates(synchronizing:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 25) = a1;
  v3 = sub_22261AF30();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225F4244, 0, 0);
}

uint64_t sub_2225F4244()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_2225EA89C(v3, v4);
  sub_22261AEB0();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_2225F432C;
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 25);

  return sub_2225F353C((v0 + 16), v6, 0, v8);
}

uint64_t sub_2225F432C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(v2 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  sub_2225EA754(*(v2 + 16), *(v2 + 24));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225F44EC, 0, 0);
  }

  else
  {
    v8 = *(v2 + 56);

    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_2225F44EC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void DeviceAppStateDataSource.state(forAppWith:)(uint64_t *a1)
{
  v2 = *(v1 + 192);
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225F76C8(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_2225F45C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 160);
  if (*(v6 + 16) && (v7 = sub_2225F1650(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for State();
    v12 = *(v11 - 8);
    sub_2225D8D00(v10 + *(v12 + 72) * v9, a3);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for State();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

BOOL DeviceAppStateDataSource.providesState(forApp:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 64);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 56);
  if (v3 == 3)
  {
    v6 = [v4 predicate];
    v7 = [v6 description];

    sub_22261B1E0();
    sub_2225EE3F8();
    v5 = sub_22261B480();

    return ((v2 ^ v5) & 1) == 0;
  }

  if (v3 == 4 && v4 == 1)
  {
LABEL_5:
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return ((v2 ^ v5) & 1) == 0;
}

uint64_t sub_2225F481C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v27 = [*a1 storeItemID];
  v4 = sub_22261B610();
  v6 = v5;
  v7 = [v3 progress];
  if (v7)
  {
    v8 = v7;
    v28 = v4;
    v29 = v6;
    MEMORY[0x223DBB650](8250, 0xE200000000000000);
    v9 = v8;
    v10 = [v9 description];
    v11 = sub_22261B1E0();
    v13 = v12;

    MEMORY[0x223DBB650](v11, v13);
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22261B500();
    MEMORY[0x223DBB650](v4, v6);

    MEMORY[0x223DBB650](0x6C646E75423C203ALL, 0xEC0000003D444965);
    v15 = [v3 bundleID];
    v16 = sub_22261B1E0();
    v18 = v17;

    MEMORY[0x223DBB650](v16, v18);

    MEMORY[0x223DBB650](0x6C6174736E49202CLL, 0xEC0000003D64656CLL);
    v19 = [v3 isInstalled];
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    MEMORY[0x223DBB650](v21, v22);

    MEMORY[0x223DBB650](0xD000000000000013, 0x800000022261FC00);
    v23 = [v3 isLaunchProhibited];
    v24 = v23 == 0;
    if (v23)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    MEMORY[0x223DBB650](v25, v26);

    result = MEMORY[0x223DBB650](62, 0xE100000000000000);
  }

  *a2 = v28;
  a2[1] = v29;
  return result;
}

uint64_t sub_2225F4A90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22261AF10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a2 + 168);
  sub_2225D6718(a2 + 16, v60);
  v10 = sub_2225F78B8();

  v11 = MEMORY[0x223DBB7B0](0, &type metadata for AdamID, v10);
  v61 = v11;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22261B5B0())
  {
    v38 = a3;
    v13 = 0;
    v50 = a1 & 0xC000000000000001;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = 0x800000022261EEF0;
    v40 = "s not a number: ";
    v11 = &off_2784B0000;
    v39 = xmmword_22261C770;
    v43 = a1;
    v42 = v9;
    v48 = i;
    while (1)
    {
      if (v50)
      {
        v25 = MEMORY[0x223DBB940](v13, a1);
      }

      else
      {
        if (v13 >= *(v49 + 16))
        {
          goto LABEL_22;
        }

        v25 = *(a1 + 8 * v13 + 32);
      }

      v26 = v25;
      v27 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (![v25 v11[89]])
      {
        v29 = [v26 bundleID];
        v30 = sub_22261B1E0();
        v32 = v31;

        if (*(v9 + 16))
        {
          v33 = sub_2225F003C(v30, v32);
          v35 = v34;

          v11 = &off_2784B0000;
          if (v35)
          {
            v28 = *(*(v9 + 56) + 8 * v33);
            goto LABEL_13;
          }
        }

        else
        {

          v11 = &off_2784B0000;
        }
      }

      v28 = [v26 v11[89]];
      sub_2225D6718(v60, v57);
      if ((v28 & 0x8000000000000000) == 0)
      {
        sub_2225D5EB0(v57);
LABEL_13:

        a3 = &v61;
        sub_222614E28(v57, v28);
        goto LABEL_5;
      }

      v53 = 0;
      v54 = 0xE000000000000000;
      sub_22261B500();

      v53 = 0xD00000000000001DLL;
      v54 = v41;
      v56 = v28;
      v14 = sub_22261B610();
      MEMORY[0x223DBB650](v14);

      v15 = v53;
      v16 = v54;
      sub_2225D50A4();
      v17 = swift_allocError();
      *v18 = v15;
      v18[1] = v16;
      swift_willThrow();
      v46 = v58;
      v47 = v59;
      v45 = __swift_project_boxed_opaque_existential_1(v57, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
      v19 = *(sub_22261AF30() - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      *(swift_allocObject() + 16) = v39;
      sub_22261AF00();
      sub_22261AEF0();
      v55 = MEMORY[0x277D84A28];
      v53 = v28;
      sub_22261AEC0();
      sub_2225E22D4(&v53, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      swift_getErrorValue();
      v22 = v51;
      v23 = v52;
      v55 = v52;
      v24 = __swift_allocate_boxed_opaque_existential_0(&v53);
      (*(*(v23 - 8) + 16))(v24, v22, v23);
      sub_22261AEC0();
      sub_2225E22D4(&v53, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v9 = v42;
      sub_22261AF20();
      a1 = v43;
      a3 = v45;
      sub_22261B070();

      sub_2225D5EB0(v57);
LABEL_5:
      ++v13;
      v11 = &off_2784B0000;
      if (v27 == v48)
      {
        v11 = v61;
        a3 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_20:

  result = __swift_destroy_boxed_opaque_existential_1(v60);
  *a3 = v11;
  return result;
}

void sub_2225F5044(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = MEMORY[0x223DBBBF0]();
  sub_2225F50DC(a1, a2, a3, a4, &v12);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a5 = v12;
  }
}

uint64_t sub_2225F50DC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v133 = a4;
  v135 = a5;
  v8 = type metadata accessor for State();
  v139 = *(v8 - 8);
  v9 = v139[8];
  MEMORY[0x28223BE20](v8);
  v137 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C80, &unk_22261E320);
  v11 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v130 - v12;
  v13 = sub_22261AF10();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v134 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = &v130 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v145 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v130 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v152 = &v130 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v162 = (&v130 - v28);
  MEMORY[0x28223BE20](v27);
  v136 = &v130 - v29;
  v172 = MEMORY[0x277D84FA0];
  v171 = MEMORY[0x277D84FA0];
  v156 = a1;
  v132 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_87;
  }

  v30 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v31 = MEMORY[0x277D84FA0];
  v155 = a2;
  v157 = v8;
  if (v30)
  {
    v138 = v24;
    v131 = a3;
    v32 = 0;
    v154 = v156 & 0xC000000000000001;
    v143 = v156 & 0xFFFFFFFFFFFFFF8;
    v151 = (v139 + 6);
    v146 = (v139 + 7);
    v142 = 0x800000022261EEF0;
    v141 = "s not a number: ";
    v24 = 0x2784B0000;
    v140 = xmmword_22261C770;
    v153 = v30;
    while (1)
    {
      if (v154)
      {
        v47 = MEMORY[0x223DBB940](v32, v156);
      }

      else
      {
        if (v32 >= *(v143 + 16))
        {
          goto LABEL_85;
        }

        v47 = *(v156 + 8 * v32 + 32);
      }

      v48 = v47;
      if (__OFADD__(v32, 1))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        v30 = sub_22261B5B0();
        goto LABEL_3;
      }

      v161 = v32 + 1;
      a3 = [v47 *(v24 + 712)];
      sub_2225D6718(a2 + 16, v167);
      v160 = v48;
      if (a3 < 0)
      {
        v165[0] = 0;
        v165[1] = 0xE000000000000000;
        sub_22261B500();

        v165[0] = 0xD00000000000001DLL;
        v165[1] = v142;
        v170 = a3;
        v33 = MEMORY[0x277D84A28];
        v34 = sub_22261B610();
        v35 = a3;
        MEMORY[0x223DBB650](v34);

        v36 = v165[0];
        v37 = v165[1];
        sub_2225D50A4();
        v38 = swift_allocError();
        *v39 = v36;
        v39[1] = v37;
        swift_willThrow();
        v150 = v168;
        v159 = v169;
        v149 = __swift_project_boxed_opaque_existential_1(v167, v168);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
        v40 = *(sub_22261AF30() - 8);
        v41 = *(v40 + 72);
        v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        *(swift_allocObject() + 16) = v140;
        sub_22261AF00();
        sub_22261AEF0();
        v166 = v33;
        v165[0] = v35;
        sub_22261AEC0();
        sub_2225E22D4(v165, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        swift_getErrorValue();
        a3 = v163;
        v43 = v164;
        v166 = v164;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v165);
        (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, a3, v43);
        sub_22261AEC0();
        sub_2225E22D4(v165, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        sub_22261AF20();
        sub_22261B070();
        v24 = &off_2784B0000;
        v8 = v157;

        v45 = v38;
        a2 = v155;

        sub_2225D5EB0(v167);
        v150 = 0;
        goto LABEL_6;
      }

      sub_2225D5EB0(v167);
      v49 = [v48 *(v24 + 712)];
      v159 = a3;
      if (v49)
      {
        v8 = v48;
        v50 = [v48 bundleID];
        v51 = sub_22261B1E0();
        a3 = v52;

        swift_beginAccess();
        v53 = *(a2 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165[0] = *(a2 + 168);
        v24 = v165[0];
        *(a2 + 168) = 0x8000000000000000;
        v55 = sub_2225F003C(v51, a3);
        v57 = *(v24 + 16);
        v58 = (v56 & 1) == 0;
        v59 = __OFADD__(v57, v58);
        v60 = v57 + v58;
        if (v59)
        {
          goto LABEL_84;
        }

        a2 = v56;
        if (*(v24 + 24) >= v60)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = v165;
            v92 = v55;
            sub_22261A588();
            v55 = v92;
          }
        }

        else
        {
          sub_2225F8E7C(v60, isUniquelyReferenced_nonNull_native);
          v24 = v165[0];
          v55 = sub_2225F003C(v51, a3);
          if ((a2 & 1) != (v61 & 1))
          {
            result = sub_22261B670();
            __break(1u);
            return result;
          }
        }

        v48 = v8;
        v8 = v157;
        if (a2)
        {
          v62 = v55;

          v63 = v165[0];
          a3 = v159;
          *(*(v165[0] + 56) + 8 * v62) = v159;
        }

        else
        {
          v63 = v165[0];
          *(v165[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
          v64 = (v63[6] + 16 * v55);
          *v64 = v51;
          v64[1] = a3;
          a3 = v159;
          *(v63[7] + 8 * v55) = v159;
          v65 = v63[2];
          v59 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v59)
          {
            goto LABEL_86;
          }

          v63[2] = v66;
        }

        a2 = v155;
        v155[21] = v63;
        swift_endAccess();
      }

      sub_2225F6358(v48, v162);
      v67 = [v48 isBetaApp];
      v68 = *(a2 + 64);
      if (v68 == 2)
      {
        if (v67)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v69 = *(a2 + 56);
        if (v68 == 3)
        {
          v70 = v67;
          v71 = [v69 predicate];
          v72 = [v71 description];

          v73 = sub_22261B1E0();
          v75 = v74;

          v167[0] = v73;
          v167[1] = v75;
          strcpy(v165, "isBetaApp == 1");
          HIBYTE(v165[1]) = -18;
          sub_2225EE3F8();
          LOBYTE(v73) = sub_22261B480();

          v76 = v70 ^ v73;
          a3 = v159;
          a2 = v155;
          if ((v76 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v68 == 4)
        {
          if (((v67 ^ (v69 == 1)) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v67 & 1) == 0)
        {
LABEL_36:
          if ((*v151)(v162, 1, v8) != 1)
          {
            sub_222614E28(v167, a3);
          }
        }
      }

      swift_beginAccess();
      v77 = *(a2 + 160);
      v78 = *(v77 + 16);
      v158 = v32;
      if (v78 && (v79 = sub_2225F1650(a3), (v80 & 1) != 0))
      {
        v81 = v152;
        sub_2225D8D00(*(v77 + 56) + v139[9] * v79, v152);
        v82 = 0;
      }

      else
      {
        v82 = 1;
        v81 = v152;
      }

      (*v146)(v81, v82, 1, v8);
      swift_endAccess();
      a3 = *(v148 + 48);
      v83 = v147;
      sub_2225DE5AC(v81, v147, &qword_27D010A38, qword_22261E810);
      sub_2225DE5AC(v162, v83 + a3, &qword_27D010A38, qword_22261E810);
      v84 = *v151;
      if ((*v151)(v83, 1, v8) == 1)
      {
        sub_2225E22D4(v81, &qword_27D010A38, qword_22261E810);
        v85 = v84((v83 + a3), 1, v8);
        v24 = 0x2784B0000;
        if (v85 != 1)
        {
          goto LABEL_47;
        }

        sub_2225E22D4(v83, &qword_27D010A38, qword_22261E810);
      }

      else
      {
        v86 = v8;
        v87 = v138;
        sub_2225DE5AC(v83, v138, &qword_27D010A38, qword_22261E810);
        if (v84((v83 + a3), 1, v86) == 1)
        {
          sub_2225E22D4(v152, &qword_27D010A38, qword_22261E810);
          sub_2225DB76C(v87);
          v24 = 0x1FA9AE000;
          v8 = v157;
LABEL_47:
          sub_2225E22D4(v83, &qword_27D010C80, &unk_22261E320);
LABEL_48:
          v88 = v162;
          v89 = v145;
          sub_2225DE5AC(v162, v145, &qword_27D010A38, qword_22261E810);
          swift_beginAccess();
          v90 = v89;
          a3 = v159;
          sub_222618F1C(v90, v159);
          swift_endAccess();
          sub_222614E28(v167, a3);

          sub_2225E22D4(v88, &qword_27D010A38, qword_22261E810);
          v46 = v153;
          v32 = v158;
          goto LABEL_7;
        }

        v91 = v137;
        sub_2225DDDD0(v83 + a3, v137);
        a3 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v87, v91);
        sub_2225DB76C(v91);
        sub_2225E22D4(v152, &qword_27D010A38, qword_22261E810);
        sub_2225DB76C(v87);
        sub_2225E22D4(v83, &qword_27D010A38, qword_22261E810);
        v24 = 0x2784B0000;
        v8 = v157;
        if ((a3 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v32 = v158;
      sub_2225E22D4(v162, &qword_27D010A38, qword_22261E810);
LABEL_6:
      v46 = v153;
LABEL_7:
      ++v32;
      if (v161 == v46)
      {
        v159 = v171;
        a3 = v131;
        v31 = MEMORY[0x277D84FA0];
        goto LABEL_54;
      }
    }
  }

  v159 = MEMORY[0x277D84FA0];
LABEL_54:
  swift_beginAccess();
  v170 = v31;
  v93 = *(a2 + 160);

  v94 = sub_2225FED50(v162);
  if (a3)
  {
    v94 = sub_222605F60(a3, v94);
  }

  v95 = 0;
  v8 = v94 + 56;
  v96 = 1 << *(v94 + 32);
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  else
  {
    v97 = -1;
  }

  a2 = v97 & *(v94 + 56);
  v98 = (v96 + 63) >> 6;
  a3 = v159;
  v99 = v159 + 56;
  v160 = (v139 + 7);
  v161 = v94;
  while (1)
  {
    v102 = v95;
    if (!a2)
    {
      break;
    }

LABEL_66:
    v103 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v104 = *(*(v94 + 48) + ((v95 << 9) | (8 * v103)));
    if (*(a3 + 16) && (v105 = *(a3 + 40), sub_22261B700(), v24 = v167, MEMORY[0x223DBBB60](v104), v106 = sub_22261B740(), v107 = -1 << *(a3 + 32), v108 = v106 & ~v107, ((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) != 0))
    {
      v109 = ~v107;
      while (*(*(a3 + 48) + 8 * v108) != v104)
      {
        v108 = (v108 + 1) & v109;
        if (((*(v99 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
LABEL_71:
      v110 = sub_2225F1650(v104);
      if (v111)
      {
        v112 = v110;
        v113 = v155;
        v114 = v155[20];
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v116 = v113[20];
        v167[0] = v116;
        v113[20] = 0x8000000000000000;
        if (!v115)
        {
          sub_22261A170();
          v116 = v167[0];
        }

        v158 = v112;
        v117 = v116[7] + v139[9] * v112;
        v101 = v136;
        sub_2225DDDD0(v117, v136);
        sub_222619C30(v158, v116);
        v118 = v113[20];
        v162 = v116;
        v113[20] = v116;

        v100 = 0;
        a3 = v159;
      }

      else
      {
        v100 = 1;
        v101 = v136;
      }

      v94 = v161;
      (*v160)(v101, v100, 1, v157);
      sub_2225E22D4(v101, &qword_27D010A38, qword_22261E810);
      sub_222614E28(v167, v104);
      v24 = &v172;
      sub_222614E28(v167, v104);
    }
  }

  while (1)
  {
    v95 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v95 >= v98)
    {
      break;
    }

    a2 = *(v8 + 8 * v95);
    ++v102;
    if (a2)
    {
      goto LABEL_66;
    }
  }

  v119 = v170;
  swift_endAccess();

  v120 = v155;
  sub_2225DE5AC((v155 + 14), v167, &qword_27D010C70, &unk_22261E1F0);
  v121 = v168;
  if (v168)
  {
    v122 = v169;
    __swift_project_boxed_opaque_existential_1(v167, v168);
    v120 = v155;
    (*(v122 + 32))(v119, v121, v122);

    __swift_destroy_boxed_opaque_existential_1(v167);
  }

  else
  {

    sub_2225E22D4(v167, &qword_27D010C70, &unk_22261E1F0);
  }

  v123 = v156;
  v124 = v120[6];
  __swift_project_boxed_opaque_existential_1(v120 + 2, v120[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v125 = *(sub_22261AF30() - 8);
  v126 = *(v125 + 72);
  v127 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v168 = v133;
  v167[0] = v120;

  sub_22261AEC0();
  sub_2225E22D4(v167, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  if (v132)
  {
    v128 = sub_22261B5B0();
  }

  else
  {
    v128 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v168 = MEMORY[0x277D83B88];
  v167[0] = v128;
  sub_22261AEC0();
  sub_2225E22D4(v167, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  *v135 = v172;
  return result;
}

uint64_t sub_2225F6358@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = v2 + 2;
  v7 = *v2;
  v8 = sub_22261AF10();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v82 - v13;
  v15 = type metadata accessor for State();
  Description = v15[-1].Description;
  v17 = Description[8];
  v18 = MEMORY[0x28223BE20](v15);
  v97 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - v20;
  v22 = [a1 storeItemID];
  v101 = v6;
  sub_2225D6718(v6, v107);
  sub_2225D4CC8(v22, v107, &v104);
  if (v105)
  {
    return (Description[7])(a2, 1, 1, v15);
  }

  v100 = v7;
  v96 = a2;
  v24 = v104;
  sub_2225DE5AC(v3 + 112, v107, &qword_27D010C70, &unk_22261E1F0);
  v25 = v108;
  v95 = v24;
  if (v108)
  {
    v26 = v21;
    v27 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v103 = v24;
    (*(v27 + 8))(&v104, &v103, v25, v27);
    v28 = v104;
    v29 = v106;
    __swift_destroy_boxed_opaque_existential_1(v107);
    if (v29)
    {
      v30 = [a1 storeExternalVersionID];

      LOBYTE(v29) = v30 < v28;
    }

    v21 = v26;
  }

  else
  {
    sub_2225E22D4(v107, &qword_27D010C70, &unk_22261E1F0);
    LOBYTE(v29) = 0;
  }

  LOBYTE(v107[0]) = *(v3 + 152);
  v31 = a1;
  sub_2225DE690(v31, v107, v29, v14);
  v98 = Description;
  v32 = (Description[6])(v14, 1, v15);
  v99 = v15;
  if (v32 == 1)
  {
    sub_2225E22D4(v14, &qword_27D010A38, qword_22261E810);
    v33 = *(v3 + 40);
    v97 = *(v3 + 48);
    v101 = __swift_project_boxed_opaque_existential_1(v101, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    v34 = *(sub_22261AF30() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v108 = v100;
    v107[0] = v3;

    sub_22261AEC0();
    sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    v108 = sub_2225F7720();
    v107[0] = v31;
    v37 = v31;
    sub_22261AEC0();
    sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B050();

    sub_2225DE5AC(v3 + 112, v107, &qword_27D010C70, &unk_22261E1F0);
    v38 = v108;
    if (v108)
    {
      v39 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      v104 = v95;
      (*(v39 + 24))(&v104, v38, v39);
      __swift_destroy_boxed_opaque_existential_1(v107);
    }

    else
    {
      sub_2225E22D4(v107, &qword_27D010C70, &unk_22261E1F0);
    }

    return (v98[7])(v96, 1, 1, v99);
  }

  sub_2225DDDD0(v14, v21);
  v40 = *(v3 + 48);
  v92 = *(v3 + 40);
  v93 = v40;
  v91 = __swift_project_boxed_opaque_existential_1(v101, v92);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v42 = *(sub_22261AF30() - 8);
  v43 = *(v42 + 80);
  v44 = (v43 + 32) & ~v43;
  v86 = *(v42 + 72);
  v87 = v43;
  v89 = v41;
  v45 = swift_allocObject();
  v88 = xmmword_22261C770;
  *(v45 + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v108 = v100;
  v107[0] = v3;

  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v108 = sub_2225F7720();
  v107[0] = v31;
  v46 = v31;
  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v108 = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v107);
  v94 = v21;
  sub_2225D8D00(v21, boxed_opaque_existential_0);
  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v90 = v44;
  sub_22261AF20();
  sub_22261B060();

  sub_2225DE5AC(v3 + 112, v107, &qword_27D010C70, &unk_22261E1F0);
  v48 = v108;
  if (!v108)
  {
    sub_2225E22D4(v107, &qword_27D010C70, &unk_22261E1F0);
    v54 = v98;
    goto LABEL_22;
  }

  v92 = v46;
  v93 = v3;
  v49 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  v50 = v95;
  v103 = v95;
  (*(v49 + 8))(&v104, &v103, v48, v49);
  v52 = v104;
  v51 = v105;
  v53 = v106;
  __swift_destroy_boxed_opaque_existential_1(v107);
  v54 = v98;
  if (!v53)
  {
LABEL_22:
    v69 = v96;
    sub_2225DDDD0(v94, v96);
    return (v54[7])(v69, 0, 1, v99);
  }

  v55 = v93;
  v56 = *(v93 + 40);
  v91 = *(v93 + 48);
  v85 = __swift_project_boxed_opaque_existential_1(v101, v56);
  *(swift_allocObject() + 16) = v88;
  sub_22261AF00();
  sub_22261AEF0();
  v108 = v100;
  v107[0] = v55;

  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v84 = v52;
  v107[0] = v52;
  v107[1] = v51;
  v83 = v51;
  v107[2] = v53;
  v108 = &type metadata for AvailableUpdate;

  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v108 = &type metadata for AdamID;
  v107[0] = v50;
  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v57 = v97;
  sub_2225D8D00(v94, v97);
  v58 = v53;
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_2225DB76C(v57);
LABEL_25:
    v60 = v93;
    goto LABEL_26;
  }

  v59 = *(v57 + 8);
  if (![v92 storeItemID])
  {

    goto LABEL_25;
  }

  v60 = v93;
  if (v59)
  {
    v61 = v84;
    if (v59 >= v84)
    {

      v77 = *(v60 + 48);
      __swift_project_boxed_opaque_existential_1(v101, *(v60 + 40));
      *(swift_allocObject() + 16) = v88;
      sub_22261AF00();
      sub_22261AEF0();
      v108 = v100;
      v107[0] = v60;

      sub_22261AEC0();
      sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261B050();

      sub_2225DE5AC(v60 + 112, v107, &qword_27D010C70, &unk_22261E1F0);
      v78 = v108;
      if (v108)
      {
        v79 = v109;
        __swift_project_boxed_opaque_existential_1(v107, v108);
        v104 = v95;
        (*(v79 + 24))(&v104, v78, v79);
        __swift_destroy_boxed_opaque_existential_1(v107);
      }

      else
      {
        sub_2225E22D4(v107, &qword_27D010C70, &unk_22261E1F0);
      }

      v80 = v99;
      v81 = v96;
      sub_2225DDDD0(v94, v96);
      return (v98[7])(v81, 0, 1, v80);
    }

    else
    {
      v62 = *(v93 + 48);
      v95 = *(v93 + 40);
      v97 = v62;
      v101 = __swift_project_boxed_opaque_existential_1(v101, v95);
      *(swift_allocObject() + 16) = v88;
      sub_22261AF00();
      sub_22261AEF0();
      v108 = v100;
      v107[0] = v60;

      sub_22261AEC0();
      v63 = v98;
      sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v64 = MEMORY[0x277D84A28];
      v108 = MEMORY[0x277D84A28];
      v107[0] = v61;
      sub_22261AEC0();
      sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v108 = v64;
      v107[0] = v59;
      sub_22261AEC0();
      sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v65 = v99;
      v108 = v99;
      v66 = __swift_allocate_boxed_opaque_existential_0(v107);
      v67 = v83;
      *v66 = v83;
      v66[1] = v58;
      swift_storeEnumTagMultiPayload();

      sub_22261AEC0();
      sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261B050();

      sub_2225DB76C(v94);
      v68 = v96;
      *v96 = v67;
      v68[1] = v58;
      swift_storeEnumTagMultiPayload();
      return (v63[7])(v68, 0, 1, v65);
    }
  }

LABEL_26:
  v70 = *(v60 + 40);
  v97 = *(v60 + 48);
  __swift_project_boxed_opaque_existential_1(v101, v70);
  *(swift_allocObject() + 16) = v88;
  sub_22261AF00();
  sub_22261AEF0();
  v108 = v100;
  v107[0] = v60;

  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v108 = &type metadata for AdamID;
  v71 = v95;
  v107[0] = v95;
  sub_22261AEC0();
  sub_2225E22D4(v107, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  sub_2225DE5AC(v60 + 112, v107, &qword_27D010C70, &unk_22261E1F0);
  v72 = v108;
  if (v108)
  {
    v73 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v104 = v71;
    (*(v73 + 24))(&v104, v72, v73);
    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  else
  {
    sub_2225E22D4(v107, &qword_27D010C70, &unk_22261E1F0);
  }

  v75 = v98;
  v74 = v99;
  v76 = v96;
  sub_2225DDDD0(v94, v96);
  return (v75[7])(v76, 0, 1, v74);
}

uint64_t sub_2225F735C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225E2E18;

  return DeviceAppStateDataSource.load()();
}

uint64_t sub_2225F73EC(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225E2AA0;

  return DeviceAppStateDataSource.reloadState(forAppsWith:synchronizing:)(a1, a2);
}

uint64_t sub_2225F7494(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2E18;

  return DeviceAppStateDataSource.reloadAllStates(synchronizing:)(a1);
}

void sub_2225F752C(uint64_t *a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_2225F7954(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_2225F7628@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2225F7720()
{
  result = qword_280D9F278;
  if (!qword_280D9F278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9F278);
  }

  return result;
}

unint64_t sub_2225F776C()
{
  result = qword_280D9F258;
  if (!qword_280D9F258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010C88, &unk_22261E330);
    sub_2225F77F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F258);
  }

  return result;
}

unint64_t sub_2225F77F0()
{
  result = qword_280D9F298;
  if (!qword_280D9F298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010AE0, &qword_22261DB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F298);
  }

  return result;
}

void *sub_2225F7874@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_2225F78B8()
{
  result = qword_280D9F2E0;
  if (!qword_280D9F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F2E0);
  }

  return result;
}

unint64_t sub_2225F796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_2225F1650(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22261A6F0();
      v11 = v14;
    }

    v12 = *(v11 + 56) + 24 * v8;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    result = sub_222619FD0(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_2225F7A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_222614A98(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22261B4B0();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 8 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_222614A98((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_2225F24E0(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_2225F24E0(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *DeviceUpdateRegistry.__allocating_init()()
{
  if (qword_280D9F2B8 != -1)
  {
    swift_once();
  }

  v0 = sub_22261B150();
  v1 = __swift_project_value_buffer(v0, qword_280DA0A60);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D22508];
  v2[6] = v0;
  v2[7] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 3);
  (*(*(v0 - 8) + 16))(boxed_opaque_existential_0, v1, v0);
  v5 = sub_2225DE17C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C90, &qword_22261E340);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v2[2] = v6;
  return v2;
}

uint64_t DeviceUpdateRegistry.entry(forAdamID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 6);
  sub_2225F7DA8(&v5[4], v4, a2);
  os_unfair_lock_unlock(v5 + 6);
}

unint64_t sub_2225F7DA8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_2225F1650(a2);
    if (v5)
    {
      v6 = *(v4 + 56) + 24 * result;
      v7 = *(v6 + 16);
      *a3 = *v6;
      *(a3 + 16) = v7;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t DeviceUpdateRegistry.addEntry(_:forAdamID:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = sub_22261AF10();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v19 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v12 = *(sub_22261AF30() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v21 = v5;
  v20[0] = v2;

  sub_22261AEC0();
  sub_2225D5F6C(v20);
  sub_22261AEF0();
  v20[0] = v8;
  v20[1] = v9;
  v20[2] = v10;
  v21 = &type metadata for AvailableUpdate;

  sub_22261AEC0();
  sub_2225D5F6C(v20);
  sub_22261AEF0();
  v21 = MEMORY[0x277D84A28];
  v20[0] = v11;
  sub_22261AEC0();
  sub_2225D5F6C(v20);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v15 = v2[2];

  os_unfair_lock_lock(&v15[1].Description);

  Kind = v15[1].Kind;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v15[1].Kind;
  v15[1].Kind = 0x8000000000000000;
  sub_2225F9BFC(v8, v9, v10, v11, isUniquelyReferenced_nonNull_native);
  v15[1].Kind = v20[0];
  os_unfair_lock_unlock(&v15[1].Description);
}

uint64_t DeviceUpdateRegistry.removeEntry(forAdamID:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_22261AF10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  v7 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v8 = *(sub_22261AF30() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v14 = v3;
  v13[0] = v1;

  sub_22261AEC0();
  sub_2225D5F6C(v13);
  sub_22261AEF0();
  v14 = MEMORY[0x277D84A28];
  v13[0] = v6;
  sub_22261AEC0();
  sub_2225D5F6C(v13);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v11 = v1[2];

  os_unfair_lock_lock(v11 + 6);
  sub_2225F796C(v6, v13);

  os_unfair_lock_unlock(v11 + 6);
}

uint64_t DeviceUpdateRegistry.removeEntries(forAdamIDs:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22261AF10();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  if (*(a1 + 16))
  {
    v7 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    v8 = *(sub_22261AF30() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v16 = v3;
    v15[0] = v1;

    sub_22261AEC0();
    sub_2225D5F6C(v15);
    sub_22261AEF0();
    v11 = sub_2225F7A0C(a1);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C98, &qword_22261E348);
    v15[0] = v11;
    sub_22261AEC0();
    sub_2225D5F6C(v15);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B050();

    v13 = v1[2];
    MEMORY[0x28223BE20](v12);
    *(&v14 - 2) = a1;

    os_unfair_lock_lock((v13 + 24));
    sub_2225FA194((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
  }

  return result;
}

uint64_t sub_2225F85B8(uint64_t *a1, uint64_t a2)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *a1;
    result = sub_2225F1650(*(*(a2 + 48) + ((v10 << 9) | (8 * v12))));
    if (v14)
    {
      v15 = result;
      v16 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *a1;
      v20 = *a1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22261A6F0();
        v18 = v20;
      }

      v19 = *(*(v18 + 56) + 24 * v15 + 16);

      result = sub_222619FD0(v15, v18);
      *a1 = v18;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceUpdateRegistry.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t DeviceUpdateRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2225F8754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = *(v4 + 16);

  os_unfair_lock_lock(v6 + 6);
  sub_2225F7DA8(&v6[4], v5, a2);
  os_unfair_lock_unlock(v6 + 6);
}

uint64_t sub_2225F883C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for State();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A48, &qword_22261D398);
  v40 = a2;
  result = sub_22261B5D0();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_2225DDDD0(v27, v41);
      }

      else
      {
        sub_2225D8D00(v27, v41);
      }

      v28 = *(v12 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v25);
      result = sub_22261B740();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_2225DDDD0(v41, *(v12 + 56) + v26 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2225F8B5C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for State();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A00, &unk_22261D350);
  v40 = a2;
  result = sub_22261B5D0();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_2225DDDD0(v27, v41);
      }

      else
      {
        sub_2225D8D00(v27, v41);
      }

      v28 = *(v12 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB40](v25);
      result = sub_22261B740();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_2225DDDD0(v41, *(v12 + 56) + v26 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2225F8E7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A30, &unk_22261D380);
  v38 = a2;
  result = sub_22261B5D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22261B700();
      sub_22261B210();
      result = sub_22261B740();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2225F911C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A28, &qword_22261D378);
  v35 = a2;
  result = sub_22261B5D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v36 = *v23;
      v24 = *(v23 + 16);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v22);
      result = sub_22261B740();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v36;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2225F93CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A10, &qword_22261D360);
  v33 = a2;
  result = sub_22261B5D0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v21);
      result = sub_22261B740();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2225F965C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A08, &qword_22261E3A0);
  v40 = a2;
  result = sub_22261B5D0();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v45 = *(v23 + 8);
      v25 = *(v5 + 56) + 56 * v22;
      v44 = *v25;
      v43 = *(v25 + 16);
      v26 = *(v25 + 32);
      v27 = *(v25 + 40);
      v28 = *(v25 + 48);
      v41 = v27;
      v42 = *(v25 + 24);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22261B700();
      MEMORY[0x223DBBB60](v24);
      MEMORY[0x223DBBB40](v45);
      result = sub_22261B740();
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
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v45;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v44;
      *(v18 + 16) = v43;
      *(v18 + 24) = v42;
      *(v18 + 32) = v26;
      *(v18 + 40) = v41;
      *(v18 + 48) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_2225F9964(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2225F1650(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22261A170();
      goto LABEL_7;
    }

    sub_2225F883C(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_2225F1650(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22261B670();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for State() - 8) + 72) * v10;

    return sub_2225FA1EC(a1, v18);
  }

LABEL_13:

  return sub_2225F9FFC(v10, a2, a1, v16);
}

uint64_t sub_2225F9AB0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2225F173C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22261A37C();
      goto LABEL_7;
    }

    sub_2225F8B5C(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_2225F173C(a2 & 1);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22261B670();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for State() - 8) + 72) * v10;

    return sub_2225FA1EC(a1, v18);
  }

LABEL_13:

  return sub_2225FA090(v10, a2 & 1, a1, v16);
}

unint64_t sub_2225F9BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2225F1650(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2225F911C(v18, a5 & 1);
      v22 = *v6;
      result = sub_2225F1650(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_22261B670();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22261A6F0();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a4;
    v27 = (v24[7] + 24 * result);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v28 = v24[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v24[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 24 * result);
  v26 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
}

unint64_t sub_2225F9D70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2225F1650(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2225F93CC(v14, a3 & 1);
      v18 = *v4;
      result = sub_2225F1650(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22261B670();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22261A864();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_2225F9EBC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2225F16BC(a2, a3 & 1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22261A9C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2225F965C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2225F16BC(a2, a3 & 1);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22261B670();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 56 * v11;

    return sub_2225FA250(a1, v23);
  }

  else
  {

    return sub_2225FA128(v11, a2, a3 & 1, a1, v22);
  }
}

uint64_t sub_2225F9FFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for State();
  result = sub_2225DDDD0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2225FA090(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for State();
  result = sub_2225DDDD0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_2225FA128(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2225FA1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DisabledArcadeSubscriptionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB0, &unk_22261D9C0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22261AEA0();
  return v0;
}

uint64_t DisabledArcadeSubscriptionManager.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB0, &unk_22261D9C0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22261AEA0();
  return v0;
}

uint64_t sub_2225FA394()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 3;
  return (*(v0 + 8))();
}

uint64_t DisabledArcadeSubscriptionManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DisabledArcadeSubscriptionManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225FA4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2225D8D00(a2, &v16 - v9);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225D8D64(v10, type metadata accessor for State);
  if (a2 != 3)
  {
    return 0;
  }

  sub_2225D8D00(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for State;
  if (EnumCaseMultiPayload > 9)
  {
    goto LABEL_8;
  }

  v13 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x2A3) == 0)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = 1;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v14 = 1;
      v12 = type metadata accessor for AppInstallation;
LABEL_10:
      sub_2225D8D64(v8, v12);
      return v14;
    }

LABEL_8:
    v14 = 0;
    v12 = type metadata accessor for State;
    goto LABEL_10;
  }

  return v13;
}

unsigned __int8 *sub_2225FA634(uint64_t a1, uint64_t a2)
{
  v59 = sub_22261AC90();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CA0, &qword_22261E438);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CA8, &qword_22261E440);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - v14;
  v61 = 0x2F2F3A7370747468;
  v62 = 0xE90000000000003FLL;
  MEMORY[0x223DBB650](a1, a2);
  sub_22261ACB0();

  v16 = sub_22261ACC0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_2225E22D4(v11, &qword_27D010CA0, &qword_22261E438);
    return 0;
  }

  v18 = sub_22261ACA0();
  (*(v17 + 8))(v11, v16);
  if (!v18)
  {
    return 0;
  }

  v58 = v15;
  v19 = *(v18 + 16);
  v20 = v59;
  if (v19)
  {
    v21 = 0;
    v22 = 0x7256747845707061;
    while (v21 < *(v18 + 16))
    {
      (*(v4 + 16))(v7, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v20);
      if (sub_22261AC70() == v22 && v23 == 0xEB00000000644973)
      {

LABEL_13:

        v27 = v58;
        v20 = v59;
        (*(v4 + 32))(v58, v7, v59);
        v26 = 0;
        goto LABEL_14;
      }

      v24 = v22;
      v25 = sub_22261B620();

      if (v25)
      {
        goto LABEL_13;
      }

      ++v21;
      v20 = v59;
      (*(v4 + 8))(v7, v59);
      v22 = v24;
      if (v19 == v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_11:

  v26 = 1;
  v27 = v58;
LABEL_14:
  (*(v4 + 56))(v27, v26, 1, v20);
  if ((*(v4 + 48))(v27, 1, v20) == 1)
  {
    sub_2225E22D4(v27, &qword_27D010CA8, &qword_22261E440);
    return 0;
  }

  v28 = v20;
  v29 = sub_22261AC80();
  v31 = v30;
  result = (*(v4 + 8))(v27, v28);
  if (!v31)
  {
    return 0;
  }

  v33 = HIBYTE(v31) & 0xF;
  v34 = v29 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v35 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
LABEL_83:

    return 0;
  }

  if ((v31 & 0x1000000000000000) == 0)
  {
    if ((v31 & 0x2000000000000000) != 0)
    {
      v61 = v29;
      v62 = v31 & 0xFFFFFFFFFFFFFFLL;
      if (v29 == 43)
      {
        if (v33)
        {
          if (--v33)
          {
            v37 = 0;
            v47 = &v61 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v33)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (v29 != 45)
      {
        if (v33)
        {
          v37 = 0;
          v52 = &v61;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            v52 = (v52 + 1);
            if (!--v33)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v33)
      {
        if (--v33)
        {
          v37 = 0;
          v41 = &v61 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v33)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v29 & 0x1000000000000000) != 0)
      {
        result = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_22261B530();
      }

      v36 = *result;
      if (v36 == 43)
      {
        if (v34 >= 1)
        {
          v33 = v34 - 1;
          if (v34 != 1)
          {
            v37 = 0;
            if (result)
            {
              v44 = result + 1;
              while (1)
              {
                v45 = *v44 - 48;
                if (v45 > 9)
                {
                  goto LABEL_77;
                }

                v46 = 10 * v37;
                if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                {
                  goto LABEL_77;
                }

                v37 = v46 + v45;
                if (__OFADD__(v46, v45))
                {
                  goto LABEL_77;
                }

                ++v44;
                if (!--v33)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_89;
      }

      if (v36 != 45)
      {
        if (v34)
        {
          v37 = 0;
          if (result)
          {
            while (1)
            {
              v50 = *result - 48;
              if (v50 > 9)
              {
                goto LABEL_77;
              }

              v51 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_77;
              }

              v37 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                goto LABEL_77;
              }

              ++result;
              if (!--v34)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v37 = 0;
        LOBYTE(v33) = 1;
        goto LABEL_78;
      }

      if (v34 >= 1)
      {
        v33 = v34 - 1;
        if (v34 != 1)
        {
          v37 = 0;
          if (result)
          {
            v38 = result + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_77;
              }

              v40 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_77;
              }

              v37 = v40 - v39;
              if (__OFSUB__(v40, v39))
              {
                goto LABEL_77;
              }

              ++v38;
              if (!--v33)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v33) = 0;
LABEL_78:
          v60 = v33;
          v55 = v33;
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v37 = sub_2225D57B8(v29, v31, 10);
  v55 = v56;
LABEL_79:

  if (v55)
  {
    return 0;
  }

  else
  {
    return v37;
  }
}

id sub_2225FAD1C()
{
  if (qword_280D9EBE0 != -1)
  {
    swift_once();
  }

  v1 = qword_280D9EBE8;
  qword_280D9EDD0 = qword_280D9EBE8;

  return v1;
}

AppState::GreenTeaLogger __swiftcall GreenTeaLogger.init()()
{
  v1 = sub_2225FADC8(&qword_280D9EBE0, &qword_280D9EBE8, v0);
  result.backing._logger = v2;
  result.backing.super.isa = v1;
  return result;
}

id sub_2225FADC8@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

id sub_2225FAE84()
{
  result = [objc_allocWithZone(ASGreenTeaLogger) init];
  qword_280D9EBE8 = result;
  return result;
}

uint64_t sub_2225FAEB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2225FAF00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2225FAF4C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v40 = sub_22261AE50();
  v37 = *(v40 - 8);
  v38 = v37;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22261B3B0();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22261AE70();
  v41 = *(v44 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v35 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22261B3A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  *(v2 + 24) = 2;
  v32[1] = sub_2225FB9A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CB8, &qword_22261E4F8);
  v14 = *(v12 + 72);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v33 = xmmword_22261C770;
  *(v16 + 16) = xmmword_22261C770;
  sub_22261B390();
  aBlock[0] = v16;
  sub_2225FB9EC(&qword_280D9F288, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CC0, &qword_22261E500);
  sub_2225FBA34(&qword_280D9F2A0, &qword_27D010CC0, &qword_22261E500);
  sub_22261B4A0();
  v17 = v35;
  sub_22261AE60();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v36);
  v18 = sub_22261B3E0();
  v19 = v34;
  *(v34 + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CC8, &qword_22261E508);
  v20 = v38;
  v21 = *(v37 + 72);
  v22 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v33;
  sub_22261AE40();
  aBlock[0] = v23;
  sub_2225FB9EC(&qword_280D9F030, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CD0, &qword_22261E510);
  sub_2225FBA34(&qword_280D9F020, &qword_27D010CD0, &qword_22261E510);
  v25 = v39;
  v24 = v40;
  sub_22261B4A0();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v28 = v42;
  v29 = v43;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v29;
  aBlock[4] = sub_2225FBA88;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222608724;
  aBlock[3] = &block_descriptor_3;
  v30 = _Block_copy(aBlock);

  sub_22261AE60();
  MEMORY[0x223DBB800](0, v17, v25, v30);
  _Block_release(v30);

  (*(v41 + 8))(v17, v44);
  (*(v20 + 8))(v25, v24);

  return v19;
}

uint64_t sub_2225FB518(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    a2(&v5);
    *(v4 + 24) = v5;
  }

  return result;
}

uint64_t HardwarePlatform.init(bag:device:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22261B020();
  v13[3] = v6;
  v13[4] = &off_2835C22F8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v8 = *(v6 - 8);
  (*(v8 + 16))(boxed_opaque_existential_0, a2, v6);
  sub_2225D6718(v13, a3);
  *(a3 + 48) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CB0, &qword_22261E490);
  swift_allocObject();
  v10 = sub_2225FAF4C(sub_2225FB704, v9);
  (*(v8 + 8))(a2, v6);
  v11 = sub_22261B010();
  (*(*(v11 - 8) + 8))(a1, v11);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  *(a3 + 40) = v10;
  return result;
}

uint64_t HardwarePlatform.isRosettaAvailable.getter()
{
  v1 = *(*(v0 + 40) + 16);
  sub_22261B3C0();
  return v3;
}

uint64_t HardwarePlatform.isRunnable(_:)(void *a1)
{
  if ([a1 watchOnly])
  {
    return 0;
  }

  if ([a1 supportsIPad])
  {
    return 1;
  }

  return [a1 supportsIPhone];
}

uint64_t sub_2225FB7E4()
{
  v1 = *(*(v0 + 40) + 16);
  sub_22261B3C0();
  return v3;
}

uint64_t sub_2225FB844(void *a1)
{
  if ([a1 watchOnly])
  {
    return 0;
  }

  if ([a1 supportsIPad])
  {
    return 1;
  }

  return [a1 supportsIPhone];
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2225FB8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225FB924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2225FB984(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 & 1;
  }
}

unint64_t sub_2225FB9A0()
{
  result = qword_280D9F280;
  if (!qword_280D9F280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9F280);
  }

  return result;
}

uint64_t sub_2225FB9EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2225FBA34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2225FBAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_2225D8D00(a2, &v20 - v15);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225D8D64(v16, type metadata accessor for State);
  if (a2 == 7)
  {
    sub_2225D8D00(a1, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 9)
    {
      v18 = 1;
      if (((1 << EnumCaseMultiPayload) & 0x22C) != 0)
      {
LABEL_10:
        sub_2225D8D64(v14, type metadata accessor for State);
        return v18;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_2225D8D00(v14, v8);
        if (*v8)
        {
          goto LABEL_10;
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_2225D8D00(v14, v11);
        sub_2225D8D64(v11, type metadata accessor for AppInstallation);
        goto LABEL_10;
      }
    }

    v18 = 0;
    goto LABEL_10;
  }

  return 0;
}