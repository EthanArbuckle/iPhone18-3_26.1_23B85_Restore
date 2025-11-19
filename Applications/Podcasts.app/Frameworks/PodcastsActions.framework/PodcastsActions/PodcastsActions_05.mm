uint64_t sub_7EB70()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v13 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = v2[12];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_7F2A0(v4, type metadata accessor for OpenStoreURLAction);
    v5 = v2[26];
    v6 = v2[27];
    v7 = sub_7EE28;
  }

  else
  {
    v9 = v2[14];
    v8 = v2[15];
    v11 = v2[12];
    v10 = v2[13];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_7F2A0(v11, type metadata accessor for OpenStoreURLAction);
    (*(v9 + 8))(v8, v10);
    v5 = v2[26];
    v6 = v2[27];
    v7 = sub_7ED20;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_7ED20()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v13 = v0[10];
  v14 = v0[7];
  v10 = v0[4];

  sub_E53A4();
  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_7EE28()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  v5 = v0[29];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

void (*sub_7EF18(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_7EF8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F888, &qword_EFCE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F890, &qword_EFCE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8A0, &unk_EFD18);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7F120(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenChannelAppIntent.perform()(a1);
}

uint64_t sub_7F1BC(uint64_t a1)
{
  v2 = sub_7DBD4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7F1F8()
{
  result = qword_12F8B8;
  if (!qword_12F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8B8);
  }

  return result;
}

unint64_t sub_7F24C()
{
  result = qword_12F8C0;
  if (!qword_12F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8C0);
  }

  return result;
}

uint64_t sub_7F2A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_7F304()
{
  result = qword_12F8D0;
  if (!qword_12F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8D0);
  }

  return result;
}

uint64_t sub_7F3A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_7F3EC()
{
  result = qword_12F8D8;
  if (!qword_12F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8D8);
  }

  return result;
}

unint64_t sub_7F448()
{
  result = qword_12F8E0;
  if (!qword_12F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8E0);
  }

  return result;
}

unint64_t sub_7F4A0()
{
  result = qword_12F8E8;
  if (!qword_12F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8E8);
  }

  return result;
}

uint64_t sub_7F534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t OpenEpisodeAppIntent.init(target:notice:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = *a2;
  OpenEpisodeAppIntent.init()(&v17);
  v14 = v18;
  v16 = v17;
  *a3 = v17;
  *(a3 + 16) = v14;
  sub_6FAC8(a1, v12);
  sub_6FAC8(v12, v10);
  sub_E5514();
  sub_818B0(v12, type metadata accessor for EpisodeEntity);
  LOBYTE(v17) = v13;
  sub_E5514();
  return sub_818B0(a1, type metadata accessor for EpisodeEntity);
}

uint64_t static OpenEpisodeAppIntent.IntentSpecification(target:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F918, &unk_EFF50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = sub_E5E74();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_E5E84();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_E5E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F920, &qword_EFF78);
  v9 = *(sub_E5ED4() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_E87F0;
  v13[1] = a1;
  type metadata accessor for EpisodeEntity.CustomRepresentation(0);
  sub_819B0(&qword_12E9C0, type metadata accessor for EpisodeEntity.CustomRepresentation);

  sub_E5EC4();
  return sub_E5E94();
}

uint64_t sub_7F9D0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F900);
  __swift_project_value_buffer(v0, qword_12F900);
  return sub_E5914();
}

uint64_t static OpenEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F900);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenEpisodeAppIntent.title.setter(uint64_t a1)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F900);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenEpisodeAppIntent.title.modify())()
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v0 = sub_E5944();
  __swift_project_value_buffer(v0, qword_12F900);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7FC84(uint64_t a1)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F900);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static OpenEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F928, &qword_EFF80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F930, &qword_EFF88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_71AD0();
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F938, &unk_EFFB8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7FF2C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_6FAC8(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_818B0(v10, type metadata accessor for EpisodeEntity);
}

uint64_t OpenEpisodeAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_818B0(a1, type metadata accessor for EpisodeEntity);
}

void (*OpenEpisodeAppIntent.target.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenEpisodeAppIntent.objectGraph.getter()
{
  v1 = *(v0 + 8);
  sub_E51D4();
  return v3;
}

uint64_t sub_80188(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_E51E4();
}

uint64_t OpenEpisodeAppIntent.objectGraph.setter()
{
  v1 = *(v0 + 8);

  sub_E51E4();
}

void (*OpenEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E51C4();
  return sub_3CA68;
}

void (*OpenEpisodeAppIntent.notice.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v44 = sub_E5774();
  v1 = *(v44 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v44);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - v17;
  v19 = sub_E5944();
  v40 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  v22 = *(v20 + 56);
  v39 = v20 + 56;
  v41 = v22;
  v22(v18, 0, 1, v19);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v26 = v10;
  v25(v10, 1, 1, v24);
  v27 = v8;
  v25(v8, 1, 1, v24);
  v36 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v1 + 104);
  v37 = v1 + 104;
  v38 = v28;
  v29 = v42;
  v28(v42);
  sub_819B0(&qword_12E000, type metadata accessor for EpisodeEntity);
  v30 = v27;
  v31 = v29;
  v32 = sub_E5584();
  v33 = v43;
  *v43 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v45 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v33[1] = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F940, &qword_EFFC8);
  v41(v18, 1, 1, v40);
  v46 = 6;
  v25(v26, 1, 1, v24);
  v25(v30, 1, 1, v24);
  v38(v31, v36, v44);
  sub_81808();
  result = sub_E5544();
  v33[2] = result;
  return result;
}

uint64_t sub_80884@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_E5524();
  *a2 = result;
  return result;
}

uint64_t OpenEpisodeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 48) = a1;
  v3 = sub_E6974();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v6 = sub_E5BB4();
  *(v2 + 88) = v6;
  v7 = *(v6 - 8);
  *(v2 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v9 = type metadata accessor for OpenStoreURLAction();
  *(v2 + 112) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v11 = sub_E6CF4();
  *(v2 + 128) = v11;
  v12 = *(v11 - 8);
  *(v2 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v15 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 160) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v17 = sub_E59C4();
  *(v2 + 184) = v17;
  v18 = *(v17 - 8);
  *(v2 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *v1;
  *(v2 + 224) = *(v1 + 16);
  sub_E72F4();
  *(v2 + 232) = sub_E72E4();
  v21 = sub_E7294();
  *(v2 + 240) = v21;
  *(v2 + 248) = v20;

  return _swift_task_switch(sub_80B78, v21, v20);
}

uint64_t sub_80B78()
{
  v59 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  sub_E5504();
  sub_CC80(v4 + *(v6 + 104), v5);
  sub_818B0(v4, type metadata accessor for EpisodeEntity);
  v7 = (*(v3 + 48))(v5, 1, v2);
  v8 = *(v0 + 152);
  if (v7 == 1)
  {
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v12 = *(v0 + 208);
    v11 = *(v0 + 216);
    v13 = *(v0 + 80);

    sub_DB70(v8);
    sub_E6914();

    v14 = sub_E6964();
    v15 = sub_E74B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 208);
      v17 = *(v0 + 168);
      v55 = *(v0 + 80);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v58 = v21;
      *v20 = 136315138;
      sub_E5504();
      v22 = *v17;
      v23 = v17[1];

      sub_818B0(v17, type metadata accessor for EpisodeEntity);
      v24 = sub_23E64(v22, v23, &v58);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v14, v15, "Unable to open show %s, no share URL", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);

      (*(v18 + 8))(v55, v19);
    }

    else
    {
      v41 = *(v0 + 80);
      v42 = *(v0 + 56);
      v43 = *(v0 + 64);

      (*(v43 + 8))(v41, v42);
    }

    v44 = *(v0 + 200);
    v46 = *(v0 + 168);
    v45 = *(v0 + 176);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    v49 = *(v0 + 120);
    v50 = *(v0 + 104);
    v54 = *(v0 + 80);
    v57 = *(v0 + 72);
    sub_7F1F8();
    swift_allocError();
    swift_willThrow();

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    v25 = *(v0 + 224);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 184);
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 96);
    v56 = *(v0 + 104);
    v32 = *(v0 + 88);
    v53 = *(v0 + 208);
    (*(v27 + 32))(v26, v8, v28);
    *(v0 + 16) = v53;
    *(v0 + 32) = v25;
    (*(v27 + 16))(v29 + *(v30 + 20), v26, v28);
    sub_E6CD4();
    (*(v31 + 104))(v56, enum case for ActionMetricsBehavior.notProcessed(_:), v32);
    v33 = async function pointer to ActionDispatching.dispatch<A>(action:metrics:)[1];
    v34 = swift_task_alloc();
    *(v0 + 256) = v34;
    v35 = sub_8185C();
    v36 = sub_819B0(&qword_12F8C8, type metadata accessor for OpenStoreURLAction);
    *v34 = v0;
    v34[1] = sub_80FF8;
    v37 = *(v0 + 144);
    v39 = *(v0 + 112);
    v38 = *(v0 + 120);
    v40 = *(v0 + 104);

    return ActionDispatching.dispatch<A>(action:metrics:)(v37, v38, v40, &type metadata for OpenEpisodeAppIntent, v39, v35, v36);
  }
}

uint64_t sub_80FF8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v13 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[15];
    (*(v2[12] + 8))(v2[13], v2[11]);
    sub_818B0(v4, type metadata accessor for OpenStoreURLAction);
    v5 = v2[30];
    v6 = v2[31];
    v7 = sub_812B4;
  }

  else
  {
    v9 = v2[17];
    v8 = v2[18];
    v11 = v2[15];
    v10 = v2[16];
    (*(v2[12] + 8))(v2[13], v2[11]);
    sub_818B0(v11, type metadata accessor for OpenStoreURLAction);
    (*(v9 + 8))(v8, v10);
    v5 = v2[30];
    v6 = v2[31];
    v7 = sub_811A8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_811A8()
{
  v1 = v0[29];

  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];
  v10 = v0[13];
  v14 = v0[10];
  v15 = v0[9];
  v11 = v0[6];
  sub_E53A4();
  (*(v3 + 8))(v2, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_812B4()
{
  v34 = v0;
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[9];

  sub_E6914();
  swift_errorRetain();
  v4 = sub_E6964();
  v5 = sub_E74B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = v0[8];
    v31 = v0[9];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v0[5] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v11 = sub_E7084();
    v13 = sub_23E64(v11, v12, &v33);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "FAILURE: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    (*(v7 + 8))(v31, v8);
  }

  else
  {
    v14 = v0[33];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];

    (*(v16 + 8))(v15, v17);
  }

  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[22];
  v20 = v0[23];
  v22 = v0[21];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[15];
  v26 = v0[13];
  v30 = v0[10];
  v32 = v0[9];
  v27 = v0[6];
  sub_E53A4();
  (*(v19 + 8))(v18, v20);

  v28 = v0[1];

  return v28();
}

void (*sub_8152C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_815A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F928, &qword_EFF80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F930, &qword_EFF88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F938, &unk_EFFB8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_81730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenEpisodeAppIntent.perform()(a1);
}

uint64_t sub_817CC(uint64_t a1)
{
  v2 = sub_71AD0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_81808()
{
  result = qword_12F948;
  if (!qword_12F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F948);
  }

  return result;
}

unint64_t sub_8185C()
{
  result = qword_12F950;
  if (!qword_12F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F950);
  }

  return result;
}

uint64_t sub_818B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_81914()
{
  result = qword_12F958;
  if (!qword_12F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F958);
  }

  return result;
}

uint64_t sub_819B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_819FC()
{
  result = qword_12F960;
  if (!qword_12F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F960);
  }

  return result;
}

unint64_t sub_81A58()
{
  result = qword_12F968;
  if (!qword_12F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F968);
  }

  return result;
}

unint64_t sub_81AB0()
{
  result = qword_12F970;
  if (!qword_12F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F970);
  }

  return result;
}

uint64_t sub_81B6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_81BAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

uint64_t static OpenShowAppIntent.IntentSpecification(target:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F918, &unk_EFF50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  v6 = sub_E5E74();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_E5E84();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_E5E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F920, &qword_EFF78);
  v9 = *(sub_E5ED4() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_E87F0;
  v13[1] = a1;
  type metadata accessor for ShowEntity.CustomRepresentation(0);
  sub_83D98(&qword_12ECD0, type metadata accessor for ShowEntity.CustomRepresentation);

  sub_E5EC4();
  return sub_E5E94();
}

uint64_t sub_81EE8()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F988);
  __swift_project_value_buffer(v0, qword_12F988);
  return sub_E5914();
}

uint64_t static OpenShowAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F988);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenShowAppIntent.title.setter(uint64_t a1)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F988);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenShowAppIntent.title.modify())()
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v0 = sub_E5944();
  __swift_project_value_buffer(v0, qword_12F988);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_82198(uint64_t a1)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F988);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static OpenShowAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A0, &qword_F01F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A8, &qword_F01F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_823F8();
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9B8, &unk_F0228);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_823F8()
{
  result = qword_12F9B0;
  if (!qword_12F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9B0);
  }

  return result;
}

uint64_t sub_8244C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_E5524();
  *a2 = result;
  return result;
}

uint64_t sub_82478(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_8262C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_8262C(v10, v8);

  sub_E5514();
  sub_83C98(v10, type metadata accessor for ShowEntity);
}

uint64_t OpenShowAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_8262C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_83C98(a1, type metadata accessor for ShowEntity);
}

uint64_t sub_8262C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*OpenShowAppIntent.target.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

void (*OpenShowAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E51C4();
  return sub_3CA68;
}

void (*OpenShowAppIntent.notice.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenShowAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v44 = sub_E5774();
  v1 = *(v44 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v44);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - v17;
  v19 = sub_E5944();
  v40 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  v22 = *(v20 + 56);
  v39 = v20 + 56;
  v41 = v22;
  v22(v18, 0, 1, v19);
  v23 = type metadata accessor for ShowEntity(0);
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v26 = v10;
  v25(v10, 1, 1, v24);
  v27 = v8;
  v25(v8, 1, 1, v24);
  v36 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v1 + 104);
  v37 = v1 + 104;
  v38 = v28;
  v29 = v42;
  v28(v42);
  sub_83D98(&qword_12DDF0, type metadata accessor for ShowEntity);
  v30 = v27;
  v31 = v29;
  v32 = sub_E5584();
  v33 = v43;
  *v43 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v45 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v33[1] = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C8, &qword_F0238);
  v41(v18, 1, 1, v40);
  v46 = 2;
  v25(v26, 1, 1, v24);
  v25(v30, 1, 1, v24);
  v38(v31, v36, v44);
  sub_83BF0();
  result = sub_E5544();
  v33[2] = result;
  return result;
}

uint64_t OpenShowAppIntent.init(target:notice:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ShowEntity(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = *a2;
  OpenShowAppIntent.init()(&v17);
  v14 = v18;
  v16 = v17;
  *a3 = v17;
  *(a3 + 16) = v14;
  sub_8262C(a1, v12);
  sub_8262C(v12, v10);
  sub_E5514();
  sub_83C98(v12, type metadata accessor for ShowEntity);
  LOBYTE(v17) = v13;
  sub_E5514();
  return sub_83C98(a1, type metadata accessor for ShowEntity);
}

uint64_t OpenShowAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = sub_E6974();
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = sub_E5BB4();
  *(v2 + 72) = v6;
  v7 = *(v6 - 8);
  *(v2 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v9 = type metadata accessor for OpenStoreURLAction();
  *(v2 + 96) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v11 = sub_E6CF4();
  *(v2 + 112) = v11;
  v12 = *(v11 - 8);
  *(v2 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v15 = type metadata accessor for ShowEntity(0);
  *(v2 + 144) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v17 = sub_E59C4();
  *(v2 + 168) = v17;
  v18 = *(v17 - 8);
  *(v2 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *v1;
  *(v2 + 208) = *(v1 + 16);
  sub_E72F4();
  *(v2 + 216) = sub_E72E4();
  v21 = sub_E7294();
  *(v2 + 224) = v21;
  *(v2 + 232) = v20;

  return _swift_task_switch(sub_83100, v21, v20);
}

uint64_t sub_83100()
{
  v58 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  sub_E5504();
  sub_CC80(v4 + *(v6 + 84), v5);
  sub_83C98(v4, type metadata accessor for ShowEntity);
  v7 = (*(v3 + 48))(v5, 1, v2);
  v8 = *(v0 + 136);
  if (v7 == 1)
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 64);

    sub_DB70(v8);
    sub_E6914();

    v14 = sub_E6964();
    v15 = sub_E74B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 192);
      v17 = *(v0 + 152);
      v18 = *(v0 + 56);
      v55 = *(v0 + 64);
      v19 = *(v0 + 48);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v57 = v21;
      *v20 = 136315138;
      sub_E5504();
      v22 = *v17;
      v23 = v17[1];

      sub_83C98(v17, type metadata accessor for ShowEntity);
      v24 = sub_23E64(v22, v23, &v57);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v14, v15, "Unable to open show %s, no share URL", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);

      (*(v18 + 8))(v55, v19);
    }

    else
    {
      v42 = *(v0 + 56);
      v41 = *(v0 + 64);
      v43 = *(v0 + 48);

      (*(v42 + 8))(v41, v43);
    }

    sub_7F1F8();
    swift_allocError();
    swift_willThrow();
    v44 = *(v0 + 184);
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    v48 = *(v0 + 128);
    v47 = *(v0 + 136);
    v49 = *(v0 + 104);
    v50 = *(v0 + 88);
    v51 = *(v0 + 64);

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    v25 = *(v0 + 208);
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 168);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v56 = *(v0 + 88);
    v32 = *(v0 + 72);
    v54 = *(v0 + 192);
    (*(v27 + 32))(v26, v8, v28);
    *(v0 + 16) = v54;
    *(v0 + 32) = v25;
    (*(v27 + 16))(v29 + *(v30 + 20), v26, v28);
    sub_E6CD4();
    (*(v31 + 104))(v56, enum case for ActionMetricsBehavior.notProcessed(_:), v32);
    v33 = async function pointer to ActionDispatching.dispatch<A>(action:metrics:)[1];
    v34 = swift_task_alloc();
    *(v0 + 240) = v34;
    v35 = sub_83C44();
    v36 = sub_83D98(&qword_12F8C8, type metadata accessor for OpenStoreURLAction);
    *v34 = v0;
    v34[1] = sub_8356C;
    v37 = *(v0 + 128);
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v40 = *(v0 + 88);

    return ActionDispatching.dispatch<A>(action:metrics:)(v37, v38, v40, &type metadata for OpenShowAppIntent, v39, v35, v36);
  }
}

uint64_t sub_8356C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v13 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[13];
    (*(v2[10] + 8))(v2[11], v2[9]);
    sub_83C98(v4, type metadata accessor for OpenStoreURLAction);
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_83824;
  }

  else
  {
    v9 = v2[15];
    v8 = v2[16];
    v11 = v2[13];
    v10 = v2[14];
    (*(v2[10] + 8))(v2[11], v2[9]);
    sub_83C98(v11, type metadata accessor for OpenStoreURLAction);
    (*(v9 + 8))(v8, v10);
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_8371C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_8371C()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v13 = v0[11];
  v14 = v0[8];
  v10 = v0[5];

  sub_E53A4();
  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_83824()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  (*(v3 + 8))(v2, v4);
  v5 = v0[31];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[13];
  v12 = v0[11];
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

void (*sub_83914(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_83988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A0, &qword_F01F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A8, &qword_F01F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9B8, &unk_F0228);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_83B18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenShowAppIntent.perform()(a1);
}

uint64_t sub_83BB4(uint64_t a1)
{
  v2 = sub_823F8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_83BF0()
{
  result = qword_12F9D0;
  if (!qword_12F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9D0);
  }

  return result;
}

unint64_t sub_83C44()
{
  result = qword_12F9D8;
  if (!qword_12F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9D8);
  }

  return result;
}

uint64_t sub_83C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_83CFC()
{
  result = qword_12F9E0;
  if (!qword_12F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9E0);
  }

  return result;
}

uint64_t sub_83D98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_83DE4()
{
  result = qword_12F9E8;
  if (!qword_12F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9E8);
  }

  return result;
}

unint64_t sub_83E40()
{
  result = qword_12F9F0;
  if (!qword_12F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9F0);
  }

  return result;
}

unint64_t sub_83E98()
{
  result = qword_12F9F8;
  if (!qword_12F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9F8);
  }

  return result;
}

uint64_t sub_83F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_83F94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

uint64_t sub_8406C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FA10);
  __swift_project_value_buffer(v0, qword_12FA10);
  return sub_E5914();
}

uint64_t static SearchPodcastsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC10 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_84184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FA28);
  v1 = __swift_project_value_buffer(v0, qword_12FA28);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static SearchPodcastsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC18 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FA28);

  return sub_69558(v3, a1);
}

uint64_t sub_842C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA98, &unk_F0670);
  v0 = sub_E5614();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E87F0;
  result = (*(v1 + 104))(v4 + v3, enum case for StringSearchScope.general(_:), v0);
  qword_12FA40 = v4;
  return result;
}

uint64_t static SearchPodcastsAppIntent.searchScopes.getter()
{
  if (qword_12CC20 != -1)
  {
    swift_once();
  }
}

void (*SearchPodcastsAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_3CA68;
}

uint64_t sub_8447C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_E5634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v14 = *a2;
  v13 = a2[1];
  v12(v9, v11, v4);

  sub_E5514();
  (*(v5 + 8))(v11, v4);
}

uint64_t SearchPodcastsAppIntent.criteria.setter(uint64_t a1)
{
  v3 = sub_E5634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = *(v1 + 8);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_E5514();
  return (*(v4 + 8))(a1, v3);
}

void (*SearchPodcastsAppIntent.criteria.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t SearchPodcastsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = sub_E5774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_E5944();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v23 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v17 = sub_E5214();
  v18 = v22;
  *v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA48, &qword_F0450);
  sub_E5914();
  sub_E5914();
  (*(v15 + 56))(v13, 0, 1, v14);
  v19 = sub_E5354();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_E5594();
  v18[1] = result;
  return result;
}

uint64_t SearchPodcastsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = sub_E5BB4();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_E6CF4();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v10 = sub_E6CE4();
  *(v2 + 96) = v10;
  v11 = *(v10 - 8);
  *(v2 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v13 = sub_E6D64();
  *(v2 + 128) = v13;
  v14 = *(v13 - 8);
  *(v2 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v16 = sub_E5634();
  *(v2 + 152) = v16;
  v17 = *(v16 - 8);
  *(v2 + 160) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v19 = sub_E6974();
  *(v2 + 176) = v19;
  v20 = *(v19 - 8);
  *(v2 + 184) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = *v1;
  sub_E72F4();
  *(v2 + 216) = sub_E72E4();
  v23 = sub_E7294();
  *(v2 + 224) = v23;
  *(v2 + 232) = v22;

  return _swift_task_switch(sub_84D5C, v23, v22);
}

uint64_t sub_84D5C()
{
  v57 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E7494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = v0[23];
    v8 = v0[21];
    v52 = v0[22];
    v54 = v0[24];
    v9 = v0[20];
    v50 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v56 = v11;
    *v10 = 136315138;
    sub_E5504();
    v12 = sub_E5624();
    v14 = v13;
    (*(v9 + 8))(v8, v50);
    v15 = sub_23E64(v12, v14, &v56);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v4, v5, "Starting search for term: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    (*(v7 + 8))(v54, v52);
  }

  else
  {
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[26];
  v21 = v0[20];
  v20 = v0[21];
  v44 = v0[19];
  v22 = v0[14];
  v47 = v0[15];
  v48 = v0[18];
  v24 = v0[12];
  v23 = v0[13];
  v46 = v0[11];
  v53 = v0[7];
  v55 = v0[25];
  v49 = v0[6];
  v51 = v0[5];
  sub_E6CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_E9EF0;
  sub_E6CD4();
  v26 = type metadata accessor for OpenAppLocationAction();
  *(v25 + 56) = v26;
  *(v25 + 64) = sub_85844(&qword_12F838, type metadata accessor for OpenAppLocationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  v45 = *(v23 + 32);
  v45(boxed_opaque_existential_1, v22, v24);
  *(boxed_opaque_existential_1 + *(v26 + 20)) = 7;
  v28 = v19;
  sub_E5504();
  v29 = sub_E5624();
  v31 = v30;
  (*(v21 + 8))(v20, v44);
  v32 = sub_E59C4();
  (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  sub_E6CD4();
  v33 = type metadata accessor for SearchAction();
  *(v25 + 96) = v33;
  *(v25 + 104) = sub_85844(&qword_12FA58, type metadata accessor for SearchAction);
  v34 = __swift_allocate_boxed_opaque_existential_1((v25 + 72));
  v35 = v34 + v33[7];
  *v34 = 0;
  v34[1] = v29;
  v34[2] = v31;
  sub_CF40(v46, v34 + v33[6]);
  *v35 = 0;
  v35[8] = 1;
  *(v34 + v33[8]) = 0;
  v45((v34 + v33[9]), v22, v24);
  sub_E6D54();
  v0[2] = v55;
  v0[3] = v28;
  (*(v49 + 104))(v53, enum case for ActionMetricsBehavior.notProcessed(_:), v51);
  v36 = async function pointer to ActionDispatching.dispatch<A>(action:metrics:)[1];
  v37 = swift_task_alloc();
  v0[30] = v37;
  v38 = sub_85750();
  *v37 = v0;
  v37[1] = sub_85200;
  v39 = v0[18];
  v40 = v0[16];
  v41 = v0[10];
  v42 = v0[7];

  return ActionDispatching.dispatch<A>(action:metrics:)(v41, v39, v42, &type metadata for SearchPodcastsAppIntent, v40, v38, &protocol witness table for CompoundAction);
}

uint64_t sub_85200()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  *(*v1 + 248) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[28];
    v8 = v2[29];
    v9 = sub_85498;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v7 = v2[28];
    v8 = v2[29];
    v9 = sub_85390;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_85390()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v9 = v0[11];
  v13 = v0[10];
  v14 = v0[7];
  v10 = v0[4];

  sub_E53A4();
  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_85498()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v14 = v0[7];

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t sub_85594@<X0>(void *a1@<X8>)
{
  if (qword_12CC20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12FA40;
}

void (*sub_85604(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_85678(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return SearchPodcastsAppIntent.perform()(a1);
}

uint64_t sub_85714(uint64_t a1)
{
  v2 = sub_858E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_85750()
{
  result = qword_12FA60;
  if (!qword_12FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA60);
  }

  return result;
}

unint64_t sub_857A8()
{
  result = qword_12FA68;
  if (!qword_12FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA68);
  }

  return result;
}

uint64_t sub_85844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_85890()
{
  result = qword_12FA78;
  if (!qword_12FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA78);
  }

  return result;
}

unint64_t sub_858E8()
{
  result = qword_12FA80;
  if (!qword_12FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA80);
  }

  return result;
}

unint64_t sub_85940()
{
  result = qword_12FA88;
  if (!qword_12FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA88);
  }

  return result;
}

unint64_t sub_85998()
{
  result = qword_12FA90;
  if (!qword_12FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA90);
  }

  return result;
}

uint64_t sub_85A58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_85AF4()
{
  if (qword_12CC28 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_85BC0;
  v2 = *(v0 + 16);

  return sub_862D0(v2);
}

uint64_t sub_85BC0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_85E38(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
  *(v2 + 24) = sub_E71F4();

  return _swift_task_switch(sub_85ED0, 0, 0);
}

uint64_t sub_85ED0()
{
  if (qword_12CC28 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_85F9C;
  v2 = *(v0 + 24);

  return sub_862D0(v2);
}

uint64_t sub_85F9C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_860FC, 0, 0);
  }

  else
  {
    v5 = v3[2];
    v4 = v3[3];

    if (v5)
    {
      v6 = v3[2];
      v6[2](v6, 0);
      _Block_release(v6);
    }

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_860FC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[5];
  if (v2)
  {
    v4 = v0[2];
    v5 = v0[5];
    v6 = sub_E58F4();

    (v4)[2](v4, v6);
    _Block_release(v4);
  }

  else
  {
    v7 = v0[5];
  }

  v8 = v0[1];

  return v8();
}

MTPlayAudioIntentSupport __swiftcall MTPlayAudioIntentSupport.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_86258()
{
  type metadata accessor for PlayAudioIntentSupportActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD00000000000001CLL;
  *(v0 + 120) = 0x80000000000F76B0;
  result = 0.0;
  *(v0 + 128) = xmmword_F0680;
  *(v0 + 144) = 0x80000000000F76D0;
  *(v0 + 152) = 0;
  qword_145668 = v0;
  return result;
}

uint64_t sub_862D0(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_E6974();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_863C4;

  return sub_86B98(a1);
}

uint64_t sub_863C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v6 = *v3;
  v4[7] = a1;
  v4[8] = a2;

  if (v2)
  {
    v7 = v4[5];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[2];

    return _swift_task_switch(sub_86514, v10, 0);
  }
}

uint64_t sub_86514()
{
  v1 = v0[7];
  if (!v1)
  {
LABEL_7:
    v14 = v0[5];

    v15 = v0[1];

    return v15();
  }

  v2 = v0[8];
  v3 = v0[2];
  v4 = sub_8CE48();
  if (v4)
  {
    v5 = sub_869E0(v4, v1);

    if (v5)
    {
      v6 = v0[5];

      sub_E6914();
      v7 = sub_E6964();
      v8 = sub_E74D4();
      v9 = os_log_type_enabled(v7, v8);
      v11 = v0[4];
      v10 = v0[5];
      v12 = v0[3];
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v7, v8, "Skipping PlayAudioIntent donation as UUIDs have not changed.", v13, 2u);
      }

      (*(v11 + 8))(v10, v12);
      goto LABEL_7;
    }
  }

  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_866D8;
  v18 = v0[2];

  return sub_87F7C(v2);
}

uint64_t sub_866D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v9 = *v1;
  *(v3 + 80) = a1;

  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  *v6 = v9;
  v6[1] = sub_86840;
  v7 = *(v2 + 16);

  return sub_8A900();
}

uint64_t sub_86840()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_86950, v2, 0);
}

uint64_t sub_86950()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_8D568(v0[7]);
  sub_8C720(v1);
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_869E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_E7CC4();

    sub_E7124();
    v17 = sub_E7CF4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_E7BD4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_86B98(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_E68B4();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_E7724();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = sub_E5944();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v14 = type metadata accessor for ContextualMetadata();
  v2[22] = v14;
  v15 = *(v14 - 8);
  v2[23] = v15;
  v2[24] = *(v15 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v16 = sub_E6874();
  v2[27] = v16;
  v17 = *(v16 - 8);
  v2[28] = v17;
  v18 = *(v17 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v19 = sub_E68A4();
  v2[32] = v19;
  v20 = *(v19 - 8);
  v2[33] = v20;
  v21 = *(v20 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_86ECC, v1, 0);
}

uint64_t sub_86ECC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  sub_E6884();
  sub_E6864();
  v3 = sub_E6894();
  v4 = sub_E7674();
  if (sub_E77F4())
  {
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v3, v4, v7, "PlayAudioIntent.createEpisodeEntities", "", v6, 2u);
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v42 = *(v0 + 192);
  v40 = *(v0 + 200);
  v41 = *(v0 + 184);
  v34 = *(v0 + 208);
  v35 = *(v0 + 176);
  v15 = *(v0 + 160);
  v36 = *(v0 + 168);
  v37 = *(v0 + 144);
  v38 = *(v0 + 152);
  v39 = *(v0 + 136);
  v46 = *(v0 + 128);
  v44 = *(v0 + 120);
  v45 = *(v0 + 112);
  v43 = *(v0 + 72);

  (*(v13 + 16))(v11, v12, v14);
  v16 = sub_E68F4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_E68E4();
  v19 = *(v13 + 8);
  *(v0 + 296) = v19;
  *(v0 + 304) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v14);
  v20 = *(v10 + 8);
  *(v0 + 312) = v20;
  *(v0 + 320) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E740, &qword_EC270);
  sub_50A18();
  *v34 = sub_E5424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E750, &qword_EC278);
  sub_50A6C();
  v34[1] = sub_E5424();
  v21 = *(v35 + 24);
  sub_E5914();
  (*(v15 + 56))(v37, 1, 1, v38);
  v22 = sub_E5684();
  (*(*(v22 - 8) + 56))(v39, 1, 1, v22);
  sub_E56A4();
  *(v0 + 64) = &_swiftEmptySetSingleton;
  sub_E53F4();
  *(v0 + 376) = 1;
  sub_E53F4();
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 privateQueueContext];
  *(v0 + 328) = v24;

  v25 = swift_allocObject();
  *(v0 + 336) = v25;
  *(v25 + 16) = &_swiftEmptySetSingleton;
  v26 = swift_allocObject();
  *(v0 + 344) = v26;
  *(v26 + 16) = _swiftEmptyArrayStorage;
  sub_8E6F4(v34, v40, type metadata accessor for ContextualMetadata);
  v27 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v28 = (v42 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v0 + 352) = v29;
  *(v29 + 16) = v43;
  *(v29 + 24) = v24;
  sub_8E988(v40, v29 + v27, type metadata accessor for ContextualMetadata);
  *(v29 + v28) = v25;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  (*(v44 + 104))(v46, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v45);
  v30 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v24;

  v31 = swift_task_alloc();
  *(v0 + 360) = v31;
  *v31 = v0;
  v31[1] = sub_873A4;
  v32 = *(v0 + 128);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v31, v32, sub_8E880, v29, &type metadata for () + 8);
}

uint64_t sub_873A4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = v2[44];
  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  v9 = v2[10];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);

    v10 = sub_87850;
  }

  else
  {

    (*(v7 + 8))(v6, v8);
    v10 = sub_87574;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_87574()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[29];
  sub_E6884();
  v4 = sub_E6894();
  sub_E68D4();
  v5 = sub_E7664();
  if (sub_E77F4())
  {
    v6 = v0[36];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];

    sub_E6904();

    if ((*(v8 + 88))(v7, v9) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      v10 = "";
    }

    v11 = v0[29];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v4, v5, v13, "PlayAudioIntent.createEpisodeEntities", v10, v12, 2u);
  }

  v14 = v0[42];
  v15 = v0[43];
  v16 = v0[41];
  v29 = v0[39];
  v30 = v0[40];
  v17 = v0[36];
  v27 = v0[37];
  v28 = v0[38];
  v18 = v0[34];
  v19 = v0[32];
  v31 = v0[35];
  v32 = v0[31];
  v20 = v0[29];
  v22 = v0[26];
  v21 = v0[27];
  v33 = v0[30];
  v34 = v0[25];
  v35 = v0[21];
  v36 = v0[18];
  v37 = v0[17];
  v38 = v0[16];
  v39 = v0[13];

  v27(v20, v21);
  v29(v18, v19);
  sub_8E928(v22, type metadata accessor for ContextualMetadata);
  swift_beginAccess();
  v23 = *(v14 + 16);
  swift_beginAccess();
  v24 = *(v15 + 16);

  v25 = v0[1];

  return v25(v23, v24);
}

uint64_t sub_87850()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[29];
  v10 = v0[26];
  v14 = v0[25];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[13];

  sub_8E928(v10, type metadata accessor for ContextualMetadata);

  v11 = v0[1];
  v12 = v0[46];

  return v11();
}

void sub_87998(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a5;
  v50 = a3;
  v51 = a4;
  v53 = sub_E6974();
  v9 = *(v53 - 8);
  isa = v9[8].isa;
  __chkstk_darwin(v53);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v48 = &v44 - v17;
  v18 = type metadata accessor for EpisodeEntity(0);
  v47 = *(v18 - 8);
  v19 = *(v47 + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v60 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v59 = &v44 - v22;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
  {
    v24 = 0;
    v65 = a1 & 0xC000000000000001;
    v62 = i;
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v52 = &v9[1];
    v54 = a1;
    v46 = a2;
    v45 = v12;
    while (v65)
    {
      v25 = sub_E79B4();
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v27 = v25;
      v28 = sub_E7704();

      if (v6)
      {

        return;
      }

      if (v28)
      {
        v29 = [v28 uuid];
        if (v29)
        {
          v58 = 0;
          v30 = v29;
          v31 = sub_E7064();
          v55 = v32;
          v56 = v31;

          v33 = v28;
          v34 = v59;
          v57 = v33;
          EpisodeEntity.init(model:)(v33, v59);
          v35 = v48;
          sub_8E6F4(v50, v48, type metadata accessor for ContextualMetadata);
          v36 = type metadata accessor for ContextualMetadata();
          (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
          v37 = *(v34 + 5);
          sub_26324(v35, v49, &qword_12EAC0, &qword_ECC30);
          sub_E53F4();
          sub_110AC(v35, &qword_12EAC0, &qword_ECC30);
          swift_beginAccess();
          sub_BEB48(&v64, v56, v55);
          swift_endAccess();

          sub_8E6F4(v34, v60, type metadata accessor for EpisodeEntity);
          v38 = v61;
          swift_beginAccess();
          v9 = *(v38 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v38 + 16) = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v9 = sub_23454(0, v9[2].isa + 1, 1, v9);
            *(v61 + 16) = v9;
          }

          v41 = v9[2].isa;
          v40 = v9[3].isa;
          v12 = v45;
          v6 = v58;
          if (v41 >= v40 >> 1)
          {
            v9 = sub_23454(v40 > 1, v41 + 1, 1, v9);
          }

          v9[2].isa = (v41 + 1);
          sub_8E988(v60, v9 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, type metadata accessor for EpisodeEntity);
          *(v61 + 16) = v9;
          swift_endAccess();

          sub_8E928(v59, type metadata accessor for EpisodeEntity);
          a2 = v46;
          a1 = v54;
          goto LABEL_6;
        }
      }

      sub_E6914();
      v9 = sub_E6964();
      v42 = sub_E74B4();
      if (os_log_type_enabled(v9, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v9, v42, "AppIntents failed to find episode.", v43, 2u);
        a1 = v54;
      }

      else
      {
      }

      (*v52)(v12, v53);
LABEL_6:
      ++v24;
      if (v26 == v62)
      {
        return;
      }
    }

    if (v24 >= *(v63 + 16))
    {
      goto LABEL_27;
    }

    v25 = *(a1 + 8 * v24 + 32);
    v26 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }
}

uint64_t sub_87F7C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_E68B4();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v6 = sub_E6974();
  v2[40] = v6;
  v7 = *(v6 - 8);
  v2[41] = v7;
  v8 = *(v7 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v9 = sub_E5794();
  v2[45] = v9;
  v10 = *(v9 - 8);
  v2[46] = v10;
  v11 = *(v10 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v12 = type metadata accessor for AudioEntity();
  v2[51] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v14 = type metadata accessor for EpisodeEntity(0);
  v2[54] = v14;
  v15 = *(v14 - 8);
  v2[55] = v15;
  v16 = *(v15 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v17 = sub_E6BE4();
  v2[60] = v17;
  v18 = *(v17 - 8);
  v2[61] = v18;
  v19 = *(v18 + 64) + 15;
  v2[62] = swift_task_alloc();
  v20 = sub_E6874();
  v2[63] = v20;
  v21 = *(v20 - 8);
  v2[64] = v21;
  v22 = *(v21 + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v23 = sub_E68A4();
  v2[68] = v23;
  v24 = *(v23 - 8);
  v2[69] = v24;
  v25 = *(v24 + 64) + 15;
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();

  return _swift_task_switch(sub_88324, v1, 0);
}

uint64_t sub_88324()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 536);
  sub_E6884();
  sub_E6864();
  v3 = sub_E6894();
  v4 = sub_E7674();
  if (sub_E77F4())
  {
    v5 = *(v0 + 536);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v3, v4, v7, "PlayAudioIntent.prepareArtworkAndDonate", "", v6, 2u);
  }

  v8 = *(v0 + 552);
  v9 = *(v0 + 544);
  v10 = *(v0 + 536);
  v11 = *(v0 + 528);
  v13 = *(v0 + 504);
  v12 = *(v0 + 512);
  v15 = *(v0 + 488);
  v14 = *(v0 + 496);
  v71 = *(v0 + 568);
  v73 = *(v0 + 480);
  v75 = *(v0 + 280);

  (*(v12 + 16))(v11, v10, v13);
  v16 = sub_E68F4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 576) = sub_E68E4();
  v19 = *(v12 + 8);
  *(v0 + 584) = v19;
  *(v0 + 592) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v13);
  v20 = *(v8 + 8);
  *(v0 + 600) = v20;
  *(v0 + 608) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v71, v9);
  _s15PodcastsActions12DependenciesO03allC09JetEngine15BaseObjectGraphCyFZ_0();
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);

  sub_E6BD4();

  *(v0 + 624) = sub_E6DC4();

  (*(v15 + 8))(v14, v73);
  v21 = *(v75 + 16);
  *(v0 + 632) = v21;
  if (v21)
  {
    v22 = 0;
    v23 = *(v0 + 440);
    *(v0 + 760) = *(v23 + 80);
    *(v0 + 640) = *(v23 + 72);
    while (1)
    {
      *(v0 + 656) = _swiftEmptyArrayStorage;
      *(v0 + 648) = v22;
      v24 = *(v0 + 472);
      sub_8E6F4(*(v0 + 280) + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(v0 + 640) * v22, v24, type metadata accessor for EpisodeEntity);
      swift_beginAccess();
      *(v0 + 664) = *(v24 + 72);
      v25 = *(v24 + 80);
      *(v0 + 672) = v25;
      if (v25)
      {
        break;
      }

      sub_8E928(*(v0 + 472), type metadata accessor for EpisodeEntity);
      v22 = *(v0 + 648) + 1;
      if (v22 == *(v0 + 632))
      {
        goto LABEL_7;
      }
    }

    v36 = *(v0 + 472);
    swift_beginAccess();
    v37 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

    v38 = swift_task_alloc();
    *(v0 + 680) = v38;
    *v38 = v0;
    v38[1] = sub_8895C;
    v39 = *(v0 + 624);
    v40 = *(v0 + 616);

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v40, v40);
  }

  else
  {
LABEL_7:
    v26 = *(v0 + 576);
    v27 = *(v0 + 560);
    v28 = *(v0 + 520);
    sub_E6884();
    v29 = sub_E6894();
    sub_E68D4();
    v30 = sub_E7664();
    if (sub_E77F4())
    {
      v31 = *(v0 + 576);
      v32 = *(v0 + 304);
      v33 = *(v0 + 312);
      v34 = *(v0 + 296);

      sub_E6904();

      if ((*(v32 + 88))(v33, v34) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v35 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
        v35 = "";
      }

      v41 = *(v0 + 520);
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v43, "PlayAudioIntent.prepareArtworkAndDonate", v35, v42, 2u);
    }

    v44 = *(v0 + 624);
    v55 = *(v0 + 600);
    v56 = *(v0 + 608);
    v45 = *(v0 + 592);
    v46 = *(v0 + 584);
    v47 = *(v0 + 576);
    v48 = *(v0 + 568);
    v49 = *(v0 + 560);
    v50 = *(v0 + 544);
    v57 = *(v0 + 536);
    v58 = *(v0 + 528);
    v51 = *(v0 + 520);
    v52 = *(v0 + 504);
    v59 = *(v0 + 496);
    v60 = *(v0 + 472);
    v61 = *(v0 + 464);
    v62 = *(v0 + 456);
    v63 = *(v0 + 448);
    v64 = *(v0 + 424);
    v65 = *(v0 + 416);
    v66 = *(v0 + 400);
    v67 = *(v0 + 392);
    v68 = *(v0 + 384);
    v69 = *(v0 + 376);
    v70 = *(v0 + 352);
    v72 = *(v0 + 344);
    v74 = *(v0 + 336);
    v76 = *(v0 + 312);

    v46(v51, v52);
    v55(v49, v50);

    v53 = *(v0 + 8);

    return v53(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_8895C()
{
  v2 = *(*v1 + 680);
  v3 = *v1;
  v3[86] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_88C70, 0, 0);
  }

  else
  {
    v4 = v3[59];
    v5 = *(v3[54] + 96);
    v6 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
    v7 = swift_task_alloc();
    v3[87] = v7;
    v8 = sub_8E674(&qword_12E998, type metadata accessor for EpisodeEntity);
    *v7 = v3;
    v7[1] = sub_88B38;
    v9 = v3[59];
    v10 = v3[54];

    return Preparable.artworkData(for:imageProvider:)(v4 + v5, v3 + 7, v10, v8);
  }
}

uint64_t sub_88B38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 696);
  v8 = *v3;
  *(*v3 + 704) = v2;

  if (v2)
  {
    v9 = sub_88FAC;
  }

  else
  {
    *(v6 + 712) = a2;
    *(v6 + 720) = a1;
    v9 = sub_88C94;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_88C94()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[59];
  v4 = v0[54];
  v5 = v0[36];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v3 + *(v4 + 100);
  sub_4DC8C(*v6, *(v6 + 8));
  *v6 = v1;
  *(v6 + 8) = v2;
  swift_endAccess();

  return _swift_task_switch(sub_88D3C, v5, 0);
}

uint64_t sub_88D3C()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  sub_68E3C((v0 + 16));
  sub_8E6F4(v1, v2, type metadata accessor for EpisodeEntity);
  swift_storeEnumTagMultiPayload();
  *(v0 + 728) = *(v0 + 48);
  sub_8E6F4(v2, v3, type metadata accessor for AudioEntity);
  sub_E5514();
  sub_8E928(v2, type metadata accessor for AudioEntity);
  v5 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v5;
  *(v0 + 128) = *(v0 + 48);
  v6 = async function pointer to AppIntent.donate()[1];
  v7 = swift_task_alloc();
  *(v0 + 736) = v7;
  v8 = sub_674B8();
  *v7 = v0;
  v7[1] = sub_88E84;
  v9 = *(v0 + 400);

  return AppIntent.donate()(v9, &type metadata for PlayAudioIntent, v8);
}

uint64_t sub_88E84()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v9 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v4 = *(v2 + 672);
    v5 = *(v2 + 288);

    v6 = sub_8A2B8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 288);
    v6 = sub_89644;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_88FAC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[94] = v0[88];
  v1 = v0[36];

  return _swift_task_switch(sub_8901C, v1, 0);
}

uint64_t sub_8901C()
{
  v73 = v0;
  v1 = *(v0 + 672);
  swift_endAccess();

  v2 = *(v0 + 752);
  v3 = *(v0 + 336);
  sub_E6914();
  swift_errorRetain();
  v4 = sub_E6964();
  v5 = sub_E74B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 472);
    v7 = *(v0 + 328);
    v70 = *(v0 + 336);
    v68 = *(v0 + 320);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v72 = v10;
    *v8 = 136315394;
    *(v0 + 248) = *(v6 + 88);
    sub_57150();
    v11 = sub_E7BB4();
    v13 = sub_23E64(v11, v12, &v72);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_0, v4, v5, "Donating PlayAudioIntent failed %s - %@", v8, 0x16u);
    sub_110AC(v9, &unk_12DB20, &unk_F0760);

    __swift_destroy_boxed_opaque_existential_1(v10);

    (*(v7 + 8))(v70, v68);
  }

  else
  {
    v6 = *(v0 + 472);
    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 320);

    (*(v16 + 8))(v15, v17);
  }

  sub_8E928(v6, type metadata accessor for EpisodeEntity);
  v18 = *(v0 + 656);
  while (1)
  {
    v19 = *(v0 + 648) + 1;
    if (v19 == *(v0 + 632))
    {
      break;
    }

    *(v0 + 656) = v18;
    *(v0 + 648) = v19;
    v20 = *(v0 + 472);
    sub_8E6F4(*(v0 + 280) + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(v0 + 640) * v19, v20, type metadata accessor for EpisodeEntity);
    swift_beginAccess();
    *(v0 + 664) = *(v20 + 72);
    v21 = *(v20 + 80);
    *(v0 + 672) = v21;
    if (v21)
    {
      v32 = *(v0 + 472);
      swift_beginAccess();
      v33 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

      v34 = swift_task_alloc();
      *(v0 + 680) = v34;
      *v34 = v0;
      v34[1] = sub_8895C;
      v35 = *(v0 + 624);
      v36 = *(v0 + 616);

      return BaseObjectGraph.inject<A>(_:)(v0 + 56, v36, v36);
    }

    sub_8E928(*(v0 + 472), type metadata accessor for EpisodeEntity);
  }

  v22 = *(v0 + 576);
  v23 = *(v0 + 560);
  v24 = *(v0 + 520);
  sub_E6884();
  v25 = sub_E6894();
  sub_E68D4();
  v26 = sub_E7664();
  if (sub_E77F4())
  {
    v27 = *(v0 + 576);
    v28 = *(v0 + 304);
    v29 = *(v0 + 312);
    v30 = *(v0 + 296);

    sub_E6904();

    if ((*(v28 + 88))(v29, v30) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
      v31 = "";
    }

    v37 = *(v0 + 520);
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v25, v26, v39, "PlayAudioIntent.prepareArtworkAndDonate", v31, v38, 2u);
  }

  v40 = *(v0 + 624);
  v51 = *(v0 + 600);
  v52 = *(v0 + 608);
  v41 = *(v0 + 592);
  v42 = *(v0 + 584);
  v43 = *(v0 + 576);
  v50 = *(v0 + 568);
  v44 = *(v0 + 560);
  v45 = *(v0 + 544);
  v53 = *(v0 + 536);
  v54 = *(v0 + 528);
  v46 = *(v0 + 520);
  v47 = *(v0 + 504);
  v55 = *(v0 + 496);
  v56 = *(v0 + 472);
  v57 = *(v0 + 464);
  v58 = *(v0 + 456);
  v59 = *(v0 + 448);
  v60 = *(v0 + 424);
  v61 = *(v0 + 416);
  v62 = *(v0 + 400);
  v63 = *(v0 + 392);
  v64 = *(v0 + 384);
  v65 = *(v0 + 376);
  v66 = *(v0 + 352);
  v67 = *(v0 + 344);
  v69 = *(v0 + 336);
  v71 = *(v0 + 312);

  v42(v46, v47);
  v51(v44, v45);

  v48 = *(v0 + 8);

  return v48(v18);
}

uint64_t sub_89644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v163 = v3;
  v4 = (*(v3 + 472) + *(*(v3 + 432) + 100));
  v5 = v4[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    v7 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v10 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_12:
        sub_4EBA0(v6, v5);
        if (v10 >= 1)
        {
LABEL_13:
          v11 = *(v3 + 672);
          v13 = *(v3 + 392);
          v12 = *(v3 + 400);
          v14 = *(v3 + 360);
          v15 = *(v3 + 368);
          v16 = *(v3 + 352);
          sub_E6914();
          v158 = *(v15 + 16);
          v158(v13, v12, v14);
          sub_4EB8C(v6, v5);

          sub_4EB8C(v6, v5);
          v17 = sub_E6964();
          v18 = sub_E74D4();

          v19 = os_log_type_enabled(v17, v18);
          v20 = *(v3 + 672);
          if (!v19)
          {
            v74 = *(v3 + 392);
            v75 = *(v3 + 360);
            v76 = *(v3 + 368);
            v160 = *(v3 + 352);
            v77 = *(v3 + 320);
            v78 = *(v3 + 328);
            sub_4DC8C(v6, v5);

            sub_4DC8C(v6, v5);
            sub_4DC8C(v6, v5);

            (*(v76 + 8))(v74, v75);
            (*(v78 + 8))(v160, v77);
            goto LABEL_39;
          }

          v142 = v18;
          v144 = v17;
          v146 = *(v3 + 664);
          v148 = *(v3 + 472);
          v150 = *(v3 + 464);
          v152 = *(v3 + 456);
          v22 = *(v3 + 384);
          v21 = *(v3 + 392);
          v155 = v5 >> 62;
          v24 = *(v3 + 360);
          v23 = *(v3 + 368);
          v25 = swift_slowAlloc();
          *(v3 + 264) = swift_slowAlloc();
          *v25 = 136316418;
          v158(v22, v21, v24);
          v26 = sub_E7084();
          v28 = v27;
          (*(v23 + 8))(v21, v24);
          v29 = sub_23E64(v26, v28, (v3 + 264));

          *(v25 + 4) = v29;
          *(v25 + 12) = 2080;
          v30 = sub_23E64(v146, v20, (v3 + 264));

          *(v25 + 14) = v30;
          *(v25 + 22) = 2080;
          *(v3 + 272) = *(v148 + 88);
          sub_57150();
          v31 = sub_E7BB4();
          v33 = sub_23E64(v31, v32, (v3 + 264));

          *(v25 + 24) = v33;
          *(v25 + 32) = 2080;
          sub_8E6F4(v148, v150, type metadata accessor for EpisodeEntity);
          v34 = *(v150 + 16);
          sub_E53E4();
          v35 = *(v3 + 216);
          v36 = *(v3 + 224);
          sub_8E928(v150, type metadata accessor for EpisodeEntity);
          v37 = sub_23E64(v35, v36, (v3 + 264));

          *(v25 + 34) = v37;
          *(v25 + 42) = 2080;
          sub_8E6F4(v148, v152, type metadata accessor for EpisodeEntity);
          v38 = *(v152 + 24);
          sub_E53E4();
          v39 = *(v3 + 232);
          v40 = *(v3 + 240);
          sub_8E928(v152, type metadata accessor for EpisodeEntity);
          if (v40)
          {
            v41 = v39;
          }

          else
          {
            v41 = 0x20574F4853204F4ELL;
          }

          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = 0xEC000000454D414ELL;
          }

          v43 = sub_23E64(v41, v42, (v3 + 264));

          *(v25 + 44) = v43;
          *(v25 + 52) = 2048;
          if (v155 == 2)
          {
            v80 = *(v6 + 16);
            v79 = *(v6 + 24);
            a1 = sub_4DC8C(v6, v5);
            v44 = v79 - v80;
            if (!__OFSUB__(v79, v80))
            {
              v45 = v144;
              goto LABEL_38;
            }

LABEL_60:
            __break(1u);
            return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
          }

          if (v155 != 1)
          {
            v45 = v144;
            sub_4DC8C(v6, v5);
            v44 = BYTE6(v5);
            goto LABEL_38;
          }

          a1 = sub_4DC8C(v6, v5);
          LODWORD(v44) = HIDWORD(v6) - v6;
          v45 = v144;
          if (!__OFSUB__(HIDWORD(v6), v6))
          {
            v44 = v44;
LABEL_38:
            v81 = *(v3 + 352);
            v82 = *(v3 + 320);
            v83 = *(v3 + 328);
            *(v25 + 54) = v44;
            sub_4DC8C(v6, v5);
            _os_log_impl(&dword_0, v45, v142, "Donating PlayAudioIntent with episode: %s - %s - %s - %s - %s - artwork size: %ld bytes", v25, 0x3Eu);
            swift_arrayDestroy();

            sub_4DC8C(v6, v5);
            (*(v83 + 8))(v81, v82);
            goto LABEL_39;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_24:
        sub_4DC8C(v6, v5);
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v7)
    {
      if (!BYTE6(v5))
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      __break(1u);
      goto LABEL_59;
    }

    v10 = HIDWORD(v6) - v6;
    goto LABEL_12;
  }

LABEL_25:
  v46 = *(v3 + 672);
  v47 = *(v3 + 344);
  sub_E6914();

  v48 = sub_E6964();
  v49 = sub_E74C4();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v3 + 672);
  if (v50)
  {
    v52 = *(v3 + 664);
    v53 = *(v3 + 464);
    v54 = *(v3 + 472);
    v55 = *(v3 + 448);
    v153 = *(v3 + 328);
    v156 = *(v3 + 320);
    v159 = *(v3 + 344);
    v56 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *v56 = 136315906;
    v57 = sub_23E64(v52, v51, &v162);

    *(v56 + 4) = v57;
    *(v56 + 12) = 2080;
    *(v3 + 256) = *(v54 + 88);
    sub_57150();
    v58 = sub_E7BB4();
    v60 = sub_23E64(v58, v59, &v162);

    *(v56 + 14) = v60;
    *(v56 + 22) = 2080;
    sub_8E6F4(v54, v53, type metadata accessor for EpisodeEntity);
    v61 = *(v53 + 16);
    sub_E53E4();
    v62 = *(v3 + 184);
    v63 = *(v3 + 192);
    sub_8E928(v53, type metadata accessor for EpisodeEntity);
    v64 = sub_23E64(v62, v63, &v162);

    *(v56 + 24) = v64;
    *(v56 + 32) = 2080;
    sub_8E6F4(v54, v55, type metadata accessor for EpisodeEntity);
    v65 = *(v55 + 24);
    sub_E53E4();
    v66 = *(v3 + 200);
    v67 = *(v3 + 208);
    sub_8E928(v55, type metadata accessor for EpisodeEntity);
    if (v67)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0x20574F4853204F4ELL;
    }

    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0xEC000000454D414ELL;
    }

    v70 = sub_23E64(v68, v69, &v162);

    *(v56 + 34) = v70;
    _os_log_impl(&dword_0, v48, v49, "[ERROR] Donating PlayAudioIntent with episode: %s - %s - %s - %s -— No artwork data was loaded!", v56, 0x2Au);
    swift_arrayDestroy();

    (*(v153 + 8))(v159, v156);
  }

  else
  {
    v71 = *(v3 + 344);
    v72 = *(v3 + 320);
    v73 = *(v3 + 328);

    (*(v73 + 8))(v71, v72);
  }

LABEL_39:
  v84 = *(v3 + 656);
  (*(*(v3 + 368) + 16))(*(v3 + 376), *(v3 + 400), *(v3 + 360));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v3 + 656);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v86 = sub_234A4(0, v86[2] + 1, 1, *(v3 + 656));
  }

  v88 = v86[2];
  v87 = v86[3];
  if (v88 >= v87 >> 1)
  {
    v86 = sub_234A4(v87 > 1, v88 + 1, 1, v86);
  }

  v89 = *(v3 + 728);
  v90 = *(v3 + 472);
  v91 = *(v3 + 400);
  v93 = *(v3 + 368);
  v92 = *(v3 + 376);
  v94 = *(v3 + 360);
  v95 = *(v3 + 16);

  v96 = *(v3 + 24);

  v97 = *(v3 + 32);

  v98 = *(v3 + 40);

  (*(v93 + 8))(v91, v94);
  v86[2] = v88 + 1;
  (*(v93 + 32))(v86 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v88, v92, v94);
  for (i = v90; ; i = *(v3 + 472))
  {
    sub_8E928(i, type metadata accessor for EpisodeEntity);
    v100 = *(v3 + 648) + 1;
    if (v100 == *(v3 + 632))
    {
      break;
    }

    *(v3 + 656) = v86;
    *(v3 + 648) = v100;
    v101 = *(v3 + 472);
    sub_8E6F4(*(v3 + 280) + ((*(v3 + 760) + 32) & ~*(v3 + 760)) + *(v3 + 640) * v100, v101, type metadata accessor for EpisodeEntity);
    swift_beginAccess();
    *(v3 + 664) = *(v101 + 72);
    v102 = *(v101 + 80);
    *(v3 + 672) = v102;
    if (v102)
    {
      v113 = *(v3 + 472);
      swift_beginAccess();
      v114 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

      v115 = swift_task_alloc();
      *(v3 + 680) = v115;
      *v115 = v3;
      v115[1] = sub_8895C;
      v116 = *(v3 + 624);
      a2 = *(v3 + 616);
      a1 = v3 + 56;
      a3 = a2;

      return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
    }
  }

  v103 = *(v3 + 576);
  v104 = *(v3 + 560);
  v105 = *(v3 + 520);
  sub_E6884();
  v106 = sub_E6894();
  sub_E68D4();
  v107 = sub_E7664();
  if (sub_E77F4())
  {
    v108 = *(v3 + 576);
    v109 = *(v3 + 304);
    v110 = *(v3 + 312);
    v111 = *(v3 + 296);

    sub_E6904();

    if ((*(v109 + 88))(v110, v111) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v112 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v3 + 304) + 8))(*(v3 + 312), *(v3 + 296));
      v112 = "";
    }

    v117 = *(v3 + 520);
    v118 = swift_slowAlloc();
    *v118 = 0;
    v119 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v106, v107, v119, "PlayAudioIntent.prepareArtworkAndDonate", v112, v118, 2u);
  }

  v120 = *(v3 + 624);
  v131 = *(v3 + 600);
  v132 = *(v3 + 608);
  v121 = *(v3 + 592);
  v122 = *(v3 + 584);
  v123 = *(v3 + 576);
  v130 = *(v3 + 568);
  v124 = *(v3 + 560);
  v125 = *(v3 + 544);
  v133 = *(v3 + 536);
  v134 = *(v3 + 528);
  v126 = *(v3 + 520);
  v127 = *(v3 + 504);
  v135 = *(v3 + 496);
  v136 = *(v3 + 472);
  v137 = *(v3 + 464);
  v138 = *(v3 + 456);
  v139 = *(v3 + 448);
  v140 = *(v3 + 424);
  v141 = *(v3 + 416);
  v143 = *(v3 + 400);
  v145 = *(v3 + 392);
  v147 = *(v3 + 384);
  v149 = *(v3 + 376);
  v151 = *(v3 + 352);
  v154 = *(v3 + 344);
  v157 = *(v3 + 336);
  v161 = *(v3 + 312);

  v122(v126, v127);
  v131(v124, v125);

  v128 = *(v3 + 8);

  return v128(v86);
}

uint64_t sub_8A2B8()
{
  v77 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 728);

  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = *(v0 + 40);

  v6 = *(v0 + 744);
  v7 = *(v0 + 336);
  sub_E6914();
  swift_errorRetain();
  v8 = sub_E6964();
  v9 = sub_E74B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 472);
    v70 = *(v0 + 328);
    v72 = *(v0 + 320);
    v74 = *(v0 + 336);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v76 = v13;
    *v11 = 136315394;
    *(v0 + 248) = *(v10 + 88);
    sub_57150();
    v14 = sub_E7BB4();
    v16 = sub_23E64(v14, v15, &v76);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&dword_0, v8, v9, "Donating PlayAudioIntent failed %s - %@", v11, 0x16u);
    sub_110AC(v12, &unk_12DB20, &unk_F0760);

    __swift_destroy_boxed_opaque_existential_1(v13);

    (*(v70 + 8))(v74, v72);
  }

  else
  {
    v10 = *(v0 + 472);
    v19 = *(v0 + 328);
    v18 = *(v0 + 336);
    v20 = *(v0 + 320);

    (*(v19 + 8))(v18, v20);
  }

  sub_8E928(v10, type metadata accessor for EpisodeEntity);
  v21 = *(v0 + 656);
  while (1)
  {
    v22 = *(v0 + 648) + 1;
    if (v22 == *(v0 + 632))
    {
      break;
    }

    *(v0 + 656) = v21;
    *(v0 + 648) = v22;
    v23 = *(v0 + 472);
    sub_8E6F4(*(v0 + 280) + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(v0 + 640) * v22, v23, type metadata accessor for EpisodeEntity);
    swift_beginAccess();
    *(v0 + 664) = *(v23 + 72);
    v24 = *(v23 + 80);
    *(v0 + 672) = v24;
    if (v24)
    {
      v35 = *(v0 + 472);
      swift_beginAccess();
      v36 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

      v37 = swift_task_alloc();
      *(v0 + 680) = v37;
      *v37 = v0;
      v37[1] = sub_8895C;
      v38 = *(v0 + 624);
      v39 = *(v0 + 616);

      return BaseObjectGraph.inject<A>(_:)(v0 + 56, v39, v39);
    }

    sub_8E928(*(v0 + 472), type metadata accessor for EpisodeEntity);
  }

  v25 = *(v0 + 576);
  v26 = *(v0 + 560);
  v27 = *(v0 + 520);
  sub_E6884();
  v28 = sub_E6894();
  sub_E68D4();
  v29 = sub_E7664();
  if (sub_E77F4())
  {
    v30 = *(v0 + 576);
    v31 = *(v0 + 304);
    v32 = *(v0 + 312);
    v33 = *(v0 + 296);

    sub_E6904();

    if ((*(v31 + 88))(v32, v33) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v34 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
      v34 = "";
    }

    v40 = *(v0 + 520);
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v28, v29, v42, "PlayAudioIntent.prepareArtworkAndDonate", v34, v41, 2u);
  }

  v43 = *(v0 + 624);
  v54 = *(v0 + 600);
  v55 = *(v0 + 608);
  v44 = *(v0 + 592);
  v45 = *(v0 + 584);
  v46 = *(v0 + 576);
  v53 = *(v0 + 568);
  v47 = *(v0 + 560);
  v48 = *(v0 + 544);
  v56 = *(v0 + 536);
  v57 = *(v0 + 528);
  v49 = *(v0 + 520);
  v50 = *(v0 + 504);
  v58 = *(v0 + 496);
  v59 = *(v0 + 472);
  v60 = *(v0 + 464);
  v61 = *(v0 + 456);
  v62 = *(v0 + 448);
  v63 = *(v0 + 424);
  v64 = *(v0 + 416);
  v65 = *(v0 + 400);
  v66 = *(v0 + 392);
  v67 = *(v0 + 384);
  v68 = *(v0 + 376);
  v69 = *(v0 + 352);
  v71 = *(v0 + 344);
  v73 = *(v0 + 336);
  v75 = *(v0 + 312);

  v45(v49, v50);
  v54(v47, v48);

  v51 = *(v0 + 8);

  return v51(v21);
}

uint64_t sub_8A900()
{
  v1[2] = v0;
  v2 = sub_E68B4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_E6974();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = sub_E5844();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = sub_E56E4();
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v14 = sub_E5794();
  v1[17] = v14;
  v15 = *(v14 - 8);
  v1[18] = v15;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v17 = sub_E6874();
  v1[23] = v17;
  v18 = *(v17 - 8);
  v1[24] = v18;
  v19 = *(v18 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v20 = sub_E68A4();
  v1[28] = v20;
  v21 = *(v20 - 8);
  v1[29] = v21;
  v22 = *(v21 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_8AC48, v0, 0);
}

uint64_t sub_8AC48()
{
  v1 = *(v0 + 16);
  v2 = sub_8BFEC();
  *(v0 + 256) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 248);
    v5 = *(v0 + 216);
    sub_E6884();
    sub_E6864();
    v6 = sub_E6894();
    v7 = sub_E7674();
    if (sub_E77F4())
    {
      v8 = *(v0 + 216);
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v6, v7, v10, "PlayAudioIntent.deleteOldIntents", "", v9, 2u);
    }

    v11 = *(v0 + 248);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);

    (*(v17 + 16))(v14, v15, v16);
    v18 = sub_E68F4();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    *(v0 + 264) = sub_E68E4();
    v21 = *(v17 + 8);
    *(v0 + 272) = v21;
    *(v0 + 280) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v15, v16);
    v22 = *(v13 + 8);
    *(v0 + 288) = v22;
    *(v0 + 296) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v11, v12);
    v23 = *(v3 + 16);
    *(v0 + 304) = v23;
    if (v23)
    {
      v24 = *(v0 + 136);
      v25 = *(v0 + 144);
      v26 = *(v25 + 16);
      v25 += 16;
      v27 = *(v25 + 64);
      *(v0 + 360) = v27;
      *(v0 + 312) = *(v25 + 56);
      *(v0 + 320) = v26;
      v28 = *(v0 + 256);
      v29 = *(v0 + 176);
      v30 = *(v0 + 128);
      v31 = *(v0 + 104);
      *(v0 + 328) = 0;
      *(v0 + 336) = v25 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v26(v29, v28 + ((v27 + 32) & ~v27), v24);
      sub_E56D4();
      sub_E5834();
      v32 = async function pointer to IntentDonationManager.deleteDonations(matching:)[1];
      v33 = swift_task_alloc();
      *(v0 + 344) = v33;
      *v33 = v0;
      v33[1] = sub_8B1E8;
      v34 = *(v0 + 128);
      v35 = *(v0 + 104);

      return IntentDonationManager.deleteDonations(matching:)(v35);
    }

    v44 = *(v0 + 256);
    v45 = *(v0 + 264);
    v46 = *(v0 + 240);
    v47 = *(v0 + 200);

    sub_E6884();
    v48 = sub_E6894();
    sub_E68D4();
    v49 = sub_E7664();
    if (sub_E77F4())
    {
      v50 = *(v0 + 264);
      v52 = *(v0 + 32);
      v51 = *(v0 + 40);
      v53 = *(v0 + 24);

      sub_E6904();

      if ((*(v52 + 88))(v51, v53) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
        v54 = "";
      }

      v88 = *(v0 + 288);
      v90 = *(v0 + 296);
      v64 = *(v0 + 272);
      v65 = *(v0 + 264);
      v84 = *(v0 + 240);
      v86 = *(v0 + 280);
      v66 = *(v0 + 224);
      v67 = *(v0 + 200);
      v68 = *(v0 + 184);
      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v48, v49, v70, "PlayAudioIntent.deleteOldIntents", v54, v69, 2u);

      v64(v67, v68);
      v88(v84, v66);
    }

    else
    {
      v56 = *(v0 + 288);
      v55 = *(v0 + 296);
      v58 = *(v0 + 272);
      v57 = *(v0 + 280);
      v59 = *(v0 + 264);
      v60 = *(v0 + 240);
      v61 = *(v0 + 224);
      v62 = *(v0 + 200);
      v63 = *(v0 + 184);

      v58(v62, v63);
      v56(v60, v61);
    }
  }

  else
  {
    v36 = *(v0 + 72);
    sub_E6914();
    v37 = sub_E6964();
    v38 = sub_E74D4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 72);
    v41 = *(v0 + 48);
    v42 = *(v0 + 56);
    if (v39)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v37, v38, "No old PlayAudioIntents to delete", v43, 2u);
    }

    (*(v42 + 8))(v40, v41);
  }

  v72 = *(v0 + 240);
  v71 = *(v0 + 248);
  v74 = *(v0 + 208);
  v73 = *(v0 + 216);
  v75 = *(v0 + 200);
  v77 = *(v0 + 168);
  v76 = *(v0 + 176);
  v79 = *(v0 + 152);
  v78 = *(v0 + 160);
  v80 = *(v0 + 128);
  v83 = *(v0 + 104);
  v85 = *(v0 + 80);
  v87 = *(v0 + 72);
  v89 = *(v0 + 64);
  v91 = *(v0 + 40);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_8B1E8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = v2[16];
  v6 = v2[15];
  v7 = v2[14];
  v8 = v2[13];
  v9 = v2[12];
  v10 = v2[11];
  v11 = v2[2];
  if (v0)
  {
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v12 = sub_8B9B8;
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v12 = sub_8B414;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_8B414()
{
  v96 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  sub_E6914();
  v2(v3, v4, v5);
  v7 = sub_E6964();
  v8 = sub_E74D4();
  if (os_log_type_enabled(v7, v8))
  {
    v80 = *(v0 + 336);
    v9 = *(v0 + 320);
    v10 = *(v0 + 168);
    v81 = v8;
    v11 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v89 = *(v0 + 80);
    v92 = *(v0 + 176);
    v83 = *(v0 + 56);
    v86 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v95 = v15;
    *v14 = 136315138;
    v9(v11, v10, v13);
    v16 = sub_E7084();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v10, v13);
    v20 = sub_23E64(v16, v18, &v95);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v7, v81, "Deleting PlayAudioIntent with identifier %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);

    (*(v83 + 8))(v89, v86);
    v19(v92, v13);
  }

  else
  {
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 136);
    v24 = *(v0 + 144);
    v25 = *(v0 + 80);
    v26 = *(v0 + 48);
    v27 = *(v0 + 56);

    v28 = *(v24 + 8);
    v28(v22, v23);
    (*(v27 + 8))(v25, v26);
    v28(v21, v23);
  }

  v29 = *(v0 + 328) + 1;
  if (v29 == *(v0 + 304))
  {
    v30 = *(v0 + 256);
    v31 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 200);

    sub_E6884();
    v34 = sub_E6894();
    sub_E68D4();
    v35 = sub_E7664();
    if (sub_E77F4())
    {
      v36 = *(v0 + 264);
      v38 = *(v0 + 32);
      v37 = *(v0 + 40);
      v39 = *(v0 + 24);

      sub_E6904();

      if ((*(v38 + 88))(v37, v39) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v40 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
        v40 = "";
      }

      v90 = *(v0 + 288);
      v93 = *(v0 + 296);
      v61 = *(v0 + 272);
      v62 = *(v0 + 264);
      v84 = *(v0 + 240);
      v87 = *(v0 + 280);
      v63 = *(v0 + 224);
      v64 = *(v0 + 200);
      v65 = *(v0 + 184);
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v34, v35, v67, "PlayAudioIntent.deleteOldIntents", v40, v66, 2u);

      v61(v64, v65);
      v90(v84, v63);
    }

    else
    {
      v53 = *(v0 + 288);
      v52 = *(v0 + 296);
      v55 = *(v0 + 272);
      v54 = *(v0 + 280);
      v56 = *(v0 + 264);
      v57 = *(v0 + 240);
      v58 = *(v0 + 224);
      v59 = *(v0 + 200);
      v60 = *(v0 + 184);

      v55(v59, v60);
      v53(v57, v58);
    }

    v69 = *(v0 + 240);
    v68 = *(v0 + 248);
    v71 = *(v0 + 208);
    v70 = *(v0 + 216);
    v72 = *(v0 + 200);
    v74 = *(v0 + 168);
    v73 = *(v0 + 176);
    v76 = *(v0 + 152);
    v75 = *(v0 + 160);
    v77 = *(v0 + 128);
    v82 = *(v0 + 104);
    v85 = *(v0 + 80);
    v88 = *(v0 + 72);
    v91 = *(v0 + 64);
    v94 = *(v0 + 40);

    v78 = *(v0 + 8);

    return v78();
  }

  else
  {
    v41 = *(v0 + 320);
    v42 = *(v0 + 176);
    v43 = *(v0 + 136);
    v44 = *(v0 + 128);
    v45 = *(v0 + 104);
    v46 = *(v0 + 256) + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(v0 + 312) * v29;
    v47 = (*(v0 + 144) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 328) = v29;
    *(v0 + 336) = v47;
    v41(v42, v46, v43);
    sub_E56D4();
    sub_E5834();
    v48 = async function pointer to IntentDonationManager.deleteDonations(matching:)[1];
    v49 = swift_task_alloc();
    *(v0 + 344) = v49;
    *v49 = v0;
    v49[1] = sub_8B1E8;
    v50 = *(v0 + 128);
    v51 = *(v0 + 104);

    return IntentDonationManager.deleteDonations(matching:)(v51);
  }
}

uint64_t sub_8B9B8()
{
  v102 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 64);
  sub_E6914();
  v3(v5, v4, v6);
  swift_errorRetain();
  v8 = sub_E6964();
  v9 = sub_E74B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 352);
  if (v10)
  {
    v12 = *(v0 + 336);
    v13 = *(v0 + 320);
    v86 = *(v0 + 352);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = *(v0 + 136);
    v84 = *(v0 + 144);
    v95 = *(v0 + 64);
    v98 = *(v0 + 176);
    v89 = *(v0 + 56);
    v92 = *(v0 + 48);
    v17 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v101 = v87;
    *v17 = 136315394;
    v13(v15, v14, v16);
    v18 = v16;
    v19 = sub_E7084();
    v21 = v20;
    v22 = *(v84 + 8);
    v22(v14, v18);
    v23 = sub_23E64(v19, v21, &v101);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v85 = v24;
    _os_log_impl(&dword_0, v8, v9, "Deleting PlayAudioIntent failed with identifier %s - %@", v17, 0x16u);
    sub_110AC(v85, &unk_12DB20, &unk_F0760);

    __swift_destroy_boxed_opaque_existential_1(v87);

    (*(v89 + 8))(v95, v92);
    v22(v98, v18);
  }

  else
  {
    v25 = *(v0 + 176);
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 136);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = *(v0 + 48);

    v32 = *(v27 + 8);
    v32(v26, v28);
    (*(v30 + 8))(v29, v31);
    v32(v25, v28);
  }

  v33 = *(v0 + 328) + 1;
  if (v33 == *(v0 + 304))
  {
    v34 = *(v0 + 256);
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 200);

    sub_E6884();
    v38 = sub_E6894();
    sub_E68D4();
    v39 = sub_E7664();
    if (sub_E77F4())
    {
      v40 = *(v0 + 264);
      v42 = *(v0 + 32);
      v41 = *(v0 + 40);
      v43 = *(v0 + 24);

      sub_E6904();

      if ((*(v42 + 88))(v41, v43) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v44 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
        v44 = "";
      }

      v96 = *(v0 + 288);
      v99 = *(v0 + 296);
      v65 = *(v0 + 272);
      v66 = *(v0 + 264);
      v90 = *(v0 + 240);
      v93 = *(v0 + 280);
      v67 = *(v0 + 224);
      v68 = *(v0 + 200);
      v69 = *(v0 + 184);
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v38, v39, v71, "PlayAudioIntent.deleteOldIntents", v44, v70, 2u);

      v65(v68, v69);
      v96(v90, v67);
    }

    else
    {
      v57 = *(v0 + 288);
      v56 = *(v0 + 296);
      v59 = *(v0 + 272);
      v58 = *(v0 + 280);
      v60 = *(v0 + 264);
      v61 = *(v0 + 240);
      v62 = *(v0 + 224);
      v63 = *(v0 + 200);
      v64 = *(v0 + 184);

      v59(v63, v64);
      v57(v61, v62);
    }

    v73 = *(v0 + 240);
    v72 = *(v0 + 248);
    v75 = *(v0 + 208);
    v74 = *(v0 + 216);
    v76 = *(v0 + 200);
    v78 = *(v0 + 168);
    v77 = *(v0 + 176);
    v80 = *(v0 + 152);
    v79 = *(v0 + 160);
    v81 = *(v0 + 128);
    v88 = *(v0 + 104);
    v91 = *(v0 + 80);
    v94 = *(v0 + 72);
    v97 = *(v0 + 64);
    v100 = *(v0 + 40);

    v82 = *(v0 + 8);

    return v82();
  }

  else
  {
    v45 = *(v0 + 320);
    v46 = *(v0 + 176);
    v47 = *(v0 + 136);
    v48 = *(v0 + 128);
    v49 = *(v0 + 104);
    v50 = *(v0 + 256) + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(v0 + 312) * v33;
    v51 = (*(v0 + 144) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 328) = v33;
    *(v0 + 336) = v51;
    v45(v46, v50, v47);
    sub_E56D4();
    sub_E5834();
    v52 = async function pointer to IntentDonationManager.deleteDonations(matching:)[1];
    v53 = swift_task_alloc();
    *(v0 + 344) = v53;
    *v53 = v0;
    v53[1] = sub_8B1E8;
    v54 = *(v0 + 128);
    v55 = *(v0 + 104);

    return IntentDonationManager.deleteDonations(matching:)(v55);
  }
}

uint64_t sub_8BFEC()
{
  v0 = sub_E68B4();
  v81 = *(v0 - 8);
  v82 = v0;
  v1 = *(v81 + 64);
  __chkstk_darwin(v0);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E6874();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v72 - v10);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = sub_E68A4();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = sub_E6974();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v85[16])
  {
    v75 = v23;
    v76 = v20;
    v77 = v11;
    v78 = v13;
    v72 = v3;
    v73 = v18;
    v79 = v14;
    v80 = v4;
    v74 = v8;
    sub_E6914();
    v26 = sub_E6964();
    v27 = sub_E74D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Fetching previous identifiers from UserDefaults", v28, 2u);
    }

    (*(v75 + 8))(v25, v21);
    v29 = v76;
    sub_E6884();
    v30 = v78;
    sub_E6864();
    v31 = sub_E6894();
    v32 = sub_E7674();
    v33 = sub_E77F4();
    v34 = v77;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v31, v32, v36, "PlayAudioIntent.defaultsRead.identifiers", "", v35, 2u);
    }

    v37 = v84;
    v38 = v80;
    (*(v84 + 16))(v34, v30, v80);
    v39 = sub_E68F4();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_E68E4();
    v43 = *(v37 + 8);
    v43(v30, v38);
    v44 = v29;
    v45 = v79;
    v84 = *(v83 + 8);
    (v84)(v44, v79);
    v46 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v47 = v85;
    v48 = v85[14];
    v49 = v85[15];
    v50 = sub_E7024();
    v51 = [v46 dataForKey:v50];

    if (!v51)
    {

      return 0;
    }

    v76 = v42;
    v52 = sub_E59F4();
    v54 = v53;

    v55 = sub_E5874();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_E5864();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FC50, &qword_F0758);
    sub_8DFAC(&qword_12FC60, &qword_12FC68);
    v83 = v52;
    v78 = v54;
    sub_E5854();
    v77 = v43;

    v59 = v73;
    v60 = v47[16];
    v47[16] = v86;

    sub_E6884();
    v61 = sub_E6894();
    v62 = v74;
    sub_E68D4();
    v63 = sub_E7664();
    v64 = sub_E77F4();
    if (v64)
    {

      v65 = v72;
      sub_E6904();

      v67 = v81;
      v66 = v82;
      if ((*(v81 + 88))(v65, v82) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v65, v66);
        v68 = "";
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v62 = v74;
      v70 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v61, v63, v70, "PlayAudioIntent.defaultsRead.identifiers", v68, v69, 2u);

      v45 = v79;
      v38 = v80;
      v59 = v73;
    }

    sub_4DCA0(v83, v78);

    v77(v62, v38);
    (v84)(v59, v45);
    v71 = v85[16];
  }
}

uint64_t sub_8C720(unint64_t a1)
{
  v3 = sub_E68B4();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_E6874();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v79);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v76 = &v67 - v11;
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  v14 = sub_E68A4();
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  v16 = __chkstk_darwin(v14);
  v73 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v67 - v18;
  v19 = sub_E6974();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + 128);
  v72 = v1;
  *(v1 + 128) = a1;
  v77 = a1;

  sub_E6914();
  v25 = sub_E6964();
  v26 = sub_E74D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "Writing new identifiers to UserDefaults", v27, 2u);
  }

  v78 = v14;

  (*(v20 + 8))(v23, v19);
  v28 = v75;
  sub_E6884();
  sub_E6864();
  v29 = sub_E6894();
  v30 = sub_E7674();
  if (sub_E77F4())
  {
    v31 = v6;
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v33, "PlayAudioIntent.defaultsWrite.identifiers", "", v32, 2u);
    v6 = v31;
  }

  v34 = v79;
  (*(v6 + 16))(v76, v13, v79);
  v35 = sub_E68F4();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_E68E4();
  v38 = *(v6 + 8);
  v38(v13, v34);
  v40 = v80 + 8;
  v39 = *(v80 + 8);
  v39(v28, v78);
  v41 = sub_E58A4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_E5894();
  v81 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FC38, &qword_F0750);
  sub_8DEF0();
  v44 = sub_E5884();
  v68 = v38;
  v75 = v39;
  v76 = (v6 + 8);
  v80 = v40;
  v45 = v44;
  v47 = v46;

  v48 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_E59E4().super.isa;
  v50 = *(v72 + 112);
  v51 = *(v72 + 120);
  v52 = sub_E7024();
  [v48 setObject:isa forKey:v52];

  v53 = v73;
  sub_E6884();
  v54 = sub_E6894();
  v55 = v74;
  sub_E68D4();
  v56 = sub_E7664();
  if (sub_E77F4())
  {
    v72 = v45;
    v77 = v47;

    v57 = v69;
    sub_E6904();

    v59 = v70;
    v58 = v71;
    v60 = (*(v70 + 88))(v57, v71);
    v61 = v68;
    v62 = v79;
    if (v60 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v63 = "[Error] Interval already ended";
    }

    else
    {
      (*(v59 + 8))(v57, v58);
      v63 = "";
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v54, v56, v65, "PlayAudioIntent.defaultsWrite.identifiers", v63, v64, 2u);

    sub_4DCA0(v72, v77);

    v61(v55, v62);
  }

  else
  {
    sub_4DCA0(v45, v47);

    v68(v55, v79);
  }

  return (v75)(v53, v78);
}

uint64_t sub_8CE48()
{
  v0 = sub_E68B4();
  v81 = *(v0 - 8);
  v82 = v0;
  v1 = *(v81 + 64);
  __chkstk_darwin(v0);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E6874();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v72 - v10);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = sub_E68A4();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = sub_E6974();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v85[19])
  {
    v75 = v23;
    v76 = v20;
    v77 = v11;
    v78 = v13;
    v72 = v3;
    v73 = v18;
    v79 = v14;
    v80 = v4;
    v74 = v8;
    sub_E6914();
    v26 = sub_E6964();
    v27 = sub_E74D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Fetching previous uuids from UserDefaults", v28, 2u);
    }

    (*(v75 + 8))(v25, v21);
    v29 = v76;
    sub_E6884();
    v30 = v78;
    sub_E6864();
    v31 = sub_E6894();
    v32 = sub_E7674();
    v33 = sub_E77F4();
    v34 = v77;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v31, v32, v36, "PlayAudioIntent.defaultsRead.uuids", "", v35, 2u);
    }

    v37 = v84;
    v38 = v80;
    (*(v84 + 16))(v34, v30, v80);
    v39 = sub_E68F4();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_E68E4();
    v43 = *(v37 + 8);
    v43(v30, v38);
    v44 = v29;
    v45 = v79;
    v84 = *(v83 + 8);
    (v84)(v44, v79);
    v46 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v47 = v85;
    v48 = v85[17];
    v49 = v85[18];
    v50 = sub_E7024();
    v51 = [v46 dataForKey:v50];

    if (!v51)
    {

      return 0;
    }

    v76 = v42;
    v52 = sub_E59F4();
    v54 = v53;

    v55 = sub_E5874();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_E5864();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
    sub_8DE84(&qword_12FC30);
    v83 = v52;
    v78 = v54;
    sub_E5854();
    v77 = v43;

    v59 = v73;
    v60 = v47[19];
    v47[19] = v86;

    sub_E6884();
    v61 = sub_E6894();
    v62 = v74;
    sub_E68D4();
    v63 = sub_E7664();
    v64 = sub_E77F4();
    if (v64)
    {

      v65 = v72;
      sub_E6904();

      v67 = v81;
      v66 = v82;
      if ((*(v81 + 88))(v65, v82) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v65, v66);
        v68 = "";
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v62 = v74;
      v70 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v61, v63, v70, "PlayAudioIntent.defaultsRead.uuids", v68, v69, 2u);

      v45 = v79;
      v38 = v80;
      v59 = v73;
    }

    sub_4DCA0(v83, v78);

    v77(v62, v38);
    (v84)(v59, v45);
    v71 = v85[19];
  }
}

uint64_t sub_8D568(unint64_t a1)
{
  v3 = sub_E68B4();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_E6874();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v79);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v76 = &v67 - v11;
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  v14 = sub_E68A4();
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  v16 = __chkstk_darwin(v14);
  v73 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v67 - v18;
  v19 = sub_E6974();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + 152);
  v72 = v1;
  *(v1 + 152) = a1;
  v77 = a1;

  sub_E6914();
  v25 = sub_E6964();
  v26 = sub_E74D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "Writing new uuids to UserDefaults", v27, 2u);
  }

  v78 = v14;

  (*(v20 + 8))(v23, v19);
  v28 = v75;
  sub_E6884();
  sub_E6864();
  v29 = sub_E6894();
  v30 = sub_E7674();
  if (sub_E77F4())
  {
    v31 = v6;
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v33, "PlayAudioIntent.defaultsWrite.uuids", "", v32, 2u);
    v6 = v31;
  }

  v34 = v79;
  (*(v6 + 16))(v76, v13, v79);
  v35 = sub_E68F4();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_E68E4();
  v38 = *(v6 + 8);
  v38(v13, v34);
  v40 = v80 + 8;
  v39 = *(v80 + 8);
  v39(v28, v78);
  v41 = sub_E58A4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_E5894();
  v81 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FC18, &unk_F0740);
  sub_8DDDC();
  v44 = sub_E5884();
  v68 = v38;
  v75 = v39;
  v76 = (v6 + 8);
  v80 = v40;
  v45 = v44;
  v47 = v46;

  v48 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_E59E4().super.isa;
  v50 = *(v72 + 136);
  v51 = *(v72 + 144);
  v52 = sub_E7024();
  [v48 setObject:isa forKey:v52];

  v53 = v73;
  sub_E6884();
  v54 = sub_E6894();
  v55 = v74;
  sub_E68D4();
  v56 = sub_E7664();
  if (sub_E77F4())
  {
    v72 = v45;
    v77 = v47;

    v57 = v69;
    sub_E6904();

    v59 = v70;
    v58 = v71;
    v60 = (*(v70 + 88))(v57, v71);
    v61 = v68;
    v62 = v79;
    if (v60 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v63 = "[Error] Interval already ended";
    }

    else
    {
      (*(v59 + 8))(v57, v58);
      v63 = "";
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v54, v56, v65, "PlayAudioIntent.defaultsWrite.uuids", v63, v64, 2u);

    sub_4DCA0(v72, v77);

    v61(v55, v62);
  }

  else
  {
    sub_4DCA0(v45, v47);

    v68(v55, v79);
  }

  return (v75)(v53, v78);
}

uint64_t sub_8DC90@<X0>(uint64_t *a1@<X8>)
{
  sub_E6DF4();
  sub_E6DE4();
  a1[3] = sub_E5BA4();
  a1[4] = &protocol witness table for LibraryImageProvider;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_8E674(&qword_12FC70, &type metadata accessor for LibraryImageProvider);
  sub_E6D84();
}

uint64_t sub_8DD4C()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[18];

  v4 = v0[19];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_8DDCC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_8DDDC()
{
  result = qword_12FC20;
  if (!qword_12FC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12FC18, &unk_F0740);
    sub_8DE84(&qword_12FC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FC20);
  }

  return result;
}

uint64_t sub_8DE84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12DF70, &qword_E9E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8DEF0()
{
  result = qword_12FC40;
  if (!qword_12FC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12FC38, &qword_F0750);
    sub_8DFAC(&qword_12FC48, &qword_12FC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FC40);
  }

  return result;
}

uint64_t sub_8DFAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12FC50, &qword_F0758);
    sub_8E674(a2, &type metadata accessor for IntentDonationIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8E048(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_5E10;

  return v7();
}

uint64_t sub_8E130(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_588C;

  return v8();
}

uint64_t sub_8E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_26324(a3, v25 - v11, &unk_131ED0, &qword_F5BC0);
  v13 = sub_E7324();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_110AC(v12, &unk_131ED0, &qword_F5BC0);
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

  sub_E7314();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_E7294();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_E70A4() + 32;
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

    sub_110AC(a3, &unk_131ED0, &qword_F5BC0);

    return v23;
  }

LABEL_8:
  sub_110AC(a3, &unk_131ED0, &qword_F5BC0);
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

uint64_t sub_8E514(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_35D78;

  return v7(a1);
}

uint64_t sub_8E60C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_8E644@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_8E674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8E6BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8E6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8E75C()
{
  v1 = (type metadata accessor for ContextualMetadata() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = (v0 + v3);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = v1[8];
  v11 = sub_E56B4();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = *(v0 + v4);

  v13 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

void sub_8E880()
{
  v1 = *(type metadata accessor for ContextualMetadata() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_87998(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_8E928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8E988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_8E9F0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8EA30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_5E10;

  return sub_85E38(v2, v3);
}

uint64_t sub_8EAE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_5E10;

  return sub_8E048(v2, v3, v5);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8EBE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_588C;

  return sub_8E130(a1, v4, v5, v7);
}

uint64_t sub_8ECB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8ECEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_8E514(a1, v5);
}

uint64_t sub_8EDA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_8E514(a1, v5);
}

uint64_t sub_8EE68@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v64 = sub_E5F14();
  v58 = *(v64 - 8);
  v3 = *(v58 + 64);
  v4 = __chkstk_darwin(v64);
  v57 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v59 = &v57 - v7;
  __chkstk_darwin(v6);
  v60 = &v57 - v8;
  v68 = sub_E5F34();
  v62 = *(v68 - 8);
  v9 = *(v62 + 64);
  v10 = __chkstk_darwin(v68);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v63 = &v57 - v13;
  __chkstk_darwin(v12);
  v67 = &v57 - v14;
  v15 = sub_E5F24();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  v17 = __chkstk_darwin(v15);
  v66 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v57 - v20;
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  v24 = sub_E5F04();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v57 - v31;
  __chkstk_darwin(v30);
  v34 = &v57 - v33;
  v70 = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
  if (swift_dynamicCast())
  {
    (*(v25 + 32))(v32, v34, v24);
    (*(v25 + 16))(v29, v32, v24);
    v35 = (*(v25 + 88))(v29, v24);
    if (v35 == enum case for PodcastsPlaybackError.ValidationError.notEntitledShowUpsell(_:) || v35 == enum case for PodcastsPlaybackError.ValidationError.noContent(_:) || v35 == enum case for PodcastsPlaybackError.ValidationError.restricted(_:))
    {
      sub_E5334();
      (*(v25 + 8))(v32, v24);
    }

    else
    {
      v51 = (v25 + 8);
      if (v35 == enum case for PodcastsPlaybackError.ValidationError.authenticationRequired(_:))
      {
        sub_E5334();
        (*v51)(v32, v24);
      }

      else
      {
        sub_E5334();
        v55 = *v51;
        (*v51)(v32, v24);
        v55(v29, v24);
      }
    }
  }

  v70 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v36 = v65;
    (*(v65 + 32))(v21, v23, v15);
    v37 = v66;
    (*(v36 + 16))(v66, v21, v15);
    v38 = *(v36 + 88);
    v39 = (v36 + 8);
    if (v38(v37, v15) == enum case for PodcastsPlaybackError.PlayerError.noInternet(_:))
    {
      sub_E5334();
      (*v39)(v21, v15);
    }

    sub_E5334();
    v46 = *v39;
    (*v39)(v21, v15);
    v47 = v37;
    v48 = v15;
LABEL_13:
    v46(v47, v48);
  }

  v70 = a1;
  swift_errorRetain();
  v40 = v67;
  v41 = v68;
  if (swift_dynamicCast())
  {
    v42 = v62;
    v43 = v63;
    (*(v62 + 32))(v63, v40, v41);
    v44 = v61;
    (*(v42 + 16))(v61, v43, v41);
    v45 = (*(v42 + 88))(v44, v41);
    if (v45 == enum case for PodcastsPlaybackError.FairPlayError.slotError(_:) || v45 == enum case for PodcastsPlaybackError.FairPlayError.notEntitled(_:))
    {
LABEL_36:
      sub_E5334();
      (*(v42 + 8))(v43, v41);
    }

    v54 = (v42 + 8);
    if (v45 == enum case for PodcastsPlaybackError.FairPlayError.deviceLimit(_:))
    {
LABEL_30:
      sub_E5334();
      (*v54)(v43, v41);
    }

LABEL_39:
    sub_E5334();
    v46 = *v54;
    (*v54)(v43, v41);
    v47 = v44;
    v48 = v41;
    goto LABEL_13;
  }

  v70 = a1;
  swift_errorRetain();
  v49 = v60;
  v41 = v64;
  if (swift_dynamicCast())
  {
    v42 = v58;
    v43 = v59;
    (*(v58 + 32))(v59, v49, v41);
    v44 = v57;
    (*(v42 + 16))(v57, v43, v41);
    v50 = (*(v42 + 88))(v44, v41);
    if (v50 == enum case for PodcastsPlaybackError.PlayChapterError.hasNoChapters(_:) || v50 == enum case for PodcastsPlaybackError.PlayChapterError.remotePlayback(_:) || v50 == enum case for PodcastsPlaybackError.PlayChapterError.lastChapterAlreadyPlaying(_:) || v50 == enum case for PodcastsPlaybackError.PlayChapterError.firstChapterAlreadyPlaying(_:))
    {
      goto LABEL_36;
    }

    v54 = (v42 + 8);
    if (v50 == enum case for PodcastsPlaybackError.PlayChapterError.noItemPlaying(_:))
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v72 = a1;
  swift_errorRetain();
  if (!swift_dynamicCast())
  {

    return sub_E5334();
  }

  v52 = v70;
  v53 = v71;
  if (v71 == 2 && v70 <= 2)
  {
    sub_E5334();
  }

  else
  {
    sub_E5334();
    sub_8F8F0(v52, v53);
  }
}

uint64_t sub_8F8F0(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_8F900()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FC78);
  __swift_project_value_buffer(v0, qword_12FC78);
  return sub_E5914();
}

uint64_t static PlayNextChapterAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC30 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FC78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_8FA0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FC90);
  v1 = __swift_project_value_buffer(v0, qword_12FC90);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayNextChapterAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC38 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FC90);

  return sub_69558(v3, a1);
}

uint64_t static PlayNextChapterAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FCA8, &unk_F07B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_8FC24();
  sub_E5754();
  return sub_E5714();
}

unint64_t sub_8FC24()
{
  result = qword_12FCB0;
  if (!qword_12FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FCB0);
  }

  return result;
}

void (*PlayNextChapterAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_1C5B0;
}

uint64_t PlayNextChapterAppIntent.perform()(uint64_t a1)
{
  v2[6] = a1;
  v3 = sub_E5354();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[9] = v6;
  v2[5] = *v1;
  v7 = swift_task_alloc();
  v2[10] = v7;
  *v7 = v2;
  v7[1] = sub_8FDF0;

  return sub_9000C(v6);
}

uint64_t sub_8FDF0()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_8FEEC, 0, 0);
}

uint64_t sub_8FEEC()
{
  v11 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  OpenAppLocationAppIntent.init()(v10);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  *(v0 + 88) = 11;
  sub_E5514();
  *(v0 + 89) = 2;
  sub_E5514();
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  sub_6FB88();
  sub_E5364();
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_9000C(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(sub_E7014() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = *v1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_900E4;

  return sub_6C9F0(v4);
}

uint64_t sub_900E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_90348;
  }

  else
  {
    v5 = sub_901F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_901F8()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_E7004();
  v16._countAndFlagsBits = 0x79616C7020776F4ELL;
  v16._object = 0xED00002720676E69;
  sub_E6FF4(v16);
  v3 = [v1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_E7064();
    object = v6;

    v8._countAndFlagsBits = v5;
  }

  else
  {
    v17._object = 0x80000000000F7A50;
    v19._countAndFlagsBits = 0xD000000000000071;
    v19._object = 0x80000000000F7A70;
    v17._countAndFlagsBits = 0xD000000000000010;
    v8._countAndFlagsBits = sub_E63A4(v17, v19);
    object = v8._object;
  }

  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];
  v8._object = object;
  sub_E6FD4(v8);

  v18._countAndFlagsBits = 39;
  v18._object = 0xE100000000000000;
  sub_E6FF4(v18);
  sub_E5344();

  v12 = v0[3];

  v13 = v0[1];

  return v13();
}

uint64_t sub_90348()
{
  sub_8EE68(v0[6], v0[2]);

  v1 = v0[3];

  v2 = v0[1];

  return v2();
}

unint64_t sub_903C4()
{
  result = qword_12FCB8;
  if (!qword_12FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FCB8);
  }

  return result;
}

unint64_t sub_9041C()
{
  result = qword_12FCC0;
  if (!qword_12FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FCC0);
  }

  return result;
}

uint64_t sub_904C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FCA8, &unk_F07B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_E5754();
  return sub_E5714();
}

uint64_t sub_90584(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayNextChapterAppIntent.perform()(a1);
}

uint64_t sub_90620(uint64_t a1)
{
  v2 = sub_8FC24();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_9065C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_90778()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FCD8);
  __swift_project_value_buffer(v0, qword_12FCD8);
  return sub_E5914();
}

uint64_t static PlayPreviousChapterAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC40 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FCD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_90884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FCF0);
  v1 = __swift_project_value_buffer(v0, qword_12FCF0);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayPreviousChapterAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FCF0);

  return sub_69558(v3, a1);
}

uint64_t static PlayPreviousChapterAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD08, &unk_F0968);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_90A9C();
  sub_E5754();
  return sub_E5714();
}

unint64_t sub_90A9C()
{
  result = qword_12FD10;
  if (!qword_12FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD10);
  }

  return result;
}

void (*PlayPreviousChapterAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_1C5B0;
}

uint64_t PlayPreviousChapterAppIntent.perform()(uint64_t a1)
{
  v2[6] = a1;
  v3 = sub_E5354();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[9] = v6;
  v2[5] = *v1;
  v7 = swift_task_alloc();
  v2[10] = v7;
  *v7 = v2;
  v7[1] = sub_8FDF0;

  return sub_90C68(v6);
}

uint64_t sub_90C68(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(sub_E7014() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = *v1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_900E4;

  return sub_6CF20(v4);
}

unint64_t sub_90D44()
{
  result = qword_12FD18;
  if (!qword_12FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD18);
  }

  return result;
}

unint64_t sub_90D9C()
{
  result = qword_12FD20;
  if (!qword_12FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD20);
  }

  return result;
}

uint64_t sub_90E40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD08, &unk_F0968);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_E5754();
  return sub_E5714();
}

uint64_t sub_90F04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayPreviousChapterAppIntent.perform()(a1);
}

uint64_t sub_90FA0(uint64_t a1)
{
  v2 = sub_90A9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_90FDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_91070()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FD38);
  __swift_project_value_buffer(v0, qword_12FD38);
  return sub_E5914();
}

uint64_t static ViewTranscriptAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC50 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FD38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_91188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FD50);
  v1 = __swift_project_value_buffer(v0, qword_12FD50);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static ViewTranscriptAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FD50);

  return sub_69558(v3, a1);
}

uint64_t static ViewTranscriptAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD68, &qword_F0B18);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD70, &qword_F0B20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_91478();
  sub_E5744();
  v5._countAndFlagsBits = 0x20776F6853;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD80, &unk_F0B50);
  sub_E5724();

  v6._countAndFlagsBits = 0x7263736E61727420;
  v6._object = 0xEB00000000747069;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_91478()
{
  result = qword_12FD78;
  if (!qword_12FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD78);
  }

  return result;
}

uint64_t sub_914CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*ViewTranscriptAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9156C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_6FAC8(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_91F54(v10, type metadata accessor for EpisodeEntity);
}

uint64_t ViewTranscriptAppIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_91F54(a1, type metadata accessor for EpisodeEntity);
}

void (*ViewTranscriptAppIntent.episode.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t ViewTranscriptAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t ViewTranscriptAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(*(type metadata accessor for OpenTranscriptIntent() - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *v1;
  sub_E72F4();
  *(v2 + 48) = sub_E72E4();
  v5 = sub_E7294();
  *(v2 + 56) = v5;
  *(v2 + 64) = v4;

  return _swift_task_switch(sub_91C4C, v5, v4);
}

uint64_t sub_91C4C()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_E5504();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_91D00;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_6D364(sub_6D364, v6, v4, v5);
}

uint64_t sub_91D00()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 80) = v0;

  sub_91F54(v4, type metadata accessor for OpenTranscriptIntent);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_91EE4;
  }

  else
  {
    v8 = sub_91E6C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_91E6C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];

  sub_E53A4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_91EE4()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_91F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_91FB8()
{
  result = qword_12FD88;
  if (!qword_12FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD88);
  }

  return result;
}

unint64_t sub_92010()
{
  result = qword_12FD90;
  if (!qword_12FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD90);
  }

  return result;
}

uint64_t sub_9209C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD68, &qword_F0B18);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD70, &qword_F0B20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x20776F6853;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD80, &unk_F0B50);
  sub_E5724();

  v6._countAndFlagsBits = 0x7263736E61727420;
  v6._object = 0xEB00000000747069;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_92240(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ViewTranscriptAppIntent.perform()(a1);
}

uint64_t sub_922E0(uint64_t a1)
{
  v2 = sub_91478();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_9231C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_9241C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FDA8);
  __swift_project_value_buffer(v0, qword_12FDA8);
  return sub_E5914();
}

uint64_t static FetchShowLatestEpisodesAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC60 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FDA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_92534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FDC0);
  v1 = __swift_project_value_buffer(v0, qword_12FDC0);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static FetchShowLatestEpisodesAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC68 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FDC0);

  return sub_69558(v3, a1);
}

uint64_t static FetchShowLatestEpisodesAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDD8, &qword_F0D08);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDE0, &qword_F0D10);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_92818();
  sub_E5744();
  v5._object = 0x80000000000F7CC0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDF0, &qword_F0D40);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_92818()
{
  result = qword_12FDE8;
  if (!qword_12FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FDE8);
  }

  return result;
}

uint64_t sub_9286C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_E5524();
  *a2 = result;
  return result;
}

uint64_t sub_92898(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_8262C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_8262C(v10, v8);

  sub_E5514();
  sub_93A0C(v10, type metadata accessor for ShowEntity);
}

uint64_t FetchShowLatestEpisodesAppIntent.show.setter(uint64_t a1)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_8262C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_93A0C(a1, type metadata accessor for ShowEntity);
}

void (*FetchShowLatestEpisodesAppIntent.show.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_92AC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_E5514();
}

void (*FetchShowLatestEpisodesAppIntent.limit.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t FetchShowLatestEpisodesAppIntent.objectGraph.getter()
{
  v1 = *(v0 + 16);
  sub_E51D4();
  return v3;
}

uint64_t sub_92BDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_E51E4();
}

uint64_t FetchShowLatestEpisodesAppIntent.objectGraph.setter()
{
  v1 = *(v0 + 16);

  sub_E51E4();
}

void (*FetchShowLatestEpisodesAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t FetchShowLatestEpisodesAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDF8, &qword_F0D48);
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v42 = v34 - v3;
  v4 = sub_E5774();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v45 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v34 - v17;
  v34[1] = v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v34 - v21;
  v23 = sub_E5944();
  v40 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  v26 = *(v24 + 56);
  v37 = v24 + 56;
  v39 = v26;
  v26(v22, 0, 1, v23);
  v27 = type metadata accessor for ShowEntity(0);
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  v28 = sub_E5354();
  v29 = *(*(v28 - 8) + 56);
  v29(v14, 1, 1, v28);
  v29(v12, 1, 1, v28);
  v36 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v47 + 104);
  v47 += 104;
  v35 = v30;
  v30(v45);
  sub_94638(&qword_12DDF0, type metadata accessor for ShowEntity);
  v31 = sub_E5584();
  v32 = v41;
  *v41 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE00, &unk_F0D50);
  sub_E5914();
  sub_E5914();
  v39(v22, 0, 1, v40);
  v49 = 10;
  v50 = 0;
  v29(v14, 1, 1, v28);
  (*(v43 + 104))(v42, enum case for IntentParameter.IntControlStyle.stepper<A>(_:), v44);
  v35(v45, v36, v46);
  v32[1] = sub_E55C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v48 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  v32[2] = result;
  return result;
}

uint64_t FetchShowLatestEpisodesAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  ShowLatestEpisodesIntent = type metadata accessor for FetchShowLatestEpisodesIntent();
  *(v2 + 48) = ShowLatestEpisodesIntent;
  v4 = *(*(ShowLatestEpisodesIntent - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = *v1;
  *(v2 + 80) = *(v1 + 16);

  return _swift_task_switch(sub_933BC, 0, 0);
}

uint64_t sub_933BC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_E5504();
  sub_E5504();
  *(v3 + *(v4 + 20)) = v0[2];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_9349C;
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  return sub_6D6C8(v9, v8, v6, v7);
}

uint64_t sub_9349C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 56);
  v8 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  sub_93A0C(v5, type metadata accessor for FetchShowLatestEpisodesIntent);
  if (v1)
  {
    v6 = sub_93930;
  }

  else
  {
    v6 = sub_935E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_935E4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[3] = v0[12];
  v4 = swift_allocObject();
  v0[14] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = async function pointer to Collection<>.concurrentMap(_:)[1];

  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E010, qword_EA628);
  v0[16] = v7;
  v8 = sub_3C2A0(&qword_12FE08, &qword_12E010, qword_EA628);
  *v6 = v0;
  v6[1] = sub_93748;

  return Collection<>.concurrentMap(_:)(&unk_F0D70, v4, v7, v8);
}

uint64_t sub_93748(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_93994;
  }

  else
  {
    v8 = v4[14];
    v9 = v4[12];

    v4[18] = a1;
    v7 = sub_93884;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_93884()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[5];
  v0[4] = v0[18];
  sub_940D0();
  sub_E5394();

  v4 = v0[1];

  return v4();
}

uint64_t sub_93930()
{
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_93994()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[17];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_93A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_93A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_93A8C, 0, 0);
}

uint64_t sub_93A8C()
{
  v1 = v0[9];
  sub_E51D4();
  v0[10] = v0[7];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_93B58;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_93B58()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_93E74, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = type metadata accessor for EpisodeEntity(0);
    v3[13] = v5;
    v6 = *(v5 + 96);
    v7 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
    v8 = swift_task_alloc();
    v3[14] = v8;
    v9 = sub_94638(&qword_12E998, type metadata accessor for EpisodeEntity);
    *v8 = v3;
    v8[1] = sub_93D40;
    v10 = v3[8];

    return Preparable.artworkData(for:imageProvider:)(v4 + v6, v3 + 2, v5, v9);
  }
}

uint64_t sub_93D40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = sub_93F6C;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v9 = sub_93ED8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_93E74()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_93ED8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v5 + *(v3 + 100);
  sub_4DC8C(*v6, *(v6 + 8));
  *v6 = v2;
  *(v6 + 8) = v1;
  v7 = v0[1];

  return v7();
}

uint64_t sub_93F6C()
{
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t sub_93FD8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_94020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_93A6C(a1, v4, v5, v6);
}

unint64_t sub_940D0()
{
  result = qword_12FE10;
  if (!qword_12FE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E010, qword_EA628);
    sub_94638(&qword_12DD68, type metadata accessor for EpisodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE10);
  }

  return result;
}

unint64_t sub_94188()
{
  result = qword_12FE18;
  if (!qword_12FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE18);
  }

  return result;
}

unint64_t sub_941E0()
{
  result = qword_12FE20;
  if (!qword_12FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE20);
  }

  return result;
}

uint64_t sub_94284()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDD8, &qword_F0D08);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDE0, &qword_F0D10);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._object = 0x80000000000F7CC0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDF0, &qword_F0D40);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_9441C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return FetchShowLatestEpisodesAppIntent.perform()(a1);
}

uint64_t sub_944BC(uint64_t a1)
{
  v2 = sub_92818();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_94520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

uint64_t sub_94560@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_94638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_94680()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FE48);
  __swift_project_value_buffer(v0, qword_12FE48);
  return sub_E5914();
}

uint64_t sub_9471C()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_12FE60);
  __swift_project_value_buffer(v0, qword_12FE60);
  return sub_E55F4();
}

uint64_t sub_947B8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static FollowRSSFeedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE78, &qword_F0F40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE80, &qword_F0F48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_94A04();
  sub_E5744();
  v5._countAndFlagsBits = 0x5020776F6C6C6F46;
  v5._object = 0xEF2074736163646FLL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE90, &qword_F0F78);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_94A04()
{
  result = qword_12FE88;
  if (!qword_12FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE88);
  }

  return result;
}

uint64_t sub_94A58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*FollowRSSFeedAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_94AF8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_E59C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v14 = *a2;
  v13 = a2[1];
  v12(v9, v11, v4);

  sub_E5514();
  (*(v5 + 8))(v11, v4);
}

uint64_t FollowRSSFeedAppIntent.feedURL.setter(uint64_t a1)
{
  v3 = sub_E59C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = *(v1 + 8);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_E5514();
  return (*(v4 + 8))(a1, v3);
}

void (*FollowRSSFeedAppIntent.feedURL.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t FollowRSSFeedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v26 = sub_E5774();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_E5944();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v27 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v20 = sub_E5214();
  v21 = v25;
  *v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE98, &qword_F0F80);
  sub_E5914();
  sub_E5914();
  (*(v18 + 56))(v16, 0, 1, v17);
  v22 = sub_E59C4();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = sub_E5354();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v26);
  result = sub_E55A4();
  v21[1] = result;
  return result;
}

uint64_t FollowRSSFeedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = type metadata accessor for ShowEntity(0);
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v6 = sub_E59C4();
  *(v2 + 104) = v6;
  v7 = *(v6 - 8);
  *(v2 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v9 = type metadata accessor for FollowFeedIntent();
  *(v2 + 128) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;

  return _swift_task_switch(sub_952E8, 0, 0);
}

uint64_t sub_952E8()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  sub_E5504();
  (*(v5 + 32))(v2, v4, v6);
  (*(v5 + 56))(v2, 0, 1, v6);
  v7 = v2 + v3[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v2 + v3[6]);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + v3[7]) = 0;
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_95428;
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[17];

  return sub_6DC3C(v12, v10, v11);
}

uint64_t sub_95428(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 160);
  v7 = *(*v4 + 136);
  v10 = *v4;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  *(v5 + 225) = a3;
  *(v5 + 184) = v3;

  sub_96068(v7, type metadata accessor for FollowFeedIntent);
  if (v3)
  {
    v8 = sub_95B18;
  }

  else
  {
    v8 = sub_95578;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_95578()
{
  v1 = *(v0 + 184);
  sub_E7384();
  v2 = *(v0 + 225);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  if (v1)
  {
    sub_95FBC(*(v0 + 168), *(v0 + 176), *(v0 + 225));
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAB0, &qword_E9DD0);
    v14 = swift_allocObject();
    *(v0 + 192) = v14;
    *(v14 + 16) = xmmword_E87F0;
    *(v14 + 32) = v4;
    *(v14 + 40) = v3;
    *(v14 + 48) = v2;
    sub_95FE0(v4, v3, v2);
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_95730;
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);

    return sub_6E0C0(v14, v16, v17);
  }
}

uint64_t sub_95730(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 192);
  v8 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v6 = sub_95BD4;
  }

  else
  {
    v6 = sub_95864;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_95864()
{
  v31 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 16))
  {
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 136);
    v29 = *(v0 + 120);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = *(v0 + 225);
    sub_8262C(v1 + ((*(*(v0 + 56) + 80) + 32) & ~*(*(v0 + 56) + 80)), v2);

    sub_96004(v2, v3);
    sub_8262C(v3, v5);
    OpenShowAppIntent.init()(v30);
    v7 = v30[0];
    v8 = v30[1];
    v9 = v30[2];
    sub_8262C(v5, v4);
    sub_8262C(v4, v6);
    sub_E5514();
    sub_96068(v4, type metadata accessor for ShowEntity);
    *(v0 + 224) = 2;
    sub_E5514();
    sub_96068(v5, type metadata accessor for ShowEntity);
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    *(v0 + 32) = v9;
    sub_960C8();
    sub_823F8();
    sub_E5384();
    sub_95FBC(v26, v27, v25);
    sub_96068(v3, type metadata accessor for ShowEntity);
  }

  else
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 225);

    sub_96120();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    sub_95FBC(v11, v12, v13);
    v15 = *(v0 + 136);
    v16 = *(v0 + 120);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_95B18()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_95BD4()
{
  sub_95FBC(*(v0 + 168), *(v0 + 176), *(v0 + 225));
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_95C9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC70 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FE48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_95D44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE78, &qword_F0F40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE80, &qword_F0F48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x5020776F6C6C6F46;
  v5._object = 0xEF2074736163646FLL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE90, &qword_F0F78);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_95EE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return FollowRSSFeedAppIntent.perform()(a1);
}

uint64_t sub_95F80(uint64_t a1)
{
  v2 = sub_94A04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_95FBC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

id sub_95FE0(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_96004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_96068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_960C8()
{
  result = qword_12DE68;
  if (!qword_12DE68)
  {
    type metadata accessor for ShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE68);
  }

  return result;
}

unint64_t sub_96120()
{
  result = qword_12FEA0;
  if (!qword_12FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FEA0);
  }

  return result;
}

unint64_t sub_96178()
{
  result = qword_12FEA8;
  if (!qword_12FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FEA8);
  }

  return result;
}

unint64_t sub_961D0()
{
  result = qword_12FEB0;
  if (!qword_12FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FEB0);
  }

  return result;
}

uint64_t sub_96278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_963BC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FEE0);
  __swift_project_value_buffer(v0, qword_12FEE0);
  return sub_E5914();
}

uint64_t sub_96460()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_12FEF8);
  __swift_project_value_buffer(v0, qword_12FEF8);
  return sub_E55F4();
}

uint64_t static FollowShowAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF10, &qword_F1140);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF18, &qword_F1148);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_96698();
  sub_E5744();
  v5._countAndFlagsBits = 0x20776F6C6C6F46;
  v5._object = 0xE700000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF28, &qword_F1178);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_96698()
{
  result = qword_12FF20;
  if (!qword_12FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF20);
  }

  return result;
}

uint64_t sub_966EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*FollowShowAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9678C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_8262C(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_8262C(v10, v8);

  sub_E5514();
  sub_97518(v10, type metadata accessor for ShowEntity);
}

uint64_t FollowShowAppIntent.show.setter(uint64_t a1)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_8262C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_97518(a1, type metadata accessor for ShowEntity);
}

void (*FollowShowAppIntent.show.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t FollowShowAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for ShowEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_97578(&qword_12DDF0);
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t FollowShowAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v4 = type metadata accessor for FollowFeedIntent();
  *(v2 + 56) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = type metadata accessor for ShowEntity(0);
  *(v2 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_96EF8, 0, 0);
}

uint64_t sub_96EF8()
{
  v23 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  sub_E5504();
  OpenShowAppIntent.init()(&v21);
  *(v0 + 144) = v21;
  *(v0 + 160) = v22;
  sub_8262C(v3, v2);
  sub_8262C(v2, v5);
  sub_E5514();
  sub_97518(v2, type metadata accessor for ShowEntity);
  *(v0 + 184) = 0;
  sub_E5514();
  sub_97518(v3, type metadata accessor for ShowEntity);
  sub_E5504();
  sub_CC80(v4 + *(v17 + 40), v18);
  sub_97518(v4, type metadata accessor for ShowEntity);
  sub_E5504();
  v8 = *(v6 + 56);
  sub_97518(v6, type metadata accessor for ShowEntity);
  sub_E5504();
  v9 = *(v19 + *(v17 + 44));
  sub_E53E4();
  LODWORD(v9) = *(v0 + 185);
  sub_97518(v19, type metadata accessor for ShowEntity);
  sub_CF40(v18, v7);
  v10 = v7 + v20[5];
  *v10 = v8;
  *(v10 + 8) = 0;
  v11 = (v7 + v20[6]);
  *v11 = 0;
  v11[1] = 0;
  *(v7 + v20[7]) = (v9 == 2) | v9 & 1;
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_97124;
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  v15 = *(v0 + 64);

  return sub_6E588(v15, v13, v14);
}

uint64_t sub_97124(void *a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 168);
  v10 = *v4;
  *(*v4 + 176) = v3;

  v11 = *(v8 + 64);
  if (v3)
  {
    sub_97518(v11, type metadata accessor for FollowFeedIntent);
    v12 = sub_97428;
  }

  else
  {
    sub_95FBC(a1, a2, a3);
    sub_97518(v11, type metadata accessor for FollowFeedIntent);
    v12 = sub_972B0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_972B0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[10];
  v7 = v0[9];
  v8 = v0[5];
  v15 = v0[8];
  v16 = v0[6];
  sub_E5504();
  v0[2] = v4;
  v0[3] = v1;
  v0[4] = v2;
  sub_97578(&qword_12DE68);
  sub_823F8();
  sub_E5384();
  sub_97518(v5, type metadata accessor for ShowEntity);

  v9 = v0[1];

  return v9();
}

uint64_t sub_97428()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v14 = v0[6];

  v11 = v0[1];
  v12 = v0[22];

  return v11();
}

uint64_t sub_97518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_97578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_975C0()
{
  result = qword_12FF30;
  if (!qword_12FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF30);
  }

  return result;
}

unint64_t sub_97618()
{
  result = qword_12FF38;
  if (!qword_12FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF38);
  }

  return result;
}

uint64_t sub_976BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC80 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FEE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_97764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF10, &qword_F1140);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF18, &qword_F1148);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x20776F6C6C6F46;
  v5._object = 0xE700000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF28, &qword_F1178);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_978F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return FollowShowAppIntent.perform()(a1);
}

uint64_t sub_97998(uint64_t a1)
{
  v2 = sub_96698();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_979D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

unint64_t sub_97B1C()
{
  result = qword_12FF50;
  if (!qword_12FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF50);
  }

  return result;
}

unint64_t sub_97B74()
{
  result = qword_12FF58;
  if (!qword_12FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF58);
  }

  return result;
}

uint64_t sub_97C18()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_145670);
  __swift_project_value_buffer(v0, qword_145670);
  return sub_E5914();
}

uint64_t sub_97CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = *(*(type metadata accessor for ShowEntity(0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_97D64, 0, 0);
}

uint64_t sub_97D64()
{
  v23 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  sub_E5504();
  OpenShowAppIntent.init()(&v21);
  *(v0 + 176) = v21;
  *(v0 + 192) = v22;
  sub_8262C(v1, v2);
  sub_8262C(v2, v3);
  sub_E5514();
  sub_98B0C(v2);
  *(v0 + 97) = 1;
  sub_E5514();
  sub_98B0C(v1);
  sub_E51D4();
  v7 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  sub_E6DA4();

  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  sub_E5504();
  v10 = *(v4 + 48);
  v11 = *(v0 + 144);
  if (v10)
  {
    v12 = v11[5];
    v13 = 2;
  }

  else
  {
    v12 = v11[4];
    if (v12)
    {
      v14 = v12;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v12 = v11[7];
    }
  }

  v15 = *(v0 + 128);

  sub_98B0C(v11);
  *(v0 + 80) = v12;
  *(v0 + 88) = v10;
  *(v0 + 96) = v13;
  sub_E51D4();
  v16 = *(v0 + 112);
  *(v0 + 200) = v16;
  v17 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  v19 = sub_98B68();
  *v18 = v0;
  v18[1] = sub_97F88;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v19, v0 + 80, v16, &type metadata for UnfollowShowIntent, v19, v8, v9);
}

uint64_t sub_97F88()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v7 = *v1;
  *(v2 + 216) = v0;

  sub_95FBC(*(v2 + 80), *(v2 + 88), *(v2 + 96));

  if (v0)
  {
    v5 = sub_981C4;
  }

  else
  {
    v5 = sub_980CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_980CC()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  sub_823F8();
  sub_E5374();

  v9 = v0[1];

  return v9();
}

uint64_t sub_981C4()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];
  v9 = v0[27];

  return v8();
}

uint64_t sub_9827C@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC90 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_145670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_98324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF80, &qword_F1480);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF88, &qword_F1488);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x776F6C6C6F666E55;
  v5._object = 0xE900000000000020;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF90, &unk_F14B8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_984BC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_97CAC(a1, v5, v4);
}

uint64_t sub_98568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_986B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_98590(uint64_t a1)
{
  v2 = sub_98664();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_98664()
{
  result = qword_12FF70;
  if (!qword_12FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF70);
  }

  return result;
}

uint64_t sub_986B8()
{
  v0 = sub_E5774();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  __chkstk_darwin(v0);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - v16;
  v18 = sub_E5944();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v30 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v21 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  (*(v19 + 56))(v17, 0, 1, v18);
  v22 = type metadata accessor for ShowEntity(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = sub_E5354();
  v24 = *(*(v23 - 8) + 56);
  v24(v9, 1, 1, v23);
  v24(v7, 1, 1, v23);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_98AB4();
  sub_E5584();
  return v21;
}

unint64_t sub_98AB4()
{
  result = qword_12DDF0;
  if (!qword_12DDF0)
  {
    type metadata accessor for ShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DDF0);
  }

  return result;
}

uint64_t sub_98B0C(uint64_t a1)
{
  v2 = type metadata accessor for ShowEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_98B68()
{
  result = qword_12FF78;
  if (!qword_12FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF78);
  }

  return result;
}

uint64_t sub_98BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

uint64_t sub_98BE8()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FF98);
  __swift_project_value_buffer(v0, qword_12FF98);
  return sub_E5914();
}

uint64_t static PlayPauseStationAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC98 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FF98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_98CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FFB0);
  v1 = __swift_project_value_buffer(v0, qword_12FFB0);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayPauseStationAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FFB0);
  return sub_26324(v3, a1, &qword_12F340, &qword_EEDB0);
}

uint64_t static PlayPauseStationAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFC8, &qword_F14C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_98F18();
  sub_E5754();
  return sub_E5714();
}

unint64_t sub_98F18()
{
  result = qword_12FFD0;
  if (!qword_12FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFD0);
  }

  return result;
}

void (*PlayPauseStationAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_98FE0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for StationEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_9AF44(a1, &v15 - v9, type metadata accessor for StationEntity);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  sub_9AF44(v10, v8, type metadata accessor for StationEntity);

  sub_E5514();
  sub_9AFAC(v10, type metadata accessor for StationEntity);
}

uint64_t PlayPauseStationAppIntent.station.setter(uint64_t a1)
{
  v3 = type metadata accessor for StationEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_9AF44(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StationEntity);
  sub_E5514();
  return sub_9AFAC(a1, type metadata accessor for StationEntity);
}

void (*PlayPauseStationAppIntent.station.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_99238(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_26324(a1, &v15 - v9, &qword_12F4E0, &unk_EEE00);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_26324(v10, v8, &qword_12F4E0, &unk_EEE00);

  sub_E5514();
  sub_99410(v10);
}

uint64_t PlayPauseStationAppIntent.firstEpisode.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + 16);
  sub_26324(a1, &v8 - v6, &qword_12F4E0, &unk_EEE00);
  sub_E5514();
  return sub_99410(a1);
}

uint64_t sub_99410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*PlayPauseStationAppIntent.firstEpisode.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayPauseStationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v44 = &v36 - v4;
  v5 = sub_E5774();
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v36 - v22;
  v24 = sub_E5944();
  v41 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v48 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFD8, &qword_F14D8);
  sub_E5914();
  sub_E5914();
  v27 = *(v25 + 56);
  v40 = v25 + 56;
  v42 = v27;
  v27(v23, 0, 1, v24);
  v28 = type metadata accessor for StationEntity();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  v29 = sub_E5354();
  v30 = *(*(v29 - 8) + 56);
  v30(v15, 1, 1, v29);
  v31 = v13;
  v30(v13, 1, 1, v29);
  v38 = enum case for InputConnectionBehavior.default(_:);
  v32 = *(v47 + 104);
  v47 += 104;
  v37 = v32;
  v33 = v43;
  v32(v43);
  sub_99B14(&qword_12DC58, type metadata accessor for StationEntity);
  v45[1] = sub_E5584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFE0, &qword_F14E0);
  sub_E5914();
  sub_E5914();
  v42(v23, 0, 1, v41);
  v34 = type metadata accessor for EpisodeEntity(0);
  (*(*(v34 - 8) + 56))(v44, 1, 1, v34);
  v30(v15, 1, 1, v29);
  v30(v31, 1, 1, v29);
  v37(v33, v38, v46);
  sub_99B14(&qword_12E000, type metadata accessor for EpisodeEntity);
  result = sub_E5584();
  v45[2] = result;
  return result;
}

uint64_t sub_99B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlayPauseStationAppIntent.init(station:firstEpisode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a1;
  v63 = a2;
  v64 = a3;
  v54 = type metadata accessor for StationEntity();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v54);
  v61 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v60 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = v46 - v13;
  v49 = sub_E5774();
  v65 = *(v49 - 8);
  v14 = *(v65 + 64);
  __chkstk_darwin(v49);
  v57 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v56 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v55 = v46 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v46 - v27;
  v29 = sub_E5944();
  v52 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v46[1] = v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v66 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a3 = sub_E5214();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFD8, &qword_F14D8);
  sub_E5914();
  sub_E5914();
  v33 = *(v30 + 56);
  v51 = v30 + 56;
  v53 = v33;
  v33(v28, 0, 1, v29);
  (*(v4 + 56))(v24, 1, 1, v54);
  v34 = sub_E5354();
  v35 = *(*(v34 - 8) + 56);
  v36 = v55;
  v35(v55, 1, 1, v34);
  v37 = v56;
  v35(v56, 1, 1, v34);
  v48 = enum case for InputConnectionBehavior.default(_:);
  v38 = *(v65 + 104);
  v65 += 104;
  v50 = v38;
  v39 = v57;
  v38(v57);
  sub_99B14(&qword_12DC58, type metadata accessor for StationEntity);
  v54 = sub_E5584();
  v64[1] = v54;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFE0, &qword_F14E0);
  sub_E5914();
  sub_E5914();
  v53(v28, 0, 1, v52);
  v40 = type metadata accessor for EpisodeEntity(0);
  v41 = v58;
  (*(*(v40 - 8) + 56))(v58, 1, 1, v40);
  v35(v36, 1, 1, v34);
  v35(v37, 1, 1, v34);
  v50(v39, v48, v49);
  sub_99B14(&qword_12E000, type metadata accessor for EpisodeEntity);
  v64[2] = sub_E5584();
  v42 = v62;
  v43 = v59;
  sub_9AF44(v62, v59, type metadata accessor for StationEntity);
  sub_9AF44(v43, v61, type metadata accessor for StationEntity);
  sub_E5514();
  sub_9AFAC(v43, type metadata accessor for StationEntity);
  v44 = v63;
  sub_26324(v63, v41, &qword_12F4E0, &unk_EEE00);
  sub_26324(v41, v60, &qword_12F4E0, &unk_EEE00);
  sub_E5514();
  sub_99410(v44);
  sub_9AFAC(v42, type metadata accessor for StationEntity);
  return sub_99410(v41);
}

uint64_t PlayPauseStationAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = type metadata accessor for PlayStationIntent();
  *(v2 + 40) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v5 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 56) = v5;
  v6 = *(v5 - 8);
  *(v2 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00) - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;
  *(v2 + 104) = *(v1 + 16);

  return _swift_task_switch(sub_9A498, 0, 0);
}

uint64_t sub_9A498()
{
  v1 = v0[11];
  sub_E51D4();
  v0[14] = v0[3];
  v2 = sub_E5D94();
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_9A558;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_9A558()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_9AC08;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_9A674;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9A674()
{
  v0[17] = v0[2];
  if ((sub_E5D84() & 1) == 0)
  {
LABEL_8:
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[5];
    v14 = v0[6];
    sub_E5504();
    v16 = v14 + *(v15 + 20);
    sub_E5504();
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_9AAC4;
    v18 = v0[12];
    v19 = v0[13];
    v20 = v0[11];
    v21 = v0[6];

    return sub_6EAFC(sub_6EAFC, v21, v20, v18, v19);
  }

  v1 = sub_E5D64();
  if (v1)
  {
    v2 = v1;
    v3 = sub_E7474();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  sub_E5504();
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = v0[10];
  if (v10)
  {
    sub_99410(v11);
    if (v5)
    {
LABEL_7:

      goto LABEL_8;
    }
  }

  else
  {
    v23 = v0[9];
    v24 = v0[10];
    sub_9AF44(v11, v23, type metadata accessor for EpisodeEntity);
    sub_99410(v24);
    v26 = *(v23 + 72);
    v25 = *(v23 + 80);

    sub_9AFAC(v23, type metadata accessor for EpisodeEntity);
    if (v5)
    {
      if (!v25)
      {
        goto LABEL_7;
      }

      if (v3 == v26 && v5 == v25)
      {
      }

      else
      {
        v27 = sub_E7BD4();

        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else if (v25)
    {
      goto LABEL_7;
    }
  }

  v28 = async function pointer to PlaybackController.pause()[1];
  v29 = swift_task_alloc();
  v0[18] = v29;
  *v29 = v0;
  v29[1] = sub_9A918;

  return PlaybackController.pause()();
}

uint64_t sub_9A918()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_9AC90;
  }

  else
  {
    v3 = sub_9AA2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_9AA2C()
{
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  v5 = v0[4];
  sub_E53A4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_9AAC4()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 168) = v0;

  sub_9AFAC(v3, type metadata accessor for PlayStationIntent);
  if (v0)
  {
    v4 = sub_9AD18;
  }

  else
  {
    v4 = sub_9B238;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9AC08()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_9AC90()
{
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_9AD18()
{
  v1 = v0[17];

  v2 = v0[21];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_9ADA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFC8, &qword_F14C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_E5754();
  return sub_E5714();
}

uint64_t sub_9AE6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayPauseStationAppIntent.perform()(a1);
}

uint64_t sub_9AF08(uint64_t a1)
{
  v2 = sub_98F18();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_9AF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9AFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9B010()
{
  result = qword_12FFE8;
  if (!qword_12FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFE8);
  }

  return result;
}

unint64_t sub_9B070()
{
  result = qword_12FFF0;
  if (!qword_12FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFF0);
  }

  return result;
}

unint64_t sub_9B0C8()
{
  result = qword_12FFF8;
  if (!qword_12FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFF8);
  }

  return result;
}

uint64_t sub_9B154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_9B23C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_130010);
  __swift_project_value_buffer(v0, qword_130010);
  return sub_E5914();
}

uint64_t static PlayStationAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCA8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_130010);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_9B350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_130028);
  v1 = __swift_project_value_buffer(v0, qword_130028);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayStationAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_130028);

  return sub_69558(v3, a1);
}

uint64_t static PlayStationAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130040, &qword_F16E8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130048, &qword_F16F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_9B62C();
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130058, &unk_F1720);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_9B62C()
{
  result = qword_130050;
  if (!qword_130050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130050);
  }

  return result;
}

uint64_t sub_9B680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*PlayStationAppIntent.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9B720(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for StationEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_25FC4(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_25FC4(v10, v8);

  sub_E5514();
  sub_9C3FC(v10, type metadata accessor for StationEntity);
}

uint64_t PlayStationAppIntent.station.setter(uint64_t a1)
{
  v3 = type metadata accessor for StationEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_25FC4(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_9C3FC(a1, type metadata accessor for StationEntity);
}

void (*PlayStationAppIntent.station.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayStationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFD8, &qword_F14D8);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for StationEntity();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_25F6C();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayStationAppIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = sub_E5354();
  *(v2 + 88) = v3;
  v4 = *(v3 - 8);
  *(v2 + 96) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v6 = *(*(type metadata accessor for StationEntity() - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v7 = *(*(sub_E7014() - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v8 = type metadata accessor for PlayStationIntent();
  *(v2 + 128) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;

  return _swift_task_switch(sub_9BE88, 0, 0);
}

uint64_t sub_9BE88()
{
  v13 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  OpenAppLocationAppIntent.init()(v12);
  v4 = v12[1];
  *(v0 + 160) = v12[0];
  *(v0 + 168) = v4;
  *(v0 + 176) = v12[2];
  *(v0 + 200) = 11;
  sub_E5514();
  *(v0 + 201) = 2;
  sub_E5514();
  sub_E5504();
  v5 = *(v3 + 20);
  v6 = type metadata accessor for EpisodeEntity(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_9BFD4;
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);

  return sub_6EF80(sub_6EF80, v10, v8, v9);
}