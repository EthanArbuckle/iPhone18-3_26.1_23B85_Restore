uint64_t sub_30334()
{
  (*(v0[21] + 104))(v0[22], enum case for MediaRequest.RequestType.catalog(_:), v0[20]);
  if (qword_12CAC0 != -1)
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
  v8 = __swift_project_value_buffer(v7, qword_12E8C0);
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
  v17[1] = sub_30760;
  v18 = v0[8];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_30760()
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
    v3 = sub_30874;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_30874()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_E6524();
  v2 = async function pointer to MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)[1];
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_30950;
  v4 = v0[25];
  v5 = v0[13];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v5, v4);
}

uint64_t sub_30950()
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
    v3 = sub_30A64;
  }

  return _swift_task_switch(v3, 0, 0);
}

size_t sub_30A64()
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
  result = sub_15E40(0, v5 & ~(v5 >> 63), 0);
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

    EpisodeEntity.init(mediaObject:)(v9, *(v0 + 80));
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_15E40(v10 > 1, v11 + 1, 1);
    }

    v12 = *(v0 + 80);
    ++v7;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_3C878(v12, _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, type metadata accessor for EpisodeEntity);
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

uint64_t sub_30CE4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(type metadata accessor for ShowEntity(0) - 8);
  v2[9] = v3;
  v4 = *(v3 + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DF98, &unk_EAB88);
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

  return _swift_task_switch(sub_31010, 0, 0);
}

uint64_t sub_31010()
{
  (*(v0[21] + 104))(v0[22], enum case for MediaRequest.RequestType.catalog(_:), v0[20]);
  if (qword_12CAF8 != -1)
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
  v8 = __swift_project_value_buffer(v7, qword_12EC38);
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
  v17[1] = sub_3143C;
  v18 = v0[8];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_3143C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_31740;
  }

  else
  {
    v3 = sub_31550;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_31550()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_E6164();
  v2 = async function pointer to MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)[1];
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_3162C;
  v4 = v0[25];
  v5 = v0[13];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v5, v4);
}

uint64_t sub_3162C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_31AC4;
  }

  else
  {
    v3 = sub_31844;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_31740()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v13 = v0[27];
  v1 = v0[25];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

size_t sub_31844()
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
  result = sub_15E84(0, v5 & ~(v5 >> 63), 0);
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

    ShowEntity.init(mediaObject:)(v9, *(v0 + 80));
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_15E84(v10 > 1, v11 + 1, 1);
    }

    v12 = *(v0 + 80);
    ++v7;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_3C878(v12, _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, type metadata accessor for ShowEntity);
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

uint64_t sub_31AC4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = v0[29];
  v1 = v0[25];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

void (*ShowEntity.ShowEntityQuery.objectGraph.modify(uint64_t *a1))(void *)
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

uint64_t ShowEntity.ShowEntityQuery.predicate(forAdamIDs:)(uint64_t a1)
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

    sub_4ABC(0, &qword_12DD80, NSNumber_ptr);
    sub_3B214();
    isa = sub_E73A4().super.isa;

    v22 = [v20 predicateForPodcastStoreIDs:isa];

    return v22;
  }

  return result;
}

uint64_t ShowEntity.ShowEntityQuery.suggestedEntities()()
{
  v2 = sub_E7724();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_E7324();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v0;
  v1[10] = v8;
  v1[11] = v9;

  return _swift_task_switch(sub_32000, 0, 0);
}

uint64_t sub_32000()
{
  v1 = v0[11];
  sub_E51D4();
  v0[12] = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_320CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_320CC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_325F8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_321E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_321E8()
{
  v1 = v0[2];
  v2 = v0[14];
  v3 = v0[10];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[15] = v4;
  if (v2)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v5 = v0[10];
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v4;
    v10 = v0[7];
    v11 = v0[5];
    v12 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    v0[16] = v13;
    *(v13 + 16) = v9;
    (*(v12 + 104))(v10, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v14 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v9;
    v15 = swift_task_alloc();
    v0[17] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
    *v15 = v0;
    v15[1] = sub_323E8;
    v17 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v17, sub_3B2B4, v13, v16);
  }
}

uint64_t sub_323E8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = v2[16];
  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v6 = sub_32670;
  }

  else
  {
    v6 = sub_3256C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_3256C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_325F8()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_32670()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

void sub_326E8(void *a1@<X8>)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_E9F00;
  *(v9 + 32) = [objc_allocWithZone(NSSortDescriptor) initWithKey:kPodcastLastTouchDate ascending:0];
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  isa = sub_E71E4().super.isa;

  [v8 setSortDescriptors:isa];

  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v11 = sub_E7734();
  if (v1)
  {

    return;
  }

  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_15:

    *a1 = _swiftEmptyArrayStorage;
    return;
  }

  v13 = sub_E7AC4();
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_5:
  v19[1] = 0;
  v20 = v8;
  v21 = a1;
  v22 = _swiftEmptyArrayStorage;
  sub_15E84(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = v22;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = sub_E79B4();
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      ShowEntity.init(model:)(v16, v7);
      v22 = v15;
      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        sub_15E84(v17 > 1, v18 + 1, 1);
        v15 = v22;
      }

      ++v14;
      v15[2] = v18 + 1;
      sub_3C878(v7, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, type metadata accessor for ShowEntity);
    }

    while (v13 != v14);

    *v21 = v15;
  }
}

id _s15PodcastsActions10ShowEntityV06Singlec6WidgetC5QueryV9predicate8forUuidsSo11NSPredicateCShySSG_tF_0()
{
  v0 = objc_opt_self();
  isa = sub_E73A4().super.isa;
  v2 = [v0 predicateForPodcastUuids:isa];

  return v2;
}

uint64_t sub_32A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1E338;

  return sub_280B4(a2, a3);
}

uint64_t sub_32B44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return sub_29340(a1, v4);
}

uint64_t sub_32BF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return ShowEntity.ShowEntityQuery.suggestedEntities()();
}

uint64_t sub_32C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E340;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_32D48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_3BAF4();
  *v6 = v2;
  v6[1] = sub_5E10;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_32DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5E10;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.objectGraph.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() + 20));
  sub_E51D4();
  return v3;
}

uint64_t sub_32EF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() + 20));

  return sub_E51E4();
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.objectGraph.setter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() + 20));

  sub_E51E4();
}

void (*ShowEntity.SingleShowWidgetShowQuery.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() + 20));
  *(v4 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.init()@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD90, &qword_EA748);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v22);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD98, &qword_EA750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DDA0, &qword_EA758);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DDA8, &qword_EA760);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_E5B04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E5AE4();
  sub_E5AF4();
  (*(v15 + 8))(v18, v14);
  (*(v1 + 104))(v4, enum case for ForegroundSessionSource.ForegroundSessionSourceType.default<A>(_:), v22);
  sub_E61A4();
  sub_E6624();
  sub_3C2A0(&unk_12DDB0, &qword_12DD98, &qword_EA750);
  sub_E5F84();
  (*(v6 + 8))(v9, v5);
  v25[3] = sub_E61C4();
  v25[4] = &protocol witness table for CGImageResizer;
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_E61B4();
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_E7574();
  v19 = v23;
  sub_E6724();
  v20 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v24 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5204();
  *(v19 + v20) = result;
  return result;
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v4 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery();
  v3[70] = v4;
  v5 = *(v4 - 8);
  v3[71] = v5;
  v3[72] = *(v5 + 64);
  v3[73] = swift_task_alloc();
  v6 = type metadata accessor for ShowEntity(0);
  v3[74] = v6;
  v7 = *(v6 - 8);
  v3[75] = v7;
  v8 = *(v7 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v9 = sub_E7724();
  v3[83] = v9;
  v10 = *(v9 - 8);
  v3[84] = v10;
  v11 = *(v10 + 64) + 15;
  v3[85] = swift_task_alloc();
  v12 = sub_E7324();
  v3[86] = v12;
  v13 = *(v12 - 8);
  v3[87] = v13;
  v14 = *(v13 + 64) + 15;
  v3[88] = swift_task_alloc();

  return _swift_task_switch(sub_33688, 0, 0);
}

uint64_t sub_33688()
{
  v1 = *(v0[69] + *(v0[70] + 20));
  sub_E51D4();
  v0[89] = v0[64];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[90] = v4;
  *v4 = v0;
  v4[1] = sub_33760;

  return BaseObjectGraph.inject<A>(_:)(v0 + 62, v2, v2);
}

uint64_t sub_33760()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v7 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = sub_350D0;
  }

  else
  {
    v5 = *(v2 + 712);

    v4 = sub_3387C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_3387C()
{
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[62];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[92] = v4;
  if (v1)
  {
    (*(v0[87] + 8))(v0[88], v0[86]);
    swift_unknownObjectRelease();
    v5 = v0[88];
    v6 = v0[85];
    v7 = v0[82];
    v8 = v0[81];
    v9 = v0[80];
    v10 = v0[79];
    v11 = v0[78];
    v12 = v0[77];
    v13 = v0[76];
    v31 = v0[73];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v4;
    v17 = v0[85];
    v18 = v0[84];
    v19 = v0[83];
    (*(v0[87] + 8))(v0[88], v0[86]);
    swift_unknownObjectRelease();
    v20 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
    v0[93] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_E9EE0;
    v22 = objc_opt_self();
    *(v21 + 32) = [v22 predicateForSubscribedAndNotHidden];
    *(v21 + 40) = [v22 predicateForNotImplicitlyFollowedPodcasts];
    sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    isa = sub_E71E4().super.isa;

    v24 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v20 setPredicate:v24];
    v25 = swift_allocObject();
    v0[94] = v25;
    *(v25 + 16) = v16;
    *(v25 + 24) = v20;
    (*(v18 + 104))(v17, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v19);
    v26 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v16;
    v27 = v20;
    v28 = swift_task_alloc();
    v0[95] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
    v0[96] = v29;
    *v28 = v0;
    v28[1] = sub_33C24;
    v30 = v0[85];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 63, v30, sub_3B31C, v25, v29);
  }
}

uint64_t sub_33C24()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 776) = v0;

  v5 = v2[94];
  (*(v2[84] + 8))(v2[85], v2[83]);

  if (v0)
  {
    v6 = sub_351D0;
  }

  else
  {
    v6 = sub_33DA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_33DA8()
{
  v184 = v0;
  v1 = v0[68];
  v2 = v0[63];
  v0[98] = v2;
  swift_bridgeObjectRetain_n();

  v3 = sub_E62E4();
  v168 = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v7 = v0[75];
  v8 = *(v2 + 16);
  v162 = v2;
  v172 = v7;
  if (!v8)
  {
    v18 = 0;
    v9 = 0;
    v19 = v0[75];
    goto LABEL_34;
  }

  v9 = 0;
  v10 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v180 = *(v7 + 72);
  v11 = (v10 + 16);
  v164 = (v10 + 16);
  while (1)
  {
    v12 = v0[68];
    v13 = v0[67];
    v14 = *v11;
    sub_E53E4();
    v15 = v0[9];
    v0[10] = v0[8];
    v0[11] = v15;
    v0[12] = v13;
    v0[13] = v12;
    sub_26028();
    LOBYTE(v14) = sub_E7844();

    if (v14)
    {
      break;
    }

    ++v9;
    v11 = (v11 + v180);
    if (v8 == v9)
    {
      v9 = v8;
      break;
    }
  }

  v16 = *(v162 + 16);
  if (!v168)
  {
    goto LABEL_25;
  }

  if (v9 == v16)
  {
    v9 = *(v162 + 16);
    v17 = (v10 + 16);
    if (v16)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v178 = v10 + 16;
  v20 = 1;
  do
  {
    v173 = v20;
    v21 = v9;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        goto LABEL_190;
      }

      if (v22 == v16)
      {
        break;
      }

      if (v22 < 0 || v22 >= v16)
      {
        goto LABEL_181;
      }

      v23 = v0[68];
      v24 = v0[67];
      v25 = *(v178 + v180 * v22);
      sub_E53E4();
      v26 = v0[15];
      v0[16] = v0[14];
      v0[17] = v26;
      v0[18] = v24;
      v0[19] = v23;
      LOBYTE(v25) = sub_E7844();

      ++v21;
      v9 = v22;
      if (v25)
      {
        goto LABEL_21;
      }
    }

    v9 = v16;
LABEL_21:
    if (v173 == v168)
    {
      v16 = *(v162 + 16);
      v17 = v164;
      if (v16)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    v20 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      goto LABEL_188;
    }
  }

  while (v22 != v16);
  v16 = *(v162 + 16);
  v9 = v16;
LABEL_25:
  v17 = v164;
  if (!v16)
  {
LABEL_32:
    v18 = 0;
    goto LABEL_33;
  }

LABEL_26:
  v174 = v9;
  v27 = 0;
  while (1)
  {
    v28 = v0[68];
    v29 = v0[67];
    v30 = *v17;
    sub_E53E4();
    v31 = v0[21];
    v0[22] = v0[20];
    v0[23] = v31;
    v0[24] = v29;
    v0[25] = v28;
    LOBYTE(v30) = sub_E7844();

    if (v30)
    {
      break;
    }

    ++v27;
    v17 = (v17 + v180);
    if (v16 == v27)
    {
      v18 = v16;
      v9 = v174;
      goto LABEL_33;
    }
  }

  v9 = v174;
  v18 = v27;
LABEL_33:
  v2 = v162;
  v19 = v172;
  if (v9 < v18)
  {
    goto LABEL_191;
  }

LABEL_34:
  v32 = *(v2 + 16);
  if (v32 < v18 || v32 < v9)
  {
    goto LABEL_192;
  }

  v33 = v0[68];
  v34 = v9;
  v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v179 = v2 + v35;
  swift_bridgeObjectRetain_n();
  v3 = sub_E62E4();
  v36 = v3;
  v175 = v34;
  v163 = v18;
  v159 = v35;
  if (v18 == v34)
  {
    v37 = 0;
  }

  else
  {
    v169 = v3;
    v181 = v0[82];
    v38 = *(v19 + 72);
    v39 = v2 + v35 + v18 * v38;
    v40 = v18;
    while (1)
    {
      v41 = v0[82];
      v42 = v0[68];
      v43 = v0[67];
      sub_3C628(v39, v41, type metadata accessor for ShowEntity);
      v44 = *(v181 + 16);
      sub_E53E4();
      v45 = v0[27];
      v0[28] = v0[26];
      v0[29] = v45;
      v0[30] = v43;
      v0[31] = v42;
      sub_26028();
      LOBYTE(v44) = sub_E7844();

      v3 = sub_3C8E0(v41, type metadata accessor for ShowEntity);
      if (v44)
      {
        break;
      }

      ++v40;
      v39 += v38;
      if (v175 == v40)
      {
        v37 = 0;
        v2 = v162;
        v18 = v163;
        v36 = v169;
        v19 = v172;
        goto LABEL_53;
      }
    }

    v165 = 1;
    do
    {
      if (v40 == v175)
      {
        goto LABEL_197;
      }

      do
      {
        v46 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_186;
        }

        if (v46 == v175)
        {
          goto LABEL_52;
        }

        if (v46 < v163 || v46 >= v175)
        {
          goto LABEL_187;
        }

        v47 = v0[82];
        v48 = v0[68];
        v49 = v0[67];
        sub_3C628(v179 + v46 * v38, v47, type metadata accessor for ShowEntity);
        v50 = *(v181 + 16);
        sub_E53E4();
        v51 = v0[33];
        v0[34] = v0[32];
        v0[35] = v51;
        v0[36] = v49;
        v0[37] = v48;
        LOBYTE(v50) = sub_E7844();

        v3 = sub_3C8E0(v47, type metadata accessor for ShowEntity);
        ++v40;
      }

      while ((v50 & 1) == 0);
      v40 = v46;
      v52 = __OFADD__(v165++, 1);
    }

    while (!v52);
    __break(1u);
LABEL_52:
    v2 = v162;
    v18 = v163;
    v36 = v169;
    v19 = v172;
    v37 = v165;
  }

LABEL_53:
  v53 = v36 - v37;
  if (__OFSUB__(v36, v37))
  {
    goto LABEL_193;
  }

  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v182 = v0[74];
  v54 = *(v2 + 16);
  if (!v54)
  {
    v64 = 0;
    v55 = 0;
    v65 = v175;
    goto LABEL_93;
  }

  v55 = 0;
  v56 = *(v19 + 72);
  v57 = v179;
  while (1)
  {
    v58 = *(v57 + *(v182 + 52));
    v3 = sub_E53E4();
    v59 = v0[39];
    if (v59)
    {
      v60 = v0[68];
      v61 = v0[67];
      v0[40] = v0[38];
      v0[41] = v59;
      v0[42] = v61;
      v0[43] = v60;
      sub_26028();
      v62 = sub_E7844();

      if (v62)
      {
        break;
      }
    }

    ++v55;
    v57 += v56;
    if (v54 == v55)
    {
      v55 = v54;
      break;
    }
  }

  v63 = *(v162 + 16);
  if (!v53)
  {
LABEL_84:
    v64 = 0;
    if (!v63)
    {
      goto LABEL_92;
    }

    goto LABEL_85;
  }

  if (v55 == v63)
  {
    v55 = *(v162 + 16);
    v64 = 0;
    if (!v63)
    {
      goto LABEL_92;
    }

LABEL_85:
    v75 = v179;
    while (1)
    {
      v76 = *(v75 + *(v182 + 52));
      v3 = sub_E53E4();
      v77 = v0[51];
      if (v77)
      {
        v78 = v0[68];
        v79 = v0[67];
        v0[52] = v0[50];
        v0[53] = v77;
        v0[54] = v79;
        v0[55] = v78;
        sub_26028();
        v80 = sub_E7844();

        if (v80)
        {
          break;
        }
      }

      ++v64;
      v75 += v56;
      if (v63 == v64)
      {
        v64 = v63;
        break;
      }
    }

    v19 = v172;
  }

  else
  {
    v66 = 1;
    v166 = v53;
    while (1)
    {
      v67 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_182;
      }

      if (v67 == v63)
      {
        v68 = 1;
        v55 = v63;
      }

      else
      {
        v69 = v162 + v159 + v56 * v67;
        ++v55;
        do
        {
          if (v67 < 0 || v55 >= v63)
          {
            goto LABEL_183;
          }

          v70 = *(v69 + *(v182 + 52));
          v3 = sub_E53E4();
          v71 = v0[45];
          if (v71)
          {
            v72 = v0[68];
            v73 = v0[67];
            v0[46] = v0[44];
            v0[47] = v71;
            v0[48] = v73;
            v0[49] = v72;
            sub_26028();
            v74 = sub_E7844();

            if (v74)
            {
              v68 = 0;
              goto LABEL_79;
            }
          }

          ++v55;
          v69 += v56;
        }

        while (v63 != v55);
        v68 = 1;
        v55 = v63;
LABEL_79:
        v53 = v166;
      }

      v19 = v172;
      if (v66 == v53)
      {
        break;
      }

      v52 = __OFADD__(v66++, 1);
      if (v52)
      {
        goto LABEL_189;
      }

      if (v68)
      {
        v63 = *(v162 + 16);
        v55 = v63;
        goto LABEL_84;
      }
    }

    v63 = *(v162 + 16);
    v64 = 0;
    if (v63)
    {
      goto LABEL_85;
    }
  }

LABEL_92:
  v65 = v175;
  v18 = v163;
  if (v55 < v64)
  {
    goto LABEL_195;
  }

LABEL_93:
  v81 = *(v162 + 16);
  if (v81 < v64 || v81 < v55)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v82 = _swiftEmptyArrayStorage;

  v156 = _swiftEmptyArrayStorage + v159;
  if (v18 == v65)
  {
    v158 = 0;
    goto LABEL_128;
  }

  v158 = 0;
  v157 = _swiftEmptyArrayStorage;
  v167 = -v65;
  v170 = v0[79];
  v83 = v18;
  v155 = _swiftEmptyArrayStorage + v159;
  while (2)
  {
    if (v83 < v18)
    {
      goto LABEL_184;
    }

    v84 = v175;
    if (v83 > v175)
    {
      v84 = v83;
    }

    v85 = -v84;
    ++v83;
    while (1)
    {
      if (v85 + v83 == 1)
      {
        goto LABEL_184;
      }

      v86 = v0[68];
      v87 = v0[67];
      v88 = *(v172 + 72);
      sub_3C628(v179 + v88 * (v83 - 1), v0[79], type metadata accessor for ShowEntity);
      v89 = *(v170 + 16);
      sub_E53E4();
      v90 = v0[57];
      v0[58] = v0[56];
      v0[59] = v90;
      v0[60] = v87;
      v0[61] = v86;
      sub_26028();
      LOBYTE(v89) = sub_E7844();

      if (v89)
      {
        break;
      }

      v3 = sub_3C8E0(v0[79], type metadata accessor for ShowEntity);
      ++v83;
      if (v167 + v83 == 1)
      {
        v82 = v157;
        v19 = v172;
        goto LABEL_128;
      }
    }

    v91 = v0[81];
    v92 = v0[80];
    sub_3C878(v0[79], v92, type metadata accessor for ShowEntity);
    v3 = sub_3C878(v92, v91, type metadata accessor for ShowEntity);
    v93 = v158;
    if (v158)
    {
      v160 = v157;
      v19 = v172;
      goto LABEL_126;
    }

    v94 = v157[3];
    v19 = v172;
    if (((v94 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_202;
    }

    v95 = v94 & 0xFFFFFFFFFFFFFFFELL;
    if (v95 <= 1)
    {
      v96 = 1;
    }

    else
    {
      v96 = v95;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA80, &qword_E9D98);
    v160 = swift_allocObject();
    v3 = _swift_stdlib_malloc_size(v160);
    if (!v88)
    {
      goto LABEL_203;
    }

    v97 = v3 - v159;
    if (v3 - v159 == 0x8000000000000000 && v88 == -1)
    {
      goto LABEL_206;
    }

    v99 = v97 / v88;
    v160[2] = v96;
    v160[3] = 2 * (v97 / v88);
    v100 = v160 + v159;
    v101 = v157[3] >> 1;
    v102 = v101 * v88;
    if (v157[2])
    {
      if (v160 < v157 || v100 >= v157 + v159 + v102)
      {
        v105 = v0[74];
        swift_arrayInitWithTakeFrontToBack();
LABEL_123:
        v103 = v157;
      }

      else
      {
        v103 = v157;
        if (v160 != v157)
        {
          v104 = v0[74];
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_123;
        }
      }

      v103[2] = 0;
    }

    v155 = &v100[v102];

    v93 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - v101;
LABEL_126:
    v18 = v163;
    v52 = __OFSUB__(v93, 1);
    v106 = v93 - 1;
    if (v52)
    {
      goto LABEL_200;
    }

    v158 = v106;
    v3 = sub_3C878(v0[81], v155, type metadata accessor for ShowEntity);
    v155 += v88;
    v82 = v160;
    v157 = v160;
    if (v167 + v83)
    {
      continue;
    }

    break;
  }

LABEL_128:
  v107 = v82[3];
  if (v107 < 2)
  {
    goto LABEL_131;
  }

  v108 = v107 >> 1;
  v52 = __OFSUB__(v108, v158);
  v109 = v108 - v158;
  if (v52)
  {
    goto LABEL_198;
  }

  v82[2] = v109;
LABEL_131:
  v161 = v82;

  if (v64 != v55)
  {
    v176 = 0;
    v111 = _swiftEmptyArrayStorage;
    v112 = v64;
    while (2)
    {
      v171 = v111;
      if (v112 >= v64)
      {
        if (v112 <= v55)
        {
          v113 = v55;
        }

        else
        {
          v113 = v112;
        }

        v114 = -v113;
        ++v112;
        while (1)
        {
          if (v114 + v112 == 1)
          {
            goto LABEL_185;
          }

          v115 = v0[76];
          v116 = *(v19 + 72);
          sub_3C628(v179 + v116 * (v112 - 1), v115, type metadata accessor for ShowEntity);
          v117 = *(v115 + *(v182 + 52));
          sub_E53E4();
          v118 = v0[3];
          if (v118)
          {
            v119 = v0[68];
            v120 = v0[67];
            v0[6] = v0[2];
            v0[7] = v118;
            v0[4] = v120;
            v0[5] = v119;
            sub_26028();
            v121 = sub_E7844();

            if (v121)
            {
              break;
            }
          }

          v3 = sub_3C8E0(v0[76], type metadata accessor for ShowEntity);
          if (++v112 - v55 == 1)
          {
            v110 = v171;
            goto LABEL_168;
          }
        }

        v122 = v0[78];
        v123 = v0[77];
        sub_3C878(v0[76], v123, type metadata accessor for ShowEntity);
        v3 = sub_3C878(v123, v122, type metadata accessor for ShowEntity);
        if (v176)
        {
          v110 = v171;
          v124 = v176 - 1;
          if (__OFSUB__(v176, 1))
          {
            goto LABEL_201;
          }

          goto LABEL_165;
        }

        v125 = v171[3];
        if (((v125 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_204;
        }

        v126 = v125 & 0xFFFFFFFFFFFFFFFELL;
        if (v126 <= 1)
        {
          v127 = 1;
        }

        else
        {
          v127 = v126;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA80, &qword_E9D98);
        v110 = swift_allocObject();
        v3 = _swift_stdlib_malloc_size(v110);
        if (!v116)
        {
          goto LABEL_205;
        }

        v128 = v3 - v159;
        if (v3 - v159 == 0x8000000000000000 && v116 == -1)
        {
          goto LABEL_207;
        }

        v130 = v128 / v116;
        v110[2] = v127;
        v110[3] = 2 * (v128 / v116);
        v131 = v110 + v159;
        v132 = v171[3] >> 1;
        v133 = v132 * v116;
        if (!v171[2])
        {
LABEL_164:
          v156 = &v131[v133];
          v137 = (v130 & 0x7FFFFFFFFFFFFFFFLL) - v132;

          v19 = v172;
          v52 = __OFSUB__(v137, 1);
          v124 = v137 - 1;
          if (v52)
          {
            goto LABEL_201;
          }

LABEL_165:
          v176 = v124;
          v3 = sub_3C878(v0[78], v156, type metadata accessor for ShowEntity);
          v156 += v116;
          v111 = v110;
          if (v112 != v55)
          {
            continue;
          }

          goto LABEL_168;
        }

        if (v110 < v171 || v131 >= v171 + v159 + v133)
        {
          v136 = v0[74];
          v177 = v110 + v159;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v134 = v171;
          if (v110 == v171)
          {
LABEL_163:
            v134[2] = 0;
            goto LABEL_164;
          }

          v135 = v0[74];
          v177 = v110 + v159;
          swift_arrayInitWithTakeBackToFront();
        }

        v131 = v177;
        v134 = v171;
        goto LABEL_163;
      }

      goto LABEL_185;
    }
  }

  v176 = 0;
  v110 = _swiftEmptyArrayStorage;
LABEL_168:
  v138 = v110[3];
  if (v138 < 2)
  {
LABEL_171:
    v141 = v0[97];

    v183 = v161;
    sub_227C0(v110);

    sub_399AC(&v183);
    if (!v141)
    {
      v144 = v0[96];
      v145 = v0[73];
      v146 = v0[72];
      v147 = v0[71];
      v148 = v0[69];

      v0[65] = v183;
      swift_getKeyPath();
      sub_3C2A0(&qword_12DDD0, &qword_12DD88, &qword_EA740);
      v149 = sub_E7164();
      v0[99] = v149;

      v0[66] = v149;
      sub_3C628(v148, v145, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
      v150 = (*(v147 + 80) + 16) & ~*(v147 + 80);
      v151 = swift_allocObject();
      sub_3C878(v145, v151 + v150, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
      v152 = swift_allocObject();
      v0[100] = v152;
      *(v152 + 16) = &unk_EA7A8;
      *(v152 + 24) = v151;
      v153 = async function pointer to Collection<>.concurrentMap(_:)[1];
      v154 = swift_task_alloc();
      v0[101] = v154;
      v6 = sub_3C2A0(&qword_12DDD8, &qword_12DD88, &qword_EA740);
      *v154 = v0;
      v154[1] = sub_34E48;
      v5 = v0[96];
      v3 = &unk_EA7B8;
      v4 = v152;

      return Collection<>.concurrentMap(_:)(v3, v4, v5, v6);
    }

    v142 = v0[68];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v139 = v138 >> 1;
    v52 = __OFSUB__(v139, v176);
    v140 = v139 - v176;
    if (!v52)
    {
      v110[2] = v140;
      goto LABEL_171;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
    return Collection<>.concurrentMap(_:)(v3, v4, v5, v6);
  }
}

uint64_t sub_34E48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 808);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[68];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v9 = v4[100];
    v10 = v4[99];

    v4[102] = a1;

    return _swift_task_switch(sub_34FA4, 0, 0);
  }
}

uint64_t sub_34FA4()
{
  v1 = v0[98];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[85];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[73];
  v10 = v0[68];
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v11 = v0[1];
  v12 = v0[102];

  return v11(v12);
}

uint64_t sub_350D0()
{
  v1 = v0[89];

  v14 = v0[91];
  v2 = v0[88];
  v3 = v0[85];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[73];

  v12 = v0[1];

  return v12();
}

uint64_t sub_351D0()
{
  v1 = *(v0 + 744);

  v14 = *(v0 + 776);
  v2 = *(v0 + 704);
  v3 = *(v0 + 680);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v0 + 632);
  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  v10 = *(v0 + 608);
  v11 = *(v0 + 584);

  v12 = *(v0 + 8);

  return v12();
}

size_t sub_352D8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  result = sub_E7734();
  if (v1)
  {
    return result;
  }

  v9 = result;
  v16[1] = 0;
  if (!(result >> 62))
  {
    v10 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v10 = sub_E7AC4();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16[0] = a1;
  v17 = _swiftEmptyArrayStorage;
  result = sub_15E84(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = v17;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = sub_E79B4();
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      ShowEntity.init(model:)(v13, v7);
      v17 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_15E84(v14 > 1, v15 + 1, 1);
        v12 = v17;
      }

      ++v11;
      v12[2] = v15 + 1;
      sub_3C878(v7, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for ShowEntity);
    }

    while (v10 != v11);

    *v16[0] = v12;
  }

  return result;
}

uint64_t sub_35508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a1;
    v2 = a2;
    v6 = *v3;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    a1 = sub_3AF54(*v3, v4);
    v8 = v6 >> 62;
    if (!(v6 >> 62))
    {
      v9 = sub_3B044(a1, v7, *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)), v6, v4);
      if (v10)
      {
        v11 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      }

      else
      {
        v11 = v9;
      }

      result = sub_3AF54(v6, v4);
      if (v11 < result)
      {
        goto LABEL_31;
      }

      v13 = result;
      result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (result >= v13)
      {
        goto LABEL_8;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v22 = a1;
  v23 = sub_E7AC4();
  v24 = sub_3B044(v22, v7, v23, v6, v4);
  if (v25)
  {
    v24 = sub_E7AC4();
  }

  v11 = v24;
  result = sub_3AF54(v6, v4);
  if (v11 < result)
  {
    goto LABEL_31;
  }

  v13 = result;
  result = sub_E7AC4();
  if (result < v13)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v13 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8)
  {
    result = sub_E7AC4();
  }

  else
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < v11)
  {
    goto LABEL_33;
  }

  if (v11 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v6 & 0xC000000000000001) == 0 || v13 == v11)
  {

    goto LABEL_21;
  }

  if (v13 >= v11)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);

  v14 = v13;
  do
  {
    v15 = v14 + 1;
    sub_E79A4(v14);
    v14 = v15;
  }

  while (v11 != v15);
LABEL_21:

  if (v8)
  {
    v16 = sub_E7AD4();
    v17 = v19;
    v13 = v20;
    v18 = v21;
  }

  else
  {
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    v17 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = (2 * v11) | 1;
  }

  *v2 = v16;
  *(v2 + 8) = v17;
  *(v2 + 16) = v13;
  *(v2 + 24) = v18;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = *(v3 + 24);
  return result;
}

uint64_t sub_35744(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E61A4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = sub_E5FD4();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_358DC, 0, 0);
}

uint64_t sub_358DC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for ShowEntity(0);
  v0[13] = v5;
  sub_26324(v4 + *(v5 + 76), v3, &unk_12DB10, &qword_EAC60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[9], &unk_12DB10, &qword_EAC60);
    v6 = v0[12];
    v7 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v9 = v0[7];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[4];
    v16 = v0[5];
    sub_3C878(v0[9], v0[12], &type metadata accessor for ArtworkModel);
    sub_E5FA4();
    sub_E6194();
    v17 = *(v16 + 8);
    v0[14] = v17;
    v0[15] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v15);
    v18 = async function pointer to ImageContentProvider.url(for:)[1];
    v19 = swift_task_alloc();
    v0[16] = v19;
    v20 = sub_E6734();
    *v19 = v0;
    v19[1] = sub_35AF0;
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[3];

    return ImageContentProvider.url(for:)(v21, v22, v20, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_35AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[7];
  v8 = v2[4];
  if (v0)
  {

    v6(v7, v8);
    v9 = sub_3CA8C;
  }

  else
  {
    v6(v7, v8);
    v9 = sub_3CA88;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_35C84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_35D78;

  return v7(a1);
}

uint64_t sub_35D78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.suggestedEntities()()
{
  v1[7] = v0;
  v2 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v4 = sub_E7724();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_E7324();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_35FF0, 0, 0);
}

uint64_t sub_35FF0()
{
  v1 = *(v0[7] + *(v0[8] + 20));
  sub_E51D4();
  v0[18] = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_360C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_360C4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_36D4C;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_361E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_361E0()
{
  v1 = v0[2];
  v2 = v0[20];
  v3 = v0[17];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[21] = v4;
  if (v2)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_unknownObjectRelease();
    v5 = v0[17];
    v6 = v0[14];
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v4;
    v39 = v0[13];
    v40 = v0[12];
    v41 = v0[14];
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_unknownObjectRelease();
    v11 = kMTPodcastEntityName;
    v12 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
    v0[22] = v12;
    v38 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v11];
    v0[23] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_E9EE0;
    v14 = objc_opt_self();
    *(v13 + 32) = [v14 predicateForSubscribedAndNotHidden];
    *(v13 + 40) = [v14 predicateForNotImplicitlyFollowedPodcasts];
    sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    isa = sub_E71E4().super.isa;

    v37 = objc_opt_self();
    v16 = [v37 andPredicateWithSubpredicates:isa];

    [v12 setPredicate:v16];
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_E9F00;
    sub_E7064();
    v18 = objc_allocWithZone(NSSortDescriptor);
    v19 = sub_E7024();

    v20 = [v18 initWithKey:v19 ascending:0];

    *(v17 + 32) = v20;
    sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
    v21 = sub_E71E4().super.isa;

    [v12 setSortDescriptors:v21];

    [v12 setFetchLimit:sub_E62F4()];
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_E9EE0;
    *(v22 + 32) = [v14 predicateForSubscribedAndNotHidden];
    *(v22 + 40) = [v14 predicateForNotImplicitlyFollowedPodcasts];
    v23 = sub_E71E4().super.isa;

    v24 = [v37 andPredicateWithSubpredicates:v23];

    [v38 setPredicate:v24];
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_E9F00;
    sub_E7064();
    v26 = objc_allocWithZone(NSSortDescriptor);
    v27 = sub_E7024();

    v28 = [v26 initWithKey:v27 ascending:1];

    *(v25 + 32) = v28;
    v29 = sub_E71E4().super.isa;

    [v38 setSortDescriptors:v29];

    v30 = swift_allocObject();
    v0[24] = v30;
    v30[2] = v10;
    v30[3] = v12;
    v30[4] = v38;
    (*(v39 + 104))(v41, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v40);
    v31 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v10;
    v32 = v12;
    v33 = v38;
    v34 = swift_task_alloc();
    v0[25] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
    v0[26] = v35;
    *v34 = v0;
    v34[1] = sub_367A8;
    v36 = v0[14];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v36, sub_3B548, v30, v35);
  }
}

uint64_t sub_367A8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = v2[24];
  (*(v2[13] + 8))(v2[14], v2[12]);

  if (v0)
  {
    v6 = sub_36DD8;
  }

  else
  {
    v6 = sub_3692C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_3692C()
{
  v1 = v0[26];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  v0[5] = v0[4];
  swift_getKeyPath();
  sub_3C2A0(&qword_12DDD0, &qword_12DD88, &qword_EA740);
  v6 = sub_E7164();
  v0[28] = v6;

  v0[6] = v6;
  sub_3C628(v5, v2, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_3C878(v2, v8 + v7, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = &unk_EA7D0;
  *(v9 + 24) = v8;
  v10 = async function pointer to Collection<>.concurrentMap(_:)[1];
  v11 = swift_task_alloc();
  v0[30] = v11;
  v12 = sub_3C2A0(&qword_12DDD8, &qword_12DD88, &qword_EA740);
  *v11 = v0;
  v11[1] = sub_36B58;
  v13 = v0[26];

  return Collection<>.concurrentMap(_:)(&unk_EA7D8, v9, v13, v12);
}

uint64_t sub_36B58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[28];
    v9 = v4[29];

    v4[31] = a1;

    return _swift_task_switch(sub_36CA4, 0, 0);
  }
}

uint64_t sub_36CA4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);
  v7 = *(v0 + 248);

  return v6(v7);
}

uint64_t sub_36D4C()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_36DD8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = *(v0 + 216);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_36E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v7 = type metadata accessor for ShowEntity(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  result = sub_E7734();
  if (!v3)
  {
    v47 = 0;
    if (result >> 62)
    {
      v40 = result;
      v17 = sub_E7AC4();
      result = v40;
    }

    else
    {
      v17 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v43 = a3;
    v44 = v15;
    v45 = a2;
    v46 = a1;
    if (v17)
    {
      v42 = result;
      v55 = _swiftEmptyArrayStorage;
      result = sub_15E84(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = 0;
      v19 = v55;
      v20 = v42;
      v48 = v42 & 0xC000000000000001;
      v21 = v17;
      do
      {
        if (v48)
        {
          v22 = sub_E79B4();
        }

        else
        {
          v22 = *(v20 + 8 * v18 + 32);
        }

        ShowEntity.init(model:)(v22, v12);
        v55 = v19;
        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          sub_15E84(v23 > 1, v24 + 1, 1);
          v20 = v42;
          v19 = v55;
        }

        ++v18;
        v19[2] = v24 + 1;
        sub_3C878(v12, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, type metadata accessor for ShowEntity);
      }

      while (v21 != v18);
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    v25 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage;
    v26 = v19[2];
    if (v26)
    {
      v27 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v28 = *(v8 + 72);
      do
      {
        sub_3C628(v27, v14, type metadata accessor for ShowEntity);
        v29 = *(v14 + 4);
        v30 = v29;
        sub_3C8E0(v14, type metadata accessor for ShowEntity);
        if (v29)
        {
          sub_E71D4();
          if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v31 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
            sub_E7214();
          }

          sub_E7274();
          v25 = v55;
        }

        v27 += v28;
        --v26;
      }

      while (v26);
    }

    v32 = sub_10E70(v25);

    v33 = v47;
    v34 = sub_E7734();
    if (v33)
    {
    }

    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    result = sub_E62E4();
    v37 = v19[2];
    v38 = __OFSUB__(result, v37);
    v39 = result - v37;
    if (!v38)
    {
      v50 = v35;
      v51 = sub_3C9E8;
      v52 = v36;
      v53 = sub_37358;
      v54 = 0;
      sub_35508(v39 & ~(v39 >> 63), v49);
      v55 = v19;
      result = sub_227FC();
      *v43 = v55;
      return result;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_37270(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 objectID];
  LOBYTE(a2) = sub_C7084(v4, a2);

  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 title];
    if (v6)
    {
      v7 = v6;
      sub_E7064();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
    sub_3C9F0();
    v5 = sub_E7804();
  }

  return v5 & 1;
}

uint64_t sub_37358@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  return ShowEntity.init(model:)(v3, a2);
}

uint64_t sub_37394(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E61A4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = sub_E5FD4();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_3752C, 0, 0);
}

uint64_t sub_3752C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for ShowEntity(0);
  v0[13] = v5;
  sub_26324(v4 + *(v5 + 76), v3, &unk_12DB10, &qword_EAC60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[9], &unk_12DB10, &qword_EAC60);
    v6 = v0[12];
    v7 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v9 = v0[7];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[4];
    v16 = v0[5];
    sub_3C878(v0[9], v0[12], &type metadata accessor for ArtworkModel);
    sub_E5FA4();
    sub_E6194();
    v17 = *(v16 + 8);
    v0[14] = v17;
    v0[15] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v15);
    v18 = async function pointer to ImageContentProvider.url(for:)[1];
    v19 = swift_task_alloc();
    v0[16] = v19;
    v20 = sub_E6734();
    *v19 = v0;
    v19[1] = sub_37740;
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[3];

    return ImageContentProvider.url(for:)(v21, v22, v20, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_37740()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[7];
  v8 = v2[4];
  if (v0)
  {

    v6(v7, v8);
    v9 = sub_379D8;
  }

  else
  {
    v6(v7, v8);
    v9 = sub_378D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_378D4()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[2];
  sub_3C8E0(v0[12], &type metadata accessor for ArtworkModel);
  v4 = sub_E59C4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_3C940(v2, v3 + *(v1 + 80));
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_379D8()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[2];
  sub_3C8E0(v0[12], &type metadata accessor for ArtworkModel);
  v4 = sub_E59C4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_3C940(v2, v3 + *(v1 + 80));
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.defaultResult()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_E5A64();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_E7724();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() - 8);
  v2[10] = v8;
  v2[11] = *(v8 + 64);
  v2[12] = swift_task_alloc();
  v9 = sub_E5AB4();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_E5A54();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v2[19] = *(v14 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = sub_E5AC4();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v18 = sub_E6974();
  v2[26] = v18;
  v19 = *(v18 - 8);
  v2[27] = v19;
  v20 = *(v19 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_37E0C, 0, 0);
}

uint64_t sub_37E0C()
{
  v96 = v0;
  if ([objc_opt_self() isPodcastsApp])
  {
    v1 = v0[30];
    sub_E6944();
    v2 = sub_E6964();
    v3 = sub_E74B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Attempting to run widget query logic inside of the main podcasts app", v4, 2u);
    }

    v5 = v0[30];
    v6 = v0[26];
    v7 = v0[27];
    v8 = v0[3];

    (*(v7 + 8))(v5, v6);
    goto LABEL_6;
  }

  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v9 = sub_E7774();
  v10 = sub_E7754();
  v0[31] = v10;
  v24 = v0[25];
  v25 = v0[20];
  v26 = v0[18];
  v90 = v0[17];
  v94 = v10;
  v28 = v0[15];
  v27 = v0[16];
  v30 = v0[13];
  v29 = v0[14];
  v31 = v0;

  sub_E5AA4();
  (*(v29 + 104))(v28, enum case for Calendar.Component.month(_:), v30);
  sub_E5A44();
  sub_E5A84();
  v32 = *(v26 + 8);
  v0[32] = v32;
  v0[33] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v25, v90);
  (*(v29 + 8))(v28, v30);
  if ((*(v26 + 48))(v27, 1, v90) == 1)
  {
    v91 = v32;
    v33 = v0[29];
    v34 = v0[24];
    v35 = v0[25];
    v37 = v0[22];
    v36 = v0[23];
    sub_110AC(v31[16], &qword_131EE0, &unk_F5BE0);
    sub_E6944();
    (*(v36 + 16))(v34, v35, v37);
    v38 = sub_E6964();
    v87 = sub_E74B4();
    v39 = os_log_type_enabled(v38, v87);
    v40 = v31[29];
    v42 = v31[26];
    v41 = v31[27];
    v43 = v31[24];
    v44 = v31[25];
    v45 = v31[22];
    v46 = v31[23];
    if (v39)
    {
      log = v38;
      v77 = v31[20];
      v78 = v31[17];
      v84 = v31[29];
      v47 = v31[22];
      v48 = v31[5];
      v49 = v31[6];
      v82 = v31[26];
      v50 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v50 = 136380931;
      sub_E5A74();
      v51 = sub_E7094();
      v53 = v52;
      v54 = *(v46 + 8);
      v54(v43, v47);
      v55 = sub_23E64(v51, v53, v95);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      sub_E5A44();
      sub_3B7DC(&unk_12DDE0, &type metadata accessor for Date);
      v56 = sub_E7BB4();
      v58 = v57;
      v91(v77, v78);
      v59 = sub_23E64(v56, v58, v95);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_0, log, v87, "Unable to compute one month into the past. Defaulting to placeholder. Calendar: %{private}s | %s", v50, 0x16u);
      swift_arrayDestroy();

      (*(v41 + 8))(v84, v82);
      v54(v44, v47);
    }

    else
    {

      v76 = *(v46 + 8);
      v76(v43, v45);
      (*(v41 + 8))(v40, v42);
      v76(v44, v45);
    }

    v8 = v31[3];
    v0 = v31;
LABEL_6:
    v11 = type metadata accessor for ShowEntity(0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[28];
    v16 = v0[24];
    v15 = v0[25];
    v18 = v0[20];
    v17 = v0[21];
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[12];
    v89 = v0[9];
    v93 = v0[6];

    v22 = v0[1];

    return v22();
  }

  v60 = v0[20];
  v61 = v0[21];
  v62 = v0[18];
  v83 = v60;
  v85 = v0[19];
  v63 = v0[17];
  v64 = v0[12];
  v65 = v0[10];
  v79 = v65;
  loga = v0[11];
  v66 = v0[8];
  v88 = v31[7];
  v92 = v31[9];
  v67 = v31[4];
  v86 = *(v62 + 32);
  v86(v31[21], v31[16], v31[17]);
  sub_3C628(v67, v64, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  (*(v62 + 16))(v60, v61, v63);
  v68 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v69 = (loga + *(v62 + 80) + v68) & ~*(v62 + 80);
  v70 = swift_allocObject();
  v31[34] = v70;
  sub_3C878(v64, v70 + v68, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v86(v70 + v69, v83, v63);
  *(v70 + ((v85 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v94;
  (*(v66 + 104))(v92, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v88);
  v71 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v94;
  v72 = swift_task_alloc();
  v31[35] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  *v72 = v31;
  v72[1] = sub_38724;
  v74 = v31[9];
  v75 = v31[3];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v75, v74, sub_3B9AC, v70, v73);
}

uint64_t sub_38724()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[34];
  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v6 = sub_389E0;
  }

  else
  {
    v6 = sub_388A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_388A8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);

  v2(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v10 = *(v0 + 224);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 96);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_389E0()
{
  v40 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);

  v2(v6, v7);
  (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 288);
  v9 = *(v0 + 224);
  sub_E6944();
  swift_errorRetain();
  v10 = sub_E6964();
  v11 = sub_E74B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 216);
    v37 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136315138;
    *(v0 + 16) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v16 = sub_E7084();
    v18 = sub_23E64(v16, v17, &v39);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Unable to compute default entity for widget: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);

    (*(v12 + 8))(v37, v13);
  }

  else
  {
    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = *(v0 + 208);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 24);
  v23 = type metadata accessor for ShowEntity(0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v25 = *(v0 + 232);
  v24 = *(v0 + 240);
  v26 = *(v0 + 224);
  v28 = *(v0 + 192);
  v27 = *(v0 + 200);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  v33 = *(v0 + 96);
  v36 = *(v0 + 72);
  v38 = *(v0 + 48);

  v34 = *(v0 + 8);

  return v34();
}

void sub_38CC4(void *a1@<X2>, char *a2@<X8>)
{
  v5 = type metadata accessor for ShowEntity(0);
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v17 - v14;
  sub_38F20(a1, &v17 - v14);
  if (!v2)
  {
    sub_26324(v15, v13, &qword_12DCD8, &unk_EC540);
    v16 = v18;
    if ((*(v18 + 48))(v13, 1, v5) == 1)
    {
      sub_110AC(v13, &qword_12DCD8, &unk_EC540);
      sub_3922C(a2);
      sub_110AC(v15, &qword_12DCD8, &unk_EC540);
    }

    else
    {
      sub_110AC(v15, &qword_12DCD8, &unk_EC540);
      sub_3C878(v13, v8, type metadata accessor for ShowEntity);
      sub_3C878(v8, a2, type metadata accessor for ShowEntity);
      (*(v16 + 56))(a2, 0, 1, v5);
    }
  }
}

void sub_38F20(void *a1@<X1>, char *a2@<X8>)
{
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  v5 = sub_E77A4();
  sub_4ABC(0, &unk_12E080, NSDictionary_ptr);
  v6 = sub_E7734();
  if (v2)
  {

    return;
  }

  if (v6 >> 62)
  {
    v14 = v6;
    v15 = sub_E7AC4();
    v6 = v14;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_19:

    v19 = 0u;
    v20 = 0u;
    goto LABEL_20;
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  *&v17 = sub_E7064();
  *(&v17 + 1) = v9;
  v10 = [v8 __swift_objectForKeyedSubscript:sub_E7C34()];
  swift_unknownObjectRelease();

  if (v10)
  {
    sub_E7864();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
    if (swift_dynamicCast())
    {
      v11 = [a1 objectWithID:v17];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        ShowEntity.init(model:)(v12, a2);

        v13 = type metadata accessor for ShowEntity(0);
        (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
        return;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_110AC(&v19, &qword_1319B0, &qword_EAC58);
LABEL_21:
  v16 = type metadata accessor for ShowEntity(0);
  (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

void sub_3922C(char *a1@<X8>)
{
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E9EE0;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 predicateForSubscribedAndNotHidden];
  *(v4 + 40) = [v5 predicateForNotImplicitlyFollowedPodcasts];
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v7 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v3 setPredicate:v7];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  *(v8 + 32) = sub_E77E4();
  *(v8 + 40) = sub_E77D4();
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  v9 = sub_E71E4().super.isa;

  [v3 setSortDescriptors:v9];

  [v3 setFetchLimit:1];
  v10 = sub_E7734();
  if (v1)
  {

    return;
  }

  if (v10 >> 62)
  {
    v14 = v10;
    v15 = sub_E7AC4();
    v10 = v14;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = type metadata accessor for ShowEntity(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return;
  }

  if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_E79B4();
    goto LABEL_8;
  }

  if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(v10 + 32);
LABEL_8:
    v12 = v11;

    ShowEntity.init(model:)(v12, a1);

    v13 = type metadata accessor for ShowEntity(0);
    (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_39564(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  sub_E51D4();
  return v4;
}

uint64_t sub_3959C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return ShowEntity.SingleShowWidgetShowQuery.entities(matching:)(a2, a3);
}

uint64_t sub_39648(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E340;

  return (sub_3DB14)(a1);
}

uint64_t sub_396F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return ShowEntity.SingleShowWidgetShowQuery.suggestedEntities()();
}

uint64_t sub_39784(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_3B7DC(&qword_12DEA8, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  *v6 = v2;
  v6[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_39868(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ShowEntity.SingleShowWidgetShowQuery.defaultResult()(a1);
}

uint64_t sub_39900@<X0>(uint64_t *a1@<X8>)
{
  result = _s15PodcastsActions12DependenciesO03allC09JetEngine15BaseObjectGraphCyFZ_0();
  *a1 = result;
  return result;
}

Swift::Int sub_399AC(void **a1)
{
  v2 = *(type metadata accessor for ShowEntity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_CA308(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_39A54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_39A54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_E7BA4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ShowEntity(0);
        v6 = sub_E7264();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ShowEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_39E2C(v8, v9, a1, v4);
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
    return sub_39B80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_39B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for ShowEntity(0);
  v8 = *(*(v37 - 8) + 64);
  v9 = __chkstk_darwin(v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v35 = *a4;
    v29 = v18;
    v22 = v35 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    while (1)
    {
      sub_3C628(v22, v17, type metadata accessor for ShowEntity);
      sub_3C628(v19, v13, type metadata accessor for ShowEntity);
      v23 = *(v17 + 2);
      sub_E53E4();
      v24 = *(v13 + 2);
      sub_E53E4();
      sub_26028();
      v25 = sub_E7834();

      sub_3C8E0(v13, type metadata accessor for ShowEntity);
      result = sub_3C8E0(v17, type metadata accessor for ShowEntity);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_3C878(v22, v36, type metadata accessor for ShowEntity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_3C878(v26, v19, type metadata accessor for ShowEntity);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_39E2C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v123 = type metadata accessor for ShowEntity(0);
  v119 = *(v123 - 8);
  v8 = *(v119 + 64);
  v9 = __chkstk_darwin(v123);
  v112 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v122 = &v107 - v12;
  v13 = __chkstk_darwin(v11);
  v125 = &v107 - v14;
  result = __chkstk_darwin(v13);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 >= 1)
  {
    v107 = a4;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v111 = a3;
    while (1)
    {
      if (v18 + 1 >= v17)
      {
        v17 = v18 + 1;
      }

      else
      {
        v108 = v5;
        v20 = *(v119 + 72);
        a4 = *a3 + v20 * (v18 + 1);
        v121 = *a3;
        v21 = v121;
        v22 = v18;
        v23 = v124;
        sub_3C628(a4, v124, type metadata accessor for ShowEntity);
        v24 = v21 + v20 * v22;
        v25 = v125;
        sub_3C628(v24, v125, type metadata accessor for ShowEntity);
        v26 = *(v23 + 16);
        sub_E53E4();
        v120 = v126;
        v27 = *(v25 + 16);
        sub_E53E4();
        v116 = sub_26028();
        v118 = sub_E7834();

        sub_3C8E0(v25, type metadata accessor for ShowEntity);
        result = sub_3C8E0(v23, type metadata accessor for ShowEntity);
        v109 = v22;
        v28 = v22 + 2;
        v120 = v20;
        v29 = v121 + v20 * (v22 + 2);
        v117 = v19;
        while (v17 != v28)
        {
          LODWORD(v121) = v118 == -1;
          v30 = v17;
          v31 = v124;
          sub_3C628(v29, v124, type metadata accessor for ShowEntity);
          v32 = v125;
          sub_3C628(a4, v125, type metadata accessor for ShowEntity);
          v33 = *(v31 + 16);
          sub_E53E4();
          v34 = *(v32 + 16);
          sub_E53E4();
          v35 = sub_E7834();

          sub_3C8E0(v32, type metadata accessor for ShowEntity);
          v36 = v31;
          v17 = v30;
          result = sub_3C8E0(v36, type metadata accessor for ShowEntity);
          v19 = v117;
          ++v28;
          v29 += v120;
          a4 += v120;
          if (((v121 ^ (v35 != -1)) & 1) == 0)
          {
            v17 = v28 - 1;
            break;
          }
        }

        v5 = v108;
        v18 = v109;
        if (v118 == -1)
        {
          a3 = v111;
          if (v17 < v109)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return result;
          }

          if (v109 < v17)
          {
            v85 = v120 * (v17 - 1);
            v86 = v17 * v120;
            v87 = v17;
            v88 = v109 * v120;
            do
            {
              if (v18 != --v87)
              {
                v89 = *a3;
                if (!v89)
                {
                  goto LABEL_131;
                }

                a4 = v89 + v88;
                sub_3C878(v89 + v88, v112, type metadata accessor for ShowEntity);
                if (v88 < v85 || a4 >= v89 + v86)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v88 != v85)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_3C878(v112, v89 + v85, type metadata accessor for ShowEntity);
                a3 = v111;
              }

              ++v18;
              v85 -= v120;
              v86 -= v120;
              v88 += v120;
            }

            while (v18 < v87);
            v19 = v117;
            v18 = v109;
          }
        }

        else
        {
          a3 = v111;
        }
      }

      v37 = a3[1];
      if (v17 >= v37)
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v17, v18))
      {
        goto LABEL_123;
      }

      if (v17 - v18 >= v107)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v18, v107))
      {
        goto LABEL_124;
      }

      if (v18 + v107 >= v37)
      {
        v38 = a3[1];
      }

      else
      {
        v38 = v18 + v107;
      }

      if (v38 < v18)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v17 == v38)
      {
LABEL_21:
        v39 = v17;
        if (v17 < v18)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v117 = v19;
        v108 = v5;
        v90 = *a3;
        v91 = *(v119 + 72);
        v92 = *a3 + v91 * (v17 - 1);
        v93 = -v91;
        v109 = v18;
        v94 = v18 - v17;
        v121 = v90;
        v113 = v91;
        v114 = v38;
        a4 = v90 + v17 * v91;
        do
        {
          v120 = v17;
          v115 = a4;
          v116 = v94;
          v118 = v92;
          v95 = v92;
          do
          {
            v96 = v124;
            sub_3C628(a4, v124, type metadata accessor for ShowEntity);
            v97 = v125;
            sub_3C628(v95, v125, type metadata accessor for ShowEntity);
            v98 = *(v96 + 16);
            sub_E53E4();
            v99 = *(v97 + 16);
            sub_E53E4();
            sub_26028();
            v100 = sub_E7834();

            sub_3C8E0(v97, type metadata accessor for ShowEntity);
            result = sub_3C8E0(v96, type metadata accessor for ShowEntity);
            if (v100 != -1)
            {
              break;
            }

            if (!v121)
            {
              goto LABEL_128;
            }

            v101 = v122;
            sub_3C878(a4, v122, type metadata accessor for ShowEntity);
            swift_arrayInitWithTakeFrontToBack();
            sub_3C878(v101, v95, type metadata accessor for ShowEntity);
            v95 += v93;
            a4 += v93;
          }

          while (!__CFADD__(v94++, 1));
          v17 = v120 + 1;
          v39 = v114;
          v92 = v118 + v113;
          v94 = v116 - 1;
          a4 = v115 + v113;
        }

        while (v120 + 1 != v114);
        v5 = v108;
        a3 = v111;
        v19 = v117;
        v18 = v109;
        if (v114 < v109)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23350(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      a4 = *(v19 + 2);
      v40 = *(v19 + 3);
      v41 = a4 + 1;
      if (a4 >= v40 >> 1)
      {
        result = sub_23350((v40 > 1), a4 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v41;
      v42 = &v19[16 * a4];
      *(v42 + 4) = v18;
      *(v42 + 5) = v39;
      v114 = v39;
      v43 = *v110;
      if (!*v110)
      {
        goto LABEL_132;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v44 = *(v19 + 4);
            v45 = *(v19 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_41:
            if (v47)
            {
              goto LABEL_111;
            }

            v60 = &v19[16 * v41];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_114;
            }

            v66 = &v19[16 * a4 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_118;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                a4 = v41 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v70 = &v19[16 * v41];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_55:
          if (v65)
          {
            goto LABEL_113;
          }

          v73 = &v19[16 * a4];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_116;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_62:
          v81 = a4 - 1;
          if (a4 - 1 >= v41)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v82 = *&v19[16 * v81 + 32];
          v83 = *&v19[16 * a4 + 40];
          sub_3A888(*a3 + *(v119 + 72) * v82, *a3 + *(v119 + 72) * *&v19[16 * a4 + 32], *a3 + *(v119 + 72) * v83, v43);
          if (v5)
          {
          }

          if (v83 < v82)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_CA134(v19);
          }

          if (v81 >= *(v19 + 2))
          {
            goto LABEL_108;
          }

          v84 = &v19[16 * v81];
          *(v84 + 4) = v82;
          *(v84 + 5) = v83;
          v127 = v19;
          result = sub_CA0A8(a4);
          v19 = v127;
          v41 = *(v127 + 2);
          if (v41 <= 1)
          {
            goto LABEL_3;
          }
        }

        v48 = &v19[16 * v41 + 32];
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_109;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_110;
        }

        v55 = &v19[16 * v41];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_112;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_115;
        }

        if (v59 >= v51)
        {
          v77 = &v19[16 * a4 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_119;
          }

          if (v46 < v80)
          {
            a4 = v41 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v17 = a3[1];
      v18 = v114;
      if (v114 >= v17)
      {
        goto LABEL_95;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_95:
  a4 = *v110;
  if (!*v110)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_CA134(v19);
    v19 = result;
  }

  v127 = v19;
  v103 = *(v19 + 2);
  if (v103 >= 2)
  {
    while (*a3)
    {
      v104 = *&v19[16 * v103];
      v105 = *&v19[16 * v103 + 24];
      sub_3A888(*a3 + *(v119 + 72) * v104, *a3 + *(v119 + 72) * *&v19[16 * v103 + 16], *a3 + *(v119 + 72) * v105, a4);
      if (v5)
      {
      }

      if (v105 < v104)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_CA134(v19);
      }

      if (v103 - 2 >= *(v19 + 2))
      {
        goto LABEL_121;
      }

      v106 = &v19[16 * v103];
      *v106 = v104;
      *(v106 + 1) = v105;
      v127 = v19;
      result = sub_CA0A8(v103 - 1);
      v19 = v127;
      v103 = *(v127 + 2);
      if (v103 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t sub_3A888(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v45 = type metadata accessor for ShowEntity(0);
  v7 = *(*(v45 - 8) + 64);
  v8 = __chkstk_darwin(v45);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v46 = &v38 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v41 = -v13;
      v42 = a1;
      v28 = v46;
      while (2)
      {
        while (1)
        {
          v39 = v25;
          v29 = a2;
          v43 = a2;
          v44 = a2 + v26;
          while (1)
          {
            v31 = v48;
            if (v29 <= a1)
            {
              v51 = v29;
              v49 = v39;
              goto LABEL_60;
            }

            v40 = v25;
            v48 += v26;
            v32 = v27 + v26;
            sub_3C628(v32, v28, type metadata accessor for ShowEntity);
            v33 = v47;
            sub_3C628(v44, v47, type metadata accessor for ShowEntity);
            v34 = *(v28 + 16);
            sub_E53E4();
            v35 = *(v33 + 16);
            sub_E53E4();
            sub_26028();
            v36 = sub_E7834();

            sub_3C8E0(v33, type metadata accessor for ShowEntity);
            sub_3C8E0(v28, type metadata accessor for ShowEntity);
            if (v36 == -1)
            {
              break;
            }

            v25 = v32;
            if (v31 < v27 || v48 >= v27)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v42;
            }

            else
            {
              a1 = v42;
              if (v31 != v27)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v27 = v32;
            v30 = v32 > a4;
            v26 = v41;
            v29 = v43;
            if (!v30)
            {
              a2 = v43;
              goto LABEL_59;
            }
          }

          if (v31 < v43 || v48 >= v43)
          {
            break;
          }

          v37 = v31 == v43;
          a2 = v44;
          v26 = v41;
          a1 = v42;
          v25 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v27 <= a4)
          {
            goto LABEL_59;
          }
        }

        a2 = v44;
        swift_arrayInitWithTakeFrontToBack();
        v26 = v41;
        a1 = v42;
        v25 = v40;
        if (v27 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < v48)
    {
      v19 = v46;
      do
      {
        sub_3C628(a2, v19, type metadata accessor for ShowEntity);
        v20 = v47;
        sub_3C628(a4, v47, type metadata accessor for ShowEntity);
        v21 = *(v19 + 16);
        sub_E53E4();
        v22 = a4;
        v23 = *(v20 + 16);
        sub_E53E4();
        sub_26028();
        v24 = sub_E7834();

        sub_3C8E0(v20, type metadata accessor for ShowEntity);
        sub_3C8E0(v19, type metadata accessor for ShowEntity);
        if (v24 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
          goto LABEL_34;
        }

        a4 += v13;
        if (a1 < v22 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v50 = v22 + v13;
          goto LABEL_34;
        }

        v50 = v22 + v13;
LABEL_34:
        a1 += v13;
        v51 = a1;
      }

      while (a4 < v44 && a2 < v48);
    }
  }

LABEL_60:
  sub_447F4(&v51, &v50, &v49);
  return 1;
}

void sub_3AE44(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  if (*a3 != -1)
  {
    v21 = a5;
    v22 = a4;
    swift_once();
    a4 = v22;
    a5 = v21;
  }

  v11 = *a4;
  v12 = *a5;
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v13 = sub_E7774();
  if (v6)
  {
    *a2 = v6;
  }

  else
  {
    v14 = v13;
    v15 = sub_E7754();

    v16 = sub_E6834();
    v18 = v17;
    v20 = v19;

    *a6 = v16;
    *(a6 + 8) = v18;
    *(a6 + 16) = v20;
  }
}

uint64_t sub_3AF54(unint64_t a1, uint64_t (*a2)(id *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_E7AC4();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_E79B4();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a2(&v12);

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return v5;
}

uint64_t sub_3B044(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id *))
{
  v6 = a2;
  v7 = result;
  v8 = a2 > 0;
  v9 = a2 >> 63;
  if (a2 >> 63 < 0 && a4 >> 62)
  {
    v11 = a4;
    result = sub_E7AC4();
    a4 = v11;
    v6 = a2;
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v12 = __OFSUB__(0, v6);
  v6 = -v6;
  if (!v12)
  {
    if (v6 < 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_9:
    if (v7 == a3)
    {
      return 0;
    }

    v5 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!(a4 >> 62))
    {
      v13 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_13;
    }

LABEL_37:
    v20 = v6;
    v21 = a4;
    v22 = sub_E7AC4();
    a4 = v21;
    v6 = v20;
    v13 = v22;
LABEL_13:
    v8 |= v9;
    v9 = a4 & 0xC000000000000001;
    v23 = v6;
    v14 = a4 + 32;
    v15 = 1;
    while (1)
    {
      v25 = v15;
      v16 = v7;
      while (1)
      {
        v7 = v16 + v8;
        if (__OFADD__(v16, v8))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v7 == v13)
        {
          break;
        }

        if (v9)
        {
          v17 = sub_E79B4();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v7 >= *(v5 + 16))
          {
            goto LABEL_33;
          }

          v17 = *(v14 + 8 * v7);
        }

        v18 = v17;
        v27 = v17;
        v19 = a5(&v27);

        v16 += v8;
        if (v19)
        {
          goto LABEL_25;
        }
      }

      v7 = v13;
LABEL_25:
      v6 = v23;
      if (v25 == v23)
      {
        return v7;
      }

      if (v25 >= v23)
      {
        goto LABEL_34;
      }

      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_35;
      }

      if (v7 == a3)
      {
        return 0;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3B214()
{
  result = qword_12DA50;
  if (!qword_12DA50)
  {
    sub_4ABC(255, &qword_12DD80, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DA50);
  }

  return result;
}

uint64_t sub_3B27C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for ShowEntity.SingleShowWidgetShowQuery()
{
  result = qword_12DF20;
  if (!qword_12DF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_3B31C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_352D8(a1);
}

uint64_t sub_3B33C(uint64_t a1)
{
  v4 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_35744(a1, v1 + v5);
}

uint64_t sub_3B414()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B44C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_35C84(a1, v5);
}

uint64_t sub_3B500()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_E6734();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3B650(uint64_t a1)
{
  v4 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_37394(a1, v1 + v5);
}

uint64_t sub_3B728(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_35C84(a1, v5);
}

uint64_t sub_3B7DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B824()
{
  v1 = (type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_E5A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_E6734();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = *(v0 + v3 + v1[7]);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

void sub_3B9AC(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_E5A54() - 8);
  sub_38CC4(*(v1 + ((*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

unint64_t sub_3BAF4()
{
  result = qword_12DE48;
  if (!qword_12DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE48);
  }

  return result;
}

unint64_t sub_3BB4C()
{
  result = qword_12DE50;
  if (!qword_12DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE50);
  }

  return result;
}

unint64_t sub_3BBA4()
{
  result = qword_12DE58;
  if (!qword_12DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE58);
  }

  return result;
}

unint64_t sub_3BC44()
{
  result = qword_12DE60;
  if (!qword_12DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE60);
  }

  return result;
}

unint64_t sub_3BC98()
{
  result = qword_12DE70;
  if (!qword_12DE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12DD88, &qword_EA740);
    sub_3B7DC(&qword_12DE68, type metadata accessor for ShowEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE70);
  }

  return result;
}

uint64_t sub_3BF00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_3BF40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery() + 20));
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_3BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6734();
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

uint64_t sub_3C08C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6734();
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

void sub_3C144()
{
  sub_E6734();
  if (v0 <= 0x3F)
  {
    sub_3C1C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3C1C8()
{
  if (!qword_12DF30)
  {
    sub_E6DF4();
    v0 = sub_E5224();
    if (!v1)
    {
      atomic_store(v0, &qword_12DF30);
    }
  }
}

unint64_t sub_3C220()
{
  result = qword_12DF68;
  if (!qword_12DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DF68);
  }

  return result;
}

uint64_t sub_3C2A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_3C3E8()
{
  result = qword_12E008;
  if (!qword_12E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E008);
  }

  return result;
}

unint64_t sub_3C530()
{
  result = qword_12E048;
  if (!qword_12E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E048);
  }

  return result;
}

uint64_t sub_3C584()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3C5F0@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_3C628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_82Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_3C878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3C8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3C940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C9B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_3C9F0()
{
  result = qword_12E0A8;
  if (!qword_12E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E0A8);
  }

  return result;
}

size_t sub_3CA98(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for ChannelEntity();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1F0, &qword_EAED8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = (&v37 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1F8, qword_EAEE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v37 - v15);
  v17 = a1[2];
  v41 = (v7 + 48);
  v42 = (v7 + 56);

  i = 0;
  v38 = a1;
  v44 = a1;
  v20 = v17 == 0;
  if (v17)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  for (i = v17; ; ++i)
  {
    (*v42)(v14, v21, 1, v6);
    sub_45B04(v14, v16, &qword_12E1F8, qword_EAEE0);
    if ((*v41)(v16, 1, v6) == 1)
    {
      return v44;
    }

    v25 = v17;
    v26 = *v16;
    v27 = v6;
    v28 = v16 + *(v6 + 48);
    v29 = v39;
    sub_45B6C(v28, v39, type metadata accessor for ChannelEntity);
    v30 = sub_448F4(v29, v40);
    v32 = v31;
    sub_45BD4(v29, type metadata accessor for ChannelEntity);
    v33 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_42250(v33);
      v33 = result;
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v44;
      }
    }

    if (v26 >= v33[2])
    {
      break;
    }

    v34 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v44 = v33;
    v35 = (v33 + v34 + *(v43 + 72) * v26);
    v36 = v35[1];
    *v35 = v30;
    v35[1] = v32;

    v17 = v25;
    v6 = v27;
    v20 = i >= v25;
    if (i == v25)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v22 = v37;
    v23 = v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * i;
    v24 = *(v6 + 48);
    *v37 = i;
    sub_45A9C(v23, v22 + v24, type metadata accessor for ChannelEntity);
    sub_45B04(v22, v14, &qword_12E1F0, &qword_EAED8);
    v21 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

size_t sub_3CE38(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for StationEntity();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E130, &qword_EAE60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = (&v37 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E138, &qword_EAE68);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v37 - v15);
  v17 = a1[2];
  v41 = (v7 + 48);
  v42 = (v7 + 56);

  i = 0;
  v38 = a1;
  v44 = a1;
  v20 = v17 == 0;
  if (v17)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  for (i = v17; ; ++i)
  {
    (*v42)(v14, v21, 1, v6);
    sub_45B04(v14, v16, &qword_12E138, &qword_EAE68);
    if ((*v41)(v16, 1, v6) == 1)
    {
      return v44;
    }

    v25 = v17;
    v26 = *v16;
    v27 = v6;
    v28 = v16 + *(v6 + 48);
    v29 = v39;
    sub_45B6C(v28, v39, type metadata accessor for StationEntity);
    v30 = sub_44D00(v29, v40);
    v32 = v31;
    sub_45BD4(v29, type metadata accessor for StationEntity);
    v33 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_42264(v33);
      v33 = result;
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v44;
      }
    }

    if (v26 >= v33[2])
    {
      break;
    }

    v34 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v44 = v33;
    v35 = (v33 + v34 + *(v43 + 72) * v26);
    v36 = v35[1];
    *v35 = v30;
    v35[1] = v32;

    v17 = v25;
    v6 = v27;
    v20 = i >= v25;
    if (i == v25)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v22 = v37;
    v23 = v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * i;
    v24 = *(v6 + 48);
    *v37 = i;
    sub_45A9C(v23, v22 + v24, type metadata accessor for StationEntity);
    sub_45B04(v22, v14, &qword_12E130, &qword_EAE60);
    v21 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

size_t sub_3D1D8(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for EpisodeEntity(0);
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1D8, &qword_EAEC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = (&v37 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1E0, &qword_EAED0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v37 - v15);
  v17 = a1[2];
  v41 = (v7 + 48);
  v42 = (v7 + 56);

  i = 0;
  v38 = a1;
  v44 = a1;
  v20 = v17 == 0;
  if (v17)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  for (i = v17; ; ++i)
  {
    (*v42)(v14, v21, 1, v6);
    sub_45B04(v14, v16, &qword_12E1E0, &qword_EAED0);
    if ((*v41)(v16, 1, v6) == 1)
    {
      return v44;
    }

    v25 = v17;
    v26 = *v16;
    v27 = v6;
    v28 = v16 + *(v6 + 48);
    v29 = v39;
    sub_45B6C(v28, v39, type metadata accessor for EpisodeEntity);
    v30 = sub_4510C(v29, v40);
    v32 = v31;
    sub_45BD4(v29, type metadata accessor for EpisodeEntity);
    v33 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_42278(v33);
      v33 = result;
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v44;
      }
    }

    if (v26 >= v33[2])
    {
      break;
    }

    v34 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v44 = v33;
    v35 = (v33 + v34 + *(v43 + 72) * v26);
    v36 = v35[1];
    *v35 = v30;
    v35[1] = v32;

    v17 = v25;
    v6 = v27;
    v20 = i >= v25;
    if (i == v25)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v22 = v37;
    v23 = v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * i;
    v24 = *(v6 + 48);
    *v37 = i;
    sub_45A9C(v23, v22 + v24, type metadata accessor for EpisodeEntity);
    sub_45B04(v22, v14, &qword_12E1D8, &qword_EAEC8);
    v21 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

size_t sub_3D578(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for ShowEntity(0);
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1A0, &qword_EAEB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = (&v37 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1A8, &qword_EAEB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v37 - v15);
  v17 = a1[2];
  v41 = (v7 + 48);
  v42 = (v7 + 56);

  i = 0;
  v38 = a1;
  v44 = a1;
  v20 = v17 == 0;
  if (v17)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  for (i = v17; ; ++i)
  {
    (*v42)(v14, v21, 1, v6);
    sub_45B04(v14, v16, &qword_12E1A8, &qword_EAEB8);
    if ((*v41)(v16, 1, v6) == 1)
    {
      return v44;
    }

    v25 = v17;
    v26 = *v16;
    v27 = v6;
    v28 = v16 + *(v6 + 48);
    v29 = v39;
    sub_45B6C(v28, v39, type metadata accessor for ShowEntity);
    v30 = sub_45518(v29, v40);
    v32 = v31;
    sub_45BD4(v29, type metadata accessor for ShowEntity);
    v33 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_4228C(v33);
      v33 = result;
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v44;
      }
    }

    if (v26 >= v33[2])
    {
      break;
    }

    v34 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v44 = v33;
    v35 = (v33 + v34 + *(v43 + 72) * v26);
    v36 = v35[1];
    *v35 = v30;
    v35[1] = v32;

    v17 = v25;
    v6 = v27;
    v20 = i >= v25;
    if (i == v25)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v22 = v37;
    v23 = v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * i;
    v24 = *(v6 + 48);
    *v37 = i;
    sub_45A9C(v23, v22 + v24, type metadata accessor for ShowEntity);
    sub_45B04(v22, v14, &qword_12E1A0, &qword_EAEB0);
    v21 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_3D918(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
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

      sub_BEB48(&v13, v11, v12);

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

uint64_t sub_3DA1C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_E7884();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_45924(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_3DA98(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_42BE4(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_3DB14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_E7324();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_3DBD4, 0, 0);
}

uint64_t sub_3DBD4()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_E7374();
  v5 = sub_E7764();
  v0[7] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = v0[2];

  v0[8] = sub_10C40(v7);

  v8 = type metadata accessor for ShowEntity(0);
  sub_45C34(&qword_12DDF0, type metadata accessor for ShowEntity);
  v9 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v6, v8);
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_3DDD4;
  v11 = v0[3];

  return sub_3EAB4(v9, v5);
}

uint64_t sub_3DDD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *v2;
  v5[11] = a1;
  v5[12] = a2;

  v9 = swift_task_alloc();
  v5[13] = v9;
  *v9 = v8;
  v9[1] = sub_3DF7C;
  v10 = v5[7];
  v11 = v5[3];

  return sub_3F324(a1, a2, v10);
}

uint64_t sub_3DF7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_3E15C;
  }

  else
  {
    v8 = v4[11];
    v9 = v4[12];

    v4[15] = a1;
    v7 = sub_3E0B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3E0B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = sub_3D578(*(v0 + 120), *(v0 + 64));

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_3E15C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[14];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_3E1E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E7324();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_3E2A8, 0, 0);
}

uint64_t sub_3E2A8()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_E7374();
  v5 = sub_E7764();
  v0[7] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = v0[2];

  v0[8] = sub_10C40(v7);

  v8 = type metadata accessor for StationEntity();
  sub_45C34(&qword_12DC58, type metadata accessor for StationEntity);
  v9 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v6, v8);
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_3E4A4;

  return sub_3E8D4(v9, v5);
}

uint64_t sub_3E4A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *v2;
  v5[11] = a1;
  v5[12] = a2;

  v9 = swift_task_alloc();
  v5[13] = v9;
  *v9 = v8;
  v9[1] = sub_3E648;
  v10 = v5[7];
  v11 = v5[3];

  return (sub_3ECA4)(a1, a2, v10, v11);
}

uint64_t sub_3E648(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = v1;

  v7 = v4[12];
  v8 = v4[11];
  if (v1)
  {
    v9 = v4[8];

    v10 = sub_3E868;
  }

  else
  {

    v4[15] = a1;
    v10 = sub_3E7C0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_3E7C0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = sub_3CE38(*(v0 + 120), *(v0 + 64));

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_3E868()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_3E8D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3E8F4, 0, 0);
}

uint64_t sub_3E8F4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    sub_15D58(0, *(v1 + 16), 0);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_E7064();

      v7 = sub_E6834();
      v9 = v8;
      v11 = v10;

      v13 = *(v22 + 16);
      v12 = *(v22 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_15D58((v12 > 1), v13 + 1, 1);
      }

      *(v22 + 16) = v13 + 1;
      v14 = v22 + 24 * v13;
      *(v14 + 32) = v7;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      v4 += 2;
      --v2;
    }

    while (v2);
    v0 = v21;
  }

  sub_E7224();
  v16 = v15;

  v18 = sub_10C40(v17);
  swift_bridgeObjectRelease_n();

  v19 = v0[1];

  return v19(v16, v18);
}

uint64_t sub_3EAB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3EAD4, 0, 0);
}

uint64_t sub_3EAD4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    sub_15D58(0, *(v1 + 16), 0);
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = qword_12CAF0;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_E6834();
      v10 = v9;
      v12 = v11;

      v14 = *(v23 + 16);
      v13 = *(v23 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_15D58((v13 > 1), v14 + 1, 1);
      }

      *(v23 + 16) = v14 + 1;
      v15 = v23 + 24 * v14;
      *(v15 + 32) = v8;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      v4 += 2;
      --v2;
    }

    while (v2);
    v0 = v22;
  }

  sub_E7224();
  v17 = v16;

  v19 = sub_10C40(v18);
  swift_bridgeObjectRelease_n();

  v20 = v0[1];

  return v20(v17, v19);
}

uint64_t sub_3ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_E6974();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for StationEntity();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_3EDC4, 0, 0);
}

uint64_t sub_3EDC4()
{
  v0[2] = v0[6];

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_3EE80;
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  return sub_3FA20(v5, v4, v2, v3);
}

uint64_t sub_3EE80(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_45C7C;
  }

  else
  {
    v5 = sub_3EF94;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_3EF94()
{
  v36 = v0;
  v1 = 0;
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = *(v2 + 16);
  v33 = _swiftEmptyArrayStorage;
  while (v5 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[14];
    sub_45A9C(v0[16] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1++, v6, type metadata accessor for StationEntity);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);

    sub_45BD4(v6, type metadata accessor for StationEntity);
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22FBC(0, *(v33 + 2) + 1, 1, v33);
      }

      v10 = *(v33 + 2);
      v9 = *(v33 + 3);
      if (v10 >= v9 >> 1)
      {
        v33 = sub_22FBC((v9 > 1), v10 + 1, 1, v33);
      }

      *(v33 + 2) = v10 + 1;
      v11 = &v33[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }
  }

  sub_3DA98(v33);

  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_1BFDC();
  if (sub_E7404())
  {
    v12 = v0[11];
    sub_E6914();
    v13 = sub_E6964();
    v14 = sub_E74B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[12];
      v34 = v0[11];
      v17 = v0[9];
      v16 = v0[10];
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v18 = 136315394;
      v0[4] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E178, &unk_EAE88);
      v19 = sub_E7084();
      v21 = sub_23E64(v19, v20, &v35);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;

      v22 = sub_E73B4();
      v24 = v23;

      v25 = sub_23E64(v22, v24, &v35);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_0, v13, v14, "Failed to find requested local entities (%s) with identifiers: %s", v18, 0x16u);
      swift_arrayDestroy();

      (*(v16 + 8))(v34, v17);
    }

    else
    {
      v27 = v0[10];
      v26 = v0[11];
      v28 = v0[9];

      (*(v27 + 8))(v26, v28);
    }
  }

  v29 = v0[14];
  v30 = v0[11];

  v31 = v0[1];
  v32 = v0[16];

  v31(v32);
}

uint64_t sub_3F324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_E6974();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for ShowEntity(0);
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_3F444, 0, 0);
}

uint64_t sub_3F444()
{
  v0[2] = v0[6];

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_3F500;
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  return sub_3FFD4(v5, v4, v2);
}

uint64_t sub_3F500(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_3F9A4;
  }

  else
  {
    v5 = sub_3F614;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_3F614()
{
  v36 = v0;
  v1 = 0;
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = *(v2 + 16);
  v33 = _swiftEmptyArrayStorage;
  while (v5 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[14];
    sub_45A9C(v0[16] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1++, v6, type metadata accessor for ShowEntity);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);

    sub_45BD4(v6, type metadata accessor for ShowEntity);
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22FBC(0, *(v33 + 2) + 1, 1, v33);
      }

      v10 = *(v33 + 2);
      v9 = *(v33 + 3);
      if (v10 >= v9 >> 1)
      {
        v33 = sub_22FBC((v9 > 1), v10 + 1, 1, v33);
      }

      *(v33 + 2) = v10 + 1;
      v11 = &v33[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }
  }

  sub_3DA98(v33);

  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_1BFDC();
  if (sub_E7404())
  {
    v12 = v0[11];
    sub_E6914();
    v13 = sub_E6964();
    v14 = sub_E74B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[12];
      v34 = v0[11];
      v17 = v0[9];
      v16 = v0[10];
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v18 = 136315394;
      v0[4] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DF90, &qword_EAB78);
      v19 = sub_E7084();
      v21 = sub_23E64(v19, v20, &v35);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;

      v22 = sub_E73B4();
      v24 = v23;

      v25 = sub_23E64(v22, v24, &v35);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_0, v13, v14, "Failed to find requested local entities (%s) with identifiers: %s", v18, 0x16u);
      swift_arrayDestroy();

      (*(v16 + 8))(v34, v17);
    }

    else
    {
      v27 = v0[10];
      v26 = v0[11];
      v28 = v0[9];

      (*(v27 + 8))(v26, v28);
    }
  }

  v29 = v0[14];
  v30 = v0[11];

  v31 = v0[1];
  v32 = v0[16];

  v31(v32);
}

uint64_t sub_3F9A4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_3FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a2;
  v4[6] = a3;
  v4[4] = a1;
  v6 = sub_E7724();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_3FAEC, 0, 0);
}

uint64_t sub_3FAEC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  v0[10] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v8 + 32) = sub_E7544();
  v9 = sub_45978();
  *(v8 + 40) = (*(v9 + 40))(v6, &type metadata for StationEntity.StationEntityQuery, v9);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v11 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v7 setPredicate:v11];
  v12 = swift_allocObject();
  v0[11] = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v7;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v14 = v4;
  v15 = v7;
  v16 = swift_task_alloc();
  v0[12] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  *v16 = v0;
  v16[1] = sub_3FD60;
  v18 = v0[9];
  v19 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v18, sub_45A0C, v12, v17);
}

uint64_t sub_3FD60()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_3FF68;
  }

  else
  {
    v7 = sub_3FEF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3FEF4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_3FF68()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_3FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_E7724();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_40098, 0, 0);
}

uint64_t sub_40098()
{
  if (qword_12CAF0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[6];
  v24 = v0[7];
  v25 = v0[9];
  v3 = v0[4];
  v23 = v0[5];
  v4 = v0[3];
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_E7024();
  v7 = [v5 initWithEntityName:v6];
  v0[10] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v8 + 32) = sub_E7544();
  v9 = sub_45C34(&unk_12E1C0, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v10 = *(v9 + 40);
  v11 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery();
  *(v8 + 40) = v10(v3, v11, v9);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v13 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v7 setPredicate:v13];
  v14 = swift_allocObject();
  v0[11] = v14;
  *(v14 + 16) = v23;
  *(v14 + 24) = v7;
  (*(v1 + 104))(v25, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v24);
  v15 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v16 = v23;
  v17 = v7;
  v18 = swift_task_alloc();
  v0[12] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
  *v18 = v0;
  v18[1] = sub_403A4;
  v20 = v0[9];
  v21 = v0[5];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v20, sub_45A38, v14, v19);
}

uint64_t sub_403A4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_3FF68;
  }

  else
  {
    v7 = sub_40538;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_40538()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

void *sub_405AC(void *a1)
{
  v3 = type metadata accessor for StationEntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &unk_12E190, MTPlaylist_ptr);
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
  result = sub_15DDC(0, v11 & ~(v11 >> 63), 0);
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

      StationEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15DDC(v15 > 1, v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_45B6C(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for StationEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_407D0(void *a1)
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
      sub_45B6C(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for ShowEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t StationEntity.StationEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5204();
  *a1 = result;
  return result;
}

uint64_t StationEntity.StationEntityQuery.allStationEntities(in:)(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_E7724();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_40B5C, 0, 0);
}

uint64_t sub_40B5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v6 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v7 = v4;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  *v8 = v0;
  v8[1] = sub_40C90;
  v10 = v0[6];
  v11 = v0[3];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v10, sub_26534, v5, v9);
}

uint64_t sub_40C90()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_40E90;
  }

  else
  {
    v7 = sub_40E24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_40E24()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_40E90()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void (*StationEntity.StationEntityQuery.objectGraph.modify(uint64_t *a1))(void *a1)
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

id StationEntity.StationEntityQuery.predicate(forUuids:)()
{
  v0 = objc_opt_self();
  isa = sub_E73A4().super.isa;
  v2 = [v0 predicateForStationsWithUUIDs:isa];

  return v2;
}

uint64_t StationEntity.StationEntityQuery.suggestedEntities()()
{
  v2 = sub_E7724();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_E7324();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v0;
  v1[10] = v8;
  v1[11] = v9;

  return _swift_task_switch(sub_410F8, 0, 0);
}

uint64_t sub_410F8()
{
  v1 = v0[11];
  sub_E51D4();
  v0[12] = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_411C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_411C4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_325F8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_412E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_412E0()
{
  v1 = v0[2];
  v2 = v0[14];
  v3 = v0[10];
  swift_getObjectType();
  sub_6C94();
  v4 = sub_E7764();
  v0[15] = v4;
  if (v2)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v5 = v0[10];
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v4;
    v10 = v0[7];
    v11 = v0[5];
    v12 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    v0[16] = v13;
    *(v13 + 16) = v9;
    (*(v12 + 104))(v10, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v14 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v9;
    v15 = swift_task_alloc();
    v0[17] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
    *v15 = v0;
    v15[1] = sub_414E0;
    v17 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v17, sub_45C84, v13, v16);
  }
}

uint64_t sub_414E0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = v2[16];
  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v6 = sub_32670;
  }

  else
  {
    v6 = sub_41664;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_41664()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4(v3);
}

void sub_416F0(void *a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for StationEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  v8 = [objc_opt_self() predicateForIsHidden:0];
  [v7 setPredicate:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_E9F00;
  *(v9 + 32) = [objc_allocWithZone(NSSortDescriptor) initWithKey:kPlaylistTitle ascending:1];
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  isa = sub_E71E4().super.isa;

  [v7 setSortDescriptors:isa];

  sub_4ABC(0, &unk_12E190, MTPlaylist_ptr);
  v11 = sub_E7734();
  if (v1)
  {

    return;
  }

  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    v14 = v22;
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_15:

    *v14 = _swiftEmptyArrayStorage;
    return;
  }

  v13 = sub_E7AC4();
  v14 = v22;
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_5:
  v20[1] = 0;
  v21 = v7;
  v23 = _swiftEmptyArrayStorage;
  sub_15DDC(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v16 = v23;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = sub_E79B4();
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      StationEntity.init(model:)(v17, v6);
      v23 = v16;
      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        sub_15DDC(v18 > 1, v19 + 1, 1);
        v16 = v23;
      }

      ++v15;
      v16[2] = v19 + 1;
      sub_45B6C(v6, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, type metadata accessor for StationEntity);
    }

    while (v13 != v15);

    *v22 = v16;
  }
}

uint64_t sub_41A4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t StationEntity.StationEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[10] = a2;
  v4 = *(type metadata accessor for StationEntity() - 8);
  v3[11] = v4;
  v5 = *(v4 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[8] = *v2;
  v6 = swift_task_alloc();
  v3[14] = v6;
  *v6 = v3;
  v6[1] = sub_41B84;

  return StationEntity.StationEntityQuery.suggestedEntities()();
}

uint64_t sub_41B84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_41F44;
  }

  else
  {
    v5 = sub_41C98;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_41C98()
{
  v25 = v0;
  v1 = v0[15];
  v23 = *(v1 + 16);
  if (v23)
  {
    v2 = 0;
    v3 = v0[11];
    v21 = v3;
    v22 = v0[13];
    v4 = _swiftEmptyArrayStorage;
    while (v2 < *(v1 + 16))
    {
      v5 = v0[9];
      v6 = v0[10];
      v7 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v8 = *(v21 + 72);
      sub_45A9C(v0[15] + v7 + v8 * v2, v0[13], type metadata accessor for StationEntity);
      v9 = *(v22 + 40);
      sub_E53E4();
      v10 = v0[3];
      v0[4] = v0[2];
      v0[5] = v10;
      v0[6] = v5;
      v0[7] = v6;
      sub_26028();
      LOBYTE(v9) = sub_E7844();

      v11 = v0[13];
      if (v9)
      {
        sub_45B6C(v11, v0[12], type metadata accessor for StationEntity);
        v24 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_15DDC(0, v4[2] + 1, 1);
          v4 = v24;
        }

        v13 = v4[2];
        v12 = v4[3];
        if (v13 >= v12 >> 1)
        {
          sub_15DDC(v12 > 1, v13 + 1, 1);
          v4 = v24;
        }

        v14 = v0[12];
        v4[2] = v13 + 1;
        sub_45B6C(v14, v4 + v7 + v13 * v8, type metadata accessor for StationEntity);
      }

      else
      {
        sub_45BD4(v11, type metadata accessor for StationEntity);
      }

      if (v23 == ++v2)
      {
        v15 = v0[15];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_14:
    v16 = v0[16];

    v24 = v4;

    sub_43068(&v24);
    if (v16)
    {
    }

    else
    {
      v17 = v0[12];
      v18 = v0[13];

      v19 = v24;

      v20 = v0[1];

      v20(v19);
    }
  }
}

uint64_t sub_41F44()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_41FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return StationEntity.StationEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_42058(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return sub_3E1E8(a1, v4);
}

uint64_t sub_4210C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return StationEntity.StationEntityQuery.suggestedEntities()();
}

uint64_t sub_4219C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_4315C();
  *v6 = v2;
  v6[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_422A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_424F4(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_42464(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_42464(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_424F4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_424F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_E7CC4();

      sub_E7124();
      v27 = sub_E7CF4();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_E7BD4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_428D0(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_E7CC4();

      sub_E7124();
      v41 = sub_E7CF4();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_E7BD4() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_428D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  result = sub_E7964();
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
    v19 = v9[5];
    sub_E7CC4();

    sub_E7124();
    result = sub_E7CF4();
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
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
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

uint64_t sub_42AF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_E7CB4();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_C15CC();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_42D20(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_42BE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_E7CC4();
  sub_E7124();
  v7 = sub_E7CF4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_E7BD4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_C1470();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_42EA4(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_42D20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_E7894();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_E7CB4() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_42EA4(unint64_t result)
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

    v9 = sub_E7894();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_E7CC4();

        sub_E7124();
        v15 = sub_E7CF4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

Swift::Int sub_43068(void **a1)
{
  v2 = *(type metadata accessor for StationEntity() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_CA31C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_43450(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_4315C()
{
  result = qword_12E0F8;
  if (!qword_12E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E0F8);
  }

  return result;
}

unint64_t sub_431B4()
{
  result = qword_12E100;
  if (!qword_12E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E100);
  }

  return result;
}

unint64_t sub_4320C()
{
  result = qword_12E108;
  if (!qword_12E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E108);
  }

  return result;
}

unint64_t sub_432AC()
{
  result = qword_12E110;
  if (!qword_12E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E110);
  }

  return result;
}

unint64_t sub_4334C()
{
  result = qword_12E120;
  if (!qword_12E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12E0B0, &qword_EA2E0);
    sub_45C34(&qword_12E118, type metadata accessor for StationEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E120);
  }

  return result;
}

uint64_t sub_43400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

Swift::Int sub_43450(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_E7BA4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for StationEntity();
        v6 = sub_E7264();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for StationEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_43818(v8, v9, a1, v4);
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
    return sub_4357C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_4357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for StationEntity();
  v8 = *(*(v38 - 8) + 64);
  v9 = __chkstk_darwin(v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    while (1)
    {
      sub_45A9C(v22, v17, type metadata accessor for StationEntity);
      sub_45A9C(v20, v13, type metadata accessor for StationEntity);
      v23 = *(v17 + 5);
      sub_E53E4();
      v24 = *(v13 + 5);
      sub_E53E4();
      sub_26028();
      v25 = sub_E7834();

      sub_45BD4(v13, type metadata accessor for StationEntity);
      result = sub_45BD4(v17, type metadata accessor for StationEntity);
      if (v25 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_45B6C(v22, v37, type metadata accessor for StationEntity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_45B6C(v26, v20, type metadata accessor for StationEntity);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_43818(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v126 = type metadata accessor for StationEntity();
  v8 = *(v126 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v126);
  v114 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v125 = &v108 - v13;
  v14 = __chkstk_darwin(v12);
  v128 = &v108 - v15;
  result = __chkstk_darwin(v14);
  v127 = &v108 - v17;
  v18 = a3[1];
  if (v18 >= 1)
  {
    v109 = a4;
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    v110 = a3;
    v111 = v8;
    while (1)
    {
      v21 = v19 + 1;
      v120 = v20;
      if (v19 + 1 >= v18)
      {
        v31 = v19 + 1;
      }

      else
      {
        v122 = v18;
        v22 = v19;
        v113 = v19;
        v23 = *(v8 + 72);
        a4 = *a3 + v23 * v21;
        v124 = *a3;
        v24 = v124;
        v25 = v127;
        sub_45A9C(a4, v127, type metadata accessor for StationEntity);
        v26 = v128;
        sub_45A9C(v24 + v23 * v22, v128, type metadata accessor for StationEntity);
        v27 = *(v25 + 40);
        sub_E53E4();
        v123 = v129;
        v28 = *(v26 + 40);
        sub_E53E4();
        v118 = sub_26028();
        v119 = sub_E7834();

        sub_45BD4(v26, type metadata accessor for StationEntity);
        result = sub_45BD4(v25, type metadata accessor for StationEntity);
        v29 = v113 + 2;
        v123 = v23;
        v30 = v124 + v23 * (v113 + 2);
        while (1)
        {
          v31 = v122;
          if (v122 == v29)
          {
            break;
          }

          LODWORD(v124) = v119 == -1;
          v32 = v127;
          sub_45A9C(v30, v127, type metadata accessor for StationEntity);
          v121 = v5;
          v33 = v128;
          sub_45A9C(a4, v128, type metadata accessor for StationEntity);
          v34 = *(v32 + 40);
          sub_E53E4();
          v35 = *(v33 + 40);
          sub_E53E4();
          v36 = sub_E7834();

          v37 = v33;
          v5 = v121;
          sub_45BD4(v37, type metadata accessor for StationEntity);
          result = sub_45BD4(v32, type metadata accessor for StationEntity);
          v20 = v120;
          ++v29;
          v30 += v123;
          a4 += v123;
          if (((v124 ^ (v36 != -1)) & 1) == 0)
          {
            v31 = v29 - 1;
            break;
          }
        }

        a3 = v110;
        v8 = v111;
        v19 = v113;
        if (v119 == -1)
        {
          if (v31 < v113)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            return result;
          }

          if (v113 < v31)
          {
            v38 = v123 * (v31 - 1);
            v39 = v31 * v123;
            v122 = v31;
            v40 = v113;
            v41 = v113 * v123;
            do
            {
              if (v40 != --v31)
              {
                v42 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                a4 = v42 + v41;
                sub_45B6C(v42 + v41, v114, type metadata accessor for StationEntity);
                if (v41 < v38 || a4 >= v42 + v39)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v41 != v38)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_45B6C(v114, v42 + v38, type metadata accessor for StationEntity);
                v20 = v120;
              }

              ++v40;
              v38 -= v123;
              v39 -= v123;
              v41 += v123;
            }

            while (v40 < v31);
            v8 = v111;
            v19 = v113;
            v31 = v122;
          }
        }
      }

      v43 = a3[1];
      if (v31 >= v43)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v31, v19))
      {
        goto LABEL_122;
      }

      if (v31 - v19 >= v109)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v19, v109))
      {
        goto LABEL_123;
      }

      if (v19 + v109 >= v43)
      {
        a4 = a3[1];
      }

      else
      {
        a4 = v19 + v109;
      }

      if (a4 < v19)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v31 == a4)
      {
LABEL_32:
        a4 = v31;
        if (v31 < v19)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v121 = v5;
        v90 = *a3;
        v91 = *(v8 + 72);
        v92 = *a3 + v91 * (v31 - 1);
        v123 = -v91;
        v124 = v90;
        v113 = v19;
        v93 = v19 - v31;
        v115 = v91;
        v116 = a4;
        v94 = v90 + v31 * v91;
        do
        {
          v122 = v31;
          v117 = v94;
          v118 = v93;
          v95 = v94;
          v119 = v92;
          v96 = v92;
          do
          {
            v97 = v127;
            sub_45A9C(v95, v127, type metadata accessor for StationEntity);
            v98 = v128;
            sub_45A9C(v96, v128, type metadata accessor for StationEntity);
            v99 = *(v97 + 40);
            sub_E53E4();
            v100 = *(v98 + 40);
            sub_E53E4();
            sub_26028();
            v101 = sub_E7834();

            sub_45BD4(v98, type metadata accessor for StationEntity);
            result = sub_45BD4(v97, type metadata accessor for StationEntity);
            if (v101 != -1)
            {
              break;
            }

            if (!v124)
            {
              goto LABEL_127;
            }

            v102 = v125;
            sub_45B6C(v95, v125, type metadata accessor for StationEntity);
            swift_arrayInitWithTakeFrontToBack();
            sub_45B6C(v102, v96, type metadata accessor for StationEntity);
            v96 += v123;
            v95 += v123;
          }

          while (!__CFADD__(v93++, 1));
          v31 = v122 + 1;
          a4 = v116;
          v92 = v119 + v115;
          v93 = v118 - 1;
          v94 = v117 + v115;
        }

        while (v122 + 1 != v116);
        v20 = v120;
        v5 = v121;
        a3 = v110;
        v8 = v111;
        v19 = v113;
        if (v116 < v113)
        {
          goto LABEL_121;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v116 = a4;
      if ((result & 1) == 0)
      {
        result = sub_23350(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      a4 = *(v20 + 2);
      v44 = *(v20 + 3);
      v45 = a4 + 1;
      if (a4 >= v44 >> 1)
      {
        result = sub_23350((v44 > 1), a4 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v45;
      v46 = &v20[16 * a4];
      v47 = v116;
      *(v46 + 4) = v19;
      *(v46 + 5) = v47;
      v48 = *v112;
      if (!*v112)
      {
        goto LABEL_131;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_52:
            if (v52)
            {
              goto LABEL_110;
            }

            v65 = &v20[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = &v20[16 * a4 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_117;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                a4 = v45 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v75 = &v20[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_112;
          }

          v78 = &v20[16 * a4];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_115;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_73:
          v86 = a4 - 1;
          if (a4 - 1 >= v45)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v87 = *&v20[16 * v86 + 32];
          v88 = *&v20[16 * a4 + 40];
          sub_4424C(*a3 + *(v8 + 72) * v87, *a3 + *(v8 + 72) * *&v20[16 * a4 + 32], *a3 + *(v8 + 72) * v88, v48);
          if (v5)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_CA134(v20);
          }

          if (v86 >= *(v20 + 2))
          {
            goto LABEL_107;
          }

          v89 = &v20[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          v130 = v20;
          result = sub_CA0A8(a4);
          v20 = v130;
          v45 = *(v130 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v53 = &v20[16 * v45 + 32];
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_108;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_109;
        }

        v60 = &v20[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_111;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v64 >= v56)
        {
          v82 = &v20[16 * a4 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v51 < v85)
          {
            a4 = v45 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v18 = a3[1];
      v19 = v116;
      if (v116 >= v18)
      {
        goto LABEL_94;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_94:
  a4 = *v112;
  if (!*v112)
  {
    goto LABEL_132;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_125:
    result = sub_CA134(v20);
    v20 = result;
  }

  v130 = v20;
  v104 = *(v20 + 2);
  if (v104 >= 2)
  {
    while (*a3)
    {
      v105 = *&v20[16 * v104];
      v106 = *&v20[16 * v104 + 24];
      sub_4424C(*a3 + *(v8 + 72) * v105, *a3 + *(v8 + 72) * *&v20[16 * v104 + 16], *a3 + *(v8 + 72) * v106, a4);
      if (v5)
      {
      }

      if (v106 < v105)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_CA134(v20);
      }

      if (v104 - 2 >= *(v20 + 2))
      {
        goto LABEL_120;
      }

      v107 = &v20[16 * v104];
      *v107 = v105;
      *(v107 + 1) = v106;
      v130 = v20;
      result = sub_CA0A8(v104 - 1);
      v20 = v130;
      v104 = *(v130 + 2);
      if (v104 <= 1)
      {
      }
    }

    goto LABEL_129;
  }
}

uint64_t sub_4424C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v45 = type metadata accessor for StationEntity();
  v7 = *(*(v45 - 8) + 64);
  v8 = __chkstk_darwin(v45);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v46 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v52 = a1;
  v51 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v48 = a1;
      v41 = a4;
      v42 = -v13;
      while (2)
      {
        while (1)
        {
          v39 = v26;
          v43 = a2;
          v44 = a2 + v27;
          while (1)
          {
            v30 = v49;
            if (a2 <= a1)
            {
              v52 = a2;
              v50 = v39;
              goto LABEL_58;
            }

            v40 = v26;
            v49 += v27;
            v31 = v28 + v27;
            v32 = v46;
            sub_45A9C(v31, v46, type metadata accessor for StationEntity);
            v33 = v47;
            sub_45A9C(v44, v47, type metadata accessor for StationEntity);
            v34 = *(v32 + 40);
            sub_E53E4();
            v35 = *(v33 + 40);
            sub_E53E4();
            sub_26028();
            v36 = sub_E7834();

            sub_45BD4(v33, type metadata accessor for StationEntity);
            sub_45BD4(v32, type metadata accessor for StationEntity);
            if (v36 == -1)
            {
              break;
            }

            v26 = v31;
            v37 = v41;
            if (v30 < v28 || v49 >= v28)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
            }

            else
            {
              a1 = v48;
              if (v30 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v28 = v31;
            v29 = v31 > v37;
            v27 = v42;
            a2 = v43;
            if (!v29)
            {
              goto LABEL_56;
            }
          }

          v38 = v41;
          if (v30 < v43 || v49 >= v43)
          {
            break;
          }

          a2 = v44;
          a1 = v48;
          v26 = v40;
          v27 = v42;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v28 <= v38)
          {
            goto LABEL_56;
          }
        }

        a2 = v44;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v26 = v40;
        v27 = v42;
        if (v28 > v38)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v16;
    v50 = a4 + v16;
    if (v16 >= 1 && a2 < v49)
    {
      do
      {
        v48 = a1;
        v19 = v46;
        sub_45A9C(a2, v46, type metadata accessor for StationEntity);
        v20 = v47;
        sub_45A9C(a4, v47, type metadata accessor for StationEntity);
        v21 = a4;
        v22 = *(v19 + 40);
        sub_E53E4();
        v23 = *(v20 + 40);
        sub_E53E4();
        sub_26028();
        v24 = sub_E7834();

        sub_45BD4(v20, type metadata accessor for StationEntity);
        sub_45BD4(v19, type metadata accessor for StationEntity);
        if (v24 == -1)
        {
          v25 = v48;
          a4 = v21;
          if (v48 < a2 || v48 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v48 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
          goto LABEL_33;
        }

        a4 = v21 + v13;
        v25 = v48;
        if (v48 < v21 || v48 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v48 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          v51 = v21 + v13;
          goto LABEL_33;
        }

        v51 = v21 + v13;
LABEL_33:
        a1 = v25 + v13;
        v52 = a1;
      }

      while (a4 < v44 && a2 < v49);
    }
  }

LABEL_58:
  sub_4480C(&v52, &v51, &v50, type metadata accessor for StationEntity);
  return 1;
}

uint64_t sub_4480C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_448F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for ChannelEntity();
  v33[4] = sub_45C34(&qword_12E200, type metadata accessor for ChannelEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for ChannelEntity);
  v32 = &_swiftEmptySetSingleton;
  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v10 = sub_103AC(v31);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v11 = sub_10640(v31);
    sub_3D918(v11);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA68, &qword_E9C08);
  }

  v12 = v32;

  v13 = sub_422A0(v12, a2);

  v14 = sub_3DA1C(v13);
  v16 = v15;

  if (!v16)
  {
    sub_E6914();
    sub_48FC(v33, v31);
    v17 = sub_E6964();
    v18 = sub_E74B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v21 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v22 = *v21;
      v23 = v21[1];

      __swift_destroy_boxed_opaque_existential_1(v31);
      v24 = sub_23E64(v22, v23, v30);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v14 = *boxed_opaque_existential_1;
    v25 = boxed_opaque_existential_1[1];
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v14;
}

uint64_t sub_44D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for StationEntity();
  v33[4] = sub_45C34(&unk_12E140, type metadata accessor for StationEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for StationEntity);
  v32 = &_swiftEmptySetSingleton;
  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v10 = sub_103AC(v31);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v11 = sub_10640(v31);
    sub_3D918(v11);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA68, &qword_E9C08);
  }

  v12 = v32;

  v13 = sub_422A0(v12, a2);

  v14 = sub_3DA1C(v13);
  v16 = v15;

  if (!v16)
  {
    sub_E6914();
    sub_48FC(v33, v31);
    v17 = sub_E6964();
    v18 = sub_E74B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v21 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v22 = *v21;
      v23 = v21[1];

      __swift_destroy_boxed_opaque_existential_1(v31);
      v24 = sub_23E64(v22, v23, v30);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v14 = *boxed_opaque_existential_1;
    v25 = boxed_opaque_existential_1[1];
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v14;
}

uint64_t sub_4510C(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for EpisodeEntity(0);
  v33[4] = sub_45C34(&qword_12E1E8, type metadata accessor for EpisodeEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for EpisodeEntity);
  v32 = &_swiftEmptySetSingleton;
  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v10 = sub_103AC(v31);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v11 = sub_10640(v31);
    sub_3D918(v11);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA68, &qword_E9C08);
  }

  v12 = v32;

  v13 = sub_422A0(v12, a2);

  v14 = sub_3DA1C(v13);
  v16 = v15;

  if (!v16)
  {
    sub_E6914();
    sub_48FC(v33, v31);
    v17 = sub_E6964();
    v18 = sub_E74B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v21 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v22 = *v21;
      v23 = v21[1];

      __swift_destroy_boxed_opaque_existential_1(v31);
      v24 = sub_23E64(v22, v23, v30);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v14 = *boxed_opaque_existential_1;
    v25 = boxed_opaque_existential_1[1];
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v14;
}

uint64_t sub_45518(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for ShowEntity(0);
  v33[4] = sub_45C34(&unk_12E1B0, type metadata accessor for ShowEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for ShowEntity);
  v32 = &_swiftEmptySetSingleton;
  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v10 = sub_103AC(v31);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v27, v31);
    v30[0] = a2;
    v11 = sub_10640(v31);
    sub_3D918(v11);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_110AC(&v27, &qword_12DA68, &qword_E9C08);
  }

  v12 = v32;

  v13 = sub_422A0(v12, a2);

  v14 = sub_3DA1C(v13);
  v16 = v15;

  if (!v16)
  {
    sub_E6914();
    sub_48FC(v33, v31);
    v17 = sub_E6964();
    v18 = sub_E74B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v21 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v22 = *v21;
      v23 = v21[1];

      __swift_destroy_boxed_opaque_existential_1(v31);
      v24 = sub_23E64(v22, v23, v30);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v14 = *boxed_opaque_existential_1;
    v25 = boxed_opaque_existential_1[1];
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v14;
}