uint64_t sub_1C128(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  sub_15D18(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_E7884();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v29 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v30 = *(v7 + 36);
    v12 = v7;
    v13 = *(*(v7 + 48) + 8 * v6);
    sub_E6814();
    sub_10D78();
    result = sub_E7854();
    v15 = v2;
    v31 = v2;
    v16 = v2[2];
    v17 = v15[3];
    if (v16 >= v17 >> 1)
    {
      v26 = v14;
      v27 = result;
      sub_15D18((v17 > 1), v16 + 1, 1);
      v14 = v26;
      result = v27;
      v15 = v31;
    }

    v15[2] = v16 + 1;
    v18 = &v15[2 * v16];
    v18[4] = result;
    v18[5] = v14;
    v9 = 1 << *(v12 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v19 = *(v3 + 8 * v11);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    v7 = v12;
    v2 = v15;
    if (v30 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v29;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (a1 + 64 + 8 * v11);
      v10 = v29;
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1E32C(v6, v30, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1E32C(v6, v30, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
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

uint64_t PlayPreviousChapterAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  *a1 = result;
  return result;
}

unint64_t sub_1C420()
{
  result = qword_12DB88;
  if (!qword_12DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB88);
  }

  return result;
}

uint64_t RemoveEpisodesDownloadAppIntent.objectGraph.getter()
{
  v1 = *v0;
  sub_E51D4();
  return v3;
}

uint64_t sub_1C4A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  sub_E51E4();
}

uint64_t RemoveEpisodesDownloadAppIntent.objectGraph.setter()
{
  v1 = *v0;

  sub_E51E4();
}

void (*ChannelEntity.ChannelEntityQuery.objectGraph.modify(uint64_t *a1))(void *a1)
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

void sub_1C5B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id ChannelEntity.ChannelEntityQuery.predicate(forAdamIDs:)(uint64_t a1)
{
  v1 = sub_1C128(a1);
  v2 = objc_opt_self();
  sub_10C40(v1);

  isa = sub_E73A4().super.isa;

  v4 = [v2 predicateForChannelStoreIds:isa];

  return v4;
}

id ChannelEntity.ChannelEntityQuery.predicate(forUuids:)()
{
  v0 = [objc_opt_self() falsePredicate];

  return v0;
}

uint64_t ChannelEntity.ChannelEntityQuery.suggestedEntities()()
{
  v2 = sub_E7724();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_E7324();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v0;
  v1[11] = v8;
  v1[12] = v9;

  return _swift_task_switch(sub_1C824, 0, 0);
}

uint64_t sub_1C824()
{
  v1 = v0[12];
  sub_E51D4();
  v0[13] = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C8F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1C8F0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D024;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1CA0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1CA0C()
{
  v1 = v0[2];
  v2 = v0[15];
  v3 = v0[11];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[16] = v4;
  if (v2)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_unknownObjectRelease();
    v5 = v0[11];
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v4;
    v10 = v0[8];
    v11 = v0[6];
    v12 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v9;
    (*(v12 + 104))(v10, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v14 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v9;
    v15 = swift_task_alloc();
    v0[18] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E050, &qword_EA0E0);
    v0[19] = v16;
    *v15 = v0;
    v15[1] = sub_1CC10;
    v17 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v17, sub_1DDA0, v13, v16);
  }
}

uint64_t sub_1CC10()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = v2[17];
  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v6 = sub_1D09C;
  }

  else
  {
    v6 = sub_1CD94;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1CD94()
{
  v1 = v0[12];
  v2 = v0[4];
  v0[21] = v2;
  v0[5] = v2;
  v3 = async function pointer to Collection<>.concurrentMap(_:)[1];

  v4 = swift_task_alloc();
  v0[22] = v4;
  v5 = sub_1DE54();
  *v4 = v0;
  v4[1] = sub_1CE68;
  v6 = v0[19];
  v7 = v0[12];

  return Collection<>.concurrentMap(_:)(&unk_EA0F0, v7, v6, v5);
}

uint64_t sub_1CE68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_1D114;
  }

  else
  {
    v8 = v4[21];
    v9 = v4[12];

    v4[24] = a1;
    v7 = sub_1CFA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1CFA4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);
  v4 = *(v0 + 192);

  return v3(v4);
}

uint64_t sub_1D024()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D09C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D114()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 96);

  v3 = *(v0 + 184);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1D1A4(void *a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for ChannelEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTChannelEntityName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9F00;
  v9 = objc_allocWithZone(NSSortDescriptor);
  v10 = sub_E7024();
  v11 = [v9 initWithKey:v10 ascending:1];

  *(v8 + 32) = v11;
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  isa = sub_E71E4().super.isa;

  [v7 setSortDescriptors:isa];

  sub_4ABC(0, &qword_12DC30, MTChannel_ptr);
  v13 = sub_E7734();
  if (v1)
  {

    return;
  }

  v14 = v13;
  v15 = v24;
  if (!(v13 >> 62))
  {
    v16 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_15:

    *v15 = _swiftEmptyArrayStorage;
    return;
  }

  v16 = sub_E7AC4();
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_5:
  v22[1] = 0;
  v23 = v7;
  v25 = _swiftEmptyArrayStorage;
  sub_15D78(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    v18 = v25;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = sub_E79B4();
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      ChannelEntity.init(model:)(v19, v6);
      v25 = v18;
      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        sub_15D78(v20 > 1, v21 + 1, 1);
        v18 = v25;
      }

      ++v17;
      v18[2] = v21 + 1;
      sub_1E2C8(v6, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21);
    }

    while (v16 != v17);

    *v24 = v18;
  }
}

uint64_t sub_1D4C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_1D4E0, 0, 0);
}

uint64_t sub_1D4E0()
{
  v1 = v0[4];
  sub_E51D4();
  v2 = v0[2];
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D58C;
  v4 = v0[3];

  return ChannelEntity.prepare(asPartOf:)(v2);
}

uint64_t sub_1D58C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1D6C8, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D6C8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1D72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return (sub_27604)(a2, a3);
}

uint64_t sub_1D7E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1D8F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return (sub_28A70)(a1, v4);
}

uint64_t sub_1D9A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return ChannelEntity.ChannelEntityQuery.suggestedEntities()();
}

uint64_t sub_1DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DAF8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1DAF8(uint64_t a1)
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

uint64_t sub_1DBF8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1DF24();
  *v6 = v2;
  v6[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1DCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_588C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_1DD68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1DDBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_588C;

  return sub_1D4C0(a1, v1);
}

unint64_t sub_1DE54()
{
  result = qword_12DB90;
  if (!qword_12DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E050, &qword_EA0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB90);
  }

  return result;
}

unint64_t sub_1DF24()
{
  result = qword_12DBF0;
  if (!qword_12DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DBF0);
  }

  return result;
}

unint64_t sub_1DF7C()
{
  result = qword_12DBF8;
  if (!qword_12DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DBF8);
  }

  return result;
}

unint64_t sub_1DFD4()
{
  result = qword_12DC00;
  if (!qword_12DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC00);
  }

  return result;
}

unint64_t sub_1E060()
{
  result = qword_12DC08;
  if (!qword_12DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC08);
  }

  return result;
}

uint64_t sub_1E0E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E130()
{
  result = qword_12DC18;
  if (!qword_12DC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E050, &qword_EA0E0);
    sub_1E0E8(&qword_12DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC18);
  }

  return result;
}

uint64_t sub_1E1D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1E2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E32C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t DefaultLibraryListQuery.entities(for:)(uint64_t a1)
{
  v1[95] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0) - 8) + 64) + 15;
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v3 = *(*(sub_E5944() - 8) + 64) + 15;
  v1[105] = swift_task_alloc();
  v4 = sub_E6974();
  v1[106] = v4;
  v5 = *(v4 - 8);
  v1[107] = v5;
  v6 = *(v5 + 64) + 15;
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();

  return _swift_task_switch(sub_1E498, 0, 0);
}

uint64_t sub_1E498()
{
  v80 = v0;
  v79 = _swiftEmptyArrayStorage;
  sub_15D18(0, 3, 0);
  v1 = _swiftEmptyArrayStorage;
  v2 = 0xE500000000000000;
  v3 = 0x6465766173;
  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  v6 = v5 + 1;
  if (v5 < v4 >> 1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_15D18((v4 > 1), v6, 1);
    v1 = v79;
LABEL_2:
    v1[2] = v6;
    v7 = &v1[2 * v5];
    v7[4] = v3;
    v7[5] = v2;
    v79 = v1;
    v8 = v1[3];
    if (v6 >= v8 >> 1)
    {
      sub_15D18((v8 > 1), v5 + 2, 1);
      v1 = v79;
    }

    v1[2] = v5 + 2;
    v9 = &v1[2 * v6];
    v9[4] = 0x64616F6C6E776F64;
    v9[5] = 0xEA00000000006465;
    v79 = v1;
    v3 = v1[2];
    v10 = v1[3];
    if (v3 >= v10 >> 1)
    {
      sub_15D18((v10 > 1), v3 + 1, 1);
      v1 = v79;
    }

    v11 = v76[95];
    v1[2] = v3 + 1;
    v12 = &v1[2 * v3];
    v12[4] = 0x74736574616CLL;
    v12[5] = 0xE600000000000000;
    v6 = sub_10C40(v1);

    v13 = *(v11 + 16);

    if (!v13)
    {
      break;
    }

    v77 = v76[95] + 32;
    v14 = v6 + 56;
    v2 = _swiftEmptyArrayStorage;
    v5 = v76;
    v4 = 0;
    while (1)
    {
      v15 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (*(v6 + 16))
      {
        v16 = (v77 + 16 * v4);
        v17 = *v16;
        v3 = v16[1];
        v18 = *(v6 + 40);
        sub_E7CC4();

        sub_E7124();
        v19 = sub_E7CF4();
        v20 = -1 << *(v6 + 32);
        v21 = v19 & ~v20;
        if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_9;
        }

        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v17 && v23[1] == v3;
          if (v24 || (sub_E7BD4() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_15D18(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_15D18((v25 > 1), v26 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[2 * v26];
        v27[4] = v17;
        v27[5] = v3;
        v5 = v76;
        if (v15 == v13)
        {
          goto LABEL_31;
        }

        v4 = v15;
        if (v15 >= v13)
        {
LABEL_8:
          __break(1u);
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
LABEL_10:
        v4 = v15;
        if (v15 == v13)
        {
          goto LABEL_31;
        }

        if (v15 >= v13)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_63:
    __break(1u);
  }

  v5 = v76;
LABEL_31:
  v28 = *(v5 + 760);
  swift_bridgeObjectRelease_n();
  v29 = sub_10C40(_swiftEmptyArrayStorage);

  v31 = sub_10C40(v30);

  if (*(v29 + 16) <= v31[2] >> 3)
  {
    goto LABEL_35;
  }

  v32 = sub_24538(v29, v31);
  v31 = v32[2];
  if (v31)
  {
    while (1)
    {
      v3 = sub_23D5C(v31, 0);
      v33 = sub_25950(&v79, (v3 + 32), v31, v32);
      sub_25DE0();
      if (v33 == v31)
      {
        break;
      }

      __break(1u);
LABEL_35:
      v79 = v31;
      sub_2440C(v29);
      v32 = v79;
      v31 = v79[2];
      if (!v31)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:

    v3 = _swiftEmptyArrayStorage;
  }

  v34 = v5;
  *(v5 + 696) = 0x4E574F4E4B4E55;
  *(v5 + 704) = 0xE700000000000000;
  v35 = swift_task_alloc();
  *(v35 + 16) = v5 + 696;
  v2 = sub_24AA8(sub_25DE8, v35, v3);

  if (v2)
  {
    v36 = v29;
    v37 = *(v5 + 872);
    sub_E6914();
    v38 = sub_E6964();
    v39 = sub_E74B4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Received unknown identifier from query -- this is unexpected and may represent an error.", v40, 2u);
    }

    v2 = *(v5 + 872);
    v41 = *(v5 + 856);
    v42 = v34[106];

    (*(v41 + 8))(v2, v42);
    v29 = v36;
  }

  v43 = v34[107];
  v44 = swift_allocObject();
  v34[110] = v44;
  *(v44 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  swift_asyncLet_begin();
  v6 = v29 + 56;
  v45 = -1;
  v46 = -1 << *(v29 + 32);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  v47 = v45 & *(v29 + 56);
  v48 = (63 - v46) >> 6;
  v78 = (v43 + 8);

  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
LABEL_44:
  v75 = v50;
  v34[111] = v50;
  v5 = v34;
  while (v47)
  {
LABEL_51:
    v53 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v2 = v29;
    v54 = (*(v29 + 48) + ((v49 << 10) | (16 * v53)));
    v55 = *v54;
    v3 = v54[1];

    v56._rawValue = &off_11F8D8;
    v82._countAndFlagsBits = v55;
    v82._object = v3;
    v57 = sub_E7B34(v56, v82);
    if (v57 <= 2)
    {
      v62 = v57;
      v63 = *(v5 + 840);
      v71 = *(v5 + 832);
      v72 = *(v5 + 824);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
      sub_E5914();
      sub_25F18();
      v73 = sub_E5414();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
      sub_E5914();
      sub_25F6C();
      v74 = sub_E5434();
      *(v5 + 912) = v62;
      sub_E53F4();
      v64 = type metadata accessor for StationEntity();
      (*(*(v64 - 8) + 56))(v71, 1, 1, v64);
      sub_26324(v71, v72, &qword_12DC38, &qword_F14D0);
      sub_E53F4();

      sub_110AC(v71, &qword_12DC38, &qword_F14D0);
      v65 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_2321C(0, *(v75 + 2) + 1, 1, v75);
      }

      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      v68 = v65;
      v29 = v2;
      if (v67 >= v66 >> 1)
      {
        v68 = sub_2321C((v66 > 1), v67 + 1, 1, v65);
      }

      v50 = v68;
      *(v68 + 2) = v67 + 1;
      v69 = &v68[16 * v67];
      *(v69 + 4) = v73;
      *(v69 + 5) = v74;
      v34 = v76;
      goto LABEL_44;
    }

    v58 = *(v5 + 864);
    sub_E6914();
    v59 = sub_E6964();
    v60 = sub_E74B4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "Unable to interpret list identifier, despite positive filter.", v61, 2u);
    }

    v51 = *(v5 + 864);
    v52 = *(v5 + 848);

    (*v78)(v51, v52);
    v29 = v2;
  }

  while (1)
  {
    v4 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v4 >= v48)
    {
      break;
    }

    v47 = *(v6 + 8 * v4);
    ++v49;
    if (v47)
    {
      v49 = v4;
      goto LABEL_51;
    }
  }

  return _swift_asyncLet_get_throwing(v5 + 16, v5 + 712, sub_1EE5C, v5 + 656);
}

uint64_t sub_1EE5C()
{
  *(v1 + 896) = v0;
  if (v0)
  {
    v2 = sub_1F2C4;
  }

  else
  {
    v2 = sub_1EE90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1EE90()
{
  v1 = *(v0 + 712);
  v2 = *(v1 + 16);
  if (v2)
  {

    sub_15DBC(0, v2, 0);
    v20 = type metadata accessor for StationEntity();
    v3 = *(v20 - 8);
    v19 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
    v8 = 0;
    v21 = v1;
    while (v8 < *(v1 + 16))
    {
      v9 = *(v22 + 840);
      v10 = *(v22 + 832);
      v11 = *(v22 + 824);
      v12 = *(v22 + 816);
      v23 = *(v22 + 808);
      sub_25FC4(v19 + *(v3 + 72) * v8, v10);
      (*(v3 + 56))(v10, 0, 1, v20);
      sub_26324(v10, v11, &qword_12DC38, &qword_F14D0);
      sub_E5914();
      sub_25F18();
      v13 = sub_E5414();
      sub_E5914();
      sub_25F6C();
      v14 = sub_E5434();
      *(v22 + 913) = 3;
      v24 = v13;
      sub_E53F4();
      sub_26324(v11, v12, &qword_12DC38, &qword_F14D0);
      sub_26324(v12, v23, &qword_12DC38, &qword_F14D0);
      sub_E53F4();
      sub_110AC(v11, &qword_12DC38, &qword_F14D0);
      sub_110AC(v12, &qword_12DC38, &qword_F14D0);
      v4 = sub_110AC(v10, &qword_12DC38, &qword_F14D0);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v4 = sub_15DBC((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v24;
      v17[5] = v14;
      v1 = v21;
      if (v2 == v8)
      {

        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v25 = *(v22 + 888);
    sub_22534(_swiftEmptyArrayStorage);
    *(v22 + 904) = v25;
    v6 = sub_1F1D4;
    v4 = v22 + 16;
    v5 = v22 + 712;
    v7 = v22 + 768;
  }

  return _swift_asyncLet_finish(v4, v5, v6, v7);
}

uint64_t sub_1F1F0()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];

  v9 = v0[1];
  v10 = v0[113];

  return v9(v10);
}

uint64_t sub_1F2C4()
{
  v1 = *(v0 + 888);

  return _swift_asyncLet_finish(v0 + 16, v0 + 712, sub_1F330, v0 + 720);
}

uint64_t sub_1F34C()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];

  v9 = v0[1];
  v10 = v0[112];

  return v9();
}

uint64_t sub_1F41C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1F43C, 0, 0);
}

uint64_t sub_1F43C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  *(v0 + 112) = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *(v0 + 32) = sub_E5204();
  sub_264B0();
  v1 = sub_E7774();
  v2 = sub_E7754();
  *(v0 + 40) = v2;
  v3 = v2;
  v4 = *(v0 + 24);

  *(v0 + 48) = sub_10C40(v5);

  v6 = type metadata accessor for StationEntity();
  sub_25F6C();
  v7 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v4, v6);
  *(v0 + 56) = v7;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1F650;

  return sub_3E8D4(v7, v3);
}

uint64_t sub_1F650(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *v2;
  v5[9] = a1;
  v5[10] = a2;

  v9 = swift_task_alloc();
  v5[11] = v9;
  *v9 = v8;
  v9[1] = sub_1F7F4;
  v10 = v5[5];
  v11 = v5[4];

  return (sub_3ECA4)(a1, a2, v10, v11);
}

uint64_t sub_1F7F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = v1;

  v7 = v4[10];
  v8 = v4[9];
  if (v1)
  {
    v9 = v4[6];

    v10 = sub_1FA18;
  }

  else
  {

    v4[13] = a1;
    v10 = sub_1F96C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1F96C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_3CE38(*(v0 + 104), *(v0 + 48));

  *v3 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1FA18()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t DefaultLibraryListQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_E5944();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_E56B4();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = type metadata accessor for StationEntity();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v13 = swift_task_alloc();
  v2[20] = v13;
  *v13 = v2;
  v13[1] = sub_1FC60;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_1FC60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_20324;
  }

  else
  {
    v5 = sub_1FD74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1FD74()
{
  v63 = v0;
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v56 = *(v0 + 152);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    result = sub_15E20(0, v2, 0);
    v7 = 0;
    v57 = (v3 + 48);
    v54 = (v5 + 8);
    v55 = (v4 + 8);
    while (v7 < *(v1 + 16))
    {
      v8 = v2;
      v10 = *(v0 + 128);
      v9 = *(v0 + 136);
      v59 = *(v1 + 32 + 16 * v7);

      sub_E53E4();
      if ((*v57)(v10, 1, v9) == 1)
      {
        sub_110AC(*(v0 + 128), &qword_12DC38, &qword_F14D0);
        result = sub_E53E4();
        if (*(v0 + 184) == 3)
        {
          v11 = 0;
          v12 = 0xE000000000000000;
        }

        else
        {
          v15 = *(v0 + 120);
          v17 = *(v0 + 96);
          v16 = *(v0 + 104);
          v18 = *(v0 + 80);
          v62 = v59;
          LibraryList.displayRepresentation.getter(v15);
          sub_E5694();
          (*v55)(v15, v16);
          v19 = sub_E5934();
          v21 = v20;
          (*v54)(v17, v18);
          v65._countAndFlagsBits = v19;
          v65._object = v21;
          v66._countAndFlagsBits = 0;
          v66._object = 0xE000000000000000;
          v11 = sub_E63A4(v65, v66);
          v12 = v22;
        }
      }

      else
      {
        v13 = *(v0 + 152);
        sub_2638C(*(v0 + 128), v13, type metadata accessor for StationEntity);
        v14 = *(v56 + 40);
        sub_E53E4();
        v11 = *(v0 + 48);
        v12 = *(v0 + 56);
        result = sub_263F4(v13, type metadata accessor for StationEntity);
      }

      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_15E20((v23 > 1), v24 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[4 * v24];
      v25[4] = v11;
      v25[5] = v12;
      *(v25 + 3) = v59;
      v2 = v8;
      if (v8 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_12:
  v26 = *(v0 + 168);

  v27 = _swiftEmptyArrayStorage[2];
  if (v27)
  {
    v28 = 0;
    v60 = -v27;
    v29 = &_swiftEmptyArrayStorage[7];
    v58 = _swiftEmptyArrayStorage;
LABEL_14:
    v30 = &v29[4 * v28++];
    while ((v28 - 1) < _swiftEmptyArrayStorage[2])
    {
      v32 = *(v0 + 64);
      v31 = *(v0 + 72);
      v34 = *(v30 - 3);
      v33 = *(v30 - 2);
      v36 = *(v30 - 1);
      v35 = *v30;
      *(v0 + 16) = v34;
      *(v0 + 24) = v33;
      *(v0 + 32) = v32;
      *(v0 + 40) = v31;
      sub_26028();

      if (sub_E7844())
      {
        v37 = v58;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v62 = v58;
        if ((result & 1) == 0)
        {
          result = sub_15E20(0, v58[2] + 1, 1);
          v37 = v62;
        }

        v39 = v37[2];
        v38 = v37[3];
        if (v39 >= v38 >> 1)
        {
          result = sub_15E20((v38 > 1), v39 + 1, 1);
          v37 = v62;
        }

        v37[2] = v39 + 1;
        v58 = v37;
        v40 = &v37[4 * v39];
        v40[4] = v34;
        v40[5] = v33;
        v40[6] = v36;
        v40[7] = v35;
        v29 = &_swiftEmptyArrayStorage[7];
        if (v60 + v28)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

      ++v28;
      v30 += 4;
      if (v60 + v28 == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_26:
  v41 = *(v0 + 176);

  *&v62 = v58;

  sub_24D8C(&v62);
  if (v41)
  {
  }

  else
  {

    v42 = v62;
    v43 = *(v62 + 16);
    if (v43)
    {
      *&v62 = _swiftEmptyArrayStorage;
      result = sub_15DBC(0, v43, 0);
      v44 = 0;
      v45 = 48;
      v46 = v62;
      while (v44 < *(v42 + 16))
      {
        v61 = *(v42 + v45);
        *&v62 = v46;
        v47 = v46[2];
        v48 = v46[3];

        if (v47 >= v48 >> 1)
        {
          result = sub_15DBC((v48 > 1), v47 + 1, 1);
          v46 = v62;
        }

        ++v44;
        v46[2] = v47 + 1;
        *&v46[2 * v47 + 4] = v61;
        v45 += 32;
        if (v43 == v44)
        {

          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v46 = _swiftEmptyArrayStorage;
LABEL_38:
    v49 = *(v0 + 152);
    v51 = *(v0 + 120);
    v50 = *(v0 + 128);
    v52 = *(v0 + 96);

    v53 = *(v0 + 8);

    return v53(v46);
  }
}

uint64_t sub_20324()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t DefaultLibraryListQuery.suggestedEntities()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = *(*(sub_E5944() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v3 = sub_E6974();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v0[8] = v4;
  v5 = *(v4 + 64) + 15;
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_204F4, 0, 0);
}

uint64_t sub_204F4()
{
  v1 = *(v0 + 72);
  sub_E6914();
  v2 = sub_E6964();
  v3 = sub_E74D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Starting to compute suggested library lists", v4, 2u);
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);

  (*(v6 + 8))(v5, v7);
  sub_15DBC(0, 3, 0);
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  v8 = 0;
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  do
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 32);
    v12 = *(&off_11F9D0 + v8 + 32);
    sub_E5914();
    *(v0 + 96) = sub_25F18();
    v13 = sub_E5414();
    sub_E5914();
    *(v0 + 104) = sub_25F6C();
    v14 = sub_E5434();
    *(v0 + 176) = v12;
    sub_E53F4();
    v15 = type metadata accessor for StationEntity();
    *(v0 + 112) = v15;
    v16 = *(v15 - 8);
    *(v0 + 120) = v16;
    v17 = *(v16 + 56);
    *(v0 + 128) = v17;
    *(v0 + 136) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v17(v9, 1, 1, v15);
    sub_26324(v9, v11, &qword_12DC38, &qword_F14D0);
    sub_E53F4();
    sub_110AC(v9, &qword_12DC38, &qword_F14D0);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      sub_15DBC((v18 > 1), v19 + 1, 1);
    }

    *(v0 + 144) = _swiftEmptyArrayStorage;
    ++v8;
    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[2 * v19];
    v20[4] = v13;
    v20[5] = v14;
  }

  while (v8 != 3);
  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *v21 = v0;
  v21[1] = sub_2082C;

  return sub_20CF8();
}

uint64_t sub_2082C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v8 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[18];

    v6 = sub_20C50;
  }

  else
  {
    v6 = sub_20948;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_20948()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    result = sub_15DBC(0, v2, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v29 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = v3;
    v31 = v2;
    v32 = v1;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);
      v9 = *(v0 + 112);
      v36 = *(v0 + 104);
      v37 = v6;
      v10 = *(v0 + 96);
      v33 = *(v0 + 80);
      v34 = *(v0 + 88);
      v11 = *(v0 + 40);
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v35 = *(v0 + 16);
      sub_25FC4(v29 + *(v30 + 72) * v5, v11);
      v7(v11, 0, 1, v9);
      sub_26324(v11, v12, &qword_12DC38, &qword_F14D0);
      sub_E5914();
      v14 = sub_E5414();
      sub_E5914();
      v15 = sub_E5434();
      *(v0 + 177) = 3;
      sub_E53F4();
      sub_26324(v12, v13, &qword_12DC38, &qword_F14D0);
      sub_26324(v13, v35, &qword_12DC38, &qword_F14D0);
      sub_E53F4();
      sub_110AC(v12, &qword_12DC38, &qword_F14D0);
      sub_110AC(v13, &qword_12DC38, &qword_F14D0);
      v16 = v11;
      v6 = v37;
      result = sub_110AC(v16, &qword_12DC38, &qword_F14D0);
      v18 = v37[2];
      v17 = v37[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_15DBC((v17 > 1), v18 + 1, 1);
        v6 = v37;
      }

      ++v5;
      v6[2] = v18 + 1;
      v19 = &v6[2 * v18];
      v19[4] = v14;
      v19[5] = v15;
      v1 = v32;
      if (v31 == v5)
      {
        v20 = *(v0 + 160);

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = *(v0 + 160);

    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    v22 = *(v0 + 72);
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);
    v26 = *(v0 + 24);
    v25 = *(v0 + 32);
    v27 = *(v0 + 16);
    v38 = *(v0 + 144);
    sub_22534(v6);

    v28 = *(v0 + 8);

    return v28(v38);
  }

  return result;
}

uint64_t sub_20C50()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v7 = v0[1];
  v8 = v0[21];

  return v7();
}

uint64_t sub_20CF8()
{
  v1 = sub_E6974();
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v4 = sub_E7724();
  v0[10] = v4;
  v5 = *(v4 - 8);
  v0[11] = v5;
  v6 = *(v5 + 64) + 15;
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_20E1C, 0, 0);
}

uint64_t sub_20E1C()
{
  sub_264B0();
  v1 = sub_E7774();
  v2 = sub_E7754();
  *(v0 + 104) = v2;
  v3 = v2;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  *(v0 + 144) = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *(v0 + 112) = sub_E5204();
  v7 = swift_allocObject();
  *(v0 + 120) = v7;
  *(v7 + 16) = v3;
  (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
  v8 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v3;
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  *v9 = v0;
  v9[1] = sub_211C4;
  v11 = *(v0 + 96);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 40, v11, sub_26534, v7, v10);
}

uint64_t sub_211C4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[15];
  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v6 = sub_21570;
  }

  else
  {
    v6 = sub_21348;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_21348()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  v3 = *(v0 + 40);
  sub_E6914();
  v4 = sub_E6964();
  v5 = sub_E74D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 56);
    v22 = *(v0 + 48);
    v23 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v10 = swift_allocObject();
    *(v10 + 16) = &unk_EA530;
    *(v10 + 24) = 0;
    *(v0 + 16) = &unk_EA540;
    *(v0 + 24) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCF0, &qword_EA548);
    v11 = sub_E7084();
    v13 = sub_23E64(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "Computed suggested entities: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);

    (*(v7 + 8))(v23, v22);
  }

  else
  {
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 96);
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20(v3);
}

uint64_t sub_21570()
{
  v24 = v0;
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[17];
  v4 = v0[8];
  sub_E6914();
  swift_errorRetain();
  v5 = sub_E6964();
  v6 = sub_E74B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v22 = v0[8];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v0[4] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v11 = sub_E7084();
    v13 = sub_23E64(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "Unable to compute station suggestions: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[12];
  v18 = v0[8];
  v19 = v0[9];

  v20 = v0[1];

  return v20(_swiftEmptyArrayStorage);
}

uint64_t DefaultLibraryListQuery.defaultResult()(uint64_t a1)
{
  v1[3] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v3 = *(*(sub_E5944() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_E6974();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_218B8, 0, 0);
}

uint64_t sub_218B8()
{
  v1 = v0[10];
  sub_E6914();
  v2 = sub_E6964();
  v3 = sub_E74D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Starting to compute the default list", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  v8 = *(v7 + 8);
  v0[11] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_219E8;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_219E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_21BCC;
  }

  else
  {
    v5 = sub_21AFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_21AFC()
{
  v1 = v0[13];
  v2 = v0[3];
  if (v1[2])
  {
    v4 = v1[4];
    v3 = v1[5];

    *v2 = v4;
    v2[1] = v3;
  }

  else
  {
    v5 = v0[13];

    *v2 = 0;
    v2[1] = 0;
  }

  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BCC()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  sub_E6914();
  swift_errorRetain();
  v3 = sub_E6964();
  v4 = sub_E74B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v33 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v11 = sub_E7084();
    v13 = sub_23E64(v11, v12, &v34);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Unable to compute suggestions: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    v33(v6, v8);
  }

  else
  {
    v14 = *(v0 + 88);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);

    v14(v15, v17);
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  v23 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  v24 = sub_E5434();
  *(v0 + 120) = 2;
  sub_E53F4();
  v25 = type metadata accessor for StationEntity();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  sub_26324(v19, v21, &qword_12DC38, &qword_F14D0);
  sub_E53F4();

  sub_110AC(v19, &qword_12DC38, &qword_F14D0);
  *v22 = v23;
  v22[1] = v24;
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  v30 = *(v0 + 32);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_21F1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21FA8;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_21FA8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_220E4, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_220FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E338;

  return v6();
}

uint64_t sub_221E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return DefaultLibraryListQuery.entities(matching:)(a2, a3);
}

uint64_t sub_22288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E340;

  return DefaultLibraryListQuery.entities(for:)(a1);
}

uint64_t sub_2231C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_223AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_26080();
  *v6 = v2;
  v6[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_22460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return DefaultLibraryListQuery.defaultResult()(a1);
}

uint64_t sub_22534(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2321C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22664(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_234F4(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_227FC()
{
  v1 = v0;
  v57 = type metadata accessor for ShowEntity(0);
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v57);
  v58 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v56 = v48 - v11;
  __chkstk_darwin(v10);
  v13 = v48 - v12;
  v14 = *v0;
  v15 = *(*v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = v14[3] >> 1, v17 < v15))
  {
    v14 = sub_234F4(isUniquelyReferenced_nonNull_native, v15, 1, v14, &qword_12DA80, &qword_E9D98, type metadata accessor for ShowEntity);
    v17 = v14[3] >> 1;
  }

  v18 = v14[2];
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = *(v2 + 72);
  v21 = v17 - v18;
  sub_25AA8(&v64, v14 + v19 + v20 * v18, v17 - v18);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v22)
    {
      v23 = v14[2];
      v24 = __OFADD__(v23, v22);
      v25 = v23 + v22;
      if (v24)
      {
        __break(1u);
        goto LABEL_15;
      }

      v14[2] = v25;
    }

    if (v22 != v21)
    {
      v61 = v66;
      v62 = v67;
      v63 = v68;
      v59 = v64;
      v60 = v65;
      v26 = &qword_12DCE0;
      v27 = &qword_EA510;
      v28 = &v59;
      goto LABEL_10;
    }
  }

  v54 = v14[2];
  sub_25D38();
  v49 = *(&v67 + 1);
  v48[1] = v68;
  if (!v30)
  {
LABEL_15:
    v32 = *(v2 + 56);
    v33 = v13;
    v34 = 1;
    goto LABEL_16;
  }

  *&v59 = v30;
  v31 = v30;
  (*(&v67 + 1))(&v59);

  v32 = *(v2 + 56);
  v33 = v13;
  v34 = 0;
LABEL_16:
  v35 = v57;
  v51 = v32;
  v32(v33, v34, 1, v57);
  v36 = v56;
  sub_26324(v13, v56, &qword_12DCD8, &unk_EC540);
  v53 = *(v2 + 48);
  if (v53(v36, 1, v35) != 1)
  {
    v50 = v2 + 56;
    v37 = v57;
    do
    {
      sub_110AC(v36, &qword_12DCD8, &unk_EC540);
      v38 = v14[3];
      v39 = v38 >> 1;
      v40 = v54;
      if ((v38 >> 1) < v54 + 1)
      {
        v14 = sub_234F4(v38 > 1, v54 + 1, 1, v14, &qword_12DA80, &qword_E9D98, type metadata accessor for ShowEntity);
        v39 = v14[3] >> 1;
      }

      sub_26324(v13, v9, &qword_12DCD8, &unk_EC540);
      if (v53(v9, 1, v37) == 1)
      {
LABEL_19:
        sub_110AC(v9, &qword_12DCD8, &unk_EC540);
        v54 = v40;
      }

      else
      {
        if (v40 <= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        v52 = v41;
        v55 = v14 + v19 + v20 * v40;
        v42 = v58;
        while (1)
        {
          sub_2638C(v9, v42, type metadata accessor for ShowEntity);
          v54 = v40;
          if (v52 == v40)
          {
            break;
          }

          sub_110AC(v13, &qword_12DCD8, &unk_EC540);
          sub_2638C(v42, v55, type metadata accessor for ShowEntity);
          sub_25D38();
          if (v47)
          {
            v43 = v47;
            *&v59 = v47;
            v49(&v59);

            v44 = v13;
            v45 = 0;
          }

          else
          {
            v44 = v13;
            v45 = 1;
          }

          v37 = v57;
          v51(v44, v45, 1, v57);
          sub_26324(v13, v9, &qword_12DCD8, &unk_EC540);
          v46 = v53(v9, 1, v37);
          v55 += v20;
          v40 = v54 + 1;
          v42 = v58;
          if (v46 == 1)
          {
            goto LABEL_19;
          }
        }

        v40 = v52;
        sub_263F4(v42, type metadata accessor for ShowEntity);
        v54 = v40;
      }

      v14[2] = v40;
      v36 = v56;
      sub_26324(v13, v56, &qword_12DCD8, &unk_EC540);
    }

    while (v53(v36, 1, v37) != 1);
  }

  sub_110AC(v13, &qword_12DCD8, &unk_EC540);
  v61 = v66;
  v62 = v67;
  v63 = v68;
  v59 = v64;
  v60 = v65;
  sub_110AC(&v59, &qword_12DCE0, &qword_EA510);
  v28 = v36;
  v26 = &qword_12DCD8;
  v27 = &unk_EC540;
LABEL_10:
  result = sub_110AC(v28, v26, v27);
  *v1 = v14;
  return result;
}

void *sub_22EB8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23AE0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_23118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAE0, &qword_E9E10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_2321C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD0, &unk_E9DF0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_23350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCB8, &unk_EA4E0);
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_234F4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
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

size_t sub_236D0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA8, &unk_E9DC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
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

char *sub_238C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_239C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAB0, &qword_E9DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23AE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA98, &unk_E9DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCA8, &qword_EA4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCB0, &qword_EA4D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23D5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
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

uint64_t sub_23E08(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23E64(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23E64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23F30(v11, 0, 0, 1, a1, a2);
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
    sub_26454(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23F30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2403C(a5, a6);
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
    result = sub_E79D4();
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

char *sub_2403C(uint64_t a1, unint64_t a2)
{
  v4 = sub_24088(a1, a2);
  sub_241B8(&off_11F888);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_24088(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_242A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_E79D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_E7144();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_242A4(v10, 0);
        result = sub_E7974();
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

uint64_t sub_241B8(uint64_t result)
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

  result = sub_24318(result, v12, 1, v3);
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

void *sub_242A4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCE8, &unk_EA518);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCE8, &unk_EA518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_2440C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_42BE4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_24538(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    sub_E7CC4();

    sub_E7124();
    v24 = sub_E7CF4();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_E7BD4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_428D0(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            sub_E7CC4();

            sub_E7124();
            v43 = sub_E7CF4();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_E7BD4() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_24B54(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_25DE0();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t *sub_24B54(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_428D0(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_E7CC4();

        sub_E7124();
        v20 = sub_E7CF4();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_E7BD4() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_24D8C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_CA2F4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24DF8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_24DF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_E7BA4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAC8, &qword_EA550);
        v5 = sub_E7264();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25014(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_24F00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_26028();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v19 = *v13;
      v20 = *(v13 + 8);
      result = sub_E7834();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 32;
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

      v14 = *(v13 + 32);
      v15 = *(v13 + 56);
      v16 = *(v13 + 40);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v14;
      *(v13 + 8) = v16;
      *(v13 + 24) = v15;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25014(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v97 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v98 = v6;
        v13 = (*a3 + 32 * v12);
        v14 = 32 * v11;
        v15 = (*a3 + 32 * v11);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15 + 9;
        v109 = *v13;
        v111 = v13[1];
        sub_26028();
        result = sub_E7834();
        v19 = v11;
        v20 = result;
        v100 = v19;
        v4 = v19 + 2;
        while (v8 != v4)
        {
          v110 = *(v18 - 1);
          v112 = *v18;
          v105 = *(v18 - 5);
          v107 = *(v18 - 4);
          result = sub_E7834();
          ++v4;
          v18 += 4;
          if ((v20 == -1) == (result != -1))
          {
            v8 = v4 - 1;
            break;
          }
        }

        if (v20 == -1)
        {
          v11 = v100;
          v7 = v97;
          if (v8 < v100)
          {
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
LABEL_129:
            __break(1u);
            return result;
          }

          if (v100 < v8)
          {
            v21 = 32 * v8 - 8;
            v22 = v8;
            v23 = v100;
            do
            {
              if (v23 != --v22)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v24 = (v30 + v14);
                v25 = (v30 + v21);
                v26 = *v24;
                v27 = v24[3];
                v28 = *(v24 + 1);
                v29 = *(v25 - 1);
                *v24 = *(v25 - 3);
                *(v24 + 1) = v29;
                *(v25 - 3) = v26;
                *(v25 - 1) = v28;
                *v25 = v27;
              }

              ++v23;
              v21 -= 32;
              v14 += 32;
            }

            while (v23 < v22);
          }

          v6 = v98;
        }

        else
        {
          v7 = v97;
          v6 = v98;
          v11 = v100;
        }
      }

      v31 = a3[1];
      if (v8 >= v31)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_120;
      }

      if (v11 + a4 < v31)
      {
        v31 = v11 + a4;
      }

      if (v31 < v11)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v31)
      {
LABEL_29:
        v32 = v8;
      }

      else
      {
        v103 = v31;
        v99 = v6;
        v78 = v11;
        v79 = *a3;
        sub_26028();
        v80 = v79 + 32 * v8 - 32;
        v101 = v78;
        v4 = v78 - v8;
        do
        {
          v81 = (v79 + 32 * v8);
          v82 = *v81;
          v83 = v81[1];
          v84 = v4;
          v85 = v80;
          do
          {
            v106 = *v85;
            v108 = *(v85 + 8);
            result = sub_E7834();
            if (result != -1)
            {
              break;
            }

            if (!v79)
            {
              goto LABEL_124;
            }

            v86 = *(v85 + 32);
            v87 = *(v85 + 56);
            v88 = *(v85 + 40);
            v89 = *(v85 + 16);
            *(v85 + 32) = *v85;
            *(v85 + 48) = v89;
            *v85 = v86;
            *(v85 + 8) = v88;
            *(v85 + 24) = v87;
            v85 -= 32;
          }

          while (!__CFADD__(v84++, 1));
          ++v8;
          v80 += 32;
          --v4;
        }

        while (v8 != v103);
        v7 = v97;
        v6 = v99;
        v11 = v101;
        v32 = v103;
      }

      if (v32 < v11)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23350(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v33 = *(v10 + 3);
      v34 = v4 + 1;
      if (v4 >= v33 >> 1)
      {
        result = sub_23350((v33 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v34;
      v35 = &v10[16 * v4];
      *(v35 + 4) = v11;
      *(v35 + 5) = v32;
      v36 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v102 = v32;
      if (v4)
      {
        while (1)
        {
          v37 = v34 - 1;
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v38 = *(v10 + 4);
            v39 = *(v10 + 5);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_50:
            if (v41)
            {
              goto LABEL_107;
            }

            v54 = &v10[16 * v34];
            v56 = *v54;
            v55 = *(v54 + 1);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_110;
            }

            v60 = &v10[16 * v37 + 32];
            v62 = *v60;
            v61 = *(v60 + 1);
            v48 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v48)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v58, v63))
            {
              goto LABEL_114;
            }

            if (v58 + v63 >= v40)
            {
              if (v40 < v63)
              {
                v37 = v34 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          v64 = &v10[16 * v34];
          v66 = *v64;
          v65 = *(v64 + 1);
          v48 = __OFSUB__(v65, v66);
          v58 = v65 - v66;
          v59 = v48;
LABEL_64:
          if (v59)
          {
            goto LABEL_109;
          }

          v67 = &v10[16 * v37];
          v69 = *(v67 + 4);
          v68 = *(v67 + 5);
          v48 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v48)
          {
            goto LABEL_112;
          }

          if (v70 < v58)
          {
            goto LABEL_3;
          }

LABEL_71:
          v75 = v37 - 1;
          if (v37 - 1 >= v34)
          {
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
            goto LABEL_125;
          }

          v4 = *&v10[16 * v75 + 32];
          v76 = *&v10[16 * v37 + 40];
          sub_256C0((*a3 + 32 * v4), (*a3 + 32 * *&v10[16 * v37 + 32]), (*a3 + 32 * v76), v36);
          if (v6)
          {
          }

          if (v76 < v4)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_CA134(v10);
          }

          if (v75 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v77 = &v10[16 * v75];
          *(v77 + 4) = v4;
          *(v77 + 5) = v76;
          result = sub_CA0A8(v37);
          v34 = *(v10 + 2);
          if (v34 <= 1)
          {
            goto LABEL_3;
          }
        }

        v42 = &v10[16 * v34 + 32];
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_105;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_106;
        }

        v49 = &v10[16 * v34];
        v51 = *v49;
        v50 = *(v49 + 1);
        v48 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v48)
        {
          goto LABEL_108;
        }

        v48 = __OFADD__(v40, v52);
        v53 = v40 + v52;
        if (v48)
        {
          goto LABEL_111;
        }

        if (v53 >= v45)
        {
          v71 = &v10[16 * v37 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v48 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v48)
          {
            goto LABEL_115;
          }

          if (v40 < v74)
          {
            v37 = v34 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v102;
      if (v102 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_90:
  v91 = v7;
  v7 = v6;
  v6 = *v91;
  if (!*v91)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = a3;
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_CA134(v10);
    v10 = result;
  }

  v92 = *(v10 + 2);
  if (v92 >= 2)
  {
    while (1)
    {
      v93 = *v4;
      if (!*v4)
      {
        goto LABEL_126;
      }

      v4 = *&v10[16 * v92];
      v94 = *&v10[16 * v92 + 24];
      sub_256C0((v93 + 32 * v4), (v93 + 32 * *&v10[16 * v92 + 16]), (v93 + 32 * v94), v6);
      if (v7)
      {
      }

      if (v94 < v4)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_CA134(v10);
      }

      if (v92 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v95 = &v10[16 * v92];
      *v95 = v4;
      *(v95 + 1) = v94;
      result = sub_CA0A8(v92 - 1);
      v92 = *(v10 + 2);
      v4 = a3;
      if (v92 <= 1)
      {
      }
    }
  }
}

uint64_t sub_256C0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_26028();
LABEL_27:
      v25 = v6 - 32;
      v5 -= 32;
      v18 = v14;
      do
      {
        v19 = v5 + 32;
        v20 = *(v18 - 4);
        v21 = *(v18 - 3);
        v18 -= 32;
        v27 = *(v6 - 4);
        v29 = *(v6 - 3);
        if (sub_E7834() == -1)
        {
          if (v19 != v6)
          {
            v23 = *(v6 - 1);
            *v5 = *v25;
            *(v5 + 1) = v23;
          }

          if (v14 <= v4 || (v6 -= 32, v25 <= v7))
          {
            v6 = v25;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          v22 = *(v18 + 1);
          *v5 = *v18;
          *(v5 + 1) = v22;
        }

        v5 -= 32;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      memmove(a4, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_26028();
      while (1)
      {
        v30 = *v6;
        v31 = *(v6 + 1);
        v26 = *v4;
        v28 = *(v4 + 1);
        if (sub_E7834() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

void *sub_25950(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_25AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ShowEntity(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = *v3;
  v15 = v3[1];
  v17 = v3[2];
  v16 = v3[3];
  v19 = v3[4];
  v18 = v3[5];
  v21 = v3[6];
  v20 = v3[7];
  if (!a2)
  {
LABEL_16:
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v17;
    a1[3] = v16;
    a1[4] = v17;
LABEL_20:
    a1[5] = v19;
    a1[6] = v18;
    a1[7] = v21;
    a1[8] = v20;
    return;
  }

  v22 = v3[2];
  if (!a3)
  {
LABEL_19:
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v17;
    a1[3] = v16;
    a1[4] = v22;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v48 = v3[7];
    v49 = v18;
    v39 = v13;
    v40 = v11;
    v41 = a3;
    v42 = v14;
    v47 = v21;
    v43 = v16;
    v44 = a1;
    v20 = 0;
    v23 = (v16 >> 1);
    v24 = 1;
    v25 = v17;
    v38 = v10;
    while (2)
    {
      v45 = a2;
      v46 = v20;
      if (v25 == v23)
      {
LABEL_17:
        v34 = v44;
        v35 = v43;
        *v44 = v42;
        v34[1] = v15;
        v34[2] = v17;
        v34[3] = v35;
        v34[4] = v23;
        v34[5] = v19;
        v36 = v47;
        v34[6] = v49;
        v34[7] = v36;
        v34[8] = v48;
        return;
      }

      v26 = v25;
      while (1)
      {
        if (v25 < v17 || v26 >= v23)
        {
          __break(1u);
          goto LABEL_22;
        }

        v27 = v15;
        a1 = (v26 + 1);
        v50 = *(v15 + 8 * v26);
        v28 = v50;
        if (v19(&v50))
        {
          break;
        }

        ++v26;
        v15 = v27;
        if (v23 == a1)
        {
          goto LABEL_17;
        }
      }

      v50 = v28;
      v29 = v40;
      v47(&v50);

      v30 = v29;
      v31 = v39;
      sub_2638C(v30, v39, type metadata accessor for ShowEntity);
      v32 = v45;
      sub_2638C(v31, v45, type metadata accessor for ShowEntity);
      if (v24 == v41)
      {
        v22 = v26 + 1;
        v16 = v43;
        a1 = v44;
        v21 = v47;
        v20 = v48;
        v14 = v42;
        v18 = v49;
        v15 = v27;
        goto LABEL_19;
      }

      a2 = v32 + *(v38 + 72);
      v20 = v24;
      v25 = (v26 + 1);
      v33 = __OFADD__(v24++, 1);
      v15 = v27;
      if (!v33)
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

void sub_25D38()
{
  v1 = v0[4];
  v2 = v0[3] >> 1;
  if (v1 != v2)
  {
    v3 = v0;
    while (v1 < v2 && v1 >= v3[2])
    {
      v4 = *(v3[1] + 8 * v1);
      v3[4] = v1 + 1;
      v8 = v4;
      v6 = v3[5];
      v5 = v3[6];
      v7 = v4;
      if ((v6(&v8) & 1) == 0)
      {

        v1 = v3[4];
        if (v1 != v2)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_25DE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_E7BD4() & 1;
  }
}

uint64_t sub_25E40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25E78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_1F41C(a1, v4);
}

unint64_t sub_25F18()
{
  result = qword_12DC48;
  if (!qword_12DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC48);
  }

  return result;
}

unint64_t sub_25F6C()
{
  result = qword_12DC58;
  if (!qword_12DC58)
  {
    type metadata accessor for StationEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC58);
  }

  return result;
}

uint64_t sub_25FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26028()
{
  result = qword_12DDC0;
  if (!qword_12DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DDC0);
  }

  return result;
}

unint64_t sub_26080()
{
  result = qword_12DC60;
  if (!qword_12DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC60);
  }

  return result;
}

unint64_t sub_260D8()
{
  result = qword_12DC68;
  if (!qword_12DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC68);
  }

  return result;
}

unint64_t sub_26130()
{
  result = qword_12DC70;
  if (!qword_12DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC70);
  }

  return result;
}

unint64_t sub_26188()
{
  result = qword_12DC78;
  if (!qword_12DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC78);
  }

  return result;
}

unint64_t sub_261E0()
{
  result = qword_12DC80;
  if (!qword_12DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC80);
  }

  return result;
}

unint64_t sub_26238()
{
  result = qword_12DC88;
  if (!qword_12DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC88);
  }

  return result;
}

unint64_t sub_26290()
{
  result = qword_12DC90;
  if (!qword_12DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12DC98, qword_EA3D0);
    sub_26238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC90);
  }

  return result;
}

uint64_t sub_26324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2638C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_263F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_264B0()
{
  result = qword_12DB00;
  if (!qword_12DB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12DB00);
  }

  return result;
}

uint64_t sub_264FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_26550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265DC;

  return sub_21F1C();
}

uint64_t sub_265DC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_266D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_26710(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_220FC(a1, v5);
}

void (*EpisodeEntity.EpisodeEntityQuery.objectGraph.modify(uint64_t *a1))(void *a1)
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

uint64_t EpisodeEntity.EpisodeEntityQuery.predicate(forAdamIDs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_E7A14();
    v3 = v2 + 56;
    v4 = -1 << *(v2 + 32);
    result = sub_E7884();
    v6 = result;
    v7 = 0;
    v23 = v2 + 64;
    v24 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_20;
      }

      v10 = *(v2 + 36);
      [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(*(v2 + 48) + 8 * v6)];
      v11 = v2;
      sub_E79E4();
      v12 = _swiftEmptyArrayStorage[2];
      sub_E7A24();
      sub_E7A34();
      result = sub_E79F4();
      v8 = 1 << *(v2 + 32);
      if (v6 >= v8)
      {
        goto LABEL_21;
      }

      v13 = *(v3 + 8 * v9);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v10 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v8 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v9 << 6;
        v16 = v9 + 1;
        v17 = (v23 + 8 * v9);
        while (v16 < (v8 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_1E32C(v6, v10, 0);
            v8 = __clz(__rbit64(v18)) + v15;
            goto LABEL_17;
          }
        }

        result = sub_1E32C(v6, v10, 0);
LABEL_17:
        v2 = v11;
      }

      ++v7;
      v6 = v8;
      if (v7 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:
    v20 = objc_opt_self();
    sub_10E40(_swiftEmptyArrayStorage);

    sub_26E5C();
    sub_27128(&qword_12DA50, sub_26E5C);
    isa = sub_E73A4().super.isa;

    v22 = [v20 predicateForEpisodeStoreTrackIds:isa];

    return v22;
  }

  return result;
}

id EpisodeEntity.EpisodeEntityQuery.predicate(forUuids:)()
{
  v0 = objc_opt_self();
  isa = sub_E73A4().super.isa;
  v2 = [v0 predicateForEpisodeUuids:isa];

  return v2;
}

uint64_t sub_26B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return (sub_27B5C)(a2, a3);
}

uint64_t sub_26C40(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return (sub_28ED8)(a1, v4);
}

uint64_t sub_26CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to EntityQuery.suggestedEntities()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_588C;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_26DA8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_26F3C();
  *v6 = v2;
  v6[1] = sub_5E10;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_26E5C()
{
  result = qword_12DD80;
  if (!qword_12DD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12DD80);
  }

  return result;
}

unint64_t sub_26F3C()
{
  result = qword_12DD48;
  if (!qword_12DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD48);
  }

  return result;
}

unint64_t sub_26F94()
{
  result = qword_12DD50;
  if (!qword_12DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD50);
  }

  return result;
}

unint64_t sub_26FEC()
{
  result = qword_12DD58;
  if (!qword_12DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD58);
  }

  return result;
}

unint64_t sub_2708C()
{
  result = qword_12DD60;
  if (!qword_12DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD60);
  }

  return result;
}

uint64_t sub_27128(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27174()
{
  result = qword_12DD70;
  if (!qword_12DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E010, qword_EA628);
    sub_27128(&qword_12DD68, type metadata accessor for EpisodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD70);
  }

  return result;
}

uint64_t sub_27228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

unint64_t *sub_2727C(void (*a1)(__int128 *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v22 = &_swiftEmptyArrayStorage;
    sub_15D58(0, v5, 0);
    v6 = &_swiftEmptyArrayStorage;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v19[0] = *(i - 1);
      v19[1] = v10;

      a1(&v20, v19, &v18);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v20;
      v12 = v21;
      v22 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        v17 = v20;
        sub_15D58((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v6 = v22;
      }

      v6[2] = v14 + 1;
      v15 = &v6[3 * v14];
      *(v15 + 2) = v11;
      *(v15 + 48) = v12;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void *sub_273C0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_15D18(0, v2, 0);
    v4 = &_swiftEmptyArrayStorage;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_E7884();
    v7 = result;
    v8 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v31 = *(*(v1 + 48) + 8 * v7);
      result = sub_E7BB4();
      v11 = result;
      v13 = v12;
      v14 = v4;
      v32 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_15D18((v16 > 1), v17 + 1, 1);
        v14 = v32;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v11;
      v18[5] = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1E32C(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1E32C(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
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

uint64_t sub_27604(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(type metadata accessor for ChannelEntity() - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_276C0, 0, 0);
}

uint64_t sub_276C0()
{
  if (qword_12CA88 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_E6014();
  __swift_project_value_buffer(v3, qword_12E540);
  v4 = sub_E6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_E87F0;

  *(v5 + 32) = sub_E6284();
  v6 = objc_allocWithZone(sub_E6134());
  v7 = sub_E6114();
  v0[7] = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E070, &qword_EAC48);
  *v10 = v0;
  v10[1] = sub_27888;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_3C6D4, v8, v11);
}

uint64_t sub_27888()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_3CA90;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_279A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

size_t sub_279A4()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = *(v0 + 16);
    }

    v2 = sub_E7AC4();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = sub_15D78(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 40);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_E79B4();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    ChannelEntity.init(mediaObject:)(v6, *(v0 + 48));
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_15D78(v7 > 1, v8 + 1, 1);
    }

    v9 = *(v0 + 48);
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    sub_3C878(v9, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, type metadata accessor for ChannelEntity);
  }

  while (v2 != v4);
LABEL_15:

  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_27B5C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(type metadata accessor for EpisodeEntity(0) - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_27C18, 0, 0);
}

uint64_t sub_27C18()
{
  if (qword_12CAC0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_E6014();
  __swift_project_value_buffer(v3, qword_12E8C0);
  v4 = sub_E6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_E87F0;

  *(v5 + 32) = sub_E6284();
  v6 = objc_allocWithZone(sub_E6134());
  v7 = sub_E6114();
  v0[7] = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E030, &qword_EABF8);
  *v10 = v0;
  v10[1] = sub_27DE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_3C4AC, v8, v11);
}

uint64_t sub_27DE0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_3CA90;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_27EFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

size_t sub_27EFC()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = *(v0 + 16);
    }

    v2 = sub_E7AC4();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = sub_15E40(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 40);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_E79B4();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    EpisodeEntity.init(mediaObject:)(v6, *(v0 + 48));
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_15E40(v7 > 1, v8 + 1, 1);
    }

    v9 = *(v0 + 48);
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    sub_3C878(v9, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, type metadata accessor for EpisodeEntity);
  }

  while (v2 != v4);
LABEL_15:

  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_280B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(type metadata accessor for ShowEntity(0) - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_28170, 0, 0);
}

uint64_t sub_28170()
{
  if (qword_12CAF8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_E6014();
  __swift_project_value_buffer(v3, qword_12EC38);
  v4 = sub_E6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_E87F0;

  *(v5 + 32) = sub_E6284();
  v6 = objc_allocWithZone(sub_E6134());
  v7 = sub_E6114();
  v0[7] = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE8, &qword_EABA8);
  *v10 = v0;
  v10[1] = sub_28338;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_3C364, v8, v11);
}

uint64_t sub_28338()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2860C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_28454;
  }

  return _swift_task_switch(v4, 0, 0);
}

size_t sub_28454()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = *(v0 + 16);
    }

    v2 = sub_E7AC4();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = sub_15E84(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 40);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_E79B4();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    ShowEntity.init(mediaObject:)(v6, *(v0 + 48));
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_15E84(v7 > 1, v8 + 1, 1);
    }

    v9 = *(v0 + 48);
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    sub_3C878(v9, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, type metadata accessor for ShowEntity);
  }

  while (v2 != v4);
LABEL_15:

  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_2860C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_28684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_E6124();
}

uint64_t sub_287CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  if (a1)
  {
    v11 = [swift_unknownObjectRetain() itemsFor:a3];
    v12 = sub_E71F4();

    v13 = sub_288F8(v12, a5);

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      sub_E72B4();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    sub_18814();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  return sub_E72A4();
}

void *sub_288F8(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_E7AC4();
    sub_E7A14();
    v5 = sub_E7AC4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    sub_E7A14();
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_E79B4();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_E79E4();
        v9 = _swiftEmptyArrayStorage[2];
        sub_E7A24();
        sub_E7A34();
        sub_E79F4();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_28A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_28A90, 0, 0);
}

uint64_t sub_28A90()
{
  v1 = v0[2];

  v0[4] = sub_10C40(v2);

  v3 = type metadata accessor for ChannelEntity();
  sub_3B7DC(&qword_12E040, type metadata accessor for ChannelEntity);
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, v3);
  v5 = sub_297A8(v4, sub_3C690);
  v7 = v6;
  v9 = v8;
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_28C58;
  v11 = v0[3];

  return sub_29944(v5, v7, v9, v11);
}

uint64_t sub_28C58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  v7 = v3[7];
  if (v1)
  {
    v8 = v4[4];

    v9 = v4[5];
    v10 = v4[6];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    v13 = v4[5];
    v14 = v4[6];

    return _swift_task_switch(sub_28DF4, 0, 0);
  }
}

uint64_t sub_28DF4()
{
  v1 = v0[10];
  sub_E7384();
  v2 = v0[9];
  v3 = v0[4];
  if (v1)
  {
    v4 = v0[4];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = sub_3CA98(v0[9], v0[4]);

    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_28ED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_28EF8, 0, 0);
}

uint64_t sub_28EF8()
{
  v1 = v0[2];

  v0[4] = sub_10C40(v2);

  v3 = type metadata accessor for EpisodeEntity(0);
  sub_3B7DC(&qword_12E000, type metadata accessor for EpisodeEntity);
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, v3);
  v5 = sub_297A8(v4, sub_3C468);
  v7 = v6;
  v9 = v8;
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_290C0;
  v11 = v0[3];

  return sub_2AE90(v5, v7, v9, v11);
}

uint64_t sub_290C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  v7 = v3[7];
  if (v1)
  {
    v8 = v4[4];

    v9 = v4[5];
    v10 = v4[6];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    v13 = v4[5];
    v14 = v4[6];

    return _swift_task_switch(sub_2925C, 0, 0);
  }
}

uint64_t sub_2925C()
{
  v1 = v0[10];
  sub_E7384();
  v2 = v0[9];
  v3 = v0[4];
  if (v1)
  {
    v4 = v0[4];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = sub_3D1D8(v0[9], v0[4]);

    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_29340(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_29360, 0, 0);
}

uint64_t sub_29360()
{
  v1 = v0[2];

  v0[4] = sub_10C40(v2);

  v3 = type metadata accessor for ShowEntity(0);
  sub_3B7DC(&qword_12DDF0, type metadata accessor for ShowEntity);
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, v3);
  v5 = sub_297A8(v4, sub_3C320);
  v7 = v6;
  v9 = v8;
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_29528;
  v11 = v0[3];

  return sub_2C3C4(v5, v7, v9, v11);
}

uint64_t sub_29528(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  v7 = v3[7];
  if (v1)
  {
    v8 = v4[4];

    v9 = v4[5];
    v10 = v4[6];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    v13 = v4[5];
    v14 = v4[6];

    return _swift_task_switch(sub_296C4, 0, 0);
  }
}

uint64_t sub_296C4()
{
  v1 = v0[10];
  sub_E7384();
  v2 = v0[9];
  v3 = v0[4];
  if (v1)
  {
    v4 = v0[4];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = sub_3D578(v0[9], v0[4]);

    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_297A8(uint64_t a1, void (*a2)(__int128 *__return_ptr, void *, uint64_t *))
{
  v15 = &v17;
  sub_2727C(a2, v14, a1);
  if (!v3)
  {
    v4 = sub_E7224();
    v2 = v5;

    sub_10C40(v6);

    v7 = *(v4 + 16);
    if (v7)
    {
      v16 = _swiftEmptyArrayStorage;
      sub_15D38(0, v7, 0);
      v8 = v16;
      v9 = v16[2];
      v10 = 32;
      do
      {
        v11 = *(v4 + v10);
        v16 = v8;
        v12 = v8[3];
        if (v9 >= v12 >> 1)
        {
          sub_15D38((v12 > 1), v9 + 1, 1);
          v8 = v16;
        }

        v8[2] = v9 + 1;
        v8[v9 + 4] = v11;
        v10 += 8;
        ++v9;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = _swiftEmptyArrayStorage;
    }

    sub_10DCC(v8);
  }

  return v2;
}

uint64_t sub_29944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v4[12] = a1;
  v6 = sub_E6974();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for ChannelEntity();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v12 = sub_E7724();
  v4[26] = v12;
  v13 = *(v12 - 8);
  v4[27] = v13;
  v14 = *(v13 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_29B04, 0, 0);
}

uint64_t sub_29B04()
{
  v0[4] = v0[14];
  v0[3] = v0[13];
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);

  v1 = sub_E7774();
  v2 = sub_E7754();
  v0[29] = v2;
  v3 = v2;

  v0[5] = v0[2];
  if (qword_12CA80 != -1)
  {
    swift_once();
  }

  v5 = v0[27];
  v4 = v0[28];
  v22 = v0[26];
  v6 = v0[14];
  v7 = v0[12];
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_E7024();
  v10 = [v8 initWithEntityName:v9];
  v0[30] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v11 + 32) = sub_E7544();
  v12 = sub_3C530();
  v0[31] = v12;
  *(v11 + 40) = (*(v12 + 48))(v6, &type metadata for ChannelEntity.ChannelEntityQuery, v12);
  *(v11 + 48) = [objc_opt_self() falsePredicate];
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v14 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v10 setPredicate:v14];
  v15 = swift_allocObject();
  v0[32] = v15;
  *(v15 + 16) = v3;
  *(v15 + 24) = v10;
  (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v22);
  v16 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v3;
  v17 = v10;
  v18 = swift_task_alloc();
  v0[33] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E050, &qword_EA0E0);
  *v18 = v0;
  v18[1] = sub_29F30;
  v20 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v20, sub_3C5C4, v15, v19);
}

uint64_t sub_29F30()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = v2[32];
  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v6 = sub_3CA58;
  }

  else
  {
    v6 = sub_2A0B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_2A0B4()
{
  v98 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = 0;
  v6 = *(v0 + 48);
  v1[35] = v6;
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v95 = v6;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v9 = v1[25];
    sub_3C628(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5++, v9, type metadata accessor for ChannelEntity);
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);

    sub_3C8E0(v9, type metadata accessor for ChannelEntity);
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22FBC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22FBC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v6 = v95;
    }
  }

  sub_3DA98(v8);

  v15 = *(v6 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v93 = v1[24];
    v97[0] = _swiftEmptyArrayStorage;
    sub_15D38(0, v15, 0);
    v17 = 0;
    v16 = _swiftEmptyArrayStorage;
    v18 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v17 < *(v6 + 16))
    {
      v19 = v1;
      v20 = v1[24];
      sub_3C628(v18 + *(v4 + 72) * v17, v20, type metadata accessor for ChannelEntity);
      v21 = *(v93 + 40);
      sub_3C8E0(v20, type metadata accessor for ChannelEntity);
      v97[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_15D38((v22 > 1), v23 + 1, 1);
        v16 = v97[0];
      }

      ++v17;
      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v1 = v19;
      v6 = v95;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_44;
  }

LABEL_16:
  if (*(v1[14] + 16) && (v24 = v16[2]) != 0)
  {
    v25 = v1;
    v26 = 4;
    do
    {
      sub_42AF4(v16[v26++]);
      --v24;
    }

    while (v24);

    v1 = v25;
  }

  else
  {
  }

  v27 = v1[3];
  v1[36] = v27;
  v1[7] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_3C2A0(&qword_12DB70, &unk_12DF70, &qword_E9E80);
  if (sub_E7404() & 1) != 0 || (v1[8] = v1[4], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88), (sub_E7404()))
  {
    v28 = v1[34];
    sub_E7384();
    if (v28)
    {

      v29 = v1[4];

      v30 = v1[28];
      v31 = v1;
      v34 = v1 + 24;
      v32 = v1[24];
      v33 = v34[1];
      v35 = v31[23];
      v37 = v31[19];
      v36 = v31[20];
      v39 = v31[17];
      v38 = v31[18];

      v40 = v31[1];

      v40();
    }

    else
    {
      v96 = v1;
      v41 = v1[20];
      sub_E6914();
      v42 = sub_E6964();
      v43 = sub_E7494();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "Some entities are lingering, checking remote source for episode content.", v44, 2u);
      }

      v45 = v96[20];
      v46 = v96[15];
      v47 = v96[16];

      v48 = *(v47 + 8);
      v96[37] = v48;
      v49 = v45;
      v50 = v96;
      v48(v49, v46);
      v96[9] = v27;
      if (sub_E7404())
      {
        v51 = v96[19];
        sub_E6914();
        v52 = sub_E6964();
        v53 = sub_E74B4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v96[21];
          v55 = v96[16];
          v92 = v96[15];
          v94 = v96[19];
          v56 = swift_slowAlloc();
          v97[0] = swift_slowAlloc();
          *v56 = 136315394;
          v96[11] = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E058, &qword_EAC28);
          v57 = sub_E7084();
          v59 = sub_23E64(v57, v58, v97);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;

          v60 = sub_E73B4();
          v62 = v61;

          v63 = sub_23E64(v60, v62, v97);

          *(v56 + 14) = v63;
          _os_log_impl(&dword_0, v52, v53, "Failed to find requested local entities (%s) with identifiers: %s", v56, 0x16u);
          swift_arrayDestroy();
          v50 = v96;

          v65 = v92;
          v64 = v94;
        }

        else
        {
          v83 = v96[19];
          v84 = v96[16];
          v85 = v96[15];

          v64 = v83;
          v50 = v96;
          v65 = v85;
        }

        v48(v64, v65);
      }

      v86 = v50;
      v87 = v50[31];
      v86[38] = v86[4];

      v89 = sub_273C0(v88);
      v86[39] = v89;

      v90 = (*(v87 + 40))(&type metadata for ChannelEntity.ChannelEntityQuery, v87);
      v86[40] = v90;
      v91 = swift_task_alloc();
      v86[41] = v91;
      *v91 = v86;
      v91[1] = sub_2A98C;

      sub_2D9D8(v89, v90);
    }
  }

  else
  {
    v66 = v1[17];
    sub_E6914();
    v67 = sub_E6964();
    v68 = sub_E7494();
    v69 = os_log_type_enabled(v67, v68);
    v71 = v1[16];
    v70 = v1[17];
    v72 = v1[15];
    if (v69)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v67, v68, "Found episodes using local-only identifiers", v73, 2u);
    }

    (*(v71 + 8))(v70, v72);

    v74 = v1[28];
    v76 = v1[24];
    v75 = v1[25];
    v77 = v1[23];
    v79 = v1[19];
    v78 = v1[20];
    v81 = v1[17];
    v80 = v1[18];

    v82 = v1[1];

    v82(v95);
  }
}

uint64_t sub_2A98C(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_2AAC8, 0, 0);
}

uint64_t sub_2AAC8()
{
  v44 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[23];
      sub_3C628(v5, v8, type metadata accessor for ChannelEntity);
      v9 = *(v4 + 40);
      sub_3C8E0(v8, type metadata accessor for ChannelEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23118(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23118((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      *&v7[8 * v11 + 32] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v0[38] + 16))
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = 32;
      do
      {
        sub_42AF4(*&v7[v13]);
        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  v0[10] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88);
  if (sub_E7404())
  {
    v14 = v0[18];
    sub_E6914();
    v15 = sub_E6964();
    v16 = sub_E74B4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[37];
    v19 = v0[18];
    v21 = v0[15];
    v20 = v0[16];
    if (v17)
    {
      v42 = v0[37];
      v22 = swift_slowAlloc();
      v41 = v19;
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136315138;

      v24 = sub_E73B4();
      v26 = v25;

      v27 = sub_23E64(v24, v26, &v43);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v15, v16, "Failed to find requested remote episodes with identifiers: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);

      v42(v41, v21);
    }

    else
    {

      v18(v19, v21);
    }
  }

  v28 = v0[42];
  v29 = v0[36];
  v43 = v0[35];
  sub_224F8(v28);

  v30 = v43;
  v31 = v0[28];
  v33 = v0[24];
  v32 = v0[25];
  v34 = v0[23];
  v36 = v0[19];
  v35 = v0[20];
  v38 = v0[17];
  v37 = v0[18];

  v39 = v0[1];

  return v39(v30);
}

uint64_t sub_2AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v4[12] = a1;
  v6 = sub_E6974();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for EpisodeEntity(0);
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v12 = sub_E7724();
  v4[26] = v12;
  v13 = *(v12 - 8);
  v4[27] = v13;
  v14 = *(v13 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_2B050, 0, 0);
}

uint64_t sub_2B050()
{
  v0[4] = v0[14];
  v0[3] = v0[13];
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);

  v1 = sub_E7774();
  v2 = sub_E7754();
  v0[29] = v2;
  v3 = v2;

  v0[5] = v0[2];
  if (qword_12CAB8 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v22 = v0[26];
  v23 = v0[28];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_E7024();
  v10 = [v8 initWithEntityName:v9];
  v0[30] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v11 + 32) = sub_E7544();
  *(v11 + 40) = EpisodeEntity.EpisodeEntityQuery.predicate(forAdamIDs:)(v6);
  v12 = sub_3C3E8();
  v0[31] = v12;
  *(v11 + 48) = (*(v12 + 56))(v5, &type metadata for EpisodeEntity.EpisodeEntityQuery, v12);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v14 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v10 setPredicate:v14];
  v15 = swift_allocObject();
  v0[32] = v15;
  *(v15 + 16) = v3;
  *(v15 + 24) = v10;
  (*(v4 + 104))(v23, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v22);
  v16 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v3;
  v17 = v10;
  v18 = swift_task_alloc();
  v0[33] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E010, qword_EA628);
  *v18 = v0;
  v18[1] = sub_2B464;
  v20 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v20, sub_3C43C, v15, v19);
}

uint64_t sub_2B464()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = v2[32];
  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v6 = sub_3CA58;
  }

  else
  {
    v6 = sub_2B5E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_2B5E8()
{
  v98 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = 0;
  v6 = *(v0 + 48);
  v1[35] = v6;
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v95 = v6;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v9 = v1[25];
    sub_3C628(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5++, v9, type metadata accessor for EpisodeEntity);
    v11 = *(v3 + 72);
    v10 = *(v3 + 80);

    sub_3C8E0(v9, type metadata accessor for EpisodeEntity);
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22FBC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22FBC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v6 = v95;
    }
  }

  sub_3DA98(v8);

  v15 = *(v6 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v93 = v1[24];
    v97[0] = _swiftEmptyArrayStorage;
    sub_15D38(0, v15, 0);
    v17 = 0;
    v16 = _swiftEmptyArrayStorage;
    v18 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v17 < *(v6 + 16))
    {
      v19 = v1;
      v20 = v1[24];
      sub_3C628(v18 + *(v4 + 72) * v17, v20, type metadata accessor for EpisodeEntity);
      v21 = *(v93 + 88);
      sub_3C8E0(v20, type metadata accessor for EpisodeEntity);
      v97[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_15D38((v22 > 1), v23 + 1, 1);
        v16 = v97[0];
      }

      ++v17;
      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v1 = v19;
      v6 = v95;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_44;
  }

LABEL_16:
  if (*(v1[14] + 16) && (v24 = v16[2]) != 0)
  {
    v25 = v1;
    v26 = 4;
    do
    {
      sub_42AF4(v16[v26++]);
      --v24;
    }

    while (v24);

    v1 = v25;
  }

  else
  {
  }

  v27 = v1[3];
  v1[36] = v27;
  v1[7] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_3C2A0(&qword_12DB70, &unk_12DF70, &qword_E9E80);
  if (sub_E7404() & 1) != 0 || (v1[8] = v1[4], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88), (sub_E7404()))
  {
    v28 = v1[34];
    sub_E7384();
    if (v28)
    {

      v29 = v1[4];

      v30 = v1[28];
      v31 = v1;
      v34 = v1 + 24;
      v32 = v1[24];
      v33 = v34[1];
      v35 = v31[23];
      v37 = v31[19];
      v36 = v31[20];
      v39 = v31[17];
      v38 = v31[18];

      v40 = v31[1];

      v40();
    }

    else
    {
      v96 = v1;
      v41 = v1[20];
      sub_E6914();
      v42 = sub_E6964();
      v43 = sub_E7494();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "Some entities are lingering, checking remote source for episode content.", v44, 2u);
      }

      v45 = v96[20];
      v46 = v96[15];
      v47 = v96[16];

      v48 = *(v47 + 8);
      v96[37] = v48;
      v49 = v45;
      v50 = v96;
      v48(v49, v46);
      v96[9] = v27;
      if (sub_E7404())
      {
        v51 = v96[19];
        sub_E6914();
        v52 = sub_E6964();
        v53 = sub_E74B4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v96[21];
          v55 = v96[16];
          v92 = v96[15];
          v94 = v96[19];
          v56 = swift_slowAlloc();
          v97[0] = swift_slowAlloc();
          *v56 = 136315394;
          v96[11] = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E018, &qword_EABD8);
          v57 = sub_E7084();
          v59 = sub_23E64(v57, v58, v97);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;

          v60 = sub_E73B4();
          v62 = v61;

          v63 = sub_23E64(v60, v62, v97);

          *(v56 + 14) = v63;
          _os_log_impl(&dword_0, v52, v53, "Failed to find requested local entities (%s) with identifiers: %s", v56, 0x16u);
          swift_arrayDestroy();
          v50 = v96;

          v65 = v92;
          v64 = v94;
        }

        else
        {
          v83 = v96[19];
          v84 = v96[16];
          v85 = v96[15];

          v64 = v83;
          v50 = v96;
          v65 = v85;
        }

        v48(v64, v65);
      }

      v86 = v50;
      v87 = v50[31];
      v86[38] = v86[4];

      v89 = sub_273C0(v88);
      v86[39] = v89;

      v90 = (*(v87 + 40))(&type metadata for EpisodeEntity.EpisodeEntityQuery, v87);
      v86[40] = v90;
      v91 = swift_task_alloc();
      v86[41] = v91;
      *v91 = v86;
      v91[1] = sub_2BEC0;

      sub_2DECC(v89, v90);
    }
  }

  else
  {
    v66 = v1[17];
    sub_E6914();
    v67 = sub_E6964();
    v68 = sub_E7494();
    v69 = os_log_type_enabled(v67, v68);
    v71 = v1[16];
    v70 = v1[17];
    v72 = v1[15];
    if (v69)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v67, v68, "Found episodes using local-only identifiers", v73, 2u);
    }

    (*(v71 + 8))(v70, v72);

    v74 = v1[28];
    v76 = v1[24];
    v75 = v1[25];
    v77 = v1[23];
    v79 = v1[19];
    v78 = v1[20];
    v81 = v1[17];
    v80 = v1[18];

    v82 = v1[1];

    v82(v95);
  }
}

uint64_t sub_2BEC0(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_2BFFC, 0, 0);
}

uint64_t sub_2BFFC()
{
  v44 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[23];
      sub_3C628(v5, v8, type metadata accessor for EpisodeEntity);
      v9 = *(v4 + 88);
      sub_3C8E0(v8, type metadata accessor for EpisodeEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23118(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23118((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      *&v7[8 * v11 + 32] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v0[38] + 16))
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = 32;
      do
      {
        sub_42AF4(*&v7[v13]);
        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  v0[10] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88);
  if (sub_E7404())
  {
    v14 = v0[18];
    sub_E6914();
    v15 = sub_E6964();
    v16 = sub_E74B4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[37];
    v19 = v0[18];
    v21 = v0[15];
    v20 = v0[16];
    if (v17)
    {
      v42 = v0[37];
      v22 = swift_slowAlloc();
      v41 = v19;
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136315138;

      v24 = sub_E73B4();
      v26 = v25;

      v27 = sub_23E64(v24, v26, &v43);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v15, v16, "Failed to find requested remote episodes with identifiers: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);

      v42(v41, v21);
    }

    else
    {

      v18(v19, v21);
    }
  }

  v28 = v0[42];
  v29 = v0[36];
  v43 = v0[35];
  sub_22628(v28);

  v30 = v43;
  v31 = v0[28];
  v33 = v0[24];
  v32 = v0[25];
  v34 = v0[23];
  v36 = v0[19];
  v35 = v0[20];
  v38 = v0[17];
  v37 = v0[18];

  v39 = v0[1];

  return v39(v30);
}

uint64_t sub_2C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v4[12] = a1;
  v6 = sub_E6974();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for ShowEntity(0);
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v12 = sub_E7724();
  v4[26] = v12;
  v13 = *(v12 - 8);
  v4[27] = v13;
  v14 = *(v13 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_2C584, 0, 0);
}

uint64_t sub_2C584()
{
  v0[4] = v0[14];
  v0[3] = v0[13];
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);

  v1 = sub_E7774();
  v2 = sub_E7754();
  v0[29] = v2;
  v3 = v2;

  v0[5] = v0[2];
  if (qword_12CAF0 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v22 = v0[26];
  v23 = v0[28];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[12];
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_E7024();
  v10 = [v8 initWithEntityName:v9];
  v0[30] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v11 + 32) = sub_E7544();
  *(v11 + 40) = ShowEntity.ShowEntityQuery.predicate(forAdamIDs:)(v6);
  v12 = sub_3C220();
  v0[31] = v12;
  *(v11 + 48) = (*(v12 + 56))(v5, &type metadata for ShowEntity.ShowEntityQuery, v12);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v14 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v10 setPredicate:v14];
  v15 = swift_allocObject();
  v0[32] = v15;
  *(v15 + 16) = v3;
  *(v15 + 24) = v10;
  (*(v4 + 104))(v23, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v22);
  v16 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v3;
  v17 = v10;
  v18 = swift_task_alloc();
  v0[33] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
  *v18 = v0;
  v18[1] = sub_2C994;
  v20 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v20, sub_3C274, v15, v19);
}

uint64_t sub_2C994()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = v2[32];
  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v6 = sub_2D3F0;
  }

  else
  {
    v6 = sub_2CB18;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_2CB18()
{
  v98 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = 0;
  v6 = *(v0 + 48);
  v1[35] = v6;
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v95 = v6;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v9 = v1[25];
    sub_3C628(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5++, v9, type metadata accessor for ShowEntity);
    v11 = *(v3 + 40);
    v10 = *(v3 + 48);

    sub_3C8E0(v9, type metadata accessor for ShowEntity);
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22FBC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22FBC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v6 = v95;
    }
  }

  sub_3DA98(v8);

  v15 = *(v6 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v93 = v1[24];
    v97[0] = _swiftEmptyArrayStorage;
    sub_15D38(0, v15, 0);
    v17 = 0;
    v16 = _swiftEmptyArrayStorage;
    v18 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v17 < *(v6 + 16))
    {
      v19 = v1;
      v20 = v1[24];
      sub_3C628(v18 + *(v4 + 72) * v17, v20, type metadata accessor for ShowEntity);
      v21 = *(v93 + 56);
      sub_3C8E0(v20, type metadata accessor for ShowEntity);
      v97[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_15D38((v22 > 1), v23 + 1, 1);
        v16 = v97[0];
      }

      ++v17;
      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v1 = v19;
      v6 = v95;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_44;
  }

LABEL_16:
  if (*(v1[14] + 16) && (v24 = v16[2]) != 0)
  {
    v25 = v1;
    v26 = 4;
    do
    {
      sub_42AF4(v16[v26++]);
      --v24;
    }

    while (v24);

    v1 = v25;
  }

  else
  {
  }

  v27 = v1[3];
  v1[36] = v27;
  v1[7] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_3C2A0(&qword_12DB70, &unk_12DF70, &qword_E9E80);
  if (sub_E7404() & 1) != 0 || (v1[8] = v1[4], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88), (sub_E7404()))
  {
    v28 = v1[34];
    sub_E7384();
    if (v28)
    {

      v29 = v1[4];

      v30 = v1[28];
      v31 = v1;
      v34 = v1 + 24;
      v32 = v1[24];
      v33 = v34[1];
      v35 = v31[23];
      v37 = v31[19];
      v36 = v31[20];
      v39 = v31[17];
      v38 = v31[18];

      v40 = v31[1];

      v40();
    }

    else
    {
      v96 = v1;
      v41 = v1[20];
      sub_E6914();
      v42 = sub_E6964();
      v43 = sub_E7494();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "Some entities are lingering, checking remote source for episode content.", v44, 2u);
      }

      v45 = v96[20];
      v46 = v96[15];
      v47 = v96[16];

      v48 = *(v47 + 8);
      v96[37] = v48;
      v49 = v45;
      v50 = v96;
      v48(v49, v46);
      v96[9] = v27;
      if (sub_E7404())
      {
        v51 = v96[19];
        sub_E6914();
        v52 = sub_E6964();
        v53 = sub_E74B4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v96[21];
          v55 = v96[16];
          v92 = v96[15];
          v94 = v96[19];
          v56 = swift_slowAlloc();
          v97[0] = swift_slowAlloc();
          *v56 = 136315394;
          v96[11] = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DF90, &qword_EAB78);
          v57 = sub_E7084();
          v59 = sub_23E64(v57, v58, v97);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;

          v60 = sub_E73B4();
          v62 = v61;

          v63 = sub_23E64(v60, v62, v97);

          *(v56 + 14) = v63;
          _os_log_impl(&dword_0, v52, v53, "Failed to find requested local entities (%s) with identifiers: %s", v56, 0x16u);
          swift_arrayDestroy();
          v50 = v96;

          v65 = v92;
          v64 = v94;
        }

        else
        {
          v83 = v96[19];
          v84 = v96[16];
          v85 = v96[15];

          v64 = v83;
          v50 = v96;
          v65 = v85;
        }

        v48(v64, v65);
      }

      v86 = v50;
      v87 = v50[31];
      v86[38] = v86[4];

      v89 = sub_273C0(v88);
      v86[39] = v89;

      v90 = (*(v87 + 40))(&type metadata for ShowEntity.ShowEntityQuery, v87);
      v86[40] = v90;
      v91 = swift_task_alloc();
      v86[41] = v91;
      *v91 = v86;
      v91[1] = sub_2D4D4;

      sub_2E2AC(v89, v90);
    }
  }

  else
  {
    v66 = v1[17];
    sub_E6914();
    v67 = sub_E6964();
    v68 = sub_E7494();
    v69 = os_log_type_enabled(v67, v68);
    v71 = v1[16];
    v70 = v1[17];
    v72 = v1[15];
    if (v69)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v67, v68, "Found episodes using local-only identifiers", v73, 2u);
    }

    (*(v71 + 8))(v70, v72);

    v74 = v1[28];
    v76 = v1[24];
    v75 = v1[25];
    v77 = v1[23];
    v79 = v1[19];
    v78 = v1[20];
    v81 = v1[17];
    v80 = v1[18];

    v82 = v1[1];

    v82(v95);
  }
}

uint64_t sub_2D3F0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  v4 = *(v0 + 272);
  v5 = *(v0 + 224);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2D4D4(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v6 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_2D610, 0, 0);
}

uint64_t sub_2D610()
{
  v44 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[23];
      sub_3C628(v5, v8, type metadata accessor for ShowEntity);
      v9 = *(v4 + 56);
      sub_3C8E0(v8, type metadata accessor for ShowEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23118(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23118((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      *&v7[8 * v11 + 32] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v0[38] + 16))
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = 32;
      do
      {
        sub_42AF4(*&v7[v13]);
        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  v0[10] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88);
  if (sub_E7404())
  {
    v14 = v0[18];
    sub_E6914();
    v15 = sub_E6964();
    v16 = sub_E74B4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[37];
    v19 = v0[18];
    v21 = v0[15];
    v20 = v0[16];
    if (v17)
    {
      v42 = v0[37];
      v22 = swift_slowAlloc();
      v41 = v19;
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136315138;

      v24 = sub_E73B4();
      v26 = v25;

      v27 = sub_23E64(v24, v26, &v43);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v15, v16, "Failed to find requested remote episodes with identifiers: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);

      v42(v41, v21);
    }

    else
    {

      v18(v19, v21);
    }
  }

  v28 = v0[42];
  v29 = v0[36];
  v43 = v0[35];
  sub_227C0(v28);

  v30 = v43;
  v31 = v0[28];
  v33 = v0[24];
  v32 = v0[25];
  v34 = v0[23];
  v36 = v0[19];
  v35 = v0[20];
  v38 = v0[17];
  v37 = v0[18];

  v39 = v0[1];

  return v39(v30);
}

uint64_t sub_2D9D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E68B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_E6874();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = sub_E68A4();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_2DBA4, 0, 0);
}

uint64_t sub_2DBA4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v6 = *(v4 + 8);
  v0[20] = v6;
  v0[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_E6894();
  v8 = sub_E7674();
  if (sub_E77F4())
  {
    v9 = v0[13];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v11, "LibraryAppIntentMediaAPIFetch", "", v10, 2u);
  }

  v12 = v0[19];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];

  (*(v17 + 16))(v15, v14, v16);
  v18 = sub_E68F4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[22] = sub_E68E4();
  v21 = *(v17 + 8);
  v0[23] = v21;
  v0[24] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v16);
  v6(v12, v13);
  v22 = swift_task_alloc();
  v0[25] = v22;
  *v22 = v0;
  v22[1] = sub_2DDB8;
  v24 = v0[2];
  v23 = v0[3];

  return sub_2F32C(v24, v23);
}

uint64_t sub_2DDB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_3CA44;
  }

  else
  {
    v5 = sub_3CA54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2DECC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E68B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_E6874();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = sub_E68A4();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_2E098, 0, 0);
}

uint64_t sub_2E098()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v6 = *(v4 + 8);
  v0[20] = v6;
  v0[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_E6894();
  v8 = sub_E7674();
  if (sub_E77F4())
  {
    v9 = v0[13];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v11, "LibraryAppIntentMediaAPIFetch", "", v10, 2u);
  }

  v12 = v0[19];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];

  (*(v17 + 16))(v15, v14, v16);
  v18 = sub_E68F4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[22] = sub_E68E4();
  v21 = *(v17 + 8);
  v0[23] = v21;
  v0[24] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v16);
  v6(v12, v13);
  v22 = swift_task_alloc();
  v0[25] = v22;
  *v22 = v0;
  v22[1] = sub_2DDB8;
  v24 = v0[2];
  v23 = v0[3];

  return sub_30008(v24, v23);
}

uint64_t sub_2E2AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E68B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_E6874();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = sub_E68A4();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_2E478, 0, 0);
}

uint64_t sub_2E478()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v6 = *(v4 + 8);
  v0[20] = v6;
  v0[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_E6894();
  v8 = sub_E7674();
  if (sub_E77F4())
  {
    v9 = v0[13];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v7, v8, v11, "LibraryAppIntentMediaAPIFetch", "", v10, 2u);
  }

  v12 = v0[19];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];

  (*(v17 + 16))(v15, v14, v16);
  v18 = sub_E68F4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[22] = sub_E68E4();
  v21 = *(v17 + 8);
  v0[23] = v21;
  v0[24] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v16);
  v6(v12, v13);
  v22 = swift_task_alloc();
  v0[25] = v22;
  *v22 = v0;
  v22[1] = sub_2E68C;
  v24 = v0[2];
  v23 = v0[3];

  return sub_30CE4(v24, v23);
}

uint64_t sub_2E68C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_2EA20;
  }

  else
  {
    v5 = sub_2E7A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2E7A0()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[11];
  sub_E6884();
  v4 = sub_E6894();
  sub_E68D4();
  v5 = sub_E7664();
  if (sub_E77F4())
  {
    v6 = v0[22];
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];

    sub_E6904();

    if ((*(v9 + 88))(v7, v8) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[7], v0[4]);
      v10 = "SUCCESS";
    }

    v39 = v0[23];
    v40 = v0[24];
    v20 = v0[22];
    v41 = v0[20];
    v42 = v0[21];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[11];
    v24 = v0[8];
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v4, v5, v26, "LibraryAppIntentMediaAPIFetch", v10, v25, 2u);

    v39(v23, v24);
    v41(v21, v22);
  }

  else
  {
    v12 = v0[23];
    v11 = v0[24];
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];
    v16 = v0[17];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[8];

    v12(v18, v19);
    v15(v16, v17);
  }

  v43 = v0[26];
  v28 = v0[18];
  v27 = v0[19];
  v30 = v0[16];
  v29 = v0[17];
  v32 = v0[12];
  v31 = v0[13];
  v34 = v0[10];
  v33 = v0[11];
  v35 = v0[6];
  v36 = v0[7];

  v37 = v0[1];

  return v37(v43);
}

uint64_t sub_2EA20()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[10];
  sub_E6884();
  v4 = sub_E6894();
  sub_E68D4();
  v5 = sub_E7664();
  if (sub_E77F4())
  {
    v42 = v5;
    v6 = v0[22];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];

    sub_E6904();

    if ((*(v8 + 88))(v7, v9) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v10 = "FAILURE";
    }

    v19 = v0[27];
    v20 = v0[23];
    v45 = v0[22];
    v40 = v0[24];
    v41 = v0[21];
    v39 = v0[20];
    v21 = v0[16];
    v22 = v0[14];
    v23 = v0[10];
    v24 = v0[8];
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v4, v42, v26, "LibraryAppIntentMediaAPIFetch", v10, v25, 2u);

    v20(v23, v24);
    v39(v21, v22);
  }

  else
  {
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[21];
    v43 = v0[27];
    v44 = v0[22];
    v14 = v0[20];
    v15 = v0[16];
    v16 = v0[14];
    v17 = v0[10];
    v18 = v0[8];

    v12(v17, v18);
    v14(v15, v16);
  }

  v28 = v0[18];
  v27 = v0[19];
  v30 = v0[16];
  v29 = v0[17];
  v32 = v0[12];
  v31 = v0[13];
  v34 = v0[10];
  v33 = v0[11];
  v36 = v0[6];
  v35 = v0[7];

  v37 = v0[1];

  return v37(_swiftEmptyArrayStorage);
}

void *sub_2ECC0(void *a1)
{
  v3 = type metadata accessor for ChannelEntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12DC30, MTChannel_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v1)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15D78(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ChannelEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15D78(v15 > 1, v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_3C878(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for ChannelEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_2EEE4(void *a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v1)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15E40(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      EpisodeEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15E40(v15 > 1, v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_3C878(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for EpisodeEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_2F108(void *a1)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v1)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15E84(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ShowEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15E84(v15 > 1, v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_3C878(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for ShowEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2F32C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(type metadata accessor for ChannelEntity() - 8);
  v2[9] = v3;
  v4 = *(v3 + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E060, &qword_EAC38);
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = sub_E5FE4();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = sub_E6084();
  v2[23] = v17;
  v18 = *(v17 - 8);
  v2[24] = v18;
  v19 = *(v18 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_2F658, 0, 0);
}

uint64_t sub_2F658()
{
  (*(v0[21] + 104))(v0[22], enum case for MediaRequest.RequestType.catalog(_:), v0[20]);
  if (qword_12CA88 != -1)
  {
    swift_once();
  }

  v21 = v0[22];
  v22 = v0[25];
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v20 = v0[7];
  v7 = sub_E6014();
  v8 = __swift_project_value_buffer(v7, qword_12E540);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v1, v8, v7);
  (*(v9 + 56))(v1, 0, 1, v7);
  v10 = sub_E60A4();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_E6034();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = sub_E6024();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_E6094();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_E59C4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);

  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = sub_2FA84;
  v18 = v0[8];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_2FA84()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_3CA94;
  }

  else
  {
    v3 = sub_2FB98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2FB98()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_E6154();
  v2 = async function pointer to MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)[1];
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_2FC74;
  v4 = v0[25];
  v5 = v0[13];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v5, v4);
}

uint64_t sub_2FC74()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_3CA48;
  }

  else
  {
    v3 = sub_2FD88;
  }

  return _swift_task_switch(v3, 0, 0);
}

size_t sub_2FD88()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = sub_E6314();
  (*(v2 + 8))(v1, v3);
  if (v4 >> 62)
  {
    v5 = sub_E7AC4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
    goto LABEL_14;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_15D78(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = *(v0 + 72);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_E79B4();
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    ChannelEntity.init(mediaObject:)(v9, *(v0 + 80));
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_15D78(v10 > 1, v11 + 1, 1);
    }

    v12 = *(v0 + 80);
    ++v7;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_3C878(v12, _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, type metadata accessor for ChannelEntity);
  }

  while (v5 != v7);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_14:
  v16 = *(v0 + 200);
  v17 = *(v0 + 176);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v23 = *(v0 + 112);
  v22 = *(v0 + 120);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v24 = *(v0 + 8);

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_30008(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(type metadata accessor for EpisodeEntity(0) - 8);
  v2[9] = v3;
  v4 = *(v3 + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E020, &qword_EABE8);
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = sub_E5FE4();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = sub_E6084();
  v2[23] = v17;
  v18 = *(v17 - 8);
  v2[24] = v18;
  v19 = *(v18 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_30334, 0, 0);
}