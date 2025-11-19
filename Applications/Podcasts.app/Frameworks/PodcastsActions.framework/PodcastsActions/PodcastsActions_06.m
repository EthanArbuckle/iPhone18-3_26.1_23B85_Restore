uint64_t sub_9BFD4()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 192) = v0;

  sub_9C3FC(v3, type metadata accessor for PlayStationIntent);
  if (v0)
  {
    v4 = sub_9C2D4;
  }

  else
  {
    v4 = sub_9C118;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_9C118()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v17 = v0[11];
  v18 = v0[22];
  v16 = v0[10];
  v0[5] = v0[20];
  v0[6] = v1;
  v0[7] = v18;
  sub_E7004();
  v20._countAndFlagsBits = 0x79616C7020776F4ELL;
  v20._object = 0xED00002720676E69;
  sub_E6FF4(v20);
  sub_E5504();
  v7 = *(v3 + 40);
  sub_E53E4();
  v8 = v0[8];
  v9 = v0[9];
  sub_9C3FC(v3, type metadata accessor for StationEntity);
  v21._countAndFlagsBits = v8;
  v21._object = v9;
  sub_E6FD4(v21);

  v22._countAndFlagsBits = 39;
  v22._object = 0xE100000000000000;
  sub_E6FF4(v22);
  sub_E5344();
  sub_6FB88();
  sub_E5364();
  (*(v5 + 8))(v6, v17);

  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_9C2D4()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v0[2] = v0[20];
  v0[3] = v3;
  v0[4] = v2;
  sub_8EE68(v1, v4);
  sub_6FB88();
  sub_E5364();

  (*(v5 + 8))(v4, v6);

  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_9C3FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9C460()
{
  result = qword_130060;
  if (!qword_130060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130060);
  }

  return result;
}

unint64_t sub_9C4C0()
{
  result = qword_130068;
  if (!qword_130068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130068);
  }

  return result;
}

unint64_t sub_9C518()
{
  result = qword_130070;
  if (!qword_130070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130070);
  }

  return result;
}

uint64_t sub_9C5BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130040, &qword_F16E8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130048, &qword_F16F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
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

uint64_t sub_9C74C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayStationAppIntent.perform()(a1);
}

uint64_t sub_9C7E8(uint64_t a1)
{
  v2 = sub_9B62C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_9C824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_9C8E0()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_130088);
  __swift_project_value_buffer(v0, qword_130088);
  return sub_E57B4();
}

uint64_t sub_9C97C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130168, &qword_F1E10);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130810, &unk_F1E18);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_EC520;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_E5644();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_E5644();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_E5644();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_E5644();
  v9 = sub_B0E34(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1300A0 = v9;
  return result;
}

uint64_t static WidgetEpisodePlayList.caseDisplayRepresentations.getter()
{
  if (qword_12CCC0 != -1)
  {
    swift_once();
  }
}

PodcastsActions::WidgetEpisodePlayList_optional __swiftcall WidgetEpisodePlayList.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_1201A8;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t WidgetEpisodePlayList.rawValue.getter()
{
  v1 = 0x6F4E6E657473696CLL;
  v2 = 0x64616F6C6E776F64;
  if (*v0 != 2)
  {
    v2 = 0x704574736574616CLL;
  }

  if (*v0)
  {
    v1 = 0x6465766173;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_9CCAC()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_9CD80()
{
  *v0;
  *v0;
  *v0;
  sub_E7124();
}

Swift::Int sub_9CE40()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

void sub_9CF1C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E6E657473696CLL;
  v4 = 0xEA00000000006465;
  v5 = 0x64616F6C6E776F64;
  if (*v1 != 2)
  {
    v5 = 0x704574736574616CLL;
    v4 = 0xEE007365646F7369;
  }

  if (*v1)
  {
    v3 = 0x6465766173;
    v2 = 0xE500000000000000;
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

uint64_t sub_9CFE4(uint64_t a1)
{
  v2 = sub_9DB68();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_9D030(uint64_t a1)
{
  v2 = sub_A0124();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_9D08C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v7 = *a1;

  sub_E51E4();
}

void (*PlayPauseWidgetIntent.objectGraph.modify(uint64_t *a1))(void *)
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

uint64_t sub_9D1A0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_1300A8);
  __swift_project_value_buffer(v0, qword_1300A8);
  return sub_E5914();
}

uint64_t sub_9D23C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_9D2E0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_6FAC8(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_74E00(v10, type metadata accessor for EpisodeEntity);
}

uint64_t PlayPauseWidgetIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 16);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_74E00(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayPauseWidgetIntent.episode.modify(uint64_t *a1))(void *)
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

uint64_t PlayPauseWidgetIntent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C0, &unk_F1920);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v48 = v43 - v4;
  v5 = sub_E5774();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v54 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v43 - v18;
  v43[1] = v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v43 - v22;
  v24 = sub_E5944();
  v52 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v57 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v29 = sub_E5214();
  v53 = a1;
  *a1 = v29;
  *(a1 + 8) = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  v47 = *(v25 + 56);
  v51 = v25 + 56;
  v47(v23, 1, 1, v24);
  v30 = type metadata accessor for EpisodeEntity(0);
  (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
  v31 = sub_E5354();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v33(v15, 1, 1, v31);
  v33(v13, 1, 1, v31);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v35 = v55;
  v36 = *(v56 + 104);
  v56 += 104;
  v50 = v36;
  v36(v54);
  sub_71064();
  v43[0] = v28;
  *(v53 + 16) = sub_E5584();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C8, &qword_F1930);
  sub_E5914();
  v37 = v47;
  v47(v23, 1, 1, v52);
  LOBYTE(v58) = 4;
  v44 = v33;
  v45 = v34;
  v33(v15, 1, 1, v31);
  v33(v13, 1, 1, v31);
  v38 = v54;
  v50(v54, v49, v35);
  sub_9DB68();
  v39 = sub_E5554();
  v40 = v53;
  *(v53 + 24) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300D8, &qword_F1938);
  sub_E5914();
  v37(v23, 1, 1, v52);
  v41 = sub_E6FC4();
  v58 = 0;
  v59 = 0;
  (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
  v44(v15, 1, 1, v31);
  v50(v38, v49, v55);
  result = sub_E55B4();
  *(v40 + 32) = result;
  return result;
}

unint64_t sub_9DB68()
{
  result = qword_1300D0;
  if (!qword_1300D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300D0);
  }

  return result;
}

uint64_t PlayPauseWidgetIntent.init(episode:episodePlaylist:playbackAccountDSID:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a3;
  v67 = a4;
  v65 = a1;
  v7 = type metadata accessor for EpisodeEntity(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v64 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C0, &unk_F1920);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v62 = v51 - v15;
  v16 = sub_E5774();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  __chkstk_darwin(v16);
  v72 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v60 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v58 = v51 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = v51 - v30;
  v32 = sub_E5944();
  v71 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v53 = v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v75 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v36 = sub_E5214();
  v69 = a5;
  *a5 = v36;
  *(a5 + 8) = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  v57 = *(v33 + 56);
  v70 = v33 + 56;
  v57(v31, 1, 1, v32);
  (*(v8 + 56))(v27, 1, 1, v7);
  v37 = sub_E5354();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v40 = v38 + 56;
  v41 = v58;
  v39(v58, 1, 1, v37);
  v42 = v60;
  v39(v60, 1, 1, v37);
  v68 = enum case for InputConnectionBehavior.default(_:);
  v52 = *(v73 + 104);
  v73 += 104;
  v52(v72);
  sub_71064();
  v59 = sub_E5584();
  v43 = v69;
  *(v69 + 16) = v59;
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C8, &qword_F1930);
  sub_E5914();
  v44 = v57;
  v57(v31, 1, 1, v71);
  LOBYTE(v76) = 4;
  v54 = v37;
  v55 = v39;
  v56 = v40;
  v39(v41, 1, 1, v37);
  v39(v42, 1, 1, v37);
  v45 = v72;
  v46 = v52;
  (v52)(v72, v68, v74);
  sub_9DB68();
  v60 = sub_E5554();
  *(v43 + 24) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300D8, &qword_F1938);
  sub_E5914();
  v44(v31, 1, 1, v71);
  v47 = sub_E6FC4();
  v76 = 0;
  v77 = 0;
  (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
  v55(v41, 1, 1, v54);
  (v46)(v45, v68, v74);
  *(v69 + 32) = sub_E55B4();
  v48 = v65;
  v49 = v63;
  sub_6FAC8(v65, v63);
  sub_6FAC8(v49, v64);
  sub_E5514();
  sub_74E00(v49, type metadata accessor for EpisodeEntity);
  LOBYTE(v76) = v61;
  sub_E5514();
  v76 = v66;
  v77 = v67;
  sub_E5514();
  return sub_74E00(v48, type metadata accessor for EpisodeEntity);
}

uint64_t PlayPauseWidgetIntent.perform()(uint64_t a1)
{
  *(v2 + 424) = a1;
  v3 = sub_E5D44();
  *(v2 + 432) = v3;
  v4 = *(v3 - 8);
  *(v2 + 440) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  v6 = type metadata accessor for PlayEpisodeIntent();
  *(v2 + 456) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 464) = swift_task_alloc();
  v8 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 472) = v8;
  v9 = *(v8 - 8);
  *(v2 + 480) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 488) = swift_task_alloc();
  v11 = sub_E6974();
  *(v2 + 496) = v11;
  v12 = *(v11 - 8);
  *(v2 + 504) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00) - 8) + 64) + 15;
  *(v2 + 544) = swift_task_alloc();
  v15 = *(v1 + 16);
  *(v2 + 88) = *v1;
  *(v2 + 104) = v15;
  *(v2 + 120) = *(v1 + 32);
  sub_E72F4();
  *(v2 + 552) = sub_E72E4();
  v17 = sub_E7294();
  *(v2 + 560) = v17;
  *(v2 + 568) = v16;

  return _swift_task_switch(sub_9E5D4, v17, v16);
}

uint64_t sub_9E5D4()
{
  v1 = v0[11];
  sub_E51D4();
  v0[72] = v0[47];
  v2 = sub_E5D94();
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[73] = v4;
  *v4 = v0;
  v4[1] = sub_9E694;

  return BaseObjectGraph.inject<A>(_:)(v0 + 46, v2, v2);
}

uint64_t sub_9E694()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v9 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = v2[71];
    v5 = v2[70];
    v6 = sub_9F484;
  }

  else
  {
    v7 = v2[72];

    v4 = v2[71];
    v5 = v2[70];
    v6 = sub_9E7B8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_9E7B8()
{
  v64 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  *(v0 + 600) = *(v0 + 368);
  *(v0 + 608) = *(v0 + 104);
  sub_E5504();
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = sub_9FA60(v1);
  sub_99410(v1);
  if (v4)
  {
    v5 = *(v0 + 536);
    sub_E6914();
    sub_9FE50(v0 + 88, v0 + 248);
    v6 = sub_E6964();
    v7 = sub_E74D4();
    sub_9FE88(v0 + 88);
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 536);
    v10 = *(v0 + 496);
    v11 = *(v0 + 504);
    if (v8)
    {
      v61 = *(v0 + 496);
      v12 = *(v0 + 488);
      v13 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v13 = 136380931;
      v60 = v9;
      sub_E5504();
      v14 = *(v12 + 88);
      sub_74E00(v12, type metadata accessor for EpisodeEntity);
      *(v0 + 416) = v14;
      sub_57150();
      v15 = sub_E7BB4();
      v17 = sub_23E64(v15, v16, &v63);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2081;
      v18 = *(v0 + 120);
      sub_E5504();
      v19 = *(v0 + 360);
      if (v19)
      {
        v20 = *(v0 + 352);
      }

      else
      {
        v20 = 7104878;
      }

      if (v19)
      {
        v21 = *(v0 + 360);
      }

      else
      {
        v21 = 0xE300000000000000;
      }

      v22 = sub_23E64(v20, v21, &v63);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_0, v6, v7, "Requesting Pause for episode %{private}s (account: %{private}s)", v13, 0x16u);
      swift_arrayDestroy();

      (*(v11 + 8))(v60, v61);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v42 = async function pointer to PlaybackController.pause()[1];
    v43 = swift_task_alloc();
    *(v0 + 616) = v43;
    *v43 = v0;
    v43[1] = sub_9EE0C;

    return PlaybackController.pause()();
  }

  else
  {
    v23 = *(v0 + 528);
    sub_E6914();
    sub_9FE50(v0 + 88, v0 + 128);
    v24 = sub_E6964();
    v25 = sub_E74D4();
    sub_9FE88(v0 + 88);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 528);
    v29 = *(v0 + 496);
    v28 = *(v0 + 504);
    if (v26)
    {
      v30 = *(v0 + 488);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136380931;
      v62 = v27;
      v63 = v32;
      sub_E5504();
      v33 = *(v30 + 88);
      sub_74E00(v30, type metadata accessor for EpisodeEntity);
      *(v0 + 408) = v33;
      sub_57150();
      v34 = sub_E7BB4();
      v36 = sub_23E64(v34, v35, &v63);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2081;
      v37 = *(v0 + 120);
      sub_E5504();
      v38 = *(v0 + 344);
      if (v38)
      {
        v39 = *(v0 + 336);
      }

      else
      {
        v39 = 7104878;
      }

      if (v38)
      {
        v40 = *(v0 + 344);
      }

      else
      {
        v40 = 0xE300000000000000;
      }

      v41 = sub_23E64(v39, v40, &v63);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_0, v24, v25, "Requesting Play for episode %{private}s (account: %{private}s)", v31, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v62, v29);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v44 = *(v0 + 464);
    sub_E5504();
    v45 = *(v0 + 112);
    sub_E5504();
    v46 = 0xA0A0A06u >> (8 * *(v0 + 81));
    v48 = *(v0 + 456);
    v47 = *(v0 + 464);
    *(v0 + 16) = qword_F1E28[*(v0 + 81)];
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0;
    *(v0 + 80) = v46;
    v49 = v48[5];
    sub_E6244();
    sub_E6254();
    sub_E63D4();
    v50 = sub_E63C4();
    (*(*(v50 - 8) + 56))(v47 + v49, 0, 1, v50);
    *(v0 + 632) = *(v0 + 120);
    sub_E5504();
    v51 = *(v0 + 288);
    v52 = *(v0 + 296);
    v53 = v48[7];
    v54 = enum case for PlaybackIntent.Source.widget(_:);
    v55 = sub_E6204();
    (*(*(v55 - 8) + 104))(v47 + v53, v54, v55);
    v56 = (v47 + v48[6]);
    *v56 = v51;
    v56[1] = v52;
    v57 = swift_task_alloc();
    *(v0 + 640) = v57;
    *v57 = v0;
    v57[1] = sub_9F040;
    v58 = *(v0 + 464);

    return sub_6F2E4(sub_6F2E4, v58);
  }
}

uint64_t sub_9EE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  v5 = *(v2 + 568);
  v6 = *(v2 + 560);
  if (v0)
  {
    v7 = sub_9F568;
  }

  else
  {
    v7 = sub_9EF48;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_9EF48()
{
  v1 = v0[69];

  v2 = v0[75];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[56];
  v11 = v0[53];
  sub_E53A4();

  v12 = v0[1];

  return v12();
}

uint64_t sub_9F040()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  *(*v1 + 648) = v0;

  v5 = *(v2 + 568);
  v6 = *(v2 + 560);
  if (v0)
  {
    v7 = sub_9F64C;
  }

  else
  {
    v7 = sub_9F17C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_9F17C()
{
  v39 = v0;
  v1 = v0[69];
  v2 = v0[65];

  sub_E6914();
  sub_9FE50((v0 + 11), (v0 + 26));
  v3 = sub_E6964();
  v4 = sub_E74D4();
  sub_9FE88((v0 + 11));
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[79];
    v6 = v0[76];
    v8 = v0[62];
    v7 = v0[63];
    v9 = v0[61];
    v36 = v0[65];
    v37 = v0[58];
    v10 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v10 = 136380931;
    sub_E5504();
    v11 = *(v9 + 88);
    sub_74E00(v9, type metadata accessor for EpisodeEntity);
    v0[50] = v11;
    sub_57150();
    v12 = sub_E7BB4();
    v14 = sub_23E64(v12, v13, &v38);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2081;
    sub_E5504();
    v15 = v0[41];
    if (v15)
    {
      v16 = v0[40];
    }

    else
    {
      v16 = 7104878;
    }

    if (v15)
    {
      v17 = v0[41];
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_23E64(v16, v17, &v38);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_0, v3, v4, "%{private}s started playing (account: %{private}s)", v10, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v36, v8);
    v19 = v37;
  }

  else
  {
    v20 = v0[65];
    v21 = v0[62];
    v22 = v0[63];
    v23 = v0[58];

    (*(v22 + 8))(v20, v21);
    v19 = v23;
  }

  sub_74E00(v19, type metadata accessor for PlayEpisodeIntent);
  v24 = v0[75];
  v25 = v0[68];
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[65];
  v29 = v0[64];
  v30 = v0[61];
  v31 = v0[58];
  v32 = v0[56];
  v33 = v0[53];
  sub_E53A4();

  v34 = v0[1];

  return v34();
}

uint64_t sub_9F484()
{
  v1 = v0[72];
  v2 = v0[69];

  v3 = v0[74];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[58];
  v11 = v0[56];

  v12 = v0[1];

  return v12();
}

uint64_t sub_9F568()
{
  v1 = v0[75];
  v2 = v0[69];

  v3 = v0[78];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[58];
  v11 = v0[56];

  v12 = v0[1];

  return v12();
}

uint64_t sub_9F64C()
{
  v57 = v0;
  v1 = v0[81];
  v2 = v0[69];
  v3 = v0[58];
  v4 = v0[56];
  v5 = v0[54];

  sub_74E00(v3, type metadata accessor for PlayEpisodeIntent);
  v0[48] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
  if (!swift_dynamicCast())
  {
    v24 = v0[75];

LABEL_13:
    v29 = v0[48];

    v30 = v0[81];
    v31 = v0[68];
    v32 = v0[67];
    v33 = v0[66];
    v34 = v0[65];
    v35 = v0[64];
    v36 = v0[61];
    v37 = v0[58];
    v38 = v0[56];

    v39 = v0[1];
    goto LABEL_16;
  }

  if ((*(v0[55] + 88))(v0[56], v0[54]) != enum case for PlaybackController.ResponseError.timeout(_:))
  {
    v25 = v0[75];
    v27 = v0[55];
    v26 = v0[56];
    v28 = v0[54];

    (*(v27 + 8))(v26, v28);
    goto LABEL_13;
  }

  v6 = v0[81];
  v7 = v0[64];

  sub_E6914();
  sub_9FE50((v0 + 11), (v0 + 21));
  v8 = sub_E6964();
  v9 = sub_E74D4();
  sub_9FE88((v0 + 11));
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[79];
    v11 = v0[76];
    v12 = v0[63];
    v55 = v0[64];
    v14 = v0[61];
    v13 = v0[62];
    v15 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v15 = 136380931;
    sub_E5504();
    v16 = *(v14 + 88);
    sub_74E00(v14, type metadata accessor for EpisodeEntity);
    v0[49] = v16;
    sub_57150();
    v17 = sub_E7BB4();
    v19 = sub_23E64(v17, v18, &v56);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2081;
    sub_E5504();
    v20 = v0[39];
    if (v20)
    {
      v21 = v0[38];
    }

    else
    {
      v21 = 7104878;
    }

    if (v20)
    {
      v22 = v0[39];
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_23E64(v21, v22, &v56);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_0, v8, v9, "Timed out waiting for %{private}s to start playing (account: %{private}s)", v15, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v55, v13);
  }

  else
  {
    v41 = v0[63];
    v40 = v0[64];
    v42 = v0[62];

    (*(v41 + 8))(v40, v42);
  }

  v43 = v0[48];

  v44 = v0[75];
  v45 = v0[68];
  v46 = v0[67];
  v47 = v0[66];
  v48 = v0[65];
  v49 = v0[64];
  v50 = v0[61];
  v51 = v0[58];
  v52 = v0[56];
  v53 = v0[53];
  sub_E53A4();

  v39 = v0[1];
LABEL_16:

  return v39();
}

uint64_t sub_9FA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_E5D84() & 1) == 0)
  {
    return 0;
  }

  result = sub_E5D64();
  if (!result)
  {
    return result;
  }

  v12 = result;
  sub_A06F0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_A0760(v5, v10);
    v13 = v12;
    v14 = sub_E7474();
    v16 = v10[10];
    if (v15)
    {
      if (!v16)
      {

        goto LABEL_16;
      }

      if (v14 == v10[9] && v15 == v16)
      {

        goto LABEL_21;
      }

      v18 = sub_E7BD4();

      if ((v18 & 1) == 0)
      {
LABEL_16:
        v19 = sub_E7484();
        v21 = v20;

        v22 = v10[11];
        sub_74E00(v10, type metadata accessor for EpisodeEntity);
        if ((v21 & 1) == 0)
        {
          return v19 == v22;
        }

        return 0;
      }
    }

    else if (v16)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_74E00(v10, type metadata accessor for EpisodeEntity);
    return 1;
  }

  sub_99410(v5);
  return 0;
}

uint64_t sub_9FCD0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_9FD78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayPauseWidgetIntent.perform()(a1);
}

uint64_t sub_9FE14(uint64_t a1)
{
  v2 = sub_A0350();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_9FEBC()
{
  result = qword_1300E0;
  if (!qword_1300E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300E0);
  }

  return result;
}

unint64_t sub_9FF14()
{
  result = qword_1300E8;
  if (!qword_1300E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300E8);
  }

  return result;
}

unint64_t sub_9FF6C()
{
  result = qword_1300F0;
  if (!qword_1300F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300F0);
  }

  return result;
}

unint64_t sub_9FFC4()
{
  result = qword_1300F8;
  if (!qword_1300F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300F8);
  }

  return result;
}

unint64_t sub_A001C()
{
  result = qword_130100;
  if (!qword_130100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130100);
  }

  return result;
}

unint64_t sub_A0074()
{
  result = qword_130108;
  if (!qword_130108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130108);
  }

  return result;
}

unint64_t sub_A00CC()
{
  result = qword_130110;
  if (!qword_130110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130110);
  }

  return result;
}

unint64_t sub_A0124()
{
  result = qword_130118;
  if (!qword_130118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130118);
  }

  return result;
}

unint64_t sub_A01A8()
{
  result = qword_130120;
  if (!qword_130120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130120);
  }

  return result;
}

unint64_t sub_A0200()
{
  result = qword_130128;
  if (!qword_130128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130128);
  }

  return result;
}

unint64_t sub_A0258()
{
  result = qword_130130;
  if (!qword_130130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130130);
  }

  return result;
}

unint64_t sub_A02F8()
{
  result = qword_130148;
  if (!qword_130148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130148);
  }

  return result;
}

unint64_t sub_A0350()
{
  result = qword_130150;
  if (!qword_130150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130150);
  }

  return result;
}

unint64_t sub_A03A8()
{
  result = qword_130158;
  if (!qword_130158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130158);
  }

  return result;
}

unint64_t sub_A0400()
{
  result = qword_130160;
  if (!qword_130160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130160);
  }

  return result;
}

uint64_t sub_A04E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetEpisodePlayList(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetEpisodePlayList(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_A06F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A0760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A07CC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_130170);
  __swift_project_value_buffer(v0, qword_130170);
  return sub_E5914();
}

uint64_t (*static SelectLibraryListAppIntent.title.modify())()
{
  if (qword_12CCD0 != -1)
  {
    swift_once();
  }

  v0 = sub_E5944();
  __swift_project_value_buffer(v0, qword_130170);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_A0934()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_130188);
  __swift_project_value_buffer(v0, qword_130188);
  return sub_E55F4();
}

uint64_t sub_A09D0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_A0ABC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static SelectLibraryListAppIntent.description.modify())()
{
  if (qword_12CCD8 != -1)
  {
    swift_once();
  }

  v0 = sub_E5604();
  __swift_project_value_buffer(v0, qword_130188);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_A0C3C@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
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
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_A0CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (*a5 == -1)
  {
    v9 = a6(0);
  }

  else
  {
    swift_once();
    v9 = a6(0);
  }

  v10 = v9;
  v11 = __swift_project_value_buffer(v9, a7);
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  return swift_endAccess();
}

uint64_t sub_A0DB4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = a1[1];
  sub_A1B4C(*a1);

  sub_E5514();
}

uint64_t SelectLibraryListAppIntent.list.setter(__int128 *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_E5514();
}

void (*SelectLibraryListAppIntent.list.modify(uint64_t *a1))(void *a1)
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
  return sub_1C5B0;
}

uint64_t SelectLibraryListAppIntent.init()@<X0>(_BYTE *a1@<X8>)
{
  v23 = a1;
  v24 = sub_E5774();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = sub_E5944();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  *a1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1301A0, &qword_F1E50);
  sub_E5914();
  (*(v18 + 56))(v16, 1, 1, v17);
  v20 = sub_E5354();
  v25 = 0;
  v26 = 0;
  v21 = *(*(v20 - 8) + 56);
  v21(v12, 1, 1, v20);
  v21(v10, 1, 1, v20);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v24);
  sub_26188();
  result = sub_E5584();
  *(v23 + 1) = result;
  return result;
}

uint64_t SelectLibraryListAppIntent.init(list:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = a2;
  *&v27 = a1;
  v28 = sub_E5774();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_E5944();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  *a2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1301A0, &qword_F1E50);
  sub_E5914();
  v21 = *(v19 + 56);
  v27 = *v27;
  v21(v17, 1, 1, v18);
  v22 = sub_E5354();
  v29 = 0uLL;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  (*(v3 + 104))(v6, enum case for InputConnectionBehavior.default(_:), v28);
  sub_26188();
  *(v26 + 1) = sub_E5584();
  v29 = v27;
  return sub_E5514();
}

unint64_t sub_A14E8()
{
  result = qword_1301A8;
  if (!qword_1301A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301A8);
  }

  return result;
}

unint64_t sub_A1540()
{
  result = qword_1301B0;
  if (!qword_1301B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301B0);
  }

  return result;
}

unint64_t sub_A1598()
{
  result = qword_1301B8;
  if (!qword_1301B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301B8);
  }

  return result;
}

unint64_t sub_A15F0()
{
  result = qword_1301C0;
  if (!qword_1301C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301C0);
  }

  return result;
}

uint64_t sub_A1694@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_130170);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_A1754(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_A1B8C();
  *v5 = v2;
  v5[1] = sub_A1800;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_A1800()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_A190C(uint64_t a1)
{
  v2 = sub_A14E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

double sub_A1A78@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_E5504();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_A1AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_A1B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A1B4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_A1B8C()
{
  result = qword_1301C8;
  if (!qword_1301C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301C8);
  }

  return result;
}

uint64_t sub_A1BE0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_1301D0);
  __swift_project_value_buffer(v0, qword_1301D0);
  return sub_E5914();
}

uint64_t (*static SelectWidgetShowAppIntent.title.modify())()
{
  if (qword_12CCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_E5944();
  __swift_project_value_buffer(v0, qword_1301D0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_A1D48()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_1301E8);
  __swift_project_value_buffer(v0, qword_1301E8);
  return sub_E55F4();
}

uint64_t (*static SelectWidgetShowAppIntent.description.modify())()
{
  if (qword_12CCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_E5604();
  __swift_project_value_buffer(v0, qword_1301E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_A1EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_A2024(a1, &v13 - v9);
  v11 = *(a2 + 8);
  sub_A2024(v10, v8);

  sub_E5514();
  sub_A2094(v10);
}

uint64_t SelectWidgetShowAppIntent.show.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + 8);
  sub_A2024(a1, &v8 - v6);
  sub_E5514();
  return sub_A2094(a1);
}

uint64_t sub_A2024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A2094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*SelectWidgetShowAppIntent.show.modify(uint64_t *a1))(void *a1)
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
  return sub_1C5B0;
}

uint64_t SelectWidgetShowAppIntent.init(show:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a1;
  v33 = a2;
  v40 = sub_E5774();
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v40);
  v37 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery();
  v5 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v34 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v35 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v32 - v21;
  v32[1] = v32 - v21;
  v23 = sub_E5944();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  *a2 = 0;
  v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130200, &qword_F1FD8);
  sub_E5914();
  (*(v24 + 56))(v22, 1, 1, v23);
  v26 = type metadata accessor for ShowEntity(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v18, 1, 1, v26);
  v28 = sub_E5354();
  v29 = *(*(v28 - 8) + 56);
  v29(v12, 1, 1, v28);
  v29(v34, 1, 1, v28);
  ShowEntity.SingleShowWidgetShowQuery.init()(v36);
  (*(v38 + 104))(v37, enum case for InputConnectionBehavior.default(_:), v40);
  sub_A2610();
  *(v33 + 1) = sub_E5574();
  v30 = v41;
  sub_8262C(v41, v18);
  v27(v18, 0, 1, v26);
  sub_A2024(v18, v35);
  sub_E5514();
  sub_98B0C(v30);
  return sub_A2094(v18);
}

unint64_t sub_A2610()
{
  result = qword_12DEA8;
  if (!qword_12DEA8)
  {
    type metadata accessor for ShowEntity.SingleShowWidgetShowQuery();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DEA8);
  }

  return result;
}

uint64_t SelectWidgetShowAppIntent.init()@<X0>(_BYTE *a1@<X8>)
{
  v30 = a1;
  v34 = sub_E5774();
  v32 = *(v34 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery();
  v4 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v29 - v20;
  v22 = sub_E5944();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  *a1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130200, &qword_F1FD8);
  sub_E5914();
  (*(v23 + 56))(v21, 1, 1, v22);
  v25 = type metadata accessor for ShowEntity(0);
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_E5354();
  v27 = *(*(v26 - 8) + 56);
  v27(v13, 1, 1, v26);
  v27(v11, 1, 1, v26);
  ShowEntity.SingleShowWidgetShowQuery.init()(v6);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v34);
  sub_A2610();
  result = sub_E5574();
  *(v30 + 1) = result;
  return result;
}

unint64_t sub_A2A68()
{
  result = qword_130208;
  if (!qword_130208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130208);
  }

  return result;
}

unint64_t sub_A2AC0()
{
  result = qword_130210;
  if (!qword_130210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130210);
  }

  return result;
}

unint64_t sub_A2B18()
{
  result = qword_130218;
  if (!qword_130218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130218);
  }

  return result;
}

uint64_t sub_A2BBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCE0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_1301D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_A2C7C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_A2ED0();
  *v5 = v2;
  v5[1] = sub_A1800;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_A2D2C(uint64_t a1)
{
  v2 = sub_A2A68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_A2ED0()
{
  result = qword_130220;
  if (!qword_130220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130220);
  }

  return result;
}

uint64_t sub_A2F38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E6E657473696CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64616F6C6E776F64;
    }

    else
    {
      v5 = 0x704574736574616CLL;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xEE007365646F7369;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465766173;
    }

    else
    {
      v5 = 0x6F4E6E657473696CLL;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000077;
    }
  }

  v7 = 0x64616F6C6E776F64;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x704574736574616CLL;
    v8 = 0xEE007365646F7369;
  }

  if (a2)
  {
    v3 = 0x6465766173;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_E7BD4();
  }

  return v11 & 1;
}

uint64_t sub_A3094(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006575;
  v3 = 0x6575516F54646461;
  v4 = a1;
  v5 = 0x6E5573416B72616DLL;
  v6 = 0xEE00646579616C70;
  v7 = 0xE800000000000000;
  v8 = 0x7478654E79616C70;
  if (a1 != 4)
  {
    v8 = 0x616D6B6F6F626E75;
    v7 = 0xEA00000000006B72;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6B72616D6B6F6F62;
  if (a1 != 1)
  {
    v10 = 0x6C5073416B72616DLL;
    v9 = 0xEC00000064657961;
  }

  if (!a1)
  {
    v10 = 0x6575516F54646461;
    v9 = 0xEA00000000006575;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE00646579616C70;
      if (v11 != 0x6E5573416B72616DLL)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7478654E79616C70)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEA00000000006B72;
      if (v11 != 0x616D6B6F6F626E75)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6B72616D6B6F6F62)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6C5073416B72616DLL;
      v2 = 0xEC00000064657961;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_E7BD4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_A3294()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

Swift::Int sub_A33B4()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A34D0()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_130228);
  __swift_project_value_buffer(v0, qword_130228);
  return sub_E57B4();
}

uint64_t static EpisodeNoticeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_130228);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A35DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v39 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v39 - v6;
  v8 = sub_E5944();
  v48 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1302B0, &qword_F24A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130800, &qword_F24A8);
  v46 = v13;
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v15 = *(*(v13 - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_F21B0;
  v17 = v16 + v14;
  v40 = *(v13 + 48);
  v41 = v16;
  *(v16 + v14) = 0;
  sub_E5914();
  v18 = *(v9 + 56);
  v49 = v9 + 56;
  v50 = v18;
  v18(v7, 1, 1, v8);
  sub_E5654();
  v19 = sub_E5684();
  v20 = *(v19 - 8);
  v44 = *(v20 + 56);
  v42 = v20 + 56;
  v47 = v19;
  v44(v3, 0, 1, v19);
  v21 = v17;
  v39[1] = v12;
  sub_E56A4();
  v43 = v15;
  v22 = v46;
  v40 = *(v46 + 48);
  *(v17 + v15) = 1;
  sub_E5914();
  v23 = v7;
  v24 = v48;
  v50(v7, 1, 1, v48);
  sub_E5654();
  v25 = v44;
  v44(v3, 0, 1, v19);
  sub_E56A4();
  v40 = 2 * v15;
  v45 = v17;
  v39[2] = *(v22 + 48);
  *(v17 + 2 * v15) = 2;
  sub_E5914();
  v26 = v50;
  v50(v7, 1, 1, v24);
  sub_E5654();
  v27 = v47;
  v25(v3, 0, 1, v47);
  sub_E56A4();
  v28 = v43;
  v29 = (v21 + v40 + v43);
  v30 = v46;
  v40 = *(v46 + 48);
  *v29 = 3;
  sub_E5914();
  v26(v23, 1, 1, v48);
  sub_E5654();
  v31 = v27;
  v32 = v44;
  v44(v3, 0, 1, v31);
  sub_E56A4();
  v33 = 4 * v28;
  v34 = v45;
  v40 = *(v30 + 48);
  *(v45 + 4 * v28) = 4;
  sub_E5914();
  v35 = v48;
  v50(v23, 1, 1, v48);
  sub_E5654();
  v32(v3, 0, 1, v47);
  sub_E56A4();
  v36 = *(v46 + 48);
  *(v34 + v33 + v43) = 5;
  sub_E5914();
  v50(v23, 1, 1, v35);
  sub_E5654();
  v32(v3, 0, 1, v47);
  sub_E56A4();
  v37 = sub_B101C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_130240 = v37;
  return result;
}

uint64_t static EpisodeNoticeType.caseDisplayRepresentations.getter()
{
  if (qword_12CCF8 != -1)
  {
    swift_once();
  }
}

PodcastsActions::EpisodeNoticeType_optional __swiftcall EpisodeNoticeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_1202C8;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t EpisodeNoticeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6575516F54646461;
  v3 = 0x6E5573416B72616DLL;
  v4 = 0x7478654E79616C70;
  if (v1 != 4)
  {
    v4 = 0x616D6B6F6F626E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B72616D6B6F6F62;
  if (v1 != 1)
  {
    v5 = 0x6C5073416B72616DLL;
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

unint64_t sub_A3E80()
{
  result = qword_130248;
  if (!qword_130248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130248);
  }

  return result;
}

uint64_t sub_A3EDC()
{
  *v0;
  *v0;
  *v0;
  sub_E7124();
}

void sub_A3FF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6575516F54646461;
  v4 = 0xEE00646579616C70;
  v5 = 0x6E5573416B72616DLL;
  v6 = 0xE800000000000000;
  v7 = 0x7478654E79616C70;
  if (v2 != 4)
  {
    v7 = 0x616D6B6F6F626E75;
    v6 = 0xEA00000000006B72;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6B72616D6B6F6F62;
  if (v2 != 1)
  {
    v9 = 0x6C5073416B72616DLL;
    v8 = 0xEC00000064657961;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA00000000006575;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

unint64_t sub_A40D4()
{
  result = qword_130250;
  if (!qword_130250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130250);
  }

  return result;
}

unint64_t sub_A412C()
{
  result = qword_130258;
  if (!qword_130258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130258);
  }

  return result;
}

unint64_t sub_A4184()
{
  result = qword_130260;
  if (!qword_130260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130260);
  }

  return result;
}

unint64_t sub_A41DC()
{
  result = qword_130268;
  if (!qword_130268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130270, &qword_F22A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130268);
  }

  return result;
}

unint64_t sub_A4254()
{
  result = qword_130278;
  if (!qword_130278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130278);
  }

  return result;
}

unint64_t sub_A42AC()
{
  result = qword_130280;
  if (!qword_130280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130280);
  }

  return result;
}

unint64_t sub_A4304()
{
  result = qword_130288;
  if (!qword_130288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130288);
  }

  return result;
}

unint64_t sub_A435C()
{
  result = qword_130290;
  if (!qword_130290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130290);
  }

  return result;
}

uint64_t sub_A4400(uint64_t a1)
{
  v2 = sub_81808();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_A4450()
{
  result = qword_130298;
  if (!qword_130298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130298);
  }

  return result;
}

unint64_t sub_A44A8()
{
  result = qword_1302A0;
  if (!qword_1302A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302A0);
  }

  return result;
}

unint64_t sub_A4500()
{
  result = qword_1302A8;
  if (!qword_1302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302A8);
  }

  return result;
}

uint64_t sub_A4554(uint64_t a1)
{
  v2 = sub_A435C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for TipGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TipGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_A46F8()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_1302B8);
  __swift_project_value_buffer(v0, qword_1302B8);
  return sub_E57B4();
}

uint64_t static LocationNoticeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CD00 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_1302B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A4804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = sub_E5944();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130340, &qword_F2780);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307F0, &qword_F2788);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_E9EF0;
  v15 = (v14 + v13);
  v21[0] = *(v11 + 48);
  *v15 = 0;
  sub_E5914();
  v16 = *(v9 + 56);
  v21[1] = v9 + 56;
  v23 = v16;
  v16(v7, 1, 1, v8);
  sub_E5654();
  v17 = sub_E5684();
  v18 = *(*(v17 - 8) + 56);
  v18(v3, 0, 1, v17);
  sub_E56A4();
  v21[0] = *(v11 + 48);
  v15[v12] = 1;
  sub_E5914();
  v23(v7, 1, 1, v22);
  sub_E5654();
  v18(v3, 0, 1, v17);
  sub_E56A4();
  v19 = sub_B1204(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1302D0 = v19;
  return result;
}

uint64_t static LocationNoticeType.caseDisplayRepresentations.getter()
{
  if (qword_12CD08 != -1)
  {
    swift_once();
  }
}

PodcastsActions::LocationNoticeType_optional __swiftcall LocationNoticeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_1203A0;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t LocationNoticeType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x616D6B6F6F626E75;
  }

  else
  {
    result = 0x6B72616D6B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_A4CC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616D6B6F6F626E75;
  }

  else
  {
    v4 = 0x6B72616D6B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006B72;
  }

  if (*a2)
  {
    v6 = 0x616D6B6F6F626E75;
  }

  else
  {
    v6 = 0x6B72616D6B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006B72;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E7BD4();
  }

  return v9 & 1;
}

unint64_t sub_A4D74()
{
  result = qword_1302D8;
  if (!qword_1302D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302D8);
  }

  return result;
}

Swift::Int sub_A4DC8()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A4E50()
{
  *v0;
  sub_E7124();
}

Swift::Int sub_A4EC4()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A4F48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1203A0;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_A4FA8(uint64_t *a1@<X8>)
{
  v2 = 0x6B72616D6B6F6F62;
  if (*v1)
  {
    v2 = 0x616D6B6F6F626E75;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006B72;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_A4FF0()
{
  result = qword_1302E0;
  if (!qword_1302E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302E0);
  }

  return result;
}

unint64_t sub_A5048()
{
  result = qword_1302E8;
  if (!qword_1302E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302E8);
  }

  return result;
}

unint64_t sub_A50A0()
{
  result = qword_1302F0;
  if (!qword_1302F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302F0);
  }

  return result;
}

unint64_t sub_A50F8()
{
  result = qword_1302F8;
  if (!qword_1302F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130300, &qword_F2590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302F8);
  }

  return result;
}

unint64_t sub_A5170()
{
  result = qword_130308;
  if (!qword_130308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130308);
  }

  return result;
}

unint64_t sub_A51C8()
{
  result = qword_130310;
  if (!qword_130310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130310);
  }

  return result;
}

unint64_t sub_A5220()
{
  result = qword_130318;
  if (!qword_130318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130318);
  }

  return result;
}

unint64_t sub_A5278()
{
  result = qword_130320;
  if (!qword_130320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130320);
  }

  return result;
}

uint64_t sub_A531C(uint64_t a1)
{
  v2 = sub_7D1D0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_A536C()
{
  result = qword_130328;
  if (!qword_130328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130328);
  }

  return result;
}

unint64_t sub_A53C4()
{
  result = qword_130330;
  if (!qword_130330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130330);
  }

  return result;
}

unint64_t sub_A541C()
{
  result = qword_130338;
  if (!qword_130338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130338);
  }

  return result;
}

uint64_t sub_A5470(uint64_t a1)
{
  v2 = sub_A5278();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_A54D4()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_130348);
  __swift_project_value_buffer(v0, qword_130348);
  return sub_E57B4();
}

uint64_t static ShowNoticeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CD10 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_130348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A55E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = sub_E5944();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1303D0, &qword_F2A58);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307E0, &unk_F2A60);
  v12 = *(v11 - 8);
  v24 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_E9EF0;
  v21[1] = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_E5914();
  v15 = *(v9 + 56);
  v21[2] = v9 + 56;
  v23 = v15;
  v15(v7, 1, 1, v8);
  sub_E5654();
  v16 = sub_E5684();
  v17 = *(*(v16 - 8) + 56);
  v17(v3, 0, 1, v16);
  sub_E56A4();
  v18 = (v14 + v13 + v24);
  v24 = *(v11 + 48);
  *v18 = 1;
  sub_E5914();
  v23(v7, 1, 1, v22);
  sub_E5654();
  v17(v3, 0, 1, v16);
  sub_E56A4();
  v19 = sub_B13EC(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_130360 = v19;
  return result;
}

uint64_t static ShowNoticeType.caseDisplayRepresentations.getter()
{
  if (qword_12CD18 != -1)
  {
    swift_once();
  }
}

PodcastsActions::ShowNoticeType_optional __swiftcall ShowNoticeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_120440;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t ShowNoticeType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x776F6C6C6F666E75;
  }

  else
  {
    result = 0x776F6C6C6F66;
  }

  *v0;
  return result;
}

uint64_t sub_A5AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x776F6C6C6F666E75;
  }

  else
  {
    v4 = 0x776F6C6C6F66;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x776F6C6C6F666E75;
  }

  else
  {
    v6 = 0x776F6C6C6F66;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E7BD4();
  }

  return v9 & 1;
}

unint64_t sub_A5B60()
{
  result = qword_130368;
  if (!qword_130368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130368);
  }

  return result;
}

Swift::Int sub_A5BB4()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A5C34()
{
  *v0;
  sub_E7124();
}

Swift::Int sub_A5CA0()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A5D1C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_120440;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_A5D7C(uint64_t *a1@<X8>)
{
  v2 = 0x776F6C6C6F66;
  if (*v1)
  {
    v2 = 0x776F6C6C6F666E75;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_A5DBC()
{
  result = qword_130370;
  if (!qword_130370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130370);
  }

  return result;
}

unint64_t sub_A5E14()
{
  result = qword_130378;
  if (!qword_130378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130378);
  }

  return result;
}

unint64_t sub_A5E6C()
{
  result = qword_130380;
  if (!qword_130380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130380);
  }

  return result;
}

unint64_t sub_A5EC4()
{
  result = qword_130388;
  if (!qword_130388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130390, &qword_F2870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130388);
  }

  return result;
}

unint64_t sub_A5F3C()
{
  result = qword_130398;
  if (!qword_130398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130398);
  }

  return result;
}

unint64_t sub_A5F94()
{
  result = qword_1303A0;
  if (!qword_1303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303A0);
  }

  return result;
}

unint64_t sub_A5FEC()
{
  result = qword_1303A8;
  if (!qword_1303A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303A8);
  }

  return result;
}

unint64_t sub_A6044()
{
  result = qword_1303B0;
  if (!qword_1303B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303B0);
  }

  return result;
}

uint64_t sub_A60E8(uint64_t a1)
{
  v2 = sub_83BF0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_A6138()
{
  result = qword_1303B8;
  if (!qword_1303B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303B8);
  }

  return result;
}

unint64_t sub_A6190()
{
  result = qword_1303C0;
  if (!qword_1303C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303C0);
  }

  return result;
}

unint64_t sub_A61E8()
{
  result = qword_1303C8;
  if (!qword_1303C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303C8);
  }

  return result;
}

uint64_t sub_A623C(uint64_t a1)
{
  v2 = sub_A6044();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t DonationController.__allocating_init(objectGraph:)()
{
  v1 = sub_E6234();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DonationRepository();
  sub_E6DA4();
  v6 = v12[1];
  sub_E6DA4();
  sub_E6664();
  sub_E6DA4();

  v7 = v12[0];
  v8 = *(v0 + 48);
  v9 = *(v0 + 52);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = v6;
  (*(v2 + 32))(v10 + OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService, v5, v1);
  *(v10 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository) = v7;
  return v10;
}

uint64_t DonationController.startLibraryDonations(with:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_E6274();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_A64E8, 0, 0);
}

uint64_t sub_A64E8()
{
  v1 = v0[8];
  sub_A6B7C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_A65AC;
  v5 = v0[7];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_A65AC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_A6A94;
  }

  else
  {
    v3 = sub_A66C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_A66C0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  v6 = sub_A6D10();
  *v4 = v0;
  v4[1] = sub_A6790;
  v7 = v0[12];
  v8 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v5, v8, &type metadata for LibrarySnapshotIntent, v6, v1, v2);
}

uint64_t sub_A6790()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_A6B04;
  }

  else
  {
    v3 = sub_A68A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_A68A4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = *(v3 + 24);
  v5 = sub_E6264();
  v6 = *(v4 + 16);
  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock((v6 + 24));
  sub_A78B0((v6 + 16));
  if (v1)
  {

    os_unfair_lock_unlock((v6 + 24));
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    os_unfair_lock_unlock((v6 + 24));

    v12 = *(v11 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository);
    sub_E6634();
    v13 = sub_E7324();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;

    sub_A75C0(0, 0, v9, &unk_F2A80, v14);

    (*(v8 + 8))(v7, v10);

    v15 = v0[1];

    v15();
  }
}

uint64_t sub_A6A94()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_A6B04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_A6B7C()
{
  v1 = v0;
  v2 = sub_E63E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository);
  (*(v3 + 104))(v6, enum case for InMemoryStateDomain.followState(_:), v2);
  v8 = sub_E6654();
  (*(v3 + 8))(v6, v2);
  v12[1] = v8;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1304B8, &qword_F2B10);
  sub_A7CD4();
  v9 = sub_E6B44();

  v10 = *(v1 + 16);
  *(v1 + 16) = v9;
}

unint64_t sub_A6D10()
{
  result = qword_1303E8;
  if (!qword_1303E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303E8);
  }

  return result;
}

uint64_t DonationController.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService;
  v4 = sub_E6234();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository);

  return v0;
}

uint64_t DonationController.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService;
  v4 = sub_E6234();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_A6EA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_E7324();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_A75C0(0, 0, v3, &unk_F2B18, v7);
  }

  return result;
}

uint64_t sub_A6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_E6974();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_A7080, 0, 0);
}

uint64_t sub_A7080()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository);
  sub_E60B4();
  v3 = sub_E6644();
  v0[11] = v3;
  sub_A7C40((v0 + 2));
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_A7150;

  return sub_A7E34(v3);
}

uint64_t sub_A7150(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 56);
  v10 = *v1;
  *(v3 + 104) = a1;

  v7 = async function pointer to DonationService.donate(podcasts:stations:)[1];
  v8 = swift_task_alloc();
  *(v3 + 112) = v8;
  *v8 = v10;
  v8[1] = sub_A72D4;

  return DonationService.donate(podcasts:stations:)(a1, _swiftEmptyArrayStorage);
}

uint64_t sub_A72D4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *v1;
  v4[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_A7438, 0, 0);
  }

  else
  {
    v5 = v4[10];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_A7438()
{
  v1 = v0[15];
  v2 = v0[10];
  sub_E6924();
  swift_errorRetain();
  v3 = sub_E6964();
  v4 = sub_E74C4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Something went wrong while performing Cascade donations: %@", v7, 0xCu);
    sub_110AC(v8, &unk_12DB20, &unk_F0760);
  }

  else
  {
    v10 = v0[15];
  }

  (*(v0[9] + 8))(v0[10], v0[8]);
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_A75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_8A08(a3, v27 - v11);
  v13 = sub_E7324();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_110AC(v12, &unk_131ED0, &qword_F5BC0);
  }

  else
  {
    sub_E7314();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_E7294();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_E70A4() + 32;
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

      sub_110AC(a3, &unk_131ED0, &qword_F5BC0);

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

  sub_110AC(a3, &unk_131ED0, &qword_F5BC0);
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

uint64_t sub_A78D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_A6FC0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for DonationController()
{
  result = qword_130418;
  if (!qword_130418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A79D8()
{
  result = sub_E6234();
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

uint64_t sub_A7A98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_8E514(a1, v5);
}

uint64_t sub_A7B50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A7B88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_8E514(a1, v5);
}

uint64_t sub_A7C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_A7CD4()
{
  result = qword_1304C0;
  if (!qword_1304C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1304B8, &qword_F2B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1304C0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A7D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_A6FC0(a1, v4, v5, v6);
}

uint64_t sub_A7E34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_E6974();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_A7F00, 0, 0);
}

uint64_t sub_A7F00()
{
  v30 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v0[11] = v2;
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_A9088((v2 + 16), v29);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v29[0];
  v3 = v29[1];
  v0[12] = v29[0];
  v0[13] = v3;

  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130570, &unk_F2B60);
  sub_A90A4();
  if (sub_E7404())
  {
    v5 = v0[10];
    sub_E6924();

    v6 = sub_E6964();
    v7 = sub_E7494();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    v11 = v0[7];
    v10 = v0[8];
    if (v8)
    {
      v28 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29[0] = v13;
      *v12 = 136315138;
      v14 = sub_E7204();
      v16 = sub_23E64(v14, v15, v29);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v6, v7, "Fetching from MAPI missing donation data for shows with IDs %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);

      v17 = *(v10 + 8);
      v17(v28, v11);
    }

    else
    {

      v17 = *(v10 + 8);
      v17(v9, v11);
    }

    v0[14] = v17;
    v22 = v0[6];
    v23 = v22[6];
    v24 = v22[7];
    __swift_project_boxed_opaque_existential_1(v22 + 3, v23);
    v0[4] = v3;
    v25 = async function pointer to dispatch thunk of MediaRequestControllerProtocol.send<A>(_:)[1];

    v26 = swift_task_alloc();
    v0[15] = v26;
    v27 = sub_A9108();
    *v26 = v0;
    v26[1] = sub_A8220;

    return dispatch thunk of MediaRequestControllerProtocol.send<A>(_:)(v0 + 3, v0 + 4, &type metadata for PodcastDonationDataMediaAPIRequest, v27, v23, v24);
  }

  else
  {

    v19 = v0[9];
    v18 = v0[10];

    v20 = v0[1];

    return v20(v4);
  }
}

uint64_t sub_A8220()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  v4 = *(v2 + 104);
  if (v0)
  {

    v5 = sub_A8434;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v5 = sub_A8348;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_A8348()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v2 + 24));
  sub_A91C4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {

    v7 = v0[12];
    sub_22E7C(v3);
    v5 = v0[9];
    v4 = v0[10];

    v6 = v0[1];

    v6(v7);
  }
}

uint64_t sub_A8434()
{
  v31 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[9];
  sub_E6924();

  swift_errorRetain();
  v4 = sub_E6964();
  v5 = sub_E74C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  if (v6)
  {
    v29 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    v27 = v10;
    v28 = v8;
    v16 = sub_E7204();
    v18 = v17;

    v19 = sub_23E64(v16, v18, &v30);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_0, v4, v5, "Unable to fetch donation data for shows with AdamIDs %s. Error: %@", v13, 0x16u);
    sub_A915C(v14);

    __swift_destroy_boxed_opaque_existential_1(v15);

    v28(v27, v29);
  }

  else
  {
    v21 = v0[13];

    v8(v10, v12);
  }

  v30 = v0[12];
  sub_22E7C(_swiftEmptyArrayStorage);
  v22 = v30;
  v24 = v0[9];
  v23 = v0[10];

  v25 = v0[1];

  return v25(v22);
}

uint64_t sub_A86A4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_A8708(void *a1, uint64_t a2)
{
  v41 = sub_E6774();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v41);
  v40 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = (v31 - v12);
  v14 = *(a2 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v31[1] = v2;
    v32 = a1;
    v44 = _swiftEmptyArrayStorage;
    sub_15EC8(0, v14, 0);
    v15 = v44;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = (a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v34 = *(v16 + 56);
    v35 = v17;
    v33 = (v16 - 8);
    v36 = v16;
    do
    {
      v42 = v14;
      v43 = v15;
      v19 = v39;
      v20 = v41;
      v21 = v35;
      v35(v39, v18, v41);
      v22 = *(v38 + 48);
      *v13 = sub_E6764();
      v23 = v40;
      v21(v40, v19, v20);
      sub_E6764();
      sub_E6754();
      sub_E6744();
      sub_E6494();
      v24 = *v33;
      (*v33)(v23, v20);
      v25 = v19;
      v15 = v43;
      v24(v25, v20);
      v44 = v15;
      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        sub_15EC8(v26 > 1, v27 + 1, 1);
        v15 = v44;
      }

      v15[2] = v27 + 1;
      sub_A9610(v13, v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27);
      v18 += v34;
      v14 = v42 - 1;
    }

    while (v42 != 1);
    a1 = v32;
  }

  v28 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *a1;
  sub_A91E0(v15, isUniquelyReferenced_nonNull_native, &v44);

  *a1 = v44;
  return result;
}

uint64_t sub_A8A4C(uint64_t *a1, uint64_t a2)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3);
  v38 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_E64B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v17 = *(v10 + 16);
    v15 = v10 + 16;
    v16 = v17;
    v18 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v41 = *(v15 + 56);
    v19 = (v15 - 8);
    v35 = (v15 + 16);
    v20 = _swiftEmptyArrayStorage;
    v36 = v15;
    v37 = v8;
    v17(v13, v18, v9);
    while (1)
    {
      v21 = sub_E64A4();
      if (v23)
      {
        sub_95FBC(v21, v22, v23);
        (*v19)(v13, v9);
      }

      else
      {
        v24 = *(v40 + 48);
        v25 = v38;
        *v38 = v21;
        (*v35)(v25 + v24, v13, v9);
        sub_A9610(v25, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_236D0(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          v20 = sub_236D0(v26 > 1, v27 + 1, 1, v20);
        }

        v20[2] = v27 + 1;
        v28 = v20 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27;
        v8 = v37;
        sub_A9610(v37, v28);
      }

      v18 += v41;
      if (!--v14)
      {
        break;
      }

      v16(v13, v18, v9);
    }
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v29 = v34;
  v30 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v29;
  sub_A91E0(v20, isUniquelyReferenced_nonNull_native, &v42);

  *v29 = v42;
  return result;
}

uint64_t sub_A8D58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38[0] = a3;
  v46 = sub_E64B4();
  v5 = *(*(v46 - 8) + 64);
  v6 = __chkstk_darwin(v46);
  v45 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v40 = v38 - v9;
  result = __chkstk_darwin(v8);
  v44 = v38 - v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *a1;
    v15 = (a2 + 32);
    v43 = v11 + 4;
    v38[2] = v11 + 1;
    v38[3] = v11 + 2;
    v16 = _swiftEmptyArrayStorage;
    v47 = _swiftEmptyArrayStorage;
    v17 = v11;
    v39 = v14;
    do
    {
      while (1)
      {
        v19 = *v15++;
        v18 = v19;
        if (!*(v14 + 16))
        {
          break;
        }

        v20 = sub_E0728(v18);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = *(v14 + 56);
        v42 = v17[9];
        v23 = v17[2];
        v24 = v40;
        v25 = v46;
        v23(v40, v22 + v42 * v20, v46);
        v26 = v44;
        v41 = v17[4];
        v41(v44, v24, v25);
        v23(v45, v26, v25);
        v27 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_234CC(0, v27[2] + 1, 1, v27);
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v27 = sub_234CC(v28 > 1, v29 + 1, 1, v27);
        }

        v30 = v17[1];
        v31 = v17;
        v32 = v46;
        v30(v44, v46);
        v27[2] = v29 + 1;
        v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v47 = v27;
        v34 = v32;
        v17 = v31;
        result = (v41)(v27 + v33 + v29 * v42, v45, v34);
        v14 = v39;
        if (!--v13)
        {
          goto LABEL_17;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_238C0(0, *(v16 + 2) + 1, 1, v16);
        v16 = result;
      }

      v36 = *(v16 + 2);
      v35 = *(v16 + 3);
      if (v36 >= v35 >> 1)
      {
        result = sub_238C0((v35 > 1), v36 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 2) = v36 + 1;
      *&v16[8 * v36 + 32] = v18;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
    v47 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v37 = v38[0];
  *v38[0] = v47;
  *(v37 + 8) = v16;
  return result;
}

unint64_t sub_A90A4()
{
  result = qword_130578;
  if (!qword_130578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130570, &unk_F2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130578);
  }

  return result;
}

unint64_t sub_A9108()
{
  result = qword_130580;
  if (!qword_130580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130580);
  }

  return result;
}

uint64_t sub_A915C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB20, &unk_F0760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A91E0(uint64_t a1, char a2, uint64_t *a3)
{
  v62 = a3;
  v6 = sub_E64B4();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  v14 = (&v53 - v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(result + 48);
    v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v58 = *(v12 + 72);
    v56 = a1;
    v54 = v17;
    sub_A9680(a1 + v17, &v53 - v13);
    v19 = (v60 + 32);
    v18 = *(v60 + 32);
    v20 = *v14;
    v57 = v16;
    v59 = v6;
    v55 = v18;
    v18(v61, v14 + v16, v6);
    v21 = *v62;
    v23 = sub_E0728(v20);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_23;
    }

    LOBYTE(v3) = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    v27 = v62;
    sub_E2594(v26, a2 & 1);
    v28 = *v27;
    v29 = sub_E0728(v20);
    if ((v3 & 1) == (v30 & 1))
    {
      v23 = v29;
LABEL_7:
      v31 = v15;
      while (1)
      {
        v15 = (v19 + 1);
        v32 = *v62;
        if (v3)
        {
          v33 = v32[7] + *(v60 + 72) * v23;
          v23 = v59;
          result = (*(v60 + 40))(v33, v61, v59);
        }

        else
        {
          v32[(v23 >> 6) + 8] |= 1 << v23;
          *(v32[6] + 8 * v23) = v20;
          v34 = v32[7] + *(v60 + 72) * v23;
          v23 = v59;
          result = v55(v34, v61, v59);
          v35 = v32[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_24;
          }

          v32[2] = v37;
        }

        v38 = v31 - 1;
        if (v31 == (&dword_0 + 1))
        {
          return result;
        }

        v3 = v56 + v58 + v54;
        while (1)
        {
          sub_A9680(v3, v14);
          v20 = *v14;
          v39 = *v19;
          (*v19)(v61, v14 + v57, v23);
          v40 = *v62;
          v41 = sub_E0728(v20);
          v43 = *(v40 + 16);
          v44 = (v42 & 1) == 0;
          v36 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v36)
          {
            break;
          }

          v46 = v42;
          if (*(v40 + 24) < v45)
          {
            v47 = v62;
            sub_E2594(v45, 1);
            v48 = *v47;
            v41 = sub_E0728(v20);
            if ((v46 & 1) != (v49 & 1))
            {
              goto LABEL_26;
            }
          }

          v50 = *v62;
          if (v46)
          {
            v23 = v59;
            result = (*(v60 + 40))(v50[7] + *(v60 + 72) * v41, v61, v59);
          }

          else
          {
            v50[(v41 >> 6) + 8] |= 1 << v41;
            *(v50[6] + 8 * v41) = v20;
            v23 = v59;
            result = v39((v50[7] + *(v60 + 72) * v41), v61, v59);
            v51 = v50[2];
            v36 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v36)
            {
              goto LABEL_24;
            }

            v50[2] = v52;
          }

          v3 += v58;
          if (!--v38)
          {
            return result;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v31 = v15;
        sub_E3334();
      }
    }

LABEL_26:
    result = sub_E7C54();
    __break(1u);
  }

  return result;
}

uint64_t sub_A9610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_A9704()
{
  result = qword_130588;
  if (!qword_130588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130590, &qword_F2BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130588);
  }

  return result;
}

uint64_t sub_A9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v66 = v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v65 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v71 = v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v70 = v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v69 = v64 - v22;
  v23 = sub_E5FE4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v68 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_E6974();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6934();

  v32 = sub_E6964();
  v33 = sub_E74D4();
  v34 = os_log_type_enabled(v32, v33);
  v67 = a2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v32, v33, "Fetching donation data for %ld podcasts", v35, 0xCu);
  }

  else
  {
  }

  (*(v28 + 8))(v31, v27);
  (*(v24 + 104))(v68, enum case for MediaRequest.RequestType.catalog(_:), v23);
  v36 = enum case for MediaRequest.ContentType.podcast(_:);
  v37 = sub_E6014();
  v38 = *(v37 - 8);
  v39 = v69;
  (*(v38 + 104))(v69, v36, v37);
  (*(v38 + 56))(v39, 0, 1, v37);
  v40 = sub_E60A4();
  (*(*(v40 - 8) + 56))(v70, 1, 1, v40);
  v41 = sub_E6034();
  v42 = *(*(v41 - 8) + 56);
  v64[4] = v16;
  v42(v16, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130598, &qword_F2C30);
  v43 = sub_E6054();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_E9EF0;
  v64[3] = v47;
  v48 = v47 + v46;
  v49 = *(v44 + 104);
  v49(v48, enum case for MediaRequest.Field.name(_:), v43);
  v49(v48 + v45, enum case for MediaRequest.Field.artistName(_:), v43);
  v50 = *(a1 + 16);
  if (v50)
  {
    v73 = _swiftEmptyArrayStorage;
    sub_15D18(0, v50, 0);
    v51 = v73;
    v52 = (a1 + 32);
    sub_10D78();
    do
    {
      v53 = *v52++;
      v72 = v53;
      v54 = sub_E7854();
      v56 = v55;
      v73 = v51;
      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        sub_15D18((v57 > 1), v58 + 1, 1);
        v51 = v73;
      }

      v51[2] = v58 + 1;
      v59 = &v51[2 * v58];
      v59[4] = v54;
      v59[5] = v56;
      --v50;
    }

    while (v50);
  }

  v60 = sub_E6024();
  (*(*(v60 - 8) + 56))(v71, 1, 1, v60);
  v61 = sub_E6094();
  (*(*(v61 - 8) + 56))(v65, 1, 1, v61);
  v62 = sub_E59C4();
  (*(*(v62 - 8) + 56))(v66, 1, 1, v62);
  v64[2] = sub_AF0E8(_swiftEmptyArrayStorage);
  v64[1] = sub_AF0E8(_swiftEmptyArrayStorage);
  v64[0] = sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  return sub_E6074();
}

char *sub_A9FE0@<X0>(char **a1@<X8>)
{
  result = sub_AA008();
  *a1 = result;
  return result;
}

char *sub_AA008()
{
  v0 = sub_E64B4();
  v27 = *(v0 - 8);
  v1 = *(v27 + 64);
  v2 = __chkstk_darwin(v0);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130590, &qword_F2BD8);
  v6 = sub_E6614();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v31 = v7 & 0xFFFFFFFFFFFFFF8;
    v29 = (v27 + 32);
    v32 = _swiftEmptyArrayStorage;
    v24 = i;
    v25 = v7;
    v28 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v11 = sub_E79B4();
      }

      else
      {
        if (v9 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_E64F4();
      sub_E6824();
      if (v14)
      {
      }

      else
      {
        sub_E64C4();
        v30 = sub_E66E4();
        v16 = v15;

        if (v16)
        {
          sub_E64C4();
          sub_E66D4();

          v17 = v26;
          sub_E6494();

          v18 = *v29;
          (*v29)(v5, v17, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_234CC(0, *(v32 + 2) + 1, 1, v32);
          }

          v20 = *(v32 + 2);
          v19 = *(v32 + 3);
          i = v24;
          if (v20 >= v19 >> 1)
          {
            v32 = sub_234CC(v19 > 1, v20 + 1, 1, v32);
          }

          v21 = v32;
          *(v32 + 2) = v20 + 1;
          v18(&v21[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20], v5, v0);
          v7 = v25;
        }

        else
        {
        }

        v10 = v28;
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_24:

  return v32;
}

uint64_t InteractionContext.Page.entityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E5B74();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AA6E0(v1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 4) < 0x17)
  {
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (v6[8])
      {
        if (!*(v6 + 3))
        {
          goto LABEL_2;
        }

        v12 = *(v6 + 2);
        v13 = *(v6 + 3);
      }

      else
      {
        v24 = *v6;
        sub_10D78();
        v12 = sub_E7854();
        v13 = v19;
      }

      type metadata accessor for EpisodeEntity(0);
      v24 = v12;
      v25 = v13;
      sub_AA7AC(&qword_12E000, type metadata accessor for EpisodeEntity);
      goto LABEL_18;
    }

    v14 = v6[8];
    v15 = *(v6 + 2);
    v16 = *(v6 + 3);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305A0, &qword_F2C38) + 64);
    if (v14)
    {
      if (!v16)
      {
        v23 = sub_E55E4();
        (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
        return sub_AA744(&v6[v17]);
      }

      v18 = v16;
    }

    else
    {
      v24 = *v6;
      sub_10D78();
      v15 = sub_E7854();
      v18 = v21;
    }

    type metadata accessor for ShowEntity(0);
    v24 = v15;
    v25 = v18;
    sub_AA7AC(&qword_12DDF0, type metadata accessor for ShowEntity);
    sub_E55D4();
    v22 = sub_E55E4();
    (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    return sub_AA744(&v6[v17]);
  }

  if (EnumCaseMultiPayload)
  {
    sub_AA744(v6);
  }

  else if ((v6[8] & 1) == 0)
  {
    v10 = *v6;
    type metadata accessor for ChannelEntity();
    v24 = v10;
    sub_10D78();
    v24 = sub_E7854();
    v25 = v11;
    sub_AA7AC(&qword_12E040, type metadata accessor for ChannelEntity);
LABEL_18:
    sub_E55D4();
    v20 = sub_E55E4();
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }

LABEL_2:
  v8 = sub_E55E4();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_AA6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5B74();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AA744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AA7AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_AA7F8()
{
  result = qword_1305A8;
  if (!qword_1305A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305A8);
  }

  return result;
}

uint64_t DebugLibraryStorageTipSuggestedLimitIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CD0, &unk_F5DA0);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_E6974();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = sub_E5C04();
  v1[17] = v8;
  v9 = *(v8 - 8);
  v1[18] = v9;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305B0, &qword_F2D30);
  v1[20] = v11;
  v12 = *(v11 - 8);
  v1[21] = v12;
  v13 = *(v12 + 64) + 15;
  v1[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305B8, &unk_F2D38);
  v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v16 = swift_task_alloc();
  v1[23] = v16;
  *v16 = v1;
  v16[1] = sub_AAABC;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v14, v14);
}

uint64_t sub_AAABC()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_AB0C8;
  }

  else
  {
    v3 = sub_AABD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AABD0()
{
  v58 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[2];
  v5 = v0[3];
  swift_getObjectType();
  sub_E6D34();
  sub_26E5C();
  sub_E6CA4();
  (*(v2 + 8))(v1, v3);
  v6 = v0[6];
  if (![objc_opt_self() isRunningOnInternalOS])
  {
    swift_unknownObjectRelease();

LABEL_10:
    v26 = 1;
    goto LABEL_19;
  }

  if (!v6)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v7 = v0[19];
  v8 = v0[16];
  v9 = [v6 longLongValue];
  sub_E76B4();
  sub_E5BC4();
  sub_E6954();
  v10 = sub_E6964();
  v11 = sub_E74B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_0, v10, v11, "Using UserDefault override value for storage tip level: %lld", v12, 0xCu);
  }

  v13 = v0[16];
  v14 = v0[12];
  v15 = v0[13];

  v16 = v13;
  v17 = *(v15 + 8);
  v17(v16, v14);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v27 = v0[15];
    sub_E6954();
    v28 = sub_E6964();
    v29 = sub_E7494();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v6;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v28, v29, "Recommending hiding tip", v31, 2u);

      v6 = v28;
      v28 = v30;
    }

    swift_unknownObjectRelease();
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[8];
    v17(v0[15], v0[12]);
    (*(v33 + 32))(v35, v32, v34);
  }

  else
  {
    v18 = v0[14];
    sub_E6954();
    v19 = sub_E6964();
    v55 = sub_E7494();
    v20 = os_log_type_enabled(v19, v55);
    v21 = v0[14];
    v56 = v0[12];
    if (v20)
    {
      v54 = v17;
      v22 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v22 = 136315138;
      v0[7] = v9;
      type metadata accessor for MTPodcastEpisodeLimit(0);
      v23 = sub_E7084();
      v52 = v21;
      v25 = sub_23E64(v23, v24, &v57);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_0, v19, v55, "Recommending %s episode level", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);

      v54(v52, v56);
    }

    else
    {

      v17(v21, v56);
    }

    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[9];
    sub_E6D24();
    sub_E6CA4();
    (*(v37 + 8))(v36, v38);
    if (v0[5])
    {
      v39 = v0[4];
      sub_E5BE4();
    }

    v41 = v0[18];
    v40 = v0[19];
    v42 = v0[17];
    v43 = v0[8];
    sub_E5BC4();
    swift_unknownObjectRelease();

    (*(v41 + 8))(v40, v42);
  }

  v26 = 0;
LABEL_19:
  v44 = v0[22];
  v45 = v0[19];
  v46 = v0[16];
  v48 = v0[14];
  v47 = v0[15];
  v49 = v0[11];
  (*(v0[18] + 56))(v0[8], v26, 1, v0[17]);

  v50 = v0[1];

  return v50();
}

uint64_t sub_AB0C8()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[24];

  return v7();
}

uint64_t sub_AB178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return DebugLibraryStorageTipSuggestedLimitIntentImplementation.perform(_:objectGraph:)(a1);
}

void *sub_AB218(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_AB23C()
{
  result = qword_131D10;
  if (!qword_131D10)
  {
    type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131D10);
  }

  return result;
}

uint64_t DownloadEpisodesIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[15] = a2;
  v4 = sub_E7324();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[18] = v7;
  v2[19] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1305C0, qword_F2DE8);
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v2[20] = v11;
  *v11 = v2;
  v11[1] = sub_AB3C8;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v9, v9);
}

uint64_t sub_AB3C8()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_ABD70, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[22] = v6;
    *v6 = v3;
    v6[1] = sub_AB56C;
    v7 = v3[15];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v4, v4);
  }
}

uint64_t sub_AB56C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_ABDD4;
  }

  else
  {
    v3 = sub_AB680;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AB680()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[12];
  swift_getObjectType();
  sub_6C94();
  v0[24] = sub_E7764();
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_unknownObjectRelease();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v4 = v0[18];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
    v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_AB7F0;
    v10 = v0[15];

    return BaseObjectGraph.inject<A>(_:)(v0 + 7, v7, v7);
  }
}

uint64_t sub_AB7F0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_ABE40;
  }

  else
  {
    v3 = sub_AB904;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AB904()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v0[14] = v1;
  v4 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  v6 = sub_ABFB8();
  *v5 = v0;
  v5[1] = sub_AB9EC;
  v7 = v0[15];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 13, v0 + 14, v7, &type metadata for FindOrCreateLocalEpisodeContentIDsIntent, v6, v2, v3);
}

uint64_t sub_AB9EC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_ABEB4;
  }

  else
  {
    v3 = sub_ABB00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_ABB00()
{
  v1 = v0[13];
  v0[29] = v1;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = async function pointer to dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisodes(with:isFromSaving:from:in:)[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_ABBD0;
  v6 = v0[24];

  return dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisodes(with:isFromSaving:from:in:)(v1, 0, 3, v6, v2, v3);
}

uint64_t sub_ABBD0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_ABF30;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_ABCEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_ABCEC()
{
  v1 = *(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_ABD70()
{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_ABDD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[23];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_ABE40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_ABEB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_ABF30()
{
  v1 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 248);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_ABFB8()
{
  result = qword_1305D8;
  if (!qword_1305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305D8);
  }

  return result;
}

uint64_t sub_AC00C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return DownloadEpisodesIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_AC0AC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t EnqueueEpisodeForPlaybackIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_E5D34();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305F0, &qword_F2E88) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_E62C4();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_AC324, 0, 0);
}

uint64_t sub_AC324()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_95FE0(**(v0 + 64), *(*(v0 + 64) + 8), *(*(v0 + 64) + 16));
  sub_E62B4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_ACC40(*(v0 + 104));
    sub_ACCA8();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    *(v0 + 216) = *(type metadata accessor for EnqueueEpisodeForPlaybackIntent() + 20);
    *(v0 + 136) = sub_E72F4();
    *(v0 + 144) = sub_E72E4();
    v9 = sub_E5D94();
    v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_AC510;
    v12 = *(v0 + 72);

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v9, v9);
  }
}

uint64_t sub_AC510()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = v0;

  v6 = v3[18];
  v7 = v3[17];
  v8 = sub_E7294();
  if (v2)
  {
    v10 = sub_AC950;
  }

  else
  {
    v3[21] = v8;
    v3[22] = v9;
    v10 = sub_AC674;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_AC674()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 56);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F338, &qword_F2E90) + 48);
  (*(v3 + 16))(v5, v2, v4);
  v10 = sub_E5D24();
  (*(*(v10 - 8) + 16))(v5 + v9, v8 + v1, v10);
  (*(v6 + 104))(v5, enum case for PlaybackController.QueueCommand.addItemToQueue(_:), v7);
  *(v0 + 40) = v7;
  *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(v6 + 16))(boxed_opaque_existential_1, v5, v7);
  v12 = *(&async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + 1);
  v15 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_AC824;

  return (v15)(v0 + 16, 0);
}

uint64_t sub_AC824(void *a1)
{
  v4 = *v2;
  v5 = (*v2)[24];
  v10 = *v2;
  (*v2)[25] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_ACAFC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_AC9C0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_AC950()
{
  v1 = v0[18];

  v0[26] = v0[20];

  return _swift_task_switch(sub_ACBA8, 0, 0);
}

uint64_t sub_AC9C0()
{
  v1 = v0[23];
  v2 = v0[18];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_ACA5C, 0, 0);
}

uint64_t sub_ACA5C()
{
  v1 = v0[13];
  v2 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_ACAFC()
{
  v1 = v0[23];
  v2 = v0[18];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[26] = v0[25];

  return _swift_task_switch(sub_ACBA8, 0, 0);
}

uint64_t sub_ACBA8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[26];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_ACC40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305F0, &qword_F2E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_ACCA8()
{
  result = qword_1305F8;
  if (!qword_1305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305F8);
  }

  return result;
}

unint64_t sub_ACD00()
{
  result = qword_130600;
  if (!qword_130600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130600);
  }

  return result;
}

unint64_t sub_ACD58()
{
  result = qword_12F478;
  if (!qword_12F478)
  {
    type metadata accessor for EnqueueEpisodeForPlaybackIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F478);
  }

  return result;
}

uint64_t sub_ACDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return EnqueueEpisodeForPlaybackIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t EnqueueShowForPlaybackIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_E5D34();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305F0, &qword_F2E88) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_E62C4();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_ACFD4, 0, 0);
}

uint64_t sub_ACFD4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_95FE0(**(v0 + 64), *(*(v0 + 64) + 8), *(*(v0 + 64) + 16));
  sub_E62A4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_ACC40(*(v0 + 104));
    sub_AD1C0();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    *(v0 + 216) = *(type metadata accessor for EnqueueShowForPlaybackIntent() + 20);
    *(v0 + 136) = sub_E72F4();
    *(v0 + 144) = sub_E72E4();
    v9 = sub_E5D94();
    v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_AC510;
    v12 = *(v0 + 72);

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v9, v9);
  }
}

unint64_t sub_AD1C0()
{
  result = qword_130608;
  if (!qword_130608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130608);
  }

  return result;
}

unint64_t sub_AD218()
{
  result = qword_130610;
  if (!qword_130610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130610);
  }

  return result;
}

unint64_t sub_AD270()
{
  result = qword_130618;
  if (!qword_130618)
  {
    type metadata accessor for EnqueueShowForPlaybackIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130618);
  }

  return result;
}

uint64_t sub_AD2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return EnqueueShowForPlaybackIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t FetchPodcastForEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = sub_E6374();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E020, &qword_EABE8);
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v16 = sub_E5FE4();
  v2[23] = v16;
  v17 = *(v16 - 8);
  v2[24] = v17;
  v18 = *(v17 + 64) + 15;
  v2[25] = swift_task_alloc();
  v19 = sub_E6084();
  v2[26] = v19;
  v20 = *(v19 - 8);
  v2[27] = v20;
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  v23 = *a1;
  v2[28] = v22;
  v2[29] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v25 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v26 = swift_task_alloc();
  v2[30] = v26;
  *v26 = v2;
  v26[1] = sub_AD71C;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v24, v24);
}

uint64_t sub_AD71C()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_AE72C, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306B0, &qword_F31E0);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[32] = v6;
    *v6 = v3;
    v6[1] = sub_AD8C0;
    v7 = v3[10];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_AD8C0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_AE818;
  }

  else
  {
    v3 = sub_AD9D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AD9D4()
{
  v37 = *(v0 + 232);
  v1 = *(v0 + 200);
  v40 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v38 = *(v0 + 144);
  v39 = *(v0 + 136);
  v41 = *(v0 + 104);
  v42 = *(v0 + 56);
  *(v0 + 272) = v42;
  (*(v3 + 104))();
  v8 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
  v9 = sub_E6014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 104);
  v11(v4, v8, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v12 = sub_E60A4();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_E6034();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC18, &qword_ECC68);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70) - 8);
  v15 = *(*v14 + 72);
  v16 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_E87F0;
  v18 = v17 + v16;
  v19 = v14[14];
  v11(v18, enum case for MediaRequest.ContentType.podcast(_:), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC20, &qword_ECC78);
  v20 = sub_E6044();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_E87F0;
  (*(v21 + 104))(v24 + v23, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v20);
  *(v18 + v19) = v24;
  sub_B0314(v17);
  swift_setDeallocating();
  sub_B04FC(v18);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_E87F0;
  *(v0 + 64) = v37;
  sub_10D78();
  *(v25 + 32) = sub_E7854();
  *(v25 + 40) = v26;
  v27 = sub_E6024();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  v28 = sub_E6094();
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v29 = sub_E59C4();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v30 = *(v0 + 40);
  *(v0 + 280) = v30;
  *(v0 + 296) = __swift_project_boxed_opaque_existential_1((v0 + 16), v30);
  *(v0 + 304) = sub_E6524();
  sub_E6354();
  v31 = swift_allocObject();
  *(v0 + 312) = v31;
  *(v31 + 16) = v42;
  v32 = async function pointer to DispatchWorkgroup.runThreadBlocking<A>(operation:)[1];
  swift_unknownObjectRetain();
  v33 = swift_task_alloc();
  *(v0 + 320) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1306E0, &unk_F31E8);
  *v33 = v0;
  v33[1] = sub_AE030;
  v35 = *(v0 + 104);

  return DispatchWorkgroup.runThreadBlocking<A>(operation:)(v0 + 72, sub_B059C, v31, v34);
}

uint64_t sub_AE030()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_AE1A4, 0, 0);
}

uint64_t sub_AE1A4()
{
  v0[41] = v0[9];
  v1 = async function pointer to MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)[1];
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_AE258;
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[28];
  v8 = v0[16];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v8, v7);
}

uint64_t sub_AE258()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v5 = sub_AE90C;
  }

  else
  {
    v5 = sub_AE38C;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_AE38C()
{
  v1 = v0[16];
  v2 = v0[14];
  result = sub_E6314();
  if (result >> 62)
  {
    v20 = result;
    v21 = sub_E7AC4();
    result = v20;
    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_17:

LABEL_18:
    v22 = v0[34];
    v23 = v0[27];
    v24 = v0[28];
    v25 = v0[26];
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[14];
    sub_B05D8();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v26, v28);
    (*(v23 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v29 = v0[28];
    v30 = v0[25];
    v32 = v0[21];
    v31 = v0[22];
    v34 = v0[19];
    v33 = v0[20];
    v36 = v0[17];
    v35 = v0[18];
    v37 = v0[16];
    v38 = v0[13];

    v39 = v0[1];

    return v39();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v4 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_23:
      v40 = result;
      v41 = sub_E7AC4();
      result = v40;
      if (v41)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    v4 = *(result + 32);
  }

  v5 = v4;

  v6 = sub_E64D4();

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = sub_E6784();

  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = sub_E6794();

  result = v8;
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v9 = *(result + 32);
  }

  v48 = v9;
  v10 = v0[34];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[22];
  v42 = v0[21];
  v43 = v0[20];
  v44 = v0[19];
  v45 = v0[18];
  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[14];
  v46 = v0[17];
  v47 = v0[13];
  swift_unknownObjectRelease();

  (*(v16 + 8))(v17, v18);
  (*(v11 + 8))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v19 = v0[1];

  return v19(v48);
}

uint64_t sub_AE72C()
{
  v13 = v0[31];
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_AE818()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = v0[33];
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_AE90C()
{
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v17 = v0[43];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  v14 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_AEA28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return FetchPodcastForEpisodeIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

unint64_t sub_AEAC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E6014();
  sub_B1BF0(&qword_130740, &type metadata accessor for MediaRequest.ContentType);
  v5 = sub_E6FA4();
  return sub_AEC70(a1, v5, &type metadata accessor for MediaRequest.ContentType, &qword_130748, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
}

unint64_t sub_AEB9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E6064();
  sub_B1BF0(&qword_130760, &type metadata accessor for MediaRequest.Filter);
  v5 = sub_E6FA4();
  return sub_AEC70(a1, v5, &type metadata accessor for MediaRequest.Filter, &qword_130768, &type metadata accessor for MediaRequest.Filter, &protocol conformance descriptor for MediaRequest.Filter);
}

unint64_t sub_AEC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_B1BF0(v24, v25);
      v20 = sub_E6FB4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_AEE10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E5FF4();
  sub_B1BF0(&qword_130790, &type metadata accessor for MediaRequest.Association);
  v5 = sub_E6FA4();
  return sub_AEC70(a1, v5, &type metadata accessor for MediaRequest.Association, &qword_130798, &type metadata accessor for MediaRequest.Association, &protocol conformance descriptor for MediaRequest.Association);
}

unint64_t sub_AEEE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_E7CC4();
  sub_E7124();
  v6 = sub_E7CF4();

  return sub_AEF5C(a1, a2, v6);
}

unint64_t sub_AEF5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_E7BD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_AF014(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_E6034();
  sub_B1BF0(&qword_1307C0, &type metadata accessor for MediaRequest.Relationship);
  v5 = sub_E6FA4();
  return sub_AEC70(a1, v5, &type metadata accessor for MediaRequest.Relationship, &qword_1307C8, &type metadata accessor for MediaRequest.Relationship, &protocol conformance descriptor for MediaRequest.Relationship);
}

unint64_t sub_AF0E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307D0, &qword_F3318);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307D8, &unk_F3320);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_1307D0, &qword_F3318);
      result = sub_AF014(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6034();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307B0, &qword_F3308);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307B8, &qword_F3310);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_1307B0, &qword_F3308);
      result = sub_AF014(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6034();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307A8, &qword_F3300);
    v3 = sub_E7B04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_AEEE4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307A0, &qword_F32F8);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &unk_1306C0, &qword_ECC70);
      result = sub_AEAC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6014();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF7A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130780, &qword_F32E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130788, &qword_F32F0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130780, &qword_F32E8);
      result = sub_AEE10(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E5FF4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130770, &qword_F32D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130778, &qword_F32E0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130770, &qword_F32D8);
      result = sub_AEAC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6014();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AFB74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130750, &qword_F32C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130758, &qword_F32D0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130750, &qword_F32C8);
      result = sub_AEB9C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6064();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AFD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130730, &qword_F32B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130738, &qword_F32C0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130730, &qword_F32B8);
      result = sub_AEAC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6014();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AFF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130860, &qword_EB5B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130868, &unk_F33B0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130860, &qword_EB5B8);
      v12 = *v6;
      result = sub_DFF24(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_E56B4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B012C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130850, &unk_EB8B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130858, &unk_F33A0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130850, &unk_EB8B0);
      v12 = *v6;
      result = sub_DFFE8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_E56B4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307A0, &qword_F32F8);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &unk_1306C0, &qword_ECC70);
      result = sub_E0070(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_E6014();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_B04FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B0564()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_B059C@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) primaryUser];
  *a1 = result;
  return result;
}

unint64_t sub_B05D8()
{
  result = qword_1306E8;
  if (!qword_1306E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1306E8);
  }

  return result;
}

unint64_t sub_B0630()
{
  result = qword_1306F0;
  if (!qword_1306F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1306F0);
  }

  return result;
}

unint64_t sub_B0694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130840, &qword_EDC78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130848, &unk_F3390);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130840, &qword_EDC78);
      result = sub_E00F4(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B087C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130830, &qword_EDF58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130838, &unk_F3380);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130830, &qword_EDF58);
      result = sub_E0180(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130820, &qword_EE238);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130828, &unk_F3370);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130820, &qword_EE238);
      result = sub_E0240(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2B8, qword_EE510);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130700, &qword_F3288);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_12F2B8, qword_EE510);
      v12 = *v6;
      result = sub_E02E4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_E56B4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130810, &unk_F1E18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130818, &unk_F3360);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130810, &unk_F1E18);
      result = sub_E0398(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B101C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130800, &qword_F24A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130808, &unk_F3350);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_130800, &qword_F24A8);
      result = sub_E0494(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B1204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307F0, &qword_F2788);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307F8, &unk_F3340);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_1307F0, &qword_F2788);
      result = sub_E05D8(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B13EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307E0, &unk_F2A60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307E8, &unk_F3330);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26324(v10, v6, &qword_1307E0, &unk_F2A60);
      result = sub_E0684(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B15D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_130878, &unk_F33C0);
    v8 = sub_E7B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_26324(v10, v6, &qword_130870, &qword_F2B70);
      v12 = *v6;
      result = sub_E0728(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_E64B4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_B17B0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130728, &qword_F32B0);
  v3 = sub_E7B04();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_E0728(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_E0728(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_B18B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130720, &unk_F59E0);
  v3 = sub_E7B04();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_E07B8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_E07B8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_B19C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130718, &unk_F32A0);
    v3 = sub_E7B04();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_E0824(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B1AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130708, &qword_F3290);
    v3 = sub_E7B04();
    v4 = a1 + 32;

    while (1)
    {
      sub_26324(v4, v13, &qword_130710, &qword_F3298);
      result = sub_E0868(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_61B34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_B1BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FetchMediaAPIRepresentableIntentImplementation.perform(_:objectGraph:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  *v7 = v3;
  v7[1] = sub_1DAF8;

  return sub_B1DBC(a1, a2, v8);
}

uint64_t sub_B1CF8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  *v8 = v4;
  v8[1] = sub_1D7E4;

  return sub_B1DBC(a2, a3, v9);
}

uint64_t sub_B1DBC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a3;
  v5 = sub_E6324();
  *(v3 + 72) = v5;
  v6 = *(v5 - 8);
  *(v3 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v14 = sub_E5FE4();
  *(v3 + 144) = v14;
  v15 = *(v14 - 8);
  *(v3 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v17 = sub_E6084();
  *(v3 + 168) = v17;
  v18 = *(v17 - 8);
  *(v3 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = *a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v21 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v22 = swift_task_alloc();
  *(v3 + 208) = v22;
  *v22 = v3;
  v22[1] = sub_B20F0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 16, v20, v20);
}

uint64_t sub_B20F0()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_B29C4;
  }

  else
  {
    v3 = sub_B2204;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B2204()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  v3 = *(v0 + 64);
  v51 = *(v0 + 192);
  (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for MediaRequest.RequestType.catalog(_:), *(v0 + 144));
  MediaAPIRepresentableIntent = type metadata accessor for FetchMediaAPIRepresentableIntent();
  FetchMediaAPIRepresentableIntent.contentType.getter(MediaAPIRepresentableIntent, v2);
  if (v1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 192);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);
    v20 = sub_E6014();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
    v21 = sub_E60A4();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = sub_E6034();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = *(v16 + 16);
    if (v23)
    {
      v24 = *(v0 + 192);

      sub_15D18(0, v23, 0);
      v25 = _swiftEmptyArrayStorage;
      v26 = (v24 + 32);
      sub_10D78();
      do
      {
        v27 = *v26++;
        *(v0 + 56) = v27;
        v28 = sub_E7854();
        v55 = v25;
        v31 = v25[2];
        v30 = v25[3];
        if (v31 >= v30 >> 1)
        {
          v52 = v28;
          v33 = v29;
          sub_15D18((v30 > 1), v31 + 1, 1);
          v29 = v33;
          v28 = v52;
          v25 = v55;
        }

        v25[2] = v31 + 1;
        v32 = &v25[2 * v31];
        v32[4] = v28;
        v32[5] = v29;
        --v23;
      }

      while (v23);
      v53 = *(v0 + 200);
    }

    else
    {
      v54 = *(v0 + 200);
    }

    v49 = *(v0 + 160);
    v50 = *(v0 + 184);
    v47 = *(v0 + 128);
    v48 = *(v0 + 136);
    v34 = *(v0 + 112);
    v46 = *(v0 + 120);
    v35 = *(v0 + 96);
    v36 = *(v0 + 104);
    v37 = sub_E6024();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
    v38 = sub_E6094();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    v39 = sub_E59C4();
    (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
    sub_AF0E8(_swiftEmptyArrayStorage);
    sub_AF0E8(_swiftEmptyArrayStorage);
    sub_AF2D0(_swiftEmptyArrayStorage);
    sub_AF4B8(_swiftEmptyArrayStorage);
    sub_AF5BC(_swiftEmptyArrayStorage);
    sub_AF7A4(_swiftEmptyArrayStorage);
    sub_AF98C(_swiftEmptyArrayStorage);
    sub_AFB74(_swiftEmptyArrayStorage);
    sub_AFD5C(_swiftEmptyArrayStorage);
    sub_E6074();
    v40 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v41 = async function pointer to MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)[1];
    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v42[1] = sub_B2780;
    v43 = *(v0 + 184);
    v44 = *(v0 + 88);
    v45 = *(v0 + 64);

    return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v44, v43);
  }
}

uint64_t sub_B2780()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_B2A9C;
  }

  else
  {
    v3 = sub_B2894;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B2894()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v12 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[12];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v16 = sub_E6314();
  (*(v8 + 8))(v7, v9);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10(v16);
}

uint64_t sub_B29C4()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_B2A9C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t PlayEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_E6214();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130900, &unk_F3490) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_E61F4();
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v10 = sub_E62C4();
  v1[14] = v10;
  v11 = *(v10 - 8);
  v1[15] = v11;
  v12 = *(v11 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v13 = sub_E5D94();
  v14 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_B2E20;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v13, v13);
}

uint64_t sub_B2E20()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_B3464;
  }

  else
  {
    v3 = sub_B2F34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B2F34()
{
  v1 = v0[4];
  v0[20] = v0[2];
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_E87F0;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
    v5 = &enum case for MediaIdentifier.localEpisodes(_:);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_E87F0;
    *(v4 + 32) = v1[11];
    v5 = &enum case for MediaIdentifier.episodes(_:);
  }

  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  *v6 = v4;
  (*(v8 + 104))(v6, *v5, v7);

  v0[3] = sub_E73D4();
  v9 = type metadata accessor for PlayEpisodeIntent();
  v10 = (v1 + *(v9 + 24));
  v11 = v10[1];
  if (v11)
  {
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    *v13 = *v10;
    *(v13 + 8) = v11;
    (*(v14 + 104))(v13, enum case for PlaybackIntent.Option.playbackAccount(_:), v15);

    sub_BF314(v12, v13);
    (*(v14 + 8))(v12, v15);
  }

  v32 = v0[16];
  v16 = v0[15];
  v33 = v0[14];
  v34 = v0[17];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[9];
  v35 = v0[8];
  v22 = v0[4];
  v21 = v0[5];
  v23 = v9;
  v24 = *(v9 + 28);
  v25 = sub_E6204();
  (*(*(v25 - 8) + 16))(v17, v22 + v24, v25);
  (*(v19 + 104))(v17, enum case for PlaybackIntent.Option.playbackSource(_:), v18);
  v26 = v0[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_B36BC(v17, isUniquelyReferenced_nonNull_native, v20);
  sub_B3B78(v20);
  (*(v16 + 16))(v32, v34, v33);
  sub_B3BE0(v22 + *(v23 + 20), v21);
  sub_E61E4();
  v28 = async function pointer to PlaybackController.performIntent(_:whenPossible:)[1];
  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_B323C;
  v30 = v0[8];

  return PlaybackController.performIntent(_:whenPossible:)(v30, 1);
}

uint64_t sub_B323C(void *a1)
{
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_B351C;
  }

  else
  {

    v5 = sub_B3358;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B3358()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[8];
  v10 = v0[6];
  v9 = v0[7];
  v13 = v0[9];
  v14 = v0[5];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v3, v4);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_B3464()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_B351C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[22];
  v10 = v0[16];
  v9 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[5];

  v16 = v0[1];

  return v16();
}

uint64_t sub_B361C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_AC0AC;

  return PlayEpisodeIntentImplementation.perform(_:objectGraph:)(a2);
}

uint64_t sub_B36BC@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a3;
  v7 = sub_E61F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = *(*v3 + 40);
  v14 = sub_B3CA8(&qword_130908, &type metadata accessor for PlaybackIntent.Option);
  v61 = a1;
  v15 = sub_E6FA4();
  v16 = v12;
  v17 = -1 << *(v12 + 32);
  v18 = v15 & ~v17;
  v60 = v12 + 56;
  v19 = *(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18;
  v57 = v4;
  v58 = v8;
  if (v19)
  {
    v55 = v14;
    LODWORD(v59) = a2;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v20 = v22;
    v23 = ~v17;
    v24 = *(v21 + 56);
    while (1)
    {
      v25 = v16;
      v20(v11, v16[6] + v24 * v18, v7);
      sub_B3CA8(&unk_130910, &type metadata accessor for PlaybackIntent.Option);
      v26 = sub_E6FB4();
      (*(v21 - 8))(v11, v7);
      if (v26)
      {
        break;
      }

      v18 = (v18 + 1) & v23;
      v16 = v25;
      if (((*(v60 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        v27 = 1;
        goto LABEL_8;
      }
    }

    v27 = 0;
    v16 = v25;
LABEL_8:
    v28 = v26 ^ 1u;
    v4 = v57;
    v8 = v58;
    LOBYTE(a2) = v59;
  }

  else
  {
    v28 = 1;
    v27 = 1;
  }

  v29 = v16[2];
  v30 = v29 + v27;
  if (__OFADD__(v29, v27))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = v16[3];
  if (v31 >= v30 && (a2 & 1) != 0)
  {
    if (v28)
    {
LABEL_13:
      v32 = v56;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v55 = v28;
    sub_C0444(v30);
  }

  else
  {
    if (v31 >= v30)
    {
      sub_C184C();
      if (v28)
      {
        goto LABEL_13;
      }

LABEL_18:
      v33 = *(v8 + 72) * v18;
      v32 = v56;
      goto LABEL_28;
    }

    v55 = v28;
    sub_C261C(v30);
  }

  v34 = *v4;
  v35 = *(*v4 + 40);
  v36 = sub_E6FA4();
  v37 = v34 + 56;
  v60 = v34;
  v38 = -1 << *(v34 + 32);
  v18 = v36 & ~v38;
  if ((*(v37 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v39 = v37;
    v59 = ~v38;
    v42 = *(v8 + 16);
    v41 = v8 + 16;
    v40 = v42;
    v43 = *(v41 + 56);
    while (1)
    {
      v33 = v43 * v18;
      v40(v11, *(v60 + 48) + v43 * v18, v7);
      sub_B3CA8(&unk_130910, &type metadata accessor for PlaybackIntent.Option);
      v44 = sub_E6FB4();
      (*(v41 - 8))(v11, v7);
      if (v44)
      {
        break;
      }

      v18 = (v18 + 1) & v59;
      if (((*(v39 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v32 = v56;
    v4 = v57;
    v8 = v58;
    if (v55)
    {
      goto LABEL_32;
    }

LABEL_28:
    v50 = *v4;
    v51 = *(*v4 + 48);
    v52 = *(v8 + 32);
    v52(v32, v51 + v33, v7);
    v52(*(v50 + 48) + v33, v61, v7);
    v49 = 0;
    return (*(v8 + 56))(v32, v49, 1, v7);
  }

LABEL_24:
  v32 = v56;
  v4 = v57;
  v8 = v58;
  if (v55)
  {
LABEL_25:
    v45 = *v4;
    *(*v4 + 8 * (v18 >> 6) + 56) |= 1 << v18;
    (*(v8 + 32))(*(v45 + 48) + *(v8 + 72) * v18, v61, v7);
    v46 = *(v45 + 16);
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (!v47)
    {
      *(v45 + 16) = v48;
      v49 = 1;
      return (*(v8 + 56))(v32, v49, 1, v7);
    }

    goto LABEL_31;
  }

LABEL_32:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_B3B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130900, &unk_F3490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B3BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B3CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RemoveEpisodesDownloadIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[9] = a2;
  v4 = sub_E7724();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_E7324();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v2[15] = v10;
  v2[16] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1305C0, qword_F2DE8);
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  v2[17] = v14;
  *v14 = v2;
  v14[1] = sub_B3E70;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v12, v12);
}

uint64_t sub_B3E70()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B45D8, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[19] = v6;
    *v6 = v3;
    v6[1] = sub_B4014;
    v7 = v3[9];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_B4014()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_B4648;
  }

  else
  {
    v3 = sub_B4128;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B4128()
{
  v1 = v0[7];
  v2 = v0[20];
  v3 = v0[15];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[21] = v4;
  if (v2)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v5 = v0[15];
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v4;
    v10 = v0[16];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_unknownObjectRelease();
    v14 = swift_allocObject();
    v0[22] = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v10;
    (*(v12 + 104))(v11, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v13);
    v15 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v9;

    v16 = swift_task_alloc();
    v0[23] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130920, &unk_F3520);
    *v16 = v0;
    v16[1] = sub_B4348;
    v18 = v0[12];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v18, sub_B4970, v14, v17);
  }
}

uint64_t sub_B4348()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = v2[22];
  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v6 = sub_B46C0;
  }

  else
  {
    v6 = sub_B44CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_B44CC()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

      sub_E5F44();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v7 = v0[21];
  v8 = v0[15];
  v9 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_B45D8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_B4648()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_B46C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_B4740@<X0>(char **a1@<X8>)
{
  result = sub_E7714();
  if (!v1)
  {
    v4 = result;
    v5 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v6 = sub_E7AC4();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v20 = _swiftEmptyArrayStorage;
        do
        {
          v8 = v7;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v9 = sub_E79B4();
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v8 >= *(v5 + 16))
              {
                goto LABEL_22;
              }

              v9 = *(v4 + 8 * v8 + 32);
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            v10 = v9;
            v11 = [v10 uuid];
            if (v11)
            {
              break;
            }

            ++v8;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v19 = a1;
          v12 = v11;
          v13 = sub_E7064();
          v18 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_22FBC(0, *(v20 + 2) + 1, 1, v20);
          }

          v16 = *(v20 + 2);
          v15 = *(v20 + 3);
          if (v16 >= v15 >> 1)
          {
            v20 = sub_22FBC((v15 > 1), v16 + 1, 1, v20);
          }

          *(v20 + 2) = v16 + 1;
          v17 = &v20[16 * v16];
          a1 = v19;
          *(v17 + 4) = v13;
          *(v17 + 5) = v18;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v20 = _swiftEmptyArrayStorage;
LABEL_25:

    *a1 = v20;
  }

  return result;
}