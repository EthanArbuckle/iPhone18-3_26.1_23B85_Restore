uint64_t sub_2388880B0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_238810E44(&qword_27DF30F38, &qword_2388D8FC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = &v31 - v15;
  v33 = sub_2388D1C78();
  v16 = *(v33 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v33);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_238810E44(&qword_27DF30F40, &qword_2388D8FC8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v31 - v22;
  v24 = sub_2388D1CB8();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  sub_2388D1248();
  sub_2388D12C8();
  v25 = sub_238815180(&qword_27DF30F48, &qword_27DF30F38, &qword_2388D8FC0);
  MEMORY[0x23EE654C0](v6, v1, v25);
  v26 = *(v2 + 8);
  v26(v6, v1);
  sub_2388D1238();
  v26(v8, v1);
  sub_238815180(&qword_27DF30F20, &qword_27DF30E18, &qword_2388D8D00);
  v27 = v32;
  v28 = MEMORY[0x277D83E40];
  v29 = v34;
  sub_2388D1C68();
  (*(v35 + 8))(v14, v29);
  (*(v16 + 8))(v19, v33);
  sub_238827E88(v23, &qword_27DF30F40, &qword_2388D8FC8);
  return MEMORY[0x23EE65570](v27, v28);
}

uint64_t SystemLanguageModel.Adapter.AssetError.Context.init(debugDescription:underlyingErrors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2388884C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD000000000000033, 0x80000002388DF5C0);
  MEMORY[0x23EE66C20](a1, a2);
  MEMORY[0x23EE66C20](11810, 0xE200000000000000);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = a3;
  *(a4 + 24) = 2;
}

uint64_t sub_23888858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2388D18E8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_238888678, 0, 0);
}

uint64_t sub_238888678()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = _s16FoundationModels19SystemLanguageModelC7AdapterV010compatibleF11Identifiers4nameSaySSGSS_tFZ_0(v0[3], v0[4]);
  v0[8] = v1;
  v2 = v1[2];
  v0[9] = v2;
  if (v2)
  {
    v0[10] = sub_2388D18B8();
    v0[11] = 0;
    v3 = v1[4];
    v4 = v1[5];
    v0[12] = v4;

    v0[13] = sub_2388D1898();
    v5 = MEMORY[0x277CBAA90];
    v6 = *(MEMORY[0x277CBAA90] + 4);
    v7 = *MEMORY[0x277CBAA90];
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_238888808;
    v9 = v0[7];
    v10 = *MEMORY[0x277D85DE8];

    return ((v7 + v5))(v9, v3, v4);
  }

  else
  {

    v12 = v0[7];

    v13 = v0[1];
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }
}

uint64_t sub_238888808()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {

    v7 = sub_238888C08;
  }

  else
  {

    v7 = sub_2388889A0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2388889A0()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = sub_2388D18D8();
  v3 = [objc_opt_self() sharedManager];
  v0[2] = 0;
  v4 = [v3 scheduleDownload:v2 error:v0 + 2];

  v5 = v0[2];
  v6 = v0[7];
  v7 = v0[5];
  v8 = (v0[6] + 8);
  if (v4)
  {
    v9 = *v8;
    v10 = v5;
    v9(v6, v7);
  }

  else
  {
    v11 = v5;
    v12 = sub_2388D0ED8();

    swift_willThrow();
    (*v8)(v6, v7);
  }

  v13 = v0[11] + 1;
  if (v13 == v0[9])
  {
    v14 = v0[8];

    v15 = v0[7];

    v16 = v0[1];
    v17 = *MEMORY[0x277D85DE8];

    return v16();
  }

  else
  {
    v0[11] = v13;
    v19 = v0[10];
    v20 = v0[8] + 16 * v13;
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v0[12] = v22;

    v0[13] = sub_2388D1898();
    v23 = MEMORY[0x277CBAA90];
    v24 = *(MEMORY[0x277CBAA90] + 4);
    v25 = *MEMORY[0x277CBAA90];
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_238888808;
    v27 = v0[7];
    v28 = *MEMORY[0x277D85DE8];

    return ((v25 + v23))(v27, v21, v22);
  }
}

uint64_t sub_238888C08()
{
  v17 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 88) + 1;
  if (v1 == *(v0 + 72))
  {
    v2 = *(v0 + 64);

    v3 = *(v0 + 56);

    v4 = *(v0 + 8);
    v5 = *MEMORY[0x277D85DE8];

    return v4();
  }

  else
  {
    *(v0 + 88) = v1;
    v7 = *(v0 + 80);
    v8 = *(v0 + 64) + 16 * v1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    *(v0 + 96) = v10;

    *(v0 + 104) = sub_2388D1898();
    v11 = MEMORY[0x277CBAA90];
    v12 = *(MEMORY[0x277CBAA90] + 4);
    v13 = *MEMORY[0x277CBAA90];
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_238888808;
    v15 = *(v0 + 56);
    v16 = *MEMORY[0x277D85DE8];

    return ((v13 + v11))(v15, v9, v10);
  }
}

uint64_t SystemLanguageModel.Adapter.compile()()
{
  v1[2] = v0;
  v2 = sub_2388D1728();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_2388D1748();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = *(*(sub_238810E44(&qword_27DF30E50, &qword_2388D8D48) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = sub_2388D1058();
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SystemLanguageModel.Adapter(0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238888F94, 0, 0);
}

uint64_t sub_238888F94()
{
  v39 = v0;
  if (qword_27DF2F9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF3F8A8;
  *(v0 + 136) = qword_27DF3F8A8;
  if (sub_2388899B4())
  {
    if (qword_27DF2F9E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2388D2408();
    sub_2388413AC(v2, qword_27DF3F8E0);
    v3 = sub_2388D23E8();
    v4 = sub_2388D2E18();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23880E000, v3, v4, "Exceeded rate limit (3 per day, per app) for compiling adapters. Generating content using this adapter may not run at the optimal speed until the adapter is compiled.", v5, 2u);
      MEMORY[0x23EE68030](v5, -1, -1);
    }

    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    sub_23888F634(*(v0 + 16), v16);
    v38 = 0;
    v20 = _s16FoundationModels19SystemLanguageModelC7adapter10guardrailsA2C7AdapterV_AC10GuardrailsVtcfC_0(v16, &v38);
    sub_2388D1048();
    v21 = sub_2388D1038();
    v23 = v22;
    (*(v19 + 8))(v17, v18);
    *(v0 + 144) = sub_23883FAD4(v20 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, 0xD00000000000001ALL, 0x80000002388DF0D0, v21, v23);

    v24 = OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state;
    *(v0 + 152) = OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state;
    v25 = (v1 + v24);
    os_unfair_lock_lock(v25);
    v26 = sub_238810E44(&qword_27DF30E60, &qword_2388D8D50);
    v28 = *(v26 + 28);
    *(v0 + 176) = v28;
    v29 = (&v25->_os_unfair_lock_opaque + v28);
    v30 = *(&v25->_os_unfair_lock_opaque + v28);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      v33 = *(v0 + 96);
      *v29 = v32;
      sub_2388D1018();
      v34 = sub_2388D1028();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v35 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
      sub_23888F6B8(v33, v29 + *(v35 + 20));
      os_unfair_lock_unlock(v25);
      v36 = *(MEMORY[0x277D71A18] + 4);
      v37 = swift_task_alloc();
      *(v0 + 160) = v37;
      *v37 = v0;
      v37[1] = sub_238889338;
      v26 = *(v0 + 88);
      v27 = 0;
    }

    return MEMORY[0x2821D9820](v26, v27);
  }
}

uint64_t sub_238889338()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_23888980C;
  }

  else
  {
    v3 = sub_23888944C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23888944C()
{
  v51 = v0;
  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_2388D2408();
  sub_2388413AC(v5, qword_27DF3F8F8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_2388D23E8();
  v8 = sub_2388D2DF8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  if (v9)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v14 = 136446210;
    v6(v12, v10, v13);
    v15 = sub_2388D28B8();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = sub_2388C0770(v15, v17, &v50);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_23880E000, v7, v8, "Compile adapter response: %{public}s", v14, 0xCu);
    sub_2388158BC(v49);
    MEMORY[0x23EE68030](v49, -1, -1);
    MEMORY[0x23EE68030](v14, -1, -1);
  }

  else
  {
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v22 = *(v0 + 88);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  v25 = *(v0 + 24);
  v26 = *(v0 + 32);
  sub_2388D1738();
  (*(v26 + 104))(v24, *MEMORY[0x277D71CA0], v25);
  sub_2388903A4(&qword_27DF30E68, MEMORY[0x277D71CA8]);
  LOBYTE(v22) = sub_2388D27C8();
  v27 = *(v26 + 8);
  v27(v24, v25);
  v27(v23, v25);
  if (v22)
  {
    v28 = *(v0 + 144);
    v29 = *(v0 + 64) + 8;
    v18(*(v0 + 88), *(v0 + 56));
  }

  else
  {
    v30 = *(v0 + 176);
    v31 = (*(v0 + 136) + *(v0 + 152));
    os_unfair_lock_lock(v31);
    v32 = *(&v31->_os_unfair_lock_opaque + v30);
    v33 = v32 < 1;
    v34 = v32 - 1;
    if (!v33)
    {
      *(*(v0 + 136) + *(v0 + 152) + *(v0 + 176)) = v34;
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 88);
    v37 = *(v0 + 56);
    v38 = *(v0 + 64);
    os_unfair_lock_unlock((*(v0 + 136) + *(v0 + 152)));

    v18(v36, v37);
  }

  v40 = *(v0 + 120);
  v39 = *(v0 + 128);
  v42 = *(v0 + 88);
  v41 = *(v0 + 96);
  v44 = *(v0 + 72);
  v43 = *(v0 + 80);
  v46 = *(v0 + 40);
  v45 = *(v0 + 48);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_23888980C()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 136) + *(v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(&v2->_os_unfair_lock_opaque + v1);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(*(v0 + 136) + *(v0 + 152) + *(v0 + 176)) = v5;
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 120);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  v19 = *(v0 + 40);
  os_unfair_lock_unlock((*(v0 + 136) + *(v0 + 152)));
  sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2388D3F70;
  *(v13 + 32) = v6;
  sub_23888EFA8();
  swift_allocError();
  *v14 = 0xD00000000000001ELL;
  *(v14 + 8) = 0x80000002388DF3F0;
  *(v14 + 16) = v13;
  *(v14 + 24) = 0;
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

BOOL sub_2388899B4()
{
  v1 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_2388D1028();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = (v0 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state));
  v14 = (&v13->_os_unfair_lock_opaque + *(sub_238810E44(&qword_27DF30E60, &qword_2388D8D50) + 28));
  v15 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
  sub_238827E14(v14 + *(v15 + 20), v4, &qword_27DF30E50, &qword_2388D8D48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_238827E88(v4, &qword_27DF30E50, &qword_2388D8D48);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    sub_2388D1018();
    sub_2388D1008();
    v17 = v16;
    v18 = *(v6 + 8);
    v18(v10, v5);
    v18(v12, v5);
    if (v17 > 86400.0)
    {
      *v14 = 0;
    }
  }

  v19 = *v14 > 2;
  os_unfair_lock_unlock(v13);
  return v19;
}

uint64_t SystemLanguageModel.Adapter.isCompiled.getter()
{
  v1[2] = v0;
  v2 = sub_2388D1728();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_2388D1748();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = sub_2388D1058();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238889DAC, 0, 0);
}

uint64_t sub_238889DAC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = *(type metadata accessor for SystemLanguageModel.Adapter(0) + 20);
  sub_2388D1048();
  v6 = sub_2388D1038();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v0[15] = sub_23883FAD4(v4 + v5, 0xD00000000000001ALL, 0x80000002388DF0D0, v6, v8);

  v9 = *(MEMORY[0x277D71A18] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_238889EDC;
  v11 = v0[11];

  return MEMORY[0x2821D9820](v11, 1);
}

uint64_t sub_238889EDC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_23888A300;
  }

  else
  {
    v3 = sub_238889FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238889FF0()
{
  v38 = v0;
  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_2388D2408();
  sub_2388413AC(v5, qword_27DF3F8F8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_2388D23E8();
  v8 = sub_2388D2DF8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v14 = 136446210;
    v6(v11, v10, v13);
    v15 = sub_2388D28B8();
    v17 = v16;
    v36 = *(v12 + 8);
    v36(v10, v13);
    v18 = sub_2388C0770(v15, v17, &v37);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23880E000, v7, v8, "Compile adapter (dry run) response: %{public}s", v14, 0xCu);
    sub_2388158BC(v34);
    MEMORY[0x23EE68030](v34, -1, -1);
    MEMORY[0x23EE68030](v14, -1, -1);
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];

    v36 = *(v20 + 8);
    v36(v10, v19);
  }

  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[11];
  v33 = v0[10];
  v35 = v0[9];
  v24 = v0[6];
  v25 = v0[7];
  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  sub_2388D1738();
  (*(v27 + 104))(v26, *MEMORY[0x277D71C90], v28);
  v29 = sub_2388D1718();

  v30 = *(v27 + 8);
  v30(v26, v28);
  v30(v24, v28);
  v36(v23, v25);

  v31 = v0[1];

  return v31(v29 & 1);
}

uint64_t sub_23888A300()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  v12 = v0[5];
  sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2388D3F70;
  *(v8 + 32) = v1;
  sub_23888EFA8();
  swift_allocError();
  *v9 = 0xD000000000000031;
  *(v9 + 8) = 0x80000002388DF410;
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  swift_willThrow();

  v10 = v0[1];

  return v10(0);
}

uint64_t static SystemLanguageModel.Adapter.removeObsoleteAdapters()()
{
  v102 = *MEMORY[0x277D85DE8];
  v1 = sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  v98 = *(v1 - 8);
  v99 = v1;
  v2 = *(v98 + 64);
  MEMORY[0x28223BE20](v1);
  v82 = &v72 - v3;
  v4 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v5 = *(v4 - 8);
  v100 = v4;
  v101 = v5;
  v6 = *(v5 + 8);
  v7 = MEMORY[0x28223BE20](v4);
  v94 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v95 = &v72 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v16 = sub_238810E44(&qword_27DF30E80, &qword_2388D8D70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  v23 = sub_2388D18B8();
  sub_2388D1898();
  v24 = sub_2388D1878();

  if (v0)
  {
    goto LABEL_41;
  }

  v26 = v101;
  v78 = v20;
  v79 = v13;
  v27 = *(v24 + 32);
  v73 = ((1 << v27) + 63) >> 6;
  v28 = v24;
  v83 = v23;
  if ((v27 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v72 = &v72;
    MEMORY[0x28223BE20](result);
    v74 = &v72 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v74, v29);
    v75 = 0;
    v30 = 0;
    v31 = v28 + 56;
    v32 = 1 << *(v28 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v28 + 56);
    v35 = (v32 + 63) >> 6;
    v36 = (v26 + 8);
    v26 = v98;
    v84 = v98 + 56;
    v96 = v36;
    v97 = (v98 + 48);
    v77 = (v98 + 32);
    v76 = (v98 + 8);
    v37 = v79;
    v88 = v28 + 56;
    v89 = v15;
    v85 = v35;
    v86 = v22;
    v87 = v28;
    while (v34)
    {
      v38 = __clz(__rbit64(v34));
      v98 = (v34 - 1) & v34;
LABEL_15:
      v41 = v38 | (v30 << 6);
      v42 = *(v28 + 48);
      v81 = v41;
      v43 = (v42 + 16 * v41);
      v45 = *v43;
      v44 = v43[1];

      v46 = sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
      sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68);
      v92 = v46;
      v47 = v100;
      sub_2388D1CC8();
      sub_2388D1CA8();
      v48 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v48 = v45;
      }

      v49 = 7;
      if (((v44 >> 60) & ((v45 & 0x800000000000000) == 0)) != 0)
      {
        v49 = 11;
      }

      v91 = v49 | (v48 << 16);
      v93 = v45;
      v101 = v44;
      sub_2388D2A38();
      v50 = v86;
      sub_2388D1CD8();

      v51 = *v96;
      (*v96)(v37, v47);
      v51(v15, v47);
      v22 = *v97;
      v52 = (*v97)(v50, 1, v99);
      sub_238827E88(v50, &qword_27DF30E80, &qword_2388D8D70);
      v53 = v52 == 1;
      v26 = v95;
      if (v53)
      {
        v31 = v88;
        v15 = v89;
        goto LABEL_7;
      }

      v80 = v22;
      v22 = sub_23888DE00();
      if (sub_23888E64C())
      {
        v31 = v88;
        v15 = v89;
LABEL_27:

        *&v74[(v81 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v81;
        v62 = __OFADD__(v75++, 1);
        v28 = v87;
        v35 = v85;
        v34 = v98;
        if (v62)
        {
          __break(1u);
LABEL_30:
          v28 = sub_23888D8B4(v74, v73, v75, v28);
          goto LABEL_31;
        }
      }

      else
      {
        v90 = v22;
        v54 = v26;
        v55 = v100;
        sub_2388D1CC8();
        sub_2388D1CA8();
        v26 = v94;
        sub_2388D2A38();
        v56 = v78;
        sub_2388D1CD8();

        v51(v26, v55);
        v51(v54, v55);
        v57 = v99;
        v58 = v80(v56, 1, v99);
        v37 = v79;
        if (v58 == 1)
        {
          sub_238827E88(v56, &qword_27DF30E80, &qword_2388D8D70);
LABEL_26:
          v31 = v88;
          v15 = v89;
          v22 = v90;
          goto LABEL_27;
        }

        v59 = v82;
        v60 = (*v77)(v82, v56, v57);
        v22 = &v72;
        MEMORY[0x28223BE20](v60);
        *(&v72 - 2) = v59;
        v61 = sub_23884235C(sub_23888F748, (&v72 - 4), v90);
        (*v76)(v59, v57);
        if ((v61 & 1) == 0)
        {
          goto LABEL_26;
        }

        v31 = v88;
        v15 = v89;
LABEL_7:

        v28 = v87;
        v35 = v85;
        v34 = v98;
      }
    }

    v39 = v30;
    while (1)
    {
      v30 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v30 >= v35)
      {
        goto LABEL_30;
      }

      v40 = *(v31 + 8 * v30);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v98 = (v40 - 1) & v40;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();
  v28 = sub_23888D450(v26, v73, v28, sub_23888F728);

  MEMORY[0x23EE68030](v26, -1, -1);
LABEL_31:
  v63 = 0;
  v22 = (v28 + 56);
  v64 = 1 << *(v28 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v28 + 56);
  v67 = (v64 + 63) >> 6;
  if (v66)
  {
    while (1)
    {
      v68 = v63;
LABEL_38:
      v69 = (*(v28 + 48) + ((v68 << 10) | (16 * __clz(__rbit64(v66)))));
      v70 = *v69;
      v15 = v69[1];

      v26 = sub_2388D1898();
      sub_2388D1888();
      v66 &= v66 - 1;

      v63 = v68;
      if (!v66)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_43;
    }

    if (v68 >= v67)
    {
      break;
    }

    v66 = *&v22[8 * v68];
    ++v63;
    if (v66)
    {
      goto LABEL_38;
    }
  }

LABEL_41:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23888AF00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_23888AF74())
  {
    v3 = sub_23888DE00();
    v4 = sub_23888B2C0(v1, v2, v3);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_23888AF74()
{
  v0 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  v8 = sub_238810E44(&qword_27DF30E80, &qword_2388D8D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-v10];
  sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
  sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68);
  sub_2388D1CC8();
  sub_2388D1CA8();
  sub_2388D2A38();
  sub_2388D1CD8();

  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v7, v0);
  v13 = sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_238827E88(v11, &qword_27DF30E80, &qword_2388D8D70);
  return v14;
}

uint64_t sub_23888B2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_238810E44(&qword_27DF30E80, &qword_2388D8D70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v29 = &v27 - v19;
  if (sub_23888E64C())
  {
    v20 = 0;
  }

  else
  {
    v27 = a3;
    v28 = v17;
    sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
    sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68);
    sub_2388D1CC8();
    sub_2388D1CA8();
    sub_2388D2A38();
    sub_2388D1CD8();

    v21 = *(v5 + 8);
    v21(v9, v4);
    v21(v11, v4);
    v22 = v28;
    if ((*(v28 + 48))(v15, 1, v16) == 1)
    {
      sub_238827E88(v15, &qword_27DF30E80, &qword_2388D8D70);
      v20 = 0;
    }

    else
    {
      v23 = v29;
      v24 = (*(v22 + 32))(v29, v15, v16);
      v25 = v22;
      MEMORY[0x28223BE20](v24);
      *(&v27 - 2) = v23;
      v20 = sub_23884235C(sub_2388903FC, (&v27 - 4), v27);
      (*(v25 + 8))(v23, v16);
    }
  }

  return v20 & 1;
}

uint64_t sub_23888B6F8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = v33 - v3;
  v41 = sub_2388D1C78();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238810E44(&qword_27DF30F38, &qword_2388D8FC0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  v14 = sub_2388D1258();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v33 - v20;
  sub_2388D1C98();
  v22 = sub_2388903A4(&qword_27DF30F10, MEMORY[0x277D853D0]);
  v36 = v21;
  MEMORY[0x23EE654A0](v19, v14, v22);
  v23 = *(v15 + 8);
  v37 = v15 + 8;
  v38 = v23;
  v35 = v14;
  v23(v19, v14);
  v46 = 45;
  v47 = 0xE100000000000000;
  v24 = sub_23889008C();
  v25 = MEMORY[0x277D837D0];
  MEMORY[0x23EE654A0](v48, &v46, MEMORY[0x277D837D0], v24);
  v44 = 46;
  v45 = 0xE100000000000000;
  MEMORY[0x23EE654A0](&v46, &v44, v25, v24);
  v34 = v13;
  sub_2388D1218();
  v44 = v48[0];
  v45 = v48[1];
  sub_2388D1248();
  v33[1] = sub_238815180(&qword_27DF30F48, &qword_27DF30F38, &qword_2388D8FC0);
  v26 = MEMORY[0x277D83E40];
  v27 = v39;
  sub_2388D1C28();
  v28 = *(v4 + 8);
  v29 = v41;
  v28(v7, v41);

  v30 = v40;
  MEMORY[0x23EE65550](v27, v26);
  v44 = v46;
  v45 = v47;
  sub_2388D1248();
  sub_2388D1C28();
  v28(v7, v29);

  MEMORY[0x23EE65550](v27, v26);
  v31 = *(v42 + 8);
  v31(v30, v8);
  v31(v34, v8);
  return v38(v36, v35);
}

uint64_t sub_23888BB7C@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v113 = sub_2388D1258();
  v114 = *(v113 - 8);
  v1 = *(v114 + 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_238810E44(&qword_27DF30EF0, &qword_2388D8F90);
  v132 = *(v121 - 8);
  v3 = *(v132 + 8);
  v4 = MEMORY[0x28223BE20](v121);
  v111 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v107 - v6;
  v7 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v145 = *(v7 - 8);
  v8 = *(v145 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v117 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v107 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v107 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v107 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v136 = &v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v107 - v20;
  MEMORY[0x28223BE20](v19);
  v125 = &v107 - v22;
  v118 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v119 = *(v118 - 8);
  v23 = *(v119 + 64);
  MEMORY[0x28223BE20](v118);
  v126 = &v107 - v24;
  v25 = sub_2388D1C78();
  v26 = *(v25 - 8);
  v143 = v25;
  v144 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v107 - v31;
  v33 = sub_238810E44(&qword_27DF30EF8, &qword_2388D8F98);
  v34 = *(v33 - 8);
  v134 = v33;
  v135 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v108 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v141 = &v107 - v38;
  v39 = sub_238810E44(&qword_27DF30E20, &qword_2388D8D08);
  v138 = *(v39 - 8);
  v139 = v39;
  v40 = *(v138 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v128 = &v107 - v44;
  v45 = sub_2388D1288();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v107 = &v107 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v107 - v51;
  MEMORY[0x28223BE20](v50);
  v131 = &v107 - v53;
  v137 = v52;
  sub_2388D1278();
  v124 = sub_2388903A4(&qword_27DF30F00, MEMORY[0x277D853F0]);
  v133 = v45;
  MEMORY[0x23EE654C0](v52, v45, v124);
  v54 = *(v46 + 8);
  v129 = v46 + 8;
  v130 = v54;
  v54(v52, v45);
  v150 = 0x6574706164616D66;
  v151 = 0xE900000000000072;
  v55 = sub_23889008C();
  v56 = MEMORY[0x277D837D0];
  MEMORY[0x23EE654C0](v152, &v150, MEMORY[0x277D837D0], v55);
  v148 = 45;
  v149 = 0xE100000000000000;
  v122 = v55;
  MEMORY[0x23EE654C0](&v150, &v148, v56, v55);
  sub_2388880B0(v43);
  v109 = sub_238815180(&qword_27DF30E30, &qword_27DF30E20, &qword_2388D8D08);
  v57 = v139;
  MEMORY[0x23EE654C0](v43, v139, v109);
  v58 = *(v138 + 8);
  v138 += 8;
  v115 = v58;
  v58(v43, v57);
  v146 = 45;
  v147 = 0xE100000000000000;
  MEMORY[0x23EE654C0](&v148, &v146, v56, v55);
  sub_2388D1248();
  v59 = v110;
  sub_2388D1C98();
  sub_2388D1248();
  sub_2388903A4(&qword_27DF30F10, MEMORY[0x277D853D0]);
  v60 = MEMORY[0x277D83E40];
  v61 = v21;
  v123 = v21;
  v62 = v113;
  sub_2388D1C58();
  v63 = v143;
  v142 = *(v144 + 8);
  v144 += 8;
  v142(v30, v143);
  (*(v114 + 1))(v59, v62);
  v64 = v111;
  MEMORY[0x23EE65530](v61, v60);
  v65 = sub_238815180(&qword_27DF30F18, &qword_27DF30EF0, &qword_2388D8F90);
  v66 = v112;
  v67 = v121;
  MEMORY[0x23EE654C0](v64, v121, v65);
  v68 = *(v132 + 1);
  v68(v64, v67);
  v69 = v125;
  sub_2388D1238();
  v68(v66, v67);
  v70 = sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
  v113 = MEMORY[0x277D85AC0];
  v71 = sub_238815180(&qword_27DF30F20, &qword_27DF30E18, &qword_2388D8D00);
  v72 = v126;
  v112 = v70;
  sub_2388D1C48();
  v73 = *(v145 + 8);
  v145 += 8;
  v73(v69, v7);
  v142(v32, v63);
  v74 = v108;
  MEMORY[0x23EE65540](v72, v70);
  v111 = sub_238815180(&qword_27DF30F28, &qword_27DF30EF8, &qword_2388D8F98);
  v75 = v134;
  MEMORY[0x23EE654C0](v74, v134, v111);
  v76 = *(v135 + 8);
  v135 += 8;
  v114 = v76;
  v76(v74, v75);
  v77 = v107;
  sub_2388D1268();
  v78 = v133;
  MEMORY[0x23EE654C0](v77, v133, v124);
  v130(v77, v78);
  sub_2388D1238();
  v79 = v152[0];
  v80 = v152[1];
  sub_2388D1248();
  v146 = v79;
  v147 = v80;
  v81 = v136;
  sub_2388D1C38();
  v82 = v127;
  sub_2388D1C38();

  sub_2388D1C18();
  v132 = v73;
  v73(v82, v7);
  v73(v81, v7);
  v83 = v143;
  v142(v32, v143);
  v84 = v150;
  v85 = v151;
  sub_2388D1248();
  v146 = v84;
  v147 = v85;
  sub_2388D1C38();
  v86 = v140;
  sub_2388D1C38();

  v87 = v82;
  sub_2388D1C18();
  v88 = v86;
  v89 = v132;
  v132(v86, v7);
  v89(v87, v7);
  v90 = v142;
  v142(v32, v83);
  sub_2388D1248();
  sub_2388D1C38();
  v91 = v116;
  sub_2388D1C38();
  v92 = v88;
  sub_2388D1C18();
  v93 = v132;
  v132(v91, v7);
  v93(v92, v7);
  v90(v32, v143);
  v94 = v148;
  v95 = v149;
  sub_2388D1248();
  v146 = v94;
  v147 = v95;
  v96 = v32;
  sub_2388D1C38();
  v97 = v117;
  sub_2388D1C38();

  v121 = v71;
  sub_2388D1C18();
  v98 = v132;
  v132(v97, v7);
  v98(v91, v7);
  v99 = v32;
  v100 = v142;
  v101 = v143;
  v142(v99, v143);
  sub_2388D1248();
  sub_2388D1C38();
  v102 = v126;
  sub_2388D1C18();
  v98(v91, v7);
  v100(v96, v101);
  sub_2388D1248();
  sub_2388D1C38();
  sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68);
  v103 = v118;
  sub_2388D1C18();
  v98(v91, v7);
  v100(v96, v143);
  (*(v119 + 8))(v102, v103);
  v98(v140, v7);
  v98(v127, v7);
  v98(v136, v7);
  v98(v123, v7);
  v98(v125, v7);
  v104 = v133;
  v105 = v130;
  v130(v137, v133);
  v114(v141, v134);
  v115(v128, v139);
  return v105(v131, v104);
}

uint64_t static SystemLanguageModel.Adapter.isCompatible(_:)()
{
  v0 = sub_2388D18C8();
  v2 = v1;
  v3 = sub_23888DE00();
  LOBYTE(v0) = sub_23888B2C0(v0, v2, v3);

  return v0 & 1;
}

uint64_t sub_23888CC78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  sub_2388D1CE8();

  LOBYTE(v1) = sub_238890020(v1, v2, v4, v5, v6, v7);

  return v1 & 1;
}

uint64_t sub_23888CD00()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2388D2848();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_2388D2EE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_238827E88(v9, &qword_27DF30F50, &qword_2388D8FD0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v5;
  v4 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v4 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  return result;
}

uint64_t SystemLanguageModel.Adapter.AssetError.Context.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t SystemLanguageModel.Adapter.AssetError.errorDescription.getter()
{
  if (*(v0 + 24) == 2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t SystemLanguageModel.Adapter.AssetError.recoverySuggestion.getter()
{
  v1 = 0xD000000000000057;
  if (*(v0 + 24) == 1)
  {
    v1 = 0;
  }

  if (*(v0 + 24))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

unint64_t sub_23888CEF8()
{
  if (*(v0 + 24) == 2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_23888CF34()
{
  v1 = 0xD000000000000057;
  if (*(v0 + 24) == 1)
  {
    v1 = 0;
  }

  if (*(v0 + 24))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_23888CF80()
{
  v0 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AdapterCompilationRateLimiter(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = (v8 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state);
  *v4 = 0;
  v10 = *(v1 + 28);
  v11 = sub_2388D1028();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *v9 = 0;
  v12 = *(sub_238810E44(&qword_27DF30E60, &qword_2388D8D50) + 28);
  v13 = sub_238810E44(&qword_27DF30F30, &qword_2388D8FA0);
  bzero(v9 + v12, *(*(v13 - 8) + 64));
  result = sub_2388900E0(v4, v9 + v12);
  *(v8 + 16) = 3;
  *(v8 + 24) = 0x40F5180000000000;
  qword_27DF3F8A8 = v8;
  return result;
}

uint64_t sub_23888D0CC()
{
  v1 = v0 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state;
  v2 = sub_238810E44(&qword_27DF30E60, &qword_2388D8D50);
  sub_23888FFC0(v1 + *(v2 + 28), type metadata accessor for AdapterCompilationRateLimiter.State);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23888D168(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23888D260;

  return v7(a1);
}

uint64_t sub_23888D260()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23888D358(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2388903F8;

  return v7(a1);
}

void *sub_23888D450(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23888D740(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23888D4E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_2388D1118();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_23888DAD8(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23888D740(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_23888D8B4(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23888D8B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_238810E44(&qword_27DF30EE8, &qword_2388DC190);
  result = sub_2388D2F58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2388D34A8();

    sub_2388D2938();
    result = sub_2388D34E8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23888DAD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2388D1118();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_238810E44(&qword_27DF30F58, &qword_2388D8FF0);
  result = sub_2388D2F58();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2388903A4(&qword_27DF30F60, MEMORY[0x277CC9740]);
    result = sub_2388D2798();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23888DE00()
{
  v45 = sub_2388D1918();
  v40 = *(v45 - 8);
  v0 = *(v40 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2388D1928();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2388D19E8();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D1998();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2388D1A18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D0E2D8], v41);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v11 + 8))(v14, v10);
  sub_2388D1938();
  v20 = (*(v16 + 8))(v19, v15);
  v21 = MEMORY[0x23EE65B90](v20);
  (*(v42 + 8))(v5, v43);
  v22 = *(v21 + 16);
  if (v22)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v22, 0);
    v23 = v46;
    v24 = *(v40 + 16);
    v25 = *(v40 + 80);
    v41 = v21;
    v26 = v21 + ((v25 + 32) & ~v25);
    v42 = *(v40 + 72);
    v43 = v24;
    v27 = (v40 + 8);
    v28 = v40 + 16;
    do
    {
      v30 = v44;
      v29 = v45;
      v31 = v28;
      v43(v44, v26, v45);
      v32 = sub_2388D1908();
      v34 = v33;
      (*v27)(v30, v29);
      v46 = v23;
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2388B7BD0((v35 > 1), v36 + 1, 1);
        v23 = v46;
      }

      *(v23 + 16) = v36 + 1;
      v37 = v23 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v26 += v42;
      --v22;
      v28 = v31;
    }

    while (v22);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t sub_23888E268@<X0>(unint64_t *a1@<X8>)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v3 = sub_2388D0F78();
  v5 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  v9 = v3;
  v10 = v4;
  v11 = objc_opt_self();
  v12 = sub_2388D0FE8();
  v31[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v31];

  v14 = v31[0];
  if (v13)
  {
    sub_2388D2EE8();
    swift_unknownObjectRelease();
    sub_2388411D4(v32, v31);
    sub_238810E44(&qword_27DF30E48, &qword_2388D8D20);
    if (swift_dynamicCast())
    {
      if (*(v29 + 16) && (v15 = sub_238820AA8(0x44726F7461657263, 0xEE0064656E696665), (v16 & 1) != 0) && (sub_2388411D4(*(v29 + 56) + 32 * v15, v31), (swift_dynamicCast() & 1) != 0))
      {
        v17 = v29;
      }

      else
      {
        v17 = sub_238878D7C(MEMORY[0x277D84F90]);
      }

      if (*(v29 + 16))
      {
        v21 = sub_238820AA8(0xD000000000000011, 0x80000002388DF7E0);
        if (v22)
        {
          sub_2388411D4(*(v29 + 56) + 32 * v21, v31);
          v23 = swift_dynamicCast();
          if (v23)
          {
            v19 = v29;
          }

          else
          {
            v19 = 0;
          }

          if (v23)
          {
            v20 = v30;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        if (*(v29 + 16))
        {
          v24 = sub_238820AA8(0xD000000000000012, 0x80000002388DF800);
          if (v25)
          {
            sub_2388411D4(*(v29 + 56) + 32 * v24, v31);
            sub_238826D50(v9, v10);
            sub_2388158BC(v32);

            result = swift_dynamicCast();
            v26 = v29;
            v27 = v30;
            if (!result)
            {
              v26 = 0;
              v27 = 0;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      sub_238826D50(v9, v10);

      result = sub_2388158BC(v32);
    }

    else
    {
      v17 = sub_238878D7C(MEMORY[0x277D84F90]);
      sub_238826D50(v9, v10);
      result = sub_2388158BC(v32);
      v19 = 0;
      v20 = 0;
    }

    v26 = 0;
    v27 = 0;
LABEL_28:
    *a1 = v17;
    a1[1] = v19;
    a1[2] = v20;
    a1[3] = v26;
    a1[4] = v27;
    goto LABEL_29;
  }

  v18 = v14;
  v5 = sub_2388D0ED8();

  swift_willThrow();
  sub_238826D50(v9, v10);
LABEL_2:
  sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = v5;
  sub_23888EFA8();
  swift_allocError();
  *v7 = 0xD00000000000001DLL;
  *(v7 + 8) = 0x80000002388DF7C0;
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  result = swift_willThrow();
LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23888E64C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2388D2758();
  if (*(v2 + 16) && (v3 = sub_238820AA8(0xD000000000000027, 0x80000002388DF340), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 0xD000000000000026 && 0x80000002388DF590 == v6)
    {

      return 1;
    }

    else
    {
      v9 = sub_2388D3368();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

BOOL sub_23888E780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_23888E64C())
  {
    return 0;
  }

  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    v4 = --v6 != 0;
    if (!v6)
    {
      break;
    }

    v7 = v5 + 2;
    v9 = *(v5 - 1);
    v8 = *v5;

    LOBYTE(v9) = sub_2388D29F8();

    v5 = v7;
  }

  while ((v9 & 1) == 0);
  return v4;
}

uint64_t sub_23888E824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a2;
  v37 = a4;
  v34 = a5;
  v35 = a1;
  v7 = sub_2388D0EE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2388D0F58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v40, "metadata.json");
  HIWORD(v40[1]) = -4864;
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7);
  sub_238856678();
  sub_2388D0F48();
  (*(v8 + 8))(v11, v7);
  sub_23888E268(v41);
  if (v5)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v33 = a3;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  (*(v13 + 8))(v16, v12);
  v22 = *&v41[24];
  v21 = v42;
  v23 = v37;
  if (v42 && (, v24 = sub_23888E780(v22, v21, v23), result = , v24))
  {
    v25 = *&v41[16];
    *v18 = *v41;
    *(v18 + 16) = v25;
    *(v18 + 32) = v42;
  }

  else
  {
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    sub_2388D2FA8();
    MEMORY[0x23EE66C20](0x2072657470616441, 0xE900000000000022);
    if (v20)
    {
      v26 = v20;
      v27 = v19;
    }

    else
    {
      v27 = sub_2388D0F08();
      v26 = v28;
    }

    MEMORY[0x23EE66C20](v27, v26);

    MEMORY[0x23EE66C20](0xD000000000000037, 0x80000002388DF6C0);
    if (v21)
    {
      v44 = *v41;

      sub_238827E88(&v44, &qword_27DF30E48, &qword_2388D8D20);
      v43 = *&v41[8];
      sub_238827E88(&v43, &qword_27DF2FD18, &unk_2388D5400);

      v38 = 0;
      v39 = 0xE000000000000000;
      sub_2388D2FA8();
      MEMORY[0x23EE66C20](0xD000000000000024, 0x80000002388DF740);
      MEMORY[0x23EE66C20](v22, v21);

      MEMORY[0x23EE66C20](0xD000000000000042, 0x80000002388DF770);
      v29 = MEMORY[0x23EE66D80](v23, MEMORY[0x277D837D0]);
      MEMORY[0x23EE66C20](v29);

      MEMORY[0x23EE66C20](46, 0xE100000000000000);
      MEMORY[0x23EE66C20](v38, v39);
    }

    else
    {
      v46 = *v41;
      sub_238827E88(&v46, &qword_27DF30E48, &qword_2388D8D20);
      v45 = *&v41[8];
      sub_238827E88(&v45, &qword_27DF2FD18, &unk_2388D5400);
      MEMORY[0x23EE66C20](0xD00000000000003FLL, 0x80000002388DF700);
    }

    v30 = v40[0];
    v31 = v40[1];
    sub_23888EFA8();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = MEMORY[0x277D84F90];
    *(v32 + 24) = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_23888ECD8()
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v0 = sub_23888CD00();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = sub_2388D2848();
    v7 = [v5 objectForInfoDictionaryKey_];

    if (v7)
    {
      sub_2388D2EE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21[0] = v19;
    v21[1] = v20;
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        v2 = v16;
        v3 = v17;
        goto LABEL_13;
      }
    }

    else
    {
      sub_238827E88(v21, &qword_27DF30F50, &qword_2388D8FD0);
    }

    v8 = [v4 mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {
      v10 = [v4 mainBundle];
      v9 = [v10 bundlePath];
    }

    v2 = sub_2388D2858();
    v3 = v11;
  }

LABEL_13:
  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_2388D2FA8();

  *&v21[0] = 10256610;
  *(&v21[0] + 1) = 0xA300000000000000;
  MEMORY[0x23EE66C20](v2, v3);

  MEMORY[0x23EE66C20](0x1000000000000017, 0x80000002388DF600);
  v12 = sub_2388D2848();

  v13 = sub_2388D2848();
  v14 = sub_2388D2848();
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, v12, v13, v14, 0, 0, &v18);

  v15 = *MEMORY[0x277D85DE8];
}

unint64_t sub_23888EFA8()
{
  result = qword_27DF30E40;
  if (!qword_27DF30E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30E40);
  }

  return result;
}

uint64_t _s16FoundationModels19SystemLanguageModelC7AdapterV010compatibleF11Identifiers4nameSaySSGSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v48 = sub_2388D1918();
  v51 = *(v48 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2388D1928();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2388D19E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2388D1998();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2388D1A18();
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D0E2D8], v8);
  v22 = v45;
  sub_2388D1988();
  sub_2388D1A08();
  (*(v14 + 8))(v17, v13);
  v23 = sub_2388D1938();
  v24 = MEMORY[0x23EE65B90](v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v40 = v21;
    v41 = v18;
    v54 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v25, 0);
    v26 = v54;
    v27 = *(v51 + 16);
    v28 = *(v51 + 80);
    v39 = v24;
    v29 = v24 + ((v28 + 32) & ~v28);
    v46 = *(v51 + 72);
    v47 = v27;
    v51 += 16;
    v30 = (v51 - 8);
    do
    {
      v31 = v48;
      v47(v4, v29, v48);
      v52 = 0x6574706164616D66;
      v53 = 0xEA00000000002D72;
      MEMORY[0x23EE66C20](v49, v50);
      MEMORY[0x23EE66C20](45, 0xE100000000000000);
      v32 = sub_2388D1908();
      MEMORY[0x23EE66C20](v32);

      v34 = v52;
      v33 = v53;
      (*v30)(v4, v31);
      v54 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2388B7BD0((v35 > 1), v36 + 1, 1);
        v26 = v54;
      }

      *(v26 + 16) = v36 + 1;
      v37 = v26 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v29 += v46;
      --v25;
    }

    while (v25);

    (*(v43 + 8))(v45, v44);
    (*(v42 + 8))(v40, v41);
  }

  else
  {

    (*(v43 + 8))(v22, v44);
    (*(v42 + 8))(v21, v18);
    return MEMORY[0x277D84F90];
  }

  return v26;
}

uint64_t sub_23888F4E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23888F528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238833668;

  return sub_23888858C(a1, v4, v5, v7, v6);
}

uint64_t sub_23888F5E8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_23888F634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemLanguageModel.Adapter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23888F6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23888F780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7AdapterV7StorageOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2388D1448();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23888F8A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s7AdapterV7StorageOMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2388D1448();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23888F9A8()
{
  result = _s7AdapterV7StorageOMa(319);
  if (v1 <= 0x3F)
  {
    result = sub_2388D1448();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23888FA40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_23888FA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_23888FB20()
{
  sub_23888FEA0(319, &qword_27DF30EB8, type metadata accessor for AdapterCompilationRateLimiter.State, MEMORY[0x277D85458]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23888FBF0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF30E60, &qword_2388D8D50);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23888FC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23888FC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23888FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23888FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23888FDF4()
{
  sub_23888FEA0(319, &qword_27DF30ED0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23888FEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23888FF54()
{
  result = sub_2388D0F58();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23888FFC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238890020(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_2388D32E8() & 1;
  }
}

unint64_t sub_23889008C()
{
  result = qword_27DF30F08;
  if (!qword_27DF30F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F08);
  }

  return result;
}

uint64_t sub_2388900E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238890144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23889017C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2388414A0;

  return sub_23888D358(a1, v5);
}

uint64_t sub_238890234(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2388414A0;

  return sub_23888D168(a1, v5);
}

uint64_t sub_2388902EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238833668;

  return sub_23888D168(a1, v5);
}

uint64_t sub_2388903A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23889041C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v12 = *(v3 - 2);
      v13 = *(v3 - 1);
      v14 = *v3;
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          if (v14 != 3)
          {
            return 0;
          }

          sub_238814698(*(v3 - 2), *(v3 - 1), 3);
          sub_238814698(v9, v10, 3);
          v19 = sub_23889041C(v9, v12);
          sub_238810DC4(v12, v13, 3);
          sub_238810DC4(v9, v10, 3);
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v11 == 4)
        {
          if (v14 != 4)
          {
            return 0;
          }

          sub_238814698(*(v3 - 2), *(v3 - 1), 4);
          sub_238814698(v9, v10, 4);
          v17 = sub_23881B740(v9, v12);
          sub_238810DC4(v12, v13, 4);
          sub_238810DC4(v9, v10, 4);
          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v14 != 5 || v13 | v12)
          {
            return result;
          }
        }
      }

      else if (*v4)
      {
        if (v11 == 1)
        {
          if (v14 != 1)
          {
            return 0;
          }

          v15 = *(v4 - 2);
          v16 = *(v3 - 2);
          if (*&v9 != *&v12)
          {
            return 0;
          }
        }

        else
        {
          if (v14 != 2)
          {
            return 0;
          }

          if (v9 != v12 || v10 != v13)
          {
            v5 = *(v4 - 2);
            v6 = *(v4 - 1);
            v7 = *(v3 - 2);
            v8 = *(v3 - 1);
            if ((sub_2388D3368() & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        result = 0;
        if (*v3 || ((v12 ^ v9) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238890610(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v45 = a2 + 32;
  v46 = result + 32;
  v44 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      goto LABEL_84;
    }

    v4 = v46 + 40 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 17);
    v9 = *(v4 + 24);
    v10 = *(v4 + 32);
    v11 = v45 + 40 * v3;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 17);
    v47 = *(v11 + 24);
    v48 = v9;
    v51 = v10;
    v52 = *(v11 + 32);
    v49 = v7;
    v50 = *(v11 + 16);
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v14 != 1 || *&v6 != *&v12)
          {
            return 0;
          }

          v17 = v6;
          v18 = v5;
          sub_238814698(v6, v5, 1);

          v19 = *&v12;
          v20 = v12;
          v21 = v13;
          v22 = v13;
          v23 = 1;
        }

        else
        {
          if (v14 != 2)
          {
            return 0;
          }

          if (v6 == v12 && v5 == v13)
          {
            v19 = *v11;
            v21 = *(v11 + 8);
            v37 = v5;
            sub_238814698(v6, v5, 2);

            v17 = v6;
            v20 = v6;
            v18 = v37;
            v22 = v37;
          }

          else
          {
            v35 = v5;
            if ((sub_2388D3368() & 1) == 0)
            {
              return 0;
            }

            v17 = v6;
            v18 = v35;
            sub_238814698(v6, v35, 2);

            v19 = *&v12;
            v20 = v12;
            v21 = v13;
            v22 = v13;
          }

          v23 = 2;
        }
      }

      else
      {
        result = 0;
        if (*(v11 + 16) || ((v12 ^ v6) & 1) != 0)
        {
          return result;
        }

        v17 = v6;
        v18 = v5;
        sub_238814698(v6, v5, 0);

        v19 = *&v12;
        v20 = v12;
        v21 = v13;
        v22 = v13;
        v23 = 0;
      }

LABEL_59:
      sub_238814698(v20, v22, v23);

      goto LABEL_60;
    }

    if (v7 != 3)
    {
      break;
    }

    if (v14 != 3)
    {
      return 0;
    }

    v18 = v5;
    sub_238814698(v6, v5, 3);

    v32 = v12;
    v33 = v12;
    v21 = v13;
    sub_238814698(v32, v13, 3);

    v17 = v6;
    v19 = *&v33;
    if ((sub_2388919B8(v6, v33) & 1) == 0)
    {
      sub_238810DC4(v33, v13, 3);

      v39 = v6;
      v40 = v18;
      v41 = 3;
LABEL_80:
      sub_238810DC4(v39, v40, v41);

      return 0;
    }

LABEL_60:
    if (v8 != v15)
    {
      sub_238810DC4(*&v19, v21, v50);

      v39 = v17;
      v40 = v18;
      v41 = v49;
      goto LABEL_80;
    }

    if (!v51)
    {
      if (v52)
      {
LABEL_73:

        sub_238810DC4(*&v19, v21, v50);

        v39 = v17;
        v40 = v18;
        v41 = v49;
        goto LABEL_80;
      }

      sub_238810DC4(*&v19, v21, v50);

      sub_238810DC4(v17, v18, v49);
      goto LABEL_6;
    }

    if (!v52)
    {
      goto LABEL_73;
    }

    if (v48 == v47 && v51 == v52)
    {
      sub_238810DC4(*&v19, v21, v50);

      sub_238810DC4(v17, v18, v49);
LABEL_6:

      goto LABEL_7;
    }

    v38 = sub_2388D3368();
    sub_238810DC4(*&v19, v21, v50);

    sub_238810DC4(v17, v18, v49);

    if ((v38 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    ++v3;
    v2 = v44;
    if (v3 == v44)
    {
      return 1;
    }
  }

  if (v7 != 4)
  {
    if (v14 != 5 || (v13 | v12) != 0)
    {
      return 0;
    }

    v19 = *v11;
    v21 = *(v11 + 8);
    v17 = v6;
    v18 = v5;
    sub_238814698(v6, v5, 5);

    v20 = 0;
    v22 = 0;
    v23 = 5;
    goto LABEL_59;
  }

  if (v14 != 4)
  {
    return 0;
  }

  v24 = v5;
  sub_238814698(v6, v5, 4);

  sub_238814698(v12, v13, 4);

  result = sub_23881D7DC(v6, v12);
  if ((result & 1) == 0)
  {
    sub_238810DC4(v12, v13, 4);

    v39 = v6;
    v40 = v24;
LABEL_79:
    v41 = 4;
    goto LABEL_80;
  }

  v25 = v24;
  if (!v24)
  {
    v19 = *&v12;
    v18 = 0;
    v17 = v6;
    v21 = v13;
    if (v13)
    {
      sub_238810DC4(*&v19, v13, 4);

      v39 = v6;
      v40 = 0;
LABEL_74:
      v41 = 4;
      goto LABEL_80;
    }

    goto LABEL_60;
  }

  if (!v13)
  {
    v42 = v12;
    v43 = v24;
    v26 = 0;
LABEL_78:
    sub_238810DC4(v42, v26, 4);

    v39 = v6;
    v40 = v43;
    goto LABEL_79;
  }

  v26 = v13;
  v27 = *(v24 + 16);
  if (v27 != *(v26 + 16))
  {
    v42 = v12;
    v43 = v24;
    goto LABEL_78;
  }

  v19 = *&v12;
  v17 = v6;
  v18 = v25;
  v21 = v26;
  if (v27)
  {
    v28 = v25 == v26;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    goto LABEL_60;
  }

  v29 = (v25 + 40);
  v30 = (v26 + 40);
  while (v27)
  {
    result = *(v29 - 1);
    if (result != *(v30 - 1) || *v29 != *v30)
    {
      result = sub_2388D3368();
      if ((result & 1) == 0)
      {
        sub_238810DC4(*&v19, v21, 4);

        v39 = v17;
        v40 = v18;
        goto LABEL_74;
      }
    }

    v29 += 2;
    v30 += 2;
    if (!--v27)
    {
      goto LABEL_60;
    }
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_238890BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2388D3368() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_238890C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_2388D3368() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238890D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_23889777C(v14, v11, type metadata accessor for Transcript.Entry);
        sub_23889777C(v15, v8, type metadata accessor for Transcript.Entry);
        v17 = _s16FoundationModels10TranscriptV5EntryO2eeoiySbAE_AEtFZ_0(v11, v8);
        sub_238891FF0(v8, type metadata accessor for Transcript.Entry);
        sub_238891FF0(v11, type metadata accessor for Transcript.Entry);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_238890EE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[3];
    v33 = v5[2];
    v34 = v8;
    *v35 = v5[4];
    *&v35[16] = *(v5 + 10);
    v9 = v5[1];
    v31 = *v5;
    v32 = v9;
    v10 = v6[1];
    v36 = *v6;
    v37 = v10;
    v11 = v6[2];
    v12 = v6[3];
    v13 = v6[4];
    *&v40[16] = *(v6 + 10);
    v39 = v12;
    *v40 = v13;
    v38 = v11;
    if (v31 != v36 && (sub_2388D3368() & 1) == 0 || v32 != v37 && (sub_2388D3368() & 1) == 0)
    {
      return 0;
    }

    v21 = v7;
    v15 = *(&v33 + 1);
    v14 = v33;
    v16 = v38;
    v17 = v34;
    v18 = v39;
    v27 = v33;
    v28 = v34;
    v29 = *(&v34 + 1);
    v30 = *v35;
    v23 = v38;
    v24 = v39;
    v25 = *(&v39 + 1);
    v26 = *v40;
    sub_238827C78(&v31, v22);
    sub_238827C78(&v36, v22);
    sub_238814698(v14, v15, v17);

    sub_238814698(v16, *(&v16 + 1), v18);

    LOBYTE(v14) = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v27, &v23);
    sub_238810DC4(v23, *(&v23 + 1), v24);

    sub_238810DC4(v27, *(&v27 + 1), v28);

    if ((v14 & 1) == 0)
    {
      sub_2388976E4(&v36);
      sub_2388976E4(&v31);
      return 0;
    }

    if (*&v35[8] == *&v40[8])
    {
      sub_2388976E4(&v36);
      sub_2388976E4(&v31);
    }

    else
    {
      v19 = sub_2388D3368();
      sub_2388976E4(&v36);
      sub_2388976E4(&v31);
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (!v21)
    {
      break;
    }

    v7 = v21 - 1;
    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

uint64_t sub_238891144(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v77 = v2;
  v78 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = *(v5 + 48);
    v9 = *(v5 + 16);
    v59 = *(v5 + 32);
    v60 = v8;
    v10 = *(v5 + 48);
    v61 = *(v5 + 64);
    v11 = *(v5 + 16);
    v58[0] = *v5;
    v58[1] = v11;
    v12 = v6[3];
    v13 = v6[1];
    v65 = v6[2];
    v66 = v12;
    v14 = v6[3];
    v67 = v6[4];
    v15 = v6[1];
    v63 = *v6;
    v64 = v15;
    v69[2] = v59;
    v69[3] = v10;
    v69[4] = *(v5 + 64);
    v69[0] = v58[0];
    v69[1] = v9;
    v75 = v6[4];
    v74 = v14;
    v73 = v65;
    v71 = v63;
    v62 = *(v5 + 80);
    v68 = *(v6 + 10);
    v70 = *(v5 + 80);
    v76 = *(v6 + 10);
    v72 = v13;
    v16 = v58[0];
    v17 = WORD3(v60) >> 14;
    v18 = v11;
    v44 = v7;
    if (v17)
    {
      if (v17 == 1)
      {
        if (((WORD3(v66) << 32) & 0xC00000000000) != 0x400000000000)
        {
          goto LABEL_33;
        }

        v41 = *(&v59 + 1);
        v42 = v59;
        v40 = v60;
        v35 = BYTE1(v60);
        v43 = v61;
        v30 = v62;
        v31 = *(&v61 + 1);
        v19 = v63;
        v20 = v64;
        v36 = *(&v60 + 1);
        v37 = *(&v65 + 1);
        v34 = *(&v66 + 1);
        v38 = v65;
        v39 = v67;
        v28 = v68;
        v29 = *(&v67 + 1);
        v32 = v66;
        v33 = BYTE1(v66);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        if (v16 != v19 && (sub_2388D3368() & 1) == 0 || v18 != v20 && (sub_2388D3368() & 1) == 0)
        {
          goto LABEL_35;
        }

        v51 = v42;
        v52 = v41;
        v53 = v40;
        v54 = v35 & 1;
        v55 = v36;
        v56 = v43;
        v45 = v38;
        v46 = v37;
        v47 = v32;
        v48 = v33 & 1;
        v49 = v34;
        v50 = v39;
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_238814698(v42, v41, v40);

        sub_238814698(v38, v37, v32);

        v21 = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v51, &v45);
        sub_238810DC4(v45, v46, v47);

        sub_238810DC4(v51, v52, v53);

        if (!v21)
        {
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          return 0;
        }

        if (v31 == v29 && v30 == v28)
        {
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
        }

        else
        {
          v25 = sub_2388D3368();
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          if ((v25 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v66 >> 62 != 2)
        {
          goto LABEL_33;
        }

        if (v58[0] != v63 && (sub_2388D3368() & 1) == 0)
        {
          sub_2388977E4(v58, v57);
          v27 = &v63;
LABEL_34:
          sub_2388977E4(v27, v57);
LABEL_35:
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          return 0;
        }

        type metadata accessor for CGImage(0);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage);
        v23 = sub_2388D1348();
        sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
        sub_238840EF8(&v63);
        sub_238840EF8(v58);
        sub_238840EF8(&v63);
        sub_238840EF8(v58);
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v66 >> 62 || (v22 = v64, v58[0] != v63) && (sub_2388D3368() & 1) == 0)
      {
LABEL_33:
        sub_2388977E4(&v63, v57);
        v27 = v58;
        goto LABEL_34;
      }

      if (v18 == v22)
      {
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
      }

      else
      {
        v24 = sub_2388D3368();
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (!v44)
    {
      return 1;
    }

    v7 = v44 - 1;
    v6 = (v6 + 88);
    v5 += 88;
  }
}

uint64_t sub_238891780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ToolDefinition(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23889777C(v14, v11, type metadata accessor for Transcript.ToolDefinition);
      sub_23889777C(v15, v8, type metadata accessor for Transcript.ToolDefinition);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_2388D3368() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_2388D3368() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      v20 = sub_2388D1F48();
      sub_238891FF0(v8, type metadata accessor for Transcript.ToolDefinition);
      sub_238891FF0(v11, type metadata accessor for Transcript.ToolDefinition);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_238891FF0(v8, type metadata accessor for Transcript.ToolDefinition);
    sub_238891FF0(v11, type metadata accessor for Transcript.ToolDefinition);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_2388919B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    do
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
        return result;
      }

      v8 = v4 + 24 * v3;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 17);
      v12 = *(v8 + 16);
      v13 = v5 + 24 * v3;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 17);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          if (v16 != 3)
          {
            return 0;
          }

          sub_238814698(*v13, *(v13 + 8), 3);
          sub_238814698(v9, v10, 3);
          if ((sub_2388919B8(v9, v14) & 1) == 0)
          {
            sub_238810DC4(v14, v15, 3);
            v33 = v9;
            v34 = v10;
            v35 = 3;
            goto LABEL_65;
          }

          sub_238810DC4(v9, v10, 3);
          v25 = v14;
          v26 = v15;
          v27 = 3;
LABEL_44:
          result = sub_238810DC4(v25, v26, v27);
          if (v11 != v17)
          {
            return 0;
          }

          goto LABEL_11;
        }

        if (v12 != 4)
        {
          if (v16 != 5)
          {
            return 0;
          }

          result = 0;
          if (v15 | v14)
          {
            return result;
          }

          goto LABEL_10;
        }

        if (v16 != 4)
        {
          return 0;
        }

        sub_238814698(*v13, *(v13 + 8), 4);
        sub_238814698(v9, v10, 4);
        if ((sub_23881D7DC(v9, v14) & 1) == 0)
        {
          goto LABEL_62;
        }

        if (!v10)
        {
          if (v15)
          {
            sub_238810DC4(v14, v15, 4);
            v33 = v9;
            v34 = 0;
            goto LABEL_64;
          }

          sub_238810DC4(v9, 0, 4);
          v25 = v14;
          v26 = 0;
          v27 = 4;
          goto LABEL_44;
        }

        if (!v15)
        {
          v31 = v14;
          v32 = 0;
LABEL_63:
          sub_238810DC4(v31, v32, 4);
          v33 = v9;
          v34 = v10;
LABEL_64:
          v35 = 4;
LABEL_65:
          sub_238810DC4(v33, v34, v35);
          return 0;
        }

        v38 = v11;
        v22 = *(v10 + 16);
        if (v22 != *(v15 + 16))
        {
          goto LABEL_62;
        }

        if (v22)
        {
          if (v10 != v15)
          {
            v36 = v5;
            v37 = v4;
            v28 = (v10 + 40);
            v29 = (v15 + 40);
            while (1)
            {
              v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
              if (!v30 && (sub_2388D3368() & 1) == 0)
              {
                break;
              }

              v28 += 2;
              v29 += 2;
              if (!--v22)
              {
                sub_238810DC4(v9, v10, 4);
                result = sub_238810DC4(v14, v15, 4);
                v5 = v36;
                v4 = v37;
                if (v38 == v17)
                {
                  goto LABEL_11;
                }

                return 0;
              }
            }

LABEL_62:
            v31 = v14;
            v32 = v15;
            goto LABEL_63;
          }

          sub_238810DC4(v9, v10, 4);
          v23 = v14;
          v24 = v10;
        }

        else
        {
          sub_238810DC4(v9, v10, 4);
          v23 = v14;
          v24 = v15;
        }

        result = sub_238810DC4(v23, v24, 4);
        v11 = v38;
      }

      else
      {
        if (!v12)
        {
          result = 0;
          if (*(v13 + 16) || ((v14 ^ v9) & 1) != 0)
          {
            return result;
          }

          goto LABEL_10;
        }

        if (v12 == 1)
        {
          result = 0;
          v6 = *v13;
          if (v16 != 1 || *&v9 != *&v14)
          {
            return result;
          }

          goto LABEL_10;
        }

        if (v16 != 2)
        {
          return 0;
        }

        if (v9 != v14 || v10 != v15)
        {
          v19 = *v13;
          v20 = *(v13 + 8);
          v21 = sub_2388D3368();
          result = 0;
          if ((v21 & 1) == 0)
          {
            return result;
          }

LABEL_10:
          if ((v11 ^ v17))
          {
            return result;
          }

          goto LABEL_11;
        }
      }

      if (v11 != v17)
      {
        return 0;
      }

LABEL_11:
      ++v3;
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t Transcript.Entry.instructions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v7, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    v9 = *v7;
    v11 = *(v7 + 8);
    v10 = *(v7 + 3);
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 24) = v10;
  return result;
}

uint64_t Transcript.Entry.id.getter()
{
  v1 = type metadata accessor for Transcript.Prompt(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Transcript.Entry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23889777C(v0, v8, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_238897714(v8, v4, type metadata accessor for Transcript.Prompt);
      v10 = *v4;
      v20 = v4[1];

      sub_238891FF0(v4, type metadata accessor for Transcript.Prompt);
      return v10;
    }

LABEL_6:
    v10 = *v8;
    v14 = v8[1];
    v16 = v8[2];
    v15 = v8[3];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = *v8;
    v17 = v8[1];
    v18 = v8[2];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_6;
  }

  v10 = *v8;
  v11 = v8[1];
  v13 = v8[3];
  v12 = v8[4];
LABEL_7:

LABEL_9:

  return v10;
}

uint64_t sub_238891FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Transcript.init<A>(entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  type metadata accessor for Transcript.Entry(0);
  v9 = sub_2388D2B28();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t Transcript.ToolDefinition.init<A>(tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for GenerationSchema(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(a3 + 40))(a2, a3);
  v14 = v13;
  v15 = (*(a3 + 48))(a2, a3);
  v17 = v16;
  (*(a3 + 56))(a2, a3);
  *a4 = v12;
  a4[1] = v14;
  a4[2] = v15;
  a4[3] = v17;
  v18 = type metadata accessor for Transcript.ToolDefinition(0);
  GenerationSchema.jsonSchema()(a4 + *(v18 + 24));
  (*(*(a2 - 8) + 8))(a1, a2);
  return sub_238891FF0(v11, type metadata accessor for GenerationSchema);
}

FoundationModels::Transcript::Instructions __swiftcall Transcript.Instructions.init(id:segments:toolDefinitions:)(Swift::String id, Swift::OpaquePointer segments, Swift::OpaquePointer toolDefinitions)
{
  *v3 = id;
  *(v3 + 16) = segments;
  *(v3 + 24) = toolDefinitions;
  result.id = id;
  result.toolDefinitions = toolDefinitions;
  result.segments = segments;
  return result;
}

FoundationModels::Transcript::TextSegment __swiftcall Transcript.TextSegment.init(id:content:)(Swift::String id, Swift::String content)
{
  *v2 = id;
  v2[1] = content;
  result.content = content;
  result.id = id;
  return result;
}

uint64_t Transcript.ImageSegment.init(id:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Transcript.ToolDefinition.init(name:description:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for Transcript.ToolDefinition(0);
  GenerationSchema.jsonSchema()(a6 + *(v8 + 24));
  return sub_238891FF0(a5, type metadata accessor for GenerationSchema);
}

uint64_t Transcript.Prompt.init(id:segments:options:responseFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for Transcript.Prompt(0) + 28);
  v13 = type metadata accessor for Transcript.ResponseFormat(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  v14 = *(a4 + 48);
  *(a6 + 56) = *(a4 + 32);
  *(a6 + 72) = v14;
  *(a6 + 88) = *(a4 + 64);
  v15 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 104) = *(a4 + 80);
  *(a6 + 40) = v15;

  return sub_238856608(a5, a6 + v12);
}

uint64_t Transcript.ResponseFormat.init(schema:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for GenerationSchema(0) + 20));
  v6 = *v4;
  v5 = v4[1];

  sub_2388C24EC();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  GenerationSchema.jsonSchema()(a2 + *(v11 + 24));
  result = sub_238891FF0(a1, type metadata accessor for GenerationSchema);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

unint64_t Transcript.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *v2;
    if (*(v5 + 16) > result)
    {
      v6 = *(type metadata accessor for Transcript.Entry(0) - 8);
      return sub_23889777C(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a2, type metadata accessor for Transcript.Entry);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2388925BC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if (v3 < *(*result + 16))
    {
      v6 = *(type metadata accessor for Transcript.Entry(0) - 8);
      return sub_23889777C(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a3, type metadata accessor for Transcript.Entry);
    }
  }

  __break(1u);
  return result;
}

size_t sub_23889267C(uint64_t a1, size_t *a2, unint64_t *a3)
{
  v6 = type metadata accessor for Transcript.Entry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  sub_23889777C(a1, v10, type metadata accessor for Transcript.Entry);
  v12 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if (result)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_238895348(v12);
  v12 = result;
  *a2 = result;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 < v12[2])
  {
    result = sub_23889535C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11);
    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t Transcript.subscript.setter(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_238895348(v5);
  v5 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
    result = sub_23889535C(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*Transcript.subscript.modify(void *a1, unint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[2] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[2] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v7[3] = result;
  v11 = *v2;
  v7[4] = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11 + 16) > a2)
  {
    v12 = *(v8 + 80);
    *(v7 + 12) = v12;
    v13 = v11 + ((v12 + 32) & ~v12);
    v14 = *(v8 + 72);
    v7[5] = v14;
    sub_23889777C(v13 + v14 * a2, result, type metadata accessor for Transcript.Entry);
    return sub_2388929EC;
  }

  __break(1u);
  return result;
}

void sub_2388929EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v4 = v2[1];
    sub_23889777C(v2[3], v2[2], type metadata accessor for Transcript.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v3;
    v6 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = v2[1];
      v6 = sub_238895348(v2[4]);
      *v14 = v6;
    }

    if (v6[2] > *v2)
    {
      v8 = v2[2];
      v7 = v2[3];
      v9 = v2[1];
      sub_23889535C(v8, v6 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * *v2);
      *v9 = v6;
      sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = v2[1];
  v11 = *(*a1 + 32);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v3;
  v6 = v2[4];
  if ((v12 & 1) == 0)
  {
LABEL_13:
    v15 = v2[1];
    v6 = sub_238895348(v6);
    *v15 = v6;
  }

  if (v6[2] <= *v2)
  {
    __break(1u);
    return;
  }

  v8 = v2[2];
  v7 = v2[3];
  v13 = v2[1];
  sub_23889535C(v7, v6 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * *v2);
  *v13 = v6;
LABEL_9:
  free(v7);
  free(v8);

  free(v2);
}

uint64_t Transcript.Entry.toolCalls.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v7, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
  }

  else
  {
    result = sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
    v9 = 0;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  return result;
}

uint64_t Transcript.Entry.toolOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v7, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 2);
    v12 = *(v7 + 24);
  }

  else
  {
    result = sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  return result;
}

uint64_t Transcript.Entry.response.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v7, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    v11 = *(v7 + 3);
  }

  else
  {
    result = sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
    v9 = 0;
    v11 = 0;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_238892E50@<X0>(uint64_t *a1@<X8>)
{
  result = Transcript.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Transcript.Segment.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_238892EB0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t Transcript.TextSegment.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transcript.TextSegment.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.TextSegment.content.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transcript.TextSegment.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Transcript.TextSegment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2388D3368(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2388D3368();
    }
  }

  return result;
}

uint64_t sub_23889309C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2388930A8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2388D3368(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2388D3368();
    }
  }

  return result;
}

uint64_t Transcript.StructuredSegment.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transcript.StructuredSegment.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.StructuredSegment.source.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transcript.StructuredSegment.source.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t *sub_238893288(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_238894590();
  }

  return result;
}

uint64_t Transcript.ImageSegment.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transcript.ImageSegment.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Transcript.ImageSegment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage);
  return sub_2388D1348() & 1;
}

uint64_t sub_238893480(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage);
  return sub_2388D1348() & 1;
}

uint64_t Transcript.Instructions.segments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Transcript.Instructions.toolDefinitions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Transcript.ToolDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transcript.ToolDefinition.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.ToolDefinition.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transcript.ToolDefinition.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Transcript.ToolDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Transcript.ToolDefinition(0) + 24);

  return sub_2388D1F48();
}

uint64_t sub_238893804(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return sub_2388D1F48();
}

uint64_t Transcript.Prompt.segments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

__n128 Transcript.Prompt.options.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = *(v1 + 104);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 Transcript.Prompt.options.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  return result;
}

uint64_t Transcript.Prompt.responseFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Transcript.Prompt(0) + 28);

  return sub_238896400(v3, a1);
}

uint64_t Transcript.Prompt.responseFormat.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Transcript.Prompt(0) + 28);

  return sub_238856608(a1, v3);
}

uint64_t Transcript.ResponseFormat.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transcript.ResponseFormat.init<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for GenerationSchema(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 40))(a1, a2);
  v11 = &v10[*(v7 + 28)];
  v13 = *v11;
  v12 = *(v11 + 1);

  sub_2388C24EC();
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  GenerationSchema.jsonSchema()(a3 + *(v18 + 24));
  result = sub_238891FF0(v10, type metadata accessor for GenerationSchema);
  *a3 = v13;
  a3[1] = v12;
  a3[2] = v15;
  a3[3] = v17;
  return result;
}

uint64_t Transcript.ToolCalls.init<A>(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  *a4 = MEMORY[0x28223BE20](a1);
  a4[1] = v10;
  (*(v7 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12);
  v13 = sub_2388D2B28();
  result = (*(v7 + 8))(a2, a3);
  a4[2] = v13;
  return result;
}

unint64_t Transcript.ToolCalls.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 88 * result;
      v5 = *(v4 + 48);
      v14[0] = *(v4 + 32);
      v14[1] = v5;
      v6 = *(v4 + 64);
      v7 = *(v4 + 80);
      v8 = *(v4 + 96);
      v15 = *(v4 + 112);
      v14[3] = v7;
      v14[4] = v8;
      v14[2] = v6;
      v9 = *(v4 + 48);
      *a2 = *(v4 + 32);
      *(a2 + 16) = v9;
      v10 = *(v4 + 64);
      v11 = *(v4 + 80);
      v12 = *(v4 + 96);
      *(a2 + 80) = *(v4 + 112);
      *(a2 + 48) = v11;
      *(a2 + 64) = v12;
      *(a2 + 32) = v10;
      return sub_238827C78(v14, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t static Transcript.ToolCalls.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238890EE8(v2, v3);
}

uint64_t sub_238893E10(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238890EE8(v2, v3);
}

unint64_t sub_238893E84(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 < result || v6 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3 - result;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_13:
  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_16;
  }

  if (result > v6)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_238893EF0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_238893F5C@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 16) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_238893F88(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 16) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_238893FD8(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x108uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2 + 16);
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 88 * v7;
      v10 = *(v9 + 48);
      *result = *(v9 + 32);
      *(result + 1) = v10;
      v11 = *(v9 + 64);
      v12 = *(v9 + 80);
      v13 = *(v9 + 96);
      *(result + 10) = *(v9 + 112);
      *(result + 3) = v12;
      *(result + 4) = v13;
      *(result + 2) = v11;
      memmove(result + 88, (v9 + 32), 0x58uLL);
      sub_238827C78(v6, v6 + 176);
      return sub_2388940AC;
    }
  }

  __break(1u);
  return result;
}

void sub_2388940AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  *(v1 + 208) = *(*a1 + 120);
  *(v1 + 224) = v2;
  *(v1 + 240) = *(v1 + 152);
  *(v1 + 256) = *(v1 + 168);
  v3 = *(v1 + 104);
  *(v1 + 176) = *(v1 + 88);
  *(v1 + 192) = v3;
  sub_2388976E4(v1 + 176);

  free(v1);
}

uint64_t *sub_238894110@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = v2[2], *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

void sub_238894174(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_2388941A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2388941D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_238893E84(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_238894214(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_23889423C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_238894258(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_238894274(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_238894290@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2388942B4(void *result)
{
  if (*result >= *(*(v1 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_2388942D8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

char *sub_238894304()
{
  v1 = sub_238853BC8(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t _s16FoundationModels10TranscriptV17StructuredSegmentV7contentAA16GeneratedContentVvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 49);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v7 = *(v1 + 48);
  *(a1 + 16) = v7;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_238814698(v2, v3, v7);
}

uint64_t sub_238894418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 49);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *a2 = v3;
  *(a2 + 8) = v2;
  v7 = *(a1 + 48);
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  sub_238814698(v3, v2, v7);
}

uint64_t sub_238894470(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 32);
  v13 = *(a1 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 64);
  v10 = *(a1 + 16);
  v11 = *(a2 + 48);
  sub_238814698(*a1, v4, v10);

  sub_238810DC4(v7, v8, v11);

  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v10;
  *(a2 + 49) = v5;
  *(a2 + 56) = v13;
  *(a2 + 64) = v6;
  return sub_238894590();
}

uint64_t _s16FoundationModels10TranscriptV17StructuredSegmentV7contentAA16GeneratedContentVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(v1 + 64);
  sub_238810DC4(*(v1 + 32), *(v1 + 40), *(v1 + 48));

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 49) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  return sub_238894590();
}

uint64_t sub_238894590()
{
  v1 = v0;
  v2 = sub_2388D0D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v18 = *(v0 + 40);
  v19 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 49);
  v7 = sub_2388D0DC8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v11 = *(v3 + 72);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_2388963B8(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v13 = sub_238819C1C(v19, v18, v5, v10);
  v15 = v14;

  v16 = *(v1 + 80);

  *(v1 + 72) = v13;
  *(v1 + 80) = v15;
  return result;
}

uint64_t _s16FoundationModels10TranscriptV17StructuredSegmentV2id6source7contentAESS_SSAA16GeneratedContentVtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = sub_2388D0D88();
  v35 = *(v40 - 8);
  v12 = v35;
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v16 = *(a5 + 8);
  v17 = *(a5 + 16);
  v18 = *(a5 + 17);
  v37 = v18;
  v19 = *(a5 + 24);
  v20 = *(a5 + 32);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  v21 = v15;
  v36 = v15;
  *(a6 + 48) = v17;
  *(a6 + 49) = v18;
  *(a6 + 56) = v19;
  *(a6 + 64) = v20;
  v38 = v20;
  v22 = sub_2388D0DC8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_238814698(v21, v16, v17);

  v25 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v26 = *(v12 + 72);
  v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v41 = v28;
  sub_2388963B8(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v29 = v36;
  v30 = sub_238819C1C(v36, v16, v17, v25);
  v32 = v31;

  sub_238810DC4(v29, v16, v17);

  *(a6 + 72) = v30;
  *(a6 + 80) = v32;
  return result;
}

uint64_t Transcript.ToolOutput.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transcript.ToolOutput.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.ToolOutput.toolName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transcript.ToolOutput.toolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transcript.ToolOutput.segments.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall Transcript.ToolOutput.init(id:toolName:segments:)(FoundationModels::Transcript::ToolOutput *__return_ptr retstr, Swift::String id, Swift::String toolName, Swift::OpaquePointer segments)
{
  retstr->id = id;
  retstr->toolName = toolName;
  retstr->segments = segments;
}

uint64_t static Transcript.ToolOutput.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238891144(v3, v7);
}

uint64_t sub_238894CC0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238891144(v3, v7);
}

uint64_t sub_238894E08(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[2];
  v6 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *a1 == *a2 && a1[1] == a2[1];
  if (!v9 && (sub_2388D3368() & 1) == 0 || (a3(v5, v8) & 1) == 0)
  {
    return 0;
  }

  return a4(v6, v7);
}

uint64_t sub_238894EF4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a1[2];
  v8 = a1[3];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (!v11 && (sub_2388D3368() & 1) == 0 || (a5(v7, v10) & 1) == 0)
  {
    return 0;
  }

  return a6(v8, v9);
}

void *sub_238894FCC@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_238894FF8(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_238895040(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(type metadata accessor for Transcript.Entry(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_23889777C(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, type metadata accessor for Transcript.Entry);
    return sub_238895150;
  }

  __break(1u);
  return result;
}

void sub_238895150(uint64_t *a1)
{
  v1 = *a1;
  sub_238891FF0(*a1, type metadata accessor for Transcript.Entry);

  free(v1);
}

uint64_t *sub_2388951A0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

void sub_2388951CC(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_2388951F0@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_23889521C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_238893EF0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_238895258(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *sub_238895280@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2388952A4(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

size_t sub_2388952E0()
{
  v1 = sub_238853C84(*v0);

  return v1;
}

uint64_t sub_23889535C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16FoundationModels10TranscriptV7SegmentO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v31[16] = a1[2];
  *v32 = v2;
  v4 = a1[3];
  *&v32[16] = a1[4];
  v5 = a1[1];
  v30 = *a1;
  *v31 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v35 = a2[2];
  *v36 = v6;
  v8 = a2[3];
  *&v36[16] = a2[4];
  v9 = a2[1];
  v33 = *a2;
  v34 = v9;
  v37[2] = *&v31[16];
  v37[3] = v4;
  v37[4] = a1[4];
  v37[0] = v30;
  v37[1] = v3;
  v43 = a2[4];
  v42 = v8;
  v41 = v35;
  v39 = v33;
  *&v32[32] = *(a1 + 10);
  *&v36[32] = *(a2 + 10);
  v10 = *(a2 + 10);
  v38 = *(a1 + 10);
  v44 = v10;
  v40 = v7;
  v12 = *(&v5 + 1);
  v11 = v5;
  if (!(*v32 >> 62))
  {
    if (*v36 >> 62)
    {
      goto LABEL_15;
    }

    if (v30 != v33)
    {
      v14 = sub_2388D3368();
      v12 = *&v31[8];
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (__PAIR128__(v12, v11) == v34)
    {
      sub_2388977E4(&v33, &v23);
      sub_2388977E4(&v30, &v23);
      sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
      v13 = 1;
      return v13 & 1;
    }

    v17 = sub_2388D3368();
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
    if (v17)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (*v32 >> 62 != 1)
  {
    if (*v36 >> 62 != 2 || v30 != v33 && (sub_2388D3368() & 1) == 0)
    {
      goto LABEL_15;
    }

    type metadata accessor for CGImage(0);
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage);
    v15 = sub_2388D1348();
    sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
    sub_238840EF8(&v33);
    sub_238840EF8(&v30);
    if (v15)
    {
LABEL_19:
      v13 = 1;
      return v13 & 1;
    }

LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  if (*v36 >> 62 != 1)
  {
LABEL_15:
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
    goto LABEL_16;
  }

  v23 = v30;
  v25 = *&v31[8];
  v24 = *v31;
  v26 = *&v31[24];
  v27 = *v32 & 0x3FFFFFFFFFFFFFFFLL;
  v28 = *&v32[8];
  v29 = *&v32[24];
  v19[0] = v33;
  v19[1] = v34;
  v19[2] = v35;
  v20 = *v36 & 0x3FFFFFFFFFFFFFFFLL;
  v21 = *&v36[8];
  v22 = *&v36[24];
  sub_2388977E4(&v33, v18);
  sub_2388977E4(&v30, v18);
  sub_2388977E4(&v33, v18);
  sub_2388977E4(&v30, v18);
  v13 = sub_238896470(&v23, v19);
  sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
  sub_238840EF8(&v33);
  sub_238840EF8(&v30);
  return v13 & 1;
}

uint64_t sub_238895764(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (sub_2388D3368() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  v8 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);

  return sub_2388D1F48();
}

BOOL _s16FoundationModels10TranscriptV14ResponseFormatV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_2388D3368() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);
  return (sub_2388D1F48() & 1) != 0;
}

uint64_t _s16FoundationModels10TranscriptV6PromptV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ResponseFormat(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v30 - v11);
  v13 = sub_238810E44(&qword_27DF310A0, &qword_2388D9DB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  if ((sub_238891144(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 72);
  v32[2] = *(a1 + 56);
  v32[3] = v17;
  v32[4] = *(a1 + 88);
  v33 = *(a1 + 104);
  v18 = *(a1 + 40);
  v32[0] = *(a1 + 24);
  v32[1] = v18;
  v19 = *(a2 + 72);
  v30[2] = *(a2 + 56);
  v30[3] = v19;
  v30[4] = *(a2 + 88);
  v31 = *(a2 + 104);
  v20 = *(a2 + 40);
  v30[0] = *(a2 + 24);
  v30[1] = v20;
  if ((_s16FoundationModels17GenerationOptionsV2eeoiySbAC_ACtFZ_0(v32, v30) & 1) == 0)
  {
    return 0;
  }

  v21 = *(type metadata accessor for Transcript.Prompt(0) + 28);
  v22 = *(v13 + 48);
  sub_238896400(a1 + v21, v16);
  sub_238896400(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
LABEL_8:
      sub_238827E88(v16, &qword_27DF2FF00, &qword_2388D57E0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_238896400(v16, v12);
  if (v23(&v16[v22], 1, v4) != 1)
  {
    sub_238897714(&v16[v22], v8, type metadata accessor for Transcript.ResponseFormat);
    if ((*v12 != *v8 || v12[1] != v8[1]) && (sub_2388D3368() & 1) == 0)
    {
      goto LABEL_24;
    }

    v27 = v12[3];
    v28 = v8[3];
    if (v27)
    {
      if (!v28 || (v12[2] != v8[2] || v27 != v28) && (sub_2388D3368() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v28)
    {
LABEL_24:
      sub_238891FF0(v8, type metadata accessor for Transcript.ResponseFormat);
      sub_238891FF0(v12, type metadata accessor for Transcript.ResponseFormat);
      v25 = &qword_27DF2FF00;
      v26 = &qword_2388D57E0;
      goto LABEL_25;
    }

    v29 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);
    if (sub_2388D1F48())
    {
      sub_238891FF0(v8, type metadata accessor for Transcript.ResponseFormat);
      sub_238891FF0(v12, type metadata accessor for Transcript.ResponseFormat);
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  sub_238891FF0(v12, type metadata accessor for Transcript.ResponseFormat);
LABEL_11:
  v25 = &qword_27DF310A0;
  v26 = &qword_2388D9DB8;
LABEL_25:
  sub_238827E88(v16, v25, v26);
  return 0;
}

uint64_t _s16FoundationModels10TranscriptV5EntryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = type metadata accessor for Transcript.Prompt(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Transcript.Entry(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v74 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v74 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v74 - v21);
  v23 = sub_238810E44(&qword_27DF310B0, &qword_2388D9DC8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = (&v74 + *(v25 + 56) - v26);
  v28 = a1;
  v29 = &v74 - v26;
  sub_23889777C(v28, &v74 - v26, type metadata accessor for Transcript.Entry);
  sub_23889777C(v75, v27, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23889777C(v29, v20, type metadata accessor for Transcript.Entry);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_238897714(v27, v6, type metadata accessor for Transcript.Prompt);
        v72 = _s16FoundationModels10TranscriptV6PromptV2eeoiySbAE_AEtFZ_0(v20, v6);
        sub_238891FF0(v6, type metadata accessor for Transcript.Prompt);
        sub_238891FF0(v20, type metadata accessor for Transcript.Prompt);
        sub_238891FF0(v29, type metadata accessor for Transcript.Entry);
        return v72 & 1;
      }

      sub_238891FF0(v20, type metadata accessor for Transcript.Prompt);
      goto LABEL_55;
    }

    sub_23889777C(v29, v22, type metadata accessor for Transcript.Entry);
    v47 = *v22;
    v46 = v22[1];
    v48 = v22[2];
    v49 = v22[3];
    if (!swift_getEnumCaseMultiPayload())
    {
      v51 = v27[2];
      v50 = v27[3];
      v52 = v47 == *v27 && v46 == v27[1];
      if (v52 || (v53 = v27[1], (sub_2388D3368() & 1) != 0))
      {
        if (sub_238891144(v48, v51))
        {
          v54 = sub_238891780(v49, v50);
          goto LABEL_42;
        }
      }

      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23889777C(v29, v17, type metadata accessor for Transcript.Entry);
    v56 = *v17;
    v55 = v17[1];
    v57 = v17[2];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v58 = *v27;
      v59 = v27[1];
      v60 = v27[2];
      v61 = v56 == v58 && v55 == v59;
      if (v61 || (sub_2388D3368() & 1) != 0)
      {
        v62 = sub_238890EE8(v57, v60);

        if (v62)
        {
LABEL_43:
          v45 = v29;
          goto LABEL_44;
        }

LABEL_50:
        sub_238891FF0(v29, type metadata accessor for Transcript.Entry);
LABEL_56:
        v72 = 0;
        return v72 & 1;
      }

LABEL_49:

      goto LABEL_50;
    }

LABEL_52:

LABEL_55:
    sub_238827E88(v29, &qword_27DF310B0, &qword_2388D9DC8);
    goto LABEL_56;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_23889777C(v29, v11, type metadata accessor for Transcript.Entry);
    v64 = *v11;
    v63 = v11[1];
    v65 = v11[2];
    v66 = v11[3];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v68 = v27[2];
      v67 = v27[3];
      v69 = v64 == *v27 && v63 == v27[1];
      if (v69 || (v70 = v27[1], (sub_2388D3368() & 1) != 0))
      {
        if (sub_238890BFC(v65, v68))
        {
          v54 = sub_238891144(v66, v67);
LABEL_42:
          v71 = v54;

          if (v71)
          {
            goto LABEL_43;
          }

          goto LABEL_50;
        }
      }

LABEL_48:

      goto LABEL_49;
    }

LABEL_45:

    goto LABEL_52;
  }

  v31 = v29;
  sub_23889777C(v29, v14, type metadata accessor for Transcript.Entry);
  v33 = *v14;
  v32 = v14[1];
  v35 = v14[2];
  v34 = v14[3];
  v36 = v14[4];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v29 = v31;
    goto LABEL_55;
  }

  v37 = *v27;
  v38 = v27[1];
  v40 = v27[2];
  v39 = v27[3];
  v41 = v27[4];
  v42 = v33 == v37 && v32 == v38;
  if (!v42 && (sub_2388D3368() & 1) == 0 || (v35 == v40 ? (v43 = v34 == v39) : (v43 = 0), !v43 && (sub_2388D3368() & 1) == 0))
  {

    goto LABEL_59;
  }

  v44 = sub_238891144(v36, v41);

  if ((v44 & 1) == 0)
  {
LABEL_59:
    sub_238891FF0(v31, type metadata accessor for Transcript.Entry);
    goto LABEL_56;
  }

  v45 = v31;
LABEL_44:
  sub_238891FF0(v45, type metadata accessor for Transcript.Entry);
  v72 = 1;
  return v72 & 1;
}

uint64_t sub_2388963B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238896400(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238896470(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v21 = *(a1 + 49);
  v20 = *(a1 + 56);
  v22 = *(a1 + 32);
  v23 = *(a1 + 64);
  v16 = *(a1 + 80);
  v17 = *(a1 + 72);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v19 = *(a2 + 49);
  v11 = *(a2 + 64);
  v18 = *(a2 + 56);
  v14 = *(a2 + 80);
  v15 = *(a2 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v3 != v7) && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v30 = v22;
  v31 = v4;
  v32 = v5;
  v33 = v21;
  v34 = v20;
  v35 = v23;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v27 = v19;
  v28 = v18;
  v29 = v11;
  sub_238814698(v22, v4, v5);

  sub_238814698(v9, v8, v10);

  v12 = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v30, &v24);
  sub_238810DC4(v24, v25, v26);

  sub_238810DC4(v30, v31, v32);

  if (!v12)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_2388D3368();
}

unint64_t sub_23889666C()
{
  result = qword_27DF30F70;
  if (!qword_27DF30F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F70);
  }

  return result;
}

unint64_t sub_2388966F4()
{
  result = qword_27DF30F88;
  if (!qword_27DF30F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F88);
  }

  return result;
}

unint64_t sub_238896790()
{
  result = qword_27DF30FA0;
  if (!qword_27DF30FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FA0);
  }

  return result;
}

unint64_t sub_2388967E8()
{
  result = qword_27DF30FA8;
  if (!qword_27DF30FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FA8);
  }

  return result;
}

uint64_t sub_2388968B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF30F98, &qword_2388D9350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238896934()
{
  result = qword_27DF30FC0;
  if (!qword_27DF30FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FC0);
  }

  return result;
}

uint64_t sub_2388969C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF30F80, &qword_2388D9348);
    sub_2388966F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238896ACC()
{
  result = qword_27DF30FE8;
  if (!qword_27DF30FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FE8);
  }

  return result;
}

uint64_t sub_238896B68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF30FF8, &qword_2388D96A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238896BE0()
{
  result = qword_27DF31000;
  if (!qword_27DF31000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31000);
  }

  return result;
}

unint64_t sub_238896C38()
{
  result = qword_27DF31008;
  if (!qword_27DF31008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31008);
  }

  return result;
}

unint64_t sub_238896CD8()
{
  result = qword_27DF31018;
  if (!qword_27DF31018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31018);
  }

  return result;
}

uint64_t sub_238896E0C()
{
  result = type metadata accessor for Transcript.Prompt(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_238896EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_238896EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 4) & 0xFFFFFFE0 | (*(a1 + 48) >> 3);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_238896F18(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (16 * -a2) & 0xFFFFFFE00 | (8 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238897060(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238897130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2388971E0()
{
  sub_23889763C(319, &qword_27DF31068, &type metadata for Transcript.Segment, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2388972A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2388972A0()
{
  if (!qword_27DF31070)
  {
    type metadata accessor for Transcript.ResponseFormat(255);
    v0 = sub_2388D2E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF31070);
    }
  }
}

uint64_t sub_23889730C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23889738C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2388973FC()
{
  result = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238897488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2388974D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23889758C()
{
  sub_23889763C(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2388D2178();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23889763C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_238897690()
{
  result = qword_27DF31098;
  if (!qword_27DF31098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31098);
  }

  return result;
}

uint64_t sub_238897714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23889777C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388978D4(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Transcript.Entry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2388B8324(0, v11, 0);
    v12 = v22;
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = a3 + v18;
    v14 = *(v7 + 72);
    while (1)
    {
      v19(v13, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2388B8324(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      sub_2388A2F00(v10, v12 + v18 + v16 * v14, type metadata accessor for Transcript.Entry);
      v13 += v14;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_238897A80(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v23 = MEMORY[0x277D84F90];
  sub_2388B8368(0, v4, 0);
  v5 = v23;
  v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v18 = *(v7 + 72);
  while (1)
  {
    a1(v20, v8);
    if (v3)
    {
      break;
    }

    v9 = v20[0];
    v10 = v20[1];
    v11 = v21;
    v12 = v22;
    v23 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      sub_2388B8368((v13 > 1), v14 + 1, 1);
      v11 = v17;
      v5 = v23;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 40 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v10;
    *(v15 + 48) = v11;
    *(v15 + 64) = v12;
    v8 += v18;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238897C08(void (*a1)(void *__return_ptr), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2388B81C4(0, v4, 0);
    v5 = v27;
    v8 = *(type metadata accessor for TranscriptCoderV1.Content(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    (a1)(v25, a3 + v9, &v24);
    if (v3)
    {
    }

    else
    {
      for (i = a3 + v10 + v9; ; i = v16)
      {
        v23 = v26;
        v21 = v25[3];
        v22 = v25[4];
        v19 = v25[1];
        v20 = v25[2];
        v18 = v25[0];
        v27 = v5;
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          v17 = i;
          sub_2388B81C4((v13 > 1), v14 + 1, 1);
          i = v17;
          v5 = v27;
        }

        *(v5 + 16) = v14 + 1;
        v15 = v5 + 88 * v14;
        *(v15 + 32) = v18;
        *(v15 + 48) = v19;
        *(v15 + 112) = v23;
        *(v15 + 80) = v21;
        *(v15 + 96) = v22;
        *(v15 + 64) = v20;
        if (!--v4)
        {
          break;
        }

        v16 = i + v10;
        a1(v25);
      }
    }
  }

  return v5;
}

uint64_t sub_238897DD4(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for DynamicGenerationSchema.Property(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2388B7FF0(0, v11, 0);
    v12 = v23;
    for (i = (a3 + 40); ; i += 2)
    {
      v14 = *i;
      v22[0] = *(i - 1);
      v22[1] = v14;

      v19(v22, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v23 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2388B7FF0(v15 > 1, v16 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v16 + 1;
      sub_2388A2F00(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for DynamicGenerationSchema.Property);
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_238897F98(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v44 = MEMORY[0x277D84F90];
  sub_2388B81C4(0, v5, 0);
  v6 = v44;
  v9 = a3 + 32;
  for (i = v5 - 1; ; --i)
  {
    v11 = *(v9 + 48);
    v12 = *(v9 + 16);
    v40 = *(v9 + 32);
    v41 = v11;
    v13 = *(v9 + 48);
    v42 = *(v9 + 64);
    v14 = *(v9 + 16);
    v39[0] = *v9;
    v39[1] = v14;
    v33 = v40;
    v34 = v13;
    v35 = *(v9 + 64);
    v43 = *(v9 + 80);
    v36 = *(v9 + 80);
    v31 = v39[0];
    v32 = v12;
    sub_2388977E4(v39, &v25);
    a1(v37, &v31);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23[2] = v33;
    v23[3] = v34;
    v23[4] = v35;
    v24 = v36;
    v23[0] = v31;
    v23[1] = v32;
    sub_238840EF8(v23);
    v30 = v38;
    v28 = v37[3];
    v29 = v37[4];
    v26 = v37[1];
    v27 = v37[2];
    v25 = v37[0];
    v44 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2388B81C4((v15 > 1), v16 + 1, 1);
      v6 = v44;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 88 * v16;
    v18 = v26;
    *(v17 + 32) = v25;
    *(v17 + 48) = v18;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    *(v17 + 112) = v30;
    *(v17 + 80) = v20;
    *(v17 + 96) = v21;
    *(v17 + 64) = v19;
    if (!i)
    {
      return v6;
    }

    v9 += 88;
  }

  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  sub_238840EF8(&v25);

  __break(1u);
  return result;
}

uint64_t sub_238898184(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006CLL;
  v3 = 0x7566706C65686E75;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000002388DE0B0;
    v12 = 0xD00000000000001ELL;
    if (a1 == 6)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x80000002388DE0D0;
    }

    v13 = 0x80000002388DE070;
    v14 = 0xD000000000000012;
    if (a1 == 4)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x80000002388DE090;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000002388DE040;
    v6 = 0xD000000000000018;
    if (a1 != 2)
    {
      v6 = 0x636572726F636E69;
      v5 = 0xE900000000000074;
    }

    v7 = 0x6F627265566F6F74;
    v8 = 0xEA00000000006573;
    if (!a1)
    {
      v7 = 0x7566706C65686E75;
      v8 = 0xE90000000000006CLL;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000002388DE0B0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v2 = 0x80000002388DE0D0;
        if (v9 != 0xD00000000000001ELL)
        {
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000002388DE070;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0x80000002388DE090;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000002388DE040;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

      v3 = 0x636572726F636E69;
      v2 = 0xE900000000000074;
    }

    else if (a2)
    {
      v2 = 0xEA00000000006573;
      if (v9 != 0x6F627265566F6F74)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    if (v9 != v3)
    {
LABEL_46:
      v15 = sub_2388D3368();
      goto LABEL_47;
    }
  }

LABEL_43:
  if (v10 != v2)
  {
    goto LABEL_46;
  }

  v15 = 1;
LABEL_47:

  return v15 & 1;
}

uint64_t sub_2388983F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x65736E6F70736572;
    }

    else
    {
      v5 = 1819242356;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1919251317;
    }

    else
    {
      v5 = 0x7463757274736E69;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEC000000736E6F69;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x65736E6F70736572;
  if (a2 != 2)
  {
    v8 = 1819242356;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 1919251317;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_23889851C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x65736E6F70736572;
    v10 = 0xEF74616D726F665FLL;
    if (a1 != 6)
    {
      v9 = 0x6D6165727473;
      v10 = 0xE600000000000000;
    }

    v11 = 0xD000000000000015;
    v12 = 0x80000002388DDE70;
    if (a1 != 4)
    {
      v11 = 0x736C6F6F74;
      v12 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x74617265706D6574;
    v5 = 0xEB00000000657275;
    if (a1 != 2)
    {
      v4 = 0x705F706F74;
      v5 = 0xE500000000000000;
    }

    v6 = 0x736567617373656DLL;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF74616D726F665FLL;
        if (v7 != 0x65736E6F70736572)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x6D6165727473)
        {
LABEL_47:
          v14 = sub_2388D3368();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000002388DDE70;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x736C6F6F74)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB00000000657275;
      if (v7 != 0x74617265706D6574)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x705F706F74)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x736567617373656DLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x6C65646F6DLL)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_2388987A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6574737973;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1919251317;
    }

    else
    {
      v5 = 0x6D6574737973;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6E61747369737361;
    v4 = 0xE900000000000074;
  }

  else if (a1 == 3)
  {
    v4 = 0xE800000000000000;
    v5 = 0x6E6F6974636E7566;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1819242356;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE400000000000000;
    v8 = 1919251317;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6E61747369737361;
    v6 = 0xE900000000000074;
    v7 = 0xE800000000000000;
    v8 = 0x6E6F6974636E7566;
    if (a2 != 3)
    {
      v8 = 1819242356;
      v7 = 0xE400000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2388D3368();
  }

  return v12 & 1;
}

uint64_t sub_238898908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701605234;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x6C61635F6C6F6F74;
    if (v3 == 2)
    {
      v5 = 0xEA0000000000736CLL;
    }

    else
    {
      v5 = 0xEC00000064695F6CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E65746E6F63;
    }

    else
    {
      v4 = 1701605234;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xEA0000000000736CLL;
  if (a2 != 2)
  {
    v7 = 0xEC00000064695F6CLL;
  }

  if (a2)
  {
    v2 = 0x746E65746E6F63;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x6C61635F6C6F6F74;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2388D3368();
  }

  return v10 & 1;
}

uint64_t sub_238898ADC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2388D3138();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_238898B34(uint64_t a1)
{
  v2 = sub_238898E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238898B70(uint64_t a1)
{
  v2 = sub_238898E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transcript.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF310B8, &qword_2388D9DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238898E58();
  sub_2388D3538();
  if (!v2)
  {
    v11 = sub_2388D31E8();
    if (v11 == 1)
    {
      sub_238898EAC(a1, &v20);
      (*(v6 + 8))(v9, v5);
      *a2 = v20;
    }

    else
    {
      v18 = v11;
      v12 = sub_2388D2FF8();
      swift_allocError();
      v19 = v13;
      v14 = a1[4];
      sub_238815878(a1, a1[3]);
      sub_2388D3508();
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_2388D2FA8();

      v20 = 0xD000000000000020;
      v21 = 0x80000002388DF820;
      v22 = v18;
      v15 = sub_2388D32F8();
      MEMORY[0x23EE66C20](v15);

      v16 = v19;
      sub_2388D2FD8();
      (*(*(v12 - 8) + 104))(v16, *MEMORY[0x277D84168], v12);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }
  }

  return sub_2388158BC(a1);
}

unint64_t sub_238898E58()
{
  result = qword_27DF310C0;
  if (!qword_27DF310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310C0);
  }

  return result;
}

uint64_t sub_238898EAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v4 = sub_238810E44(&qword_27DF311E0, &qword_2388D9FD0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = sub_238810E44(&qword_27DF311E8, &qword_2388D9FD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A34DC();
  result = sub_2388D3538();
  if (!v2)
  {
    v15 = v7;
    v16 = v25;
    LOBYTE(v26) = 1;
    v17 = sub_2388D31D8();
    v19 = v17 == 0xD00000000000001BLL && 0x80000002388DF870 == v18;
    if (v19 || (v20 = v17, v21 = v18, (sub_2388D3368() & 1) != 0))
    {

      LOBYTE(v26) = 2;
      sub_2388A3530();
      sub_2388D3168();
      sub_2388D3158();
      v22 = sub_23889D22C(&v26);
      sub_2388158BC(&v26);
      (*(v24 + 8))(v15, v4);
      result = (*(v9 + 8))(v12, v8);
      *v16 = v22;
    }

    else
    {
      v28 = 1;
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_2388D2FA8();

      v26 = 0xD000000000000015;
      v27 = 0x80000002388DF890;
      MEMORY[0x23EE66C20](v20, v21);

      sub_2388D2FF8();
      swift_allocError();
      sub_238815180(&qword_27DF311F0, &qword_27DF311E8, &qword_2388D9FD8);
      sub_2388D2FC8();

      swift_willThrow();
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_23889931C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736E6F6974706FLL;
    v6 = 0x737465737361;
    if (a1 != 8)
    {
      v6 = 0x65736E6F70736572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C6C61436C6F6F74;
    if (a1 != 5)
    {
      v7 = 0x656D614E6C6F6F74;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x73746E65746E6F63;
    v3 = 0x736C6F6F74;
    if (a1 != 3)
    {
      v3 = 0x6C6C61436C6F6F74;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701605234;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_238899498(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  if (v2 != 1)
  {
    v4 = 0x697263736E617274;
    v3 = 0xEA00000000007470;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (*a2 != 1)
  {
    v8 = 0x697263736E617274;
    v7 = 0xEA00000000007470;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_238899594()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899634()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_2388996C0()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23889975C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388A43E4();
  *a2 = result;
  return result;
}

void sub_23889978C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (v2 != 1)
  {
    v5 = 0x697263736E617274;
    v4 = 0xEA00000000007470;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2388997E8()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x697263736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_238899840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2388A43E4();
  *a1 = result;
  return result;
}

uint64_t sub_238899868(uint64_t a1)
{
  v2 = sub_2388A34DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388998A4(uint64_t a1)
{
  v2 = sub_2388A34DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388998F4()
{
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

uint64_t sub_23889996C()
{
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

uint64_t sub_2388999C0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2388D3138();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_238899A44@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2388D3138();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_238899A9C(uint64_t a1)
{
  v2 = sub_2388A3530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238899AD8(uint64_t a1)
{
  v2 = sub_2388A3530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238899B14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_23889931C(*a1);
  v5 = v4;
  if (v3 == sub_23889931C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2388D3368();
  }

  return v8 & 1;
}

uint64_t sub_238899B9C()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_23889931C(v1);
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899C00()
{
  sub_23889931C(*v0);
  sub_2388D2938();
}

uint64_t sub_238899C54()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_23889931C(v1);
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899CB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388A4430();
  *a2 = result;
  return result;
}

uint64_t sub_238899CE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23889931C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_238899D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2388A4430();
  *a1 = result;
  return result;
}

uint64_t sub_238899D60(uint64_t a1)
{
  v2 = sub_2388A2D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238899D9C(uint64_t a1)
{
  v2 = sub_2388A2D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238899DE4()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899E9C()
{
  *v0;
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_238899F40()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899FF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388A4684();
  *a2 = result;
  return result;
}

void sub_23889A024(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = 0xE800000000000000;
  v5 = 0x65736E6F70736572;
  if (*v1 != 2)
  {
    v5 = 1819242356;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1919251317;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23889A148(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31328, &qword_2388DAA20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A44D0();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19[0]) = 0;
  sub_2388D3298();
  if (!v2)
  {
    LOBYTE(v19[0]) = *(v3 + 16);
    v21 = 1;
    sub_2388A5444();
    sub_2388D32C8();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v19[0]) = 2;
    sub_2388D3238();
    v15 = *(v3 + 72);
    v16 = *(v3 + 7);
    v19[0] = *(v3 + 5);
    v19[1] = v16;
    v20 = v15;
    v21 = 3;
    sub_2388A5498();
    sub_2388D3278();
    v17 = *(type metadata accessor for TranscriptCoderV1.Content(0) + 32);
    LOBYTE(v19[0]) = 4;
    sub_2388D0F58();
    sub_2388A2EA0(&qword_27DF30A20, MEMORY[0x277CC9260]);
    sub_2388D3278();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889A3B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - v6;
  v8 = sub_238810E44(&qword_27DF312B8, &qword_2388DA9F8);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v12 = type metadata accessor for TranscriptCoderV1.Content(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 40);
  v18 = sub_2388D0F58();
  v19 = *(*(v18 - 8) + 56);
  v39 = v17;
  v20 = v16;
  v19(&v16[v17], 1, 1, v18);
  v21 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A44D0();
  v38 = v11;
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);
    return sub_238827E88(&v16[v39], &qword_27DF30608, &qword_2388D6690);
  }

  else
  {
    v34 = v7;
    v23 = v36;
    v22 = v37;
    LOBYTE(v40) = 0;
    *v20 = sub_2388D31D8();
    *(v20 + 1) = v24;
    v33[4] = v24;
    v46 = 1;
    sub_2388A4524();
    sub_2388D31F8();
    v20[16] = v40;
    LOBYTE(v40) = 2;
    v25 = v20;
    *(v20 + 3) = sub_2388D3178();
    *(v20 + 4) = v26;
    v46 = 3;
    sub_2388A45C8();
    sub_2388D31B8();
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v33[2] = v41;
    v33[3] = v40;
    *(v20 + 5) = v40;
    *(v20 + 6) = v27;
    v33[0] = v29;
    v33[1] = v28;
    *(v20 + 7) = v28;
    *(v20 + 8) = v29;
    v45 = v30;
    v20[72] = v30;
    LOBYTE(v40) = 4;
    sub_2388A2EA0(&qword_27DF30A10, MEMORY[0x277CC9260]);
    v31 = v34;
    sub_2388D31B8();
    (*(v23 + 8))(v38, v22);
    sub_2388A461C(v31, v25 + v39, &qword_27DF30608, &qword_2388D6690);
    sub_2388A30B8(v25, v35, type metadata accessor for TranscriptCoderV1.Content);
    sub_2388158BC(a1);
    return sub_2388A2F88(v25, type metadata accessor for TranscriptCoderV1.Content);
  }
}

uint64_t sub_23889A8D8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF313B8, &qword_2388DAA70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A5594();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  sub_2388D3298();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 32);
    v14[15] = 1;
    sub_238826EC8();
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889AA5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1954047348;
  v4 = 0x7275746375727473;
  if (v1 != 3)
  {
    v4 = 0x6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23889AADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388A46D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23889AB10(uint64_t a1)
{
  v2 = sub_2388A44D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889AB4C(uint64_t a1)
{
  v2 = sub_2388A44D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23889ABB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7275746375727473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1954047348;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7275746375727473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6567616D69;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1954047348;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_23889ACB4()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23889AD50()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_23889ADD8()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23889AE70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388A487C();
  *a2 = result;
  return result;
}

void sub_23889AEA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x7275746375727473;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1954047348;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23889AFA8()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x656372756F73;
  }

  *v0;
  return result;
}

uint64_t sub_23889AFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_23889B0B8(uint64_t a1)
{
  v2 = sub_2388A5594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889B0F4(uint64_t a1)
{
  v2 = sub_2388A5594();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_23889B130@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2388A48C8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_23889B178(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_23889A8D8(a1);
}

uint64_t sub_23889B1B4(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31360, &qword_2388DAA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A53F0();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v13 = *(type metadata accessor for TranscriptCoderV1.Tool(0) + 20);
    v15[14] = 1;
    type metadata accessor for TranscriptCoderV1.Function(0);
    sub_2388A2EA0(&qword_27DF31368, type metadata accessor for TranscriptCoderV1.Function);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889B36C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for TranscriptCoderV1.Function(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238810E44(&qword_27DF31310, &qword_2388DAA18);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for TranscriptCoderV1.Tool(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v24 = a1;
  sub_238815878(a1, v16);
  sub_2388A53F0();
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(v24);
  }

  else
  {
    v18 = v22;
    v26 = 0;
    *v15 = sub_2388D31D8();
    v15[1] = v19;
    v25 = 1;
    sub_2388A2EA0(&qword_27DF31320, type metadata accessor for TranscriptCoderV1.Function);
    sub_2388D31F8();
    (*(v18 + 8))(v11, v23);
    sub_2388A2F00(v7, v15 + *(v12 + 20), type metadata accessor for TranscriptCoderV1.Function);
    sub_2388A30B8(v15, v21, type metadata accessor for TranscriptCoderV1.Tool);
    sub_2388158BC(v24);
    return sub_2388A2F88(v15, type metadata accessor for TranscriptCoderV1.Tool);
  }
}

uint64_t sub_23889B680(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31388, &qword_2388DAA50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A54EC();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_2388D3298();
    v16 = *(type metadata accessor for TranscriptCoderV1.Function(0) + 24);
    v17[13] = 2;
    sub_2388D2178();
    sub_2388A2EA0(&qword_27DF30AF8, MEMORY[0x277D0DC20]);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889B89C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_2388D2178();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_238810E44(&qword_27DF31370, &qword_2388DAA48);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for TranscriptCoderV1.Function(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A54EC();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v21 = a1;
  v16 = v24;
  v15 = v25;
  v29 = 0;
  *v13 = sub_2388D31D8();
  v13[1] = v17;
  v20[1] = v17;
  v28 = 1;
  v13[2] = sub_2388D31D8();
  v13[3] = v18;
  v27 = 2;
  sub_2388A2EA0(&qword_27DF31380, MEMORY[0x277D0DC20]);
  sub_2388D31F8();
  (*(v16 + 8))(v9, v26);
  (*(v22 + 32))(v13 + *(v10 + 24), v6, v15);
  sub_2388A30B8(v13, v23, type metadata accessor for TranscriptCoderV1.Function);
  sub_2388158BC(v21);
  return sub_2388A2F88(v13, type metadata accessor for TranscriptCoderV1.Function);
}

uint64_t sub_23889BC4C(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31340, &qword_2388DAA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A4E2C();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_2388D3298();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_2388D3298();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_2388D3298();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889BDEC(uint64_t a1)
{
  v2 = sub_2388A53F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889BE28(uint64_t a1)
{
  v2 = sub_2388A53F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23889BE94(uint64_t a1)
{
  v2 = sub_2388A54EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889BED0(uint64_t a1)
{
  v2 = sub_2388A54EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23889BF3C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23889BF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388A4AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23889BFB0(uint64_t a1)
{
  v2 = sub_2388A4E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889BFEC(uint64_t a1)
{
  v2 = sub_2388A4E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_23889C028@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2388A4BE0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_23889C06C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_23889BC4C(a1);
}

uint64_t sub_23889C0A8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31348, &qword_2388DAA30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A5348();
  sub_2388D3568();
  v11 = *v3;
  v12 = *(v3 + 8);
  v23[15] = 0;
  sub_2388D3258();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v23[14] = 1;
  sub_2388D3268();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v23[13] = 2;
  sub_2388D3258();
  v17 = *(v3 + 41);
  v23[12] = 3;
  sub_2388D3248();
  v18 = v3[6];
  v19 = *(v3 + 56);
  v23[11] = 4;
  sub_2388D3288();
  v21 = v3[8];
  v22 = *(v3 + 72);
  v23[10] = 5;
  sub_2388D3268();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889C2BC()
{
  v1 = *v0;
  v2 = 0x74617265706D6574;
  v3 = 0x796465657267;
  v4 = 0x65536D6F646E6172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1265659764;
  if (v1 != 1)
  {
    v5 = 1349545844;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_23889C374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388A4E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23889C3A8(uint64_t a1)
{
  v2 = sub_2388A5348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23889C3E4(uint64_t a1)
{
  v2 = sub_2388A5348();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_23889C420@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2388A508C(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_23889C46C(void *a1)
{
  v5 = v1[2];
  *v6 = v1[3];
  *&v6[9] = *(v1 + 57);
  v3 = *v1;
  v4 = v1[1];
  return sub_23889C0A8(a1);
}

uint64_t sub_23889C4B0(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31350, &qword_2388DAA38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388A539C();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_2388D3298();
  if (!v2)
  {
    v13 = *(type metadata accessor for TranscriptCoderV1.ResponseFormat(0) + 20);
    v15[14] = 1;
    type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
    sub_2388A2EA0(&qword_27DF31358, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23889C668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238810E44(&qword_27DF312F8, &qword_2388DAA10);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v24 = a1;
  sub_238815878(a1, v16);
  sub_2388A539C();
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(v24);
  }

  else
  {
    v18 = v22;
    v26 = 0;
    *v15 = sub_2388D31D8();
    v15[1] = v19;
    v25 = 1;
    sub_2388A2EA0(&qword_27DF31308, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
    sub_2388D31F8();
    (*(v18 + 8))(v11, v23);
    sub_2388A2F00(v7, v15 + *(v12 + 20), type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
    sub_2388A30B8(v15, v21, type metadata accessor for TranscriptCoderV1.ResponseFormat);
    sub_2388158BC(v24);
    return sub_2388A2F88(v15, type metadata accessor for TranscriptCoderV1.ResponseFormat);
  }
}

uint64_t sub_23889C978()
{
  if (*v0)
  {
    result = 0x656863536E6F736ALL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_23889C9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656863536E6F736ALL && a2 == 0xEA0000000000616DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_23889CA94(uint64_t a1)
{
  v2 = sub_2388A539C();

  return MEMORY[0x2821FE718](a1, v2);
}