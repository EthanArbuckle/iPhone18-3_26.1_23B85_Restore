double TranscriptContentViewModel.startTime.getter()
{
  v1 = *(v0 + 16) >> 61;
  if (v1 <= 1)
  {
    if (!v1)
    {
      v4 = sub_36590(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_11;
    }

    v2 = &qword_C52B0;
    v3 = type metadata accessor for LinkContent;
  }

  else if (v1 == 2)
  {
    v2 = &unk_C77D0;
    v3 = type metadata accessor for SilentContent;
  }

  else if (v1 == 3)
  {
    v2 = &unk_C52A8;
    v3 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v2 = &qword_C77C0;
    v3 = type metadata accessor for ChapterTitleContent;
  }

  v4 = sub_36590(v2, v3);
LABEL_11:
  ObjectType = swift_getObjectType();

  v6 = COERCE_DOUBLE(sub_4B3F8(ObjectType, v4));
  v8 = v7;

  result = v6;
  if (v8)
  {
    return 1.79769313e308;
  }

  return result;
}

uint64_t sub_36590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TranscriptContentViewModel.with(endTime:)(uint64_t a1, char a2)
{
  sub_36AEC(a1, a2 & 1);
}

uint64_t sub_36628@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = sub_36AEC(a1, a2 & 1);
}

uint64_t sub_36668@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_36590(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v4 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  return sub_4BF8(v3 + v4, a2, &qword_C7780);
}

uint64_t sub_36740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_4BF8(a1, &v6 - v3, &qword_C7780);
  return sub_40F7C(v4);
}

void *sub_367EC(void *result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_15028(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5148);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_368F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *a1 = v3;
  return result;
}

uint64_t sub_36974()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

double sub_369F0@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_36A70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t sub_36AEC(uint64_t a1, char a2)
{
  if (*(v2 + 16) >> 61 == 1)
  {
    v5 = sub_36590(&qword_C52B0, type metadata accessor for LinkContent);
    v6 = *(v5 + 56);
    v7 = type metadata accessor for LinkContent();

    v8 = v6(v7, v5);
    if (v9 & 1) != 0 && (v8 = (*(v5 + 24))(v7, v5), (v10))
    {
      v11 = 1.79769313e308;
    }

    else
    {
      v11 = *&v8;
    }

    v12 = *&a1;
    if (a2)
    {
      v12 = 1.79769313e308;
    }

    if (v12 < v11)
    {
      v11 = v12;
    }

    sub_3BB24(*&v11, 0);
  }

  return v2;
}

uint64_t type metadata accessor for LiveTranscriptObserver()
{
  result = qword_C5578;
  if (!qword_C5578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_36C74()
{
  sub_36E4C();
  if (v0 <= 0x3F)
  {
    sub_E790(319, &qword_C5590, &qword_C7F00);
    if (v1 <= 0x3F)
    {
      sub_E790(319, &qword_C5598, &unk_C7EF0);
      if (v2 <= 0x3F)
      {
        sub_E790(319, &qword_C55A0, &unk_C55A8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_36E4C()
{
  if (!qword_C5588)
  {
    v0 = sub_96EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_C5588);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_36ED8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_36F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_36FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_37048(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_E104(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3708C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_370D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37150()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_371AC()
{
  v1 = sub_96788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_37288()
{
  v1 = *(sub_96788() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = v6[2];
  v12 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_5624C(v0 + v2, v7, v8, v11, v9, v10, v13, v14);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3735C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_373F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_966F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t sub_37428()
{
  result = qword_C57C8;
  if (!qword_C57C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C57D0);
    sub_37048(&qword_C57D8, &qword_C57E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C57C8);
  }

  return result;
}

uint64_t sub_37524()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return _swift_deallocObject(v0, 144, 7);
}

void sub_375D8(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

unint64_t sub_37610(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v7 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_986C8();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 = v9;
        sub_4F770(&v13, a2, a3, a4);

        if (!v4)
        {
          ++v8;
          if (v10 != v7)
          {
            continue;
          }
        }

        return result;
      }

      if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_98778();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_37728(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D8);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v28 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D0);
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  *(v4 + 32) = 0;
  v18 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__elapsedTime;
  v36 = 0;
  sub_96E58();
  (*(v15 + 32))(v4 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__activeParagraph;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F00);
  sub_96E58();
  (*(v11 + 32))(v4 + v19, v13, v10);
  v20 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__alignedViewModels;
  v36 = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
  sub_96E58();
  (*(v7 + 32))(v4 + v20, v9, v29);
  v21 = OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver__rawViewModels;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C55A8);
  v22 = v30;
  sub_96E58();
  (*(v31 + 32))(v4 + v21, v22, v32);
  v23 = v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_avObserver;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_subscriptions) = &_swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_dynamicAdObserver) = 0;
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink) = 0;
  sub_96478();
  v24 = v33;
  sub_97C18();
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_playbackController) = v36;
  type metadata accessor for NowPlayingAlignmentCoordinator(0);
  sub_97C18();
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_alignmentCoordinator) = v36;
  v25 = v34;
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_workQueue) = v34;
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_objectGraph) = v24;
  *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_presentationContext) = v35;
  v26 = v25;

  sub_2BD24();
  return v4;
}

uint64_t objectdestroy_60Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_37C68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_98778();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_507C0(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1) - *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for TranscriptContentViewModel();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_37D6C()
{
  v1 = sub_97B48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_37E30(uint64_t a1)
{
  v4 = *(sub_97B48() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2A8A8;

  return sub_31144(a1, v6, v1 + v5);
}

uint64_t sub_380A8()
{
  v1 = v0;
  sub_986A8(19);

  v2 = [*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition) description];
  v3 = sub_97E08();
  v5 = v4;

  v11._countAndFlagsBits = v3;
  v11._object = v5;
  sub_97EE8(v11);

  v12._countAndFlagsBits = 0x203A646E45202CLL;
  v12._object = 0xE700000000000000;
  sub_97EE8(v12);
  v6 = [*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition) description];
  v7 = sub_97E08();
  v9 = v8;

  v13._countAndFlagsBits = v7;
  v13._object = v9;
  sub_97EE8(v13);

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  sub_97EE8(v14);
  return 0x203A7472617453;
}

uint64_t sub_38278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5378);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 7;
  if (((v8 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  v25 = v10 | (v9 << 16);
  v26 = v7;
  v11 = sub_95FD8();
  v24 = *(*(v11 - 8) + 56);
  v23 = 4 * v9;
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v32 = v26;
    v33 = v8;
    v30 = v27;
    v31 = v28;
    v24(v6, 1, 1, v11);
    sub_26788();

    v13 = sub_985E8();
    v15 = v14;
    v17 = v16;
    sub_384A0(v6);

    if (v17)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_156A0(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    if (v20 >= v19 >> 1)
    {
      result = sub_156A0((v19 > 1), v20 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v20 + 1;
    v21 = &v12[16 * v20];
    *(v21 + 4) = v13;
    *(v21 + 5) = v15;
    if (v23 < v15 >> 14)
    {
      __break(1u);
      return result;
    }
  }

  return v12;
}

uint64_t sub_384A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TranscriptViewController.compare(document:toDocument:)(__int128 *a1, __int128 *a2)
{
  v5 = sub_96AB8();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_96048();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v39 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v19 = *(a1 + 32);
  v20 = *a2;
  v41 = a2[1];
  v42 = v20;
  v40 = *(a2 + 32);
  v21 = v2;
  v22 = sub_782A0();
  v23 = *a1;
  v47 = a1[1];
  v46 = v23;
  v48 = v19;
  sub_96CD8();

  v24 = v14[6];
  if (v24(v12, 1, v13) == 1)
  {
    v10 = v12;
  }

  else
  {
    v25 = v12;
    v26 = v14[4];
    v26(v18, v25, v13);
    v27 = *(v21 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___dataSource);
    v47 = v41;
    v46 = v42;
    v48 = v40;
    v28 = v27;
    sub_96CD8();

    if (v24(v10, 1, v13) != 1)
    {
      v35 = v39;
      v26(v39, v10, v13);
      v36 = sub_96008();
      v37 = sub_96008();
      v38 = v14[1];
      v38(v35, v13);
      v38(v18, v13);
      if (v36 < v37)
      {
        return -1;
      }

      else
      {
        return v37 < v36;
      }
    }

    (v14[1])(v18, v13);
  }

  sub_4C60(v10, &qword_C52A0);
  v29 = v43;
  sub_96A78();
  v30 = sub_96AA8();
  v31 = sub_981B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v46 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_11FC8(0xD000000000000022, 0x80000000000A3920, &v46);
    _os_log_impl(&dword_0, v30, v31, "%s Compare documents method has unexpected types.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  (*(v44 + 8))(v29, v45);
  return 0;
}

void TranscriptViewController.performTextSearch(queryString:options:resultAggregator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a4;
  v57 = a1;
  v58 = a2;
  v5 = sub_96AB8();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_78300();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  v7 = sub_41168(v59);

  v8 = v7[2];
  if (!v8)
  {
LABEL_29:

    goto LABEL_30;
  }

  v47 = v5;
  v9 = 0;
  v10 = 0;
  v11 = v7 + 4;
  v12 = &off_C2000;
  v46 = a3;
  v52 = v7;
  v45 = v8;
  v44 = v7 + 4;
  while (1)
  {
    if (v10 >= v7[2])
    {
LABEL_33:
      __break(1u);
      return;
    }

    v13 = &v11[2 * v10];
    v15 = *v13;
    v14 = v13[1];

    v16 = [a3 v12[491]];
    v17 = sub_38278(v57, v58, v16);
    if (v17)
    {
      break;
    }

LABEL_4:
    if (++v10 == v8)
    {
      goto LABEL_29;
    }
  }

  v18 = v17;
  v55 = v14;
  v56 = v15;
  v19 = *(v17 + 16);
  if (!v19)
  {

    goto LABEL_4;
  }

  v20 = 0;
  v50 = v9 + v19;
  v51 = v10;
  v53 = v9 ^ 0x7FFFFFFFFFFFFFFFLL;
  v21 = v9 + 1;
  v22 = (v17 + 40);
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v24 = *(v22 - 1);
    v23 = *v22;
    v25 = type metadata accessor for StringTextPosition();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position] = v24;
    v66.receiver = v26;
    v66.super_class = v25;
    v27 = objc_msgSendSuper2(&v66, "init");
    v28 = objc_allocWithZone(v25);
    *&v28[OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position] = v23;
    v65.receiver = v28;
    v65.super_class = v25;
    v29 = objc_msgSendSuper2(&v65, "init");
    v30 = type metadata accessor for StringTextRange();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition] = v27;
    *&v31[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition] = v29;
    v64.receiver = v31;
    v64.super_class = v30;
    v32 = objc_msgSendSuper2(&v64, "init");
    v33 = *(v56 + 16);
    v34 = v33 >> 61;
    if ((v33 >> 61) <= 1)
    {
      if (!v34)
      {
        v36 = *(v33 + 16);
        v38 = *(v33 + 32);
        v37 = *(v33 + 40);

        goto LABEL_21;
      }

      v36 = *(&dword_10 + (v33 & 0x1FFFFFFFFFFFFFFFLL));
    }

    else
    {
      v35 = (v33 & 0x1FFFFFFFFFFFFFFFLL);
      if (v34 != 2)
      {
        if (v34 == 3)
        {
          v36 = v35[5];
          v38 = v35[7];
          v37 = v35[8];

          goto LABEL_21;
        }

        v36 = v35[14];
        v38 = v35[16];

        goto LABEL_20;
      }

      v36 = v35[2];

      v39 = 0;
    }

    v38 = 0;
LABEL_20:
    v37 = 0;
LABEL_21:
    v59 = v36;
    v60 = v39;
    v61 = v38;
    v62 = v37;
    v63 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5990);
    sub_96B28();

    sub_20438(v59, v60, v61, v62, v63);
    if (v53 == v20)
    {
      goto LABEL_32;
    }

    if (v21 > 999)
    {
      break;
    }

    ++v20;
    ++v21;
    v22 += 2;
    if (v19 == v20)
    {

      v9 = v50;
      v10 = v51;
      a3 = v46;
      v7 = v52;
      v8 = v45;
      v11 = v44;
      v12 = &off_C2000;
      goto LABEL_4;
    }
  }

  sub_3AAE8();
  swift_allocError();
  swift_willThrow();

  swift_errorRetain();
  v40 = v48;
  sub_96A78();
  v41 = sub_96AA8();
  v42 = sub_981D8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = 1000;
    _os_log_impl(&dword_0, v41, v42, "Stopping search after %ld matches.", v43, 0xCu);
  }

  (*(v49 + 8))(v40, v47);

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5990);
  sub_96B38();
}

uint64_t TranscriptViewController.decorate(foundTextRange:document:usingStyle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_96AB8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 32);
  if (v9 != 255)
  {
    v25 = v5;
    v10 = *(a2 + 8);
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    *&v27 = *a2;
    v11 = v27;
    *(&v27 + 1) = v10;
    v28 = v13;
    v29 = v12;
    v30 = v9;
    sub_203C8(v27, v10, v13, v12, v9);
    v14 = sub_91C38(&v27);
    if (v14)
    {
      v15 = v14;
      type metadata accessor for StringTextRange();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = a1;
        if (v26)
        {
          if (v26 == 2)
          {
            sub_412DC(v17, 2);
          }

          else if (v26 == 1)
          {
            sub_412DC(v17, 1);
LABEL_15:
            sub_3AB3C(v15, v17);
          }

          sub_20424(v11, v10, v13, v12, v9);
        }

        sub_414DC(v17, 1);
        goto LABEL_15;
      }
    }

    sub_20424(v11, v10, v13, v12, v9);
    v5 = v25;
  }

  sub_96A78();
  v19 = sub_96AA8();
  v20 = sub_981B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_11FC8(0xD000000000000022, 0x80000000000A3920, &v27);
    _os_log_impl(&dword_0, v19, v20, "%s Decorate method has unexpected types.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall TranscriptViewController.clearAllDecoratedFoundText()()
{
  v0 = sub_96AB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_96A78();
  v4 = sub_96AA8();
  v5 = sub_981A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v29[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_11FC8(0xD000000000000022, 0x80000000000A3920, v29);
    _os_log_impl(&dword_0, v4, v5, "%s Clear all decorated found text.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  (*(v1 + 8))(v3, v0);
  sub_78300();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  v8 = sub_41168(*&v29[0]);

  v23 = v8[2];
  v24 = v8;
  if (v23)
  {
    v9 = 0;
    v22 = 0;
    v10 = v24 + 5;
    while (v9 < v24[2])
    {
      v28 = v9;
      v13 = *(v10 - 1);
      v14 = *v10;
      swift_getKeyPath();
      v15 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent___observationRegistrar;
      *&v29[0] = v14;
      v16 = sub_3AD08(&qword_C56A0, type metadata accessor for TextContent);
      v25 = v13;

      v26 = v16;
      v27 = v15;
      sub_962A8();

      v17 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText;
      v18 = *(v14 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
      swift_getKeyPath();
      *&v29[0] = v18;
      sub_3AD08(&qword_C7760, type metadata accessor for TextContent.LiveText);

      sub_962A8();

      v19 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__searchRanges;
      swift_beginAccess();
      if (*(*(v18 + v19) + 16))
      {
        swift_getKeyPath();
        *&v29[0] = v18;
        sub_962A8();

        *&v29[0] = v18;
        swift_getKeyPath();
        sub_962C8();

        *(v18 + v19) = &_swiftEmptySetSingleton;

        *&v29[0] = v18;
        swift_getKeyPath();
        sub_962B8();

        sub_468E8();
      }

      swift_getKeyPath();
      *&v29[0] = v14;
      sub_962A8();

      v20 = *(v14 + v17);
      v21 = v20 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
      if (*(v20 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 16))
      {
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 1;
        swift_getKeyPath();
        *&v29[0] = v20;

        sub_962A8();

        if (*(v21 + 16) == 1 || (sub_468E8(), swift_getKeyPath(), *&v29[0] = v20, sub_962A8(), , (*(v21 + 16) & 1) == 0))
        {
        }

        else
        {
          memset(v29, 0, sizeof(v29));
          v30 = 1;

          sub_96DF8();
        }
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v22 - 3) = 0;
        *(&v22 - 2) = 0;
        *(&v22 - 4) = v20;
        *(&v22 - 8) = 1;
        *&v29[0] = v20;

        v12 = v22;
        sub_96298();
        v22 = v12;
      }

      v9 = v28 + 1;
      v10 += 2;
      if (v23 == v28 + 1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

uint64_t TranscriptViewController.scrollRangeToVisible(_:inDocument:)(uint64_t a1, uint64_t a2)
{
  v96 = sub_96AB8();
  v5 = *(v96 - 8);
  v6 = __chkstk_darwin(v96);
  v8 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v82[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v82[-v12];
  v14 = sub_96048();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v20 = *(a2 + 32);
  if (v20 == 255)
  {
LABEL_17:
    sub_96A78();
    v73 = sub_96AA8();
    v74 = sub_981B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v97[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_11FC8(0xD000000000000022, 0x80000000000A3920, v97);
      _os_log_impl(&dword_0, v73, v74, "%s Scroll rect to visible has unexpected types.", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    return (*(v5 + 8))(v8, v96);
  }

  v91 = v10;
  v92 = a1;
  v90 = v19;
  v93 = &v82[-v18];
  v94 = v8;
  v95 = v5;
  v21 = v2;
  v23 = *a2;
  v22 = *(a2 + 8);
  v24 = v17;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  sub_203C8(v23, v22, v26, v25, v20);
  v27 = sub_782A0();
  v97[3] = v23;
  v97[4] = v22;
  v97[5] = v26;
  v97[6] = v25;
  v98 = v20;
  sub_96CD8();

  if ((*(v15 + 48))(v13, 1, v24) == 1)
  {
    sub_20424(v23, v22, v26, v25, v20);
    sub_4C60(v13, &qword_C52A0);
    v5 = v95;
LABEL_16:
    v8 = v94;
    goto LABEL_17;
  }

  v86 = v20;
  v87 = v23;
  v88 = v22;
  v89 = v26;
  v28 = v93;
  (*(v15 + 32))(v93, v13, v24);
  v29 = sub_96028();
  v30 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v85 = v21;
  v31 = *(v21 + v30);
  v32 = v24;
  v33 = v15;
  if (v31 >> 62)
  {
    v34 = sub_98778();
  }

  else
  {
    v34 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = v95;
  v35 = v92;
  if (v29 >= v34)
  {
    (*(v15 + 8))(v28, v32);
    sub_20424(v87, v88, v89, v25, v86);
    goto LABEL_16;
  }

  v36 = v25;
  v37 = sub_96028();
  v38 = v85;
  result = swift_beginAccess();
  v40 = *(v38 + v30);
  if ((v40 & 0xC000000000000001) == 0)
  {
    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v37 < *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
    {
      v41 = v36;
      v42 = *(v40 + 8 * v37 + 32);

      goto LABEL_11;
    }

    __break(1u);
    return result;
  }

  v42 = sub_986C8();
  v41 = v36;
LABEL_11:
  v43 = v91;
  swift_endAccess();
  type metadata accessor for StringTextRange();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    sub_20424(v87, v88, v89, v41, v86);

    (*(v33 + 8))(v28, v32);
    goto LABEL_16;
  }

  v92 = v44;
  v94 = v41;
  v45 = v35;
  sub_96A78();
  v46 = v90;
  (*(v33 + 16))(v90, v28, v32);
  v47 = v45;

  v48 = sub_96AA8();
  v49 = sub_981A8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v95 = v42;
    v51 = v50;
    v52 = swift_slowAlloc();
    v84 = v52;
    v91 = swift_slowAlloc();
    v97[0] = v91;
    *v51 = 136316163;
    *(v51 + 4) = sub_11FC8(0xD000000000000022, 0x80000000000A3920, v97);
    *(v51 + 12) = 2114;
    v53 = v92;
    *(v51 + 14) = v92;
    *v52 = v53;
    *(v51 + 22) = 2160;
    *(v51 + 24) = 1752392040;
    *(v51 + 32) = 2081;
    v83 = v49;
    v54 = *(v95 + 16);
    v55 = v47;

    v56 = sub_4BF14(v54);
    v57 = v47;
    v59 = v58;

    v60 = sub_11FC8(v56, v59, v97);

    *(v51 + 34) = v60;
    *(v51 + 42) = 2080;
    sub_3AD08(&qword_C59A0, &type metadata accessor for IndexPath);
    v61 = sub_987F8();
    v63 = v62;
    v64 = *(v33 + 8);
    v92 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65 = v46;
    v66 = v64;
    v64(v65, v32);
    v67 = sub_11FC8(v61, v63, v97);

    *(v51 + 44) = v67;
    _os_log_impl(&dword_0, v48, v83, "%s Scroll to %{public}@ in %{private,mask.hash}s at %s.", v51, 0x34u);
    sub_4C60(v84, &qword_C50C8);

    swift_arrayDestroy();

    v68 = v57;
    (*(v5 + 8))(v43, v96);
    v69 = v32;
    v70 = v88;
    v71 = v89;
    v72 = v87;
  }

  else
  {

    v77 = *(v33 + 8);
    v92 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v46;
    v66 = v77;
    v77(v78, v32);
    (*(v5 + 8))(v43, v96);
    v69 = v32;
    v70 = v88;
    v71 = v89;
    v72 = v87;
    v68 = v47;
  }

  v79 = sub_78400();
  v80 = v93;
  isa = sub_95FE8().super.isa;
  [v79 _scrollToItemAtIndexPath:isa atScrollPosition:1 additionalInsets:1 animated:{20.0, 0.0, 0.0, 0.0}];
  sub_20424(v72, v70, v71, v94, v86);

  return v66(v80, v69);
}

uint64_t sub_3A0C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return UITextSearching.supportsTextReplacement.getter(ObjectType, a2);
}

uint64_t sub_3A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return UITextSearching.shouldReplace(foundTextRange:document:withText:)(a1, a2, a3, a4, ObjectType, a6);
}

uint64_t sub_3A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return UITextSearching.replace(foundTextRange:document:withText:)(a1, a2, a3, a4, ObjectType, a6);
}

void sub_3A1E4(uint64_t a1, uint64_t a2, UITextSearchOptions a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v10 = a1;
  v11 = a2;
  v12 = a4;
  v13 = a5;

  UITextSearching.replaceAll(queryString:options:withText:)(*&v10, a3, *&v12);
}

uint64_t sub_3A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return UITextSearching.willHighlight(foundTextRange:document:)(a1, a2, ObjectType, a4);
}

uint64_t sub_3A2C0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return UITextSearching.selectedTextSearchDocument.getter(ObjectType, a2);
}

Swift::Int sub_3A318()
{
  sub_988D8();
  sub_988E8(0);
  return sub_98918();
}

Swift::Int sub_3A384()
{
  sub_988D8();
  sub_988E8(0);
  return sub_98918();
}

uint64_t sub_3A3D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3AD08(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  *a2 = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
}

id sub_3A4B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3AD08(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v4 = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange);
  *a2 = v4;

  return v4;
}

void sub_3A574(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_41B18(v1);
}

__n128 sub_3A5A4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3AD08(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v4 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 16);
  result = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_3A694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3AD08(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v4 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__searchRanges;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_3A788@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *a1 = v3;
  return result;
}

uint64_t sub_3A808()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t _s19PodcastsTranscripts24TranscriptViewControllerC7compare_7toRange8documentSo18NSComparisonResultVSo06UITextH0C_AjA0c7ContentD5ModelC2IDOSgtF_0(void *a1, void *a2)
{
  v4 = sub_96AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 start];
  type metadata accessor for StringTextPosition();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = [a2 start];
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = *(v10 + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);

      v15 = *(v13 + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
      if (v14 >> 14 >= v15 >> 14)
      {
        return v15 >> 14 < v14 >> 14;
      }

      else
      {
        return -1;
      }
    }
  }

  else
  {
    v11 = v8;
  }

  sub_96A78();
  v17 = sub_96AA8();
  v18 = sub_981B8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_11FC8(0xD000000000000022, 0x80000000000A3920, &v22);
    _os_log_impl(&dword_0, v17, v18, "%s Compare positions method has unexpected types.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

unint64_t sub_3AAE8()
{
  result = qword_C5998;
  if (!qword_C5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5998);
  }

  return result;
}

void sub_3AB3C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_3AD08(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v4 = *(a1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange);
  if (v4)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v5 = v4;

    v6 = _s19PodcastsTranscripts24TranscriptViewControllerC7compare_7toRange8documentSo18NSComparisonResultVSo06UITextH0C_AjA0c7ContentD5ModelC2IDOSgtF_0(a2, v5);
    sub_20424(v7, v8, v9, *(&v9 + 1), 0);
    if (!v6)
    {
      sub_414DC(a2, 2);
    }
  }
}

uint64_t sub_3AD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10MatchErrorOwet(unsigned int *a1, int a2)
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

_WORD *_s10MatchErrorOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_3AE40()
{
  result = qword_C59A8;
  if (!qword_C59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59A8);
  }

  return result;
}

void sub_3AE98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_41B18(v1);
}

uint64_t ChapterTitleContent.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_986A8(30);
  v4._object = 0x80000000000A3950;
  v4._countAndFlagsBits = 0xD000000000000017;
  sub_97EE8(v4);
  sub_980E8();
  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  sub_97EE8(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_97EE8(v6);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_97EE8(v7);
  return 0;
}

BOOL static ChapterTitleContent.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_98838();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void ChapterTitleContent.ID.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_97E88();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_98908(*&v2);
}

Swift::Int ChapterTitleContent.ID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_988D8();
  sub_97E88();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_98908(*&v2);
  return sub_98918();
}

Swift::Int sub_3B0B8()
{
  v1 = *(v0 + 16);
  sub_988D8();
  sub_97E88();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_98908(*&v2);
  return sub_98918();
}

uint64_t ChapterTitleContent.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  *a1 = v1[14];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t ChapterTitleContent.deinit()
{

  sub_375D8(*(v0 + 96));

  return v0;
}

uint64_t ChapterTitleContent.__deallocating_deinit()
{

  sub_375D8(*(v0 + 96));

  return _swift_deallocClassInstance(v0, 136, 7);
}

unint64_t sub_3B1C0()
{
  result = qword_C59B0;
  if (!qword_C59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59B0);
  }

  return result;
}

uint64_t sub_3B238(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_3B254(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void sub_3B264(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_375D8(v3);
}

unint64_t sub_3B278(uint64_t a1)
{
  result = sub_3B2A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3B2A0()
{
  result = qword_C59B8;
  if (!qword_C59B8)
  {
    type metadata accessor for ChapterTitleContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59B8);
  }

  return result;
}

uint64_t sub_3B318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_96DE8();
  *a1 = result;
  return result;
}

unint64_t sub_3B36C()
{
  result = qword_C59C0;
  if (!qword_C59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C59C0);
  }

  return result;
}

uint64_t sub_3B3C0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 128);
  *a1 = *(*v1 + 112);
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_3B3F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_3B438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LinkContent.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_3B49C()
{
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  return *(v0 + 48);
}

uint64_t sub_3B52C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3B5FC(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = *&result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_3C5CC(&qword_C5850);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_3B720(uint64_t result, uint64_t a2, char a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3 & 1;
  return result;
}

uint64_t sub_3B730()
{
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  return *(v0 + 64);
}

uint64_t sub_3B7C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  v5 = *(v3 + 72);
  *a2 = *(v3 + 64);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3B890(uint64_t result, char a2)
{
  if ((*(v2 + 72) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 64) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 64) = *&result;
    *(v2 + 72) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_3C5CC(&qword_C5850);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_3B9B4(uint64_t result, uint64_t a2, char a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3 & 1;
  return result;
}

uint64_t sub_3B9C4()
{
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  return *(v0 + 80);
}

uint64_t sub_3BA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  v5 = *(v3 + 88);
  *a2 = *(v3 + 80);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3BB24(uint64_t result, char a2)
{
  if ((*(v2 + 88) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 80) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 80) = *&result;
    *(v2 + 88) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_3C5CC(&qword_C5850);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_3BC48(uint64_t result, uint64_t a2, char a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3 & 1;
  return result;
}

void *sub_3BC58()
{
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  v1 = *(v0 + 96);
  sub_3C610(v1);
  return v1;
}

id sub_3BCF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3C5CC(&qword_C5850);
  sub_962A8();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  *a2 = v4;
  a2[1] = v5;
  return sub_3C610(v4);
}

void sub_3BD90(char *a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  if (v5 != &dword_0 + 1)
  {
    if (a1 != &dword_0 + 1)
    {
      v8 = *(v2 + 104);
      if (v5)
      {
        if (a1)
        {
          type metadata accessor for StringTextRange();
          sub_3C610(v5);
          sub_3C610(a1);
          v9 = sub_98448();
          sub_375D8(a1);
          sub_375D8(v5);
          if ((v9 & 1) != 0 && v8 == *&a2)
          {
            v6 = *(v2 + 96);
            goto LABEL_4;
          }
        }
      }

      else if (!a1 && *(v2 + 104) == *&a2)
      {
        v6 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3C5CC(&qword_C5850);
    sub_96298();
    sub_375D8(a1);

    return;
  }

  if (a1 != &dword_0 + 1)
  {
    goto LABEL_8;
  }

  v6 = &dword_0 + 1;
LABEL_4:
  *(v2 + 96) = a1;
  *(v2 + 104) = *&a2;

  sub_375D8(v6);
}

uint64_t LinkContent.ID.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_3BFB0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_3BFBC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_3BFC8()
{
  sub_988D8();
  sub_97E88();
  return sub_98918();
}

Swift::Int sub_3C01C()
{
  sub_988D8();
  sub_97E88();
  return sub_98918();
}

uint64_t sub_3C064(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_98838();
  }
}

uint64_t LinkContent.deinit()
{

  sub_375D8(*(v0 + 96));
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts11LinkContent_viewModel;
  v2 = sub_979D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts11LinkContent___observationRegistrar;
  v4 = sub_962E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LinkContent.__deallocating_deinit()
{

  sub_375D8(v0[12]);
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts11LinkContent_viewModel;
  v2 = sub_979D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts11LinkContent___observationRegistrar;
  v4 = sub_962E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v5, v6);
}

unint64_t sub_3C234()
{
  result = qword_C5AA0;
  if (!qword_C5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5AA0);
  }

  return result;
}

uint64_t sub_3C29C(uint64_t a1)
{
  result = sub_3C5CC(&qword_C5AA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LinkContent()
{
  result = qword_C5AE0;
  if (!qword_C5AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3C330()
{
  result = qword_C5AB0;
  if (!qword_C5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5AB0);
  }

  return result;
}

uint64_t sub_3C384@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_3C39C()
{
  result = sub_979D8();
  if (v1 <= 0x3F)
  {
    result = sub_962E8();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_3C4A4(uint64_t a1, int a2)
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

uint64_t sub_3C4EC(uint64_t result, int a2, int a3)
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

void sub_3C53C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_3C610(*a1);
  sub_3BD90(v1, v2);
}

void sub_3C580()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 96);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  sub_3C610(v1);
  sub_375D8(v4);
}

uint64_t sub_3C5CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LinkContent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_3C610(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

void sub_3C658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 80) = *(v0 + 24);
  *(v1 + 88) = v2;
}

void sub_3C6A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 24);
  *(v1 + 72) = v2;
}

void sub_3C6F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

unint64_t SilentContent.ID.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0xD000000000000018;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_203C8(v2, v3, v4, v5, v6);
  sub_986A8(26);

  v8._countAndFlagsBits = TranscriptContentViewModel.ID.description.getter();
  sub_97EE8(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_97EE8(v9);
  sub_20438(v2, v3, v4, v5, v6);
  return 0xD000000000000017;
}

void SilentContent.ID.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    sub_988E8(1uLL);
    TranscriptContentViewModel.ID.hash(into:)(a1);
  }

  else
  {
    sub_988E8(0);
  }
}

Swift::Int SilentContent.ID.hashValue.getter()
{
  v1 = *v0;
  sub_988D8();
  if (v1)
  {
    sub_988E8(1uLL);
    TranscriptContentViewModel.ID.hash(into:)(v3);
  }

  else
  {
    sub_988E8(0);
  }

  return sub_98918();
}

Swift::Int sub_3C968()
{
  v1 = *v0;
  sub_988D8();
  if (v1)
  {
    sub_988E8(1uLL);
    TranscriptContentViewModel.ID.hash(into:)(v3);
  }

  else
  {
    sub_988E8(0);
  }

  return sub_98918();
}

uint64_t sub_3C9FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t SilentContent.deinit()
{

  v1 = OBJC_IVAR____TtC19PodcastsTranscripts13SilentContent__viewState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5BA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SilentContent.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19PodcastsTranscripts13SilentContent__viewState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5BA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_3CBC8(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_3CBE4(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_3CBF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t SilentContent.description.getter()
{
  sub_986A8(108);
  v1._object = 0x80000000000A3B00;
  v1._countAndFlagsBits = 0xD000000000000014;
  sub_97EE8(v1);
  v2._countAndFlagsBits = SilentContent.ID.description.getter();
  sub_97EE8(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x80000000000A3B20;
  sub_97EE8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5BB0);
  v4._countAndFlagsBits = sub_97E48();
  sub_97EE8(v4);

  v5._object = 0x80000000000A3B40;
  v5._countAndFlagsBits = 0xD000000000000014;
  sub_97EE8(v5);
  v6._countAndFlagsBits = sub_97E48();
  sub_97EE8(v6);

  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x80000000000A3B60;
  sub_97EE8(v7);
  v8._countAndFlagsBits = sub_97E48();
  sub_97EE8(v8);

  v9._countAndFlagsBits = 0xD000000000000011;
  v9._object = 0x80000000000A3B80;
  sub_97EE8(v9);
  v10._countAndFlagsBits = sub_97E48();
  sub_97EE8(v10);

  return 0;
}

double sub_3CE94@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_3CF14(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_3C610(v1);
  return sub_96EA8();
}

uint64_t _s19PodcastsTranscripts13SilentContentC2IDO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v4 = *(v2 + 48);
  v5 = *(v3 + 48);
  v6 = *(v2 + 32);
  v12[0] = *(v2 + 16);
  v12[1] = v6;
  v13 = v4;
  v7 = *(v3 + 32);
  v10[0] = *(v3 + 16);
  v10[1] = v7;
  v11 = v5;

  v8 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(v12, v10);

  return v8 & 1;
}

unint64_t sub_3D044()
{
  result = qword_C5BB8;
  if (!qword_C5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5BB8);
  }

  return result;
}

unint64_t sub_3D098(uint64_t a1)
{
  result = sub_3D0C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3D0C0()
{
  result = qword_C5BC0;
  if (!qword_C5BC0)
  {
    type metadata accessor for SilentContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5BC0);
  }

  return result;
}

uint64_t type metadata accessor for SilentContent()
{
  result = qword_C5BF8;
  if (!qword_C5BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3D168()
{
  result = qword_C5BC8;
  if (!qword_C5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5BC8);
  }

  return result;
}

void sub_3D1C4()
{
  sub_3D294();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3D294()
{
  if (!qword_C5C08)
  {
    v0 = sub_96EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_C5C08);
    }
  }
}

uint64_t sub_3D2F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3D340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_3D394(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_3D3AC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_3D3E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  sub_962A8();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 56);
  *(a2 + 32) = v8;
  return sub_20410(v4, v5, v6, v7, v8);
}

uint64_t sub_3D4A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_20410(v6, v1, v2, v3, v4);
  return sub_6F52C(&v6);
}

BOOL sub_3D4F4()
{
  v1 = *(v0 + 160);
  swift_getKeyPath();
  sub_402B4(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  sub_962A8();

  if (*(v1 + 56))
  {
    return 0;
  }

  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  if (*(v1 + 24) == *(v0 + 40) && *(v1 + 32) == *(v0 + 48))
  {
    if (v4 != v6)
    {
      return 0;
    }

    return v3 == v5;
  }

  v8 = sub_98838();
  result = 0;
  if ((v8 & 1) != 0 && v4 == v6)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t sub_3D600()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  return *(v0 + 32);
}

uint64_t sub_3D6A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_3D770(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
    sub_96298();
  }

  return result;
}

uint64_t sub_3D888()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  return *(v0 + 33);
}

uint64_t sub_3D928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_3D9F8(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
    sub_96298();
  }

  return result;
}

uint64_t SpeakerContent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 56);
}

uint64_t sub_3DB1C()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  return *(v0 + 72);
}

uint64_t sub_3DBC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  v5 = *(v3 + 80);
  *a2 = *(v3 + 72);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3DC70(uint64_t result, char a2)
{
  if ((*(v2 + 80) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 72) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 72) = *&result;
    *(v2 + 80) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_3DDA8()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  return *(v0 + 88);
}

uint64_t sub_3DE4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  v5 = *(v3 + 96);
  *a2 = *(v3 + 88);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3DEFC(uint64_t result, char a2)
{
  if ((*(v2 + 96) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 88) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 88) = *&result;
    *(v2 + 96) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_3E034()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  return *(v0 + 104);
}

uint64_t sub_3E0D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  v5 = *(v3 + 112);
  *a2 = *(v3 + 104);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3E188(uint64_t result, char a2)
{
  if ((*(v2 + 112) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 104) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 104) = *&result;
    *(v2 + 112) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_3E2C0()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  return *(v0 + 120);
}

uint64_t sub_3E364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  v5 = *(v3 + 128);
  *a2 = *(v3 + 120);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_3E414(uint64_t result, char a2)
{
  if ((*(v2 + 128) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 120) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 120) = *&result;
    *(v2 + 128) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

void *sub_3E54C()
{
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  v1 = *(v0 + 136);
  sub_3C610(v1);
  return v1;
}

id sub_3E600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  *a2 = v4;
  a2[1] = v5;
  return sub_3C610(v4);
}

void sub_3E6AC(char *a1, uint64_t a2)
{
  v5 = *(v2 + 136);
  if (v5 != &dword_0 + 1)
  {
    if (a1 != &dword_0 + 1)
    {
      v8 = *(v2 + 144);
      if (v5)
      {
        if (a1)
        {
          type metadata accessor for StringTextRange();
          sub_3C610(v5);
          sub_3C610(a1);
          v9 = sub_98448();
          sub_375D8(a1);
          sub_375D8(v5);
          if ((v9 & 1) != 0 && v8 == *&a2)
          {
            v6 = *(v2 + 136);
            goto LABEL_4;
          }
        }
      }

      else if (!a1 && *(v2 + 144) == *&a2)
      {
        v6 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
    sub_96298();
    sub_375D8(a1);

    return;
  }

  if (a1 != &dword_0 + 1)
  {
    goto LABEL_8;
  }

  v6 = &dword_0 + 1;
LABEL_4:
  *(v2 + 136) = a1;
  *(v2 + 144) = *&a2;

  sub_375D8(v6);
}

uint64_t sub_3E8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5DE8);
  sub_96288();
  v1 = v10[0];
  v2 = v10[1];
  v4 = v10[2];
  v3 = v10[3];
  v5 = v11;
  v9 = sub_3F260(v10, v12);
  swift_getKeyPath();
  v10[0] = v0;
  sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
  sub_962A8();

  if ((v9 & 1) == *(v0 + 33))
  {
    return sub_20424(v1, v2, v4, v3, v5);
  }

  swift_getKeyPath();
  v10[0] = v0;
  sub_962A8();

  if (*(v0 + 32) == 1)
  {
    __chkstk_darwin(v6);
    sub_97818();
    sub_97168();
    sub_20424(v1, v2, v4, v3, v5);
  }

  else if ((v9 & 1) == *(v0 + 33))
  {
    result = sub_20424(v1, v2, v4, v3, v5);
    *(v0 + 33) = v9 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[0] = v0;
    sub_96298();
    sub_20424(v1, v2, v4, v3, v5);
  }

  return result;
}

uint64_t sub_3EBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 160);
  swift_getKeyPath();
  sub_402B4(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  sub_962A8();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 56);
  *(a2 + 32) = v8;
  swift_getKeyPath();
  sub_20410(v4, v5, v6, v7, v8);
  sub_962A8();

  *(a2 + 33) = *(v3 + 57);
  return result;
}

uint64_t sub_3ECD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_98098();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_98068();

  v5 = sub_98058();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_3EF8C(0, 0, v2, &unk_9C5D8, v6);
}

uint64_t sub_3EE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_98068();
  v4[7] = sub_98058();
  v6 = sub_98038();

  return _swift_task_switch(sub_3EEEC, v6, v5);
}

uint64_t sub_3EEEC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_3E8B0();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_4002C(a3, v25 - v10);
  v12 = sub_98098();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_4009C(v11);
  }

  else
  {
    sub_98088();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_98038();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_97E58() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5DF0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_4009C(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_4009C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5DF0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_3F260(uint64_t a1, unsigned __int8 a2)
{
  if (!*(v2 + 24))
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v8 = *(v2 + 56);
    v7 = *(v2 + 64);
    if (*a1 == *(v2 + 40) && *(a1 + 8) == *(v2 + 48))
    {
      if (v6 != v8)
      {
        result = 0;
LABEL_16:
        v4 = a2;
        if (!a2)
        {
          return 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = a2;
      v11 = sub_98838();
      result = 0;
      if ((v11 & 1) == 0)
      {
        v4 = v10;
        if (!v10)
        {
          return 0;
        }

        goto LABEL_17;
      }

      a2 = v10;
      if (v6 != v8)
      {
        goto LABEL_16;
      }
    }

    result = v5 == v7;
    v4 = a2;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_17;
  }

  result = 0;
  v4 = a2;
  if (!a2)
  {
    return 0;
  }

LABEL_17:
  if (v4 != 1)
  {
    return *(v2 + 152);
  }

  return result;
}

uint64_t sub_3F344(uint64_t result, char a2)
{
  if (*(result + 33) == (a2 & 1))
  {
    *(result + 33) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_402B4(&qword_C5DE0, type metadata accessor for SpeakerContent);
    sub_96298();
  }

  return result;
}

uint64_t SpeakerContent.deinit()
{

  sub_375D8(*(v0 + 136));

  v1 = OBJC_IVAR____TtC19PodcastsTranscripts14SpeakerContent___observationRegistrar;
  v2 = sub_962E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerContent.__deallocating_deinit()
{

  sub_375D8(v0[17]);

  v1 = OBJC_IVAR____TtC19PodcastsTranscripts14SpeakerContent___observationRegistrar;
  v2 = sub_962E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_3F5B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *a1 = *(*v1 + 40);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 56);
}

void SpeakerContent.ID.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_97E88();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  sub_98908(*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  sub_98908(*&v4);
}

Swift::Int SpeakerContent.ID.hashValue.getter()
{
  sub_988D8();
  SpeakerContent.ID.hash(into:)();
  return sub_98918();
}

Swift::Int sub_3F68C()
{
  sub_988D8();
  SpeakerContent.ID.hash(into:)();
  return sub_98918();
}

uint64_t sub_3F6DC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_3F7D0;

  return v5(v2 + 32);
}

uint64_t sub_3F7D0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

BOOL _s19PodcastsTranscripts14SpeakerContentC2IDV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  result = 0;
  if (v6 || (sub_98838()) && v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return result;
}

uint64_t sub_3F954(uint64_t a1)
{
  result = sub_402B4(&qword_C5CC0, type metadata accessor for SpeakerContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SpeakerContent()
{
  result = qword_C5D00;
  if (!qword_C5D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3F9FC()
{
  result = qword_C5CC8;
  if (!qword_C5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5CC8);
  }

  return result;
}

unint64_t sub_3FA54()
{
  result = qword_C5CD0;
  if (!qword_C5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5CD0);
  }

  return result;
}

uint64_t sub_3FAB0()
{
  result = sub_962E8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_3FBA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_3FBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_3FC40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_3C610(*a1);
  sub_3E6AC(v1, v2);
}

void sub_3FC84()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 136);
  *(v2 + 136) = v1;
  *(v2 + 144) = v3;
  sub_3C610(v1);
  sub_375D8(v4);
}

void sub_3FD08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 120) = *(v0 + 24);
  *(v1 + 128) = v2;
}

void sub_3FD54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 104) = *(v0 + 24);
  *(v1 + 112) = v2;
}

void sub_3FDA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
}

void sub_3FDEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 72) = *(v0 + 24);
  *(v1 + 80) = v2;
}

uint64_t (*sub_3FE08())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_3FF30;
}

uint64_t sub_3FEF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3FF38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3FF78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2A8A8;

  return sub_3EE54(a1, v4, v5, v6);
}

uint64_t sub_4002C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4009C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_40104()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4013C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2B614;

  return sub_3F6DC(a1, v4);
}

uint64_t sub_401F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2A8A8;

  return sub_3F6DC(a1, v4);
}

uint64_t sub_402B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_40320(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6328);
  v3 = __chkstk_darwin(v71);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6330);
  v7 = __chkstk_darwin(v6 - 8);
  v75 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = &v63 - v9;
  v93 = sub_95E18();
  v10 = *(v93 - 8);
  v11 = __chkstk_darwin(v93);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v63 - v13;
  v14 = sub_95E48();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v91 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6320);
  __chkstk_darwin(v20 - 8);
  v22 = &v63 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  v23 = __chkstk_darwin(v87);
  v66 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v64 = &v63 - v26;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v89 = (v10 + 48);
  v90 = (v15 + 16);
  v76 = (v10 + 32);
  v32 = (v10 + 8);
  v33 = v19;
  v72 = v32;
  v79 = (v15 + 8);
  v80 = (v25 + 56);
  v65 = v25;
  v78 = (v25 + 48);
  v86 = a1;

  v35 = 0;
  v70 = &_swiftEmptyArrayStorage;
  v81 = v31;
  v82 = a1 + 56;
  v73 = v19;
  v74 = v14;
  v83 = v22;
LABEL_4:
  v36 = v35;
  if (!v30)
  {
    goto LABEL_6;
  }

  do
  {
    v35 = v36;
LABEL_9:
    v88 = *(*(v86 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v30)))) + 8);
    v37 = *v90;
    (*v90)(v33, v85, v14);
    v37(v91, v33, v14);
    sub_4A22C(&qword_C6338, &type metadata accessor for AttributedString);
    v38 = v33;
    v39 = v92;
    sub_95E28();
    v40 = *v89;
    v41 = v93;
    if ((*v89)(v39, 1, v93) == 1)
    {
      goto LABEL_12;
    }

    v77 = *v76;
    v77(v84, v92, v41);
    v37(v91, v33, v14);
    v42 = v75;
    sub_95E28();
    if (v40(v42, 1, v41) == 1)
    {
      (*v72)(v84, v41);
      v39 = v42;
      v38 = v73;
      v14 = v74;
LABEL_12:
      sub_4C60(v39, &qword_C6330);
      v43 = 1;
      v44 = v83;
      v33 = v38;
      goto LABEL_15;
    }

    v45 = v69;
    v77(v69, v42, v41);
    sub_4A22C(&qword_C6340, &type metadata accessor for AttributedString.Index);
    v46 = v84;
    result = sub_97D88();
    if ((result & 1) == 0)
    {
      goto LABEL_25;
    }

    v47 = v67;
    v48 = v77;
    v77(v67, v46, v93);
    v49 = v71;
    v48(v47 + *(v71 + 48), v45, v93);
    v50 = v68;
    sub_4BF8(v47, v68, &qword_C6328);
    v51 = *(v49 + 48);
    v52 = v83;
    v48(v83, v50, v93);
    v88 = *v72;
    v88((v50 + v51), v93);
    v53 = v47;
    v44 = v52;
    v54 = v93;
    sub_216C8(v53, v50, &qword_C6328);
    v48(v52 + *(v87 + 36), (v50 + *(v71 + 48)), v54);
    v88(v50, v54);
    v43 = 0;
    v33 = v73;
    v14 = v74;
LABEL_15:
    v30 &= v30 - 1;
    v55 = v87;
    (*v80)(v44, v43, 1, v87);
    (*v79)(v33, v14);
    v56 = (*v78)(v44, 1, v55);
    v31 = v81;
    if (v56 != 1)
    {
      v57 = v14;
      v58 = v33;
      v59 = v64;
      sub_216C8(v44, v64, &qword_C50F0);
      sub_216C8(v59, v66, &qword_C50F0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_158D8(0, v70[2] + 1, 1, v70);
      }

      v61 = v70[2];
      v60 = v70[3];
      v33 = v58;
      if (v61 >= v60 >> 1)
      {
        v70 = sub_158D8(v60 > 1, v61 + 1, 1, v70);
      }

      v14 = v57;
      v62 = v70;
      v70[2] = v61 + 1;
      result = sub_216C8(v66, v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v61, &qword_C50F0);
      v27 = v82;
      goto LABEL_4;
    }

    result = sub_4C60(v44, &qword_C6320);
    v36 = v35;
    v27 = v82;
  }

  while (v30);
LABEL_6:
  while (1)
  {
    v35 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v35 >= v31)
    {

      return v70;
    }

    v30 = *(v27 + 8 * v35);
    ++v36;
    if (v30)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_40C9C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6320);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  __chkstk_darwin(v9);
  v27 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v22 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return &_swiftEmptyArrayStorage;
  }

  v15 = (a3 + 32);
  v23 = v12;
  v16 = (v12 + 48);
  v29 = &_swiftEmptyArrayStorage;
  v24 = v9;
  v25 = a1;
  while (1)
  {
    v28 = *v15;
    a1(&v28);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_4C60(v8, &qword_C6320);
    }

    else
    {
      v17 = v26;
      sub_216C8(v8, v26, &qword_C50F0);
      sub_216C8(v17, v27, &qword_C50F0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_158D8(0, v29[2] + 1, 1, v29);
      }

      v19 = v29[2];
      v18 = v29[3];
      if (v19 >= v18 >> 1)
      {
        v29 = sub_158D8(v18 > 1, v19 + 1, 1, v29);
      }

      v20 = v29;
      v29[2] = v19 + 1;
      sub_216C8(v27, v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, &qword_C50F0);
      v9 = v24;
      a1 = v25;
    }

    ++v15;
    if (!--v14)
    {
      return v29;
    }
  }

  return v29;
}

uint64_t sub_40F7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  sub_4BF8(v1 + v6, v5, &qword_C7780);
  v7 = sub_4A6E0(v5, a1);
  sub_4C60(v5, &qword_C7780);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
  }

  else
  {
    swift_beginAccess();
    sub_36FB0(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_4C60(a1, &qword_C7780);
}

void *sub_41168(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

LABEL_22:
  v3 = sub_98778();
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  v4 = 0;
  v5 = &_swiftEmptyArrayStorage;
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_986C8();
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * i + 32);

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = *(v7 + 16);
      if (!(v8 >> 61))
      {
        break;
      }

      if (v4 == v3)
      {
        return v5;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_157A4(0, v5[2] + 1, 1, v5);
    }

    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      v5 = sub_157A4((v9 > 1), v10 + 1, 1, v5);
    }

    v5[2] = v10 + 1;
    v11 = &v5[2 * v10];
    v11[4] = v7;
    v11[5] = v8;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_412DC(char *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = a1;
    sub_41B18(a1);
    swift_getKeyPath();
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_962A8();

    v5 = *(*&v3[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    v6 = *(*&v3[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    if (v6 >> 14 >= v5 >> 14)
    {

      sub_45370(v5, v6, 0);
    }

    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_962A8();

    v7 = *(*&a1[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    v8 = *(*&a1[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    if (v8 >> 14 >= v7 >> 14)
    {

      sub_44F34(v7, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_414DC(char *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = a1;
    sub_41B18(a1);
    swift_getKeyPath();
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_962A8();

    v5 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText) + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
    if (*(v5 + 16) == 1)
    {
      v7 = *v5;
      v6 = *(v5 + 8);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 1;

      sub_451E8(v7, v6, 1);
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);

    sub_96298();
  }

  else
  {
    swift_getKeyPath();
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_962A8();

    v9 = *(*&a1[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    v10 = *(*&a1[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    if (v10 >> 14 >= v9 >> 14)
    {

      sub_45090(v9, v10);
    }

    __break(1u);
  }

  return result;
}

void *sub_417AC()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v1 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange);
  v2 = v1;
  return v1;
}

BOOL static TextContent.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_98838();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

void sub_418E0(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime) == a1)
  {
    *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
  }
}

uint64_t sub_41A00(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
  }

  return result;
}

void sub_41B18(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange;
  v5 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for StringTextRange();
  v6 = v5;
  v7 = a1;
  v8 = sub_98448();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_41CA0(char *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState;
  v7 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState);
  v6 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState + 8);
  if (v7 != &dword_0 + 1)
  {
    if (a1 != &dword_0 + 1)
    {
      if (v7)
      {
        if (a1)
        {
          type metadata accessor for StringTextRange();
          sub_3C610(v7);
          sub_3C610(a1);
          v10 = sub_98448();
          sub_375D8(a1);
          sub_375D8(v7);
          if ((v10 & 1) != 0 && v6 == *&a2)
          {
            v8 = *v5;
            goto LABEL_4;
          }
        }
      }

      else if (!a1 && v6 == *&a2)
      {
        v8 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
    sub_375D8(a1);

    return;
  }

  if (a1 != &dword_0 + 1)
  {
    goto LABEL_8;
  }

  v8 = &dword_0 + 1;
LABEL_4:
  *v5 = a1;
  *(v5 + 8) = *&a2;
  sub_3C610(a1);
  sub_375D8(v8);
  sub_43518();

  sub_375D8(a1);
}

unint64_t sub_41ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_96638();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (v11)
  {
    v26[2] = a1;
    v12 = 0;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = a3 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v27 = *(v13 + 56);
    v28 = (v13 - 8);
    v29 = v14;
    v30 = &_swiftEmptyArrayStorage;
    v26[3] = a2;
    v26[1] = v13;
    while (1)
    {
      v29(v10, v15, v6, v8);
      sub_965F8();
      sub_965F8();

      v16 = sub_97F28();

      if (sub_965E8())
      {
        result = sub_97EC8();
        if (__OFADD__(v12, v16))
        {
          goto LABEL_20;
        }

        v18 = result;
        result = sub_97EC8();
        if (result >> 14 < v18 >> 14)
        {
          goto LABEL_21;
        }

        v19 = result;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_156A0(0, *(v30 + 2) + 1, 1, v30);
        }

        v21 = *(v30 + 2);
        v20 = *(v30 + 3);
        if (v21 >= v20 >> 1)
        {
          v30 = sub_156A0((v20 > 1), v21 + 1, 1, v30);
        }

        result = (*v28)(v10, v6);
        v22 = v30;
        *(v30 + 2) = v21 + 1;
        v23 = &v22[16 * v21];
        *(v23 + 4) = v18;
        *(v23 + 5) = v19;
      }

      else
      {
        result = (*v28)(v10, v6);
      }

      v24 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v25 = __OFADD__(v12, v24);
      v12 += v24;
      if (v25)
      {
        goto LABEL_19;
      }

      v15 += v27;
      if (!--v11)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_421B0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
  }
}

uint64_t sub_4233C(uint64_t result, char a2, void *a3)
{
  v4 = v3 + *a3;
  if ((*(v4 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v4 != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v4 = *&result;
    *(v4 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_96298();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t TextContent.ID.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_986A8(35);
  v10._countAndFlagsBits = 0x746E6F4374786554;
  v10._object = 0xEF2844492E746E65;
  sub_97EE8(v10);
  sub_980E8();
  v11._countAndFlagsBits = 0x202E2E2E20;
  v11._object = 0xE500000000000000;
  sub_97EE8(v11);
  sub_980E8();
  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  sub_97EE8(v12);

  sub_49F04(20);

  v3 = sub_97E68();
  v5 = v4;

  v13._countAndFlagsBits = v3;
  v13._object = v5;
  sub_97EE8(v13);

  v14._countAndFlagsBits = 0x202E2E2E20;
  v14._object = 0xE500000000000000;
  sub_97EE8(v14);

  sub_49FA0(0x14uLL, v2, v1);

  v6 = sub_97E68();
  v8 = v7;

  v15._countAndFlagsBits = v6;
  v15._object = v8;
  sub_97EE8(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_97EE8(v16);
  return 0;
}

uint64_t TextContent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 32);
}

uint64_t sub_42710(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  return *(v2 + *a2);
}

uint64_t sub_427CC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v7 = (v5 + *a2);
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *a3 = v8;
  *(a3 + 8) = v7;
  return result;
}

double sub_428E4()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  return *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);
}

uint64_t sub_4299C()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();
}

uint64_t sub_42A48@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v3 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  return sub_4BF8(v5 + v3, a1, &qword_C7780);
}

uint64_t sub_42B20(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  swift_beginAccess();
  sub_36FB0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_42B8C()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  return *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected);
}

uint64_t sub_42C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  *a2 = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected);
  return result;
}

double sub_42D0C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);

  sub_962A8();

  v3 = *(v2 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive);

  if (v3 == 1 && (v4 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_presentationContext), swift_getKeyPath(), sub_4A22C(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext), sub_962A8(), , v4[16] == 1) && !v4[72] && v4[64] != 128)
  {
    return 1.05;
  }

  else
  {
    return 1.0;
  }
}

id sub_42EF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  __chkstk_darwin(v2 - 8);
  v4 = v25 - v3;
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  sub_4BF8(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_speaker, v4, &qword_C5848);
  v6 = sub_96668();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_4C60(v4, &qword_C5848);
  }

  else
  {
    v25[0] = sub_96658();
    v9 = v8;
    (*(v7 + 8))(v4, v6);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_9AF50;
      if (qword_C4650 != -1)
      {
        swift_once();
      }

      v11 = qword_C5190;
      *(inited + 32) = qword_C5190;
      *(inited + 64) = &type metadata for TranscriptSelectionContentType;
      *(inited + 40) = 4;
      v12 = v11;
      sub_76C64(inited);
      swift_setDeallocating();
      sub_4C60(inited + 32, &unk_C77B0);
      v25[1] = v25[0];
      v25[2] = v9;

      v26._countAndFlagsBits = 10;
      v26._object = 0xE100000000000000;
      sub_97EE8(v26);

      v13 = objc_allocWithZone(NSAttributedString);
      v14 = sub_97DC8();

      type metadata accessor for Key(0);
      sub_4A22C(&qword_C47F8, type metadata accessor for Key);
      isa = sub_97D58().super.isa;

      v16 = [v13 initWithString:v14 attributes:isa];

      [v5 appendAttributedString:v16];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53A8);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_9AF50;
  if (qword_C4650 != -1)
  {
    swift_once();
  }

  v18 = qword_C5190;
  *(v17 + 32) = qword_C5190;
  *(v17 + 64) = &type metadata for TranscriptSelectionContentType;
  *(v17 + 40) = 2;
  v19 = v18;
  sub_76C64(v17);
  swift_setDeallocating();
  sub_4C60(v17 + 32, &unk_C77B0);
  v20 = objc_allocWithZone(NSAttributedString);
  v21 = sub_97DC8();
  type metadata accessor for Key(0);
  sub_4A22C(&qword_C47F8, type metadata accessor for Key);
  v22 = sub_97D58().super.isa;

  v23 = [v20 initWithString:v21 attributes:v22];

  [v5 appendAttributedString:v23];
  return v5;
}

uint64_t sub_43398()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v1 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);

  sub_962A8();

  v2 = *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive);

  if (v2 != 1)
  {
    return 0;
  }

  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x80000000000A3EF0;
  v5._object = 0x80000000000A3F20;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  return sub_967C8(v4, v5);
}

void sub_43518()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v1 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState);
  swift_getKeyPath();
  if (v1 == &dword_0 + 1)
  {
    sub_962A8();

    v2 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText;

    sub_45B2C(0);

    swift_getKeyPath();
    sub_962A8();

    if (*(*(v0 + v2) + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 16) == 1)
    {

      sub_4554C(0, 0, 1);

      return;
    }

    goto LABEL_7;
  }

  v3 = v1;
  sub_962A8();

  sub_45B2C(1);

  swift_getKeyPath();
  sub_962A8();

  if (v1)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    v5 = *(*&v3[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition] + OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position);
    if (v5 >> 14 < v4 >> 14)
    {
      __break(1u);
LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);

      sub_96298();

      return;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_45800(v4, v5, v1 == 0);

  sub_375D8(v1);
}

void *sub_43898()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v1 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState);
  sub_3C610(v1);
  return v1;
}

id sub_43958@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v4 = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState);
  v5 = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_3C610(v4);
}

void sub_43A10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState);
  v4 = *(a1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState);
  *v3 = a2;
  v3[1] = a3;
  sub_3C610(a2);
  sub_375D8(v4);
  sub_43518();
}

uint64_t sub_43A70()
{
  v1 = sub_97888();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_978A8();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_978C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected) == 1)
  {
    *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v0;
    *(&v20 - 8) = 1;
    aBlock[0] = v0;
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
  }

  sub_4AE8();
  v14 = sub_982E8();
  sub_978B8();
  sub_978E8();
  v21 = *(v7 + 8);
  v21(v9, v6);
  aBlock[4] = sub_4AE08;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_279B0;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  sub_97898();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_4A22C(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
  v16 = v6;
  sub_EA78(&qword_C7920, &qword_C4E18);
  v17 = v24;
  v18 = v26;
  sub_98618();
  sub_98298();
  _Block_release(v15);

  (*(v25 + 8))(v17, v18);
  (*(v22 + 8))(v5, v23);
  return (v21)(v12, v16);
}

uint64_t sub_43F1C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
    sub_96298();
  }

  else
  {
    *(result + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected) = 0;
  }

  return result;
}

uint64_t TextContent.deinit()
{

  sub_4C60(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_speaker, &qword_C5848);
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_splitStyle;
  v2 = sub_96688();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_4C60(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage, &qword_C7780);

  sub_375D8(*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState));

  v3 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent___observationRegistrar;
  v4 = sub_962E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TextContent.__deallocating_deinit()
{
  TextContent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_4426C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  return *(v4 + *a4);
}

uint64_t sub_4435C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 32);
}

uint64_t sub_44374@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v3 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
  swift_beginAccess();
  v4 = sub_95E48();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_4446C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v4 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
  swift_beginAccess();
  v5 = sub_95E48();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_44564(uint64_t a1)
{
  v2 = sub_95E48();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_44630(v4);
}

uint64_t sub_44630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_95E48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_4A22C(&qword_C6318, &type metadata accessor for AttributedString);
  v14[0] = a1;
  LOBYTE(a1) = sub_97D98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_96298();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_448D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
  swift_beginAccess();
  v5 = sub_95E48();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_4496C()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v1 = *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);

  return v1;
}

uint64_t sub_44A28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  v6 = *(v2 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_98838() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_96298();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_44BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_44C3C(char a1)
{
  v2 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed;
  if (*(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed) = a1 & 1;
    swift_getKeyPath();
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_962A8();

    if (*(v1 + v2) == 1)
    {
      swift_getKeyPath();
      sub_962A8();

      if (*(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) == 1)
      {
        return sub_468E8();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_96298();
  }

  return result;
}

uint64_t sub_44E20(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed;
  *(a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed) = a2;
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  if (*(a1 + v3) == 1)
  {
    swift_getKeyPath();
    sub_962A8();

    if (*(a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) == 1)
    {
      return sub_468E8();
    }
  }

  return result;
}

uint64_t sub_44F34(unint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  swift_getKeyPath();
  sub_962C8();

  swift_beginAccess();
  LOBYTE(a2) = sub_48960(&v5, a1, a2);
  swift_endAccess();
  swift_getKeyPath();
  sub_962B8();

  if (a2)
  {
    return sub_468E8();
  }

  return result;
}

uint64_t sub_45090(unint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  swift_getKeyPath();
  sub_962C8();

  swift_beginAccess();
  sub_49A78(a1, a2);
  LOBYTE(a2) = v4;
  swift_endAccess();
  swift_getKeyPath();
  sub_962B8();

  if ((a2 & 1) == 0)
  {
    return sub_468E8();
  }

  return result;
}

uint64_t sub_451E8(unint64_t a1, unint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v8 = v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
  if (*(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 16))
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if ((a3 & 1) != 0 || (*v8 ^ a1) >> 14 || (*(v8 + 8) ^ a2) >= 0x4000)
  {
LABEL_7:
    sub_468E8();
    swift_getKeyPath();
    sub_962A8();

    if (*(v8 + 16) == 1)
    {

      sub_96DF8();
    }
  }

  return result;
}

uint64_t sub_45370(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
  v8 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange);
  v9 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 8);
  v10 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 16);
  if (v10)
  {
    if ((a3 & 1) == 0)
    {
LABEL_10:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
      sub_96298();
    }
  }

  else if ((a3 & 1) != 0 || (v8 ^ a1) >> 14 || (v9 ^ a2) >= 0x4000)
  {
    goto LABEL_10;
  }

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;

  return sub_451E8(v8, v9, v10);
}

uint64_t sub_454F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
  v5 = *(a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange);
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4 & 1;
  return sub_451E8(v5, v6, v7);
}

uint64_t sub_4554C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange;
  v6 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange);
  v5 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 8);
  v7 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 16);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  if (*(v4 + 16))
  {
    if (v7)
    {
      return result;
    }

    return sub_468E8();
  }

  if ((v7 & 1) != 0 || (*v4 ^ v6) >> 14 || (*(v4 + 8) ^ v5) >= 0x4000)
  {
    return sub_468E8();
  }

  return result;
}

uint64_t sub_45668(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  return *(v2 + *a2);
}

__n128 sub_45710@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v4 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 16);
  result = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_45800(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange);
  if (*(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 16))
  {
    if ((a3 & 1) == 0)
    {
LABEL_10:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
      sub_96298();
    }
  }

  else if ((a3 & 1) != 0 || (*v4 ^ a1) >> 14 || (v4[1] ^ a2) >= 0x4000)
  {
    goto LABEL_10;
  }

  v5 = a3 & 1;

  return sub_4554C(a1, a2, v5);
}

uint64_t sub_4599C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  return *(v2 + *a2);
}

uint64_t sub_45A50@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_45B2C(char a1)
{
  v2 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive;
  v3 = *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive) = a1 & 1;
    swift_getKeyPath();
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_962A8();

    if (v3 != *(v1 + v2))
    {
      return sub_468E8();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_96298();
  }

  return result;
}

uint64_t sub_45CC8(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive;
  v4 = *(a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive);
  *(a1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive) = a2;
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  if (v4 != *(a1 + v3))
  {
    return sub_468E8();
  }

  return result;
}

uint64_t sub_45D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v7 = sub_95EB8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_95E48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed) = 0;
  v13 = v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive) = 0;
  v15 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText_activeSearchResultFrame;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F40);
  swift_allocObject();
  v16 = sub_96E18();
  v20[2] = v15;
  *(v3 + v15) = v16;
  v17 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__searchRanges;
  *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__searchRanges) = &_swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) = 0;
  v20[0] = v17;
  v20[1] = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText___observationRegistrar;
  sub_962D8();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  sub_95EA8();
  sub_95E58();
  (*(v9 + 16))(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent, v11, v8);
  v23 = v11;
  v18 = sub_40C9C(sub_4AE48, v22, v21);

  *(v4 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText_descriptorRanges) = v18;
  sub_47D04();
  (*(v9 + 8))(v11, v8);
  return v4;
}

uint64_t sub_460FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__searchRanges;
  swift_beginAccess();
  if (sub_49D6C(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_96298();
  }
}

uint64_t sub_46238(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    sub_96298();
  }

  return result;
}

uint64_t sub_46350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6328);
  v4 = __chkstk_darwin(v38);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v36 - v6;
  v7 = sub_95E48();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6330);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = sub_95E18();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v40 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v21;
  v22 = *(v8 + 16);
  v41 = a1;
  v22(v10, a1, v7);
  sub_4A22C(&qword_C6338, &type metadata accessor for AttributedString);
  sub_95E28();
  v44 = v18;
  v23 = *(v18 + 48);
  if (v23(v16, 1, v17) == 1)
  {
    v14 = v16;
LABEL_5:
    sub_4C60(v14, &qword_C6330);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
    return (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
  }

  v36 = *(v44 + 32);
  v36(v45, v16, v17);
  v22(v10, v41, v7);
  sub_95E28();
  if (v23(v14, 1, v17) == 1)
  {
    (*(v44 + 8))(v45, v17);
    goto LABEL_5;
  }

  v26 = v44;
  v27 = v40;
  v36(v40, v14, v17);
  sub_4A22C(&qword_C6340, &type metadata accessor for AttributedString.Index);
  result = sub_97D88();
  if (result)
  {
    v28 = v36;
    v29 = v37;
    v36(v37, v45, v17);
    v30 = v38;
    v28(v29 + *(v38 + 48), v27, v17);
    v31 = v39;
    sub_4BF8(v29, v39, &qword_C6328);
    v32 = *(v30 + 48);
    v33 = v43;
    v28(v43, v31, v17);
    v45 = *(v26 + 8);
    (v45)(v31 + v32, v17);
    sub_216C8(v29, v31, &qword_C6328);
    v34 = *(v30 + 48);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
    v28(v33 + *(v35 + 36), (v31 + v34), v17);
    (v45)(v31, v17);
    return (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_468E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6320);
  v3 = __chkstk_darwin(v2 - 8);
  v59 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = v54 - v6;
  __chkstk_darwin(v5);
  v9 = v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  v12 = __chkstk_darwin(v10);
  v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v54 - v15;
  __chkstk_darwin(v14);
  v57 = v54 - v17;
  v18 = sub_95EB8();
  __chkstk_darwin(v18 - 8);
  v19 = sub_95E48();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = __chkstk_darwin(v19);
  v60 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v54 - v22;
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText___observationRegistrar;
  v66[0] = v0;
  v25 = sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  if (*(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed))
  {

    sub_95EA8();
    sub_95E58();
    swift_getKeyPath();
    v66[0] = v0;
    sub_962A8();

    if ((*(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 16) & 1) == 0)
    {
      sub_46350(v23, *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 8), v9);
      v28 = v63;
      v27 = v64;
      if ((*(v64 + 48))(v9, 1, v63) == 1)
      {
        v29 = &qword_C6320;
        v30 = v9;
      }

      else
      {
        v56 = v25;
        v32 = v9;
        v33 = v57;
        sub_216C8(v32, v57, &qword_C50F0);
        sub_4BF8(v33, v7, &qword_C50F0);
        (*(v27 + 56))(v7, 0, 1, v28);
        sub_47264(v7, sub_4AF2C, &type metadata for TranscriptTextContentRenderer.Read);
        sub_4C60(v7, &qword_C6320);
        v30 = v33;
        v29 = &qword_C50F0;
        v25 = v56;
      }

      sub_4C60(v30, v29);
    }

    swift_getKeyPath();
    v66[0] = v0;
    sub_962A8();

    swift_beginAccess();

    v35 = sub_40320(v34, v23);
    v57 = 0;

    v36 = *(v35 + 16);
    if (v36)
    {
      v55 = v1;
      v56 = v25;
      v54[0] = v35;
      v54[1] = v24;
      v37 = v63;
      v38 = v35 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v39 = *(v64 + 72);
      v40 = (v64 + 56);
      do
      {
        sub_4BF8(v38, v16, &qword_C50F0);
        sub_4BF8(v16, v7, &qword_C50F0);
        (*v40)(v7, 0, 1, v37);
        sub_47264(v7, sub_4AFD4, &type metadata for TranscriptTextContentRenderer.SecondaryHighlight);
        sub_4C60(v7, &qword_C6320);
        sub_4C60(v16, &qword_C50F0);
        v38 += v39;
        --v36;
      }

      while (v36);

      v1 = v55;
      v41 = v62;
    }

    else
    {

      v41 = v62;
    }

    swift_getKeyPath();
    v66[0] = v1;
    sub_962A8();

    v42 = v64;
    if ((*(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 16) & 1) == 0)
    {
      v43 = v59;
      sub_46350(v23, *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 8), v59);
      v44 = v63;
      if ((*(v42 + 48))(v43, 1, v63) == 1)
      {
        v45 = &qword_C6320;
        v46 = v43;
      }

      else
      {
        v47 = v58;
        sub_216C8(v43, v58, &qword_C50F0);
        sub_4BF8(v47, v7, &qword_C50F0);
        (*(v42 + 56))(v7, 0, 1, v44);
        sub_47264(v7, sub_4AF80, &type metadata for TranscriptTextContentRenderer.PrimaryHighlight);
        sub_4C60(v7, &qword_C6320);
        v48 = sub_976C8();
        sub_EA78(&qword_C62F0, &qword_C50F0);
        v49 = v23;
        v50 = sub_95E78();
        v65 = v48;
        sub_4AE84();
        sub_95EE8();
        v50(v66, 0);
        v23 = v49;
        v46 = v47;
        v45 = &qword_C50F0;
        v41 = v62;
      }

      sub_4C60(v46, v45);
    }

    v51 = v60;
    v52 = v61;
    (*(v61 + 16))(v60, v23, v41);
    sub_44630(v51);
    sub_47D04();
    if (*(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v54[-2] = v1;
      LOBYTE(v54[-1]) = 0;
      v66[0] = v1;
      sub_96298();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) = 0;
    }

    return (*(v52 + 8))(v23, v41);
  }

  else if (*(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) == 1)
  {
    *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString) = 1;
  }

  else
  {
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    v54[-2] = v0;
    LOBYTE(v54[-1]) = 1;
    v66[0] = v0;
    sub_96298();
  }

  return result;
}

uint64_t sub_47264(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v76 = a2;
  v77 = a3;
  v78 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6358);
  v5 = __chkstk_darwin(v4 - 8);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v74 = &v57 - v8;
  __chkstk_darwin(v7);
  v82 = &v57 - v9;
  v79 = sub_97528();
  v59 = *(v79 - 8);
  __chkstk_darwin(v79);
  v85 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_95DF8();
  v70 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_95DD8();
  v58 = *(v84 - 8);
  v12 = __chkstk_darwin(v84);
  v83 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v57 - v14;
  v15 = sub_95E08();
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_95ED8();
  v17 = *(v71 - 8);
  __chkstk_darwin(v71);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6360);
  __chkstk_darwin(v66);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6320);
  __chkstk_darwin(v22 - 8);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v72 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v57 - v29;
  v32 = v31;
  sub_4BF8(v78, v24, &qword_C6320);
  v33 = *(v26 + 48);
  v78 = v32;
  if (v33(v24, 1, v32) == 1)
  {
    v34 = &qword_C6320;
    v35 = v24;
  }

  else
  {
    sub_216C8(v24, v30, &qword_C50F0);
    v67 = sub_EA78(&qword_C62F0, &qword_C50F0);
    v69 = v3;
    sub_95E88();
    v36 = v63;
    sub_95EC8();
    (*(v17 + 8))(v19, v71);
    v37 = v64;
    (v64[2])(v21, v36, v15);
    v38 = *(v66 + 36);
    v71 = sub_4A22C(&qword_C6368, &type metadata accessor for AttributedString.Runs);
    sub_98118();
    (v37[1])(v36, v15);
    ++v70;
    v64 = (v58 + 2);
    v63 = (v58 + 4);
    v62 = (v59 + 6);
    v57 = (v59 + 4);
    v61 = (v59 + 2);
    v60 = (v59 + 7);
    ++v59;
    ++v58;
    v39 = v79;
    v40 = v30;
    v68 = v30;
    v66 = v38;
    for (i = v21; ; v21 = i)
    {
      v47 = v80;
      sub_98138();
      sub_4A22C(&qword_C6370, &type metadata accessor for AttributedString.Runs.Index);
      v48 = v81;
      v49 = sub_97D98();
      (*v70)(v47, v48);
      v50 = v82;
      if (v49)
      {
        break;
      }

      v51 = sub_98158();
      v52 = v73;
      v53 = v84;
      (*v64)(v73);
      v51(v86, 0);
      v54 = v15;
      sub_98148();
      (*v63)(v83, v52, v53);
      sub_4AED8();
      sub_95DE8();
      v55 = *v62;
      if ((*v62)(v50, 1, v39) == 1)
      {
        v41 = v85;
        sub_97518();
        v42 = v55(v50, 1, v39);
        if (v42 != 1)
        {
          v42 = sub_4C60(v50, &qword_C6358);
        }
      }

      else
      {
        v41 = v85;
        v42 = (*v57)(v85, v50, v39);
      }

      v76(v42);
      sub_97508();
      v43 = v72;
      v44 = v83;
      sub_95DC8();
      v45 = v74;
      (*v61)(v74, v41, v39);
      (*v60)(v45, 0, 1, v39);
      v46 = sub_95E78();
      sub_4BF8(v45, v75, &qword_C6358);
      sub_95EE8();
      sub_4C60(v45, &qword_C6358);
      v46(v86, 0);
      v39 = v79;
      sub_4C60(v43, &qword_C50F0);
      (*v59)(v85, v39);
      (*v58)(v44, v84);
      v15 = v54;
      v40 = v68;
    }

    sub_4C60(v21, &qword_C6360);
    v34 = &qword_C50F0;
    v35 = v40;
  }

  return sub_4C60(v35, v34);
}

uint64_t sub_47D04()
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C50F0);
  result = __chkstk_darwin(v13);
  v4 = v12 - v3;
  v5 = *(v0 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText_descriptorRanges);
  v6 = *(v5 + 16);
  if (v6)
  {
    result = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12[0] = *(v2 + 72);
    v12[1] = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
    do
    {
      v15 = result;
      v16 = v6;
      sub_4BF8(result, v4, &qword_C50F0);
      if (qword_C4698 != -1)
      {
        swift_once();
      }

      v7 = qword_CD500;
      swift_getKeyPath();
      v18[0] = v0;
      sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);

      sub_962A8();

      v18[0] = v0;
      swift_getKeyPath();
      sub_962C8();

      swift_beginAccess();
      v14 = sub_EA78(&qword_C62F0, &qword_C50F0);
      v8 = sub_95E78();
      v17 = v7;
      sub_4AA94();
      sub_95EE8();
      v8(v18, 0);
      swift_endAccess();
      v18[0] = v0;
      swift_getKeyPath();
      sub_962B8();

      if (qword_C46A8 != -1)
      {
        swift_once();
      }

      v9 = qword_CD510;
      swift_getKeyPath();
      v18[0] = v0;
      v10 = v9;
      sub_962A8();

      v18[0] = v0;
      swift_getKeyPath();
      sub_962C8();

      swift_beginAccess();
      v11 = sub_95E78();
      v17 = v9;
      sub_4AAE8();
      sub_95EE8();
      v11(v18, 0);
      swift_endAccess();
      v18[0] = v0;
      swift_getKeyPath();
      sub_962B8();

      sub_4C60(v4, &qword_C50F0);
      result = v15 + v12[0];
      v6 = v16 - 1;
    }

    while (v16 != 1);
  }

  return result;
}

uint64_t sub_48150()
{
  swift_getKeyPath();
  sub_4A22C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  swift_beginAccess();
}

uint64_t sub_48210(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__searchRanges;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_482D0()
{

  v1 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
  v2 = sub_95E48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText___observationRegistrar;
  v4 = sub_962E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t TextContent.description.getter()
{
  sub_986A8(104);
  v10._object = 0x80000000000A3CB0;
  v10._countAndFlagsBits = 0xD000000000000014;
  sub_97EE8(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5BB0);
  v11._countAndFlagsBits = sub_97E48();
  sub_97EE8(v11);

  v12._object = 0x80000000000A3B40;
  v12._countAndFlagsBits = 0xD000000000000014;
  sub_97EE8(v12);
  v13._countAndFlagsBits = sub_97E48();
  sub_97EE8(v13);

  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = 0x80000000000A3B60;
  sub_97EE8(v14);
  swift_getKeyPath();
  sub_4A22C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  v15._countAndFlagsBits = sub_97E48();
  sub_97EE8(v15);

  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000000000A3B80;
  sub_97EE8(v16);
  swift_getKeyPath();
  sub_962A8();

  v17._countAndFlagsBits = sub_97E48();
  sub_97EE8(v17);

  v18._countAndFlagsBits = 0x6E65746E6F43202CLL;
  v18._object = 0xEB00000000203A74;
  sub_97EE8(v18);
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_49F04(20);
  v3 = sub_97E68();
  v5 = v4;

  v19._countAndFlagsBits = v3;
  v19._object = v5;
  sub_97EE8(v19);

  v20._countAndFlagsBits = 0x202E2E2E20;
  v20._object = 0xE500000000000000;
  sub_97EE8(v20);
  sub_49FA0(0x14uLL, v2, v1);

  v6 = sub_97E68();
  v8 = v7;

  v21._countAndFlagsBits = v6;
  v21._object = v8;
  sub_97EE8(v21);

  return 0;
}

uint64_t sub_48790(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v33 = *a2;
  v34 = v5;
  v6 = *(a2 + 32);
  v35 = v6;
  v7 = *v2;
  v25 = v33;
  v26 = v5;
  v31[0] = v33;
  v31[1] = v5;
  v32 = v6;
  sub_988D8();
  TranscriptContentViewModel.ID.hash(into:)(&v28);
  v8 = sub_98918();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 40 * v10;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      *&v28 = *v12;
      *(&v28 + 1) = v13;
      *&v29 = v14;
      *(&v29 + 1) = v15;
      v30 = *(v12 + 32);
      sub_203C8(v28, v13, v14, v15, v30);
      v16 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v28, &v33);
      sub_20438(v28, *(&v28 + 1), v29, *(&v29 + 1), v30);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v25 = v33;
        v26 = v34;
        v6 = v35;
        goto LABEL_6;
      }
    }

    sub_20438(v33, *(&v33 + 1), v34, *(&v34 + 1), v35);
    v19 = *(v7 + 48) + 40 * v10;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    *a1 = *v19;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    v24 = *(v19 + 32);
    *(a1 + 32) = v24;
    sub_203C8(v20, v21, v22, v23, v24);
    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v33;
    v29 = v34;
    v30 = v35;
    v27 = *v3;
    sub_2051C(&v28, v31);
    sub_48F9C(&v28, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    *a1 = v25;
    *(a1 + 16) = v26;
    *(a1 + 32) = v6;
    return 1;
  }
}

uint64_t sub_48960(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_988D8();
  sub_98908(a2 >> 14);
  sub_98908(a3 >> 14);
  v8 = sub_98918();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];
      if (a2 >> 14 == v13 >> 14 && v14 >> 14 == a3 >> 14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = v13;
    a3 = v14;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_49178(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_48A98()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6348);
  result = sub_98678();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v1;
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      LOBYTE(v17) = *(v17 + 32);
      v35 = v18;
      v36 = v19;
      v33 = v20;
      v37 = v20;
      v38 = v21;
      v32 = v17;
      v39 = v17;
      sub_988D8();
      TranscriptContentViewModel.ID.hash(into:)(v34);
      result = sub_98918();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v33;
      *(v13 + 24) = v21;
      *(v13 + 32) = v32;
      ++*(v4 + 16);
      v2 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_48D34()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6308);
  result = sub_98678();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_988D8();
      sub_98908(v18 >> 14);
      sub_98908(v19 >> 14);
      result = sub_98918();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_48F9C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(result + 16);
  v32 = *result;
  v33 = v6;
  v34 = *(result + 32);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_48A98();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_49308();
      goto LABEL_12;
    }

    sub_495BC();
  }

  v9 = *v3;
  v29 = v32;
  v30 = v33;
  v31 = v34;
  sub_988D8();
  TranscriptContentViewModel.ID.hash(into:)(&v24);
  result = sub_98918();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(v9 + 48) + 40 * a2;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v24 = *v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = *(v12 + 32);
      sub_203C8(v24, v13, v14, v15, v28);
      v16 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v24, &v32);
      result = sub_20438(v24, v25, v26, v27, v28);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 40 * a2;
  v19 = v34;
  v20 = v33;
  *v18 = v32;
  *(v18 + 16) = v20;
  *(v18 + 32) = v19;
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v17 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_98858();
  __break(1u);
  return result;
}

Swift::Int sub_49178(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_48D34();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_49478();
      a3 = v9;
      goto LABEL_15;
    }

    sub_49840();
  }

  v10 = *v4;
  sub_988D8();
  sub_98908(v6 >> 14);
  sub_98908(a2 >> 14);
  result = sub_98918();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v14 = *v13;
      v15 = v13[1] >> 14;
      if (v6 >> 14 == v14 >> 14 && v15 == a2 >> 14)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6310);
  result = sub_98858();
  __break(1u);
  return result;
}

void *sub_49308()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6348);
  v2 = *v0;
  v3 = sub_98668();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        result = sub_203C8(v19, v20, v21, v22, v24);
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

void *sub_49478()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6308);
  v2 = *v0;
  v3 = sub_98668();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
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

uint64_t sub_495BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6348);
  result = sub_98678();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v1;
    v31 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v35 = *v17;
      v18 = v35;
      v36 = v19;
      v37 = v20;
      v38 = v21;
      v39 = v22;
      sub_988D8();
      v32 = v18;
      sub_203C8(v18, v19, v20, v21, v22);
      TranscriptContentViewModel.ID.hash(into:)(v34);
      result = sub_98918();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      v2 = v31;
      *v13 = v32;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v21;
      *(v13 + 32) = v22;
      ++*(v4 + 16);
      v9 = v33;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v30;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_49840()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6308);
  result = sub_98678();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_988D8();
      sub_98908(v17 >> 14);
      sub_98908(v18 >> 14);
      result = sub_98918();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_49A78(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_988D8();
  sub_98908(a1 >> 14);
  v7 = a2 >> 14;
  sub_98908(a2 >> 14);
  v8 = sub_98918();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v6 + 48) + 16 * v10);
    v13 = *v12;
    v14 = v12[1] >> 14;
    if (a1 >> 14 == v13 >> 14 && v14 == v7)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_49478();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 16 * v10);
  sub_49BB4(v10);
  result = v19;
  *v3 = v20;
  return result;
}

unint64_t sub_49BB4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_98628();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_988D8();
        sub_98908(v11 >> 14);
        sub_98908(v12 >> 14);
        v13 = sub_98918() & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_49D6C(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_988D8();
    sub_98908(v14 >> 14);
    v16 = v15 >> 14;
    sub_98908(v16);
    result = sub_98918();
    v17 = -1 << *(a2 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1] >> 14;
      if (v14 >> 14 == v21 >> 14 && v22 == v16)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_49F04(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_97EB8();

    return sub_97F68();
  }

  return result;
}

unint64_t sub_49FA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_97EB8();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_97F68();
}

unint64_t sub_4A180()
{
  result = qword_C5E40;
  if (!qword_C5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5E40);
  }

  return result;
}

uint64_t sub_4A1D4(uint64_t a1)
{
  result = sub_4A22C(&qword_C77E0, type metadata accessor for TextContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4A22C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4A274(uint64_t a1)
{
  result = sub_4A22C(&qword_C5E48, type metadata accessor for TextContent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4A2D0()
{
  result = qword_C5E50;
  if (!qword_C5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5E50);
  }

  return result;
}

void sub_4A32C()
{
  sub_4A538(319, &qword_C5EA0, &type metadata accessor for TranscriptModel.Speaker);
  if (v0 <= 0x3F)
  {
    sub_96688();
    if (v1 <= 0x3F)
    {
      sub_4A538(319, &unk_C5EA8, &type metadata accessor for Locale.Language);
      if (v2 <= 0x3F)
      {
        sub_962E8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_4A538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_98578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_4A5C4()
{
  result = sub_95E48();
  if (v1 <= 0x3F)
  {
    result = sub_962E8();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_4A6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_95FC8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5690);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_4BF8(a1, &v21 - v13, &qword_C7780);
  sub_4BF8(a2, &v14[v15], &qword_C7780);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_4BF8(v14, v10, &qword_C7780);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_4A22C(&qword_C56A8, &type metadata accessor for Locale.Language);
      v18 = sub_97D98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_4C60(v14, &qword_C7780);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_4C60(v14, &qword_C5690);
    v17 = 1;
    return v17 & 1;
  }

  sub_4C60(v14, &qword_C7780);
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_4AA94()
{
  result = qword_C62F8;
  if (!qword_C62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C62F8);
  }

  return result;
}

unint64_t sub_4AAE8()
{
  result = qword_C6300;
  if (!qword_C6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6300);
  }

  return result;
}

uint64_t sub_4AC74()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_4ACE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_3C610(*a1);
  sub_41CA0(v1, v2);
}

void sub_4AD84()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerEndTime;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_4ADA4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerStartTime;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_4AE30()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime) = result;
  return result;
}

unint64_t sub_4AE84()
{
  result = qword_C6350;
  if (!qword_C6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6350);
  }

  return result;
}

unint64_t sub_4AED8()
{
  result = qword_C6378;
  if (!qword_C6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6378);
  }

  return result;
}

unint64_t sub_4AF2C()
{
  result = qword_C6380;
  if (!qword_C6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6380);
  }

  return result;
}

unint64_t sub_4AF80()
{
  result = qword_C6388;
  if (!qword_C6388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6388);
  }

  return result;
}

unint64_t sub_4AFD4()
{
  result = qword_C6390;
  if (!qword_C6390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6390);
  }

  return result;
}

uint64_t sub_4B028()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText) = *(v0 + 24);
}

void sub_4B08C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange);
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange) = v2;
  v4 = v2;
}

uint64_t sub_4B0CC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16) + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *v2 = *(v0 + 24);
  *(v2 + 16) = v1;
  return sub_451E8(v3, v4, v5);
}

uint64_t sub_4B2EC(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (v5)
  {
    return 0;
  }

  v6 = *&v4;
  v7 = (*(a2 + 32))(a1, a2);
  if (v8)
  {
    return 0;
  }

  v10 = *&v7;
  type metadata accessor for TextContent(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    swift_getKeyPath();
    sub_4B4D8();
    sub_962A8();

    v13 = v6 - v10 - *(v12 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);
  }

  else
  {
    v13 = v6 - v10;
  }

  return *&v13;
}

uint64_t sub_4B3F8(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))();
  if (v5)
  {
    return (*(a2 + 16))(a1, a2);
  }

  return result;
}

uint64_t sub_4B464(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 56))();
  if (v5)
  {
    return (*(a2 + 24))(a1, a2);
  }

  return result;
}

unint64_t sub_4B4D8()
{
  result = qword_C56A0;
  if (!qword_C56A0)
  {
    type metadata accessor for TextContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C56A0);
  }

  return result;
}

double sub_4B530(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if ((v6 & 1) == 0)
  {
    v7 = *&v4;
    v8 = COERCE_DOUBLE((*(a2 + 24))(a1, a2));
    if ((v9 & 1) == 0)
    {
      return v8 - v7;
    }
  }

  return result;
}

uint64_t ControlsInteractionTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_96E58();
  return v0;
}

uint64_t ControlsInteractionTracker.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC19PodcastsTranscripts26ControlsInteractionTracker___isInteracting;
  v7[15] = 0;
  sub_96E58();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_4B70C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  return v1;
}

uint64_t ControlsInteractionTracker.isInteracting.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t (*ControlsInteractionTracker.isInteracting.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *(a1 + 8) = *(a1 + 9);
  return sub_4B884;
}

uint64_t sub_4B884(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;

  return sub_96EA8();
}

uint64_t ControlsInteractionTracker.isInteractingPublisher.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E68();
  return swift_endAccess();
}

uint64_t ControlsInteractionTracker.deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts26ControlsInteractionTracker___isInteracting;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ControlsInteractionTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts26ControlsInteractionTracker___isInteracting;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_4BA90@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  *a1 = v3;
  return result;
}

uint64_t sub_4BB28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t type metadata accessor for ControlsInteractionTracker()
{
  result = qword_C63C8;
  if (!qword_C63C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExternalNowPlayingEnvironmentTracker.areControlsVisible.getter()
{

  sub_96E08();

  return v1;
}

uint64_t ExternalNowPlayingEnvironmentTracker.__allocating_init(areControlsVisibleSubject:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExternalNowPlayingEnvironmentTracker.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_4BD78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_4BDD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_4BE58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v2)
    {
      v13 = *(&dword_10 + (a1 & 0x1FFFFFFFFFFFFFFFLL));
      v12 = *(&dword_18 + (a1 & 0x1FFFFFFFFFFFFFFFLL));
      *a2 = v13;
      *(a2 + 8) = v12;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 1;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = *(a1 + 16);
      *(a2 + 8) = v6;
      *(a2 + 16) = *(a1 + 32);
      *(a2 + 32) = 0;
    }
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v3 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      v5 = *&stru_20.segname[a1 & 0x1FFFFFFFFFFFFFFFLL];
      v4 = *&stru_20.segname[(a1 & 0x1FFFFFFFFFFFFFFFLL) + 8];
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = *(v3 + 56);
      *(a2 + 32) = 3;
    }

    else
    {
      v8 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      v10 = *&stru_68.segname[(a1 & 0x1FFFFFFFFFFFFFFFLL) - 8];
      v9 = *&stru_68.segname[a1 & 0x1FFFFFFFFFFFFFFFLL];
      v11 = *(v8 + 128);
      *a2 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v11;
      *(a2 + 24) = 0;
      *(a2 + 32) = 4;
    }
  }

  *a2 = *(&dword_10 + (a1 & 0x1FFFFFFFFFFFFFFFLL));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
}

uint64_t sub_4BF14(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1)
    {
      v4[0] = 0;
      v4[1] = 0xE000000000000000;
      v7._countAndFlagsBits = 0x6E6F43206B6E694CLL;
      v7._object = 0xED000020746E6574;
      sub_97EE8(v7);
      type metadata accessor for LinkContent();
LABEL_11:
      sub_98748();
      return v4[0];
    }

    strcpy(v4, "Text Content ");
    HIWORD(v4[1]) = -4864;
    v2._countAndFlagsBits = TextContent.description.getter();
  }

  else
  {
    if (v1 != 2)
    {
      v4[0] = 0;
      v4[1] = 0xE000000000000000;
      if (v1 == 3)
      {
        sub_986A8(18);
        v5._object = 0x80000000000A3FF0;
        v5._countAndFlagsBits = 0xD000000000000010;
        sub_97EE8(v5);
        type metadata accessor for SpeakerContent();
      }

      else
      {
        sub_986A8(16);
        v6._countAndFlagsBits = 0x2072657470616843;
        v6._object = 0xEE0020656C746954;
        sub_97EE8(v6);
        type metadata accessor for ChapterTitleContent();
      }

      goto LABEL_11;
    }

    sub_986A8(17);

    v4[0] = 0x4320746E656C6953;
    v4[1] = 0xEF20746E65746E6FLL;
    v2._countAndFlagsBits = SilentContent.description.getter();
  }

  sub_97EE8(v2);

  return v4[0];
}

uint64_t TranscriptContentViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 1)
  {
    if (v3)
    {
      v11 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 24);
      *a1 = *(v11 + 16);
      *(a1 + 8) = v12;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 1;
    }

    else
    {
      v6 = *(v2 + 24);
      *a1 = *(v2 + 16);
      *(a1 + 8) = v6;
      *(a1 + 16) = *(v2 + 32);
      *(a1 + 32) = 0;
    }
  }

  v4 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v5 = *(v4 + 48);
      *a1 = *(v4 + 40);
      *(a1 + 8) = v5;
      *(a1 + 16) = *(v4 + 56);
      *(a1 + 32) = 3;
    }

    else
    {
      v9 = *(v4 + 112);
      v8 = *(v4 + 120);
      v10 = *(v4 + 128);
      *a1 = v9;
      *(a1 + 8) = v8;
      *(a1 + 16) = v10;
      *(a1 + 24) = 0;
      *(a1 + 32) = 4;
    }
  }

  *a1 = *(v4 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
}

Swift::Int TranscriptContentViewModel.ID.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_988D8();
  TranscriptContentViewModel.ID.hash(into:)(v4);
  return sub_98918();
}

void *sub_4C200(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v4 = a4;
  if (a3)
  {

    return v4;
  }

  if (a4 >> 62)
  {
    v5 = sub_98778();
  }

  else
  {
    v5 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = sub_98718();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v26 = v4 & 0xC000000000000001;
    v27 = v4;
    do
    {
      if (v8)
      {
        v10 = sub_986C8();
      }

      else
      {
        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = *(v10 + 16);
      if (v11 >> 61 == 1)
      {
        v12 = v5;
        v13 = v11 & 0x1FFFFFFFFFFFFFFFLL;
        swift_getKeyPath();
        sub_55E48(&qword_C5850, type metadata accessor for LinkContent);
        sub_962A8();

        if ((*(v13 + 72) & 1) == 0)
        {
          v14 = *(v13 + 64);
          swift_getKeyPath();
          sub_962A8();

          if (*(v13 + 88) == 1)
          {
            v15 = v14 + 300.0;
            v16 = sub_98978();
            if (v15 > v16)
            {
              v15 = v16;
            }

            v17 = *(v10 + 16);
            if (v17 >> 61 == 1)
            {
              v18 = v17 & 0x1FFFFFFFFFFFFFFFLL;
              v19 = sub_55E48(&qword_C52B0, type metadata accessor for LinkContent);
              v20 = *(v19 + 56);
              v21 = type metadata accessor for LinkContent();

              v22 = v20(v21, v19);
              if (v23 & 1) != 0 && (v22 = (*(v19 + 24))(v21, v19), (v24))
              {
                v25 = 1.79769313e308;
              }

              else
              {
                v25 = *&v22;
              }

              if (v15 >= v25)
              {
                v15 = v25;
              }

              if ((*(v18 + 88) & 1) != 0 || *(v18 + 80) != v15)
              {
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                sub_96298();
              }

              else
              {
                *(v18 + 80) = v15;
                *(v18 + 88) = 0;
              }
            }
          }
        }

        v5 = v12;
        v8 = v26;
        v4 = v27;
      }

      ++v7;
      sub_986F8();
      sub_98728();
      sub_98738();
      sub_98708();
    }

    while (v5 != v7);
    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_4C5C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v71 = sub_96AB8();
  v74 = *(v71 - 8);
  __chkstk_darwin(v71);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v79[0] = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
  v77 = sub_269B8(&qword_C5768, &unk_C7EF0);
  v78 = v12;
  if ((sub_98128() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_9CF70;
    v33 = sub_98978();
    v34 = sub_98978();
    type metadata accessor for SilentContent();
    v35 = swift_allocObject();
    *(v35 + 24) = 0;
    *(v35 + 32) = 1;
    *(v35 + 40) = 0;
    *(v35 + 48) = 1;
    *(v35 + 56) = 0;
    *(v35 + 64) = 1;
    *(v35 + 72) = 0;
    *(v35 + 80) = 1;
    *(v35 + 88) = &_swiftEmptyArrayStorage;
    v79[0] = xmmword_9B250;
    sub_96E58();
    *(v35 + 32) = 0;
    *(v35 + 40) = v33;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    *(v35 + 72) = v34;
    *(v35 + 80) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    type metadata accessor for TranscriptContentViewModel();
    v36 = swift_allocObject();
    result = v32;
    *(v36 + 16) = v35 | 0x4000000000000000;
    *(v32 + 32) = v36;
    return result;
  }

  v76 = a4;
  v68 = a5;
  sub_52394();
  v13 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  result = sub_96818();
  v16 = result;
  v17 = *(result + 16);
  if (v17)
  {
    v18 = 0;
    v70 = result + 32;
    v69 = (v74 + 8);
    v63 = v17 - 1;
    v74 = &_swiftEmptyArrayStorage;
    *&v15 = 136315138;
    v66 = v15;
    v67 = v11;
    v65 = v17;
    v64 = result;
    do
    {
      v19 = v18;
      while (1)
      {
        if (v19 >= *(v16 + 16))
        {
          goto LABEL_87;
        }

        v20 = (v70 + 32 * v19);
        v21 = v20[1];
        v18 = v19 + 1;
        v72 = *v20;
        v73 = v21;
        sub_98998();
        sub_989B8();
        if (sub_98988())
        {
          break;
        }

        sub_96A78();
        v22 = sub_96AA8();
        v23 = sub_981B8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v83 = v25;
          *v24 = v66;
          v79[0] = v72;
          v82 = v73;
          v80 = 0;
          v81 = 0xE000000000000000;
          sub_98748();
          v85._countAndFlagsBits = 3026478;
          v85._object = 0xE300000000000000;
          sub_97EE8(v85);
          sub_98748();
          v26 = sub_11FC8(v80, v81, &v83);

          *(v24 + 4) = v26;
          _os_log_impl(&dword_0, v22, v23, "Discarded a reference dynamic ad range that exceeded the max duration. %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);

          v16 = v64;
          v17 = v65;
          v11 = v67;
        }

        result = (*v69)(v11, v71);
        v19 = v18;
        if (v17 == v18)
        {
          goto LABEL_18;
        }
      }

      v27 = v74;
      result = swift_isUniquelyReferenced_nonNull_native();
      v84 = v27;
      if ((result & 1) == 0)
      {
        result = sub_8C3B4(0, v27[2] + 1, 1);
        v27 = v84;
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_8C3B4((v28 > 1), v29 + 1, 1);
        v27 = v84;
      }

      v27[2] = v29 + 1;
      v74 = v27;
      v30 = &v27[4 * v29];
      v31 = v73;
      *(v30 + 2) = v72;
      *(v30 + 3) = v31;
    }

    while (v63 != v19);
  }

  else
  {
    v74 = &_swiftEmptyArrayStorage;
  }

LABEL_18:

  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  result = sub_96808();
  v37 = result;
  v38 = *(result + 16);
  if (v38)
  {
    v39 = 0;
    v40 = &_swiftEmptyArrayStorage;
    do
    {
      if (v39 >= *(v37 + 16))
      {
        goto LABEL_88;
      }

      v45 = (v37 + 32 + 32 * v39);
      v46 = v45[1];
      v73 = *v45;
      v79[0] = v73;
      v79[1] = v46;
      v72 = v46;
      result = sub_4E178(v79);
      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v40;
        if ((result & 1) == 0)
        {
          result = sub_8C3B4(0, v40[2] + 1, 1);
          v40 = v82;
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          result = sub_8C3B4((v41 > 1), v42 + 1, 1);
          v40 = v82;
        }

        v40[2] = v42 + 1;
        v43 = &v40[4 * v42];
        v44 = v72;
        *(v43 + 2) = v73;
        *(v43 + 3) = v44;
      }

      ++v39;
    }

    while (v38 != v39);
  }

  else
  {
    v40 = &_swiftEmptyArrayStorage;
  }

  *&v79[0] = a6;
  *&v82 = v40;
  v80 = &_swiftEmptyArrayStorage;

  while (1)
  {
    while (1)
    {
      v84 = a6;
      if ((sub_98128() & 1) == 0)
      {
        v83 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65A0);
        sub_269B8(&qword_C65A8, &qword_C65A0);
        if ((sub_98128() & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      v47 = a6 >> 62;
      if (!(a6 >> 62))
      {
        break;
      }

      result = sub_98778();
      if (result)
      {
        goto LABEL_35;
      }

LABEL_65:
      v54 = v75;
      v55 = sub_5277C(&v82, v79, v75, 0);
      v84 = v55;
      sub_51134(&v84, v54);
      v56 = v80;
      if (v80 >> 62)
      {
        v57 = sub_98778();
        if (!v57)
        {
LABEL_73:
          v59 = 0;
          goto LABEL_74;
        }
      }

      else
      {
        v57 = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
        if (!v57)
        {
          goto LABEL_73;
        }
      }

      v58 = __OFSUB__(v57, 1);
      result = v57 - 1;
      if (v58)
      {
        goto LABEL_84;
      }

      if ((v56 & 0xC000000000000001) != 0)
      {
        v59 = sub_986C8();
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_85;
        }

        if (result >= *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_86;
        }

        v59 = *(v56 + 8 * result + 32);
      }

LABEL_74:
      v60 = sub_53130(v55, v59);

      if (v60)
      {
        sub_53B1C(v55, &v80);
        sub_54A68(&v80);
      }

      a6 = *&v79[0];
    }

    result = *(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_65;
    }

LABEL_35:
    if ((a6 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_986C8();
LABEL_38:
    v48 = sub_4E42C(v74);

    if ((v48 & 1) == 0)
    {
      goto LABEL_65;
    }

    if (v47)
    {
      result = sub_98778();
      if (!result)
      {
        goto LABEL_91;
      }

      result = sub_98778();
      if (!result)
      {
        goto LABEL_92;
      }
    }

    else if (!*(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_90;
    }

    if ((a6 & 0xC000000000000001) != 0)
    {
      sub_986C8();
      swift_unknownObjectRelease();
      v49 = a6 & 0xFFFFFFFFFFFFFF8;
      if (!v47)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v49 = a6 & 0xFFFFFFFFFFFFFF8;
      if (!*(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_95;
      }

      if (!v47)
      {
LABEL_46:
        result = *(v49 + 16);
        if (!result)
        {
          goto LABEL_93;
        }

        goto LABEL_53;
      }
    }

    result = sub_98778();
    if (!result)
    {
      goto LABEL_93;
    }

    result = sub_98778();
    if (result < 1)
    {
      goto LABEL_94;
    }

    result = sub_98778();
LABEL_53:
    v50 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_89;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v47)
      {
        v51 = (a6 & 0xFFFFFFFFFFFFFF8);
        if (v50 <= *(&dword_18 + (a6 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

LABEL_59:
      sub_98778();
      goto LABEL_60;
    }

    if (v47)
    {
      goto LABEL_59;
    }

LABEL_60:
    a6 = sub_986D8();
    v51 = (a6 & 0xFFFFFFFFFFFFFF8);
LABEL_61:

    if (a6 >> 62)
    {
      result = sub_98778();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_96;
      }

      memmove(v51 + 4, v51 + 5, 8 * (result - 1));
      v61 = sub_98778();
      v53 = v61 - 1;
      if (__OFSUB__(v61, 1))
      {
LABEL_81:
        __break(1u);
LABEL_82:

        sub_55284(&v80);
        sub_55890(&v80);

        return v80;
      }
    }

    else
    {
      v52 = v51[2];
      memmove(v51 + 4, v51 + 5, 8 * v52 - 8);
      v53 = v52 - 1;
      if (__OFSUB__(v52, 1))
      {
        goto LABEL_81;
      }
    }

    v51[2] = v53;
    *&v79[0] = a6;
  }

  if (*(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_38;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_4D064(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    result = sub_98778();
    v5 = result;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = sub_986C8();
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_150;
    }
  }

  v7 = *(v6 + 16);

  if (v7 >> 61 != 1)
  {
LABEL_11:
    v71[0] = &_swiftEmptyArrayStorage;
    v58 = a2 >> 62;
    if (a2 >> 62)
    {
LABEL_147:
      v8 = sub_98778();
    }

    else
    {
      v8 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    v59 = v5;
    v60 = v3;
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = v3 & 0xFFFFFFFFFFFFFF8;
      v63 = a2;
      v67 = a2 + 32;
      v68 = a2 & 0xFFFFFFFFFFFFFF8;
      v69 = v3 & 0xC000000000000001;
      v70 = a2 & 0xC000000000000001;
      v65 = v3 & 0xFFFFFFFFFFFFFF8;
      v66 = v3 + 32;
      v61 = v8;
      v62 = v4;
LABEL_15:
      v64 = v10;
      while (1)
      {
        if (v4)
        {
          v12 = sub_98778();
        }

        else
        {
          v12 = *(v11 + 16);
        }

        v5 = v10 >= v12;
        if (v10 >= v12)
        {
          goto LABEL_95;
        }

        if (v70)
        {
          v13 = sub_986C8();
          if (!v69)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v9 < 0)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (v9 >= *(v68 + 16))
          {
            goto LABEL_145;
          }

          v13 = *(v67 + 8 * v9);

          if (!v69)
          {
LABEL_25:
            if (v10 >= *(v11 + 16))
            {
              goto LABEL_146;
            }

            v14 = *(v66 + 8 * v10);

            goto LABEL_27;
          }
        }

        v14 = sub_986C8();
LABEL_27:
        if (*(v13 + 16) >> 61 == 1)
        {

          v3 = v71;
          sub_97FA8();
          if (*(&dword_10 + (v71[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v71[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_97FD8();
            v11 = v65;
          }

          sub_98008();

          if (++v9 >= v8)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v15 = *(v14 + 16) >> 61;
          if (v15 <= 1)
          {
            if (!v15)
            {
              v18 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
              goto LABEL_42;
            }

            v16 = type metadata accessor for LinkContent;
            v17 = &qword_C52B0;
          }

          else if (v15 == 2)
          {
            v16 = type metadata accessor for SilentContent;
            v17 = &unk_C77D0;
          }

          else if (v15 == 3)
          {
            v16 = type metadata accessor for SpeakerContent;
            v17 = &qword_C52A8;
          }

          else
          {
            v16 = type metadata accessor for ChapterTitleContent;
            v17 = &qword_C77C0;
          }

          v18 = sub_55E48(v17, v16);
LABEL_42:
          ObjectType = swift_getObjectType();

          v20 = COERCE_DOUBLE(sub_4B3F8(ObjectType, v18));
          LOBYTE(ObjectType) = v21;

          if (ObjectType)
          {
            v22 = 1.79769313e308;
          }

          else
          {
            v22 = v20;
          }

          v23 = *(v13 + 16);
          v24 = v23 >> 61;
          if ((v23 >> 61) > 1)
          {
            if (v24 == 2)
            {
              v25 = type metadata accessor for SilentContent;
              v26 = &unk_C77D0;
            }

            else if (v24 == 3)
            {
              v25 = type metadata accessor for SpeakerContent;
              v26 = &qword_C52A8;
            }

            else
            {
              v25 = type metadata accessor for ChapterTitleContent;
              v26 = &qword_C77C0;
            }

            goto LABEL_54;
          }

          if (v24)
          {
            v25 = type metadata accessor for LinkContent;
            v26 = &qword_C52B0;
LABEL_54:
            v27 = sub_55E48(v26, v25);
            goto LABEL_55;
          }

          v27 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_55:
          v28 = swift_getObjectType();

          v29 = COERCE_DOUBLE(sub_4B3F8(v28, v27));
          v31 = v30;

          if (!v24 && (v31 & 1) == 0)
          {
            swift_getKeyPath();
            sub_55E48(&qword_C56A0, type metadata accessor for TextContent);

            sub_962A8();

            v32 = *(v23 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);

            v33 = v32 + v29;
            goto LABEL_71;
          }

          if (v24 <= 1)
          {
            if (!v24)
            {
              v36 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
              goto LABEL_68;
            }

            v34 = type metadata accessor for LinkContent;
            v35 = &qword_C52B0;
          }

          else if (v24 == 2)
          {
            v34 = type metadata accessor for SilentContent;
            v35 = &unk_C77D0;
          }

          else if (v24 == 3)
          {
            v34 = type metadata accessor for SpeakerContent;
            v35 = &qword_C52A8;
          }

          else
          {
            v34 = type metadata accessor for ChapterTitleContent;
            v35 = &qword_C77C0;
          }

          v36 = sub_55E48(v35, v34);
LABEL_68:
          v37 = swift_getObjectType();

          v33 = COERCE_DOUBLE(sub_4B3F8(v37, v36));
          LOBYTE(v37) = v38;

          if (v37)
          {
            v4 = v62;
            a2 = v63;
            v10 = v64;
            v11 = v65;
            v8 = v61;
            if (v22 <= 1.79769313e308)
            {
              goto LABEL_87;
            }

            goto LABEL_72;
          }

LABEL_71:
          v4 = v62;
          a2 = v63;
          v10 = v64;
          v11 = v65;
          v8 = v61;
          if (v22 <= v33)
          {
LABEL_87:

            v3 = v71;
            sub_97FA8();
            if (*(&dword_10 + (v71[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v71[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_97FD8();
              v11 = v65;
            }

            sub_98008();
LABEL_90:

LABEL_91:
            ++v10;
            if (v9 < v8)
            {
              goto LABEL_15;
            }

            LODWORD(v5) = 0;
            if (!v4)
            {
              goto LABEL_96;
            }

            goto LABEL_121;
          }

LABEL_72:

          v3 = v71;
          sub_97FA8();
          if (*(&dword_10 + (v71[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v71[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_97FD8();
            v11 = v65;
          }

          sub_98008();
          ++v9;
          if (*(v14 + 16) >> 61 == 1)
          {
            v39 = *(v13 + 16);
            if (v39 >> 61 == 2)
            {
              v40 = v39 & 0x1FFFFFFFFFFFFFFFLL;
              swift_beginAccess();
              v41 = *(v40 + 88);
              v42 = *(v41 + 16);
              if (!v42)
              {

                v11 = v65;
                goto LABEL_91;
              }

              v43 = (v41 + 40);
              v11 = v65;
              while (*(v43 - 1) > v22 || v22 > *v43)
              {
                v43 += 2;
                if (!--v42)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          if (v9 >= v8)
          {
            goto LABEL_95;
          }
        }
      }
    }

    v10 = 0;
    v9 = 0;
    LODWORD(v5) = 0;
LABEL_95:
    if (v4)
    {
LABEL_121:
      result = sub_98778();
      if (v10 >= result)
      {
LABEL_97:
        if (!v5)
        {
          return v71[0];
        }

        if (!v58)
        {
          result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
          v45 = result;
          if (result >= v9)
          {
            goto LABEL_103;
          }

          __break(1u);
        }

        result = sub_98778();
        if (result < v9)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v45 = result;
        result = sub_98778();
LABEL_103:
        if (result >= v9)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            if (v58)
            {
              result = sub_98778();
            }

            else
            {
              result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
            }

            if (result >= v45)
            {
              if ((v45 & 0x8000000000000000) == 0)
              {
                if ((a2 & 0xC000000000000001) == 0 || v9 == v45)
                {

                  if (!v58)
                  {
LABEL_116:
                    v48 = a2 & 0xFFFFFFFFFFFFFF8;
                    v49 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
                    v50 = (2 * v45) | 1;
LABEL_119:
                    v52 = v48;
                    v53 = v9;
LABEL_142:
                    sub_37C68(v52, v49, v53, v50);
                    swift_unknownObjectRelease();
                    return v71[0];
                  }

LABEL_118:

                  v48 = sub_98788();
                  v9 = v51;
                  goto LABEL_119;
                }

                if (v9 < v45)
                {
                  type metadata accessor for TranscriptContentViewModel();

                  v46 = v9;
                  do
                  {
                    v47 = v46 + 1;
                    sub_986B8(v46);
                    v46 = v47;
                  }

                  while (v45 != v47);
                  if (!v58)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_118;
                }

LABEL_160:
                __break(1u);
                return result;
              }

              goto LABEL_157;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

LABEL_154:
        __break(1u);
        goto LABEL_155;
      }
    }

    else
    {
LABEL_96:
      result = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
      if (v10 >= result)
      {
        goto LABEL_97;
      }
    }

    if (v59 >= v10)
    {
      if (v4)
      {
        result = sub_98778();
      }

      else
      {
        result = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
      }

      if (result >= v10)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v4)
          {
            result = sub_98778();
          }

          else
          {
            result = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
          }

          if (result >= v59)
          {
            if ((v60 & 0xC000000000000001) == 0 || v10 == v59)
            {

              if (!v4)
              {
LABEL_138:
                v56 = v60 & 0xFFFFFFFFFFFFFF8;
                v49 = (v60 & 0xFFFFFFFFFFFFFF8) + 32;
                v50 = (2 * v59) | 1;
LABEL_141:
                v52 = v56;
                v53 = v10;
                goto LABEL_142;
              }
            }

            else
            {
              if (v10 >= v59)
              {
LABEL_158:
                __break(1u);
                goto LABEL_159;
              }

              type metadata accessor for TranscriptContentViewModel();

              v54 = v10;
              do
              {
                v55 = v54 + 1;
                sub_986B8(v54);
                v54 = v55;
              }

              while (v59 != v55);
              if (!v4)
              {
                goto LABEL_138;
              }
            }

            v56 = sub_98788();
            v10 = v57;
            goto LABEL_141;
          }

LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  return sub_4E7CC(v3, a2);
}