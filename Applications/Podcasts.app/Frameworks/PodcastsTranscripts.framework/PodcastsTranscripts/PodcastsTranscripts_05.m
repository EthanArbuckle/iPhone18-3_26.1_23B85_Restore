unint64_t sub_77098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7798);
    v3 = sub_987B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_742C4(v5, v6);
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

unint64_t sub_7719C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C77F0);
    v3 = sub_987B8();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *i;
      *&v16 = *(i - 5);
      *(&v16 + 1) = v5;
      *&v17 = v6;
      *(&v17 + 1) = v7;
      v18 = *(i - 8);
      sub_203C8(v16, v5, v6, v7, v18);

      result = sub_741B8(&v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 40 * result;
      v12 = v17;
      *v11 = v16;
      *(v11 + 16) = v12;
      *(v11 + 32) = v18;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_772C8()
{
  v1 = v0 + OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_currentParagraphIndex;
  if ((*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_currentParagraphIndex + 8) & 1) == 0)
  {
    v2 = *v1;
    *v1 = 0;
    *(v1 + 8) = 1;
    while (1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_96E98();

      v3 = v8 >> 62 ? sub_98778() : *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));

      if (__OFSUB__(v3, 1))
      {
        break;
      }

      if (v2 >= v3 - 1)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_96E98();

      if ((v8 & 0xC000000000000001) != 0)
      {
        v4 = sub_986C8();
      }

      else
      {
        if (v2 < -1)
        {
          goto LABEL_19;
        }

        if ((v2 + 1) >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v4 = *(v8 + 8 * v2 + 40);
      }

      v5 = *(v4 + 16);
      if (!(v5 >> 61))
      {
        swift_getKeyPath();
        sub_77804(&qword_C56A0, type metadata accessor for TextContent);

        sub_962A8();

        v6 = *(v5 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
        swift_getKeyPath();
        v8 = v6;
        sub_77804(&qword_C7760, type metadata accessor for TextContent.LiveText);

        sub_962A8();

        v7 = *(v6 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

        if (v7)
        {

          sub_728BC(v2 + 1);

          return;
        }
      }

      ++v2;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

unint64_t sub_775F4()
{
  result = qword_C7768;
  if (!qword_C7768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C7768);
  }

  return result;
}

unint64_t sub_77648()
{
  result = qword_C7790;
  if (!qword_C7790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7790);
  }

  return result;
}

uint64_t sub_77700()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_77740(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2A8A8;

  return sub_72EC4(a1, v7, v4, v5, v6);
}

uint64_t sub_77804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7784C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_77884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2B614;

  return sub_76914(a1, v4);
}

uint64_t sub_7793C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2A8A8;

  return sub_76914(a1, v4);
}

id sub_77AA8()
{
  result = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 curve:0 animations:0.2];
  qword_CD520 = result;
  return result;
}

id sub_77AEC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:125.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  qword_CD528 = result;
  return result;
}

id sub_77B3C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:225.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  qword_CD530 = result;
  return result;
}

__n128 sub_77B90()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_CD540 = *&UIEdgeInsetsZero.top;
  *&qword_CD550 = v1;
  return result;
}

unint64_t *sub_77BAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_98778();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = &_swiftEmptyArrayStorage;
  result = sub_8C288(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_986C8();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_8C288((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for TranscriptContentViewModel();
        v15 = &protocol witness table for TranscriptContentViewModel;
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_4CC0(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_8C288((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for TranscriptContentViewModel();
        v15 = &protocol witness table for TranscriptContentViewModel;
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_4CC0(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t *sub_77D64(uint64_t a1)
{
  v2 = sub_963F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = &_swiftEmptyArrayStorage;
    sub_8C3F4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_8C3F4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for PlaybackController.TransportCommand;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_4CC0(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_77F30(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); result; result = sub_98778())
  {
    v4 = 0;
    v43 = v2 & 0xFFFFFFFFFFFFFF8;
    v44 = v2 & 0xC000000000000001;
    v41 = result;
    v42 = v2;
    while (v44)
    {
      v7 = sub_986C8();
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_44;
      }

LABEL_9:
      v9 = *(v7 + 16);
      v10 = v9 >> 61;
      v48 = v8;
      if ((v9 >> 61) <= 1)
      {
        if (v10)
        {
          v16 = v9 & 0x1FFFFFFFFFFFFFFFLL;
          v12 = *(v16 + 16);
          v13 = *(v16 + 24);

LABEL_19:
          v15 = 0;
LABEL_20:
          v14 = 0;
          goto LABEL_21;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v15 = *(v9 + 32);
        v14 = *(v9 + 40);
      }

      else
      {
        v11 = (v9 & 0x1FFFFFFFFFFFFFFFLL);
        if (v10 == 2)
        {
          v12 = v11[2];

          v13 = 0;
          goto LABEL_19;
        }

        if (v10 != 3)
        {
          v12 = v11[14];
          v13 = v11[15];
          v15 = v11[16];

          goto LABEL_20;
        }

        v12 = v11[5];
        v13 = v11[6];
        v15 = v11[7];
        v14 = v11[8];
      }

LABEL_21:
      v46[0] = v12;
      v46[1] = v13;
      v46[2] = v15;
      v46[3] = v14;
      v47 = v10;
      v17 = *a2;
      if (*(*a2 + 16) && (v18 = sub_741B8(v46), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        sub_20438(v12, v13, v15, v14, v10);
        v21 = *(v20 + 16) >> 61;
        v22 = v21 > 4;
        v23 = (1 << v21) & 0x1A;
        if (v22 || v23 == 0)
        {
          v5 = v41;
          v2 = v42;
          v6 = v48;
          if (v20 != v7)
          {
LABEL_30:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F20);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_9AF50;
            v27 = *(v20 + 16);
            v28 = v27 >> 61;
            if ((v27 >> 61) > 1)
            {
              v29 = v27 & 0x1FFFFFFFFFFFFFFFLL;
              if (v28 == 2)
              {
                *(v26 + 32) = *(v29 + 16);
                *(v26 + 40) = 0;
                *(v26 + 48) = 0;
                *(v26 + 56) = 0;
                *(v26 + 64) = 2;
              }

              else
              {
                if (v28 == 3)
                {
                  v30 = *(v29 + 48);
                  v31 = *(v29 + 56);
                  *(v26 + 32) = *(v29 + 40);
                  *(v26 + 40) = v30;
                  *(v26 + 48) = v31;
                  v32 = 3;
                }

                else
                {
                  v36 = *(v29 + 112);
                  v35 = *(v29 + 120);
                  v37 = *(v29 + 128);
                  *(v26 + 32) = v36;
                  *(v26 + 40) = v35;
                  *(v26 + 48) = v37;
                  *(v26 + 56) = 0;
                  v32 = 4;
                }

                *(v26 + 64) = v32;
LABEL_40:
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F08);
              v40._rawValue = v26;
              sub_96B98(v40);

              goto LABEL_5;
            }

            if (v28)
            {
              v38 = v27 & 0x1FFFFFFFFFFFFFFFLL;
              v39 = *(v38 + 24);
              *(v26 + 32) = *(v38 + 16);
              *(v26 + 40) = v39;
              *(v26 + 48) = 0;
              *(v26 + 56) = 0;
              *(v26 + 64) = 1;
            }

            else
            {
              v33 = *(v27 + 24);
              v34 = *(v27 + 32);
              *(v26 + 32) = *(v27 + 16);
              *(v26 + 40) = v33;
              *(v26 + 48) = v34;
              *(v26 + 64) = 0;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v25 = _s19PodcastsTranscripts26TranscriptContentViewModelC2eeoiySbAC_ACtFZ_0(v20, v7);
          v5 = v41;
          v2 = v42;
          v6 = v48;
          if ((v25 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_20438(v12, v13, v15, v14, v10);
        v5 = v41;
        v2 = v42;
        v6 = v48;
      }

LABEL_5:

      ++v4;
      if (v6 == v5)
      {
        return result;
      }
    }

    if (v4 >= *(v43 + 16))
    {
      goto LABEL_45;
    }

    v7 = *(v2 + 8 * v4 + 32);

    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return result;
}

id sub_782A0()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = sub_7F13C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_78300()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___liveObserver;
  if (*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___liveObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___liveObserver);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_objectGraph);
    v4 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_presentationContext);
    sub_E104(0, &qword_C4810);

    v5 = sub_98278();
    type metadata accessor for LiveTranscriptObserver();
    swift_allocObject();
    v2 = sub_37728(v3, v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

_BYTE *sub_78400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView;
  v7 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView);
  }

  else
  {
    v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_8B300;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_8C138;
    aBlock[3] = &block_descriptor_210;
    v10 = _Block_copy(aBlock);
    v11 = [v9 initWithSectionProvider:v10];
    _Block_release(v10);

    v12 = type metadata accessor for TranscriptCollectionView();
    v13 = objc_allocWithZone(v12);
    v13[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode] = 1;
    *&v13[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_subscriptions] = &_swiftEmptyArrayStorage;
    *&v13[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView____lazy_storage____verticalScrollIndicator] = 1;
    v21.receiver = v13;
    v21.super_class = v12;
    v14 = v11;
    v15 = objc_msgSendSuper2(&v21, "initWithFrame:collectionViewLayout:", v14, 0.0, 0.0, 0.0, 0.0);
    v15[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode] = 1;
    swift_getKeyPath();
    v16 = v15;
    sub_95F08();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_EA78(&qword_C7FA0, &qword_C7F98);
    sub_97028();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5720);
    sub_EA78(&qword_C7CB0, &qword_C5720);
    sub_96DC8();
    swift_endAccess();

    [v16 setDelegate:v1];
    v17 = v16;
    [v17 setClipsToBounds:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = *(v1 + v6);
    *(v1 + v6) = v16;
    v8 = v17;

    v7 = 0;
  }

  v19 = v7;
  return v8;
}

double sub_787C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent);
  sub_962A8();

  result = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);
  *a2 = result;
  return result;
}

uint64_t sub_788A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8DACC(&qword_C7760, 255, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v4 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  a2[1] = v4;
}

uint64_t sub_78960(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_44A28(v1, v2);
}

uint64_t sub_789C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8DACC(&qword_C5DF8, 255, type metadata accessor for TranscriptPresentationContext);
  sub_962A8();

  *a2 = *(v3 + 16);
  return result;
}

id TranscriptViewController.__allocating_init(asPartOf:playerStylePublisher:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_8D364(a1, a2, a3);

  return v8;
}

id TranscriptViewController.init(asPartOf:playerStylePublisher:session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_8D364(a1, a2, a3);

  return v3;
}

Swift::Void __swiftcall TranscriptViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD8);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7880);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7888);
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v32 - v12;
  v38.receiver = v1;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = sub_79218();
  [v15 addInteraction:v16];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v33 = v7;
  [v17 _setOverrideUserInterfaceRenderingMode:2];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = v19;
  v32 = v6;
  [v19 _setOverrideVibrancyTrait:1];

  sub_79290();
  sub_7AC98();
  sub_7B360();
  sub_7B898();
  sub_7BBE4();
  v21 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v22 = sub_97DC8();

  v23 = [v21 BOOLForKey:v22];

  if ((v23 & 1) == 0)
  {
    isa = sub_98028().super.super.isa;

    v25 = sub_97DC8();

    [v21 setValue:isa forKey:v25];
  }

  v37 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playerStylePublisher];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7898);
  sub_EA78(&qword_C78A0, &qword_C7898);
  sub_8DACC(&qword_C78A8, 255, &type metadata accessor for NowPlayingPlayerStyle);
  sub_97018();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_7BEDC();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  sub_EA78(&qword_C78B0, &qword_C7888);
  sub_97028();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4FD0);
  sub_96E68();
  swift_endAccess();
  sub_EA78(&qword_C78D0, &qword_C4FD8);
  v29 = v35;
  v30 = v36;
  sub_97018();
  (*(v34 + 8))(v5, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_EA78(&qword_C78D8, &qword_C7880);
  v31 = v32;
  sub_97028();

  (*(v33 + 8))(v30, v31);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();
}

id sub_79218()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___findInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___findInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___findInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UIFindInteraction) initWithSessionDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_79290()
{
  ObjectType = swift_getObjectType();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D98);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v81 - v1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DA0);
  v127 = *(v130 - 8);
  __chkstk_darwin(v130);
  v125 = &v81 - v2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DA8);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v126 = &v81 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DB0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v81 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DB8);
  v117 = *(v118 - 1);
  __chkstk_darwin(v118);
  v116 = &v81 - v5;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7DC0);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v81 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C58E0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v81 - v7;
  v96 = sub_982C8();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DD0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v81 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DD8);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v81 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DE0);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v81 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7DE8);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v13 - 8);
  v132 = &v81 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7DF0);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v16 = &v81 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E00);
  v110 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7E00);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v81 - v22);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7E08);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v81 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E10);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v81 - v25;
  v98 = v0;
  sub_78300();
  swift_beginAccess();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56D0);
  sub_96E68();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7E20);
  sub_96E68();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48A0);
  sub_96E68();
  swift_endAccess();
  v26 = sub_EA78(&unk_C7E30, &qword_C7E00);
  sub_EA78(&qword_C5818, &qword_C4E00);
  sub_EA78(&qword_C7E40, &unk_C7DF0);
  v27 = v17;
  v28 = v111;
  v105 = v26;
  sub_96F18();
  (*(v112 + 8))(v16, v28);
  v110[1](v19, v27);
  v29 = *(v21 + 8);
  v110 = v23;
  v112 = v20;
  v111 = v21 + 8;
  v104 = v29;
  v29(v23, v20);
  sub_E104(0, &qword_C4810);
  v30 = sub_982E8();
  *v138 = v30;
  v31 = sub_982A8();
  v32 = v132;
  (*(*(v31 - 8) + 56))(v132, 1, 1, v31);
  sub_EA78(&qword_C7E48, &qword_C7E08);
  v33 = sub_DF3C();
  v34 = v99;
  v35 = v100;
  v36 = v97;
  sub_96FE8();
  sub_4C60(v32, &qword_C48D8);

  v37 = v98;
  (*(v101 + 8))(v36, v35);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_8FBC8;
  *(v39 + 24) = v38;
  sub_EA78(&unk_C7E50, &unk_C7E10);
  v40 = v102;
  sub_97028();

  (*(v103 + 8))(v34, v40);
  v41 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_subscriptions;
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  sub_4BF8(v37 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_scrubPositionProvider, v138, &unk_C7B90);
  v103 = v41;
  if (*&v138[24])
  {
    sub_4CC0(v138, &v141);
    v42 = v142;
    v43 = v143;
    __swift_project_boxed_opaque_existential_1(&v141, v142);
    v44 = (*(v43 + 8))(v42, v43);
    v132 = v33;
    *v138 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7EC0);
    sub_EA78(&qword_C7EC8, &qword_C7EC0);
    v45 = v82;
    sub_96FB8();

    v46 = v142;
    v47 = v143;
    __swift_project_boxed_opaque_existential_1(&v141, v142);
    *v138 = (*(v47 + 8))(v46, v47);
    sub_EA78(&qword_C7ED0, &qword_C7DD0);
    v48 = v83;
    v49 = v86;
    sub_96F98();

    (*(v84 + 8))(v45, v49);
    sub_EA78(&qword_C7ED8, &qword_C7DD8);
    v50 = v88;
    v51 = v87;
    sub_97008();
    (*(v85 + 8))(v48, v51);
    v52 = v94;
    sub_982B8();
    v53 = sub_982E8();
    *v138 = v53;
    sub_EA78(&qword_C7EE0, &qword_C7DE0);
    v54 = v91;
    v55 = v90;
    sub_96FF8();

    (*(v95 + 8))(v52, v96);
    (*(v89 + 8))(v50, v55);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_EA78(&qword_C7EE8, &qword_C7DE8);
    v56 = v93;
    sub_97028();

    (*(v92 + 8))(v54, v56);
    swift_beginAccess();
    sub_96DB8();
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v141);
  }

  else
  {
    sub_4C60(v138, &unk_C7B90);
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C8);
  v57 = v107;
  sub_96E68();
  swift_endAccess();

  sub_EA78(&unk_C7E60, &qword_C58E0);
  v58 = v109;
  v59 = sub_96F88();
  v132 = v59;
  (*(v108 + 8))(v57, v58);
  *&v133 = v59;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C56C0);
  v60 = v113;
  sub_96E68();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7E70);
  sub_EA78(&qword_C7E78, &qword_C7E70);
  sub_EA78(&qword_C7E80, &qword_C7DB0);
  v61 = v116;
  v62 = v115;
  sub_96F28();
  (*(v114 + 8))(v60, v62);
  *v138 = 1;
  memset(&v138[8], 0, 32);
  *&v138[40] = 1;
  v139 = 0u;
  v140 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7E88);
  sub_EA78(&qword_C7E90, &qword_C7DB8);
  v63 = v119;
  v64 = v118;
  sub_96F68();
  (*(v117 + 8))(v61, v64);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_8FC08;
  *(v66 + 24) = v65;
  v118 = &protocol conformance descriptor for Publishers.Scan<A, B>;
  sub_EA78(&qword_C7E98, &unk_C7DC0);
  v67 = v121;
  sub_97028();

  (*(v120 + 8))(v63, v67);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  swift_beginAccess();

  v68 = v110;
  sub_96E68();
  swift_endAccess();

  v69 = v112;
  v70 = v126;
  sub_96F08();
  v104(v68, v69);
  *v138 = v132;
  sub_EA78(&qword_C7EA0, &qword_C7DA8);
  v71 = v122;
  v72 = v131;
  sub_96F28();
  v133 = 0uLL;
  BYTE8(v134) = 0;
  *&v134 = 0;
  *&v135 = &_swiftEmptyArrayStorage;
  *(&v135 + 1) = 0;
  v136 = 0uLL;
  LOBYTE(v137) = 0;
  *(&v137 + 1) = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7EA8);
  sub_EA78(&qword_C7EB0, &qword_C7D98);
  v73 = v125;
  v74 = v124;
  sub_96F68();
  *&v138[32] = v135;
  v139 = v136;
  v140 = v137;
  *v138 = v133;
  *&v138[16] = v134;
  sub_4C60(v138, &qword_C7EA8);
  (*(v123 + 8))(v71, v74);
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  v77 = ObjectType;
  *(v76 + 16) = v75;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_8FC6C;
  *(v78 + 24) = v76;
  sub_EA78(&qword_C7EB8, &qword_C7DA0);
  v79 = v130;
  sub_97028();

  (*(v127 + 8))(v73, v79);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  return (*(v129 + 8))(v70, v72);
}

uint64_t sub_7AC98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D38);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D40);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D48);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  __chkstk_darwin(v16);
  v19 = &v28 - v18;
  v33 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playbackController);
  sub_963E8();
  sub_EA78(&qword_C7D50, &qword_C7D30);
  sub_96F38();
  (*(v6 + 8))(v8, v5);
  sub_E104(0, &qword_C4810);
  v20 = sub_982E8();
  v35 = v20;
  v21 = sub_982A8();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_EA78(&qword_C7D58, &qword_C7D38);
  sub_DF3C();
  v22 = v28;
  sub_96FE8();
  sub_4C60(v4, &qword_C48D8);

  (*(v9 + 8))(v11, v22);
  v35 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_retrySubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7B88);
  sub_EA78(&qword_C7D60, &qword_C7D40);
  sub_EA78(&qword_C7D68, &qword_C7B88);
  v23 = v29;
  sub_96F28();
  (*(v30 + 8))(v15, v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_8FB60;
  *(v25 + 24) = v24;
  sub_EA78(&unk_C7D70, &qword_C7D48);
  v26 = v31;
  sub_97028();

  (*(v32 + 8))(v19, v26);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  v35 = sub_96428();
  swift_getKeyPath();
  v34 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_presentationContext);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C80);
  sub_EA78(&qword_C7C88, &qword_C7C80);
  sub_97038();

  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();
}

uint64_t sub_7B360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_98328();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7D10);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v20 - v7;
  v30 = objc_opt_self();
  v9 = [v30 defaultCenter];
  sub_98338();

  sub_E104(0, &qword_C4810);
  v10 = sub_982E8();
  v32 = v10;
  v11 = sub_982A8();
  v12 = *(v11 - 8);
  v27 = *(v12 + 56);
  v28 = v12 + 56;
  v27(v2, 1, 1, v11);
  v26 = sub_8DACC(&qword_C7CD8, 255, &type metadata accessor for NSNotificationCenter.Publisher);
  v25 = sub_DF3C();
  v20 = v3;
  sub_96FE8();
  sub_4C60(v2, &qword_C48D8);

  v13 = *(v4 + 8);
  v23 = v4 + 8;
  v24 = v13;
  v13(v6, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_EA78(&qword_C7D18, &qword_C7D10);
  v14 = v29;
  sub_97028();

  v15 = *(v31 + 8);
  v31 += 8;
  v21 = v15;
  v15(v8, v14);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  v16 = [v30 defaultCenter];
  sub_98338();

  v17 = sub_982E8();
  v32 = v17;
  v27(v2, 1, 1, v11);
  v18 = v20;
  sub_96FE8();
  sub_4C60(v2, &qword_C48D8);

  v24(v6, v18);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_97028();

  v21(v8, v14);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();
}

uint64_t sub_7B898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CE8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CF0);
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - v5;
  v12 = sub_97998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CF8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_9AF50;
  *(v7 + 32) = sub_97988() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C80);
  sub_EA78(&qword_C7C88, &qword_C7C80);
  sub_96FD8();

  sub_EA78(&qword_C7D00, &qword_C7CE8);
  sub_97018();
  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_EA78(&qword_C7D08, &qword_C7CF0);
  v8 = v11;
  sub_97028();

  (*(v4 + 8))(v6, v8);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();
}

uint64_t sub_7BBE4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_98328();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  sub_98338();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  sub_8DACC(&qword_C7CD8, 255, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_97028();

  v9 = *(v2 + 8);
  v9(v4, v1);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();

  v10 = [v5 defaultCenter];
  sub_98338();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_97028();

  v9(v4, v1);
  swift_beginAccess();
  sub_96DB8();
  swift_endAccess();
}

uint64_t sub_7BEDC()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine;
  if (*&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine])
  {
    v2 = *&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playbackController];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7C50);

    v4 = v0;
    sub_97C18();
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_presentationContext];
    sub_4BF8(&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_selectedContentProvider], v11, &qword_C7698);

    v9 = v4;
    v2 = sub_8CBA8(v3, v7, v8, v11, v9);

    __swift_destroy_boxed_opaque_existential_1(v12);
    *&v4[v1] = v2;
  }

  return v2;
}

void sub_7C040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_96108();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(a3 + 24) == 1)
    {
      v10 = Strong;
      (*(v6 + 16))(v8, a1, v5);
      v11 = (*(v6 + 88))(v8, v5);
      if (v11 == enum case for NowPlayingPlayerStyle.mini(_:))
      {
        *(a3 + 16) = 13;
        sub_70DEC();
        sub_7C2E4();
      }

      else if (v11 == enum case for NowPlayingPlayerStyle.fullScreen(_:))
      {
        *(a3 + 16) = 2;
        sub_70DEC();
        v12 = v10;
        sub_7C504(1);
        sub_78300();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_96E98();

        v13 = *&v18;
        v14 = v19;
        v15 = v20;
        v16 = v21;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_96E98();

        sub_8E024(v13, v14, v15, v16, 0, v18);
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_7C2E4()
{
  sub_78300();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if (v7)
  {
    v1 = *(v7 + 16) >> 61;
    if (v1 <= 1)
    {
      if (!v1)
      {
        v4 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
LABEL_12:
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 88);

        v6(1, 0, ObjectType, v4);
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
      v2 = &qword_C52A8;
      v3 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v2 = &qword_C77C0;
      v3 = type metadata accessor for ChapterTitleContent;
    }

    v4 = sub_8DACC(v2, 255, v3);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_7C504(char a1)
{
  v2 = sub_96AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7BEDC();
  v6 = sub_70A64();
  v8 = v7;

  if (v8 > 2u)
  {
    if (v8 == 3)
    {

      return sub_70400(v6, 3);
    }
  }

  else if (v8 - 1 >= 2 && v6 != 128)
  {
    sub_78300();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_96E98();

    v10 = v32;
    if (v32)
    {
      v11 = *(&v32 + 1);
      v31 = v33;
      v12 = v34;
      sub_96A78();

      v13 = sub_96AA8();
      v14 = sub_981D8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        HIDWORD(v29) = v14;
        v16 = v15;
        v30 = swift_slowAlloc();
        *&v32 = v30;
        *v16 = 136315650;
        *(v16 + 4) = sub_11FC8(0xD00000000000001BLL, 0x80000000000A5160, &v32);
        *(v16 + 12) = 2080;

        v18 = sub_2EEBC(v17, v11, v31, v12 & 1);
        v20 = v19;

        v21 = sub_11FC8(v18, v20, &v32);

        *(v16 + 14) = v21;
        *(v16 + 22) = 1024;
        *(v16 + 24) = a1 & 1;
        _os_log_impl(&dword_0, v13, BYTE4(v29), "%s scroll to paragraph from reset live tracking (new: %s, animated: %{BOOL}d)", v16, 0x1Cu);
        swift_arrayDestroy();
      }

      (*(v3 + 8))(v5, v2);
      v22 = *(v10 + 16);
      v23 = v22 >> 61;
      if ((v22 >> 61) <= 1)
      {
        if (!v23)
        {
          v25 = *(v22 + 16);
          v26 = *(v22 + 32);
          v27 = *(v22 + 40);

          goto LABEL_22;
        }

        v25 = *(&dword_10 + (v22 & 0x1FFFFFFFFFFFFFFFLL));
      }

      else
      {
        v24 = (v22 & 0x1FFFFFFFFFFFFFFFLL);
        if (v23 != 2)
        {
          if (v23 == 3)
          {
            v25 = v24[5];
            v26 = v24[7];
            v27 = v24[8];

LABEL_22:
            *&v32 = v25;
            *(&v32 + 1) = v28;
            v33 = v26;
            v34 = v27;
            v35 = v23;
            sub_82008(&v32, a1 & 1);

            return sub_20438(v32, *(&v32 + 1), v33, v34, v35);
          }

          v25 = v24[14];
          v26 = v24[16];

LABEL_21:
          v27 = 0;
          goto LABEL_22;
        }

        v25 = v24[2];

        v28 = 0;
      }

      v26 = 0;
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_7C8E0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_7BEDC();

    if (v1)
    {
      v5 = 17;
    }

    else
    {
      v5 = 18;
    }

    *(v4 + 16) = v5;
    sub_70DEC();
  }

  return result;
}

Swift::Void __swiftcall TranscriptViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "viewWillLayoutSubviews");
  v2 = sub_78400();
  v3 = [v2 superview];

  if (v3)
  {
  }

  else
  {
    sub_7CD40();
    sub_78300();
    sub_7D010();
    if (qword_C46A0 != -1)
    {
      v26 = v5;
      v27 = v4;
      swift_once();
      v5 = v26;
      v4 = v27;
    }

    *&v28 = v4;
    *(&v28 + 1) = v5;
    v29 = qword_CD508;
    v6 = qword_CD508;
    sub_2C5D0(&v28);
  }

  v7 = sub_7D274();
  v8 = [v7 superview];

  if (!v8)
  {
    v9 = [v1 view];
    if (!v9)
    {
      __break(1u);
      goto LABEL_26;
    }

    v8 = v9;
    [v9 addSubview:*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView]];
  }

  v10 = sub_7D364();
  v11 = [v10 superview];

  if (v11)
  {

    goto LABEL_13;
  }

  v12 = [v1 view];
  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = v12;
  v14 = sub_7D364();
  [v13 addSubview:v14];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_9AF50;
  *(v15 + 32) = sub_96D58();
  *(v15 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_98238();
  swift_unknownObjectRelease();

  [*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton] setTranslatesAutoresizingMaskIntoConstraints:1];
  sub_7E430(2);
LABEL_13:
  v16 = sub_7D494();
  v17 = [v16 superview];

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = [v1 view];
  if (!v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = v18;
  [v18 addSubview:*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___pinnedActiveLinkView]];
LABEL_16:

  v19 = sub_7D8E8();
  v20 = [v19 superview];

  if (v20)
  {
    goto LABEL_19;
  }

  v21 = [v1 view];
  if (!v21)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v20 = v21;
  [v21 addSubview:*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView]];
LABEL_19:

  v22 = sub_7D9EC();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 superview];
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      sub_7DA58();
      v25 = v23;
    }
  }
}

void sub_7CD40()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_7F6B4();
    [v2 addSubview:v3];

    v4 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper;
    v5 = *&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper];
    v6 = sub_78400();
    [v5 addSubview:v6];

    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_9F040;
    v9 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView;
    v10 = [*&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView] topAnchor];
    v11 = [*&v0[v4] topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v8 + 32) = v12;
    v13 = [*&v0[v9] leadingAnchor];
    v14 = [*&v0[v4] leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v8 + 40) = v15;
    v16 = [*&v0[v9] trailingAnchor];
    v17 = [*&v0[v4] trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v8 + 48) = v18;
    v19 = [*&v0[v9] bottomAnchor];
    v20 = [*&v0[v4] bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v8 + 56) = v21;
    sub_E104(0, &unk_C7C00);
    isa = sub_97FB8().super.isa;

    [v7 activateConstraints:isa];

    sub_7DE30();

    sub_8AE14();
  }

  else
  {
    __break(1u);
  }
}

void sub_7D010()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  CGRectGetWidth(v41);
  v12 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 24];
  v13 = *&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext], v12);
  (*(v13 + 16))(v12, v13);
  v14 = [v1 view];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  sub_E104(0, &qword_C7BF8);
  sub_983A8();

  if (v40)
  {
    v19 = [v1 view];
    if (!v19)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = v22;
    v30 = v24;
    v31 = v26;
    v32 = v28;
  }

  else
  {
    v31 = v38;
    v32 = v39;
    v29 = v36;
    v30 = v37;
  }

  CGRectGetHeight(*&v29);
  v33 = [v1 view];
  if (!v33)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v34 = v33;
  v35 = [v33 window];

  if (v35)
  {
    [v35 bounds];
    CGRectGetHeight(v42);
  }
}

id sub_7D274()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView);
  }

  else
  {
    v4 = v0;
    sub_96218();
    sub_96248();
    v5 = sub_96208();
    v6 = [v5 layer];
    v7 = sub_7FAD0(&OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientMask, sub_91394);
    [v6 setMask:v7];

    [v5 setUserInteractionEnabled:0];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_7D364()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton);
  }

  else
  {
    sub_E104(0, &unk_C7C20);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v4;
    v5 = v0;
    v6 = sub_98468();
    type metadata accessor for TranscriptSearchButton();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v6 primaryAction:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_8F964, v11}];

    v8 = *(v5 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_7D494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7888);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - v3;
  v5 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___pinnedActiveLinkView;
  v6 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___pinnedActiveLinkView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___pinnedActiveLinkView);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_objectGraph);
    v22 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playerStylePublisher);
    sub_E304(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext, v25);
    active = type metadata accessor for PinnedActiveLinkContainerView();
    v10 = objc_allocWithZone(active);
    v11 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViews;
    *&v10[v11] = sub_76B38(&_swiftEmptyArrayStorage);
    *&v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_linkViewIDs] = &_swiftEmptyArrayStorage;
    v12 = &v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_pinnedLinkID];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v12[32] = -1;
    v13 = OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_playerStyle;
    v14 = enum case for NowPlayingPlayerStyle.mini(_:);
    v15 = sub_96108();
    (*(*(v15 - 8) + 104))(&v10[v13], v14, v15);
    *&v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_subscriptions] = &_swiftEmptySetSingleton;
    v16 = &v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_delegate];
    *&v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_isKeyboardPresent] = 0;
    v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_mode] = 1;
    *&v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_controlsTopOriginY] = 0x7FEFFFFFFFFFFFFFLL;
    v17 = &v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_lastKnownBounds];
    *v17 = 0u;
    v17[1] = 0u;
    *&v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_objectGraph] = v8;
    sub_E304(v25, &v10[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_viewContext]);
    *(v16 + 1) = &off_BEDD8;
    swift_unknownObjectWeakAssign();
    v24.receiver = v10;
    v24.super_class = active;

    v7 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v7 setAlpha:0.0];
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7898);
    sub_EA78(&qword_C78A0, &qword_C7898);
    sub_8DACC(&qword_C78A8, 255, &type metadata accessor for NowPlayingPlayerStyle);
    sub_97018();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_EA78(&qword_C78B0, &qword_C7888);
    sub_97028();

    (*(v2 + 8))(v4, v1);
    swift_beginAccess();
    sub_96DB8();
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v25);
    v18 = *(v0 + v5);
    *(v0 + v5) = v7;

    v6 = 0;
  }

  v19 = v6;
  return v7;
}

id sub_7D8E8()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView);
  }

  else
  {
    v4 = v0;
    sub_96218();
    sub_96248();
    v5 = sub_96208();
    [v5 setAlpha:0.0];
    v6 = [v5 layer];
    v7 = sub_7FAD0(&OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientMask, sub_91380);
    [v6 setMask:v7];

    [v5 setUserInteractionEnabled:0];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_7D9EC()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___translateButton;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___translateButton);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v3 = sub_7F728();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_375D8(v4);
  }

  sub_3C610(v2);
  return v3;
}

void sub_7DA58()
{
  v1 = sub_96498();
  v18[3] = v1;
  v18[4] = sub_8DACC(&unk_C7948, 255, &type metadata accessor for Podcasts);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.translateTranscript(_:), v1);
  LOBYTE(v1) = sub_963B8();
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v1)
  {
    v3 = sub_7D9EC();
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        v7 = v4;
        [v6 addSubview:v7];

        [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
        v8 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_9F050;
        v10 = [v7 centerYAnchor];

        v11 = sub_7D364();
        v12 = [v11 centerYAnchor];

        v13 = [v10 constraintEqualToAnchor:v12];
        *(v9 + 32) = v13;
        v14 = [v7 leadingAnchor];

        v15 = [*&v0[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton] trailingAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 constant:8.0];

        *(v9 + 40) = v16;
        sub_E104(0, &unk_C7C00);
        isa = sub_97FB8().super.isa;

        [v8 activateConstraints:isa];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall TranscriptViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  sub_7DE30();
  v1 = sub_7D494();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    sub_7E430(2);
  }

  else
  {
    __break(1u);
  }
}

id sub_7DE30()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_59;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v107.origin.x = v5;
  v107.origin.y = v7;
  v107.size.width = v9;
  v107.size.height = v11;
  Height = CGRectGetHeight(v107);
  result = [v1 view];
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v13 = result;
  v14 = [result safeAreaLayoutGuide];

  result = [v1 view];
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v15 = result;
  sub_E104(0, &qword_C7BF8);
  sub_983A8();
  v16 = v101;
  v17 = v102;
  v19 = v103;
  v18 = v104;

  if ((v105 & 1) == 0)
  {
    goto LABEL_7;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v20 = result;
  [result bounds];
  v16 = v21;
  v17 = v22;
  v19 = v23;
  v18 = v24;

LABEL_7:
  rect = v18;
  v25 = Height * 0.14 + Height * 0.14 + v18;
  v26 = sub_7F6B4();
  [v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v108.origin.x = v28;
  v108.origin.y = v30;
  v108.size.width = v32;
  v108.size.height = v34;
  v35 = CGRectGetHeight(v108);
  v109.origin.x = v16;
  v109.origin.y = v17;
  v109.size.width = v19;
  v109.size.height = v25;
  v36 = CGRectGetHeight(v109);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = [v1 traitCollection];
  v39 = sub_98318();

  v40 = v19;
  if (v39)
  {
    v110.origin.x = v16;
    v110.origin.y = v17;
    v110.size.width = v19;
    v110.size.height = v37;
    v40 = fmin(CGRectGetWidth(v110), 520.0);
  }

  v41 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper;
  [*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper] frame];
  v123.origin.x = v16;
  v123.origin.y = v17;
  v123.size.width = v40;
  v123.size.height = v37;
  if (!CGRectEqualToRect(v111, v123))
  {
    [*&v1[v41] setFrame:{v16, v17, v40, v37}];
  }

  v112.origin.x = v16;
  v112.origin.y = v17;
  v112.size.width = v40;
  v112.size.height = v37;
  MaxY = CGRectGetMaxY(v112);
  v113.origin.x = v16;
  v113.origin.y = v17;
  v113.size.width = v19;
  v113.size.height = rect;
  v43 = CGRectGetMaxY(v113);
  v44 = sub_7D364();
  [v44 alpha];
  v46 = v45;

  recta = 0.0;
  v80 = v46 == 1.0;
  v47 = 0.0;
  v48 = 0.0;
  if (v80)
  {
    v49 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton;
    [*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton] frame];
    MinY = CGRectGetMinY(v114);
    v115.origin.x = v16;
    v115.origin.y = v17;
    v115.size.width = v40;
    v115.size.height = v37;
    v51 = MinY < CGRectGetMaxY(v115);
    v47 = 0.0;
    v48 = 0.0;
    if (v51)
    {
      v116.origin.x = v16;
      v116.origin.y = v17;
      v116.size.width = v40;
      v116.size.height = v37;
      v52 = CGRectGetMaxY(v116);
      [*&v1[v49] frame];
      v47 = v52 - CGRectGetMinY(v117);
      v48 = v47 + 32.0;
    }
  }

  v97 = v47;
  v98 = MaxY - v43;
  v53 = &v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState];
  if (v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState + 32])
  {
    v54 = 0.0;
  }

  else
  {
    v118.size.width = v53[2];
    v118.size.height = v53[3];
    v56 = *v53;
    v55 = v53[1];
    v118.origin.x = *v53;
    v118.origin.y = v55;
    width = v118.size.width;
    v96 = v118.size.height;
    v57 = CGRectGetMinY(v118);
    v119.origin.x = v16;
    v119.origin.y = v17;
    v119.size.width = v40;
    v119.size.height = v37;
    v51 = v57 < CGRectGetMaxY(v119);
    v54 = 0.0;
    if (v51)
    {
      v120.origin.x = v16;
      v120.origin.y = v17;
      v120.size.width = v40;
      v120.size.height = v37;
      v58 = CGRectGetMaxY(v120);
      v121.origin.x = v56;
      v121.origin.y = v55;
      v121.size.width = width;
      v121.size.height = v96;
      recta = v58 - CGRectGetMinY(v121);
      v54 = recta + 10.0;
    }
  }

  v59 = sub_78400();
  [v59 contentInset];
  v61 = v60;
  v63 = v62;

  if (v98 > v48)
  {
    v64 = v98;
  }

  else
  {
    v64 = v48;
  }

  if (v64 > v54)
  {
    v65 = v64;
  }

  else
  {
    v65 = v54;
  }

  v66 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView;
  [*&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView] contentOffset];
  v68 = v67;
  [*&v1[v66] contentInset];
  v70 = v68 + v69;
  v71 = 0.0;
  if (v70 > 0.0)
  {
    result = [v1 view];
    if (result)
    {
      v72 = result;
      v73 = [result window];

      v74 = recta;
      if (v73)
      {
        [v73 bounds];
        v75 = CGRectGetHeight(v122);

        v71 = v75 * 0.06;
      }

      goto LABEL_35;
    }

LABEL_62:
    __break(1u);
    return result;
  }

  v74 = recta;
LABEL_35:
  [*&v1[v66] contentInset];
  if (v79 != v71 || v76 != v61 || (v77 == v65 ? (v80 = v78 == v63) : (v80 = 0), !v80))
  {
    [*&v1[v66] setContentInset:{v71, v61, v65, v63}];
  }

  [*&v1[v66] verticalScrollIndicatorInsets];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v97;
  if (v98 > v97)
  {
    v87 = v98;
  }

  if (v87 > v74)
  {
    v88 = v87;
  }

  else
  {
    v88 = v74;
  }

  result = [*&v1[v66] verticalScrollIndicatorInsets];
  if (v92 != v82 || v89 != v84 || (v90 == v88 ? (v93 = v91 == v86) : (v93 = 0), !v93))
  {
    v94 = *&v1[v66];

    return [v94 setVerticalScrollIndicatorInsets:{v82, v84, v88, v86}];
  }

  return result;
}

void sub_7E430(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = sub_7D364();
    [v3 alpha];
    v5 = v4;

    v6 = v5 == 1.0;
  }

  else
  {
    v6 = a1;
  }

  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_30;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = &v2[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext];
  v18 = *&v2[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 24];
  v19 = *&v2[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext], v18);
  (*(v19 + 8))(v58, v18, v19);
  v20 = v10;
  v21 = 15.0;
  v22 = v12;
  v23 = v14;
  rect = v16;
  if (LOBYTE(v58[0]) != 2)
  {
    v43 = [v2 view];
    v44 = v43;
    if (!v6)
    {
      if (v43)
      {
        v50 = [v43 window];

        if (!v50)
        {
          v21 = 0.0;
          v24 = v10;
          v25 = v12;
          v26 = v14;
          v27 = v16;
          goto LABEL_7;
        }

        v51 = [v2 view];
        if (v51)
        {
          v52 = v51;
          sub_E104(0, &qword_C7C18);
          sub_983A8();
          v20 = v59;
          v22 = v60;
          v23 = v61;
          v16 = v62;
          v53 = v63;

          v21 = 0.0;
          v24 = v10;
          v25 = v12;
          v26 = v14;
          v27 = rect;
          if (v53)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

LABEL_33:
        __break(1u);
        return;
      }

      goto LABEL_31;
    }

    if (v43)
    {
      v45 = [v43 window];

      if (!v45)
      {
        v49 = 1;
        v20 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v16 = 0.0;
LABEL_26:
        v54 = *(v17 + 3);
        v55 = *(v17 + 4);
        __swift_project_boxed_opaque_existential_1(v17, v54);
        (*(v55 + 16))(v54, v55);
        v21 = v56;
        v24 = v10;
        v25 = v12;
        v26 = v14;
        v27 = rect;
        if (v49)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v46 = [v45 safeAreaLayoutGuide];

      v47 = [v2 view];
      if (v47)
      {
        v48 = v47;
        sub_E104(0, &qword_C7BF8);
        sub_983A8();
        v20 = v59;
        v22 = v60;
        v23 = v61;
        v16 = v62;
        v49 = v63;

        goto LABEL_26;
      }

      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_6:
  v24 = v20;
  v25 = v22;
  v26 = v23;
  v27 = v16;
LABEL_7:
  MaxY = CGRectGetMaxY(*&v24);
  v29 = sub_7D364();
  [v29 intrinsicContentSize];
  v31 = v30;
  v33 = v32;

  if (v6)
  {
    v34 = MaxY - v21 - v33;
  }

  else
  {
    v34 = MaxY;
  }

  v35 = sub_96498();
  v58[3] = v35;
  v58[4] = sub_8DACC(&unk_C7948, 255, &type metadata accessor for Podcasts);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(v35 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.translateTranscript(_:), v35);
  LOBYTE(v35) = sub_963B8();
  __swift_destroy_boxed_opaque_existential_1(v58);
  v64.origin.x = v10;
  v64.origin.y = v12;
  v64.size.width = v14;
  v64.size.height = rect;
  Width = CGRectGetWidth(v64);
  v38 = Width * 0.5 - v31;
  v39 = (Width - v31) * 0.5;
  if (v35)
  {
    v39 = v38;
  }

  v40 = round(v39);
  v41 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton;
  [*&v2[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton] frame];
  v66.origin.x = v40;
  v66.origin.y = v34;
  v66.size.width = v31;
  v66.size.height = v33;
  if (!CGRectEqualToRect(v65, v66))
  {
    [*&v2[v41] setFrame:{v40, v34, v31, v33}];
  }

  v42 = sub_7D494();
  sub_19808();

  sub_90BDC();
}

uint64_t TranscriptViewController.updateContentUnavailableConfiguration(using:)()
{
  v31 = sub_97888();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_978A8();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_978C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  sub_7BEDC();
  v13 = sub_70A64();
  v15 = v14;

  if (v15 == 3)
  {
    *(&v37 + 1) = sub_96C88();
    v38 = &protocol witness table for UIContentUnavailableConfiguration;
    __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_retrySubject);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    LOBYTE(v17) = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_isNetworkReachable);

    static UIContentUnavailableConfiguration.playerTranscriptUnavailableConfig(error:isOffline:retryCallback:)(v13, (v17 & 1) == 0, sub_8DB14, v19);
    v20 = [objc_opt_self() clearColor];
    v21 = sub_96BD8();
    sub_96B68();
    v21(v35, 0);

    sub_98248();
    return sub_70400(v13, 3);
  }

  else if (v15 == 4 && !v13)
  {
    sub_E104(0, &qword_C4810);
    v28 = sub_982E8();
    sub_978B8();
    sub_978E8();
    v22 = *(v7 + 8);
    v29 = v7 + 8;
    v30 = v22;
    v22(v9, v6);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = sub_8DAAC;
    v39 = v23;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v37 = sub_279B0;
    *(&v37 + 1) = &block_descriptor_11;
    v24 = _Block_copy(&aBlock);

    sub_97898();
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_8DACC(&unk_C7910, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
    sub_EA78(&qword_C7920, &qword_C4E18);
    v25 = v31;
    sub_98618();
    v26 = v28;
    sub_98298();
    _Block_release(v24);

    (*(v34 + 8))(v2, v25);
    (*(v32 + 8))(v5, v33);
    return v30(v12, v6);
  }

  else
  {
    sub_70400(v13, v15);
    v38 = 0;
    aBlock = 0u;
    v37 = 0u;
    return sub_98248();
  }
}

void sub_7EF30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_7BEDC();

    v2 = sub_70A64();
    v4 = v3;
    v5 = v3;

    if (v5 == 4 && v2 == 0)
    {
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {

          *(&v11 + 1) = sub_96C88();
          v12 = &protocol witness table for UIContentUnavailableConfiguration;
          __swift_allocate_boxed_opaque_existential_1(&v10);
          sub_96C78();
        }

        else
        {
          v12 = 0;
          v10 = 0u;
          v11 = 0u;
        }

        sub_98248();
      }
    }

    else
    {
      sub_70400(v2, v4);
    }
  }
}

uint64_t sub_7F13C()
{
  v1 = v0;
  v2 = type metadata accessor for FooterViewModel(0);
  v44 = *(v2 - 8);
  v43 = *(v44 + 64);
  v3 = __chkstk_darwin(v2 - 8);
  v42 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = v38 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FB8);
  v6 = *(v47 - 8);
  v46 = *(v6 + 64);
  v7 = __chkstk_darwin(v47);
  v45 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = v38 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FC0);
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v48);
  v13 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v38 - v14;
  v39 = v38 - v14;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_objectGraph);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v38[1] = sub_E104(0, &qword_C7FC8);
  type metadata accessor for TranscriptContentViewModel();

  sub_981F8();
  sub_78400();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v48;
  (*(v10 + 16))(v13, v15, v48);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v21, v13, v20);
  *(v23 + v22) = v19;
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FD0));
  v25 = sub_96C98();
  sub_97E08();
  v26 = v41;
  sub_86C54(v41);
  v27 = v42;
  sub_8FF14(v26, v42);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = swift_allocObject();
  sub_8FF14(v27, v29 + v28);
  v30 = v40;
  sub_98208();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v45;
  v33 = v47;
  (*(v6 + 16))(v45, v30, v47);
  v34 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v6 + 32))(v36 + v34, v32, v33);
  *(v36 + v35) = v31;

  sub_96CA8();
  (*(v6 + 8))(v30, v33);
  (*(v10 + 8))(v39, v48);

  return v25;
}

id sub_7F6B4()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_7F728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7780);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v24 - v4;
  v6 = sub_96318();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  v13 = type metadata accessor for TranslateButton();
  __chkstk_darwin(v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_96498();
  v26[3] = v16;
  v26[4] = sub_8DACC(&unk_C7948, 255, &type metadata accessor for Podcasts);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.translateTranscript(_:), v16);
  LOBYTE(v16) = sub_963B8();
  __swift_destroy_boxed_opaque_existential_1(v26);
  result = 0;
  if (v16)
  {
    v24[0] = sub_78300();
    v19 = sub_95FC8();
    v20 = *(v19 - 8);
    v24[1] = v13;
    v21 = *(v20 + 56);
    v21(v5, 1, 1, v19);
    v21(v3, 1, 1, v19);
    sub_96308();
    *v15 = v24[0];
    v25 = 0;
    sub_97728();
    v22 = v26[1];
    v15[8] = v26[0];
    *(v15 + 2) = v22;
    (*(v7 + 16))(v10, v12, v6);
    sub_97728();
    (*(v7 + 8))(v12, v6);
    v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C10));
    return sub_971A8();
  }

  return result;
}

id sub_7FAD0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_7FB30()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___speechController;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___speechController);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v4 = sub_96498();
    v18[3] = v4;
    v18[4] = sub_8DACC(&unk_C7948, 255, &type metadata accessor for Podcasts);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.speakTranslatedTranscript(_:), v4);
    v6 = sub_963B8();
    __swift_destroy_boxed_opaque_existential_1(v18);
    v3 = 0;
    if (v6)
    {
      v7 = sub_78300();
      v8 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playbackController);
      v9 = type metadata accessor for TranscriptTranslationSpeechController();
      v10 = objc_allocWithZone(v9);
      v11 = OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_identifiedVoicesPerLanguage;

      *&v10[v11] = sub_76F74(&_swiftEmptyArrayStorage);
      v12 = OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_allVoicesPerLanguage;
      *&v10[v12] = sub_76F88(&_swiftEmptyArrayStorage);
      v13 = &v10[OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_currentParagraphIndex];
      *v13 = 0;
      v13[8] = 1;
      *&v10[OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController____lazy_storage___speechSynthesizer] = 0;
      *&v10[OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_liveObserver] = v7;
      *&v10[OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_playbackController] = v8;
      v17.receiver = v10;
      v17.super_class = v9;
      v3 = objc_msgSendSuper2(&v17, "init");
    }

    v14 = *(v0 + v1);
    *(v0 + v1) = v3;
    v15 = v3;
    sub_375D8(v14);
  }

  sub_3C610(v2);
  return v3;
}

BOOL sub_7FD08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  return CGRectEqualToRect(*a1, *a2);
}

void sub_7FD58()
{
  v1 = sub_7D494();
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState + 32);
  v1[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_isKeyboardPresent] = v2 ^ 1;
  v8 = v1;
  [v1 alpha];
  if ((v2 ^ 1 ^ (v3 != 1.0)))
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v8;
    *(v5 + 24) = v2;
    aBlock[4] = sub_8FAD0;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_279B0;
    aBlock[3] = &block_descriptor_152;
    v6 = _Block_copy(aBlock);
    v7 = v8;

    [v4 animateWithDuration:v6 animations:0.3];

    _Block_release(v6);
  }

  else
  {
  }
}

id sub_7FED0()
{
  v1 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___timestampView;
  v2 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___timestampView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___timestampView);
  }

  else
  {
    v11 = 0;
    v4 = v0;
    v5 = sub_78400();
    v6 = objc_allocWithZone(type metadata accessor for TranscriptTimestampView());
    v7 = TranscriptTimestampView.init(enclosingViewType:enclosingScrollView:)(&v11, v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id TranscriptViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_97DC8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_802E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_96AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_errorRetain();
    sub_96A78();
    swift_errorRetain();
    v10 = sub_96AA8();
    v11 = sub_981B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22[1] = a4;
      v13 = v12;
      v14 = swift_slowAlloc();
      v22[2] = a3;
      v23[0] = v14;
      *v13 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
      v15 = sub_97E48();
      v17 = sub_11FC8(v15, v16, v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v10, v11, "Failed to complete alignment: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = sub_7BEDC();

      v21 = *(v20 + 24);
      *(v20 + 24) = a3;
      swift_errorRetain();
      swift_errorRetain();
      sub_71284(v21);
      sub_72654(v21);
    }

    else
    {
    }
  }
}

uint64_t sub_80554()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_7BEDC();

    *(v2 + 16) = 14;
    sub_70DEC();
  }

  return result;
}

uint64_t sub_805C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v14 = *(a2 + 16);
  v15 = *(a2 + 8);
  v12 = *a2;
  v13 = *(a2 + 24);
  v10 = *a1;
  v11 = *(a2 + 32);
  sub_8FD04(*a1);
  sub_8FD04(v4);
  sub_8FD14(v10);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v12;
  a3[6] = v15;
  a3[7] = v14;
  a3[8] = v13;
  a3[9] = v11;
}

void sub_806B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4 != 1)
    {
      v7 = *(a2 + 16);
      v18 = *(a2 + 8);
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);

      sub_7BEDC();
      v10 = sub_70A64();
      v12 = v11;
      v13 = v11;

      if (v13 != 4 || v10)
      {
        sub_70400(v10, v12);

        v14 = sub_70A64();
        v16 = v15;

        if (v16 > 2u)
        {
          if (v16 == 3)
          {

            sub_4C60(a2, &unk_C7F70);
            sub_70400(v14, 3);
            return;
          }

          goto LABEL_15;
        }

        if (v16 - 1 >= 2 && v14 == 128)
        {
LABEL_15:

          sub_4C60(a2, &unk_C7F70);
          return;
        }
      }

      v17 = *a1;
      if (*a1 == 1)
      {
        v17 = 0;
      }

      sub_8E024(v4, v18, v7, v8, v17, v9);
      sub_4C60(a2, &unk_C7F70);
    }
  }
}

uint64_t sub_80898(unint64_t *a1)
{
  v2 = sub_96AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_96A78();

  v7 = sub_96AA8();
  v8 = sub_981A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    if (v6 >> 62)
    {
      v11 = sub_98778();
    }

    else
    {
      v11 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    }

    v12 = v11 == 0;
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = 7632239;
    }

    if (v12)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_11FC8(v13, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "Updated observer viewModels paragraphs: with%s content", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_80A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *a3 = *(a1 + 40);
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 64) = v7;
  *(a3 + 72) = v8;
}

void sub_80B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_96AB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *a2;
    if (!*a2)
    {
LABEL_34:

      return;
    }

    v69 = v5;
    v14 = *(a2 + 16);
    v71 = *(a2 + 8);
    v72 = v14;
    v70 = *(a2 + 24);
    v15 = *(a2 + 32);
    *&v74 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
    sub_EA78(&qword_C5768, &unk_C7EF0);
    if ((sub_98128() & 1) == 0)
    {

LABEL_9:

      return;
    }

    v68 = v4;
    v16 = *(a1 + 32);
    sub_7BEDC();
    v17 = sub_70A64();
    v19 = v18;

    sub_70414(v17, v19);
    v67 = v16;
    v20 = sub_33F00(v15, v16);
    if (v20)
    {
      if (v19 != 4 || v17)
      {
        sub_70400(v17, v19);
LABEL_12:
        if (v19 != 4 || v17)
        {
          sub_70400(v17, v19);
          if ((v20 & (*a1 != 0)) != 0)
          {
            v21 = *(a1 + 8);
            v22 = *(a1 + 16);
            v23 = *(a1 + 24);
            v24 = *a1;

            v25 = sub_70A64();
            v27 = v26;

            if (v27 > 1u)
            {
              if (v27 == 3)
              {

                sub_70400(v25, 3);
                goto LABEL_9;
              }

LABEL_39:

              goto LABEL_9;
            }

            if (v27 || v25 == 128 || (sub_2ED38(v24, v21, v22, v23 & 1, v13) & 1) != 0)
            {
              goto LABEL_39;
            }

            sub_96A78();

            v45 = sub_96AA8();
            v46 = sub_981D8();

            v47 = v24;

            LODWORD(v67) = v46;
            if (os_log_type_enabled(v45, v46))
            {
              v48 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              *v48 = 136315650;
              *(v48 + 4) = sub_11FC8(0xD00000000000001BLL, 0x80000000000A5160, &v73);
              *(v48 + 12) = 2080;
              *&v74 = v47;
              *(&v74 + 1) = v21;
              v75 = v22;
              LOBYTE(v76) = v23;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F00);
              v49 = sub_97E48();
              v51 = sub_11FC8(v49, v50, &v73);

              *(v48 + 14) = v51;
              *(v48 + 22) = 2080;

              v53 = sub_2EEBC(v52, v71, v72, v70 & 1);
              v55 = v54;

              v56 = sub_11FC8(v53, v55, &v73);

              *(v48 + 24) = v56;
              _os_log_impl(&dword_0, v45, v67, "%s scroll to paragraph (old: %s, new: %s)", v48, 0x20u);
              swift_arrayDestroy();
            }

            else
            {
            }

            (*(v69 + 8))(v7, v68);
            v57 = *(v13 + 16);
            v58 = v57 >> 61;
            if ((v57 >> 61) <= 1)
            {
              if (!v58)
              {
                v60 = *(v57 + 16);
                v61 = *(v57 + 32);
                v62 = *(v57 + 40);

                goto LABEL_54;
              }

              v60 = *(&dword_10 + (v57 & 0x1FFFFFFFFFFFFFFFLL));
            }

            else
            {
              v59 = (v57 & 0x1FFFFFFFFFFFFFFFLL);
              if (v58 != 2)
              {
                if (v58 == 3)
                {
                  v60 = v59[5];
                  v61 = v59[7];
                  v62 = v59[8];

LABEL_54:
                  *&v74 = v60;
                  *(&v74 + 1) = v63;
                  v75 = v61;
                  v76 = v62;
                  v77 = v58;
                  sub_82008(&v74, 1);

                  sub_20438(v74, *(&v74 + 1), v75, v76, v77);
                  return;
                }

                v60 = v59[14];
                v61 = v59[16];

LABEL_53:
                v62 = 0;
                goto LABEL_54;
              }

              v60 = v59[2];

              v63 = 0;
            }

            v61 = 0;
            goto LABEL_53;
          }
        }

        sub_96A78();

        v28 = sub_96AA8();
        v29 = sub_981D8();

        if (os_log_type_enabled(v28, v29))
        {
          LODWORD(v67) = v29;
          v30 = v19;
          v31 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v74 = v65;
          *v31 = 136315650;
          *(v31 + 4) = sub_11FC8(0xD00000000000001BLL, 0x80000000000A5160, &v74);
          *(v31 + 12) = 1024;
          v33 = v30 != 4 || v17 != 0;
          v66 = v33;
          *(v31 + 14) = v33;
          *(v31 + 18) = 2080;
          v34 = v70 & 1;
          v70 &= 1u;

          v37 = v71;
          v36 = v72;
          v38 = sub_2EEBC(v35, v71, v72, v34);
          v40 = v39;

          v41 = sub_11FC8(v38, v40, &v74);

          *(v31 + 20) = v41;
          _os_log_impl(&dword_0, v28, v67, "%s updating the data source (animated: %{BOOL}d, activeParagraph: %s)", v31, 0x1Cu);
          swift_arrayDestroy();

          (*(v69 + 8))(v10, v68);
          v42 = v70;
          v43 = v66;
        }

        else
        {

          (*(v69 + 8))(v10, v68);
          v43 = v19 != 4 || v17 != 0;
          v42 = v70 & 1;
          v37 = v71;
          v36 = v72;
        }

        sub_819C4(v15, v13, v37, v36, v42, v43);

        goto LABEL_34;
      }
    }

    else
    {
      sub_70400(v17, v19);
    }

    sub_812D8(v15);
    goto LABEL_12;
  }
}

uint64_t sub_812D8(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F28);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F30);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F38);
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  if (&_swiftEmptyArrayStorage >> 62 && sub_98778())
  {
    v15 = sub_DC30(&_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v41 = v11;
  v43 = v9;
  v16 = (v2 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_searchSubscriptions);
  swift_beginAccess();
  *v16 = v15;

  v34 = sub_41168(a1);
  v17 = v34[2];
  if (v17)
  {
    v18 = sub_E104(0, &qword_C4810);
    v37 = (v45 + 8);
    v38 = v18;
    ++v35;
    v36 = (v44 + 8);
    v19 = (v34 + 5);
    v39 = v12;
    v40 = v16;
    v46 = v14;
    do
    {
      v20 = *v19;
      v44 = *(v19 - 1);
      v45 = v17;
      swift_getKeyPath();
      v47 = v20;
      sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent);
      v21 = v2;

      sub_962A8();

      v47 = *(*&v20[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText] + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText_activeSearchResultFrame);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F40);
      type metadata accessor for CGRect(0);
      sub_EA78(&qword_C7F48, &qword_C7F40);
      v22 = v42;
      sub_96EF8();

      sub_EA78(&qword_C7F50, &qword_C7F28);
      sub_8DACC(&qword_C7F58, 255, type metadata accessor for CGRect);
      v23 = v41;
      sub_97018();
      (*v37)(v8, v22);
      v24 = sub_982E8();
      v47 = v24;
      v25 = sub_982A8();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      sub_EA78(&qword_C7F60, &qword_C7F30);
      sub_DF3C();
      v26 = v43;
      sub_96FE8();
      sub_4C60(v6, &qword_C48D8);

      (*v36)(v23, v26);
      v27 = swift_allocObject();
      v2 = v21;
      v28 = v39;
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v30 = v44;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      sub_EA78(&qword_C7F68, &qword_C7F38);

      v31 = v46;
      sub_97028();

      (*v35)(v31, v28);
      swift_beginAccess();
      sub_96DB8();
      swift_endAccess();
      v32 = v45;

      v19 += 2;
      v17 = v32 - 1;
    }

    while (v17);
  }
}

uint64_t sub_819C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  v73 = a5;
  v74 = a6;
  v72 = a4;
  v71 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F08);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  sub_8FC7C();
  sub_207E8();
  sub_96BB8();
  v14._rawValue = &off_BB6B0;
  v80 = v13;
  v81 = v10;
  sub_96BA8(v14);
  v15 = sub_7719C(&_swiftEmptyArrayStorage);
  v85 = v15;
  if (a1 >> 62)
  {
LABEL_49:
    v16 = sub_98778();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_50:
    v57 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
    swift_beginAccess();

    v59 = v80;
    sub_77F30(v58, &v85);

    *(v7 + v57) = a1;

    v60 = sub_7D494();

    sub_1A014(v61);

    v62 = sub_782A0();
    v63 = swift_allocObject();
    *(v63 + 16) = v7;
    *(v63 + 24) = a2;
    v64 = v72;
    *(v63 + 32) = v71;
    *(v63 + 40) = v64;
    *(v63 + 48) = v73 & 1;
    *(v63 + 49) = v74 & 1;
    v65 = v7;

    sub_96CC8();

    return (*(v11 + 8))(v59, v81);
  }

  v16 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v16)
  {
    goto LABEL_50;
  }

LABEL_3:
  v68 = a2;
  v69 = v7;
  v70 = v11;
  v17 = 0;
  v79 = a1 & 0xC000000000000001;
  v75 = a1 & 0xFFFFFFFFFFFFFF8;
  v76 = xmmword_9AF50;
  v77 = v16;
  v78 = a1;
  while (1)
  {
    if (v79)
    {
      v22 = sub_986C8();
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v17 >= *(v75 + 16))
      {
        goto LABEL_48;
      }

      v22 = *(a1 + 8 * v17 + 32);

      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    v24 = *(v22 + 16);
    a1 = v24 >> 61;
    v82 = v17;
    v83 = v23;
    if ((v24 >> 61) <= 1)
    {
      if (!a1)
      {
        v26 = *(v24 + 16);
        v27 = *(v24 + 32);
        v28 = *(v24 + 40);

        goto LABEL_25;
      }

      v26 = *(&dword_10 + (v24 & 0x1FFFFFFFFFFFFFFFLL));
    }

    else
    {
      v25 = (v24 & 0x1FFFFFFFFFFFFFFFLL);
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          v26 = v25[5];
          v27 = v25[7];
          v28 = v25[8];

          goto LABEL_25;
        }

        v26 = v25[14];
        v27 = v25[16];

        goto LABEL_24;
      }

      v26 = v25[2];

      v29 = 0;
    }

    v27 = 0;
LABEL_24:
    v28 = 0;
LABEL_25:
    v11 = v26;
    *&v86 = v26;
    *(&v86 + 1) = v29;
    a2 = v29;
    v30 = v27;
    *&v87 = v27;
    *(&v87 + 1) = v28;
    v31 = v28;
    v88 = a1;
    v7 = v22;

    v32 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v15;
    v35 = sub_741B8(&v86);
    v36 = *(v15 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_46;
    }

    v15 = v34;
    if (*(v32 + 24) < v38)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v84;
      if (v34)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_75858();
      v41 = v84;
      if (v15)
      {
LABEL_33:
        v15 = v41;
        *(v41[7] + 8 * v35) = v7;

        sub_20438(v11, a2, v30, v31, a1);
        goto LABEL_34;
      }
    }

LABEL_29:
    v41[(v35 >> 6) + 8] |= 1 << v35;
    v42 = v41[6] + 40 * v35;
    v43 = v87;
    *v42 = v86;
    *(v42 + 16) = v43;
    *(v42 + 32) = v88;
    *(v41[7] + 8 * v35) = v7;
    v44 = v41[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_47;
    }

    v15 = v41;
    v41[2] = v46;
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F20);
    v47 = swift_allocObject();
    *(v47 + 16) = v76;
    v48 = v7[2];
    v49 = v48 >> 61;
    a1 = v78;
    if ((v48 >> 61) <= 1)
    {
      if (v49)
      {
        v55 = v48 & 0x1FFFFFFFFFFFFFFFLL;
        v56 = *(v55 + 24);
        *(v47 + 32) = *(v55 + 16);
        *(v47 + 40) = v56;
        *(v47 + 48) = 0;
        *(v47 + 56) = 0;
        *(v47 + 64) = 1;
      }

      else
      {
        v53 = *(v48 + 24);
        v54 = *(v48 + 32);
        *(v47 + 32) = *(v48 + 16);
        *(v47 + 40) = v53;
        *(v47 + 48) = v54;
        *(v47 + 64) = 0;
      }
    }

    else
    {
      v50 = v48 & 0x1FFFFFFFFFFFFFFFLL;
      if (v49 == 2)
      {
        *(v47 + 32) = *(v50 + 16);
        *(v47 + 40) = 0;
        *(v47 + 48) = 0;
        *(v47 + 56) = 0;
        *(v47 + 64) = 2;

        goto LABEL_7;
      }

      if (v49 == 3)
      {
        v51 = *(v50 + 48);
        v52 = *(v50 + 56);
        *(v47 + 32) = *(v50 + 40);
        *(v47 + 40) = v51;
        *(v47 + 48) = v52;
        v21 = 3;
      }

      else
      {
        v19 = *(v50 + 112);
        v18 = *(v50 + 120);
        v20 = *(v50 + 128);
        *(v47 + 32) = v19;
        *(v47 + 40) = v18;
        *(v47 + 48) = v20;
        *(v47 + 56) = 0;
        v21 = 4;
      }

      *(v47 + 64) = v21;
    }

LABEL_7:
    LOBYTE(v84) = 0;
    sub_96B88();

    v17 = v82 + 1;
    if (v83 == v77)
    {
      v85 = v15;
      v11 = v70;
      v7 = v69;
      a2 = v68;
      goto LABEL_50;
    }
  }

  sub_74948(v38, isUniquelyReferenced_nonNull_native);
  v39 = sub_741B8(&v86);
  if ((v15 & 1) == (v40 & 1))
  {
    v35 = v39;
    v41 = v84;
    if (v15)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  result = sub_98868();
  __break(1u);
  return result;
}

uint64_t sub_82008(__int128 *a1, int a2)
{
  v22 = a2;
  v23 = sub_96AB8();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_96048();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 32);
  v15 = sub_782A0(v11);
  v16 = *a1;
  v25 = a1[1];
  v24 = v16;
  v26 = v14;
  sub_96CD8();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_4C60(v8, &qword_C52A0);
    sub_96A78();
    v17 = sub_96AA8();
    v18 = sub_981B8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Attempted to scroll to an identifier that is not in the data source", v19, 2u);
    }

    return (*(v3 + 8))(v5, v23);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_822E0(v13, v22 & 1);
    return (*(v10 + 8))(v13, v9);
  }
}

void sub_822E0(uint64_t a1, char a2)
{
  v3 = sub_96AB8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_782A0(v5);
  sub_96CB8();

  if (v15 == 255)
  {
    sub_96A78();
    v11 = sub_96AA8();
    v12 = sub_981B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Attempted to scroll to an index that is not in the data source", v13, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    sub_20424(v14[1], v14[2], v14[3], v14[4], v15);
    v9 = sub_78400();
    isa = sub_95FE8().super.isa;
    [v9 _scrollToItemAtIndexPath:isa atScrollPosition:1 additionalInsets:a2 & 1 animated:{20.0, 0.0, 0.0, 0.0}];
  }
}

uint64_t sub_824B0(void *a1)
{
  v2 = v1;
  v4 = sub_96938();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_96AB8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playTask;
  v18 = *(v2 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playTask);
  v47 = v6;
  if (v18)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    sub_980A8();
  }

  *(v2 + v17) = 0;

  sub_96A78();
  v19 = a1;
  v20 = sub_96AA8();
  v21 = sub_981A8();

  v22 = os_log_type_enabled(v20, v21);
  v44 = v10;
  v45 = v8;
  if (v22)
  {
    v40 = v13;
    v41 = v7;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v50 = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = [v19 transcriptIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_97E08();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v48 = v27;
    v49 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7D80);
    v30 = sub_97E48();
    v32 = sub_11FC8(v30, v31, &v50);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_0, v20, v21, "Beginning alignment with transcripts content %{private,mask.hash}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);

    v7 = v41;
    v46 = *(v45 + 8);
    v46(v16, v41);
    v13 = v40;
  }

  else
  {

    v46 = *(v8 + 8);
    v46(v16, v7);
  }

  v33 = sub_7BEDC();
  v34 = *(v33 + 24);
  *(v33 + 24) = 2;
  sub_71284(v34);
  sub_72654(v34);

  v35 = v47;
  sub_82B98(v19, v47);
  NowPlayingAlignmentCoordinator.align(_:)(v35);
  (*(v42 + 8))(v35, v43);
  sub_96A78();
  v36 = sub_96AA8();
  v37 = sub_981A8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "Alignment for episode began", v38, 2u);
  }

  return (v46)(v13, v7);
}

uint64_t sub_82B98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C53B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_969F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_98198();
  if (v12)
  {
    v13 = sub_96968();
    sub_8DACC(&qword_C7D90, 255, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    v15 = v14;
    v16 = &enum case for AlignmentCoordinatorError.invalidAdamID(_:);
LABEL_3:
    (*(*(v13 - 8) + 104))(v15, *v16, v13);
    return swift_willThrow();
  }

  v31 = a2;
  v32 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v22 = sub_969C8();
    v24 = v23;
    v33 = v32;
    sub_8F328();
    if (v22 == sub_985F8() && v24 == v25)
    {
    }

    else
    {
      v27 = sub_98838();

      if ((v27 & 1) == 0)
      {
        (*(v8 + 8))(v10, v7);
        goto LABEL_6;
      }
    }

    v28 = [a1 priceType];
    if (v28)
    {
      v29 = v28;
      sub_97E08();
    }

    sub_969D8();
    sub_96918();
    return (*(v8 + 8))(v10, v7);
  }

  sub_4C60(v6, &qword_C53B8);
LABEL_6:
  v18 = [a1 transcriptIdentifier];
  if (!v18)
  {
    v13 = sub_96968();
    sub_8DACC(&qword_C7D90, 255, &type metadata accessor for AlignmentCoordinatorError);
    swift_allocError();
    v15 = v30;
    v16 = &enum case for AlignmentCoordinatorError.noTranscriptForEpisode(_:);
    goto LABEL_3;
  }

  v19 = v18;
  sub_97E08();

  v20 = [a1 priceType];
  if (v20)
  {
    v21 = v20;
    sub_97E08();
  }

  return sub_96918();
}

void TranscriptViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  __chkstk_darwin(v6 - 8);
  v8 = v39 - v7;
  v9 = sub_96048();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83758(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_4C60(v8, &qword_C52A0);
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  isa = sub_95FE8().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = sub_96028();
  v16 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (v17 >> 62)
  {
    if (v15 < sub_98778())
    {
      goto LABEL_6;
    }

LABEL_35:
    (*(v10 + 8))(v12, v9);

    return;
  }

  if (v15 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_35;
  }

LABEL_6:
  v18 = sub_96028();
  swift_beginAccess();
  v19 = *(v3 + v16);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = sub_986C8();
    goto LABEL_10;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
  {
    v20 = *(v19 + 8 * v18 + 32);

LABEL_10:
    swift_endAccess();
    v21 = [objc_opt_self() feedbackGeneratorForView:v14];
    [v21 selectionChanged];

    v22 = sub_78300();
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 16) = v20;
    *(v22 + 40) = 1;

    v23 = sub_96498();
    v40[3] = v23;
    v40[4] = sub_8DACC(&unk_C7948, 255, &type metadata accessor for Podcasts);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.speakTranslatedTranscript(_:), v23);
    LOBYTE(v23) = sub_963B8();
    __swift_destroy_boxed_opaque_existential_1(v40);
    if ((v23 & 1) != 0 && (v25 = *(v20 + 16), !(v25 >> 61)) && (swift_getKeyPath(), v40[0] = v25, sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent), , sub_962A8(), , v26 = *(v25 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText), swift_getKeyPath(), v40[0] = v26, v39[1] = sub_8DACC(&qword_C7760, 255, type metadata accessor for TextContent.LiveText), , sub_962A8(), , , v27 = *(v26 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8), , , v27))
    {

      v28 = sub_7FB30();
      if (v28)
      {
        v29 = v28;
        v30 = sub_96008();
        v31 = sub_72834();
        [v31 stopSpeakingAtBoundary:0];

        v32 = &v29[OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_currentParagraphIndex];
        if (v29[OBJC_IVAR____TtC19PodcastsTranscripts37TranscriptTranslationSpeechController_currentParagraphIndex + 8])
        {
          sub_728BC(v30);
        }

        else
        {
          *v32 = 0;
          v32[8] = 1;
        }
      }
    }

    else
    {
      sub_8399C(v20);
    }

    v33 = *(v20 + 16);
    v34 = v33 >> 61;
    if ((v33 >> 61) <= 1)
    {
      if (!v34)
      {
        sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
        v35 = v33;
LABEL_28:
        swift_getObjectType();
        v38 = swift_conformsToProtocol2();
        if (v35)
        {
          if (v38)
          {

            sub_43A70();
          }
        }

        sub_83B6C();
        *(sub_7BEDC() + 16) = 6;
        sub_70DEC();

LABEL_32:
        (*(v10 + 8))(v12, v9);
        return;
      }

      v35 = v33 & 0x1FFFFFFFFFFFFFFFLL;
      v36 = &qword_C52B0;
      v37 = type metadata accessor for LinkContent;
    }

    else
    {
      v35 = v33 & 0x1FFFFFFFFFFFFFFFLL;
      if (v34 == 2)
      {
        v36 = &unk_C77D0;
        v37 = type metadata accessor for SilentContent;
      }

      else if (v34 == 3)
      {
        v36 = &qword_C52A8;
        v37 = type metadata accessor for SpeakerContent;
      }

      else
      {
        v36 = &qword_C77C0;
        v37 = type metadata accessor for ChapterTitleContent;
      }
    }

    sub_8DACC(v36, 255, v37);
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_83758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_96048();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_96028();
  v11 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12 >> 62)
  {
    if (v10 < sub_98778())
    {
LABEL_3:
      v13 = sub_96028();
      result = swift_beginAccess();
      v15 = *(v3 + v11);
      if ((v15 & 0xC000000000000001) == 0)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
        {
          v16 = *(v15 + 8 * v13 + 32);

LABEL_7:
          swift_endAccess();
          if (*(v16 + 16) >> 61 != 4)
          {

            (*(v7 + 16))(a2, a1, v6);
            return (*(v7 + 56))(a2, 0, 1, v6);
          }

          result = sub_96028();
          if (!__OFADD__(result, 1))
          {
            sub_96038();
            sub_96018();
            sub_83758(v9);
            (*(v7 + 8))(v9, v6);
          }

          goto LABEL_17;
        }

        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      v16 = sub_986C8();
      goto LABEL_7;
    }
  }

  else if (v10 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  return (*(v7 + 56))(a2, 1, 1, v6);
}

uint64_t sub_8399C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playTask;
  if (*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E10);
    sub_980A8();
  }

  v8 = sub_98098();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_98068();

  v10 = sub_98058();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  v11[5] = a1;

  *(v2 + v7) = sub_89F04(0, 0, v6, &unk_9FF90, v11);
}

uint64_t sub_83B6C()
{
  v0 = sub_97BF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_963D8();
  if (v4)
  {
    v5 = sub_98198();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      v9[1] = v5;
      sub_8F328();
      sub_985F8();
    }
  }

  sub_97A08();
  sub_979E8();

  sub_97968();
  sub_97A38();

  return (*(v1 + 8))(v3, v0);
}

void *sub_83EFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_9CF70;
  v26._countAndFlagsBits = 0xD000000000000029;
  v26._object = 0x80000000000A4FC0;
  v29._countAndFlagsBits = 0xD00000000000003DLL;
  v29._object = 0x80000000000A4FF0;
  sub_967C8(v26, v29);
  v3 = swift_allocObject();
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5 = objc_allocWithZone(UIAccessibilityCustomAction);

  v6 = sub_97DC8();

  v23 = sub_8F634;
  v24 = v3;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_8C0E0;
  v22 = &block_descriptor_52;
  v7 = _Block_copy(&aBlock);
  v8 = [v5 initWithName:v6 actionHandler:v7];

  _Block_release(v7);

  *(v2 + 32) = v8;
  v25 = v2;
  sub_7BEDC();
  v9 = sub_70A64();
  v11 = v10;

  if (v11 >= 3u)
  {
    if (v11 == 3)
    {
      sub_70400(v9, 3);
    }

    goto LABEL_8;
  }

  if ((v9 & 0xC0) == 0x40)
  {
LABEL_8:
    v28._object = 0x80000000000A5060;
    v31._countAndFlagsBits = 0xD000000000000047;
    v31._object = 0x80000000000A5090;
    v28._countAndFlagsBits = 0xD00000000000002DLL;
    sub_967C8(v28, v31);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(UIAccessibilityCustomAction);

    v14 = sub_97DC8();

    v23 = sub_8F63C;
    v24 = v17;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v15 = &block_descriptor_56;
    goto LABEL_9;
  }

  v27._object = 0x80000000000A50E0;
  v30._countAndFlagsBits = 0xD000000000000047;
  v30._object = 0x80000000000A5110;
  v27._countAndFlagsBits = 0xD00000000000002DLL;
  sub_967C8(v27, v30);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(UIAccessibilityCustomAction);

  v14 = sub_97DC8();

  v23 = sub_8F660;
  v24 = v12;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v15 = &block_descriptor_60;
LABEL_9:
  v21 = sub_8C0E0;
  v22 = v15;
  v18 = _Block_copy(&aBlock);
  [v13 initWithName:v14 actionHandler:v18];

  _Block_release(v18);

  sub_97FA8();
  if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_97FD8();
  }

  sub_98008();

  return v25;
}

BOOL sub_843A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong _accessibilityShowContextMenuForElement:Strong targetPointValue:0];
  }

  return v1 != 0;
}

uint64_t sub_84414(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_7BEDC();

    *(v6 + 16) = a3;
    sub_70DEC();
  }

  return 1;
}

Class sub_84490(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_E104(0, &qword_C7BC8);
    v4.super.isa = sub_97FB8().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

Swift::Bool __swiftcall TranscriptViewController.scrollViewShouldScrollToTop(_:)(UIScrollView a1)
{
  *(sub_7BEDC() + 16) = 3;
  sub_70DEC();

  return 1;
}

uint64_t sub_847E8(uint64_t a1, char a2)
{
  *(sub_7BEDC() + 16) = a2;
  sub_70DEC();
}

void sub_84834(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a1;
  *(sub_7BEDC() + 16) = a4;
  sub_70DEC();
}

Swift::Void __swiftcall TranscriptViewController.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView _, Swift::Bool willDecelerate)
{
  *(sub_7BEDC() + 16) = 12;
  sub_70DEC();
}

Swift::Void __swiftcall TranscriptViewController.scrollViewDidScroll(_:)(UIScrollView a1)
{
  v2 = v1;
  isa = a1.super.super.super.isa;
  [(objc_class *)a1.super.super.super.isa contentOffset];
  sub_84B1C(v4, v5);
  sub_84FC8(isa);
  v6 = sub_7D494();
  sub_19808();

  [(objc_class *)isa contentOffset];
  v8 = v7;
  [(objc_class *)isa contentInset];
  LOBYTE(isa) = floor(v8 + v9) > 0.0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = isa;
  v13[4] = sub_8EAF0;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_279B0;
  v13[3] = &block_descriptor_19;
  v12 = _Block_copy(v13);
  v2;

  [v10 animateWithDuration:v12 animations:0.3];
  _Block_release(v12);
  sub_90BDC();
}

void sub_84B1C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_96048();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v41[-v11];
  v13 = sub_78400();
  [v13 _contentMargin];
  v15 = v14;

  if (v15 + a2 <= 0.0)
  {
    v27 = sub_7FED0();
    v28 = sub_989A8();
    v30 = v29;
    v31 = &v27[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration];
    swift_beginAccess();
    *v31 = v28;
    v31[1] = v30;
    sub_6BA80(v28, v30);

    return;
  }

  v16 = [*(v3 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView) indexPathForItemAtPoint:{a1, v15 + a2}];
  if (v16)
  {
    v17 = v16;
    sub_95FF8();

    (*(v7 + 32))(v12, v9, v6);
    v18 = sub_96028();
    v19 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
    swift_beginAccess();
    v20 = *(v3 + v19);
    if (v20 >> 62)
    {
      if (v18 < sub_98778())
      {
LABEL_5:
        v21 = sub_96028();
        swift_beginAccess();
        v22 = *(v3 + v19);
        if ((v22 & 0xC000000000000001) == 0)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v21 < *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
          {
            v23 = *(v22 + 8 * v21 + 32);

            goto LABEL_9;
          }

          __break(1u);
          return;
        }

        v23 = sub_986C8();
LABEL_9:
        swift_endAccess();
        v24 = *(v23 + 16) >> 61;
        if (v24 <= 1)
        {
          if (!v24)
          {
            v32 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
LABEL_20:
            ObjectType = swift_getObjectType();

            sub_4B3F8(ObjectType, v32);
            v35 = v34;

            if (v35)
            {
              (*(v7 + 8))(v12, v6);

              return;
            }

            v36 = sub_7FED0();
            v37 = sub_989B8();
            v39 = v38;
            v40 = &v36[OBJC_IVAR____TtC19PodcastsTranscripts23TranscriptTimestampView_duration];
            swift_beginAccess();
            *v40 = v37;
            v40[1] = v39;
            sub_6BA80(v37, v39);

            goto LABEL_23;
          }

          v25 = &qword_C52B0;
          v26 = type metadata accessor for LinkContent;
        }

        else if (v24 == 2)
        {
          v25 = &unk_C77D0;
          v26 = type metadata accessor for SilentContent;
        }

        else if (v24 == 3)
        {
          v25 = &qword_C52A8;
          v26 = type metadata accessor for SpeakerContent;
        }

        else
        {
          v25 = &qword_C77C0;
          v26 = type metadata accessor for ChapterTitleContent;
        }

        v32 = sub_8DACC(v25, 255, v26);
        goto LABEL_20;
      }
    }

    else if (v18 < *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

LABEL_23:
    (*(v7 + 8))(v12, v6);
  }
}

void sub_84FC8(void *a1)
{
  if ([a1 isDragging] && (objc_msgSend(a1, "_isScrubbing") & 1) == 0 && (objc_msgSend(a1, "isDecelerating") & 1) == 0)
  {
    v2 = [a1 panGestureRecognizer];
    [v2 velocityInView:a1];
    v4 = v3;

    if (qword_C46D8 != -1)
    {
      swift_once();
    }

    if (*&qword_C7870 >= v4)
    {
      if (v4 >= -*&qword_C7870)
      {
        return;
      }

      v5 = 5;
    }

    else
    {
      v5 = 4;
    }

    *(sub_7BEDC() + 16) = v5;
    sub_70DEC();
  }
}

UIMenu sub_85160(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v92 = a7;
  v10 = sub_960C8();
  __chkstk_darwin(v10 - 8);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_97B98();
  v90 = *(v13 - 8);
  v91 = v13;
  __chkstk_darwin(v13);
  v93 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7BB0);
  __chkstk_darwin(v15 - 8);
  v17 = (v78 - v16);
  v18 = sub_960F8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v89 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = v78 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_E104(0, &qword_C7BB8);
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    v102.value._countAndFlagsBits = 0;
    v102.value._object = 0;
    v98.value.super.isa = 0;
    v98.is_nil = 0;
    v35.value = 0;
    return sub_983F8(v100, v102, v98, v35, 0xFFFFFFFFFFFFFFFFLL, &_swiftEmptyArrayStorage, v77);
  }

  v24 = Strong;
  v88 = a5;
  isa = sub_95FE8().super.isa;
  v26 = [a3 layoutAttributesForItemAtIndexPath:isa];

  v87 = v19;
  if (v26)
  {
    [v26 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    [a3 bounds];
    v28 = v37;
    v30 = v38;
    v32 = v39;
    v34 = v40;
  }

  *v17 = a3;
  v17[1] = v28;
  v17[2] = v30;
  v17[3] = v32;
  v17[4] = v34;
  v41 = enum case for PresentationSource.Position.view(_:);
  v42 = sub_960E8();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v17, v41, v42);
  (*(v43 + 56))(v17, 0, 1, v42);
  v83 = a3;
  v44 = v24;
  sub_960D8();
  v45 = v44;
  v46 = *&v44[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_objectGraph];
  v47 = *(a6 + 16) >> 61;
  v86 = v12;
  v84 = v46;
  if (v47)
  {
    if (v47 > 2)
    {
      if (v47 == 3)
      {
        v49 = &qword_C52A8;
        v50 = type metadata accessor for SpeakerContent;
      }

      else
      {
        v49 = &qword_C77C0;
        v50 = type metadata accessor for ChapterTitleContent;
      }
    }

    else if (v47 == 1)
    {
      v49 = &qword_C52B0;
      v50 = type metadata accessor for LinkContent;
    }

    else
    {
      v49 = &unk_C77D0;
      v50 = type metadata accessor for SilentContent;
    }

    v48 = sub_8DACC(v49, 255, v50);

    v82 = 0;
  }

  else
  {

    v82 = sub_42EF8();

    v48 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
  }

  ObjectType = swift_getObjectType();
  v52 = *(v48 + 16);

  v53 = v52(ObjectType, v48);
  v55 = v54;

  v81 = v53;
  v80 = v55;
  if (v47 <= 1)
  {
    if (!v47)
    {
      v58 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
      goto LABEL_26;
    }

    v56 = &qword_C52B0;
    v57 = type metadata accessor for LinkContent;
  }

  else if (v47 == 2)
  {
    v56 = &unk_C77D0;
    v57 = type metadata accessor for SilentContent;
  }

  else if (v47 == 3)
  {
    v56 = &qword_C52A8;
    v57 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v56 = &qword_C77C0;
    v57 = type metadata accessor for ChapterTitleContent;
  }

  v58 = sub_8DACC(v56, 255, v57);
LABEL_26:
  v59 = swift_getObjectType();
  v60 = *(v58 + 24);

  v61 = v60(v59, v58);
  v63 = v62;

  v85 = v18;
  v79 = v61;
  v78[1] = v63;
  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v64 = &unk_C77D0;
      v65 = type metadata accessor for SilentContent;
    }

    else if (v47 == 3)
    {
      v64 = &qword_C52A8;
      v65 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v64 = &qword_C77C0;
      v65 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_35;
  }

  if (v47)
  {
    v64 = &qword_C52B0;
    v65 = type metadata accessor for LinkContent;
LABEL_35:
    v66 = sub_8DACC(v64, 255, v65);
    goto LABEL_36;
  }

  v66 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
LABEL_36:
  v67 = swift_getObjectType();
  v68 = *(v66 + 32);

  v68(v67, v66);

  (*(v90 + 16))(v93, v92, v91);
  v69 = *&v45[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_alignmentCoordinator];
  v96 = type metadata accessor for NowPlayingAlignmentCoordinator(0);
  v97 = sub_8DACC(&qword_C7BC0, 255, type metadata accessor for NowPlayingAlignmentCoordinator);
  v95 = v69;
  v70 = v87;
  v71 = v94;
  v72 = v85;
  (*(v87 + 16))(v89, v94, v85);

  sub_98408();
  sub_97B88();
  swift_allocObject();
  v73 = v88;
  sub_97B78();
  rawValue = ContextActionsConfiguration.transcriptSelectionActions()()._0._rawValue;

  sub_E104(0, &qword_C7BB8);
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v99.value.super.isa = 0;
  v99.is_nil = 0;
  v75.value = (&dword_0 + 1);
  v76 = sub_983F8(v101, v103, v99, v75, 0xFFFFFFFFFFFFFFFFLL, rawValue, v77).super.super.isa;

  (*(v70 + 8))(v71, v72);
  return v76;
}

uint64_t sub_85C68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(sub_7BEDC() + 16) = a4;
  sub_70DEC();
}

void sub_85CB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a1;
  *(sub_7BEDC() + 16) = a6;
  sub_70DEC();
}

uint64_t sub_85D14()
{
  v1 = v0;
  v2 = sub_96048();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_78400();
  v7 = [v6 indexPathsForVisibleItems];

  v8 = sub_97FC8();
  v9 = *(v8 + 16);
  if (!v9)
  {
  }

  v10 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31[1] = v8;
  v12 = v8 + v11;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v14 = v3 + 16;
  v13 = v15;
  v16 = *(v14 + 56);
  v38 = v16;
  v39 = (v14 - 8);
  v36 = 0;
  v37 = v15;
  v34 = v2;
  v35 = v1;
  v32 = v10;
  v33 = v14;
  v15(v5, v12, v2);
  while (1)
  {
    v17 = sub_96028();
    v18 = *(v1 + v10);
    if (v18 >> 62)
    {
      v28 = v17;
      v29 = sub_98778();
      v30 = v28;
      v13 = v37;
      if (v30 >= v29)
      {
        goto LABEL_4;
      }
    }

    else if (v17 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    v19 = sub_96028();
    result = swift_beginAccess();
    v21 = *(v1 + v10);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = sub_986C8();
      goto LABEL_13;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_29;
    }

    v22 = *(v21 + 8 * v19 + 32);

LABEL_13:
    swift_endAccess();
    v23 = *(v22 + 16);
    if (v23 >> 61)
    {

      v16 = v38;
LABEL_4:
      (*v39)(v5, v2);
      goto LABEL_5;
    }

    swift_getKeyPath();
    v40 = v23;
    sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent);
    sub_962A8();

    v24 = *(v23 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText);
    v25 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed;
    if (*(v24 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed))
    {
      *(v24 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isBeingDisplayed) = 1;
      swift_getKeyPath();
      v40 = v24;
      sub_8DACC(&qword_C7760, 255, type metadata accessor for TextContent.LiveText);

      sub_962A8();

      if (*(v24 + v25))
      {
        swift_getKeyPath();
        v40 = v24;
        sub_962A8();

        if (*(v24 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__dirtyString))
        {
          sub_468E8();
        }
      }

      v2 = v34;
      (*v39)(v5, v34);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v31[2] = v31;
      __chkstk_darwin(KeyPath);
      v31[-2] = v24;
      LOBYTE(v31[-1]) = 1;
      v40 = v24;
      sub_8DACC(&qword_C7760, 255, type metadata accessor for TextContent.LiveText);

      v27 = v36;
      sub_96298();
      v36 = v27;

      v2 = v34;
      (*v39)(v5, v34);
    }

    v1 = v35;
    v10 = v32;
    v13 = v37;
    v16 = v38;
LABEL_5:
    v12 += v16;
    if (!--v9)
    {
    }

    v13(v5, v12, v2);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t TranscriptViewController.interactionContextPage.getter()
{
  sub_960A8();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TranscriptViewController.interactionContextOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for InteractionContext.Origin.none(_:);
  v3 = sub_960B8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

UIFindSession_optional __swiftcall TranscriptViewController.findInteraction(_:sessionFor:)(UIFindInteraction _, UIView sessionFor)
{
  swift_getObjectType();
  sub_E104(0, &qword_C7958);
  sub_8DACC(&unk_C7960, v3, type metadata accessor for TranscriptViewController);
  v4 = v2;
  v5 = sub_98388();
  result.value.super.isa = v5;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall TranscriptViewController.findInteraction(_:didBegin:)(UIFindInteraction _, UIFindSession didBegin)
{
  *(sub_7BEDC() + 16) = 7;
  sub_70DEC();
}

uint64_t sub_8659C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v1 = Strong;
  v2 = sub_96028();
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!(v4 >> 62))
  {
    if (v2 < *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v2 >= sub_98778())
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = sub_96028();
  result = swift_beginAccess();
  v7 = *&v1[v3];
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_986C8();
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_8:
    swift_endAccess();

LABEL_11:
    sub_E104(0, &qword_C7FC8);
    type metadata accessor for TranscriptContentViewModel();
    v8 = sub_98218();

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_8672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_97E08() == a2 && v4 == a3)
  {
  }

  else
  {
    v6 = sub_98838();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_E104(0, &qword_C7FC8);
  v7 = sub_98228();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for TranscriptViewController();
    v9 = sub_98828();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"didTapEmptySpace"];
  swift_unknownObjectRelease();
  [v7 addGestureRecognizer:v10];

  return v7;
}

uint64_t sub_868CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8030);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  v14 = *a3;
  v15 = a4;
  v16 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8038);
  sub_904EC();
  sub_973C8();
  sub_97418();
  v17[3] = v8;
  v17[4] = sub_EA78(&unk_C8070, &qword_C8030);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_973B8();
  (*(v9 + 8))(v11, v8);
  return sub_98348();
}

uint64_t sub_86A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8050) + 36));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8010);
  swift_storeEnumTagMultiPayload();
  v7 = v6 + *(type metadata accessor for ViewContextEnvironmentSetter() + 20);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *a3 = a1;
  a3[1] = sub_906B8;
  a3[2] = a2;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52E0);
  v12[3] = sub_96958();
  v12[4] = &protocol witness table for UniformBucketingStrategy;
  __swift_allocate_boxed_opaque_existential_1(v12);

  sub_96948();
  v9 = sub_97C28();
  __swift_destroy_boxed_opaque_existential_1(v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8038);
  v11 = (a3 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  return result;
}

uint64_t sub_86BE4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    *(sub_7BEDC() + 16) = 10;
    sub_70DEC();
  }

  return result;
}

uint64_t sub_86C54@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_963D8();
  if (!v5)
  {
    v9 = sub_96548();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
LABEL_10:
    v15 = 0;
    v17 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v6 transcriptSource];
  if (v7)
  {
    v8 = v7;
    sub_97E08();

    sub_96528();
  }

  else
  {

    v10 = sub_96548();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  v11 = v6;
  v12 = [v11 author];
  if (!v12 || (v13 = v12, v14 = [v12 name], v13, !v14))
  {

    goto LABEL_10;
  }

  v15 = sub_97E08();
  v17 = v16;

LABEL_11:
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_90414(v4, a1);
  result = type metadata accessor for FooterViewModel(0);
  v20 = (a1 + *(result + 20));
  *v20 = v15;
  v20[1] = v17;
  v21 = (a1 + *(result + 24));
  *v21 = sub_9040C;
  v21[1] = v18;
  return result;
}

uint64_t sub_86E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FD8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  v12 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FE0);
  sub_902D4();
  sub_973C8();
  sub_97418();
  v13[3] = v6;
  v13[4] = sub_EA78(&unk_C8000, &qword_C7FD8);
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_973B8();
  (*(v7 + 8))(v9, v6);
  return sub_98348();
}

uint64_t sub_87024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_90978(a1, a2, type metadata accessor for FooterViewModel);
  v3 = type metadata accessor for FooterView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FE0) + 36));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8010);
  swift_storeEnumTagMultiPayload();
  v7 = v6 + *(type metadata accessor for ViewContextEnvironmentSetter() + 20);
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

uint64_t sub_8713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v53 = a2;
  v52 = type metadata accessor for SpeakerContentView();
  __chkstk_darwin(v52);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C8098);
  __chkstk_darwin(v8);
  v10 = (&v47 - v9);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80A0);
  __chkstk_darwin(v55);
  v12 = &v47 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80A8);
  __chkstk_darwin(v56);
  v14 = (&v47 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80B0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80B8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v22 = *(a1 + 16);
  v23 = v22 >> 61;
  if ((v22 >> 61) <= 1)
  {
    v30 = v21;
    if (v23)
    {
      v58 = 0;
      v59 = 0;
      v57 = v22 & 0x1FFFFFFFFFFFFFFFLL;
      v60 = 1;
      sub_641E0();
      sub_65384();
      swift_retain_n();
      sub_97388();
      v45 = v62;
      v46 = BYTE8(v62);
      *v17 = v61;
      *(v17 + 2) = v45;
      v17[24] = v46;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80D8);
      sub_9082C();
      sub_908B8();
      sub_97388();
      sub_4BF8(v30, v14, &qword_C80B8);
      swift_storeEnumTagMultiPayload();
      sub_907A0();
      sub_64E3C();
      sub_97388();
    }

    else
    {
      v57 = *(a1 + 16);
      v58 = v53;
      v59 = v54;
      v60 = 0;
      sub_641E0();
      sub_65384();
      swift_retain_n();
      swift_retain_n();
      sub_97388();
      v31 = v62;
      v32 = BYTE8(v62);
      *v17 = v61;
      *(v17 + 2) = v31;
      v17[24] = v32;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80D8);
      sub_9082C();
      sub_908B8();
      sub_97388();
      sub_4BF8(v30, v14, &qword_C80B8);
      swift_storeEnumTagMultiPayload();
      sub_907A0();
      sub_64E3C();
      sub_97388();
    }

    v33 = v30;
    return sub_4C60(v33, &qword_C80B8);
  }

  v51 = a4;
  v50 = v19;
  if (v23 == 2)
  {
    v49 = v21;
    type metadata accessor for SilentContent();
    sub_8DACC(&qword_C8110, 255, type metadata accessor for SilentContent);
    swift_retain_n();
    v48 = v15;
    v34 = v54;

    v35 = sub_97198();
    v37 = v36;
    v57 = 0x3FF0000000000000;
    sub_97728();
    v38 = v61;
    LOBYTE(v57) = 1;
    sub_97728();
    v39 = v61;
    v40 = *(&v61 + 1);
    *&v61 = v35;
    *(&v61 + 1) = v37;
    v62 = v38;
    LOBYTE(v63) = v39;
    *(&v63 + 1) = v40;
    *&v64 = v53;
    *(&v64 + 1) = v34;
    *v10 = v61;
    v10[1] = v38;
    v41 = v64;
    v10[2] = v63;
    v10[3] = v41;
    swift_storeEnumTagMultiPayload();
    sub_676E4(&v61, &v57);
    sub_656EC();
    sub_8DACC(&unk_C8100, 255, type metadata accessor for SpeakerContentView);
    sub_97388();
    sub_4BF8(v12, v17, &qword_C80A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80D8);
    sub_9082C();
    sub_908B8();
    v42 = v49;
    sub_97388();
    sub_4C60(v12, &qword_C80A0);
    sub_4BF8(v42, v14, &qword_C80B8);
    swift_storeEnumTagMultiPayload();
    sub_907A0();
    sub_64E3C();
    sub_97388();
    sub_90A3C(&v61);

    v33 = v42;
    return sub_4C60(v33, &qword_C80B8);
  }

  if (v23 == 3)
  {
    v47 = v22 & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v53;
    *v7 = v22 & 0x1FFFFFFFFFFFFFFFLL;
    v7[1] = v24;
    v7[2] = v54;
    v48 = v15;
    v25 = v52;
    v26 = *(v52 + 24);
    v49 = v21;
    *(v7 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
    swift_storeEnumTagMultiPayload();
    v27 = v7 + *(v25 + 28);
    *v27 = swift_getKeyPath();
    v27[40] = 0;
    sub_90978(v7, v10, type metadata accessor for SpeakerContentView);
    swift_storeEnumTagMultiPayload();
    sub_656EC();
    sub_8DACC(&unk_C8100, 255, type metadata accessor for SpeakerContentView);

    sub_97388();
    sub_4BF8(v12, v17, &qword_C80A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C80D8);
    sub_9082C();
    sub_908B8();
    v28 = v49;
    sub_97388();
    sub_4C60(v12, &qword_C80A0);
    sub_4BF8(v28, v14, &qword_C80B8);
    swift_storeEnumTagMultiPayload();
    sub_907A0();
    sub_64E3C();
    sub_97388();
    sub_4C60(v28, &qword_C80B8);
    return sub_909E0(v7);
  }

  else
  {
    type metadata accessor for ChapterTitleContent();
    sub_8DACC(&qword_C80C0, 255, type metadata accessor for ChapterTitleContent);
    swift_retain_n();
    v43 = v54;

    *v14 = sub_97198();
    v14[1] = v44;
    v14[2] = v53;
    v14[3] = v43;
    swift_storeEnumTagMultiPayload();
    sub_907A0();
    sub_64E3C();

    sub_97388();
  }
}

void sub_87C44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 becomeFirstResponder];

      v4 = sub_79218();
      [v4 presentFindNavigatorShowingReplace:0];

      sub_87CE4();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_87CE4()
{
  v0 = sub_97BF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_963D8();
  if (v4)
  {
    v5 = sub_98198();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      v9[1] = v5;
      sub_8F328();
      sub_985F8();
    }
  }

  sub_97A08();
  sub_979F8();

  sub_97968();
  sub_97A38();

  return (*(v1 + 8))(v3, v0);
}

void sub_87EFC(char a1)
{
  v3 = sub_7D364();
  [v3 alpha];
  v5 = v4;

  if (v5 != 1.0)
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_8F700;
    *(v8 + 24) = v7;
    v22 = sub_17688;
    v23 = v8;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_882AC;
    v21 = &block_descriptor_82;
    v9 = _Block_copy(&v18);
    v10 = v1;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = swift_allocObject();
      swift_unknownObjectWeakInit();
      if ((a1 & 1) == 0)
      {

        sub_882D4(1.0, v17, 1);

        goto LABEL_7;
      }

      if (qword_C46C0 == -1)
      {
LABEL_5:
        v12 = qword_CD528;
        [qword_CD528 settlingDuration];
        v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v12 timingParameters:v13];
        v15 = swift_allocObject();
        *(v15 + 16) = sub_8F718;
        *(v15 + 24) = isEscapingClosureAtFileLocation;
        v22 = sub_176B4;
        v23 = v15;
        v18 = _NSConcreteStackBlock;
        v19 = 1107296256;
        v20 = sub_279B0;
        v21 = &block_descriptor_89;
        v16 = _Block_copy(&v18);

        [v14 addAnimations:v16];
        _Block_release(v16);
        [v14 startAnimation];

LABEL_7:

        return;
      }
    }

    swift_once();
    goto LABEL_5;
  }
}

void sub_8822C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(&v4, v2, v3);
  sub_7E430(v4 == 2);
}

void sub_882D4(double a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_7D364();
    [v7 setAlpha:a1];

    v8 = sub_7D9EC();
    if (v8)
    {
      v9 = v8;
      [v8 setAlpha:a1];
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_7E430(a3);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_7DE30();
  }
}

__n128 sub_883D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

void sub_883EC(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_88470(a3, v4, v5);
  }
}

void sub_88470(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C52A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = sub_96048();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_782A0();
  v15 = *(a1 + 16);
  v16 = v15 >> 61;
  if ((v15 >> 61) <= 1)
  {
    if (!v16)
    {
      v18 = *(v15 + 16);
      v19 = *(v15 + 32);
      v20 = *(v15 + 40);

      goto LABEL_12;
    }

    v18 = *(&dword_10 + (v15 & 0x1FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL);
    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v18 = v17[5];
        v19 = v17[7];
        v20 = v17[8];

        goto LABEL_12;
      }

      v18 = v17[14];
      v19 = v17[16];

      goto LABEL_11;
    }

    v18 = v17[2];

    v21 = 0;
  }

  v19 = 0;
LABEL_11:
  v20 = 0;
LABEL_12:
  v45 = v18;
  v46 = v21;
  v47 = v19;
  v48 = v20;
  v49 = v16;
  sub_96CD8();

  sub_20438(v45, v46, v47, v48, v49);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_4C60(v9, &qword_C52A0);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  v22 = sub_78400();
  isa = sub_95FE8().super.isa;
  v24 = [v22 cellForItemAtIndexPath:isa];

  if (!v24)
  {
    goto LABEL_18;
  }

  if ((*(v4 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState + 32) & 1) == 0)
  {
    v43 = a3;
    [v24 frame];
    v44 = CGRectGetHeight(v50) + 20.0;
    v25 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView;
    v26 = *(v4 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView);
    [v26 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v26 contentInset];
    v36 = v35;
    v38 = v37;

    v51.origin.x = UIEdgeInsetsInsetRect(v28, v30, v32, v34, v36, v38);
    if (CGRectGetHeight(v51) < v44)
    {
      v39 = 20.0 - v43;
      v40 = *(v4 + v25);
      v41 = sub_95FE8().super.isa;
      [v40 _scrollToItemAtIndexPath:v41 atScrollPosition:1 additionalInsets:1 animated:{fmin(v39, 20.0), 0.0, 0.0, 0.0}];

LABEL_18:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  (*(v11 + 8))(v13, v10);
}

uint64_t TranscriptViewController.keyCommands.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_9CF70;
  v1 = sub_97DC8();
  v2 = [objc_opt_self() keyCommandWithInput:v1 modifierFlags:0x100000 action:"commandFKeyboardSearch"];

  *(v0 + 32) = v2;
  return v0;
}

void sub_889E0()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = sub_97DC8();
  [v0 doubleForKey:v1];
  v3 = v2;

  v4 = 50.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  qword_C7870 = *&v4;
}

uint64_t sub_88A80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_98198();
    v5 = v4;
    if (v2)
    {
LABEL_3:
      v6 = sub_98198();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v5 = 1;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  v7 = 1;
LABEL_6:
  v8 = (v3 == v6) & ~v7;
  if (v5)
  {
    v8 = v7;
  }

  return v8 & 1;
}

void sub_88AF8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_7D494();

    sub_1EC14();
  }

  if (a1)
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = a1;
      sub_824B0(v7);
    }
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;

      NowPlayingAlignmentCoordinator.clear()();
    }
  }
}

void sub_88BE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_95DA8();
  if (!v2)
  {

    return;
  }

  v3 = v2;
  sub_95D98();
  if (!v39)
  {

    sub_4C60(aBlock, &qword_C7D20);
    return;
  }

  sub_E104(0, &qword_C7D28);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_15:

    return;
  }

  v4 = v46[0];
  *&v42 = COERCE_DOUBLE(sub_97E08());
  v43 = v5;
  sub_98658();
  if (!*(v3 + 16) || (v6 = sub_7433C(aBlock), (v7 & 1) == 0))
  {

    sub_77A50(aBlock);
    return;
  }

  sub_12BDC(*(v3 + 56) + 32 * v6, v46);
  sub_77A50(aBlock);
  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v8 = *&v42;
  v9 = v43;
  v10 = v44;
  v11 = v45;
  v12 = [v4 coordinateSpace];
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v12 convertRect:v13 toCoordinateSpace:{v8, v9, v10, v11}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();

    v47 = 0;
    v23 = &v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState];
    if ((v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState + 32] & 1) == 0)
    {
      v48.origin.x = v16;
      v48.origin.y = v18;
      v48.size.width = v20;
      v48.size.height = v22;
      if (CGRectEqualToRect(v48, *v23))
      {

LABEL_28:

        return;
      }
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    *(v24 + 24) = v16;
    *(v24 + 32) = v18;
    *(v24 + 40) = v20;
    *(v24 + 48) = v22;
    v25 = v47;
    *(v24 + 56) = v47;
    *&v42 = COERCE_DOUBLE(sub_97E08());
    v43 = v26;
    v27 = v1;
    sub_98658();
    if (*(v3 + 16))
    {
      v28 = sub_7433C(aBlock);
      if (v29)
      {
        sub_12BDC(*(v3 + 56) + 32 * v28, v46);
        sub_77A50(aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_27;
        }

        v30 = v42;
        *&v42 = COERCE_DOUBLE(sub_97E08());
        v43 = v31;
        sub_98658();
        if (*(v3 + 16))
        {
          v32 = sub_7433C(aBlock);
          if (v33)
          {
            sub_12BDC(*(v3 + 56) + 32 * v32, v46);
            sub_77A50(aBlock);

            if (swift_dynamicCast())
            {
              v34 = *&v42;
              v35 = objc_opt_self();
              v36 = swift_allocObject();
              *(v36 + 16) = sub_8FB14;
              *(v36 + 24) = v24;
              v40 = sub_176B4;
              v41 = v36;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_279B0;
              v39 = &block_descriptor_161;
              v37 = _Block_copy(aBlock);

              [v35 animateWithDuration:v30 << 16 delay:v37 options:0 animations:v34 completion:0.0];

              _Block_release(v37);
              return;
            }

            goto LABEL_27;
          }
        }
      }
    }

    sub_77A50(aBlock);
LABEL_27:
    *v23 = v16;
    v23[1] = v18;
    v23[2] = v20;
    v23[3] = v22;
    *(v23 + 32) = v25;
    sub_7FD58();
    sub_7DE30();

    goto LABEL_28;
  }

  __break(1u);
}

void sub_890F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 1;
    sub_7FD58();
  }
}

uint64_t sub_89164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_96AB8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_963F8();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_98068();
  v5[16] = sub_98058();
  v9 = sub_98038();
  v5[17] = v9;
  v5[18] = v8;

  return _swift_task_switch(sub_892CC, v9, v8);
}

uint64_t sub_892CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (!Strong)
  {

LABEL_37:

    v49 = *(v0 + 8);

    return v49();
  }

  v2 = Strong;
  v3 = *(*(v0 + 56) + 16);
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (!v4)
    {
      v7 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
      goto LABEL_13;
    }

    v5 = &qword_C52B0;
    v6 = type metadata accessor for LinkContent;
  }

  else if (v4 == 2)
  {
    v5 = &unk_C77D0;
    v6 = type metadata accessor for SilentContent;
  }

  else if (v4 == 3)
  {
    v5 = &qword_C52A8;
    v6 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v5 = &qword_C77C0;
    v6 = type metadata accessor for ChapterTitleContent;
  }

  v7 = sub_8DACC(v5, 255, v6);
LABEL_13:
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 32);

  v10 = COERCE_DOUBLE(v9(ObjectType, v7));
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v16 = v10;
    if (v4)
    {
      v13.n128_u64[0] = 0;
    }

    else
    {
      swift_getKeyPath();
      *(v0 + 40) = v3;
      sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent);

      sub_962A8();

      v17 = *(v3 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);

      v16 = v17 + v10;
      v18 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
      v19 = *(v18 + 32);
      v20 = type metadata accessor for TextContent(0);

      v21 = COERCE_DOUBLE(v19(v20, v18));
      v23 = v22;

      if (v23)
      {
        goto LABEL_24;
      }

      v13.n128_f64[0] = v16 - v21;
      if (v16 - v21 < 0.1)
      {
        goto LABEL_24;
      }

      v13.n128_u64[0] = 0xBFB999999999999ALL;
    }

    v16 = v16 + v13.n128_f64[0];
LABEL_24:
    v24 = *(v0 + 96);
    **(v0 + 120) = v16;
    v25 = *(v24 + 104);
    v25(v13);
    v26 = sub_15BCC(0, 1, 1, &_swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_15BCC(v27 > 1, v28 + 1, 1, v26);
    }

    v29 = *(v0 + 120);
    v30 = *(v0 + 88);
    v31 = *(v0 + 96);
    *(v26 + 2) = v28 + 1;
    v33 = *(v31 + 32);
    v31 += 32;
    v32 = v33;
    v34 = *(v31 + 48);
    v35 = *(v31 + 40);
    v33(&v26[((v34 + 32) & ~v34) + v35 * v28], v29, v30);
    goto LABEL_41;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v14 = &unk_C77D0;
      v15 = type metadata accessor for SilentContent;
    }

    else if (v4 == 3)
    {
      v14 = &qword_C52A8;
      v15 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v14 = &qword_C77C0;
      v15 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_32;
  }

  if (v4)
  {
    v14 = &qword_C52B0;
    v15 = type metadata accessor for LinkContent;
LABEL_32:
    v36 = sub_8DACC(v14, 255, v15);
    goto LABEL_33;
  }

  v36 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
LABEL_33:
  v37 = swift_getObjectType();
  v38 = *(v36 + 16);

  v39 = v38(v37, v36);
  v41 = v40;

  if (v41)
  {

    sub_96A78();
    v42 = sub_96AA8();
    v43 = sub_981B8();
    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 72);
    v45 = *(v0 + 80);
    v47 = *(v0 + 64);
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v42, v43, "Unable to seek to selected cell, no timestamp available", v48, 2u);
    }

    (*(v46 + 8))(v45, v47);
    goto LABEL_37;
  }

  v50 = *(v0 + 112);
  v51 = *(v0 + 88);
  v52 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 192) = 1;

  sub_96EA8();
  *(sub_7BEDC() + 16) = 16;
  sub_70DEC();

  *v50 = 0;
  *(v50 + 8) = 1;
  *(v50 + 16) = v39;
  v25 = *(v52 + 104);
  (v25)(v50, enum case for PlaybackController.TransportCommand.scoutWith(_:), v51);
  v26 = sub_15BCC(0, 1, 1, &_swiftEmptyArrayStorage);
  v54 = *(v26 + 2);
  v53 = *(v26 + 3);
  if (v54 >= v53 >> 1)
  {
    v26 = sub_15BCC(v53 > 1, v54 + 1, 1, v26);
  }

  v55 = *(v0 + 112);
  v56 = *(v0 + 88);
  v57 = *(v0 + 96);
  *(v26 + 2) = v54 + 1;
  v58 = *(v57 + 32);
  v57 += 32;
  v32 = v58;
  v59 = *(v57 + 48);
  v35 = *(v57 + 40);
  v58(&v26[((v59 + 32) & ~v59) + v35 * v54], v55, v56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 193) = 0;

  sub_96EA8();
  LODWORD(v34) = v59;
LABEL_41:
  v60 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playbackController;

  v61 = sub_96468();

  if ((v61 & 1) == 0)
  {
    (v25)(*(v0 + 104), enum case for PlaybackController.TransportCommand.play(_:), *(v0 + 88));
    v63 = *(v26 + 2);
    v62 = *(v26 + 3);
    if (v63 >= v62 >> 1)
    {
      v26 = sub_15BCC(v62 > 1, v63 + 1, 1, v26);
    }

    v64 = *(v0 + 104);
    v65 = *(v0 + 88);
    *(v26 + 2) = v63 + 1;
    v32(&v26[((v34 + 32) & ~v34) + v63 * v35], v64, v65);
  }

  sub_980C8();
  *(v0 + 160) = *&v2[v60];

  v67 = sub_77D64(v26);
  *(v0 + 168) = v67;

  v69 = &async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:);
  v68 = swift_task_alloc();
  *(v0 + 176) = v68;
  *v68 = v0;
  v68[1] = sub_89C7C;

  return (v69)(v67, 0);
}

uint64_t sub_89C7C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_89E54;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_89DB8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_89DB8()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_89E54()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_89F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BD0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_4BF8(a3, v22 - v9, &unk_C7BD0);
  v11 = sub_98098();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_4C60(v10, &unk_C7BD0);
  }

  else
  {
    sub_98088();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_98038();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_97E58() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_4C60(a3, &unk_C7BD0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_4C60(a3, &unk_C7BD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_8A1B0()
{
  v0 = sub_96AB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_96A78();
    v6 = sub_96AA8();
    v7 = sub_981D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_11FC8(0xD00000000000001BLL, 0x80000000000A5160, v20);
      _os_log_impl(&dword_0, v6, v7, "%s App will enter foreground.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    (*(v1 + 8))(v3, v0);
    sub_4BF8(v5 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_selectedContentProvider, &v18, &qword_C7698);
    if (v19)
    {
      sub_4CC0(&v18, v20);
      v10 = v21;
      v11 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      if ((*(v11 + 8))(v10, v11))
      {
        sub_7BEDC();
        v12 = sub_70A64();
        v14 = v13;

        if (v14 > 2u)
        {
          if (v14 == 3)
          {
            sub_70400(v12, 3);
          }
        }

        else if (v14 - 1 >= 2 && v12 != 128)
        {
          sub_7C504(0);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_96E98();

        if (v19)
        {
          __swift_project_boxed_opaque_existential_1(&v18, v19);
          sub_965B8();
          __swift_destroy_boxed_opaque_existential_1(&v18);
        }

        else
        {
          sub_4C60(&v18, &qword_C7CE0);
        }

        v15 = *(sub_78300() + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink);
        v16 = v15;

        if (v15)
        {
          [v16 setPaused:0];
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {

      return sub_4C60(&v18, &qword_C7698);
    }
  }

  return result;
}

uint64_t sub_8A558()
{
  v0 = sub_96AB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_96A78();
    v6 = sub_96AA8();
    v7 = sub_981D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_11FC8(0xD00000000000001BLL, 0x80000000000A5160, v17);
      _os_log_impl(&dword_0, v6, v7, "%s App did enter background.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    (*(v1 + 8))(v3, v0);
    sub_4BF8(v5 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_selectedContentProvider, &v15, &qword_C7698);
    if (v16)
    {
      sub_4CC0(&v15, v17);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      if ((*(v11 + 8))(v10, v11))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_96E98();

        if (v16)
        {
          __swift_project_boxed_opaque_existential_1(&v15, v16);
          sub_965A8();
          __swift_destroy_boxed_opaque_existential_1(&v15);
        }

        else
        {
          sub_4C60(&v15, &qword_C7CE0);
        }

        v12 = *(sub_78300() + OBJC_IVAR____TtC19PodcastsTranscripts22LiveTranscriptObserver_displayLink);
        v13 = v12;

        if (v12)
        {
          [v13 setPaused:1];
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {

      return sub_4C60(&v15, &qword_C7698);
    }
  }

  return result;
}

uint64_t sub_8A894()
{
  v1 = *(sub_7BEDC() + 24);

  if (v1 != 1)
  {
    *(*(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine) + 16) = 10;

    sub_70DEC();
  }

  return result;
}

void sub_8A94C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_963D8();
    if (v2)
    {
      v3 = v2;
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_libraryActionController], *&v1[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_libraryActionController + 24]);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = v3;

      sub_97B28();
    }
  }
}

void sub_8AA78(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a3;
  v26 = a2;
  v4 = sub_95F58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_96AB8();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C8020);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  sub_4BF8(a1, &v26 - v12, &unk_C8020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_4C60(v13, &unk_C8020);
    sub_96A78();
    v14 = v26;
    v15 = sub_96AA8();
    v16 = sub_981B8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2113;
      *(v17 + 14) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_0, v15, v16, "Unable to create a report a concern URL for episode %{private,mask.hash}@.", v17, 0x16u);
      sub_4C60(v18, &qword_C50C8);
    }

    (*(v8 + 8))(v10, v27);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    v20 = [objc_opt_self() sharedApplication];
    sub_95F38(v21);
    v23 = v22;
    [v20 openURL:v22 withCompletionHandler:0];

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    [Strong resignFirstResponder];
  }
}

void sub_8AE14()
{
  v1 = [objc_allocWithZone(UIView) init];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor:v3];

  v4 = sub_78400();
  [v4 setBackgroundView:v1];

  v5 = *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView);
  v6 = [v2 clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapEmptySpace"];
  [v1 addGestureRecognizer:v7];
}

void sub_8AFBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_96AB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_96A78();
  v7 = sub_96AA8();
  v8 = sub_981A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Retry button tapped - initiating retry", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_963D8();
    if (v12)
    {
      v13 = v12;
      v14 = sub_7BEDC();
      v15 = *(v14 + 24);
      *(v14 + 24) = 2;
      sub_71284(v15);
      sub_72654(v15);

      NowPlayingStoreTranscriptIdentifierProvider.updateForEpisode(_:shouldForce:completion:)(v13, 1, sub_8F878, a2);
    }

    else
    {
    }
  }
}

void sub_8B1D0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_isNetworkReachable) = v1;
    sub_7BEDC();
    v4 = sub_70A64();
    v6 = v5;
    v7 = v5;

    if (v7 == 3)
    {
      sub_70400(v4, 3);
      if (v1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7B88);
        sub_EA78(&qword_C7BF0, &qword_C7B88);
        sub_96E48();

        return;
      }
    }

    else
    {
      sub_70400(v4, v6);
    }
  }
}

id sub_8B300()
{
  v0 = sub_96CF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_96CE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_96D48();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v4);
  sub_96D08();
  sub_96D38();
  v11 = [objc_opt_self() clearColor];
  sub_96D28();
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v0);
  sub_96D18();
  sub_E104(0, &qword_C7FA8);
  v35 = v10;
  v34 = sub_98378();
  v12 = [v34 boundarySupplementaryItems];
  sub_E104(0, &qword_C7FB0);
  v13 = sub_97FC8();

  v38 = &_swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); i; i = sub_98778())
  {
    v33 = v8;
    v15 = 0;
    v37 = v13 & 0xC000000000000001;
    v8 = UICollectionElementKindSectionFooter;
    while (1)
    {
      if (v37)
      {
        v16 = sub_986C8();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 elementKind];
      v20 = sub_97E08();
      v22 = v21;

      if (v20 == sub_97E08() && v22 == v23)
      {
      }

      else
      {
        v25 = sub_98838();

        if ((v25 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_986F8();
      sub_98728();
      sub_98738();
      sub_98708();
LABEL_6:
      ++v15;
      if (v18 == i)
      {
        v26 = v38;
        v8 = v33;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v26 = &_swiftEmptyArrayStorage;
LABEL_23:

  if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  for (j = *(v26 + 16); j; j = sub_98778())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_986C8();
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v29 setPinToVisibleBounds:0];

      ++v28;
      if (v31 == j)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  (*(v36 + 8))(v35, v8);
  return v34;
}

uint64_t sub_8B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_7BEDC();
  v9 = sub_70A64();
  v11 = v10;
  v12 = v10;

  if (v12 == 4 && v9 == 0)
  {
LABEL_8:
    v17 = *(a2 + 16);
    v18 = v17 >> 61;
    if ((v17 >> 61) <= 1)
    {
      if (!v18)
      {
        v20 = *(v17 + 16);
        v21 = *(v17 + 32);
        v22 = *(v17 + 40);

        goto LABEL_21;
      }

      v20 = *(&dword_10 + (v17 & 0x1FFFFFFFFFFFFFFFLL));
    }

    else
    {
      v19 = (v17 & 0x1FFFFFFFFFFFFFFFLL);
      if (v18 != 2)
      {
        if (v18 == 3)
        {
          v20 = v19[5];
          v21 = v19[7];
          v22 = v19[8];

LABEL_21:
          *&v29 = v20;
          *(&v29 + 1) = v23;
          v30 = v21;
          v31 = v22;
          v32 = v18;
          sub_82008(&v29, a6 & 1);
          sub_20438(v29, *(&v29 + 1), v30, v31, v32);
          goto LABEL_22;
        }

        v20 = v19[14];
        v21 = v19[16];

LABEL_20:
        v22 = 0;
        goto LABEL_21;
      }

      v20 = v19[2];

      v23 = 0;
    }

    v21 = 0;
    goto LABEL_20;
  }

  sub_70400(v9, v11);

  v14 = sub_70A64();
  v16 = v15;

  if (v16 > 2u)
  {
    if (v16 == 3)
    {
      sub_70400(v14, 3);
    }
  }

  else if (v16 - 1 >= 2 && v14 != 128)
  {
    goto LABEL_8;
  }

LABEL_22:
  result = sub_85D14();
  v25 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine;
  v26 = *(a1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine);
  if (*(v26 + 24) != 1)
  {
    *(v26 + 16) = 2;

    sub_70DEC();

    v27 = *(a1 + v25);
    v28 = *(v27 + 24);
    *(v27 + 24) = 1;

    sub_71284(v28);
    sub_72654(v28);
  }

  return result;
}

Swift::Void __swiftcall TranscriptViewController.willDismissHostedContent()()
{
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_userInitiatedSearchDismissal) = 0;
  v1 = sub_79218();
  [v1 dismissFindNavigator];

  NowPlayingAlignmentCoordinator.clear()();
}

void sub_8BA64()
{
  swift_getObjectType();

  NowPlayingHostedViewController.willPresentHostedContent()();
}

void sub_8BAA0()
{
  swift_getObjectType();

  NowPlayingHostedViewController.didPresentHostedContent()();
}

void sub_8BADC()
{
  swift_getObjectType();

  NowPlayingHostedViewController.didDismissHostedContent()();
}

void sub_8BB18(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v6 = a2;
  if (a2)
  {
    [v3 setNeedsUpdateContentUnavailableConfiguration];
    v7 = sub_78400();
    if (v6 == 3 || v6 == 4 && !a1)
    {
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 != 6)
    {
      sub_7C504(1);
    }

    v9 = sub_79218();
    v10 = [v9 isFindNavigatorVisible];

    if (v10)
    {
      v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_userInitiatedSearchDismissal] = 0;
      [*&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___findInteraction] dismissFindNavigator];
      TranscriptViewController.clearAllDecoratedFoundText()();
    }

    [v4 setNeedsUpdateContentUnavailableConfiguration];
    v7 = sub_78400();
  }

  v8 = 0;
LABEL_12:
  [v7 setHidden:v8];

  if ([v4 isViewLoaded])
  {
    v11 = &v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_session];
    swift_beginAccess();
    if (!*(v11 + 24))
    {
LABEL_22:
      swift_endAccess();
      goto LABEL_23;
    }

    v12 = *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 24];
    v13 = *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 32];
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext], v12);
    (*(v13 + 8))(&v35, v12, v13);
    if (v35 == 2)
    {
      v14 = 1;
LABEL_21:
      v16 = *(v11 + 24);
      v17 = *(v11 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v11, v16);
      (*(v17 + 16))(v14, v16, v17);
      goto LABEL_22;
    }

    if (v6 < 3)
    {
      v15 = a1 >> 6;
      if (v15 <= 1)
      {
        v14 = v15 == 0;
        goto LABEL_21;
      }

      if (v15 != 3)
      {
        v14 = a1 != 128;
        goto LABEL_21;
      }
    }

    v14 = 0;
    goto LABEL_21;
  }

LABEL_23:
  v18 = *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView];
  if (v6 - 1 <= 1 && (a1 >> 6) - 2 >= 2)
  {
    v19 = a1;
  }

  else
  {
    v19 = 1;
  }

  v20 = v18[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode];
  v18[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptCollectionView_mode] = v19 & 1;
  v21 = v18;
  sub_6ECC4(v20);

  v22 = sub_7D494();
  v23 = v22;
  if (v6 - 1 <= 1 && (a1 >> 6) - 2 >= 2)
  {
    v24 = a1;
  }

  else
  {
    v24 = 1;
  }

  v25 = v22[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_mode];
  v23[OBJC_IVAR____TtC19PodcastsTranscripts29PinnedActiveLinkContainerView_mode] = v24 & 1;
  sub_19670(v25);

  v26 = *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 24];
  v27 = *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext + 32];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext], v26);
  (*(v27 + 8))(aBlock, v26, v27);
  if (v6 >= 3)
  {
    if (v6 == 3 || !a1)
    {
      goto LABEL_41;
    }
  }

  else if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      goto LABEL_41;
    }
  }

  else if (!(a1 >> 6))
  {
    goto LABEL_40;
  }

  if (LOBYTE(aBlock[0]) == 2)
  {
LABEL_40:
    sub_87EFC(1);
    return;
  }

LABEL_41:
  v28 = sub_7D364();
  [v28 alpha];
  v30 = v29;

  if (v30 == 1.0)
  {
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_8F684;
    *(v33 + 24) = v31;
    aBlock[4] = sub_17688;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_279B0;
    aBlock[3] = &block_descriptor_67;
    v34 = _Block_copy(aBlock);

    [v32 animateWithDuration:v34 animations:0.2];

    _Block_release(v34);
  }
}

double sub_8BFB4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_96E98();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_8C044()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_96EA8();
}

uint64_t sub_8C0E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_8C138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_8C1B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_E104(0, &qword_C46F0);
  v2 = sub_97FC8();

  v3 = v1(v2);

  return v3;
}

size_t sub_8C244(size_t a1, int64_t a2, char a3)
{
  result = sub_8C574(a1, a2, a3, *v3, &qword_C8090, &unk_A04E8, &type metadata accessor for EpisodeTimelineAlignment.Alignment);
  *v3 = result;
  return result;
}

void *sub_8C288(void *a1, int64_t a2, char a3)
{
  result = sub_8C960(a1, a2, a3, *v3, &unk_C7C40, &unk_A0040, &qword_C5148);
  *v3 = result;
  return result;
}

char *sub_8C2C8(char *a1, int64_t a2, char a3)
{
  result = sub_8C458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_8C2E8(size_t a1, int64_t a2, char a3)
{
  result = sub_8C574(a1, a2, a3, *v3, &qword_C5140, &unk_A04E0, &type metadata accessor for TranscriptModel.Paragraph);
  *v3 = result;
  return result;
}

size_t sub_8C32C(size_t a1, int64_t a2, char a3)
{
  result = sub_8C574(a1, a2, a3, *v3, &unk_C8080, &unk_9AAD8, &type metadata accessor for TranscriptModel.Sentence);
  *v3 = result;
  return result;
}

size_t sub_8C370(size_t a1, int64_t a2, char a3)
{
  result = sub_8C574(a1, a2, a3, *v3, &unk_C7C30, &unk_A0030, &type metadata accessor for TranscriptModel.Word);
  *v3 = result;
  return result;
}

char *sub_8C3B4(char *a1, int64_t a2, char a3)
{
  result = sub_8C750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8C3D4(char *a1, int64_t a2, char a3)
{
  result = sub_8C854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_8C3F4(void *a1, int64_t a2, char a3)
{
  result = sub_8C960(a1, a2, a3, *v3, &qword_C7BE0, &unk_A0008, &qword_C7BE8);
  *v3 = result;
  return result;
}

char *sub_8C458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_8C574(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_8C750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_8C854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5128);
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

void *sub_8C960(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_8CAA8(void *a1)
{
  v2 = [objc_opt_self() mainRunLoop];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_8F93C;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_279B0;
  v6[3] = &block_descriptor_112;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 performBlock:v4];
  _Block_release(v4);
}

uint64_t sub_8CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v36 = a2;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C48D8);
  __chkstk_darwin(v9 - 8);
  v38 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C60);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  __chkstk_darwin(v11);
  v39 = &v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C68);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C70);
  v19 = *(v18 - 8);
  v34 = v18;
  v35 = v19;
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v45 = sub_96478();
  v46 = &off_BE038;
  v44[0] = a1;
  type metadata accessor for TranscriptStateMachine();
  v22 = swift_allocObject();
  v43 = a2;
  *(v22 + 16) = 2;
  *(v22 + 24) = 2;
  *(v22 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 136) = 0;
  *(v22 + 144) = 16895;
  *(v22 + 152) = 0;
  *(v22 + 160) = &_swiftEmptyArrayStorage;
  v23 = [objc_opt_self() currentRunLoop];
  *(v22 + 192) = sub_E104(0, &qword_C7C78);
  *(v22 + 200) = &off_BE058;
  *(v22 + 168) = v23;
  sub_E304(v44, v22 + 32);
  *(v22 + 72) = a3;
  sub_4BF8(a4, v22 + 80, &qword_C7698);
  *(v22 + 128) = &off_BE4F0;
  swift_unknownObjectWeakAssign();
  __swift_project_boxed_opaque_existential_1(v44, v45);

  v42 = sub_96428();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C80);
  sub_EA78(&qword_C7C88, &qword_C7C80);
  sub_97018();

  LOWORD(v42) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7C90);
  sub_EA78(&qword_C7C98, &qword_C7C68);
  sub_96F68();
  (*(v15 + 8))(v17, v14);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_8F9B4;
  *(v25 + 24) = v24;
  sub_EA78(&unk_C7CA0, &qword_C7C70);

  v26 = v34;
  sub_97028();

  (*(v35 + 8))(v21, v26);
  swift_beginAccess();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5720);
  sub_EA78(&qword_C7CB0, &qword_C5720);
  sub_96DC8();
  swift_endAccess();

  sub_E104(0, &qword_C4810);
  v27 = sub_982E8();
  v42 = v27;
  v28 = sub_982A8();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7CB8);
  sub_EA78(&unk_C7CC0, &qword_C7CB8);
  sub_DF3C();
  v30 = v39;
  sub_96FE8();
  sub_4C60(v29, &qword_C48D8);

  swift_allocObject();
  swift_weakInit();

  sub_EA78(&qword_C7CD0, &qword_C7C60);
  v31 = v40;
  sub_97028();

  (*(v41 + 8))(v30, v31);
  swift_beginAccess();
  sub_96DC8();
  swift_endAccess();

  sub_4C60(v37, &qword_C7698);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v22;
}

id sub_8D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v30 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_982D8();
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_98288();
  __chkstk_darwin(v9);
  v10 = sub_978A8();
  __chkstk_darwin(v10 - 8);
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___dataSource] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___translateButton] = 1;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientMask] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientMask] = 0;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView] = 0;
  v26 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_searchQueue;
  v11 = sub_E104(0, &qword_C4810);
  v25[1] = "PodcastsTranscripts5";
  v25[2] = v11;
  sub_97898();
  *&v33 = &_swiftEmptyArrayStorage;
  sub_8DACC(&qword_C7B70, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7B78);
  sub_EA78(&qword_C7B80, &qword_C7B78);
  sub_98618();
  (*(v27 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *&v3[v26] = sub_98308();
  v12 = &v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_session];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playTask] = 0;
  v13 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_networkObserver;
  sub_979B8();
  *&v3[v13] = sub_979A8();
  v3[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_isNetworkReachable] = 1;
  v14 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_retrySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7B88);
  swift_allocObject();
  *&v3[v14] = sub_96E18();
  v15 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_presentationContext;
  type metadata accessor for TranscriptPresentationContext();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 255;
  *(v16 + 64) = 0;
  *(v16 + 72) = 4;
  sub_962D8();
  *&v4[v15] = v16;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_subscriptions] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_searchSubscriptions] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___speechController] = 1;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___pinnedActiveLinkView] = 0;
  v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_userInitiatedSearchDismissal] = 1;
  v17 = &v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine] = 0;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___timestampView] = 0;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___findInteraction] = 0;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___liveObserver] = 0;
  swift_beginAccess();
  v18 = v29;
  sub_8FD24(v29, v12);
  swift_endAccess();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_objectGraph] = a1;
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playerStylePublisher] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C6640);

  sub_97C18();
  sub_4CC0(&v33, &v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewContext]);
  sub_97A48();
  sub_97C18();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_metricsController] = v33;
  sub_96478();
  sub_97C18();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playbackController] = v33;
  type metadata accessor for NowPlayingAlignmentCoordinator(0);
  sub_97C18();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_alignmentCoordinator] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F80);
  sub_97C18();
  v19 = &v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_scrubPositionProvider];
  v20 = v34;
  *v19 = v33;
  *(v19 + 1) = v20;
  *(v19 + 4) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F88);
  sub_97C18();
  v21 = &v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_selectedContentProvider];
  v22 = v34;
  *v21 = v33;
  *(v21 + 1) = v22;
  *(v21 + 4) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7F90);
  sub_97C18();
  sub_4CC0(&v33, &v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_libraryActionController]);
  type metadata accessor for TranscriptSyncingStateObserver();
  sub_97C18();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_transcriptSyncingStateObserver] = v33;
  type metadata accessor for NowPlayingStoreTranscriptIdentifierProvider();
  sub_97C18();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_storeTranscriptIdentifierProvider] = v33;
  type metadata accessor for ControlsInteractionTracker();
  sub_97C18();
  *&v4[OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_controlsInteractionTracker] = v33;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithNibName:bundle:", 0, 0);
  sub_4C60(v18, &unk_C7BA0);
  return v23;
}

uint64_t sub_8DA60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8DACC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_8DB28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_44A28(v1, v2);
}

void sub_8DB68()
{
  v1 = v0;
  v16 = sub_982D8();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_98288();
  __chkstk_darwin(v5);
  v6 = sub_978A8();
  __chkstk_darwin(v6 - 8);
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewWrapper) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___searchButton) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___translateButton) = 1;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientMask) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___topGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientMask) = 0;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___bottomGradientView) = 0;
  v15 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_searchQueue;
  v7 = sub_E104(0, &qword_C4810);
  v14[1] = "PodcastsTranscripts5";
  v14[2] = v7;
  sub_97898();
  v17 = &_swiftEmptyArrayStorage;
  sub_8DACC(&qword_C7B70, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7B78);
  sub_EA78(&qword_C7B80, &qword_C7B78);
  sub_98618();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + v15) = sub_98308();
  v8 = v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_session;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_playTask) = 0;
  v9 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_networkObserver;
  sub_979B8();
  *(v0 + v9) = sub_979A8();
  *(v0 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_isNetworkReachable) = 1;
  v10 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_retrySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7B88);
  swift_allocObject();
  *(v0 + v10) = sub_96E18();
  v11 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_presentationContext;
  type metadata accessor for TranscriptPresentationContext();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 255;
  *(v12 + 64) = 0;
  *(v12 + 72) = 4;
  sub_962D8();
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_subscriptions) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_searchSubscriptions) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___speechController) = 1;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___pinnedActiveLinkView) = 0;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_userInitiatedSearchDismissal) = 1;
  v13 = v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___stateMachine) = 0;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___timestampView) = 0;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___collectionViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___findInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController____lazy_storage___liveObserver) = 0;
  sub_98758();
  __break(1u);
}

uint64_t sub_8E024(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v10 = result;
  if (!a5)
  {
LABEL_18:
    if (!v10)
    {
      return result;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (!result)
  {

LABEL_7:
    v20 = *(a5 + 16) >> 61;
    v33 = a3;
    if (v20 <= 1)
    {
      if (!v20)
      {
        v23 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
LABEL_17:
        ObjectType = swift_getObjectType();
        v25 = *(v23 + 88);

        v25(1, 0, ObjectType, v23);

        a3 = v33;
        goto LABEL_18;
      }

      v21 = &qword_C52B0;
      v22 = type metadata accessor for LinkContent;
    }

    else if (v20 == 2)
    {
      v21 = &unk_C77D0;
      v22 = type metadata accessor for SilentContent;
    }

    else if (v20 == 3)
    {
      v21 = &qword_C52A8;
      v22 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v21 = &qword_C77C0;
      v22 = type metadata accessor for ChapterTitleContent;
    }

    v23 = sub_8DACC(v21, 255, v22);
    goto LABEL_17;
  }

  if ((sub_2ED38(v10, a2, a3, a4 & 1, a5) & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((a4 & 1) == 0)
  {
LABEL_5:
    v12 = type metadata accessor for StringTextPosition();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position] = a2;
    v36.receiver = v13;
    v36.super_class = v12;

    v14 = objc_msgSendSuper2(&v36, "init");
    v15 = objc_allocWithZone(v12);
    *&v15[OBJC_IVAR____TtC19PodcastsTranscripts18StringTextPosition_position] = a3;
    v35.receiver = v15;
    v35.super_class = v12;
    v16 = objc_msgSendSuper2(&v35, "init");
    v17 = type metadata accessor for StringTextRange();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_startPosition] = v14;
    *&v18[OBJC_IVAR____TtC19PodcastsTranscripts15StringTextRange_endPosition] = v16;
    v34.receiver = v18;
    v34.super_class = v17;
    v19 = objc_msgSendSuper2(&v34, "init");
    goto LABEL_21;
  }

LABEL_20:

  v19 = 0;
LABEL_21:
  v26 = *(v10 + 16) >> 61;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = &unk_C77D0;
      v28 = type metadata accessor for SilentContent;
    }

    else if (v26 == 3)
    {
      v27 = &qword_C52A8;
      v28 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v27 = &qword_C77C0;
      v28 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_30;
  }

  if (v26)
  {
    v27 = &qword_C52B0;
    v28 = type metadata accessor for LinkContent;
LABEL_30:
    v29 = sub_8DACC(v27, 255, v28);
    goto LABEL_31;
  }

  v29 = sub_8DACC(&qword_C77E0, 255, type metadata accessor for TextContent);
LABEL_31:
  v30 = swift_getObjectType();
  v31 = *(v29 + 88);
  v32 = v19;

  v31(v19, *&a6, v30, v29);
}

uint64_t sub_8E4D0()
{
  v1 = v0;
  v2 = sub_96028();
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_98778())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v2 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

LABEL_3:
  v5 = sub_96028();
  result = swift_beginAccess();
  v7 = *(v1 + v3);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_986C8();
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v7 + 8 * v5 + 32);

LABEL_7:
    swift_endAccess();
    v9 = *(v8 + 16);

    return (v9 & 0x6000000000000000) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_8E5E4(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_8F604;
  *(v7 + 24) = v6;
  aBlock[4] = sub_8F60C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_84490;
  aBlock[3] = &block_descriptor_48;
  v8 = _Block_copy(aBlock);

  [a1 setAccessibilityCustomActionsBlock:v8];
  _Block_release(v8);
  v9 = sub_96028();
  v10 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    result = sub_98778();
    if (v9 >= result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v9 >= result)
    {
      return result;
    }
  }

  v13 = sub_96028();
  result = swift_beginAccess();
  v14 = *(v2 + v10);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_986C8();
    goto LABEL_7;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v13 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v15 = *(v14 + 8 * v13 + 32);

LABEL_7:
  swift_endAccess();
  if (!(*(v15 + 16) >> 61))
  {
    swift_getKeyPath();
    sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent);

    sub_962A8();

    sub_44C3C(1);
  }
}

uint64_t sub_8E8C4()
{
  v1 = v0;
  v2 = sub_96028();
  v3 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    result = sub_98778();
    if (v2 >= result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v2 >= result)
    {
      return result;
    }
  }

  v6 = sub_96028();
  result = swift_beginAccess();
  v7 = *(v1 + v3);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_986C8();
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 8 * v6 + 32);

LABEL_7:
  swift_endAccess();
  if (!(*(v8 + 16) >> 61))
  {
    swift_getKeyPath();
    sub_8DACC(&qword_C56A0, 255, type metadata accessor for TextContent);

    sub_962A8();

    sub_44C3C(0);
  }
}

void _s19PodcastsTranscripts24TranscriptViewControllerC06scrollD15WillEndDragging_12withVelocity19targetContentOffsetySo08UIScrollD0C_So7CGPointVSpyAJGtF_0(double a1, double a2)
{
  if (a2 <= 0.0)
  {
    if (a2 >= 0.0)
    {
      return;
    }

    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  *(sub_7BEDC() + 16) = v2;
  sub_70DEC();
}

void sub_8EAF0()
{
  v1 = *(v0 + 24);
  v2 = sub_7D8E8();
  v4 = v2;
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

uint64_t _s19PodcastsTranscripts24TranscriptViewControllerC010collectionD0_34contextMenuConfigurationForItemsAt5pointSo09UIContexthI0CSgSo012UICollectionD0C_Say10Foundation9IndexPathVGSo7CGPointVtF_0(void *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v5 = sub_97B98();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = (&v47 - v8);
  v9 = sub_96048();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v47 - v14;
  v17 = 0;
  if (*(a2 + 16) != 1)
  {
    return v17;
  }

  v54 = v5;
  v18 = *(v10 + 16);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v52 = *(v10 + 80);
  v53 = v19;
  v51 = v18;
  (v18)(&v47 - v14, a2 + v19, v9, v15);
  v20 = sub_96028();
  v21 = OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_viewModels;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (v22 >> 62)
  {
    if (v20 >= sub_98778())
    {
      goto LABEL_16;
    }
  }

  else if (v20 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_16;
  }

  v23 = sub_96028();
  result = swift_beginAccess();
  v25 = *(v3 + v21);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = sub_986C8();
    goto LABEL_8;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
  {
    v26 = *(v25 + 8 * v23 + 32);

LABEL_8:
    swift_endAccess();
    v27 = sub_963D8();
    if (!v27)
    {
      (*(v10 + 8))(v16, v9);

      return 0;
    }

    v28 = *(v26 + 16);
    if (!(v28 >> 61))
    {
      v49 = v27;
      v50 = v26;
      v33 = *(v28 + 56);
      v29 = v57;
      *v57 = *(v28 + 48);
      v29[1] = v33;
      v32 = &enum case for KCURadar.ReportContent.transcription(_:);
      goto LABEL_14;
    }

    v29 = v57;
    if (v28 >> 61 == 4)
    {
      v49 = v27;
      v50 = v26;
      v30 = v28 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *(v30 + 24);
      *v57 = *(v30 + 16);
      v29[1] = v31;
      v32 = &enum case for KCURadar.ReportContent.chapter(_:);
LABEL_14:
      v34 = v29;
      (*(v58 + 104))(v29, *v32, v54);

      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51(v12, v16, v9);
      v35 = v58;
      (*(v58 + 16))(v55, v34, v54);
      v36 = v53;
      v37 = (v11 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + *(v35 + 80) + 8) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v56;
      *(v40 + 16) = v48;
      *(v40 + 24) = v41;
      (*(v10 + 32))(v40 + v36, v12, v9);
      v42 = v50;
      *(v40 + v37) = v49;
      *(v40 + v38) = v42;
      v43 = v54;
      (*(v58 + 32))(v40 + v39, v55, v54);
      v44 = objc_opt_self();
      aBlock[4] = sub_8F508;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_8C1B4;
      aBlock[3] = &block_descriptor_35;
      v45 = _Block_copy(aBlock);

      v46 = v56;

      v17 = [v44 configurationWithIdentifier:0 previewProvider:0 actionProvider:v45];

      _Block_release(v45);
      (*(v58 + 8))(v57, v43);
      (*(v10 + 8))(v16, v9);

      return v17;
    }

LABEL_16:
    (*(v10 + 8))(v16, v9);
    return 0;
  }

  __break(1u);
  return result;
}

id _s19PodcastsTranscripts24TranscriptViewControllerC15findInteraction_6didEndySo06UIFindG0C_So0J7SessionCtF_0(void *a1)
{
  result = [a1 isFindNavigatorVisible];
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_userInitiatedSearchDismissal) == 1)
    {
      *(sub_7BEDC() + 16) = 0;
      sub_70DEC();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_userInitiatedSearchDismissal) = 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TranscriptViewController.KeyboardState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for TranscriptViewController.KeyboardState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TranscriptViewController.KeyboardState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_8F22C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8F248(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_8F2D4()
{
  result = qword_C7B58;
  if (!qword_C7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7B58);
  }

  return result;
}

unint64_t sub_8F328()
{
  result = qword_C7B68;
  if (!qword_C7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7B68);
  }

  return result;
}

uint64_t sub_8F37C()
{
  v1 = sub_96048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_97B98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v12, v10 | 7);
}

UIMenu sub_8F508(uint64_t a1)
{
  v3 = *(sub_96048() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_97B98() - 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_85160(a1, v8, v9, v1 + v4, v10, v11, v12);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_8F73C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8F784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2A8A8;

  return sub_89164(a1, v4, v5, v7, v6);
}

uint64_t sub_8F878()
{
  sub_EA78(&qword_C7BF0, &qword_C7B88);

  return sub_96E48();
}

uint64_t sub_8F904()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8F97C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8F9BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8FA30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8FA98()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_8FADC()
{

  return _swift_deallocObject(v0, 57, 7);
}

id sub_8FB14()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC19PodcastsTranscripts24TranscriptViewController_keyboardState;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  sub_7FD58();
  return sub_7DE30();
}

uint64_t sub_8FC10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(a1 + 56);
  v8[0] = *(a1 + 40);
  v8[1] = v4;
  v9 = *(a1 + 72);
  return v2(v6, v8);
}

unint64_t sub_8FC7C()
{
  result = qword_C7F10;
  if (!qword_C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F10);
  }

  return result;
}

uint64_t sub_8FD04(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_8FD14(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_8FD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7BA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_8FDA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentInset];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t objectdestroy_2Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8FE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FC0);

  return sub_8659C();
}

uint64_t sub_8FF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FooterViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8FF78()
{
  v1 = *(type metadata accessor for FooterViewModel(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_96548();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_900B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FooterViewModel(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_86E98(a1, a2, a3, a4, v10);
}

uint64_t objectdestroy_224Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

void *sub_901FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C7FB8);

  return sub_8672C(a1, a2, a3);
}

unint64_t sub_902D4()
{
  result = qword_C7FE8;
  if (!qword_C7FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C7FE0);
    sub_8DACC(&qword_C7FF0, 255, type metadata accessor for FooterView);
    sub_8DACC(&qword_C7FF8, 255, type metadata accessor for ViewContextEnvironmentSetter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7FE8);
  }

  return result;
}

uint64_t sub_90414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_194Tm(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}