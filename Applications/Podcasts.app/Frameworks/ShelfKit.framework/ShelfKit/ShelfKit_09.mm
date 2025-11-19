uint64_t sub_F6430()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_F679C;
  }

  else
  {
    v2 = sub_F6544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F6544()
{
  v0[10] = v0[4];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_F6608;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_F6608()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_F6800;
  }

  else
  {
    v2 = sub_F671C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F671C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  v4 = *(v0 + 16);
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_F679C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F6800()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CategoryPageFromYourShowsShelfIntentImplementation.perform()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A50);
  *(v1 + 112) = v2;
  *(v1 + 120) = *(v2 - 8);
  *(v1 + 128) = swift_task_alloc();
  v3 = sub_3E8944();
  *(v1 + 136) = v3;
  *(v1 + 144) = *(v3 - 8);
  *(v1 + 152) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A58);
  *(v1 + 160) = v4;
  *(v1 + 168) = *(v4 - 8);
  *(v1 + 176) = swift_task_alloc();
  v5 = sub_3EDD94();
  *(v1 + 184) = v5;
  *(v1 + 192) = *(v5 - 8);
  *(v1 + 200) = swift_task_alloc();
  v6 = sub_3ED6F4();
  *(v1 + 208) = v6;
  *(v1 + 216) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v0;
  *(v1 + 224) = v7;
  *(v1 + 232) = v8;
  *(v1 + 240) = *(v0 + 1);
  *(v1 + 256) = v0[3];

  return _swift_task_switch(sub_F6AC8, 0, 0);
}

uint64_t sub_F6AC8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  swift_getObjectType();
  sub_F3D9C();
  v4 = sub_3EDDF4();
  v0[33] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = swift_allocObject();
  v0[34] = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  (*(v7 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v8);
  v4;
  v10 = swift_task_alloc();
  v0[35] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1A60);
  *v10 = v0;
  v10[1] = sub_F6CD8;
  v12 = v0[25];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 11, v12, sub_F72FC, v9, v11);
}

uint64_t sub_F6CD8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);

    return _swift_task_switch(sub_F6E30, 0, 0);
  }
}

uint64_t sub_F6E30()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 264);
  if (*(v1 + 16))
  {
    v21 = *(v0 + 264);
    v3 = *(v0 + 256);
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    *(v0 + 16) = v1;
    *(v0 + 80) = 0;
    ObjectType = swift_getObjectType();

    sub_3E8954();
    v9 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v5, 15, ObjectType, v3);
    (*(v6 + 8))(v5, v7);
    *(v0 + 96) = v9;
    v10 = swift_allocObject();
    v11 = *(v0 + 64);
    *(v10 + 48) = *(v0 + 48);
    *(v10 + 64) = v11;
    *(v10 + 80) = *(v0 + 80);
    v12 = *(v0 + 32);
    *(v10 + 16) = *(v0 + 16);
    *(v10 + 32) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_886BC(&qword_4F1A78, &qword_4F1D00);
    sub_3EA024();

    sub_886BC(&qword_4F1A80, &qword_4F1A58);
    v13 = sub_3E9F94();

    (*(v20 + 8))(v4, v19);
  }

  else
  {
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);

    *(v0 + 104) = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9DF4();
    sub_886BC(&qword_4F1A88, &qword_4F1A50);
    v13 = sub_3E9F94();

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17(v13);
}

void sub_F717C(void *a1@<X8>)
{
  v2 = sub_3EDD24();
  if (v2)
  {
    v3 = v2;
    v4 = sub_3E7574();
    if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
    {
      sub_35128(_swiftEmptyArrayStorage);
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }

    v11 = v5;
    v6 = [v3 children];
    sub_3E75E4();
    sub_F7D30();
    v7 = sub_3ED7F4();

    sub_F52A8(v7, &v11);

    sub_131BA4(v8, v4);
    v10 = sub_F5498(v9);

    *a1 = v10;
  }

  else
  {
    *a1 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_F72C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_F7318@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for ModernShelf();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1AA0);
  sub_3E95D4();
  v11 = sub_76CAC(v15[1]);

  sub_F5938(a1, v11, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_FCF8(v6, &unk_503DA0);
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_F7928(v6, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_3F5630;
    result = sub_F7928(v10, v13 + v14);
  }

  *a2 = v13;
  return result;
}

uint64_t sub_F7518()
{
  sub_6BE48(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_F7578()
{
  result = qword_4F1A90;
  if (!qword_4F1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1A90);
  }

  return result;
}

uint64_t sub_F75CC(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F7684;

  return CategoryPageFromYourShowsShelfIntentImplementation.init(asPartOf:performing:)(a1, a2, (v3 + 16));
}

uint64_t sub_F7684()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F7778(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_F7808;

  return CategoryPageFromYourShowsShelfIntentImplementation.perform()();
}

uint64_t sub_F7808(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_F7928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShelf();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_F798C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_3EE2F4();
      sub_F7D88();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_F7D88();
    if (sub_3EE2B4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_3EE2C4();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_3EDEB4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_3EDEC4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_F7B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_F7BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Header(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_F7D30()
{
  result = qword_4F1AC8;
  if (!qword_4F1AC8)
  {
    sub_3E75E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1AC8);
  }

  return result;
}

unint64_t sub_F7D88()
{
  result = qword_4EA188;
  if (!qword_4EA188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EA188);
  }

  return result;
}

uint64_t EpisodeTimedReferenceLinksIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_3E9604();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for ReferenceLinkTimeframe();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AD8);
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for TimedReferenceLink();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v6 = sub_3EC6C4();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  v7 = sub_3EC7C4();
  v2[34] = v7;
  v2[35] = *(v7 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = type metadata accessor for EpisodeReferenceLinksIntent();
  v2[38] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  v9 = swift_task_alloc();
  v2[39] = v9;
  *v9 = v2;
  v9[1] = sub_F8100;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v8, v8);
}

uint64_t sub_F8100()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_F89BC;
  }

  else
  {
    v2 = sub_F8214;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F8214()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];
  v9 = *v8;
  v10 = *(type metadata accessor for EpisodeTimedReferenceLinksIntent() + 20);
  v11 = *(v2 + 20);
  v12 = *(v7 + 16);
  v0[41] = v12;
  v0[42] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(&v1[v11], &v8[v10], v6);
  *v1 = v9;
  (*(v4 + 104))(v3, enum case for IntentCacheUsePolicy.useCachedResultPreferringOngoingDispatch(_:), v5);
  sub_3EC7B4();
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  v15 = swift_task_alloc();
  v0[43] = v15;
  v16 = sub_F8D84(&qword_4F1AE0, type metadata accessor for EpisodeReferenceLinksIntent);
  *v15 = v0;
  v15[1] = sub_F83B8;
  v18 = v0[37];
  v17 = v0[38];
  v19 = v0[36];
  v20 = v0[19];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(v0 + 17, v17, v20, v19, v18, v16, v13, v14);
}

uint64_t sub_F83B8()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_F8A84;
  }

  else
  {
    v2 = sub_F84CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F84CC()
{
  v45 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 96);
    v37 = *(v0 + 224);
    v39 = *(v0 + 192);
    v40 = *(v0 + 232);
    v4 = v1 + 32;
    v41 = (*(v0 + 200) + 48);
    v42 = v0 + 56;
    v36 = (*(v0 + 168) + 32);
    v43 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = *(v0 + 184);
      v5 = *(v0 + 192);
      sub_BD054(v4, v42);
      sub_BD054(v42, v3);
      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1(v3, v8);
      (*(v7 + 32))(v8, v7);
      sub_BD5AC(v42);
      if ((*v41)(v6, 1, v5) == 1)
      {
        v9 = *(v0 + 184);
        sub_BD5AC(v3);
        sub_FCF8(v9, &qword_4F00B8);
      }

      else
      {
        v10 = *(v0 + 208);
        sub_F8CD4(*(v0 + 184), v10, type metadata accessor for ReferenceLinkTimeframe);
        v11 = v10 + *(v39 + 20);
        if ((*(v11 + 8) & 1) == 0)
        {
          v13 = *(v0 + 208);
          v14 = *(v0 + 216);
          v15 = *(v0 + 176);
          v16 = *(v0 + 160);
          v17 = *v11;
          (*(v0 + 328))(v15, v13, v16);
          v18 = v13 + *(v39 + 24);
          v19 = *v18;
          v38 = *(v18 + 8);
          sub_F9F60(v13, type metadata accessor for ReferenceLinkTimeframe);
          v20 = v14 + v37[7];
          v21 = *(v0 + 128);
          v22 = *(v0 + 112);
          *v14 = *v3;
          *(v14 + 16) = v22;
          *(v14 + 32) = v21;
          (*v36)(v14 + v37[5], v15, v16);
          v12 = 0;
          *(v14 + v37[6]) = v17;
          *v20 = v19;
          *(v20 + 8) = v38;
          goto LABEL_11;
        }

        sub_F9F60(*(v0 + 208), type metadata accessor for ReferenceLinkTimeframe);
        sub_BD5AC(v3);
      }

      v12 = 1;
LABEL_11:
      v24 = *(v0 + 216);
      v23 = *(v0 + 224);
      (*(v40 + 56))(v24, v12, 1, v23);
      if ((*(v40 + 48))(v24, 1, v23) == 1)
      {
        sub_FCF8(*(v0 + 216), &qword_4F1AD8);
      }

      else
      {
        sub_F8CD4(*(v0 + 216), *(v0 + 240), type metadata accessor for TimedReferenceLink);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_DFFD4(0, v43[2] + 1, 1, v43);
        }

        v26 = v43[2];
        v25 = v43[3];
        if (v26 >= v25 >> 1)
        {
          v43 = sub_DFFD4(v25 > 1, v26 + 1, 1, v43);
        }

        v27 = *(v0 + 240);
        v43[2] = v26 + 1;
        sub_F8CD4(v27, v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v26, type metadata accessor for TimedReferenceLink);
      }

      v4 += 40;
      if (!--v2)
      {

        goto LABEL_19;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_19:
  v28 = *(v0 + 352);
  v44 = v43;

  sub_F8C2C(&v44);
  if (v28)
  {
  }

  else
  {
    v30 = *(v0 + 304);
    v31 = *(v0 + 280);
    v32 = *(v0 + 288);
    v33 = *(v0 + 272);

    (*(v31 + 8))(v32, v33);
    sub_F9F60(v30, type metadata accessor for EpisodeReferenceLinksIntent);
    v34 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v35 = *(v0 + 8);

    return v35(v34);
  }
}

uint64_t sub_F89BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F8A84()
{
  v1 = v0[38];
  (*(v0[35] + 8))(v0[36], v0[34]);
  sub_F9F60(v1, type metadata accessor for EpisodeReferenceLinksIntent);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_F8B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F7808;

  return EpisodeTimedReferenceLinksIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

void sub_F8C2C(void **a1)
{
  v2 = *(type metadata accessor for TimedReferenceLink() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2A67D4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_F8DDC(v5);
  *a1 = v3;
}

uint64_t sub_F8CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_F8D84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_F8DDC(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_3EE794(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TimedReferenceLink();
        v6 = sub_3ED5E4();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for TimedReferenceLink() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_F9144(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_F8F08(0, v2, 1, a1);
  }
}

void sub_F8F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TimedReferenceLink();
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_F9EFC(v23, v17);
      sub_F9EFC(v20, v13);
      v24 = *(v8 + 24);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_F9F60(v13, type metadata accessor for TimedReferenceLink);
      sub_F9F60(v17, type metadata accessor for TimedReferenceLink);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_F8CD4(v23, v10, type metadata accessor for TimedReferenceLink);
      swift_arrayInitWithTakeFrontToBack();
      sub_F8CD4(v10, v20, type metadata accessor for TimedReferenceLink);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_F9144(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v108 = a1;
  v10 = type metadata accessor for TimedReferenceLink();
  v117 = *(v10 - 8);
  __chkstk_darwin(v10);
  v111 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v105 - v13;
  __chkstk_darwin(v14);
  v120 = &v105 - v15;
  __chkstk_darwin(v16);
  v19 = &v105 - v18;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_95:
    v6 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    v4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = v4;
    }

    else
    {
LABEL_128:
      v100 = sub_2A66A8(v4);
    }

    v122 = v100;
    v4 = *(v100 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v101 = *&v100[16 * v4];
        v102 = v100;
        v103 = *&v100[16 * v4 + 24];
        sub_F9A3C(*a3 + *(v117 + 72) * v101, *a3 + *(v117 + 72) * *&v100[16 * v4 + 16], *a3 + *(v117 + 72) * v103, v6);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v103 < v101)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_2A66A8(v102);
        }

        if (v4 - 2 >= *(v102 + 2))
        {
          goto LABEL_122;
        }

        v104 = &v102[16 * v4];
        *v104 = v101;
        *(v104 + 1) = v103;
        v122 = v102;
        sub_2A661C(v4 - 1);
        v100 = v122;
        v4 = *(v122 + 2);
        if (v4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v121 = v17;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v109 = a3;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *a3;
      v4 = *(v117 + 72);
      v6 = *a3 + v4 * v24;
      sub_F9EFC(v6, v19);
      v26 = v120;
      sub_F9EFC(v25 + v4 * v23, v120);
      v27 = *(v121 + 24);
      v28 = *&v19[v27];
      v29 = *(v26 + v27);
      sub_F9F60(v26, type metadata accessor for TimedReferenceLink);
      sub_F9F60(v19, type metadata accessor for TimedReferenceLink);
      v106 = v23;
      v30 = v23 + 2;
      v118 = v4;
      v31 = v25 + v4 * (v23 + 2);
      while (v20 != v30)
      {
        sub_F9EFC(v31, v19);
        v32 = v120;
        sub_F9EFC(v6, v120);
        v33 = *(v121 + 24);
        v34 = *&v19[v33];
        v35 = *(v32 + v33);
        v4 = v7;
        sub_F9F60(v32, type metadata accessor for TimedReferenceLink);
        sub_F9F60(v19, type metadata accessor for TimedReferenceLink);
        ++v30;
        v31 += v118;
        v6 += v118;
        if (v28 < v29 == v34 >= v35)
        {
          v20 = v30 - 1;
          break;
        }
      }

      a3 = v109;
      v23 = v106;
      a4 = v107;
      if (v28 < v29)
      {
        if (v20 < v106)
        {
          goto LABEL_125;
        }

        if (v106 < v20)
        {
          v105 = v7;
          v36 = v118 * (v20 - 1);
          v37 = v20 * v118;
          v116 = v20;
          v38 = v20;
          v39 = v106;
          v40 = v106 * v118;
          do
          {
            if (v39 != --v38)
            {
              v6 = *v109;
              if (!*v109)
              {
                goto LABEL_131;
              }

              v4 = v6 + v40;
              sub_F8CD4(v6 + v40, v111, type metadata accessor for TimedReferenceLink);
              if (v40 < v36 || v4 >= v6 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_F8CD4(v111, v6 + v36, type metadata accessor for TimedReferenceLink);
            }

            ++v39;
            v36 -= v118;
            v37 -= v118;
            v40 += v118;
          }

          while (v39 < v38);
          v7 = v105;
          v23 = v106;
          a3 = v109;
          a4 = v107;
          v20 = v116;
        }
      }
    }

    v41 = a3[1];
    if (v20 < v41)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_124;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v23 + a4;
        }

        if (v42 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v20 != v42)
        {
          break;
        }
      }
    }

    v43 = v20;
    if (v20 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v112;
    }

    else
    {
      v22 = sub_DFED0(0, *(v112 + 2) + 1, 1, v112);
    }

    v4 = *(v22 + 2);
    v44 = *(v22 + 3);
    v6 = v4 + 1;
    if (v4 >= v44 >> 1)
    {
      v22 = sub_DFED0((v44 > 1), v4 + 1, 1, v22);
    }

    *(v22 + 2) = v6;
    v45 = &v22[16 * v4];
    *(v45 + 4) = v23;
    *(v45 + 5) = v43;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_133;
    }

    v113 = v43;
    if (v4)
    {
      while (1)
      {
        v47 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v48 = *(v22 + 4);
          v49 = *(v22 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_112;
          }

          v64 = &v22[16 * v6];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_115;
          }

          v70 = &v22[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_119;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v6 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v22[16 * v6];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_114;
        }

        v77 = &v22[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_117;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v47 - 1;
        if (v47 - 1 >= v6)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v85 = v22;
        v86 = *&v22[16 * v4 + 32];
        v6 = *&v22[16 * v47 + 40];
        sub_F9A3C(*a3 + *(v117 + 72) * v86, *a3 + *(v117 + 72) * *&v22[16 * v47 + 32], *a3 + *(v117 + 72) * v6, v46);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v6 < v86)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_2A66A8(v85);
        }

        if (v4 >= *(v85 + 2))
        {
          goto LABEL_109;
        }

        v87 = &v85[16 * v4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v6;
        v122 = v85;
        sub_2A661C(v47);
        v22 = v122;
        v6 = *(v122 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v22[16 * v6 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_110;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_111;
      }

      v59 = &v22[16 * v6];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_113;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_116;
      }

      if (v63 >= v55)
      {
        v81 = &v22[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_120;
        }

        if (v50 < v84)
        {
          v47 = v6 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v113;
    a4 = v107;
    if (v113 >= v20)
    {
      goto LABEL_95;
    }
  }

  v105 = v7;
  v106 = v23;
  v4 = *a3;
  v88 = *(v117 + 72);
  v89 = *a3 + v88 * (v20 - 1);
  v90 = -v88;
  v91 = v23 - v20;
  v110 = v88;
  v6 = v4 + v20 * v88;
  v113 = v42;
LABEL_85:
  v115 = v91;
  v116 = v20;
  v114 = v6;
  v118 = v89;
  v92 = v89;
  v93 = v121;
  while (1)
  {
    sub_F9EFC(v6, v19);
    v94 = v120;
    sub_F9EFC(v92, v120);
    v95 = *(v93 + 24);
    v96 = *&v19[v95];
    v97 = *(v94 + v95);
    sub_F9F60(v94, type metadata accessor for TimedReferenceLink);
    sub_F9F60(v19, type metadata accessor for TimedReferenceLink);
    if (v96 >= v97)
    {
LABEL_84:
      v20 = v116 + 1;
      v89 = v118 + v110;
      v91 = v115 - 1;
      v43 = v113;
      v6 = v114 + v110;
      if (v116 + 1 != v113)
      {
        goto LABEL_85;
      }

      v7 = v105;
      v23 = v106;
      a3 = v109;
      if (v113 < v106)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v4)
    {
      break;
    }

    v98 = v119;
    sub_F8CD4(v6, v119, type metadata accessor for TimedReferenceLink);
    v93 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_F8CD4(v98, v92, type metadata accessor for TimedReferenceLink);
    v92 += v90;
    v6 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_F9A3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = type metadata accessor for TimedReferenceLink();
  __chkstk_darwin(v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
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

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_F9EFC(v32, v11);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_F9EFC(v34, v45);
          v37 = *(v46 + 24);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v11 = v35;
          sub_F9F60(v40, type metadata accessor for TimedReferenceLink);
          sub_F9F60(v35, type metadata accessor for TimedReferenceLink);
          if (v38 < v39)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
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

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_F9EFC(a2, v11);
        v20 = v45;
        sub_F9EFC(a4, v45);
        v21 = *(v46 + 24);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_F9F60(v20, type metadata accessor for TimedReferenceLink);
        sub_F9F60(v11, type metadata accessor for TimedReferenceLink);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
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
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_2A66BC(&v50, &v49, &v48);
}

uint64_t sub_F9EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedReferenceLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F9F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FetchShowLatestCatalogEpisodesIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  *(v1 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AF0);
  *(v1 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AF8);
  *(v1 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B00);
  *(v1 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B08);
  *(v1 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B10);
  *(v1 + 104) = swift_task_alloc();
  v3 = sub_3E7794();
  *(v1 + 112) = v3;
  *(v1 + 120) = *(v3 - 8);
  *(v1 + 128) = swift_task_alloc();
  v4 = sub_3E7804();
  *(v1 + 136) = v4;
  *(v1 + 144) = *(v4 - 8);
  *(v1 + 152) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B18);
  *(v1 + 160) = v5;
  *(v1 + 168) = *(v5 - 8);
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = *a1;
  *(v1 + 200) = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B20);
  v7 = swift_task_alloc();
  *(v1 + 208) = v7;
  *v7 = v1;
  v7[1] = sub_FA300;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v6, v6);
}

uint64_t sub_FA300()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_FAC38;
  }

  else
  {
    v2 = sub_FA414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FA414()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v31 = v0[23];
  v32 = v0[9];
  v33 = v0[8];
  v34 = v0[5];
  v35 = v0[6];
  v36 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
  (*(v2 + 104))(v3, enum case for MediaRequest.RequestType.catalog(_:), v4);
  v8 = enum case for MediaRequest.ContentType.podcast(_:);
  v9 = sub_3E77B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 104);
  v11(v5, v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v12 = sub_3E7824();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = enum case for MediaRequest.Relationship.episodes(_:);
  v14 = sub_3E77D4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v6, v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B28);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC450) - 8);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_3F5630;
  v19 = v18 + v17;
  v20 = v16[14];
  v11(v19, enum case for MediaRequest.ContentType.podcastEpisode(_:), v9);
  *(v19 + v20) = v1;

  sub_626C8(v18);
  swift_setDeallocating();
  sub_FB380(v19);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_3F5630;
  v0[7] = v31;
  sub_17A28();
  *(v21 + 32) = sub_3EE1F4();
  *(v21 + 40) = v22;
  v23 = sub_3E77C4();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  v24 = sub_3E7814();
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  v25 = sub_3E5DC4();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  sub_FB3E8(_swiftEmptyArrayStorage);
  sub_FB3E8(_swiftEmptyArrayStorage);
  sub_FB5D0(_swiftEmptyArrayStorage);
  sub_FB7B8(_swiftEmptyArrayStorage);
  sub_FB8BC(_swiftEmptyArrayStorage);
  sub_FBAA4(_swiftEmptyArrayStorage);
  sub_FBC8C(_swiftEmptyArrayStorage);
  sub_FBE74(_swiftEmptyArrayStorage);
  sub_FC05C(_swiftEmptyArrayStorage);
  sub_3E77F4();
  v26 = sub_3E8B64();
  v27 = swift_task_alloc();
  v0[28] = v27;
  *v27 = v0;
  v27[1] = sub_FA9B8;
  v28 = v0[22];
  v29 = v0[19];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v28, v29, v26, 0, v34, v26, v35);
}

uint64_t sub_FA9B8()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_FAD10;
  }

  else
  {
    v5 = sub_FAB28;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_FAB28()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v6 = sub_3E8354();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_FAC38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FAD10()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FADF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_F7808;

  return FetchShowLatestCatalogEpisodesIntentImplementation.perform(_:objectGraph:)(a2);
}

unint64_t sub_FAE90(uint64_t a1)
{
  sub_3E77B4();
  sub_FC2AC(&qword_4EBAE0, &type metadata accessor for MediaRequest.ContentType);
  v2 = sub_3ED114();
  return sub_FB038(a1, v2, &type metadata accessor for MediaRequest.ContentType, &qword_4EBAE8, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
}

unint64_t sub_FAF64(uint64_t a1)
{
  sub_3E77E4();
  sub_FC2AC(&qword_4F1B58, &type metadata accessor for MediaRequest.Filter);
  v2 = sub_3ED114();
  return sub_FB038(a1, v2, &type metadata accessor for MediaRequest.Filter, &qword_4F1B60, &type metadata accessor for MediaRequest.Filter, &protocol conformance descriptor for MediaRequest.Filter);
}

unint64_t sub_FB038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = __chkstk_darwin(v8);
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
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_FC2AC(v24, v25);
      v20 = sub_3ED174();
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

unint64_t sub_FB1D8(uint64_t a1)
{
  sub_3E77A4();
  sub_FC2AC(&qword_4F1B88, &type metadata accessor for MediaRequest.Association);
  v2 = sub_3ED114();
  return sub_FB038(a1, v2, &type metadata accessor for MediaRequest.Association, &qword_4F1B90, &type metadata accessor for MediaRequest.Association, &protocol conformance descriptor for MediaRequest.Association);
}

unint64_t sub_FB2AC(uint64_t a1)
{
  sub_3E77D4();
  sub_FC2AC(&qword_4F1BB0, &type metadata accessor for MediaRequest.Relationship);
  v2 = sub_3ED114();
  return sub_FB038(a1, v2, &type metadata accessor for MediaRequest.Relationship, &qword_4F1BB8, &type metadata accessor for MediaRequest.Relationship, &protocol conformance descriptor for MediaRequest.Relationship);
}

uint64_t sub_FB380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_FB3E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BC8);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4F1BC0);
      result = sub_FB2AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77D4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FB5D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BA8);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4F1BA0);
      result = sub_FB2AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77D4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FB7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B98);
    v3 = sub_3EE5F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_B4118(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FB8BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC458);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4EC450);
      result = sub_FAE90(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FBAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B80);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4F1B78);
      result = sub_FB1D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77A4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FBC8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B70);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4F1B68);
      result = sub_FAE90(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FBE74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B50);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4F1B48);
      result = sub_FAF64(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77E4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FC05C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B40);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4F1B38);
      result = sub_FAE90(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_FC248()
{
  result = qword_4F1B30;
  if (!qword_4F1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1B30);
  }

  return result;
}

uint64_t sub_FC2AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FetchUpNextEpisodesIntentImplementation.perform(_:objectGraph:)(uint64_t *a1)
{
  v3 = sub_3EDD94();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = sub_3ED6F4();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v1[9] = v5;
  v1[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_FC470;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v7, v7);
}

uint64_t sub_FC470()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_FC9A4;
  }

  else
  {
    v2 = sub_FC584;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FC584()
{
  v1 = v0[12];
  swift_getObjectType();
  sub_F3D9C();
  v2 = sub_3EDDF4();
  v0[13] = v2;
  if (v1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[10];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_unknownObjectRelease();
    v10 = swift_allocObject();
    v0[14] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v5;
    (*(v8 + 104))(v7, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);
    v5;
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1250);
    *v11 = v0;
    v11[1] = sub_FC794;
    v13 = v0[6];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v13, sub_FCD3C, v10, v12);
  }
}

uint64_t sub_FC794()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);

  if (v0)
  {
    v3 = sub_FCA14;
  }

  else
  {
    v3 = sub_FC918;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_FC918()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_FC9A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FCA14()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_FCA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = a2;
  v7 = a1;
  v3 = a3;
  result = sub_FCDB0(a1, a2, &selRef_predicateForListenNow, &selRef_sortDescriptorsForListenNow);
  if (v5)
  {
    return result;
  }

  v6 = result;
  if (result >> 62)
  {
LABEL_21:
    if (sub_3EE5A4())
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_5;
  }

LABEL_22:

  result = sub_FCDB0(v7, v4, &selRef_predicateForListenNowLatestEpisodes, &selRef_sortDescriptorsForListenNowLatestEpisodes);
  if (v5)
  {
    return result;
  }

  v6 = result;
LABEL_5:
  if (!(v6 >> 62))
  {
    v9 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_25:

    *v3 = _swiftEmptyArrayStorage;
    return result;
  }

  v9 = sub_3EE5A4();
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_7:
  result = sub_41B88(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = sub_3EE3F4();
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          v23 = v3;
          v15 = v11;
          sub_41B88((v12 > 1), v13 + 1, 1);
          v11 = v15;
          v3 = v23;
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[3 * v13];
        v14[4] = v11;
        v14[5] = 0;
        *(v14 + 48) = 1;
      }

      while (v9 != v10);
    }

    else
    {
      v24 = v3;
      v16 = 32;
      do
      {
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        v19 = *(v6 + v16);
        if (v18 >= v17 >> 1)
        {
          v21 = v17 > 1;
          v22 = v19;
          sub_41B88(v21, v18 + 1, 1);
          v19 = v22;
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v20 = &_swiftEmptyArrayStorage[3 * v18];
        v20[4] = v19;
        v20[5] = 0;
        *(v20 + 48) = 1;
        v16 += 8;
        --v9;
      }

      while (v9);

      v3 = v24;
    }

    *v3 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_FCD04()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_FCD5C()
{
  result = qword_4F1BD0;
  if (!qword_4F1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1BD0);
  }

  return result;
}

uint64_t sub_FCDB0(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v8 = objc_opt_self();
  v9 = [v8 *a3];
  [v7 setPredicate:v9];

  isa = [v8 *a4];
  if (!isa)
  {
    sub_36174(0, &qword_4F1C40);
    sub_3ED584();
    isa = sub_3ED574().super.isa;
  }

  [v7 setSortDescriptors:isa];

  [v7 setFetchLimit:a1];
  [v7 setResultType:1];
  sub_36174(0, &unk_4F1BE0);
  v11 = sub_3EDDA4();

  return v11;
}

uint64_t sub_FCF34(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_F7808;

  return FetchUpNextEpisodesIntentImplementation.perform(_:objectGraph:)(a2);
}

uint64_t FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.perform(_:objectGraph:)(uint64_t *a1)
{
  v3 = sub_3EDD94();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = sub_3ED6F4();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v1[9] = v5;
  v1[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_FD160;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v7, v7);
}

uint64_t sub_FD160()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_FC9A4;
  }

  else
  {
    v2 = sub_FD274;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FD274()
{
  v1 = v0[12];
  swift_getObjectType();
  sub_F3D9C();
  v2 = sub_3EDDF4();
  v0[13] = v2;
  if (v1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[10];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_unknownObjectRelease();
    v10 = swift_allocObject();
    v0[14] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v5;
    (*(v8 + 104))(v7, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);

    v5;
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1250);
    *v11 = v0;
    v11[1] = sub_FD48C;
    v13 = v0[6];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v13, sub_FDE20, v10, v12);
  }
}

uint64_t sub_FD48C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    return _swift_task_switch(sub_FC918, 0, 0);
  }
}

uint64_t sub_FD5E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v87 = a2;
  v67 = a3;
  v70 = sub_3E9734();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for EpisodeOffer();
  v6 = *(v92 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v92);
  v86 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v99 = _swiftEmptyArrayStorage;
    sub_3EE4C4();
    v91 = sub_3E7E34();
    v13 = *(v6 + 80);
    v14 = a1 + ((v13 + 32) & ~v13);
    v75 = *(v6 + 72);
    v84 = (v13 + 24) & ~v13;
    v85 = v13;
    v83 = (v7 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
    v77 = v97;
    v68 = (v4 + 8);
    v76 = v10;
    do
    {
      result = sub_3BE20(v14, v10);
      v17 = *v10;
      if ((*v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v93 = v14;
      v94 = v11;
      v18 = v10[1];
      v19 = v10;
      v95 = v10[2];
      v20 = (v10 + v92[10]);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v10 + v92[12]);
      v98 = 0;
      v24 = v86;
      sub_3BE20(v19, v86);
      v25 = v78;
      v26 = swift_allocObject();
      *(v26 + 16) = v91;
      sub_3D978(v24, v26 + v84);
      v27 = v87;
      *(v26 + v83) = v87;
      *(v26 + v82) = &v98;
      v90 = v17;
      *(v26 + v81) = v17;
      v28 = (v26 + v80);
      v89 = v18;
      *v28 = v18;
      v29 = v95;
      v28[1] = v95;
      v30 = (v26 + v79);
      *v30 = v21;
      v30[1] = v22;
      *(v26 + v25) = v23;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_FE4C8;
      *(v31 + 24) = v26;
      v97[2] = sub_FE5AC;
      v97[3] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v97[0] = sub_3419B4;
      v97[1] = &block_descriptor_6;
      v32 = _Block_copy(aBlock);
      v88 = v23;

      v33 = v27;

      [v33 performBlockAndWait:v32];
      _Block_release(v32);
      LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

      if (v32)
      {
        goto LABEL_33;
      }

      v34 = v98;

      if (v34)
      {
        v10 = v76;
      }

      else
      {
        v35 = v92;
        v10 = v76;
        v73 = *(v76 + v92[11]);
        v36 = v76 + v92[15];
        v72 = *v36;
        v71 = v36[8];
        v37 = sub_3E5CD4();
        v74 = v38;
        v39 = *(v10 + v35[13]);
        if ((v39 - 2) >= 2)
        {
          v42 = v37;
          v43 = v69;
          if (v39)
          {
            sub_3E9724();
          }

          else
          {
            sub_3E9714();
          }

          v40 = sub_3E9704();
          v41 = v44;
          (*v68)(v43, v70);
          v37 = v42;
        }

        else
        {
          v40 = 0;
          v41 = 0xE000000000000000;
        }

        LOBYTE(v98) = 0;
        __chkstk_darwin(v37);
        *(&v66 - 20) = v91;
        *(&v66 - 19) = v10;
        *(&v66 - 18) = v33;
        *(&v66 - 17) = &v98;
        *(&v66 - 16) = v21;
        *(&v66 - 15) = v22;
        v45 = v89;
        *(&v66 - 14) = v88;
        *(&v66 - 13) = v45;
        *(&v66 - 12) = v29;
        *(&v66 - 11) = v40;
        v46 = v90;
        *(&v66 - 10) = v41;
        *(&v66 - 9) = v46;
        v47 = v74;
        *(&v66 - 8) = v48;
        *(&v66 - 7) = v47;
        v49 = v73;
        *(&v66 - 3) = v73;
        *(&v66 - 2) = v49;
        *(&v66 - 2) = v72;
        *(&v66 - 8) = v71;
        sub_75918();
        sub_3EDD14();

        v34 = aBlock[0];
      }

      v15 = [v34 objectID];

      sub_3D91C(v10);
      sub_3EE494();
      sub_3EE4D4();
      sub_3EE4E4();
      sub_3EE4A4();
      v14 = v93 + v75;
      v11 = v94 - 1;
    }

    while (v94 != 1);
    v50 = v99;
    v12 = _swiftEmptyArrayStorage;
    if (v99 >> 62)
    {
      goto LABEL_25;
    }

LABEL_16:
    v51 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
    if (v51)
    {
      goto LABEL_17;
    }

LABEL_26:

    *v67 = v12;
    return result;
  }

  v50 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    goto LABEL_16;
  }

LABEL_25:
  v51 = sub_3EE5A4();
  if (!v51)
  {
    goto LABEL_26;
  }

LABEL_17:
  aBlock[0] = _swiftEmptyArrayStorage;
  result = sub_41B88(0, v51 & ~(v51 >> 63), 0);
  if ((v51 & 0x8000000000000000) == 0)
  {
    v12 = aBlock[0];
    if ((v50 & 0xC000000000000001) != 0)
    {
      v52 = 0;
      do
      {
        v53 = sub_3EE3F4();
        aBlock[0] = v12;
        v55 = v12[2];
        v54 = v12[3];
        if (v55 >= v54 >> 1)
        {
          v57 = v53;
          sub_41B88((v54 > 1), v55 + 1, 1);
          v53 = v57;
          v12 = aBlock[0];
        }

        ++v52;
        v12[2] = v55 + 1;
        v56 = &v12[3 * v55];
        v56[4] = v53;
        v56[5] = 0;
        *(v56 + 48) = 1;
      }

      while (v51 != v52);
    }

    else
    {
      v58 = 32;
      do
      {
        v59 = *(v50 + v58);
        aBlock[0] = v12;
        v60 = v12[2];
        v61 = v12[3];
        v62 = v59;
        if (v60 >= v61 >> 1)
        {
          v64 = v61 > 1;
          v65 = v62;
          sub_41B88(v64, v60 + 1, 1);
          v62 = v65;
          v12 = aBlock[0];
        }

        v12[2] = v60 + 1;
        v63 = &v12[3 * v60];
        v63[4] = v62;
        v63[5] = 0;
        *(v63 + 48) = 1;
        v58 += 8;
        --v51;
      }

      while (v51);
    }

    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_FDDE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FDE40(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_F7808;

  return FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.perform(_:objectGraph:)(a2);
}

uint64_t sub_FDEF0()
{
  v1 = type metadata accessor for EpisodeOffer();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 24) & ~v42;
  v43 = v0;
  v2 = v0 + v41;

  v3 = v0 + v41 + v1[6];

  v4 = type metadata accessor for ShowOffer();
  v5 = v3 + v4[7];
  v6 = sub_3E7784();
  v39 = *(*(v6 - 8) + 48);
  if (!v39(v5, 1, v6))
  {

    v7 = *(v5 + 32);
    if (v7 != 255)
    {
      sub_F2248(*(v5 + 16), *(v5 + 24), v7);
    }

    v8 = *(v5 + 64);
    if (v8 != 255)
    {
      sub_F2260(*(v5 + 56), v8);
    }

    v9 = *(v5 + 80);
    if (v9 != 255)
    {
      sub_F2260(*(v5 + 72), v9);
    }

    v10 = *(v5 + 96);
    if (v10 != 255)
    {
      sub_F2260(*(v5 + 88), v10);
    }

    v11 = *(v5 + 112);
    if (v11 != 255)
    {
      sub_F2260(*(v5 + 104), v11);
    }

    v12 = *(v5 + 128);
    if (v12 != 255)
    {
      sub_F2260(*(v5 + 120), v12);
    }

    v13 = *(v6 + 44);
    v14 = sub_3E7624();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = v4[13];
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  v19 = v4[16];
  if (!v18(v3 + v19, 1, v16))
  {
    (*(v17 + 8))(v3 + v19, v16);
  }

  v20 = v4[17];
  if (!v18(v3 + v20, 1, v16))
  {
    (*(v17 + 8))(v3 + v20, v16);
  }

  v21 = v1[7];
  v22 = v18(v2 + v21, 1, v16);
  v23 = *(v17 + 8);
  if (!v22)
  {
    v23(v2 + v21, v16);
  }

  v23(v2 + v1[8], v16);

  v24 = v2 + v1[16];
  if (!v39(v24, 1, v6))
  {

    v25 = *(v24 + 32);
    if (v25 != 255)
    {
      sub_F2248(*(v24 + 16), *(v24 + 24), v25);
    }

    v26 = *(v24 + 64);
    if (v26 != 255)
    {
      sub_F2260(*(v24 + 56), v26);
    }

    v27 = *(v24 + 80);
    if (v27 != 255)
    {
      sub_F2260(*(v24 + 72), v27);
    }

    v28 = *(v24 + 96);
    if (v28 != 255)
    {
      sub_F2260(*(v24 + 88), v28);
    }

    v29 = *(v24 + 112);
    if (v29 != 255)
    {
      sub_F2260(*(v24 + 104), v29);
    }

    v30 = *(v24 + 128);
    if (v30 != 255)
    {
      sub_F2260(*(v24 + 120), v30);
    }

    v31 = *(v6 + 44);
    v32 = sub_3E7624();
    (*(*(v32 - 8) + 8))(v24 + v31, v32);
  }

  v33 = v1[22];
  v34 = sub_3E9354();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v2 + v33, 1, v34))
  {
    (*(v35 + 8))(v2 + v33, v34);
  }

  v36 = (v40 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (((((((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v43, v37 + 8, v42 | 7);
}

void sub_FE4C8()
{
  v1 = *(type metadata accessor for EpisodeOffer() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_341F20(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FindOrCreateLocalEpisodeContentIDsIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_FE6E4;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_FE6E4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_FF000;
  }

  else
  {
    v2 = sub_FE7F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FE7F8()
{
  sub_3E7224();
  v1 = sub_3ED5B4();
  v3 = v2;
  v5 = v4;

  v0[16] = v1;
  v0[17] = v3;
  v0[18] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_FE8C0;

  return sub_FF170(v1);
}

uint64_t sub_FE8C0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {
    v5 = sub_FF018;
  }

  else
  {
    v5 = sub_FE9D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_FE9D8()
{
  v0[7] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_FFCA0();
  v1 = sub_3ED894();
  v2 = v0[20];
  if (v1)
  {
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v0[9] = v2;
    v5 = swift_task_alloc();
    v0[23] = v5;
    v6 = sub_1007BC();
    *v5 = v0;
    v5[1] = sub_FEBA4;
    v7 = v0[13];

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 8, v0 + 9, v7, &type metadata for FetchEpisodeOffersIntent, v6, v3, v4);
  }

  else
  {
    v8 = v0[21];
    v10 = v0[17];
    v9 = v0[18];

    v11 = sub_1005B0(v10, v9);

    sub_40F98(v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_FEBA4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_FF098;
  }

  else
  {
    v2 = sub_FECF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FECF0()
{
  v1 = v0[8];
  v0[25] = v1;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[11] = v1;
  v4 = swift_task_alloc();
  v0[26] = v4;
  v5 = sub_91258();
  *v4 = v0;
  v4[1] = sub_FEDDC;
  v6 = v0[13];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 10, v0 + 11, v6, &type metadata for FindOrCreateEpisodeOfferContentIDsIntent, v5, v2, v3);
}

uint64_t sub_FEDDC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_FF104;
  }

  else
  {
    v2 = sub_FEF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FEF28()
{
  v1 = v0[21];
  v2 = v0[10];
  v3 = sub_1005B0(v0[17], v0[18]);

  sub_40F98(v1);
  sub_40F98(v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_FF018()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FF098()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FF104()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FF170(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_3EDD94();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_3ED6F4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_FF2E8;

  return BaseObjectGraph.inject<A>(_:)(v1 + 4, v4, v4);
}

uint64_t sub_FF2E8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_FFBB8;
  }

  else
  {
    v2 = sub_FF3FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_FF3FC()
{
  v1 = v0[13];
  swift_getObjectType();
  sub_F3D9C();
  v2 = sub_3EDDF4();
  v0[14] = v2;
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  if (v1)
  {
    (*(v4 + 8))(v3, v5);
    swift_unknownObjectRelease();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    (*(v4 + 8))(v3, v5);
    swift_unknownObjectRelease();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v0[5];
      sub_3EE4C4();
      v11 = (v10 + 32);
      do
      {
        v12 = *v11++;
        [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v12];
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        --v9;
      }

      while (v9);
    }

    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    v16 = sub_37C744(_swiftEmptyArrayStorage);

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v2;
    v18 = swift_allocObject();
    v0[15] = v18;
    *(v18 + 16) = sub_1008BC;
    *(v18 + 24) = v17;
    (*(v14 + 104))(v13, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v15);
    v2;
    v19 = swift_task_alloc();
    v0[16] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C18);
    *v19 = v0;
    v19[1] = sub_FF6E0;
    v21 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v21, sub_100910, v18, v20);
  }
}

uint64_t sub_FF6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(*(v2 + 64), *(v2 + 48));

  if (v0)
  {
    v4 = sub_FFC28;
  }

  else
  {
    v4 = sub_FF86C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_FF86C()
{
  v29 = v0;
  v27 = *(v0 + 24);
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    sub_41AD4(0, v1, 0);
    v2 = 32;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = sub_3E94B4();
      v28 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        v7 = v4;
        sub_41AD4((v5 > 1), v6 + 1, 1);
        v4 = v7;
        v3 = v28;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v4;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  v8 = sub_37C884(v3);

  if (v27 >> 62)
  {
    v9 = sub_3EE5A4();
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_20:

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v9 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_10:
  v28 = _swiftEmptyArrayStorage;
  result = sub_41B88(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v11 = 0;
  v12 = v27;
  v13 = v28;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v14 = sub_3EE3F4();
    }

    else
    {
      v14 = *(v12 + 8 * v11 + 32);
    }

    v28 = v13;
    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v18 = v14;
      sub_41B88((v15 > 1), v16 + 1, 1);
      v14 = v18;
      v12 = v27;
      v13 = v28;
    }

    ++v11;
    v13[2] = v16 + 1;
    v17 = &v13[3 * v16];
    v17[4] = v14;
    v17[5] = 0;
    *(v17 + 48) = 1;
  }

  while (v9 != v11);

LABEL_21:

  v20 = sub_37C884(v19);

  if (*(v8 + 16) > v20[2] >> 3)
  {
    v21 = sub_3120B0(v8, v20);

    v22 = *(v21 + 2);
    if (v22)
    {
      goto LABEL_23;
    }

LABEL_26:
    v25 = *(v0 + 112);

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v28 = v20;
  sub_311FB8(v8);

  v21 = v20;
  v22 = v20[2];
  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_23:
  v23 = sub_1C35EC(v22, 0);
  v24 = sub_441D0(&v28, v23 + 4, v22, v21);
  result = sub_44824();
  if (v24 != v22)
  {
LABEL_31:
    __break(1u);
    return result;
  }

LABEL_27:

  v26 = *(v0 + 8);

  return v26(v23, v13);
}

uint64_t sub_FFBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_FFC28()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_FFCA0()
{
  result = qword_4F1C00;
  if (!qword_4F1C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1C00);
  }

  return result;
}

char *sub_FFD04()
{
  v1 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v2 = objc_opt_self();
  sub_36174(0, &qword_4F1C20);
  sub_100944();
  isa = sub_3ED7E4().super.isa;
  v4 = [v2 predicateForEpisodeStoreTrackIds:isa];

  [v1 setPredicate:v4];
  sub_36174(0, &qword_4F1C30);
  v5 = sub_3EDDA4();
  if (v0)
  {

    return v4;
  }

  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_24:

    return _swiftEmptyArrayStorage;
  }

  v7 = sub_3EE5A4();
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_5:
  result = sub_41C4C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    v24 = v1;
    if ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [sub_3EE3F4() storeTrackId];
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_41C4C((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v13 = (v6 + 32);
      v14 = v7;
      do
      {
        v15 = [*v13 storeTrackId];
        v25 = v4;
        v17 = v4[2];
        v16 = v4[3];
        if (v17 >= v16 >> 1)
        {
          v18 = v15;
          sub_41C4C((v16 > 1), v17 + 1, 1);
          v15 = v18;
          v4 = v25;
        }

        v4[2] = v17 + 1;
        v4[v17 + 4] = v15;
        ++v13;
        --v14;
      }

      while (v14);
    }

    sub_3EE4C4();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        v20 = v19 + 1;
        v21 = [sub_3EE3F4() objectID];
        swift_unknownObjectRelease();
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        v19 = v20;
      }

      while (v7 != v20);
    }

    else
    {
      v22 = 32;
      do
      {
        v23 = [*(v6 + v22) objectID];
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
        v22 += 8;
        --v7;
      }

      while (v7);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F7808;

  return FindOrCreateLocalEpisodeContentIDsIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_100168(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100484(result, v10, 1, v3, &_swift_bridgeObjectRelease);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100274(char *a1, int64_t a2, char a3)
{
  result = sub_100484(a1, a2, a3, *v3, &_swift_release);
  *v3 = result;
  return result;
}

uint64_t sub_1002A8(unint64_t a1, unint64_t a2)
{
  sub_36174(0, &unk_4F1BE0);
  if (a2 >> 62)
  {
    v4 = sub_3EE5C4();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_3EE3C4(85);
    v5._countAndFlagsBits = 0xD000000000000046;
    v5._object = 0x80000000004276D0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_3EE3C4(82);
  v5._object = 0x8000000000427680;
  v5._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_3ED3D4(v5);
  v7._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v7);

  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  sub_3ED3D4(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v9);

  result = sub_3EE584();
  __break(1u);
  return result;
}

char *sub_100484(char *result, int64_t a2, char a3, char *a4, void (*a5)(char *))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C10);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a5(a4);
  return v12;
}

char *sub_1005B0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_100274(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v20 = a2;
      v7 = 0;
      v5 = _swiftEmptyArrayStorage;
      a2 = 1;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = sub_1002A8(v7, a1);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = sub_3EE5A4();
            goto LABEL_3;
          }

          if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_22;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v21 = v5;
        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_100274((v9 > 1), v10 + 1, 1);
          v8 = v12;
          v5 = v21;
        }

        ++v7;
        v5[2] = v10 + 1;
        v11 = &v5[3 * v10];
        v11[4] = v8;
        v11[5] = 0;
        *(v11 + 48) = 1;
        if (v4 == v7)
        {
          a2 = v20;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v13 = *(a2 + 16);
    if (v13)
    {
      sub_100274(0, v13, 0);
      v14 = (a2 + 40);
      do
      {
        v16 = *(v14 - 1);
        v15 = *v14;
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];

        if (v18 >= v17 >> 1)
        {
          sub_100274((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[3 * v18];
        v19[4] = v16;
        v19[5] = v15;
        *(v19 + 48) = 2;
        v14 += 2;
        --v13;
      }

      while (v13);
    }

    sub_100168(_swiftEmptyArrayStorage);
    return v5;
  }

  return result;
}

unint64_t sub_1007BC()
{
  result = qword_4F1C08;
  if (!qword_4F1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1C08);
  }

  return result;
}

unint64_t sub_100814()
{
  result = qword_4F1A28;
  if (!qword_4F1A28)
  {
    sub_3E7234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1A28);
  }

  return result;
}

uint64_t sub_10087C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1008D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100910@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_100944()
{
  result = qword_503E20;
  if (!qword_503E20)
  {
    sub_36174(255, &qword_4F1C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_503E20);
  }

  return result;
}

uint64_t FindShowEpisodesIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v3 = sub_3EDD94();
  *(v1 + 32) = v3;
  *(v1 + 40) = *(v3 - 8);
  *(v1 + 48) = swift_task_alloc();
  v4 = sub_3ED6F4();
  *(v1 + 56) = v4;
  *(v1 + 64) = *(v4 - 8);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = *(a1 + 24);
  *(v1 + 160) = *(a1 + 40);
  *(v1 + 96) = *(a1 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  *v6 = v1;
  v6[1] = sub_100B3C;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v5, v5);
}

uint64_t sub_100B3C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_101138;
  }

  else
  {
    v2 = sub_100C50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C50()
{
  v1 = *(v0 + 112);
  swift_getObjectType();
  sub_F3D9C();
  v2 = sub_3EDDF4();
  *(v0 + 120) = v2;
  if (!v1)
  {
    v5 = v2;
    v6 = *(v0 + 160);
    v7 = *(v0 + 80);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    swift_unknownObjectRelease();
    v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
    *(v0 + 128) = v8;
    v9 = [v8 setPredicate:v7];
    if ((v6 & 1) == 0)
    {
      v13 = *(v0 + 88);
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, v13, v11, v12);
      }

      [v8 setFetchLimit:?];
    }

    isa = *(v0 + 96);
    if (isa)
    {
      sub_36174(0, &qword_4F1C40);
      isa = sub_3ED574().super.isa;
    }

    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    [v8 setSortDescriptors:isa];

    [v8 setResultType:1];
    v18 = swift_allocObject();
    *(v0 + 136) = v18;
    *(v18 + 16) = v5;
    *(v18 + 24) = v8;
    (*(v16 + 104))(v15, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v17);
    v5;
    v19 = v8;
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1250);
    *v20 = v0;
    v20[1] = sub_100F24;
    v10 = *(v0 + 48);
    v13 = sub_101480;
    v9 = (v0 + 24);
    v11 = v18;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, v13, v11, v12);
  }

  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F24()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);

  if (v0)
  {
    v3 = sub_1011A8;
  }

  else
  {
    v3 = sub_1010A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010A8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_101138()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011A8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_101224@<X0>(void *a1@<X8>)
{
  sub_36174(0, &unk_4F1BE0);
  result = sub_3EDDA4();
  if (v1)
  {
    return result;
  }

  v4 = result;
  if (!(result >> 62))
  {
    v5 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_18:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v5 = sub_3EE5A4();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_4:
  result = sub_41B88(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = sub_3EE3F4();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          v19 = a1;
          v11 = v7;
          sub_41B88((v8 > 1), v9 + 1, 1);
          v7 = v11;
          a1 = v19;
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[3 * v9];
        v10[4] = v7;
        v10[5] = 0;
        *(v10 + 48) = 1;
      }

      while (v5 != v6);
    }

    else
    {
      v20 = a1;
      v12 = 32;
      do
      {
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        v15 = *(v4 + v12);
        if (v14 >= v13 >> 1)
        {
          v17 = v13 > 1;
          v18 = v15;
          sub_41B88(v17, v14 + 1, 1);
          v15 = v18;
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v16 = &_swiftEmptyArrayStorage[3 * v14];
        v16[4] = v15;
        v16[5] = 0;
        *(v16 + 48) = 1;
        v12 += 8;
        --v5;
      }

      while (v5);

      a1 = v20;
    }

    *a1 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_101440()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1014A0()
{
  result = qword_4F1C48;
  if (!qword_4F1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1C48);
  }

  return result;
}

uint64_t sub_1014F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_F7808;

  return FindShowEpisodesIntentImplementation.perform(_:objectGraph:)(a2);
}

uint64_t FollowFeedIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_3E9A04();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_3ED6F4();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  v6 = swift_task_alloc();
  v2[16] = v6;
  *v6 = v2;
  v6[1] = sub_10171C;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v5, v5);
}

uint64_t sub_10171C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_101F98, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
    v4 = swift_task_alloc();
    *(v2 + 144) = v4;
    *v4 = v2;
    v4[1] = sub_1018C0;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_1018C0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_102008;
  }

  else
  {
    v2 = sub_1019D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1019D4()
{
  v1 = v0[19];
  swift_getObjectType();
  sub_F3D9C();
  v0[20] = sub_3EDDF4();
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  if (v1)
  {
    swift_unknownObjectRelease();
    (*(v3 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v3 + 8))(v0[15], v0[13]);
    swift_unknownObjectRelease();
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_101B64;
    v8 = v0[8];

    return sub_102180(v8, (v0 + 2));
  }
}

uint64_t sub_101B64(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_102080;
  }

  else
  {
    *(v4 + 216) = a1 & 1;
    v5 = sub_101C90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101C90()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    sub_3E98C4();
    v1 = sub_3E99F4();
    v2 = sub_3ED9D4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "Subscription to RSS Feed failed, but did not throw an error", v3, 2u);
    }

    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);

    (*(v5 + 8))(v4, v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_101DD0;
  v8 = *(v0 + 160);
  v9 = *(v0 + 64);

  return sub_1025B4(v9, v8);
}

uint64_t sub_101DD0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 192) = v3;

  if (v3)
  {
    v9 = sub_102100;
  }

  else
  {
    *(v8 + 217) = a3;
    *(v8 + 200) = a2;
    *(v8 + 208) = a1;
    v9 = sub_101F0C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_101F0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 217);

  return v1(v2, v3, v4);
}

uint64_t sub_101F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_102008()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_102080()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_102100()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_102180(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10221C, 0, 0);
}

uint64_t sub_10221C()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_3E6F74();
  v18 = sub_3E6F64();
  v5 = v4;
  v6 = sub_3E6F94();
  v8 = v7;
  sub_3E6F54();
  v9 = sub_3E79D4();
  v11 = v10;
  v12 = 1;
  if (v9 != sub_3E79D4() || v11 != v13)
  {
    v12 = sub_3EE804();
  }

  v15 = v0[4];

  v0[5] = (*(v3 + 40))(v15, v18, v5 & 1, v6, v8, v12 & 1, 0, v2, v3);

  sub_27EDC(v15);
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1023BC;

  return Promise.then()(v0 + 8);
}

uint64_t sub_1023BC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_102544;
  }

  else
  {

    v2 = sub_1024D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1024D8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_102544()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1025B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_3E9A04();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_3EDD94();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_102708, 0, 0);
}

uint64_t sub_102708()
{
  v1 = sub_3E6F64();
  if ((v2 & 1) == 0)
  {
    if (v1 < 0)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, v3, v4, v5);
    }

    v15 = [objc_opt_self() predicateForPodcastStoreId:v1];
LABEL_9:
    v0[12] = v15;
    v18 = v0[9];
    v19 = v0[10];
    v20 = v0[8];
    v21 = v0[4];
    v22 = swift_allocObject();
    v0[13] = v22;
    *(v22 + 16) = v15;
    *(v22 + 24) = v21;
    (*(v18 + 104))(v19, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v20);
    v23 = v15;
    v24 = v21;
    v25 = swift_task_alloc();
    v0[14] = v25;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C78);
    *v25 = v0;
    v25[1] = sub_102A74;
    v2 = v0[10];
    v3 = sub_103380;
    v1 = (v0 + 2);
    v4 = v22;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, v3, v4, v5);
  }

  v6 = v0[11];
  sub_3E6F74();
  v7 = sub_3E5DC4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[11];
  if (v9 != 1)
  {
    sub_3E5CD4();
    (*(v8 + 8))(v10, v7);
    v16 = objc_opt_self();
    v17 = sub_3ED204();

    v15 = [v16 predicateForPodcastWithFeedUrl:v17];

    goto LABEL_9;
  }

  sub_27EDC(v0[11]);
  v11 = sub_3E7164();
  sub_1032F8(&qword_4F1C70, &type metadata accessor for IntentFeedSubscriptionError);
  swift_allocError();
  (*(*(v11 - 8) + 104))(v12, enum case for IntentFeedSubscriptionError.subscriptionForNonAdamIDNonRSSShow(_:), v11);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_102A74()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v3 = sub_102ED0;
  }

  else
  {
    v3 = sub_102BF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_102BF8()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (sub_3EE5A4() < 2)
    {
      goto LABEL_6;
    }
  }

  else if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) < 2)
  {
    goto LABEL_6;
  }

  sub_3E98C4();
  v2 = sub_3E99F4();
  v3 = sub_3ED9D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "There is more than one show with the provided feed identifier. This may be returning the incorrect show.", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  (*(v6 + 8))(v5, v7);
LABEL_6:
  if (v1 >> 62)
  {
    result = sub_3EE5A4();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_15:
    v13 = v0[12];

    v14 = sub_3E7164();
    sub_1032F8(&qword_4F1C70, &type metadata accessor for IntentFeedSubscriptionError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for IntentFeedSubscriptionError.unableToFindFeedAfterSubscription(_:), v14);
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v9 = sub_3EE3F4();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v9 = *(v1 + 32);
  }

  v10 = v9;
  v11 = v0[12];

  v12 = v0[1];

  return v12(v10, 0, 1);
}

uint64_t sub_102ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_102F58(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  [v5 setPredicate:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3F7950;
  sub_36174(0, &qword_4EA188);
  *(v6 + 32) = sub_3EDFB4();
  sub_36174(0, &qword_4F1C40);
  isa = sub_3ED574().super.isa;

  [v5 setSortDescriptors:isa];

  [v5 setFetchLimit:1];
  [v5 setResultType:1];
  sub_36174(0, &unk_4F1BE0);
  v8 = sub_3EDDA4();

  if (!v2)
  {
    *a2 = v8;
  }
}

uint64_t sub_1030DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10317C;

  return FollowFeedIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_10317C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1032F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_103340()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10339C()
{
  sub_3E62F4();
  v0 = sub_3E62E4();
  v2 = v1;

  qword_4F1C90 = v0;
  unk_4F1C98 = v2;
  return result;
}

uint64_t NewsFromYourShowsShelfIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  v5 = sub_3EDBB4();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = sub_3EDB54();
  *(v3 + 96) = swift_task_alloc();
  sub_3EBC14();
  v6 = swift_task_alloc();
  v7 = *a3;
  *(v3 + 104) = v6;
  *(v3 + 112) = v7;
  *(v3 + 120) = *(a3 + 1);

  return _swift_task_switch(sub_10352C, 0, 0);
}

uint64_t sub_10352C()
{
  v1 = v0[10];
  v2 = v0[9];
  v6 = v0[8];
  sub_36174(0, &qword_4F10B0);
  sub_3EBBE4();
  v0[4] = _swiftEmptyArrayStorage;
  sub_103C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_886BC(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  (*(v2 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v0[17] = sub_3EDBF4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_103718;

  return BaseObjectGraph.inject<A>(_:)(v0 + 5, v3, v3);
}

uint64_t sub_103718()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_103AD0;
  }

  else
  {
    v2 = sub_10382C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10382C()
{
  v0[20] = v0[5];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1038F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1038F0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_103B7C;
  }

  else
  {
    v2 = sub_103A04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_103A04()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 48);
  v8 = *(v0 + 120);

  v5 = *(v0 + 16);
  *v4 = v3;
  *(v4 + 8) = v8;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_103AD0()
{

  v1 = *(v0 + 152);

  if (!v1)
  {
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_103B7C()
{

  v1 = *(v0 + 152);

  if (!v1)
  {
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_103C38()
{
  result = qword_4F1CA8;
  if (!qword_4F1CA8)
  {
    sub_3EDB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1CA8);
  }

  return result;
}

uint64_t NewsFromYourShowsShelfIntentImplementation.perform()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A50);
  *(v1 + 328) = v2;
  *(v1 + 336) = *(v2 - 8);
  *(v1 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  *(v1 + 352) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CC0);
  *(v1 + 360) = v3;
  *(v1 + 368) = *(v3 - 8);
  *(v1 + 376) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CC8);
  *(v1 + 384) = v4;
  *(v1 + 392) = *(v4 - 8);
  *(v1 + 400) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CD0);
  *(v1 + 408) = v5;
  *(v1 + 416) = *(v5 - 8);
  *(v1 + 424) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1CD8);
  *(v1 + 432) = v6;
  *(v1 + 440) = *(v6 - 8);
  *(v1 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  *(v1 + 456) = swift_task_alloc();
  v7 = type metadata accessor for Category();
  *(v1 + 464) = v7;
  v8 = *(v7 - 8);
  *(v1 + 472) = v8;
  *(v1 + 480) = *(v8 + 64);
  *(v1 + 488) = swift_task_alloc();
  *(v1 + 496) = swift_task_alloc();
  v9 = sub_3EDD94();
  *(v1 + 504) = v9;
  *(v1 + 512) = *(v9 - 8);
  *(v1 + 520) = swift_task_alloc();
  v10 = *(v0 + 16);
  *(v1 + 88) = *v0;
  *(v1 + 104) = v10;
  *(v1 + 120) = *(v0 + 32);
  *(v1 + 136) = *(v0 + 48);

  return _swift_task_switch(sub_104050, 0, 0);
}

uint64_t sub_104050()
{
  swift_getObjectType();
  v1 = sub_3EDDE4();
  v0[66] = v1;
  v2 = v1;
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[64];
  v7 = v0[11];
  v6 = v0[12];
  v0[67] = v7;
  v0[68] = v6;
  v8 = v0[13];
  v9 = swift_allocObject();
  v0[69] = v9;
  v9[2] = v2;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v8;
  (*(v5 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);

  v2;
  v10 = swift_task_alloc();
  v0[70] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CE8);
  *v10 = v0;
  v10[1] = sub_10428C;
  v12 = v0[65];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_104EF0, v9, v11);
}

uint64_t sub_10428C()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[64] + 8))(v2[65], v2[63]);

    return _swift_task_switch(sub_1043E8, 0, 0);
  }
}

uint64_t sub_1043E8()
{
  v1 = *(v0 + 40);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 336);
    v4 = *(v0 + 344);
    v5 = *(v0 + 328);

    *(v0 + 320) = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9DF4();
    sub_886BC(&qword_4F1A88, &qword_4F1A50);
    v51 = sub_3E9F94();

    (*(v3 + 8))(v4, v5);
LABEL_13:

    v19 = *(v0 + 8);

    return v19(v51);
  }

  if (*(v0 + 24))
  {

LABEL_12:

    v15 = *(v0 + 528);
    v17 = *(v0 + 336);
    v16 = *(v0 + 344);
    v18 = *(v0 + 328);
    *(v0 + 296) = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9DF4();
    sub_886BC(&qword_4F1A88, &qword_4F1A50);
    v51 = sub_3E9F94();

    (*(v17 + 8))(v16, v18);
    goto LABEL_13;
  }

  if (!v1 || !*(v0 + 56) || !*(v0 + 72))
  {
    goto LABEL_12;
  }

  v50 = *(v0 + 32);
  v6 = *(v0 + 568);
  v7 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = v7;
  v53 = inited;

  sub_41090(v9);
  v10 = sub_3E94B4();
  sub_3E5D94();

  v11 = sub_3E94F4();
  v12 = *(v0 + 528);
  if (!v6)
  {
    v20 = v11;
    v21 = *(v0 + 496);
    v40 = *(v0 + 488);
    v41 = *(v0 + 472);
    v23 = *(v0 + 456);
    v22 = *(v0 + 464);
    v49 = *(v0 + 440);
    v47 = *(v0 + 448);
    v48 = *(v0 + 432);
    v52 = *(v0 + 416);
    v46 = *(v0 + 408);
    v43 = *(v0 + 424);
    v44 = *(v0 + 392);
    v42 = *(v0 + 384);
    v38 = *(v0 + 400);
    v39 = *(v0 + 368);
    v36 = *(v0 + 376);
    v37 = *(v0 + 360);
    v45 = *(v0 + 352);
    v24 = v22[8];
    v25 = sub_3E7784();
    (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
    *v21 = v10;
    v21[1] = v50;
    v21[2] = v1;
    sub_FACC(v23, v21 + v22[6], &unk_4E9EE0);
    v26 = v21 + v22[7];
    *v26 = v20;
    v26[4] = 0;
    v27 = v21 + v22[9];
    *v27 = 0;
    v27[8] = 1;
    *(v21 + v22[10]) = &_swiftEmptySetSingleton;
    v28 = sub_104F10(v53, v12);

    *(v0 + 304) = v28;
    v29 = swift_allocObject();
    v30 = *(v0 + 104);
    *(v29 + 16) = *(v0 + 88);
    *(v29 + 32) = v30;
    *(v29 + 48) = *(v0 + 120);
    *(v29 + 64) = *(v0 + 136);
    sub_105538(v0 + 88, v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
    sub_886BC(&qword_4F1D08, &qword_4F1CF8);
    sub_3EA024();

    sub_886BC(&unk_4F1D10, &qword_4F1CC0);
    sub_886BC(&qword_4F1A78, &qword_4F1D00);
    sub_3EA184();
    (*(v39 + 8))(v36, v37);
    sub_106E10(v21, v40, type metadata accessor for Category);
    v31 = (*(v41 + 80) + 72) & ~*(v41 + 80);
    v32 = swift_allocObject();
    v33 = *(v0 + 104);
    *(v32 + 16) = *(v0 + 88);
    *(v32 + 32) = v33;
    *(v32 + 48) = *(v0 + 120);
    *(v32 + 64) = *(v0 + 136);
    sub_106D48(v40, v32 + v31, type metadata accessor for Category);
    sub_105538(v0 + 88, v0 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_886BC(&qword_4F1D20, &qword_4F1CC8);
    sub_3EA024();

    (*(v44 + 8))(v38, v42);
    sub_36174(0, &qword_4F10B0);
    v34 = sub_3EDBC4();
    *(v0 + 312) = v34;
    v35 = sub_3EDB64();
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    sub_886BC(&qword_4F1D28, &qword_4F1CD0);
    sub_87870();
    sub_3EA114();
    sub_FCF8(v45, &qword_4F69E0);

    (*(v52 + 8))(v43, v46);
    sub_886BC(&qword_4F1D38, &unk_4F1CD8);
    v51 = sub_3E9F94();

    (*(v49 + 8))(v47, v48);
    sub_106DB0(v21, type metadata accessor for Category);
    goto LABEL_13;
  }

  sub_FCF8(*(v0 + 456), &unk_4E9EE0);

  v13 = *(v0 + 8);

  return v13();
}

void sub_104D58(uint64_t a1@<X8>)
{
  v2 = sub_3EDD24();
  if (v2)
  {
    v3 = v2;
    *a1 = [v2 adamID];
    *(a1 + 8) = 0;
    v4 = [v3 name];
    v5 = sub_3ED244();
    v7 = v6;

    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
    v8 = [v3 url];
    if (v8)
    {
      v9 = v8;
      v10 = sub_3ED244();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *(a1 + 32) = v10;
    *(a1 + 40) = v12;
    v14 = [v3 color];
    if (v14)
    {
      v15 = v14;
      v16 = sub_3ED244();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(a1 + 48) = v16;
    *(a1 + 56) = v18;
    v19 = v3;
    v20 = sub_3E7594();

    v13 = v20 & 1;
  }

  else
  {
    v13 = 0;
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  *(a1 + 64) = v13;
}

uint64_t sub_104EA8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_104F10(uint64_t a1, void *a2)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1D60);
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = v2[1];
  v35 = *v2;
  v36 = v7;
  v37 = v2[2];
  v38 = *(v2 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_3FF050;
  *(v8 + 32) = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_3F5300;
  v10 = sub_3ED244();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_4F39C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_3E8274();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  v16 = _swiftEmptyArrayStorage;
  v34[0] = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (a1 + 32);
    do
    {
      v19 = *v18++;
      v20 = objc_allocWithZone(NSNumber);
      if ([v20 initWithUnsignedLongLong:{v19, v31}])
      {
        sub_3ED564();
        if (*(&dword_10 + (v34[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
        v16 = v34[0];
      }

      --v17;
    }

    while (v17);
  }

  sub_36174(0, &qword_4F1D70);
  *(v9 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D78);
  *(v9 + 144) = sub_886BC(&unk_4F1D80, &qword_4F1D78);
  *(v9 + 112) = v16;
  *(v8 + 40) = sub_3ED944();
  isa = sub_3ED574().super.isa;

  v22 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  sub_3ED244();
  v23 = v38;
  sub_36174(0, &qword_4EA188);
  v24 = v22;
  v25 = v31;
  v23;
  sub_3E9274();
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v35;
  *(v26 + 32) = v27;
  *(v26 + 48) = v37;
  *(v26 + 64) = v38;
  sub_105538(&v35, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1A60);
  sub_886BC(&unk_4F1DA0, &unk_4F1D60);
  v28 = v33;
  v29 = sub_3E8834();

  (*(v32 + 8))(v6, v28);
  return v29;
}

uint64_t sub_1053E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_3E8944();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D58);
  sub_3E95D4();
  v12[1] = v12[0];
  v13 = 1;
  sub_3E8954();
  v8 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  v10 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v7, 30, ObjectType, v8);
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  return result;
}

uint64_t sub_105570@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v6 - 8);
  v8 = (v18 - v7);
  v9 = type metadata accessor for ModernShelf();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v19 = *a1;
  v20 = v13;
  v21 = a1[2];
  v22 = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1AA0);
  sub_3E95D4();
  v14 = sub_76CAC(v18[1]);

  sub_105B18(v14, a2, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_FCF8(v8, &unk_503DA0);
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_106D48(v8, v12, type metadata accessor for ModernShelf);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_3F5630;
    result = sub_106D48(v12, v16 + v17, type metadata accessor for ModernShelf);
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1057AC()
{
  v1 = type metadata accessor for Category();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = *(v1 + 24);
  v7 = sub_3E5DC4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 32);
  v10 = sub_3E7784();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v9 + 32);
    if (v11 != 255)
    {
      sub_F2248(*(v9 + 16), *(v9 + 24), v11);
    }

    v12 = *(v9 + 64);
    if (v12 != 255)
    {
      sub_F2260(*(v9 + 56), v12);
    }

    v13 = *(v9 + 80);
    if (v13 != 255)
    {
      sub_F2260(*(v9 + 72), v13);
    }

    v14 = *(v9 + 96);
    if (v14 != 255)
    {
      sub_F2260(*(v9 + 88), v14);
    }

    v15 = *(v9 + 112);
    if (v15 != 255)
    {
      sub_F2260(*(v9 + 104), v15);
    }

    v16 = *(v9 + 128);
    if (v16 != 255)
    {
      sub_F2260(*(v9 + 120), v16);
    }

    v17 = *(v10 + 44);
    v18 = sub_3E7624();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_105A3C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for Category() - 8);
  v4 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_105570((v1 + 16), v4, a1);
}

unint64_t sub_105AC4()
{
  result = qword_4F1D40;
  if (!qword_4F1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1D40);
  }

  return result;
}

uint64_t sub_105B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - v7;
  v105 = type metadata accessor for Header(0);
  v9 = *(v105 - 8);
  __chkstk_darwin(v105);
  v97 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v11 - 8);
  v104 = &v78 - v12;
  v101 = sub_3E5FC4();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v100 = &v78 - v15;
  v98 = sub_3EC1F4();
  v16 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v21 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v24 - 8);
  v102 = (&v78 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v26 - 8);
  v28 = &v78 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v29 - 8);
  if (*(a1 + 16))
  {
    v91 = &v78 - v30;
    v92 = v9;
    v103 = v8;
    v93 = a1;
    v94 = a3;
    if (qword_4E89A8 != -1)
    {
      swift_once();
    }

    v31 = unk_4F1C98;
    v89 = qword_4F1C90;
    v32 = *(a2 + 16);
    v106 = *(a2 + 8);
    v83 = v32;
    v33 = objc_opt_self();
    v90 = v31;

    v34 = [v33 mainBundle];
    v77._countAndFlagsBits = 0xE000000000000000;
    v108._countAndFlagsBits = 0x554F595F4D4F5246;
    v108._object = 0xEF53574F48535F52;
    v109.value._countAndFlagsBits = 0;
    v109.value._object = 0;
    v35.super.isa = v34;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v78 = sub_3E5A74(v108, v109, v35, v110, v77);
    v84 = v36;

    v81 = type metadata accessor for ActionMenu(0);
    v37 = *(v81 - 8);
    v80 = *(v37 + 56);
    v82 = v37 + 56;
    v88 = v28;
    v80(v28, 1, 1, v81);
    v38 = v23;
    sub_106E10(a2, v23, type metadata accessor for Category);
    swift_storeEnumTagMultiPayload();
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v39 = swift_allocObject();
    v79 = type metadata accessor for FlowDestination;
    sub_106E10(v23, v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v40 = (v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v40 = 0;
    v40[1] = 0;
    *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v41 = v95;
    v42 = v98;
    (*(v16 + 16))(v95, v20, v98);
    v43 = sub_3EC634();
    v44 = *(v43 - 8);
    v45 = v100;
    v86 = *(v44 + 56);
    v87 = v43;
    v85 = v44 + 56;
    v86(v100, 1, 1);
    v46 = v96;
    sub_3E5FB4();
    v47 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v49 = v48;
    (*(v99 + 8))(v46, v101);
    (*(v16 + 8))(v20, v42);
    sub_106DB0(v38, v79);
    *(v39 + 16) = v47;
    *(v39 + 24) = v49;
    *(v39 + 32) = 0;
    *(v39 + 40) = 0;
    *(v39 + 48) = 48;
    (*(v16 + 32))(v39 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v41, v42);
    sub_FACC(v45, v39 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
    v50 = v102;
    *v102 = v39;
    v51 = type metadata accessor for Header.PrimaryAction(0);
    swift_storeEnumTagMultiPayload();
    v52 = *(v51 - 8);
    v53 = *(v52 + 56);
    v53(v50, 0, 1, v51);
    v54 = sub_3E7784();
    v55 = *(*(v54 - 8) + 56);
    v55(v104, 1, 1, v54);
    v56 = v97;
    v97[32] = 0;
    *v56 = 0u;
    *(v56 + 16) = 0u;
    v57 = v105;
    v101 = *(v105 + 28);
    v80((v56 + v101), 1, 1, v81);
    v100 = *(v57 + 32);
    v53(v56 + v100, 1, 1, v51);
    v58 = *(v57 + 36);
    v59 = v56;
    v60 = v83;
    v55(v59 + v58, 1, 1, v54);
    if ((sub_3EE0E4() & 1) != 0 || (*(v52 + 48))(v50, 1, v51) != 1)
    {
      *v59 = v106;
      *(v59 + 8) = v60;
      v62 = v84;
      *(v59 + 16) = v78;
      *(v59 + 24) = v62;
      *(v59 + 32) = 0;
      sub_51F9C(v88, v59 + v101, &qword_4F1AB8);
      sub_F7C5C(v50, v59 + v100);
      sub_51F9C(v104, v59 + v58, &qword_4F1D50);
      v61 = v91;
      sub_106E10(v59, v91, type metadata accessor for Header);
      (*(v92 + 56))(v61, 0, 1, v105);
      sub_FCF8(v50, &qword_4F1AB0);
      sub_106DB0(v59, type metadata accessor for Header);
    }

    else
    {

      sub_FCF8(v104, &qword_4F1D50);
      sub_FCF8(v88, &qword_4F1AB8);
      sub_FCF8(v50, &qword_4F1AB0);
      sub_106DB0(v59, type metadata accessor for Header);
      v61 = v91;
      (*(v92 + 56))(v91, 1, 1, v105);
    }

    v63 = sub_3E5DC4();
    v64 = *(*(v63 - 8) + 56);
    v64(v103, 1, 1, v63);
    v65 = type metadata accessor for ModernShelf();
    v66 = v94;
    v67 = v94 + v65[12];
    *(v67 + 4) = 0;
    *v67 = 0u;
    *(v67 + 1) = 0u;
    v68 = v65[13];
    sub_3E85C4();
    v70 = v89;
    v69 = v90;
    sub_3EC584();

    (v86)(v66 + v68, 0, 1, v87);
    v71 = v65[9];
    v72 = (v66 + v65[8]);
    v64(v66 + v71, 1, 1, v63);
    *v66 = v70;
    v66[1] = v69;
    sub_FACC(v61, v66 + v65[5], &qword_4F1AC0);
    v73 = v66 + v65[6];
    *v73 = 265;
    *(v73 + 3) = 256;
    *(v73 + 2) = 0;
    *(v73 + 1) = 1;
    *(v66 + v65[7]) = v93;

    sub_51F9C(v103, v66 + v71, &unk_4E9EE0);
    *(v66 + v65[10]) = 1;
    *(v66 + v65[11]) = 0;
    *v72 = 0;
    v72[1] = 0;
    return (*(*(v65 - 1) + 56))(v66, 0, 1, v65);
  }

  else
  {
    v75 = type metadata accessor for ModernShelf();
    v76 = *(*(v75 - 8) + 56);

    return v76(a3, 1, 1, v75);
  }
}

size_t sub_10683C@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a3;
  v40 = a2;
  v42 = sub_3E5DC4();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v6 = (v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v44 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
LABEL_35:
    v8 = sub_3EE5A4();
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v41 = v6;
  if (v8)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v38[1] = v7;
    v7 += 32;
    while (1)
    {
      while (1)
      {
        if (v10)
        {
          v12 = sub_3EE3F4();
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_34;
          }

          v12 = *(v7 + 8 * v9);
        }

        v13 = v12;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v6 = v12;
        v15 = sub_3EDFF4();
        if ((v16 & 1) == 0)
        {
          break;
        }

LABEL_5:

        if (v9 == v8)
        {
          goto LABEL_19;
        }
      }

      v17 = *(v40 + 16);
      if (*(v17 + 16))
      {
        v18 = v15;
        sub_3EE954();
        v6 = &v43;
        sub_3EE994(v18);
        v19 = sub_3EE9A4();
        v20 = -1 << *(v17 + 32);
        v21 = v19 & ~v20;
        if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (*(*(v17 + 48) + 8 * v21) != v18)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_5;
        }
      }

LABEL_16:
      v6 = &v44;
      sub_3EE494();
      sub_3EE4D4();
      sub_3EE4E4();
      sub_3EE4A4();
      if (v9 == v8)
      {
LABEL_19:
        v23 = v44;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }
    }
  }

  v23 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_37:

    v28 = _swiftEmptyArrayStorage;
LABEL_38:
    *v39 = v28;
    return result;
  }

LABEL_36:
  v37 = v23;
  v24 = sub_3EE5A4();
  v23 = v37;
  if (!v24)
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = v23;
  v43 = _swiftEmptyArrayStorage;
  result = sub_41BC8(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v43;
    v29 = v25;
    v40 = v25 & 0xC000000000000001;
    do
    {
      if (v40)
      {
        v30 = sub_3EE3F4();
      }

      else
      {
        v30 = *(v29 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = [v30 objectID];
      v33 = [v32 URIRepresentation];

      v34 = v41;
      sub_3E5D44();

      v43 = v28;
      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        sub_41BC8(v35 > 1, v36 + 1, 1);
        v28 = v43;
      }

      ++v27;
      v28[2] = v36 + 1;
      (*(v4 + 32))(v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v34, v42);
      v29 = v25;
    }

    while (v24 != v27);

    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t sub_106BF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return NewsFromYourShowsShelfIntentImplementation.init(asPartOf:performing:)(a1, a2, a3);
}

uint64_t sub_106CA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_F7808;

  return NewsFromYourShowsShelfIntentImplementation.perform()();
}

uint64_t sub_106D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_106DB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_106E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_7Tm()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t ReferenceLinkMetadataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1DB0);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_106F7C, 0, 0);
}

uint64_t sub_106F7C()
{
  v1 = [objc_allocWithZone(LPMetadataProvider) init];
  v0[22] = v1;
  v2 = sub_3ED204();
  [v1 setSourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed:v2];

  sub_3E5D14(v3);
  v5 = v4;
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_107108;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1DB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_107420;
  v0[13] = &block_descriptor_7;
  v0[14] = v6;
  [v1 startFetchingMetadataForURL:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_107108()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1073A0;
  }

  else
  {
    v2 = sub_107218;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_107218()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = v2;
  ReferenceLinkMetadata.init(from:)(v3, v1);
  v4 = type metadata accessor for ReferenceLinkMetadata();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  if (v6 == 1)
  {
    sub_107510(v7);
    sub_107578();
    swift_allocError();
    *v9 = v3;
    swift_willThrow();
  }

  else
  {
    v11 = *(v0 + 152);

    sub_BBBB4(v7, v11);
    (*(v5 + 56))(v11, 0, 1, v4);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1073A0()
{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_107420(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_107510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_107578()
{
  result = qword_4F1DC0;
  if (!qword_4F1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1DC0);
  }

  return result;
}

unint64_t sub_1075D0()
{
  result = qword_4F1DC8;
  if (!qword_4F1DC8)
  {
    type metadata accessor for ReferenceLinkMetadataIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1DC8);
  }

  return result;
}

uint64_t sub_107628(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return ReferenceLinkMetadataIntentImplementation.perform(_:objectGraph:)(a1, a2);
}

uint64_t UnbookmarkEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_3EDD94();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_3E70E4();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v2[20] = *(v5 + 64);
  v2[21] = swift_task_alloc();
  v6 = sub_3ED6F4();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v8 = swift_task_alloc();
  v2[25] = v8;
  *v8 = v2;
  v8[1] = sub_1078C4;

  return BaseObjectGraph.inject<A>(_:)(v2 + 12, v7, v7);
}

uint64_t sub_1078C4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_108058;
  }

  else
  {
    v2 = sub_1079D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1079D8()
{
  v1 = v0[26];
  swift_getObjectType();
  sub_F3D9C();
  v0[27] = sub_3EDDF4();
  if (v1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    swift_unknownObjectRelease();

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    swift_unknownObjectRelease();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1DE0);
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v5[1] = sub_107B78;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v4, v4);
  }
}

uint64_t sub_107B78()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1080DC;
  }

  else
  {
    v2 = sub_107C8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_107C8C()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v15 = *(v0 + 136);
  v7 = *(v0 + 120);
  (*(v5 + 16))(v2, *(v0 + 104), v4);
  sub_1F958(v0 + 16, v0 + 56);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 240) = v10;
  *(v10 + 16) = v1;
  (*(v5 + 32))(v10 + v8, v2, v4);
  sub_1D4F0((v0 + 56), v10 + v9);
  (*(v6 + 104))(v15, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
  v11 = v1;
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_107E38;
  v13 = *(v0 + 136);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_108364, v10, &type metadata for () + 8);
}

uint64_t sub_107E38()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v3 = sub_108168;
  }

  else
  {
    v3 = sub_107FBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_107FBC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_108058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1080DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_108168()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1081FC(void *a1, uint64_t a2, void *a3)
{
  sub_3E70D4();
  v6 = sub_3EDD74();

  if (!v3)
  {
    sub_108404(v6, a3, a1);
  }

  return result;
}

uint64_t sub_10828C()
{
  v1 = sub_3E70E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_108364()
{
  v1 = *(sub_3E70E4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_1081FC(*(v0 + 16), v0 + v2, (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_108404(unint64_t result, void *a2, void *a3)
{
  v4 = result;
  if (result >> 62)
  {
    v10 = a3;
    result = sub_3EE5A4();
    a3 = v10;
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a3;
    v6 = 0;
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_3EE3F4();
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v6 |= [v8 isBookmarked];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_3E7504();
    }

    while (v5 != v7);
    result = v11;
    if (v6)
    {

      return [v11 saveInCurrentBlock];
    }
  }

  return result;
}

uint64_t sub_108550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F5184;

  return UnbookmarkEpisodeIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t UnfollowShowIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_3EDD94();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_3ED6F4();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1DE0);
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_108778;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v5, v5);
}

uint64_t sub_108778()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_108EBC, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
    v4 = swift_task_alloc();
    *(v2 + 184) = v4;
    *v4 = v2;
    v4[1] = sub_10891C;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_10891C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_108F2C;
  }

  else
  {
    v2 = sub_108A30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_108A30()
{
  v1 = *(v0 + 192);
  *(v0 + 200) = *(v0 + 96);
  swift_getObjectType();
  sub_F3D9C();
  v2 = sub_3EDDF4();
  *(v0 + 208) = v2;
  if (v1)
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 144);
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = v2;
    v9 = *(v0 + 136);
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    v12 = sub_3E6FF4();
    v14 = v13;
    v16 = v15;
    *(v0 + 216) = v12;
    *(v0 + 224) = v13;
    *(v0 + 256) = v15;
    sub_1F958(v0 + 16, v0 + 56);
    v17 = swift_allocObject();
    *(v0 + 232) = v17;
    *(v17 + 16) = v8;
    *(v17 + 24) = v12;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    sub_1D4F0((v0 + 56), v17 + 48);
    (*(v11 + 104))(v9, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
    v8;
    sub_3DE90(v12, v14, v16);
    v18 = swift_task_alloc();
    *(v0 + 240) = v18;
    *v18 = v0;
    v18[1] = sub_108C84;
    v19 = *(v0 + 136);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v18, v19, sub_109158, v17, &type metadata for () + 8);
  }
}

uint64_t sub_108C84()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v3 = sub_108FA4;
  }

  else
  {
    v3 = sub_108E08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_108E08()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 256);
  swift_unknownObjectRelease();
  sub_3DEF8(v1, v2, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_108EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_108F2C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_108FA4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 256);
  swift_unknownObjectRelease();
  sub_3DEF8(v1, v2, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_109048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_3EDD34();
  if (!v5)
  {
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(a5, a5[3]);
      sub_3E74E4();
    }

    else
    {
      sub_1092A4();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10910C()
{
  sub_3DEF8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_109180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F5184;

  return UnfollowShowIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

unint64_t sub_109228()
{
  result = qword_4F1DF8;
  if (!qword_4F1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1DF8);
  }

  return result;
}

unint64_t sub_1092A4()
{
  result = qword_4F1E00;
  if (!qword_4F1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E00);
  }

  return result;
}

uint64_t ThinClientBookmarkEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_109320, 0, 0);
}

uint64_t sub_109320()
{
  v1 = sub_3E7034();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1093CC;
  v3 = v0[3];

  return ThinClientToggleBookmarkEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(1, v1, v3);
}

uint64_t sub_1093CC(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_109524, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_109524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10958C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1095B0, 0, 0);
}

uint64_t sub_1095B0()
{
  v1 = sub_3E7034();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10965C;
  v3 = v0[4];

  return ThinClientToggleBookmarkEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(1, v1, v3);
}

uint64_t sub_10965C(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1097C0, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1 & 1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1097C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ThinClientFollowFeedIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_109854, 0, 0);
}

uint64_t sub_109854()
{
  v1 = sub_3E6F64();
  if (v2)
  {
    v3 = v0[1];

    return v3(0, 0, 255);
  }

  else
  {
    v5 = v1;
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_109958;
    v7 = v0[3];

    return sub_10BC70(0, v5, 0, 0, v7);
  }
}

uint64_t sub_109958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_109A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_109A94, 0, 0);
}

uint64_t sub_109A94()
{
  v1 = sub_3E6F64();
  if (v2)
  {
    v3 = v0[2];
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = -1;
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v1;
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_109B9C;
    v8 = v0[4];

    return sub_10BC70(0, v6, 0, 0, v8);
  }
}

uint64_t sub_109B9C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t ThinClientMarkAsPlayedEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_3E8304();
  v4 = swift_task_alloc();
  v5 = *a1;
  v2[4] = v4;
  v2[5] = v5;

  return _swift_task_switch(sub_109D70, 0, 0);
}

uint64_t sub_109D70()
{
  v1 = v0[4];
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E10) + 48);
  sub_3E5F64();
  v3 = sub_3E5F84();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  *(v1 + v2) = 0;
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_109E8C;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];

  return ThinClientTogglePlayedEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(v6, v5, v7);
}

uint64_t sub_109E8C(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_10A060(*(v4 + 32));
  if (v1)
  {

    return _swift_task_switch(sub_109FFC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_109FFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10A060(uint64_t a1)
{
  v2 = sub_3E8304();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10A0C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F5184;

  return ThinClientMarkAsPlayedEpisodeIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t ThinClientMarkAsUnplayedEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_3E8304();
  v4 = swift_task_alloc();
  v5 = *a1;
  v2[4] = v4;
  v2[5] = v5;

  return _swift_task_switch(sub_10A20C, 0, 0);
}

uint64_t sub_10A20C()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_109E8C;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  return ThinClientTogglePlayedEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(v3, v2, v4);
}

uint64_t sub_10A2B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = sub_3E8304();
  v5 = swift_task_alloc();
  v6 = *a2;
  v3[5] = v5;
  v3[6] = v6;

  return _swift_task_switch(sub_10A354, 0, 0);
}

uint64_t sub_10A354()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10A3FC;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return ThinClientTogglePlayedEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(v3, v2, v4);
}

uint64_t sub_10A3FC(char a1)
{
  v4 = *v2;
  v4[8] = v1;

  if (v1)
  {
    sub_10A060(v4[5]);

    return _swift_task_switch(sub_10A56C, 0, 0);
  }

  else
  {
    v5 = v4[2];
    sub_10A060(v4[5]);
    *v5 = a1 & 1;

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_10A56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ThinClientToggleBookmarkEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 305) = a1;
  v4 = sub_3E9A04();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AF0);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AF8);
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B00);
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B08);
  *(v3 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B10);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_3E7794();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  v6 = sub_3E7804();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  v7 = sub_3E5FC4();
  *(v3 + 216) = v7;
  *(v3 + 224) = *(v7 - 8);
  *(v3 + 232) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E18);
  v9 = swift_task_alloc();
  *(v3 + 240) = v9;
  *v9 = v3;
  v9[1] = sub_10A964;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v8, v8);
}

uint64_t sub_10A964()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10B5E4;
  }

  else
  {
    v2 = sub_10AA78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10AA78()
{
  v0[32] = v0[7];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B20);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10AB3C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10AB3C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10B6D0;
  }

  else
  {
    v2 = sub_10AC50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10AC50(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 80);
  v6 = *(v5 + 16);
  v7 = v5 + 48;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  *(v3 + 280) = v8;
  v9 = (v7 + 24 * v4);
  while (v6 != v4)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return MediaRequestControllerProtocol.perform(params:)(isUniquelyReferenced_nonNull_native, a2, a3);
    }

    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_28;
    }

    v11 = *v9;
    v9 += 24;
    ++v4;
    if (!v11)
    {
      v12 = *(v9 - 5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_E1524(0, v8[2] + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_E1524(v13 > 1, v14 + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v4 = v10;
      goto LABEL_2;
    }
  }

  *(v3 + 64) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_FFCA0();
  if (sub_3ED894())
  {
    v15 = *(v3 + 176);
    v16 = *(v3 + 184);
    v17 = *(v3 + 160);
    v18 = *(v3 + 168);
    v19 = *(v3 + 152);
    v47 = *(v3 + 144);
    v20 = *(v3 + 305);
    sub_3E5FB4();
    *(v3 + 304) = v20 & 1;
    sub_3E86B4();
    v49 = *(v3 + 48);
    v50 = *(v3 + 40);
    __swift_project_boxed_opaque_existential_1((v3 + 16), v50);
    v21 = sub_3E8AA4();
    v22 = &enum case for MediaRequest.RequestType.postLibrary(_:);
    if ((v21 & 1) == 0)
    {
      v22 = &enum case for MediaRequest.RequestType.deleteLibrary(_:);
    }

    (*(v15 + 104))(v16, *v22, v18);
    v23 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
    v24 = sub_3E77B4();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v17, v23, v24);
    (*(v25 + 56))(v17, 0, 1, v24);
    v26 = sub_3E7824();
    (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
    v27 = sub_3E77D4();
    (*(*(v27 - 8) + 56))(v47, 1, 1, v27);
    v28 = v8[2];
    if (v28)
    {
      sub_41BA8(0, v28, 0);
      v29 = _swiftEmptyArrayStorage;
      v30 = v8 + 4;
      sub_17A28();
      do
      {
        v31 = *v30++;
        *(v3 + 72) = v31;
        v32 = sub_3EE1F4();
        v51 = v29;
        v35 = v29[2];
        v34 = v29[3];
        if (v35 >= v34 >> 1)
        {
          v48 = v32;
          v37 = v33;
          sub_41BA8((v34 > 1), v35 + 1, 1);
          v33 = v37;
          v32 = v48;
          v29 = v51;
        }

        v29[2] = v35 + 1;
        v36 = &v29[2 * v35];
        v36[4] = v32;
        v36[5] = v33;
        --v28;
      }

      while (v28);
    }

    v40 = *(v3 + 136);
    v41 = *(v3 + 120);
    v42 = *(v3 + 128);
    v43 = sub_3E77C4();
    (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
    v44 = sub_3E7814();
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
    v45 = sub_3E5DC4();
    (*(*(v45 - 8) + 56))(v41, 1, 1, v45);
    sub_FB3E8(_swiftEmptyArrayStorage);
    sub_FB3E8(_swiftEmptyArrayStorage);
    sub_FB5D0(_swiftEmptyArrayStorage);
    sub_FB7B8(_swiftEmptyArrayStorage);
    sub_FB8BC(_swiftEmptyArrayStorage);
    sub_FB8BC(_swiftEmptyArrayStorage);
    sub_FBAA4(_swiftEmptyArrayStorage);
    sub_FBC8C(_swiftEmptyArrayStorage);
    sub_FBE74(_swiftEmptyArrayStorage);
    sub_FC05C(_swiftEmptyArrayStorage);
    sub_3E77F4();
    v46 = swift_task_alloc();
    *(v3 + 288) = v46;
    *v46 = v3;
    v46[1] = sub_10B2FC;
    isUniquelyReferenced_nonNull_native = *(v3 + 208);
    a3 = v49;
    a2 = v50;

    return MediaRequestControllerProtocol.perform(params:)(isUniquelyReferenced_nonNull_native, a2, a3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 16);

  v38 = *(v3 + 8);

  return v38(0);
}

uint64_t sub_10B2FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v5;
  *(*v5 + 296) = v4;

  v9 = v8[26];
  v10 = v8[25];
  v11 = v8[24];
  if (v4)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_10B7C4;
  }

  else
  {
    sub_68210(a3, a4);
    (*(v10 + 8))(v9, v11);
    v12 = sub_10B4A8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10B4A8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_3E8694();

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10B5E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10B6D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10B7C4()
{
  v29 = v0;
  sub_3E86A4();
  sub_3B590();
  sub_3EE064();

  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  if (v3)
  {
    v27 = v0[27];
    v26 = v0[12];
    v10 = swift_slowAlloc();
    v25 = v4;
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = sub_3E8AA4();
    v13 = (v12 & 1) == 0;
    if (v12)
    {
      v14 = 0x6B72616D6B6F6F62;
    }

    else
    {
      v14 = 0x616D6B6F6F626E75;
    }

    if (v13)
    {
      v15 = 0xEC00000064656B72;
    }

    else
    {
      v15 = 0xEA00000000006465;
    }

    v24 = v8;
    v16 = sub_2EDD0(v14, v15, &v28);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = sub_3ED594();
    v19 = v18;

    v20 = sub_2EDD0(v17, v19, &v28);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v21;
    *v11 = v21;
    _os_log_impl(&dword_0, v1, v2, "MAPI request failed to toggle bookmark state of episodes to %s, adamIDs: %s; Error: %@", v10, 0x20u);
    sub_D1C44(v11);

    swift_arrayDestroy();

    (*(v7 + 8))(v24, v26);
    (*(v5 + 8))(v25, v27);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
    (*(v5 + 8))(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v22 = v0[1];

  return v22(1);
}

uint64_t sub_10BB7C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_10BBDC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_10BC70(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 168) = a3;
  *(v5 + 176) = a5;
  *(v5 + 393) = a4;
  *(v5 + 160) = a2;
  *(v5 + 392) = a1;
  v6 = sub_3E9A04();
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  *(v5 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AF0);
  *(v5 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AF8);
  *(v5 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B00);
  *(v5 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B08);
  *(v5 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B10);
  *(v5 + 248) = swift_task_alloc();
  v7 = sub_3E7794();
  *(v5 + 256) = v7;
  *(v5 + 264) = *(v7 - 8);
  *(v5 + 272) = swift_task_alloc();
  v8 = sub_3E7804();
  *(v5 + 280) = v8;
  *(v5 + 288) = *(v8 - 8);
  *(v5 + 296) = swift_task_alloc();
  v9 = sub_3E5FC4();
  *(v5 + 304) = v9;
  *(v5 + 312) = *(v9 - 8);
  *(v5 + 320) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E20);
  v11 = swift_task_alloc();
  *(v5 + 328) = v11;
  *v11 = v5;
  v11[1] = sub_10BFFC;

  return BaseObjectGraph.inject<A>(_:)(v5 + 136, v10, v10);
}

uint64_t sub_10BFFC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_10CBBC;
  }

  else
  {
    v2 = sub_10C110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10C110()
{
  v0[43] = v0[17];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1B20);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_10C1D4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_10C1D4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_10CCA8;
  }

  else
  {
    v2 = sub_10C2E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10C2E8()
{
  if (*(v0 + 393) || (sub_3E94A4() & 1) != 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

    v1 = *(v0 + 8);

    return v1(0, 0, 255);
  }

  else
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    v6 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 248);
    v30 = *(v0 + 224);
    v24 = *(v0 + 216);
    v25 = *(v0 + 208);
    v7 = *(v0 + 160);
    v8 = *(v0 + 392);
    sub_3E5FB4();
    *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_3F5630;
    *(v9 + 32) = v7;
    if (v8)
    {
      v10 = &enum case for MediaRequest.RequestType.deleteLibrary(_:);
    }

    else
    {
      v10 = &enum case for MediaRequest.RequestType.postLibrary(_:);
    }

    sub_3E7974();
    v11 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v11;
    *(v0 + 128) = *(v0 + 48);
    sub_3E86B4();

    sub_F3B84(v0 + 16);
    v26 = *(v0 + 80);
    v27 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v26);
    (*(v3 + 104))(v4, *v10, v5);
    v12 = enum case for MediaRequest.ContentType.podcast(_:);
    v13 = sub_3E77B4();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v29, v12, v13);
    (*(v14 + 56))(v29, 0, 1, v13);
    v15 = sub_3E7824();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = sub_3E77D4();
    (*(*(v16 - 8) + 56))(v28, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_3F5630;
    *(v0 + 144) = v7;
    sub_17A28();
    *(v17 + 32) = sub_3EE1F4();
    *(v17 + 40) = v18;
    v19 = sub_3E77C4();
    (*(*(v19 - 8) + 56))(v30, 1, 1, v19);
    v20 = sub_3E7814();
    (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
    v21 = sub_3E5DC4();
    (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
    sub_FB3E8(_swiftEmptyArrayStorage);
    sub_FB3E8(_swiftEmptyArrayStorage);
    sub_FB5D0(_swiftEmptyArrayStorage);
    sub_FB7B8(_swiftEmptyArrayStorage);
    sub_FB8BC(_swiftEmptyArrayStorage);
    sub_FB8BC(_swiftEmptyArrayStorage);
    sub_FBAA4(_swiftEmptyArrayStorage);
    sub_FBC8C(_swiftEmptyArrayStorage);
    sub_FBE74(_swiftEmptyArrayStorage);
    sub_FC05C(_swiftEmptyArrayStorage);
    sub_3E77F4();
    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    *v22 = v0;
    v22[1] = sub_10C8A8;
    v23 = *(v0 + 296);

    return MediaRequestControllerProtocol.perform(params:)(v23, v26, v27);
  }
}

uint64_t sub_10C8A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v5;
  *(*v5 + 384) = v4;

  v9 = v8[37];
  v10 = v8[36];
  v11 = v8[35];
  if (v4)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_10CD9C;
  }

  else
  {
    sub_68210(a3, a4);
    (*(v10 + 8))(v9, v11);
    v12 = sub_10CA54;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10CA54()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[20];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_3F5630;
  *(v5 + 32) = v4;
  sub_3E8694();

  (*(v2 + 8))(v1, v3);
  v8 = v0[20];
  v9 = v0[21];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));

  v6 = v0[1];

  return v6(v8, v9, 0);
}

uint64_t sub_10CBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10CCA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10CD9C()
{
  v31 = v0;
  v1 = *(v0 + 160);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_3F5630;
  *(v2 + 32) = v1;
  sub_3E86A4();

  sub_3B590();
  sub_3EE064();
  swift_errorRetain();
  v3 = sub_3E99F4();
  v4 = sub_3ED9D4();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = *(v0 + 304);
    v29 = *(v0 + 320);
    v26 = *(v0 + 200);
    v27 = *(v0 + 312);
    v24 = *(v0 + 192);
    v25 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 392);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v7 = 136315650;
    if (v6)
    {
      v9 = 0x6465776F6C6C6F66;
    }

    else
    {
      v9 = 0x776F6C6C6F666E75;
    }

    if (v6)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEA00000000006465;
    }

    v11 = sub_2EDD0(v9, v10, &v30);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 152) = v5;
    sub_C2A70();
    v12 = sub_3EE7A4();
    v14 = sub_2EDD0(v12, v13, &v30);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&dword_0, v3, v4, "MAPI request failed to toggle follow state of show to %s, adamID: %s; Error: %@", v7, 0x20u);
    sub_D1C44(v8);

    swift_arrayDestroy();

    (*(v24 + 8))(v26, v25);
    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 304);
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 184);

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  v22 = *(v0 + 8);

  return v22(0, 0, 255);
}

uint64_t ThinClientTogglePlayedEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_3E9A04();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_3E8304();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_3E5FC4();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E28);
  v7 = swift_task_alloc();
  v3[20] = v7;
  *v7 = v3;
  v7[1] = sub_10D334;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v6, v6);
}

uint64_t sub_10D334()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10DEE0;
  }

  else
  {
    v2 = sub_10D448;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10D448()
{
  v0[22] = v0[2];
  v1 = sub_3E9234();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10D500;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v1, v1);
}

uint64_t sub_10D500()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10DF88;
  }

  else
  {
    v2 = sub_10D614;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10D614()
{
  v0[25] = v0[3];
  v1 = sub_3E7404();
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_10D6CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 4, v1, v1);
}

uint64_t sub_10D6CC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10E038;
  }

  else
  {
    v2 = sub_10D7E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10D7E0()
{
  v40 = v0;
  v1 = 0;
  v2 = v0[7];
  v0[28] = v0[4];
  v3 = *(v2 + 16);
  v4 = v2 + 48;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v0[29] = v5;
  v6 = (v4 + 24 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_23;
    }

    v8 = *v6;
    v6 += 24;
    ++v1;
    if (!v8)
    {
      v9 = *(v6 - 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_E1524(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        v5 = sub_E1524(v10 > 1, v11 + 1, 1, v5);
      }

      v5[2] = v11 + 1;
      v5[v11 + 4] = v9;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v0[5] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1BF8);
  sub_FFCA0();
  if (sub_3ED894())
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[6];
    sub_3E5FB4();
    sub_3E86B4();
    sub_10E594(v14, v12);
    sub_10E5F8(v12);
    sub_3E7354();
    sub_3E7344();

    v0[30] = sub_3B590();
    sub_3EE064();
    sub_10E594(v14, v13);

    v15 = sub_3E99F4();
    v16 = sub_3ED9F4();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[15];
      v17 = v0[16];
      v19 = v0[10];
      v36 = v0[9];
      v37 = v0[12];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 67109378;
      swift_storeEnumTagMultiPayload();
      v22 = sub_3E82F4();
      sub_10A060(v17);
      sub_10A060(v18);
      *(v20 + 4) = (v22 & 1) == 0;
      *(v20 + 8) = 2080;
      v23 = sub_3ED594();
      v25 = sub_2EDD0(v23, v24, &v39);

      *(v20 + 10) = v25;
      _os_log_impl(&dword_0, v15, v16, "MAPI request for updating PlaybackPosition to completed: %{BOOL}d, position: 0, for adamIDs: %s", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      v26 = *(v19 + 8);
      v26(v37, v36);
    }

    else
    {
      v29 = v0[12];
      v30 = v0[9];
      v31 = v0[10];
      sub_10A060(v0[15]);

      v26 = *(v31 + 8);
      v26(v29, v30);
    }

    v0[31] = v26;
    v32 = v0[16];
    swift_storeEnumTagMultiPayload();
    v33 = sub_3E82F4();
    sub_10A060(v32);
    swift_storeEnumTagMultiPayload();
    v34 = sub_3E82F4();
    sub_10A060(v32);
    v38 = &async function pointer to dispatch thunk of PlaybackPositionController.updatePlaybackPosition(adamIDs:completed:position:account:) + async function pointer to dispatch thunk of PlaybackPositionController.updatePlaybackPosition(adamIDs:completed:position:account:);
    v35 = swift_task_alloc();
    v0[32] = v35;
    *v35 = v0;
    v35[1] = sub_10DCC4;

    (v38)(v5, (v34 & 1) == 0, 0, v33 & 1, 0);
  }

  else
  {
    v27 = v0[25];

    v28 = v0[1];

    v28(0);
  }
}

uint64_t sub_10DCC4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10E0F4;
  }

  else
  {
    v2 = sub_10DDD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10DDD8()
{
  v1 = v0[25];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_3E8694();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_10DEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10DF88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E0F4()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[6];
  sub_3E86A4();
  sub_3EE064();
  sub_10E594(v2, v1);

  swift_errorRetain();
  v3 = sub_3E99F4();
  v4 = sub_3ED9D4();

  log = v3;
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v32 = v0[25];
  v7 = v0[18];
  v8 = v0[19];
  v34 = v0[17];
  if (v5)
  {
    v31 = v0[31];
    v9 = v0[16];
    v10 = v0[14];
    v29 = v0[9];
    v30 = v0[11];
    v28 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v11 = 136315650;
    swift_storeEnumTagMultiPayload();
    v13 = sub_3E82F4();
    sub_10A060(v9);
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 0x646579616C706E75;
    }

    else
    {
      v15 = 0x646579616C70;
    }

    if (v14)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    sub_10A060(v10);
    v17 = sub_2EDD0(v15, v16, &v35);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = sub_3ED594();
    v20 = v19;

    v21 = sub_2EDD0(v18, v20, &v35);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_0, v3, v4, "MAPI request failed to toggle play state of episodes to %s, adamIDs: %s; Error: %@", v11, 0x20u);
    sub_FCF8(v12, &unk_502160);

    swift_arrayDestroy();

    v31(v30, v29);
    (*(v7 + 8))(v28, v34);
  }

  else
  {
    v23 = v0[14];
    v24 = v0[11];
    v25 = v0[9];

    sub_10A060(v23);
    v6(v24, v25);
    (*(v7 + 8))(v8, v34);
  }

  v26 = v0[1];

  return v26(1);
}

void *sub_10E4F0(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_10E564@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10E594(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8304();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10E5F8(uint64_t a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E8304();
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10E594(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_10A060(a1);
      sub_FCF8(v8, &qword_4EF460);
      return 0;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_7:
    sub_10A060(a1);
    return 1;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_10A060(a1);
  }

  else
  {
    sub_3B590();
    sub_3EE064();
    v11 = sub_3E99F4();
    v12 = sub_3ED9E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "We are trying to mark episode as playState .unknown, which doesn't make any sense.", v13, 2u);
    }

    sub_10A060(a1);
    (*(v3 + 8))(v5, v2);
  }

  return 2;
}

uint64_t ThinClientUnbookmarkEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10E848, 0, 0);
}

uint64_t sub_10E848()
{
  v1 = sub_3E70D4();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1093CC;
  v3 = v0[3];

  return ThinClientToggleBookmarkEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(0, v1, v3);
}

uint64_t sub_10E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10E918, 0, 0);
}

uint64_t sub_10E918()
{
  v1 = sub_3E70D4();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10965C;
  v3 = v0[4];

  return ThinClientToggleBookmarkEpisodeHelper.toggle(to:episodeIdentifiers:objectGraph:)(0, v1, v3);
}

uint64_t ThinClientUnfollowShowIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10E9F4, 0, 0);
}

uint64_t sub_10E9F4()
{
  v1 = sub_3E6FF4();
  v3 = v2;
  v5 = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 80) = v4;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_10EACC;
  v7 = *(v0 + 24);

  return sub_10BC70(1, v1, v3, v5, v7);
}

uint64_t sub_10EACC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 81) = a3;
  *(v5 + 72) = v3;

  if (v3)
  {
    v6 = sub_10EC70;
  }

  else
  {
    sub_3DEF8(*(v5 + 32), *(v5 + 40), *(v5 + 80));
    v6 = sub_10EBF4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10EBF4()
{
  v1 = *(v0 + 81);
  if (v1 != 255)
  {
    sub_10EFE8(*(v0 + 56), *(v0 + 64), *(v0 + 81));
  }

  v2 = *(v0 + 8);

  return v2(v1 == 255);
}

uint64_t sub_10EC70()
{
  sub_3DEF8(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10ECFC, 0, 0);
}

uint64_t sub_10ECFC()
{
  v1 = sub_3E6FF4();
  v3 = v2;
  v5 = v4;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 88) = v4;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_10EDD4;
  v7 = *(v0 + 32);

  return sub_10BC70(1, v1, v3, v5, v7);
}

uint64_t sub_10EDD4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 89) = a3;
  *(v5 + 80) = v3;

  if (v3)
  {
    v6 = sub_10EF80;
  }

  else
  {
    sub_3DEF8(*(v5 + 40), *(v5 + 48), *(v5 + 88));
    v6 = sub_10EEFC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10EEFC()
{
  v1 = *(v0 + 89);
  if (v1 != 255)
  {
    sub_10EFE8(*(v0 + 64), *(v0 + 72), *(v0 + 89));
  }

  **(v0 + 16) = v1 == 255;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10EF80()
{
  sub_3DEF8(*(v0 + 40), *(v0 + 48), *(v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

void sub_10EFE8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_3DEF8(a1, a2, a3);
  }
}

Swift::Int sub_10F054()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_10F0D8()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_10F134@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0C90;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10F1D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0CC8;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10F238(uint64_t a1)
{
  v2 = sub_10F3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10F274(uint64_t a1)
{
  v2 = sub_10F3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CategoryPageFromYourShowsShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_10F3FC();
  sub_3EEA14();
  v9[1] = v7;
  sub_10F450();
  sub_3EE764();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10F3FC()
{
  result = qword_4F1E38;
  if (!qword_4F1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E38);
  }

  return result;
}

unint64_t sub_10F450()
{
  result = qword_4F1E40;
  if (!qword_4F1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E40);
  }

  return result;
}

uint64_t CategoryPageFromYourShowsShelfIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_10F3FC();
  sub_3EE9F4();
  if (!v2)
  {
    sub_10F610();
    sub_3EE6C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_10F610()
{
  result = qword_4F1E50;
  if (!qword_4F1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E50);
  }

  return result;
}

unint64_t sub_10F6D0()
{
  result = qword_4F1E58;
  if (!qword_4F1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E58);
  }

  return result;
}

unint64_t sub_10F728()
{
  result = qword_4F1E60;
  if (!qword_4F1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E60);
  }

  return result;
}

unint64_t sub_10F780()
{
  result = qword_4F1E68;
  if (!qword_4F1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E68);
  }

  return result;
}

uint64_t ShowPageHeaderAndFooterShelvesIntent.init(adamID:skipCache:personalizedHint:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t sub_10F82C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6863614370696B73;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x4364696150736168;
    v4 = 0xEE00746E65746E6FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64496D616461;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6863614370696B73;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x4364696150736168;
    v8 = 0xEE00746E65746E6FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_10F94C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_10F9FC()
{
  sub_3ED394();
}

Swift::Int sub_10FA98()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_10FB44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_110520(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10FB74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6863614370696B73;
  if (v2 != 1)
  {
    v5 = 0x4364696150736168;
    v4 = 0xEE00746E65746E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10FBE0()
{
  v1 = 0x6863614370696B73;
  if (*v0 != 1)
  {
    v1 = 0x4364696150736168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_10FC48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_110520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10FC70(uint64_t a1)
{
  v2 = sub_1101E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10FCAC(uint64_t a1)
{
  v2 = sub_1101E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ChannelPageIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v11[1] = *(v1 + 9);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1101E0();
  sub_3EEA14();
  v15 = v8;
  v14 = 0;
  sub_10F450();
  sub_3EE764();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_3EE704();
  v12 = 2;
  sub_3EE704();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ChannelPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1E80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1101E0();
  sub_3EE9F4();
  if (!v2)
  {
    v13[15] = 0;
    sub_10F610();
    sub_3EE6C4();
    v9 = v14;
    v13[14] = 1;
    v11 = sub_3EE654();
    v13[13] = 2;
    v12 = sub_3EE654();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 9) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s8ShelfKit17ChannelPageIntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_7:
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        return 1;
      }
    }

    else if (v5 != 2 && ((v5 ^ v3) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1101E0()
{
  result = qword_4F1E78;
  if (!qword_4F1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E78);
  }

  return result;
}

unint64_t sub_110238()
{
  result = qword_4F1E88;
  if (!qword_4F1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E88);
  }

  return result;
}

unint64_t sub_110290()
{
  result = qword_4F1E90;
  if (!qword_4F1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E90);
  }

  return result;
}

unint64_t sub_1102E8()
{
  result = qword_4E9B90;
  if (!qword_4E9B90)
  {
    type metadata accessor for Page();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9B90);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ChannelPageIntent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ChannelPageIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_11041C()
{
  result = qword_4F1E98;
  if (!qword_4F1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1E98);
  }

  return result;
}

unint64_t sub_110474()
{
  result = qword_4F1EA0;
  if (!qword_4F1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EA0);
  }

  return result;
}

unint64_t sub_1104CC()
{
  result = qword_4F1EA8;
  if (!qword_4F1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EA8);
  }

  return result;
}

uint64_t sub_110520(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0D00;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_11056C()
{
  result = qword_4F1EB0;
  if (!qword_4F1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EB0);
  }

  return result;
}

Swift::Int sub_1105FC()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_110660()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_1106AC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0D68;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_11072C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0DA0;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_110784(uint64_t a1)
{
  v2 = sub_110948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1107C0(uint64_t a1)
{
  v2 = sub_110948();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ChannelSubscriptionOffersIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1EB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_110948();
  sub_3EEA14();
  v9[1] = v7;
  sub_10F450();
  sub_3EE764();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_110948()
{
  result = qword_4F1EC0;
  if (!qword_4F1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EC0);
  }

  return result;
}

unint64_t sub_1109A0()
{
  result = qword_4F1EC8;
  if (!qword_4F1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EC8);
  }

  return result;
}

unint64_t sub_1109F8()
{
  result = qword_4F1ED0;
  if (!qword_4F1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1ED0);
  }

  return result;
}

unint64_t sub_110A50()
{
  result = qword_4F1ED8;
  if (!qword_4F1ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1EE0);
    sub_110AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1ED8);
  }

  return result;
}

unint64_t sub_110AD4()
{
  result = qword_4F1EE8;
  if (!qword_4F1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EE8);
  }

  return result;
}

unint64_t sub_110BC4()
{
  result = qword_4F1EF0;
  if (!qword_4F1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EF0);
  }

  return result;
}

unint64_t sub_110C1C()
{
  result = qword_4F1EF8;
  if (!qword_4F1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1EF8);
  }

  return result;
}

unint64_t sub_110C74()
{
  result = qword_4F1F00;
  if (!qword_4F1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F00);
  }

  return result;
}

unint64_t sub_110CC8()
{
  result = qword_4F1F08;
  if (!qword_4F1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F08);
  }

  return result;
}

uint64_t sub_110D58@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0DD8;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_110DAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B0E10;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_110E04(uint64_t a1)
{
  v2 = sub_110FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_110E40(uint64_t a1)
{
  v2 = sub_110FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ChannelUpsellInformationIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_110FC8();
  sub_3EEA14();
  v9[1] = v7;
  sub_10F450();
  sub_3EE764();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_110FC8()
{
  result = qword_4F1F18;
  if (!qword_4F1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F18);
  }

  return result;
}

unint64_t sub_111020()
{
  result = qword_4F1F20;
  if (!qword_4F1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1F20);
  }

  return result;
}