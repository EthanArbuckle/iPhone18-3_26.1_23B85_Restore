uint64_t sub_238242050()
{
  v1 = *(*(v0 + 368) + 112);
  *(v0 + 456) = v1;
  return MEMORY[0x2822009F8](sub_238242074, v1, 0);
}

uint64_t sub_238242074()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 368);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_2382420E0, v2, 0);
}

uint64_t sub_2382420E0()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[47];
  [v3 invalidate];
  swift_willThrow();

  v0[58] = v0[55];
  v4 = v0[29];
  (*(v0[37] + 8))(v0[39], v0[36]);

  return MEMORY[0x2822009F8](sub_238247644, v4, 0);
}

uint64_t sub_238242194()
{
  v1 = *(v0 + 392);

  *(v0 + 464) = *(v0 + 424);
  v2 = *(v0 + 232);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

  return MEMORY[0x2822009F8](sub_238247644, v2, 0);
}

uint64_t ElectricityInsightService.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_238242290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v60 = a7;
  v61 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a2;
  v58 = a10;
  v59 = a6;
  v55 = a9;
  v62 = a14;
  v53 = a1;
  v54 = a13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
  v49 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v50 = &v46 - v18;
  v20 = sub_238278BC0();
  v47 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v48 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v46 - v25;
  v52 = &v46 - v25;
  v27 = sub_2382791A0();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  (*(v21 + 16))(&v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v20);
  v46 = v16;
  (*(v16 + 16))(v19, v53, v15);
  v28 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v29 = (v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v16 + 80) + v33 + 8) & ~*(v16 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v51;
  (*(v21 + 32))(&v35[v28], v48, v47);
  v36 = &v35[v29];
  v37 = v57;
  *v36 = v56;
  *(v36 + 1) = v37;
  v38 = &v35[v30];
  v39 = v60;
  *v38 = v59;
  *(v38 + 1) = v39;
  v40 = v61;
  *&v35[v31] = v61;
  *&v35[v32] = v55;
  v41 = v58;
  *&v35[v33] = v58;
  (*(v46 + 32))(&v35[v34], v50, v49);

  v42 = v40;
  swift_unknownObjectRetain();
  v43 = v41;
  v44 = v52;
  sub_23824B564(0, 0, v52, v62, v35);

  return sub_238246914(v44);
}

uint64_t sub_2382425F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v32;
  *(v8 + 232) = v31;
  *(v8 + 216) = v30;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  *(v8 + 256) = v10;
  v11 = *(v10 - 8);
  *(v8 + 264) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E8, &qword_23827F220);
  *(v8 + 280) = v13;
  v14 = *(v13 - 8);
  *(v8 + 288) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F0, &qword_23827F228) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F8, &qword_23827F230);
  *(v8 + 312) = v17;
  v18 = *(v17 - 8);
  *(v8 + 320) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v20 = sub_238278B10();
  *(v8 + 336) = v20;
  v21 = *(v20 - 8);
  *(v8 + 344) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v23 = sub_238278BC0();
  *(v8 + 360) = v23;
  v24 = *(v23 - 8);
  *(v8 + 368) = v24;
  *(v8 + 376) = *(v24 + 64);
  *(v8 + 384) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7900, &qword_23827F238);
  *(v8 + 392) = v25;
  v26 = *(v25 - 8);
  *(v8 + 400) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238242910, a4, 0);
}

uint64_t sub_238242910()
{
  v0[52] = sub_23824C004(v0[23], v0[24], v0[25]);
  v0[53] = v1;

  return MEMORY[0x2822009F8](sub_238242980, 0, 0);
}

uint64_t sub_238242980()
{
  v1 = v0[26];
  v2 = *(v0[53] + qword_27DEF79F0);
  v0[54] = v2;
  v3 = v2;
  v9 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_238242A9C;
  v6 = v0[51];
  v7 = v0[27];

  return v9(v6, v3);
}

uint64_t sub_238242A9C()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238242BB0, 0, 0);
}

uint64_t sub_238242BB0()
{
  v1 = v0[53];
  v21 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v22 = v0[22];
  v23 = v0[28];
  v19 = *(v4 + 16);
  v20 = v0[23];
  v16 = v5;
  v19(v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v18 = *(v4 + 32);
  v18(v7 + v17, v3, v5);
  *(v7 + v6) = v1;
  v0[6] = sub_2382471C4;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238250868;
  v0[5] = &block_descriptor_44;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v1;

  [v23 setInterruptionHandler_];
  _Block_release(v8);
  (v19)(v3, v20, v16);
  v11 = swift_allocObject();
  v18(v11 + v17, v3, v16);
  *(v11 + v6) = v10;
  v0[12] = sub_238247280;
  v0[13] = v11;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238250868;
  v0[11] = &block_descriptor_50;
  v12 = _Block_copy(v0 + 8);
  v13 = v0[13];
  v14 = v10;

  [v23 setInvalidationHandler_];
  _Block_release(v12);
  v0[56] = [v21 endpoint];

  return MEMORY[0x2822009F8](sub_238242E68, v22, 0);
}

uint64_t sub_238242E68()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 456) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_238242FB8;

  return (sub_23825F914)(v3);
}

uint64_t sub_238242FB8()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2382430E0, v3, 0);
}

uint64_t sub_2382430E0()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v42 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    super_class = v0[21].super_class;
    v4 = *(super_class + 2);
    super_class = (super_class + 16);
    v39 = v4;
    v5 = v1 + ((*(super_class + 64) + 32) & ~*(super_class + 64));
    v6 = *MEMORY[0x277D861C0];
    v37 = *(super_class + 7);
    v36 = *MEMORY[0x277D861E8];
    v34 = (super_class - 8);
    v35 = (super_class + 16);
    v7 = MEMORY[0x277D84F90];
    v38 = *MEMORY[0x277D861C0];
    while (1)
    {
      v40 = v7;
      v41 = v2;
      v39(v0[22].receiver, v5, v0[21].receiver);
      type metadata accessor for SandboxExtension.Context();
      v10 = swift_allocObject();
      v10[2] = j__sandbox_extension_consume;
      v10[3] = 0;
      v10[4] = j__sandbox_extension_release;
      v10[5] = 0;
      v10[6] = j__sandbox_extension_issue_file;
      v10[7] = 0;
      v11 = type metadata accessor for SandboxExtension();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + 40) = 0;
      *(v14 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v17 = v14;
      receiver = v0[22].receiver;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v19 = sandbox_extension_issue_file();

      v20 = v0[22].receiver;
      v21 = v0[21].receiver;
      if (v19)
      {
        *(v17 + 3) = sub_238279050();
        *(v17 + 4) = v22;
        free(v19);
        (*v35)(&v17[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v20, v21);
        *(v17 + 2) = v10;

        MEMORY[0x2383ECFB0](v23);
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v42;
      }

      else
      {

        (*v34)(v20, v21);
        v8 = *(*v17 + 48);
        v9 = *(*v17 + 52);
        swift_deallocPartialClassInstance();
        v7 = v40;
      }

      v6 = v38;
      v5 += v37;
      v2 = v41 - 1;
      if (v41 == 1)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v25 = v0[28].receiver;
    v27 = v0[14].super_class;
    v26 = v0[15].receiver;
    v28 = type metadata accessor for XPCSandboxExtensionContainer();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    v0[10].receiver = v29;
    v0[10].super_class = v28;
    v30 = objc_msgSendSuper2(v0 + 10, sel_init);
    v0[9].receiver = sub_2382599AC;
    v0[9].super_class = 0;
    v0[7].receiver = MEMORY[0x277D85DD0];
    v0[7].super_class = 1107296256;
    v0[8].receiver = sub_238250868;
    v0[8].super_class = &block_descriptor_54;
    v31 = _Block_copy(&v0[7]);
    v32 = v30;
    [(objc_class *)v27 batchedDeviceInsightsWithRequest:v26 endpoint:v25 ekSandboxExtension:v32 completion:v31];

    _Block_release(v31);
    v14 = sub_23824352C;
    v15 = 0;
    v16 = 0;
  }

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_23824352C()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[41];
  sub_2382791F0();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_2382435E0;
  v6 = v0[41];
  v7 = v0[38];
  v8 = v0[39];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_2382435E0()
{
  v1 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2382436DC, 0, 0);
}

uint64_t sub_2382436DC()
{
  v1 = v0[38];
  if ((*(v0[33] + 48))(v1, 1, v0[32]) == 1)
  {
    v2 = v0[22];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = *(v2 + 112);
    v0[60] = v3;

    return MEMORY[0x2822009F8](sub_23824387C, v3, 0);
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    v7 = v0[31];
    sub_2382472A0(v1, v0[34], &qword_27DEF7890, &qword_23827F108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
    sub_2382791C0();
    (*(v5 + 8))(v4, v6);
    v8 = *(MEMORY[0x277D85798] + 4);
    v9 = swift_task_alloc();
    v0[59] = v9;
    *v9 = v0;
    v9[1] = sub_2382435E0;
    v10 = v0[41];
    v11 = v0[38];
    v12 = v0[39];

    return MEMORY[0x2822003E8](v11, 0, 0, v12);
  }
}

uint64_t sub_23824387C()
{
  v1 = *(v0 + 480);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_2382438E4, 0, 0);
}

uint64_t sub_2382438E4()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[44];
  v12 = v0[41];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[34];
  v8 = v0[31];
  v9 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  sub_2382791D0();
  [v9 invalidate];

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_238243A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v32;
  *(v8 + 232) = v31;
  *(v8 + 216) = v30;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  *(v8 + 256) = v10;
  v11 = *(v10 - 8);
  *(v8 + 264) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B8, &qword_23827F1C8);
  *(v8 + 280) = v13;
  v14 = *(v13 - 8);
  *(v8 + 288) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78C0, &qword_23827F1D0) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78C8, &qword_23827F1D8);
  *(v8 + 312) = v17;
  v18 = *(v17 - 8);
  *(v8 + 320) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v20 = sub_238278B10();
  *(v8 + 336) = v20;
  v21 = *(v20 - 8);
  *(v8 + 344) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v23 = sub_238278BC0();
  *(v8 + 360) = v23;
  v24 = *(v23 - 8);
  *(v8 + 368) = v24;
  *(v8 + 376) = *(v24 + 64);
  *(v8 + 384) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78D0, &qword_23827F1E0);
  *(v8 + 392) = v25;
  v26 = *(v25 - 8);
  *(v8 + 400) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238243D28, a4, 0);
}

uint64_t sub_238243D28()
{
  v0[52] = sub_23824C6BC(v0[23], v0[24], v0[25]);
  v0[53] = v1;

  return MEMORY[0x2822009F8](sub_238243D98, 0, 0);
}

uint64_t sub_238243D98()
{
  v1 = v0[26];
  v2 = *(v0[53] + qword_27DEF79F0);
  v0[54] = v2;
  v3 = v2;
  v9 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_238243EB4;
  v6 = v0[51];
  v7 = v0[27];

  return v9(v6, v3);
}

uint64_t sub_238243EB4()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238243FC8, 0, 0);
}

uint64_t sub_238243FC8()
{
  v1 = v0[53];
  v21 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v22 = v0[22];
  v23 = v0[28];
  v19 = *(v4 + 16);
  v20 = v0[23];
  v16 = v5;
  v19(v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v18 = *(v4 + 32);
  v18(v7 + v17, v3, v5);
  *(v7 + v6) = v1;
  v0[6] = sub_238246980;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238250868;
  v0[5] = &block_descriptor;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v1;

  [v23 setInterruptionHandler_];
  _Block_release(v8);
  (v19)(v3, v20, v16);
  v11 = swift_allocObject();
  v18(v11 + v17, v3, v16);
  *(v11 + v6) = v10;
  v0[12] = sub_2382469B8;
  v0[13] = v11;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238250868;
  v0[11] = &block_descriptor_20;
  v12 = _Block_copy(v0 + 8);
  v13 = v0[13];
  v14 = v10;

  [v23 setInvalidationHandler_];
  _Block_release(v12);
  v0[56] = [v21 endpoint];

  return MEMORY[0x2822009F8](sub_238244280, v22, 0);
}

uint64_t sub_238244280()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 456) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_2382443D0;

  return (sub_23825F914)(v3);
}

uint64_t sub_2382443D0()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2382444F8, v3, 0);
}

uint64_t sub_2382444F8()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v42 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    super_class = v0[21].super_class;
    v4 = *(super_class + 2);
    super_class = (super_class + 16);
    v39 = v4;
    v5 = v1 + ((*(super_class + 64) + 32) & ~*(super_class + 64));
    v6 = *MEMORY[0x277D861C0];
    v37 = *(super_class + 7);
    v36 = *MEMORY[0x277D861E8];
    v34 = (super_class - 8);
    v35 = (super_class + 16);
    v7 = MEMORY[0x277D84F90];
    v38 = *MEMORY[0x277D861C0];
    while (1)
    {
      v40 = v7;
      v41 = v2;
      v39(v0[22].receiver, v5, v0[21].receiver);
      type metadata accessor for SandboxExtension.Context();
      v10 = swift_allocObject();
      v10[2] = j__sandbox_extension_consume;
      v10[3] = 0;
      v10[4] = j__sandbox_extension_release;
      v10[5] = 0;
      v10[6] = j__sandbox_extension_issue_file;
      v10[7] = 0;
      v11 = type metadata accessor for SandboxExtension();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + 40) = 0;
      *(v14 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v17 = v14;
      receiver = v0[22].receiver;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v19 = sandbox_extension_issue_file();

      v20 = v0[22].receiver;
      v21 = v0[21].receiver;
      if (v19)
      {
        *(v17 + 3) = sub_238279050();
        *(v17 + 4) = v22;
        free(v19);
        (*v35)(&v17[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v20, v21);
        *(v17 + 2) = v10;

        MEMORY[0x2383ECFB0](v23);
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v42;
      }

      else
      {

        (*v34)(v20, v21);
        v8 = *(*v17 + 48);
        v9 = *(*v17 + 52);
        swift_deallocPartialClassInstance();
        v7 = v40;
      }

      v6 = v38;
      v5 += v37;
      v2 = v41 - 1;
      if (v41 == 1)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v25 = v0[28].receiver;
    v27 = v0[14].super_class;
    v26 = v0[15].receiver;
    v28 = type metadata accessor for XPCSandboxExtensionContainer();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    v0[10].receiver = v29;
    v0[10].super_class = v28;
    v30 = objc_msgSendSuper2(v0 + 10, sel_init);
    v0[9].receiver = sub_2382599AC;
    v0[9].super_class = 0;
    v0[7].receiver = MEMORY[0x277D85DD0];
    v0[7].super_class = 1107296256;
    v0[8].receiver = sub_238250868;
    v0[8].super_class = &block_descriptor_24;
    v31 = _Block_copy(&v0[7]);
    v32 = v30;
    [(objc_class *)v27 batchedDeviceInsightsWithRequest:v26 endpoint:v25 ekSandboxExtension:v32 completion:v31];

    _Block_release(v31);
    v14 = sub_238244944;
    v15 = 0;
    v16 = 0;
  }

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_238244944()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[41];
  sub_2382791F0();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_2382449F8;
  v6 = v0[41];
  v7 = v0[38];
  v8 = v0[39];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_2382449F8()
{
  v1 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_238244AF4, 0, 0);
}

uint64_t sub_238244AF4()
{
  v1 = v0[38];
  if ((*(v0[33] + 48))(v1, 1, v0[32]) == 1)
  {
    v2 = v0[22];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = *(v2 + 112);
    v0[60] = v3;

    return MEMORY[0x2822009F8](sub_238244C94, v3, 0);
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    v7 = v0[31];
    sub_2382472A0(v1, v0[34], &qword_27DEF78A0, &qword_23827F128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A8, &unk_23827F1A0);
    sub_2382791C0();
    (*(v5 + 8))(v4, v6);
    v8 = *(MEMORY[0x277D85798] + 4);
    v9 = swift_task_alloc();
    v0[59] = v9;
    *v9 = v0;
    v9[1] = sub_2382449F8;
    v10 = v0[41];
    v11 = v0[38];
    v12 = v0[39];

    return MEMORY[0x2822003E8](v11, 0, 0, v12);
  }
}

uint64_t sub_238244C94()
{
  v1 = *(v0 + 480);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_238244CFC, 0, 0);
}

uint64_t sub_238244CFC()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[44];
  v12 = v0[41];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[34];
  v8 = v0[31];
  v9 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A8, &unk_23827F1A0);
  sub_2382791D0();
  [v9 invalidate];

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_238244E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238278CB0();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_238278F70();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238244F98, 0, 0);
}

uint64_t sub_238244F98()
{
  v30 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_2382792B0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v11)
  {
    v28 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v20 = sub_238279570();
    v27 = v12;
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_23824E308(v20, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v26, "[%s] Server connection interrupted", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    (*(v13 + 8))(v27, v28);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v24;

  return MEMORY[0x2822009F8](sub_23824763C, v24, 0);
}

uint64_t sub_238245248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238278CB0();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_238278F70();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382453C0, 0, 0);
}

uint64_t sub_2382453C0()
{
  v30 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_2382792B0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v11)
  {
    v28 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v20 = sub_238279570();
    v27 = v12;
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_23824E308(v20, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v26, "[%s] Server connection interrupted", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    (*(v13 + 8))(v27, v28);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v24;

  return MEMORY[0x2822009F8](sub_238247640, v24, 0);
}

uint64_t sub_238245670(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_238278BC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_2382791A0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v8 + 32))(v16 + v15, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v17 = a2;
  sub_2382505A8(0, 0, v13, a4, v16);
}

uint64_t sub_238245854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238278CB0();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_238278F70();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382459CC, 0, 0);
}

uint64_t sub_2382459CC()
{
  v30 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_2382792B0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v11)
  {
    v28 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v20 = sub_238279570();
    v27 = v12;
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_23824E308(v20, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v26, "[%s] Server connection invalidated", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    (*(v13 + 8))(v27, v28);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v24;

  return MEMORY[0x2822009F8](sub_238245C7C, v24, 0);
}

uint64_t sub_238245C7C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];
  sub_238248D64();

  v5 = v0[1];

  return v5();
}

uint64_t sub_238245D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238278CB0();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_238278F70();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238245E84, 0, 0);
}

uint64_t sub_238245E84()
{
  v30 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_2382792B0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v11)
  {
    v28 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v20 = sub_238279570();
    v27 = v12;
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_23824E308(v20, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v26, "[%s] Server connection invalidated", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    (*(v13 + 8))(v27, v28);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v24;

  return MEMORY[0x2822009F8](sub_238246134, v24, 0);
}

uint64_t sub_238246134()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];
  sub_238248D88();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2382461C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238246290, 0, 0);
}

uint64_t sub_238246290()
{
  v1 = *(*(v0 + 24) + qword_27DF03110);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_238246314, v1, 0);
}

uint64_t sub_238246314()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v4 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_238279210();

  v6 = v0[1];

  return v6();
}

uint64_t sub_238246400(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7898, &qword_23827F118);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382464CC, 0, 0);
}

uint64_t sub_2382464CC()
{
  v1 = *(*(v0 + 24) + qword_27DF03110);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_238246550, v1, 0);
}

uint64_t sub_238246550()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  (*(v4 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_238279210();

  v6 = v0[1];

  return v6();
}

uint64_t sub_23824673C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A8, &unk_23827F1A0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v24 = v1[3];
  v25 = v1[2];
  v13 = *(v1 + v6 + 8);
  v22 = *(v1 + v6);
  v23 = v1[4];
  v14 = v1 + v7;
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v18 = *(v1 + v7);
  v17 = *(v14 + 1);
  v19 = *(v1 + v10);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_238247660;

  return sub_238243A08(a1, v25, v24, v23, v1 + v5, v22, v13, v18);
}

uint64_t sub_238246914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2382469D8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_238278BC0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_238245670(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_238246A7C(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238245D0C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_238246B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238246BE4(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238245248(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v22 = sub_238278BC0();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v24 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12;
  v21 = *(v11 + 64);
  v14 = v5 | v12;
  v15 = *(v2 + 16);
  swift_unknownObjectRelease();
  v16 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v22);
  v17 = *(v2 + v7 + 8);

  v18 = *(v2 + v8 + 8);

  v19 = *(v2 + v10);
  swift_unknownObjectRelease();

  (*(v11 + 8))(v2 + v13, v24);

  return MEMORY[0x2821FE8E8](v2, v13 + v21, v14 | 7);
}

uint64_t sub_238246EF8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v24 = v1[3];
  v25 = v1[2];
  v13 = *(v1 + v6 + 8);
  v22 = *(v1 + v6);
  v23 = v1[4];
  v14 = v1 + v7;
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v18 = *(v1 + v7);
  v17 = *(v14 + 1);
  v19 = *(v1 + v10);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_2382470D0;

  return sub_2382425F0(a1, v25, v24, v23, v1 + v5, v22, v13, v18);
}

uint64_t sub_2382470D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2382472A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238247308(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238245854(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_28Tm()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_238247500(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238244E20(a1, v6, v7, v1 + v5, v8);
}

uint64_t ElectricityInsightService.energyInsights(using:atVenue:wholeHomeOptimization:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 448) = a4;
  *(v5 + 208) = a3;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  *(v5 + 224) = v6;
  v7 = *(v6 - 8);
  *(v5 + 232) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v9 = sub_238278AA0();
  *(v5 + 248) = v9;
  v10 = *(v9 - 8);
  *(v5 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v12 = sub_238278BC0();
  *(v5 + 272) = v12;
  v13 = *(v12 - 8);
  *(v5 + 280) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238247814, v4, 0);
}

uint64_t sub_238247814()
{
  if (sub_238278D20())
  {
    goto LABEL_9;
  }

  v1 = sub_238278D00();
  *(v0 + 304) = v1;
  *(v0 + 40) = v1;
  v2 = sub_238246B9C(&qword_27DEF7880, MEMORY[0x277D073A0]);
  *(v0 + 312) = v2;
  *(v0 + 48) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 440) = *MEMORY[0x277D07378];
  v4 = *(v1 - 8);
  v5 = *(v4 + 104);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(boxed_opaque_existential_1);
  v6 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 444) = *MEMORY[0x277D07388];
  v5(v7);
  v8 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (v8)
  {
    if (qword_27DEF68B8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 296);
    v10 = qword_27DF03158;
    *(v0 + 336) = qword_27DF03158;
    sub_238278BB0();
    v11 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v12 = sub_238278FF0();
    v13 = [v11 initWithServiceName_];
    *(v0 + 344) = v13;

    v14 = [objc_opt_self() interfaceWithProtocol_];
    [v13 setRemoteObjectInterface_];

    [v13 resume];

    return MEMORY[0x2822009F8](sub_238247B08, v10, 0);
  }

  else
  {
LABEL_9:
    sub_238241158();
    swift_allocError();
    *v15 = 6;
    swift_willThrow();
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 264);
    v19 = *(v0 + 240);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_238247B08()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 440);
  v16 = *(v0 + 304);
  *(v0 + 120) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v2(boxed_opaque_existential_1, v3, v16);
  LOBYTE(v3) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 444);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v17 = *(v0 + 304);
  *(v0 + 160) = v17;
  v8 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v7(v8, v5, v17);
  LOBYTE(v5) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  if (v5)
  {
    v9 = swift_task_alloc();
    *(v0 + 352) = v9;
    *v9 = v0;
    v9[1] = sub_238247CBC;
    v10 = *(v0 + 336);

    return sub_2382592C4();
  }

  else
  {
LABEL_6:
    v12 = *(v0 + 344);
    sub_238241158();
    v13 = swift_allocError();
    *v14 = 6;
    swift_willThrow();

    *(v0 + 432) = v13;
    v15 = *(v0 + 216);
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

    return MEMORY[0x2822009F8](sub_2382486B0, v15, 0);
  }
}

uint64_t sub_238247CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  if (v0)
  {

    *(v2 + 432) = v0;
    v5 = *(v2 + 216);
    (*(*(v2 + 280) + 8))(*(v2 + 296), *(v2 + 272));
    v6 = sub_2382486B0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 336);
    v6 = sub_238247E0C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_238247E0C()
{
  super_class = v0[17].super_class;
  receiver = v0[18].receiver;
  v3 = v0[16].super_class;
  v4 = v0[17].receiver;
  v20 = receiver;
  v5 = v0[15].super_class;
  v24 = v0[16].receiver;
  v25 = v0[21].receiver;
  v6 = v0[12].super_class;
  v18 = v0[13].receiver;
  v23 = v24[2];
  v23(v3, v6, v5);
  v7 = type metadata accessor for ElectricityInsightQuery();
  v19 = *(v6 + v7[5]);
  v22 = *(v6 + v7[6]);
  v21 = *(v6 + v7[7]);
  v8 = *(super_class + 2);
  v8(receiver, v18, v4);
  Request = type metadata accessor for InsightQueryRequest();
  v10 = objc_allocWithZone(Request);
  v23(&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v3, v5);
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v19;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = 0;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v22;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v21;
  v8(&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v20, v4);
  v11 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v12 = 0;
  v12[8] = 1;
  v0[11].receiver = v10;
  v0[11].super_class = Request;
  v0[22].super_class = objc_msgSendSuper2(v0 + 11, sel_init);
  v13 = *(super_class + 1);
  v0[23].receiver = v13;
  v0[23].super_class = ((super_class + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v13(v20, v4);
  (v24[1])(v3, v5);
  v14 = v25[14];
  v15 = swift_task_alloc();
  v0[24].receiver = v15;
  *v15 = v0;
  v15[1] = sub_238248084;
  v16 = v0[18].super_class;

  return sub_238256AFC(v16);
}

uint64_t sub_238248084()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {
    v4 = v3[42];

    return MEMORY[0x2822009F8](sub_23824861C, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[50] = v5;
    *v5 = v3;
    v5[1] = sub_2382481F4;
    v6 = v3[42];
    v7 = v3[43];

    return sub_238258C58(v7);
  }
}

uint64_t sub_2382481F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = v1;

  v7 = v4[42];
  if (v1)
  {
    v8 = sub_2382484D8;
  }

  else
  {
    v4[52] = a1;
    v8 = sub_238248330;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238248330()
{
  v1 = *(v0 + 416);
  v15 = *(v0 + 368);
  v16 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 296);
  v17 = *(v0 + 288);
  v18 = *(v0 + 264);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v12 = *(v0 + 224);
  v8 = *(v0 + 448);
  v13 = *(v0 + 192);
  v14 = *(v0 + 272);
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  *(v9 + 32) = sub_2382599B4;
  *(v9 + 40) = 0;
  *(v9 + 48) = &unk_23827F268;
  *(v9 + 56) = 0;
  *(v9 + 64) = v4;
  *(v9 + 72) = v1;
  *(v9 + 80) = v2;
  *(v9 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v12);
  sub_238279210();

  swift_unknownObjectRelease();

  v15(v5, v14);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2382484D8()
{
  v1 = *(*(v0 + 336) + 112);
  *(v0 + 424) = v1;
  return MEMORY[0x2822009F8](sub_2382484FC, v1, 0);
}

uint64_t sub_2382484FC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_238248568, v2, 0);
}

uint64_t sub_238248568()
{
  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[43];
  [v3 invalidate];
  swift_willThrow();

  v0[54] = v0[51];
  v4 = v0[27];
  (*(v0[35] + 8))(v0[37], v0[34]);

  return MEMORY[0x2822009F8](sub_2382486B0, v4, 0);
}

uint64_t sub_23824861C()
{
  v1 = *(v0 + 360);

  *(v0 + 432) = *(v0 + 392);
  v2 = *(v0 + 216);
  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

  return MEMORY[0x2822009F8](sub_2382486B0, v2, 0);
}

uint64_t sub_2382486B0()
{
  v1 = v0[54];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];
  v5 = v0[30];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23824873C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v26 = a1;
  v27 = a2;
  v8 = sub_238278CB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238278F70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v18 = *(*v7 + 104);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + *(*v7 + 120)) = 1;
  (*(v9 + 104))(v12, *MEMORY[0x277D076A8], v8);
  sub_238278CA0();
  (*(v9 + 8))(v12, v8);
  v20 = sub_238278F60();
  v21 = sub_2382792A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_238215000, v20, v21, "[DataStream] Initialized data stream", v22, 2u);
    MEMORY[0x2383EDB00](v22, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v23 = (v7 + *(*v7 + 112));
  v24 = v27;
  *v23 = v26;
  v23[1] = v24;
  return v7;
}

uint64_t sub_238248A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v30 = a5;
  v31 = a6;
  v32 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_238278CB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_238278F70();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277D076A8], v13);
  sub_238278CA0();
  (*(v14 + 8))(v17, v13);
  v23 = sub_238278F60();
  v24 = sub_238279290();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_238215000, v23, v24, "[DataStream] Setup data stream", v25, 2u);
    MEMORY[0x2383EDB00](v25, -1, -1);
  }

  (*(v19 + 8))(v22, v18);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v27 = *(v26 - 8);
  (*(v27 + 16))(v12, v32, v26);
  (*(v27 + 56))(v12, 0, 1, v26);
  v28 = *(*a2 + 104);
  swift_beginAccess();
  sub_23823D8D4(v12, a2 + v28, a3, a4);
  result = swift_endAccess();
  *(a2 + *(*a2 + 120)) = 0;
  return result;
}

uint64_t sub_238248DAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - v8;
  v69 = a3;
  v70 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v62 - v13;
  v14 = sub_238278CB0();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_238278F70();
  v68 = *(v73 - 8);
  v19 = *(v68 + 64);
  v20 = MEMORY[0x28223BE20](v73);
  v64 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = *MEMORY[0x277D076A8];
  v27 = v15[13];
  v27(v18, v26, v14);
  sub_238278CA0();
  v67 = v15[1];
  v67(v18, v14);
  v28 = sub_238278F60();
  v29 = sub_238279290();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_238215000, v28, v29, "[DataStream] Server invalidated connection", v30, 2u);
    MEMORY[0x2383EDB00](v30, -1, -1);
  }

  v31 = *(v68 + 8);
  v31(v25, v73);
  v32 = *(*v74 + 120);
  v33 = *(v74 + v32);
  v27(v18, v26, v14);
  if (v33)
  {
    v34 = v64;
    sub_238278CA0();
    v67(v18, v14);
    v35 = sub_238278F60();
    v36 = sub_2382792A0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_238215000, v35, v36, "[DataStream] Stream already finished", v37, 2u);
      MEMORY[0x2383EDB00](v37, -1, -1);
    }

    v31(v34, v73);
    v38 = v74;
    v39 = *(*v74 + 104);
    swift_beginAccess();
    v40 = v38 + v39;
    v41 = v66;
    v43 = v69;
    v42 = v70;
    sub_23823D83C(v40, v66, v69, v70);
    v44 = v71;
    if ((*(v71 + 48))(v41, 1, v72))
    {
      return sub_23824C65C(v41, v43, v42);
    }

    else
    {
      v58 = v62;
      v59 = v72;
      (*(v44 + 16))(v62, v41, v72);
      sub_23824C65C(v41, v43, v42);
      sub_2382791D0();
      return (*(v44 + 8))(v58, v59);
    }
  }

  else
  {
    v46 = v63;
    sub_238278CA0();
    v67(v18, v14);
    v47 = sub_238278F60();
    v48 = sub_2382792A0();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v69;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_238215000, v47, v48, "[DataStream] Marking continuation as finished", v51, 2u);
      MEMORY[0x2383EDB00](v51, -1, -1);
    }

    v31(v46, v73);
    v52 = v74;
    v53 = *(*v74 + 104);
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v65;
    v56 = v70;
    sub_23823D83C(v54, v65, v50, v70);
    v57 = v71;
    if ((*(v71 + 48))(v55, 1, v72))
    {
      result = sub_23824C65C(v55, v50, v56);
    }

    else
    {
      v60 = v62;
      v61 = v72;
      (*(v57 + 16))(v62, v55, v72);
      sub_23824C65C(v55, v50, v56);
      sub_2382791D0();
      result = (*(v57 + 8))(v60, v61);
    }

    *(v74 + v32) = 1;
  }

  return result;
}

uint64_t sub_238249454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, unsigned __int8 a11)
{
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v52 = a4;
  v53 = a5;
  v59 = a2;
  v49 = a1;
  v55 = a11;
  v54 = a10;
  v51 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  v47 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v48 = &v44 - v15;
  v17 = sub_238278BC0();
  v45 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v46 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v44 - v22;
  v50 = &v44 - v22;
  v24 = sub_2382791A0();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v18 + 16))(&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v17);
  v44 = v13;
  (*(v13 + 16))(v16, v49, v12);
  v25 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v13 + 80) + v30 + 9) & ~*(v13 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v59;
  (*(v18 + 32))(&v32[v25], v46, v45);
  v33 = &v32[v26];
  v34 = v53;
  *v33 = v52;
  *(v33 + 1) = v34;
  v35 = &v32[v27];
  v36 = v57;
  *v35 = v56;
  *(v35 + 1) = v36;
  v37 = v58;
  *&v32[v28] = v58;
  *&v32[v29] = v51;
  v38 = &v32[v30];
  v39 = v54;
  *v38 = v54;
  v38[8] = v55;
  (*(v44 + 32))(&v32[v31], v48, v47);

  v40 = v37;
  swift_unknownObjectRetain();
  v41 = v39;
  v42 = v50;
  sub_23824B564(0, 0, v50, &unk_23827F278, v32);

  return sub_23824C65C(v42, &qword_27DEF78B0, &qword_23827F360);
}

uint64_t sub_2382497F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v33;
  *(v8 + 488) = v32;
  *(v8 + 232) = v31;
  *(v8 + 216) = v30;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  *(v8 + 256) = v10;
  v11 = *(v10 - 8);
  *(v8 + 264) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E8, &qword_23827F220);
  *(v8 + 280) = v13;
  v14 = *(v13 - 8);
  *(v8 + 288) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F0, &qword_23827F228) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F8, &qword_23827F230);
  *(v8 + 312) = v17;
  v18 = *(v17 - 8);
  *(v8 + 320) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v20 = sub_238278B10();
  *(v8 + 336) = v20;
  v21 = *(v20 - 8);
  *(v8 + 344) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v23 = sub_238278BC0();
  *(v8 + 360) = v23;
  v24 = *(v23 - 8);
  *(v8 + 368) = v24;
  *(v8 + 376) = *(v24 + 64);
  *(v8 + 384) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7900, &qword_23827F238);
  *(v8 + 392) = v25;
  v26 = *(v25 - 8);
  *(v8 + 400) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238249B1C, a4, 0);
}

uint64_t sub_238249B1C()
{
  v0[52] = sub_23824C004(v0[23], v0[24], v0[25]);
  v0[53] = v1;

  return MEMORY[0x2822009F8](sub_238249B8C, 0, 0);
}

uint64_t sub_238249B8C()
{
  v1 = v0[26];
  v2 = *(v0[53] + qword_27DEF79F0);
  v0[54] = v2;
  v3 = v2;
  v9 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_238249CA8;
  v6 = v0[51];
  v7 = v0[27];

  return v9(v6, v3);
}

uint64_t sub_238249CA8()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238249DBC, 0, 0);
}

uint64_t sub_238249DBC()
{
  v1 = v0[53];
  v21 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v22 = v0[22];
  v23 = v0[28];
  v19 = *(v4 + 16);
  v20 = v0[23];
  v16 = v5;
  v19(v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v18 = *(v4 + 32);
  v18(v7 + v17, v3, v5);
  *(v7 + v6) = v1;
  v0[6] = sub_23824C274;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238250868;
  v0[5] = &block_descriptor_0;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v1;

  [v23 setInterruptionHandler_];
  _Block_release(v8);
  (v19)(v3, v20, v16);
  v11 = swift_allocObject();
  v18(v11 + v17, v3, v16);
  *(v11 + v6) = v10;
  v0[12] = sub_23824C2AC;
  v0[13] = v11;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238250868;
  v0[11] = &block_descriptor_23;
  v12 = _Block_copy(v0 + 8);
  v13 = v0[13];
  v14 = v10;

  [v23 setInvalidationHandler_];
  _Block_release(v12);
  v0[56] = [v21 endpoint];

  return MEMORY[0x2822009F8](sub_23824A074, v22, 0);
}

uint64_t sub_23824A074()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 456) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_23824A1C4;

  return (sub_23825F914)(v3);
}

uint64_t sub_23824A1C4()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23824A2EC, v3, 0);
}

uint64_t sub_23824A2EC()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v43 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 344);
    v4 = *(v3 + 16);
    v3 += 16;
    v40 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = *MEMORY[0x277D861C0];
    v38 = *(v3 + 56);
    v37 = *MEMORY[0x277D861E8];
    v35 = (v3 - 8);
    v36 = (v3 + 16);
    v7 = MEMORY[0x277D84F90];
    v39 = *MEMORY[0x277D861C0];
    while (1)
    {
      v41 = v7;
      v42 = v2;
      v40(*(v0 + 352), v5, *(v0 + 336));
      type metadata accessor for SandboxExtension.Context();
      v10 = swift_allocObject();
      v10[2] = j__sandbox_extension_consume;
      v10[3] = 0;
      v10[4] = j__sandbox_extension_release;
      v10[5] = 0;
      v10[6] = j__sandbox_extension_issue_file;
      v10[7] = 0;
      v11 = type metadata accessor for SandboxExtension();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + 40) = 0;
      *(v14 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v17 = v14;
      v18 = *(v0 + 352);
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v19 = sandbox_extension_issue_file();

      v20 = *(v0 + 352);
      v21 = *(v0 + 336);
      if (v19)
      {
        *(v17 + 3) = sub_238279050();
        *(v17 + 4) = v22;
        free(v19);
        (*v36)(&v17[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v20, v21);
        *(v17 + 2) = v10;

        MEMORY[0x2383ECFB0](v23);
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v43;
      }

      else
      {

        (*v35)(v20, v21);
        v8 = *(*v17 + 48);
        v9 = *(*v17 + 52);
        swift_deallocPartialClassInstance();
        v7 = v41;
      }

      v6 = v39;
      v5 += v38;
      v2 = v42 - 1;
      if (v42 == 1)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v25 = *(v0 + 448);
    v26 = *(v0 + 488);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v29 = type metadata accessor for XPCSandboxExtensionContainer();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    *(v0 + 160) = v30;
    *(v0 + 168) = v29;
    v31 = objc_msgSendSuper2((v0 + 160), sel_init);
    *(v0 + 144) = sub_2382599AC;
    *(v0 + 152) = 0;
    *(v0 + 112) = MEMORY[0x277D85DD0];
    *(v0 + 120) = 1107296256;
    *(v0 + 128) = sub_238250868;
    *(v0 + 136) = &block_descriptor_27;
    v32 = _Block_copy((v0 + 112));
    v33 = v31;
    [v28 batchedWholeHomeInsightsWithRequest:v27 endpoint:v25 ekSandboxExtension:v33 wholeHomeOptimization:v26 completion:v32];

    _Block_release(v32);
    v14 = sub_23824A740;
    v15 = 0;
    v16 = 0;
  }

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_23824A740()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[41];
  sub_2382791F0();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[59] = v5;
  *v5 = v0;
  v5[1] = sub_23824A7F4;
  v6 = v0[41];
  v7 = v0[38];
  v8 = v0[39];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_23824A7F4()
{
  v1 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23824A8F0, 0, 0);
}

uint64_t sub_23824A8F0()
{
  v1 = v0[38];
  if ((*(v0[33] + 48))(v1, 1, v0[32]) == 1)
  {
    v2 = v0[22];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = *(v2 + 112);
    v0[60] = v3;

    return MEMORY[0x2822009F8](sub_23824387C, v3, 0);
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    v7 = v0[31];
    sub_23824C36C(v1, v0[34]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
    sub_2382791C0();
    (*(v5 + 8))(v4, v6);
    v8 = *(MEMORY[0x277D85798] + 4);
    v9 = swift_task_alloc();
    v0[59] = v9;
    *v9 = v0;
    v9[1] = sub_23824A7F4;
    v10 = v0[41];
    v11 = v0[38];
    v12 = v0[39];

    return MEMORY[0x2822003E8](v11, 0, 0, v12);
  }
}

uint64_t sub_23824AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238278CB0();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_238278F70();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824ABF8, 0, 0);
}

uint64_t sub_23824ABF8()
{
  v30 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_2382792B0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v11)
  {
    v28 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v20 = sub_238279570();
    v27 = v12;
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_23824E308(v20, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v26, "[%s] Server connection interrupted", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    (*(v13 + 8))(v27, v28);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v24;

  return MEMORY[0x2822009F8](sub_23824C930, v24, 0);
}

uint64_t sub_23824AEA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_238278BC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_2382791A0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v8 + 32))(v16 + v15, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v17 = a2;
  sub_2382505A8(0, 0, v13, a4, v16);
}

uint64_t sub_23824B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238278CB0();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_238278F70();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824B204, 0, 0);
}

uint64_t sub_23824B204()
{
  v30 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_2382792B0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v11)
  {
    v28 = v0[10];
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v20 = sub_238279570();
    v27 = v12;
    v22 = v21;
    (*(v16 + 8))(v15, v17);
    v23 = sub_23824E308(v20, v22, &v29);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v26, "[%s] Server connection invalidated", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    (*(v13 + 8))(v27, v28);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v24;

  return MEMORY[0x2822009F8](sub_23824B4B4, v24, 0);
}

uint64_t sub_23824B4B4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];
  sub_238248DAC(&qword_27DEF78E0, &qword_23827F208, &qword_27DEF7908, &qword_23827F2A0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23824B564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23823D83C(a3, v27 - v11, &qword_27DEF78B0, &qword_23827F360);
  v13 = sub_2382791A0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23824C65C(v12, &qword_27DEF78B0, &qword_23827F360);
  }

  else
  {
    sub_238279190();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238279160();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238279010() + 32;
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

uint64_t sub_23824B824(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824B8F0, 0, 0);
}

uint64_t sub_23824B8F0()
{
  v1 = *(*(v0 + 24) + qword_27DF03110);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_23824B974, v1, 0);
}

uint64_t sub_23824B974()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v4 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_238279210();

  v6 = v0[1];

  return v6();
}

uint64_t sub_23824BAA0()
{
  v19 = sub_238278BC0();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v9;
  v18 = *(v8 + 64);
  v11 = v2 | v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v1 + 8))(v0 + v3, v19);
  v14 = *(v0 + v4 + 8);

  v15 = *(v0 + v5 + 8);

  v16 = *(v0 + v7);
  swift_unknownObjectRelease();

  (*(v8 + 8))(v0 + v10, v20);

  return MEMORY[0x2821FE8E8](v0, v10 + v18, v11 | 7);
}

uint64_t sub_23824BC78(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208) - 8);
  v25 = v1[3];
  v26 = v1[2];
  v12 = (*(v11 + 80) + v10 + 9) & ~*(v11 + 80);
  v23 = *(v1 + v6);
  v24 = v1[4];
  v22 = *(v1 + v6 + 8);
  v13 = v1 + v7;
  v15 = *(v1 + v7);
  v14 = *(v13 + 1);
  v16 = *(v1 + v8);
  v17 = *(v1 + v9);
  v18 = v1 + v10;
  v19 = *(v1 + v10);
  LOBYTE(v6) = v18[8];
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_2382470D0;

  return sub_2382497F4(a1, v26, v25, v24, v1 + v5, v23, v22, v15);
}

uint64_t sub_23824BE5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238247660;

  return sub_23824E094(a1, v5);
}

uint64_t sub_23824BF14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23824BF4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2382470D0;

  return sub_23824E094(a1, v5);
}

id sub_23824C004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() anonymousListener];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7910, &qword_23827F2B8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v15 = sub_23824873C(a2, a3, &qword_27DEF78E0, &qword_23827F208);
  v16 = *(v7 + 16);
  v16(v10, a1, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7918, &qword_23827F2C0);
  v18 = objc_allocWithZone(v17);
  v16(&v18[qword_27DEF7948], v10, v6);
  *&v18[qword_27DF03110] = v15;
  v25.receiver = v18;
  v25.super_class = v17;

  v19 = objc_msgSendSuper2(&v25, sel_init);
  (*(v7 + 8))(v10, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7920, &qword_23827F2C8);
  v21 = objc_allocWithZone(v20);
  *&v21[qword_27DEF79F0] = v19;
  v24.receiver = v21;
  v24.super_class = v20;
  v22 = v19;
  [v11 setDelegate_];
  [v11 resume];

  return v11;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23824C2CC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_238278BC0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23824AEA8(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_23824C36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23824C3E0(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_23824B08C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23824C500(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_23824AA80(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23824C65C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_23824C6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() anonymousListener];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7930, &qword_23827F2D8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v15 = sub_23824873C(a2, a3, &qword_27DEF78A8, &unk_23827F1A0);
  v16 = *(v7 + 16);
  v16(v10, a1, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7938, &qword_23827F2E0);
  v18 = objc_allocWithZone(v17);
  v16(&v18[qword_27DEF7948], v10, v6);
  *&v18[qword_27DF03110] = v15;
  v25.receiver = v18;
  v25.super_class = v17;

  v19 = objc_msgSendSuper2(&v25, sel_init);
  (*(v7 + 8))(v10, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7940, qword_23827F2E8);
  v21 = objc_allocWithZone(v20);
  *&v21[qword_27DEF79F0] = v19;
  v24.receiver = v21;
  v24.super_class = v20;
  v22 = v19;
  [v11 setDelegate_];
  [v11 resume];

  return v11;
}

uint64_t sub_23824C94C()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23824C9E8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DEF7948;
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23824CA60(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  v5 = sub_238278BC0();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_238278CB0();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v11 = sub_238278F70();
  *(v4 + 88) = v11;
  v12 = *(v11 - 8);
  *(v4 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824CBF8, 0, 0);
}

uint64_t sub_23824CBF8()
{
  v94 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v90 = *MEMORY[0x277D076A8];
  v87 = *(v3 + 104);
  v87(v2);
  sub_238278CA0();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v7 = v5;
  v8 = sub_238278F60();
  v9 = sub_2382792A0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  if (v10)
  {
    v82 = *(v0 + 120);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v75 = *(v0 + 40);
    v77 = v8;
    v16 = *(v0 + 32);
    v76 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v93 = v78;
    *v76 = 136315138;
    v79 = v12;
    v17 = qword_27DEF7948;
    v18 = sub_238278BC0();
    (*(*(v18 - 8) + 16))(v14, &v16[v17], v18);
    sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
    v19 = sub_238279570();
    v74 = v9;
    v21 = v20;

    (*(v15 + 8))(v14, v75);
    v22 = sub_23824E308(v19, v21, &v93);

    *(v76 + 4) = v22;
    _os_log_impl(&dword_238215000, v77, v74, "[ClientEndpointService] Received Data for session %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x2383EDB00](v78, -1, -1);
    MEMORY[0x2383EDB00](v76, -1, -1);

    v23 = *(v13 + 8);
    v23(v82, v79);
  }

  else
  {

    v23 = *(v13 + 8);
    v23(v11, v12);
  }

  v24 = *(*(v0 + 24) + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type);
  (v87)(*(v0 + 80), v90, *(v0 + 64));
  v25 = *(v0 + 80);
  v26 = *(v0 + 64);
  v27 = *(v0 + 32);
  if (v24 == 1)
  {
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    sub_238278CA0();
    v6(v25, v26);
    v30 = v27;
    v31 = sub_238278F60();
    v32 = sub_2382792A0();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);
    if (v33)
    {
      v85 = *(v0 + 96);
      v88 = *(v0 + 104);
      v38 = *(v0 + 48);
      v37 = *(v0 + 56);
      v39 = *(v0 + 32);
      v40 = *(v0 + 40);
      v91 = v23;
      v41 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v93 = v80;
      *v41 = 136315138;
      v83 = v36;
      v42 = qword_27DEF7948;
      v43 = sub_238278BC0();
      (*(*(v43 - 8) + 16))(v37, &v39[v42], v43);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
      v44 = sub_238279570();
      v46 = v45;

      (*(v38 + 8))(v37, v40);
      v47 = sub_23824E308(v44, v46, &v93);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_238215000, v31, v32, "[ClientEndpointService] Received Runtime Data for session %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x2383EDB00](v80, -1, -1);
      MEMORY[0x2383EDB00](v41, -1, -1);

      v91(v88, v83);
    }

    else
    {

      v23(v34, v36);
    }

    v68 = swift_task_alloc();
    *(v0 + 136) = v68;
    *v68 = v0;
    v69 = sub_23824D4FC;
  }

  else
  {
    v48 = *(v0 + 112);
    v49 = *(v0 + 80);
    sub_238278CA0();
    v6(v25, v26);
    v50 = v27;
    v51 = sub_238278F60();
    v52 = sub_2382792A0();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 112);
    v55 = *(v0 + 88);
    v56 = *(v0 + 96);
    if (v53)
    {
      v86 = *(v0 + 96);
      v89 = *(v0 + 112);
      v58 = *(v0 + 48);
      v57 = *(v0 + 56);
      v59 = *(v0 + 32);
      v60 = *(v0 + 40);
      v92 = v23;
      v61 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v93 = v81;
      *v61 = 136315138;
      v84 = v55;
      v62 = qword_27DEF7948;
      v63 = sub_238278BC0();
      (*(*(v63 - 8) + 16))(v57, &v59[v62], v63);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
      v64 = sub_238279570();
      v66 = v65;

      (*(v58 + 8))(v57, v60);
      v67 = sub_23824E308(v64, v66, &v93);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_238215000, v51, v52, "[ClientEndpointService] Received Energy Data for session %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x2383EDB00](v81, -1, -1);
      MEMORY[0x2383EDB00](v61, -1, -1);

      v92(v89, v84);
    }

    else
    {

      v23(v54, v55);
    }

    v68 = swift_task_alloc();
    *(v0 + 128) = v68;
    *v68 = v0;
    v69 = sub_23824D36C;
  }

  v68[1] = v69;
  v70 = *(v0 + 32);
  v71 = *(v0 + 144);
  v72 = *(v0 + 16);

  return sub_23824E8D0(v72, v71);
}

uint64_t sub_23824D36C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 56);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_23824D4FC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 56);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_23824D68C(void *a1, uint64_t a2, void *a3, void *a4, char a5, const void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = a1;
  v17 = sub_2382791A0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23827F370;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23827F380;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  sub_23824DDA8(0, 0, v14, &unk_23827F390, v19);
}

uint64_t sub_23824D82C(int a1, void *a2, char a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_2382790D0();
  v5[5] = v9;
  v10 = a2;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_23824D920;

  return sub_23824CA60(v9, v10, a3);
}

uint64_t sub_23824D920()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

void sub_23824DA94(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_23824FD18();
}

id sub_23824DAD4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ClientEndpointService();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23824DB44(uint64_t a1)
{
  v2 = qword_27DEF7948;
  v3 = sub_238278BC0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_27DF03110);
}

uint64_t sub_23824DBD8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_238247660;

  return v7();
}

uint64_t sub_23824DCC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2382470D0;

  return v8();
}

uint64_t sub_23824DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_238250030(a3, v25 - v11);
  v13 = sub_2382791A0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23824C65C(v12, &qword_27DEF78B0, &qword_23827F360);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_238279190();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_238279160();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_238279010() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_23824C65C(a3, &qword_27DEF78B0, &qword_23827F360);

    return v23;
  }

LABEL_8:
  sub_23824C65C(a3, &qword_27DEF78B0, &qword_23827F360);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23824E094(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23824E18C;

  return v7(a1);
}

uint64_t sub_23824E18C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23824E2AC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23824E308(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23824E308(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23824E3D4(v11, 0, 0, 1, a1, a2);
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
    sub_23824FBCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23824E3D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23824E4E0(a5, a6);
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
    result = sub_238279400();
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

uint64_t sub_23824E4E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23824E52C(a1, a2);
  sub_23824E65C(&unk_284B000D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23824E52C(uint64_t a1, unint64_t a2)
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

  v6 = sub_23824E748(v5, 0);
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

  result = sub_238279400();
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
        v10 = sub_238279060();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23824E748(v10, 0);
        result = sub_238279390();
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

uint64_t sub_23824E65C(uint64_t result)
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

  result = sub_23824E7BC(result, v12, 1, v3);
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

void *sub_23824E748(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF79D0, &qword_23827F350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23824E7BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF79D0, &qword_23827F350);
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

_BYTE **sub_23824E8B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23824E8D0(uint64_t a1, char a2)
{
  *(v3 + 268) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_238278BC0();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v7 = sub_238278CB0();
  *(v3 + 112) = v7;
  v8 = *(v7 - 8);
  *(v3 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v10 = sub_238278F70();
  *(v3 + 136) = v10;
  v11 = *(v10 - 8);
  *(v3 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v13 = *(*(sub_238278F40() - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF79D8, &qword_23827F358) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v15 = sub_238278EE0();
  *(v3 + 184) = v15;
  v16 = *(v15 - 8);
  *(v3 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824EB18, 0, 0);
}

uint64_t sub_23824EB18()
{
  v82 = v0;
  v1 = *(*(v0 + 72) + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    *(v0 + 264) = *MEMORY[0x277D076A8];
    *(v0 + 216) = 0;
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    v5 = *(v0 + 72);
    v6 = *(v5 + 32);
    *(v0 + 224) = v6;
    v7 = *(v5 + 40);
    *(v0 + 232) = v7;
    *(v0 + 56) = v6;
    *(v0 + 64) = v7;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_23824FC28(v6, v7);
    sub_23824FC28(v6, v7);
    sub_238278F30();
    sub_23824FC7C(&unk_27DEF79E0, MEMORY[0x277D07488]);
    sub_238278F50();
    *(v0 + 240) = 0;
    v41 = *(v0 + 264);
    v43 = *(v0 + 192);
    v42 = *(v0 + 200);
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    v46 = *(v0 + 160);
    v48 = *(v0 + 120);
    v47 = *(v0 + 128);
    v49 = *(v0 + 112);
    v79 = *(v0 + 80);
    (*(v43 + 56))(v45, 0, 1, v44);
    (*(v43 + 32))(v42, v45, v44);
    (*(v48 + 104))(v47, v41, v49);
    sub_238278CA0();
    (*(v48 + 8))(v47, v49);
    v50 = v79;
    v51 = sub_238278F60();
    v52 = sub_2382792A0();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 160);
    v55 = *(v0 + 136);
    v56 = *(v0 + 144);
    if (v53)
    {
      v80 = *(v0 + 160);
      v58 = *(v0 + 96);
      v57 = *(v0 + 104);
      v60 = *(v0 + 80);
      v59 = *(v0 + 88);
      v61 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81[0] = v75;
      *v61 = 136315138;
      v77 = v55;
      v62 = qword_27DEF7948;
      v63 = sub_238278BC0();
      v73 = v52;
      v64 = v60;
      (*(*(v63 - 8) + 16))(v57, v60 + v62, v63);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
      v65 = sub_238279570();
      v67 = v66;

      (*(v58 + 8))(v57, v59);
      v68 = sub_23824E308(v65, v67, v81);

      *(v61 + 4) = v68;
      _os_log_impl(&dword_238215000, v51, v73, "[ClientEndpointService] Received Data for session %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x2383EDB00](v75, -1, -1);
      MEMORY[0x2383EDB00](v61, -1, -1);

      (*(v56 + 8))(v80, v77);
    }

    else
    {

      (*(v56 + 8))(v54, v55);
    }

    v69 = *(*(v0 + 80) + qword_27DF03110);
    *(v0 + 248) = v69;
    v70 = sub_23824F254;
LABEL_15:
    v71 = v70;

    return MEMORY[0x2822009F8](v71, v69, 0);
  }

  if (*(v0 + 268))
  {
    v8 = *(v0 + 152);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    v12 = *(v0 + 80);
    (*(v10 + 104))(v9, *MEMORY[0x277D076A8], v11);
    sub_238278CA0();
    (*(v10 + 8))(v9, v11);
    v13 = v12;
    v14 = sub_238278F60();
    v15 = sub_238279290();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 136);
    if (v16)
    {
      v78 = *(v0 + 152);
      v21 = *(v0 + 96);
      v20 = *(v0 + 104);
      v23 = *(v0 + 80);
      v22 = *(v0 + 88);
      v24 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v81[0] = v74;
      *v24 = 136315138;
      v76 = v19;
      v25 = qword_27DEF7948;
      v26 = sub_238278BC0();
      v72 = v15;
      v27 = v23;
      (*(*(v26 - 8) + 16))(v20, v23 + v25, v26);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
      v28 = sub_238279570();
      v30 = v29;

      (*(v21 + 8))(v20, v22);
      v31 = sub_23824E308(v28, v30, v81);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_238215000, v14, v72, "[ClientEndpointService] Finished Receiving Data for session %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x2383EDB00](v74, -1, -1);
      MEMORY[0x2383EDB00](v24, -1, -1);

      (*(v18 + 8))(v78, v76);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v69 = *(*(v0 + 80) + qword_27DF03110);
    *(v0 + 256) = v69;
    v70 = sub_23824FB0C;
    goto LABEL_15;
  }

  v32 = *(v0 + 200);
  v33 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 152);
  v35 = *(v0 + 160);
  v37 = *(v0 + 128);
  v38 = *(v0 + 104);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_23824F254()
{
  v1 = *(v0 + 248);
  sub_238251520(*(v0 + 200));

  return MEMORY[0x2822009F8](sub_23824F2C8, 0, 0);
}

uint64_t sub_23824F2C8()
{
  v96 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_23824FCC4(*(v0 + 224), *(v0 + 232));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 216) + 1;
  if (v4 != *(v0 + 208))
  {
    v5 = *(v0 + 240);
    *(v0 + 216) = v4;
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 72) + 16 * v4;
    v10 = *(v9 + 32);
    *(v0 + 224) = v10;
    v11 = *(v9 + 40);
    *(v0 + 232) = v11;
    *(v0 + 56) = v10;
    *(v0 + 64) = v11;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_23824FC28(v10, v11);
    sub_23824FC28(v10, v11);
    sub_238278F30();
    sub_23824FC7C(&unk_27DEF79E0, MEMORY[0x277D07488]);
    sub_238278F50();
    *(v0 + 240) = v5;
    if (!v5)
    {
LABEL_11:
      v55 = *(v0 + 264);
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);
      v59 = *(v0 + 176);
      v58 = *(v0 + 184);
      v60 = *(v0 + 160);
      v62 = *(v0 + 120);
      v61 = *(v0 + 128);
      v63 = *(v0 + 112);
      v93 = *(v0 + 80);
      (*(v57 + 56))(v59, 0, 1, v58);
      (*(v57 + 32))(v56, v59, v58);
      (*(v62 + 104))(v61, v55, v63);
      sub_238278CA0();
      (*(v62 + 8))(v61, v63);
      v64 = v93;
      v65 = sub_238278F60();
      v66 = sub_2382792A0();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 160);
      v69 = *(v0 + 136);
      v70 = *(v0 + 144);
      if (v67)
      {
        v94 = *(v0 + 160);
        v72 = *(v0 + 96);
        v71 = *(v0 + 104);
        v74 = *(v0 + 80);
        v73 = *(v0 + 88);
        v75 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v95[0] = v89;
        *v75 = 136315138;
        v91 = v69;
        v76 = qword_27DEF7948;
        v77 = sub_238278BC0();
        v87 = v66;
        v78 = v74;
        (*(*(v77 - 8) + 16))(v71, v74 + v76, v77);
        sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
        v79 = sub_238279570();
        v81 = v80;

        (*(v72 + 8))(v71, v73);
        v82 = sub_23824E308(v79, v81, v95);

        *(v75 + 4) = v82;
        _os_log_impl(&dword_238215000, v65, v87, "[ClientEndpointService] Received Data for session %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x2383EDB00](v89, -1, -1);
        MEMORY[0x2383EDB00](v75, -1, -1);

        (*(v70 + 8))(v94, v91);
      }

      else
      {

        (*(v70 + 8))(v68, v69);
      }

      v83 = *(*(v0 + 80) + qword_27DF03110);
      *(v0 + 248) = v83;
      v84 = sub_23824F254;
LABEL_17:
      v85 = v84;

      return MEMORY[0x2822009F8](v85, v83, 0);
    }

    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    v14 = *(v0 + 176);

    sub_23824FCC4(v10, v11);
    (*(v13 + 56))(v14, 1, 1, v12);
    sub_23824C65C(v14, &qword_27DEF79D8, &qword_23827F358);
    v15 = *(v0 + 216) + 1;
    if (v15 != *(v0 + 208))
    {
      *(v0 + 216) = v15;
      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v18 = *(v0 + 168);
      v19 = *(v0 + 72) + 16 * v15;
      v20 = *(v19 + 32);
      *(v0 + 224) = v20;
      v21 = *(v19 + 40);
      *(v0 + 232) = v21;
      *(v0 + 56) = v20;
      *(v0 + 64) = v21;
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_23824FC28(v20, v21);
      sub_23824FC28(v20, v21);
      sub_238278F30();
      sub_238278F50();
      *(v0 + 240) = 0;
      goto LABEL_11;
    }
  }

  if (*(v0 + 268))
  {
    v22 = *(v0 + 152);
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 80);
    (*(v24 + 104))(v23, *MEMORY[0x277D076A8], v25);
    sub_238278CA0();
    (*(v24 + 8))(v23, v25);
    v27 = v26;
    v28 = sub_238278F60();
    v29 = sub_238279290();
    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 136);
    if (v30)
    {
      v92 = *(v0 + 152);
      v35 = *(v0 + 96);
      v34 = *(v0 + 104);
      v37 = *(v0 + 80);
      v36 = *(v0 + 88);
      v38 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v95[0] = v88;
      *v38 = 136315138;
      v90 = v33;
      v39 = qword_27DEF7948;
      v40 = sub_238278BC0();
      v86 = v29;
      v41 = v37;
      (*(*(v40 - 8) + 16))(v34, v37 + v39, v40);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0]);
      v42 = sub_238279570();
      v44 = v43;

      (*(v35 + 8))(v34, v36);
      v45 = sub_23824E308(v42, v44, v95);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_238215000, v28, v86, "[ClientEndpointService] Finished Receiving Data for session %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x2383EDB00](v88, -1, -1);
      MEMORY[0x2383EDB00](v38, -1, -1);

      (*(v32 + 8))(v92, v90);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v83 = *(*(v0 + 80) + qword_27DF03110);
    *(v0 + 256) = v83;
    v84 = sub_23824FB0C;
    goto LABEL_17;
  }

  v46 = *(v0 + 200);
  v47 = *(v0 + 168);
  v48 = *(v0 + 176);
  v50 = *(v0 + 152);
  v49 = *(v0 + 160);
  v51 = *(v0 + 128);
  v52 = *(v0 + 104);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_23824FB0C()
{
  v1 = v0[32];
  sub_2382519A4();

  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23824FBCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23824FC28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23824FC7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23824FCC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23824FD48()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23824FD98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2382470D0;

  return sub_23824D82C(v2, v3, v4, v6, v5);
}

uint64_t sub_23824FE60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238247660;

  return sub_23824DBD8(v2, v3, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23824FF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238247660;

  return sub_23824DCC0(a1, v4, v5, v7);
}

uint64_t sub_238250030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2382500A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2382500D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238247660;

  return sub_23824E094(a1, v5);
}

uint64_t sub_238250190(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2382470D0;

  return sub_23824E094(a1, v5);
}

uint64_t sub_238250298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_238278CB0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_238278F70();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382503B4, 0, 0);
}

uint64_t sub_2382503B4()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  v5 = sub_238278F60();
  v6 = sub_2382792B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238215000, v5, v6, "[ClientEndpointServiceDelegate] Server closed the connection", v7, 2u);
    MEMORY[0x2383EDB00](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[5];

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + qword_27DEF79F0);

    v15 = sub_23824E8C0();
    v0[12] = v15;

    return MEMORY[0x2822009F8](sub_238251448, v15, 0);
  }

  else
  {
    v16 = v0[11];
    v17 = v0[8];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2382505A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_238250030(a3, v27 - v11);
  v13 = sub_2382791A0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238246914(v12);
  }

  else
  {
    sub_238279190();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238279160();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238279010() + 32;
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

      sub_238246914(a3);

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

  sub_238246914(a3);
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

uint64_t sub_238250868(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2382508AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_2382791A0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a1;

  sub_2382505A8(0, 0, v12, a5, v14);
}

uint64_t sub_2382509C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_238278CB0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_238278F70();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238250ADC, 0, 0);
}

uint64_t sub_238250ADC()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  (*(v3 + 104))(v2, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v3 + 8))(v2, v4);
  v5 = sub_238278F60();
  v6 = sub_2382792B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238215000, v5, v6, "[ClientEndpointServiceDelegate] Server closed the connection", v7, 2u);
    MEMORY[0x2383EDB00](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[5];

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + qword_27DEF79F0);

    v15 = sub_23824E8C0();
    v0[12] = v15;

    return MEMORY[0x2822009F8](sub_238250CD0, v15, 0);
  }

  else
  {
    v16 = v0[11];
    v17 = v0[8];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_238250CD0()
{
  v1 = v0[12];
  sub_238251FC0();

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_238250D4C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_238250E84(v7);

  return v9 & 1;
}

void sub_238250DAC(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2382510FC();
}

id sub_238250DEC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ClientEndpointServiceDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_238250E84(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v8 = *((v4 & v3) + 0x50);
  v7[2] = v8;
  v9 = *((v4 & v3) + 0x58);
  v7[3] = v9;
  v7[4] = v6;
  v19 = sub_23825119C;
  v20 = v7;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_238250868;
  v18 = &block_descriptor_1;
  v10 = _Block_copy(&v15);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v19 = sub_2382511F0;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_238250868;
  v18 = &block_descriptor_11;
  v13 = _Block_copy(&v15);

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  [a1 resume];
  return 1;
}

uint64_t sub_23825112C()
{
  MEMORY[0x2383EDBA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238251164()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238251230(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2382470D0;

  return sub_2382509C0(a1, v6, v7, v8);
}

uint64_t sub_2382512F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_13Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238251370(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238250298(a1, v6, v7, v8);
}

uint64_t sub_238251450(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for ElectricityInsightRecord();
  sub_2382791E0();
  result = sub_238279300();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238251520(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  type metadata accessor for ElectricityInsightRecord();
  v7 = sub_2382791E0();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v9;
  v39 = sub_238279300();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v37 - v12;
  v45 = sub_2382791B0();
  v14 = sub_238279300();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v42 = &v37 - v16;
  v41 = swift_checkMetadataState();
  v17 = *(v41 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v41);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = v2 + *(v4 + 112);
  v25 = *v24;
  v26 = *(v24 + 8);

  v25(a1);
  v27 = v7;
  v28 = v39;
  v29 = v40;

  v30 = *(*v2 + 104);
  swift_beginAccess();
  (*(v10 + 16))(v13, v2 + v30, v28);
  v31 = (v10 + 8);
  if ((*(v29 + 48))(v13, 1, v27))
  {
    (*(v17 + 8))(v23, v41);
    (*v31)(v13, v28);
    v32 = 1;
    v33 = v42;
  }

  else
  {
    v34 = v38;
    (*(v29 + 16))(v38, v13, v27);
    (*v31)(v13, v28);
    v35 = v41;
    (*(v17 + 16))(v21, v23, v41);
    v33 = v42;
    sub_2382791C0();
    (*(v29 + 8))(v34, v27);
    (*(v17 + 8))(v23, v35);
    v32 = 0;
  }

  (*(*(v45 - 8) + 56))(v33, v32, 1);
  return (*(v43 + 8))(v33, v44);
}

uint64_t sub_2382519A4()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for ElectricityInsightRecord();
  v4 = sub_2382791E0();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - v6;
  v58 = v7;
  v8 = sub_238279300();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v50 - v10;
  v11 = sub_238278CB0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_238278F70();
  v16 = *(v62 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v62);
  v53 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v52 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  v24 = *MEMORY[0x277D076A8];
  v59 = v12[13];
  v59(v15, v24, v11);
  sub_238278CA0();
  v60 = v12[1];
  v60(v15, v11);
  v25 = sub_238278F60();
  v26 = sub_2382792A0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = v16;
    v28 = v27;
    *v27 = 0;
    _os_log_impl(&dword_238215000, v25, v26, "[DataStream] Marking stream finished", v27, 2u);
    v29 = v28;
    v16 = v61;
    MEMORY[0x2383EDB00](v29, -1, -1);
  }

  v30 = *(v16 + 8);
  v61 = v16 + 8;
  v30(v23, v62);
  v31 = *(*v1 + 120);
  v32 = *(v1 + v31);
  v59(v15, v24, v11);
  if (v32)
  {
    v33 = v53;
    sub_238278CA0();
    v60(v15, v11);
    v34 = sub_238278F60();
    v35 = sub_2382792A0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_238215000, v34, v35, "[DataStream] Stream already finished", v36, 2u);
      MEMORY[0x2383EDB00](v36, -1, -1);
    }

    return (v30)(v33, v62);
  }

  else
  {
    v38 = v52;
    sub_238278CA0();
    v60(v15, v11);
    v39 = sub_238278F60();
    v40 = sub_2382792A0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_238215000, v39, v40, "[DataStream] Marking continuation as finished", v41, 2u);
      MEMORY[0x2383EDB00](v41, -1, -1);
    }

    v30(v38, v62);
    *(v1 + v31) = 1;
    v42 = *(*v1 + 104);
    swift_beginAccess();
    v44 = v54;
    v43 = v55;
    v45 = v1 + v42;
    v46 = v56;
    (*(v55 + 16))(v54, v45, v56);
    v48 = v57;
    v47 = v58;
    if ((*(v57 + 48))(v44, 1, v58))
    {
      return (*(v43 + 8))(v44, v46);
    }

    else
    {
      v49 = v51;
      (*(v48 + 16))(v51, v44, v47);
      (*(v43 + 8))(v44, v46);
      sub_2382791D0();
      return (*(v48 + 8))(v49, v47);
    }
  }
}

uint64_t sub_238251FC0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for ElectricityInsightRecord();
  v3 = sub_2382791E0();
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v58 - v5;
  v6 = sub_238279300();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v58 - v10;
  v11 = sub_238278CB0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_238278F70();
  v70 = *(v68 - 8);
  v16 = *(v70 + 64);
  v17 = MEMORY[0x28223BE20](v68);
  v61 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v60 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - v21;
  v23 = *MEMORY[0x277D076A8];
  v24 = v12[13];
  v24(v15, v23, v11);
  sub_238278CA0();
  v64 = v12[1];
  v64(v15, v11);
  v25 = sub_238278F60();
  v26 = sub_238279290();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v58 = v3;
    v28 = v27;
    *v27 = 0;
    _os_log_impl(&dword_238215000, v25, v26, "[DataStream] Server invalidated connection", v27, 2u);
    v29 = v28;
    v3 = v58;
    MEMORY[0x2383EDB00](v29, -1, -1);
  }

  v30 = *(v70 + 8);
  v70 += 8;
  v30(v22, v68);
  v31 = *(*v69 + 120);
  v32 = *(v69 + v31);
  v24(v15, v23, v11);
  if (v32)
  {
    v33 = v61;
    sub_238278CA0();
    v64(v15, v11);
    v34 = sub_238278F60();
    v35 = sub_2382792A0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v66;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_238215000, v34, v35, "[DataStream] Stream already finished", v38, 2u);
      MEMORY[0x2383EDB00](v38, -1, -1);
    }

    v30(v33, v68);
    v39 = v69;
    v40 = *(*v69 + 104);
    swift_beginAccess();
    v41 = v65;
    v42 = v63;
    (*(v65 + 16))(v63, v39 + v40, v37);
    v43 = v67;
    if ((*(v67 + 48))(v42, 1, v3))
    {
      return (*(v41 + 8))(v42, v37);
    }

    else
    {
      v56 = v59;
      (*(v43 + 16))(v59, v42, v3);
      (*(v41 + 8))(v42, v37);
      sub_2382791D0();
      return (*(v43 + 8))(v56, v3);
    }
  }

  else
  {
    v45 = v60;
    sub_238278CA0();
    v64(v15, v11);
    v46 = sub_238278F60();
    v47 = sub_2382792A0();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v66;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_238215000, v46, v47, "[DataStream] Marking continuation as finished", v50, 2u);
      MEMORY[0x2383EDB00](v50, -1, -1);
    }

    v30(v45, v68);
    v51 = v69;
    v52 = *(*v69 + 104);
    swift_beginAccess();
    v53 = v65;
    v54 = v62;
    (*(v65 + 16))(v62, v51 + v52, v49);
    v55 = v67;
    if ((*(v67 + 48))(v54, 1, v3))
    {
      result = (*(v53 + 8))(v54, v49);
    }

    else
    {
      v57 = v59;
      (*(v55 + 16))(v59, v54, v3);
      (*(v53 + 8))(v54, v49);
      sub_2382791D0();
      result = (*(v55 + 8))(v57, v3);
    }

    *(v69 + v31) = 1;
  }

  return result;
}

uint64_t sub_238252710()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for ElectricityInsightRecord();
  sub_2382791E0();
  v4 = sub_238279300();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  v5 = *(v0 + *(*v0 + 112) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2382527E8()
{
  sub_238252710();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_238252848(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_238252894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v42 = &v39 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v20 = *(*(v19 - 8) + 56);
  v41 = v18;
  v20(v18, 1, 1, v19);
  sub_238278E50();
  if (v21 >= 0.0)
  {
    sub_238278E50();
    sub_238278D10();
    v22 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v23 = v41;
    sub_2382544AC(v41);
    v20(v16, 0, 1, v19);
    sub_2382472A0(v16, v23, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v20(v42, 1, 1, v19);
  sub_238278E70();
  if (v24 >= 0.0)
  {
    sub_238278E70();
    sub_238278D10();
    v25 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v26 = v42;
    sub_2382544AC(v42);
    v20(v16, 0, 1, v19);
    sub_2382472A0(v16, v26, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v20(v11, 1, 1, v19);
  sub_238278E40();
  if (v27 >= 0.0)
  {
    sub_238278E40();
    sub_238278D10();
    v28 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    sub_2382544AC(v11);
    v20(v16, 0, 1, v19);
    sub_2382472A0(v16, v11, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v40 = v11;
  v20(v8, 1, 1, v19);
  sub_238278E60();
  if (v29 >= 0.0)
  {
    sub_238278E60();
    sub_238278D10();
    v31 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v32 = sub_238278E80();
    (*(*(v32 - 8) + 8))(a1, v32);
    sub_2382544AC(v8);
    v20(v16, 0, 1, v19);
    sub_2382472A0(v16, v8, &qword_27DEF76C0, &qword_23827EFA0);
  }

  else
  {
    v30 = sub_238278E80();
    (*(*(v30 - 8) + 8))(a1, v30);
  }

  v33 = v8;
  v20(a2, 1, 1, v19);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD0, &qword_23827F4F0);
  v35 = v34[9];
  v20((a2 + v35), 1, 1, v19);
  v36 = v34[10];
  v20((a2 + v36), 1, 1, v19);
  v37 = v34[11];
  v20((a2 + v37), 1, 1, v19);
  sub_23823D8D4(v41, a2, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v42, a2 + v35, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v40, a2 + v36, &qword_27DEF76C0, &qword_23827EFA0);
  return sub_23823D8D4(v33, a2 + v37, &qword_27DEF76C0, &qword_23827EFA0);
}

uint64_t sub_238252E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v55 = &v50 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v50 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v24 = *(*(v23 - 8) + 56);
  v52 = v22;
  v24(v22, 1, 1, v23);
  sub_238278E00();
  if (v25 >= 0.0)
  {
    sub_238278E00();
    sub_238278D10();
    v26 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v27 = v52;
    sub_2382544AC(v52);
    v24(v20, 0, 1, v23);
    sub_2382472A0(v20, v27, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v24(v54, 1, 1, v23);
  sub_238278DD0();
  if (v28 >= 0.0)
  {
    sub_238278DD0();
    sub_238278D10();
    v29 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v30 = v54;
    sub_2382544AC(v54);
    v24(v20, 0, 1, v23);
    sub_2382472A0(v20, v30, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v24(v55, 1, 1, v23);
  sub_238278DE0();
  if (v31 >= 0.0)
  {
    sub_238278DE0();
    sub_238278D10();
    v32 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v33 = v55;
    sub_2382544AC(v55);
    v24(v20, 0, 1, v23);
    sub_2382472A0(v20, v33, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v24(v13, 1, 1, v23);
  sub_238278DC0();
  if (v34 >= 0.0)
  {
    sub_238278DC0();
    sub_238278D10();
    v35 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    sub_2382544AC(v13);
    v24(v20, 0, 1, v23);
    sub_2382472A0(v20, v13, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v24(v10, 1, 1, v23);
  sub_238278DF0();
  if (v36 >= 0.0)
  {
    sub_238278DF0();
    sub_238278D10();
    v37 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    sub_2382544AC(v10);
    v24(v20, 0, 1, v23);
    sub_2382472A0(v20, v10, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v38 = v53;
  v24(v53, 1, 1, v23);
  sub_238278E10();
  v50 = v13;
  v51 = v10;
  if (v39 >= 0.0)
  {
    sub_238278E10();
    sub_238278D10();
    v41 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v42 = sub_238278E20();
    (*(*(v42 - 8) + 8))(a1, v42);
    sub_2382544AC(v38);
    v24(v20, 0, 1, v23);
    sub_2382472A0(v20, v38, &qword_27DEF76C0, &qword_23827EFA0);
  }

  else
  {
    v40 = sub_238278E20();
    (*(*(v40 - 8) + 8))(a1, v40);
  }

  v24(a2, 1, 1, v23);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD8, qword_23827F4F8);
  v44 = v43[9];
  v24((a2 + v44), 1, 1, v23);
  v45 = v43[10];
  v24((a2 + v45), 1, 1, v23);
  v46 = v43[11];
  v24((a2 + v46), 1, 1, v23);
  v47 = v43[12];
  v24((a2 + v47), 1, 1, v23);
  v48 = v43[13];
  v24((a2 + v48), 1, 1, v23);
  sub_23823D8D4(v52, a2, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v54, a2 + v44, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v55, a2 + v45, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v50, a2 + v46, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v51, a2 + v47, &qword_27DEF76C0, &qword_23827EFA0);
  return sub_23823D8D4(v53, a2 + v48, &qword_27DEF76C0, &qword_23827EFA0);
}

uint64_t sub_2382536CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_238278DA0();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  MEMORY[0x28223BE20](v3);
  v106 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C8, &unk_23827EFA8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v122 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v104 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v104 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v104 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v104 - v17;
  MEMORY[0x28223BE20](v16);
  v110 = &v104 - v18;
  v19 = sub_238278E20();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v105 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BC0, &qword_23827F4E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v119 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v124 = &v104 - v26;
  v27 = sub_238278E80();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v104 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BC8, &qword_23827F4E8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v118 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v116 = &v104 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v117 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v123 = &v104 - v39;
  v40 = sub_238278B70();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = sub_238278F20();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v104 - v49;
  v51 = sub_238278AA0();
  v108 = *(v51 - 8);
  v109 = v51;
  v52 = *(v108 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v104 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278EB0();
  sub_238278F10();
  v55 = *(v44 + 8);
  v55(v50, v43);
  sub_238278EA0();
  sub_238278F10();
  v55(v48, v43);
  v107 = v54;
  sub_238278A80();
  sub_238278D40();
  if (((~v56 & 0x7FF0000000000000) != 0 || (v56 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278D40(), v57 >= 0.0))
  {
    sub_238278D40();
    sub_238278D10();
    v59 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v61 = v111;
  v60 = v112;
  v62 = v110;
  v63 = v106;
  v64 = v116;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v66 = 1;
  (*(*(v65 - 8) + 56))(v123, v58, 1, v65);
  sub_238278DB0();
  if (((~v67 & 0x7FF0000000000000) != 0 || (v67 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DB0(), v68 >= 0.0))
  {
    sub_238278DB0();
    v69 = sub_238279650();
    v110 = v70;
    v111 = v69;
    v66 = 0;
  }

  else
  {
    v110 = 0;
    v111 = 0;
  }

  v71 = sub_238278E90();
  LODWORD(v112) = v66;
  if (v71)
  {
    v72 = v104;
    sub_238278E30();
    sub_238252894(v72, v64);
    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD0, &qword_23827F4F0);
  v75 = 1;
  (*(*(v74 - 8) + 56))(v64, v73, 1, v74);
  if (sub_238278D50())
  {
    v76 = v105;
    sub_238278EC0();
    sub_238252E8C(v76, v124);
    v75 = 0;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD8, qword_23827F4F8);
  v78 = 1;
  (*(*(v77 - 8) + 56))(v124, v75, 1, v77);
  if (sub_238278D60())
  {
    sub_238278ED0();
    sub_238278D80();
    (*(v114 + 8))(v63, v115);
    v79 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v78 = 0;
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v81 = 1;
  (*(*(v80 - 8) + 56))(v62, v78, 1, v80);
  if (sub_238278D60())
  {
    sub_238278ED0();
    sub_238278D90();
    (*(v114 + 8))(v63, v115);
    v82 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v81 = 0;
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v84 = 1;
  (*(*(v83 - 8) + 56))(v61, v81, 1, v83);
  if (sub_238278D60())
  {
    sub_238278ED0();
    sub_238278D70();
    (*(v114 + 8))(v63, v115);
    v85 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v84 = 0;
  }

  v86 = sub_238278EE0();
  (*(*(v86 - 8) + 8))(a1, v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  (*(*(v87 - 8) + 56))(v60, v84, 1, v87);
  sub_2382472A0(v123, v117, &qword_27DEF76C0, &qword_23827EFA0);
  sub_2382472A0(v116, v118, &qword_27DEF7BC8, &qword_23827F4E8);
  sub_2382472A0(v124, v119, &qword_27DEF7BC0, &qword_23827F4E0);
  sub_2382472A0(v62, v120, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v61, v121, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v60, v122, &qword_27DEF76C8, &unk_23827EFA8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  v89 = v88[9];
  v124 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v91 = v113;
  (*(*(v90 - 8) + 56))(v113 + v89, 1, 1, v90);
  v92 = v88[11];
  v93 = v91 + v88[10];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD0, &qword_23827F4F0);
  (*(*(v94 - 8) + 56))(v91 + v92, 1, 1, v94);
  v95 = v88[12];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD8, qword_23827F4F8);
  (*(*(v96 - 8) + 56))(v91 + v95, 1, 1, v96);
  v97 = v88[13];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v99 = *(*(v98 - 8) + 56);
  v99(v91 + v97, 1, 1, v98);
  v100 = v88[14];
  v99(v91 + v100, 1, 1, v98);
  v101 = v88[15];
  v99(v91 + v101, 1, 1, v98);
  (*(v108 + 32))(v91, v107, v109);
  sub_23823D8D4(v117, v91 + v124, &qword_27DEF76C0, &qword_23827EFA0);
  v102 = v110;
  *v93 = v111;
  *(v93 + 8) = v102;
  *(v93 + 16) = v112;
  sub_23823D8D4(v118, v91 + v92, &qword_27DEF7BC8, &qword_23827F4E8);
  sub_23823D8D4(v119, v91 + v95, &qword_27DEF7BC0, &qword_23827F4E0);
  sub_23823D8D4(v120, v91 + v97, &qword_27DEF76C8, &unk_23827EFA8);
  sub_23823D8D4(v121, v91 + v100, &qword_27DEF76C8, &unk_23827EFA8);
  return sub_23823D8D4(v122, v91 + v101, &qword_27DEF76C8, &unk_23827EFA8);
}

uint64_t sub_2382544AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238254514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_238278E50();
  if (((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E50(), v5 >= 0.0))
  {
    sub_238278E50();
    v7 = sub_238279650();
    v30 = v8;
    v31 = v7;
    v6 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v6 = 1;
  }

  sub_238278E70();
  if (((~v9 & 0x7FF0000000000000) != 0 || (v9 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E70(), v10 >= 0.0))
  {
    sub_238278E70();
    v12 = sub_238279650();
    v28 = v13;
    v29 = v12;
    v11 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v11 = 1;
  }

  sub_238278E40();
  if (((~v14 & 0x7FF0000000000000) != 0 || (v14 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E40(), v15 >= 0.0))
  {
    sub_238278E40();
    v16 = sub_238279650();
    v17 = v19;
    v18 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  sub_238278E60();
  if (((~v20 & 0x7FF0000000000000) != 0 || (v20 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E60(), v21 >= 0.0))
  {
    sub_238278E60();
    v22 = sub_238279650();
    v23 = v25;
    v24 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  v26 = sub_238278E80();
  result = (*(*(v26 - 8) + 8))(a1, v26);
  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v6;
  *(a2 + 24) = v29;
  *(a2 + 32) = v28;
  *(a2 + 40) = v11;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v22;
  *(a2 + 80) = v23;
  *(a2 + 88) = v24;
  return result;
}

uint64_t sub_23825470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_238278E00();
  if (((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E00(), v5 >= 0.0))
  {
    sub_238278E00();
    v6 = sub_238279650();
    v43 = v7;
    v44 = v6;
    v42 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v42 = 1;
  }

  sub_238278DD0();
  if (((~v8 & 0x7FF0000000000000) != 0 || (v8 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DD0(), v9 >= 0.0))
  {
    sub_238278DD0();
    v10 = sub_238279650();
    v40 = v11;
    v41 = v10;
    v39 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 1;
  }

  sub_238278DE0();
  if (((~v12 & 0x7FF0000000000000) != 0 || (v12 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DE0(), v13 >= 0.0))
  {
    sub_238278DE0();
    v14 = sub_238279650();
    v37 = v15;
    v38 = v14;
    v36 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v36 = 1;
  }

  sub_238278DC0();
  if (((~v16 & 0x7FF0000000000000) != 0 || (v16 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DC0(), v17 >= 0.0))
  {
    sub_238278DC0();
    v35 = sub_238279650();
    v18 = v20;
    v19 = 0;
  }

  else
  {
    v35 = 0;
    v18 = 0;
    v19 = 1;
  }

  sub_238278DF0();
  if (((~v21 & 0x7FF0000000000000) != 0 || (v21 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DF0(), v22 >= 0.0))
  {
    sub_238278DF0();
    v23 = sub_238279650();
    v24 = v26;
    v25 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  sub_238278E10();
  if (((~v27 & 0x7FF0000000000000) != 0 || (v27 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E10(), v28 >= 0.0))
  {
    sub_238278E10();
    v29 = sub_238279650();
    v30 = v32;
    v31 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  v33 = sub_238278E20();
  result = (*(*(v33 - 8) + 8))(a1, v33);
  *a2 = v44;
  *(a2 + 8) = v43;
  *(a2 + 16) = v42;
  *(a2 + 24) = v41;
  *(a2 + 32) = v40;
  *(a2 + 40) = v39;
  *(a2 + 48) = v38;
  *(a2 + 56) = v37;
  *(a2 + 64) = v36;
  *(a2 + 72) = v35;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
  *(a2 + 112) = v25;
  *(a2 + 120) = v29;
  *(a2 + 128) = v30;
  *(a2 + 136) = v31;
  return result;
}

uint64_t sub_2382549CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v112 = sub_238278DA0();
  v121 = *(v112 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x28223BE20](v112);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C8, &unk_23827EFA8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v125 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v124 = &v102 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v123 = &v102 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v102 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v102 - v16;
  MEMORY[0x28223BE20](v15);
  v114 = &v102 - v17;
  v18 = sub_238278E20();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v103 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_238278E80();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v110 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v122 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v126 = &v102 - v28;
  v29 = sub_238278B70();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v111 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = sub_238278F20();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v102 - v39;
  v41 = sub_238278AA0();
  v115 = *(v41 - 8);
  v116 = v41;
  v42 = *(v115 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278EB0();
  sub_238278F10();
  v45 = *(v34 + 8);
  v45(v40, v33);
  sub_238278EA0();
  sub_238278F10();
  v46 = v33;
  v47 = a1;
  v45(v38, v46);
  v113 = v44;
  sub_238278A80();
  sub_238278D40();
  if (((~v48 & 0x7FF0000000000000) != 0 || (v48 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278D40(), v49 >= 0.0))
  {
    sub_238278D40();
    sub_238278D10();
    v51 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v53 = v117;
  v52 = v118;
  v54 = v114;
  v55 = v112;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v57 = 1;
  (*(*(v56 - 8) + 56))(v126, v50, 1, v56);
  sub_238278DB0();
  if (((~v58 & 0x7FF0000000000000) != 0 || (v58 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DB0(), v59 >= 0.0))
  {
    sub_238278DB0();
    v117 = sub_238279650();
    v114 = v60;
    v57 = 0;
  }

  else
  {
    v117 = 0;
    v114 = 0;
  }

  if (sub_238278E90())
  {
    v61 = v110;
    sub_238278E30();
    sub_238254514(v61, &v136);
    v107 = 0;
    v108 = v136;
    v104 = v139;
    v105 = v138;
    v106 = v137;
    v111 = *(&v140 + 1);
    v112 = v140;
    v110 = v141;
    v109 = BYTE8(v141);
  }

  else
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    v109 = 0;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 1;
    v104 = 0u;
  }

  if (sub_238278D50())
  {
    v62 = v103;
    sub_238278EC0();
    sub_23825470C(v62, &v128);
    sub_2382556B8(&v128);
    v142 = v134;
    v143[0] = v135[0];
    *(v143 + 10) = *(v135 + 10);
    v138 = v130;
    v139 = v131;
    v140 = v132;
    v141 = v133;
    v136 = v128;
    v137 = v129;
  }

  else
  {
    sub_238255694(&v136);
  }

  v63 = sub_238278D60();
  LODWORD(v118) = v57;
  if (v63)
  {
    v64 = v120;
    sub_238278ED0();
    sub_238278D80();
    (*(v121 + 8))(v64, v55);
    v65 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v68 = 1;
  (*(*(v67 - 8) + 56))(v54, v66, 1, v67);
  if (sub_238278D60())
  {
    v69 = v120;
    sub_238278ED0();
    sub_238278D90();
    (*(v121 + 8))(v69, v55);
    v70 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v68 = 0;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  (*(*(v71 - 8) + 56))(v53, v68, 1, v71);
  v72 = 1;
  if (sub_238278D60())
  {
    v73 = v120;
    sub_238278ED0();
    sub_238278D70();
    (*(v121 + 8))(v73, v55);
    v74 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v72 = 0;
  }

  v75 = sub_238278EE0();
  (*(*(v75 - 8) + 8))(v47, v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  (*(*(v76 - 8) + 56))(v52, v72, 1, v76);
  sub_2382472A0(v126, v122, &qword_27DEF76C0, &qword_23827EFA0);
  sub_2382472A0(v54, v123, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v53, v124, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v52, v125, &qword_27DEF76C8, &unk_23827EFA8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  v78 = v77[9];
  v126 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v80 = v119;
  (*(*(v79 - 8) + 56))(v119 + v78, 1, 1, v79);
  v81 = v80 + v77[10];
  v82 = v80 + v77[11];
  v127 = 1;
  *v82 = 0u;
  *(v82 + 16) = 0u;
  *(v82 + 32) = 0u;
  *(v82 + 48) = 0u;
  *(v82 + 64) = 0u;
  *(v82 + 73) = 0u;
  *(v82 + 89) = 1;
  v83 = (v80 + v77[12]);
  sub_238255694(&v128);
  v84 = v135[0];
  v83[6] = v134;
  v83[7] = v84;
  *(v83 + 122) = *(v135 + 10);
  v85 = v131;
  v83[2] = v130;
  v83[3] = v85;
  v86 = v133;
  v83[4] = v132;
  v83[5] = v86;
  v87 = v129;
  *v83 = v128;
  v83[1] = v87;
  v88 = v77[13];
  v121 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v90 = *(*(v89 - 8) + 56);
  v90(v80 + v88, 1, 1, v89);
  v91 = v77[14];
  v90(v80 + v91, 1, 1, v89);
  v92 = v77[15];
  v90(v80 + v92, 1, 1, v89);
  (*(v115 + 32))(v80, v113, v116);
  sub_23823D8D4(v122, v80 + v126, &qword_27DEF76C0, &qword_23827EFA0);
  v93 = v114;
  *v81 = v117;
  *(v81 + 8) = v93;
  *(v81 + 16) = v118;
  v94 = v106;
  *v82 = v108;
  *(v82 + 16) = v94;
  v95 = v104;
  *(v82 + 32) = v105;
  *(v82 + 48) = v95;
  v96 = v111;
  *(v82 + 64) = v112;
  *(v82 + 72) = v96;
  *(v82 + 80) = v110;
  *(v82 + 88) = v109;
  *(v82 + 89) = v107;
  v97 = v139;
  v83[2] = v138;
  v83[3] = v97;
  *(v83 + 122) = *(v143 + 10);
  v98 = v143[0];
  v83[6] = v142;
  v83[7] = v98;
  v99 = v141;
  v83[4] = v140;
  v83[5] = v99;
  v100 = v137;
  *v83 = v136;
  v83[1] = v100;
  sub_23823D8D4(v123, v80 + v121, &qword_27DEF76C8, &unk_23827EFA8);
  sub_23823D8D4(v124, v80 + v91, &qword_27DEF76C8, &unk_23827EFA8);
  return sub_23823D8D4(v125, v80 + v92, &qword_27DEF76C8, &unk_23827EFA8);
}

double sub_238255694(uint64_t a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 137) = 1;
  return result;
}

uint64_t static InsightQueryRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DEF7BF0 = a1;
  return result;
}

void sub_238255834(void *a1)
{
  v3 = MEMORY[0x2383ED5D0]();
  sub_238255890(a1, v1);

  objc_autoreleasePoolPop(v3);
}

void sub_238255890(void *a1, uint64_t a2)
{
  v4 = sub_238278A50();
  v5 = sub_238278FF0();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options);
  v7 = sub_238279310();
  v8 = sub_238278FF0();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type);
  v10 = sub_238279310();
  v11 = sub_238278FF0();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity);
  v13 = sub_238279310();
  v14 = sub_238278FF0();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection);
  v16 = sub_238279310();
  v17 = sub_238278FF0();
  [a1 encodeObject:v16 forKey:v17];

  v18 = sub_238278B90();
  v19 = sub_238278FF0();
  [a1 encodeObject:v18 forKey:v19];

  if (*(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID + 8))
  {
    v20 = *(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID);
    v21 = sub_238278FF0();
    v22 = sub_238278FF0();
    [a1 encodeObject:v21 forKey:v22];
  }

  if ((*(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType + 8) & 1) == 0)
  {
    v23 = *(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType);
    v24 = sub_238279310();
    v25 = sub_238278FF0();
    [a1 encodeObject:v24 forKey:v25];
  }
}

void InsightQueryRequest.init(coder:)(void *a1)
{
  v2 = sub_238278BC0();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v59 - v7;
  v8 = sub_238278AA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  sub_23821EB10(0, &unk_27DEF7BF8, 0x277CCA970);
  v16 = sub_2382792E0();
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  sub_238278A60();

  v18 = sub_238278FF0();
  v19 = [a1 decodeIntegerForKey_];

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = sub_238278FF0();
  v21 = [a1 decodeIntegerForKey_];

  v69 = v21;
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v68 = v19;
  v22 = sub_238278FF0();
  v23 = [a1 decodeIntegerForKey_];

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = sub_238278FF0();
  v25 = [a1 decodeIntegerForKey_];

  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v66 = v25;
  v67 = v23;
  v73 = v15;
  v26 = v9;
  sub_23821EB10(0, &qword_2814F0850, 0x277CCAD78);
  v27 = sub_2382792E0();
  if (v27)
  {
    v28 = v27;
    v29 = v6;
    v30 = v8;
    sub_238278BA0();

    sub_23821EB10(0, &qword_2814F0858, 0x277CCACA8);
    v31 = sub_2382792E0();
    if (v31)
    {
      v32 = v31;
      v33 = sub_238279000();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = sub_238278FF0();
    v37 = [a1 decodeIntegerForKey_];

    if ((v37 & 0x8000000000000000) == 0)
    {
      v64 = v37;
      v65 = a1;
      v38 = v26;
      v61 = v33;
      v62 = v35;
      v39 = *(v26 + 16);
      v40 = v13;
      v63 = v13;
      v59 = v30;
      v39(v13, v73, v30);
      v42 = v70;
      v41 = v71;
      v43 = *(v70 + 16);
      v60 = v29;
      v43(v29, v74, v71);
      Request = type metadata accessor for InsightQueryRequest();
      v45 = objc_allocWithZone(Request);
      v46 = v40;
      v47 = v59;
      v39(&v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v46, v59);
      v48 = v69;
      *&v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v68;
      *&v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = v48;
      v49 = v66;
      *&v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v67;
      *&v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v49;
      v50 = v60;
      v43(&v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v60, v41);
      v51 = &v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
      v52 = v62;
      *v51 = v61;
      v51[1] = v52;
      v53 = &v45[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
      *v53 = v64;
      v53[8] = 0;
      v75.receiver = v45;
      v75.super_class = Request;
      objc_msgSendSuper2(&v75, sel_init);

      v54 = *(v42 + 8);
      v54(v50, v41);
      v55 = *(v38 + 8);
      v55(v63, v47);
      v54(v74, v41);
      v55(v73, v47);
      v56 = v72;
      swift_getObjectType();
      v57 = *((*MEMORY[0x277D85000] & *v56) + 0x30);
      v58 = *((*MEMORY[0x277D85000] & *v56) + 0x34);
      swift_deallocPartialClassInstance();
      return;
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_23825625C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t InsightQueryRequest.deviceID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID);
  v2 = *(v0 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID + 8);

  return v1;
}

uint64_t InsightQueryRequest.deviceType.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType);
  v2 = *(v0 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType + 8);
  return result;
}

id InsightQueryRequest.__allocating_init(range:options:type:granularity:flowDirection:venueID:deviceID:deviceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v17 = objc_allocWithZone(v11);
  v18 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range;
  v19 = sub_238278AA0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v17[v18], a1, v19);
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = a2;
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = a3;
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = a4;
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = a5;
  v21 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID;
  v22 = sub_238278BC0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v17[v21], a6, v22);
  v24 = &v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v25 = a9;
  v25[8] = a10 & 1;
  v31.receiver = v17;
  v31.super_class = v11;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  (*(v23 + 8))(a6, v22);
  (*(v20 + 8))(a1, v19);
  return v26;
}

uint64_t type metadata accessor for InsightQueryRequest()
{
  result = qword_27DEF7C08;
  if (!qword_27DEF7C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InsightQueryRequest.init(range:options:type:granularity:flowDirection:venueID:deviceID:deviceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v17 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range;
  v18 = sub_238278AA0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a1, v18);
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = a2;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = a3;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = a4;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = a5;
  v20 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID;
  v21 = sub_238278BC0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v10[v20], a6, v21);
  v23 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v24 = a9;
  v24[8] = a10 & 1;
  v29.receiver = v10;
  v29.super_class = type metadata accessor for InsightQueryRequest();
  v25 = objc_msgSendSuper2(&v29, sel_init);
  (*(v22 + 8))(a6, v21);
  (*(v19 + 8))(a1, v18);
  return v25;
}

id InsightQueryRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InsightQueryRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightQueryRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238256824@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEF7BF0;
  return result;
}

uint64_t sub_238256870(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEF7BF0 = v1;
  return result;
}

uint64_t sub_238256980()
{
  result = sub_238278AA0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_238278BC0();
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

uint64_t sub_238256AFC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_238278BC0();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_238278CB0();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = sub_238278F70();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238256CBC, v1, 0);
}

uint64_t sub_238256CBC()
{
  v134 = v0;
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  v121 = *MEMORY[0x277D076A8];
  v116 = *(v2 + 104);
  v116(v3);
  sub_238278CA0();
  v124 = *(v2 + 8);
  v124(v3, v4);
  v113 = *(v7 + 16);
  v113(v5, v8, v6);
  v9 = sub_238278F60();
  v10 = sub_238279290();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[24];
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[15];
  v17 = v0[10];
  v16 = v0[11];
  if (v11)
  {
    v108 = v10;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v133[0] = v19;
    *v18 = 136315138;
    sub_238257B10();
    v109 = v13;
    v111 = v12;
    v20 = sub_238279570();
    v22 = v21;
    v114 = *(v16 + 8);
    v114(v15, v17);
    v23 = sub_23824E308(v20, v22, v133);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_238215000, v9, v108, "[InsightStreamManager] Attempt to start Session ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2383EDB00](v19, -1, -1);
    MEMORY[0x2383EDB00](v18, -1, -1);

    v24 = *(v14 + 8);
    v24(v111, v109);
  }

  else
  {

    v114 = *(v16 + 8);
    v114(v15, v17);
    v24 = *(v14 + 8);
    v24(v12, v13);
  }

  v25 = v0[9];
  v26 = *(v25 + 112);
  (v116)(v0[18], v121, v0[16]);
  v27 = v0[18];
  v28 = v0[16];
  v29 = v0[10];
  v30 = v0[8];
  if (v26)
  {
    v31 = v0[22];
    v32 = v0[13];
    v33 = v0[18];
    sub_238278CA0();
    v124(v27, v28);
    v113(v32, v30, v29);
    v34 = sub_238278F60();
    v35 = sub_2382792B0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[22];
    v38 = v0[19];
    v39 = v0[20];
    v40 = v0[13];
    v42 = v0[10];
    v41 = v0[11];
    if (v36)
    {
      v107 = v35;
      v43 = swift_slowAlloc();
      v112 = v37;
      v44 = swift_slowAlloc();
      v133[0] = v44;
      *v43 = 136315138;
      sub_238257B10();
      v110 = v38;
      v45 = v24;
      v46 = sub_238279570();
      v48 = v47;
      v114(v40, v42);
      v49 = v46;
      v24 = v45;
      v50 = sub_23824E308(v49, v48, v133);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_238215000, v34, v107, "[InsightStreamManager] Failed to start Session ID: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x2383EDB00](v44, -1, -1);
      MEMORY[0x2383EDB00](v43, -1, -1);

      v45(v112, v110);
    }

    else
    {

      v114(v40, v42);
      v24(v37, v38);
    }

    v68 = v0[21];
    v69 = v0[18];
    v70 = v0[16];
    v71 = v0[9];
    (v116)(v69, v121, v70);
    sub_238278CA0();
    v124(v69, v70);

    v72 = sub_238278F60();
    v73 = sub_2382792B0();

    v74 = os_log_type_enabled(v72, v73);
    v76 = v0[20];
    v75 = v0[21];
    v77 = v0[19];
    if (v74)
    {
      v123 = v0[19];
      v126 = v0[21];
      v78 = v0[12];
      v119 = v0[11];
      v79 = v0[9];
      v80 = v0[10];
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v133[0] = v82;
      *v81 = 136315138;
      v130 = v24;
      v83 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
      swift_beginAccess();
      v113(v78, v79 + v83, v80);
      sub_238257B10();
      v84 = sub_238279570();
      v86 = v85;
      v114(v78, v80);
      v87 = sub_23824E308(v84, v86, v133);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_238215000, v72, v73, "[InsightStreamManager] Session in progress %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x2383EDB00](v82, -1, -1);
      MEMORY[0x2383EDB00](v81, -1, -1);

      v130(v126, v123);
    }

    else
    {

      v24(v75, v77);
    }

    v98 = v0[23];
    v99 = v0[24];
    v101 = v0[21];
    v100 = v0[22];
    v102 = v0[18];
    v104 = v0[14];
    v103 = v0[15];
    v128 = v0[13];
    v132 = v0[12];
    sub_238241158();
    swift_allocError();
    *v105 = 1;
    swift_willThrow();

    v97 = v0[1];
  }

  else
  {
    v122 = v25;
    v51 = v0[23];
    v52 = v0[14];
    sub_238278CA0();
    v124(v27, v28);
    v113(v52, v30, v29);
    v53 = sub_238278F60();
    v54 = sub_238279290();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[23];
    v57 = v0[19];
    v58 = v0[20];
    v59 = v0[14];
    v61 = v0[10];
    v60 = v0[11];
    if (v55)
    {
      v125 = v0[19];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v133[0] = v63;
      *v62 = 136315138;
      sub_238257B10();
      v129 = v24;
      v64 = sub_238279570();
      v117 = v56;
      v66 = v65;
      v114(v59, v61);
      v67 = sub_23824E308(v64, v66, v133);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_238215000, v53, v54, "[InsightStreamManager] Started Session ID: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x2383EDB00](v63, -1, -1);
      MEMORY[0x2383EDB00](v62, -1, -1);

      v129(v117, v125);
    }

    else
    {

      v114(v59, v61);
      v24(v56, v57);
    }

    v89 = v0[23];
    v88 = v0[24];
    v91 = v0[21];
    v90 = v0[22];
    v115 = v0[18];
    v118 = v0[15];
    v120 = v0[14];
    v127 = v0[13];
    v131 = v0[12];
    v92 = v0[10];
    v93 = v0[11];
    v94 = v0[8];
    v95 = v0[9];
    v96 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
    swift_beginAccess();
    (*(v93 + 24))(v95 + v96, v94, v92);
    swift_endAccess();
    *(v122 + 112) = 1;

    v97 = v0[1];
  }

  return v97();
}

uint64_t sub_238257608()
{
  v1 = v0;
  v2 = sub_238278BC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238278CB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238278F70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277D076A8], v6);
  sub_238278CA0();
  (*(v7 + 8))(v10, v6);

  v16 = sub_238278F60();
  v17 = sub_238279290();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v12;
    v34 = v1;
    v21 = v20;
    v35 = v20;
    *v19 = 136315138;
    v22 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
    swift_beginAccess();
    v23 = v34 + v22;
    v24 = v33;
    (*(v3 + 16))(v33, v23, v2);
    sub_238257B10();
    v25 = sub_238279570();
    v27 = v26;
    (*(v3 + 8))(v24, v2);
    v28 = sub_23824E308(v25, v27, &v35);

    *(v19 + 4) = v28;
    _os_log_impl(&dword_238215000, v16, v17, "[InsightStreamManager] Ending Session ID: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v29 = v21;
    v1 = v34;
    MEMORY[0x2383EDB00](v29, -1, -1);
    MEMORY[0x2383EDB00](v19, -1, -1);

    result = (*(v31 + 8))(v15, v32);
  }

  else
  {

    result = (*(v12 + 8))(v15, v11);
  }

  *(v1 + 112) = 0;
  return result;
}

uint64_t sub_2382579A0()
{
  v1 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
  v2 = sub_238278BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for InsightStreamManager()
{
  result = qword_27DEF7C88;
  if (!qword_27DEF7C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238257A6C()
{
  result = sub_238278BC0();
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

unint64_t sub_238257B10()
{
  result = qword_27DEF78D8;
  if (!qword_27DEF78D8)
  {
    sub_238278BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF78D8);
  }

  return result;
}

void sub_238257B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  aBlock[4] = sub_238258B44;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238257DF0;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);

  tcc_server_message_request_authorization();
  _Block_release(v9);
}

uint64_t sub_238257D34(uint64_t a1, uint64_t a2)
{
  if (a2 || !a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
    return sub_238279180();
  }

  else
  {
    swift_unknownObjectRetain();
    tcc_authorization_record_get_authorization_right();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
    sub_238279180();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_238257DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_238257EC0()
{
  if (*MEMORY[0x277D6C148])
  {
    v1 = *MEMORY[0x277D6C148];
    if (TCCAccessRestricted())
    {

      v2 = 1;
    }

    else
    {
      v3 = TCCAccessPreflight();

      if (v3 >= 3)
      {
        v2 = 2;
      }

      else
      {
        v2 = v3;
      }
    }

    v4 = *(v0 + 8);

    v4(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238257F90()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 16) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2382580E0;

  return sub_238264B34(v3);
}

uint64_t sub_2382580E0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238258238, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_238258238()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_2382582C8()
{
  v1 = tcc_service_singleton_for_name();
  *(v0 + 16) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = tcc_credential_singleton_for_self();
    *(v0 + 24) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = tcc_server_create();
      *(v0 + 32) = v5;
      if (v5)
      {
        v6 = v5;
        v7 = tcc_message_options_create();
        *(v0 + 40) = v7;
        if (v7)
        {
          v8 = *(v0 + 65);
          v9 = v7;
          tcc_message_options_set_reply_handler_policy();
          tcc_message_options_set_request_usage_string_policy();
          tcc_message_options_set_prompt_string_type();
          v10 = swift_task_alloc();
          *(v0 + 48) = v10;
          v10[2] = v6;
          v10[3] = v9;
          v10[4] = v4;
          v10[5] = v2;
          v11 = *(MEMORY[0x277D859E0] + 4);
          v12 = swift_task_alloc();
          *(v0 + 56) = v12;
          *v12 = v0;
          v12[1] = sub_2382584A4;
          v13 = MEMORY[0x277D839B0];

          return MEMORY[0x2822007B8](v0 + 64, 0, 0, 0xD000000000000026, 0x80000002382813A0, sub_238258AA4, v10, v13);
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_2382584A4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2382585BC, 0, 0);
}

uint64_t sub_2382585BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = *(v0 + 64);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_238258644()
{
  v1 = sub_238278D00();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238258700, 0, 0);
}

uint64_t sub_238258700()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D07398], v3);
  v4 = sub_238278CF0();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = sub_238278FF0();
    v7 = [v5 initWithServiceName_];
    v0[5] = v7;

    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    [v7 resume];
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_2382588F4;

    return sub_238265058(v7);
  }

  else
  {
    v11 = v0[4];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2382588F4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238258A38, 0, 0);
  }

  else
  {

    v4 = *(v3 + 32);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_238258A38()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

void sub_238258AA4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_238257B68(a1);
}

uint64_t sub_238258AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238258B44(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630) - 8) + 80);

  return sub_238257D34(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238258BE8()
{
  type metadata accessor for ElectricityInsightOperations();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for InsightStreamManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  result = sub_238278BB0();
  *(v0 + 112) = v4;
  qword_27DF03158 = v0;
  return result;
}

uint64_t sub_238258C78()
{
  v1 = v0[9];
  v0[6] = sub_238258E20;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2382602F0;
  v0[5] = &block_descriptor_3;
  v2 = _Block_copy(v0 + 2);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_238279320();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast())
  {
    v4 = v0[8];
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_238258E20(void *a1)
{
  v2 = sub_238278CB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238278F70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D076A8], v2);
  sub_238278CA0();
  (*(v3 + 8))(v6, v2);
  v12 = a1;
  v13 = sub_238278F60();
  v14 = sub_2382792B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_238215000, v13, v14, "Failed to connect to server with error %@", v15, 0xCu);
    sub_2382598F4(v16);
    MEMORY[0x2383EDB00](v16, -1, -1);
    MEMORY[0x2383EDB00](v15, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_238259078()
{
  v0 = sub_238278CB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238278F70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D076A8], v0);
  sub_238278CA0();
  (*(v1 + 8))(v4, v0);
  v10 = sub_238278F60();
  v11 = sub_238279290();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238215000, v10, v11, "Insight generation completed", v12, 2u);
    MEMORY[0x2383EDB00](v12, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_238259268()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2382592E4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 24) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  *(v0 + 49) = 0;

  return MEMORY[0x2822009F8](sub_2382593F0, 0, 0);
}

uint64_t sub_2382593F0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = v0 + 49;
  v2[4] = sub_2382596F4;
  v2[5] = 0;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_238259500;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 6, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_23825995C, v2, v5);
}

uint64_t sub_238259500()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v6 = *v0;

  *(v1 + 50) = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23825963C, v4, 0);
}

uint64_t sub_23825963C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 50) != 1)
  {
    sub_238241158();
    swift_allocError();
    *v3 = 4;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_2382596F4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2382599A0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_238260390;
  v8[3] = &block_descriptor_11_0;
  v7 = _Block_copy(v8);

  [v5 validateTCCAccessWithReply_];
  _Block_release(v7);
}

uint64_t sub_238259808(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = sub_238278EE0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return a2(v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2382598F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA8, &qword_23827F6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238259968()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2382599B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_238278B90();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v12[4] = sub_23825B61C;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_238259AC0;
  v12[3] = &block_descriptor_30;
  v11 = _Block_copy(v12);

  [a1 gridIDWithVenue:v9 sandboxExtension:a5 reply:v11];
  _Block_release(v11);
}

uint64_t sub_238259AC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_238279000();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_238259B58(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t))
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(v7, sub_23825B420, v8);
}

void sub_238259BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v12[4] = sub_23825B658;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_238259AC0;
  v12[3] = &block_descriptor_4;
  v11 = _Block_copy(v12);

  [a1 gridIDWithLocation:a4 sandboxExtension:a5 reply:v11];
  _Block_release(v11);
}

void sub_238259CF0(uint64_t a1, uint64_t a2, id a3, void (*a4)(uint64_t, uint64_t, void *))
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v6 = a2;
  v7 = a1;
  v8 = a3;
  sub_238273938(a3, &v12);
  v9 = v12;
  if (v12 == 9)
  {

    a1 = v7;
    a2 = v6;
LABEL_4:
    a4(a1, a2, 0);
    return;
  }

  sub_238241158();
  v10 = swift_allocError();
  *v11 = v9;
  a4(0, 0, v10);
}

uint64_t sub_238259E08(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_238278BC0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v5 = sub_238278B10();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238259F2C, 0, 0);
}

uint64_t sub_238259F2C()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 144) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_23825A0F0;

  return sub_23825F914(v3);
}

uint64_t sub_23825A0F0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23825A204, 0, 0);
}

uint64_t sub_23825A204()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v0[4].receiver = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    receiver = v0[8].receiver;
    v4 = receiver[2];
    receiver += 2;
    v53 = v4;
    v5 = v1 + ((*(receiver + 64) + 32) & ~*(receiver + 64));
    v6 = *MEMORY[0x277D861C0];
    v51 = receiver[7];
    v50 = *MEMORY[0x277D861E8];
    v47 = (receiver - 1);
    v48 = (receiver + 2);
    v7 = MEMORY[0x277D84F90];
    v49 = v0 + 4;
    v52 = *MEMORY[0x277D861C0];
    while (1)
    {
      v54 = v7;
      v53(v0[8].super_class, v5, v0[7].super_class);
      type metadata accessor for SandboxExtension.Context();
      v10 = swift_allocObject();
      v10[2] = j__sandbox_extension_consume;
      v10[3] = 0;
      v10[4] = j__sandbox_extension_release;
      v10[5] = 0;
      v10[6] = j__sandbox_extension_issue_file;
      v10[7] = 0;
      v11 = type metadata accessor for SandboxExtension();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + 40) = 0;
      *(v14 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v22 = v14;
      super_class = v0[8].super_class;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v24 = sandbox_extension_issue_file();

      v25 = v0[8].super_class;
      v26 = v0[7].super_class;
      if (v24)
      {
        *(v22 + 3) = sub_238279050();
        *(v22 + 4) = v27;
        free(v24);
        (*v48)(&v22[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v25, v26);
        *(v22 + 2) = v10;

        MEMORY[0x2383ECFB0](v28);
        if (*((v49->receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49->receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v49->receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v49->receiver;
      }

      else
      {

        (*v47)(v25, v26);
        v8 = *(*v22 + 48);
        v9 = *(*v22 + 52);
        swift_deallocPartialClassInstance();
        v7 = v54;
      }

      v6 = v52;
      v5 += v51;
      if (!--v2)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v31 = v0[6].super_class;
    v30 = v0[7].receiver;
    v32 = v0[5].super_class;
    v33 = v0[6].receiver;
    v34 = v0[4].super_class;
    v35 = v0[5].receiver;
    v36 = type metadata accessor for XPCSandboxExtensionContainer();
    v37 = objc_allocWithZone(v36);
    *&v37[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    v0[1].receiver = v37;
    v0[1].super_class = v36;
    v38 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[10].receiver = v38;
    v33[2](v30, v34, v32);
    v39 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v40 = swift_allocObject();
    v33[4]((v40 + v39), v30, v32);
    *(v40 + ((v31 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
    v41 = swift_allocObject();
    v0[10].super_class = v41;
    *(v41 + 16) = sub_23825B558;
    *(v41 + 24) = v40;
    v0[3].super_class = 0;
    v0[3].receiver = 0;
    v42 = v38;
    v43 = swift_task_alloc();
    v0[11].receiver = v43;
    v43[2] = v35;
    v43[3] = v0 + 3;
    v43[4] = sub_23825B654;
    v43[5] = v41;
    v44 = *(MEMORY[0x277D85A40] + 4);
    v45 = swift_task_alloc();
    v0[11].super_class = v45;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB0, &qword_23827F708);
    *v45 = v0;
    *(v45 + 1) = sub_23825A714;
    v19 = sub_23825B650;
    v14 = &v0[2];
    v18 = 0x8000000238281480;
    v15 = 0;
    v16 = 0;
    v17 = 0xD000000000000025;
    v20 = v43;
  }

  return MEMORY[0x2822008A0](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_23825A714()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_23825A8C0;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);

    *(v2 + 200) = *(v2 + 32);
    v4 = sub_23825A840;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23825A840()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);

  return v3(v4, v5);
}

uint64_t sub_23825A8C0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_23825A954(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_238278B10();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825AA14, 0, 0);
}

uint64_t sub_23825AA14()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 112) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_23825ABD8;

  return sub_23825F914(v3);
}

uint64_t sub_23825ABD8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23825ACEC, 0, 0);
}

uint64_t sub_23825ACEC()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v0[4].receiver = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    receiver = v0[6].receiver;
    v4 = receiver[2];
    receiver += 2;
    v50 = v4;
    v5 = v1 + ((*(receiver + 64) + 32) & ~*(receiver + 64));
    v6 = *MEMORY[0x277D861C0];
    v48 = receiver[7];
    v47 = *MEMORY[0x277D861E8];
    v43 = (receiver - 1);
    v44 = (receiver + 2);
    v45 = v0 + 4;
    v46 = MEMORY[0x277D84F90];
    v49 = *MEMORY[0x277D861C0];
    v4(v0[6].super_class, v5, v0[5].super_class);
    while (1)
    {
      type metadata accessor for SandboxExtension.Context();
      v9 = swift_allocObject();
      v9[2] = j__sandbox_extension_consume;
      v9[3] = 0;
      v9[4] = j__sandbox_extension_release;
      v9[5] = 0;
      v9[6] = j__sandbox_extension_issue_file;
      v9[7] = 0;
      v10 = type metadata accessor for SandboxExtension();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      *(v13 + 40) = 0;
      *(v13 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v21 = v13;
      super_class = v0[6].super_class;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v23 = sandbox_extension_issue_file();

      v24 = v0[6].super_class;
      v25 = v0[5].super_class;
      if (v23)
      {
        *(v21 + 3) = sub_238279050();
        *(v21 + 4) = v26;
        free(v23);
        (*v44)(&v21[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v24, v25);
        *(v21 + 2) = v9;

        MEMORY[0x2383ECFB0](v27);
        if (*((v45->receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45->receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v45->receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        v46 = v45->receiver;
      }

      else
      {

        (*v43)(v24, v25);
        v7 = *(*v21 + 48);
        v8 = *(*v21 + 52);
        swift_deallocPartialClassInstance();
      }

      v6 = v49;
      v5 += v48;
      if (!--v2)
      {

        v29 = v46;
        goto LABEL_13;
      }

      v50(v0[6].super_class, v5, v0[5].super_class);
    }

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
LABEL_13:
    v31 = v0[4].super_class;
    v30 = v0[5].receiver;
    v32 = type metadata accessor for XPCSandboxExtensionContainer();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v29;
    v0[1].receiver = v33;
    v0[1].super_class = v32;
    v34 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[8].receiver = v34;
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    v0[8].super_class = v36;
    *(v36 + 16) = sub_23825B40C;
    *(v36 + 24) = v35;
    v0[3].super_class = 0;
    v0[3].receiver = 0;
    v37 = v31;
    v38 = v34;
    v39 = swift_task_alloc();
    v0[9].receiver = v39;
    v39[2] = v30;
    v39[3] = v0 + 3;
    v39[4] = sub_23825B414;
    v39[5] = v36;
    v40 = *(MEMORY[0x277D85A40] + 4);
    v41 = swift_task_alloc();
    v0[9].super_class = v41;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB0, &qword_23827F708);
    *v41 = v0;
    *(v41 + 1) = sub_23825B1A4;
    v18 = sub_23825B41C;
    v13 = &v0[2];
    v17 = 0x8000000238281480;
    v14 = 0;
    v15 = 0;
    v16 = 0xD000000000000025;
    v19 = v39;
  }

  return MEMORY[0x2822008A0](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_23825B1A4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_23825B344;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);

    *(v2 + 168) = *(v2 + 32);
    v4 = sub_23825B2D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23825B2D0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);

  return v2(v3, v4);
}

uint64_t sub_23825B344()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_23825B3CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23825B420(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  v9[0] = v6;
  v9[1] = v7;
  return v4(v9, a3);
}

uint64_t sub_23825B46C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23825B4BC()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23825B558(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_238278BC0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2382599B8(a1, a2, a3, v3 + v8, v9);
}

void sub_23825B65C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = *a1;
  v9 = sub_238278B90();
  Container = type metadata accessor for XPCElectricityGuidanceQueryContainer();
  v11 = objc_allocWithZone(Container);
  v12 = &v11[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v12 = a5 & 1;
  v12[1] = HIBYTE(a5) & 1;
  v18.receiver = v11;
  v18.super_class = Container;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = sub_238278FF0();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v17[4] = sub_23825BB60;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_23825BA78;
  v17[3] = &block_descriptor_5;
  v16 = _Block_copy(v17);

  [v8 electricityGuidanceWithVenue:v9 query:v13 gridID:v14 reply:v16];
  _Block_release(v16);
}

uint64_t sub_23825B7D8(uint64_t a1, void *a2, void (*a3)(_BYTE *, void *))
{
  v6 = type metadata accessor for ElectricityGuidance(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v24[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24[-v16];
  if (a2)
  {
    v18 = a2;
    sub_238273938(a2, &v25);
    v19 = v25;
    if (v25 != 9)
    {
      (*(v7 + 56))(v17, 1, 1, v6);
      sub_238241158();
      v21 = swift_allocError();
      *v22 = v19;
      a3(v17, v21);

      goto LABEL_8;
    }
  }

  if (a1)
  {
    sub_23825BBE8(a1 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value, v11);
    sub_23825BC4C(v11, v13);
    sub_23825BBE8(v13, v17);
    (*(v7 + 56))(v17, 0, 1, v6);
    a3(v17, 0);
    sub_23825BB80(v17);
    return sub_23825BCB0(v13);
  }

  (*(v7 + 56))(v17, 1, 1, v6);
  sub_238241158();
  v21 = swift_allocError();
  *v23 = 0;
  a3(v17, v21);
LABEL_8:

  return sub_23825BB80(v17);
}

void sub_23825BA78(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23825BB28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23825BB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23825BBE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricityGuidance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23825BC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricityGuidance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23825BCB0(uint64_t a1)
{
  v2 = type metadata accessor for ElectricityGuidance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23825BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_238278D00();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_238278CB0();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v12 = sub_238278F70();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CC0, &qword_23827F790) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v16 = type metadata accessor for ElectricHVACLoadEvent(0);
  v4[20] = v16;
  v17 = *(v16 - 8);
  v4[21] = v17;
  v18 = *(v17 + 64) + 15;
  v4[22] = swift_task_alloc();
  v19 = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
  v4[23] = v19;
  v20 = *(v19 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CC8, &qword_23827F798) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v4[29] = Event;
  v23 = *(Event - 8);
  v4[30] = v23;
  v24 = *(v23 + 64) + 15;
  v4[31] = swift_task_alloc();
  v25 = *(a3 - 8);
  v4[32] = v25;
  v4[33] = *(v25 + 64);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v26 = sub_238278B70();
  v4[38] = v26;
  v27 = *(v26 - 8);
  v4[39] = v27;
  v28 = *(v27 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825C114, 0, 0);
}

uint64_t sub_23825C114()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = v0[40];
  v2 = v0[29];
  v3 = v0[7];
  sub_238278B60();
  v4 = swift_allocObject();
  v0[41] = v4;
  *(v4 + 16) = MEMORY[0x277D84F90];
  v124 = v4;
  if (swift_dynamicCastMetatype())
  {
    v5 = v0[7];
    v6 = v0[5];
    if (sub_238279130())
    {
      v7 = 0;
      v8 = v0[32];
      v9 = v0[29];
      v115 = v0[33];
      v118 = v0[23];
      v126 = (v0[30] + 56);
      v121 = v9;
      while (1)
      {
        v13 = v0[7];
        v14 = v0[5];
        v15 = sub_238279110();
        sub_2382790E0();
        if (v15)
        {
          v16 = (*(v8 + 16))(v0[37], v0[5] + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, v0[7]);
          v24 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          v41 = v0[7];
          v42 = v0[5];
          v16 = sub_2382793C0();
          if (v115 != 8)
          {
            goto LABEL_56;
          }

          v43 = v0[37];
          v44 = v0[7];
          v0[4] = v16;
          (*(v8 + 16))(v43, v0 + 4, v44);
          v16 = swift_unknownObjectRelease();
          v24 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        v26 = v0[28];
        v25 = v0[29];
        (*(v8 + 32))(v0[36], v0[37], v0[7]);
        v27 = swift_dynamicCast();
        v28 = *v126;
        if (v27)
        {
          v29 = v0[40];
          v30 = v0[31];
          v31 = v0[28];
          v28(v31, 0, 1, v0[29]);
          sub_23825EEF8(v31, v30, type metadata accessor for ElectricVehicleLoadEvent);
          v32 = *(v9 + 20);
          if (sub_238278B40())
          {
            v34 = v0[26];
            v33 = v0[27];
            sub_23821EC48(v0[6], v33);
            sub_23825EE94(v33, v34);
            v35 = *(v4 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v4 + 16) = v35;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_238219354(0, v35[2] + 1, 1, v35);
              *(v4 + 16) = v35;
            }

            v38 = v35[2];
            v37 = v35[3];
            if (v38 >= v37 >> 1)
            {
              v35 = sub_238219354(v37 > 1, v38 + 1, 1, v35);
              *(v4 + 16) = v35;
            }

            v39 = v0[31];
            v40 = v0[26];
            sub_23825EF60(v0[27], type metadata accessor for ElectricalLoadEvent);
            sub_23825EF60(v39, type metadata accessor for ElectricVehicleLoadEvent);
            v35[2] = v38 + 1;
            sub_23825EEF8(v40, v35 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v38, type metadata accessor for ElectricalLoadEvent);
            v9 = v121;
            v4 = v124;
            *(v124 + 16) = v35;
          }

          else
          {
            sub_23825EF60(v0[31], type metadata accessor for ElectricVehicleLoadEvent);
          }
        }

        else
        {
          v10 = v0[28];
          v28(v10, 1, 1, v0[29]);
          sub_23824C65C(v10, &qword_27DEF7CC8, &qword_23827F798);
        }

        v11 = v0[7];
        v12 = v0[5];
        ++v7;
        if (v24 == sub_238279130())
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_41;
  }

  v46 = v0[20];
  v47 = v0[7];
  if (!swift_dynamicCastMetatype())
  {
    return sub_238279410();
  }

  v48 = v0[5];
  if (sub_238279130())
  {
    v49 = 0;
    v50 = v0[32];
    v122 = v0[23];
    v51 = v0[20];
    v127 = (v0[21] + 56);
    v116 = v0[33];
    v119 = v51;
    do
    {
      v55 = v0[7];
      v56 = v0[5];
      v57 = sub_238279110();
      sub_2382790E0();
      if (v57)
      {
        v16 = (*(v50 + 16))(v0[35], v0[5] + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v0[7]);
        v58 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      else
      {
        v76 = v0[7];
        v77 = v0[5];
        v16 = sub_2382793C0();
        if (v116 != 8)
        {
          goto LABEL_57;
        }

        v78 = v0[35];
        v79 = v0[7];
        v0[2] = v16;
        (*(v50 + 16))(v78, v0 + 2, v79);
        v16 = swift_unknownObjectRelease();
        v58 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_55;
        }
      }

      v60 = v0[19];
      v59 = v0[20];
      (*(v50 + 32))(v0[34], v0[35], v0[7]);
      v61 = swift_dynamicCast();
      v62 = *v127;
      if (v61)
      {
        v63 = v0[40];
        v64 = v0[22];
        v65 = v0[19];
        v62(v65, 0, 1, v0[20]);
        sub_23825EEF8(v65, v64, type metadata accessor for ElectricHVACLoadEvent);
        v66 = *(v51 + 20);
        if (sub_238278B40())
        {
          v68 = v0[24];
          v67 = v0[25];
          v69 = v0[22];
          sub_23821F3EC(v0[6], v67);
          sub_23825EE94(v67, v68);
          v70 = *(v4 + 16);
          v71 = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + 16) = v70;
          if ((v71 & 1) == 0)
          {
            v70 = sub_238219354(0, v70[2] + 1, 1, v70);
            *(v4 + 16) = v70;
          }

          v73 = v70[2];
          v72 = v70[3];
          if (v73 >= v72 >> 1)
          {
            v70 = sub_238219354(v72 > 1, v73 + 1, 1, v70);
            *(v4 + 16) = v70;
          }

          v74 = v0[24];
          v75 = v0[22];
          sub_23825EF60(v0[25], type metadata accessor for ElectricalLoadEvent);
          sub_23825EF60(v75, type metadata accessor for ElectricHVACLoadEvent);
          v70[2] = v73 + 1;
          sub_23825EEF8(v74, v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v73, type metadata accessor for ElectricalLoadEvent);
          v4 = v124;
          *(v124 + 16) = v70;
          v51 = v119;
        }

        else
        {
          sub_23825EF60(v0[22], type metadata accessor for ElectricHVACLoadEvent);
        }
      }

      else
      {
        v52 = v0[19];
        v62(v52, 1, 1, v0[20]);
        sub_23824C65C(v52, &qword_27DEF7CC0, &qword_23827F790);
      }

      v53 = v0[7];
      v54 = v0[5];
      ++v49;
    }

    while (v58 != sub_238279130());
  }

LABEL_41:
  if (*(*(v4 + 16) + 16))
  {
    v80 = v0[10];
    v81 = v0[11];
    v82 = v0[9];
    (*(v80 + 104))(v81, *MEMORY[0x277D07390], v82);
    v83 = sub_238278CF0();
    (*(v80 + 8))(v81, v82);
    if (v83)
    {
      v85 = v0[5];
      v84 = v0[6];
      v86 = swift_task_alloc();
      v0[42] = v86;
      *(v86 + 16) = *(v0 + 7);
      *(v86 + 32) = v85;
      *(v86 + 40) = v4;
      *(v86 + 48) = v84;
      v87 = *(MEMORY[0x277D85A40] + 4);
      v88 = swift_task_alloc();
      v0[43] = v88;
      *v88 = v0;
      v88[1] = sub_23825CC38;
      v23 = MEMORY[0x277D83B88];
      v21 = sub_23825EE84;
      v16 = (v0 + 3);
      v20 = 0x8000000238281670;
      v17 = 0;
      v18 = 0;
      v19 = 0xD000000000000021;
      v22 = v86;

      return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v89 = v0[18];
    v91 = v0[13];
    v90 = v0[14];
    v92 = v0[12];
    v93 = v0[5];
    (*(v91 + 104))(v90, *MEMORY[0x277D076A8], v92);
    sub_238278CA0();
    (*(v91 + 8))(v90, v92);

    v94 = sub_238278F60();
    v95 = sub_238279290();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = v0[7];
      v97 = v0[5];
      v98 = swift_slowAlloc();
      *v98 = 134217984;
      *(v98 + 4) = sub_238279130();

      _os_log_impl(&dword_238215000, v94, v95, "[LoadEventOperations] Submitted 0 out of %ld load events", v98, 0xCu);
      MEMORY[0x2383EDB00](v98, -1, -1);
    }

    else
    {
      v99 = v0[5];
    }

    v100 = v0[18];
    v101 = v0[15];
    v102 = v0[16];

    (*(v102 + 8))(v100, v101);
  }

  v103 = v0[41];
  v104 = v0[36];
  v105 = v0[37];
  v107 = v0[34];
  v106 = v0[35];
  v108 = v0[31];
  v110 = v0[27];
  v109 = v0[28];
  v113 = v0[26];
  v114 = v0[25];
  v117 = v0[24];
  v120 = v0[22];
  v123 = v0[19];
  v125 = v0[18];
  v111 = v0[17];
  v128 = v0[14];
  v129 = v0[11];
  (*(v0[39] + 8))(v0[40], v0[38]);

  v112 = v0[1];

  return v112(0);
}

uint64_t sub_23825CC38()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_23825D00C;
  }

  else
  {
    v4 = sub_23825CD68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23825CD68()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  v6 = v0[3];
  (*(v2 + 104))(v3, *MEMORY[0x277D076A8], v4);
  sub_238278CA0();
  (*(v2 + 8))(v3, v4);

  v7 = sub_238278F60();
  v8 = sub_238279290();
  v35 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[7];
    v10 = v0[5];
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v6;
    *(v11 + 12) = 2048;
    *(v11 + 14) = sub_238279130();

    _os_log_impl(&dword_238215000, v7, v8, "[LoadEventOperations] Submitted %ld out of %ld load events", v11, 0x16u);
    MEMORY[0x2383EDB00](v11, -1, -1);
  }

  else
  {
    v12 = v0[5];
  }

  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[15];

  (*(v13 + 8))(v14, v15);
  v16 = v0[41];
  v18 = v0[36];
  v17 = v0[37];
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[31];
  v23 = v0[27];
  v22 = v0[28];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[18];
  v24 = v0[17];
  v33 = v0[14];
  v34 = v0[11];
  (*(v0[39] + 8))(v0[40], v0[38]);

  v25 = v0[1];

  return v25(v35);
}

uint64_t sub_23825D00C()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v13 = v0[26];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v9 = v0[17];
  v19 = v0[14];
  v20 = v0[11];
  (*(v0[39] + 8))(v0[40], v0[38]);

  v10 = v0[1];
  v11 = v0[44];

  return v10();
}

uint64_t sub_23825D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a3;
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v28 = &v26 - v10;
  v12 = sub_238278BC0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v26 - v18;
  v20 = sub_2382791A0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v15, v29, v12);
  (*(v8 + 16))(v11, v30, v7);
  v21 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v22 = (v14 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v33;
  *(v23 + 4) = v32;
  *(v23 + 5) = a6;
  *(v23 + 6) = v31;
  *(v23 + 7) = v24;
  (*(v13 + 32))(&v23[v21], v15, v12);
  (*(v8 + 32))(&v23[v22], v28, v27);

  sub_2382505A8(0, 0, v19, &unk_23827F7B8, v23);
}

uint64_t sub_23825D454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = sub_238278BC0();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v8[21] = *(v10 + 64);
  v8[22] = swift_task_alloc();
  v11 = sub_238278CB0();
  v8[23] = v11;
  v12 = *(v11 - 8);
  v8[24] = v12;
  v13 = *(v12 + 64) + 15;
  v8[25] = swift_task_alloc();
  v14 = sub_238278F70();
  v8[26] = v14;
  v15 = *(v14 - 8);
  v8[27] = v15;
  v16 = *(v15 + 64) + 15;
  v8[28] = swift_task_alloc();
  v17 = sub_238278B10();
  v8[29] = v17;
  v18 = *(v17 - 8);
  v8[30] = v18;
  v19 = *(v18 + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825D63C, 0, 0);
}

uint64_t sub_23825D63C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  v0[32] = v3;

  v0[33] = &unk_284B07C30;
  v4 = objc_opt_self();
  v0[34] = v4;
  v5 = [v4 interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_23825D794;

  return (sub_23825F914)(v3);
}

uint64_t sub_23825D794()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23825D8A8, 0, 0);
}

uint64_t sub_23825D8A8()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v0[9] = MEMORY[0x277D84F90];
  v2 = (v0 + 9);
  v3 = *(v1 + 16);
  v97 = v0;
  if (v3)
  {
    v4 = v0[30];
    v5 = *(v4 + 16);
    v4 += 16;
    v94 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *MEMORY[0x277D861C0];
    v91 = *(v4 + 56);
    v90 = *MEMORY[0x277D861E8];
    v88 = (v4 - 8);
    v89 = (v4 + 16);
    receiver = MEMORY[0x277D84F90];
    v92 = *MEMORY[0x277D861C0];
    v93 = (v0 + 9);
    while (1)
    {
      v99 = receiver;
      v94(v0[31], v6, v0[29]);
      type metadata accessor for SandboxExtension.Context();
      v11 = swift_allocObject();
      v11[2] = j__sandbox_extension_consume;
      v11[3] = 0;
      v11[4] = j__sandbox_extension_release;
      v11[5] = 0;
      v11[6] = j__sandbox_extension_issue_file;
      v11[7] = 0;
      v12 = type metadata accessor for SandboxExtension();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      *(v15 + 40) = 0;
      *(v15 + 48) = 1;
      if (!v7)
      {
        break;
      }

      v23 = v15;
      v24 = v0[31];
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();
      v0 = v97;

      v25 = sandbox_extension_issue_file();

      v26 = v97[31];
      v27 = v97[29];
      if (v25)
      {
        *(v23 + 3) = sub_238279050();
        *(v23 + 4) = v28;
        free(v25);
        (*v89)(&v23[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v26, v27);
        *(v23 + 2) = v11;

        v2 = v93;
        MEMORY[0x2383ECFB0](v29);
        if (*((v2->receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2->receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = *((v93->receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        receiver = v93->receiver;
      }

      else
      {

        (*v88)(v26, v27);
        v9 = *(*v23 + 48);
        v10 = *(*v23 + 52);
        swift_deallocPartialClassInstance();
        v2 = v93;
        receiver = v99;
      }

      v7 = v92;
      v6 += v91;
      if (!--v3)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  receiver = MEMORY[0x277D84F90];
LABEL_12:
  v31 = v0[18];
  v32 = v0[14];
  v33 = type metadata accessor for XPCSandboxExtensionContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = receiver;
  v97[5] = v34;
  v97[6] = v33;
  v35 = v97;
  v97[36] = objc_msgSendSuper2(v2 - 2, sel_init);
  v36 = sub_238279130();
  v97[37] = v36;
  if (v36 >= 1)
  {
    v37 = v97[24];
    v38 = v97[15];
    swift_beginAccess();
    *(v97 + 96) = *MEMORY[0x277D076A8];
    v39 = *(v37 + 104);
    v97[38] = v39;
    v97[39] = 0;
    v40 = v97[28];
    v42 = v97[24];
    v41 = v97[25];
    v43 = v97[23];
    v44 = v97[14];
    v97[40] = 100;
    *(v97 + 388) = 0;
    v39(v41);
    sub_238278CA0();
    (*(v42 + 8))(v41, v43);

    v45 = sub_238278F60();
    v46 = sub_2382792A0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v97[18];
      v48 = v97[14];
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      *(v49 + 4) = 0;
      *(v49 + 12) = 2048;
      *(v49 + 14) = sub_238279130();

      _os_log_impl(&dword_238215000, v45, v46, "[LoadEventOperations] Submitting %ld out of %ld load events", v49, 0x16u);
      MEMORY[0x2383EDB00](v49, -1, -1);
    }

    else
    {
      v58 = v97[14];
    }

    (*(v97[27] + 8))(v97[28], v97[26]);
    v59 = v97[37];
    if (v59 >= 100)
    {
      v60 = 100;
    }

    else
    {
      v60 = v97[37];
    }

    if (v59 < 0)
    {
      __break(1u);
    }

    else
    {
      v61 = *(v97[15] + 16);
      v62 = v61[2];
      if (v62 >= v60)
      {
        if (v62 == v60)
        {
          v63 = *(v97[15] + 16);

          v64 = v61;
          goto LABEL_26;
        }

LABEL_31:
        if (v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6938, &qword_23827A490);
          v85 = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
          v86 = *(v85 + 72);
          v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v64 = swift_allocObject();
          v15 = _swift_stdlib_malloc_size(v64);
          if (!v86)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22);
          }

          if (v15 - v87 == 0x8000000000000000 && v86 == -1)
          {
            goto LABEL_39;
          }

          v64[2] = v60;
          v64[3] = 2 * ((v15 - v87) / v86);
          swift_arrayInitWithCopy();
          v35 = v97;
        }

        else
        {
          v64 = MEMORY[0x277D84F90];
        }

LABEL_26:
        v98 = v35[36];
        v66 = v35[33];
        v65 = v35[34];
        v67 = v35[22];
        v68 = v35[19];
        v69 = v35[20];
        v95 = v35[16];
        v96 = v35[21];
        EventContainer = type metadata accessor for XPCElectricalLoadEventContainer();
        v71 = objc_allocWithZone(EventContainer);
        *&v71[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v64;
        v35[7] = v71;
        v35[8] = EventContainer;
        v72 = objc_msgSendSuper2((v35 + 7), sel_init);
        v35[41] = v72;
        v73 = objc_allocWithZone(MEMORY[0x277CCAE80]);
        v74 = sub_238278FF0();
        v75 = [v73 initWithServiceName_];
        v35[42] = v75;

        v76 = [v65 interfaceWithProtocol_];
        [v75 setRemoteObjectInterface_];

        [v75 resume];
        (*(v69 + 16))(v67, v95, v68);
        v77 = (*(v69 + 80) + 24) & ~*(v69 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = v72;
        (*(v69 + 32))(v78 + v77, v67, v68);
        *(v78 + ((v96 + v77 + 7) & 0xFFFFFFFFFFFFFFF8)) = v98;
        v79 = swift_allocObject();
        v35[43] = v79;
        *(v79 + 16) = sub_23825F390;
        *(v79 + 24) = v78;
        v35[12] = 0;
        v80 = v72;
        v81 = v98;
        v82 = swift_task_alloc();
        v35[44] = v82;
        v82[2] = v75;
        v82[3] = v35 + 12;
        v82[4] = sub_23825F480;
        v82[5] = v79;
        v83 = *(MEMORY[0x277D85A40] + 4);
        v84 = swift_task_alloc();
        v35[45] = v84;
        *v84 = v35;
        v84[1] = sub_23825E1F8;
        v22 = MEMORY[0x277D83B88];
        v20 = sub_23825F488;
        v15 = (v35 + 11);
        v18 = 0xD000000000000025;
        v19 = 0x8000000238281480;
        v16 = 0;
        v17 = 0;
        v21 = v82;

        return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v50 = v97[36];
  v51 = v97[31];
  v52 = v97[28];
  v53 = v97[25];
  v54 = v97[22];
  v55 = v97[17];
  v97[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279180();

  v56 = v97[1];

  return v56();
}

uint64_t sub_23825E1F8()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v8 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_23825E9C8;
  }

  else
  {
    v5 = v2[43];
    v6 = v2[44];

    v2[47] = v2[11];
    v4 = sub_23825E324;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23825E324()
{
  v3 = *(v1 + 376);
  v4 = *(v1 + 312);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v1 + 328);
  v6 = *(v1 + 336);
  v8 = *(v1 + 388);
  v9 = *(v1 + 320);
  v10 = *(v1 + 296);
  [v6 invalidate];

  if ((v8 & 1) == 0 && v9 < v10)
  {
    v2 = *(v1 + 320);
    v11 = *(v1 + 304);
    v12 = *(v1 + 384);
    v13 = *(v1 + 224);
    v15 = *(v1 + 192);
    v14 = *(v1 + 200);
    v16 = *(v1 + 184);
    v17 = *(v1 + 112);
    v18 = v2 + 100;
    v19 = __OFADD__(v2, 100);
    *(v1 + 312) = v5;
    *(v1 + 320) = v18;
    *(v1 + 388) = v19;
    v11(v14, v12, v16);
    sub_238278CA0();
    (*(v15 + 8))(v14, v16);

    v0 = sub_238278F60();
    v20 = sub_2382792A0();
    if (os_log_type_enabled(v0, v20))
    {
      v21 = *(v1 + 144);
      v22 = *(v1 + 112);
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      *(v23 + 4) = v2;
      *(v23 + 12) = 2048;
      *(v23 + 14) = sub_238279130();

      _os_log_impl(&dword_238215000, v0, v20, "[LoadEventOperations] Submitting %ld out of %ld load events", v23, 0x16u);
      MEMORY[0x2383EDB00](v23, -1, -1);
    }

    else
    {
      v32 = *(v1 + 112);
    }

    (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208));
    v3 = 0x7FFFFFFFFFFFFF9BLL;
    if (v2 <= 0x7FFFFFFFFFFFFF9BLL)
    {
      v3 = *(v1 + 296);
      if (v3 >= v18)
      {
        v3 = v2 + 100;
      }

      v0 = v3 - v2;
      if (v3 >= v2)
      {
        v33 = *(*(v1 + 120) + 16);
        v34 = v33[2];
        if (v34 >= v2 && v34 >= v3)
        {
          if (v34 == v0)
          {
            v35 = *(*(v1 + 120) + 16);

            v36 = v33;
            goto LABEL_21;
          }

LABEL_28:
          if (v3 == v2)
          {
            v36 = MEMORY[0x277D84F90];
            goto LABEL_21;
          }

          if (v0 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6938, &qword_23827A490);
            v66 = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
            v67 = *(v66 + 72);
            v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
            v36 = swift_allocObject();
            v60 = _swift_stdlib_malloc_size(v36);
            if (v67)
            {
              if (v60 - v68 != 0x8000000000000000 || v67 != -1)
              {
                v36[2] = v0;
                v36[3] = 2 * ((v60 - v68) / v67);
LABEL_36:
                v69 = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
                v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
                v71 = *(v69 + 72);
                swift_arrayInitWithCopy();
LABEL_21:
                v37 = *(v1 + 264);
                v38 = *(v1 + 272);
                v39 = *(v1 + 176);
                v72 = *(v1 + 168);
                v73 = *(v1 + 288);
                v40 = *(v1 + 152);
                v41 = *(v1 + 160);
                v42 = *(v1 + 128);
                EventContainer = type metadata accessor for XPCElectricalLoadEventContainer();
                v44 = objc_allocWithZone(EventContainer);
                *&v44[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v36;
                *(v1 + 56) = v44;
                *(v1 + 64) = EventContainer;
                v45 = objc_msgSendSuper2((v1 + 56), sel_init);
                *(v1 + 328) = v45;
                v46 = objc_allocWithZone(MEMORY[0x277CCAE80]);
                v47 = sub_238278FF0();
                v48 = [v46 initWithServiceName_];
                *(v1 + 336) = v48;

                v49 = [v38 interfaceWithProtocol_];
                [v48 setRemoteObjectInterface_];

                [v48 resume];
                (*(v41 + 16))(v39, v42, v40);
                v50 = (*(v41 + 80) + 24) & ~*(v41 + 80);
                v51 = swift_allocObject();
                *(v51 + 16) = v45;
                (*(v41 + 32))(v51 + v50, v39, v40);
                *(v51 + ((v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v73;
                v52 = swift_allocObject();
                *(v1 + 344) = v52;
                *(v52 + 16) = sub_23825F390;
                *(v52 + 24) = v51;
                *(v1 + 96) = 0;
                v53 = v45;
                v54 = v73;
                v55 = swift_task_alloc();
                *(v1 + 352) = v55;
                v55[2] = v48;
                v55[3] = v1 + 96;
                v55[4] = sub_23825F480;
                v55[5] = v52;
                v56 = *(MEMORY[0x277D85A40] + 4);
                v57 = swift_task_alloc();
                *(v1 + 360) = v57;
                *v57 = v1;
                v57[1] = sub_23825E1F8;
                v58 = MEMORY[0x277D83B88];
                v59 = sub_23825F488;
                v60 = v1 + 88;
                v61 = 0xD000000000000025;
                v62 = 0x8000000238281480;
                v63 = 0;
                v64 = 0;
                v65 = v55;

                return MEMORY[0x2822008A0](v60, v63, v64, v61, v62, v59, v65, v58);
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return MEMORY[0x2822008A0](v60, v63, v64, v61, v62, v59, v65, v58);
          }

          v36 = MEMORY[0x277D84F90];
          goto LABEL_36;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = *(v1 + 288);
  v25 = *(v1 + 248);
  v26 = *(v1 + 224);
  v27 = *(v1 + 200);
  v28 = *(v1 + 176);
  v29 = *(v1 + 136);
  *(v1 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279180();

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_23825E9C8()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[17];

  [v4 invalidate];
  v0[13] = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279170();

  v8 = v0[36];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[17];
  v0[10] = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279180();

  v14 = v0[1];

  return v14();
}

void sub_23825EB14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_238278B90();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v14[4] = sub_23825F4D4;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23825ED14;
  v14[3] = &block_descriptor_6;
  v13 = _Block_copy(v14);

  [a1 submitLoadEventsWithEvents:a4 venue:v11 sandboxExtension:a6 reply:v13];
  _Block_release(v13);
}

void sub_23825EC2C(uint64_t a1, id a2, void (*a3)(uint64_t, void *))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v5 = a1;
  v6 = a2;
  sub_238273938(a2, &v10);
  v7 = v10;
  if (v10 == 9)
  {

    a1 = v5;
LABEL_4:
    a3(a1, 0);
    return;
  }

  sub_238241158();
  v8 = swift_allocError();
  *v9 = v7;
  a3(0, v8);
}

void sub_23825ED14(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}