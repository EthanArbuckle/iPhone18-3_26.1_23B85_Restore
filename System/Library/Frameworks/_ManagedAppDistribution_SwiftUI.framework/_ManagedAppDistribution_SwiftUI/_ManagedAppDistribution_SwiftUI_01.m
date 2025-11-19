uint64_t sub_23B791730(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = a1[1];
  if (v12)
  {
    v32 = *a1;
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    v18 = a1 + 2;
    v16 = a1[2];
    v17 = v18[1];
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v31 = result;
      v19 = sub_23B7BC930();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      v20 = swift_allocObject();
      v30 = a5;
      v21 = v20;
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_23B77CCF4(v17, v13);

      sub_23B7BC900();

      v29 = a3;
      v22 = v33;

      v23 = sub_23B7BC8F0();
      v24 = swift_allocObject();
      v25 = v13;
      v26 = v24;
      v27 = MEMORY[0x277D85700];
      *(v24 + 16) = v23;
      *(v24 + 24) = v27;
      *(v24 + 32) = v32;
      *(v24 + 40) = v12;
      *(v24 + 48) = v16;
      *(v24 + 49) = *v34;
      *(v24 + 52) = *&v34[3];
      *(v24 + 56) = v17;
      *(v24 + 64) = v25;
      *(v24 + 72) = v14;
      *(v24 + 80) = v15;
      v28 = v30;
      *(v24 + 88) = v29;
      *(v24 + 96) = v21;
      *(v24 + 104) = v22;
      *(v24 + 112) = v28;

      sub_23B7939C4(0, 0, v11, &unk_23B7BEA50, v26);
      sub_23B7BBB60();
      swift_allocObject();
      *(v31 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_contentSubscription) = sub_23B7BBB70();
    }
  }

  return result;
}

uint64_t sub_23B7919D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_23B7BBAB0();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250);
  v8[20] = swift_task_alloc();
  v10 = sub_23B7BBA50();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v8[23] = *(v11 + 64);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181310);
  v8[26] = v12;
  v8[27] = *(v12 - 8);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181318);
  v8[29] = swift_task_alloc();
  v8[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181320);
  v8[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181328);
  v8[32] = v13;
  v8[33] = *(v13 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = sub_23B7BC900();
  v8[36] = sub_23B7BC8F0();
  v15 = sub_23B7BC8D0();
  v8[37] = v15;
  v8[38] = v14;

  return MEMORY[0x2822009F8](sub_23B791D14, v15, v14);
}

uint64_t sub_23B791D14()
{
  v28 = v0;
  v1 = *(v0 + 72);
  v2 = v1[4];
  if (v2)
  {
    if (v2 == 1)
    {
      if (qword_27E180870 != -1)
      {
        swift_once();
      }

      v3 = sub_23B7BBB30();
      *(v0 + 312) = __swift_project_value_buffer(v3, qword_27E184F18);
      v4 = sub_23B7BBB10();
      v5 = sub_23B7BCA20();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v25 = v7;
        *v6 = 136315138;
        if (qword_27E180830 != -1)
        {
          swift_once();
        }

        v8 = qword_27E1810E8;
        if (byte_27E1810F8 == 1)
        {
          v9 = qword_27E1810F0;
        }

        else
        {
          v17 = HIDWORD(qword_27E1810E8);
          v26 = 0;
          v27 = 0xE000000000000000;
          if (qword_27E1810E8)
          {
            v18 = 4144959;
          }

          else
          {
            v18 = 5527621;
          }

          MEMORY[0x23EEA8AE0](v18, 0xE300000000000000);

          *(v0 + 344) = v17;
          sub_23B7797D8();
          v19 = sub_23B7BC870();
          MEMORY[0x23EEA8AE0](v19);

          v8 = v26;
          v9 = v27;
        }

        v20 = sub_23B77C020(v8, v9, &v25);

        *(v6 + 4) = v20;
        _os_log_impl(&dword_23B774000, v4, v5, "[%s] Awaiting apps", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x23EEA96D0](v7, -1, -1);
        MEMORY[0x23EEA96D0](v6, -1, -1);
      }

      sub_23B7BBAA0();
      sub_23B7BBA60();
      sub_23B7BBA70();

      *(v0 + 320) = swift_getOpaqueTypeConformance2();
      sub_23B7BC970();
      swift_beginAccess();
      v21 = sub_23B7BC8F0();
      *(v0 + 328) = v21;
      swift_getAssociatedConformanceWitness();
      v22 = swift_task_alloc();
      *(v0 + 336) = v22;
      *v22 = v0;
      v22[1] = sub_23B792204;
      v23 = *(v0 + 232);
      v24 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v23, v21, v24);
    }

    v10 = *(v0 + 160);
    v12 = v1[5];
    v11 = v1[6];
    v13 = v1[3];

    *v10 = v13;
    v10[1] = v2;
    v10[2] = v12;
    v10[3] = v11;
    v14 = type metadata accessor for ManagedAppCellViewModel.Content(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    sub_23B7BBBB0();
    sub_23B7826E8(v10, &qword_27E181250);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23B792204()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 296);
    v5 = *(v2 + 304);

    return MEMORY[0x2822009F8](sub_23B792318, v4, v5);
  }

  return result;
}

uint64_t sub_23B792318()
{
  v67 = v0;
  v1 = v0[29];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_23B796CA4(v1, v0[28]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = v0[16];
      v4 = v0[17];
      v6 = v0[14];
      v7 = v0[15];
      (*(v7 + 32))(v4, v0[28], v6);
      (*(v7 + 16))(v5, v4, v6);
      v8 = sub_23B7BBB10();
      v9 = sub_23B7BCA00();
      v10 = os_log_type_enabled(v8, v9);
      v11 = v0[16];
      v12 = v0[17];
      v14 = v0[14];
      v13 = v0[15];
      if (v10)
      {
        v64 = v0[17];
        v15 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v66 = v62;
        *v15 = 136315138;
        sub_23B797010(&qword_27E181330, MEMORY[0x277CD4A58]);
        v16 = sub_23B7BCCC0();
        v18 = v17;
        v19 = *(v13 + 8);
        v19(v11, v14);
        v20 = sub_23B77C020(v16, v18, &v66);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_23B774000, v8, v9, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x23EEA96D0](v62, -1, -1);
        MEMORY[0x23EEA96D0](v15, -1, -1);

        v19(v64, v14);
      }

      else
      {

        v41 = *(v13 + 8);
        v41(v11, v14);
        v41(v12, v14);
      }
    }

    else
    {
      v21 = v0[25];
      v22 = v0[21];
      v23 = v0[22];
      v24 = v0[20];
      v25 = *(v23 + 32);
      v25(v21, v0[28], v22);
      v26 = *(v23 + 16);
      v26(v24, v21, v22);
      v27 = type metadata accessor for ManagedAppCellViewModel.Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
      sub_23B7BBBB0();
      sub_23B7826E8(v24, &qword_27E181250);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v29 = v0[24];
        v59 = v0[23];
        v57 = v29;
        v58 = v0[22];
        v30 = v0[21];
        v55 = v0[25];
        v56 = v30;
        v31 = v0[19];
        v60 = v25;
        v63 = v0[18];
        v65 = Strong;
        v32 = v0[12];
        v61 = v0[13];
        v33 = sub_23B7BC930();
        v34 = *(v33 - 8);
        (*(v34 + 56))(v31, 1, 1, v33);
        v26(v29, v55, v30);

        v35 = sub_23B7BC8F0();
        v36 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v37 = (v59 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
        v38 = swift_allocObject();
        v39 = MEMORY[0x277D85700];
        *(v38 + 16) = v35;
        *(v38 + 24) = v39;
        v60(v38 + v36, v57, v56);
        *(v38 + v37) = v32;
        *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v61;
        sub_23B779B38(v31, v63, &qword_27E1809E8);
        LODWORD(v36) = (*(v34 + 48))(v63, 1, v33);

        v40 = v0[18];
        if (v36 == 1)
        {
          sub_23B7826E8(v0[18], &qword_27E1809E8);
        }

        else
        {
          sub_23B7BC920();
          (*(v34 + 8))(v40, v33);
        }

        v42 = *(v38 + 16);
        swift_unknownObjectRetain();

        if (v42)
        {
          swift_getObjectType();
          v43 = sub_23B7BC8D0();
          v45 = v44;
          swift_unknownObjectRelease();
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        sub_23B7826E8(v0[19], &qword_27E1809E8);
        v46 = swift_allocObject();
        *(v46 + 16) = &unk_23B7BEA88;
        *(v46 + 24) = v38;
        if (v45 | v43)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v43;
          v0[5] = v45;
        }

        v47 = v0[25];
        v49 = v0[21];
        v48 = v0[22];
        swift_task_create();
        sub_23B7BBB60();
        swift_allocObject();
        v50 = sub_23B7BBB70();
        (*(v48 + 8))(v47, v49);
        *(v65 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_appStateSubscription) = v50;
      }

      else
      {
        (*(v0[22] + 8))(v0[25], v0[21]);
      }
    }

    v51 = sub_23B7BC8F0();
    v0[41] = v51;
    swift_getAssociatedConformanceWitness();
    v52 = swift_task_alloc();
    v0[42] = v52;
    *v52 = v0;
    v52[1] = sub_23B792204;
    v53 = v0[29];
    v54 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v53, v51, v54);
  }
}

uint64_t sub_23B792B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_23B7BB990();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181338);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181340);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_23B7BBAF0();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = sub_23B7BBA50();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = sub_23B7BC900();
  v5[28] = sub_23B7BC8F0();
  v12 = sub_23B7BC8D0();
  v5[29] = v12;
  v5[30] = v11;

  return MEMORY[0x2822009F8](sub_23B792DF8, v12, v11);
}

uint64_t sub_23B792DF8()
{
  v55 = v0;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 40);
  v6 = sub_23B7BBB30();
  *(v0 + 248) = __swift_project_value_buffer(v6, qword_27E184F18);
  v7 = *(v4 + 16);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_23B7BBB10();
  v9 = sub_23B7BCA20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v10 = 136315650;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v50 = v9;
    log = v8;
    v11 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v12 = qword_27E1810F0;
    }

    else
    {
      v20 = HIDWORD(qword_27E1810E8);
      v53 = 0;
      v54 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v21 = 4144959;
      }

      else
      {
        v21 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v21, 0xE300000000000000);

      *(v0 + 308) = v20;
      sub_23B7797D8();
      v22 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v22);

      v11 = v53;
      v12 = v54;
    }

    v23 = *(v0 + 208);
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v47 = *(v0 + 200);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    v48 = *(v0 + 152);
    v28 = sub_23B77C020(v11, v12, &v52);

    *(v10 + 4) = v28;
    *(v10 + 12) = 2080;
    v29 = sub_23B7BB9D0();
    v31 = v30;
    v32 = *(v24 + 8);
    v17 = v24 + 8;
    v18 = v32;
    v32(v23, v25);
    v33 = sub_23B77C020(v29, v31, &v52);

    *(v10 + 14) = v33;
    *(v10 + 22) = 2080;
    sub_23B7BBA30();
    sub_23B797010(&qword_27E181350, MEMORY[0x277CD4A90]);
    v34 = sub_23B7BCC60();
    v36 = v35;
    (*(v26 + 8))(v27, v48);
    v32(v47, v25);
    v37 = sub_23B77C020(v34, v36, &v52);

    *(v10 + 24) = v37;
    _os_log_impl(&dword_23B774000, log, v50, "[%s] Awaiting state for %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v49, -1, -1);
    MEMORY[0x23EEA96D0](v10, -1, -1);
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);

    v19 = *(v15 + 8);
    v17 = v15 + 8;
    v18 = v19;
    v19(v14, v16);
    v19(v13, v16);
  }

  *(v0 + 272) = v17;
  *(v0 + 280) = v18;
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  v40 = *(v0 + 104);
  sub_23B7BB9F0();
  sub_23B7BC940();
  (*(v39 + 8))(v38, v40);
  v41 = sub_23B7BC8F0();
  *(v0 + 288) = v41;
  v42 = swift_task_alloc();
  *(v0 + 296) = v42;
  *v42 = v0;
  v42[1] = sub_23B7932C0;
  v43 = *(v0 + 128);
  v44 = *(v0 + 96);
  v45 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v44, v41, v45, v43);
}

uint64_t sub_23B7932C0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_23B793404, v3, v2);
}

uint64_t sub_23B793404()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 192);
  if (v4 == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 176);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 40);
    (*(v2 + 32))(v10, v1, v3);
    v13 = *(v2 + 16);
    v13(v11, v10, v3);
    v8(v5, v12, v9);
    v14 = sub_23B7BBB10();
    v15 = sub_23B7BCA20();
    if (os_log_type_enabled(v14, v15))
    {
      v55 = v15;
      v16 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *(v0 + 32) = v54;
      *v16 = 136315650;
      if (qword_27E180830 != -1)
      {
        swift_once();
      }

      v17 = qword_27E1810E8;
      v53 = v13;
      if (byte_27E1810F8 == 1)
      {
        v18 = qword_27E1810F0;
      }

      else
      {
        v26 = HIDWORD(qword_27E1810E8);
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        if (v17)
        {
          v27 = 4144959;
        }

        else
        {
          v27 = 5527621;
        }

        MEMORY[0x23EEA8AE0](v27, 0xE300000000000000);

        *(v0 + 304) = v26;
        sub_23B7797D8();
        v28 = sub_23B7BC870();
        MEMORY[0x23EEA8AE0](v28);

        v17 = *(v0 + 16);
        v18 = *(v0 + 24);
      }

      v52 = *(v0 + 280);
      v29 = *(v0 + 192);
      v51 = *(v0 + 176);
      v30 = *(v0 + 64);
      v31 = *(v0 + 72);
      v32 = *(v0 + 56);
      v33 = sub_23B77C020(v17, v18, (v0 + 32));

      *(v16 + 4) = v33;
      *(v16 + 12) = 2080;
      sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
      v34 = sub_23B7BCC60();
      v36 = v35;
      v25 = *(v30 + 8);
      v25(v31, v32);
      v37 = sub_23B77C020(v34, v36, (v0 + 32));

      *(v16 + 14) = v37;
      *(v16 + 22) = 2080;
      v38 = sub_23B7BB9D0();
      v40 = v39;
      v52(v29, v51);
      v41 = sub_23B77C020(v38, v40, (v0 + 32));

      *(v16 + 24) = v41;
      _os_log_impl(&dword_23B774000, v14, v55, "[%s] Received state %s for %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEA96D0](v54, -1, -1);
      MEMORY[0x23EEA96D0](v16, -1, -1);

      v13 = v53;
    }

    else
    {
      v19 = *(v0 + 280);
      v20 = *(v0 + 192);
      v21 = *(v0 + 176);
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      v24 = *(v0 + 56);

      v19(v20, v21);
      v25 = *(v23 + 8);
      v25(v22, v24);
    }

    v43 = *(v0 + 80);
    v42 = *(v0 + 88);
    v44 = *(v0 + 56);
    v45 = *(v0 + 64);
    v13(v42, v43, v44);
    (*(v45 + 56))(v42, 0, 1, v44);
    sub_23B7BBBB0();
    sub_23B7826E8(v42, &qword_27E181248);
    v25(v43, v44);
    v46 = sub_23B7BC8F0();
    *(v0 + 288) = v46;
    v47 = swift_task_alloc();
    *(v0 + 296) = v47;
    *v47 = v0;
    v47[1] = sub_23B7932C0;
    v48 = *(v0 + 128);
    v49 = *(v0 + 96);
    v50 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v49, v46, v50, v48);
  }
}

uint64_t sub_23B7939C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23B779B38(a3, v22 - v9, &qword_27E1809E8);
  v11 = sub_23B7BC930();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B7826E8(v10, &qword_27E1809E8);
  }

  else
  {
    sub_23B7BC920();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B7BC8D0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B7BC820() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23B7826E8(a3, &qword_27E1809E8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B7826E8(a3, &qword_27E1809E8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23B793C70(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  sub_23B7BB7B0();
  swift_allocObject();
  sub_23B7BB7A0();
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  sub_23B796A28();
  v13 = sub_23B7BB790();
  v15 = v14;

  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v16 = sub_23B7BBB30();
  __swift_project_value_buffer(v16, qword_27E184F18);
  v17 = sub_23B7BBB10();
  v18 = sub_23B7BC9F0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33[0] = v20;
    *v19 = 136315394;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v21 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v22 = qword_27E1810F0;
    }

    else
    {
      v34 = 0.0;
      v35 = -2.68156159e154;
      if (qword_27E1810E8)
      {
        v23 = 4144959;
      }

      else
      {
        v23 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v23, 0xE300000000000000);

      sub_23B7797D8();
      v24 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v24);

      v21 = *&v34;
      v22 = *&v35;
    }

    v25 = sub_23B77C020(v21, v22, v33);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v26 = sub_23B7BC810();
    v28 = sub_23B77C020(v26, v27, v33);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_23B774000, v17, v18, "[%s] Replying bounds %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v20, -1, -1);
    MEMORY[0x23EEA96D0](v19, -1, -1);
  }

  v29 = *(a1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  if (!v29)
  {
    return sub_23B796A7C(v13, v15);
  }

  if (v15 >> 60 == 15)
  {
    v30 = 0;
  }

  else
  {
    v30 = v13;
  }

  if (v15 >> 60 == 15)
  {
    v31 = 0xC000000000000000;
  }

  else
  {
    v31 = v15;
  }

  sub_23B796A90(v29);
  sub_23B796AA0(v13, v15);
  v29(v30, v31);
  sub_23B796A7C(v13, v15);
  sub_23B77C010(v29);
  return sub_23B779E1C(v30, v31);
}

uint64_t static ManagedAppCellViewModel.color(for:in:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B7BBCE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B7BBFA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BBF90();
  (*(v5 + 16))(v7, a2, v4);
  sub_23B7BBED0();
  sub_23B7BC500();
  v12 = sub_23B7BC510();
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  LOBYTE(a2) = sub_23B7BBCD0();
  (*(v5 + 8))(v7, v4);
  v13 = 0.0;
  if (a2)
  {
    v13 = 1.0;
  }

  GenericGray = CGColorCreateGenericGray(v13, 1.0);
  AXSSContrastRatioForColor();
  if (v15 >= 3.0)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    a1 = sub_23B7BC4F0();

    (*(v9 + 8))(v11, v8);
  }

  return a1;
}

uint64_t ManagedAppCellViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__subtitle, v2);
  v4 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__iconImageURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__style;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__offerState;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isInitial;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isPackage, v11);
  v13 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__binaryCompatibility;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  return v0;
}

uint64_t ManagedAppCellViewModel.__deallocating_deinit()
{
  ManagedAppCellViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_23B7945D4(uint64_t a1)
{
  v2 = v1;
  v167 = a1;
  v163 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181208);
  v4 = *(v3 - 8);
  v153 = v3;
  v154 = v4;
  MEMORY[0x28223BE20](v3);
  v151 = &v113 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181210);
  v7 = *(v6 - 8);
  v155 = v6;
  v156 = v7;
  MEMORY[0x28223BE20](v6);
  v152 = &v113 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181218);
  MEMORY[0x28223BE20](v9 - 8);
  v162 = &v113 - v10;
  v164 = sub_23B7BCA60();
  v168 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181220);
  v148 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v113 - v12;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181228);
  v150 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v113 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160);
  v143 = *(v144 - 8);
  v14 = MEMORY[0x28223BE20](v144);
  v142 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v139 = &v113 - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181230);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v113 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181238);
  v137 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = &v113 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148);
  v131 = *(v132 - 8);
  v19 = MEMORY[0x28223BE20](v132);
  v130 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v129 = &v113 - v21;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0);
  v166 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v113 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181240);
  v128 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v113 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248);
  MEMORY[0x28223BE20](v24 - 8);
  v165 = &v113 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250);
  MEMORY[0x28223BE20](v26 - 8);
  v169 = &v113 - v27;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190);
  v135 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v134 = &v113 - v28;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  v124 = *(v125 - 1);
  MEMORY[0x28223BE20](v125);
  v123 = &v113 - v29;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158);
  v122 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v121 = &v113 - v30;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v113 - v31;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v113 - v32;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  v33 = MEMORY[0x28223BE20](v114);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v113 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v113 - v40;
  v42 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__name;
  *&v171 = 0;
  *(&v171 + 1) = 0xE000000000000000;
  sub_23B7BBBE0();
  v43 = *(v39 + 32);
  v43(v1 + v42, v41, v38);
  v44 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__subtitle;
  *&v171 = 0;
  *(&v171 + 1) = 0xE000000000000000;
  sub_23B7BBBE0();
  v43(v1 + v44, v41, v38);
  v45 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__iconImageURL;
  v46 = sub_23B7BB810();
  (*(*(v46 - 8) + 56))(v37, 1, 1, v46);
  sub_23B779B38(v37, v35, &qword_27E180C18);
  v47 = v115;
  sub_23B7BBBE0();
  sub_23B7826E8(v37, &qword_27E180C18);
  (*(v116 + 32))(v1 + v45, v47, v117);
  v48 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__style;
  LOBYTE(v171) = 1;
  v49 = v118;
  sub_23B7BBBE0();
  (*(v120 + 32))(v1 + v48, v49, v119);
  v50 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__offerState;
  v171 = xmmword_23B7BE660;
  v172 = 2;
  v51 = v121;
  sub_23B7BBBE0();
  (*(v122 + 32))(v1 + v50, v51, v159);
  v52 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isInitial;
  LOBYTE(v171) = 1;
  v53 = v123;
  sub_23B7BBBE0();
  v54 = *(v124 + 32);
  v55 = v125;
  v54(v1 + v52, v53, v125);
  v56 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isPackage;
  LOBYTE(v171) = 0;
  sub_23B7BBBE0();
  v54(v1 + v56, v53, v55);
  v57 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__binaryCompatibility;
  LOBYTE(v171) = 4;
  v58 = v134;
  sub_23B7BBBE0();
  (*(v135 + 32))(v2 + v57, v58, v160);
  *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_contentSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_appStateSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_subscriptions) = MEMORY[0x277D84FA0];
  v59 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_viewBoundsSubject;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181258);
  swift_allocObject();
  *(v2 + v59) = sub_23B7BBBA0();
  v60 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerFrameSubject;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181260);
  swift_allocObject();
  *(v2 + v60) = sub_23B7BBBA0();
  v61 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v61 - 8) + 56))(v169, 1, 1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181268);
  swift_allocObject();
  v169 = sub_23B7BBBD0();
  v62 = sub_23B7BB990();
  (*(*(v62 - 8) + 56))(v165, 1, 1, v62);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181270);
  swift_allocObject();
  v165 = sub_23B7BBBD0();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181278);
  swift_allocObject();
  v63 = sub_23B7BBBA0();
  v64 = (v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerAction);
  *v64 = sub_23B796800;
  v64[1] = v63;
  v160 = v63;
  v122 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  swift_beginAccess();

  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  v65 = v157;
  sub_23B7BBBF0();
  swift_endAccess();
  v124 = sub_23B7826A0(&qword_27E181280, &qword_27E180AB0);
  v66 = v126;
  v67 = v158;
  sub_23B7BBC60();
  v68 = *(v166 + 8);
  v166 += 8;
  v125 = v68;
  (v68)(v65, v67);
  swift_beginAccess();
  v69 = v129;
  sub_23B7BBBF0();
  swift_endAccess();
  sub_23B7826A0(&qword_27E181288, &qword_27E181240);
  v70 = v127;
  sub_23B7BBC90();
  (*(v128 + 8))(v66, v70);
  v71 = v131;
  v72 = v132;
  (*(v131 + 16))(v130, v69, v132);
  swift_beginAccess();
  sub_23B7BBC00();
  swift_endAccess();
  (*(v71 + 8))(v69, v72);
  v170 = v169;
  swift_beginAccess();

  sub_23B7BBBF0();
  swift_endAccess();
  sub_23B7826A0(&qword_27E181290, &qword_27E181268);
  sub_23B7826A0(&qword_27E181298, &qword_27E181148);
  v73 = v133;
  sub_23B7BBB40();
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_23B79686C;
  *(v75 + 24) = v74;
  v132 = MEMORY[0x277CBCAF0];
  sub_23B7826A0(&qword_27E1812A0, &qword_27E181238);

  v76 = v136;
  sub_23B7BBC80();

  (*(v137 + 8))(v73, v76);
  v137 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_subscriptions;
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  v77 = v165;
  *&v171 = v165;
  sub_23B7826A0(&qword_27E1812A8, &qword_27E181270);
  v78 = v138;
  sub_23B7BBC50();
  swift_beginAccess();
  v79 = v139;
  sub_23B7BBBF0();
  swift_endAccess();
  sub_23B7826A0(&qword_27E1812B0, &qword_27E181230);
  v80 = v140;
  sub_23B7BBC90();
  v141[1](v78, v80);
  v81 = v143;
  v82 = v144;
  (*(v143 + 16))(v142, v79, v144);
  swift_beginAccess();
  sub_23B7BBC00();
  swift_endAccess();
  (*(v81 + 8))(v79, v82);
  *&v171 = v160;
  v83 = swift_allocObject();
  *(v83 + 16) = v169;
  *(v83 + 24) = v77;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8);
  v159 = MEMORY[0x277CBCE20];
  sub_23B7826A0(&qword_27E1812C0, &qword_27E181278);
  v84 = v145;
  sub_23B7BBC50();

  v85 = v161;
  sub_23B7BCA50();
  v140 = sub_23B77C5C8();
  v86 = sub_23B7BCA70();
  *&v171 = v86;
  v87 = sub_23B7BCA30();
  v88 = *(v87 - 8);
  v143 = *(v88 + 56);
  v144 = v88 + 56;
  v89 = v162;
  (v143)(v162, 1, 1, v87);
  sub_23B7826A0(&qword_27E1812C8, &qword_27E181220);
  v142 = sub_23B797010(&qword_27E1812D0, sub_23B77C5C8);
  v90 = v146;
  v91 = v147;
  sub_23B7BBC70();
  sub_23B7826E8(v89, &qword_27E181218);

  v92 = *(v168 + 8);
  v168 += 8;
  v141 = v92;
  (v92)(v85, v164);
  (*(v148 + 8))(v84, v91);
  v93 = swift_allocObject();
  v94 = v163;
  *(v93 + 16) = v163;
  v148 = MEMORY[0x277CBCCF8];
  sub_23B7826A0(&qword_27E1812D8, &qword_27E181228);
  v95 = v149;
  sub_23B7BBC80();

  (*(v150 + 8))(v90, v95);
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  swift_beginAccess();
  v96 = v157;
  sub_23B7BBBF0();
  swift_endAccess();
  v97 = swift_allocObject();
  swift_weakInit();

  v98 = swift_allocObject();
  v98[2] = v97;
  v99 = v165;
  v98[3] = v169;
  v98[4] = v99;
  v98[5] = v94;

  v100 = v158;
  sub_23B7BBC80();

  (v125)(v96, v100);
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  v101 = *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_viewBoundsSubject);
  v170 = *(v2 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerFrameSubject);
  *&v171 = v101;
  sub_23B7826A0(&qword_27E1812E0, &qword_27E181258);
  sub_23B7826A0(&qword_27E1812E8, &qword_27E181260);

  v102 = v151;
  sub_23B7BBB40();
  v103 = v161;
  sub_23B7BCA40();
  v104 = sub_23B7BCA70();
  *&v171 = v104;
  v105 = v162;
  (v143)(v162, 1, 1, v87);
  sub_23B7826A0(&qword_27E1812F0, &qword_27E181208);
  v106 = v152;
  v107 = v153;
  sub_23B7BBC70();
  sub_23B7826E8(v105, &qword_27E181218);

  (v141)(v103, v164);
  (*(v154 + 8))(v102, v107);
  v108 = swift_allocObject();
  v109 = v163;
  *(v108 + 16) = v167;
  *(v108 + 24) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_23B7969EC;
  *(v110 + 24) = v108;
  sub_23B7826A0(&qword_27E1812F8, &qword_27E181210);

  v111 = v155;
  sub_23B7BBC80();

  (*(v156 + 8))(v106, v111);
  swift_beginAccess();
  sub_23B7BBB50();
  swift_endAccess();

  return v2;
}

void sub_23B7964C4()
{
  sub_23B796794(319, &qword_27E1811D8);
  if (v0 <= 0x3F)
  {
    sub_23B796730();
    if (v1 <= 0x3F)
    {
      sub_23B796794(319, &qword_27E1811E8);
      if (v2 <= 0x3F)
      {
        sub_23B796794(319, &qword_27E1811F0);
        if (v3 <= 0x3F)
        {
          sub_23B796794(319, &qword_27E1811F8);
          if (v4 <= 0x3F)
          {
            sub_23B796794(319, &qword_27E181200);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_23B796730()
{
  if (!qword_27E1811E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C18);
    v0 = sub_23B7BBC40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1811E0);
    }
  }
}

void sub_23B796794(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23B7BBC40();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_23B796834()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B796874()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B7968AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181358);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_23B796900()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B796960()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B7969B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23B796A28()
{
  result = qword_27E181300;
  if (!qword_27E181300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181300);
  }

  return result;
}

uint64_t sub_23B796A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B779E1C(a1, a2);
  }

  return a1;
}

uint64_t sub_23B796A90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B796AA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B796AB4(a1, a2);
  }

  return a1;
}

uint64_t sub_23B796AB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B796B08()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_23B796B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B779A44;

  return sub_23B7919D8(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_23B796C50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181308);
  v2 = MEMORY[0x277D84950];
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200438](v0, v3, v1, v2);
}

uint64_t sub_23B796CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B796D14()
{
  v1 = sub_23B7BBA50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_23B796DFC(uint64_t a1)
{
  v4 = *(sub_23B7BBA50() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B797590;

  return sub_23B792B10(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23B796F34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B797590;

  return sub_23B7795E8(a1, v4);
}

uint64_t sub_23B797010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B797058()
{
  v1 = sub_23B7BB990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23B7BBA50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_23B7971B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23B7BB990() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23B7BBA50() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23B779A44;

  return sub_23B78F62C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23B79733C(uint64_t a1)
{
  v2 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B797398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7973FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23B7974B0()
{
  sub_23B7BBA50();
  if (v0 <= 0x3F)
  {
    sub_23B797524();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23B797524()
{
  if (!qword_27E181388)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E181388);
    }
  }
}

uint64_t sub_23B79759C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIconClippingViewModifier();
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  swift_storeEnumTagMultiPayload();
  v7 = v6 + v4[5];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v6 + v4[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v6 + v4[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  MEMORY[0x23EEA8730](v6, a1, v4, a2);
  return sub_23B799594(v6, type metadata accessor for PlatformIconClippingViewModifier);
}

uint64_t type metadata accessor for PlatformIconClippingViewModifier()
{
  result = qword_27E181390;
  if (!qword_27E181390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B797734@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B7BBFA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23B779B38(v2, &v14 - v9, &qword_27E180DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23B7BBCE0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23B7BCA10();
    v13 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23B797934()
{
  v1 = sub_23B7BBFA0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PlatformIconClippingViewModifier() + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23B7BCA10();
    v7 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

void sub_23B797A8C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27E184ED8 = v1;
}

uint64_t sub_23B797AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813B0);
  MEMORY[0x28223BE20](v45);
  v46 = v42 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813B8);
  MEMORY[0x28223BE20](v55);
  v47 = v42 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813C0);
  MEMORY[0x28223BE20](v51);
  v44 = v42 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813C8);
  MEMORY[0x28223BE20](v56);
  v8 = v42 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813D0);
  MEMORY[0x28223BE20](v49);
  v50 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813D8);
  MEMORY[0x28223BE20](v10);
  v53 = v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813E0);
  MEMORY[0x28223BE20](v12);
  v52 = v42 - v13;
  v14 = sub_23B7BBFA0();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813E8);
  MEMORY[0x28223BE20](v17);
  v54 = v42 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F0);
  MEMORY[0x28223BE20](v19);
  v21 = v42 - v20;
  if (sub_23B797934())
  {
    v42[0] = v12;
    v42[1] = v10;
    v22 = a1;
    v23 = v2 + *(type metadata accessor for PlatformIconClippingViewModifier() + 24);
    v24 = *v23;
    LODWORD(v23) = *(v23 + 8);
    v42[2] = v19;
    v43 = v21;
    if (v23 == 1)
    {
      v58 = v24;
    }

    else
    {

      sub_23B7BCA10();
      v27 = v8;
      v28 = sub_23B7BC210();
      sub_23B7BBB00();

      v8 = v27;
      sub_23B7BBF90();
      swift_getAtKeyPath();
      sub_23B779D74(v24, 0);
      (*(v48 + 8))(v16, v14);
      LOBYTE(v24) = v58;
    }

    v29 = v54;
    if (v24 > 2u)
    {
      if (v24 == 3)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8);
        v35 = v44;
        (*(*(v34 - 8) + 16))(v44, v22, v34);
        v36 = v50;
        *(v35 + *(v51 + 36)) = 256;
        sub_23B779B38(v35, v36, &qword_27E1813C0);
        swift_storeEnumTagMultiPayload();
        sub_23B799200();
        sub_23B79939C();
        v37 = v53;
        sub_23B7BC090();
        sub_23B779B38(v37, v8, &qword_27E1813D8);
        swift_storeEnumTagMultiPayload();
        sub_23B799174();
        sub_23B799480(&qword_27E181468, &qword_27E1813B8, &unk_23B7BEC20, sub_23B799200);
        sub_23B7BC090();
        sub_23B7826E8(v37, &qword_27E1813D8);
        v32 = v35;
        v33 = &qword_27E1813C0;
      }

      else
      {
        v40 = v52;
        sub_23B798658(a1, v52);
        sub_23B779B38(v40, v46, &qword_27E1813E0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8);
        sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
        sub_23B799200();
        v41 = v47;
        sub_23B7BC090();
        sub_23B779B38(v41, v8, &qword_27E1813B8);
        swift_storeEnumTagMultiPayload();
        sub_23B799174();
        sub_23B799480(&qword_27E181468, &qword_27E1813B8, &unk_23B7BEC20, sub_23B799200);
        sub_23B7BC090();
        sub_23B7826E8(v41, &qword_27E1813B8);
        v32 = v40;
        v33 = &qword_27E1813E0;
      }
    }

    else if (v24 >= 2u)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8);
      (*(*(v38 - 8) + 16))(v46, a1, v38);
      swift_storeEnumTagMultiPayload();
      sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
      sub_23B799200();
      v39 = v47;
      sub_23B7BC090();
      sub_23B779B38(v39, v8, &qword_27E1813B8);
      swift_storeEnumTagMultiPayload();
      sub_23B799174();
      sub_23B799480(&qword_27E181468, &qword_27E1813B8, &unk_23B7BEC20, sub_23B799200);
      sub_23B7BC090();
      v32 = v39;
      v33 = &qword_27E1813B8;
    }

    else
    {
      v30 = v52;
      sub_23B798658(v22, v52);
      sub_23B779B38(v30, v50, &qword_27E1813E0);
      swift_storeEnumTagMultiPayload();
      sub_23B799200();
      sub_23B79939C();
      v31 = v53;
      sub_23B7BC090();
      sub_23B779B38(v31, v8, &qword_27E1813D8);
      swift_storeEnumTagMultiPayload();
      sub_23B799174();
      sub_23B799480(&qword_27E181468, &qword_27E1813B8, &unk_23B7BEC20, sub_23B799200);
      sub_23B7BC090();
      sub_23B7826E8(v31, &qword_27E1813D8);
      v32 = v30;
      v33 = &qword_27E1813E0;
    }

    sub_23B7826E8(v32, v33);
    sub_23B779B38(v29, v43, &qword_27E1813E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
    sub_23B7990BC();
    sub_23B7BC090();
    return sub_23B7826E8(v29, &qword_27E1813E8);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8);
    (*(*(v25 - 8) + 16))(v21, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
    sub_23B7990BC();
    return sub_23B7BC090();
  }
}

uint64_t sub_23B798658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v62 = a2;
  v61 = sub_23B7BBCE0();
  v3 = *(v61 - 8);
  v4 = MEMORY[0x28223BE20](v61);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v55 - v6;
  v56 = sub_23B7BBEA0();
  MEMORY[0x28223BE20](v56);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181470);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181428);
  MEMORY[0x28223BE20](v12);
  v63 = &v55 - v13;
  v14 = sub_23B7BBFA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for PlatformIconClippingViewModifier() + 28);
  v60 = v2;
  v19 = v2 + v18;
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    LOBYTE(v64) = *v19;
  }

  else
  {

    sub_23B7BCA10();
    v21 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v20, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v20) = v64;
  }

  v55 = v8;
  if (v20 <= 1u)
  {
    if (v20)
    {
      v22 = 0x4033400000000000;
    }

    else
    {
      v22 = 0x402A400000000000;
    }

    goto LABEL_13;
  }

  if (v20 != 2)
  {
    v22 = 0x4035E00000000000;
LABEL_13:
    v23 = *&v22;
    goto LABEL_14;
  }

  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  v23 = *&qword_27E184EE0 * 0.21875;
LABEL_14:
  v24 = v63;
  v25 = (v63 + *(v12 + 36));
  v26 = v56;
  v27 = *(v56 + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_23B7BC010();
  v30 = *(*(v29 - 8) + 104);
  v30(v25 + v27, v28, v29);
  *v25 = v23;
  v25[1] = v23;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181438) + 36)) = 256;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813F8);
  (*(*(v31 - 8) + 16))(v24, v57, v31);
  v32 = v55;
  v30(v55 + *(v26 + 20), v28, v29);
  *v32 = v23;
  v32[1] = v23;
  v33 = v58;
  sub_23B797734(v58);
  v34 = v59;
  v35 = v61;
  (*(v3 + 104))(v59, *MEMORY[0x277CDF3D0], v61);
  LOBYTE(v28) = sub_23B7BBCD0();
  v36 = *(v3 + 8);
  v36(v34, v35);
  v36(v33, v35);
  if (v28)
  {
    if (qword_27E180838 != -1)
    {
      swift_once();
    }

    v37 = qword_27E184ED8;
  }

  else
  {
    v38 = [objc_opt_self() secondarySystemFillColor];
  }

  v39 = sub_23B7BC540();
  sub_23B7BBD00();
  sub_23B799530(v32, v11);
  v40 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181478) + 36)];
  v41 = v65;
  *v40 = v64;
  *(v40 + 1) = v41;
  *(v40 + 4) = v66;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181480);
  *&v11[*(v42 + 52)] = v39;
  *&v11[*(v42 + 56)] = 256;
  v43 = sub_23B7BC6A0();
  v45 = v44;
  sub_23B799594(v32, MEMORY[0x277CDFC08]);
  v46 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181488) + 36)];
  *v46 = v43;
  v46[1] = v45;
  v47 = sub_23B7BC6A0();
  v49 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1813E0);
  v51 = v62;
  v52 = v62 + *(v50 + 36);
  sub_23B782748(v11, v52, &qword_27E181470);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181448) + 36));
  *v53 = v47;
  v53[1] = v49;
  return sub_23B782748(v63, v51, &qword_27E181428);
}

uint64_t sub_23B798D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B798E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_23B798F18()
{
  sub_23B798FFC();
  if (v0 <= 0x3F)
  {
    sub_23B799054(319, &qword_27E1813A0);
    if (v1 <= 0x3F)
    {
      sub_23B799054(319, &qword_27E1813A8);
      if (v2 <= 0x3F)
      {
        sub_23B799054(319, &qword_27E180988);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B798FFC()
{
  if (!qword_27E180C08)
  {
    sub_23B7BBCE0();
    v0 = sub_23B7BBCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180C08);
    }
  }
}

void sub_23B799054(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23B7BBCF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_23B7990BC()
{
  result = qword_27E181408;
  if (!qword_27E181408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813E8);
    sub_23B799174();
    sub_23B799480(&qword_27E181468, &qword_27E1813B8, &unk_23B7BEC20, sub_23B799200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181408);
  }

  return result;
}

unint64_t sub_23B799174()
{
  result = qword_27E181410;
  if (!qword_27E181410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813D8);
    sub_23B799200();
    sub_23B79939C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181410);
  }

  return result;
}

unint64_t sub_23B799200()
{
  result = qword_27E181418;
  if (!qword_27E181418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813E0);
    sub_23B7992B8();
    sub_23B7826A0(&qword_27E181440, &qword_27E181448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181418);
  }

  return result;
}

unint64_t sub_23B7992B8()
{
  result = qword_27E181420;
  if (!qword_27E181420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181428);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
    sub_23B7826A0(&qword_27E181430, &qword_27E181438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181420);
  }

  return result;
}

unint64_t sub_23B79939C()
{
  result = qword_27E181450;
  if (!qword_27E181450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1813C0);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
    sub_23B7826A0(&qword_27E181458, &qword_27E181460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181450);
  }

  return result;
}

uint64_t sub_23B799480(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_23B7826A0(&qword_27E181400, &qword_27E1813F8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B799530(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B7BBEA0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B799594(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B79965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B799738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for Style.CapsuleButtonStyle()
{
  result = qword_27E1814A0;
  if (!qword_27E1814A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B79984C()
{
  sub_23B798FFC();
  if (v0 <= 0x3F)
  {
    sub_23B7998F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B7998F4()
{
  if (!qword_27E1813A0)
  {
    v0 = sub_23B7BBCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1813A0);
    }
  }
}

void sub_23B799980()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetWidth(v11);
  }
}

void sub_23B799A78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 16.0;
  if (v1 == 1)
  {
    v2 = 24.0;
  }

  qword_27E184EE8 = *&v2;
}

uint64_t sub_23B799AE4()
{
  v0 = sub_23B7BC4C0();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_23B7BC530();
  qword_27E184EF0 = result;
  return result;
}

uint64_t sub_23B799BC4()
{
  sub_23B7BC4D0();
  v0 = sub_23B7BC4E0();

  qword_27E184EF8 = v0;
  return result;
}

uint64_t sub_23B799C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v96 = a1;
  v97 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814B0);
  MEMORY[0x28223BE20](v84);
  v83 = &v79 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814B8);
  MEMORY[0x28223BE20](v82);
  *&v87 = &v79 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814C0);
  MEMORY[0x28223BE20](v86);
  v91 = &v79 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814C8);
  MEMORY[0x28223BE20](v89);
  v90 = &v79 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814D0);
  MEMORY[0x28223BE20](v88);
  v92 = &v79 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814D8);
  MEMORY[0x28223BE20](v85);
  v94 = &v79 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814E0);
  MEMORY[0x28223BE20](v93);
  v95 = &v79 - v10;
  v11 = sub_23B7BBCE0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = sub_23B7BBFA0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v81 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Style.CapsuleButtonStyle();
  v22 = v21;
  v80 = *(v2 + *(v21 + 24));
  if (v80 == 1)
  {
    v23 = v2 + *(v21 + 20);
    v24 = *v23;
    if (*(v23 + 8) == 1)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v29 = sub_23B7BC4B0();
      v27 = v87;
      goto LABEL_15;
    }

    sub_23B7BCA10();
    v79 = v19;
    v30 = sub_23B7BC210();
    v19 = v79;
    sub_23B7BBB00();

    v31 = v81;
    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v24, 0);
    (*(v19 + 8))(v31, v18);
    if (v98 == 1)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  sub_23B79A7FC(&qword_27E180DC0, MEMORY[0x277CDF3E0], v17);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3D0], v11);
  v25 = sub_23B7BBCD0();
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  if (v25)
  {
    v27 = v87;
    if (qword_27E180850 != -1)
    {
      swift_once();
    }

    v28 = &qword_27E184EF0;
  }

  else
  {
    v27 = v87;
    if (qword_27E180858 != -1)
    {
      swift_once();
    }

    v28 = &qword_27E184EF8;
  }

  v29 = *v28;

  if (!v80)
  {
LABEL_17:
    v34 = v3 + *(v22 + 20);
    v35 = *v34;
    if (*(v34 + 8) == 1)
    {
      if ((v35 & 1) == 0)
      {
LABEL_19:
        v36 = sub_23B7BC520();
LABEL_22:
        v41 = v36;
        goto LABEL_25;
      }
    }

    else
    {

      sub_23B7BCA10();
      v37 = v19;
      v38 = v3;
      v39 = sub_23B7BC210();
      sub_23B7BBB00();

      v3 = v38;
      v40 = v81;
      sub_23B7BBF90();
      swift_getAtKeyPath();
      sub_23B779D74(v35, 0);
      (*(v37 + 8))(v40, v18);
      if (v98 != 1)
      {
        goto LABEL_19;
      }
    }

    v36 = sub_23B7BC4B0();
    goto LABEL_22;
  }

LABEL_15:
  v32 = v3 + *(v22 + 20);
  v33 = *v32;
  if (*(v32 + 8) == 1)
  {
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    sub_23B7BCA10();
    v42 = v19;
    v43 = v3;
    v44 = sub_23B7BC210();
    sub_23B7BBB00();

    v3 = v43;
    v19 = v42;
    v45 = v81;
    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v33, 0);
    (*(v42 + 8))(v45, v18);
    if (v98 != 1)
    {
      goto LABEL_17;
    }
  }

  v41 = sub_23B7BC4D0();
LABEL_25:
  v46 = v83;
  sub_23B7BC110();
  v47 = sub_23B7BC260();
  KeyPath = swift_getKeyPath();
  v49 = (v46 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = v47;
  sub_23B7BC290();
  sub_23B79AAD4();
  sub_23B7BC3B0();
  sub_23B79ABE4(v46);
  v50 = (v3 + *(v22 + 28));
  v51 = v50[1];
  v96 = *v50;
  v87 = v51;
  v52 = sub_23B7BC220();
  v53 = v27 + *(v82 + 36);
  *v53 = v52;
  *(v53 + 24) = v87;
  *(v53 + 8) = v96;
  *(v53 + 40) = 0;
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v54 = v91;
  sub_23B782748(v27, v91, &qword_27E1814B8);
  v55 = (v54 + *(v86 + 36));
  v56 = v103;
  v55[4] = v102;
  v55[5] = v56;
  v55[6] = v104;
  v57 = v99;
  *v55 = v98;
  v55[1] = v57;
  v58 = v101;
  v55[2] = v100;
  v55[3] = v58;
  v59 = v90;
  sub_23B782748(v54, v90, &qword_27E1814C0);
  *(v59 + *(v89 + 36)) = v41;

  LOBYTE(v54) = sub_23B7BC220();
  v60 = v92;
  sub_23B782748(v59, v92, &qword_27E1814C8);
  v61 = v60 + *(v88 + 36);
  *v61 = v29;
  *(v61 + 8) = v54;
  v62 = v94;
  v63 = &v94[*(v85 + 36)];
  v64 = *MEMORY[0x277CE0118];
  v65 = sub_23B7BC010();
  (*(*(v65 - 8) + 104))(v63, v64, v65);
  *&v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814F8) + 36)] = 256;
  sub_23B782748(v60, v62, &qword_27E1814D0);

  if (sub_23B7BC120())
  {
    v66 = 0.8;
  }

  else
  {
    v66 = 1.0;
  }

  sub_23B7BC730();
  v68 = v67;
  v70 = v69;
  v71 = v62;
  v72 = v95;
  sub_23B782748(v71, v95, &qword_27E1814D8);
  v73 = v72 + *(v93 + 36);
  *v73 = v66;
  *(v73 + 8) = v66;
  *(v73 + 16) = v68;
  *(v73 + 24) = v70;
  v74 = sub_23B7BC6E0();
  v75 = sub_23B7BC120();

  v76 = v97;
  sub_23B782748(v72, v97, &qword_27E1814E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181500);
  v78 = v76 + *(result + 36);
  *v78 = v74;
  *(v78 + 8) = v75 & 1;
  return result;
}

uint64_t sub_23B79A7FC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_23B7BBFA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_23B779B38(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_23B7BCA10();
    v17 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_23B79AA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF30();
  *a1 = result;
  return result;
}

uint64_t sub_23B79AA50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF30();
  *a1 = result;
  return result;
}

unint64_t sub_23B79AAD4()
{
  result = qword_27E1814E8;
  if (!qword_27E1814E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814B0);
    sub_23B79AB8C();
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1814E8);
  }

  return result;
}

unint64_t sub_23B79AB8C()
{
  result = qword_27E1814F0;
  if (!qword_27E1814F0)
  {
    sub_23B7BC100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1814F0);
  }

  return result;
}

uint64_t sub_23B79ABE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1814B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B79AC50()
{
  result = qword_27E181510;
  if (!qword_27E181510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181500);
    sub_23B79AD08();
    sub_23B7826A0(&qword_27E181570, &qword_27E181578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181510);
  }

  return result;
}

unint64_t sub_23B79AD08()
{
  result = qword_27E181518;
  if (!qword_27E181518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814E0);
    sub_23B79AD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181518);
  }

  return result;
}

unint64_t sub_23B79AD94()
{
  result = qword_27E181520;
  if (!qword_27E181520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814D8);
    sub_23B79AE4C();
    sub_23B7826A0(&qword_27E181568, &qword_27E1814F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181520);
  }

  return result;
}

unint64_t sub_23B79AE4C()
{
  result = qword_27E181528;
  if (!qword_27E181528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814D0);
    sub_23B79AF04();
    sub_23B7826A0(&qword_27E181558, &qword_27E181560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181528);
  }

  return result;
}

unint64_t sub_23B79AF04()
{
  result = qword_27E181530;
  if (!qword_27E181530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814C8);
    sub_23B79AFBC();
    sub_23B7826A0(&qword_27E181548, &qword_27E181550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181530);
  }

  return result;
}

unint64_t sub_23B79AFBC()
{
  result = qword_27E181538;
  if (!qword_27E181538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814C0);
    sub_23B79B048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181538);
  }

  return result;
}

unint64_t sub_23B79B048()
{
  result = qword_27E181540;
  if (!qword_27E181540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1814B0);
    sub_23B79AAD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181540);
  }

  return result;
}

_ManagedAppDistribution_SwiftUI::ManagedContentStyle::Style_optional __swiftcall ManagedContentStyle.Style.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23B79B170()
{
  result = qword_27E181580;
  if (!qword_27E181580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181580);
  }

  return result;
}

uint64_t sub_23B79B1C4()
{
  v1 = *v0;
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](v1);
  return sub_23B7BCD10();
}

uint64_t sub_23B79B238()
{
  v1 = *v0;
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](v1);
  return sub_23B7BCD10();
}

uint64_t sub_23B79B360(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B79B3F4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B79B4C4()
{
  result = qword_27E181588;
  if (!qword_27E181588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181588);
  }

  return result;
}

double static ManagedContentOfferState.notInstalled.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_23B7BE650;
  *(a1 + 16) = 2;
  return result;
}

uint64_t ManagedContentOfferState.init(appState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BB980();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_23B7BB990();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277CD49D8])
  {
    v30 = a2;
    (*(v12 + 96))(v14, v11);
    v16 = swift_projectBox();
    v17 = *(v5 + 16);
    v17(v10, v16, v4);
    v17(v8, v10, v4);
    v18 = (*(v5 + 88))(v8, v4);
    if (v18 == *MEMORY[0x277CD49B8])
    {
      (*(v12 + 8))(a1, v11);
      (*(v5 + 8))(v10, v4);

      v20 = 0;
      v21 = 0;
      v22 = 2;
    }

    else if (v18 == *MEMORY[0x277CD49A8])
    {
      (*(v12 + 8))(a1, v11);
      (*(v5 + 8))(v10, v4);

      v21 = 0;
      v22 = 2;
      v20 = 1;
    }

    else if (v18 == *MEMORY[0x277CD49B0])
    {
      v20 = sub_23B7A1250();
      v21 = v24;
      (*(v12 + 8))(a1, v11);
      (*(v5 + 8))(v10, v4);

      v22 = 1;
    }

    else
    {
      (*(v12 + 8))(a1, v11);
      v25 = *(v5 + 8);
      v25(v10, v4);
      v25(v8, v4);

      v21 = 0;
      v22 = 2;
      v20 = 3;
    }

    a2 = v30;
  }

  else if (v15 == *MEMORY[0x277CD49A0] || v15 == *MEMORY[0x277CD4998])
  {
    (*(v12 + 8))(a1, v11);
    (*(v12 + 96))(v14, v11);
    v20 = *(*v14 + 16);

    v21 = 0;
    v22 = 0;
  }

  else
  {
    if (v15 == *MEMORY[0x277CD49C0])
    {
      v23 = *(v12 + 8);
      v23(a1, v11);
      result = (v23)(v14, v11);
    }

    else
    {
      if (v15 == *MEMORY[0x277CD49E0])
      {
        result = (*(v12 + 8))(a1, v11);
        v21 = 0;
        v22 = 2;
        v20 = 4;
        goto LABEL_18;
      }

      if (v15 == *MEMORY[0x277CD49C8])
      {
        result = (*(v12 + 8))(a1, v11);
        v21 = 0;
        v20 = 2;
        v22 = 2;
        goto LABEL_18;
      }

      v26 = *MEMORY[0x277CD49D0];
      v27 = *(v12 + 8);
      v28 = v15;
      result = v27(a1, v11);
      if (v28 != v26)
      {
        result = v27(v14, v11);
        v21 = 0;
        v22 = 2;
        v20 = 3;
        goto LABEL_18;
      }
    }

    v20 = 0;
    v22 = 0;
    v21 = 1;
  }

LABEL_18:
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  return result;
}

void static ManagedContentOfferState.neverInstalled.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

double static ManagedContentOfferState.installed.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_23B7BEF20;
  *(a1 + 16) = 2;
  return result;
}

double static ManagedContentOfferState.noninteractive.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_23B7BE660;
  *(a1 + 16) = 2;
  return result;
}

uint64_t static ManagedContentOfferState.installing(progress:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static ManagedContentOfferState.custom(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

double static ManagedContentOfferState.unmanaged.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 4;
  *a1 = xmmword_23B7BEF30;
  *(a1 + 16) = 2;
  return result;
}

uint64_t static ManagedContentOfferState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_23B781F9C(v11, v2, v5);
  sub_23B781F9C(v3, v4, v6);
  LOBYTE(v3) = _s31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_23B776230(v8, v9, v10);
  sub_23B776230(v11, v12, v13);
  return v3 & 1;
}

uint64_t ManagedContentOfferState.hashValue.getter()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)();
  return sub_23B7BCD10();
}

uint64_t sub_23B79BC00()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)();
  return sub_23B7BCD10();
}

uint64_t sub_23B79BC98()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)();
  return sub_23B7BCD10();
}

uint64_t sub_23B79BCF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_23B781F9C(v11, v2, v5);
  sub_23B781F9C(v3, v4, v6);
  LOBYTE(v3) = _s31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_23B776230(v8, v9, v10);
  sub_23B776230(v11, v12, v13);
  return v3 & 1;
}

uint64_t ManagedContentOfferState.Offer.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x23EEA8F80](4);

      return sub_23B7BC830();
    }

    else
    {
      if (v1 <= 1)
      {
        v4 = (v1 | v2) != 0;
      }

      else if (v1 ^ 2 | v2)
      {
        if (v1 ^ 3 | v2)
        {
          v4 = 6;
        }

        else
        {
          v4 = 5;
        }
      }

      else
      {
        v4 = 2;
      }

      return MEMORY[0x23EEA8F80](v4);
    }
  }

  else
  {
    MEMORY[0x23EEA8F80](3);
    if (v2)
    {
      return sub_23B7BCCF0();
    }

    else
    {
      sub_23B7BCCF0();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x23EEA8FA0](v5);
    }
  }
}

uint64_t ManagedContentOfferState.Offer.hashValue.getter()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)();
  return sub_23B7BCD10();
}

uint64_t sub_23B79BED4()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)();
  return sub_23B7BCD10();
}

uint64_t sub_23B79BF2C()
{
  sub_23B7BCCD0();
  ManagedContentOfferState.Offer.hash(into:)();
  return sub_23B7BCD10();
}

uint64_t _s31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_23B776230(*a1, v3, 0);
      sub_23B776230(v5, v6, 0);
      if (v3)
      {
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v6 & 1) != 0 || *&v2 != *&v5)
      {
        return 0;
      }

      return 1;
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        if (v2 ^ 3 | v3)
        {
          if (v7 != 2 || v5 != 4 || v6)
          {
            goto LABEL_21;
          }

          sub_23B776230(*a1, v3, 2);
          v11 = 4;
        }

        else
        {
          if (v7 != 2 || v5 != 3 || v6)
          {
            goto LABEL_21;
          }

          sub_23B776230(*a1, v3, 2);
          v11 = 3;
        }
      }

      else
      {
        if (v7 != 2 || v5 != 2 || v6)
        {
          goto LABEL_21;
        }

        sub_23B776230(*a1, v3, 2);
        v11 = 2;
      }

LABEL_37:
      sub_23B776230(v11, 0, 2);
      return 1;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && !v6)
      {
        sub_23B776230(*a1, v3, 2);
        v12 = 1;
        sub_23B776230(1, 0, 2);
        return v12;
      }

      goto LABEL_21;
    }

    if (v7 == 2 && !(v6 | v5))
    {
      sub_23B776230(*a1, v3, 2);
      v11 = 0;
      goto LABEL_37;
    }

LABEL_21:
    sub_23B781F9C(v5, v6, v7);
    sub_23B776230(v2, v3, v4);
    sub_23B776230(v5, v6, v7);
    return 0;
  }

  if (v7 != 1)
  {

    goto LABEL_21;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_23B7BCC70();
    sub_23B781F9C(v5, v6, 1);
    sub_23B781F9C(v2, v3, 1);
    sub_23B776230(v2, v3, 1);
    sub_23B776230(v5, v6, 1);
    return v9 & 1;
  }

  v12 = 1;
  sub_23B781F9C(*a1, v3, 1);
  sub_23B781F9C(v2, v3, 1);
  sub_23B776230(v2, v3, 1);
  sub_23B776230(v2, v3, 1);
  return v12;
}

unint64_t sub_23B79C238()
{
  result = qword_27E181590;
  if (!qword_27E181590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181590);
  }

  return result;
}

unint64_t sub_23B79C290()
{
  result = qword_27E181598;
  if (!qword_27E181598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181598);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_31_ManagedAppDistribution_SwiftUI0A17ContentOfferStateV0G0O(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B79C328(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B79C374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B79C3B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23B79C400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B79C48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23B79C528()
{
  sub_23B79C594();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B79C594()
{
  if (!qword_27E1815B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1815C0);
    v0 = sub_23B7BC680();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1815B8);
    }
  }
}

uint64_t sub_23B79C60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7BB960();
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

uint64_t sub_23B79C6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B7BB960();
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

uint64_t sub_23B79C7B4()
{
  result = sub_23B7BB960();
  if (v1 <= 0x3F)
  {
    result = sub_23B7BCAD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B79C86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  *(v5 + 208) = a1;
  *(v5 + 216) = a2;
  v7 = sub_23B7BCAA0();
  *(v5 + 240) = v7;
  *(v5 + 248) = *(v7 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v8 = sub_23B7BB960();
  *(v5 + 272) = v8;
  *(v5 + 280) = *(v8 - 8);
  *(v5 + 288) = swift_task_alloc();
  sub_23B7BB930();
  *(v5 + 296) = swift_task_alloc();
  v9 = sub_23B7BB950();
  *(v5 + 304) = v9;
  *(v5 + 312) = *(v9 - 8);
  *(v5 + 320) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a3;
  v12 = a3[1];
  *(v5 + 328) = v10;
  *(v5 + 336) = v11;
  *(v5 + 344) = v12;
  *(v5 + 488) = *(a3 + 16);
  v13 = *(a3 + 5);
  *(v5 + 352) = *(a3 + 3);
  *(v5 + 368) = v13;

  return MEMORY[0x2822009F8](sub_23B79CA4C, 0, 0);
}

uint64_t sub_23B79CA4C()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[27];
  v4 = *(v0[35] + 16);
  v4(v0[26], v3, v2);
  v4(v1, v3, v2);
  sub_23B7BB920();
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_23B79CB58;
  v6 = v0[41];
  v7 = v0[37];

  return MEMORY[0x282116828](v6, v7);
}

uint64_t sub_23B79CB58()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);
    v3 = *(v2 + 360);

    sub_23B779DD4(v4, v3);
    v5 = sub_23B79D808;
  }

  else
  {
    v5 = sub_23B79CCA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23B79CCA0()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  sub_23B7BCA90();
  sub_23B7BCAD0();
  (*(v4 + 16))(v1, v2, v3);
  (*(v8 + 16))(v6, v5, v7);
  v9 = swift_task_alloc();
  v0[50] = v9;
  *v9 = v0;
  v9[1] = sub_23B79CDEC;
  v10 = v0[40];
  v11 = v0[32];

  return MEMORY[0x282116AA8](v10, v11);
}

uint64_t sub_23B79CDEC(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = v3[44];
    v4 = v3[45];

    sub_23B779DD4(v5, v4);
    v6 = sub_23B79D8E8;
  }

  else
  {
    v6 = sub_23B79CF34;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23B79CF34()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 208);
  *(v3 + *(type metadata accessor for ExtensionHostView.Session(0) + 20)) = v1;

  v4 = sub_23B7BCAB0();
  *(v0 + 424) = v4;
  if (v2)
  {
    v6 = *(v0 + 352);
    v5 = *(v0 + 360);
    v51 = *(v0 + 328);
    v7 = *(v0 + 312);
    v8 = *(v0 + 280);
    v43 = *(v0 + 272);
    v47 = *(v0 + 264);
    v49 = *(v0 + 304);
    v9 = *(v0 + 248);
    v44 = *(v0 + 240);
    v10 = *(v0 + 216);

    sub_23B779DD4(v6, v5);

    v11 = *(v8 + 8);
    v11(v10, v43);
    (*(v9 + 8))(v47, v44);
    (*(v7 + 8))(v51, v49);
    v11(*(v0 + 208), *(v0 + 272));

    v24 = *(v0 + 8);
LABEL_7:

    return v24();
  }

  v12 = v4;
  v54 = *(v0 + 488);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v53 = *(v0 + 352);
  v50 = *(v0 + 368);

  v15 = [objc_opt_self() interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  [v12 activate];
  v16 = swift_allocObject();
  *(v0 + 432) = v16;
  *(v16 + 16) = 1;
  *(v0 + 104) = sub_23B79EA9C;
  *(v0 + 112) = v16;
  *(v0 + 72) = MEMORY[0x277D85DD0];
  *(v0 + 80) = 1107296256;
  *(v0 + 88) = sub_23B778800;
  *(v0 + 96) = &block_descriptor_1;
  v17 = _Block_copy((v0 + 72));
  v52 = v16;

  v18 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_23B7BCB40();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809F0);
  v19 = swift_dynamicCast();
  *(v0 + 489) = v19;
  v20 = *(v0 + 200);
  *(v0 + 440) = v20;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_23B7BB7B0();
  swift_allocObject();
  sub_23B7BB7A0();
  *(v0 + 16) = v14;
  *(v0 + 24) = v13;
  *(v0 + 32) = v54;
  *(v0 + 56) = v50;
  *(v0 + 40) = v53;
  sub_23B779D80();
  v22 = sub_23B7BB790();
  *(v0 + 448) = v22;
  *(v0 + 456) = v23;
  v48 = *(v0 + 360);
  v45 = *(v0 + 352);
  v26 = v22;
  v27 = v23;

  sub_23B779DD4(v45, v48);
  if (!v21)
  {
    sub_23B779E1C(v26, v27);
    v34 = *(v0 + 424);
    v35 = *(v0 + 328);
    v36 = *(v0 + 312);
    v46 = *(v0 + 304);
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v39 = *(v0 + 264);
    v40 = *(v0 + 240);
    v41 = *(v0 + 248);
    v42 = *(v0 + 216);

    (*(v37 + 8))(v42, v38);
    (*(v41 + 8))(v39, v40);
    (*(v36 + 8))(v35, v46);

    v24 = *(v0 + 8);
    goto LABEL_7;
  }

  v29 = *(v0 + 224);
  v28 = *(v0 + 232);
  swift_unknownObjectRetain();
  *(v0 + 464) = sub_23B7BB820();
  v30 = swift_allocObject();
  v30[2] = v52;
  v30[3] = v12;
  v30[4] = v29;
  v30[5] = v28;
  *(v0 + 152) = sub_23B79EB04;
  *(v0 + 160) = v30;
  *(v0 + 120) = MEMORY[0x277D85DD0];
  *(v0 + 128) = 1107296256;
  *(v0 + 136) = sub_23B778C9C;
  *(v0 + 144) = &block_descriptor_19;
  *(v0 + 472) = _Block_copy((v0 + 120));

  v31 = v12;

  sub_23B7BC900();
  *(v0 + 480) = sub_23B7BC8F0();
  v33 = sub_23B7BC8D0();

  return MEMORY[0x2822009F8](sub_23B79D600, v33, v32);
}

uint64_t sub_23B79D600()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);
  v4 = *(v0 + 489);

  if (!v4)
  {
    v3 = 0;
  }

  [v3 setWithManagedAppViewData:v2 reply:v1];
  swift_unknownObjectRelease();
  _Block_release(v1);

  return MEMORY[0x2822009F8](sub_23B79D6B0, 0, 0);
}

uint64_t sub_23B79D6B0()
{
  sub_23B779E1C(v0[56], v0[57]);
  swift_unknownObjectRelease();
  v1 = v0[53];
  v2 = v0[41];
  v3 = v0[39];
  v12 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[27];

  (*(v4 + 8))(v9, v5);
  (*(v8 + 8))(v6, v7);
  (*(v3 + 8))(v2, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23B79D808()
{
  v1 = v0[35];

  v2 = *(v1 + 8);
  v3 = v0[34];
  v4 = v0[26];
  v2(v0[27], v3);
  v2(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B79D8E8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[27];

  v8 = *(v3 + 8);
  v8(v7, v2);
  (*(v6 + 8))(v4, v5);
  v9 = v0[34];
  v10 = v0[26];
  (*(v1 + 8))(v0[41], v0[38]);
  v8(v10, v9);

  v11 = v0[1];

  return v11();
}

void sub_23B79DA14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v4 = sub_23B7BBB30();
    __swift_project_value_buffer(v4, qword_27E184F18);
    v5 = a1;
    v6 = sub_23B7BBB10();
    v7 = sub_23B7BCA00();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 134218498;
      v10 = sub_23B7BB7D0();
      v11 = [v10 code];

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_23B7BB7D0();
      v13 = [v12 domain];

      v14 = sub_23B7BC7F0();
      v16 = v15;

      v17 = sub_23B77C020(v14, v16, &v24);

      *(v8 + 14) = v17;
      *(v8 + 22) = 2080;
      v18 = sub_23B7BB7D0();
      v19 = [v18 userInfo];

      sub_23B7BC780();
      v20 = sub_23B7BC790();
      v22 = v21;

      v23 = sub_23B77C020(v20, v22, &v24);

      *(v8 + 24) = v23;
      _os_log_impl(&dword_23B774000, v6, v7, "Failed to create proxy to extension. %ld %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEA96D0](v9, -1, -1);
      MEMORY[0x23EEA96D0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_23B79DCB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v10 = sub_23B7BBB30();
  __swift_project_value_buffer(v10, qword_27E184F18);
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA20();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B774000, v11, v12, "Set managed app", v13, 2u);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  swift_beginAccess();
  *(a3 + 16) = 0;
  [a4 invalidate];
  return a5(a1, a2);
}

uint64_t sub_23B79DE04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ExtensionHostView.Session(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = a1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815A0);
    MEMORY[0x23EEA8900](v10);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      return sub_23B7826E8(v4, &qword_27E1815C0);
    }

    else
    {
      sub_23B79E9CC(v4, v8);

      sub_23B7BCAE0();

      return sub_23B79EA30(v8);
    }
  }

  else
  {
    result = sub_23B7BCBA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_23B79DFFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8);
  __swift_allocate_value_buffer(v0, qword_27E184F00);
  v1 = __swift_project_value_buffer(v0, qword_27E184F00);
  v2 = sub_23B7BB960();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_23B79E09C(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_23B7BB910();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_23B7BC900();
  v1[15] = sub_23B7BC8F0();
  v4 = sub_23B7BC8D0();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_23B79E1D8, v4, v3);
}

uint64_t sub_23B79E1D8()
{
  if (qword_27E180860 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = __swift_project_value_buffer(v0[12], qword_27E184F00);
  v0[18] = v2;
  swift_beginAccess();
  sub_23B79EB10(v2, v1);
  v3 = sub_23B7BB960();
  v0[19] = v3;
  v4 = *(v3 - 8);
  v0[20] = v4;
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23B7826E8(v0[14], &qword_27E1815E8);
    dyld_get_active_platform();
    sub_23B7BB8C0();
    sub_23B7BB900();
    swift_allocObject();
    v0[21] = sub_23B7BB8F0();
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_23B79E494;
    v10 = v0[11];

    return MEMORY[0x2821167C0](v10);
  }

  else
  {
    v5 = v0[14];
    v6 = v0[8];

    (*(v4 + 32))(v6, v5, v3);
    (*(v4 + 56))(v6, 0, 1, v3);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23B79E494()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_23B79E750;
  }

  else
  {
    v5 = sub_23B79E5D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B79E5D0()
{

  v1 = sub_23B7BB8E0();
  if (*(v1 + 16))
  {
    (*(v0[20] + 16))(v0[13], v1 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)), v0[19]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[13];
  v7 = v0[10];
  v12 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  (*(v3 + 56))(v6, v2, 1, v4);
  swift_beginAccess();
  sub_23B79EB80(v6, v5);
  swift_endAccess();
  sub_23B79EB10(v5, v9);

  (*(v7 + 8))(v12, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23B79E750()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id sub_23B79E804()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC5E68]);

  return [v0 init];
}

uint64_t sub_23B79E844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B79E988(&qword_27E1815E0);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B79E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B79E988(&qword_27E1815E0);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B79E944()
{
  sub_23B79E988(&qword_27E1815E0);
  sub_23B7BC1C0();
  __break(1u);
}

uint64_t sub_23B79E988(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B79E9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionHostView.Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B79EA30(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionHostView.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B79EABC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B79EB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B79EB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 RemoteWrapperView.init(configuration:height:offerFrame:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v33 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v20 = type metadata accessor for ExtensionHostView.Session(0);
  v21 = *(*(v20 - 8) + 56);
  v22 = *(a1 + 3);
  v31 = *(a1 + 5);
  v32 = v22;
  v21(v16, 1, 1, v20);
  sub_23B79EE10(v16, v14);
  sub_23B7BC560();
  sub_23B7826E8(v16, &qword_27E1815C0);
  v23 = type metadata accessor for RemoteWrapperView();
  v24 = a5 + v23[7];
  *v24 = v17;
  *(v24 + 8) = v18;
  *(v24 + 16) = v19;
  v25 = v32;
  *(v24 + 40) = v31;
  *(v24 + 24) = v25;
  v26 = a5 + v23[5];
  v27 = v33;
  *v26 = a2;
  *(v26 + 8) = v27;
  *(v26 + 16) = a6;
  v28 = a5 + v23[6];
  v29 = *(a4 + 16);
  *v28 = *a4;
  *(v28 + 16) = v29;
  result = *(a4 + 32);
  *(v28 + 32) = result;
  return result;
}

uint64_t sub_23B79EE10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RemoteWrapperView()
{
  result = qword_27E181600;
  if (!qword_27E181600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteWrapperView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemoteWrapperView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);
  sub_23B7BC590();
  sub_23B79FF74(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23B79FFDC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F8) + 36));
  sub_23B7BBDE0();
  result = sub_23B7BC910();
  *v8 = &unk_23B7BF288;
  v8[1] = v7;
  return result;
}

uint64_t sub_23B79F00C(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for RemoteWrapperView();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v1[12] = *(v3 + 64);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815E8);
  v4 = swift_task_alloc();
  v1[17] = v4;
  v5 = sub_23B7BB960();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_23B7BC900();
  v1[23] = sub_23B7BC8F0();
  v6 = swift_task_alloc();
  v1[24] = v6;
  *v6 = v1;
  v6[1] = sub_23B79F214;

  return sub_23B79E09C(v4);
}

uint64_t sub_23B79F214()
{
  v2 = *v1;
  v2[25] = v0;

  v4 = sub_23B7BC8D0();
  v2[26] = v4;
  v2[27] = v3;
  if (v0)
  {
    v5 = sub_23B79F92C;
  }

  else
  {
    v5 = sub_23B79F374;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B79F374()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    v4 = &qword_27E1815E8;
    v5 = v3;
LABEL_8:
    sub_23B7826E8(v5, v4);

    v31 = *(v0 + 8);

    return v31();
  }

  v6 = *(v0 + 128);
  (*(v2 + 32))(*(v0 + 168), v3, v1);
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);
  sub_23B7BC570();
  v7 = type metadata accessor for ExtensionHostView.Session(0);
  *(v0 + 232) = v7;
  v8 = *(v7 - 8);
  *(v0 + 240) = v8;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v30 = *(v0 + 128);
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));

    v4 = &qword_27E1815C0;
    v5 = v30;
    goto LABEL_8;
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  sub_23B7826E8(*(v0 + 128), &qword_27E1815C0);
  (*(v12 + 16))(v10, v9, v11);
  v17 = v16 + *(v14 + 28);
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v21 = *(v17 + 32);
  v22 = *(v17 + 40);
  v23 = *(v17 + 48);
  *(v0 + 16) = *v17;
  *(v0 + 24) = v18;
  *(v0 + 32) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = v21;
  *(v0 + 56) = v22;
  *(v0 + 64) = v23;
  sub_23B79FF74(v16, v13);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_23B79FFDC(v13, v25 + v24);

  sub_23B77CCF4(v20, v21);
  v26 = swift_task_alloc();
  *(v0 + 248) = v26;
  *v26 = v0;
  v26[1] = sub_23B79F6D4;
  v27 = *(v0 + 160);
  v28 = *(v0 + 120);

  return sub_23B79C86C(v28, v27, (v0 + 16), sub_23B7A0F20, v25);
}

uint64_t sub_23B79F6D4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_23B79FC40;
  }

  else
  {
    v5 = sub_23B79F7E8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B79F7E8()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[14];
  v6 = v0[15];

  (*(v2 + 56))(v6, 0, 1, v1);
  sub_23B79EE10(v6, v7);
  sub_23B7BC580();
  sub_23B7826E8(v6, &qword_27E1815C0);
  (*(v5 + 8))(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23B79F92C()
{
  v25 = v0;

  v1 = *(v0 + 200);
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v2 = sub_23B7BBB30();
  __swift_project_value_buffer(v2, qword_27E184F18);
  v3 = v1;
  v4 = sub_23B7BBB10();
  v5 = sub_23B7BCA00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v6 = 134218498;
    v7 = sub_23B7BB7D0();
    v8 = [v7 code];

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = sub_23B7BB7D0();
    v10 = [v9 domain];

    v11 = sub_23B7BC7F0();
    v13 = v12;

    v14 = sub_23B77C020(v11, v13, &v24);

    *(v6 + 14) = v14;
    *(v6 + 22) = 2080;
    v15 = sub_23B7BB7D0();
    v16 = [v15 userInfo];

    sub_23B7BC780();
    v17 = sub_23B7BC790();
    v19 = v18;

    v20 = sub_23B77C020(v17, v19, &v24);

    *(v6 + 24) = v20;
    _os_log_impl(&dword_23B774000, v4, v5, "Failed to create session. %ld %s %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v23, -1, -1);
    MEMORY[0x23EEA96D0](v6, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23B79FC40()
{
  v28 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);
  v4 = v0[32];
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v5 = sub_23B7BBB30();
  __swift_project_value_buffer(v5, qword_27E184F18);
  v6 = v4;
  v7 = sub_23B7BBB10();
  v8 = sub_23B7BCA00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 134218498;
    v10 = sub_23B7BB7D0();
    v11 = [v10 code];

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = sub_23B7BB7D0();
    v13 = [v12 domain];

    v14 = sub_23B7BC7F0();
    v16 = v15;

    v17 = sub_23B77C020(v14, v16, &v27);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    v18 = sub_23B7BB7D0();
    v19 = [v18 userInfo];

    sub_23B7BC780();
    v20 = sub_23B7BC790();
    v22 = v21;

    v23 = sub_23B77C020(v20, v22, &v27);

    *(v9 + 24) = v23;
    _os_log_impl(&dword_23B774000, v7, v8, "Failed to create session. %ld %s %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v26, -1, -1);
    MEMORY[0x23EEA96D0](v9, -1, -1);
  }

  else
  {
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_23B79FF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWrapperView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B79FFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWrapperView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7A0040()
{
  v2 = *(type metadata accessor for RemoteWrapperView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B797590;

  return sub_23B79F00C(v0 + v3);
}

uint64_t sub_23B7A0128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v3 = sub_23B7BC740();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B7BC760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RemoteWrapperView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23B7BB780();
  swift_allocObject();
  sub_23B7BB770();
  sub_23B779EFC();
  sub_23B7BB760();
  v35 = v11;
  v36 = v9;
  v37 = v7;

  v13 = aBlock;
  v47 = v44;
  v48 = v45;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v38 = v6;
  v14 = sub_23B7BBB30();
  __swift_project_value_buffer(v14, qword_27E184F18);
  v15 = sub_23B7BBB10();
  v16 = sub_23B7BC9F0();
  v17 = v5;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    v20 = sub_23B7BC980();
    v22 = sub_23B77C020(v20, v21, &aBlock);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23B774000, v15, v16, "Setting cell bounds %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23EEA96D0](v19, -1, -1);
    MEMORY[0x23EEA96D0](v18, -1, -1);
  }

  v23 = v36;
  v24 = v39;
  v25 = v35;
  sub_23B77C5C8();
  v26 = sub_23B7BCA70();
  sub_23B79FF74(v24, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v28 = swift_allocObject();
  sub_23B79FFDC(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = v28 + ((v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v29 = v13;
  v30 = v48;
  *(v29 + 8) = v47;
  *(v29 + 24) = v30;
  *(&v45 + 1) = sub_23B7A115C;
  v46 = v28;
  aBlock = MEMORY[0x277D85DD0];
  *&v44 = 1107296256;
  *(&v44 + 1) = sub_23B77CEA8;
  *&v45 = &block_descriptor_2;
  v31 = _Block_copy(&aBlock);
  sub_23B7BC750();
  v42 = MEMORY[0x277D84F90];
  sub_23B7A1200(&qword_27E180AC8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AD0);
  sub_23B77C6E8();
  v32 = v41;
  sub_23B7BCB50();
  MEMORY[0x23EEA8D20](0, v23, v17, v31);
  _Block_release(v31);

  (*(v40 + 8))(v17, v32);
  (*(v37 + 8))(v23, v38);
}

uint64_t sub_23B7A063C()
{
  type metadata accessor for RemoteWrapperView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180A08);
  sub_23B7BC670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180A10);
  return sub_23B7BC670();
}

uint64_t sub_23B7A0710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);
  sub_23B7BC590();
  sub_23B79FF74(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23B79FFDC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F8) + 36));
  sub_23B7BBDE0();
  result = sub_23B7BC910();
  *v8 = &unk_23B7BF308;
  v8[1] = v7;
  return result;
}

uint64_t sub_23B7A085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B7A093C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23B7A0A04()
{
  sub_23B7A0AA8();
  if (v0 <= 0x3F)
  {
    sub_23B7A0B0C();
    if (v1 <= 0x3F)
    {
      sub_23B7A0B5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B7A0AA8()
{
  if (!qword_27E181610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1815C0);
    v0 = sub_23B7BC5A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E181610);
    }
  }
}

void sub_23B7A0B0C()
{
  if (!qword_27E180990)
  {
    v0 = sub_23B7BC680();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180990);
    }
  }
}

void sub_23B7A0B5C()
{
  if (!qword_27E180998)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_23B7BC680();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180998);
    }
  }
}

unint64_t sub_23B7A0BB8()
{
  result = qword_27E181618;
  if (!qword_27E181618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1815F8);
    sub_23B7A1200(&qword_27E1815D8, type metadata accessor for ExtensionHostView);
    sub_23B7A1200(&qword_27E181620, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181618);
  }

  return result;
}

uint64_t sub_23B7A0CA4()
{
  v2 = *(type metadata accessor for RemoteWrapperView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B779A44;

  return sub_23B79F00C(v0 + v3);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RemoteWrapperView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ExtensionHostView.Session(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_23B7BB960();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);

  v7 = v0 + v3 + *(v1 + 28);

  if (*(v7 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23B7A0F20(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RemoteWrapperView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23B7A0128(a1, a2, v6);
}

uint64_t sub_23B7A0FA0()
{
  v1 = type metadata accessor for RemoteWrapperView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ExtensionHostView.Session(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_23B7BB960();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815F0);

  v7 = v0 + v3 + *(v1 + 28);

  if (*(v7 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 40, v2 | 7);
}

uint64_t sub_23B7A115C()
{
  type metadata accessor for RemoteWrapperView();

  return sub_23B7A063C();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B7A1200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B7A1250()
{
  v0 = sub_23B7BB810();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BB7F0();
  v4 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v5 = sub_23B7BB800();
  v6 = [v4 initWithURL_];

  (*(v1 + 8))(v3, v0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_23B7BB7C0();

  return v8;
}

uint64_t ManagedAppViewConfiguration.init(id:style:title:subtitle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_23B7A1408@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23B7A1450(uint64_t a1)
{
  v2 = sub_23B7A3F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A148C(uint64_t a1)
{
  v2 = sub_23B7A3F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7A14C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v23[1] = a4;
  v23[2] = a5;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816D8);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816E0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816E8);
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1816F0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A3E58();
  v18 = v31;
  sub_23B7BCD50();
  if (!v18)
  {
    v33 = 0;
    sub_23B7A3F54();
    sub_23B7BCC30();
    (*(v24 + 8))(v13, v11);
    return (*(v15 + 8))(v17, v14);
  }

  if (v18 == 1)
  {
    v34 = 1;
    sub_23B7A3F00();
    sub_23B7BCC30();
    (*(v25 + 8))(v10, v26);
    return (*(v15 + 8))(v17, v14);
  }

  v37 = 2;
  sub_23B7A3EAC();
  v20 = v28;
  sub_23B7BCC30();
  v36 = 0;
  v21 = v30;
  v22 = v32;
  sub_23B7BCC40();
  if (!v22)
  {
    v35 = 1;
    sub_23B7BCC40();
  }

  (*(v29 + 8))(v20, v21);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_23B7A18D4()
{
  v1 = 7368801;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616B636170;
  }
}

uint64_t sub_23B7A1924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B7A358C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B7A194C(uint64_t a1)
{
  v2 = sub_23B7A3E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1988(uint64_t a1)
{
  v2 = sub_23B7A3E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7A19E4()
{
  if (*v0)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_23B7A1A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_23B7BCC70() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B7BCC70();

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

uint64_t sub_23B7A1B00(uint64_t a1)
{
  v2 = sub_23B7A3EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1B3C(uint64_t a1)
{
  v2 = sub_23B7A3EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7A1B78(uint64_t a1)
{
  v2 = sub_23B7A3F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1BB4(uint64_t a1)
{
  v2 = sub_23B7A3F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23B7A1BF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_23B7A36A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_23B7A1C40()
{
  v1 = *(v0 + 8);
  sub_23B7BCCD0();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EEA8F80](2);
      sub_23B7BC830();
      sub_23B7BC830();
      return sub_23B7BCD10();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EEA8F80](v2);
  return sub_23B7BCD10();
}

uint64_t sub_23B7A1CDC()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x23EEA8F80](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x23EEA8F80](v2);
  }

  MEMORY[0x23EEA8F80](2);
  sub_23B7BC830();

  return sub_23B7BC830();
}

uint64_t sub_23B7A1D84()
{
  v1 = *(v0 + 8);
  sub_23B7BCCD0();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EEA8F80](2);
      sub_23B7BC830();
      sub_23B7BC830();
      return sub_23B7BCD10();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EEA8F80](v2);
  return sub_23B7BCD10();
}

uint64_t sub_23B7A1E1C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a1 == *a2 && v3 == v4;
  if (v10 || (v11 = sub_23B7BCC70(), result = 0, (v11 & 1) != 0))
  {
    if (v6 == v8 && v7 == v9)
    {
      return 1;
    }

    return sub_23B7BCC70();
  }

  return result;
}

uint64_t sub_23B7A1EF8()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E65746E6F63;
  }
}

uint64_t sub_23B7A1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B7A3D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B7A1F88(uint64_t a1)
{
  v2 = sub_23B7A2224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A1FC4(uint64_t a1)
{
  v2 = sub_23B7A2224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ManagedAppViewConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181628);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v18 = *(v1 + 16);
  v8 = *(v1 + 24);
  v14 = *(v1 + 40);
  v15 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_23B7A2224();
  sub_23B7BCD50();
  LOBYTE(v16) = 0;
  sub_23B7BCC40();
  if (!v2)
  {
    LOBYTE(v16) = v18;
    v19 = 1;
    sub_23B7A2278();
    sub_23B7BCC50();
    v16 = v15;
    v17 = v14;
    v19 = 2;
    sub_23B7A22CC();
    sub_23B7BCC50();
  }

  return (*(v5 + 8))(v7, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B7A2224()
{
  result = qword_27E181630;
  if (!qword_27E181630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181630);
  }

  return result;
}

unint64_t sub_23B7A2278()
{
  result = qword_27E181638;
  if (!qword_27E181638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181638);
  }

  return result;
}

unint64_t sub_23B7A22CC()
{
  result = qword_27E181640;
  if (!qword_27E181640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181640);
  }

  return result;
}

uint64_t ManagedAppViewConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A2224();
  sub_23B7BCD30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v18[0]) = 0;
  v9 = sub_23B7BCC00();
  v11 = v10;
  v12 = v9;
  v20 = 1;
  sub_23B7A25A4();
  sub_23B7BCC10();
  v19 = LOBYTE(v18[0]);
  v20 = 2;
  sub_23B7A25F8();
  sub_23B7BCC10();
  (*(v6 + 8))(v8, v5);
  v13 = v18[0];
  v14 = v18[1];
  v15 = v18[2];
  v16 = v18[3];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;

  sub_23B77CCF4(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_23B779DD4(v13, v14);
}

unint64_t sub_23B7A25A4()
{
  result = qword_27E181650;
  if (!qword_27E181650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181650);
  }

  return result;
}

unint64_t sub_23B7A25F8()
{
  result = qword_27E181658;
  if (!qword_27E181658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181658);
  }

  return result;
}

uint64_t sub_23B7A26C0()
{
  if (*v0)
  {
    return 0x617246726566666FLL;
  }

  else
  {
    return 0x6769654877656976;
  }
}

uint64_t sub_23B7A2700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x6769654877656976 && a2 == 0xEA00000000007468 || (sub_23B7BCC70() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617246726566666FLL && a2 == 0xEA0000000000656DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23B7BCC70();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23B7A27E4(uint64_t a1)
{
  v2 = sub_23B7A2A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7A2820(uint64_t a1)
{
  v2 = sub_23B7A2A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ManagedAppReply.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181660);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11 = *(v1 + 3);
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A2A24();
  sub_23B7BCD50();
  *&v13 = v8;
  v15 = 0;
  sub_23B7A2A78();
  sub_23B7BCC50();
  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    type metadata accessor for CGRect(0);
    sub_23B7A3028(&qword_27E181678);
    sub_23B7BCC50();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23B7A2A24()
{
  result = qword_27E181668;
  if (!qword_27E181668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181668);
  }

  return result;
}

unint64_t sub_23B7A2A78()
{
  result = qword_27E181670;
  if (!qword_27E181670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181670);
  }

  return result;
}

uint64_t ManagedAppReply.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EEA8FA0](*&v1);

  return sub_23B7A2F50(v2, v3, v4, v5);
}

uint64_t ManagedAppReply.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_23B7BCCD0();
  v6 = 0.0;
  if (v2 != 0.0)
  {
    v6 = v2;
  }

  MEMORY[0x23EEA8FA0](*&v6);
  sub_23B7A2F50(v1, v3, v4, v5);
  return sub_23B7BCD10();
}

uint64_t ManagedAppReply.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7A2A24();
  sub_23B7BCD30();
  if (!v2)
  {
    v14 = 0;
    sub_23B7A2FD4();
    sub_23B7BCC10();
    v9 = *&v13[0];
    type metadata accessor for CGRect(0);
    v14 = 1;
    sub_23B7A3028(&qword_27E181690);
    sub_23B7BCC10();
    (*(v6 + 8))(v8, v5);
    v10 = v13[0];
    v11 = v13[1];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23B7A2E0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EEA8FA0](*&v1);

  return sub_23B7A2F50(v2, v3, v4, v5);
}

uint64_t sub_23B7A2E84()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_23B7BCCD0();
  v6 = 0.0;
  if (v2 != 0.0)
  {
    v6 = v2;
  }

  MEMORY[0x23EEA8FA0](*&v6);
  sub_23B7A2F50(v1, v3, v4, v5);
  return sub_23B7BCD10();
}

uint64_t sub_23B7A2F50(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x23EEA8FA0](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x23EEA8FA0](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x23EEA8FA0](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x23EEA8FA0](*&v9);
}

unint64_t sub_23B7A2FD4()
{
  result = qword_27E181688;
  if (!qword_27E181688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181688);
  }

  return result;
}

uint64_t sub_23B7A3028(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B7A3070()
{
  result = qword_27E181698;
  if (!qword_27E181698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181698);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_31_ManagedAppDistribution_SwiftUI0aB17ViewConfigurationV7ContentO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_23B7A30F8(uint64_t a1, int a2)
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

uint64_t sub_23B7A3140(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B7A31B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7A31D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_23B7A3224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7A3278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_23B7A32D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_23B7A3328()
{
  result = qword_27E1816A0;
  if (!qword_27E1816A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816A0);
  }

  return result;
}

unint64_t sub_23B7A3380()
{
  result = qword_27E1816A8;
  if (!qword_27E1816A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816A8);
  }

  return result;
}

unint64_t sub_23B7A33D8()
{
  result = qword_27E1816B0;
  if (!qword_27E1816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816B0);
  }

  return result;
}

unint64_t sub_23B7A3430()
{
  result = qword_27E1816B8;
  if (!qword_27E1816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816B8);
  }

  return result;
}

unint64_t sub_23B7A3488()
{
  result = qword_27E1816C0;
  if (!qword_27E1816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816C0);
  }

  return result;
}

unint64_t sub_23B7A34E0()
{
  result = qword_27E1816C8;
  if (!qword_27E1816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816C8);
  }

  return result;
}

unint64_t sub_23B7A3538()
{
  result = qword_27E1816D0;
  if (!qword_27E1816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816D0);
  }

  return result;
}

uint64_t sub_23B7A358C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616B636170 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B7BCC70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000 || (sub_23B7BCC70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B7BCC70();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_23B7A36A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181718);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181720);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181728);
  v33 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181730);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_23B7A3E58();
  v16 = v39;
  sub_23B7BCD30();
  if (!v16)
  {
    v32 = v8;
    v17 = v38;
    v39 = v12;
    v18 = sub_23B7BCC20();
    v19 = v18;
    v20 = *(v18 + 16);
    if (!v20 || ((v21 = *(v18 + 32), v20 == 1) ? (v22 = v21 == 3) : (v22 = 1), v22))
    {
      v23 = sub_23B7BCB80();
      swift_allocError();
      v8 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181738);
      *v8 = &type metadata for ManagedAppViewConfiguration.Content;
      sub_23B7BCBF0();
      sub_23B7BCB70();
      (*(*(v23 - 8) + 104))(v8, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v39 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else if (*(v18 + 32))
    {
      if (v21 == 1)
      {
        v42 = 1;
        sub_23B7A3F00();
        sub_23B7BCBE0();
        v26 = v39;
        (*(v35 + 8))(v7, v34);
        (*(v26 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v8 = 0;
      }

      else
      {
        v45 = 2;
        sub_23B7A3EAC();
        sub_23B7BCBE0();
        v27 = v39;
        v44 = 0;
        v28 = sub_23B7BCC00();
        v29 = v17;
        v8 = v28;
        v34 = v11;
        v35 = v19;
        v43 = 1;
        v30 = v29;
        sub_23B7BCC00();
        (*(v36 + 8))(v30, v37);
        (*(v27 + 8))(v14, v34);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v41 = 0;
      sub_23B7A3F54();
      sub_23B7BCBE0();
      (*(v33 + 8))(v10, v32);
      (*(v39 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v8 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v8;
}

uint64_t sub_23B7A3D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_23B7BCC70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_23B7BCC70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B7BCC70();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_23B7A3E58()
{
  result = qword_27E1816F8;
  if (!qword_27E1816F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1816F8);
  }

  return result;
}

unint64_t sub_23B7A3EAC()
{
  result = qword_27E181700;
  if (!qword_27E181700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181700);
  }

  return result;
}

unint64_t sub_23B7A3F00()
{
  result = qword_27E181708;
  if (!qword_27E181708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181708);
  }

  return result;
}

unint64_t sub_23B7A3F54()
{
  result = qword_27E181710;
  if (!qword_27E181710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181710);
  }

  return result;
}

uint64_t sub_23B7A3FA8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B7A4038(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LogKey.Prefix(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LogKey.Prefix(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B7A4280()
{
  result = qword_27E181740;
  if (!qword_27E181740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181740);
  }

  return result;
}

unint64_t sub_23B7A42D8()
{
  result = qword_27E181748;
  if (!qword_27E181748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181748);
  }

  return result;
}

unint64_t sub_23B7A4330()
{
  result = qword_27E181750;
  if (!qword_27E181750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181750);
  }

  return result;
}

unint64_t sub_23B7A4388()
{
  result = qword_27E181758;
  if (!qword_27E181758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181758);
  }

  return result;
}

unint64_t sub_23B7A43E0()
{
  result = qword_27E181760;
  if (!qword_27E181760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181760);
  }

  return result;
}

unint64_t sub_23B7A4438()
{
  result = qword_27E181768;
  if (!qword_27E181768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181768);
  }

  return result;
}

unint64_t sub_23B7A4490()
{
  result = qword_27E181770;
  if (!qword_27E181770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181770);
  }

  return result;
}

unint64_t sub_23B7A44E8()
{
  result = qword_27E181778;
  if (!qword_27E181778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181778);
  }

  return result;
}

unint64_t sub_23B7A4540()
{
  result = qword_27E181780;
  if (!qword_27E181780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181780);
  }

  return result;
}

unint64_t sub_23B7A4598()
{
  result = qword_27E181788[0];
  if (!qword_27E181788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E181788);
  }

  return result;
}

void sub_23B7A4634()
{
  type metadata accessor for ManagedAppCellContext();
  if (v0 <= 0x3F)
  {
    sub_23B7A523C(319, &qword_27E180C08, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_23B77D9B4();
      if (v2 <= 0x3F)
      {
        sub_23B7A523C(319, &qword_27E180C20, MEMORY[0x277CE02A8]);
        if (v3 <= 0x3F)
        {
          sub_23B7A523C(319, &qword_27E181810, MEMORY[0x277CDFA28]);
          if (v4 <= 0x3F)
          {
            sub_23B77DA6C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B7A4770(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v43 = *(v3 + 84);
  if (v43 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v3 + 84);
  }

  v5 = *(sub_23B7BBCE0() - 8);
  v6 = *(v5 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v46 = v6;
  v7 = *(sub_23B7BB810() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(sub_23B7BC050() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v45 = v11;
  v12 = *(sub_23B7BBE50() - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v44 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  result = a2;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  v18 = *(v3 + 64);
  if (v17 <= v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  if (v8)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  v21 = *(v16 + 80);
  if (v20 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v20;
  }

  if (a2)
  {
    v23 = *(v5 + 80) & 0xF8 | 7;
    v24 = ((((((((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v23 + 16;
    v25 = *(v7 + 80) & 0xF8 | 7;
    v26 = v46 + v25 + 1;
    v27 = *(v10 + 80) & 0xF8 | 7;
    v28 = v22 + v27 + 1;
    v29 = *(v12 + 80) & 0xF8 | 7;
    v30 = v45 + v29 + 1;
    v31 = v44 + v21 + 1;
    if (a2 <= v19)
    {
      goto LABEL_42;
    }

    v32 = ((v31 + ((v30 + ((v28 + ((v26 + (v24 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v21) + *(*(v14 - 8) + 64);
    v33 = 8 * v32;
    if (v32 > 3)
    {
LABEL_22:
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    v35 = ((a2 - v19 + ~(-1 << v33)) >> v33) + 1;
    if (HIWORD(v35))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v35 <= 0xFF)
      {
        if (v35 < 2)
        {
LABEL_42:
          if (v4 >= v17)
          {
            if (v43 < 0x7FFFFFFF)
            {
              v42 = *(((a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
              if (v42 >= 0xFFFFFFFF)
              {
                LODWORD(v42) = -1;
              }

              return (v42 + 1);
            }

            else
            {
              v41 = *(v3 + 48);

              return v41(a1);
            }
          }

          else
          {
            v39 = v31 + ((v30 + ((v28 + ((v26 + ((a1 + v24) & ~v23)) & ~v25)) & ~v27)) & ~v29);
            v40 = *(v16 + 48);

            return v40(v39 & ~v21);
          }
        }

        goto LABEL_22;
      }

      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_42;
      }
    }

LABEL_29:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v31 + ((v30 + ((v28 + ((v26 + (v24 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v21) + *(*(v14 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v19 + (v38 | v36) + 1;
  }

  return result;
}

void sub_23B7A4C64(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v40 = v4;
  v41 = *(v4 + 84);
  if (v41 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v43 = *(sub_23B7BBCE0() - 8);
  v6 = *(v43 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v44 = v6;
  v7 = *(sub_23B7BB810() - 8);
  v8 = *(v7 + 84);
  v42 = *(v7 + 64);
  v9 = *(sub_23B7BC050() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_23B7BBE50() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80) - 8);
  v14 = *(v13 + 84);
  v15 = *(v4 + 64);
  if (v14 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = ((((((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = *(v43 + 80) & 0xF8 | 7;
  v19 = *(v7 + 80) & 0xF8 | 7;
  v20 = v44 + v19 + 1;
  v21 = v42;
  if (!v8)
  {
    v21 = v42 + 1;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v22 = *(v9 + 80) & 0xF8 | 7;
  v23 = v21 + v22 + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v10 + v24 + 1;
  v26 = *(v13 + 80);
  v27 = v12 + v26 + 1;
  v28 = ((v27 + ((v25 + ((v23 + ((v20 + ((v17 + v18) & ~v18)) & ~v19)) & ~v22)) & ~v24)) & ~v26) + *(v13 + 64);
  if (a3 <= v16)
  {
    v30 = 0;
    v29 = a1;
  }

  else
  {
    v29 = a1;
    if (v28 <= 3)
    {
      v33 = ((a3 - v16 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      if (HIWORD(v33))
      {
        v30 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v30 = v34;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  if (v16 < a2)
  {
    v31 = ~v16 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v35 = v31 & ~(-1 << (8 * v28));
        bzero(v29, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *v29 = v35;
            if (v30 > 1)
            {
LABEL_65:
              if (v30 == 2)
              {
                *&v29[v28] = v32;
              }

              else
              {
                *&v29[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *v29 = v31;
            if (v30 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *v29 = v35;
        v29[2] = BYTE2(v35);
      }

      if (v30 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(v29, v28);
      *v29 = v31;
      v32 = 1;
      if (v30 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v30)
    {
      v29[v28] = v32;
    }

    return;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&v29[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&v29[v28] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v30)
  {
    goto LABEL_45;
  }

  v29[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v5 >= v14)
  {
    if (v5 >= a2)
    {
      if (v41 < 0x7FFFFFFF)
      {
        v39 = (&v29[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v39[2] = 0;
          v39[3] = 0;
          *v39 = a2 & 0x7FFFFFFF;
          v39[1] = 0;
        }

        else
        {
          v39[3] = a2 - 1;
        }
      }

      else
      {
        v38 = *(v40 + 56);

        v38(v29, a2);
      }
    }

    else if (((((((((((v15 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(v29, v17);
      *v29 = ~v5 + a2;
    }
  }

  else
  {
    v36 = v27 + ((v25 + ((v23 + ((v20 + (&v29[v17 + v18] & ~v18)) & ~v19)) & ~v22)) & ~v24);
    v37 = *(v13 + 56);

    v37(v36 & ~v26, a2);
  }
}

void sub_23B7A523C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B7BBCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B7A52D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  v3 = sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v4 = sub_23B7BC5D0();
  WitnessTable = swift_getWitnessTable();
  v50 = v4;
  v65 = v4;
  v66 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v48 = sub_23B7BBE70();
  v5 = sub_23B7BBE70();
  v41 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - v8;
  v65 = v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820);
  v67 = type metadata accessor for OfferView();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v9 = sub_23B7BC5D0();
  v10 = swift_getWitnessTable();
  v43 = v9;
  v65 = v9;
  v66 = v10;
  v47 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = sub_23B7BC050();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23B7BC0A0();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v37 - v21;
  v22 = a1;
  sub_23B79A7D4(v20);
  LOBYTE(a1) = sub_23B7BC040();
  (*(v18 + 8))(v20, v17);
  v23 = MEMORY[0x277CDF918];
  if (a1)
  {
    sub_23B7A5B9C(v22, v14);
    v24 = v43;
    v65 = v43;
    v66 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23B7BB698(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v26 = *(v38 + 8);
    v26(v14, OpaqueTypeMetadata2);
    sub_23B7BB698(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v65 = v50;
    v66 = WitnessTable;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v23;
    v51 = swift_getWitnessTable();
    v52 = v23;
    swift_getWitnessTable();
    sub_23B7B8A34(v14, OpaqueTypeMetadata2);
    v26(v14, OpaqueTypeMetadata2);
    v26(v16, OpaqueTypeMetadata2);
  }

  else
  {
    v27 = v40;
    sub_23B7A6024(v22, v40);
    v65 = v50;
    v66 = WitnessTable;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v23;
    v61 = swift_getWitnessTable();
    v62 = v23;
    v28 = swift_getWitnessTable();
    v29 = v39;
    sub_23B7BB698(v27, v5, v28);
    v30 = *(v41 + 8);
    v30(v27, v5);
    sub_23B7BB698(v29, v5, v28);
    v24 = v43;
    v65 = v43;
    v66 = v47;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8B2C(v27, OpaqueTypeMetadata2, v5);
    v30(v27, v5);
    v30(v29, v5);
  }

  v65 = v24;
  v66 = v47;
  v31 = swift_getOpaqueTypeConformance2();
  v65 = v50;
  v66 = WitnessTable;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v23;
  v57 = swift_getWitnessTable();
  v58 = v23;
  v32 = swift_getWitnessTable();
  v55 = v31;
  v56 = v32;
  v33 = v44;
  v34 = swift_getWitnessTable();
  v35 = v46;
  sub_23B7BB698(v46, v33, v34);
  return (*(v42 + 8))(v35, v33);
}

uint64_t sub_23B7A5B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = sub_23B7BC150();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  v33 = sub_23B7BBE70();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820);
  v35 = type metadata accessor for OfferView();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v5 = sub_23B7BC5D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  WitnessTable = swift_getWitnessTable();
  v33 = v5;
  v34 = WitnessTable;
  v22 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = *(v24 + 24);
  v30 = v23;
  v31 = v17;
  v32 = v25;
  sub_23B7BBFE0();
  sub_23B7BC5C0();
  v18 = v26;
  sub_23B7BC140();
  sub_23B7BC430();
  (*(v27 + 8))(v18, v28);
  (*(v6 + 8))(v8, v5);
  v33 = v5;
  v34 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B7BB698(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v11 + 8);
  v20(v14, OpaqueTypeMetadata2);
  sub_23B7BB698(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v20)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_23B7A6024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = sub_23B7BC150();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  v21[1] = swift_getWitnessTable();
  v5 = sub_23B7BC5D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  WitnessTable = swift_getWitnessTable();
  v35 = v5;
  v36 = WitnessTable;
  v21[0] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = v21 - v12;
  v14 = sub_23B7BBE70();
  v22 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_23B7BBFD0();
  v17 = *(v24 + 24);
  v30 = v23;
  v31 = v17;
  v32 = v26;
  sub_23B7BC5C0();
  v18 = v25;
  sub_23B7BC140();
  sub_23B7BC430();
  (*(v27 + 8))(v18, v28);
  (*(v6 + 8))(v8, v5);
  sub_23B7BC240();
  v35 = v5;
  v36 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B7BC480();
  (*(v11 + 8))(v13, OpaqueTypeMetadata2);
  sub_23B7BC230();
  v33 = OpaqueTypeConformance2;
  v34 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_23B7BC480();
  return (*(v22 + 8))(v16, v14);
}

uint64_t sub_23B7A64E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_23B7BC1F0();
  v3 = sub_23B7BBE70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = sub_23B7BBE70();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_23B7BBE70();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  type metadata accessor for PlatformIconClippingViewModifier();
  v13 = sub_23B7BBE70();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v25 = &v25 - v14;
  v15 = *(a1 + 24);
  sub_23B7BC420();
  v16 = sub_23B7AB020(&qword_27E180C68, MEMORY[0x277CDE470]);
  v37 = v15;
  v38 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC450();
  (*(v4 + 8))(v6, v3);
  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  sub_23B7BC6A0();
  v18 = sub_23B781950();
  v35 = WitnessTable;
  v36 = v18;
  v19 = swift_getWitnessTable();
  sub_23B7BC460();
  (*(v27 + 8))(v9, v7);
  v33 = v19;
  v34 = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = v25;
  sub_23B79759C(v10, v20);
  (*(v26 + 8))(v12, v10);
  sub_23B7BC250();
  if (qword_27E180848 != -1)
  {
    swift_once();
  }

  v22 = sub_23B7AB020(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v31 = v20;
  v32 = v22;
  v23 = v29;
  swift_getWitnessTable();
  sub_23B7BC480();
  return (*(v28 + 8))(v21, v23);
}

uint64_t sub_23B7A69C8()
{
  type metadata accessor for ManagedAppCellContext();
  sub_23B7BC0C0();
  v0 = sub_23B7BC350();
  v2 = v1;
  v4 = v3;
  sub_23B7BC2C0();
  v5 = sub_23B7BC360();
  v7 = v6;
  v9 = v8;

  sub_23B781FF8(v0, v2, v4 & 1);

  swift_getKeyPath();
  sub_23B7BC290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
  sub_23B78A2B8();
  sub_23B7BC3B0();
  sub_23B781FF8(v5, v7, v9 & 1);
}

uint64_t sub_23B7A6B48@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_23B781E88(*v3, v5, v6, v7);
  v8 = sub_23B7BC0E0();
  v9 = sub_23B7BC260();
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = sub_23B7BC230();
  result = sub_23B7BBCC0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = v12;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = 0;
  return result;
}

__n128 sub_23B7A6C30@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_23B7BC050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 44));
  v11 = *v10;
  v12 = v10[2];
  v13 = v10[3];
  v31 = v10[1];
  v32 = v11;
  v29 = v13;
  v30 = v12;
  sub_23B781E88(v11, v31, v12, v13);
  v28 = sub_23B7BC0E0();
  KeyPath = swift_getKeyPath();
  sub_23B79A7D4(v9);
  v14 = sub_23B7BC040();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if (v14)
  {
    v26 = sub_23B7BC2F0();
  }

  else
  {
    v16 = sub_23B7BC280();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v26 = sub_23B7BC2B0();
    sub_23B7826E8(v5, &qword_27E180D10);
  }

  v33 = 0;
  v17 = swift_getKeyPath();
  v18 = v33;
  sub_23B79A7D4(v9);
  sub_23B7BC040();
  v15(v9, v6);
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v19 = v31;
  *a1 = v32;
  *(a1 + 8) = v19;
  v20 = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v20;
  *(a1 + 32) = v28;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 2;
  *(a1 + 56) = v18;
  v21 = v26;
  *(a1 + 64) = v17;
  *(a1 + 72) = v21;
  v22 = v39;
  *(a1 + 144) = v38;
  *(a1 + 160) = v22;
  *(a1 + 176) = v40;
  v23 = v35;
  *(a1 + 80) = v34;
  *(a1 + 96) = v23;
  result = v37;
  *(a1 + 112) = v36;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_23B7A6F34@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_23B781E88(*v3, v5, v6, v7);
  v8 = sub_23B7BC270();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0D0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v8;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23B7A6FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181818);
  v7 = MEMORY[0x28223BE20](v40);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = (&v34 - v9);
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  v10 = sub_23B7BBE70();
  v43 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v38 = a2;
  v16 = type metadata accessor for HeaderManagedAppCell();
  v37 = a1;
  sub_23B7A64E4(v16, v13);
  v17 = sub_23B7AB020(&qword_27E180C68, MEMORY[0x277CDE470]);
  v18 = a3;
  v50[11] = a3;
  v50[12] = v17;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_23B781950();
  v50[9] = WitnessTable;
  v50[10] = v20;
  v50[7] = swift_getWitnessTable();
  v50[8] = MEMORY[0x277CDF678];
  v21 = swift_getWitnessTable();
  v22 = sub_23B7AB020(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v50[5] = v21;
  v50[6] = v22;
  v50[3] = swift_getWitnessTable();
  v50[4] = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  v36 = v15;
  v35 = v23;
  sub_23B7BB698(v13, v10, v23);
  v24 = *(v43 + 8);
  v24(v13, v10);
  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  v25 = qword_27E184EE0;
  v26 = swift_allocObject();
  v27 = v38;
  v26[2] = v38;
  v26[3] = v18;
  v28 = v18;
  v26[4] = v25;
  v29 = v39;
  *v39 = v25;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181818);
  sub_23B7A74F8(v27, v28, v29 + *(v30 + 44));

  v31 = v36;
  (*(v43 + 16))(v13, v36, v10);
  v50[0] = v13;
  v32 = v41;
  sub_23B779B38(v29, v41, &qword_27E181818);
  v48 = 0;
  v49 = 1;
  v50[1] = v32;
  v50[2] = &v48;
  v47[0] = v10;
  v47[1] = v40;
  v47[2] = MEMORY[0x277CE1180];
  v44 = v35;
  v45 = sub_23B7AAAC8();
  v46 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(v50, 3uLL, v47);
  sub_23B7826E8(v29, &qword_27E181818);
  v24(v31, v10);
  sub_23B7826E8(v32, &qword_27E181818);
  return (v24)(v13, v10);
}

uint64_t sub_23B7A74F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v31[1] = a1;
  v37 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v36 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - v6;
  v34 = sub_23B7BC150();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818E8);
  MEMORY[0x28223BE20](v32);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818F0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v33 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - v17;
  *v12 = sub_23B7BC070();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818F8);
  sub_23B7A78F8(&v12[*(v19 + 44)]);
  sub_23B7BC130();
  sub_23B7826A0(&qword_27E181900, &qword_27E1818E8);
  sub_23B7BC430();
  (*(v8 + 8))(v10, v34);
  sub_23B7826E8(v12, &qword_27E1818E8);
  LOBYTE(v10) = sub_23B7BC240();
  sub_23B7BBCC0();
  v20 = &v18[*(v14 + 44)];
  *v20 = v10;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  *v7 = sub_23B7BBFE0();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181908);
  sub_23B7A7C68(&v7[*(v25 + 44)]);
  v26 = v33;
  sub_23B779B38(v18, v33, &qword_27E1818F0);
  v27 = v36;
  sub_23B779B38(v7, v36, &qword_27E1818E0);
  v28 = v37;
  sub_23B779B38(v26, v37, &qword_27E1818F0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181910);
  sub_23B779B38(v27, v28 + *(v29 + 48), &qword_27E1818E0);
  sub_23B7826E8(v7, &qword_27E1818E0);
  sub_23B7826E8(v18, &qword_27E1818F0);
  sub_23B7826E8(v27, &qword_27E1818E0);
  return sub_23B7826E8(v26, &qword_27E1818F0);
}

uint64_t sub_23B7A78F8@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818A0);
  v1 = *(v38 - 8);
  v2 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  type metadata accessor for HeaderManagedAppCell();
  v36 = v5;
  sub_23B7A69C8();
  sub_23B7A6B48(v55);
  v6 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4420(v6))
  {
    sub_23B7A6F34(&v48);
    v7 = *(&v49 + 1);
    v8 = *(&v50 + 1);
    v9 = v50;
    v33 = v51;
    v34 = v48;
    v31 = v49;
    v32 = *(&v48 + 1);
    sub_23B781E88(v48, *(&v48 + 1), v49, *(&v49 + 1));
  }

  else
  {
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
    v33 = 0;
  }

  v10 = v1;
  v11 = *(v1 + 16);
  v12 = v37;
  v13 = v38;
  v11(v37, v36, v38);
  v43 = v55[4];
  v44 = v55[5];
  v45[0] = v56[0];
  *(v45 + 9) = *(v56 + 9);
  v39 = v55[0];
  v40 = v55[1];
  v41 = v55[2];
  v42 = v55[3];
  v14 = v35;
  v11(v35, v12, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181920);
  v16 = &v14[*(v15 + 48)];
  v17 = v43;
  v18 = v44;
  v46[4] = v43;
  v46[5] = v44;
  v19 = v45[0];
  v47[0] = v45[0];
  v20 = *(v45 + 9);
  *(v47 + 9) = *(v45 + 9);
  v21 = v39;
  v22 = v40;
  v46[0] = v39;
  v46[1] = v40;
  v24 = v41;
  v23 = v42;
  *(v16 + 2) = v41;
  *(v16 + 3) = v23;
  *v16 = v21;
  *(v16 + 1) = v22;
  *(v16 + 105) = v20;
  *(v16 + 5) = v18;
  *(v16 + 6) = v19;
  *(v16 + 4) = v17;
  v25 = &v14[*(v15 + 64)];
  v46[2] = v24;
  v46[3] = v23;
  sub_23B779B38(v46, &v48, &qword_27E1818B0);
  v26 = v34;
  v28 = v31;
  v27 = v32;
  LODWORD(v11) = v33;
  sub_23B7AAA24(v34, v32, v31, v7, v9);
  sub_23B7AAA70(v26, v27, v28, v7, v9);
  *v25 = v26;
  *(v25 + 1) = v27;
  *(v25 + 2) = v28;
  *(v25 + 3) = v7;
  *(v25 + 4) = v9;
  *(v25 + 5) = v8;
  *(v25 + 12) = v11;
  v29 = *(v10 + 8);
  v29(v36, v38);
  sub_23B7AAA70(v26, v27, v28, v7, v9);
  v52 = v43;
  v53 = v44;
  v54[0] = v45[0];
  *(v54 + 9) = *(v45 + 9);
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  sub_23B7826E8(&v48, &qword_27E1818B0);
  return (v29)(v37, v38);
}

uint64_t sub_23B7A7C68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D90);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  type metadata accessor for HeaderManagedAppCell();
  sub_23B77F5BC(v8);
  *&v8[*(v3 + 44)] = 0x3FF0000000000000;
  v9 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4438(v9))
  {
    sub_23B7A6C30(&v36);
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    nullsub_1(&v48);
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
  }

  else
  {
    sub_23B7AA6BC(&v60);
  }

  sub_23B779B38(v8, v6, &qword_27E180D90);
  v32 = v68;
  v33 = v69;
  v34 = v70;
  v35 = v71;
  v28 = v64;
  v29 = v65;
  v30 = v66;
  v31 = v67;
  v24 = v60;
  v25 = v61;
  v26 = v62;
  v27 = v63;
  sub_23B779B38(v6, a1, &qword_27E180D90);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181918) + 48);
  v11 = v33;
  v44 = v32;
  v45 = v33;
  v12 = v34;
  v13 = v35;
  v46 = v34;
  v47 = v35;
  v14 = v28;
  v15 = v29;
  v40 = v28;
  v41 = v29;
  v16 = v30;
  v17 = v31;
  v42 = v30;
  v43 = v31;
  v18 = v24;
  v19 = v25;
  v36 = v24;
  v37 = v25;
  v20 = v26;
  v21 = v27;
  v38 = v26;
  v39 = v27;
  v22 = (a1 + v10);
  v22[8] = v32;
  v22[9] = v11;
  v22[10] = v12;
  v22[11] = v13;
  v22[4] = v14;
  v22[5] = v15;
  v22[6] = v16;
  v22[7] = v17;
  *v22 = v18;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  sub_23B779B38(&v36, &v48, &qword_27E181828);
  sub_23B7826E8(v8, &qword_27E180D90);
  v56 = v32;
  v57 = v33;
  v58 = v34;
  v59 = v35;
  v52 = v28;
  v53 = v29;
  v54 = v30;
  v55 = v31;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v51 = v27;
  sub_23B7826E8(&v48, &qword_27E181828);
  return sub_23B7826E8(v6, &qword_27E180D90);
}

uint64_t sub_23B7A7F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  v35 = sub_23B7BBE70();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820);
  v37 = type metadata accessor for OfferView();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828);
  swift_getTupleTypeMetadata();
  v21[2] = sub_23B7BC6F0();
  v21[1] = swift_getWitnessTable();
  v6 = sub_23B7BC640();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = sub_23B7BBE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v21[0] = v21 - v14;
  sub_23B7BC070();
  v15 = v23;
  type metadata accessor for HeaderManagedAppCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  v25 = a2;
  v26 = v15;
  v27 = a1;
  sub_23B7BC630();
  sub_23B7BC240();
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC480();
  (*(v22 + 8))(v8, v6);
  v33 = WitnessTable;
  v34 = MEMORY[0x277CDF918];
  v17 = swift_getWitnessTable();
  v18 = v21[0];
  sub_23B7BB698(v13, v9, v17);
  v19 = *(v10 + 8);
  v19(v13, v9);
  (*(v10 + 16))(v13, v18, v9);
  v31 = 0;
  v32 = 0;
  v35 = v13;
  v36 = &v31;
  v30[0] = v9;
  v30[1] = MEMORY[0x277CE1180];
  v28 = v17;
  v29 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(&v35, 2uLL, v30);
  v19(v18, v9);
  return (v19)(v13, v9);
}

uint64_t sub_23B7A83A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a1;
  v72 = a4;
  v69 = type metadata accessor for OfferView();
  v6 = MEMORY[0x28223BE20](v69);
  v73 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = v57 - v8;
  v9 = sub_23B7BC150();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181830);
  MEMORY[0x28223BE20](v78);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181820);
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v68 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = v57 - v16;
  sub_23B7BC1F0();
  v59 = a2;
  sub_23B7BBE70();
  sub_23B7BBE70();
  v67 = sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  v77 = sub_23B7BBE70();
  v17 = sub_23B7BBE70();
  v58 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v57 - v21;
  v23 = type metadata accessor for HeaderManagedAppCell();
  sub_23B7A64E4(v23, v20);
  v24 = sub_23B7AB020(&qword_27E180C68, MEMORY[0x277CDE470]);
  v118 = a3;
  v119 = v24;
  WitnessTable = swift_getWitnessTable();
  v26 = sub_23B781950();
  v116 = WitnessTable;
  v117 = v26;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x277CDF678];
  v27 = swift_getWitnessTable();
  v28 = sub_23B7AB020(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v112 = v27;
  v113 = v28;
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF918];
  v29 = swift_getWitnessTable();
  v77 = v22;
  v30 = v58;
  v61 = v29;
  sub_23B7BB698(v20, v17, v29);
  v31 = *(v30 + 8);
  v75 = v20;
  v63 = v17;
  v66 = v31;
  v67 = v30 + 8;
  v31(v20, v17);
  v32 = sub_23B7BC070();
  v57[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  v33 = v76;
  sub_23B7BBD30();
  v34 = v120;
  *v12 = v32;
  *(v12 + 1) = v34;
  v12[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181838);
  v36 = v33;
  sub_23B7A8C98(&v12[*(v35 + 44)]);
  v37 = v62;
  sub_23B7BC130();
  v60 = sub_23B7826A0(&qword_27E181840, &qword_27E181830);
  sub_23B7BC430();
  (*(v64 + 8))(v37, v65);
  sub_23B7826E8(v12, &qword_27E181830);
  v38 = type metadata accessor for ManagedAppCellContext();
  v39 = *(v38 + 56);
  v40 = v36 + *(v38 + 52);
  v41 = *(v40 + 8);
  v42 = *(v40 + 16);
  *&v120 = *v40;
  *(&v120 + 1) = v41;
  LOBYTE(v121) = v42;
  v43 = v36 + v39;
  v44 = *(v36 + v39);
  v45 = *(v43 + 8);
  sub_23B781F9C(v120, v41, v42);

  OfferView.init(offerState:action:)(&v120, v44, v45, v79);
  if (sub_23B7B4438(v38))
  {
    sub_23B7A6C30(&v85);
    v106 = v93;
    v107 = v94;
    v108 = v95;
    v109 = v96;
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v105 = v92;
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v101 = v88;
    nullsub_1(&v98);
    v128 = v106;
    v129 = v107;
    v130 = v108;
    v131 = v109;
    v124 = v102;
    v125 = v103;
    v126 = v104;
    v127 = v105;
    v120 = v98;
    v121 = v99;
    v122 = v100;
    v123 = v101;
  }

  else
  {
    sub_23B7AA6BC(&v120);
  }

  v46 = v75;
  v47 = v63;
  (*(v30 + 16))(v75, v77, v63);
  v97[0] = v46;
  v48 = v70;
  v49 = v71;
  v50 = v68;
  v51 = v74;
  (*(v70 + 16))(v68, v74, v71);
  v97[1] = v50;
  v52 = v79;
  v53 = v73;
  sub_23B7819C8(v79, v73);
  v93 = v128;
  v94 = v129;
  v95 = v130;
  v96 = v131;
  v89 = v124;
  v90 = v125;
  v91 = v126;
  v92 = v127;
  v85 = v120;
  v86 = v121;
  v87 = v122;
  v88 = v123;
  v97[2] = v53;
  v97[3] = &v85;
  sub_23B779B38(&v120, &v98, &qword_27E181828);
  v84[0] = v47;
  v84[1] = v49;
  v84[2] = v69;
  v84[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181828);
  v80 = v61;
  *&v98 = v78;
  *(&v98 + 1) = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = sub_23B7AB020(&qword_27E180C90, type metadata accessor for OfferView);
  v83 = sub_23B7AA6DC();
  sub_23B7AE6C8(v97, 4uLL, v84);
  sub_23B7826E8(&v120, &qword_27E181828);
  sub_23B781E28(v52);
  v54 = *(v48 + 8);
  v54(v51, v49);
  v55 = v66;
  v66(v77, v47);
  v106 = v93;
  v107 = v94;
  v108 = v95;
  v109 = v96;
  v102 = v89;
  v103 = v90;
  v104 = v91;
  v105 = v92;
  v98 = v85;
  v99 = v86;
  v100 = v87;
  v101 = v88;
  sub_23B7826E8(&v98, &qword_27E181828);
  sub_23B781E28(v53);
  v54(v50, v49);
  return v55(v75, v47);
}

uint64_t sub_23B7A8C98@<X0>(uint64_t a1@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818A0);
  v28 = *(v31 - 8);
  v2 = MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4420(v6))
  {
    type metadata accessor for HeaderManagedAppCell();
    sub_23B7A6F34(&v49);
    v7 = v51;
    v32 = v52;
    v8 = *(&v49 + 1);
    v9 = v49;
    v26 = *(&v50 + 1);
    v10 = v50;
    sub_23B781E88(v49, *(&v49 + 1), v50, *(&v50 + 1));
    v27 = *(&v7 + 1);

    v29 = v7;
  }

  else
  {
    type metadata accessor for HeaderManagedAppCell();
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v32 = 0;
  }

  sub_23B7A69C8();
  sub_23B7A6B48(v40);
  v25 = v5;
  v11 = *(v28 + 16);
  v12 = v30;
  v11(v30, v5, v31);
  v37 = v40[4];
  v38 = v40[5];
  v39[0] = v41[0];
  *(v39 + 9) = *(v41 + 9);
  v33 = v40[0];
  v34 = v40[1];
  v35 = v40[2];
  v36 = v40[3];
  *a1 = v9;
  *(a1 + 8) = v8;
  v13 = v26;
  *(a1 + 16) = v10;
  *(a1 + 24) = v13;
  v14 = v27;
  *(a1 + 32) = v29;
  *(a1 + 40) = v14;
  *(a1 + 48) = v32;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1818A8);
  v16 = v12;
  v17 = v31;
  v11((a1 + *(v15 + 48)), v16, v31);
  v18 = (a1 + *(v15 + 64));
  v46 = v37;
  v47 = v38;
  v48[0] = v39[0];
  *(v48 + 9) = *(v39 + 9);
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v19 = v29;
  sub_23B7AAA24(v9, v8, v10, v13, v29);
  sub_23B779B38(&v42, &v49, &qword_27E1818B0);
  sub_23B7AAA70(v9, v8, v10, v13, v19);
  v20 = v47;
  v18[4] = v46;
  v18[5] = v20;
  v18[6] = v48[0];
  *(v18 + 105) = *(v48 + 9);
  v21 = v43;
  *v18 = v42;
  v18[1] = v21;
  v22 = v45;
  v18[2] = v44;
  v18[3] = v22;
  v23 = *(v28 + 8);
  v23(v25, v17);
  v53 = v37;
  v54 = v38;
  v55[0] = v39[0];
  *(v55 + 9) = *(v39 + 9);
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v52 = v36;
  sub_23B7826E8(&v49, &qword_27E1818B0);
  v23(v30, v17);
  return sub_23B7AAA70(v9, v8, v10, v13, v19);
}

uint64_t sub_23B7A9054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ManagedAppCellContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for HeaderManagedAppCell();
  v6 = v5[9];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[10];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB8);
  swift_storeEnumTagMultiPayload();
  v8 = v5[11];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0);
  swift_storeEnumTagMultiPayload();
  v9 = v5[12];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508);
  swift_storeEnumTagMultiPayload();
  sub_23B77DAC8();
  return sub_23B7BBD20();
}

uint64_t sub_23B7A91EC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v44 = a1;
  v45 = a3;
  v43 = sub_23B7BBDD0();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B7BBE10();
  sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8]);
  v10 = sub_23B7BC9A0();
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v48 = MEMORY[0x277D84F90];
  sub_23B7AB000(0, v10 & ~(v10 >> 63), 0);
  v11 = v48;
  result = sub_23B7BC990();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v41 = (v6 + 8);
    v42 = (v6 + 16);
    v40 = a4 & 1;
    do
    {
      v14 = sub_23B7BC9E0();
      v15 = v9;
      v16 = v43;
      (*v42)(v8);
      v14(v47, 0);
      v47[0] = a2 & 1;
      v46 = v40;
      sub_23B7BBDB0();
      v18 = v17;
      v20 = v19;
      (*v41)(v8, v16);
      v48 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_23B7AB000((v21 > 1), v22 + 1, 1);
        v11 = v48;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      sub_23B7BC9D0();
      --v12;
      v9 = v15;
    }

    while (v12);
LABEL_7:
    v24 = *(v11 + 16);
    if (!v24)
    {
    }

    if (v24 == 1)
    {
      v25 = 0;
      v26 = 0.0;
    }

    else
    {
      v25 = v24 & 0x7FFFFFFFFFFFFFFELL;
      v27 = (v11 + 56);
      v26 = 0.0;
      v28 = v24 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v29 = *(v27 - 2);
        v30 = *v27;
        v27 += 4;
        v26 = v26 + v29 + v30;
        v28 -= 2;
      }

      while (v28);
      if (v24 == v25)
      {
LABEL_16:
        v34 = *(v11 + 32);
        v35 = v24 - 1;
        if (v35)
        {
          v36 = (v11 + 48);
          do
          {
            v37 = *v36;
            v36 += 2;
            v38 = v37;
            if (v34 < v37)
            {
              v34 = v38;
            }

            --v35;
          }

          while (v35);
        }
      }
    }

    v31 = v24 - v25;
    v32 = (v11 + 16 * v25 + 40);
    do
    {
      v33 = *v32;
      v32 += 2;
      v26 = v26 + v33;
      --v31;
    }

    while (v31);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B7A952C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v102 = &v85 - v20;
  v90 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181940));
  MEMORY[0x28223BE20](*&v90);
  *&v89 = &v85 - v21;
  v22 = sub_23B7BBDD0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v86 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v97 = &v85 - v28;
  v29 = sub_23B7BBE10();
  v30 = sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8]);
  v101 = a5;
  v31 = sub_23B7BC9A0();
  v32 = MEMORY[0x277D84F90];
  v91 = v23;
  v99 = v29;
  v100 = v30;
  if (v31)
  {
    v33 = v31;
    v98 = a1;
    v34 = a3;
    v105 = MEMORY[0x277D84F90];
    sub_23B7AB000(0, v31 & ~(v31 >> 63), 0);
    v35 = v105;
    result = sub_23B7BC990();
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = a9;
    *&v95 = v23 + 16;
    v94 = (v23 + 8);
    v38 = v22;
    v39 = v34;
    v96 = a2;
    v93 = a4;
    v92 = v38;
    do
    {
      v40 = sub_23B7BC9E0();
      v41 = v97;
      (**&v95)(v97);
      v40(v104, 0);
      v104[0] = a2 & 1;
      v103 = a4 & 1;
      v42 = v39;
      sub_23B7BBDB0();
      v44 = v43;
      v46 = v45;
      (*v94)(v41, v38);
      v105 = v35;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_23B7AB000((v47 > 1), v48 + 1, 1);
        v35 = v105;
      }

      *(v35 + 16) = v48 + 1;
      v49 = v35 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v50 = v99;
      sub_23B7BC9D0();
      --v33;
      v39 = v42;
      LOBYTE(a4) = v93;
      LOBYTE(a2) = v96;
      v38 = v92;
    }

    while (v33);
    a9 = v37;
    v29 = v50;
    v32 = v35;
    v22 = v92;
  }

  v51 = *(v32 + 16);
  if (v51)
  {
    if (v51 == 1)
    {
      v52 = 0;
      v53 = 0.0;
    }

    else
    {
      v52 = v51 & 0x7FFFFFFFFFFFFFFELL;
      v54 = (v32 + 56);
      v53 = 0.0;
      v55 = v51 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v56 = *(v54 - 2);
        v57 = *v54;
        v54 += 4;
        v53 = v53 + v56 + v57;
        v55 -= 2;
      }

      while (v55);
      if (v51 == v52)
      {
        goto LABEL_17;
      }
    }

    v58 = v51 - v52;
    v59 = (v32 + 16 * v52 + 40);
    do
    {
      v60 = *v59;
      v59 += 2;
      v53 = v53 + v60;
      --v58;
    }

    while (v58);
  }

  else
  {
    v53 = 0.0;
  }

LABEL_17:
  v95 = a6;
  v61 = v89;
  v62 = v32;
  (*(*(v29 - 8) + 16))(COERCE_DOUBLE(*&v89), v101, v29);
  *(*&v61 + *(*&v90 + 52)) = v62;
  v63 = sub_23B7A9D88();
  v64 = *(v63 + 16);
  if (v64)
  {
    v89 = v53;
    v90 = a10;
    v65 = v102;
    v97 = &v102[*(v87 + 48)];
    v66 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v94 = v63;
    v67 = v63 + v66;
    v68 = *(v88 + 72);
    v69 = v22;
    v70 = (v91 + 8);
    v71 = 0.0;
    v72 = v95;
    do
    {
      sub_23B779B38(v67, v65, &qword_27E181938);
      v73 = *(v97 + 1);
      v106.origin.x = v72;
      v106.origin.y = a7;
      v106.size.width = a8;
      v106.size.height = a9;
      CGRectGetMinX(v106);
      v107.origin.x = v72;
      v107.origin.y = a7;
      v107.size.width = a8;
      v107.size.height = a9;
      CGRectGetMinY(v107);
      sub_23B7BC710();
      v104[0] = a2 & 1;
      LOBYTE(v105) = a4 & 1;
      sub_23B7BBDC0();
      v65 = v102;
      (*v70)(v102, v69);
      v71 = v71 + v73;
      v67 += v68;
      --v64;
    }

    while (v64);

    v22 = v69;
    a10 = v90;
    v53 = v89;
  }

  else
  {
  }

  result = sub_23B7BC9B0();
  if ((result & 1) == 0)
  {
    sub_23B7BC9C0();
    sub_23B7AB020(&qword_27E181950, MEMORY[0x277CDF7F8]);
    sub_23B7BC7A0();
    v74 = sub_23B7BC9E0();
    v75 = v91;
    v76 = v85;
    (*(v91 + 16))(v85);
    v74(v104, 0);
    v77 = v75;
    v78 = *(v75 + 32);
    v79 = v86;
    v78(v86, v76, v22);
    v80 = v95;
    v108.origin.x = v95;
    v108.origin.y = a7;
    v108.size.width = a8;
    v108.size.height = a9;
    CGRectGetMinX(v108);
    v81 = v80;
    v82 = a7;
    v83 = a8;
    v84 = a9;
    if (v53 >= a10)
    {
      CGRectGetMinY(*&v81);
      sub_23B7BC710();
    }

    else
    {
      CGRectGetMaxY(*&v81);
      sub_23B7BC720();
    }

    v104[0] = a2 & 1;
    LOBYTE(v105) = a4 & 1;
    sub_23B7BBDC0();
    return (*(v77 + 8))(v79, v22);
  }

  return result;
}

uint64_t sub_23B7A9D88()
{
  v1 = sub_23B7BBDD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938);
  v56 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v57 = &v44 - v10;
  v61 = sub_23B7BBE10();
  v11 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181958);
  result = MEMORY[0x28223BE20](v46);
  v17 = &v44 - v16;
  if (v15 < 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if (!v15)
  {
    v22 = sub_23B7AB470(v0);
    sub_23B7826E8(v0, &qword_27E181940);
    return v22;
  }

  v62 = v15;
  v54 = v9;
  (*(v11 + 32))(v13, v0, v61);
  v18 = MEMORY[0x277CDF7F8];
  sub_23B7AB020(&qword_27E181960, MEMORY[0x277CDF7F8]);
  sub_23B7BC890();
  v19 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181940) + 52));
  v20 = &v17[*(v46 + 52)];
  *v20 = v19;
  *(v20 + 1) = 0;
  v53 = v20;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181968) + 36);
  v63 = sub_23B7AB020(&qword_27E181948, v18);
  sub_23B7BC9C0();
  if (*&v17[v21] != v65[0])
  {
    v23 = 0;
    v60 = 0;
    v51 = (v2 + 16);
    v52 = v19;
    v50 = v19 + 32;
    v24 = MEMORY[0x277D84F90];
    v45 = v2;
    v49 = (v2 + 32);
    v59 = MEMORY[0x277D84F90];
    v25 = v54;
    v48 = v1;
    v47 = v4;
    while (1)
    {
      v28 = sub_23B7BC9E0();
      (*v51)(v4);
      v28(v65, 0);
      result = sub_23B7BC9D0();
      v29 = *(v52 + 16);
      if (v23 == v29)
      {
        (*(v45 + 8))(v4, v1);
        goto LABEL_29;
      }

      if (v23 >= v29)
      {
        break;
      }

      v64 = *(v50 + 16 * v23);
      *(v53 + 1) = v23 + 1;
      v30 = v57;
      v31 = *(v58 + 48);
      (*v49)(v57, v4, v1);
      *(v30 + v31) = v64;
      result = sub_23B7AB068(v30, v25);
      v32 = v24[2];
      if (v32 >= v62)
      {
        if (v60 >= v32)
        {
          goto LABEL_31;
        }

        v34 = v60;
        v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v36 = *(v56 + 72);
        v37 = v36 * v60;
        sub_23B779B38(v24 + v35 + v36 * v60, v55, &qword_27E181938);
        v38 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v38;
        v67 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23B7AB0D8(0, *(v38 + 16) + 1, 1);
          v34 = v60;
          v40 = v67;
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_23B7AB0D8(v41 > 1, v42 + 1, 1);
          v34 = v60;
          v40 = v67;
        }

        *(v40 + 16) = v42 + 1;
        v59 = v40;
        sub_23B7AB068(v55, v40 + v35 + v42 * v36);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23B7AB3EC(v24);
          v24 = result;
        }

        v25 = v54;
        if (v34 >= v24[2])
        {
          goto LABEL_32;
        }

        sub_23B7AB400(v54, v24 + v35 + v37);
        if ((v34 + 1) < v62)
        {
          v43 = v34 + 1;
        }

        else
        {
          v43 = 0;
        }

        v60 = v43;
        v1 = v48;
        v4 = v47;
      }

      else
      {
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v24;
        if ((v33 & 1) == 0)
        {
          sub_23B7AB0D8(0, v32 + 1, 1);
          v24 = v66;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_23B7AB0D8(v26 > 1, v27 + 1, 1);
          v24 = v66;
        }

        v24[2] = v27 + 1;
        v25 = v54;
        sub_23B7AB068(v54, v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v27);
      }

      sub_23B7BC9C0();
      ++v23;
      if (*&v17[v21] == v65[0])
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_29:
  v17[*(v46 + 56)] = 1;
  sub_23B7826E8(v17, &qword_27E181958);

  return v59;
}

void (*sub_23B7AA5D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23B7BBCA0();
  return sub_23B7AA658;
}

void sub_23B7AA658(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_23B7AA6BC(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_23B7AA6DC()
{
  result = qword_27E181848;
  if (!qword_27E181848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828);
    sub_23B7AA760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181848);
  }

  return result;
}

unint64_t sub_23B7AA760()
{
  result = qword_27E181850;
  if (!qword_27E181850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181858);
    sub_23B7AA7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181850);
  }

  return result;
}

unint64_t sub_23B7AA7EC()
{
  result = qword_27E181860;
  if (!qword_27E181860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181868);
    sub_23B7AA8A4();
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181860);
  }

  return result;
}

unint64_t sub_23B7AA8A4()
{
  result = qword_27E181870;
  if (!qword_27E181870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181878);
    sub_23B7AA95C();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181870);
  }

  return result;
}

unint64_t sub_23B7AA95C()
{
  result = qword_27E181880;
  if (!qword_27E181880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181888);
    sub_23B781DAC();
    sub_23B7826A0(&qword_27E181890, &qword_27E181898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181880);
  }

  return result;
}

uint64_t sub_23B7AAA24(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_23B781E88(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23B7AAA70(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_23B781FB4(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_23B7AAAC8()
{
  result = qword_27E1818B8;
  if (!qword_27E1818B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818);
    sub_23B7826A0(&qword_27E1818C0, &qword_27E1818C8);
    sub_23B7826A0(&qword_27E1818D0, &qword_27E1818D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1818B8);
  }

  return result;
}

uint64_t sub_23B7AABEC()
{
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181820);
  type metadata accessor for OfferView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181828);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181818);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BC0A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23B7AAF54()
{
  result = qword_27E181928;
  if (!qword_27E181928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181928);
  }

  return result;
}

unint64_t sub_23B7AAFAC()
{
  result = qword_27E181930;
  if (!qword_27E181930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181930);
  }

  return result;
}

char *sub_23B7AB000(char *a1, int64_t a2, char a3)
{
  result = sub_23B7AB0F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23B7AB020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B7AB068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_23B7AB0D8(size_t a1, int64_t a2, char a3)
{
  result = sub_23B7AB1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23B7AB0F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181978);
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

size_t sub_23B7AB1FC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181970);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938) - 8);
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

uint64_t sub_23B7AB400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7AB470(uint64_t a1)
{
  v92 = sub_23B7BBDD0();
  v74 = *(v92 - 8);
  v2 = MEMORY[0x28223BE20](v92);
  *&v91 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v78 = &v74 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938);
  v89 = *(v87 - 8);
  v5 = MEMORY[0x28223BE20](v87);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v74 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - v9;
  v11 = sub_23B7BBE10();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181940);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181958);
  MEMORY[0x28223BE20](v75);
  v19 = &v74 - v18;
  v20 = sub_23B7AB020(&qword_27E181960, MEMORY[0x277CDF7F8]);
  v88 = v11;
  v86 = v20;
  v21 = sub_23B7BC8A0();
  if (*(*(a1 + *(v15 + 52)) + 16) >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(*(a1 + *(v15 + 52)) + 16);
  }

  v79 = v10;
  *&v90 = v15;
  v83 = v21;
  if (!v22)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_15:
    v28 = *(v89 + 80);
    v29 = *(v25 + 3);

    sub_23B779B38(a1, v17, &qword_27E181940);
    (*(v12 + 32))(v14, v17, v88);
    sub_23B7BC890();
    v30 = *&v17[*(v90 + 52)];
    v31 = &v19[*(v75 + 52)];
    v85 = v31;
    v86 = v30;
    *v31 = v30;
    *(v31 + 1) = 0;
    if (v83 < 0)
    {
LABEL_64:
      __break(1u);
    }

    else
    {
      v82 = v25;
      v76 = (v28 + 32) & ~v28;
      v32 = &v25[v76];
      v33 = v29 >> 1;
      v77 = v28;
      if (v22)
      {
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181968) + 36);
        v35 = (v74 + 16);
        v83 = v86 + 32;
        v36 = (v74 + 32);
        v81 = v33 - v22;
        sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8]);
        v37 = 0;
        while (1)
        {
          result = sub_23B7BC9C0();
          if (*&v19[v34] == v93[0])
          {
            goto LABEL_69;
          }

          v39 = sub_23B7BC9E0();
          (*v35)(v91);
          v39(v93, 0);
          sub_23B7BC9D0();
          v40 = *(v86 + 16);
          if (v37 == v40)
          {
            goto LABEL_68;
          }

          if (v37 >= v40)
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v41 = v37 + 1;
          v42 = v84;
          v90 = *(v83 + 16 * v37);
          *(v85 + 1) = v37 + 1;
          v43 = *(v87 + 48);
          (*v36)(v42, v91, v92);
          *(v42 + v43) = v90;
          sub_23B7AB068(v42, v32);
          v32 += *(v89 + 72);
          v37 = v41;
          if (v22 == v41)
          {
            v44 = v74;
            v10 = v79;
            goto LABEL_24;
          }
        }
      }

      v81 = v29 >> 1;
      v44 = v74;
LABEL_24:
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181968) + 36);
      sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8]);
      sub_23B7BC9C0();
      if (*&v19[v45] != v93[0])
      {
        *&v90 = v44 + 16;
        v83 = v44 + 32;
        v84 = (v86 + 32);
        v46 = v78;
        while (1)
        {
          v50 = sub_23B7BC9E0();
          (*v90)(v46);
          v50(v93, 0);
          sub_23B7BC9D0();
          v51 = *(v86 + 16);
          if (v22 == v51)
          {
            break;
          }

          if (v22 >= v51)
          {
            goto LABEL_60;
          }

          v91 = *&v84[16 * v22];
          *(v85 + 1) = v22 + 1;
          v52 = *(v87 + 48);
          v53 = v80;
          (*v83)(v80, v46, v92);
          *(v53 + v52) = v91;
          sub_23B7AB068(v53, v10);
          if (v81)
          {
            v47 = v82;
            v48 = v81 - 1;
            if (__OFSUB__(v81, 1))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v54 = v82;
            v55 = *(v82 + 3);
            if (((v55 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_61;
            }

            v56 = v55 & 0xFFFFFFFFFFFFFFFELL;
            if (v56 <= 1)
            {
              v57 = 1;
            }

            else
            {
              v57 = v56;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181970);
            v58 = *(v89 + 72);
            v59 = v76;
            v47 = swift_allocObject();
            v60 = _swift_stdlib_malloc_size(v47);
            if (!v58)
            {
              goto LABEL_62;
            }

            v61 = v60 - v59;
            if (v60 - v59 == 0x8000000000000000 && v58 == -1)
            {
              goto LABEL_63;
            }

            v63 = v59;
            v64 = v61 / v58;
            *(v47 + 2) = v57;
            *(v47 + 3) = 2 * (v61 / v58);
            v65 = &v47[v59];
            v66 = *(v54 + 3) >> 1;
            v67 = v66 * v58;
            if (*(v54 + 2))
            {
              if (v47 < v54 || v65 >= &v54[v63 + v67])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              *(v54 + 2) = 0;
            }

            v32 = &v65[v67];
            v69 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - v66;

            v46 = v78;
            v10 = v79;
            v70 = __OFSUB__(v69, 1);
            v48 = v69 - 1;
            if (v70)
            {
LABEL_52:
              __break(1u);
              break;
            }
          }

          v81 = v48;
          sub_23B7AB068(v10, v32);
          v32 += *(v89 + 72);
          sub_23B7BC9C0();
          v49 = *&v19[v45];
          ++v22;
          v82 = v47;
          if (v49 == v93[0])
          {
            goto LABEL_55;
          }
        }

        (*(v74 + 8))(v46, v92);
      }

      v47 = v82;
LABEL_55:
      v19[*(v75 + 56)] = 1;
      sub_23B7826E8(v19, &qword_27E181958);
      v71 = *(v47 + 3);
      if (v71 < 2)
      {
        return v47;
      }

      v72 = v71 >> 1;
      v70 = __OFSUB__(v72, v81);
      v73 = v72 - v81;
      if (!v70)
      {
        *(v47 + 2) = v73;
        return v47;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  if (v22 <= 0)
  {
    v25 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181970);
  v23 = *(v89 + 72);
  v24 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v25 = swift_allocObject();
  v26 = _swift_stdlib_malloc_size(v25);
  if (!v23)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v26 - v24 != 0x8000000000000000 || v23 != -1)
  {
    *(v25 + 2) = v22;
    *(v25 + 3) = 2 * ((v26 - v24) / v23);
    v10 = v79;
LABEL_14:

    goto LABEL_15;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  result = (*(v74 + 8))(v91, v92);
LABEL_69:
  __break(1u);
  return result;
}