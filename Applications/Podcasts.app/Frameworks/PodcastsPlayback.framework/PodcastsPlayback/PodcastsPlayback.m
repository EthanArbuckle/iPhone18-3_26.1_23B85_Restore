uint64_t DefaultEpisodeStateDataSource.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t DefaultEpisodeStateDataSource.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1AE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2238();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v4 = v6;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_26B4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v8;

  return sub_226C(v4);
}

uint64_t sub_1B78(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_226C(v3);
  return OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.setter(v6, v5);
}

uint64_t OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.getter()
{
  v0 = sub_2238();
  sub_226C(v0);
  return v0;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_227C(v5);
}

uint64_t sub_1CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  sub_59744();
  v5 = *(*(v3 - 8) + 56);

  return v5(a1, 0, 1, v3);
}

uint64_t DefaultEpisodeStateDataSource.deinit()
{
  v1 = *(v0 + 24);
  sub_227C(*(v0 + 16));
  return v0;
}

uint64_t DefaultEpisodeStateDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_227C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DE8()
{
  v1 = *v0;
  v2 = sub_2238();
  sub_226C(v2);
  return v2;
}

void (*sub_1E44(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.modify();
  return sub_1EB8;
}

void sub_1EB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

BOOL sub_1F88(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1FE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_20D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_5A194();
  v6 = v5;
  if (v4 == sub_5A194() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_5A8E4();
  }

  return v9 & 1;
}

uint64_t sub_2168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_5A174();

  *a2 = v5;
  return result;
}

uint64_t sub_21B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_5A194();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_263C(a1);

  *a2 = v3;
  return result;
}

void *sub_2228@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2238()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_226C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_22A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
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

uint64_t sub_2424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void sub_24DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MPCPlayerChangeRequestOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_263C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2674()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26B4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_226C(v4);
}

uint64_t sub_27CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_226C(v3);
  return sub_227C(v8);
}

uint64_t sub_2898@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = qword_7CFF8;
  swift_beginAccess();
  sub_552C(v1 + v9, v8);
  v10 = sub_59C94();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_4F7C(v8);
  sub_2A68(v1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_559C(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_2A68(uint64_t a1)
{
  sub_4FE4(0, &qword_7D018, OS_os_log_ptr);
  v2 = sub_5A644();
  swift_unknownObjectRetain();

  return OSSignpostID.init(log:object:)(v2, a1);
}

uint64_t OnDemandLibraryEpisodeStateDataSource.__allocating_init(episodeStateRepository:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)(a1);
  return v5;
}

char *OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = *v1;
  v4 = sub_5A4F4();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v48 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_5A494();
  v8 = *(*(v47 - 8) + 64);
  __chkstk_darwin();
  v45 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_5A014() - 8) + 64);
  __chkstk_darwin();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_59A04();
  v40 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_5A704(56);
  v43 = "arDownloadsEnabled";
  v53._object = 0x800000000005E9A0;
  v53._countAndFlagsBits = 0xD000000000000026;
  sub_5A1F4(v53);
  v18 = *(v3 + 80);
  v42 = *(v3 + 88);
  sub_59754();
  v19 = sub_599F4();
  v21 = v20;
  v22 = *(v14 + 8);
  v39 = v14 + 8;
  v41 = v22;
  v22(v17, v13);
  v54._countAndFlagsBits = v19;
  v54._object = v21;
  sub_5A1F4(v54);

  v55._countAndFlagsBits = 0xD000000000000010;
  v55._object = 0x800000000005E9D0;
  sub_5A1F4(v55);
  v34 = v12;
  sub_5A004();
  v51 = &_swiftEmptyArrayStorage;
  v37 = sub_4B54();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  v38 = sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0);
  sub_5A694();
  v35 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v23 = *(v50 + 104);
  v50 += 104;
  v23(v48);
  *(v1 + 4) = sub_5A544();
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_5A704(65);
  v56._object = (v43 | 0x8000000000000000);
  v56._countAndFlagsBits = 0xD000000000000026;
  sub_5A1F4(v56);
  sub_59754();
  v24 = sub_599F4();
  v26 = v25;
  v41(v17, v40);
  v57._countAndFlagsBits = v24;
  v57._object = v26;
  sub_5A1F4(v57);

  v58._countAndFlagsBits = 0xD000000000000019;
  v58._object = 0x800000000005E9F0;
  sub_5A1F4(v58);
  sub_5A004();
  v51 = &_swiftEmptyArrayStorage;
  sub_5A694();
  (v23)(v48, v35, v49);
  *(v1 + 5) = sub_5A544();
  swift_getTupleTypeMetadata2();
  v27 = sub_5A2E4();
  v28 = sub_4F28();
  v29 = sub_4C3C(v27, &type metadata for EpisodeStateIdentifier, v18, v28);

  *(v2 + 6) = v29;
  *(v2 + 7) = 0;
  v30 = qword_7CFF8;
  v31 = sub_59C94();
  (*(*(v31 - 8) + 56))(&v2[v30], 1, 1, v31);
  v32 = &v2[qword_7D000];
  *v32 = "OnDemandLibraryEpisodeStateDataSource.startObserving";
  *(v32 + 1) = 52;
  v32[16] = 2;
  *(v2 + 8) = v46;
  return v2;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.deinit()
{
  v1 = *(v0 + 24);
  sub_227C(*(v0 + 16));

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  sub_4F7C(v0 + qword_7CFF8);
  return v0;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.__deallocating_deinit()
{
  OnDemandLibraryEpisodeStateDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall OnDemandLibraryEpisodeStateDataSource.startObservingChanges()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D010, &unk_5BCB0);
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v51 = &v42 - v6;
  v7 = sub_59A04();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_59C94();
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v47) = sub_5A5B4();
  v54 = sub_4FE4(0, &qword_7D018, OS_os_log_ptr);
  v43 = sub_5A644();
  v16 = *(v0 + qword_7D000);
  v48 = *(v0 + qword_7D000 + 8);
  v49 = v16;
  v57 = *(v0 + qword_7D000 + 16);
  sub_2898(v15);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v17 = swift_allocObject();
  v52 = xmmword_5BC80;
  *(v17 + 16) = xmmword_5BC80;
  v18 = *(v2 + 80);
  v42 = *(v2 + 88);
  sub_59754();
  v19 = v7;
  v45 = v7;
  v20 = sub_5A1B4();
  v22 = v21;
  *(v17 + 56) = &type metadata for String;
  v50 = sub_502C();
  *(v17 + 64) = v50;
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  v23 = v43;
  v46 = v15;
  sub_59C74();

  v24 = *(v59 + 8);
  v59 += 8;
  v47 = v24;
  v24(v15, v58);
  v25 = v1[8];
  v26 = v42;
  sub_59754();
  v27 = sub_59BD4();
  (*(v44 + 8))(v10, v19);
  v60 = v27;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v26;
  v29[4] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D030, &qword_5BCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D038, &qword_5BCC8);
  sub_5108(&qword_7D040, &qword_7D030, &qword_5BCC0);
  v30 = v51;
  sub_59EC4();

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = v18;
  v32[3] = v26;
  v32[4] = v31;
  sub_5108(qword_7D048, &qword_7D010, &unk_5BCB0);
  v33 = v55;
  v34 = sub_59F84();

  (*(v56 + 8))(v30, v33);
  v35 = v1[7];
  v1[7] = v34;

  sub_5A5A4();
  v36 = sub_5A644();
  v37 = v46;
  sub_2898(v46);
  v38 = swift_allocObject();
  *(v38 + 16) = v52;
  sub_59754();
  v39 = sub_5A1B4();
  v40 = v50;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = v40;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  sub_59C74();

  v47(v37, v58);
}

void (*sub_37D0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.modify();
  return sub_1EB8;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.state(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[5];
  v6 = *(v4 + 80);
  sub_5A664();
  sub_5A524();
  result = (*(*(v6 - 8) + 48))(a1, 1, v6);
  if (result == 1)
  {
    v8 = v2[8];
    return sub_59BC4();
  }

  return result;
}

uint64_t sub_3964@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_39E8(a1);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_39E8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_59B34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v18 = &_swiftEmptyArrayStorage;
  v8 = v2[5];
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = *(v4 + 80);
  *(v11 + 3) = *(v4 + 88);
  *(v11 + 4) = v9;
  (*(v6 + 32))(&v11[v10], &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v11[(v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = &v18;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_5430;
  *(v12 + 24) = v11;
  aBlock[4] = sub_54EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4948;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v8, v13);
  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

uint64_t sub_3C84(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v3 + 24);

      v4(v1);
      sub_227C(v4);
    }
  }

  return result;
}

uint64_t sub_3D24(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  swift_beginAccess();
  v9 = a1[6];
  sub_5340(a2, a3, a4 & 1);
  v10 = *(v8 + 80);
  sub_4F28();
  sub_5A134();
  sub_5350(a2, a3, a4 & 1);
  return swift_endAccess();
}

uint64_t sub_3E00(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v111 = a3;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v101 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A664();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 8);
  v13 = __chkstk_darwin(TupleTypeMetadata2);
  v15 = v94 - v14;
  v126 = *(v10 - 8);
  v16 = *(v126 + 64);
  v17 = __chkstk_darwin(v13);
  v19 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v94 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v94 - v24;
  __chkstk_darwin(v23);
  v108 = v94 - v26;
  v99 = sub_599C4();
  v100 = *(v99 - 8);
  v27 = *(v100 + 64);
  __chkstk_darwin(v99);
  v98 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v123 = result;
  if (result)
  {
    v119 = v11;
    v120 = v7;
    v124 = v25;
    v117 = v22;
    v107 = v19;
    v112 = v15;
    v127 = v10;
    v121 = a2;
    v122 = a4;
    v125 = sub_59B04();
    v30 = *(v125 + 16);
    if (v30)
    {
      v31 = (v126 + 8);
      v32 = (v125 + 48);
      do
      {
        v33 = *(v32 - 1);
        v35 = *v32;
        v129 = *(v32 - 2);
        v34 = v129;
        v130 = v33;
        v131 = v35;
        swift_beginAccess();
        sub_5340(v34, v33, v35);
        sub_4F28();
        sub_5A124();
        v36 = v108;
        sub_5A114();
        swift_endAccess();
        (*v31)(v36, v127);
        v37 = v111;
        v38 = *v111;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v37 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_1C1C0(0, *(v38 + 2) + 1, 1, v38);
          *v111 = v38;
        }

        v41 = *(v38 + 2);
        v40 = *(v38 + 3);
        if (v41 >= v40 >> 1)
        {
          v38 = sub_1C1C0((v40 > 1), v41 + 1, 1, v38);
          *v111 = v38;
        }

        *(v38 + 2) = v41 + 1;
        v42 = &v38[24 * v41];
        *(v42 + 4) = v34;
        *(v42 + 5) = v33;
        v42[48] = v35;
        v32 += 24;
        --v30;
      }

      while (v30);
    }

    v43 = sub_59B24();
    v44 = sub_59B14();
    v128 = v43;
    result = sub_5083C(v44);
    v45 = v128;
    v96 = *(v128 + 16);
    if (v96)
    {
      v46 = 0;
      v95 = v128 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v94[2] = v100 + 16;
      v94[1] = v100 + 8;
      v47 = (v126 + 16);
      v109 = (v120 + 48);
      v97 = (v120 + 32);
      v105 = (v120 + 8);
      v116 = (v126 + 8);
      v104 = (v119 + 8);
      v48 = v122;
      v49 = v127;
      v50 = v124;
      v110 = (v126 + 16);
      v94[0] = v128;
      do
      {
        if (v46 >= *(v45 + 16))
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v51 = v100;
        v52 = v98;
        v53 = v99;
        (*(v100 + 16))(v98, v95 + *(v100 + 72) * v46, v99);
        v102 = v46 + 1;
        sub_59764();
        v54 = sub_599B4();
        result = (*(v51 + 8))(v52, v53);
        v55 = 0;
        v57 = v54 + 56;
        v56 = *(v54 + 56);
        v115 = v54;
        v58 = 1 << *(v54 + 32);
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        else
        {
          v59 = -1;
        }

        v60 = v59 & v56;
        v61 = (v58 + 63) >> 6;
        v114 = v54 + 56;
        v113 = v61;
        while (v60)
        {
LABEL_22:
          v63 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v64 = *(v115 + 48) + 24 * (v63 | (v55 << 6));
          v66 = *v64;
          v65 = *(v64 + 8);
          v67 = *(v64 + 16);
          v68 = v123;
          swift_beginAccess();
          v69 = *(v68 + 48);
          v129 = v66;
          v130 = v65;
          v131 = v67;
          sub_5340(v66, v65, v67);
          sub_5340(v66, v65, v67);
          v70 = sub_4F28();
          v71 = v117;
          v120 = v70;
          sub_5A134();
          v125 = v66;
          v126 = v65;
          LODWORD(v121) = v67;
          sub_5350(v66, v65, v67);
          swift_endAccess();
          v72 = *(TupleTypeMetadata2 + 48);
          v73 = v48;
          v74 = *v47;
          v75 = v112;
          (*v47)(v112, v71, v49);
          v74(&v75[v72], v124, v49);
          v76 = *v109;
          v77 = (*v109)(v75, 1, v73);
          v119 = v74;
          if (v77 == 1)
          {
            v78 = *v116;
            (*v116)(v71, v127);
            if (v76(&v75[v72], 1, v73) == 1)
            {
              sub_5350(v125, v126, v121);
              v49 = v127;
              result = (v78)(v75, v127);
              goto LABEL_35;
            }

            goto LABEL_27;
          }

          v79 = v107;
          v74(v107, v75, v127);
          if (v76(&v75[v72], 1, v73) == 1)
          {
            (*v116)(v117, v127);
            (*v105)(v79, v73);
LABEL_27:
            (*v104)(v75, TupleTypeMetadata2);
            v49 = v127;
            v80 = v121;
            goto LABEL_28;
          }

          v89 = v101;
          (*v97)(v101, &v75[v72], v73);
          v90 = *(v106 + 8);
          v103 = sub_5A164();
          v91 = *v105;
          (*v105)(v89, v73);
          v92 = *v116;
          (*v116)(v117, v127);
          v91(v79, v73);
          v93 = v127;
          v92(v75, v127);
          v49 = v93;
          v80 = v121;
          if (v103)
          {
            result = sub_5350(v125, v126, v121);
LABEL_35:
            v48 = v122;
            v50 = v124;
            v47 = v110;
            v57 = v114;
            v61 = v113;
          }

          else
          {
LABEL_28:
            v50 = v124;
            v47 = v110;
            v119(v108, v124, v49);
            v82 = v125;
            v81 = v126;
            v129 = v125;
            v130 = v126;
            v131 = v80;
            swift_beginAccess();
            sub_5340(v82, v81, v80);
            sub_5A124();
            sub_5A144();
            swift_endAccess();
            v83 = v111;
            v84 = *v111;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v83 = v84;
            if ((result & 1) == 0)
            {
              result = sub_1C1C0(0, *(v84 + 16) + 1, 1, v84);
              v84 = result;
              *v111 = result;
            }

            v86 = *(v84 + 16);
            v85 = *(v84 + 24);
            v57 = v114;
            if (v86 >= v85 >> 1)
            {
              result = sub_1C1C0((v85 > 1), v86 + 1, 1, v84);
              v84 = result;
              *v111 = result;
            }

            *(v84 + 16) = v86 + 1;
            v87 = v84 + 24 * v86;
            v88 = v126;
            *(v87 + 32) = v125;
            *(v87 + 40) = v88;
            *(v87 + 48) = v80;
            v48 = v122;
            v61 = v113;
          }
        }

        while (1)
        {
          v62 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v62 >= v61)
          {
            break;
          }

          v60 = *(v57 + 8 * v62);
          ++v55;
          if (v60)
          {
            v55 = v62;
            goto LABEL_22;
          }
        }

        result = (*v116)(v50, v49);
        v46 = v102;
        v45 = v94[0];
      }

      while (v102 != v96);
    }
  }

  return result;
}

unint64_t sub_4970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_5A154();

  return sub_49CC(a1, v9, a2, a3);
}

unint64_t sub_49CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_5A164();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_4B54()
{
  result = qword_7E910;
  if (!qword_7E910)
  {
    sub_5A494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E910);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

uint64_t sub_4C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (sub_5A314())
  {
    sub_5A864();
    v13 = sub_5A854();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = sub_5A324();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_5A2F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_5A714();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_4970(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_4F28()
{
  result = qword_7F630;
  if (!qword_7F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7F630);
  }

  return result;
}

uint64_t sub_4F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4FE4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_502C()
{
  result = qword_7D028;
  if (!qword_7D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D028);
  }

  return result;
}

uint64_t sub_5080()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50B8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_50F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_3964(a1, a2);
}

uint64_t sub_50FC(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_3C84(a1);
}

uint64_t sub_5108(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 sub_5188(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_5194()
{
  sub_52B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_52B0()
{
  if (!qword_7D0D0)
  {
    sub_59C94();
    v0 = sub_5A664();
    if (!v1)
    {
      atomic_store(v0, &qword_7D0D0);
    }
  }
}

uint64_t sub_5308()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5340(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_5350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_5360()
{
  v1 = sub_59B34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_5430()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_59B34() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_3E00(v6, v0 + v4, v5, v1, v2);
}

uint64_t sub_54EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_552C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_559C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 48);
  if (*(v10 + 16) && (v11 = sub_56504(a2, a3, a4 & 1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_59984();
    v16 = *(v15 - 8);
    sub_5B84(v14 + *(v16 + 72) * v13, a5);
    (*(v16 + 56))(a5, 0, 1, v15);
  }

  else
  {
    v17 = sub_59984();
    (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  return swift_endAccess();
}

uint64_t OnDemandLibraryEpisodeStateDataSource<>.estimatedPlayState(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v28[-v18];
  if (*(v4 + 56))
  {
    v20 = *(v4 + 40);
    __chkstk_darwin(v17);
    *&v28[-32] = v5;
    *&v28[-24] = a1;
    *&v28[-16] = a2;
    v28[-8] = a3 & 1;
    sub_5A524();
    v21 = sub_59984();
    if ((*(*(v21 - 8) + 48))(v19, 1, v21) == 1)
    {
      v22 = *(v5 + 64);
      sub_59BC4();
    }

    return sub_5B14(v19, a4);
  }

  else
  {
    sub_5A30();
    sub_5A654();
    v24 = sub_5A454();
    v25 = sub_59D04();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v25, v24, "You are using an instance of OnDemandLibraryEpisodeStateDataSource that never received startObservingChanges()!! This means estimatedPlayState(for:) will never return any state at all, just nils. This is not the way this was supposed to be used. You should be using the same shared instance of OnDemandLibraryEpisodeStateDataSource than the FSM system is using.", v26, 2u);
    }

    (*(v11 + 8))(v14, v10);
    v27 = sub_59984();
    return (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }
}

unint64_t sub_5A30()
{
  result = qword_7D018;
  if (!qword_7D018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7D018);
  }

  return result;
}

uint64_t sub_5AA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_5B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_59984();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MediaIdentifier.firstItemMatchesEpisode(_:)(void *a1)
{
  v3 = sub_59944();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    goto LABEL_3;
  }

  (*(v4 + 16))(v7, v1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for MediaIdentifier.podcast(_:))
  {
    goto LABEL_3;
  }

  if (v8 != enum case for MediaIdentifier.episodes(_:))
  {
    if (v8 == enum case for MediaIdentifier.localEpisodes(_:))
    {
      (*(v4 + 96))(v7, v3);
      v13 = *v7;
      if (*(*v7 + 16))
      {
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v32 = a1;

      v25 = v32;
      v33 = [v25 identifiers];
      v34 = [v33 library];

      if (v34)
      {
        v35 = [v34 databaseID];
        swift_unknownObjectRelease();
        v36 = sub_5A194();
        v38 = v37;

        if (!v14)
        {

          if (!v38)
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (v38)
        {
          if (v15 == v36 && v14 == v38)
          {
LABEL_37:

LABEL_40:

LABEL_50:
            v9 = 1;
            return v9 & 1;
          }

LABEL_48:
          v9 = sub_5A8E4();

          return v9 & 1;
        }

        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (v8 != enum case for MediaIdentifier.localPodcast(_:))
    {
      if (v8 == enum case for MediaIdentifier.station(_:))
      {
        (*(v4 + 96))(v7, v3);
        v23 = v7[1];
        v22 = v7[2];
        v14 = v7[3];
        v24 = a1;

        v25 = v24;
        v26 = [v25 identifiers];
        v27 = [v26 library];

        if (v27)
        {
          v28 = [v27 databaseID];
          swift_unknownObjectRelease();
          v29 = sub_5A194();
          v31 = v30;

          if (!v14)
          {

            if (!v31)
            {
              goto LABEL_50;
            }

            goto LABEL_47;
          }

          if (v31)
          {
            if (v22 == v29 && v14 == v31)
            {
              goto LABEL_37;
            }

            goto LABEL_48;
          }

LABEL_39:

LABEL_47:

          goto LABEL_3;
        }

LABEL_38:

        if (!v14)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v8 != enum case for MediaIdentifier.snapshot(_:) && v8 != enum case for MediaIdentifier.mediaQuery(_:) && v8 != enum case for MediaIdentifier.universalEpisodeIdentifiers(_:) && v8 == enum case for MediaIdentifier.library(_:))
      {
        goto LABEL_3;
      }
    }

    (*(v4 + 8))(v7, v3);
LABEL_3:
    v9 = 0;
    return v9 & 1;
  }

  (*(v4 + 96))(v7, v3);
  v11 = *(*v7 + 16);
  if (v11)
  {
    v12 = *(*v7 + 32);
  }

  else
  {
    v12 = 0;
  }

  v16 = a1;

  v17 = v16;
  v18 = [v17 identifiers];
  v19 = [v18 universalStore];

  v9 = v19 == 0;
  if (v19)
  {
    [v19 adamID];
    swift_unknownObjectRelease();
    v20 = sub_59C44();
  }

  else
  {
    v20 = 0;
  }

  if (v11)
  {
    if (v19)
    {
      v21 = v12 == v20;
    }

    else
    {
      v21 = 0;
    }

    v9 = v21;
  }

  return v9 & 1;
}

id Optional<A>.isSystemRoute.getter(void *a1)
{
  if (a1)
  {
    return [a1 isDeviceRoute];
  }

  else
  {
    return &dword_0 + 1;
  }
}

unint64_t MPCPlayerResponse.nextChapter.getter()
{
  result = MPCPlayerResponse.remainingChapters.getter();
  if (!result)
  {
    return result;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_5A814();
    result = v4;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = sub_5A724();
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t MPCPlayerResponse.previousChapter.getter()
{
  result = MPCPlayerResponse.previousChapters.getter();
  if (!result)
  {
    return result;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v7 = result;
  v2 = sub_5A814();
  result = v7;
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_14:
    v5 = sub_5A724();
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v1 + 16))
  {
    v5 = *(result + 8 * v4 + 32);
LABEL_9:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

void *sub_62C0(uint64_t (*a1)(uint64_t, double))
{
  v3 = [v1 tracklist];
  v4 = [v3 playingItem];

  if (!v4)
  {
    return 0;
  }

  [v4 duration];

  sub_594E4();
  v6 = v16 + (v5 - v14) * v17;
  if (v6 >= v15)
  {
    v7 = v15;
  }

  else
  {
    v7 = v6;
  }

  result = MPCPlayerResponse.currentItem.getter();
  if (result)
  {
    v9 = result;
    v10 = [result chapters];
    if (v10)
    {
      v11 = v10;
      sub_63F4();
      v12 = sub_5A294();

      v13 = a1(v12, fmax(v7, 0.0));

      return v13;
    }

    return 0;
  }

  return result;
}

unint64_t sub_63F4()
{
  result = qword_7E390;
  if (!qword_7E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7E390);
  }

  return result;
}

void *sub_6440(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_5A814();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_5A724();
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        [v6 startTime];
        if (v9 <= a2)
        {
        }

        else
        {
          sub_5A764();
          v10 = _swiftEmptyArrayStorage[2];
          sub_5A784();
          sub_5A794();
          sub_5A774();
        }

        ++v5;
      }

      while (v8 != v4);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_22:
    sub_63F4();

    v11 = sub_5A804();

    goto LABEL_21;
  }

LABEL_19:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  sub_5A8F4();
  sub_63F4();
  v11 = _swiftEmptyArrayStorage;
LABEL_21:

  return v11;
}

void *sub_65E8(unint64_t a1, double a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_5A814();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      v8 = &off_7B000;
      v9 = &off_7B000;
      do
      {
        if (v6)
        {
          v10 = sub_5A724();
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_16;
          }

          v10 = *(v2 + 8 * v5 + 32);
        }

        v11 = v10;
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        [v10 v8[360]];
        v14 = v13;
        [v11 v9[358]];
        if (v14 + v15 > a2)
        {
        }

        else
        {
          sub_5A764();
          v16 = v6;
          v17 = v4;
          v18 = v2;
          v19 = v9;
          v20 = _swiftEmptyArrayStorage[2];
          sub_5A784();
          v9 = v19;
          v2 = v18;
          v4 = v17;
          v6 = v16;
          sub_5A794();
          sub_5A774();
          v8 = &off_7B000;
        }

        ++v5;
      }

      while (v12 != v4);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_22:
    sub_63F4();

    v21 = sub_5A804();

    goto LABEL_21;
  }

LABEL_19:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  sub_5A8F4();
  sub_63F4();
  v21 = _swiftEmptyArrayStorage;
LABEL_21:

  return v21;
}

id MPCPlayerResponse.currentChapter.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  [v2 duration];

  sub_594E4();
  v4 = v13 + (v3 - v11) * v14;
  if (v4 >= v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = v4;
  }

  result = MPCPlayerResponse.currentItem.getter();
  if (result)
  {
    v7 = result;
    v8 = [result chapters];
    if (v8)
    {
      sub_63F4();
      v9 = sub_5A294();

      sub_68F4(v9, fmax(v5, 0.0));
      v8 = v10;
    }

    return v8;
  }

  return result;
}

void sub_68F4(unint64_t a1, double a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_18:
    v4 = sub_5A814();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      v8 = &off_7B000;
      v9 = &off_7B000;
      do
      {
        if (v6)
        {
          v10 = sub_5A724();
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_17;
          }

          v10 = *(v2 + 8 * v5 + 32);
        }

        v11 = v10;
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        [v10 v8[360]];
        if (v13 > a2 || ([v11 v8[360]], v15 = v14, objc_msgSend(v11, v9[358]), v15 + v16 <= a2))
        {
        }

        else
        {
          sub_5A764();
          v17 = v6;
          v18 = v4;
          v19 = v2;
          v20 = v8;
          v21 = _swiftEmptyArrayStorage[2];
          sub_5A784();
          v8 = v20;
          v2 = v19;
          v4 = v18;
          v6 = v17;
          sub_5A794();
          sub_5A774();
          v9 = &off_7B000;
        }

        ++v5;
      }

      while (v12 != v4);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_25:
    if (!sub_5A814())
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_26:

    return;
  }

LABEL_22:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    sub_5A724();
    goto LABEL_26;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v22 = _swiftEmptyArrayStorage[4];
    goto LABEL_26;
  }

  __break(1u);
}

void *MPCPlayerResponse.chapters.getter()
{
  result = MPCPlayerResponse.currentItem.getter();
  if (result)
  {
    v1 = result;
    v2 = [result chapters];
    if (v2)
    {
      v3 = v2;
      sub_63F4();
      v4 = sub_5A294();

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id MPCPlayerResponseItem.podcastEpisode.getter()
{
  result = [v0 metadataObject];
  if (result)
  {
    v2 = result;
    v3 = [result flattenedGenericObject];

    if (v3)
    {
      v4 = [v3 anyObject];

      if (v4)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

id MPCPlayerResponseItem.contentID.getter()
{
  result = [v0 metadataObject];
  if (result)
  {
    v2 = result;
    v3 = [result flattenedGenericObject];

    if (v3)
    {
      v4 = [v3 anyObject];

      if (v4)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v5 = MPModelObject.contentId.getter();

          return v5;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t MPModelObject.adamID.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    return 0;
  }

  [v2 adamID];
  swift_unknownObjectRelease();
  return sub_59C44();
}

id MPModelObject.uuid.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 library];

  if (v2)
  {
    v3 = [v2 databaseID];
    swift_unknownObjectRelease();
    v2 = sub_5A194();
  }

  return v2;
}

uint64_t MPModelObject.contentId.getter()
{
  v1 = v0;
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 identifiers];
  v8 = [v7 universalStore];

  if (v8)
  {
    [v8 adamID];
    swift_unknownObjectRelease();
    return sub_59C44();
  }

  else
  {
    v10 = [v1 identifiers];
    v11 = [v10 library];

    if (v11)
    {
      v12 = [v11 databaseID];
      swift_unknownObjectRelease();
      v13 = sub_5A194();

      return v13;
    }

    else
    {
      sub_59CF4();
      v14 = v1;
      v15 = sub_59D04();
      v16 = sub_5A464();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_0, v15, v16, "Encountered a model object without an identifier: %@", v17, 0xCu);
        sub_7158(v18);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }
}

_BYTE **sub_70D4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_70E4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_7158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E260, &qword_5BE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_71F0()
{
  sub_5A334();

  swift_getWitnessTable();
  sub_5A754();
  sub_63F4();
  v0 = sub_5A7A4();

  return v0;
}

uint64_t Array<A>.chapter(at:)()
{
  sub_5A334();

  swift_getWitnessTable();
  sub_5A754();
  swift_getWitnessTable();
  sub_5A424();

  return v1;
}

double MPModelPodcastChapter.endTime.getter()
{
  [v0 startTime];
  v2 = v1;
  [v0 duration];
  return v2 + v3;
}

id MPModelPodcastChapter.visibleInChapterPicker.getter()
{
  if (sub_595C4())
  {
    return [v0 isPlayable];
  }

  else
  {
    return &dword_0 + 1;
  }
}

BOOL sub_7400(id *a1)
{
  v2 = *(v1 + 24);
  [*a1 startTime];
  return v3 > v2;
}

BOOL sub_7448(id *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  [*a1 startTime];
  v5 = v4;
  [v3 duration];
  return v5 + v6 <= v2;
}

BOOL sub_74AC(id *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  [*a1 startTime];
  if (v4 > v2)
  {
    return 0;
  }

  [v3 startTime];
  v7 = v6;
  [v3 duration];
  return v7 + v8 > v2;
}

id MPModelPodcastEpisode.chapter(for:)(double a1)
{
  result = [v1 chapters];
  if (result)
  {
    v4 = result;
    sub_63F4();
    v5 = sub_5A294();

    sub_68F4(v5, a1);
    v7 = v6;

    return v7;
  }

  return result;
}

id MPModelPodcastEpisode.nextChapter(for:)(double a1)
{
  result = [v1 chapters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_63F4();
  v5 = sub_5A294();

  v6 = sub_6440(v5, a1);

  if (v6 >> 62)
  {
    result = sub_5A814();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_5A724();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t MPModelPodcastEpisode.previousChapter(for:)(double a1)
{
  result = [v1 chapters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_63F4();
  v5 = sub_5A294();

  v6 = sub_65E8(v5, a1);

  if (!(v6 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v7 = sub_5A814();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v9 = sub_5A724();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = *(v6 + 8 * result + 32);
LABEL_9:
    v10 = v9;

    return v10;
  }

  __break(1u);
  return result;
}

id WidgetLastPlayedInfo.contentID.getter()
{
  v1 = *v0;
  sub_77FC(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

id sub_77FC(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_7810(result, a2, a3);
  }

  return result;
}

id sub_7810(id result, uint64_t a2, char a3)
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

uint64_t WidgetLastPlayedInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetLastPlayedInfo() + 20);
  v4 = sub_59524();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WidgetLastPlayedInfo()
{
  result = qword_7D188;
  if (!qword_7D188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetLastPlayedInfo.init(contentID:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for WidgetLastPlayedInfo() + 20);
  v8 = sub_59524();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t static WidgetLastPlayedInfo.loadFromDefaults()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_59D14();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_59954();
  v5 = sub_5A174();

  v6 = [v4 dataForKey:v5];

  if (v6)
  {
    v7 = sub_594C4();
    v9 = v8;

    v10 = sub_59414();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_59404();
    PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
    sub_9688(&qword_7D0E0, type metadata accessor for WidgetLastPlayedInfo);
    sub_593F4();
    sub_7D34(v7, v9);

    v14 = *(*(PlayedInfo - 8) + 56);

    return v14(a1, 0, 1, PlayedInfo);
  }

  else
  {
    v16 = type metadata accessor for WidgetLastPlayedInfo();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_7D34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Void __swiftcall WidgetLastPlayedInfo.saveToDefaults()()
{
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
  v1 = *(*(PlayedInfo - 8) + 64);
  v2 = __chkstk_darwin(PlayedInfo);
  __chkstk_darwin(v2);
  v3 = sub_59D14();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_59444();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_59434();
  sub_9688(&qword_7D0E8, type metadata accessor for WidgetLastPlayedInfo);
  v8 = sub_59424();
  v10 = v9;

  v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_594B4().super.isa;
  sub_59954();
  v13 = sub_5A174();

  [v11 setValue:isa forKey:v13];

  sub_7D34(v8, v10);
}

Swift::Int sub_81B8()
{
  v1 = *v0;
  sub_5A974();
  sub_5A984(v1);
  return sub_5A9A4();
}

Swift::Int sub_822C()
{
  v1 = *v0;
  sub_5A974();
  sub_5A984(v1);
  return sub_5A9A4();
}

uint64_t sub_8270()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x49746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_82A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v6 || (sub_5A8E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_5A8E4();

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

uint64_t sub_83A4(uint64_t a1)
{
  v2 = sub_9540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_83E0(uint64_t a1)
{
  v2 = sub_9540();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetLastPlayedInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D0F0, &qword_5BE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_9540();
  sub_5A9C4();
  v11 = *(v3 + 16);
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_9594();
  sub_5A8A4();
  if (!v2)
  {
    v12 = *(type metadata accessor for WidgetLastPlayedInfo() + 20);
    LOBYTE(v15) = 1;
    sub_59524();
    sub_9688(&qword_7D108, &type metadata accessor for Date);
    sub_5A8B4();
  }

  return (*(v6 + 8))(v9, v5);
}

void WidgetLastPlayedInfo.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_59524();
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v26);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D110, &qword_5BE60);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v27);
  v9 = v21 - v8;
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
  v11 = *(*(PlayedInfo - 8) + 64);
  __chkstk_darwin(PlayedInfo);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_9540();
  sub_5A9B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v22 = PlayedInfo;
    v15 = v13;
    v17 = v25;
    v16 = v26;
    v32 = 0;
    sub_9634();
    v18 = v27;
    sub_5A884();
    v19 = v29;
    v20 = v30;
    v21[1] = v29;
    v21[2] = v28;
    *v15 = v28;
    *(v15 + 8) = v19;
    v31 = v20;
    *(v15 + 16) = v20;
    LOBYTE(v28) = 1;
    sub_9688(&qword_7D120, &type metadata accessor for Date);
    sub_5A894();
    (*(v17 + 8))(v9, v18);
    (*(v23 + 32))(v15 + *(v22 + 20), v6, v16);
    sub_9370(v15, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_93D4(v15);
  }
}

id sub_895C()
{
  result = [objc_opt_self() isThinJetApp];
  v1 = 480.0;
  if (result)
  {
    v1 = 180.0;
  }

  qword_7D0D8 = *&v1;
  return result;
}

double static WidgetNowPlayingInfo.timeToKeepPlayerArtworkAfterPausing.getter()
{
  if (qword_7CC50 != -1)
  {
    swift_once();
  }

  return *&qword_7D0D8;
}

uint64_t WidgetNowPlayingInfo.init(isPlaying:currentEpisodeID:durationSnapshot:widgetLastPlayedInfo:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v97 = a6;
  v98 = a4;
  v94 = a2;
  v95 = a3;
  LODWORD(v7) = a1;
  v91 = a7;
  v8 = *a5;
  v9 = *(a5 + 24);
  v10 = *(a5 + 32);
  v11 = *(a5 + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D128, &qword_5BE68);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v84 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = v80 - v16;
  v17 = sub_59524();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2F0, &qword_5BE70);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v99 = v80 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = v80 - v30;
  v32 = __chkstk_darwin(v29);
  v89 = v80 - v33;
  v34 = __chkstk_darwin(v32);
  v83 = v80 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = v80 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = v80 - v40;
  __chkstk_darwin(v39);
  v43 = v80 - v42;
  if (v11 <= 0.0)
  {
    sub_594E4();
    v50 = v10 + (v49 - v8) * v11;
    if (v50 >= v9)
    {
      v50 = v9;
    }

    v48 = v9 - fmax(v50, 0.0);
    v45 = v9;
  }

  else
  {
    v44 = v11;
    v45 = v9 / v11;
    sub_594E4();
    v47 = v10 + (v46 - v8) * v44;
    if (v47 >= v9)
    {
      v47 = v9;
    }

    v48 = (v9 - fmax(v47, 0.0)) / v44;
  }

  v90 = v31;
  v96 = v7;
  v92 = v18;
  v88 = v26;
  if ((v7 & 1) == 0 || (v48 > 0.0 ? (v51 = v48 > v45) : (v51 = 1), v51))
  {
    v53 = v18[7];
    v54 = (v18 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v53(v43, 1, 1, v17);
    v53(v41, 1, 1, v17);
  }

  else
  {
    sub_59514();
    sub_594F4();
    v7 = v18;
    v52 = v18[1];
    v52(v21, v17);
    v53 = v7[7];
    v54 = (v7 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v53(v43, 0, 1, v17);
    sub_59514();
    sub_594F4();
    v52(v21, v17);
    v53(v41, 0, 1, v17);
    LOBYTE(v7) = v96;
  }

  v86 = v54;
  v87 = v53;
  v93 = v38;
  v53(v38, 1, 1, v17);
  if ((v7 & 1) == 0 && v98 != 0xFF)
  {
    v55 = v85;
    sub_9768(v97, v85, &qword_7D128, &qword_5BE68);
    PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
    v57 = *(PlayedInfo - 8);
    v58 = *(v57 + 48);
    v59 = v57 + 48;
    if (v58(v55, 1, PlayedInfo) == 1)
    {
      sub_9708(v55, &qword_7D128, &qword_5BE68);
    }

    else
    {
      v80[1] = v59;
      v81 = v58;
      v60 = *v55;
      v61 = *(v55 + 8);
      v62 = *(v55 + 16);
      sub_77FC(*v55, v61, *(v55 + 16));
      sub_93D4(v55);
      if (v62 != 255)
      {
        v85 = v41;
        v63 = v94;
        v64 = v43;
        v65 = v95;
        v66 = v98;
        sub_7810(v94, v95, v98);
        v82 = sub_59C64();
        v67 = v63;
        v68 = v65;
        v43 = v64;
        v41 = v85;
        sub_96D0(v67, v68, v66);
        sub_96D0(v60, v61, v62);
        if ((v82 & 1) != 0 && (sub_59784() & 1) == 0)
        {
          v69 = v84;
          sub_9768(v97, v84, &qword_7D128, &qword_5BE68);
          if (v81(v69, 1, PlayedInfo) == 1)
          {
            v70 = v93;
            sub_9708(v93, &qword_7D2F0, &qword_5BE70);
            sub_9708(v69, &qword_7D128, &qword_5BE68);
            v71 = 1;
            v72 = v83;
          }

          else
          {
            v73 = v92;
            (v92[2])(v21, v69 + *(PlayedInfo + 20), v17);
            sub_93D4(v69);
            if (qword_7CC50 != -1)
            {
              swift_once();
            }

            v72 = v83;
            sub_594F4();
            (v73[1])(v21, v17);
            v70 = v93;
            sub_9708(v93, &qword_7D2F0, &qword_5BE70);
            v71 = 0;
          }

          v87(v72, v71, 1, v17);
          sub_97D0(v72, v70);
        }
      }
    }
  }

  sub_9768(v43, v89, &qword_7D2F0, &qword_5BE70);
  sub_9768(v41, v90, &qword_7D2F0, &qword_5BE70);
  v74 = v93;
  v75 = v88;
  sub_9768(v93, v88, &qword_7D2F0, &qword_5BE70);
  v76 = v92;
  v77 = v92[6];
  if (v77(v75, 1, v17) == 1)
  {
    sub_9768(v41, v99, &qword_7D2F0, &qword_5BE70);
    if (v77(v75, 1, v17) != 1)
    {
      sub_9708(v75, &qword_7D2F0, &qword_5BE70);
    }
  }

  else
  {
    v78 = v99;
    (v76[4])(v99, v75, v17);
    v87(v78, 0, 1, v17);
  }

  sub_59B44();
  sub_9708(v97, &qword_7D128, &qword_5BE68);
  sub_9708(v74, &qword_7D2F0, &qword_5BE70);
  sub_9708(v41, &qword_7D2F0, &qword_5BE70);
  return sub_9708(v43, &qword_7D2F0, &qword_5BE70);
}

uint64_t sub_92B4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_9314(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_9430(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_9370(uint64_t a1, uint64_t a2)
{
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
  (*(*(PlayedInfo - 8) + 16))(a2, a1, PlayedInfo);
  return a2;
}

uint64_t sub_93D4(uint64_t a1)
{
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
  (*(*(PlayedInfo - 8) + 8))(a1, PlayedInfo);
  return a1;
}

uint64_t sub_9430(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_9CF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_9E04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_9540()
{
  result = qword_7D0F8;
  if (!qword_7D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D0F8);
  }

  return result;
}

unint64_t sub_9594()
{
  result = qword_7D100;
  if (!qword_7D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D100);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_9634()
{
  result = qword_7D118;
  if (!qword_7D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D118);
  }

  return result;
}

uint64_t sub_9688(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_96D0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_96E4(a1, a2, a3);
  }
}

void sub_96E4(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_9708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_9768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_97D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2F0, &qword_5BE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 16);
    if (v4 <= 2)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = sub_59524();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_990C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = sub_59524();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_99AC()
{
  sub_9A30();
  if (v0 <= 0x3F)
  {
    sub_59524();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_9A30()
{
  if (!qword_7D198)
  {
    v0 = sub_5A664();
    if (!v1)
    {
      atomic_store(v0, &qword_7D198);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetLastPlayedInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetLastPlayedInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_9BF4()
{
  result = qword_7D1C8;
  if (!qword_7D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1C8);
  }

  return result;
}

unint64_t sub_9C4C()
{
  result = qword_7D1D0;
  if (!qword_7D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1D0);
  }

  return result;
}

unint64_t sub_9CA4()
{
  result = qword_7D1D8;
  if (!qword_7D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1D8);
  }

  return result;
}

unint64_t sub_9CF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_9E60(a5, a6);
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
    result = sub_5A744();
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

uint64_t sub_9E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_9E60(uint64_t a1, unint64_t a2)
{
  v4 = sub_9EAC(a1, a2);
  sub_9FDC(&off_71E00);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_9EAC(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1428C(v5, 0);
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

  result = sub_5A744();
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
        v10 = sub_5A204();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1428C(v10, 0);
        result = sub_5A6F4();
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

uint64_t sub_9FDC(uint64_t result)
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

  result = sub_A0C8(result, v12, 1, v3);
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

char *sub_A0C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D1E0, &qword_5C028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t getEnumTagSinglePayload for DummyLegacyPlayerController(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DummyLegacyPlayerController(_WORD *result, int a2, int a3)
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

uint64_t PendingPlaybackStore.publisher.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t PendingPlaybackStore.publisher.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PendingPlaybackStore.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F4C0, &unk_5C0F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_59DA4();
  return v0;
}

uint64_t PendingPlaybackStore.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F4C0, &unk_5C0F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_59DA4();
  return v0;
}

uint64_t PendingPlaybackStore.pendingEpisode.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  sub_59D94();
}

uint64_t PendingPlaybackStore.update(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  v4 = *(a1 + 48);
  v5 = sub_595D4();
  *(&v13 + 1) = v5;
  *&v14 = sub_A5B8();
  v6 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(v5 - 8) + 104))(v6, enum case for Podcasts.responsivePlayback(_:), v5);
  LOBYTE(v5) = sub_595B4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v11);
  if (v5)
  {
    swift_beginAccess();
    v8 = *(v1 + 16);
    v11 = v2;
    v12 = v3;
    v13 = v10;
    v14 = v9;
    v15 = v4;

    sub_59D84();

    return sub_A674(v11, v12, v13, *(&v13 + 1));
  }

  return result;
}

unint64_t sub_A5B8()
{
  result = qword_7D1E8;
  if (!qword_7D1E8)
  {
    sub_595D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1E8);
  }

  return result;
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

uint64_t sub_A674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

Swift::Void __swiftcall PendingPlaybackStore.reset()()
{
  v1 = sub_595D4();
  v5 = v1;
  v6 = sub_A5B8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.responsivePlayback(_:), v1);
  LOBYTE(v1) = sub_595B4();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  if (v1)
  {
    swift_beginAccess();
    v3 = *(v0 + 16);
    memset(v4, 0, sizeof(v4));
    v5 = 1;
    v7 = 0;
    v8 = 0;
    v6 = 0;

    sub_59D84();
  }
}

uint64_t InMemoryPlaybackPositionTracker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InMemoryPlaybackPositionTracker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double EpisodePlayState.duration.getter()
{
  v1 = sub_59984();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_5B84(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload || EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    return v4[1];
  }

  sub_A86C(v4);
  return 0.0;
}

uint64_t sub_A86C(uint64_t a1)
{
  v2 = sub_59984();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double EpisodePlayState.position.getter()
{
  v1 = sub_59984();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B84(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload || EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    return *v4;
  }

  sub_A86C(v4);
  return 0.0;
}

uint64_t PendingPlaybackMetadata.adamId.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PendingPlaybackMetadata.uuid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PendingPlaybackMetadata.init(adamId:uuid:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v43 = a1;
  v44 = a3;
  v8 = sub_59524();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_59984();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v40 - v25;
  __chkstk_darwin(v24);
  v28 = &v40 - v27;
  (*(v12 + 56))(&v40 - v27, 1, 1, v11);
  if ((a2 & 1) == 0 || a4)
  {
    v45 = a2 & 1;
    sub_ADEC(v28, v26);
    v30 = *(v12 + 48);
    if (v30(v26, 1, v11) == 1)
    {
      sub_AD84(v26);
      v31 = 0;
    }

    else
    {
      sub_5B84(v26, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 2 || EnumCaseMultiPayload == 3)
      {
        v31 = *(v18 + 1);
      }

      else
      {
        sub_A86C(v18);
        v31 = 0;
      }

      sub_A86C(v26);
    }

    sub_ADEC(v28, v23);
    if (v30(v23, 1, v11) == 1)
    {
      sub_AD84(v23);
      v33 = 0;
      v34 = a4;
    }

    else
    {
      sub_5B84(v23, v16);
      v35 = swift_getEnumCaseMultiPayload();
      v34 = a4;
      if (v35 < 2 || v35 == 3)
      {
        v33 = *v16;
      }

      else
      {
        sub_A86C(v16);
        v33 = 0;
      }

      sub_A86C(v23);
    }

    v36 = v40;
    sub_59514();
    sub_594D4();
    v38 = v37;
    (*(v41 + 8))(v36, v42);
    result = sub_AD84(v28);
    v39 = v45;
    *a5 = v43;
    a5[1] = v39;
    a5[2] = v44;
    a5[3] = v34;
    a5[4] = v38;
    a5[5] = v31;
    a5[6] = v33;
  }

  else
  {
    result = sub_AD84(v28);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = 1;
    a5[5] = 0;
    a5[6] = 0;
    a5[4] = 0;
  }

  return result;
}

uint64_t sub_AD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ADEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall PendingPlaybackMetadata.isWithinTimeInterval(seconds:)(Swift::Double seconds)
{
  v3 = sub_59524();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  sub_59514();
  sub_594D4();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  return v10 - v8 < seconds;
}

Swift::Double __swiftcall PendingPlaybackMetadata.timeRemaining(timeToLive:)(Swift::Double timeToLive)
{
  v3 = sub_59524();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32) + timeToLive;
  sub_59514();
  sub_594D4();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  result = v8 - v10;
  if (v8 - v10 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

void *PendingPlaybackMetadata.identifierSet.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v9 = &_swiftEmptySetSingleton;
  if ((v2 & 1) == 0)
  {
    sub_B3F0(&v6, v1, 0, 0);
    sub_5350(v6, v7, v8);
  }

  if (v4)
  {

    sub_B3F0(&v6, v3, v4, 1);
    sub_5350(v6, v7, v8);
  }

  return v9;
}

uint64_t PendingPlaybackMetadata.withPlayState(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_59984();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  v8 = __chkstk_darwin(v6);
  v36 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v35 - v18;
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  v22 = *v2;
  v23 = *(v2 + 8);
  v24 = v3[3];
  v38 = v3[2];
  v39 = v22;
  v25 = v3[4];
  sub_ADEC(a1, &v35 - v20);
  v40 = v23;
  if (v23 != 1 || v24)
  {
    sub_ADEC(v21, v19);
    v27 = *(v37 + 48);
    if (v27(v19, 1, v6) == 1)
    {

      sub_AD84(v19);
      v28 = 0;
    }

    else
    {
      sub_5B84(v19, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3 || EnumCaseMultiPayload == 2)
      {

        sub_A86C(v11);
        v28 = 0;
      }

      else
      {
        v28 = *(v11 + 1);
      }

      sub_A86C(v19);
    }

    sub_ADEC(v21, v16);
    if (v27(v16, 1, v6) == 1)
    {
      sub_AD84(v16);
      v31 = 0;
    }

    else
    {
      v32 = v36;
      sub_5B84(v16, v36);
      v33 = swift_getEnumCaseMultiPayload();
      if (v33 < 2 || v33 == 3)
      {
        v31 = *v32;
      }

      else
      {
        sub_A86C(v32);
        v31 = 0;
      }

      sub_A86C(v16);
    }

    result = sub_AD84(v21);
    v34 = v40;
    *a2 = v39;
    a2[1] = v34;
    a2[2] = v38;
    a2[3] = v24;
    a2[4] = v25;
    a2[5] = v28;
    a2[6] = v31;
  }

  else
  {
    result = sub_AD84(v21);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    a2[5] = 0;
    a2[6] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_B3F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_5A974();
  v30 = a2;
  v10 = a4 & 1;
  sub_59BB4();
  v11 = sub_5A9A4();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = a4;
    v14 = ~v12;
    while (1)
    {
      v15 = *(v8 + 48) + 24 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_5340(*v15, v17, v18);
      v19 = sub_59BA4();
      sub_5350(v16, v17, v18);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_5350(v30, a3, v27 & 1);
    v23 = *(v8 + 48) + 24 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    *a1 = *v23;
    *(a1 + 8) = v25;
    *(a1 + 16) = v26;
    sub_5340(v24, v25, v26);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_5340(v30, a3, v10);
    sub_BB74(v30, a3, v10, v13, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    *a1 = v30;
    *(a1 + 8) = a3;
    *(a1 + 16) = v10;
    return 1;
  }
}

uint64_t sub_B5B4(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_5A974();
  sub_5A984(a2);
  v7 = sub_5A9A4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_BD40(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_B6AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D298, qword_5C1E0);
  result = sub_5A6D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_5A974();
      sub_59BB4();
      result = sub_5A9A4();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_B924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D290, &qword_5C1D8);
  result = sub_5A6D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_5A974();
      sub_5A984(v18);
      result = sub_5A9A4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_BB74(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_B6AC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_BE8C();
      goto LABEL_12;
    }

    sub_C134(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_5A974();
  sub_59BB4();
  result = sub_5A9A4();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_5340(*v15, v17, v18);
      v19 = sub_59BA4();
      result = sub_5350(v16, v17, v18);
      if (v19)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = v8;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3 & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_5A904();
  __break(1u);
  return result;
}

Swift::Int sub_BD40(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_B924(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_BFF4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_C38C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_5A974();
  sub_5A984(v4);
  result = sub_5A9A4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_5A904();
  __break(1u);
  return result;
}

void *sub_BE8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D298, qword_5C1E0);
  v2 = *v0;
  v3 = sub_5A6C4();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_5340(v19, v20, v21);
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

void *sub_BFF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D290, &qword_5C1D8);
  v2 = *v0;
  v3 = sub_5A6C4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_C134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D298, qword_5C1E0);
  result = sub_5A6D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_5A974();
      sub_5340(v20, v21, v22);
      sub_59BB4();
      result = sub_5A9A4();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_C38C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D290, &qword_5C1D8);
  result = sub_5A6D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_5A974();
      sub_5A984(v17);
      result = sub_5A9A4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

BOOL _s16PodcastsPlayback07PendingB8MetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    if (v5 == *(a2 + 16) && v6 == v10)
    {
      if (v8 != v12 || v7 != v11)
      {
        return 0;
      }

      return v9 == v13;
    }

    v18 = sub_5A8E4();
    result = 0;
    if ((v18 & 1) != 0 && v8 == v12 && v7 == v11)
    {
      return v9 == v13;
    }
  }

  else
  {
    result = 0;
    if (!v10 && v8 == v12 && v7 == v11)
    {
      return v9 == v13;
    }
  }

  return result;
}

uint64_t sub_C6E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_C740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t PlaybackIntent.generateMPCIntent(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_59894();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = sub_59604();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = sub_596C4();
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();
  v13 = sub_59944();
  v2[24] = v13;
  v14 = *(v13 - 8);
  v2[25] = v14;
  v15 = *(v14 + 64) + 15;
  v2[26] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A8, &qword_5C240) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v17 = sub_596A4();
  v2[28] = v17;
  v18 = *(v17 - 8);
  v2[29] = v18;
  v19 = *(v18 + 64) + 15;
  v2[30] = swift_task_alloc();
  v20 = sub_59674();
  v2[31] = v20;
  v21 = *(v20 - 8);
  v2[32] = v21;
  v22 = *(v21 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v23 = *(*(sub_59624() - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v24 = sub_59D14();
  v2[36] = v24;
  v25 = *(v24 - 8);
  v2[37] = v25;
  v26 = *(v25 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v27 = sub_59904();
  v2[43] = v27;
  v28 = *(v27 - 8);
  v2[44] = v28;
  v29 = *(v28 + 64) + 15;
  v2[45] = swift_task_alloc();
  v30 = swift_task_alloc();
  v2[46] = v30;
  v31 = async function pointer to PlaybackIntent.resolvedIntent()[1];
  v32 = swift_task_alloc();
  v2[47] = v32;
  *v32 = v2;
  v32[1] = sub_CC90;

  return PlaybackIntent.resolvedIntent()(v30);
}

uint64_t sub_CC90()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_F180;
  }

  else
  {
    v3 = sub_CDD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_CDD0()
{
  v1 = [*(v0 + 64) playerPath];
  v2 = [v1 isLocalDevice];

  if (v2)
  {
    v3 = *(v0 + 336);
    sub_59CC4();
    v4 = sub_59D04();
    v5 = sub_5A434();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Creating a local playback intent", v6, 2u);
    }

    v7 = *(v0 + 384);
    v8 = *(v0 + 368);
    v9 = *(v0 + 336);
    v10 = *(v0 + 288);
    v11 = *(v0 + 296);

    (*(v11 + 8))(v9, v10);
    v12 = sub_F71C();
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
    if (!v7)
    {
      v74 = v12;
      v14 = *(v0 + 360);
      v13 = *(v0 + 368);
      v16 = *(v0 + 328);
      v15 = *(v0 + 336);
      v18 = *(v0 + 312);
      v17 = *(v0 + 320);
      v19 = *(v0 + 304);
      v20 = *(v0 + 272);
      v21 = *(v0 + 280);
      v22 = *(v0 + 264);
      v75 = *(v0 + 240);
      v77 = *(v0 + 216);
      v79 = *(v0 + 208);
      v81 = *(v0 + 184);
      v83 = *(v0 + 160);
      v85 = *(v0 + 152);
      v87 = *(v0 + 128);
      v89 = *(v0 + 120);
      v91 = *(v0 + 112);
      v93 = *(v0 + 104);
      v95 = *(v0 + 96);

      v23 = *(v0 + 8);

      return v23(v74);
    }

    goto LABEL_12;
  }

  v25 = *(v0 + 368);
  if (sub_597B4())
  {
    v26 = *(v0 + 304);
    sub_59CC4();
    v27 = sub_59D04();
    v28 = sub_5A474();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Intent requires local playback with buffered AirPlay", v29, 2u);
    }

    v30 = *(v0 + 368);
    v31 = *(v0 + 344);
    v32 = *(v0 + 352);
    v34 = *(v0 + 296);
    v33 = *(v0 + 304);
    v35 = *(v0 + 288);

    (*(v34 + 8))(v33, v35);
    v36 = sub_596E4();
    sub_10F78(&qword_7D2B8, &type metadata accessor for PodcastsPlaybackError.ValidationError);
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2C0, &qword_5C248) + 48);
    (*(v32 + 16))(v38, v30, v31);
    sub_597F4();
    v40 = enum case for PlaybackIntent.PlayerConstraint.currentItemUntransferrable(_:);
    v41 = sub_59804();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    (*(*(v36 - 8) + 104))(v38, enum case for PodcastsPlaybackError.ValidationError.localPlaybackRequired(_:), v36);
    swift_willThrow();
    (*(v32 + 8))(v30, v31);
LABEL_12:
    v43 = *(v0 + 360);
    v42 = *(v0 + 368);
    v45 = *(v0 + 328);
    v44 = *(v0 + 336);
    v47 = *(v0 + 312);
    v46 = *(v0 + 320);
    v48 = *(v0 + 304);
    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 264);
    v76 = *(v0 + 240);
    v78 = *(v0 + 216);
    v80 = *(v0 + 208);
    v82 = *(v0 + 184);
    v84 = *(v0 + 160);
    v86 = *(v0 + 152);
    v88 = *(v0 + 128);
    v90 = *(v0 + 120);
    v92 = *(v0 + 112);
    v94 = *(v0 + 104);
    v96 = *(v0 + 96);

    v52 = *(v0 + 8);

    return v52();
  }

  v53 = *(v0 + 328);
  sub_59CC4();
  v54 = sub_59D04();
  v55 = sub_5A474();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "Sending a remote playback intent", v56, 2u);
  }

  v57 = *(v0 + 360);
  v97 = *(v0 + 368);
  v58 = *(v0 + 344);
  v59 = *(v0 + 352);
  v60 = *(v0 + 328);
  v62 = *(v0 + 288);
  v61 = *(v0 + 296);
  v64 = *(v0 + 272);
  v63 = *(v0 + 280);

  v65 = *(v61 + 8);
  *(v0 + 392) = v65;
  v65(v60, v62);
  sub_59614();
  v66 = sub_596D4();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  *(v0 + 400) = sub_59694();
  v69 = *(v59 + 16);
  *(v0 + 408) = v69;
  *(v0 + 416) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v69(v57, v97, v58);
  sub_59654();
  v70 = async function pointer to PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext()[1];
  v71 = swift_task_alloc();
  *(v0 + 424) = v71;
  *v71 = v0;
  v71[1] = sub_D54C;
  v72 = *(v0 + 264);
  v73 = *(v0 + 272);

  return PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext()(v72);
}

uint64_t sub_D54C()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_F31C;
  }

  else
  {
    v3 = sub_D68C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_D68C()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  sub_59664();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[50];
    v6 = v0[46];
    v7 = v0[43];
    v8 = v0[44];
    v9 = v0[34];
    v145 = v0[33];
    v11 = v0[31];
    v10 = v0[32];
    sub_9708(v0[27], &qword_7D2A8, &qword_5C240);
    v12 = sub_59684();
    sub_10F78(&qword_7D2B0, &type metadata accessor for PodcastsMediaLibrary.Error);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for PodcastsMediaLibrary.Error.unableToCreateRequestFromQueueContext(_:), v12);
    swift_willThrow();

    v14 = *(v10 + 8);
    v14(v9, v11);
    (*(v8 + 8))(v6, v7);
    v14(v145, v11);
LABEL_14:
    v53 = v0[45];
    v52 = v0[46];
    v55 = v0[41];
    v54 = v0[42];
    v57 = v0[39];
    v56 = v0[40];
    v58 = v0[38];
    v60 = v0[34];
    v59 = v0[35];
    v61 = v0[33];
    v117 = v0[30];
    v119 = v0[27];
    v121 = v0[26];
    v123 = v0[23];
    v125 = v0[20];
    v128 = v0[19];
    v131 = v0[16];
    v134 = v0[15];
    v138 = v0[14];
    v142 = v0[13];
    v146 = v0[12];

    v62 = v0[1];

    return v62();
  }

  v15 = v0[46];
  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[24];
  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  sub_59884();
  v19 = (*(v17 + 88))(v16, v18);
  if (v19 != enum case for MediaIdentifier.podcast(_:))
  {
    if (v19 == enum case for MediaIdentifier.episodes(_:))
    {
LABEL_5:
      (*(v0[25] + 8))(v0[26], v0[24]);
      goto LABEL_6;
    }

    if (v19 == enum case for MediaIdentifier.localEpisodes(_:) || v19 == enum case for MediaIdentifier.localPodcast(_:) || v19 == enum case for MediaIdentifier.station(_:) || v19 == enum case for MediaIdentifier.snapshot(_:) || v19 == enum case for MediaIdentifier.mediaQuery(_:))
    {
      goto LABEL_26;
    }

    if (v19 == enum case for MediaIdentifier.universalEpisodeIdentifiers(_:))
    {
      goto LABEL_5;
    }

    if (v19 != enum case for MediaIdentifier.library(_:))
    {
LABEL_26:
      (*(v0[25] + 8))(v0[26], v0[24]);
    }

    v75 = v0[40];
    sub_59CC4();
    v76 = sub_59D04();
    v77 = sub_5A474();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "Fetching from PML for remote playback", v78, 2u);
    }

    v79 = v0[49];
    v80 = v0[40];
    v81 = v0[36];
    v82 = v0[37];

    v79(v80, v81);
    v83 = async function pointer to PodcastsMediaLibrary.mediaCollection(for:)[1];
    v84 = swift_task_alloc();
    v0[55] = v84;
    *v84 = v0;
    v84[1] = sub_E3A0;
    v85 = v0[50];
    v39 = v0[30];
    v38 = v0[23];

    return PodcastsMediaLibrary.mediaCollection(for:)(v38, v39);
  }

LABEL_6:
  v20 = v0[39];
  sub_59CC4();
  v21 = sub_59D04();
  v22 = sub_5A434();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "We already have a remote compatible id, no PML needed", v23, 2u);
  }

  v24 = v0[49];
  v25 = v0[46];
  v26 = v0[39];
  v27 = v0[36];
  v28 = v0[37];
  v29 = v0[33];

  v24(v26, v27);
  sub_59834();
  v30 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v30 setTracklistSource:500];
  v31 = objc_opt_self();
  isa = sub_5A284().super.isa;

  v0[7] = 0;
  v33 = [v31 archivedDataWithRootObject:isa requiringSecureCoding:0 error:v0 + 7];

  v34 = v0[7];
  if (!v33)
  {
    v43 = v0[50];
    v44 = v0[44];
    v133 = v0[43];
    v137 = v0[46];
    v141 = v0[33];
    v45 = v30;
    v47 = v0[31];
    v46 = v0[32];
    v48 = v0[29];
    v127 = v0[30];
    v130 = v0[34];
    v49 = v0[28];
    v50 = v34;
    sub_594A4();

    swift_willThrow();

    (*(v48 + 8))(v127, v49);
    v51 = *(v46 + 8);
    v51(v130, v47);
    (*(v44 + 8))(v137, v133);
    v51(v141, v47);
    goto LABEL_14;
  }

  v35 = v0[9];
  v36 = v34;
  [v30 setTracklistToken:v33];

  v37 = sub_598F4();
  v0[2] = v37;
  v0[3] = sub_103D4;
  v0[4] = 0;
  v0[5] = sub_10ABC;
  v0[6] = 0;
  v38 = sub_10B20();
  if (v40)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    return PodcastsMediaLibrary.mediaCollection(for:)(v38, v39);
  }

  if (*(v37 + 36) != v39)
  {
    __break(1u);
  }

  if (v38 != 1 << *(v37 + 32))
  {
    v65 = v0[12];
    v64 = v0[13];
    v67 = v0[10];
    v66 = v0[11];
    sub_10E48(v38, v39, v37, v64);
    (*(v66 + 16))(v65, v64, v67);
    v68 = (*(v66 + 88))(v65, v67);
    v69 = v0[15];
    v71 = v0[11];
    v70 = v0[12];
    v72 = v0[10];
    if (v68 == enum case for PlaybackIntent.Option.playbackSource(_:))
    {
      (*(v71 + 96))(v0[12], v72);
      v42 = sub_598C4();
      v73 = *(v42 - 8);
      (*(v73 + 32))(v69, v70, v42);
      (*(v73 + 56))(v69, 0, 1, v42);
      v74 = *(v71 + 8);
    }

    else
    {
      v74 = *(v71 + 8);
      v74(v0[12], v72);
      v42 = sub_598C4();
      (*(*(v42 - 8) + 56))(v69, 1, 1, v42);
    }

    v87 = v0[14];
    v86 = v0[15];
    v74(v0[13], v0[10]);
    sub_10F08(v86, v87);
    sub_598C4();
    v88 = *(v42 - 8);
    v38 = (*(v88 + 48))(v87, 1, v42);
    if (v38 != 1)
    {
      v90 = v0[15];
      v89 = v0[16];
      (*(v88 + 32))(v89, v0[14], v42);
      sub_9708(v90, &qword_7D2A0, &qword_5C238);
      (*(v88 + 56))(v89, 0, 1, v42);
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  v41 = v0[16];
  v42 = sub_598C4();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
LABEL_35:
  v91 = v0[16];

  sub_598C4();
  v92 = *(v42 - 8);
  v93 = (*(v92 + 48))(v91, 1, v42);
  v94 = v0[16];
  v147 = v30;
  if (v93 == 1)
  {
    sub_9708(v94, &qword_7D2A0, &qword_5C238);
    v95 = 0;
  }

  else
  {
    sub_598B4();
    (*(v92 + 8))(v94, v42);
    v95 = sub_5A174();
  }

  v96 = v0[50];
  v97 = v0[44];
  v135 = v0[43];
  v139 = v0[46];
  v98 = v0[34];
  v143 = v0[33];
  v100 = v0[31];
  v99 = v0[32];
  v101 = v0[29];
  v102 = v0[30];
  v103 = v0[28];
  [v147 setPlayActivityFeatureName:v95];

  (*(v101 + 8))(v102, v103);
  v104 = *(v99 + 8);
  v104(v98, v100);
  (*(v97 + 8))(v139, v135);
  v104(v143, v100);
  v106 = v0[45];
  v105 = v0[46];
  v108 = v0[41];
  v107 = v0[42];
  v110 = v0[39];
  v109 = v0[40];
  v111 = v0[38];
  v113 = v0[34];
  v112 = v0[35];
  v114 = v0[33];
  v116 = v0[30];
  v118 = v0[27];
  v120 = v0[26];
  v122 = v0[23];
  v124 = v0[20];
  v126 = v0[19];
  v129 = v0[16];
  v132 = v0[15];
  v136 = v0[14];
  v140 = v0[13];
  v144 = v0[12];

  v115 = v0[1];

  return v115(v147);
}

uint64_t sub_E3A0()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_F500;
  }

  else
  {
    v3 = sub_E4E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_E4E0()
{
  v1 = v0;
  v4 = v0 + 22;
  v3 = v0[22];
  v2 = v4[1];
  v5 = v1[21];
  v6 = v1[8];
  v7 = sub_596B4();
  (*(v3 + 8))(v2, v5);
  v8 = sub_FDE4(v6);
  v9 = *(v7 + 16);
  if (!v9)
  {

    goto LABEL_17;
  }

  v10 = v8;
  v11 = 0;
  v12 = v1[18];
  v150 = (v12 + 32);
  v138 = v8;
  v133 = *(v7 + 16);
  v144 = v7;
  do
  {
    if (v11 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = *(v12 + 72);
    (*(v12 + 16))(v1[20], v7 + v13 + v14 * v11, v1[17]);
    v15 = sub_595E4(v10);
    v16 = v1[20];
    if (v15)
    {
      v17 = v1[19];
      v18 = v1;
      v19 = v1[17];
      v20 = *v150;
      (*v150)(v17, v16, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_105BC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_105BC(v21 > 1, v22 + 1, 1);
      }

      v23 = v18[19];
      v24 = v18[17];
      _swiftEmptyArrayStorage[2] = v22 + 1;
      v20(_swiftEmptyArrayStorage + v13 + v22 * v14, v23, v24);
      v1 = v18;
      v7 = v144;
      v10 = v138;
      v9 = v133;
    }

    else
    {
      (*(v12 + 8))(v1[20], v1[17]);
    }

    ++v11;
  }

  while (v9 != v11);
  v25 = *(v7 + 16);
  v26 = _swiftEmptyArrayStorage[2];

  v27 = v26 - v25;
  if (v26 >= v25)
  {
LABEL_17:
    v39 = v1[56];
    v40 = v1[33];
    v41 = swift_task_alloc();
    *(v41 + 16) = v40;
    sub_100C4(sub_105DC, v41, _swiftEmptyArrayStorage);

    v42 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v42 setTracklistSource:500];
    v43 = objc_opt_self();
    isa = sub_5A284().super.isa;

    v1[7] = 0;
    v45 = [v43 archivedDataWithRootObject:isa requiringSecureCoding:0 error:v1 + 7];

    v46 = v1[7];
    if (!v45)
    {
      v55 = v1[50];
      v56 = v1[44];
      v140 = v1[43];
      v146 = v1[46];
      v152 = v1[33];
      v58 = v1[31];
      v57 = v1[32];
      v59 = v1[29];
      v130 = v1[30];
      v135 = v1[34];
      v60 = v1[28];
      v61 = v46;
      sub_594A4();

      swift_willThrow();

      (*(v59 + 8))(v130, v60);
      v62 = *(v57 + 8);
      v62(v135, v58);
      (*(v56 + 8))(v146, v140);
      v62(v152, v58);
      goto LABEL_23;
    }

    v47 = v1[9];
    v48 = v46;
    [v42 setTracklistToken:v45];

    v49 = sub_598F4();
    v1[2] = v49;
    v1[3] = sub_103D4;
    v1[4] = 0;
    v1[5] = sub_10ABC;
    v1[6] = 0;
    result = sub_10B20();
    if (v52)
    {
      __break(1u);
      goto LABEL_40;
    }

    if (*(v49 + 36) == v51)
    {
      if (result == 1 << *(v49 + 32))
      {
        v53 = v1[16];
        v54 = sub_598C4();
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
LABEL_31:
        v90 = v1[16];

        sub_598C4();
        v91 = *(v54 - 8);
        v92 = (*(v91 + 48))(v90, 1, v54);
        v93 = v1[16];
        v158 = v42;
        if (v92 == 1)
        {
          sub_9708(v93, &qword_7D2A0, &qword_5C238);
          v94 = 0;
        }

        else
        {
          sub_598B4();
          (*(v91 + 8))(v93, v54);
          v94 = sub_5A174();
        }

        v95 = v1[50];
        v96 = v1[44];
        v142 = v1[43];
        v148 = v1[46];
        v97 = v1[34];
        v154 = v1[33];
        v99 = v1[31];
        v98 = v1[32];
        v100 = v1[29];
        v101 = v1[30];
        v102 = v1[28];
        [v158 setPlayActivityFeatureName:v94];

        (*(v100 + 8))(v101, v102);
        v103 = *(v98 + 8);
        v103(v97, v99);
        (*(v96 + 8))(v148, v142);
        v103(v154, v99);
        v105 = v1[45];
        v104 = v1[46];
        v107 = v1[41];
        v106 = v1[42];
        v109 = v1[39];
        v108 = v1[40];
        v110 = v1[38];
        v112 = v1[34];
        v111 = v1[35];
        v113 = v1[33];
        v115 = v1[30];
        v117 = v1[27];
        v120 = v1[26];
        v123 = v1[23];
        v126 = v1[20];
        v128 = v1[19];
        v132 = v1[16];
        v137 = v1[15];
        v143 = v1[14];
        v149 = v1[13];
        v155 = v1[12];

        v114 = v1[1];

        return v114(v158);
      }

      v75 = v1[12];
      v74 = v1[13];
      v77 = v1[10];
      v76 = v1[11];
      sub_10E48(result, v51, v49, v74);
      (*(v76 + 16))(v75, v74, v77);
      v78 = (*(v76 + 88))(v75, v77);
      v79 = v1[15];
      v81 = v1[11];
      v80 = v1[12];
      v82 = v1[10];
      if (v78 == enum case for PlaybackIntent.Option.playbackSource(_:))
      {
        (*(v81 + 96))(v1[12], v82);
        v54 = sub_598C4();
        v83 = *(v54 - 8);
        (*(v83 + 32))(v79, v80, v54);
        (*(v83 + 56))(v79, 0, 1, v54);
        v84 = *(v81 + 8);
      }

      else
      {
        v84 = *(v81 + 8);
        v84(v1[12], v82);
        v54 = sub_598C4();
        (*(*(v54 - 8) + 56))(v79, 1, 1, v54);
      }

      v86 = v1[14];
      v85 = v1[15];
      v84(v1[13], v1[10]);
      sub_10F08(v85, v86);
      sub_598C4();
      v87 = *(v54 - 8);
      result = (*(v87 + 48))(v86, 1, v54);
      if (result != 1)
      {
        v89 = v1[15];
        v88 = v1[16];
        (*(v87 + 32))(v88, v1[14], v54);
        sub_9708(v89, &qword_7D2A0, &qword_5C238);
        (*(v87 + 56))(v88, 0, 1, v54);
        goto LABEL_31;
      }

LABEL_40:
      __break(1u);
      return result;
    }

LABEL_38:
    __break(1u);
  }

  v121 = v1[51];
  v124 = v1[52];
  v28 = v1[46];
  v29 = v1[44];
  v118 = v1[43];
  v151 = v1[34];
  v156 = v1[33];
  v30 = v1[32];
  v139 = v1[50];
  v145 = v1[31];
  v31 = v1[29];
  v134 = v1[30];
  v129 = v1[28];

  v32 = sub_596E4();
  sub_10F78(&qword_7D2B8, &type metadata accessor for PodcastsPlaybackError.ValidationError);
  swift_allocError();
  v34 = v33;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2C0, &qword_5C248) + 48);
  v121(v34, v28, v118);
  v36 = sub_59804();
  v37 = &enum case for PlaybackIntent.PlayerConstraint.multipleItemsUntransferrable(_:);
  if (v27 <= 1)
  {
    v37 = &enum case for PlaybackIntent.PlayerConstraint.singleItemUntransferrable(_:);
  }

  (*(*(v36 - 8) + 104))(v34 + v35, *v37, v36);
  (*(*(v32 - 8) + 104))(v34, enum case for PodcastsPlaybackError.ValidationError.localPlaybackRequired(_:), v32);
  swift_willThrow();

  (*(v31 + 8))(v134, v129);
  v38 = *(v30 + 8);
  v38(v151, v145);
  (*(v29 + 8))(v28, v118);
  v38(v156, v145);
LABEL_23:
  v64 = v1[45];
  v63 = v1[46];
  v66 = v1[41];
  v65 = v1[42];
  v68 = v1[39];
  v67 = v1[40];
  v69 = v1[38];
  v71 = v1[34];
  v70 = v1[35];
  v72 = v1[33];
  v116 = v1[30];
  v119 = v1[27];
  v122 = v1[26];
  v125 = v1[23];
  v127 = v1[20];
  v131 = v1[19];
  v136 = v1[16];
  v141 = v1[15];
  v147 = v1[14];
  v153 = v1[13];
  v157 = v1[12];

  v73 = v1[1];

  return v73();
}

uint64_t sub_F180()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v13 = v0[48];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_F31C()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[41];
  v10 = v0[42];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[38];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v20 = v0[54];
  v21 = v0[30];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[13];
  v31 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_F500()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[34];
  v35 = v0[33];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];

  (*(v8 + 8))(v9, v10);
  v11 = *(v7 + 8);
  v11(v5, v6);
  (*(v4 + 8))(v2, v3);
  v11(v35, v6);
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[41];
  v14 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[38];
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[33];
  v24 = v0[56];
  v25 = v0[30];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[23];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[16];
  v32 = v0[15];
  v33 = v0[14];
  v34 = v0[13];
  v36 = v0[12];

  v22 = v0[1];

  return v22();
}

uint64_t sub_F71C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v53 - v7;
  __chkstk_darwin(v6);
  v10 = v53 - v9;
  v11 = sub_59894();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v53 - v18;
  __chkstk_darwin(v17);
  v21 = v53 - v20;
  v62 = v0;
  v22 = v68;
  v23 = sub_597D4();
  if (v22)
  {
    return v0;
  }

  v25 = v11;
  v54 = v16;
  v55 = v8;
  v68 = v12;
  v61 = v19;
  v58 = v10;
  v59 = 0;
  v56 = v5;
  if (v24 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v27 = v23;
    v28 = v24;
    isa = sub_594B4().super.isa;
    sub_10FC0(v27, v28);
  }

  v29 = v25;
  v30 = [objc_allocWithZone(MPCPlaybackIntent) init];
  v31 = sub_598F4();
  v32 = v68;
  (*(v68 + 104))(v21, enum case for PlaybackIntent.Option.startPlayback(_:), v25);
  v33 = sub_35430(v21, v31);

  v34 = *(v32 + 8);
  v34(v21, v25);
  if (v33)
  {
    v35 = 20;
  }

  else
  {
    v35 = 0;
  }

  [v30 setActionAfterQueueLoad:v35];
  [v30 setTracklistSource:500];
  v60 = v30;
  [v30 setTracklistToken:isa];
  v36 = sub_598F4();
  v63 = v36;
  v64 = sub_103D4;
  v65 = 0;
  v66 = sub_10ABC;
  v67 = 0;
  result = sub_10B20();
  if (v39)
  {
    goto LABEL_23;
  }

  v40 = v61;
  if (*(v36 + 36) != v38)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = 1 << *(v36 + 32);
  v57 = isa;
  if (result == v41)
  {
    v42 = sub_598C4();
    v43 = v58;
    (*(*(v42 - 8) + 56))(v58, 1, 1, v42);
LABEL_17:

    sub_598C4();
    v51 = *(v42 - 8);
    if ((*(v51 + 48))(v43, 1, v42) == 1)
    {
      sub_9708(v43, &qword_7D2A0, &qword_5C238);
      v52 = 0;
    }

    else
    {
      sub_598B4();
      (*(v51 + 8))(v43, v42);
      v52 = sub_5A174();
    }

    v0 = v60;
    [v60 setPlayActivityFeatureName:v52];

    return v0;
  }

  v62 = v34;
  v53[1] = v36;
  sub_10E48(result, v38, v36, v61);
  v44 = v68;
  v45 = v54;
  (*(v68 + 16))(v54, v40, v29);
  if ((*(v44 + 88))(v45, v29) == enum case for PlaybackIntent.Option.playbackSource(_:))
  {
    (*(v44 + 96))(v45, v29);
    v42 = sub_598C4();
    v46 = *(v42 - 8);
    v47 = v55;
    (*(v46 + 32))(v55, v45, v42);
    (*(v46 + 56))(v47, 0, 1, v42);
    v48 = v56;
    v62(v40, v29);
  }

  else
  {
    v49 = v62;
    v62(v45, v29);
    v42 = sub_598C4();
    v47 = v55;
    (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
    v48 = v56;
    v49(v40, v29);
  }

  sub_10F08(v47, v48);
  sub_598C4();
  v50 = *(v42 - 8);
  result = (*(v50 + 48))(v48, 1, v42);
  if (result != 1)
  {
    v43 = v58;
    (*(v50 + 32))(v58, v48, v42);
    sub_9708(v47, &qword_7D2A0, &qword_5C238);
    (*(v50 + 56))(v43, 0, 1, v42);
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_FDE4(void *a1)
{
  v1 = [a1 playerPath];
  v2 = [v1 route];

  if (!v2)
  {
    return 0;
  }

  if ([v2 isiOSRoute] || objc_msgSend(v2, "isMacRoute"))
  {

    return 1;
  }

  else
  {
    v4 = [v2 routeSubtype];

    return v4 == &dword_18 + 2;
  }
}

uint64_t sub_FE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_59674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_59604();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_59AB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v24, v8);
  (*(v4 + 16))(v7, v25, v3);
  sub_59AA4();
  v18 = sub_59A54();
  v20 = v19;
  result = (*(v14 + 8))(v17, v13);
  v22 = v26;
  *v26 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_100C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_59604();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1C304(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1C304((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t PlaybackIntent.generateLocalMPCIntent()()
{
  v0 = sub_59D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_597E4();
  result = 0;
  if ((v5 & 1) == 0)
  {
    sub_59CC4();
    v7 = sub_59D04();
    v8 = sub_5A434();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Creating a local playback intent", v9, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return sub_F71C();
  }

  return result;
}

uint64_t sub_103D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_59894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) == enum case for PlaybackIntent.Option.playbackSource(_:))
  {
    (*(v5 + 96))(v8, v4);
    v9 = sub_598C4();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v8, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v12 = sub_598C4();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

size_t sub_105BC(size_t a1, int64_t a2, char a3)
{
  result = sub_10698(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_105F8(char *a1, int64_t a2, char a3)
{
  result = sub_10870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10618(void *a1, int64_t a2, char a3)
{
  result = sub_10974(a1, a2, a3, *v3, &qword_7D2D8, &qword_5C258, &qword_7D2E0, &qword_5C260);
  *v3 = result;
  return result;
}

void *sub_10658(void *a1, int64_t a2, char a3)
{
  result = sub_10974(a1, a2, a3, *v3, &qword_7DCE0, &qword_5CF60, &qword_7D2D0, &qword_5CA50);
  *v3 = result;
  return result;
}

size_t sub_10698(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2E8, &unk_5C268);
  v10 = *(sub_59604() - 8);
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
  v15 = *(sub_59604() - 8);
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

char *sub_10870(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2C8, &qword_5C250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_10974(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_10B20()
{
  v39 = sub_59894();
  v1 = *(v39 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v39);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v33 = &v29 - v6;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[3];
  v37 = v0[2];
  v38 = v7;
  v35 = v0[4];
  v36 = v9;
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  result = sub_5A6A4();
  v13 = result;
  v14 = *(v8 + 36);
  v15 = 1 << *(v8 + 32);
  if (result == v15)
  {
    return result;
  }

  else
  {
    v31 = v1 + 8;
    v32 = v1 + 16;
    v29 = v8 + 64;
    v30 = v1;
    v17 = v39;
    while ((v13 & 0x8000000000000000) == 0 && v13 < v15)
    {
      v18 = v13 >> 6;
      if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v40 = v14;
      v19 = v34;
      (*(v1 + 16))(v34, *(v8 + 48) + *(v1 + 72) * v13, v17);
      v20 = v33;
      v38(v19);
      (*(v1 + 8))(v19, v17);
      v21 = v36(v20);
      result = sub_9708(v20, &qword_7D2A0, &qword_5C238);
      if (v21)
      {
        return v13;
      }

      v16 = 1 << *(v8 + 32);
      if (v13 >= v16)
      {
        goto LABEL_23;
      }

      v22 = *(v10 + 8 * v18);
      if ((v22 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v13 & 0x3F));
      if (v23)
      {
        v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v18 << 6;
        v25 = v18 + 1;
        v26 = (v29 + 8 * v18);
        while (v25 < (v16 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10FD4(v13, v40, 0);
            v16 = __clz(__rbit64(v27)) + v24;
            goto LABEL_5;
          }
        }

        result = sub_10FD4(v13, v40, 0);
      }

LABEL_5:
      v14 = *(v8 + 36);
      v15 = 1 << *(v8 + 32);
      v13 = v16;
      v1 = v30;
      if (v16 == v15)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10E48@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_59894();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10F78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10FC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7D34(a1, a2);
  }

  return a1;
}

uint64_t sub_10FD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t InMemoryPlaybackPositionTracker.__allocating_init(inMemoryStateRepository:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InMemoryPlaybackPositionTracker.__allocating_init(asPartOf:)()
{
  sub_59BF4();
  sub_5A094();

  type metadata accessor for InMemoryPlaybackPositionTracker();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_110A8(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2F0, &qword_5BE70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_59984();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_15E38(v14, v15);
  if (v17)
  {
    sub_11428();
    v18 = swift_allocError();
    *v19 = 0;
    a2(v18, 1);
  }

  else
  {
    v21 = v16;
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 64))(v22, v23);
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    (*(v25 + 80))(v24, v25);
    sub_59504();
    v26 = sub_59524();
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    (*(v28 + 56))(v27, v28);
    sub_59964();
    v29 = *(v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D300, &qword_5C278);
    v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280) - 8);
    v31 = *(*v30 + 72);
    v32 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_5BC80;
    v34 = (v33 + v32);
    v35 = v30[14];
    *v34 = v21;
    sub_5B84(v13, v34 + v35);
    v36 = sub_114A0(v33);
    swift_setDeallocating();
    sub_11650(v34);
    swift_deallocClassInstance();
    v37._rawValue = v36;
    sub_59BE4(v37);

    return sub_A86C(v13);
  }
}

unint64_t sub_11428()
{
  result = qword_7D2F8;
  if (!qword_7D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D2F8);
  }

  return result;
}

unint64_t sub_114A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D438, &qword_5C310);
    v8 = sub_5A854();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_11A3C(v10, v6);
      v12 = *v6;
      result = sub_56590(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_59984();
      result = sub_11AAC(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
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

uint64_t sub_11650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1172C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D3C0, qword_5C2F0);
    v3 = sub_5A854();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_565FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_11830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
    v3 = sub_5A854();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_56674(v6);
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

void *sub_11928(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F400, &unk_5E430);
  v3 = sub_5A854();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_566B8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_566B8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_59984();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LocalLibraryPlaybackPositionTracker.__allocating_init(stateCoordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = [objc_allocWithZone(MTEpisodeLookupUtil) init];
  sub_12440(a1, v2 + 16);
  return v2;
}

uint64_t LocalLibraryPlaybackPositionTracker.init(stateCoordinator:)(__int128 *a1)
{
  *(v1 + 56) = [objc_allocWithZone(MTEpisodeLookupUtil) init];
  sub_12440(a1, v1 + 16);
  return v1;
}

void sub_11BBC(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = sub_15E80(v8, v9);
  if (v12 == -1)
  {
    sub_11428();
    v18 = swift_allocError();
    *v19 = 0;
    a2(v18, 1);
  }

  else
  {
    sub_11DB4(v10, v11, v12);
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 privateQueueContext];

    sub_123D8(a1, v21);
    v15 = swift_allocObject();
    v15[2] = v4;
    sub_12440(v21, (v15 + 3));
    v15[8] = v14;
    v15[9] = a2;
    v15[10] = a3;
    aBlock[4] = sub_12458;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12CB4;
    aBlock[3] = &block_descriptor_0;
    v16 = _Block_copy(aBlock);

    v17 = v14;

    [v17 performBlock:v16];
    _Block_release(v16);
  }
}

uint64_t sub_11DB4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_5350(result, a2, a3 & 1);
  }

  return result;
}

void sub_11DCC(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v65 = a4;
  v66 = a5;
  v61 = sub_59D14();
  v63 = *(v61 - 8);
  v8 = *(v63 + 64);
  v9 = __chkstk_darwin(v61);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D518, &qword_5C3C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v59 - v16;
  v18 = sub_59734();
  v62 = *(v18 - 1);
  v19 = *(v62 + 64);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v24 = sub_15EF0(v22, v23);
  v64 = a1;
  v25 = a1[7];
  v26 = a3;
  v67 = [v25 findEpisodeWithRequest:v24 context:a3];

  v28 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v27 + 64))(v28, v27);
  if (v67)
  {
    v30 = v29;
    v31 = a2[3];
    v32 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v31);
    v33 = (*(v32 + 56))(v31, v32);
    v34 = a2[3];
    v35 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v34);
    v36 = (*(v35 + 80))(v34, v35);
    sub_12D10(v67, v36 & 1, v30, v33);
    [v26 saveInCurrentBlock];
    (v65)(0, 0);
    v37 = v67;
  }

  else
  {
    v59 = v26;
    v60 = v21;
    v38 = v62;
    v39 = v63;
    v67 = v18;
    v40 = v64;
    v41 = v65;
    if (v29 <= kMTEpisodePlayheadCutoffForPartiallyPlayed)
    {
      sub_59CD4();
      v46 = sub_59D04();
      v47 = sub_5A434();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "􁀮 Episode not found. No action performed", v48, 2u);
      }

      (*(v39 + 8))(v11, v61);
      (v41)(0, 0);
    }

    else
    {
      sub_123D8(a2, v68);
      sub_12470(v68, v17);
      v42 = v38;
      v43 = *(v38 + 48);
      v44 = v67;
      if (v43(v17, 1, v67) == 1)
      {
        sub_9708(v17, &qword_7D518, &qword_5C3C0);
        sub_11428();
        swift_allocError();
        *v45 = 3;
        v41();
      }

      else
      {
        (*(v42 + 32))(v60, v17, v44);
        sub_59CD4();
        v49 = sub_59D04();
        v50 = sub_5A474();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_0, v49, v50, "􁹟 Episode played beyond threshold. Performing implicit follow", v51, 2u);
        }

        (*(v39 + 8))(v13, v61);
        v52 = v40;
        v53 = v40[6];
        __swift_project_boxed_opaque_existential_1(v40 + 2, v40[5]);
        sub_123D8(a2, v68);
        v54 = swift_allocObject();
        v55 = v66;
        v54[2] = v41;
        v54[3] = v55;
        v56 = v59;
        v54[4] = v59;
        v54[5] = v52;
        sub_12440(v68, (v54 + 6));

        v57 = v56;

        v58 = v60;
        sub_59704();

        (*(v42 + 8))(v58, v67);
      }
    }
  }
}

uint64_t sub_123D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_12440(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_12470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D520, &qword_5C3C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_599E4();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D528, &qword_5C3D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  v18 = sub_599A4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v34 - v24;
  sub_123D8(a1, v37);
  sub_13A34(v37, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v26 = &qword_7D528;
    v27 = &qword_5C3D0;
    v28 = v17;
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    sub_123D8(a1, v37);
    sub_13E2C(v37, v6);
    v29 = v35;
    if ((*(v35 + 48))(v6, 1, v7) != 1)
    {
      (*(v29 + 32))(v13, v6, v7);
      (*(v29 + 16))(v11, v13, v7);
      (*(v19 + 16))(v23, v25, v18);
      v31 = v36;
      sub_59724();
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
      (*(v29 + 8))(v13, v7);
      (*(v19 + 8))(v25, v18);
      v30 = 0;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    (*(v19 + 8))(v25, v18);
    v26 = &qword_7D520;
    v27 = &qword_5C3C8;
    v28 = v6;
  }

  sub_9708(v28, v26, v27);
  v30 = 1;
  v31 = v36;
LABEL_7:
  v32 = sub_59734();
  return (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
}

void sub_1287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a3 && a5)
  {
    sub_123D8(a10, v19);
    v13 = swift_allocObject();
    v13[2] = a9;
    sub_12440(v19, (v13 + 3));
    v13[8] = a8;
    v13[9] = a6;
    v13[10] = a7;
    aBlock[4] = sub_15040;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12CB4;
    aBlock[3] = &block_descriptor_13;
    v14 = _Block_copy(aBlock);

    v15 = a8;

    [v15 performBlock:v14];
    _Block_release(v14);
  }

  else
  {
    sub_11428();
    v16 = swift_allocError();
    *v17 = 2;
    a6(v16, 1);
  }
}

uint64_t sub_12A04(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void, void))
{
  v8 = sub_59D14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CD4();
  v13 = sub_59D04();
  v14 = sub_5A434();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "􁹟 Show implicitly followed. Updating newly inserted episode", v15, 2u);
    a3 = v31;
  }

  (*(v9 + 8))(v12, v8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = sub_15EF0(v16, v17);
  v19 = [*(a1 + 56) findEpisodeWithRequest:v18 context:a3];

  if (v19)
  {
    v20 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v20);
    v22 = (*(v21 + 64))(v20, v21);
    v23 = a2[3];
    v24 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v23);
    v25 = (*(v24 + 56))(v23, v24);
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    v28 = (*(v27 + 80))(v26, v27);
    sub_12D10(v19, v28 & 1, v22, v25);
  }

  [a3 saveInCurrentBlock];
  return a4(0, 0);
}

uint64_t sub_12CB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_12D10(void *a1, char a2, float a3, double a4)
{
  v5 = v4;
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v132 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v132 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v132 - v23;
  __chkstk_darwin(v22);
  v26 = &v132 - v25;
  sub_594E4();
  v28 = v27;
  [a1 lastUserMarkedAsPlayedDate];
  if (v28 - v29 > 2.0)
  {
    if (a2)
    {
      [a1 setPlayhead:0.0];
      [a1 setPlayed:1 manually:0 source:9];
      sub_59CD4();
      v30 = a1;

      v31 = sub_59D04();
      v32 = sub_5A474();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *v33 = 136315906;
        v34 = [v30 uuid];
        if (v34)
        {
          v35 = v34;
          v36 = sub_5A194();
          v38 = v37;
        }

        else
        {
          v36 = 4999502;
          v38 = 0xE300000000000000;
        }

        v69 = sub_9430(v36, v38, &v137);

        *(v33 + 4) = v69;
        *(v33 + 12) = 2080;
        *v71.i64 = a3;
        v74 = sub_14D8C(v70, v72, v71, v73);
        v76 = sub_9430(v74, v75, &v137);

        *(v33 + 14) = v76;
        *(v33 + 22) = 2048;
        *(v33 + 24) = roundf(a3);
        *(v33 + 32) = 2048;
        *(v33 + 34) = round(a4);
        _os_log_impl(&dword_0, v31, v32, "􀁢 Marking episode [%s] as played with elapsed duration: %s (%f / %f)", v33, 0x2Au);
        swift_arrayDestroy();
      }

      (*(v11 + 8))(v26, v10);
      return;
    }

    v49 = kMTEpisodePlayheadCutoffForPartiallyPlayed;
    v50 = &off_7B000;
    v136 = v10;
    if (kMTEpisodePlayheadCutoffForPartiallyPlayed < a3 && (([a1 isUnplayed] & 1) != 0 || objc_msgSend(a1, "backCatalog")))
    {
      v51 = v5[6];
      __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
      v50 = &off_7B000;
      sub_59714();
      [a1 setPlayState:1 manually:0 source:9];
      v52 = [a1 podcast];
      if (v52)
      {
        v53 = v52;
        [v52 lastRemovedFromUpNextDate];
        v55 = v54;

        sub_594E4();
        if (v56 - v55 > v49)
        {
          v57 = [a1 podcast];
          if (v57)
          {
            v58 = v57;
            [v57 setLastRemovedFromUpNextDate:0.0];
          }
        }
      }

      sub_59CD4();
      v59 = a1;

      v60 = sub_59D04();
      v61 = sub_5A474();

      if (os_log_type_enabled(v60, v61))
      {
        LODWORD(v134) = v61;
        v135 = v60;
        v62 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v137 = v133;
        *v62 = 136315906;
        v63 = [v59 uuid];
        if (v63)
        {
          v64 = v63;
          v65 = sub_5A194();
          v67 = v66;
        }

        else
        {
          v65 = 4999502;
          v67 = 0xE300000000000000;
        }

        v77 = sub_9430(v65, v67, &v137);

        *(v62 + 4) = v77;
        *(v62 + 12) = 2080;
        *v79.i64 = a3;
        v82 = sub_14D8C(v78, v80, v79, v81);
        v84 = sub_9430(v82, v83, &v137);

        *(v62 + 14) = v84;
        *(v62 + 22) = 2048;
        *(v62 + 24) = roundf(a3);
        *(v62 + 32) = 2048;
        *(v62 + 34) = round(a4);
        v85 = v135;
        _os_log_impl(&dword_0, v135, v134, "􀹴 Marked episode [%s] as partially played with elapsed duration: %s (%f / %f)", v62, 0x2Au);
        swift_arrayDestroy();

        v10 = v136;
        (*(v11 + 8))(v24, v136);
        v50 = &off_7B000;
      }

      else
      {

        v10 = v136;
        (*(v11 + 8))(v24, v136);
      }
    }

    [a1 playhead];
    if (vabds_f32(a3, *&v86) > 0.2)
    {
      *&v86 = a3;
      [a1 setPlayhead:v86];
      sub_59CD4();
      v87 = a1;

      v88 = sub_59D04();
      v89 = sub_5A474();

      if (os_log_type_enabled(v88, v89))
      {
        LODWORD(v135) = v89;
        v90 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v137 = v134;
        *v90 = 136315906;
        v91 = [v87 uuid];
        if (v91)
        {
          v92 = v91;
          v93 = sub_5A194();
          v95 = v94;
        }

        else
        {
          v93 = 4999502;
          v95 = 0xE300000000000000;
        }

        v106 = sub_9430(v93, v95, &v137);

        *(v90 + 4) = v106;
        *(v90 + 12) = 2080;
        *v108.i64 = a3;
        v111 = sub_14D8C(v107, v109, v108, v110);
        v113 = sub_9430(v111, v112, &v137);

        *(v90 + 14) = v113;
        *(v90 + 22) = 2048;
        *(v90 + 24) = roundf(a3);
        *(v90 + 32) = 2048;
        *(v90 + 34) = round(a4);
        _os_log_impl(&dword_0, v88, v135, "􀐫 Set [%s] last playhead to %s (%f / %f)", v90, 0x2Au);
        swift_arrayDestroy();

        v10 = v136;
        (*(v11 + 8))(v21, v136);
        v50 = &off_7B000;
        if (a4 <= 0.0)
        {
LABEL_46:
          sub_594E4();
          [a1 setLastDatePlayed:?];
          v130 = [a1 v50[387]];
          if (v130)
          {
            v131 = v130;
            [v130 resetGoDarkWithReason:4];
          }

          return;
        }

LABEL_35:
        [a1 duration];
        if (v96 != a4)
        {
          sub_59CD4();
          v97 = a1;

          v98 = sub_59D04();
          v99 = sub_5A474();

          if (os_log_type_enabled(v98, v99))
          {
            LODWORD(v135) = v99;
            v100 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v137 = v134;
            *v100 = 136316162;
            v101 = [v97 uuid];
            if (v101)
            {
              v102 = v101;
              v103 = sub_5A194();
              v105 = v104;
            }

            else
            {
              v103 = 4999502;
              v105 = 0xE300000000000000;
            }

            v114 = sub_9430(v103, v105, &v137);

            *(v100 + 4) = v114;
            *(v100 + 12) = 2080;
            v115 = [v97 duration];
            v119 = sub_14D8C(v115, v116, v117, v118);
            v121 = sub_9430(v119, v120, &v137);

            *(v100 + 14) = v121;
            *(v100 + 22) = 2048;
            v122 = [v97 duration];
            *(v100 + 24) = round(v123);
            *(v100 + 32) = 2080;
            *v124.i64 = a4;
            v127 = sub_14D8C(v122, v125, v124, v126);
            v129 = sub_9430(v127, v128, &v137);

            *(v100 + 34) = v129;
            *(v100 + 42) = 2048;
            *(v100 + 44) = round(a4);
            _os_log_impl(&dword_0, v98, v135, "􀐫 Updating local duration for [%s] from %s (%f) to %s (%f)", v100, 0x34u);
            swift_arrayDestroy();

            (*(v11 + 8))(v18, v136);
            v50 = &off_7B000;
          }

          else
          {

            (*(v11 + 8))(v18, v10);
          }

          [v97 setDuration:a4];
        }

        goto LABEL_46;
      }

      v10 = v136;
      (*(v11 + 8))(v21, v136);
    }

    if (a4 <= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  sub_59CD4();
  v39 = a1;
  v40 = sub_59D04();
  v41 = sub_5A474();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v137 = v43;
    *v42 = 136315138;
    v44 = [v39 uuid];
    if (v44)
    {
      v45 = v44;
      v46 = sub_5A194();
      v48 = v47;
    }

    else
    {
      v46 = 4999502;
      v48 = 0xE300000000000000;
    }

    v68 = sub_9430(v46, v48, &v137);

    *(v42 + 4) = v68;
    _os_log_impl(&dword_0, v40, v41, "􀁞 Ignoring last playback position for [%s]. Episode was marked as played by user.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  (*(v11 + 8))(v15, v10);
}

uint64_t LocalLibraryPlaybackPositionTracker.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t LocalLibraryPlaybackPositionTracker.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_13A34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v7)
  {
    goto LABEL_64;
  }

  v8 = HIBYTE(v7) & 0xF;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_64;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    sub_1438C(result, v7, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_64;
    }

LABEL_67:
    sub_59994();
    v39 = sub_599A4();
    (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_5A744();
      v9 = v40;
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        if (--v9)
        {
          v20 = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_62;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_62;
              }

              v20 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_62;
              }

              ++v21;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_62;
            }

            v30 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_62;
            }

            v28 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      LOBYTE(v9) = 1;
LABEL_63:
      v42 = v9;
      v35 = v9;

      if (v35)
      {
LABEL_64:
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        v36 = sub_599A4();
        return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
      }

      goto LABEL_67;
    }

    if (v9 >= 1)
    {
      if (--v9)
      {
        v12 = 0;
        if (result)
        {
          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_62;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_62;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_62;
            }

            ++v13;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v41[0] = result;
  v41[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v8)
      {
        v31 = 0;
        v32 = v41;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v8)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v8)
    {
      v9 = v8 - 1;
      if (v8 != 1)
      {
        v16 = 0;
        v17 = v41 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v8)
  {
    v9 = v8 - 1;
    if (v8 != 1)
    {
      v24 = 0;
      v25 = v41 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v9)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_13E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v7)
  {
    goto LABEL_64;
  }

  v8 = HIBYTE(v7) & 0xF;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_64;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    sub_1438C(result, v7, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_64;
    }

LABEL_67:
    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    (*(v40 + 32))(v39, v40);
    v41 = a1[3];
    v42 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v41);
    (*(v42 + 72))(v41, v42);
    sub_599D4();
    v43 = sub_599E4();
    (*(*(v43 - 8) + 56))(a2, 0, 1, v43);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_5A744();
      v9 = v44;
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        if (--v9)
        {
          v20 = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_62;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_62;
              }

              v20 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_62;
              }

              ++v21;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_62;
            }

            v30 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_62;
            }

            v28 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      LOBYTE(v9) = 1;
LABEL_63:
      v46 = v9;
      v35 = v9;

      if (v35)
      {
LABEL_64:
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        v36 = sub_599E4();
        return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
      }

      goto LABEL_67;
    }

    if (v9 >= 1)
    {
      if (--v9)
      {
        v12 = 0;
        if (result)
        {
          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_62;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_62;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_62;
            }

            ++v13;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v45[0] = result;
  v45[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v8)
      {
        v31 = 0;
        v32 = v45;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v8)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v8)
    {
      v9 = v8 - 1;
      if (v8 != 1)
      {
        v16 = 0;
        v17 = v45 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v8)
  {
    v9 = v8 - 1;
    if (v8 != 1)
    {
      v24 = 0;
      v25 = v45 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v9)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_72:
  __break(1u);
  return result;
}

void *sub_1428C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D1E0, &qword_5C028);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_14354(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unsigned __int8 *sub_1438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_5A254();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_14918();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_5A744();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}