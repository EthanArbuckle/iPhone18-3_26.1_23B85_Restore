uint64_t sub_47CA8(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_15964, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v8 = *(v7 + 8);

    return v8();
  }
}

unint64_t sub_47E34()
{
  result = qword_7E558;
  if (!qword_7E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_7F5A0, &qword_5D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E558);
  }

  return result;
}

uint64_t sub_47E9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_59944() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_19D9C;

  return sub_43094(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_59944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  sub_3B024(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_480C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_59944() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_15D44;

  return sub_43094(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_48210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_5A194();
  v9 = sub_5A174();

  QueueModelSection.init(tracklistSection:)(v9, &v13);
  if (v13 != 2 && sub_46D8C(v13 & 1, a4))
  {
    v10 = [a6 displayItems];
    v11 = [v10 itemsInSectionAtIndex:a2];

    sub_48844();
    v12 = sub_5A294();

    sub_50F74(v12);
  }
}

void sub_482F4(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, void *a5, BOOL *a6, void *a7)
{
  sub_5A194();
  v12 = sub_5A174();

  QueueModelSection.init(tracklistSection:)(v12, &v37);
  if (v37 != 2)
  {
    if (v37)
    {
      v13 = 0x7565755174666F73;
    }

    else
    {
      v13 = 0x7565755164726168;
    }

    if (a4)
    {
      v14 = 0x7565755174666F73;
    }

    else
    {
      v14 = 0x7565755164726168;
    }

    if (v13 == v14)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v15 = sub_5A8E4();
      swift_bridgeObjectRelease_n();
      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    v16 = [a5 displayItems];
    v17 = [v16 itemsInSectionAtIndex:a2];

    sub_48844();
    v18 = sub_5A294();

    v32 = a3;
    v33 = a6;
    if (v18 >> 62)
    {
LABEL_28:
      v34 = v18 & 0xFFFFFFFFFFFFFF8;
      v35 = sub_5A814();
    }

    else
    {
      v34 = v18 & 0xFFFFFFFFFFFFFF8;
      v35 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    v19 = 0;
    do
    {
      v21 = v19;
      if (v35 == v19)
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = sub_5A724();
      }

      else
      {
        if (v19 >= *(v34 + 16))
        {
          goto LABEL_27;
        }

        v22 = *(v18 + 8 * v19 + 32);
      }

      v23 = v22;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24 = [v22 contentItemIdentifier];
      v25 = sub_5A194();
      v27 = v26;

      v28 = [a7 contentItemIdentifier];
      v29 = sub_5A194();
      v31 = v30;

      if (v25 == v29 && v27 == v31)
      {

        break;
      }

      v20 = sub_5A8E4();

      v19 = v21 + 1;
    }

    while ((v20 & 1) == 0);

    *v33 = v35 != v21;
    *v32 = 1;
  }
}

void (*sub_485CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5A724();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_4864C;
  }

  __break(1u);
  return result;
}

uint64_t sub_4865C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19D9C;

  return sub_44D8C(a1, v4, v5, v7, v6);
}

uint64_t sub_4871C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_48778()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_487B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_487F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_48844()
{
  result = qword_7E4E8;
  if (!qword_7E4E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7E4E8);
  }

  return result;
}

uint64_t sub_48898()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_488E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t (*sub_48930(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5A724();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_4940C;
  }

  __break(1u);
  return result;
}

uint64_t sub_489B0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_5A8E4() & 1;
  }
}

uint64_t sub_48A08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_48A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_48A78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_48AC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t dispatch thunk of PlaybackController.QueueController.canRemoveItemFromQueue(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_393F4;

  return v8(a1);
}

uint64_t dispatch thunk of PlaybackController.QueueController.removeMatchingQueueItems(with:from:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

uint64_t dispatch thunk of PlaybackController.QueueController.changeToItemAndPlay(_:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D9C;

  return v8(a1);
}

uint64_t dispatch thunk of PlaybackController.QueueController.moveToNextItem()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19D9C;

  return v6();
}

uint64_t dispatch thunk of PlaybackController.QueueController.restartCurrentEpisode()()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19D9C;

  return v6();
}

uint64_t sub_49160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D9C;

  return sub_47B78(a1, v4, v5, v6);
}

uint64_t sub_49214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D9C;

  return sub_47B58(a1, v4, v5, v6);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_49314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_15D44;

  return sub_44D8C(a1, v4, v5, v7, v6);
}

uint64_t sub_494D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_393F4;

  return v9(a1, a2);
}

uint64_t sub_495EC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_32310;

  return v9(a1, a2);
}

uint64_t sub_49704(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a3 + 96);
  v6 = *a1;
  v7 = v3;
  v8 = *(a1 + 24);
  return v4(&v6);
}

uint64_t sub_49750()
{
  v1 = [v0 playingItemProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 relationships];

    sub_4FE4(0, &qword_7ED28, MPPropertySet_ptr);
    v4 = sub_5A104();

    v5 = sub_5A194();
    if (*(v4 + 16))
    {
      v7 = sub_565FC(v5, v6);
      v9 = v8;

      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v7);

        v11 = [v10 properties];
        v12 = sub_5A3E4();

        v13 = sub_5A194();
        v15 = sub_356EC(v13, v14, v12);

        return v15 & 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_498CC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_49958(void *a1)
{
  v2 = v1;
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath;
  v10 = *&v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath];
  if (a1)
  {
    if (v10)
    {
      sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
      v11 = v10;
      v12 = a1;
      v13 = sub_5A624();

      if (v13)
      {
        return;
      }
    }
  }

  else if (!v10)
  {
    return;
  }

  sub_59CC4();
  v14 = v2;
  v15 = sub_59D04();
  v16 = sub_5A474();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = *&v2[v9];
    *(v18 + 4) = v20;
    *v19 = v20;
    v21 = v20;
    _os_log_impl(&dword_0, v15, v16, "ExplicitResponseDataSource did set player path %@", v18, 0xCu);
    sub_9708(v19, &qword_7E260, &qword_5BE50);

    a1 = v27;
  }

  (*(v5 + 8))(v8, v4);
  if (*&v2[v9])
  {
    v22 = *&v14[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerRequestController];
    v23 = [v22 request];
    v24 = *&v2[v9];
    [v23 setPlayerPath:v24];

    v25 = *&v14[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_responsePublisher];
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_59D84();
    if (a1)
    {
      [v22 setNeedsReloadForSignificantRequestChange];
    }

    else
    {
      [v22 beginAutomaticResponseLoading];
    }
  }

  else
  {
    if (a1)
    {
      [*&v14[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerRequestController] endAutomaticResponseLoading];
    }

    v26 = *&v14[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_responsePublisher];
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_59D84();
  }
}

uint64_t sub_49C60()
{
  v1 = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath);
  if (v1 && [v1 route])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_49DE4;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED48, &qword_5DEF0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_49EDC;
    v0[13] = &block_descriptor_68;
    v0[14] = v5;
    [v4 getActiveRouteWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_49DE4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_49EC4, 0, 0);
}

uint64_t sub_49EDC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_49F40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_responsePublisher;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + v2) = sub_59DA4();
  *(v0 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_includeTranscripts) = 0;
  *(v0 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath) = 0;
  v6 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerRequestController;
  *(v1 + v6) = [objc_allocWithZone(MPRequestResponseController) init];
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_subscriptions) = _swiftEmptyArrayStorage;
  sub_5A7F4();
  __break(1u);
}

uint64_t sub_4A138()
{
  v1 = *(v0 + 24);
  sub_5A704(25);

  *(v0 + 16) = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED40, &qword_5DEE8);
  v3._countAndFlagsBits = sub_5A1B4();
  sub_5A1F4(v3);

  return sub_5A7F4();
}

id sub_4A228()
{
  v2.receiver = v0;
  v2.super_class = _s26ExplicitResponseDataSourceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4A314(void *a1)
{
  v2 = *v1;
  v4 = *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath);
  *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController26ExplicitResponseDataSource_playerPath) = a1;
  v3 = a1;
  sub_49958(v4);
}

uint64_t sub_4A38C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_393F4;

  return sub_49C40();
}

uint64_t sub_4A41C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_39260;

  return sub_4A118();
}

char *sub_4A4AC(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED50, &qword_5DEF8);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  __chkstk_darwin(v4);
  v72 = &v63 - v6;
  v7 = sub_59D14();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  __chkstk_darwin(v7);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB80, &qword_5CE58);
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED58, &unk_5DF00);
  v20 = *(v19 - 1);
  v67 = v19;
  v68 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v63 = &v63 - v22;
  v23 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController;
  *&v2[v23] = [objc_allocWithZone(MPRequestResponseController) init];
  *&v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_subscriptions] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator] = 0;
  v24 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_responsePublisher;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v2[v24] = sub_59DA4();
  v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts] = 0;
  v28 = *a1;
  v29 = a1[1];
  v31 = a1[2];
  v30 = a1[3];
  v80[0] = a1[4];
  v32 = v80[0];
  v33 = &v2[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_config];
  v34 = *(a1 + 1);
  *v33 = *a1;
  *(v33 + 1) = v34;
  *(v33 + 4) = v32;

  sub_34130(v80, &v76);
  v35 = _s27AutomaticResponseDataSourceCMa();
  v79.receiver = v2;
  v79.super_class = v35;
  v36 = objc_msgSendSuper2(&v79, "init");
  v64 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController;
  v37 = *&v36[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController];
  v38 = v36;
  [v37 setDelegate:v38];
  v39 = objc_allocWithZone(_s21PlayerPathCoordinatorCMa());
  v40 = sub_401A0(v28, v29, v31, v30);
  sub_9708(v80, &unk_7ED60, &qword_5D320);
  v41 = sub_4CE48();
  v75 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v42 = v76;

  [v41 setPlayerPath:v42];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC88, &qword_5CF18);
  sub_59E04();
  swift_endAccess();
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v43 = sub_5A504();
  v76 = v43;
  v44 = sub_5A4A4();
  (*(*(v44 - 8) + 56))(v13, 1, 1, v44);
  sub_5108(&qword_7DC90, &qword_7DB80, &qword_5CE58);
  sub_3F938();
  v45 = v63;
  v46 = v65;
  sub_59F34();
  sub_9708(v13, &unk_7D9C0, &unk_5C810);

  (*(v66 + 8))(v18, v46);
  v47 = v64;
  v48 = *&v36[v64];
  *(swift_allocObject() + 16) = v48;
  sub_5108(&unk_7ED70, &qword_7ED58, &unk_5DF00);
  v49 = v48;
  v50 = v67;
  sub_59F84();

  (*(v68 + 8))(v45, v50);
  swift_beginAccess();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  v52 = v69;
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0);
  v68 = v51;
  sub_59D54();
  swift_endAccess();

  v53 = *&v38[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator];
  *&v38[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator] = v40;
  v67 = v40;

  v54 = v47;
  [*&v36[v47] setRequest:v75];
  sub_59CC4();
  v55 = sub_59D04();
  v56 = sub_5A474();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Starting automatic response loading", v57, 2u);
  }

  (*(v70 + 8))(v52, v71);
  [*&v36[v54] beginAutomaticResponseLoading];
  v76 = sub_30F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0);
  v58 = v72;
  sub_59F14();

  v59 = *&v36[v54];
  *(swift_allocObject() + 16) = v59;
  sub_5108(&qword_7ED98, &qword_7ED50, &qword_5DEF8);
  v60 = v59;
  v61 = v74;
  sub_59F84();

  (*(v73 + 8))(v58, v61);
  swift_beginAccess();
  sub_59D54();
  swift_endAccess();

  return v38;
}

id sub_4ADE0(uint64_t a1, id a2)
{
  v3 = *(a1 + 8);
  v4 = [a2 request];
  [v4 setPlayerPath:v3];

  return [a2 setNeedsReloadForSignificantRequestChange];
}

void sub_4AE58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController;
  *(v1 + v2) = [objc_allocWithZone(MPRequestResponseController) init];
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_subscriptions) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator) = 0;
  v3 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_responsePublisher;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + v3) = sub_59DA4();
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts) = 0;
  sub_5A7F4();
  __break(1u);
}

id sub_4AF68()
{
  v1 = v0;
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CC4();
  v7 = sub_59D04();
  v8 = sub_5A474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Stopping automatic response loading", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController] endAutomaticResponseLoading];
  v10 = _s27AutomaticResponseDataSourceCMa();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

id sub_4B1A0(char a1)
{
  if (a1)
  {
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED20, &qword_5DED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_5BC80;
    *(inited + 32) = sub_5A194();
    *(inited + 40) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_5BC80;
    *(v4 + 32) = sub_5A194();
    *(v4 + 40) = v5;
    isa = sub_5A284().super.isa;

    v7 = objc_opt_self();
    v8 = [v7 propertySetWithProperties:isa];

    *(inited + 48) = v8;
    sub_1172C(inited);
    swift_setDeallocating();
    sub_9708(inited + 32, &unk_7ED30, &unk_5DED8);
    sub_4FE4(0, &qword_7ED28, MPPropertySet_ptr);
    v9 = sub_5A0F4().super.isa;

    v10 = [v7 propertySetWithRelationships:v9];

    v11 = [v13 propertySetByCombiningWithPropertySet:v10];
    return v11;
  }

  else
  {

    return v1;
  }
}

id sub_4B3A8(id result)
{
  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts;
  v3 = *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts);
  *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_includeTranscripts) = result;
  if (v3 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_playerRequestController);
    v5 = [v4 request];
    v6 = sub_4C6E8();
    v7 = sub_4B1A0(*(v1 + v2));

    [v5 setPlayingItemProperties:v7];

    return [v4 setNeedsReload];
  }

  return result;
}

uint64_t sub_4B4A0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_responsePublisher);
  sub_59D94();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v0 + 32))
  {
    sub_3F9EC(v2, *(v0 + 24), 1);
LABEL_6:
    v7 = [objc_opt_self() systemRoute];
    goto LABEL_7;
  }

  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 16);
  v5 = [v2 playerPath];
  sub_3F9EC(v4, v3, 0);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 route];

  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_4B5B0()
{
  v1[17] = v0;
  v1[18] = sub_5A384();
  v1[19] = sub_5A374();
  v3 = sub_5A354();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_4B64C, v3, v2);
}

uint64_t sub_4B64C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = [objc_opt_self() systemRoute];
  v4 = v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_config;
  v5 = *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_config + 16);
  v6 = *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_config + 24);
  v7 = *(v2 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_config);
  v8 = *(v4 + 8);
  v9 = sub_5A174();
  v10 = sub_5A174();
  v11 = [objc_opt_self() pathWithRoute:v3 bundleID:v9 playerID:v10];
  v0[22] = v11;

  v12 = sub_4CE48();
  v0[23] = v12;
  [v12 setPlayerPath:v11];
  v13 = sub_5A374();
  v0[24] = v13;
  if (v13)
  {
    swift_getObjectType();
    v14 = sub_5A354();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  return _swift_task_switch(sub_4B798, v14, v16);
}

uint64_t sub_4B798()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[23];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_4B8F4;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_4CF30;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_498CC;
  v1[13] = &block_descriptor_55;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_4B8F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 48);
  *(*v0 + 200) = v4;
  v5 = v1[24];
  if (v4)
  {
    swift_willThrow();

    v6 = v2[20];
    v7 = v2[21];
    v8 = sub_4BABC;
  }

  else
  {
    v9 = v1[24];

    v2[26] = v2[16];
    v6 = v2[20];
    v7 = v2[21];
    v8 = sub_4BA44;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_4BA44()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);
  v4 = *(v0 + 208);

  return v3(v4);
}

uint64_t sub_4BABC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);
  v4 = *(v0 + 200);

  return v3();
}

uint64_t sub_4BB30(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;
    v4 = a1;

    return _swift_continuation_throwingResume(a3);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_31414();
      v5 = swift_allocError();
      *v6 = 0;
      v6[1] = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v7 = swift_allocError();
    *v8 = v5;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v7);
  }
}

uint64_t sub_4BC4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a2;
  v9 = sub_59FE4();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_5A014();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v17 = sub_5A504();
  v18 = swift_allocObject();
  v19 = v26;
  v18[2] = v25;
  v18[3] = a3;
  v18[4] = a1;
  v18[5] = v6;
  aBlock[4] = v19;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);

  v21 = a1;
  v22 = v6;

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0);
  sub_5A694();
  sub_5A534();
  _Block_release(v20);

  (*(v29 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v28);
}

void sub_4BF20(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = sub_59D14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v12);
  if ([a3 response])
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      sub_59CC4();
      swift_unknownObjectRetain();
      v17 = sub_59D04();
      v18 = sub_5A474();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v28 = v10;
        v20 = v19;
        v21 = swift_slowAlloc();
        v29 = a4;
        v30 = v21;
        v27 = v21;
        *v20 = 136446210;
        v22 = sub_3530C();
        v24 = a5;
        v25 = sub_9430(v22, v23, &v30);

        *(v20 + 4) = v25;
        a5 = v24;
        _os_log_impl(&dword_0, v17, v18, "Received playback response: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        a4 = v29;

        (*(v28 + 8))(v14, v9);
      }

      else
      {

        (*(v10 + 8))(v14, v9);
      }

      v26 = *(a4 + *a5);
      v30 = v16;
      v31 = 0;
      v32 = 0;
      swift_unknownObjectRetain();
      sub_59D84();
      swift_unknownObjectRelease();
      sub_3F9EC(v30, v31, v32);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_4C204(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_4C2B8(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 request];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(v3 + *a3);
    swift_unknownObjectRetain();
    v10 = sub_59494();
    sub_59D84();
    swift_unknownObjectRelease();
    sub_3F9EC(v7, v10, 1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 1;
}

void *sub_4C420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);
  sub_59D94();
  result = v6;
  if (v8 == 1)
  {
    sub_3F9EC(v6, v7, 1);
    return 0;
  }

  return result;
}

void *sub_4C478()
{
  v1 = *(*v0 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator);
  v2 = v1;
  return v1;
}

uint64_t sub_4C52C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D078;

  return sub_4B480();
}

uint64_t sub_4C5BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D084;

  return sub_4B5B0();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4C690()
{
  result = qword_7ECF0;
  if (!qword_7ECF0)
  {
    sub_59FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7ECF0);
  }

  return result;
}

id sub_4C6E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5DDE0;
  *(inited + 32) = sub_5A194();
  *(inited + 40) = v1;
  *(inited + 48) = sub_5A194();
  *(inited + 56) = v2;
  *(inited + 64) = sub_5A194();
  *(inited + 72) = v3;
  *(inited + 80) = sub_5A194();
  *(inited + 88) = v4;
  *(inited + 96) = sub_5A194();
  *(inited + 104) = v5;
  *(inited + 112) = sub_5A194();
  *(inited + 120) = v6;
  *(inited + 128) = sub_5A194();
  *(inited + 136) = v7;
  *(inited + 144) = sub_5A194();
  *(inited + 152) = v8;
  *(inited + 160) = sub_5A194();
  *(inited + 168) = v9;
  *(inited + 176) = sub_5A194();
  *(inited + 184) = v10;
  *(inited + 192) = sub_5A194();
  *(inited + 200) = v11;
  *(inited + 208) = sub_5A194();
  *(inited + 216) = v12;
  *(inited + 224) = sub_5A194();
  *(inited + 232) = v13;
  *(inited + 240) = sub_5A194();
  *(inited + 248) = v14;
  *(inited + 256) = sub_5A194();
  *(inited + 264) = v15;
  *(inited + 272) = sub_5A194();
  *(inited + 280) = v16;
  *(inited + 288) = sub_5A194();
  *(inited + 296) = v17;
  *(inited + 304) = sub_5A194();
  *(inited + 312) = v18;
  *(inited + 320) = sub_5A194();
  *(inited + 328) = v19;
  *(inited + 336) = sub_5A194();
  *(inited + 344) = v20;
  v21 = sub_5A194();
  v23 = v22;
  v24 = sub_1C304(&dword_0 + 1, 21, 1, inited);
  *(v24 + 2) = 21;
  *(v24 + 44) = v21;
  *(v24 + 45) = v23;
  v25 = sub_5A194();
  v27 = *(v24 + 3);
  if (v27 <= 0x2B)
  {
    v64 = v25;
    v65 = v26;
    v66 = sub_1C304((v27 > 1), 22, 1, v24);
    v26 = v65;
    v24 = v66;
    v25 = v64;
  }

  *(v24 + 2) = 22;
  *(v24 + 46) = v25;
  *(v24 + 47) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED20, &qword_5DED0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_5BC80;
  v67 = v28;
  *(v28 + 32) = sub_5A194();
  v68 = v28 + 32;
  *(v28 + 40) = v29;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_5DC00;
  *(v30 + 32) = sub_5A194();
  *(v30 + 40) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_5BC80;
  *(v32 + 32) = sub_5A194();
  *(v32 + 40) = v33;
  sub_1172C(_swiftEmptyArrayStorage);
  v34 = objc_allocWithZone(MPPropertySet);
  isa = sub_5A284().super.isa;

  sub_4FE4(0, &qword_7ED28, MPPropertySet_ptr);
  v36 = sub_5A0F4().super.isa;

  v37 = [v34 initWithProperties:isa relationships:v36];

  *(v30 + 48) = v37;
  *(v30 + 56) = sub_5A194();
  *(v30 + 64) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_5DDF0;
  *(v39 + 32) = sub_5A194();
  *(v39 + 40) = v40;
  *(v39 + 48) = sub_5A194();
  *(v39 + 56) = v41;
  *(v39 + 64) = sub_5A194();
  *(v39 + 72) = v42;
  *(v39 + 80) = sub_5A194();
  *(v39 + 88) = v43;
  *(v39 + 96) = sub_5A194();
  *(v39 + 104) = v44;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_5BC80;
  *(v45 + 32) = sub_5A194();
  *(v45 + 40) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_5BC80;
  *(v47 + 32) = sub_5A194();
  *(v47 + 40) = v48;
  v49 = sub_5A284().super.isa;

  v50 = [objc_opt_self() propertySetWithProperties:v49];

  *(v45 + 48) = v50;
  sub_1172C(v45);
  swift_setDeallocating();
  sub_9708(v45 + 32, &unk_7ED30, &unk_5DED8);
  v51 = objc_allocWithZone(MPPropertySet);
  v52 = sub_5A284().super.isa;

  v53 = sub_5A0F4().super.isa;

  v54 = [v51 initWithProperties:v52 relationships:v53];

  *(v30 + 72) = v54;
  sub_1172C(v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED30, &unk_5DED8);
  swift_arrayDestroy();
  v55 = objc_allocWithZone(MPPropertySet);
  v56 = sub_5A284().super.isa;

  v57 = sub_5A0F4().super.isa;

  v58 = [v55 initWithProperties:v56 relationships:v57];

  *(v67 + 48) = v58;
  sub_1172C(v67);
  swift_setDeallocating();
  sub_9708(v68, &unk_7ED30, &unk_5DED8);
  v59 = objc_allocWithZone(MPPropertySet);
  v60 = sub_5A284().super.isa;
  v61 = sub_5A0F4().super.isa;

  v62 = [v59 initWithProperties:v60 relationships:v61];

  return v62;
}

id sub_4CE48()
{
  v0 = [objc_allocWithZone(MPCPlayerRequest) init];
  v1 = sub_5A174();
  [v0 setLabel:v1];

  v2 = sub_4C6E8();
  [v0 setPlayingItemProperties:v2];

  v3 = sub_4C6E8();
  [v0 setQueueItemProperties:v3];

  [v0 setTracklistRange:{0, 99}];
  return v0;
}

uint64_t sub_4CF38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4D010()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4D088(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_4D0A8, 0, 0);
}

uint64_t sub_4D0A8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v2 = [objc_opt_self() systemRoute];
  }

  v0[20] = v2;
  v3 = objc_allocWithZone(MPAVRoutingController);
  v4 = v1;
  v5 = sub_5A174();
  v6 = [v3 initWithName:v5];
  v0[21] = v6;

  v0[2] = v0;
  v0[3] = sub_4D24C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EE50, &unk_5DF90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_4D6F8;
  v0[13] = &block_descriptor_10;
  v0[14] = v7;
  [v6 selectRoute:v2 operation:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_4D24C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_4D618;
  }

  else
  {
    v3 = sub_4D35C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4D35C()
{
  v1 = *(v0 + 152);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_4D484;

  return v8(v2, v3);
}

uint64_t sub_4D484(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_4D690;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_4D5AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_4D5AC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);
  v3 = *(v0 + 200);

  return v2(v3);
}

uint64_t sub_4D618()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_4D690()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_4D6F8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t PlaybackController.RouteController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t PlaybackController.SleepTimerStopMode.localizedName.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((*&v1 - 2) >= 2)
    {
      if (v1 == 0.0)
      {
        v9 = [objc_opt_self() mainBundle];
        v23._countAndFlagsBits = 0xE000000000000000;
        v10._countAndFlagsBits = 6710863;
        v10._object = 0xE300000000000000;
LABEL_14:
        v27.value._countAndFlagsBits = 0;
        v27.value._object = 0;
        v17.super.isa = v9;
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        v18 = sub_59484(v10, v27, v17, v30, v23);

        return v18;
      }

      v2 = "v16@?0@NSError8";
      v3 = [objc_opt_self() mainBundle];
    }

    else
    {
      v2 = "When chapter ends";
      v3 = [objc_opt_self() mainBundle];
    }

    v9 = v3;
    v23._countAndFlagsBits = 0xE000000000000000;
    v10._object = (v2 | 0x8000000000000000);
    v10._countAndFlagsBits = 0xD000000000000011;
    goto LABEL_14;
  }

  if (*v0 == 3600.0)
  {
    v4 = [objc_opt_self() mainBundle];
    v23._countAndFlagsBits = 0xE600000000000000;
    v24._countAndFlagsBits = 0x72756F68206925;
    v24._object = 0xE700000000000000;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v5.super.isa = v4;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_59484(v24, v26, v5, v29, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_5BC80;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = 1;
    v7 = sub_5A184();

    return v7;
  }

  else
  {
    if (qword_7CC88 != -1)
    {
      swift_once();
    }

    v11 = qword_7EE58;
    isa = sub_5A3C4().super.super.isa;
    v13 = [v11 stringForObjectValue:isa];

    if (v13)
    {
      v14 = sub_5A194();
      v16 = v15;
    }

    else
    {
      sub_5A3D4();
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v19 = [objc_opt_self() mainBundle];
    v23._countAndFlagsBits = 0xE000000000000000;
    v25._countAndFlagsBits = 0x74756E696D204025;
    v25._object = 0xEA00000000007365;
    v28.value._countAndFlagsBits = 0;
    v28.value._object = 0;
    v20.super.isa = v19;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_59484(v25, v28, v20, v31, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_5BC80;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_502C();
    *(v21 + 32) = v14;
    *(v21 + 40) = v16;
    v22 = sub_5A184();

    return v22;
  }
}

void PlaybackController.SleepTimerStopMode.sleepTimerCommand.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) != 1)
  {
    *a1 = v2;
    *(a1 + 8) = 0;
    return;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 1;
      *(a1 + 8) = 1;
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    *a1 = 2;
    goto LABEL_9;
  }

  *a1 = 0;
LABEL_9:
  *(a1 + 8) = 1;
}

BOOL static PlaybackController.SleepTimerStopMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v8 = *a1;
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 <= 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v5 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      return (v5 & 1) != 0;
    }

    if (*&v3 == 1)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    return (v9 & 1) != 0;
  }

  if (*&v2 == 2)
  {
    if (*&v3 == 2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (*&v3 > 2uLL)
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = 0;
  }

  return (v10 & 1) != 0;
}

void PlaybackController.SleepTimerStopMode.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    sub_5A984(v2);
  }

  else
  {
    sub_5A984(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_5A994(v3);
  }
}

Swift::Int PlaybackController.SleepTimerStopMode.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_5A974();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }
    }

    else if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    sub_5A984(v3);
  }

  else
  {
    sub_5A984(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    sub_5A994(v4);
  }

  return sub_5A9A4();
}

Swift::Int sub_4DEB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_5A974();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }
    }

    else if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    sub_5A984(v3);
  }

  else
  {
    sub_5A984(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    sub_5A994(v4);
  }

  return sub_5A9A4();
}

BOOL sub_4DF4C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v6 = *a1;
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 > 1)
  {
    if (*&v2 != 2)
    {
      if (*&v3 > 2uLL)
      {
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = 0;
      }

      return v9 == 1;
    }

    v5 = *&v3 == 2;
  }

  else if (v2 == 0.0)
  {
    v5 = *&v3 == 0;
  }

  else
  {
    v5 = *&v3 == 1;
  }

  if (v5)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

id sub_4DFD0()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMinimumFractionDigits:0];
  [v0 setMaximumFractionDigits:2];
  result = [v0 setNumberStyle:1];
  qword_7EE58 = v0;
  return result;
}

char *MPCSleepTimerCommand.sleepTimerStopMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 stopMode];
  if (result > 1)
  {
    if (result == &dword_0 + 2)
    {
      v4 = 1;
      *a1 = 1;
      goto LABEL_10;
    }

    if (result == &dword_0 + 3)
    {
      *a1 = 2;
LABEL_8:
      v4 = 1;
      goto LABEL_10;
    }

LABEL_7:
    *a1 = 0;
    goto LABEL_8;
  }

  if (result != &dword_0 + 1)
  {
    goto LABEL_7;
  }

  result = [v1 time];
  v4 = 0;
  *a1 = v5;
LABEL_10:
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_4E0E0()
{
  result = qword_7EE60;
  if (!qword_7EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7EE60);
  }

  return result;
}

uint64_t PlaybackController.viewState.getter()
{
  v0 = type metadata accessor for PlaybackController.ViewState();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  v4 = sub_4E8BC(v3);

  return v4;
}

uint64_t type metadata accessor for PlaybackController.ViewState()
{
  result = qword_7EEA0;
  if (!qword_7EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackController.ViewState.hasHardQueue.getter()
{
  swift_getKeyPath();
  sub_4EE24();
  sub_59564();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_4E268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4EE24();
  sub_59564();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t PlaybackController.ViewState.hasHardQueue.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4EE24();
    sub_59554();
  }

  return result;
}

void (*PlaybackController.ViewState.hasHardQueue.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9ViewState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_4EE24();
  sub_59564();

  *v4 = v1;
  swift_getKeyPath();
  sub_59584();

  swift_beginAccess();
  return sub_4E520;
}

void sub_4E520(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_59574();

  free(v1);
}

id *sub_4E5A4@<X0>(id *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v3 = *result;
    MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_72198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
    sub_5108(&qword_7E558, &unk_7F5A0, &qword_5D8F0);
    v4 = sub_5A414();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_4E684(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (v1 == *(v3 + 24))
    {
      *(v3 + 24) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4EE24();
      sub_59554();
    }
  }

  return result;
}

uint64_t PlaybackController.ViewState.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9ViewState___observationRegistrar;
  v3 = sub_595A4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackController.ViewState.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9ViewState___observationRegistrar;
  v3 = sub_595A4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_4E8BC(uint64_t a1)
{
  v2 = v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA0, &qword_5CE78);
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v26);
  v6 = v21 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EF38, &qword_5E0D8);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v27);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EF40, &qword_5E0E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  *(v2 + 16) = &_swiftEmptySetSingleton;
  sub_59594();
  v23 = a1;
  sub_24C20();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v16 = Strong;
  if (Strong)
  {
    v21[1] = v2 + 16;
    v22 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v17 = v28;
    if (v28)
    {
      v28 = MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_71F90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
      sub_5108(&qword_7E558, &unk_7F5A0, &qword_5D8F0);
      v16 = sub_5A414();
    }

    else
    {

      v16 = 0;
    }

    v11 = v22;
  }

  else
  {
  }

  *(v2 + 24) = v16 & 1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7EF48, &qword_7DBA0, &qword_5CE78);
  v18 = v26;
  sub_59E84();
  (*(v24 + 8))(v6, v18);
  sub_5108(&qword_7EF50, &qword_7EF38, &qword_5E0D8);
  v19 = v27;
  sub_59F64();
  (*(v25 + 8))(v9, v19);
  swift_allocObject();
  swift_weakInit();
  sub_5108(&qword_7EF58, &qword_7EF40, &qword_5E0E0);
  sub_59F84();

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  sub_59D44();
  swift_endAccess();

  return v2;
}

unint64_t sub_4EE24()
{
  result = qword_7EE70;
  if (!qword_7EE70)
  {
    type metadata accessor for PlaybackController.ViewState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7EE70);
  }

  return result;
}

uint64_t sub_4EE9C()
{
  result = sub_595A4();
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

uint64_t sub_4EF64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4EFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

NSString sub_4F010()
{
  result = sub_5A174();
  qword_7EF60 = result;
  return result;
}

id static NSNotificationName.VolumeLevelDidChange.getter()
{
  if (qword_7CC90 != -1)
  {
    swift_once();
  }

  v1 = qword_7EF60;

  return v1;
}

void sub_4F148(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedController];
  [v4 *a3];
}

id sub_4F1F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4F2BC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 32, v1);
  v3 = (*(v2 + 32))(v6, v1, v2);
  *v4 = *v4 + 0.05;
  v3(v6, 0);
  swift_endAccess();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_7CC90 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_7EF60 object:0];
}

void sub_4F3E0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 32, v1);
  v3 = (*(v2 + 32))(v6, v1, v2);
  *v4 = *v4 + -0.05;
  v3(v6, 0);
  swift_endAccess();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_7CC90 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_7EF60 object:0];
}

uint64_t sub_4F504()
{
  v1 = sub_59FE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5A014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v11 = sub_5A504();
  aBlock[4] = sub_4FD7C;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_11;
  v12 = _Block_copy(aBlock);

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_4FD9C();
  sub_5A694();
  sub_5A534();
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

id sub_4F784(uint64_t a1)
{
  result = [objc_opt_self() defaultSharedOutputContext];
  if (result)
  {
    v3 = result;
    v4 = _s19MPCVolumeDataSourceCMa();
    v5 = swift_allocObject();
    *(v5 + 32) = 1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 16) = *(a1 + 16);
    v16[3] = v4;
    v16[4] = &off_74160;
    v16[0] = v5;
    swift_unknownObjectRetain();
    v6 = [v3 outputDevices];
    sub_4FE4(0, &qword_7F038, AVOutputDevice_ptr);
    v7 = sub_5A294();

    if (v7 >> 62)
    {
      v8 = sub_5A814();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    if (v8 < 1)
    {
      sub_123D8(v16, &v13);
    }

    else
    {
      v9 = _s31AVOutputContextVolumeDataSourceCMa();
      swift_allocObject();
      v10 = v3;
      v11 = sub_506EC(v10);

      v14 = v9;
      v15 = &off_74108;
      *&v13 = v11;
    }

    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
    sub_12440(&v13, a1 + 32);
    swift_endAccess();
    v12 = [objc_opt_self() defaultCenter];
    if (qword_7CC90 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_7EF60 object:0];

    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return result;
}

uint64_t sub_4FA9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

float sub_4FB48()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = (*(v3 + 16))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_4FBD4(float a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 32, v4);
  (*(v5 + 24))(v4, v5, a1);
  return swift_endAccess();
}

uint64_t sub_4FC60()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[7];
  v3 = v1[8];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  LOBYTE(v3) = (*(v3 + 8))(v2, v3);
  (*(v5 + 8))(v8, v2);
  return v3 & 1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4FD9C()
{
  result = qword_7ED00;
  if (!qword_7ED00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_7E8F0, &unk_5DBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7ED00);
  }

  return result;
}

uint64_t sub_4FEC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  sub_227C(v0[5]);
  v3 = v0[8];
  sub_227C(v0[7]);

  return swift_deallocClassInstance();
}

float sub_4FF34()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 8);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_4FFB0(float a1)
{
  v3 = *v1;
  v5 = *(*v1 + 16);
  v4 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v7 = *(v4 + 16);
  swift_unknownObjectRetain();
  v7(ObjectType, v4, a1);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_50038(uint64_t a1))(float *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  swift_unknownObjectRelease();
  *(a1 + 8) = v8;
  return sub_500D8;
}

uint64_t sub_500D8(float *a1)
{
  v1 = a1[2];
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 16);
  swift_unknownObjectRetain();
  v5(ObjectType, v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_50180(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 32);

    v1(v3);

    return sub_227C(v1);
  }

  return result;
}

uint64_t sub_5021C(uint64_t a1, uint64_t a2)
{
  v5 = sub_59FE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A014();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50678();
  v14 = sub_5A504();
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_4FD9C();
  sub_5A694();
  sub_5A534();
  _Block_release(v15);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v18);
}

uint64_t sub_5047C(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 48);

    v1(v3);

    return sub_227C(v1);
  }

  return result;
}

uint64_t sub_504F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_5021C(a3, a4);
}

uint64_t sub_5054C()
{
  v1 = *(v0 + 32);
  sub_227C(*(v0 + 24));
  v2 = *(v0 + 48);
  sub_227C(*(v0 + 40));

  return swift_deallocClassInstance();
}

id (*sub_50608(uint64_t a1))(_DWORD *a1, double a2)
{
  v3 = *v1;
  *a1 = *v1;
  [*(v3 + 16) volume];
  *(a1 + 8) = v4;
  return sub_50660;
}

unint64_t sub_50678()
{
  result = qword_7DA40;
  if (!qword_7DA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7DA40);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_506EC(void *a1)
{
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 defaultCenter];
  [v5 addObserver:v1 selector:"volumeAvailabilityDidChange" name:AVOutputContextCanSetVolumeDidChangeNotification object:0];

  v6 = [v3 defaultCenter];
  [v6 addObserver:v1 selector:"outputContextVolumeDidChange" name:AVOutputContextVolumeDidChangeNotification object:v4];

  return v1;
}

uint64_t sub_5083C(uint64_t a1)
{
  v79 = sub_599C4();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F5B8, &qword_5E510);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v61 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_1C2DC(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_57B44(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_589E4();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_9768(v16, v77, &qword_7F5B8, &qword_5E510);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_9708(v39, &qword_7F5B8, &qword_5E510);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_1C2DC(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_9768(v16, v78, &qword_7F5B8, &qword_5E510);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_9708(v45, &qword_7F5B8, &qword_5E510);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_9768(v16, v77, &qword_7F5B8, &qword_5E510);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_9708(v16, &qword_7F5B8, &qword_5E510);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_9768(v16, v78, &qword_7F5B8, &qword_5E510);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_9708(v16, &qword_7F5B8, &qword_5E510);
    sub_589E4();
    result = sub_9708(v39, &qword_7F5B8, &qword_5E510);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_50F8C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_5A814();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_5A814();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_57AA4(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(&dword_10 + v11) + 32, (*(&dword_18 + v11) >> 1) - *(&dword_10 + v11), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_51084(uint64_t result)
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

  result = sub_1C1C0(result, v11, 1, v3);
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

uint64_t sub_51180(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

uint64_t sub_511E0()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_51218(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t PlayStateDataSource.__allocating_init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(a1, a2, a3);
  return v6;
}

uint64_t PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a3;
  v26 = a2;
  v25 = sub_5A4F4();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5A014();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_5A494();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  *(v3 + 32) = xmmword_5E290;
  *(v3 + 48) = xmmword_5E2A0;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  *(v3 + 80) = &_swiftEmptyDictionarySingleton;
  v14 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v24[1] = "";
  v24[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F1A8, qword_5E2C0);
  v15 = *(v12 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_5BC80;
  sub_5A484();
  v29 = v17;
  sub_5848C(&qword_7E910, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0);
  sub_5A694();
  sub_5A004();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v18 = sub_5A544();
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = v18;
  v19 = v27;
  *(v3 + 16) = v26;
  *(v3 + 24) = v19;
  type metadata accessor for IdentifierUtil();
  v20 = swift_allocObject();
  v21 = sub_11928(_swiftEmptyArrayStorage);
  v22 = v28;
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v4 + 72) = v20;
  return v4;
}

uint64_t PlayStateDataSource.__allocating_init(asPartOf:)()
{
  type metadata accessor for PlaybackController(0);
  sub_5A0D4();
  sub_5A0E4();
  type metadata accessor for PendingPlaybackStore();
  sub_5A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F1B8, &qword_5E2D8);
  sub_5A0E4();
  type metadata accessor for PlayStateDataSource();
  v0 = swift_allocObject();
  PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(v4, v3, v2);

  return v0;
}

uint64_t sub_51788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_58CB0;
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

uint64_t sub_5181C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = sub_58C78;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_226C(v4);
  sub_226C(v6);
  sub_518FC(v8);
  sub_227C(v8);
  return sub_227C(v6);
}

uint64_t sub_518FC(uint64_t a1)
{
  if (!a1)
  {
    sub_54138();
  }

  result = swift_beginAccess();
  if (!*(v1 + 96))
  {
    swift_beginAccess();
    v3 = *(v1 + 64);
    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_6:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_5A724();
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_15:
            __break(1u);
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_19:
            v4 = sub_5A814();
            goto LABEL_6;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_15;
          }
        }

        sub_59D64();

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return result;
}

uint64_t sub_51A20()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_226C(v1);
  return v1;
}

uint64_t sub_51A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_226C(a1);
  sub_518FC(v5);
  sub_227C(v5);
  return sub_227C(a1);
}

void (*sub_51AF8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  sub_226C(v5);
  return sub_51B88;
}

void sub_51B88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v5 + 96);
  v8 = *(v5 + 104);
  *(v5 + 96) = v4;
  *(v5 + 104) = v6;
  sub_226C(v4);
  v9 = v3[5];
  if (a2)
  {
    sub_226C(v4);
    sub_518FC(v7);
    sub_227C(v7);
    sub_227C(v4);
    v10 = v3[3];
    v11 = v3[4];
  }

  else
  {
    sub_518FC(v7);
    sub_227C(v7);
    v10 = v4;
  }

  sub_227C(v10);

  free(v3);
}

uint64_t sub_51C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v86 = v57 - v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v73 = *(v72 - 8);
  v4 = *(v73 + 64);
  __chkstk_darwin(v72);
  v68 = v57 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F460, &qword_5E470);
  v78 = *(v76 - 8);
  v6 = *(v78 + 64);
  __chkstk_darwin(v76);
  v67 = v57 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v64 = *(v62 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v62);
  v58 = v57 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v63 = *(v61 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v61);
  v59 = v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F468, &qword_5E478);
  v70 = *(v66 - 8);
  v12 = *(v70 + 64);
  __chkstk_darwin(v66);
  v60 = v57 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F470, &qword_5E480);
  v75 = *(v74 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v74);
  v65 = v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F478, &qword_5E488);
  v17 = *(v16 - 8);
  v80 = v16;
  v81 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v71 = v57 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F480, &qword_5E490);
  v85 = *(v83 - 8);
  v20 = *(v85 + 64);
  __chkstk_darwin(v83);
  v77 = v57 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F488, &qword_5E498);
  v84 = *(v82 - 8);
  v22 = *(v84 + 64);
  __chkstk_darwin(v82);
  v79 = v57 - v23;
  v24 = *(v0 + 24);
  v25 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v24 + v25, &v89);
  v26 = v90;
  v27 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, v90);
  v87 = (*(v27 + 8))(v26, v27);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  v57[1] = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  v69 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v28 = v58;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(&v89);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v29 = v59;
  v30 = v62;
  sub_59F64();
  (*(v64 + 8))(v28, v30);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v31 = v61;
  v32 = sub_59E74();
  (*(v63 + 8))(v29, v31);
  v89 = v32;
  sub_4FE4(0, &unk_7DA30, MPCPlayerResponse_ptr);
  v33 = v60;
  sub_59E84();

  v34 = v57[0];
  v35 = *(v57[0] + 16);
  swift_beginAccess();
  v88 = *(v35 + 16);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  v36 = v68;
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7E448, &qword_7DB78, &qword_5CE50);
  sub_34F8C();
  v37 = v67;
  v38 = v72;
  sub_59F64();
  (*(v73 + 8))(v36, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F4C0, &unk_5C0F0);
  sub_5108(&qword_7F4C8, &qword_7F468, &qword_5E478);
  sub_5108(&unk_7F4D0, &qword_7F4C0, &unk_5C0F0);
  sub_5108(&qword_7E458, &qword_7F460, &qword_5E470);
  v39 = v65;
  v40 = v66;
  v41 = v76;
  sub_59EA4();
  (*(v78 + 8))(v37, v41);

  (*(v70 + 8))(v33, v40);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v42 = sub_5A504();
  v87 = v42;
  v43 = sub_5A4A4();
  v44 = v86;
  (*(*(v43 - 8) + 56))(v86, 1, 1, v43);
  sub_5108(&unk_7F4E0, &qword_7F470, &qword_5E480);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v45 = v71;
  v46 = v74;
  sub_59F34();
  sub_9708(v44, &unk_7D9C0, &unk_5C810);

  (*(v75 + 8))(v39, v46);
  v47 = *(v34 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = xmmword_5E290;
  *(v48 + 40) = xmmword_5E2A0;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_58B4C;
  *(v49 + 24) = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F430, &unk_5E458);
  sub_5108(&qword_7F4F0, &qword_7F478, &qword_5E488);
  v50 = v77;
  v51 = v80;
  sub_59EC4();

  (*(v81 + 8))(v45, v51);
  sub_5108(&qword_7F4F8, &qword_7F480, &qword_5E490);
  sub_5108(&qword_7F438, &qword_7F430, &unk_5E458);
  v52 = v79;
  v53 = v83;
  sub_59F74();
  (*(v85 + 8))(v50, v53);
  sub_5108(&qword_7F500, &qword_7F488, &qword_5E498);
  v54 = v82;
  v55 = sub_59E74();
  (*(v84 + 8))(v52, v54);
  return v55;
}

id sub_529FC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_52A08(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F508, &qword_5E4B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v176 = &v151 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F510, &qword_5E4B8);
  v180 = *(v15 - 8);
  v16 = *(v180 + 64);
  __chkstk_darwin(v15);
  v178 = &v151 - v17;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F518, &qword_5E4C0);
  v181 = *(v182 - 8);
  v18 = *(v181 + 64);
  __chkstk_darwin(v182);
  v179 = &v151 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v169 = &v151 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F520, &qword_5E4C8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v167 = &v151 - v25;
  v26 = sub_5A4E4();
  v166 = *(v26 - 8);
  v27 = *(v166 + 64);
  __chkstk_darwin(v26);
  v165 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F528, &qword_5E4D0);
  v192 = *(v29 - 8);
  v30 = *(v192 + 64);
  v31 = __chkstk_darwin(v29);
  v189 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v185 = &v151 - v33;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F530, &qword_5E4D8);
  v171 = *(v173 - 8);
  v34 = *(v171 + 64);
  __chkstk_darwin(v173);
  v168 = &v151 - v35;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F538, &qword_5E4E0);
  v172 = *(v174 - 8);
  v36 = *(v172 + 64);
  __chkstk_darwin(v174);
  v170 = &v151 - v37;
  v184 = type metadata accessor for PlayStateData();
  v193 = *(v184 - 8);
  v38 = *(v193 + 64);
  __chkstk_darwin(v184);
  v40 = (&v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = sub_59524();
  v41 = *(v191 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v191);
  v190 = &v151 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  v186 = *(v195 - 8);
  v44 = *(v186 + 64);
  v45 = __chkstk_darwin(v195);
  v188 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v164 = &v151 - v48;
  v49 = __chkstk_darwin(v47);
  v163 = &v151 - v50;
  __chkstk_darwin(v49);
  v52 = &v151 - v51;
  v53 = *(a2 + 8);
  v175 = *a2;
  v187 = v53;
  v54 = *(a2 + 24);
  v183 = *(a2 + 16);
  v196 = v54;
  v55 = *(a2 + 32);
  v56 = *(a2 + 40);
  v57 = *(a2 + 48);
  v197 = a1;
  v177 = a4;
  sub_55764(a1, &v151 - v51);
  v194 = a3;
  if (!a3 || [v194 isDeviceRoute])
  {
    a5 = a6;
  }

  v58 = v196;
  if (v196 != 1)
  {
    v59 = v190;
    sub_59514();
    sub_594D4();
    v61 = v60;
    v62 = *(v41 + 8);
    v160 = v41 + 8;
    v159 = v62;
    v62(v59, v191);
    if (v61 - v55 < a5)
    {
      v205 = &_swiftEmptySetSingleton;
      if ((v187 & 1) == 0)
      {
        sub_B3F0(&v200, v175, 0, 0);
        sub_5350(v200, v201, v202);
      }

      v155 = v29;
      if (v58)
      {

        sub_B3F0(&v200, v183, v58, 1);
        sub_5350(v200, v201, v202);
      }

      v63 = v205;
      v64 = sub_53FDC();
      v65 = v63 + 56;
      v66 = 1 << v63[32];
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v68 = v67 & *(v63 + 7);
      v69 = (v66 + 63) >> 6;
      v198 = v64 + 56;
      v199 = v64;

      v71 = 0;
      v161 = v40;
      v162 = v52;
      v152 = v15;
      v158 = v26;
      v157 = v63;
      v154 = v63 + 56;
      v153 = v69;
      while (1)
      {
        do
        {
          if (!v68)
          {
            while (1)
            {
              v73 = v71 + 1;
              if (__OFADD__(v71, 1))
              {
                break;
              }

              if (v73 >= v69)
              {

                goto LABEL_38;
              }

              v72 = *&v65[8 * v73];
              ++v71;
              if (v72)
              {
                v71 = v73;
                goto LABEL_20;
              }
            }

            __break(1u);
            return result;
          }

          v72 = v68;
LABEL_20:
          v68 = (v72 - 1) & v72;
        }

        while (!*(v199 + 2));
        v156 = (v72 - 1) & v72;
        v74 = *(v63 + 6) + 24 * (__clz(__rbit64(v72)) | (v71 << 6));
        v76 = *v74;
        v75 = *(v74 + 8);
        v77 = *(v74 + 16);
        v78 = v199;
        v79 = *(v199 + 5);
        sub_5A974();
        sub_5340(v76, v75, v77);
        sub_59BB4();
        v80 = sub_5A9A4();
        v81 = -1 << v78[32];
        v82 = v80 & ~v81;
        if ((*&v198[(v82 >> 3) & 0xFFFFFFFFFFFFFF8] >> v82))
        {
          break;
        }

LABEL_25:
        result = sub_5350(v76, v75, v77);
        v52 = v162;
        v26 = v158;
        v40 = v161;
        v63 = v157;
        v65 = v154;
        v69 = v153;
        v68 = v156;
      }

      v83 = ~v81;
      while (1)
      {
        v84 = *(v199 + 6) + 24 * v82;
        v85 = *v84;
        v86 = *(v84 + 8);
        v87 = *(v84 + 16);
        sub_5340(*v84, v86, v87);
        v88 = sub_59BA4();
        sub_5350(v85, v86, v87);
        if (v88)
        {
          break;
        }

        v82 = (v82 + 1) & v83;
        if (((*&v198[(v82 >> 3) & 0xFFFFFFFFFFFFFF8] >> v82) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_5350(v76, v75, v77);

      v89 = [v197 tracklist];
      v90 = [v89 playingItem];

      v52 = v162;
      v15 = v152;
      v29 = v155;
      v26 = v158;
      v40 = v161;
      if (!v90 || ([v90 duration], v91 = v203, v92 = v204, v93 = objc_msgSend(v197, "state"), v90, v91 <= 0.1) || v93 != &dword_0 + 2 || v92)
      {
LABEL_38:
        v205 = &_swiftEmptySetSingleton;
        if ((v187 & 1) == 0)
        {
          sub_B3F0(&v200, v175, 0, 0);
          sub_5350(v200, v201, v202);
        }

        v118 = v184;
        v119 = v164;
        v120 = v196;
        if (v196)
        {

          sub_B3F0(&v200, v183, v120, 1);
          sub_5350(v200, v201, v202);
        }

        v121 = v205;
        v122 = (v40 + v118[5]);
        *v122 = v57;
        v122[1] = v56;
        sub_59984();
        swift_storeEnumTagMultiPayload();
        v123 = v190;
        sub_59514();
        sub_594D4();
        v125 = v124;
        v126 = v191;
        v127 = v159;
        v159(v123, v191);
        *v40 = v121;
        *(v40 + v118[6]) = v125;
        *(v40 + v118[7]) = 0;
        sub_59514();
        sub_594D4();
        v127(v123, v126);
        sub_9768(v52, v119, &qword_7F420, &qword_5E448);
        if ((*(v193 + 48))(v119, 1, v118) == 1)
        {
          sub_9708(v119, &qword_7F420, &qword_5E448);
          v128 = 1;
          v129 = v163;
        }

        else
        {
          v130 = *v119;
          v129 = v163;
          sub_58C10(v119 + v118[5], &v163[v118[5]], &type metadata accessor for EpisodePlayState);
          v131 = v118[6];
          v132 = *(v119 + v131);
          *v129 = v130;
          *(v129 + v131) = v132;
          *(v129 + v118[7]) = 1;

          sub_58AB8(v119);
          v128 = 0;
        }

        v133 = *(v193 + 56);
        v193 += 56;
        v199 = v133;
        (v133)(v129, v128, 1, v118);
        sub_59DC4();
        v134 = v165;
        sub_5A4C4();
        v135 = v166;
        v136 = v167;
        (*(v166 + 56))(v167, 1, 1, v26);
        sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
        v137 = sub_5A504();
        v200 = v137;
        v138 = sub_5A4A4();
        v139 = v169;
        (*(*(v138 - 8) + 56))(v169, 1, 1, v138);
        sub_5108(&qword_7F540, &qword_7F528, &qword_5E4D0);
        sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
        v140 = v26;
        v141 = v168;
        v142 = v155;
        v143 = v185;
        sub_59EE4();
        sub_9708(v139, &unk_7D9C0, &unk_5C810);

        sub_9708(v136, &qword_7F520, &qword_5E4C8);
        (*(v135 + 8))(v134, v140);
        (*(v192 + 8))(v143, v142);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F568, &unk_5E4F0);
        v144 = *(v186 + 72);
        v145 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_5BC80;
        v147 = v161;
        sub_58C10(v161, v146 + v145, type metadata accessor for PlayStateData);
        (v199)(v146 + v145, 0, 1, v184);
        sub_5108(&qword_7F580, &qword_7F530, &qword_5E4D8);
        v148 = v170;
        v149 = v173;
        sub_59F24();

        (*(v171 + 8))(v141, v149);
        sub_5108(&qword_7F588, &qword_7F538, &qword_5E4E0);
        v150 = v174;
        v116 = sub_59E74();
        (*(v172 + 8))(v148, v150);
        sub_58AB8(v147);
        v52 = v162;
        goto LABEL_46;
      }
    }
  }

  v94 = [v197 tracklist];
  v95 = [v94 playingItem];

  if (v95 && ([v95 duration], v96 = v203, v97 = v204, v98 = objc_msgSend(v197, "state"), v95, v96 > 0.1) && v98 == &dword_0 + 2 && (v97 & 1) == 0)
  {
    sub_4FE4(0, &qword_7F548, NSTimer_ptr);
    v99 = [objc_opt_self() mainRunLoop];
    v100 = sub_5A634();
    v101 = v176;
    (*(*(v100 - 8) + 56))(v176, 1, 1, v100);
    v102 = sub_5A604();

    sub_9708(v101, &qword_7F508, &qword_5E4B0);
    v200 = v102;
    sub_5A5F4();
    sub_5848C(&qword_7F550, 255, &type metadata accessor for NSTimer.TimerPublisher);
    v103 = sub_59DB4();

    v200 = v103;
    v104 = swift_allocObject();
    v105 = v197;
    v104[2] = v177;
    v104[3] = v105;
    v106 = v194;
    v104[4] = v194;
    v107 = v106;

    v108 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F558, &qword_5E4E8);
    v109 = v180;
    sub_5108(&qword_7F560, &qword_7F558, &qword_5E4E8);
    v110 = v178;
    sub_59EC4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F568, &unk_5E4F0);
    v111 = *(v186 + 72);
    v112 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_5BC80;
    sub_9768(v52, v113 + v112, &qword_7F420, &qword_5E448);
    sub_5108(&qword_7F570, &qword_7F510, &qword_5E4B8);
    v114 = v179;
    sub_59F24();

    (*(v109 + 8))(v110, v15);
    sub_5108(&qword_7F578, &qword_7F518, &qword_5E4C0);
    v115 = v182;
    v116 = sub_59E74();
    (*(v181 + 8))(v114, v115);
  }

  else
  {
    sub_9768(v52, v188, &qword_7F420, &qword_5E448);
    v117 = v189;
    sub_59DC4();
    sub_5108(&qword_7F540, &qword_7F528, &qword_5E4D0);
    v116 = sub_59E74();
    (*(v192 + 8))(v117, v29);
  }

LABEL_46:
  sub_9708(v52, &qword_7F420, &qword_5E448);
  return v116;
}

void *sub_53FDC()
{
  v0 = MPCPlayerResponse.currentItem.getter();
  if (!v0)
  {
    return &_swiftEmptySetSingleton;
  }

  v1 = v0;
  v2 = [v1 identifiers];
  v3 = [v2 library];

  if (v3)
  {
    v4 = [v3 databaseID];
    swift_unknownObjectRelease();
    sub_5A194();
  }

  v6 = [v1 identifiers];
  v7 = [v6 universalStore];

  if (v7)
  {
    [v7 adamID];
    swift_unknownObjectRelease();
    sub_59C44();
  }

  v8 = sub_59B94();

  return v8;
}

uint64_t sub_54138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F418, &qword_5E440);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F428, &qword_5E450);
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v23);
  v14 = &v22 - v13;
  v24 = sub_51C5C();
  v15 = type metadata accessor for PlayStateData();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v8, 1, 1, v15);
  v17 = *(v0 + 48);
  sub_58880(v10, v3);
  sub_58880(v8, &v3[v17]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F430, &unk_5E458);
  sub_5108(&qword_7F438, &qword_7F430, &unk_5E458);
  sub_59ED4();
  sub_9708(v3, &qword_7F418, &qword_5E440);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_58928;
  *(v19 + 24) = v18;
  sub_5108(&qword_7F440, &qword_7F428, &qword_5E450);
  v20 = v23;
  sub_59F84();

  (*(v11 + 8))(v14, v20);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0);
  sub_59D54();
  swift_endAccess();
}

uint64_t sub_54538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F418, &qword_5E440);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = *(v7 + 56);
  sub_9768(a1, &v13 - v9, &qword_7F418, &qword_5E440);
  sub_58880(&v10[*(v7 + 56)], a3);
  sub_9768(a2, a3 + v11, &qword_7F420, &qword_5E448);
  return sub_9708(v10, &qword_7F420, &qword_5E448);
}

uint64_t sub_54630(uint64_t a1, uint64_t a2)
{
  v3 = sub_59FE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v19[1] = v19;
    v20 = _swiftEmptyArrayStorage;
    v10 = __chkstk_darwin(result);
    v19[-4] = &v20;
    v19[-3] = v10;
    v19[-2] = a2;
    v11 = *(v10 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F448, qword_5E550);
    v12 = *(v4 + 72);
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_5BC80;
    sub_59FD4();
    v19[2] = v14;
    sub_5848C(&qword_7ECF0, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
    sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0);
    v15 = sub_5A694();
    __chkstk_darwin(v15);
    v19[-2] = sub_589BC;
    v19[-1] = &v19[-6];
    sub_5A514();
    (*(v4 + 8))(v7, v3);
    swift_beginAccess();
    v16 = *(v9 + 96);
    if (v16)
    {
      v17 = *(v9 + 104);
      v18 = v20;

      v16(v18);
      sub_227C(v16);
    }
  }

  return result;
}

uint64_t sub_5492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_59984();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v6 - 8);
  v64 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v58 - v11;
  v63 = type metadata accessor for PlayStateData();
  v13 = *(v63 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v63);
  v62 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v65 = a2;
  v16 = *(a2 + 80);
  v17 = *(v16 + 16);
  v58[1] = a1;
  if (v17)
  {
    v59 = a3;
    v18 = sub_56474(v17, 0);
    v60 = sub_57F48(&v67, (v18 + 4), v17, v16);

    sub_589E4();
    if (v60 != v17)
    {
      goto LABEL_37;
    }

    a3 = v59;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  sub_51084(v18);
  v19 = *(v65 + 80);
  *(v65 + 80) = &_swiftEmptyDictionarySingleton;

  sub_9768(a3, v12, &qword_7F420, &qword_5E448);
  if ((*(v13 + 48))(v12, 1, v63) == 1)
  {
    return sub_9708(v12, &qword_7F420, &qword_5E448);
  }

  v21 = v62;
  sub_589EC(v12, v62, type metadata accessor for PlayStateData);
  v22 = *v21;
  v25 = *(*v21 + 56);
  v24 = *v21 + 56;
  v23 = v25;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v59 = v24;
  v60 = v22;
  while (v28)
  {
LABEL_17:
    v34 = *(v22 + 48) + 24 * (__clz(__rbit64(v28)) | (v30 << 6));
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = *(v63 + 20);
    v39 = v65;
    swift_beginAccess();
    sub_58C10(v62 + v38, v64, &type metadata accessor for EpisodePlayState);
    sub_5340(v35, v36, v37);
    v40 = *(v39 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v39 + 80);
    v42 = v66;
    *(v39 + 80) = 0x8000000000000000;
    v44 = sub_56504(v35, v36, v37);
    v45 = v42[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_35;
    }

    v48 = v43;
    if (v42[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v43)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_5782C();
        if (v48)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_56EEC(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_56504(v35, v36, v37);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_38;
      }

      v44 = v49;
      if (v48)
      {
LABEL_10:
        sub_5350(v35, v36, v37);
        v31 = v66;
        sub_58A54(v64, v66[7] + *(v61 + 72) * v44);
        goto LABEL_11;
      }
    }

    v31 = v66;
    v66[(v44 >> 6) + 8] |= 1 << v44;
    v51 = v31[6] + 24 * v44;
    *v51 = v35;
    *(v51 + 8) = v36;
    *(v51 + 16) = v37;
    sub_589EC(v64, v31[7] + *(v61 + 72) * v44, &type metadata accessor for EpisodePlayState);
    v52 = v31[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_36;
    }

    v31[2] = v54;
LABEL_11:
    v28 &= v28 - 1;
    v32 = *(v65 + 80);
    *(v65 + 80) = v31;

    swift_endAccess();
    v24 = v59;
    v22 = v60;
  }

  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v33 >= v29)
    {

      v55 = *(v22 + 16);
      if (!v55)
      {
        goto LABEL_31;
      }

      v56 = sub_56474(*(v22 + 16), 0);
      v57 = sub_57DE8(&v67, (v56 + 4), v55, v22);
      sub_589E4();
      if (v57 != v55)
      {
        __break(1u);
LABEL_31:

        v56 = _swiftEmptyArrayStorage;
      }

      sub_51084(v56);
      return sub_58AB8(v62);
    }

    v28 = *(v24 + 8 * v33);
    ++v30;
    if (v28)
    {
      v30 = v33;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_5A914();
  __break(1u);
  return result;
}

uint64_t PlayStateDataSource.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 104);
  sub_227C(*(v0 + 96));
  return v0;
}

uint64_t PlayStateDataSource.__deallocating_deinit()
{
  PlayStateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_54F68()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
}

uint64_t sub_54FB8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  sub_226C(v2);
  return v2;
}

uint64_t sub_5500C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  sub_226C(a1);
  sub_518FC(v6);
  sub_227C(v6);
  return sub_227C(a1);
}

void (*sub_55098(uint64_t **a1))(void *a1)
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
  v3[4] = sub_51AF8(v3);
  return sub_1EB8;
}

void sub_5510C()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  sub_5A524();
}

uint64_t sub_551A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PlayStateData();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [a1 tracklist];
  v16 = [v15 playingItem];

  if (v16)
  {
    v37 = a2;
    v38 = a4;
    v39 = a5;
    v40 = COERCE_DOUBLE(sub_53FDC());
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F3F0, &qword_5E428);
    sub_5108(&qword_7F3F8, &qword_7F3F0, &qword_5E428);
    v17 = sub_5A414();

    if ((v17 & 1) != 0 && [a1 state] != &dword_0 + 1)
    {
      [v16 duration];
      v19 = v41;
      v36 = v44;
      [v16 duration];
      v20 = 0.0;
      if (v41 > 0.0)
      {
        [v16 duration];
        v21 = v40;
        v22 = v41;
        v23 = v42;
        v24 = v43;
        sub_594E4();
        v26 = v23 + (v25 - v21) * v24;
        if (v26 >= v22)
        {
          v26 = v22;
        }

        v20 = fmax(v26, 0.0);
      }

      v27 = sub_53FDC();
      if (a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F410, &qword_5CA30);
        v28 = swift_allocObject();
        *(v28 + 1) = xmmword_5BC80;
        v28[4] = v37;
        v28[5] = a3;
        *(v28 + 48) = 1;
      }

      else
      {
        v28 = _swiftEmptyArrayStorage;
      }

      v29 = sub_587EC(v28, v27);

      *v14 = v29;
      [v16 duration];
      *(v14 + v10[6]) = v40;
      *(v14 + v10[7]) = v38 & 1;
      v30 = (v14 + v10[5]);
      v31 = [a1 state] != &dword_0 + 2;
      v32 = [a1 playerPath];
      v33 = sub_55574();

      *v30 = v20;
      v30[1] = v19;
      *(v30 + 16) = v31;
      *(v30 + 17) = v36;
      *(v30 + 18) = v33 & 1;
      sub_59984();
      swift_storeEnumTagMultiPayload();
      a5 = v39;
      sub_589EC(v14, v39, type metadata accessor for PlayStateData);
      v18 = 0;
    }

    else
    {

      v18 = 1;
      a5 = v39;
    }
  }

  else
  {

    v18 = 1;
  }

  return (*(v11 + 56))(a5, v18, 1, v10);
}

id sub_55574()
{
  v1 = [v0 route];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_21:
    v13 = 0;
LABEL_22:

    return v13;
  }

  result = [v3 endpointObject];
  if (result)
  {
    v5 = result;
    v6 = [result outputDevices];

    if (v6)
    {
      sub_4FE4(0, &qword_7F408, MRAVOutputDevice_ptr);
      v7 = sub_5A294();

      if (v7 >> 62)
      {
LABEL_26:
        v8 = sub_5A814();
      }

      else
      {
        v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      }

      v9 = 0;
      while (v8 != v9)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_5A724();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_25;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (([v10 isLocalDevice] & 1) == 0 || objc_msgSend(v11, "deviceType") == 3)
        {

          v13 = 1;
          v2 = v11;
          goto LABEL_22;
        }

        v12 = [v11 deviceSubtype];

        ++v9;
        if (v12 == 14)
        {

          v13 = 1;
          goto LABEL_22;
        }
      }
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_55764(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v5 = type metadata accessor for PlayStateData();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v82[-v11];
  v13 = sub_5A044();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  *v17 = sub_5A504();
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = sub_5A064();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v19 = MPCPlayerResponse.currentItem.getter();
  if (!v19)
  {
LABEL_6:
    v23 = MPCPlayerResponse.currentItem.getter();
    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = v23;
    v25 = [v23 identifiers];
    v26 = [v25 universalStore];

    if (!v26)
    {

      goto LABEL_16;
    }

    [v26 adamID];
    swift_unknownObjectRelease();
    v27 = sub_59C44();

    if ((v27 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v28 = *(v3 + 16);
      if (*(v28 + 16))
      {
        v29 = sub_566B8(v27);
        if (v30)
        {
          v31 = (*(v28 + 56) + 16 * v29);
          v32 = *v31;
          v33 = v31[1];

          v34 = a1;
          sub_551A4(v34, v32, v33, 0, v84);
          return;
        }
      }

      v35 = [objc_allocWithZone(MTEpisodeLookupRequest) init];
      [v35 setStoreTrackId:v27];
      v36 = [*(v3 + 24) findEpisodeWithRequest:v35];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 uuid];

        if (v38)
        {
          v39 = sub_5A194();
          v41 = v40;

          swift_beginAccess();

          v42 = *(v3 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = *(v3 + 16);
          *(v3 + 16) = 0x8000000000000000;
          sub_57400(v39, v41, v27, isUniquelyReferenced_nonNull_native);
          *(v3 + 16) = v85;
          swift_endAccess();
          v44 = a1;
          sub_551A4(v44, v39, v41, 0, v84);

          return;
        }
      }

      v64 = a1;
      v65 = [v64 tracklist];
      v66 = [v65 playingItem];

      if (v66)
      {
        v86 = COERCE_DOUBLE(sub_53FDC());
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F3F0, &qword_5E428);
        sub_5108(&qword_7F3F8, &qword_7F3F0, &qword_5E428);
        v67 = sub_5A414();

        if ((v67 & 1) != 0 && [v64 state] != &dword_0 + 1)
        {
          [v66 duration];
          v68 = v87;
          v83 = v90;
          [v66 duration];
          v69 = 0.0;
          if (v87 > 0.0)
          {
            [v66 duration];
            v70 = v86;
            v71 = v87;
            v72 = v88;
            v73 = v89;
            sub_594E4();
            v75 = v72 + (v74 - v70) * v73;
            if (v75 >= v71)
            {
              v75 = v71;
            }

            v69 = fmax(v75, 0.0);
          }

          v76 = sub_53FDC();
          *v12 = sub_587EC(_swiftEmptyArrayStorage, v76);
          [v66 duration];
          *(v12 + v5[6]) = v86;
          *(v12 + v5[7]) = 0;
          v77 = (v12 + v5[5]);
          v78 = [v64 state] != &dword_0 + 2;
          v79 = [v64 playerPath];
          v80 = sub_55574();

          *v77 = v69;
          v77[1] = v68;
          *(v77 + 16) = v78;
          *(v77 + 17) = v83;
          *(v77 + 18) = v80 & 1;
          sub_59984();
          swift_storeEnumTagMultiPayload();
          v81 = v84;
          sub_589EC(v12, v84, type metadata accessor for PlayStateData);
          (*(v6 + 56))(v81, 0, 1, v5);
          goto LABEL_31;
        }
      }

      (*(v6 + 56))(v84, 1, 1, v5);
LABEL_31:

      return;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 identifiers];
  v22 = [v21 library];

  if (!v22)
  {

    goto LABEL_6;
  }

  swift_unknownObjectRelease();
LABEL_16:
  v45 = a1;
  v46 = [v45 tracklist];
  v47 = [v46 playingItem];

  if (!v47)
  {
LABEL_20:

    (*(v6 + 56))(v84, 1, 1, v5);
    return;
  }

  v86 = COERCE_DOUBLE(sub_53FDC());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F3F0, &qword_5E428);
  sub_5108(&qword_7F3F8, &qword_7F3F0, &qword_5E428);
  v48 = sub_5A414();

  if ((v48 & 1) == 0 || [v45 state] == &dword_0 + 1)
  {

    goto LABEL_20;
  }

  [v47 duration];
  v49 = v87;
  v50 = v90;
  [v47 duration];
  v51 = 0.0;
  if (v87 > 0.0)
  {
    [v47 duration];
    v52 = v86;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    sub_594E4();
    v57 = v54 + (v56 - v52) * v55;
    if (v57 >= v53)
    {
      v57 = v53;
    }

    v51 = fmax(v57, 0.0);
  }

  v58 = sub_53FDC();
  *v10 = sub_587EC(_swiftEmptyArrayStorage, v58);
  [v47 duration];
  *(v10 + v5[6]) = v86;
  *(v10 + v5[7]) = 0;
  v59 = (v10 + v5[5]);
  v60 = [v45 state] != &dword_0 + 2;
  v61 = [v45 playerPath];
  v62 = sub_55574();

  *v59 = v51;
  v59[1] = v49;
  *(v59 + 16) = v60;
  *(v59 + 17) = v50;
  *(v59 + 18) = v62 & 1;
  sub_59984();
  swift_storeEnumTagMultiPayload();
  v63 = v84;
  sub_589EC(v10, v84, type metadata accessor for PlayStateData);
  (*(v6 + 56))(v63, 0, 1, v5);
}

uint64_t sub_5606C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_560AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 80);
  if (*(v10 + 16))
  {

    v11 = sub_56504(a2, a3, a4 & 1);
    if (v12)
    {
      v13 = v11;
      v14 = *(v10 + 56);
      v15 = sub_59984();
      v16 = *(v15 - 8);
      sub_58C10(v14 + *(v16 + 72) * v13, a5, &type metadata accessor for EpisodePlayState);

      return (*(v16 + 56))(a5, 0, 1, v15);
    }
  }

  v18 = sub_59984();
  return (*(*(v18 - 8) + 56))(a5, 1, 1, v18);
}

uint64_t sub_5622C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v28 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v32 = a2 + 56;
  v29 = v7;
  v30 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v31 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v2 + 40);
      sub_5A974();
      sub_5340(v12, v13, v14);
      v16 = v12;
      v17 = v13;
      v33 = v14;
      sub_59BB4();
      v18 = sub_5A9A4();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      if (((*(v32 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = v2;
        v23 = *(v2 + 48) + 24 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        sub_5340(*v23, v25, v26);
        v27 = sub_59BA4();
        sub_5350(v24, v25, v26);
        if (v27)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        v2 = v22;
        if (((*(v32 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_5350(v16, v17, v33);
      v7 = v29;
      result = v30;
      v2 = v22;
      v6 = v31;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_5350(v16, v17, v33);
    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v28 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v31 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_56474(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F410, &qword_5CA30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

unint64_t sub_56504(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  sub_5A974();
  sub_59BB4();
  v8 = sub_5A9A4();

  return sub_566FC(a1, a2, a3 & 1, v8);
}

unint64_t sub_56590(Swift::UInt64 a1)
{
  v3 = *(v1 + 40);
  sub_5A974();
  sub_5A994(a1);
  v4 = sub_5A9A4();

  return sub_56800(a1, v4);
}

unint64_t sub_565FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_5A974();
  sub_5A1E4();
  v6 = sub_5A9A4();

  return sub_5686C(a1, a2, v6);
}

unint64_t sub_56674(uint64_t a1)
{
  v2 = v1;
  v4 = sub_5A614(*(v2 + 40));

  return sub_56924(a1, v4);
}

unint64_t sub_566B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_5A964();

  return sub_56800(a1, v4);
}

unint64_t sub_566FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_5340(*v8, v10, v11);
      v12 = sub_59BA4();
      sub_5350(v9, v10, v11);
      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_56800(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_5686C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_5A8E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_56924(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_5A624();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_569F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
  result = sub_5A834();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      result = sub_5A614(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_56C68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F400, &unk_5E430);
  v36 = a2;
  result = sub_5A834();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_5A964();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_56EEC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_59984();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F458, &qword_5E468);
  v45 = a2;
  result = sub_5A834();
  v12 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v43 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 24 * v25;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = v26 + *(v44 + 72) * v25;
      v46 = *(v44 + 72);
      if (v45)
      {
        sub_589EC(v31, v47, &type metadata accessor for EpisodePlayState);
      }

      else
      {
        sub_58C10(v31, v47, &type metadata accessor for EpisodePlayState);
        sub_5340(v29, v28, v30);
      }

      v32 = *(v12 + 40);
      sub_5A974();
      sub_59BB4();
      result = sub_5A9A4();
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
      v21 = *(v12 + 48) + 24 * v20;
      *v21 = v29;
      *(v21 + 8) = v28;
      *(v21 + 16) = v30;
      result = sub_589EC(v47, *(v12 + 56) + v46 * v20, &type metadata accessor for EpisodePlayState);
      ++*(v12 + 16);
      v9 = v43;
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

    if ((v45 & 1) == 0)
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

id sub_57284(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_56674(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_569F8(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_56674(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
        result = sub_5A914();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_57560();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_57400(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_566B8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_56C68(v16, a4 & 1);
      v20 = *v5;
      result = sub_566B8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_5A914();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_576C4();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

void *sub_57560()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
  v2 = *v0;
  v3 = sub_5A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_576C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F400, &unk_5E430);
  v2 = *v0;
  v3 = sub_5A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_5782C()
{
  v1 = v0;
  v2 = sub_59984();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F458, &qword_5E468);
  v5 = *v0;
  v6 = sub_5A824();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 24 * v20;
        v22 = *(v5 + 48) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = v32;
        v27 = *(v33 + 72) * v20;
        sub_58C10(*(v5 + 56) + v27, v32, &type metadata accessor for EpisodePlayState);
        v28 = v34;
        v29 = *(v34 + 48) + v21;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        sub_589EC(v26, *(v28 + 56) + v27, &type metadata accessor for EpisodePlayState);
        result = sub_5340(v23, v24, v25);
        v15 = v35;
      }

      while (v35);
    }

    v18 = v11;
    v7 = v34;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_57AA4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_5A814();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_5A734();
  *v1 = result;
  return result;
}

uint64_t sub_57B44(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_599C4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v32;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = (&dword_0 + 1);
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_57DE8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_5340(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_5340(v19, v20, v21);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_57F48(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_5340(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_5340(v19, v20, v21);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_580A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5A814();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_5A814();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_5108(&qword_7F5B0, &qword_7E958, &unk_5DA90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E958, &unk_5DA90);
            v9 = sub_48930(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4FE4(0, &qword_7E950, NSError_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_5825C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5A814();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_5A814();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_5108(&qword_7E558, &unk_7F5A0, &qword_5D8F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
            v9 = sub_485CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4FE4(0, &qword_7E4E8, MPCPlayerResponseItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_58434(uint64_t a1, uint64_t a2)
{
  result = sub_5848C(&qword_7F1C0, a2, type metadata accessor for PlayStateDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5848C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_58520@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_586B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_586D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t type metadata accessor for PlayStateData()
{
  result = qword_7F618;
  if (!qword_7F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5875C(uint64_t *a1, uint64_t *a2)
{
  if (sub_5622C(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for PlayStateData(), v5 = v4[5], (sub_59974()) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v6 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_587EC(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      sub_5340(v6, v5, *v3);
      sub_B3F0(v8, v6, v5, v4);
      sub_5350(v8[0], v8[1], v9);
      v3 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return a2;
}

uint64_t sub_58880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_588F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58930()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_58968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F418, &qword_5E440);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_589EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_58A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_59984();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_58AB8(uint64_t a1)
{
  v2 = type metadata accessor for PlayStateData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_58B14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_58B4C(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return sub_52A08(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

uint64_t sub_58B5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1 + 1, a1[8]);
  *a2 = result;
  return result;
}

uint64_t sub_58B9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_58BE4(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  sub_55764(v2, a1);
}

uint64_t sub_58C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_58C78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_58CB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_58D18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_59984();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_58DD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_59984();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_58E7C()
{
  sub_58F18();
  if (v0 <= 0x3F)
  {
    sub_59984();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_58F18()
{
  if (!qword_7F628)
  {
    sub_4F28();
    v0 = sub_5A404();
    if (!v1)
    {
      atomic_store(v0, &qword_7F628);
    }
  }
}

uint64_t SynchronizedEpisodeStateDataSource.performExpectedEpisodeStateUpdates(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_59FE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (*(a4 + 24))(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F448, qword_5E550);
  v14 = *(v9 + 72);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_5BC80;
  sub_59FD4();
  v21 = v16;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_4FD9C();
  sub_5A694();
  v19 = a1;
  v20 = a2;
  sub_5A514();

  return (*(v9 + 8))(v12, v8);
}

void SynchronizedEpisodeStateDataSource.state(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (*(a5 + 24))(a4, a5);
  v7 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  sub_5A664();
  sub_5A524();
}

uint64_t sub_59278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_592A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 16))(a5, a6);
  sub_5340(a2, a3, a4 & 1);
  v10 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  sub_4F28();
  sub_5A134();

  return sub_5350(a2, a3, a4 & 1);
}