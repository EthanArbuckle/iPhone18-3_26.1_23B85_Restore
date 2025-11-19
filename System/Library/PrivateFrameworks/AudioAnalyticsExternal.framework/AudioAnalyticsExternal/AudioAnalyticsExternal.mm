void *sub_2239C89F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = RTCWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

void *RTCWorker.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v27 = *v1;
  v4 = sub_223A20DA0();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20]();
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v8 = *MEMORY[0x277CEF9F8];
  v9 = sub_223A20BC0();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2 + v7, v8, v9);
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted) = 0;
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent;
  v12 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_underTest) = 0;
  v13 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_logger;
  sub_223A20F60();
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents) = v12;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting) = 0;
  v14 = v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer;
  *(v14 + 12) = 256;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___shouldBatch) = 2;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_223A20960() == 11)
  {
    (*(v10 + 8))(v2 + v7, v9);
    v16 = *(v2 + v11);

    v17 = sub_223A20FC0();
    (*(*(v17 - 8) + 8))(v2 + v13, v17);
    v18 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents);

    v19 = *(*v2 + 48);
    v20 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    v2 = 0;
  }

  else
  {
    sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_223A209A0();
    v22 = v24;
    sub_223A20BB0();

    (*(v25 + 32))(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig, v22, v26);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2239C8DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL sub_2239C8E48(void *a1)
{
  v2 = sub_223A20D60();
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_223A20960();
  if (*(v2 + 16) && (v5 = sub_2239C9110(v4), (v6 & 1) != 0))
  {
    v7 = *(*(v2 + 56) + 8 * v5);

    sub_2239C9920(v8, 0.0, 1.0);
    return v9 < v7;
  }

  else
  {

    return 1;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

Swift::Bool __swiftcall RTCWorker.start()()
{
  v1 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
  if (sub_223A20960() == 11 || !sub_2239C8E48(v1))
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  v4 = 1;
  swift_beginAccess();
  if (*(v0 + v3) == 1)
  {

    v5 = sub_223A20FB0();
    v6 = sub_223A214D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      *(v7 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v5, v6, "Already started. { reporterID=%lld }", v7, 0xCu);
      MEMORY[0x223DF1300](v7, -1, -1);
    }

    else
    {
    }

    return *(v0 + v3);
  }

  else
  {
    sub_2239E889C();
    *(v0 + v3) = 1;
  }

  return v4;
}

unint64_t sub_2239C9110(unsigned __int16 a1)
{
  v3 = *(v1 + 40);
  sub_223A21940();
  sub_223A21960();
  v4 = sub_223A21970();

  return sub_2239C98B0(a1, v4);
}

char *sub_2239C917C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = TailspinWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

char *TailspinWorker.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v55 = a1;
  v49 = *v1;
  v3 = sub_223A20FC0();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TailspinOptions(0);
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A21540();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223A21520();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_223A21090();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v1[16] = 0;
  v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  v16 = *MEMORY[0x277CEFA08];
  v17 = sub_223A20BC0();
  v41 = *(v17 - 8);
  v42 = v17;
  v18 = *(v41 + 104);
  v43 = v15;
  v18(&v1[v15], v16);
  v54 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions;
  sub_2239C9FF0(&v1[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions]);
  v39 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases;
  *&v1[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases] = 0;
  v40 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_logger;
  sub_223A20F90();
  v19 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_requestQueue;
  v50 = sub_2239CA184();
  sub_223A21050();
  v56 = MEMORY[0x277D84F90];
  sub_2239CA260(&qword_281332720, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  v20 = v19;
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  (*(v52 + 104))(v51, *MEMORY[0x277D85260], v53);
  *&v1[v19] = sub_223A21570();
  if (qword_281333380 != -1)
  {
    swift_once();
  }

  v21 = qword_281335A60;
  sub_2239C9B84();
  v22 = *(*(v21 + 32) + 32);
  swift_getKeyPath();

  sub_223A20F20();

  if (v56 == 1)
  {
    v23 = *(v21 + 16);

    v24 = v45;
    sub_223A20F10();

    v25 = v54;
    swift_beginAccess();
    sub_223A1D61C(v24, &v2[v25]);
    swift_endAccess();
    sub_2239CB264(v55, &v2[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session]);
  }

  else
  {
    v27 = v46;
    v26 = v47;
    v28 = v40;
    v29 = v48;
    (*(v47 + 16))(v46, &v2[v40], v48);
    v30 = sub_223A20FB0();
    v31 = sub_223A214D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2239C7000, v30, v31, "Skipping TailspinWorker initialization: Tailspin not enabled. { isTailspinReady=false }", v32, 2u);
      MEMORY[0x223DF1300](v32, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v55);
    v33 = *(v26 + 8);
    v33(v27, v29);
    (*(v41 + 8))(&v2[v43], v42);
    sub_2239CC9A8(&v2[v54]);
    v34 = *&v2[v39];

    v33(&v2[v28], v29);

    v35 = *(*v2 + 48);
    v36 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_2239C9808@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

uint64_t sub_2239C9878(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2239C98B0(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2239C9920(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x223DF1320](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_2239C9920(v6, a2, a3);
  }

  return result;
}

uint64_t RTCWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v7 = sub_223A20DA0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2239C9B30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2239C9B84()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2239CAA5C;
  *(v3 + 24) = v0;
  v15 = sub_2239CAA60;
  v16 = v3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2239CA2AC;
  v14 = &block_descriptor_13;
  v4 = _Block_copy(&v11);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
    return result;
  }

  v6 = *(v0 + 32);

  v7 = sub_2239C9DF4();

  if (v7)
  {
    v8 = *(v1 + 56);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_223A19A1C;
    *(v9 + 24) = v1;
    v15 = sub_223A19B58;
    v16 = v9;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_2239CA2AC;
    v14 = &block_descriptor_20;
    v10 = _Block_copy(&v11);

    dispatch_sync(v8, v10);
    _Block_release(v10);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_2239C9DF4()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v11[-v3];
  v5 = *(v0 + 16);

  sub_223A20880();

  v6 = sub_223A20680();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_2239C9F88(v4);
  }

  else
  {
    v8 = sub_223A20660();
    (*(v7 + 8))(v4, v6);
    if (v8)
    {
      return 1;
    }
  }

  v10 = *(v1 + 24);
  swift_getKeyPath();

  sub_223A20F20();

  return v11[15];
}

uint64_t sub_2239C9F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2239C9FF0@<X0>(uint64_t a1@<X8>)
{
  sub_223A20610();
  v2 = type metadata accessor for TailspinOptions(0);
  v3 = v2[5];
  sub_223A20610();
  v4 = v2[6];
  sub_223A20610();
  v5 = v2[7];
  *(a1 + v5) = sub_223A20E90() & 1;
  v6 = v2[8];
  *(a1 + v6) = sub_223A20E20() & 1;
  v7 = v2[9];
  return sub_223A20610();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2239CA184()
{
  result = qword_281332718;
  if (!qword_281332718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281332718);
  }

  return result;
}

uint64_t sub_2239CA1D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2239CA218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2239CA260(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2239CA2D4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = *(v2 + 24);
  v4 = MEMORY[0x277D841D0];
  v5 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205D0();
  os_unfair_lock_unlock((v3 + v6));

  v7 = *(v2 + 32);
  v8 = *(*v7 + *v4 + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  sub_223A205D0();
  os_unfair_lock_unlock((v7 + v9));

  v10 = sub_223A20FB0();
  v11 = sub_223A21500();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    v13 = v1[4];

    v14 = sub_2239C9DF4();

    *(v12 + 4) = v14 & 1;
    *(v12 + 8) = 1024;
    v15 = *(v1[4] + 32);
    swift_getKeyPath();

    sub_223A20F20();

    *(v12 + 10) = v56;

    _os_log_impl(&dword_2239C7000, v10, v11, "Synced TailspinStatus. { isEnabled=%{BOOL}d, isReady=%{BOOL}d } ", v12, 0xEu);
    MEMORY[0x223DF1300](v12, -1, -1);
  }

  else
  {
  }

  v16 = v1[4];

  if (sub_2239C9DF4())
  {
    v17 = *(v16 + 32);
    swift_getKeyPath();

    sub_223A20F20();

    if ((v56 & 1) == 0)
    {
      v18 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspin);
      if (sub_223A1E454())
      {
        v19 = 1;
LABEL_13:
        v23 = v1[4];

        sub_223A19B70(v19);
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

  v20 = v1[4];

  if (sub_2239C9DF4())
  {
LABEL_14:

    goto LABEL_15;
  }

  v21 = *(v20 + 32);
  swift_getKeyPath();

  sub_223A20F20();

  if (v56 == 1)
  {
    v22 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspin);
    if (sub_223A1E9CC())
    {
      v19 = 0;
      goto LABEL_13;
    }
  }

LABEL_15:
  v24 = *(v1[4] + 32);
  swift_getKeyPath();

  sub_223A20F20();

  if (v56 == 1)
  {
    v25 = v1[2];
    v26 = v25 + *(*v25 + *v4 + 16);
    v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v25 + v27));
    sub_223A205D0();
    v28 = type metadata accessor for TailspinOptions(0);
    v29 = v26 + v28[5];
    sub_223A205D0();
    v30 = v26 + v28[6];
    sub_223A205D0();
    *(v26 + v28[7]) = sub_223A20E90() & 1;
    *(v26 + v28[8]) = sub_223A20E20() & 1;
    v31 = v26 + v28[9];
    sub_223A205D0();
    v32 = sub_223A1A540();
    v34 = v33;
    os_unfair_lock_unlock((v25 + v27));

    v35 = sub_223A20FB0();
    v36 = sub_223A214D0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136380675;
      *(v37 + 4) = sub_2239E1910(v32, v34, &v56);
      _os_log_impl(&dword_2239C7000, v35, v36, "Synced TailspinOptions. { %{private}s }", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223DF1300](v38, -1, -1);
      MEMORY[0x223DF1300](v37, -1, -1);
    }

    v39 = v1[3];
    v40 = v39 + *(*v39 + *MEMORY[0x277D841D0] + 16);
    v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v39 + v41));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
    sub_223A205D0();
    v42 = type metadata accessor for OverloadOptions(0);
    v43 = v40 + v42[5];
    sub_223A205D0();
    v44 = v40 + v42[6];
    sub_223A205D0();
    v45 = v42[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
    sub_223A205D0();
    v46 = v40 + v42[8];
    sub_223A205D0();
    v47 = v40 + v42[9];
    sub_223A205D0();
    v48 = sub_223A1A7C8();
    v50 = v49;
    os_unfair_lock_unlock((v39 + v41));

    v51 = sub_223A20FB0();
    v52 = sub_223A214D0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v53 = 136380675;
      v55 = sub_2239E1910(v48, v50, &v56);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_2239C7000, v51, v52, "Synced OverloadOptions. { %{private}s }", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223DF1300](v54, -1, -1);
      MEMORY[0x223DF1300](v53, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2239CAA60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2239CAA8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *sub_2239CAB18@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = SummaryDecoratorWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t *DriverSnapshotWorker.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  *(v1 + 16) = 0;
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  v6 = *MEMORY[0x277CEF9D0];
  v7 = sub_223A20BC0();
  v8 = *(v7 - 8);
  v29 = v7;
  (*(v8 + 104))(v2 + v5, v6);
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
  sub_223A20F70();
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223A209A0();
  v10 = *(sub_223A20BF0() + 16);

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223A20960();
  v12 = sub_223A20BF0();
  sub_2239CAF30(v12);

  v27 = sub_223A206B0();

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223A209C0();
  v14 = sub_223A20BF0();
  sub_2239CAF30(v14);
  v15 = v5;

  v16 = sub_223A206A0();

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223A20990();
  v18 = sub_223A20BF0();
  sub_2239CAF30(v18);

  v19 = sub_223A206C0();
  v5 = v15;

  if ((v27 & 1) == 0 || (v16 & 1) == 0 || (v19 & 1) == 0)
  {
LABEL_9:

LABEL_10:
    (*(v8 + 8))(v2 + v5, v29);
    v23 = sub_223A20FC0();
    (*(*(v23 - 8) + 8))(v2 + v28, v23);

    v24 = *(*v2 + 48);
    v25 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    v2 = 0;
    goto LABEL_11;
  }

  if (qword_281332DD8 != -1)
  {
    swift_once();
  }

  v20 = qword_2813359E8;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_223A209A0();
  sub_2239E8B24(v22);

  if (*(v20 + 16) != 1)
  {
    goto LABEL_10;
  }

  sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session);
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_2239CAF30(uint64_t a1)
{
  v2 = sub_223A20AE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2239CB0FC(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2239CB0FC((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277CEF8D8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_2239CB264(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_2239CB0FC(void *a1, int64_t a2, char a3)
{
  result = sub_2239CB11C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2239CB11C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BE8, &qword_223A237A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BF0, &qword_223A237A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2239CB264(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2239CB280@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_223A20290();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 48);
  v12 = *(v3 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v15 = *MEMORY[0x277CEF9B8];
  v16 = sub_223A20BC0();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  v17 = [objc_opt_self() alphanumericCharacterSet];
  sub_223A20270();

  sub_223A20280();
  (*(v7 + 8))(v10, v6);
  result = sub_2239CB264(a1, v13 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session);
  *a2 = v13;
  return result;
}

char *SummaryDecoratorWorker.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v66 = *v1;
  v4 = sub_223A20FC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v59 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x277D84F98];
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  v12 = *MEMORY[0x277CEF9F0];
  v13 = sub_223A20BC0();
  v64 = *(v13 - 8);
  v65 = v11;
  v14 = *(v64 + 104);
  v62 = v13;
  v14(&v2[v11], v12);
  v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
  sub_223A20F70();
  v63 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session;
  sub_2239C8DE4(a1, &v2[OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session]);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_223A209A0();
  v18 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_config;
  *&v2[OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_config] = v17;

  v19 = sub_223A20BD0();

  v20 = *(v19 + 16);

  if (!v20)
  {
    v67 = v18;
    (*(v5 + 16))(v9, &v2[v15], v4);
    sub_2239C8DE4(a1, v71);
    sub_2239C8DE4(a1, v69);
    v40 = sub_223A20FB0();
    v41 = sub_223A214D0();
    v42 = v4;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v60 = v15;
      v61 = v5;
      v44 = v41;
      v45 = v43;
      v46 = swift_slowAlloc();
      v68 = v46;
      *v45 = 134218243;
      v59 = v4;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v47 = v40;
      v48 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v71);
      *(v45 + 4) = v48;
      *(v45 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v42 = v59;
      sub_223A20960();
      v49 = sub_223A20EB0();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_0(v69);
      v52 = sub_2239E1910(v49, v51, &v68);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_2239C7000, v47, v44, "No summary configs found. { reporterID=%lld, serviceType=%{private}s }", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x223DF1300](v46, -1, -1);
      v15 = v60;
      MEMORY[0x223DF1300](v45, -1, -1);

      v53 = *(v61 + 8);
      v53(v9, v42);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v71);

      v53 = *(v5 + 8);
      v53(v9, v4);
      __swift_destroy_boxed_opaque_existential_0(v69);
    }

    v54 = *(v2 + 3);

    (*(v64 + 8))(&v2[v65], v62);
    __swift_destroy_boxed_opaque_existential_0(&v2[v63]);
    v55 = *&v67[v2];

    v53(&v2[v15], v42);
    v56 = *(*v2 + 48);
    v57 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_12;
  }

  v60 = v15;
  v61 = v5;
  v21 = v4;
  v22 = *&v2[v18];

  v23 = sub_223A20BD0();

  MEMORY[0x28223BE20](v24);
  *(&v59 - 2) = a1;
  v25 = sub_2239CBBFC(sub_2239CBFFC, (&v59 - 4), v23);
  MEMORY[0x28223BE20](v25);
  *(&v59 - 2) = a1;
  v26 = sub_2239CC240(sub_2239CC428, (&v59 - 4), v25);
  v27 = v67;
  v28 = v26;

  *&v2[OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates] = v28;
  if (v28 >> 62)
  {
    if (sub_223A21780())
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v29 = v61;
    (*(v61 + 16))(v27, &v2[v60], v21);
    sub_2239C8DE4(a1, v71);
    sub_2239C8DE4(a1, v69);
    v30 = sub_223A20FB0();
    v31 = sub_223A214D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = v21;
      v33 = v32;
      v66 = swift_slowAlloc();
      v68 = v66;
      *v33 = 134218243;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v34 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v71);
      *(v33 + 4) = v34;
      *(v33 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      sub_223A20960();
      v35 = sub_223A20EB0();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_0(v69);
      v38 = sub_2239E1910(v35, v37, &v68);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_2239C7000, v30, v31, "No matching summary configs. { reporterID=%lld, serviceType=%{private}s }", v33, 0x16u);
      v39 = v66;
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x223DF1300](v39, -1, -1);
      MEMORY[0x223DF1300](v33, -1, -1);

      (*(v29 + 8))(v27, v59);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v71);

      (*(v29 + 8))(v27, v21);
      __swift_destroy_boxed_opaque_existential_0(v69);
    }

LABEL_12:
    v2 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_2239CBBFC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_223A207D0();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2239CC01C(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2239CC01C(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_2239CBECC(uint64_t a1, void *a2)
{
  v3 = sub_223A20B00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A206E0();
  v8 = sub_223A20AF0();
  (*(v4 + 8))(v7, v3);
  v9 = sub_223A206D0();
  if ((v9 & 1) != 0 && (v8 & 0x10000) == 0)
  {
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v9 = sub_223A20960() == v8;
  }

  return v9 & 1;
}

size_t sub_2239CC01C(size_t a1, int64_t a2, char a3)
{
  result = sub_2239CC218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2239CC03C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t *sub_2239CC298@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = DriverSnapshotWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2239CC2E4(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_223A21750();
    v9 = *(sub_223A207D0() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_223A21730();
      v12 = *(v14 + 16);
      sub_223A21760();
      sub_223A21770();
      sub_223A21740();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239CC448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_223A207D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v14 = *(v7 + 16);
  v14(v23 - v12, a1, v6);
  sub_2239C8DE4(a2, v24);
  v15 = type metadata accessor for DurationSummaryDecoratorState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages) = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
  v20 = sub_223A20D20();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  v14(v11, v13, v6);
  sub_2239C8DE4(v24, v23);
  v21 = sub_2239CC684(v11, v23, 0);
  __swift_destroy_boxed_opaque_existential_0(v24);
  result = (*(v7 + 8))(v13, v6);
  *a3 = v21;
  return result;
}

uint64_t type metadata accessor for DurationSummaryDecoratorState()
{
  result = qword_281332A60;
  if (!qword_281332A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239CC684(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = MEMORY[0x277D84FA0];
  *(v3 + 16) = MEMORY[0x277D84FA0];
  sub_223A20F70();
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  v9 = sub_223A20D20();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage) = 0;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
  v11 = sub_223A20680();
  *(v3 + v10) = MEMORY[0x223DF0210](20, MEMORY[0x277D837D0], v11, MEMORY[0x277D837E0]);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_seenFields) = v7;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber) = 1;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messagesOutOfOrder) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_originalTimeOffset) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) = 0;
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v13 = sub_223A207D0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a1, v13);
  sub_2239C8DE4(a2, v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_requiredKeyValues) = a3;
  sub_2239CC860();
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v14 + 8))(a1, v13);
  return v3;
}

uint64_t sub_2239CC860()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v4 = *(sub_223A206F0() + 16);

  if (v4 + 0x4000000000000000 < 0)
  {
    __break(1u);

    v13 = *(v2 + v1);
    *(v2 + v1) = v14;

    __break(1u);
  }

  else
  {
    v5 = sub_223A20680();
    v6 = MEMORY[0x223DF0210](2 * v4, MEMORY[0x277D837D0], v5, MEMORY[0x277D837E0]);
    v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
    swift_beginAccess();
    v8 = *(v2 + v7);
    *(v2 + v7) = v6;

    v9 = sub_223A206F0();
    swift_beginAccess();
    v10 = *(v2 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + v7);
    *(v2 + v7) = 0x8000000000000000;
    sub_2239D344C(v9, sub_2239CE198, 0, isUniquelyReferenced_nonNull_native, &v14);

    *(v2 + v7) = v14;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2239CC9A8(uint64_t a1)
{
  v2 = type metadata accessor for TailspinOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2239CCA68@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AirPodWorker();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = AirPodWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AirPodWorker()
{
  result = qword_2813343A8;
  if (!qword_2813343A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AirPodWorker.init(with:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v4 = *MEMORY[0x277CEF9C0];
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields) = 0;
  sub_223A20FA0();
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_halIOCategory;
  *(v1 + v6) = sub_223A20E70();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation) = 0;
  sub_2239CB264(a1, v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session);
  return v1;
}

uint64_t sub_2239CCBE4()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = 1;
  return 1;
}

uint64_t sub_2239CCC2C()
{
  v106 = sub_223A20680();
  v107 = *(v106 - 8);
  v1 = *(v107 + 64);
  v2 = MEMORY[0x28223BE20](v106);
  v105 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v104 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v88 - v7;
  v8 = sub_223A20B90();
  v102 = *(v8 - 8);
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v88 - v14;
  v16 = sub_223A20D20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  v22 = v0 + v21;
  v23 = v17;
  sub_2239D8C48(v22, v15, &qword_27D0A4B38, " >");
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2239CDCEC(v15, &qword_27D0A4B38, " >");
    goto LABEL_60;
  }

  (*(v17 + 32))(v20, v15, v16);
  v24 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
  if (!v24)
  {
    goto LABEL_59;
  }

  v25 = v0;
  v26 = v102;
  (*(v102 + 104))(v11, *MEMORY[0x277CEF918], v8);

  v27 = v103;
  sub_223A21150();
  (*(v26 + 8))(v11, v8);
  v28 = (*(v107 + 48))(v27, 1, v106);
  sub_2239CDCEC(v27, &qword_27D0A4928, &qword_223A22B40);
  if (v28 != 1 && sub_223A20CC0() == 1 && !sub_223A20C20())
  {
    (*(v23 + 8))(v20, v16);

    v82 = *(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning);
    return v82 & 1;
  }

  v99 = v23;
  v29 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
  swift_beginAccess();
  v30 = *(v25 + v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108[0] = v30;
  sub_2239CD8EC(v24, sub_2239CE198, 0, isUniquelyReferenced_nonNull_native, v108);

  v32 = v108[0];
  v96 = 0;
  v97 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v33 = sub_223A20780();
  v34 = *(v33 + 16);
  v35 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_seenFields;
  swift_beginAccess();
  v103 = v32;
  v98 = v34;
  if (v34)
  {
    v36 = 0;
    v102 = v33 + 32;
    v101 = v20;
    v100 = v25;
    do
    {
      if (v36 >= *(v33 + 16))
      {
        __break(1u);
LABEL_63:
        __break(1u);

        __break(1u);
        return result;
      }

      v37 = *(v25 + v35);
      if (!*(v37 + 16))
      {

        v23 = v99;
        goto LABEL_57;
      }

      v38 = v16;
      v39 = (v102 + 16 * v36);
      v40 = *v39;
      v41 = v39[1];
      v42 = *(v37 + 40);
      sub_223A21940();

      sub_223A21290();
      v43 = sub_223A21970();
      v44 = -1 << *(v37 + 32);
      v45 = v43 & ~v44;
      if (((*(v37 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
LABEL_20:

        v16 = v38;
        v25 = v100;
        v23 = v99;
        v20 = v101;
        goto LABEL_57;
      }

      ++v36;
      v46 = ~v44;
      while (1)
      {
        v47 = (*(v37 + 48) + 16 * v45);
        v48 = *v47 == v40 && v47[1] == v41;
        if (v48 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v37 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v16 = v38;
      v25 = v100;
      v20 = v101;
      v32 = v103;
    }

    while (v36 != v98);
  }

  v49 = sub_223A20760();
  if (v49)
  {
    v50 = v49;
    v51 = sub_223A21140();

    sub_2239D6C54(v51);

    LOBYTE(v51) = sub_223A20D40();

    v23 = v99;
    if ((v51 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_23:
    v52 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning;
    if ((*(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) & 1) == 0)
    {
      sub_223A20D00();
      *(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp) = v53;
    }

    *(v25 + v52) = 1;
    goto LABEL_57;
  }

  v54 = sub_223A20720();
  v23 = v99;
  if (!v54)
  {

    goto LABEL_57;
  }

  v55 = v54;
  v101 = v20;
  v90 = v16;
  v56 = *(v54 + 16);
  v98 = v107 + 16;
  v95 = v107 + 88;
  v94 = *MEMORY[0x277CEF840];
  v92 = *MEMORY[0x277CEF850];
  v91 = *MEMORY[0x277CEF858];
  v89 = *MEMORY[0x277CEF848];
  v88 = *MEMORY[0x277CEF860];
  v93 = (v107 + 96);
  v97 = (v107 + 8);
  v57 = (v54 + 40);
  v102 = -v56;
  v58 = -1;
  do
  {
    if (v102 + v58 == -1)
    {

      v16 = v90;
      v23 = v99;
      v20 = v101;
      goto LABEL_23;
    }

    if (++v58 >= *(v55 + 16))
    {
      goto LABEL_63;
    }

    if (!*(v32 + 16))
    {
      break;
    }

    v61 = *(v57 - 1);
    v62 = *v57;

    v63 = sub_2239CDC74(v61, v62);
    if ((v64 & 1) == 0)
    {

      goto LABEL_53;
    }

    v65 = v55;
    v66 = *(v32 + 56);
    v67 = v107;
    v68 = *(v107 + 16);
    v69 = v104;
    v70 = v106;
    v68(v104, v66 + *(v107 + 72) * v63, v106);
    v68(v105, v69, v70);
    v71 = v70;
    v72 = v105;
    v73 = (*(v67 + 88))(v105, v71);
    if (v73 == v94)
    {

      (*v93)(v72, v71);
      v59 = v71;
      v60 = *v72 == 1;
      v32 = v103;
      v55 = v65;
    }

    else
    {
      v32 = v103;
      v55 = v65;
      if (v73 == v92)
      {

        (*v93)(v72, v71);
        v74 = *v72 == 1;
        goto LABEL_39;
      }

      if (v73 == v91)
      {

        (*v93)(v72, v71);
        v74 = *v72 == 1.0;
LABEL_39:
        v59 = v71;
        v60 = v74;
        goto LABEL_29;
      }

      if (v73 == v89)
      {

        (*v93)(v72, v71);
        v59 = v71;
        v60 = *v72;
      }

      else
      {
        if (v73 != v88)
        {

          v83 = v72;
          v84 = v71;
          v85 = *v97;
          (*v97)(v83, v84);
          v85(v104, v84);
          break;
        }

        (*v93)(v72, v71);
        v75 = *v72;
        v76 = *(v72 + 1);
        v77 = sub_223A21250();
        v79 = v78;

        v108[0] = v77;
        v108[1] = v79;
        MEMORY[0x28223BE20](v80);
        *(&v88 - 2) = v108;
        v81 = v96;
        v60 = sub_223A0738C(sub_2239D9828, (&v88 - 8), &unk_283702950);
        v96 = v81;

        swift_arrayDestroy();

        v59 = v106;
        v32 = v103;
      }
    }

LABEL_29:
    v57 += 2;
    (*v97)(v104, v59);
  }

  while ((v60 & 1) != 0);

LABEL_53:

  v16 = v90;
  v23 = v99;
  v20 = v101;
LABEL_54:
  v86 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning;
  if (*(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    (*(v23 + 8))(v20, v16);
    *(v25 + v86) = 0;
    v82 = 1;
    return v82 & 1;
  }

  *(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) = 0;
LABEL_57:
  if (*(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    v82 = sub_2239DCB60();
    (*(v23 + 8))(v20, v16);
    return v82 & 1;
  }

LABEL_59:
  (*(v23 + 8))(v20, v16);
LABEL_60:
  v82 = 0;
  return v82 & 1;
}

uint64_t sub_2239CD8EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v9 = sub_223A20680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v50 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v54 = a1;
  v55 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v56 = v19;
  v57 = 0;
  v58 = v22 & v20;
  v59 = a2;
  v60 = a3;
  v52 = v10;
  v53 = (v10 + 32);
  v50[3] = v10 + 40;

  v50[1] = a3;

  for (i = v17; ; v17 = i)
  {
    sub_2239CDD4C(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_2239CE254();
    }

    v25 = *(v24 + 48);
    v27 = *v17;
    v26 = v17[1];
    v28 = *v53;
    v29 = v17 + v25;
    v30 = v13;
    v31 = v9;
    (*v53)(v13, v29, v9);
    v32 = *v61;
    v34 = sub_2239CDC74(v27, v26);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      v39 = v61;
      sub_2239D9194(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_2239CDC74(v27, v26);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_20;
      }

      v34 = v41;
    }

    v43 = *v61;
    if (v38)
    {

      v23 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      (*(v52 + 40))(v23, v30, v31);
    }

    else
    {
      v43[(v34 >> 6) + 8] |= 1 << v34;
      v44 = (v43[6] + 16 * v34);
      *v44 = v27;
      v44[1] = v26;
      v45 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      v28(v45, v30, v31);
      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v43[2] = v48;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_223A21910();
  __break(1u);
  return result;
}

unint64_t sub_2239CDC74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_223A21940();
  sub_223A21290();
  v6 = sub_223A21970();

  return sub_2239CE33C(a1, a2, v6);
}

uint64_t sub_2239CDCEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2239CDD4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v49 = sub_223A20680();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v6;
  v52 = v21;
  if (v22)
  {
    v48 = a1;
    v23 = v20;
LABEL_11:
    v47 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = (*(v18 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = v49;
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v27, v49);
    v32 = v51;
    v33 = *(v51 + 48);
    *v17 = v29;
    *(v17 + 1) = v30;
    v34 = v10;
    v35 = v32;
    (*(v7 + 32))(&v17[v33], v34, v31);
    v36 = v50;
    (*(v50 + 56))(v17, 0, 1, v35);

    v37 = v47;
    a1 = v48;
    v26 = v23;
    v38 = v36;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v39 = v53;
    v1[2] = v52;
    v1[3] = v26;
    v1[4] = v37;
    v40 = v1[5];
    v41 = v1[6];
    sub_2239CE130(v17, v39, &qword_27D0A4BC0, &unk_223A23780);
    v42 = 1;
    if ((*(v38 + 48))(v39, 1, v35) != 1)
    {
      v43 = v39;
      v44 = v46;
      sub_2239CE130(v43, v46, &qword_27D0A4B60, &qword_223A23760);
      v40(v44);
      sub_2239CDCEC(v44, &qword_27D0A4B60, &qword_223A23760);
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
    return (*(*(v45 - 8) + 56))(a1, v42, 1, v45);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v38 = v50;
        v35 = v51;
        (*(v50 + 56))(&v46 - v16, 1, 1, v51);
        v37 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239CE130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2239CE198@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_223A20680();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

void sub_2239CE25C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
    swift_beginAccess();

    v3 = *(v0 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + v2);
    *(v0 + v2) = 0x8000000000000000;
    sub_2239CD8EC(v1, sub_2239CE198, 0, isUniquelyReferenced_nonNull_native, &v5);

    *(v0 + v2) = v5;
    swift_endAccess();
  }
}

unint64_t sub_2239CE33C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_223A218F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2239CE3F4(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_223A20D20();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v38 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v31 = &v29 - v15;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v27)
  {
    v17 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v33 = (v32 + 32);
    v34 = (v32 + 48);
    v39 = v14;
    v40 = MEMORY[0x277D84F90];
    v29 = a1;
    v30 = a3;
    v35 = i;
    while (v37)
    {
      v14 = MEMORY[0x223DF07F0](v17, a3);
      v18 = v14;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v41 = v18;
      a1(&v41);
      if (v3)
      {

        return v40;
      }

      v20 = v39;
      if ((*v34)(v9, 1, v39) == 1)
      {
        v14 = sub_2239CDCEC(v9, &qword_27D0A4B38, " >");
      }

      else
      {
        v21 = *v33;
        v22 = v31;
        (*v33)(v31, v9, v20);
        v21(v38, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2239DF208(0, v40[2] + 1, 1, v40);
        }

        v24 = v40[2];
        v23 = v40[3];
        if (v24 >= v23 >> 1)
        {
          v40 = sub_2239DF208(v23 > 1, v24 + 1, 1, v40);
        }

        v25 = v39;
        v26 = v40;
        v40[2] = v24 + 1;
        v14 = (v21)(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v38, v25);
        a1 = v29;
        a3 = v30;
      }

      ++v17;
      if (v19 == v35)
      {
        return v40;
      }
    }

    if (v17 >= *(v36 + 16))
    {
      goto LABEL_21;
    }

    v18 = *(a3 + 8 * v17 + 32);

    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v27 = v14;
    i = sub_223A21780();
  }

  return MEMORY[0x277D84F90];
}

uint64_t SummaryDecoratorWorker.process(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_223A20CA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20CE0();
  v13 = sub_223A20C70();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    v15 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);
    if (v15 >> 62)
    {
      result = sub_223A21780();
      v16 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return result;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DF07F0](i, v15);
        }

        else
        {
          v18 = *(v15 + 8 * i + 32);
        }

        if (sub_2239CEE50(a1))
        {
          sub_2239CE9AC(a1, v7);

          result = sub_2239CDCEC(v7, &qword_27D0A4B38, " >");
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_2239CE9AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v39 = sub_223A20680();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_223A20B90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v18 = sub_223A20C40();
  (*(v14 + 104))(v17, *MEMORY[0x277CEF970], v13);
  v19 = sub_223A20B80();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (!*(v18 + 16))
  {

    goto LABEL_6;
  }

  v22 = sub_2239CDC74(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v25 = *(v18 + 56) + *(v9 + 72) * v22;
  v26 = v39;
  (*(v9 + 16))(v12, v25, v39);

  if ((*(v9 + 88))(v12, v26) == *MEMORY[0x277CEF858])
  {
    (*(v9 + 96))(v12, v26);
    v27 = *v12;
    v28 = v40;
    sub_223A20D00();
    *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_originalTimeOffset) = v29 - v27;
    goto LABEL_8;
  }

  (*(v9 + 8))(v12, v26);
LABEL_7:
  v28 = v40;
LABEL_8:
  v30 = sub_223A20D20();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v8, v28, v30);
  v32 = *(v31 + 56);
  v32(v8, 0, 1, v30);
  v33 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  sub_2239D8BD8(v8, v3 + v33);
  swift_endAccess();
  v34 = sub_223A20C50();
  v35 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage;
  v36 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage) = v34;

  sub_2239DA6FC();
  sub_2239D8CB0();
  if (*(v3 + v35))
  {
    swift_beginAccess();

    sub_2239D9090(v37);
    swift_endAccess();
  }

  if (sub_2239CCC2C())
  {
    v38 = (*(*v3 + 272))();
  }

  else
  {
    v38 = v32(v41, 1, 1, v30);
  }

  (*(*v3 + 240))(v38);
  sub_2239CE25C();
}

uint64_t sub_2239CEE50(uint64_t a1)
{
  v49 = a1;
  v48 = sub_223A20680();
  v2 = *(v48 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v48);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = v39 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v7 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v50 = (v39 - v8);
  v9 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_requiredKeyValues);
  if (v9)
  {
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v47 = v2 + 2;
    v41 = (v2 + 4);
    v39[1] = v1;
    v40 = (v2 + 1);

    v16 = 0;
    v44 = result;
    v45 = v2;
    while (v13)
    {
LABEL_11:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v16 << 6);
      v20 = (*(result + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = v2[9];
      v24 = *(v46 + 48);
      v25 = v2[2];
      v26 = v50;
      v25(v50 + v24, *(result + 56) + v23 * v19, v48);
      *v26 = v21;
      v26[1] = v22;

      v27 = sub_223A20C40();
      if (*(v27 + 16) && (v28 = sub_2239CDC74(v21, v22), (v29 & 1) != 0))
      {
        v30 = v43;
        v31 = v48;
        v25(v43, *(v27 + 56) + v28 * v23, v48);

        v32 = v42;
        (*v41)(v42, v30, v31);
        v33 = v50;
        v34 = MEMORY[0x223DEF730](v32, v50 + v24);
        (*v40)(v32, v31);
        sub_2239CDCEC(v33, &qword_27D0A4B60, &qword_223A23760);
        result = v44;
        v2 = v45;
        if ((v34 & 1) == 0)
        {
          v35 = 0;
LABEL_16:

          goto LABEL_18;
        }
      }

      else
      {

        sub_2239CDCEC(v50, &qword_27D0A4B60, &qword_223A23760);
        result = v44;
        v2 = v45;
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v35 = 1;
        goto LABEL_16;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = 1;
LABEL_18:
    v36 = sub_223A20750();
    MEMORY[0x28223BE20](v36);
    v39[-2] = v49;
    v37 = sub_2239CF3F4(sub_2239CF3D4, &v39[-4], v36);

    if (sub_223A20C20() == 11)
    {
      v38 = 0;
    }

    else
    {
      v38 = v35;
    }

    return v38 & v37;
  }

  return result;
}

uint64_t sub_2239CF1FC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_223A20C40();
  if (*(v8 + 16) && (v9 = sub_2239CDC74(v6, v7), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = sub_223A20680();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v5, v12 + *(v14 + 72) * v11, v13);

    v15 = 1;
    (*(v14 + 56))(v5, 0, 1, v13);
  }

  else
  {

    v16 = sub_223A20680();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v15 = 0;
  }

  sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
  return v15;
}

uint64_t sub_2239CF3F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t InferenceSummaryWorker.process(message:)()
{
  v2 = type metadata accessor for InferenceSummaryState(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - v7);
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState;
    swift_beginAccess();
    sub_2239CF7E0(v0 + v10, v8);
    v11 = v0;
    sub_2239CF7E0(v0 + v10, v6);
    sub_2239CF844();
    if (!v1)
    {
      sub_2239CFAD4();
      sub_2239CFCF4();
      sub_2239D0400();
      sub_2239D0804();
      sub_2239D0A78();
      sub_223A20D00();
      v13 = v12;
      v14 = *(v2 + 60);
      v15 = v6[v14];
      if ((v15 & 1) != 0 && (v16 = &v6[*(v2 + 64)], (v16[8] & 1) == 0))
      {
        v20 = *v16;
        sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
      }

      else
      {
        if (*(v8 + v14) == 1)
        {
          v17 = v8 + *(v2 + 64);
          if ((v17[8] & 1) == 0)
          {
            *v17 = v12;
            v17[8] = 0;
          }
        }

        if (!v15)
        {
          sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
LABEL_20:
          swift_beginAccess();
          sub_2239D5D3C(v8, v11 + v10);
          return swift_endAccess();
        }

        v18 = &v6[*(v2 + 64)];
        v19 = v18[8];
        v20 = *v18;
        sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
        if (v19)
        {
          goto LABEL_20;
        }
      }

      if ((*(v8 + *(v2 + 60)) != 1 || *(v8 + *(v2 + 64) + 8) == 1) && v20 < v13)
      {
        v8[4] = v13 - v20 + v8[4];
      }

      goto LABEL_20;
    }

    sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
    return sub_2239D62FC(v8, type metadata accessor for InferenceSummaryState);
  }

  return result;
}

uint64_t sub_2239CF7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceSummaryState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239CF844()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  v6 = sub_223A20B90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_223A20C20();
  if (!result)
  {
    result = sub_223A20CC0();
    if (result == 8)
    {
      sub_223A20C40();
      (*(v7 + 104))(v10, *MEMORY[0x277CEF948], v6);
      sub_223A21150();

      (*(v7 + 8))(v10, v6);
      v12 = sub_223A20680();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v5, 1, v12) == 1)
      {
        return sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
      }

      else if ((*(v13 + 88))(v5, v12) == *MEMORY[0x277CEF848])
      {
        (*(v13 + 96))(v5, v12);
        v14 = *v5;
        if (v14 == 1)
        {
          *(v1 + 16) = 1;
        }

        result = type metadata accessor for InferenceSummaryState(0);
        v15 = *(result + 60);
        if (v14 != *(v1 + v15))
        {
          *(v1 + v15) = v14;
        }
      }

      else
      {
        return (*(v13 + 8))(v5, v12);
      }
    }
  }

  return result;
}

uint64_t sub_2239CFAD4()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20C40();
  if (!*(v7 + 16))
  {
  }

  v8 = sub_2239CDC74(0xD000000000000014, 0x8000000223A25E30);
  if ((v9 & 1) == 0)
  {
  }

  (*(v3 + 16))(v6, *(v7 + 56) + *(v3 + 72) * v8, v2);

  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277CEF848])
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 96))(v6, v2);
  if (*v6 == 1)
  {
    sub_223A20D00();
    v11 = v10;
    result = type metadata accessor for InferenceSummaryState(0);
    v13 = v1 + *(result + 64);
    v14 = *v13;
    if (*(v13 + 8))
    {
      v14 = INFINITY;
    }

    if (v14 >= v11)
    {
      v14 = v11;
    }

    *v13 = v14;
    *(v13 + 8) = 0;
    v15 = *(v1 + 24);
    v16 = __CFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 24) = v17;
    }
  }

  else
  {
    result = type metadata accessor for InferenceSummaryState(0);
    v18 = v1 + *(result + 64);
    *v18 = 0;
    *(v18 + 8) = 1;
  }

  return result;
}

uint64_t sub_2239CFCF4()
{
  v1 = v0;
  v2 = sub_223A20680();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C48, &unk_223A23950);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v45 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v50 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = (&v45 - v17);
  v19 = sub_223A20B90();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A20CC0() == 1 && !sub_223A20C20())
  {
    v45 = v0;
    sub_223A20C40();
    (*(v20 + 104))(v23, *MEMORY[0x277CEF918], v19);
    sub_223A21150();

    (*(v20 + 8))(v23, v19);
    v24 = v51;
    if ((*(v51 + 48))(v18, 1, v2) == 1)
    {
      sub_2239CDCEC(v18, &qword_27D0A4928, &qword_223A22B40);
LABEL_9:
      v1 = v45;
      goto LABEL_10;
    }

    if ((*(v24 + 88))(v18, v2) != *MEMORY[0x277CEF858])
    {
      (*(v24 + 8))(v18, v2);
      goto LABEL_9;
    }

    (*(v24 + 96))(v18, v2);
    v25 = *v18;
    v26 = v48;
    *(v48 + 64) = v25 + *(v48 + 64);
    v27 = *(type metadata accessor for InferenceSummaryState(0) + 60);
    v1 = v45;
    if (*(v26 + v27) == 1)
    {
      *(v48 + v27) = 0;
    }
  }

LABEL_10:
  result = sub_223A20CC0();
  if (result == 8)
  {
    result = sub_223A20C20();
    if (result == 2)
    {
      v29 = sub_223A20C40();
      v30 = *(v29 + 16);
      v45 = v1;
      if (v30)
      {
        v31 = sub_2239CDC74(0x646F6874656DLL, 0xE600000000000000);
        v32 = v51;
        v33 = v50;
        if (v34)
        {
          (*(v51 + 16))(v50, *(v29 + 56) + *(v51 + 72) * v31, v2);
          v35 = 0;
        }

        else
        {
          v35 = 1;
        }
      }

      else
      {
        v35 = 1;
        v32 = v51;
        v33 = v50;
      }

      v36 = *(v32 + 56);
      v36(v33, v35, 1, v2);
      *v14 = 1886352499;
      v14[1] = 0xE400000000000000;
      (*(v32 + 104))(v14, *MEMORY[0x277CEF860], v2);
      v36(v14, 0, 1, v2);
      v37 = *(v49 + 48);
      sub_2239D3394(v33, v7);
      sub_2239D3394(v14, &v7[v37]);
      v38 = *(v32 + 48);
      if (v38(v7, 1, v2) == 1)
      {
        sub_2239CDCEC(v14, &qword_27D0A4928, &qword_223A22B40);
        sub_2239CDCEC(v33, &qword_27D0A4928, &qword_223A22B40);
        if (v38(&v7[v37], 1, v2) == 1)
        {
          sub_2239CDCEC(v7, &qword_27D0A4928, &qword_223A22B40);
LABEL_24:
          result = type metadata accessor for InferenceSummaryState(0);
          v44 = *(result + 60);
          if (*(v48 + v44) == 1)
          {
            *(v48 + v44) = 0;
          }

          return result;
        }
      }

      else
      {
        v39 = v47;
        sub_2239D3394(v7, v47);
        if (v38(&v7[v37], 1, v2) != 1)
        {
          v40 = v51;
          v41 = &v7[v37];
          v42 = v46;
          (*(v51 + 32))(v46, v41, v2);
          sub_2239DF230();
          LODWORD(v50) = sub_223A211E0();
          v43 = *(v40 + 8);
          v43(v42, v2);
          sub_2239CDCEC(v14, &qword_27D0A4928, &qword_223A22B40);
          sub_2239CDCEC(v33, &qword_27D0A4928, &qword_223A22B40);
          v43(v39, v2);
          result = sub_2239CDCEC(v7, &qword_27D0A4928, &qword_223A22B40);
          if ((v50 & 1) == 0)
          {
            return result;
          }

          goto LABEL_24;
        }

        sub_2239CDCEC(v14, &qword_27D0A4928, &qword_223A22B40);
        sub_2239CDCEC(v33, &qword_27D0A4928, &qword_223A22B40);
        (*(v51 + 8))(v39, v2);
      }

      return sub_2239CDCEC(v7, &qword_27D0A4C48, &unk_223A23950);
    }
  }

  return result;
}

uint64_t sub_2239D0400()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (v29 - v7);
  v9 = sub_223A20B90();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  result = sub_223A20C20();
  if (result == 11)
  {
    result = sub_223A20CC0();
    if (result == 3)
    {
      v36 = v0;
      v37 = v1;
      sub_223A20C40();
      v18 = *MEMORY[0x277CEF940];
      v35 = v10[13];
      v35(v16, v18, v9);
      sub_223A21150();

      v34 = v10[1];
      v34(v16, v9);
      v19 = sub_223A20680();
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);
      v38 = v19;
      v33 = v21;
      if ((v21)(v8, 1) == 1)
      {
        return sub_2239CDCEC(v8, &qword_27D0A4928, &qword_223A22B40);
      }

      else
      {
        v31 = *(v20 + 88);
        v32 = v20 + 88;
        if (v31(v8, v38) == *MEMORY[0x277CEF858])
        {
          v30 = v20;
          v22 = v20 + 96;
          v23 = *(v20 + 96);
          v24 = v38;
          v29[0] = v23;
          v29[1] = v22;
          v23(v8, v38);
          *(v36 + 48) = *v8 + *(v36 + 48);
          sub_223A20C40();
          v35(v14, *MEMORY[0x277CEF900], v9);
          sub_223A21150();

          v34(v14, v9);
          if (v33(v6, 1, v24) == 1)
          {
            return sub_2239CDCEC(v6, &qword_27D0A4928, &qword_223A22B40);
          }

          else if (v31(v6, v38) == *MEMORY[0x277CEF860])
          {
            (v29[0])(v6, v38);
            v25 = *v6;
            v26 = v6[1];
            v27 = v36;
            v28 = *(v36 + 80);

            *(v27 + 72) = v25;
            *(v27 + 80) = v26;
          }

          else
          {
            return (*(v30 + 8))(v6, v38);
          }
        }

        else
        {
          return (*(v20 + 8))(v8, v38);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2239D0804()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v14 - v4);
  v6 = sub_223A20B90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_223A20C20();
  if (result == 11)
  {
    result = sub_223A20CC0();
    if (result == 14)
    {
      sub_223A20C40();
      (*(v7 + 104))(v10, *MEMORY[0x277CEF8E8], v6);
      sub_223A21150();

      (*(v7 + 8))(v10, v6);
      v12 = sub_223A20680();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v5, 1, v12) == 1)
      {
        return sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
      }

      else if ((*(v13 + 88))(v5, v12) == *MEMORY[0x277CEF858])
      {
        result = (*(v13 + 96))(v5, v12);
        *(v1 + 56) = *v5 + *(v1 + 56);
      }

      else
      {
        return (*(v13 + 8))(v5, v12);
      }
    }
  }

  return result;
}

uint64_t sub_2239D0A78()
{
  v60 = sub_223A20680();
  v1 = *(v60 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v60);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = (v43 - v12);
  result = sub_223A20C40();
  v14 = 0;
  v16 = result + 64;
  v15 = *(result + 64);
  v47 = v1;
  v48 = result;
  v17 = 1 << *(result + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v43[1] = v1 + 16;
  v44 = v11;
  v55 = (v1 + 32);
  v50 = result + 64;
  v51 = (v1 + 8);
  v46 = v5;
  v49 = v20;
  v52 = v0;
  while (v19)
  {
    v21 = v14;
LABEL_15:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v47;
    v27 = (*(v48 + 48) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = v45;
    v31 = v60;
    (*(v47 + 16))(v45, *(v48 + 56) + *(v47 + 72) * v25, v60);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    v33 = *(v32 + 48);
    v34 = v44;
    *v44 = v29;
    *(v34 + 1) = v28;
    v35 = v30;
    v11 = v34;
    (*(v26 + 32))(&v34[v33], v35, v31);
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);

    v5 = v46;
LABEL_16:
    v36 = v53;
    sub_2239D0F08(v11, v53);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
    }

    v38 = *v36;
    v39 = v36[1];
    (*v55)(v5, v36 + *(v37 + 48), v60);
    v58 = v38;
    v59 = v39;
    v40 = *(v52 + 96);
    v56 = *(v52 + 88);
    v57 = v40;
    sub_2239D1804();
    if (sub_223A21630())
    {
      v41 = v54;
      sub_223A0FF20(v38, v39, v5);
      v54 = v41;
      if (v41)
      {
        (*v51)(v5, v60);
      }
    }

    (*v51)(v5, v60);

    v20 = v49;
    v16 = v50;
  }

  if (v20 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      (*(*(v42 - 8) + 56))(v11, 1, 1, v42);
      v19 = 0;
      v14 = v23;
      goto LABEL_16;
    }

    v19 = *(v16 + 8 * v21);
    ++v14;
    if (v19)
    {
      v14 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2239D0F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D0F78(uint64_t a1)
{
  v2 = sub_223A20B90();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v54 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_nonAlphaNumerics;
  v9 = (v6 + 63) >> 6;
  v56 = a1;

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v52 = v9;
  v53 = a1 + 64;
  while (v8)
  {
LABEL_11:
    v15 = __clz(__rbit64(v8)) | (v10 << 6);
    v16 = (*(v56 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_2239D17A8(*(v56 + 56) + 32 * v15, v59);
    v58[0] = v18;
    v58[1] = v17;
    sub_2239D1738(v58, v57);

    sub_2239D1858();
    if (!swift_dynamicCast())
    {

      sub_223A20E40();
      sub_223A20E30();
      swift_willThrow();
      return sub_2239CDCEC(v58, &qword_27D0A4AA8, &unk_223A23930);
    }

    v19 = v59[6];
    v57[0] = v18;
    v57[1] = v17;
    sub_2239D1804();
    v57[0] = sub_223A215F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
    sub_2239D18A4();
    v20 = sub_223A211D0();
    v22 = v21;

    v23 = v19;
    v24 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v24;
    v27 = sub_2239CDC74(v20, v22);
    v28 = v24[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_27;
    }

    v31 = v26;
    if (v24[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_223A096C8();
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2239D1908(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_2239CDC74(v20, v22);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_29;
      }

      v27 = v32;
      if (v31)
      {
LABEL_4:

        v11 = v57[0];
        v12 = *(v57[0] + 56);
        v13 = *(v12 + 8 * v27);
        *(v12 + 8 * v27) = v23;

        goto LABEL_5;
      }
    }

    v11 = v57[0];
    *(v57[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v34 = (v11[6] + 16 * v27);
    *v34 = v20;
    v34[1] = v22;
    *(v11[7] + 8 * v27) = v23;

    v35 = v11[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_28;
    }

    v11[2] = v37;
LABEL_5:
    v8 &= v8 - 1;
    sub_2239CDCEC(v58, &qword_27D0A4AA8, &unk_223A23930);
    v9 = v52;
    v5 = v53;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      v38 = *(v55 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session), *(v55 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session + 24));
      sub_223A20960();
      sub_223A20EB0();
      sub_223A21250();

      v39 = v49;
      v40 = v50;
      v41 = v11;
      v42 = v51;
      (*(v50 + 104))(v49, *MEMORY[0x277CEF938], v51);
      v43 = sub_223A20B80();
      v45 = v44;
      (*(v40 + 8))(v39, v42);
      v46 = sub_223A211F0();

      v47 = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v41;
      sub_2239D1D4C(v46, v43, v45, v47);

      return v58[0];
    }

    v8 = *(v5 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t CoreAnalyticsWorker.process(message:)()
{
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    sub_223A20B10();
    v8 = sub_223A20C10();
    v9 = sub_2239D0F78(v8);
    if (v1)
    {
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v10 = v9;
      v21 = v3;
      v22 = v2;
      v23 = 0;

      v24 = sub_2239D1D78();
      v11 = *(v24 + 16);
      if (v11)
      {
        v12 = (v24 + 40);
        do
        {
          v17 = *(v12 - 1);
          v16 = *v12;

          v18 = sub_223A211F0();
          IsEventUsed = AnalyticsIsEventUsed();

          if (IsEventUsed)
          {
            v13 = sub_223A211F0();

            v14 = swift_allocObject();
            *(v14 + 16) = v10;
            aBlock[4] = sub_2239D338C;
            aBlock[5] = v14;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2239D3300;
            aBlock[3] = &block_descriptor_1;
            v15 = _Block_copy(aBlock);

            AnalyticsSendEventLazy();
            _Block_release(v15);
          }

          else
          {
          }

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      return (*(v21 + 8))(v6, v22);
    }
  }

  return result;
}

uint64_t sub_2239D1700()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2239D1738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA8, &unk_223A23930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D17A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2239D1804()
{
  result = qword_281332750;
  if (!qword_281332750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332750);
  }

  return result;
}

unint64_t sub_2239D1858()
{
  result = qword_2813326E8;
  if (!qword_2813326E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813326E8);
  }

  return result;
}

unint64_t sub_2239D18A4()
{
  result = qword_281332740;
  if (!qword_281332740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4A90, &unk_223A233A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332740);
  }

  return result;
}

uint64_t sub_2239D191C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_223A217B0();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2239D1BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2239CDC74(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_2239CDC74(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_223A21910();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_2239D1D78()
{
  v1 = sub_223A20680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_223A20B90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  sub_223A20C40();
  (*(v7 + 104))(v10, *MEMORY[0x277CEF8E0], v6);
  sub_223A21150();

  (*(v7 + 8))(v10, v6);
  if ((*(v2 + 48))(v14, 1, v1) == 1)
  {
    sub_2239CDCEC(v14, &qword_27D0A4928, &qword_223A22B40);
  }

  else
  {
    (*(v2 + 16))(v5, v14, v1);
    if ((*(v2 + 88))(v5, v1) == *MEMORY[0x277CEF860])
    {
      (*(v2 + 96))(v5, v1);
      v15 = *v5;
      v16 = v5[1];
      (*(v2 + 8))(v14, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
      result = swift_allocObject();
      *(result + 16) = xmmword_223A23280;
      *(result + 32) = v15;
      *(result + 40) = v16;
      return result;
    }

    v18 = *(v2 + 8);
    v18(v5, v1);
    v18(v14, v1);
  }

  v19 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session + 24));
  sub_223A20960();
  sub_223A20EB0();
  v20 = sub_223A21250();
  v22 = v21;

  v23 = sub_223A20CC0();
  v32 = MEMORY[0x223DEFFA0](v23);
  v33 = v24;
  MEMORY[0x223DF0390](46, 0xE100000000000000);
  v25 = sub_223A20C20();
  v26 = MEMORY[0x223DEFF80](v25);
  MEMORY[0x223DF0390](v26);

  v28 = v32;
  v27 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_223A22B70;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_223A21700();

  v32 = 0xD000000000000014;
  v33 = 0x8000000223A252A0;
  MEMORY[0x223DF0390](v28, v27);
  v30 = v33;
  *(v29 + 32) = v32;
  *(v29 + 40) = v30;
  v32 = 0x6C7070612E6D6F63;
  v33 = 0xEA00000000002E65;
  MEMORY[0x223DF0390](v20, v22);

  MEMORY[0x223DF0390](46, 0xE100000000000000);
  MEMORY[0x223DF0390](v28, v27);

  result = v29;
  v31 = v33;
  *(v29 + 48) = v32;
  *(v29 + 56) = v31;
  return result;
}

void PowerLogWorker.process(message:)()
{
  swift_beginAccess();
  if (*(v0 + 16) != 1)
  {

    v7 = sub_223A20FB0();
    v16 = sub_223A214D0();
    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = *(v0 + 56);
      __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
      *(v17 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v7, v16, "Worker not started, cannot send message to PowerLog. { reporterID=%lld }", v17, 0xCu);
      v15 = v17;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (sub_2239D24C0())
  {
    v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
    v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState);

    sub_223A11628();

    v3 = *(*(v0 + v1) + 80);
    v4 = (v3 * 10) >> 64;
    v5 = 10 * v3;
    if (v4 != v5 >> 63)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v6 = *(v0 + 64);
    if (v5 < v6)
    {

      v7 = sub_223A20FB0();
      v8 = sub_223A214D0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134218496;
        v10 = *(*(v0 + v1) + 80);
        v11 = (v10 * 10) >> 64;
        v12 = 10 * v10;
        if (v11 == v12 >> 63)
        {
          *(v9 + 4) = v12;
          *(v9 + 12) = 2048;
          *(v9 + 14) = v6;
          *(v9 + 22) = 2048;
          v13 = *(v0 + 56);
          v14 = v9;
          __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
          *(v14 + 24) = sub_223A20950();

          _os_log_impl(&dword_2239C7000, v7, v8, "Skipping sending RMS information, session does not have enough messages. (%ld < %ld { reporterID=%lld }", v14, 0x20u);
          v15 = v14;
LABEL_10:
          MEMORY[0x223DF1300](v15, -1, -1);

          return;
        }

        goto LABEL_17;
      }

LABEL_11:

      return;
    }

    sub_2239E2D20(0x72656D6974, 0xE500000000000000);
  }

  else if (sub_223A20C20() == 8)
  {
    sub_2239DBC28();
  }
}

uint64_t sub_2239D24C0()
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C48, &unk_223A23950);
  v0 = *(*(v96 - 8) + 64);
  v1 = MEMORY[0x28223BE20](v96);
  v95 = &v75[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v1);
  v4 = &v75[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v89 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v75[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v75[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v92 = &v75[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v75[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v75[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v75[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v75[-v23];
  v25 = sub_223A20680();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v91 = &v75[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v31 = &v75[-v30];
  v32 = sub_223A20C20();
  v33 = sub_223A20C40();
  if (!*(v33 + 16))
  {
    goto LABEL_8;
  }

  v34 = sub_2239CDC74(1701080942, 0xE400000000000000);
  if ((v35 & 1) == 0)
  {
    goto LABEL_8;
  }

  v36 = *(v33 + 56) + *(v26 + 72) * v34;
  v37 = *(v26 + 16);
  v87 = *(v26 + 72);
  v88 = v37;
  v37(v31, v36, v25);
  v38 = (*(v26 + 88))(v31, v25);
  if (v38 != *MEMORY[0x277CEF860])
  {

    (*(v26 + 8))(v31, v25);
    goto LABEL_9;
  }

  v86 = v38;
  (*(v26 + 96))(v31, v25);
  v39 = v31[1];
  if (v32 != 7)
  {
    v46 = v31[1];

LABEL_8:

    goto LABEL_9;
  }

  v85 = v31[1];
  v78 = *v31;
  v40 = *(v33 + 16);
  v81 = v26 + 16;
  if (v40 && (v41 = sub_2239CDC74(0x6C635F6469617472, 0xEC000000746E6569), (v42 & 1) != 0))
  {
    v88(v24, *(v33 + 56) + v41 * v87, v25);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v47 = *(v26 + 56);
  v47(v24, v43, 1, v25);
  *v22 = 4997448;
  v22[1] = 0xE300000000000000;
  v48 = *(v26 + 104);
  v80 = v26 + 104;
  v79 = v48;
  v48(v22, v86, v25);
  v82 = v47;
  v83 = v26 + 56;
  v47(v22, 0, 1, v25);
  v49 = *(v96 + 48);
  sub_2239D3394(v24, v4);
  sub_2239D3394(v22, &v4[v49]);
  v50 = *(v26 + 48);
  if (v50(v4, 1, v25) == 1)
  {
    v84 = v26 + 48;
    sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v24, &qword_27D0A4928, &qword_223A22B40);
    if (v50(&v4[v49], 1, v25) == 1)
    {
      v51 = v50;
      sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
      goto LABEL_21;
    }

LABEL_19:
    v52 = v4;
LABEL_32:
    sub_2239CDCEC(v52, &qword_27D0A4C48, &unk_223A23950);
    goto LABEL_33;
  }

  sub_2239D3394(v4, v19);
  v77 = v50;
  if (v50(&v4[v49], 1, v25) == 1)
  {
    sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v24, &qword_27D0A4928, &qword_223A22B40);
    (*(v26 + 8))(v19, v25);
    goto LABEL_19;
  }

  v84 = v26 + 48;
  v53 = v91;
  (*(v26 + 32))(v91, &v4[v49], v25);
  sub_2239D3404(&qword_2813336F8, MEMORY[0x277CEF868]);
  v76 = sub_223A211E0();
  v54 = *(v26 + 8);
  v54(v53, v25);
  sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
  sub_2239CDCEC(v24, &qword_27D0A4928, &qword_223A22B40);
  v54(v19, v25);
  sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
  v51 = v77;
  if ((v76 & 1) == 0)
  {
LABEL_33:

    goto LABEL_8;
  }

LABEL_21:
  if (*(v33 + 16))
  {
    v55 = sub_2239CDC74(0x745F74726F706572, 0xEB00000000657079);
    v57 = v94;
    v56 = v95;
    v58 = v92;
    v59 = v93;
    if (v60)
    {
      v88(v93, *(v33 + 56) + v55 * v87, v25);
      v61 = 0;
    }

    else
    {
      v61 = 1;
    }
  }

  else
  {
    v61 = 1;
    v57 = v94;
    v56 = v95;
    v58 = v92;
    v59 = v93;
  }

  v62 = v82;
  v82(v59, v61, 1, v25);
  *v58 = 5459282;
  v58[1] = 0xE300000000000000;
  v79(v58, v86, v25);
  v62(v58, 0, 1, v25);
  v63 = *(v96 + 48);
  sub_2239D3394(v59, v56);
  sub_2239D3394(v58, v56 + v63);
  if (v51(v56, 1, v25) == 1)
  {
    sub_2239CDCEC(v58, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v59, &qword_27D0A4928, &qword_223A22B40);
    if (v51(v56 + v63, 1, v25) == 1)
    {
      sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_2239D3394(v56, v57);
  if (v51(v56 + v63, 1, v25) == 1)
  {
    sub_2239CDCEC(v58, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v59, &qword_27D0A4928, &qword_223A22B40);
    (*(v26 + 8))(v57, v25);
LABEL_31:
    v52 = v56;
    goto LABEL_32;
  }

  v64 = v56 + v63;
  v65 = v91;
  (*(v26 + 32))(v91, v64, v25);
  sub_2239D3404(&qword_2813336F8, MEMORY[0x277CEF868]);
  v66 = sub_223A211E0();
  v67 = *(v26 + 8);
  v67(v65, v25);
  sub_2239CDCEC(v58, &qword_27D0A4928, &qword_223A22B40);
  sub_2239CDCEC(v59, &qword_27D0A4928, &qword_223A22B40);
  v67(v57, v25);
  sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
  if ((v66 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (*(v33 + 16) && (v68 = sub_2239CDC74(7564658, 0xE300000000000000), (v69 & 1) != 0))
  {
    v70 = v90;
    v88(v90, *(v33 + 56) + v68 * v87, v25);
    v82(v70, 0, 1, v25);
    sub_2239CDCEC(v70, &qword_27D0A4928, &qword_223A22B40);
    if (*(v33 + 16))
    {
      v71 = sub_2239CDC74(1801545072, 0xE400000000000000);
      if (v72)
      {
        v73 = v89;
        v88(v89, *(v33 + 56) + v71 * v87, v25);

        v82(v73, 0, 1, v25);
        sub_2239CDCEC(v73, &qword_27D0A4928, &qword_223A22B40);
        v99 = v78;
        v100 = v85;
        v97 = 5263169;
        v98 = 0xE300000000000000;
        sub_2239E4C38();
        sub_2239E4BE4();
        LOBYTE(v73) = sub_223A211C0();

        v44 = v73 ^ 1;
        return v44 & 1;
      }
    }

    v74 = v89;
  }

  else
  {

    v74 = v90;
  }

  v82(v74, 1, 1, v25);
  sub_2239CDCEC(v74, &qword_27D0A4928, &qword_223A22B40);
LABEL_9:
  v44 = 0;
  return v44 & 1;
}

void *sub_2239D30EC(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_223A21780();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x223DF07F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_223A21730();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_223A21760();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_223A21770();
          v3 = &v22;
          sub_223A21740();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_2239D32A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_2239CEE50(v2) & 1;
}

char *sub_2239D32E0(char *a1, int64_t a2, char a3)
{
  result = sub_2239D3C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_2239D3300(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2239D1858();
    v5 = sub_223A21100();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2239D3394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D3404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2239D344C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v9 = sub_223A20680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v50 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v54 = a1;
  v55 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v56 = v19;
  v57 = 0;
  v58 = v22 & v20;
  v59 = a2;
  v60 = a3;
  v52 = v10;
  v53 = (v10 + 32);
  v50[3] = v10 + 40;

  v50[1] = a3;

  for (i = v17; ; v17 = i)
  {
    sub_2239CDD4C(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_2239CE254();
    }

    v25 = *(v24 + 48);
    v27 = *v17;
    v26 = v17[1];
    v28 = *v53;
    v29 = v17 + v25;
    v30 = v13;
    v31 = v9;
    (*v53)(v13, v29, v9);
    v32 = *v61;
    v34 = sub_2239CDC74(v27, v26);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      v39 = v61;
      sub_2239D9194(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_2239CDC74(v27, v26);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_20;
      }

      v34 = v41;
    }

    v43 = *v61;
    if (v38)
    {

      v23 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      (*(v52 + 40))(v23, v30, v31);
    }

    else
    {
      v43[(v34 >> 6) + 8] |= 1 << v34;
      v44 = (v43[6] + 16 * v34);
      *v44 = v27;
      v44[1] = v26;
      v45 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      v28(v45, v30, v31);
      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v43[2] = v48;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_2239D37D4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = SessionSummaryWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t SessionSummaryWorker.init(with:)(__int128 *a1)
{
  v33 = a1;
  v2 = sub_223A20B90();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = v3[8];
  MEMORY[0x28223BE20](v2);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x277D84F98];
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  v9 = *MEMORY[0x277CEF9D8];
  v10 = sub_223A20BC0();
  v11 = *(*(v10 - 8) + 104);
  v34 = v1;
  v11(v1 + v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D10, &unk_223A23BA0);
  v12 = v3[9];
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v14 = v32 + v13;
  v15 = v3[13];
  v15(v32 + v13, *MEMORY[0x277CEF900], v2);
  v15(v14 + v12, *MEMORY[0x277CEF920], v2);
  v15(v14 + 2 * v12, *MEMORY[0x277CEF908], v2);
  v15(v14 + 3 * v12, *MEMORY[0x277CEF9A0], v2);
  v15(v14 + 4 * v12, *MEMORY[0x277CEF8F0], v2);
  v15(v14 + 5 * v12, *MEMORY[0x277CEF950], v2);
  v15(v14 + 6 * v12, *MEMORY[0x277CEF958], v2);
  v36 = v12;
  v15(v14 + 7 * v12, *MEMORY[0x277CEF9A8], v2);
  v16 = *MEMORY[0x277CEF930];
  v38 = v2;
  v15(v14 + 8 * v12, v16, v2);
  v39 = MEMORY[0x277D84F90];
  v17 = 9;
  sub_2239D32E0(0, 9, 0);
  v18 = v39;
  v35 = v4[2];
  v37 = v4 + 2;
  v19 = (v4 + 1);
  v31[1] = v14;
  v20 = v14;
  do
  {
    v21 = v38;
    v35(v7, v20, v38);
    v22 = sub_223A20B80();
    v24 = v23;
    (*v19)(v7, v21);
    v39 = v18;
    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2239D32E0((v25 > 1), v26 + 1, 1);
      v18 = v39;
    }

    *(v18 + 16) = v26 + 1;
    v27 = v18 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v20 += v36;
    --v17;
  }

  while (v17);
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = v34;
  *(v34 + v28) = v18;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) = 0;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount) = 0;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount) = 0;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount) = 0;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount) = 0;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount) = 0;
  *(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount) = 0;
  sub_223A20F70();
  sub_2239CB264(v33, v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session);
  return v29;
}

char *sub_2239D3C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
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

uint64_t sub_2239D3D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = DurationSummaryWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t DurationSummaryWorker.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v134 = *v1;
  v4 = sub_223A20FC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v125 - v10;
  v11 = sub_223A207D0();
  v147 = *(v11 - 1);
  v12 = *(v147 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v135 = &v125 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v142 = &v125 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v143 = (&v125 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v148 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  *&v141 = &v125 - v23;
  *(v1 + 16) = 0;
  *(v1 + 24) = sub_2239D4EE0(MEMORY[0x277D84F90]);
  v24 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  v25 = *MEMORY[0x277CEF9E0];
  v26 = sub_223A20BC0();
  v131 = *(v26 - 8);
  v27 = *(v131 + 104);
  v133 = v24;
  v132 = v26;
  v27(v2 + v24, v25);
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
  sub_223A20F70();
  v130 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session;
  sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = sub_223A209A0();
  v31 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_config;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_config) = v30;

  v32 = sub_223A20BD0();

  v33 = *(v32 + 16);

  v136 = v28;
  if (!v33)
  {
    (*(v5 + 16))(v9, v2 + v28, v4);
    sub_2239C8DE4(a1, v152);
    sub_2239C8DE4(a1, v150);
    v46 = sub_223A20FB0();
    v47 = sub_223A214D0();
    v11 = a1;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v127 = v31;
      v50 = v49;
      v154 = v49;
      *v48 = 134218243;
      v137 = v2;
      v138 = v11;
      __swift_project_boxed_opaque_existential_1(v152, v153);
      v51 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v152);
      *(v48 + 4) = v51;
      *(v48 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      v11 = v138;
      sub_223A20960();
      v52 = sub_223A20EB0();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0(v150);
      v55 = sub_2239E1910(v52, v54, &v154);
      v2 = v137;

      *(v48 + 14) = v55;
      _os_log_impl(&dword_2239C7000, v46, v47, "No summary configs found. { reporterID=%lld, serviceType=%{private}s }", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v56 = v50;
      v31 = v127;
      MEMORY[0x223DF1300](v56, -1, -1);
      MEMORY[0x223DF1300](v48, -1, -1);

      v57 = *(v5 + 8);
      v57(v9, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v152);

      v57 = *(v5 + 8);
      v57(v9, v4);
      __swift_destroy_boxed_opaque_existential_0(v150);
    }

    v114 = *(v2 + 24);

    (*(v131 + 8))(v2 + v133, v132);
    __swift_destroy_boxed_opaque_existential_0((v2 + v130));
    v115 = *(v2 + v31);

    v57((v2 + v136), v4);
    v116 = *(*v2 + 48);
    v117 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
LABEL_47:
    v2 = 0;
    goto LABEL_48;
  }

  v126 = v5;
  v129 = v4;
  v138 = a1;
  v137 = v2;
  v127 = v31;
  v34 = *(v2 + v31);

  v35 = sub_223A20BD0();

  v36 = *(v35 + 16);
  if (v36)
  {
    v2 = 0;
    v37 = v147;
    v145 = (v147 + 16);
    v144 = (v147 + 32);
    v139 = (v147 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v143;
    v40 = v141;
    v140 = v36;
    while (v2 < *(v35 + 16))
    {
      v4 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v41 = *(v37 + 72);
      (*(v37 + 16))(v40, v35 + v4 + v41 * v2, v11);
      if (sub_223A20710())
      {
        (*v139)(v40, v11);
      }

      else
      {
        v42 = *v144;
        (*v144)(v148, v40, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152[0] = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2239CC01C(0, *(v38 + 16) + 1, 1);
          v38 = v152[0];
        }

        v45 = *(v38 + 16);
        v44 = *(v38 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2239CC01C(v44 > 1, v45 + 1, 1);
          v38 = v152[0];
        }

        *(v38 + 16) = v45 + 1;
        v42((v38 + v4 + v45 * v41), v148, v11);
        v37 = v147;
        v39 = v143;
        v40 = v141;
        v36 = v140;
      }

      if (v36 == ++v2)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v38 = MEMORY[0x277D84F90];
  v37 = v147;
  v39 = v143;
LABEL_16:

  MEMORY[0x28223BE20](v58);
  *(&v125 - 2) = v138;
  v59 = sub_2239CBBFC(sub_2239D50CC, (&v125 - 4), v38);
  v60 = *(v59 + 16);
  v35 = MEMORY[0x277D84F90];
  v140 = 0;
  if (v60)
  {
    v4 = 0;
    v145 = (v37 + 16);
    *&v141 = v37 + 8;
    v144 = (v37 + 32);
    v148 = v60;
    while (v4 < *(v59 + 16))
    {
      v61 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v2 = v59;
      v62 = *(v37 + 72);
      (*(v37 + 16))(v39, v59 + v61 + v62 * v4, v11);
      if (sub_223A20790())
      {

        (*v141)(v39, v11);
      }

      else
      {
        v63 = *v144;
        (*v144)(v142, v39, v11);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v152[0] = v35;
        if ((v64 & 1) == 0)
        {
          sub_2239CC01C(0, *(v35 + 16) + 1, 1);
          v35 = v152[0];
        }

        v66 = *(v35 + 16);
        v65 = *(v35 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_2239CC01C(v65 > 1, v66 + 1, 1);
          v35 = v152[0];
        }

        *(v35 + 16) = v66 + 1;
        v63((v35 + v61 + v66 * v62), v142, v11);
        v37 = v147;
        v39 = v143;
        v60 = v148;
      }

      ++v4;
      v59 = v2;
      if (v60 == v4)
      {
        goto LABEL_27;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_27:
  v139 = v59;
  MEMORY[0x28223BE20](v59);
  *(&v125 - 2) = v138;
  v67 = v140;
  v68 = sub_2239CC2E4(sub_2239D5210, (&v125 - 4), v35);
  if (!v67)
  {
    v69 = v68;

    v70 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;
    *(v137 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates) = v69;
    v152[0] = MEMORY[0x277D84F90];
    if (v60)
    {
      v134 = v70;
      v73 = *(v37 + 16);
      v72 = v37 + 16;
      v71 = v73;
      v74 = v139 + ((*(v72 + 64) + 32) & ~*(v72 + 64));
      v142 = *(v72 + 56);
      v145 = (v72 - 8);
      v140 = MEMORY[0x277D84F90];
      v75 = &unk_281335000;
      v141 = xmmword_223A23280;
      v143 = v11;
      v76 = v135;
      v144 = v73;
      v147 = v72;
      do
      {
        v148 = v60;
        (v71)(v76, v74, v11);
        v82 = v146;
        (v71)(v146, v76, v11);
        v83 = type metadata accessor for DurationSummaryWorker.DynamicSummaryConfig(0);
        v84 = *(v83 + 48);
        v85 = *(v83 + 52);
        v86 = swift_allocObject();
        v87 = v75[313];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BF8, &unk_223A237B0);
        inited = swift_initStackObject();
        *(inited + 16) = v141;
        *(inited + 32) = MEMORY[0x277D84F98];
        v89 = inited + 32;
        v90 = sub_2239D53AC(inited);
        swift_setDeallocating();
        sub_2239CDCEC(v89, &qword_27D0A4BB8, &qword_223A23778);
        *(v86 + v87) = v90;
        v91 = sub_223A20790();
        if (v91)
        {
          v92 = v91;
          v93 = v144;
          (v144)(v86 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_summaryConfig, v82, v11);
          *(v86 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys) = v92;
          v94 = sub_223A207C0();
          v95 = *v145;
          (*v145)(v82, v11);
          v96 = (v95)(v76, v11);
          *(v86 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_requiredDynamicCreationKeyValues) = v94;
          MEMORY[0x223DF0440](v96);
          v71 = v93;
          if (*((v152[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v97 = *((v152[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_223A213A0();
          }

          sub_223A213D0();
          v140 = v152[0];
          v81 = v148;
          v75 = &unk_281335000;
        }

        else
        {
          v77 = *v145;
          (*v145)(v82, v11);
          v77(v76, v11);
          v75 = &unk_281335000;
          v78 = *(v86 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_seenKeyValueCombinations);

          v79 = *(*v86 + 48);
          v80 = *(*v86 + 52);
          swift_deallocPartialClassInstance();
          v81 = v148;
          v71 = v144;
        }

        v74 = &v142[v74];
        v60 = v81 - 1;
        v11 = v143;
      }

      while (v60);

      v70 = v134;
      v98 = v140;
    }

    else
    {

      v98 = MEMORY[0x277D84F90];
    }

    v35 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs;
    v2 = v137;
    *(v137 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs) = v98;
    swift_beginAccess();
    v99 = *(v2 + v70);
    v11 = v138;
    v4 = v129;
    if (!(v99 >> 62))
    {
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(v11);
        return v2;
      }

      goto LABEL_40;
    }

LABEL_53:
    if (sub_223A21780())
    {
      goto LABEL_48;
    }

LABEL_40:
    v100 = *(v2 + v35);
    if (v100 >> 62)
    {
      if (v100 < 0)
      {
        v119 = *(v2 + v35);
      }

      v101 = sub_223A21780();
    }

    else
    {
      v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v102 = v128;
    v103 = v126;
    if (v101)
    {
      goto LABEL_48;
    }

    (*(v126 + 16))(v128, v2 + v136, v4);
    sub_2239C8DE4(v11, v152);
    sub_2239C8DE4(v11, v150);
    v104 = sub_223A20FB0();
    v105 = sub_223A214D0();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v149 = v107;
      *v106 = 134218243;
      __swift_project_boxed_opaque_existential_1(v152, v153);
      v108 = v102;
      v109 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v152);
      *(v106 + 4) = v109;
      *(v106 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      sub_223A20960();
      v110 = sub_223A20EB0();
      v112 = v111;
      __swift_destroy_boxed_opaque_existential_0(v150);
      v113 = sub_2239E1910(v110, v112, &v149);

      *(v106 + 14) = v113;
      _os_log_impl(&dword_2239C7000, v104, v105, "No matching summary configs. { reporterID=%lld, serviceType=%{private}s }", v106, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x223DF1300](v107, -1, -1);
      MEMORY[0x223DF1300](v106, -1, -1);

      (*(v103 + 8))(v108, v129);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v152);

      (*(v103 + 8))(v102, v4);
      __swift_destroy_boxed_opaque_existential_0(v150);
    }

    goto LABEL_47;
  }

  v120 = v137;
  v121 = v137[3];

  (*(v131 + 8))(v120 + v133, v132);
  __swift_destroy_boxed_opaque_existential_0((v120 + v130));
  v122 = *(v120 + v127);

  (*(v126 + 8))(v120 + v136, v129);
  v123 = *(*v120 + 48);
  v124 = *(*v120 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_2239D4EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
    v8 = sub_223A217C0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2239D8C48(v10, v6, &qword_27D0A4B88, &qword_223A237C0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2239CDC74(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_223A20680();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

BOOL sub_2239D50EC(uint64_t a1, void *a2)
{
  v3 = sub_223A20B00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A206E0();
  v8 = sub_223A20AF0();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 0x10000) != 0)
  {
    return 1;
  }

  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_223A20960() == v8;
}

uint64_t sub_2239D5230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_223A207D0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  sub_2239C8DE4(a2, v16);
  v11 = type metadata accessor for DurationSummaryState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = sub_2239CC684(v9, v16, 0);
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for DurationSummaryState()
{
  result = qword_281333090;
  if (!qword_281333090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239D53AC(uint64_t a1)
{
  v76 = sub_223A20680();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
    v13 = sub_223A216D0();
    v14 = 0;
    v65 = a1 + 32;
    v68 = v2 + 16;
    v74 = (v2 + 32);
    v70 = v2;
    v71 = (v2 + 8);
    v69 = v9;
    v72 = v11;
    v62 = v12;
    v64 = v13;
    v63 = v13 + 7;
    while (1)
    {
      v15 = *(v65 + 8 * v14);
      v66 = v14 + 1;
      v16 = v13[5];
      sub_223A21940();
      v17 = *(v15 + 64);
      v67 = v15 + 64;
      v18 = 1 << *(v15 + 32);
      v19 = v18 < 64 ? ~(-1 << v18) : -1;
      v20 = v19 & v17;
      v21 = (v18 + 63) >> 6;
      v73 = v15;
      swift_bridgeObjectRetain_n();
      v22 = 0;
      v77 = 0;
      if (!v20)
      {
        break;
      }

      while (1)
      {
        v23 = v22;
LABEL_17:
        v26 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v27 = v26 | (v23 << 6);
        v28 = (*(v73 + 48) + 16 * v27);
        v29 = *v28;
        v30 = v28[1];
        v31 = v70;
        v32 = v75;
        v33 = v76;
        (*(v70 + 16))(v75, *(v73 + 56) + *(v70 + 72) * v27, v76);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v35 = *(v34 + 48);
        v36 = v69;
        *v69 = v29;
        *(v36 + 1) = v30;
        v37 = v32;
        v9 = v36;
        (*(v31 + 32))(&v36[v35], v37, v33);
        (*(*(v34 - 8) + 56))(v9, 0, 1, v34);

        v25 = v23;
LABEL_18:
        v38 = v72;
        sub_2239CE130(v9, v72, &qword_27D0A4BC0, &unk_223A23780);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
        {
          break;
        }

        v40 = *(v39 + 48);
        v41 = *v38;
        v42 = v38[1];
        v43 = v38 + v40;
        v44 = v75;
        v45 = v76;
        (*v74)(v75, v43, v76);
        v80 = v85;
        v81 = v86;
        v82 = v87;
        v78 = v83;
        v79 = v84;
        sub_223A21290();

        sub_2239DD36C(&qword_27D0A4BD0);
        sub_223A211A0();
        (*v71)(v44, v45);
        v46 = sub_223A21970();
        v22 = v25;
        v77 ^= v46;
        if (!v20)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x223DF0A30](v77);
      result = sub_223A21970();
      v13 = v64;
      v49 = ~(-1 << *(v64 + 32));
      v50 = result & v49;
      v51 = (result & v49) >> 6;
      v52 = v63;
      v53 = v63[v51];
      v54 = 1 << (result & v49);
      if ((v54 & v53) != 0)
      {
        v55 = v62;
        while (1)
        {
          v56 = *(v13[6] + 8 * v50);

          v58 = sub_223A07A68(v57, v73);

          if (v58)
          {
            break;
          }

          v50 = (v50 + 1) & v49;
          v51 = v50 >> 6;
          v53 = v52[v50 >> 6];
          v54 = 1 << v50;
          if (((1 << v50) & v53) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v55 = v62;
LABEL_28:
        v52[v51] = v54 | v53;
        *(v13[6] + 8 * v50) = v73;
        v59 = v13[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          __break(1u);
          return result;
        }

        v13[2] = v61;
      }

      v14 = v66;
      if (v66 == v55)
      {
        return v13;
      }
    }

LABEL_10:
    if (v21 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v21;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        (*(*(v47 - 8) + 56))(v9, 1, 1, v47);
        v20 = 0;
        goto LABEL_18;
      }

      v20 = *(v67 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2239D59F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = PowerLogWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t PowerLogWorker.init(with:)(uint64_t *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 72) = 60;
  *(v1 + 80) = 28;
  *(v1 + 82) = 0;
  sub_223A20F80();
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
  type metadata accessor for PowerLogWorker.RMSState();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0xE000000000000000;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v1 + v3) = v4;
  *(v4 + 80) = 0;
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  v6 = *MEMORY[0x277CEFA00];
  v7 = sub_223A20BC0();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  sub_2239C8DE4(a1, v1 + 24);
  sub_223A20A50();
  sub_223A20A60();
  sub_223A20A40();

  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v11 == 1)
  {
    v8 = 1800;
  }

  else
  {
    v8 = v10;
  }

  *(v1 + 64) = v8;
  return v1;
}

uint64_t sub_2239D5C04@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AdaptiveVolumeWorker();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_223A20F50();
  *(v7 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted) = 0;
  *(v7 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession) = 0;
  *(v7 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart) = 0;
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v9 = *MEMORY[0x277CEF9C8];
  v10 = sub_223A20BC0();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *(v7 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields) = 0;
  result = sub_2239CB264(a1, v7 + 16);
  *a2 = v7;
  return result;
}

uint64_t type metadata accessor for AdaptiveVolumeWorker()
{
  result = qword_281333F80;
  if (!qword_281333F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239D5D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceSummaryState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SessionSummaryWorker.process(message:)()
{
  v0 = sub_223A20CA0();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v35 - v11);
  v13 = sub_223A20B90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20C40();
  (*(v14 + 104))(v17, *MEMORY[0x277CEF918], v13);
  sub_223A21150();

  (*(v14 + 8))(v17, v13);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2239C9F88(v12);
LABEL_8:
    v19 = v38;
    goto LABEL_9;
  }

  if ((*(v5 + 88))(v12, v4) != *MEMORY[0x277CEF858])
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_8;
  }

  result = (*(v5 + 96))(v12, v4);
  v19 = v38;
  if (*v12 > 0.0)
  {
    *(v38 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) = *v12 + *(v38 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime);
    v20 = *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount) = v22;
  }

LABEL_9:
  v23 = sub_223A20C40();
  if (!*(v23 + 16) || (v24 = sub_2239CDC74(0x79745F6575737369, 0xEA00000000006570), (v25 & 1) == 0))
  {

    goto LABEL_16;
  }

  (*(v5 + 16))(v8, *(v23 + 56) + *(v5 + 72) * v24, v4);

  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277CEF860])
  {
    result = (*(v5 + 8))(v8, v4);
    goto LABEL_16;
  }

  (*(v5 + 96))(v8, v4);
  if (*v8 == 0x64616F6C7265766FLL && v8[1] == 0xE800000000000000)
  {
  }

  else
  {
    v31 = v8[1];
    v32 = sub_223A218F0();

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v33 = *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount);
  v21 = __CFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount) = v34;
  result = sub_223A13E5C();
LABEL_16:
  v26 = *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount);
  v21 = __CFADD__(v26, 1);
  v27 = v26 + 1;
  if (v21)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount) = v27;
  sub_223A20CE0();
  v28 = sub_223A20C70();
  result = (*(v36 + 8))(v3, v37);
  if (v28)
  {
    return result;
  }

  v29 = *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
  v21 = __CFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
    goto LABEL_26;
  }

  *(v19 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount) = v30;
  return result;
}

uint64_t sub_2239D62FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2239D635C()
{
  result = sub_2239D6410();
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) = 1;
      if (qword_27D0A47D8 != -1)
      {
        result = swift_once();
      }

      if (qword_27D0A4E18)
      {
        result = sub_2239F0F2C();
      }
    }

    v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation;
    if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation) & 1) == 0)
    {
      result = sub_2239F97E0();
      *(v0 + v2) = result & 1;
    }
  }

  return result;
}

uint64_t sub_2239D6410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (v23 - v2);
  v4 = sub_223A20B90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20C40();
  (*(v5 + 104))(v8, *MEMORY[0x277CEF900], v4);
  sub_223A21150();

  (*(v5 + 8))(v8, v4);
  v9 = sub_223A20680();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_2239C9F88(v3);
  }

  else if ((*(v10 + 88))(v3, v9) == *MEMORY[0x277CEF860])
  {
    (*(v10 + 96))(v3, v9);
    v12 = *v3;
    v11 = v3[1];
    if (qword_281332B28 != -1)
    {
LABEL_14:
      swift_once();
    }

    v13 = qword_2813359C0;
    v14 = qword_2813359C0 + 40;
    v15 = -*(qword_2813359C0 + 16);
    v16 = -1;
    while (v15 + v16 != -1)
    {
      if (++v16 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v17 = v14 + 16;
      v20 = v14 - 8;
      v18 = *(v14 - 8);
      v19 = *(v20 + 8);
      v23[2] = v12;
      v23[3] = v11;
      v23[0] = v18;
      v23[1] = v19;
      sub_2239D1804();
      v21 = sub_223A21630();
      v14 = v17;
      if (v21)
      {

        return 1;
      }
    }
  }

  else
  {
    (*(v10 + 8))(v3, v9);
  }

  return 0;
}

uint64_t DurationSummaryWorker.process(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223A20D20();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A20CA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  sub_223A20CE0();
  LOBYTE(a1) = sub_223A20C70();
  result = (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    v14 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs);
    v15 = v2;
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v43 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs);
      }

      result = sub_223A21780();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result)
    {
      v53 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session;
      v17 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;

      v18 = 0;
      v19 = v53;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DF07F0](v18, v14);
        }

        else
        {
          v20 = *(v14 + 8 * v18 + 32);
        }

        if (sub_223A081B8(v54, v15 + v16))
        {
          swift_beginAccess();

          MEMORY[0x223DF0440](v21);
          if (*((*(v15 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_223A213A0();
          }

          sub_223A213D0();
          swift_endAccess();

          v19 = v53;
        }

        else
        {
        }

        ++v18;
      }

      while (v19 != v18);
    }

    v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;
    v23 = swift_beginAccess();
    v24 = *(v15 + v22);
    MEMORY[0x28223BE20](v23);
    v25 = v54;
    *(&v44 - 2) = v54;

    v26 = sub_2239D30EC(sub_2239D32A8, &v44 - 4, v24);
    MEMORY[0x28223BE20](v26);
    *(&v44 - 2) = v25;
    v27 = sub_2239CE3F4(sub_2239D8BA4, (&v44 - 4), v26);

    v45 = v27;
    v29 = v27[2];
    if (v29)
    {
      v30 = *(v49 + 16);
      v31 = v15;
      v32 = v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v33 = (v31 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session);
      v50 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
      v51 = v31;
      v34 = *(v49 + 72);
      v53 = (v49 + 8);
      v54 = v34;
      *&v28 = 134217984;
      v46 = v28;
      v35 = v48;
      v36 = v52;
      v49 += 16;
      v47 = v30;
      v30(v52, v32, v48);
      while (1)
      {
        v37 = v33[4];
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        if ((sub_223A20980() & 1) == 0)
        {

          v38 = sub_223A20FB0();
          v39 = sub_223A214E0();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = v46;
            v41 = v33[4];
            __swift_project_boxed_opaque_existential_1(v33, v33[3]);
            v35 = v48;
            *(v40 + 4) = sub_223A20950();

            _os_log_impl(&dword_2239C7000, v38, v39, "Summary message dropped { reporterID=%lld }", v40, 0xCu);
            v42 = v40;
            v30 = v47;
            MEMORY[0x223DF1300](v42, -1, -1);
          }

          else
          {
          }

          v36 = v52;
        }

        (*v53)(v36, v35);
        v32 += v54;
        if (!--v29)
        {
          break;
        }

        v30(v36, v32, v35);
      }
    }
  }

  return result;
}

uint64_t sub_2239D6C54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D18, "R;");
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2239D17A8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2239DA0A8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2239DA0A8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2239DA0A8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_223A21680();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2239DA0A8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void RTCWorker.process(message:)()
{
  v1 = v0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v2 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = (&v77 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v77 - v6;
  v8 = sub_223A20D20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223A20CA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  if (*(v1 + v18) != 1 || (v19 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted), v83 = v14, (v19 & 1) == 0) && (sub_2239E7000(), v14 = v83, *(v1 + v18) != 1) || !*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting))
  {

    v25 = sub_223A20FB0();
    v26 = sub_223A214D0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v27 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v25, v26, "Failed to process message, RTC not started. { reporterID=%lld }", v27, 0xCu);
      MEMORY[0x223DF1300](v27, -1, -1);
    }

    else
    {

LABEL_12:
    }

    return;
  }

  v82 = v8;
  sub_223A20CE0();
  v20 = sub_223A20C70();
  v21 = *(v14 + 8);
  v21(v17, v13);
  if (v20)
  {
    return;
  }

  sub_223A20CE0();
  v22 = sub_223A20C80();
  v21(v17, v13);
  if ((v22 & 1) == 0)
  {
    return;
  }

  v23 = sub_223A20C40();
  v81 = sub_223A133C8(v23);

  sub_223A20CC0();
  sub_223A20C20();
  sub_223A20CE0();
  (*(v83 + 56))(v7, 0, 1, v13);
  sub_223A20CB0();
  sub_2239D7728(v12);
  v24 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
  if (sub_223A20940())
  {
    (*(v9 + 8))(v12, v82);
    return;
  }

  v77 = v12;
  v29 = sub_223A20C40();

  v30 = sub_2239D8464(v29, v1);

  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v83 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents;
  v35 = (v32 + 63) >> 6;
  v81 = v30;

  v36 = 0;
  v37 = v82;
  v79 = v9;
  v80 = v30 + 64;
  v78 = v35;
  while (v34)
  {
LABEL_24:
    v41 = __clz(__rbit64(v34)) | (v36 << 6);
    v42 = *(v81 + 56);
    v43 = (*(v81 + 48) + 16 * v41);
    v44 = *v43;
    v45 = v43[1];
    v46 = sub_223A20680();
    v47 = *(v46 - 8);
    v48 = v42 + *(v47 + 72) * v41;
    v49 = v85;
    (*(v47 + 16))(v85 + *(v84 + 48), v48, v46);
    *v49 = v44;
    v49[1] = v45;

    sub_223A20670();
    v50 = sub_223A21240();
    v52 = v51;
    v53 = v83;
    swift_beginAccess();
    v54 = *(v1 + v53);
    v55 = v44;
    if (*(v54 + 16) && (v56 = sub_2239CDC74(v44, v45), (v57 & 1) != 0))
    {
      v58 = *(*(v54 + 56) + 8 * v56);
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
    }

    swift_endAccess();
    v59 = sub_2239D7C90(v50, v52, v58, v55, v45);

    v60 = v83;
    swift_beginAccess();

    v61 = *(v1 + v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v1 + v60);
    v63 = v86;
    *(v1 + v60) = 0x8000000000000000;
    v65 = sub_2239CDC74(v55, v45);
    v66 = v63[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_41;
    }

    v69 = v64;
    if (v63[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v72 = v86;
        if (v64)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_223A09DD0();
        v72 = v86;
        if (v69)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2239DA0B8(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_2239CDC74(v55, v45);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_43;
      }

      v65 = v70;
      v72 = v86;
      if (v69)
      {
LABEL_17:
        v38 = v72[7];
        v39 = *(v38 + 8 * v65);
        *(v38 + 8 * v65) = v59;

        goto LABEL_18;
      }
    }

    v72[(v65 >> 6) + 8] |= 1 << v65;
    v73 = (v72[6] + 16 * v65);
    *v73 = v55;
    v73[1] = v45;
    *(v72[7] + 8 * v65) = v59;
    v74 = v72[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_42;
    }

    v72[2] = v76;
LABEL_18:
    v35 = v78;
    v9 = v79;
    v34 &= v34 - 1;
    v37 = v82;
    *(v1 + v83) = v72;
    swift_endAccess();
    sub_2239CDCEC(v85, &qword_27D0A4B60, &qword_223A23760);
    v31 = v80;
  }

  while (1)
  {
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v40 >= v35)
    {

      (*(v9 + 8))(v77, v37);
      goto LABEL_12;
    }

    v34 = *(v31 + 8 * v40);
    ++v36;
    if (v34)
    {
      v36 = v40;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_223A21910();
  __break(1u);
}

void sub_2239D7728(uint64_t a1)
{
  v2 = v1;
  v54 = *MEMORY[0x277D85DE8];
  v4 = sub_223A20D20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  if (*(v2 + v9) == 1 && (v10 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting)) != 0)
  {
    (*(v5 + 16))(v8, a1, v4);
    v11 = v10;
    v12 = sub_223A20CC0();
    sub_223A20E80();
    v13 = sub_223A20C20();
    if ((sub_223A208C0() & 1) == 0)
    {
      sub_223A20D00();
      v15 = v14;
      v16 = sub_223A12408();
      v50 = v16;
      v51 = v17 & 1;
      v19 = v18;
      if (v20)
      {
        v19 = v15;
      }

      v52 = v19;
      v53 = 0;
      v21 = sub_2239C9920(v16, 0.0, 500.0);
      sub_223A1283C(v21);
      v22 = v51;
      v23 = v52;
      v24 = v53;
      v25 = v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer;
      *v25 = v50;
      *(v25 + 8) = v22;
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      sub_223A20D10();
    }

    v26 = sub_223A20C10();
    sub_2239D6C54(v26);

    v27 = sub_223A21100();

    v50 = 0;
    v28 = [v11 sendMessageWithCategory:v12 type:v13 payload:v27 error:&v50];

    if (v28)
    {
      v29 = *(v5 + 8);
      v30 = v50;
      v29(v8, v4);
    }

    else
    {
      v35 = v50;
      v36 = sub_223A202A0();

      swift_willThrow();

      v37 = v36;
      v38 = sub_223A20FB0();
      v39 = sub_223A214E0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v40 = 134218243;
        v49 = v11;
        v41 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
        HIDWORD(v47) = v39;
        *(v40 + 4) = sub_223A20950();

        *(v40 + 12) = 2081;
        swift_getErrorValue();
        v42 = sub_223A21920();
        v44 = sub_2239E1910(v42, v43, &v50);

        *(v40 + 14) = v44;
        _os_log_impl(&dword_2239C7000, v38, BYTE4(v47), "Error sending message { reporterID=%lld, error=%{private}s }", v40, 0x16u);
        v45 = v48;
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x223DF1300](v45, -1, -1);
        MEMORY[0x223DF1300](v40, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {

    v31 = sub_223A20FB0();
    v32 = sub_223A214E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v33 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v31, v32, "Failed to send message, RTCReporting object not found. { reporterID=%lld }", v33, 0xCu);
      MEMORY[0x223DF1300](v33, -1, -1);
    }

    else
    {
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

char *sub_2239D7C90(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v13 = sub_223A20D80();
  v14 = sub_2239D884C(a4, a5, v13);

  if ((v14 & 1) == 0)
  {
    v39[0] = a1;
    v39[1] = a2;
    MEMORY[0x28223BE20](v15);
    v37[2] = v39;
    if (sub_2239CF3F4(sub_2239D9880, v37, a3))
    {

      return a3;
    }

    v20 = sub_2239D8250(v19);

    v40 = v20;

    sub_2239D8100(v39, a1, a2);

    v21 = sub_223A20D90();
    LOBYTE(v20) = sub_2239D884C(a4, a5, v21);

    v22 = v40;
    if (v20)
    {
      v6 = *(v40 + 16);
      if (!v6)
      {
        goto LABEL_20;
      }

      v23 = sub_2239D83E0(*(v40 + 16), 0);
      v24 = sub_2239D86F4(v39, v23 + 4, v6, v22);
      v12 = v39[3];

      sub_2239D80FC();
      if (v24 == v6)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v25 = *(v22 + 16);
    if (sub_223A20D50() >= v25)
    {
LABEL_17:
      v29 = *(v22 + 16);
      if (v29)
      {
        v23 = sub_2239D83E0(*(v22 + 16), 0);
        v30 = sub_2239D86F4(v39, v23 + 4, v29, v22);

        sub_2239D80FC();
        if (v30 != v29)
        {
          __break(1u);
          goto LABEL_20;
        }

LABEL_21:
        v39[0] = v23;
        sub_2239D8090(v39);

        return v39[0];
      }

LABEL_20:
      v23 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }

    v26 = *(v22 + 16);
    if (v26)
    {
      v27 = sub_2239D83E0(*(v22 + 16), 0);
      v28 = sub_2239D86F4(v39, v27 + 4, v26, v22);
      v37[5] = v39[2];
      v38 = v28;

      sub_2239D80FC();
      if (v38 != v26)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v39[0] = v27;
    sub_2239D8090(v39);

    a3 = v39[0];

    v31 = &v12[v6];
    v32 = sub_223A20D50();
    if (v32 < 0)
    {
      __break(1u);
    }

    else
    {
      v31 = v32;
      v33 = *(a3 + 2);

      if (v33 >= v31)
      {
        if (*(a3 + 2) == v31)
        {
          return a3;
        }

LABEL_29:
        sub_2239DA624(a3, (a3 + 32), 0, (2 * v31) | 1);
        v36 = v35;

        return v36;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a3 = sub_2239E1804(0, *(a3 + 2) + 1, 1, a3);
  }

  v17 = *(a3 + 2);
  v16 = *(a3 + 3);
  if (v17 >= v16 >> 1)
  {
    a3 = sub_2239E1804((v16 > 1), v17 + 1, 1, a3);
  }

  *(a3 + 2) = v17 + 1;
  v18 = &a3[16 * v17];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  return a3;
}

uint64_t sub_2239D8090(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223A075EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2239D82E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2239D8100(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_223A21940();
  sub_223A21290();
  v9 = sub_223A21970();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_223A218F0() & 1) != 0)
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

    sub_2239D96A8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2239D8250(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DF0570](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2239D8100(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2239D82E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_223A218D0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_223A213C0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_223A069E4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2239D8624(0, v2, 1, a1);
  }

  return result;
}

void *sub_2239D83E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2239D8464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_223A137DC(v14, v8, a1, a2);
      MEMORY[0x223DF1300](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_2239D9C20((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2239D8624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_223A218F0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2239D86F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2239D884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_223A21940();
  sub_223A21290();
  v7 = sub_223A21970();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_223A218F0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2239D8944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B78, &qword_223A23728);
  result = sub_223A216C0();
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
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
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

void sub_2239D8BA4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  sub_2239CE9AC(v3, a2);
}

uint64_t sub_2239D8BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D8C48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2239D8CB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_223A20D20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  sub_2239D8C48(v1 + v11, v5, &qword_27D0A4B38, " >");
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v16 = &unk_281335000;
    if (sub_223A208C0())
    {
      sub_223A20D00();
      if (v17 < *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp))
      {
        v18 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messagesOutOfOrder);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return;
        }

        *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messagesOutOfOrder) = v20;
        v21 = sub_223A20740();
        v22 = MEMORY[0x223DEFFA0](v21);
        v24 = v23;
        v25 = sub_223A20FB0();
        v26 = sub_223A214D0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v33 = v28;
          *v27 = 136380675;
          v29 = sub_2239E1910(v22, v24, &v33);

          *(v27 + 4) = v29;
          _os_log_impl(&dword_2239C7000, v25, v26, "MESSAGES ARRIVED OUT OF ORDER! message.timestamp < mostRecentTimestamp { category=%{private}s }", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x223DF1300](v28, -1, -1);
          v30 = v27;
          v16 = &unk_281335000;
          MEMORY[0x223DF1300](v30, -1, -1);
        }

        else
        {
        }
      }
    }

    sub_223A20D00();
    v32 = v31;
    (*(v7 + 8))(v10, v6);
    *(v1 + v16[323]) = v32;
    return;
  }

  sub_2239CDCEC(v5, &qword_27D0A4B38, " >");

  v12 = sub_223A20FB0();
  v13 = sub_223A214E0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
    *(v14 + 4) = sub_223A20950();

    _os_log_impl(&dword_2239C7000, v12, v13, "updateMostRecentTimestamp() called with currentMessage==nil { reporterID=%lld }", v14, 0xCu);
    MEMORY[0x223DF1300](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2239D9090(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2239D8100(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2239D9194(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_223A20680();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
  v46 = a2;
  result = sub_223A217B0();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2239D9514()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v12[-v7];
  if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
    swift_beginAccess();
    sub_2239D8C48(v0 + v9, v8, &qword_27D0A4B38, " >");
    v10 = sub_223A20D20();
    v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
    sub_2239CDCEC(v8, &qword_27D0A4B38, " >");
    if (v11 == 1 || (result = sub_2239DCB60(), (result & 1) != 0))
    {
      sub_223A037BC(v5);
      swift_beginAccess();
      sub_2239D8BD8(v5, v0 + v9);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_2239D96A8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2239D8944(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_223A05DBC();
      goto LABEL_16;
    }

    sub_2239DA3EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_223A21940();
  sub_223A21290();
  result = sub_223A21970();
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

      result = sub_223A218F0();
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
  result = sub_223A21900();
  __break(1u);
  return result;
}

uint64_t sub_2239D9828(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_223A218F0() & 1;
  }
}

uint64_t sub_2239D98A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_223A20680();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
  result = sub_223A217C0();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_223A21940();

    v54 = v28;
    sub_223A21290();
    result = sub_223A21970();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

uint64_t sub_2239D9C20(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a4;
  v42[0] = a2;
  v43 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v7 = v42 - v6;
  v8 = sub_223A20680();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v14 = 0;
  v56 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v49 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v50 = v13;
  v21 = (v18 + 63) >> 6;
  v47 = v11 + 16;
  v48 = v21;
  v51 = v11;
  v52 = result;
  v45 = (v11 + 8);
  v46 = v16;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v57 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v14 << 6);
    v26 = v56[7];
    v27 = (v56[6] + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(v51 + 72);
    v55 = v25;
    v31 = *(v51 + 16);
    v31(v13, v26 + v30 * v25, v8);
    *v7 = v29;
    *(v7 + 1) = v28;
    v31(&v7[*(v53 + 48)], v13, v8);
    swift_bridgeObjectRetain_n();
    v32 = sub_223A20D70();
    v33 = v32;
    if (*(v32 + 16) && (v34 = *(v32 + 40), sub_223A21940(), sub_223A21290(), v35 = sub_223A21970(), v36 = -1 << *(v33 + 32), v37 = v35 & ~v36, ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
    {
      v38 = ~v36;
      while (1)
      {
        v39 = (*(v33 + 48) + 16 * v37);
        v40 = *v39 == v29 && v39[1] == v28;
        if (v40 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }

        v37 = (v37 + 1) & v38;
        if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      sub_2239CDCEC(v7, &qword_27D0A4B60, &qword_223A23760);
      v13 = v50;
      v8 = v52;
      (*v45)(v50, v52);

      v21 = v48;
      v16 = v46;
      v20 = v57;
    }

    else
    {
LABEL_22:

      sub_2239CDCEC(v7, &qword_27D0A4B60, &qword_223A23760);
      v13 = v50;
      v8 = v52;
      (*v45)(v50, v52);

      *(v43 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v41 = __OFADD__(v44++, 1);
      v21 = v48;
      v16 = v46;
      v20 = v57;
      if (v41)
      {
        __break(1u);
        return sub_2239D98A0(v43, v42[0], v44, v56);
      }
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_2239D98A0(v43, v42[0], v44, v56);
    }

    v24 = v16[v14];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v57 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2239DA050(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_223A218F0() & 1;
  }
}

_OWORD *sub_2239DA0A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2239DA0B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C30, &qword_223A23928);
  v38 = a2;
  result = sub_223A217B0();
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
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
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

uint64_t sub_2239DA360@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DA3EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B78, &qword_223A23728);
  result = sub_223A216C0();
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
      sub_223A21940();

      sub_223A21290();
      result = sub_223A21970();
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

void sub_2239DA624(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2239DA6FC()
{
  v81 = sub_223A20B90();
  v84 = *(v81 - 8);
  v1 = *(v84 + 64);
  MEMORY[0x28223BE20](v81);
  v83 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_223A20D20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v80 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = v67 - v18;
  v85 = sub_223A20680();
  v87 = *(v85 - 8);
  v19 = *(v87 + 64);
  v20 = MEMORY[0x28223BE20](v85);
  v22 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v67 - v23;
  v25 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  sub_2239D8C48(v0 + v25, v12, &qword_27D0A4B38, " >");
  v26 = v4;
  v27 = *(v4 + 48);
  v28 = v3;
  v29 = v3;
  v30 = v27;
  if (v27(v12, 1, v29))
  {
    sub_2239CDCEC(v12, &qword_27D0A4B38, " >");
    v31 = v86;
    (*(v87 + 56))(v86, 1, 1, v85);
LABEL_4:
    v44 = v31;
    return sub_2239CDCEC(v44, &qword_27D0A4928, &qword_223A22B40);
  }

  v75 = v30;
  v77 = v17;
  v68 = v22;
  v78 = v0;
  v79 = v24;
  v32 = *(v26 + 16);
  v33 = v82;
  v74 = v26 + 16;
  v73 = v32;
  v32(v82, v12, v28);
  sub_2239CDCEC(v12, &qword_27D0A4B38, " >");
  sub_223A20C40();
  v35 = *(v26 + 8);
  v34 = v26 + 8;
  v76 = v28;
  v72 = v35;
  v35(v33, v28);
  v36 = *MEMORY[0x277CEF960];
  v38 = v83;
  v37 = v84;
  v39 = v81;
  v71 = *(v84 + 104);
  v71(v83, v36, v81);
  v31 = v86;
  sub_223A21150();

  v41 = *(v37 + 8);
  v40 = v37 + 8;
  v70 = v41;
  v41(v38, v39);
  v42 = v87;
  v43 = v85;
  v69 = *(v87 + 48);
  if (v69(v31, 1, v85) == 1)
  {
    goto LABEL_4;
  }

  v67[1] = v34;
  v84 = v40;
  v46 = *(v42 + 32);
  v47 = v79;
  v48 = v43;
  v46(v79, v31);
  v49 = v78 + v25;
  v50 = v80;
  sub_2239D8C48(v49, v80, &qword_27D0A4B38, " >");
  v51 = v76;
  if (v75(v50, 1, v76))
  {
    (*(v42 + 8))(v47, v43);
    sub_2239CDCEC(v50, &qword_27D0A4B38, " >");
    v52 = v77;
    (*(v42 + 56))(v77, 1, 1, v43);
LABEL_10:
    v44 = v52;
    return sub_2239CDCEC(v44, &qword_27D0A4928, &qword_223A22B40);
  }

  v86 = v46;
  v53 = v50;
  v54 = v82;
  v73(v82, v53, v51);
  sub_2239CDCEC(v53, &qword_27D0A4B38, " >");
  sub_223A20C40();
  v72(v54, v51);
  v55 = v83;
  v56 = v81;
  v71(v83, *MEMORY[0x277CEF988], v81);
  v52 = v77;
  sub_223A21150();

  v70(v55, v56);
  if (v69(v52, 1, v48) == 1)
  {
    (*(v87 + 8))(v79, v48);
    goto LABEL_10;
  }

  v57 = v68;
  (v86)(v68, v52, v48);
  v58 = v79;
  sub_223A20670();
  if (swift_dynamicCast())
  {
    v60 = v88;
    v59 = v89;
    sub_223A20670();
    if (swift_dynamicCast())
    {
      v61 = v88;
      v62 = v89;
      v90 = v60;
      v91 = v59;
      MEMORY[0x223DF0390](58, 0xE100000000000000);
      MEMORY[0x223DF0390](v61, v62);

      v63 = v90;
      v64 = v91;
      swift_beginAccess();
      sub_2239D8100(&v88, v63, v64);
      swift_endAccess();
    }

    v65 = *(v87 + 8);
    v65(v57, v48);
    return (v65)(v79, v48);
  }

  else
  {
    v66 = *(v87 + 8);
    v66(v57, v48);
    return (v66)(v58, v48);
  }
}

char *sub_2239DAF30()
{
  v1 = v0;
  v36 = sub_223A20680();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
  v4 = *v0;
  v5 = sub_223A217A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2239DB1B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DB23C()
{
  v1 = v0;
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if ((vmaxv_u16(vceq_s16(qword_2837028C0, vdup_n_s16(sub_223A20960()))) & 1) == 0)
  {
    return 0;
  }

  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2239C7000, v3, v4, "Matched service, starting Adaptive Volume worker!", v5, 2u);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  swift_beginAccess();
  *(v1 + v6) = 1;
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
    swift_beginAccess();
    if ((*(v1 + v8) & 1) == 0)
    {

      v9 = sub_223A20FB0();
      v10 = sub_223A214D0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        v12 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        *(v11 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v9, v10, "Found AV device, starting AV session. { reporterID=%lld }", v11, 0xCu);
        MEMORY[0x223DF1300](v11, -1, -1);
      }

      else
      {
      }

      if (qword_27D0A47C0 != -1)
      {
        swift_once();
      }

      v14 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      v15 = sub_223A20950();
      v16 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      v17 = sub_223A209C0();
      sub_2239ECD44(v15, v17, v18);

      *(v1 + v8) = 1;
    }
  }

  return *(v1 + v6);
}

uint64_t AdaptiveVolumeWorker.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

_BYTE *sub_2239DB634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  result = InferenceSummaryWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

_BYTE *InferenceSummaryWorker.init(with:)(uint64_t *a1)
{
  v2 = v1;
  v34[1] = *v1;
  v35 = a1;
  v3 = sub_223A20B90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[16] = 0;
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  v9 = *MEMORY[0x277CEF9E8];
  v10 = sub_223A20BC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 104);
  v34[0] = v8;
  v12(&v2[v8], v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D10, &unk_223A23BA0);
  v13 = *(v4 + 72);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_223A23280;
  (*(v4 + 104))(v15 + v14, *MEMORY[0x277CEF900], v3);
  v36 = MEMORY[0x277D84F90];
  sub_2239D32E0(0, 1, 0);
  v16 = v36;
  (*(v4 + 16))(v7, v15 + v14, v3);

  v17 = sub_223A20B80();
  v19 = v18;
  (*(v4 + 8))(v7, v3);
  v36 = v16;
  v21 = *(v16 + 16);
  v20 = *(v16 + 24);
  if (v21 >= v20 >> 1)
  {
    sub_2239D32E0((v20 > 1), v21 + 1, 1);
    v16 = v36;
  }

  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields;
  *(v16 + 16) = v21 + 1;
  v23 = v16 + 16 * v21;
  *(v23 + 32) = v17;
  *(v23 + 40) = v19;
  *&v2[v22] = v16;
  v24 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_logger;
  sub_223A20F70();
  v25 = &v2[OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState];
  v25[16] = 0;
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = 0;
  *(v25 + 5) = MEMORY[0x277D84F98];
  *(v25 + 3) = 0u;
  *(v25 + 4) = 0u;
  *(v25 + 10) = 0;
  *(v25 + 11) = 0xD000000000000026;
  *(v25 + 12) = 0x8000000223A25CB0;
  v26 = type metadata accessor for InferenceSummaryState(0);
  v27 = &v25[v26[14]];
  sub_223A20F70();
  v25[v26[15]] = 0;
  v28 = &v25[v26[16]];
  *v28 = 0;
  v28[8] = 1;
  if (sub_223A208F0())
  {
    sub_2239CB264(v35, &v2[OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session]);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    (*(v11 + 8))(&v2[v34[0]], v10);
    v29 = *&v2[v22];

    v30 = sub_223A20FC0();
    (*(*(v30 - 8) + 8))(&v2[v24], v30);
    sub_2239D62FC(&v2[OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState], type metadata accessor for InferenceSummaryState);
    v31 = *(*v2 + 48);
    v32 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_2239DBA84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DBB10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DBB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_2239DBC28()
{
  if (*(v0 + 82))
  {

    oslog = sub_223A20FB0();
    v1 = sub_223A214E0();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 134217984;
      v3 = *(v0 + 56);
      __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
      *(v2 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, oslog, v1, "Failed to send Haptics message, PLClientID is nil { reporterID=%lld }", v2, 0xCu);
      MEMORY[0x223DF1300](v2, -1, -1);
LABEL_14:

      return;
    }
  }

  else
  {
    v4 = *(v0 + 80);
    if (sub_2239DBFF4())
    {
      v5 = sub_223A211F0();
      v6 = sub_223A21100();

      PLLogRegisteredEvent();
    }

    if (sub_2239DC34C())
    {
      v7 = sub_223A20FB0();
      v8 = sub_223A214D0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2239C7000, v7, v8, "Sending haptics engineStateMessage.", v9, 2u);
        MEMORY[0x223DF1300](v9, -1, -1);
      }

      v10 = sub_223A211F0();
      v11 = sub_223A21100();

      PLLogRegisteredEvent();
    }

    if (sub_2239DC814())
    {
      v12 = sub_223A20FB0();
      v13 = sub_223A214D0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2239C7000, v12, v13, "Sending haptics longRunningMessage.", v14, 2u);
        MEMORY[0x223DF1300](v14, -1, -1);
      }

      v15 = sub_223A211F0();
      oslog = sub_223A21100();

      PLLogRegisteredEvent();

      goto LABEL_14;
    }
  }
}

unint64_t sub_2239DBFF4()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_223A20C40();
  if (*(v7 + 16) && (v8 = sub_2239CDC74(0x6E4F656E69676E45, 0xEC000000656D6954), (v9 & 1) != 0))
  {
    (*(v3 + 16))(v6, *(v7 + 56) + *(v3 + 72) * v8, v2);

    v10 = sub_223A20640();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    if ((v12 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_223A224A0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000223A260F0;
      v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v15 = sub_2239DC698();
      *(inited + 48) = v14;
      *(inited + 72) = v15;
      *(inited + 80) = 0x746163696C707041;
      *(inited + 88) = 0xEF656D614E6E6F69;
      v16 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
      sub_223A20970();
      v17 = sub_223A20E50();
      v19 = v18;

      v20 = MEMORY[0x277D837D0];
      *(inited + 96) = v17;
      *(inited + 104) = v19;
      *(inited + 120) = v20;
      strcpy((inited + 128), "TimestampEnd");
      *(inited + 141) = 0;
      *(inited + 142) = -5120;
      sub_223A20D00();
      *(inited + 168) = MEMORY[0x277D839F8];
      *(inited + 144) = v21;
      v22 = sub_2239DC6E4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
      swift_arrayDestroy();
      return v22;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2239DC2C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

unint64_t sub_2239DC34C()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_223A20C40();
  if (!*(v7 + 16) || (v8 = sub_2239CDC74(0x7453656E69676E45, 0xEB00000000657461), (v9 & 1) == 0))
  {

    return 0;
  }

  (*(v3 + 16))(v6, *(v7 + 56) + *(v3 + 72) * v8, v2);

  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277CEF860])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  (*(v3 + 96))(v6, v2);
  if (*v6 == 0x6E4F656E69676E45 && v6[1] == 0xE800000000000000)
  {
    v14 = v6[1];

    v12 = 1;
  }

  else
  {
    v11 = v6[1];
    v12 = sub_223A218F0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A224A0;
  *(inited + 32) = 0x746163696C707041;
  *(inited + 40) = 0xEF656D614E6E6F69;
  v16 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  sub_223A20970();
  v17 = sub_223A20E50();
  v19 = v18;

  v20 = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 72) = v20;
  *(inited + 80) = 0x737574617453;
  *(inited + 88) = 0xE600000000000000;
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v22 = sub_2239DC698();
  *(inited + 96) = v21;
  *(inited + 120) = v22;
  strcpy((inited + 128), "TimestampEnd");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_223A20D00();
  *(inited + 168) = MEMORY[0x277D839F8];
  *(inited + 144) = v23;
  v24 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  return v24;
}

unint64_t sub_2239DC698()
{
  result = qword_2813326F8;
  if (!qword_2813326F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813326F8);
  }

  return result;
}

unint64_t sub_2239DC6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
    v3 = sub_223A217C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239D8C48(v4, &v13, &qword_27D0A48F0, &qword_223A22810);
      v5 = v13;
      v6 = v14;
      result = sub_2239CDC74(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2239DA0A8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2239DC814()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = sub_223A20C40();
  if (!*(v8 + 16) || (v9 = sub_2239CDC74(0xD000000000000023, 0x8000000223A260C0), (v10 & 1) == 0))
  {

    return 0;
  }

  v11 = *(v8 + 56);
  v30 = v1[9];
  v31 = v1[2];
  v31(v7, v11 + v30 * v9, v0);

  v12 = sub_223A20640();
  v14 = v13;
  v15 = v1[1];
  v15(v7, v0);
  if (v14)
  {
    return 0;
  }

  v16 = *&v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A23280;
  *(inited + 32) = 0xD000000000000023;
  *(inited + 40) = 0x8000000223A260C0;
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v19 = sub_2239DC698();
  *(inited + 72) = v19;
  *(inited + 48) = v18;
  v20 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  sub_2239CDCEC(inited + 32, &qword_27D0A48F0, &qword_223A22810);
  v21 = sub_223A20C40();
  if (*(v21 + 16) && (v22 = sub_2239CDC74(0x435F657669746341, 0xEE0073746E65696CLL), (v23 & 1) != 0))
  {
    v31(v5, *(v21 + 56) + v22 * v30, v0);

    v24 = sub_223A20640();
    v26 = v25;
    v15(v5, v0);
    if ((v26 & 1) == 0)
    {
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v35 = v19;
      *&v34 = v27;
      sub_2239DA0A8(&v34, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v20;
      sub_223A1301C(v33, 0x435F657669746341, 0xEE0073746E65696CLL, isUniquelyReferenced_nonNull_native);
      return v32;
    }
  }

  else
  {
  }

  return v20;
}

uint64_t sub_2239DCB60()
{
  v1 = v0;
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v58 - v12;
  v14 = sub_223A20680();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  result = sub_223A207A0();
  if (!result)
  {
    return result;
  }

  v23 = result;
  v75 = v9;
  v79 = v2;
  v59 = v19;
  v69 = v21;
  v24 = result + 64;
  v25 = 1 << *(result + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(result + 64);
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
  v78 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  v81 = v1;
  v63 = v28;
  swift_beginAccess();
  v29 = v15;
  v30 = 0;
  v31 = (v25 + 63) >> 6;
  v76 = (v29 + 56);
  v77 = (v3 + 48);
  v68 = (v3 + 16);
  v67 = (v3 + 8);
  v60 = v29 + 16;
  v66 = (v29 + 48);
  v62 = (v29 + 32);
  v61 = v29;
  v64 = (v29 + 8);
  v80 = v14;
  v73 = v24;
  v65 = v23;
  for (i = v13; v27; v24 = v73)
  {
LABEL_9:
    v33 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v34 = (*(v23 + 48) + ((v30 << 10) | (16 * v33)));
    v35 = *v34;
    v28 = v34[1];
    v36 = v75;
    v14 = " >";
    sub_2239D8C48(v81 + v78, v75, &qword_27D0A4B38, " >");
    v37 = v79;
    if ((*v77)(v36, 1, v79))
    {
      sub_2239CDCEC(v36, &qword_27D0A4B38, " >");
      v38 = i;
      (*v76)(i, 1, 1, v80);
    }

    else
    {
      v70 = v35;
      v39 = v72;
      (*v68)(v72, v36, v37);

      sub_2239CDCEC(v36, &qword_27D0A4B38, " >");
      v40 = sub_223A20C40();
      (*v67)(v39, v37);
      v41 = *(v40 + 16);
      v71 = v28;
      if (v41)
      {
        v42 = sub_2239CDC74(v70, v28);
        v38 = i;
        if (v43)
        {
          (*(v61 + 16))(i, *(v40 + 56) + *(v61 + 72) * v42, v80);
          v44 = 0;
        }

        else
        {
          v44 = 1;
        }
      }

      else
      {
        v44 = 1;
        v38 = i;
      }

      v14 = v80;
      (*v76)(v38, v44, 1, v80);
      if ((*v66)(v38, 1, v14) != 1)
      {
        (*v62)(v69, v38, v14);
        v45 = *(v81 + v63);
        v28 = v71;
        if (*(v45 + 16))
        {
          v46 = *(v81 + v63);

          v47 = sub_2239CDC74(v70, v28);
          if (v48)
          {
            v49 = v59;
            (*(v61 + 16))(v59, *(v45 + 56) + *(v61 + 72) * v47, v14);

            sub_2239DD36C(&qword_2813336F8);
            v50 = v69;
            if ((sub_223A211E0() & 1) == 0)
            {
              goto LABEL_31;
            }

            v28 = v64;
            v51 = *v64;
            (*v64)(v49, v14);
            v51(v50, v14);
            goto LABEL_27;
          }
        }

        (*v64)(v69, v14);
LABEL_27:
        v23 = v65;
        continue;
      }

      v23 = v65;
    }

    sub_2239CDCEC(v38, &qword_27D0A4928, &qword_223A22B40);
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      return 0;
    }

    v27 = *(v24 + 8 * v32);
    ++v30;
    if (v27)
    {
      v30 = v32;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:

  v52 = sub_223A20FB0();
  v53 = sub_223A214D0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v82 = v55;
    *v54 = 136446210;
    v56 = sub_2239E1910(v70, v28, &v82);

    *(v54 + 4) = v56;
    _os_log_impl(&dword_2239C7000, v52, v53, "Watched field changed. { field=%{public}s }", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223DF1300](v55, -1, -1);
    MEMORY[0x223DF1300](v54, -1, -1);
  }

  else
  {
  }

  v57 = *v64;
  (*v64)(v59, v14);
  v57(v69, v14);
  return 1;
}

uint64_t sub_2239DD36C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_223A20680();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2239DD3B0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v143 - v8;
  v10 = sub_223A20D20();
  v167 = *(v10 - 8);
  v11 = *(v167 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v143 - v16);
  v18 = sub_223A20B90();
  v164 = *(v18 - 8);
  v165 = v18;
  v19 = *(v164 + 64);
  MEMORY[0x28223BE20](v18);
  v163 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_223A20680();
  v166 = *(v170 - 8);
  v21 = v166[8];
  v22 = MEMORY[0x28223BE20](v170);
  v24 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v169 = &v143 - v27;
  MEMORY[0x28223BE20](v26);
  v168 = &v143 - v29;
  v30 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp;
  v31 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp);
  if (v31 <= 0.0 || (v32 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp, v33 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp), v33 <= 0.0))
  {

    v42 = sub_223A20FB0();
    v43 = sub_223A214D0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134218496;
      *(v44 + 4) = *(v3 + v30);
      *(v44 + 12) = 2048;
      *(v44 + 14) = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp);
      *(v44 + 22) = 2048;
      v45 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
      *(v44 + 24) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v42, v43, "invalid times { caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v44, 0x20u);
      MEMORY[0x223DF1300](v44, -1, -1);
    }

    else
    {
    }

    v46 = *(v167 + 56);

    return v46(a2, 1, 1, v10);
  }

  v148 = v28;
  v150 = v17;
  v155 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp;
  v156 = v10;
  v34 = v31 - v33;
  v35 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_logger;

  v154 = v35;
  v36 = sub_223A20FB0();
  v37 = sub_223A214D0();
  v38 = os_log_type_enabled(v36, v37);
  v147 = v9;
  v146 = v13;
  v149 = v24;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 134218752;
    *(v39 + 4) = v34;
    v40 = *(v3 + v155);
    *(v39 + 12) = 2048;
    *(v39 + 14) = v40;
    *(v39 + 22) = 2048;
    *(v39 + 24) = *(v3 + v32);
    *(v39 + 32) = 2048;
    v41 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
    *(v39 + 34) = sub_223A20950();

    _os_log_impl(&dword_2239C7000, v36, v37, "runningTime { runningTime=%f caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v39, 0x2Au);
    MEMORY[0x223DF1300](v39, -1, -1);
  }

  else
  {
  }

  v48 = v156;
  if ((a1 & 1) == 0 && (sub_223A20770(), v49 >= v34) || (v50 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues, swift_beginAccess(), v51 = *(v3 + v50), v52 = , v53 = sub_2239DE3E0(v52), , (v53 & 1) == 0))
  {

    v90 = sub_223A20FB0();
    v91 = sub_223A214D0();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v155;
    if (v92)
    {
      v94 = v32;
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      *(v95 + 4) = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber);

      _os_log_impl(&dword_2239C7000, v90, v91, "skipped summary message, too short { action=skip, count=%lld }", v95, 0xCu);
      v96 = v95;
      v32 = v94;
      MEMORY[0x223DF1300](v96, -1, -1);
    }

    else
    {
    }

    result = (*(v167 + 56))(a2, 1, 1, v48);
    v138 = 0;
    if (*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
    {
      v138 = *(v3 + v93);
    }

    *(v3 + v32) = v138;
    return result;
  }

  v153 = v32;
  v144 = a2;
  v54 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v55 = *(sub_223A207B0() + 16);

  if (__OFADD__(v55, 5))
  {
    goto LABEL_51;
  }

  v172 = MEMORY[0x223DF0210](v55 + 5, MEMORY[0x277D837D0], v170, MEMORY[0x277D837E0]);
  v56 = sub_223A206F0();
  sub_2239DE62C(v56, &v172);

  v145 = v54;
  v57 = sub_223A207B0();
  v58 = v57;
  v59 = *(v57 + 16);
  if (v59)
  {
    v60 = 0;
    v162 = v166 + 2;
    v152 = (v166 + 4);
    v161 = (v166 + 1);
    v151 = (v166 + 5);
    v61 = (v57 + 40);
    v160 = v3;
    v159 = v57;
    v158 = v59;
    v157 = v50;
    do
    {
      if (v60 >= *(v58 + 16))
      {
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
        result = sub_223A21910();
        __break(1u);
        return result;
      }

      v62 = *(v3 + v50);
      if (*(v62 + 16))
      {
        v63 = *(v61 - 1);
        v64 = *v61;

        v65 = sub_2239CDC74(v63, v64);
        if (v66)
        {
          v67 = v166[9];
          v68 = v166[2];
          v69 = v168;
          v70 = v170;
          v68(v168, *(v62 + 56) + v67 * v65, v170);

          v68(v169, v69, v70);
          v71 = v172;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v171 = v71;
          v74 = sub_2239CDC74(v63, v64);
          v75 = *(v71 + 16);
          v76 = (v73 & 1) == 0;
          v77 = v75 + v76;
          if (__OFADD__(v75, v76))
          {
            goto LABEL_49;
          }

          v78 = v73;
          if (*(v71 + 24) >= v77)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v73 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              sub_2239DAF30();
              if ((v78 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            sub_2239D9194(v77, isUniquelyReferenced_nonNull_native);
            v79 = sub_2239CDC74(v63, v64);
            if ((v78 & 1) != (v80 & 1))
            {
              goto LABEL_53;
            }

            v74 = v79;
            if ((v78 & 1) == 0)
            {
LABEL_32:
              v81 = v171;
              v171[(v74 >> 6) + 8] |= 1 << v74;
              v84 = (v81[6] + 16 * v74);
              *v84 = v63;
              v84[1] = v64;
              v85 = v81[7] + v74 * v67;
              v86 = v170;
              (*v152)(v85, v169, v170);
              (*v161)(v168, v86);
              v87 = v81[2];
              v88 = __OFADD__(v87, 1);
              v89 = v87 + 1;
              if (v88)
              {
                goto LABEL_50;
              }

              v81[2] = v89;
              goto LABEL_34;
            }
          }

          v81 = v171;
          v82 = v171[7] + v74 * v67;
          v83 = v170;
          (*v151)(v82, v169, v170);
          (*v161)(v168, v83);
LABEL_34:
          v172 = v81;
          v50 = v157;
          v3 = v160;
          v58 = v159;
          v59 = v158;
          goto LABEL_19;
        }
      }

LABEL_19:
      ++v60;
      v61 += 2;
    }

    while (v59 != v60);
  }

  v97 = *MEMORY[0x277CEF910];
  v98 = v163;
  v99 = v164 + 104;
  v169 = *(v164 + 104);
  (v169)(v163, v97, v165);
  v164 = v99;
  v100 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
  v101 = sub_223A209C0();
  v102 = v150;
  *v150 = v101;
  *(v102 + 1) = v103;
  v104 = *MEMORY[0x277CEF860];
  v105 = v166;
  v106 = v166 + 13;
  v152 = v166[13];
  v107 = v170;
  v152(v102, v104, v170);
  v108 = v105;
  v110 = v105 + 7;
  v109 = v105[7];
  (v109)(v102, 0, 1, v107);
  v161 = v109;
  v162 = v110;
  sub_223A21160();
  (v169)(v98, *MEMORY[0x277CEF8F8], v165);
  v159 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber;
  *v102 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber);
  v111 = v152;
  v152(v102, *MEMORY[0x277CEF840], v107);
  v158 = v106;
  (v109)(v102, 0, 1, v107);
  sub_223A21160();
  v112 = sub_223A20730();
  v114 = v113;
  v115 = v148;
  *v148 = v34;
  LODWORD(v157) = *MEMORY[0x277CEF858];
  v111(v115);
  v116 = v111;
  v168 = v108[4];
  v166 = v108 + 4;
  v117 = v149;
  (v168)(v149, v115, v107);
  v118 = v172;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v118;
  sub_2239DEAB8(v117, v112, v114, v119);

  v172 = v171;
  v151 = "decoratorRunningMessage";
  v120 = v153;
  *v115 = *(v3 + v153);
  v121 = v157;
  (v116)(v115, v157, v107);
  (v168)(v117, v115, v107);
  v122 = v172;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v122;
  sub_2239DEAB8(v117, 0xD000000000000011, v151 | 0x8000000000000000, v123);
  v172 = v171;
  *v115 = v34 + *(v3 + v120);
  (v116)(v115, v121, v107);
  (v168)(v117, v115, v107);
  v124 = v172;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v171 = v124;
  v126 = v117;
  v127 = v159;
  sub_2239DEAB8(v126, 0x7972616D6D75735FLL, 0xEF656D6954646E45, v125);
  v172 = v171;
  (v169)(v163, *MEMORY[0x277CEF928], v165);
  *v102 = v34 + *(v3 + v153);
  (v116)(v102, v121, v107);
  (v161)(v102, 0, 1, v107);
  sub_223A21160();
  v128 = sub_223A20740();
  sub_2239DECE8(&v172, v128);
  v129 = *(v3 + v127);
  v88 = __OFADD__(v129, 1);
  v130 = v129 + 1;
  if (v88)
  {
    goto LABEL_52;
  }

  *(v3 + v127) = v130;

  v131 = sub_223A20FB0();
  v132 = sub_223A214D0();
  v133 = os_log_type_enabled(v131, v132);
  v134 = v144;
  v135 = v156;
  v136 = v147;
  if (v133)
  {
    v137 = swift_slowAlloc();
    *v137 = 134217984;
    *(v137 + 4) = *(v3 + v127);

    _os_log_impl(&dword_2239C7000, v131, v132, "added summary message { action=add, count=%lld }", v137, 0xCu);
    MEMORY[0x223DF1300](v137, -1, -1);
  }

  else
  {
  }

  sub_223A20740();
  sub_223A20700();
  v139 = sub_223A20CA0();
  (*(*(v139 - 8) + 56))(v136, 1, 1, v139);

  v140 = v146;
  sub_223A20CB0();
  v141 = sub_223A20CD0();
  sub_223A20C90();
  v141(&v171, 0);
  (*(v167 + 32))(v134, v140, v135);
  (*(v167 + 56))(v134, 0, 1, v135);

  v142 = 0;
  if (*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    v142 = *(v3 + v155);
  }

  *(v3 + v153) = v142;
  return result;
}