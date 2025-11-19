uint64_t sub_1003072D0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2();
  }

  return result;
}

void sub_100307354(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003073B0(a1 & 1);
  }
}

uint64_t sub_1003073B0(int a1)
{
  v18 = a1;
  v2 = type metadata accessor for Date();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1009CF4E0;
  swift_beginAccess();
  sub_100031660(v1 + v12, v7, &qword_100973D30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &qword_100973D30);
  }

  (*(v9 + 32))(v11, v7, v8);
  TimedMetricsPagePresenter.impressionsTracker.getter();
  swift_getObjectType();
  Date.init()();
  v14 = (v17 + 8);
  v15 = (v9 + 8);
  if (v18)
  {
    dispatch thunk of ImpressionsTracker.elementDidEnterView(_:on:)();
  }

  else
  {
    dispatch thunk of ImpressionsTracker.elementDidLeaveView(_:on:)();
  }

  swift_unknownObjectRelease();
  (*v14)(v4, v2);
  return (*v15)(v11, v8);
}

void sub_100307670()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v1, v3);
  type metadata accessor for ArticleDiffablePagePresenter();
  sub_10030A0F8(&qword_100980400, &type metadata accessor for ArticleDiffablePagePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v2 + 8))(v5, v1);
  if (v0[qword_10097FCE8] == 1)
  {
    static ResilientDeepLinkController.removeAllDeepLinks()();
    v6 = objc_opt_self();
    v7 = [v6 sharedApplication];
    v8 = [v7 delegate];

    if (v8)
    {
      type metadata accessor for AppDelegate();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        *(v9 + OBJC_IVAR____TtC8AppStore11AppDelegate_terminateWhenInBackground) = 1;
        v10 = [v6 sharedApplication];
        [v10 suspend];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v11 = *&v0[qword_1009CF4B8];
    if (v11)
    {

      v11(v12);
      sub_10001F63C(v11);
    }

    else
    {
      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1003078D4(void *a1)
{
  v1 = a1;
  sub_100307670();
}

void sub_10030791C()
{
  v1 = *(v0 + qword_10097FCC0);
  if (v1)
  {
    v2 = v0;
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
      v5 = *(v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
      v4 = *(v6 + 8);
      v5 = *v6;
    }

    ObjectType = swift_getObjectType();
    v8 = *(v4 + 264);
    v9 = v3;
    v15 = v8(ObjectType, v4);

    if (v15)
    {
      sub_1004E3134();
      v10 = v15;
      v11 = *(v2 + qword_1009CF4D0);
      if (v11)
      {
        v12 = *&v15[qword_100988CE0];
        v13 = v11;
        if (v12)
        {
          v14 = [v12 isMuted];
        }

        else
        {
          v14 = 1;
        }

        sub_1001C6984(v14);

        v10 = v15;
      }
    }
  }
}

void sub_100307A78(void *a1)
{
  v1 = a1;
  sub_10030791C();
}

char *sub_100307AC0(char *result)
{
  v1 = *&result[qword_1009CF4C0];
  if (v1)
  {
    v2 = result;
    v3 = sub_10000827C(v1);
    v1(v3);

    return sub_10001F63C(v1);
  }

  return result;
}

void sub_100307B48()
{
  v1 = *(v0 + qword_10097FCB8);
  if (v1)
  {
    v2 = v0;

    TodayCard.media.getter();
    v3 = TodayCardMedia.kind.getter();

    v4 = qword_10097FCC0;
    v5 = *(v2 + qword_10097FCC0);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
      if (v6)
      {
        v7 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
      }

      else
      {
        v7 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
        v6 = 0;
      }

      v12 = v6;
      v11 = v8;
      v10 = v11;
    }

    else
    {
      sub_1004AFDA4(v3);
      v7 = v9;
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      if (!*(v2 + v4))
      {
        type metadata accessor for RiverTodayCardCollectionViewCell();
        if (swift_dynamicCastClass())
        {
          sub_1003042A4(v1, v10, v7, 7);
        }

        sub_100306104(v1, v10, v7);
      }

      v11 = 0;
    }

    sub_1003042A4(v1, v10, v7, 7);
    v13 = *(v2 + v4);
    if (!v13 || ((v14 = *(v13 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell), swift_getObjectType(), swift_conformsToProtocol2()) ? (v15 = v14 == 0) : (v15 = 1), v15))
    {
    }

    else
    {
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      v16 = v14;
      inject<A, B>(_:from:)();
      swift_getObjectType();
      v17 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
      v18 = v16;
      dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
    }
  }
}

void sub_100307DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for OSLogger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v32 = *(a1 + 8);
  v33 = v13;
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009CE200);
  (*(v10 + 16))(v12, v14, v9);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v34 = a2;
  dispatch thunk of EditorialLink.url.getter();
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10002B894(v8, &qword_100982460);
    aBlock = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v15;
    v17 = sub_1000056E0(&aBlock);
    (*(v16 + 32))(v17, v8, v15);
  }

  static LogMessage.sensitive(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0);
  Logger.debug(_:)();

  (*(v10 + 8))(v12, v9);
  v18 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[qword_10097FCC8];
    if (v21)
    {

      v22 = swift_allocObject();
      v23 = v34;
      v24 = v32;
      v25 = v33;
      v22[2] = v35;
      v22[3] = v25;
      v22[4] = v24;
      v22[5] = v23;
      v22[6] = v18;
      v41 = 1;
      v31 = *(v21 + 32);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = sub_100309A88;
      v26[4] = v22;
      v26[5] = &v41;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100309A98;
      *(v27 + 24) = v26;
      v39 = sub_10006F258;
      v40 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_1000489A8;
      *(&v38 + 1) = &unk_1008BDCD8;
      v28 = _Block_copy(&aBlock);

      v29 = v24;
      v30 = v35;
      sub_100309AA4(v25, v29);

      dispatch_sync(v31, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          sub_100308348(v30, v33, v32, v34, v18);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100308348(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v23 = a3;
  v28 = a4;
  dispatch thunk of LinkLoader.setPresentation(_:forKey:)();
  sub_100005744(0, &qword_1009729E0);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a4;
  v26 = sub_100309B08;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100007A08;
  v25 = &unk_1008BDD28;
  v17 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10030A0F8(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_100308670()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    ArticleDiffablePagePresenter.reloadLink(_:)();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 collectionView];

    if (v4)
    {
      v5 = [v4 collectionViewLayout];

      [v5 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100308774()
{
  v0 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for OSLogger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v3, qword_1009CE200);
  (*(v4 + 16))(v6, v7, v3);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  dispatch thunk of EditorialLink.url.getter();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10002B894(v2, &qword_100982460);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    v10 = sub_1000056E0(&v12);
    (*(v9 + 32))(v10, v2, v8);
  }

  static LogMessage.sensitive(_:)();
  sub_10002B894(&v12, &unk_1009711D0);
  Logger.debug(_:)();

  return (*(v4 + 8))(v6, v3);
}

id sub_100308A98(id result, uint64_t a2, uint64_t a3)
{
  if ((*(result + qword_1009CF498) & 1) == 0)
  {
    v4.receiver = result;
    v4.super_class = swift_getObjectType();
    return objc_msgSendSuper2(&v4, "scrollViewDidScroll:", a3);
  }

  return result;
}

uint64_t sub_100308AF4()
{
  v0 = sub_100301D04();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:1];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_100308BE4()
{
  v0 = sub_100301D04();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:0];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_100308CD4(void *a1)
{
  v1 = a1;
  sub_100307670();

  return 1;
}

uint64_t type metadata accessor for ArticleDiffablePageViewController()
{
  result = qword_10097FD30;
  if (!qword_10097FD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100308D50()
{
  sub_100308EB0(319, &qword_100977370, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_100308EB0(319, &qword_100973D20, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_100308EB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100308F0C(int a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_10097FCD8];
  if (!v10)
  {
    return;
  }

  v11 = *&v1[qword_10097FCC0];
  if (!v11)
  {
    return;
  }

  v12 = v11 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = qword_10097FCE0;
  swift_beginAccess();
  sub_100031660(&v1[v15], v5, &qword_10097DBD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_10097DBD0);
    return;
  }

  (*(v7 + 32))(v9, v5, v6);
  v37 = v1;
  v36 = a1;
  if (a1)
  {

    v13;
    v16 = [v1 traitCollection];
    v17 = UITraitCollection.isRegularPad.getter();
    type metadata accessor for ListTodayCardCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v14 + 160))(ObjectType, v14);

      if (v19 == 6)
      {
        v20 = 6;
LABEL_15:
        v25 = v37;
        v30 = (v17 & 1) == 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = 1;
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = *(v14 + 160);

  v23 = v13;
  v34 = v21;
  v35 = v23;
  v33 = v22;
  v24 = (v22)(v21, v14);
  v25 = v37;
  v26 = v24;
  if (v24 != 7)
  {
    goto LABEL_22;
  }

  v27 = [v37 traitCollection];
  v28 = UITraitCollection.isRegularPad.getter();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  v29 = v33(v34, v14);

  if (v29 != 6)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  v20 = 6;
LABEL_18:
  v25 = v37;
  v30 = (v28 & 1) == 0;
LABEL_19:
  if (v30)
  {
    v26 = 5;
  }

  else
  {
    v26 = v20;
  }

LABEL_22:
  v31 = swift_getObjectType();
  (*(v14 + 296))(v10, v26, v9, *&v25[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph], v31, v14);
  if (v36)
  {
    sub_100306528();
  }

  [v13 layoutIfNeeded];
  v38 = v13;
  (*(*(v14 + 16) + 8))(v31);

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100309324(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_100309370(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1009CF490;
  *(v2 + v8) = [objc_allocWithZone(type metadata accessor for TodayArticleTransitioningDelegate()) init];
  *(v2 + qword_10097FCA0) = 0;
  *(v2 + qword_10097FCA8) = 0;
  *(v2 + qword_1009CF498) = 1;
  v9 = qword_1009CF4A0;
  sub_10002849C(&qword_100996830);
  swift_allocObject();
  *(v2 + v9) = AsyncEvent.init()();
  *(v2 + qword_1009CF4A8) = 1;
  *(v2 + qword_1009CF4B0) = 0;
  v10 = qword_10097FCB0;
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  v11 = sub_100472D20(2);
  *(v2 + v10) = v11;
  v12 = (v2 + qword_1009CF4B8);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + qword_1009CF4C0);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + qword_1009CF4C8) = 0;
  *(v2 + qword_1009CF4D0) = 0;
  *(v2 + qword_1009CF4D8) = 0;
  *(v2 + qword_10097FCB8) = 0;
  *(v2 + qword_10097FCC0) = 0;
  *(v2 + qword_10097FCC8) = 0;
  *(v2 + qword_10097FCD0) = 0;
  *(v2 + qword_10097FCD8) = 0;
  v14 = qword_10097FCE0;
  v15 = type metadata accessor for PageGrid();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + qword_10097FCE8) = 0;
  *(v2 + qword_10097FCF0) = 0;
  *(v2 + qword_10097FCF8) = 0;
  *(v2 + qword_10097FD00) = 0;
  v16 = qword_1009CF4E0;
  v17 = type metadata accessor for ImpressionMetrics();
  (*(*(v17 - 8) + 56))(v2 + v16, 1, 1, v17);
  v20[1] = v11;

  Dependency.init<A>(satisfying:with:)();
  v18 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  return sub_1003BD0B0(a1, v18);
}

char *sub_10030969C(uint64_t a1, uint64_t a2, char a3)
{
  objc_allocWithZone(type metadata accessor for ArticleDiffablePageViewController());

  v6 = sub_100309370(a1);

  if (a3)
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v7 = type metadata accessor for StoreNavigationController();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16.receiver = v8;
    v16.super_class = v7;

    v10 = objc_msgSendSuper2(&v16, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v10 setDelegate:{v10, v16.receiver, v16.super_class}];
    sub_10002849C(&qword_100973210);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007B0B70;
    *(v11 + 32) = v6;
    sub_100005744(0, &qword_1009711C0);
    v12 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setViewControllers:isa];

    v6 = sub_100750DA0(v10, v12);
    [v6 setModalPresentationStyle:4];
    [v6 setTransitioningDelegate:*&v12[qword_1009CF490]];
    [v6 setModalPresentationCapturesStatusBarAppearance:1];
  }

  else
  {
    v14 = v6[qword_1009CF498];
    v6[qword_1009CF498] = 0;
    sub_100300898(v14);
    sub_100300270(0, 0);
  }

  return v6;
}

unint64_t sub_100309954()
{
  result = qword_100980368;
  if (!qword_100980368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980368);
  }

  return result;
}

unint64_t sub_1003099A8()
{
  result = qword_100980380;
  if (!qword_100980380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980380);
  }

  return result;
}

unint64_t sub_1003099FC()
{
  result = qword_100980388;
  if (!qword_100980388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980388);
  }

  return result;
}

uint64_t sub_100309AA4(uint64_t a1, void *a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_100309AB8(a1, a2);
  }

  return a1;
}

id sub_100309AB8(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {

    return a2;
  }

  else
  {
  }
}

uint64_t sub_100309B90(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v4 = TodayCard.overlay.getter()) == 0 || (v19[0] = v4, type metadata accessor for TodayCardOverlay(), sub_10002849C(&qword_1009803F8), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  if (!a2 || (v5 = TodayCard.overlay.getter()) == 0 || (*&v17[0] = v5, type metadata accessor for TodayCardOverlay(), sub_10002849C(&qword_1009803F8), (swift_dynamicCast() & 1) == 0))
  {
    memset(v19, 0, 40);
  }

  if (!a1 || (*&v15[0] = TodayCard.media.getter(), type metadata accessor for TodayCardMedia(), sub_10002849C(&qword_1009803F0), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  if (!a2 || (v13[0] = TodayCard.media.getter(), type metadata accessor for TodayCardMedia(), sub_10002849C(&qword_1009803F0), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_100031660(v20, v13, &qword_1009803E0);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v6 = dispatch thunk of PurchasableTodayCardOverlay.offerAdamIds.getter();
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E0);
    v6 = 0;
  }

  sub_100031660(v19, v13, &qword_1009803E0);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v7 = dispatch thunk of PurchasableTodayCardOverlay.offerAdamIds.getter();
    sub_100007000(v13);
    if (v6)
    {
      if (v7)
      {
        v8 = sub_1006E23EC(v6, v7);

LABEL_26:

        goto LABEL_28;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_26;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E0);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v8 = 1;
LABEL_28:
  sub_100031660(v17, v13, &qword_1009803E8);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v9 = dispatch thunk of PurchasableTodayCardMedia.offerAdamIds.getter();
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E8);
    v9 = 0;
  }

  sub_100031660(v15, v13, &qword_1009803E8);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v10 = dispatch thunk of PurchasableTodayCardMedia.offerAdamIds.getter();
    sub_100007000(v13);
    if (v9)
    {
      if (v10)
      {
        v11 = sub_1006E23EC(v9, v10);

LABEL_39:

        goto LABEL_41;
      }

LABEL_36:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E8);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  v11 = 1;
LABEL_41:
  sub_100031660(v20, v13, &qword_1009803E0);
  if (v14)
  {
    sub_10002A400(v13, v14);
    dispatch thunk of PurchasableTodayCardOverlay.offerAdamIds.getter();
    sub_100007000(v13);

    if (v8)
    {
      v11 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E0);
  }

  sub_100031660(v17, v13, &qword_1009803E8);
  if (v14)
  {
    sub_10002A400(v13, v14);
    dispatch thunk of PurchasableTodayCardMedia.offerAdamIds.getter();
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E8);
    v11 = 0;
  }

LABEL_48:
  sub_10002B894(v15, &qword_1009803E8);
  sub_10002B894(v17, &qword_1009803E8);
  sub_10002B894(v19, &qword_1009803E0);
  sub_10002B894(v20, &qword_1009803E0);
  return v11 & 1;
}

uint64_t sub_10030A0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030A17C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for ComponentSeparator.Position();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100979010);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v7 = sub_10002849C(&unk_100970EA0);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v34 = type metadata accessor for MediumLockupLayout.Metrics();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009731F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v14 + 8))(v16, v13);
  if (v41 && (v17 = ShelfHeader.hasTrailingArtwork.getter(), , (v17 & 1) != 0))
  {
    v18 = 1;
    v19 = v38;
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v20 = v41;
    sub_100631334(v12);

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v21 = v41;
    v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v22 & 1) == 0)
    {
      MediumLockupLayout.Metrics.artworkSize.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v39 = v40;
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
      v23 = v28;
      MediumLockupLayout.Metrics.artworkMargin.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v24 = v31;
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v24, v33);
      (*(v29 + 8))(v23, v30);
    }

    (*(v36 + 104))(v35, enum case for ComponentSeparator.Position.bottom(_:), v37);
    v19 = v38;
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    (*(v10 + 8))(v12, v34);
    v18 = 0;
  }

  v25 = type metadata accessor for ComponentSeparator();
  return (*(*(v25 - 8) + 56))(v19, v18, 1, v25);
}

__n128 sub_10030A76C()
{
  v0 = sub_10002849C(&unk_100980420);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v40 - v1;
  v2 = sub_10002849C(&qword_100979010);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v7;
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  __chkstk_darwin(v10);
  v46 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_100005644(v15, qword_1009CF4E8);
  v16 = sub_1000056A8(v15, qword_1009CF4E8);
  if (qword_10096D7F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v2, qword_1009CF820);
  v42 = v3;
  v18 = *(v3 + 16);
  v18(v14, v17, v2);
  if (qword_10096D7E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v2, qword_1009CF7F0);
  v18(v46, v19, v2);
  if (qword_10096D808 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v2, qword_1009CF868);
  v18(v47, v20, v2);
  v69 = &type metadata for CGFloat;
  v70 = &protocol witness table for CGFloat;
  *&v68 = 0x4031000000000000;
  if (qword_10096D7A8 != -1)
  {
    swift_once();
  }

  v41 = v14;
  v49 = v5;
  v21 = sub_1000056A8(v2, qword_1009CF748);
  v18(v48, v21, v2);
  v67 = &protocol witness table for CGFloat;
  v66 = &type metadata for CGFloat;
  *&v65 = 0x4034000000000000;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  *&v62 = 0;
  v60 = &type metadata for Double;
  v61 = &protocol witness table for Double;
  *&v59 = 0;
  if (qword_10096D850 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for StaticDimension();
  v23 = sub_1000056A8(v22, qword_1009CF940);
  v57 = v22;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_1000056E0(&v56);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  if (qword_10096D858 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v22, qword_1009CF958);
  v54 = v22;
  v55 = &protocol witness table for StaticDimension;
  v27 = sub_1000056E0(&v53);
  v25(v27, v26, v22);
  if (qword_10096D7B0 != -1)
  {
    swift_once();
  }

  v28 = v45;
  v29 = sub_1000056A8(v45, qword_1009CF760);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, v29, v28);
  v52 = &protocol witness table for CGFloat;
  v51 = &type metadata for CGFloat;
  *&v50 = 0x4080E00000000000;
  v32 = v49;
  if (qword_10096D7C0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v2, qword_1009CF790);
  v18(v32, v33, v2);
  if (qword_10096D7C8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v2, qword_1009CF7A8);
  v18((v16 + v15[19]), v34, v2);
  v35 = (v16 + v15[20]);
  v35[3] = &type metadata for CGFloat;
  v35[4] = &protocol witness table for CGFloat;
  *v35 = 0x4080580000000000;
  v36 = (v16 + v15[21]);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x4077000000000000;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v37 = *(v42 + 32);
  v37(v16 + v15[7], v41, v2);
  v37(v16 + v15[6], v46, v2);
  v37(v16 + v15[8], v47, v2);
  sub_100005A38(&v68, v16 + v15[9]);
  v37(v16 + v15[10], v48, v2);
  sub_100005A38(&v65, v16 + v15[14]);
  sub_100005A38(&v62, v16 + v15[15]);
  sub_100005A38(&v59, v16 + v15[16]);
  sub_100005A38(&v56, v16 + v15[11]);
  sub_100005A38(&v53, v16 + v15[12]);
  (*(v30 + 32))(v16 + v15[13], v31, v28);
  sub_100005A38(&v50, v16 + v15[17]);
  v37(v16 + v15[18], v49, v2);
  result = *&UIEdgeInsetsZero.top;
  v39 = *&UIEdgeInsetsZero.bottom;
  *v16 = *&UIEdgeInsetsZero.top;
  *(v16 + 16) = v39;
  return result;
}

uint64_t sub_10030AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v104 = a2;
  v100 = type metadata accessor for OfferButtonMetrics();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v98 - v4;
  v103 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  __chkstk_darwin(v103);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100973B30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v98 - v12;
  __chkstk_darwin(v13);
  v119 = &v98 - v14;
  v15 = sub_10002849C(&unk_100980410);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v98 - v19;
  __chkstk_darwin(v20);
  v116 = &v98 - v21;
  v22 = sub_10002849C(&qword_100979010);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v117 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v98 - v26;
  __chkstk_darwin(v27);
  v114 = &v98 - v28;
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v129 = &protocol witness table for Double;
  *&v130 = 0;
  v128 = &type metadata for Double;
  *&v127 = 0;
  if (qword_10096D830 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v22, qword_1009CF8E0);
  v33 = *(v23 + 16);
  v105 = v31;
  v33(v31, v32, v22);
  if (qword_10096D7D0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v22, qword_1009CF7C0);
  *&v123 = v23 + 16;
  *&v122 = v33;
  v33(v114, v34, v22);
  if (qword_10096D700 != -1)
  {
    swift_once();
  }

  v106 = v23;
  v35 = sub_1000056A8(v15, qword_1009CF530);
  v107 = v16;
  v36 = *(v16 + 16);
  v36(v116, v35, v15);
  if (qword_10096D878 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v7, qword_1009CF9B8);
  v109 = v8;
  v38 = *(v8 + 16);
  v38(v119, v37, v7);
  if (qword_10096D800 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v22, qword_1009CF850);
  (v122)(v115, v39, v22);
  if (qword_10096D718 != -1)
  {
    swift_once();
  }

  v40 = sub_1000056A8(v15, qword_1009CF578);
  v36(v118, v40, v15);
  if (qword_10096D888 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v7, qword_1009CF9E8);
  v38(v121, v41, v7);
  if (qword_10096D818 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v22, qword_1009CF898);
  (v122)(v117, v42, v22);
  if (qword_10096D728 != -1)
  {
    swift_once();
  }

  v43 = sub_1000056A8(v15, qword_1009CF5A8);
  v36(v120, v43, v15);
  if (qword_10096D890 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v7, qword_1009CFA00);
  v108 = v10;
  v110 = v7;
  v38(v10, v44, v7);
  if (qword_10096D7A0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for StaticDimension();
  v46 = sub_1000056A8(v45, qword_1009CF730);
  v125 = v45;
  v126 = &protocol witness table for StaticDimension;
  v47 = sub_1000056E0(&v124);
  v48 = (*(v45 - 8) + 16);
  v49 = *v48;
  (*v48)(v47, v46, v45);
  v50 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v112 = v15;
  v111 = v48;
  if (v50)
  {
    v51 = v6;
    v52 = v36;
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v53 = qword_100991010;
  }

  else
  {
    v51 = v6;
    v52 = v36;
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v53 = qword_100991028;
  }

  v54 = v100;
  v55 = sub_1000056A8(v100, v53);
  v56 = v102;
  v57 = v99;
  (*(v102 + 16))(v99, v55, v54);
  v58 = v101;
  (*(v56 + 32))(v101, v57, v54);
  OfferButtonMetrics.inAppPurchaseTextSpace.getter();
  (*(v56 + 8))(v58, v54);
  if (qword_10096D730 != -1)
  {
    swift_once();
  }

  v59 = v112;
  v60 = sub_1000056A8(v112, qword_1009CF5C0);
  v61 = v103;
  v52(v51 + *(v103 + 20), v60, v59);
  static TextConfiguration.maxSubtitleWidth(with:)();
  v62 = (v51 + *(v61 + 24));
  v62[3] = &type metadata for CGFloat;
  v62[4] = &protocol witness table for CGFloat;
  *v62 = v63;
  static TextConfiguration.subtitleHorizontalSpacing.getter();
  v64 = *(v61 + 28);
  v113 = v51;
  v65 = (v51 + v64);
  v65[3] = &type metadata for CGFloat;
  v65[4] = &protocol witness table for CGFloat;
  *v65 = v66;
  v67 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v68 = v104;
  v69 = (v104 + v67[20]);
  v69[3] = &type metadata for CGFloat;
  v69[4] = &protocol witness table for CGFloat;
  *v69 = 0x4030000000000000;
  v70 = v122;
  if (qword_10096D848 != -1)
  {
    swift_once();
  }

  v71 = sub_1000056A8(v45, qword_1009CF928);
  v72 = (v68 + v67[21]);
  v72[3] = v45;
  v72[4] = &protocol witness table for StaticDimension;
  v73 = sub_1000056E0(v72);
  v74 = v49;
  v49(v73, v71, v45);
  if (qword_10096D860 != -1)
  {
    swift_once();
  }

  v75 = sub_1000056A8(v22, qword_1009CF970);
  v76 = v68;
  v77 = v22;
  v70(v68 + v67[22], v75, v22);
  v78 = v112;
  if (qword_10096D868 != -1)
  {
    swift_once();
  }

  v79 = *&UIEdgeInsetsZero.top;
  v122 = *&UIEdgeInsetsZero.bottom;
  v123 = v79;
  v80 = sub_1000056A8(v45, qword_1009CF988);
  v81 = (v68 + v67[23]);
  v81[3] = v45;
  v81[4] = &protocol witness table for StaticDimension;
  v82 = sub_1000056E0(v81);
  v74(v82, v80, v45);
  v83 = v105;
  if (qword_10096D828 != -1)
  {
    swift_once();
  }

  v84 = sub_1000056A8(v45, qword_1009CF8C8);
  v85 = (v76 + v67[24]);
  v85[3] = v45;
  v85[4] = &protocol witness table for StaticDimension;
  v86 = sub_1000056E0(v85);
  v74(v86, v84, v45);
  v87 = v122;
  *v76 = v123;
  *(v76 + 16) = v87;
  sub_100005A38(&v130, v76 + 32);
  sub_100005A38(&v127, v76 + 72);
  *(v76 + 112) = 0;
  *(v76 + 120) = 0;
  v88 = v67[8];
  v89 = *(v106 + 32);
  *&v123 = v89;
  v89(v76 + v88, v83, v77);
  v90 = v76 + v67[9];
  v98 = v77;
  v89(v90, v114, v77);
  v91 = *(v107 + 32);
  v92 = v78;
  v91(v76 + v67[10], v116, v78);
  v93 = *(v109 + 32);
  v94 = v110;
  v93(v76 + v67[11], v119, v110);
  v95 = v77;
  v96 = v123;
  (v123)(v76 + v67[12], v115, v95);
  v91(v76 + v67[13], v118, v92);
  v93(v76 + v67[14], v121, v94);
  v96(v76 + v67[15], v117, v98);
  v91(v76 + v67[16], v120, v92);
  v93(v76 + v67[17], v108, v94);
  sub_100005A38(&v124, v76 + v67[18]);
  return sub_10030F854(v113, v76 + v67[19]);
}

uint64_t sub_10030BD24()
{
  v0 = sub_10002849C(&qword_100979010);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v42 = &v36 - v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_100005644(v15, qword_1009CF500);
  v16 = sub_1000056A8(v15, qword_1009CF500);
  v57 = &type metadata for Double;
  v58 = &protocol witness table for Double;
  v55 = &protocol witness table for Double;
  *&v56 = 0;
  v54 = &type metadata for Double;
  *&v53 = 0;
  if (qword_10096D7D8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v0, qword_1009CF7D8);
  v18 = *(v1 + 16);
  v38 = v14;
  v18(v14, v17, v0);
  if (qword_10096D800 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v0, qword_1009CF850);
  v18(v42, v19, v0);
  v18(v9, v19, v0);
  if (qword_10096D818 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v43 = v3;
  v20 = sub_1000056A8(v0, qword_1009CF898);
  v40 = v6;
  v18(v6, v20, v0);
  v51 = &type metadata for CGFloat;
  v52 = &protocol witness table for CGFloat;
  *&v50 = 0x4030000000000000;
  if (qword_10096D7A0 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v21 = type metadata accessor for StaticDimension();
  v22 = sub_1000056A8(v21, qword_1009CF730);
  v48 = v21;
  v49 = &protocol witness table for StaticDimension;
  v23 = sub_1000056E0(&v47);
  v24 = *(*(v21 - 8) + 16);
  v24(v23, v22, v21);
  if (qword_10096D820 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v21, qword_1009CF8B0);
  v45 = v21;
  v46 = &protocol witness table for StaticDimension;
  v26 = sub_1000056E0(&v44);
  v24(v26, v25, v21);
  if (qword_10096D840 != -1)
  {
    swift_once();
  }

  v27 = *&UIEdgeInsetsZero.top;
  v36 = *&UIEdgeInsetsZero.bottom;
  v37 = v27;
  v28 = sub_1000056A8(v0, qword_1009CF910);
  v18(v43, v28, v0);
  if (qword_10096D848 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v21, qword_1009CF928);
  v30 = (v16 + v15[16]);
  v30[3] = v21;
  v30[4] = &protocol witness table for StaticDimension;
  v31 = sub_1000056E0(v30);
  v24(v31, v29, v21);
  v32 = (v16 + v15[17]);
  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  *v32 = 0x4044000000000000;
  v33 = v36;
  *v16 = v37;
  *(v16 + 16) = v33;
  sub_100005A38(&v56, v16 + 32);
  sub_100005A38(&v53, v16 + 72);
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  v34 = *(v41 + 32);
  v34(v16 + v15[8], v38, v0);
  v34(v16 + v15[9], v42, v0);
  v34(v16 + v15[10], v39, v0);
  v34(v16 + v15[11], v40, v0);
  sub_100005A38(&v50, v16 + v15[12]);
  sub_100005A38(&v47, v16 + v15[13]);
  sub_100005A38(&v44, v16 + v15[14]);
  return (v34)(v16 + v15[15], v43, v0);
}

id sub_10030C350()
{
  result = [objc_opt_self() systemBlueColor];
  qword_1009CF518 = result;
  return result;
}

UIColor sub_10030C38C()
{
  sub_100005744(0, &qword_100970180);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.58431, 0.0, 1.0).super.isa;
  qword_1009CF520 = result.super.isa;
  return result;
}

UIColor sub_10030C3E8()
{
  sub_100005744(0, &qword_100970180);
  result.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)([objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8], objc_msgSend(objc_allocWithZone(UIColor), "initWithWhite:alpha:", 0.0, 0.8), objc_msgSend(objc_allocWithZone(UIColor), "initWithWhite:alpha:", 1.0, 0.8), objc_msgSend(objc_allocWithZone(UIColor), "initWithWhite:alpha:", 1.0, 0.8)).super.isa;
  qword_1009CF528 = result.super.isa;
  return result;
}

uint64_t sub_10030C534(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100980410);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  sub_100005744(0, &qword_1009730E0);
  return Conditional.init(_:)();
}

void sub_10030C640(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  sub_100005744(0, &qword_1009730E0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  sub_1000056A8(v8, a3);
  v9 = [v7 traitCollection];
  v10 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *a4 = v10;
}

uint64_t sub_10030C744@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_100005744(0, &qword_1009730E0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v13 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v13, a3);
  v17[1] = v12;
  Conditional.evaluate(with:)();
  v14 = [v12 traitCollection];
  v15 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  result = (*(v9 + 8))(v11, v8);
  *a4 = v15;
  return result;
}

void sub_10030C9A4()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 weight:UIFontWeightMedium];
  if (!v1)
  {
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  }

  v2 = v1;
  v3 = sub_10027F640();

  qword_1009CF5D8 = v3;
}

void sub_10030CA48()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v1 = sub_10027F640();

  qword_1009CF5E0 = v1;
}

uint64_t sub_10030CAA8()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_1009CF5E8);
  sub_1000056A8(v7, qword_1009CF5E8);
  if (qword_10096DE88 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0B18);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DE80 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0B00);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030CC88()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009CF600);
  v1 = sub_1000056A8(v0, qword_1009CF600);
  if (qword_10096DE90 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0B30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10030CD50()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_1009CF618);
  sub_1000056A8(v7, qword_1009CF618);
  if (qword_10096DEA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0B78);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEA0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0B60);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030CF30()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_1009CF630);
  sub_1000056A8(v7, qword_1009CF630);
  if (qword_10096DEC0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0BC0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030D0DC()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_1009CF648);
  sub_1000056A8(v7, qword_1009CF648);
  if (qword_10096DEB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0BA8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0B90);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030D2BC()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_1009CF660);
  sub_1000056A8(v7, qword_1009CF660);
  if (qword_10096E110 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D12B0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D1298);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

uint64_t sub_10030D49C()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_1009CF678);
  sub_1000056A8(v0, qword_1009CF678);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_10030D538()
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2448);
  qword_1009CF6A8 = v0;
  unk_1009CF6B0 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009CF690);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_10030D5F4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleBody;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  qword_1009CF6D0 = type metadata accessor for StaticDimension();
  unk_1009CF6D8 = &protocol witness table for StaticDimension;
  sub_1000056E0(qword_1009CF6B8);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10030D770(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  v8 = sub_1000056A8(v7, qword_1009D2430);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_1000056E0(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

uint64_t sub_10030D8C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_10002849C(&unk_100980420);
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  sub_100083288(a3);
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  Conditional<>.init(regularValue:compactValue:)();
  return Conditional<>.init(whenOneOf:use:otherwiseUse:)();
}

uint64_t sub_10030DAA8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_10002849C(&qword_100979010);
  sub_100005644(v10, a2);
  sub_1000056A8(v10, a2);
  if (qword_10096DE88 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0B18);
  v13 = *(*(v11 - 8) + 16);
  v13(v9, v12, v11);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v4 + 104);
  v15(v9, enum case for FontSource.useCase(_:), v3);
  if (qword_10096DE80 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, qword_1009D0B00);
  v13(v6, v16, v11);
  v15(v6, v14, v3);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030DCF0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, qword_1009CF7F0);
  v14[1] = sub_1000056A8(v7, qword_1009CF7F0);
  if (qword_10096DE90 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0B30);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030DF00()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, qword_1009CF808);
  v14[1] = sub_1000056A8(v7, qword_1009CF808);
  if (qword_10096DE98 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0B48);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E138(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  *v6 = UIFontTextStyleFootnote;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v8 = UIFontTextStyleFootnote;
  return Conditional<>.init(regularConstant:compactConstant:source:)();
}

uint64_t sub_10030E270()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, qword_1009CF850);
  sub_1000056A8(v7, qword_1009CF850);
  if (qword_10096DEA8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0B78);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_10096DEA0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0B60);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E4B0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, qword_1009CF868);
  v14[1] = sub_1000056A8(v7, qword_1009CF868);
  if (qword_10096DEC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0BC0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E6B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, qword_1009CF880);
  v14[1] = sub_1000056A8(v7, qword_1009CF880);
  if (qword_10096DEC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0BC0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E8B8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, qword_1009CF898);
  sub_1000056A8(v7, qword_1009CF898);
  if (qword_10096DEB8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0BA8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_10096DEB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0B90);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030EB68(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for StaticDimension();
  sub_100005644(v9, a2);
  sub_1000056A8(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  StaticDimension.init(_:scaledLike:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10030ECD8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979010);
  sub_100005644(v4, qword_1009CF910);
  sub_1000056A8(v4, qword_1009CF910);
  if (qword_10096DEC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0BD8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return Conditional<>.init(regularConstant:compactConstant:source:)();
}

uint64_t sub_10030EED0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDimension();
  sub_100005644(v11, a2);
  sub_1000056A8(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, a4);
  (*(*(v12 - 8) + 16))(v10, v13, v12);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17[3] = v7;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v17);
  (*(v8 + 16))(v14, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10030F09C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CF958);
  sub_1000056A8(v4, qword_1009CF958);
  if (qword_10096DED8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0C08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10030F284()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CF988);
  sub_1000056A8(v4, qword_1009CF988);
  if (qword_10096DED0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0BF0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_10030F4A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_10030F548(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100973B30);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  return Conditional.init(_:)();
}

void sub_10030F5D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {

    v4 = 0;
  }

  else
  {
    v5 = UITraitCollection.isSizeClassRegular.getter();

    v4 = 1;
    if ((v5 & 1) == 0)
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t sub_10030F678(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100973B30);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

uint64_t sub_10030F750(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&qword_100979010);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

void sub_10030F7EC()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
  v1 = [v0 CGColor];

  qword_1009CFAA8 = v1;
}

uint64_t sub_10030F854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030F8BC()
{
  v1 = type metadata accessor for ImpressionMetrics.ID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Shelf.impressionMetrics.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v0 + 112))
    {

      ImpressionsCalculator.addElement(_:at:)();

      if (*(v0 + 112))
      {

        ImpressionMetrics.id.getter();
        v12 = ImpressionsCalculator.makeChildCalculator(for:)();

        (*(v2 + 8))(v4, v1);
        (*(v9 + 8))(v11, v8);
        return v12;
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

double sub_10030FB84(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v53 = a4;
  v48 = a2;
  v55 = a1;
  v5 = type metadata accessor for ShelfBackground();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v46 - v8;
  v9 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Shelf.ContentType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  v19 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v54 = v18;
  v55 = v19;
  Shelf.contentType.getter();
  if (a3)
  {
    v20 = v11;
    (*(v13 + 56))(v11, 1, 1, v12);
    v22 = v49;
    v21 = v50;
    v23 = v51;
    (*(v50 + 104))(v49, enum case for ShelfBackground.none(_:), v51);
  }

  else
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    v20 = v11;
    (*(v13 + 56))(v11, 0, 1, v12);
    v24 = v49;
    dispatch thunk of ShelfPresenter.background(for:)();
    v21 = v50;
    v23 = v51;
    v22 = v24;
  }

  v25 = v13;
  v26 = *(v13 + 16);
  v27 = v54;
  v26(v15, v54, v12);
  v28 = (*(v25 + 88))(v15, v12);
  v29 = v53;
  v52 = v25;
  if (v28 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v30 = &off_1008D0A88;
  }

  else
  {
    if (v28 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v25 + 8))(v15, v12);
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v30 = &off_1008CBB38;
  }

  v31 = (v30[2])();
  if ((v32 & 1) == 0)
  {
    v33 = *&v31;

    v34 = v33;
    (*(v21 + 8))(v22, v23);
    sub_10002B894(v20, &unk_100992460);
    (*(v52 + 8))(v27, v12);
    return v34;
  }

LABEL_11:
  v35 = sub_1005D8420();
  if (v35)
  {
    v37 = v35;
    v38 = v36;
    v39 = v23;
    v40 = v47;
    v51 = v12;
    Shelf.background.getter();
    *&v41 = COERCE_DOUBLE((*(v38 + 48))(v20, v22, v40, v29, v37, v38));
    v43 = v42;

    v44 = *(v21 + 8);
    v44(v40, v39);
    v44(v22, v39);
    sub_10002B894(v20, &unk_100992460);
    (*(v52 + 8))(v54, v51);
    v34 = 0.0;
    if ((v43 & 1) == 0)
    {
      return *&v41;
    }
  }

  else
  {

    (*(v21 + 8))(v22, v23);
    sub_10002B894(v20, &unk_100992460);
    (*(v52 + 8))(v27, v12);
    return 0.0;
  }

  return v34;
}

double sub_100310110(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  v11 = 0.0;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = dispatch thunk of ShelfPresenter.title(for:)();
  if (v17)
  {
    v52 = v16;
    v53 = v17;
    v18 = dispatch thunk of ShelfPresenter.seeAllAction(for:)();
    if (v18)
    {
      v50 = v18;
      Action.title.getter();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10096D648 != -1)
      {
        swift_once();
      }

      v21 = qword_10097E830;
      v48 = v4;
      v49 = v20;
      if (v20)
      {
        v20 = String._bridgeToObjectiveC()();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v47 = v22;
        v24 = [v47 font];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v26 = 0;
        }

        v30 = v47;
        [v47 setFont:v26];
      }

      v27 = a2;
      v28 = v10;
      [v21 sizeThatFits:{v13, v15}];
      v32 = v31;
      v11 = v33;

      v29 = v32 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];
    }

    else
    {
      v27 = a2;
      v28 = v10;
      v29 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [v27 pageMarginInsets];
    if (a1 >= 1)
    {
      v34 = a1 - 1;
    }

    else
    {
      v34 = 0;
    }

    sub_10030FB84(a1, v34, a1 < 1, v27);
    v35 = dispatch thunk of ShelfPresenter.titleArtwork(for:)();
    v36 = dispatch thunk of ShelfPresenter.eyebrow(for:)();
    v49 = v37;
    v50 = v36;
    v38 = dispatch thunk of ShelfPresenter.eyebrowArtwork(for:)();
    v39 = [v27 traitCollection];
    v40 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v35)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_1006458A0(a1, v27, v28);
    LOBYTE(v45) = 1;
    sub_1003F7390(v50, v49, v38, v52, v53, v35, 0, 0, v13, v15, v29, v11, 0, 0, v42, v28, v45, v27);
    v13 = v43;

    sub_10022F0DC(v28);
  }

  return v13;
}

void sub_1003105D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v133 = a3;
  v126 = a2;
  v116 = type metadata accessor for Shelf.PresentationHints();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = v107 - v9;
  v10 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v10 - 8);
  v123 = v107 - v11;
  v125 = type metadata accessor for ComponentLayoutOptions();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v137 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v136 = v107 - v14;
  __chkstk_darwin(v15);
  v135 = v107 - v16;
  v121 = type metadata accessor for IndexPath();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v18 - 8);
  v122 = v107 - v19;
  v118 = sub_10002849C(qword_10097DB40);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v134 = v107 - v20;
  v21 = type metadata accessor for Shelf.ContentType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v108 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  v128 = v4;
  IndexPath.section.getter();
  v30 = type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v31 = sub_1005D8420();
  if (!v31)
  {
    (*(v22 + 8))(v29, v21);
    return;
  }

  v111 = v32;
  v112 = v31;
  v131 = v29;
  IndexPath.section.getter();
  v33 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v129 = v22;
  v138 = a1;
  if (v33)
  {
    v34 = IndexPath.section.getter();
    v35 = v30;
    if (v34 >= dispatch thunk of ShelfPresenter.sectionCount.getter())
    {
      v110 = 0;
      v37 = v133;
    }

    else
    {
      v36 = dispatch thunk of ShelfPresenter.isShelfHidden(for:)();
      v37 = v133;
      if (v36)
      {
        v110 = 0;
      }

      else
      {
        v38 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
        if (sub_100647D6C(v34))
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        v110 = v39;
        v22 = v129;
        v37 = v133;
      }
    }
  }

  else
  {
    v110 = 0;
    v35 = v30;
    v37 = v133;
  }

  IndexPath.section.getter();
  v40 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v132 = v21;
  v109 = v26;
  if (v40)
  {
    IndexPath.section.getter();
    v127 = dispatch thunk of ShelfPresenter.shelf(for:)();
  }

  else
  {
    v127 = 0;
  }

  [a4 bounds];
  [a4 safeAreaInsets];
  CGSize.subtracting(insets:)();
  v42 = v41;
  v44 = v43;
  v45 = v131;
  v46 = sub_1005D8420();
  v48 = v132;
  v130 = v35;
  if (!v46)
  {
    goto LABEL_30;
  }

  v49 = v46;
  v50 = v47;
  v107[1] = swift_getObjectType();
  [v37 pageMarginInsets];
  v52 = (*(v50 + 32))(0, v37, v49, v50, v51);
  v42 = v42 - (v52 + v53);
  v54 = [v37 traitCollection];
  v55 = *(v22 + 16);
  v56 = v109;
  v55(v109, v45, v48);
  v57 = *(v22 + 88);
  v58 = v57(v56, v48);
  if (v58 != enum case for Shelf.ContentType.artwork(_:) && v58 != enum case for Shelf.ContentType.ribbonBar(_:) && v58 != enum case for Shelf.ContentType.ribbonFlow(_:) && v58 != enum case for Shelf.ContentType.paragraph(_:) && v58 != enum case for Shelf.ContentType.footnote(_:) && v58 != enum case for Shelf.ContentType.titledParagraph(_:) && v58 != enum case for Shelf.ContentType.reviewsContainer(_:) && v58 != enum case for Shelf.ContentType.reviewSummary(_:) && v58 != enum case for Shelf.ContentType.editorialLink(_:) && v58 != enum case for Shelf.ContentType.quote(_:) && v58 != enum case for Shelf.ContentType.framedArtwork(_:) && v58 != enum case for Shelf.ContentType.screenshots(_:))
  {
    if (v58 == enum case for Shelf.ContentType.appShowcase(_:))
    {

      goto LABEL_78;
    }

    v107[0] = v54;
    if (v58 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v58 == enum case for Shelf.ContentType.linkableText(_:) || v58 == enum case for Shelf.ContentType.framedVideo(_:) || v58 == enum case for Shelf.ContentType.productDescription(_:) || v58 == enum case for Shelf.ContentType.banner(_:) || v58 == enum case for Shelf.ContentType.roundedButton(_:) || v58 == enum case for Shelf.ContentType.titledButtonStack(_:) || v58 == enum case for Shelf.ContentType.smallStoryCard(_:) || v58 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) || v58 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v58 == enum case for Shelf.ContentType.upsellBreakout(_:) || v58 == enum case for Shelf.ContentType.smallBreakout(_:) || v58 == enum case for Shelf.ContentType.arcadeFooter(_:) || v58 == enum case for Shelf.ContentType.editorialQuote(_:) || v58 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v58 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v58 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v58 == enum case for Shelf.ContentType.privacyHeader(_:) || v58 == enum case for Shelf.ContentType.privacyFooter(_:) || v58 == enum case for Shelf.ContentType.privacyCategory(_:) || v58 == enum case for Shelf.ContentType.privacyDefinition(_:) || v58 == enum case for Shelf.ContentType.heroCarousel(_:) || v58 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v96 = v55, v109 = *(v129 + 8), v109(v56, v132), (UITraitCollection.isSizeClassRegular.getter() & 1) == 0))
    {

      goto LABEL_78;
    }

    v97 = v107[0];
    v98 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v98)
    {
LABEL_78:
      v37 = v133;
      v22 = v129;
      goto LABEL_30;
    }

    v99 = v131;
    v100 = sub_100316818(v131, v110, v133);
    v101 = v108;
    v102 = v99;
    v103 = v132;
    v96(v108, v102, v132);
    v104 = v57(v101, v103);
    if (v104 == enum case for Shelf.ContentType.annotation(_:) || v104 == enum case for Shelf.ContentType.productCapability(_:) || v104 == enum case for Shelf.ContentType.productPageLink(_:) || v104 == enum case for Shelf.ContentType.privacyType(_:))
    {
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 + (v100 - 1) * -30.0;
        goto LABEL_81;
      }
    }

    else
    {
      v109(v108, v132);
      PageTraitEnvironment.pageColumnMargin.getter();
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 - v105 * (v100 - 1);
LABEL_81:
        v42 = v106 / v100;
        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v37 = v133;
  v22 = v129;
LABEL_30:
  if (v42 <= 0.0)
  {
    v42 = 0.0;
  }

  v59 = v138;
  dispatch thunk of ShelfPresenter.model(at:)();
  (*(v120 + 16))(v119, v59, v121);
  StatePath<A>.init(_:)();
  v139 = *(v128 + 24);

  sub_10002849C(&unk_100980500);
  sub_100097060(&qword_10097DB00, &unk_100980500);
  StateLens.init<A>(contentsOf:in:)();
  v60 = v135;
  ComponentLayoutOptions.init()();
  v61 = sub_100314558(v59, v37);
  v62 = v125;
  v63 = v124;
  if (v61)
  {
    v64 = v136;
    v65 = v137;
    static ComponentLayoutOptions.separatorHidden.getter();
    sub_10032B148(v64, v65);
    v66 = *(v63 + 8);
    v22 = v129;
    v66(v65, v62);
    v66(v64, v62);
    v60 = v135;
  }

  v67 = v123;
  dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
  v68 = type metadata accessor for ItemBackground();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  sub_10002B894(v67, &unk_1009804F0);
  if (v69 != 1)
  {
    v70 = v137;
    static ComponentLayoutOptions.hasBackground.getter();
    v71 = v136;
    sub_10032B148(v136, v70);
    v72 = *(v63 + 8);
    v72(v70, v62);
    v72(v71, v62);
  }

  v73 = [v37 traitCollection];
  v74 = UITraitCollection.isSizeClassCompact.getter();

  v75 = v127;
  v76 = v37;
  if (v74)
  {
    v77 = v137;
    static ComponentLayoutOptions.isSingleVerticalColumn.getter();
    v78 = v136;
    sub_10032B148(v136, v77);
    v79 = *(v63 + 8);
    v79(v77, v62);
    v80 = v78;
    v37 = v76;
    v79(v80, v62);
  }

  if (!IndexPath.section.getter())
  {
    v81 = v137;
    static ComponentLayoutOptions.isFirstSection.getter();
    v82 = v136;
    sub_10032B148(v136, v81);
    v83 = *(v63 + 8);
    v83(v81, v62);
    v84 = v82;
    v37 = v76;
    v83(v84, v62);
  }

  if (v75)
  {

    v85 = v113;
    Shelf.presentationHints.getter();

    v86 = v114;
    static Shelf.PresentationHints.showSupplementaryText.getter();
    sub_100318010(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v87 = v116;
    v88 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v89 = *(v115 + 8);
    v89(v86, v87);
    v90 = v85;
    v37 = v76;
    v22 = v129;
    v89(v90, v87);
    v60 = v135;
    if (v88)
    {
      v91 = v137;
      static ComponentLayoutOptions.showSupplementaryText.getter();
      v92 = v136;
      sub_10032B148(v136, v91);
      v93 = *(v63 + 8);
      v93(v91, v62);
      v94 = v92;
      v37 = v76;
      v93(v94, v62);
    }
  }

  v95 = v134;
  (*(v111 + 72))(v140, v110, v134, v126, v60, v37, v42, v44);

  (*(v63 + 8))(v60, v62);
  (*(v117 + 8))(v95, v118);
  sub_100007000(v140);
  (*(v22 + 8))(v131, v132);
}

uint64_t sub_1003116A4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v239 = a6;
  v271 = a5;
  v270 = a4;
  v263 = a3;
  v273 = a2;
  v265 = type metadata accessor for ImpressionMetrics();
  v264 = *(v265 - 1);
  __chkstk_darwin(v265);
  v232 = v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v224 - v10;
  __chkstk_darwin(v12);
  v237 = v224 - v13;
  __chkstk_darwin(v14);
  v227 = v224 - v15;
  __chkstk_darwin(v16);
  v230 = v224 - v17;
  v235 = type metadata accessor for IndexSet();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for ShelfBackground();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Shelf.PresentationHints();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009804F0);
  __chkstk_darwin(v21 - 8);
  v23 = v224 - v22;
  v267 = type metadata accessor for ComponentLayoutOptions();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v25 = v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v224 - v27;
  __chkstk_darwin(v29);
  v262 = v224 - v30;
  v255 = type metadata accessor for IndexPath();
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v238 = v31;
  v253 = v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v32 - 8);
  v252 = sub_10002849C(&unk_10097DAF0);
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v261 = v224 - v33;
  v269 = type metadata accessor for Shelf.ContentType();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v244 = v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v256 = v224 - v36;
  __chkstk_darwin(v37);
  v260 = v224 - v38;
  v257 = type metadata accessor for ImpressionMetrics.ID();
  v258 = *(v257 - 8);
  __chkstk_darwin(v257);
  v240 = v224 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v259 = v224 - v41;
  v42 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v42 - 8);
  v236 = v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v243 = v224 - v45;
  __chkstk_darwin(v46);
  v242 = v224 - v47;
  __chkstk_darwin(v48);
  v228 = v224 - v49;
  __chkstk_darwin(v50);
  v229 = v224 - v51;
  __chkstk_darwin(v52);
  v54 = v224 - v53;
  v55 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v55 - 8);
  v231 = v224 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = v224 - v58;
  __chkstk_darwin(v59);
  v61 = v224 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = v224 - v64;
  [a1 setBackgroundColor:{0, v63}];
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v272 = v6;
  v274 = *(v6 + 16);
  if (!v66 || *&a1 == 0.0)
  {
    v74 = type metadata accessor for PurchasesContentPresenter();
    v75 = sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
    v76 = v273;
    v260 = v74;
    v259 = v75;
    result = dispatch thunk of ShelfPresenter.doesModelExist(for:)();
    if ((result & 1) == 0)
    {
      return result;
    }

    v225 = v11;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v226 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    dispatch thunk of ShelfPresenter.model(at:)();
    v78 = *(v254 + 16);
    v224[1] = v254 + 16;
    v224[0] = v78;
    v78(v253, v76, v255);
    StatePath<A>.init(_:)();
    v280 = *(v272 + 24);

    sub_10002849C(&unk_100980500);
    sub_100097060(&qword_10097DB00, &unk_100980500);
    v79 = v273;
    WritableStateLens.init<A>(contentsOf:in:)();
    ComponentLayoutOptions.init()();
    if (sub_100313FF4(v79, v270))
    {
      static ComponentLayoutOptions.separatorHidden.getter();
      sub_10032B148(v28, v25);
      v80 = v266[1];
      v81 = v267;
      v80(v25, v267);
      v80(v28, v81);
    }

    dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
    v82 = type metadata accessor for ItemBackground();
    v83 = (*(*(v82 - 8) + 48))(v23, 1, v82);
    sub_10002B894(v23, &unk_1009804F0);
    if (v83 != 1)
    {
      static ComponentLayoutOptions.hasBackground.getter();
      sub_10032B148(v28, v25);
      v84 = v266[1];
      v85 = v267;
      v84(v25, v267);
      v84(v28, v85);
    }

    if (!IndexPath.section.getter())
    {
      static ComponentLayoutOptions.isFirstSection.getter();
      sub_10032B148(v28, v25);
      v86 = v266[1];
      v87 = v267;
      v86(v25, v267);
      v86(v28, v87);
    }

    IndexPath.section.getter();
    v88 = v256;
    dispatch thunk of ShelfPresenter.contentType(for:)();
    IndexPath.section.getter();
    v89 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
    v90 = v268;
    v91 = v244;
    v92 = v269;
    (*(v268 + 16))(v244, v88, v269);
    v93 = (*(v90 + 88))(v91, v92);
    if (v93 == enum case for Shelf.ContentType.smallLockup(_:) || v93 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v93 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v93 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v93 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v93 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v93 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v93 == enum case for Shelf.ContentType.editorialCard(_:) || v93 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v93 == enum case for Shelf.ContentType.brick(_:) || v93 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v93 == enum case for Shelf.ContentType.reviews(_:) || v93 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v93 == enum case for Shelf.ContentType.framedVideo(_:) || v93 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v93 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v93 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v93 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v93 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v93 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v93 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v93 == enum case for Shelf.ContentType.posterLockup(_:) || v93 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v93 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v93 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v268 + 8))(v91, v269);
              goto LABEL_50;
            }

LABEL_38:
            if (v89)
            {
              goto LABEL_39;
            }

LABEL_50:
            v118 = [v270 traitCollection];
            v119 = UITraitCollection.isSizeClassCompact.getter();

            if ((v119 & 1) == 0)
            {
              LODWORD(v244) = 0;
              v120 = v262;
LABEL_53:
              ObjectType = swift_getObjectType();
              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              v124 = v245;
              Shelf.presentationHints.getter();

              (*(v226 + 80))(&v282, v261, v271, v120, v124, v270, ObjectType);
              (*(v246 + 8))(v124, v247);
              v125 = a1;
              IndexPath.section.getter();
              v126 = v248;
              dispatch thunk of ShelfPresenter.background(for:)();
              v127 = sub_1001AAD64();
              (*(v249 + 8))(v126, v250);
              if ([a1 overrideUserInterfaceStyle] != v127)
              {
                [a1 setOverrideUserInterfaceStyle:v127];
              }

              sub_10002C0AC(&v282, &v280);
              *(&v278 + 1) = sub_100005744(0, &qword_100978E10);
              *&v277 = a1;
              v128 = a1;
              tryToFetch(artworkFor:into:on:asPartOf:)();
              sub_10002B894(&v280, &unk_10097DBE0);
              sub_100007000(&v277);
              swift_getObjectType();
              v129 = swift_conformsToProtocol2();
              v130 = v272;
              if (v129 && *&a1 != 0.0)
              {
                v131 = v129;
                v132 = swift_getObjectType();
                v133 = *(v131 + 8);
                v134 = v128;
                v135 = v133(v132, v131);
                v79 = v273;
                v136 = v135;
                v137 = (v135 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                v138 = *(v135 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                *v137 = 0;
                v137[1] = 0;
                sub_10001F63C(v138);
                [*&v136[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && *&a1 != 0.0)
              {
                v139 = swift_allocObject();
                swift_weakInit();
                v271 = a1;
                v140 = v130;
                v141 = v253;
                v142 = v255;
                (v224[0])(v253, v79, v255);
                v143 = v254;
                v144 = (*(v254 + 80) + 16) & ~*(v254 + 80);
                v145 = (v238 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
                v146 = swift_allocObject();
                v147 = v141;
                v130 = v140;
                v125 = v271;
                (*(v143 + 32))(v146 + v144, v147, v142);
                *(v146 + v145) = v139;
                v148 = &v128[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                v149 = *&v128[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                *v148 = sub_1003180C8;
                v148[1] = v146;
                v150 = v128;

                sub_10001F63C(v149);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                v151 = v128;
                inject<A, B>(_:from:)();
                v152 = v280;
                swift_getObjectType();
                v153 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
                v154 = v151;
                dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
              }

              *&v275[0] = v128;
              *(&v275[0] + 1) = v226;
              v155 = v128;
              sub_10002849C(&qword_100980510);
              sub_10002849C(&qword_100980518);
              if (swift_dynamicCast())
              {
                sub_100005A38(&v277, &v280);
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                inject<A, B>(_:from:)();
                v156 = v277;
                sub_10002A400(&v280, v281);
                dispatch thunk of ManagedVideoViewProviding.registerVideos(with:)();

                sub_100007000(&v280);
              }

              else
              {
                v279 = 0;
                v278 = 0u;
                v277 = 0u;
                sub_10002B894(&v277, &unk_100980520);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                type metadata accessor for PlaybackCoordinator();
                v157 = v155;
                BaseObjectGraph.optional<A>(_:)();
                v158 = v280;
                if (v280)
                {
                  v159 = v157;
                  v160 = v158;
                  dispatch thunk of PlaybackCoordinator.register(playableView:)();

                  v157 = v160;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                sub_10002C0AC(&v282, &v277);
                v161 = v155;
                sub_10002849C(&qword_100973D50);
                sub_10002849C(&unk_100980530);
                if (swift_dynamicCast())
                {
                  sub_100005A38(v275, &v280);
                  sub_10002A400(&v280, v281);
                  if (dispatch thunk of SearchAdOpportunityProviding.searchAdOpportunity.getter())
                  {
                    SearchAdOpportunity.searchAd.getter();
                  }

                  swift_getObjectType();
                  dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();

                  sub_100007000(&v280);
                }

                else
                {

                  v276 = 0;
                  memset(v275, 0, sizeof(v275));
                  sub_10002B894(v275, &unk_100992FE0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                swift_getObjectType();
                v162 = v155;
                dispatch thunk of AnyAvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)();
              }

              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              if (v244)
              {
                v163 = [v239 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v164 = swift_dynamicCastClass();
                if (v164)
                {
                  v165 = v164;
                  v166 = [v164 _orthogonalScrollingSections];
                  v167 = v233;
                  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

                  v168 = IndexPath.section.getter();
                  LOBYTE(v166) = IndexSet.contains(_:)(v168);
                  (*(v234 + 8))(v167, v235);
                  if (v166)
                  {
                    [v155 frame];
                    v170 = v169;
                    v172 = v171;
                    v174 = v173;
                    v176 = v175;
                    v177 = v229;
                    Shelf.impressionMetrics.getter();
                    v178 = v264;
                    v179 = *(v264 + 6);
                    v180 = v265;
                    if (v179(v177, 1, v265) == 1)
                    {

                      (*(v268 + 8))(v256, v269);
                      (v266[1])(v262, v267);
                      (*(v251 + 8))(v261, v252);
                      sub_100007000(&v282);
                      return sub_10002B894(v177, &qword_100973D30);
                    }

                    v274 = *(v178 + 4);
                    v274(v230, v177, v180);
                    sub_10002C0AC(&v282, &v280);
                    sub_10002A400(&v280, v281);
                    v200 = v228;
                    dispatch thunk of ViewModel.impressionMetrics.getter();
                    if (v179(v200, 1, v180) == 1)
                    {

                      (*(v178 + 1))(v230, v180);
                      (*(v268 + 8))(v256, v269);
                      (v266[1])(v262, v267);
                      (*(v251 + 8))(v261, v252);
                      sub_100007000(&v282);
                      v188 = v200;
                      goto LABEL_99;
                    }

                    v270 = v172;
                    v271 = v170;
                    v201 = v227;
                    v274(v227, v200, v180);
                    [v165 _layoutFrameForSection:IndexPath.section.getter()];
                    v203 = v202;
                    v205 = v204;
                    v207 = v206;
                    v209 = v208;
                    [v165 _offsetForOrthogonalScrollingSection:IndexPath.section.getter()];
                    v211 = v272;
                    v212 = *(v272 + 112);
                    v213 = v180;
                    v214 = v262;
                    if (v212)
                    {
                      v215 = v210;

                      v216 = v230;
                      v217 = v203;
                      ImpressionsCalculator.addElement(_:at:)();

                      v218 = v205;
                      if (*(v211 + 112))
                      {

                        v219 = v240;
                        ImpressionMetrics.id.getter();
                        v277 = v215;
                        *&v278 = v207;
                        *(&v278 + 1) = v209;
                        LOBYTE(v279) = 0;
                        v212 = ImpressionsCalculator.childCalculator(for:viewBounds:)();

                        (*(v258 + 8))(v219, v257);
                      }

                      else
                      {
                        v212 = 0;
                      }

                      v220 = *&v271;
                    }

                    else
                    {
                      v217 = v203;
                      v216 = v230;
                      v220 = *&v271;
                      v218 = v205;
                    }

                    v221 = *&v270;
                    v283.origin.x = v217;
                    v283.origin.y = v218;
                    v283.size.width = v207;
                    v283.size.height = v209;
                    v222 = -CGRectGetMinY(v283);
                    v284.origin.x = v220;
                    v284.origin.y = v221;
                    v284.size.width = v174;
                    v284.size.height = v176;
                    CGRectOffset(v284, 0.0, v222);
                    if (v212)
                    {

                      ImpressionsCalculator.addElement(_:at:)();
                    }

                    sub_1003161C8(&v280, v212);

                    v223 = *(v178 + 1);
                    v223(v201, v213);
                    v223(v216, v213);
                    (*(v268 + 8))(v256, v269);
                    (v266[1])(v214, v267);
                    goto LABEL_109;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v125)
              {
                v181 = v155;
                [v181 frame];
                sub_10030F8BC();
                swift_getObjectType();
                dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
              }

              v182 = v242;
              Shelf.impressionMetrics.getter();
              v183 = v264;
              v184 = *(v264 + 6);
              v185 = v265;
              if (v184(v182, 1, v265) == 1)
              {
                sub_10002B894(v182, &qword_100973D30);
                v186 = v243;
              }

              else
              {
                v187 = v237;
                (*(v183 + 4))(v237, v182, v185);
                v186 = v243;
                if (*(v130 + 112))
                {

                  [v155 frame];
                  ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
                }

                (*(v183 + 1))(v187, v185);
              }

              sub_10002C0AC(&v282, &v280);
              sub_10002A400(&v280, v281);
              dispatch thunk of ViewModel.impressionMetrics.getter();
              if (v184(v186, 1, v185) == 1)
              {

                (*(v268 + 8))(v256, v269);
                (v266[1])(v262, v267);
                (*(v251 + 8))(v261, v252);
                sub_100007000(&v282);
                v188 = v186;
LABEL_99:
                sub_10002B894(v188, &qword_100973D30);
                return sub_100007000(&v280);
              }

              (*(v183 + 4))(v225, v186, v185);
              v189 = v236;
              Shelf.impressionMetrics.getter();
              if (v184(v189, 1, v185) == 1)
              {
                sub_10002B894(v189, &qword_100973D30);
                v190 = 1;
                v191 = v258;
                v192 = v241;
              }

              else
              {
                v192 = v241;
                ImpressionMetrics.id.getter();
                (*(v183 + 1))(v189, v185);
                v190 = 0;
                v191 = v258;
              }

              v193 = v257;
              (*(v191 + 56))(v192, v190, 1, v257);
              if (*(v130 + 112))
              {
                v194 = v192;
                v195 = v231;
                sub_100318058(v194, v231);
                v196 = v191;
                v197 = (*(v191 + 48))(v195, 1, v193);

                if (v197 == 1)
                {
                  sub_10002B894(v195, &qword_100990A90);
                }

                else
                {
                  ImpressionMetrics.ID.element.getter();
                  (*(v196 + 8))(v195, v193);
                }

                v198 = v232;
                ImpressionMetrics.withParentId(_:)();

                [v155 frame];
                ImpressionsCalculator.addElement(_:at:)();

                (*(v183 + 1))(v198, v185);
                v192 = v241;
              }

              [v155 frame];
              v199 = *(v130 + 112);

              sub_1003161C8(&v280, v199);

              sub_10002B894(v192, &qword_100990A90);
              (*(v183 + 1))(v225, v185);
              (*(v268 + 8))(v256, v269);
              (v266[1])(v262, v267);
LABEL_109:
              (*(v251 + 8))(v261, v252);
              sub_100007000(&v282);
              return sub_100007000(&v280);
            }

            static ComponentLayoutOptions.isSingleVerticalColumn.getter();
            LODWORD(v244) = 0;
LABEL_52:
            v120 = v262;
            sub_10032B148(v28, v25);
            v121 = v266[1];
            v122 = v267;
            v121(v25, v267);
            v121(v28, v122);
            goto LABEL_53;
          }
        }
      }
    }

LABEL_39:
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    LODWORD(v244) = 1;
    goto LABEL_52;
  }

  v267 = v66;
  v67 = a1;
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  v68 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v266 = v67;
  [v67 frame];
  v69 = v272;
  v262 = sub_10030F8BC();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v70 = v282;
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v256 = v282;
  v261 = v68;
  Shelf.impressionMetrics.getter();
  v71 = v264;
  v72 = v265;
  if ((*(v264 + 6))(v54, 1, v265) == 1)
  {
    sub_10002B894(v54, &qword_100973D30);
    v73 = 1;
  }

  else
  {
    ImpressionMetrics.id.getter();
    (*(v71 + 1))(v54, v72);
    v73 = 0;
  }

  v94 = v258;
  v95 = v257;
  (*(v258 + 56))(v65, v73, 1, v257);
  v96 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  v97 = v70;
  v98 = CompoundScrollObserver.init(children:)();
  if (*(v69 + 112))
  {
    sub_100318058(v65, v61);
    if ((*(v94 + 48))(v61, 1, v95) == 1)
    {
      sub_10002B894(v61, &qword_100990A90);
    }

    else
    {
      v99 = v259;
      (*(v94 + 32))(v259, v61, v95);
      (*(v94 + 16))(v240, v99, v95);
      type metadata accessor for ImpressionIdScrollObserver();
      swift_allocObject();
      swift_retain_n();
      ImpressionIdScrollObserver.init(_:impressionID:collectionView:)();
      CompoundScrollObserver.addChild(_:)();

      (*(v94 + 8))(v99, v95);
    }
  }

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  v100 = v97;
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v101 = v256;
  v265 = v100;
  if (v256)
  {
    type metadata accessor for PlaybackScrollObserver();
    swift_allocObject();
    v102 = v101;
    PlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();

    v264 = v102;
  }

  else
  {

    v264 = 0;
  }

  v103 = v98;
  sub_10002B894(v65, &qword_100990A90);
  v104 = v274;

  v105 = IndexPath.section.getter();
  v106 = v260;
  v107 = v261;
  Shelf.contentType.getter();
  v108 = Shelf.ContentType.doesModelContainment.getter();
  (*(v268 + 8))(v106, v269);
  v109 = *(v272 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10002849C(&qword_100980540);
  v111 = swift_allocObject();
  *(v111 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v111 + 16) = v104;
  *(v111 + 24) = v105;
  *(v111 + 32) = v108 & 1;
  *(v111 + 40) = v109;
  *(v111 + 64) = v103;
  *(v111 + 72) = &protocol witness table for CompoundScrollObserver;
  *(v111 + 80) = v262;
  swift_unknownObjectWeakAssign();

  v274 = v103;

  v112 = v266;
  v113 = swift_getObjectType();
  v114 = IndexPath.section.getter();
  v115 = sub_100097060(&qword_100980548, &qword_100980540);
  v116 = v267;
  v117 = *(v267 + 32);

  v117(v107, v114, v263, v271, v111, v115, v270, v113, v116);
}

uint64_t sub_100313FF4(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v27 = v2;
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v13 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
  (*(v4 + 32))(v9, v12, v3);
  v14 = (*(v4 + 88))(v9, v3);
  if (v14 == enum case for Shelf.ContentType.smallLockup(_:) || v14 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_11;
  }

  v20 = v14 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v14 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v20 || v14 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.editorialCard(_:) || v14 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.brick(_:) || v14 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.reviews(_:) || v14 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v14 == enum case for Shelf.ContentType.framedVideo(_:) || v14 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v14 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v14 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v14 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v14 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v14 == enum case for Shelf.ContentType.posterLockup(_:) || v14 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_6:
    if (v13)
    {
LABEL_11:
      IndexPath.section.getter();
      v18 = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
      result = IndexPath.item.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else if (v18)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v18 != -1)
        {
          return (result + 1) % v18 == 0;
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v16 = IndexPath.section.getter();
  if (v16 >= dispatch thunk of ShelfPresenter.sectionCount.getter() || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
    if (sub_100647D6C(v16))
    {
      v17 = 1;
    }
  }

  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v23 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v24 = sub_100316818(v6, v23, v28);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v17, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v17 == 0x8000000000000001 && v24 == -1)
  {
    goto LABEL_62;
  }

  v25 = (v17 - 1) % v24;
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    goto LABEL_59;
  }

  result = IndexPath.item.getter();
  if (__OFSUB__(v17, v26))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  return result >= v17 - v26;
}

uint64_t sub_100314558(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  v7 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v8 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v9 = sub_100316818(v6, v8, a2);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_12;
  }

  v11 = (v7 - 1) % v9;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = IndexPath.item.getter();
    if (!__OFSUB__(v7, v12))
    {
      return result >= v7 - v12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1003147E8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_artworkLoader);
  v9 = OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits;
  v10 = *(v3 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits);
  v11 = *(v3 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph);
  swift_unknownObjectRetain();
  sub_1003116A4(a2, a3, v8, v10, v11, a1);
  swift_unknownObjectRelease();
  v12 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v12 layoutMargins];
  [v12 setLayoutMargins:?];

  v13 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  type metadata accessor for SmallLockupCollectionViewTableCell();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setSelectionStyle:0];
  }

  return result;
}

void sub_100314D38(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&unk_10097DAF0);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource);
  v32 = *(v2 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v31 = v9;
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      v30 = a1;
      v17 = type metadata accessor for PurchasesContentPresenter();
      sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
      v27[1] = v17;
      dispatch thunk of ShelfPresenter.model(at:)();
      v28 = *(v34 + 16);
      v29 = v34 + 16;
      v28(v7, a2, v35);
      StatePath<A>.init(_:)();
      v36 = *(v12 + 24);

      sub_10002849C(&unk_100980500);
      sub_100097060(&qword_10097DB00, &unk_100980500);
      WritableStateLens.init<A>(contentsOf:in:)();
      ObjectType = swift_getObjectType();
      v19 = (*(v16 + 88))(v37, v11, v32, ObjectType, v16);
      v20 = v19;
      if (v19)
      {
        dispatch thunk of ShelfPresenter.didSelectItem(at:)();
        v21 = v30;
        if ((v20 & 2) == 0)
        {
LABEL_5:
          if ((v20 & 4) == 0)
          {
LABEL_7:

            (*(v33 + 8))(v11, v31);
            sub_100007000(v37);
            return;
          }

LABEL_6:
          sub_10002849C(&qword_10096FCE8);
          v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1007B10D0;
          v28((v23 + v22), a2, v35);
          v24 = Array._bridgeToObjectiveC()().super.isa;

          [v21 reloadItemsAtIndexPaths:v24];

          v14 = v24;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = v30;
        if ((v19 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v26 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v21 deselectItemAtIndexPath:v26 animated:1];

      if ((v20 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
  dispatch thunk of ShelfPresenter.didSelectItem(at:)();
  v35 = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:v35 animated:1];
  v25 = v35;
}

id sub_100315374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100315640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1003156C0();
  }

  return a3(1);
}

uint64_t sub_1003156C0()
{
  v0 = type metadata accessor for PurchasesContentMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  PurchasesContentPresenter.mode.getter();
  (*(v1 + 104))(v3, enum case for PurchasesContentMode.hidden(_:), v0);
  sub_100318010(&qword_1009804E8, &type metadata accessor for PurchasesContentMode);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);

    return PurchasesContentPresenter.unhidePurchase(at:)();
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);

  if (v8)
  {
    return PurchasesContentPresenter.unhidePurchase(at:)();
  }

  return PurchasesContentPresenter.hidePurchase(at:)();
}

uint64_t sub_100315A30(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100980550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B1890;
  *(v6 + 32) = IndexPath.section.getter();
  *(v6 + 40) = a1;
  IndexPath.init(arrayLiteral:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    type metadata accessor for PurchasesContentPresenter();
    sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
    dispatch thunk of ShelfPresenter.didSelectNestedItem(at:)();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100315BDC(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v19 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10002C0AC(v21, v53);
          sub_10002A400(v53, v53[3]);
          v23 = v48;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10002B894(v23, &qword_100973D30);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10002A400(v44, v44[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10002B894(v10, &qword_100973D30);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              ImpressionMetrics.id.getter();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = type metadata accessor for ImpressionMetrics.ID();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100318058(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10002B894(v31, &qword_100990A90);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10002B894(v32, &qword_100990A90);
              v35(v34, v37);
            }

            else
            {
              sub_10002B894(v27, &qword_100990A90);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10002B894(v51, &qword_100973D60);
  }
}

uint64_t sub_1003161C8(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v19 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10002C0AC(v21, v53);
          sub_10002A400(v53, v53[3]);
          v23 = v48;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10002B894(v23, &qword_100973D30);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10002A400(v44, v44[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10002B894(v10, &qword_100973D30);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              ImpressionMetrics.id.getter();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = type metadata accessor for ImpressionMetrics.ID();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100318058(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10002B894(v31, &qword_100990A90);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10002B894(v32, &qword_100990A90);
              v35(v34, v37);
            }

            else
            {
              sub_10002B894(v27, &qword_100990A90);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10002B894(v51, &qword_100973D60);
  }
}

uint64_t sub_100316818(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = v6[2];
  v13(&v21 - v11, a1, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 0;
  if (v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v25 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
    v22 = v6[1];
    v22(v12, v5);
    ObjectType = swift_getObjectType();
    v24 = a3;
    v18 = [a3 traitCollection];
    (v13)(v8, a1, v5);
    v19 = v14(v8, v5);
    if (v19 == enum case for Shelf.ContentType.artwork(_:) || v19 == enum case for Shelf.ContentType.ribbonBar(_:) || v19 == enum case for Shelf.ContentType.ribbonFlow(_:) || v19 == enum case for Shelf.ContentType.paragraph(_:) || v19 == enum case for Shelf.ContentType.footnote(_:) || v19 == enum case for Shelf.ContentType.titledParagraph(_:) || v19 == enum case for Shelf.ContentType.reviewsContainer(_:) || v19 == enum case for Shelf.ContentType.reviewSummary(_:) || v19 == enum case for Shelf.ContentType.editorialLink(_:) || v19 == enum case for Shelf.ContentType.quote(_:) || v19 == enum case for Shelf.ContentType.framedArtwork(_:) || v19 == enum case for Shelf.ContentType.screenshots(_:) || v19 == enum case for Shelf.ContentType.appShowcase(_:) || v19 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v19 == enum case for Shelf.ContentType.linkableText(_:) || v19 == enum case for Shelf.ContentType.framedVideo(_:) || v19 == enum case for Shelf.ContentType.productDescription(_:) || v19 == enum case for Shelf.ContentType.banner(_:) || v19 == enum case for Shelf.ContentType.roundedButton(_:) || v19 == enum case for Shelf.ContentType.titledButtonStack(_:) || v19 == enum case for Shelf.ContentType.smallStoryCard(_:) || v19 == v25 || v19 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v19 == enum case for Shelf.ContentType.upsellBreakout(_:) || v19 == enum case for Shelf.ContentType.smallBreakout(_:) || v19 == enum case for Shelf.ContentType.arcadeFooter(_:) || v19 == enum case for Shelf.ContentType.editorialQuote(_:) || v19 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v19 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v19 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v19 == enum case for Shelf.ContentType.privacyHeader(_:) || v19 == enum case for Shelf.ContentType.privacyFooter(_:) || v19 == enum case for Shelf.ContentType.privacyCategory(_:) || v19 == enum case for Shelf.ContentType.privacyDefinition(_:) || v19 == enum case for Shelf.ContentType.heroCarousel(_:) || v19 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v22(v8, v5), (UITraitCollection.isSizeClassRegular.getter() & 1) == 0))
    {
    }

    else
    {
      v20 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if ((v20 & 1) == 0)
      {
        return sub_1005D8F34(v26, v24, a1);
      }
    }

    return 1;
  }

  return result;
}

void sub_100316CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v86 - v13;
  v14 = type metadata accessor for Shelf.ContentType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v86 - v18;
  v19 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v19 - 8);
  v93 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v86 - v22;
  __chkstk_darwin(v23);
  v98 = &v86 - v24;
  v25 = type metadata accessor for ImpressionMetrics();
  v102 = *(v25 - 8);
  v103 = v25;
  __chkstk_darwin(v25);
  v92 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v86 - v28;
  __chkstk_darwin(v29);
  v97 = &v86 - v30;
  if (IndexPath.count.getter() >= 2)
  {
    v88 = v11;
    v89 = *(v4 + 16);
    v31 = type metadata accessor for PurchasesContentPresenter();
    v90 = sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter);
    v100 = a2;
    v32 = dispatch thunk of ShelfPresenter.doesModelExist(for:)();
    v110 = sub_100005744(0, &qword_100978E10);
    v109[0] = a1;
    v33 = a1;
    v91 = v32;
    tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
    sub_100007000(v109);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    v104 = a4;
    v105 = v31;
    if (v34 && v33)
    {
      type metadata accessor for VideoPlaybackCoordinator();
      v87 = v15;
      type metadata accessor for BaseObjectGraph();
      v35 = v33;
      inject<A, B>(_:from:)();
      v36 = v109[0];
      swift_getObjectType();
      v37 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
      v38 = v14;
      v39 = v5;
      v40 = v35;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

      v5 = v39;
      v14 = v38;

      v15 = v87;
    }

    v108 = v33;
    v41 = v33;
    sub_10002849C(&qword_100980518);
    if (swift_dynamicCast())
    {
      sub_100005A38(v106, v109);
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v42 = *&v106[0];
      sub_10002A400(v109, v110);
      dispatch thunk of ManagedVideoViewProviding.unregisterVideos(with:)();

      sub_100007000(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10002B894(v106, &unk_100980520);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      type metadata accessor for PlaybackCoordinator();
      v43 = v41;
      BaseObjectGraph.optional<A>(_:)();
      v44 = v109[0];
      if (v109[0])
      {
        v45 = v43;
        v46 = v44;
        dispatch thunk of PlaybackCoordinator.unregister(playableView:)();

        v43 = v46;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      swift_getObjectType();
      v47 = v41;
      dispatch thunk of AnyAvatarShowcaseDisplaying.unapply()();
    }

    swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48 && v33)
    {
      v49 = v48;
      ObjectType = swift_getObjectType();
      v51 = *(v49 + 8);
      v52 = v41;
      v51(ObjectType, v49);
    }

    if (v91)
    {
      swift_getObjectType();
      v53 = swift_conformsToProtocol2();
      if (v53 && v33)
      {
        v54 = v53;
        v55 = swift_getObjectType();
        v56 = *(v54 + 40);
        v57 = v41;
        v56(v55, v54);
      }

      v58 = IndexPath.section.getter();
      v59 = sub_100647D6C(v58);
      IndexPath.section.getter();
      if (v59)
      {
        dispatch thunk of ShelfPresenter.shelf(for:)();
        v60 = v98;
        Shelf.impressionMetrics.getter();
        v62 = v102;
        v61 = v103;
        if ((*(v102 + 48))(v60, 1, v103) == 1)
        {

          sub_10002B894(v60, &qword_100973D30);
        }

        else
        {
          v73 = v97;
          (*(v62 + 32))(v97, v60, v61);
          if (*(v5 + 112))
          {

            ImpressionsCalculator.removeElement(_:)();
          }

          (*(v62 + 8))(v73, v61);
        }

        return;
      }

      v63 = v101;
      dispatch thunk of ShelfPresenter.contentType(for:)();
      IndexPath.section.getter();
      v64 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
      v65 = v99;
      (*(v15 + 16))(v99, v63, v14);
      v66 = (*(v15 + 88))(v65, v14);
      if (v66 == enum case for Shelf.ContentType.smallLockup(_:) || v66 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v66 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v66 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.editorialCard(_:) || v66 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.brick(_:) || v66 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.reviews(_:) || v66 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v66 == enum case for Shelf.ContentType.framedVideo(_:) || v66 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v66 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v66 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v66 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v66 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v66 == enum case for Shelf.ContentType.posterLockup(_:) || v66 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v64)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (*(v15 + 8))(v65, v14);
      }

      v67 = dispatch thunk of ShelfPresenter.sectionCount.getter();
      if (IndexPath.section.getter() < v67)
      {
        v68 = IndexPath.item.getter();
        IndexPath.section.getter();
        if (v68 < dispatch thunk of ShelfPresenter.numberOfRows(for:)())
        {
          dispatch thunk of ShelfPresenter.model(at:)();
          sub_10002A400(v109, v110);
          v69 = v94;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          v70 = v102;
          v71 = *(v102 + 48);
          v72 = v103;
          if (v71(v69, 1, v103) == 1)
          {
            (*(v15 + 8))(v101, v14);
            sub_10002B894(v69, &qword_100973D30);
          }

          else
          {
            (*(v70 + 32))(v95, v69, v72);
            IndexPath.section.getter();
            dispatch thunk of ShelfPresenter.shelf(for:)();
            v74 = v93;
            Shelf.impressionMetrics.getter();
            if (v71(v74, 1, v72) == 1)
            {
              sub_10002B894(v74, &qword_100973D30);
              v75 = 1;
              v76 = v96;
            }

            else
            {
              v76 = v96;
              ImpressionMetrics.id.getter();
              (*(v70 + 8))(v74, v72);
              v75 = 0;
            }

            v77 = v88;
            v78 = type metadata accessor for ImpressionMetrics.ID();
            v79 = *(v78 - 8);
            (*(v79 + 56))(v76, v75, 1, v78);
            if (*(v5 + 112))
            {
              sub_100318058(v76, v77);
              v80 = (*(v79 + 48))(v77, 1, v78);

              if (v80 == 1)
              {
                sub_10002B894(v77, &qword_100990A90);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v79 + 8))(v77, v78);
              }

              v84 = v95;
              v85 = v92;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();

              v83 = v102;
              v82 = v103;
              (*(v102 + 8))(v85, v103);
              v81 = *(v5 + 112);
            }

            else
            {
              v81 = 0;
              v83 = v102;
              v82 = v103;
              v84 = v95;
            }

            sub_100315BDC(v109, v81);

            sub_10002B894(v96, &qword_100990A90);
            (*(v83 + 8))(v84, v82);
            (*(v15 + 8))(v101, v14);
          }

          sub_100007000(v109);
          return;
        }
      }

LABEL_56:
      (*(v15 + 8))(v63, v14);
    }
  }
}

id sub_100317B88(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PurchasesContentMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PurchasesContentPresenter.canHidePurchases.getter())
  {
    PurchasesContentPresenter.mode.getter();
    IsHidden = PurchasesContentMode.toggleIsHiddenText.getter();
    v24[0] = v11;
    v24[1] = IsHidden;
    (*(v7 + 8))(v9, v6);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v3 + 32))(v14 + v13, v5, v2);

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100317F74;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100653848;
    aBlock[3] = &unk_1008BDEE0;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:1 title:v15 handler:v16];

    _Block_release(v16);

    sub_10002849C(&qword_100973210);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007B0B70;
    *(v18 + 32) = v17;
    sub_100005744(0, &unk_100990AC0);
    v19 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [objc_opt_self() configurationWithActions:isa];

    [v21 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    sub_100005744(0, &unk_100990AC0);
    v22 = Array._bridgeToObjectiveC()().super.isa;
    v21 = [objc_opt_self() configurationWithActions:v22];
  }

  return v21;
}

uint64_t sub_100317F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for IndexPath();

  return sub_100315640(a1, a2, a3);
}

uint64_t sub_100318010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100318058(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100990A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003180C8(uint64_t a1)
{
  type metadata accessor for IndexPath();

  return sub_100315A30(a1);
}

uint64_t sub_100318164()
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2448);
  qword_100980570 = v0;
  unk_100980578 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_100980558);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_100318220()
{
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2460);
  qword_100980598 = v0;
  unk_1009805A0 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_100980580);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1003182FC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096DE30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0A10);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100318500()
{
  sub_10002849C(&qword_100975768);
  sub_100135E04();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

unint64_t sub_10031857C()
{
  result = qword_1009805D8;
  if (!qword_1009805D8)
  {
    type metadata accessor for Paragraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805D8);
  }

  return result;
}

unint64_t sub_1003185DC()
{
  result = qword_100980628;
  if (!qword_100980628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980628);
  }

  return result;
}

unint64_t sub_100318634()
{
  result = qword_100980630;
  if (!qword_100980630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980630);
  }

  return result;
}

BOOL sub_100318688(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v19 = fabs(a7);
  if (a7 > 1.79769313e308)
  {
    v19 = 1.79769313e308;
  }

  v20 = 0.0;
  if (v19 != 0.0)
  {
    v21 = a1;
    v22 = [a2 traitCollection];
    v23 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
    *v25 = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    *&v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = 4;
    v26 = &v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
    *v26 = a7;
    *(v26 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v22;
    *&v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v21;
    v47.receiver = v24;
    v47.super_class = v23;
    v27 = objc_msgSendSuper2(&v47, "init");
    if (qword_10096E9D0 != -1)
    {
      swift_once();
    }

    v28 = qword_10098CEC8;
    v29 = [qword_10098CEC8 objectForKey:v27];
    if (v29)
    {
      v30 = v29;

      v20 = *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements + 8];
    }

    else
    {
      v31 = qword_10096E9C8;
      v30 = v21;
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for FontUseCase();
      v33 = sub_1000056A8(v32, qword_10098CEB0);
      v34 = *(v32 - 8);
      (*(v34 + 16))(v18, v33, v32);
      (*(v34 + 56))(v18, 0, 1, v32);
      static TextMeasurable.defaultTextAlignment.getter();
      static TextMeasurable.defaultLineBreakMode.getter();
      static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_10002B894(v18, &qword_100972ED0);
      v20 = a3 + a5 + v36;
      v41 = type metadata accessor for ExpandableTextView.CacheValue();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      *v43 = a7;
      v43[1] = v20;
      *(v43 + 2) = v38;
      *(v43 + 3) = v40;
      v46.receiver = v42;
      v46.super_class = v41;
      v44 = objc_msgSendSuper2(&v46, "init");
      [v28 setObject:v44 forKey:v27];
    }
  }

  return v20 > a8;
}

double sub_100318A20(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Paragraph.Style();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (Paragraph.suppressVerticalMargins.getter())
  {
    return v13;
  }

  Paragraph.style.getter();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v14 != enum case for Paragraph.Style.article(_:))
  {
    if (v14 != enum case for Paragraph.Style.caption(_:) && v14 != enum case for Paragraph.Style.todayCardOverlay(_:) && v14 != enum case for Paragraph.Style.privacyDefinitions(_:))
    {
      (*(v8 + 8))(v11, v7);
      return v13;
    }

LABEL_3:
    if (qword_10096D8D0 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100980558, qword_100980570);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v13 = v15;
    v16 = *(v4 + 8);
    v16(v6, v3);
    if (qword_10096D8D8 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100980580, qword_100980598);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16(v6, v3);
    return v13;
  }

  if (qword_10096D8E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for StaticDimension();
  sub_1000056A8(v32, qword_1009805A8);
  if (qword_10096DE30 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  sub_1000056A8(v17, qword_1009D0A10);
  v18 = [a2 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  sub_100005744(0, &qword_1009730E0);
  v19 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  StaticDimension.value(compatibleWith:rounded:)();
  v21 = v20;
  UIFont.estimatedFirstBaseline.getter();
  v23 = v22;

  v24 = *(v4 + 8);
  v24(v6, v3);
  v25 = v21 - v23;
  if (qword_10096D8E8 != -1)
  {
    swift_once();
  }

  v13 = ceil(v25);
  sub_1000056A8(v32, qword_1009805C0);
  v26 = [a2 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  StaticDimension.value(compatibleWith:rounded:)();
  [v27 descender];

  v24(v6, v3);
  return v13;
}

void sub_100318F58(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10002849C(&qword_100980638);
  sub_100135E04();
  StateLens<A>.currentValue.getter();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = Paragraph.isCollapsed.getter();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = Paragraph.text.getter();
  swift_getObjectType();
  v11 = [a6 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100126854;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100126848;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008BE100;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v12;

  [v10 enumerateAttributesInRange:0 options:v13 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    [a6 pageMarginInsets];
    sub_100766148(v18, v24 & 1, a6, v20, v21, v22, v23, a2, a3);

    sub_100318A20(a1, a6);
  }
}

void sub_100319230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v117 = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Paragraph.Alignment();
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v108 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v106 - v11;
  __chkstk_darwin(v12);
  v106 = &v106 - v13;
  __chkstk_darwin(v14);
  v107 = &v106 - v15;
  v16 = sub_10002849C(&qword_10097C3F0);
  __chkstk_darwin(v16 - 8);
  v112 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v106 - v19;
  __chkstk_darwin(v20);
  v110 = &v106 - v21;
  __chkstk_darwin(v22);
  v111 = &v106 - v23;
  v116 = type metadata accessor for Paragraph.Style();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v106 - v27;
  v124 = v5;
  v29 = [v5 contentView];
  [v29 setLayoutMargins:{sub_100318A20(a1, a5)}];

  v121 = a1;
  v30 = Paragraph.text.getter();
  v113 = swift_getObjectType();
  v31 = [a5 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_10010279C;
  *(v35 + 24) = v34;
  v129 = sub_1001027AC;
  v130 = v35;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_1006606C4;
  v128 = &unk_1008BE010;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_51;
  }

  [a5 pageMarginInsets];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v124;
  v48 = [v124 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v50 = v49;
  v52 = v51;

  v120 = v38;
  LODWORD(v113) = sub_100318688(v38, a5, v40, v42, v44, v46, v50, v52);
  v53 = *&v47[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView];
  Paragraph.style.getter();
  v54 = v115;
  v55 = v114;
  v56 = v116;
  (*(v115 + 16))(v114, v28, v116);
  v57 = v55;
  v58 = v55;
  v59 = v56;
  v60 = (*(v54 + 88))(v58, v56);
  v61 = v122;
  v62 = v123;
  if (v60 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v60 == enum case for Paragraph.Style.article(_:))
  {
    v63 = a5;
    sub_100005744(0, &qword_100970180);
    v64 = static UIColor.secondaryText.getter();
    goto LABEL_6;
  }

  if (v60 == enum case for Paragraph.Style.caption(_:) || v60 == enum case for Paragraph.Style.todayCardOverlay(_:) || v60 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    v63 = a5;
    sub_100005744(0, &qword_100970180);
    v64 = static UIColor.primaryText.getter();
LABEL_6:
    v65 = v64;
    (*(v54 + 8))(v28, v59);
    goto LABEL_7;
  }

  sub_100005744(0, &qword_100970180);
  v65 = static UIColor.primaryText.getter();
  ObjectType = a5;
  v97 = *(v54 + 8);
  v97(v28, v59);
  v97(v57, v59);
  v63 = ObjectType;
LABEL_7:
  ObjectType = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  [*&v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v65];

  sub_10002849C(&qword_100975768);
  sub_100135E04();
  WritableStateLens<A>.currentValue.getter();
  v66 = aBlock;
  v67 = v118;
  v68 = v61;
  if (aBlock == 2)
  {
    v66 = Paragraph.isCollapsed.getter();
  }

  if ((v66 & v113 & 1) == 0)
  {
    v90 = v120;
    Paragraph.alignment.getter();
    (*(v61 + 56))(v67, 0, 1, v62);
    v91 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v92 = v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
    v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
    v93 = *&v53[ObjectType];
    v94 = v90;
    [v93 setNumberOfLines:0];
    if (v92 != v53[v91])
    {
      sub_1005A0320();
    }

    v86 = v94;
    sub_10059FCD8(v94);
    v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v95 = v112;
    sub_10027D5B8(v67, v112);
    v96 = (*(v68 + 48))(v95, 1, v62);
    v89 = v124;
    if (v96 == 1)
    {
      sub_10002B894(v95, &qword_10097C3F0);
LABEL_42:
      [v53 setNeedsLayout];
LABEL_47:

      sub_10002B894(v67, &qword_10097C3F0);
      [v89 setNeedsLayout];

      return;
    }

    v98 = v109;
    (*(v68 + 32))(v109, v95, v62);
    v99 = v108;
    (*(v68 + 16))(v108, v98, v62);
    v100 = (*(v68 + 88))(v99, v62);
    if (v100 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v100 == enum case for Paragraph.Alignment.center(_:))
      {
        v101 = 1;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.right(_:))
      {
        v101 = 2;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.justified(_:))
      {
        v101 = 3;
        goto LABEL_41;
      }

      if (v100 == enum case for Paragraph.Alignment.localized(_:))
      {
        v101 = 4;
        goto LABEL_41;
      }

      (*(v68 + 8))(v99, v62);
    }

    v101 = 0;
LABEL_41:
    [*&v53[ObjectType] setTextAlignment:v101];
    (*(v68 + 8))(v98, v62);
    goto LABEL_42;
  }

  v69 = Paragraph.collapsedText.getter();
  v70 = [v63 traitCollection];
  v71 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v69];
  v72 = [v69 length];
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = v70;
  *(v73 + 32) = v71;
  *(v73 + 40) = 1;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_100126854;
  *(v74 + 24) = v73;
  v129 = sub_100126848;
  v130 = v74;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_1006606C4;
  v128 = &unk_1008BE088;
  v75 = _Block_copy(&aBlock);
  v76 = v70;
  v77 = v71;

  [v69 enumerateAttributesInRange:0 options:v72 usingBlock:{0x100000, v75}];

  _Block_release(v75);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if ((v69 & 1) == 0)
  {
    v78 = v77;
    v67 = v111;
    Paragraph.alignment.getter();
    v80 = v122;
    v79 = v123;
    (*(v122 + 56))(v67, 0, 1, v123);
    v81 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v82 = v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
    v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
    v83 = *&v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
    v84 = *&v53[ObjectType];
    v85 = v78;
    [v84 setNumberOfLines:v83];
    if (v82 != v53[v81])
    {
      sub_1005A0320();
    }

    v86 = v85;
    sub_10059FCD8(v85);
    v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_10027D5B8(v67, v110);
    v88 = (*(v80 + 48))(v87, 1, v79);
    v89 = v124;
    if (v88 == 1)
    {
      sub_10002B894(v87, &qword_10097C3F0);
LABEL_46:
      [v53 setNeedsLayout];

      goto LABEL_47;
    }

    v102 = v107;
    (*(v80 + 32))(v107, v87, v79);
    v103 = v106;
    (*(v80 + 16))(v106, v102, v79);
    v104 = (*(v80 + 88))(v103, v79);
    if (v104 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v104 == enum case for Paragraph.Alignment.center(_:))
      {
        v105 = 1;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.right(_:))
      {
        v105 = 2;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.justified(_:))
      {
        v105 = 3;
        goto LABEL_45;
      }

      if (v104 == enum case for Paragraph.Alignment.localized(_:))
      {
        v105 = 4;
        goto LABEL_45;
      }

      (*(v80 + 8))(v103, v79);
    }

    v105 = 0;
LABEL_45:
    [v84 setTextAlignment:v105];
    (*(v80 + 8))(v102, v79);
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
}

char *sub_10031A0A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_preferredImageSizes] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_10031A268(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_10031A2E8;
}

void sub_10031A2E8(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView);
      v7 = v24;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_1001B8790();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100005744(0, &qword_100972EB0);
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_1001B8790();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_10031A5B8()
{
  v1 = v0;
  v2 = type metadata accessor for SmallSearchLockupLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v138 = *(v6 - 8);
  v139 = v6;
  __chkstk_darwin(v6);
  v128 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v131 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OfferButtonMetrics();
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin(v10);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v102 - v13;
  v146 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v140 = *(v146 - 8);
  __chkstk_darwin(v146);
  v136 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v147 = &v102 - v16;
  v17 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v17 - 8);
  v127 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v144 = &v102 - v20;
  v21 = sub_10002849C(&unk_10096FC10);
  v145 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v102 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v185.receiver = v0;
  v185.super_class = v24;
  objc_msgSendSuper2(&v185, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_1000AB0CC();
  LayoutMarginsAware<>.layoutFrame.getter();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v122 = v5;
    v123 = v3;
    v124 = v2;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v27 = [v0 traitCollection];
    v28 = type metadata accessor for TraitEnvironmentPlaceholder();
    v119 = sub_10002849C(&qword_100973210);
    v29 = swift_allocObject();
    v135 = xmmword_1007B0B70;
    *(v29 + 16) = xmmword_1007B0B70;
    *(v29 + 32) = v27;
    v30 = v27;
    v129 = v28;
    v31 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v117 = sub_1000320F0();
    dispatch thunk of AnyDimension.rawValue(in:)();

    v33 = v145 + 8;
    v32 = *(v145 + 8);
    v121 = v21;
    v118 = v32;
    v32(v23, v21);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v186);
    [v25 frame];
    MaxY = CGRectGetMaxY(v187);
    v35 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8];
    v110 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    v109 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v40;
      v112 = v39;
    }

    else
    {
      v111 = 0;
      v112 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v44;
      v114 = v43;
    }

    else
    {
      v113 = 0;
      v114 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v137 = *(v45 + v46);

    v47 = v144;
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    (*(v138 + 56))(v47, 0, 1, v139);
    v48 = *(*&v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);
    v103 = v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute];
    v134 = v48;

    LayoutMarginsAware<>.layoutFrame.getter();
    v49 = [v1 traitCollection];
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v50 = v146;
    v51 = sub_1000056A8(v146, qword_1009CDC00);
    v115 = *(v140 + 16);
    v116 = v140 + 16;
    v115(v147, v51, v50);
    v52 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v125 = v1;
    v145 = v33;
    v120 = v23;
    if (v52)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v53 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v53 = qword_100991028;
    }

    v54 = v143;
    v55 = sub_1000056A8(v143, v53);
    v56 = v142;
    v57 = v130;
    (*(v142 + 16))(v130, v55, v54);
    (*(v56 + 32))(v141, v57, v54);
    v58 = [v49 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v108 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v130 = LayoutViewPlaceholder.init(representing:)();
    v59 = objc_opt_self();
    v106 = v59;
    v60 = [v59 preferredFontForTextStyle:UIFontTextStyleBody];
    v61 = type metadata accessor for Feature();
    v184[3] = v61;
    v62 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature);
    v184[4] = v62;
    v105 = v62;
    v63 = sub_1000056E0(v184);
    v64 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65 = *(v61 - 8);
    v66 = *(v65 + 104);
    v107 = v65 + 104;
    v104 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v66(v63, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
    isFeatureEnabled(_:)();
    v126 = v49;
    sub_100007000(v184);
    v67 = v131;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v68 = v133;
    v132 = *(*&v132 + 8);
    (*&v132)(v67, v133);
    v69 = [v59 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v61;
    v183[4] = v62;
    v70 = sub_1000056E0(v183);
    v66(v70, v64, v61);
    isFeatureEnabled(_:)();
    sub_100007000(v183);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v71 = v132;
    (*&v132)(v67, v68);
    v72 = [v106 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v61;
    v182[4] = v105;
    v73 = sub_1000056E0(v182);
    v66(v73, v104, v61);
    isFeatureEnabled(_:)();
    sub_100007000(v182);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*&v71)(v67, v68);
    v74 = v137;
    LODWORD(v133) = sub_1000AE138(0, v137) & (v74 != 0);
    if (v133 == 1)
    {
      v75 = v108;
      v132 = MaxY;
      v76 = objc_allocWithZone(v129);
      v77 = v126;
      v78 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v79 = v127;
      sub_100031660(v144, v127, &unk_1009912C0);
      v81 = v138;
      v80 = v139;
      v82 = *(v138 + 48);
      if (v82(v79, 1, v139) == 1)
      {
        v83 = v128;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v82(v79, 1, v80) != 1)
        {
          sub_10002B894(v79, &unk_1009912C0);
        }
      }

      else
      {
        v83 = v128;
        (*(v81 + 32))(v128, v79, v80);
      }

      v86 = v78;
      sub_1000AD91C(v137, v83, v86);

      (*(v81 + 8))(v83, v80);
      v84 = v75;
      swift_allocObject();
      v85 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v84 = v108;
      swift_allocObject();
      v85 = LayoutViewPlaceholder.init(representing:)();
    }

    v139 = v85;

    v87 = v134;
    if ((sub_1000AE138(v134, 0) & (v87 != 0)) == 1)
    {
      v88 = v126;
      sub_100046528(v87, v103);
      swift_allocObject();
      v89 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v89 = LayoutViewPlaceholder.init(representing:)();
      v88 = v126;
    }

    v115(v136, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v84;
    v179 = v130;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_10002C0AC(v184, v176);
    sub_10002C0AC(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v90 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v168 = &protocol witness table for LayoutViewPlaceholder;
    v167 = v84;
    v166 = v90;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v156 = 0;
    v155 = 0u;
    *&v154[40] = 0u;
    sub_10002C0AC(v182, v154);
    v152 = v84;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v139;
    v149 = v84;
    v148 = v89;
    v91 = v122;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    v92 = swift_allocObject();
    *(v92 + 16) = v135;
    *(v92 + 32) = v88;
    v93 = v88;
    v94 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
    v95 = v124;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v123 + 8))(v91, v95);
    sub_100007000(v182);
    sub_100007000(v183);
    sub_100007000(v184);
    (*(v142 + 8))(v141, v143);
    (*(v140 + 8))(v147, v146);
    v96 = v120;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v97 = swift_allocObject();
    *(v97 + 16) = v135;
    *(v97 + 32) = v93;
    v98 = v93;
    v99 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v100 = v121;
    dispatch thunk of AnyDimension.rawValue(in:)();

    v118(v96, v100);
    sub_10002B894(v144, &unk_1009912C0);
    v101 = *&v125[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots];
    [v125 bounds];
    CGRect.withLayoutDirection(in:relativeTo:)();
    return [v101 setFrame:?];
  }

  return result;
}

id sub_10031B76C()
{
  v1 = v0;
  sub_1000ACF48();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots];
  result = sub_1001B8FAC();
  v4 = v1[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v4 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_10031B810(uint64_t a1, char *a2)
{
  v3 = v2;
  v247 = a2;
  swift_getObjectType();
  v5 = sub_10002849C(&qword_10097AE68);
  __chkstk_darwin(v5 - 8);
  v208 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v214 = &v196 - v8;
  v9 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v9 - 8);
  v225 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v226 = &v196 - v12;
  v13 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v13 - 8);
  v224 = &v196 - v14;
  v15 = type metadata accessor for VideoControls();
  __chkstk_darwin(v15 - 8);
  v212 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v211 = &v196 - v18;
  __chkstk_darwin(v19);
  v218 = &v196 - v20;
  __chkstk_darwin(v21);
  v217 = &v196 - v22;
  v223 = type metadata accessor for VideoFillMode();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v210 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v216 = &v196 - v25;
  v219 = type metadata accessor for VideoConfiguration();
  v227 = *(v219 - 8);
  __chkstk_darwin(v219);
  v213 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v234 = &v196 - v28;
  v207 = type metadata accessor for ScreenshotDisplayConfiguration();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v232 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v30 - 8);
  v32 = &v196 - v31;
  v221 = type metadata accessor for AspectRatio();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v233 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for LockupMediaLayout.Metrics();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for LockupMediaLayout.DisplayType();
  v241 = *(v239 - 8);
  __chkstk_darwin(v239);
  v205 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v196 - v37;
  __chkstk_darwin(v39);
  v235 = &v196 - v40;
  __chkstk_darwin(v41);
  v215 = &v196 - v42;
  __chkstk_darwin(v43);
  v238 = &v196 - v44;
  v45 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v45 - 8);
  v209 = &v196 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v196 - v48;
  __chkstk_darwin(v49);
  v245 = &v196 - v50;
  v51 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v51 - 8);
  v53 = &v196 - v52;
  v54 = type metadata accessor for PageGrid();
  v246 = *(v54 - 8);
  __chkstk_darwin(v54);
  v250 = &v196 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for ScreenshotsDisplayStyle();
  v56 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v196 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v196 - v59;
  type metadata accessor for AppSearchResult();
  sub_100324304(&qword_1009806D0, 255, &type metadata accessor for AppSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v252[0])
  {
    return result;
  }

  v240 = v56;
  v244 = v54;
  v62 = v252[0];
  v63 = AppSearchResult.lockup.getter();
  v248 = v60;
  v243 = v63;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v236 = v62;
  v64 = dispatch thunk of AppSearchResult.shouldDisplayMedia.getter();
  v65 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &StringUserDefaultsDebugSetting;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  PageGrid.interColumnSpace.getter();
  v68 = *&v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = type metadata accessor for ItemLayoutContext();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v243;
  sub_100279F24(v243, v53, v247);
  sub_10002B894(v53, &unk_1009731E0);
  v242 = v71;
  v73 = v71[v65];
  v74 = v244;
  v75 = v240;
  v76 = v248;
  if (v73 != 1 || (ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {
LABEL_150:
    [v242 setNeedsLayout];

    (*(v246 + 8))(v250, v74);
    return (*(v75 + 8))(v76, v249);
  }

  v77 = MixedMediaLockup.screenshots.getter();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v201 = 0;
    goto LABEL_14;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v201 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v201 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v242[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots];
  v202 = MixedMediaLockup.alignedRegionArtwork.getter();
  v204 = MixedMediaLockup.alignedRegionVideo.getter();
  v80 = MixedMediaLockup.trailers.getter();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = _CocoaArrayWrapper.endIndex.getter();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v203 = 0;
    goto LABEL_22;
  }

  if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v203 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v84 = v252[0];
  sub_1004BF564(v245);

  a1 = MixedMediaLockup.alignedRegionArtwork.getter();
  v53 = MixedMediaLockup.alignedRegionVideo.getter();
  v85 = MixedMediaLockup.screenshots.getter();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = _CocoaArrayWrapper.endIndex.getter();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = MixedMediaLockup.trailers.getter();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = _CocoaArrayWrapper.endIndex.getter();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v53 = v241;
    v95 = v238;
    v84 = v239;
    (*(v241 + 104))(v238, enum case for LockupMediaLayout.DisplayType.none(_:), v239);
    v91 = v204;
LABEL_46:
    v38 = v201;
    goto LABEL_68;
  }

  v91 = v204;
  if (v53 | a1)
  {
    v96 = v215;
    AspectRatio.init(_:_:)();

    v53 = v241;
    v84 = v239;
    (*(v241 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v239);
    v95 = v238;
    (*(v53 + 32))(v238, v96, v84);
    goto LABEL_46;
  }

  v92 = sub_1001B9B24(v72, v88, 0, 1);
  v53 = v92;
  v84 = (v92 >> 62);
  if (v92 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v200 = i;
    v94 = v72 ? Screenshots.mediaPlatform.getter() : 0;
    v97 = sub_1001B9E6C(v94);

    v197 = v97;
    v98 = v72 ? Screenshots.mediaPlatform.getter() : 0;
    v99 = v249;
    (*(v75 + 16))(v32, v248, v249);
    (*(v75 + 56))(v32, 0, 1, v99);
    a1 = sub_1001BA394(v98, v32);

    sub_10002B894(v32, &unk_100973C90);
    if (v84 ? _CocoaArrayWrapper.endIndex.getter() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v101 = dispatch thunk of Artwork.isLandscape.getter();

      if (v101)
      {

        v53 = v241;
        v102 = v215;
        v84 = v239;
        (*(v241 + 104))(v215, enum case for LockupMediaLayout.DisplayType.landscape(_:), v239);
LABEL_66:
        v95 = v238;
        v91 = v204;
        v38 = v201;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v103 = a1;
    v104 = v241;
    v105 = v239;
    v199 = *(v241 + 104);
    v198 = v241 + 104;
    (v199)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v239);
    v106 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v196 = *(v104 + 8);
    v196(v38, v105);
    if (((v200 >= v106) & v103) != 0 || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v105), v107 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v196(v38, v105), ((v200 >= v107) & v197) != 0) || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v105), v108 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v196(v38, v105), v200 >= v108))
    {

      v102 = v215;
      v199();
      v84 = v105;
      v53 = v241;
      goto LABEL_66;
    }

    (v199)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v105);
    LockupMediaLayout.DisplayType.numberOfViews.getter();

    v196(v38, v105);
    v109 = v105;
    v102 = v215;
    v199();
    v53 = v241;
    v95 = v238;
    v91 = v204;
    v38 = v201;
    v84 = v109;
LABEL_67:
    (*(v53 + 32))(v95, v102, v84);
LABEL_68:
    v32 = v235;

    v252[3] = &type metadata for CGFloat;
    v252[4] = &protocol witness table for CGFloat;
    v252[0] = 0x4021000000000000;
    sub_10002C0AC(v252, v251);
    v72 = v53 + 16;
    v110 = v95;
    a1 = *(v53 + 16);
    (a1)(v32, v110, v84);
    if (v91 | v202)
    {
      goto LABEL_86;
    }

    v85 = sub_1001B9B24(v38, v203, 0, 1);
    if (v85 >> 62)
    {
      break;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_74;
    }

    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_74:

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v111 = v85;
  v112 = _CocoaArrayWrapper.endIndex.getter();
  v85 = v111;
  if (v112)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  AspectRatio.init(_:_:)();
LABEL_87:
  sub_100031660(v245, v237, &unk_1009732A0);
  v113 = v229;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v252);
  v114 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v115 = v230;
  v116 = v67 + v114;
  v117 = v231;
  (*(v230 + 24))(v116, v113, v231);
  swift_endAccess();
  [(__objc2_class_ro *)v67 setNeedsLayout];
  (*(v115 + 8))(v113, v117);
  if (v38)
  {
    v118 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v118 = 0;
  }

  type metadata accessor for Screenshots();
  v119 = v232;
  sub_10061B788(v118, v232);

  v120 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v119, v67 + v120);
  swift_endAccess();
  sub_1001B7B88();
  sub_1001BABC8(v119);
  if (v38)
  {
    v121 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v121 = 0;
  }

  v122 = v228;
  *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_platform) = v121;

  sub_1001B7D8C();

  v123 = v249;
  (*(v75 + 16))(v122, v248, v249);
  v124 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(v67 + v124, v122, v123);
  swift_endAccess();
  [(__objc2_class_ro *)v67 setNeedsLayout];
  (*(v75 + 8))(v122, v123);
  if (v204)
  {
    (*(v222 + 104))(v216, enum case for VideoFillMode.scaleAspectFill(_:), v223);

    Video.preview.getter();
    Artwork.size.getter();
    v125 = v237;
    AspectRatio.init(_:_:)();

    (*(v220 + 56))(v125, 0, 1, v221);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v126 = v67;
    v127 = v224;
    Video.videoUrl.getter();
    v128 = type metadata accessor for URL();
    (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
    v129 = v226;
    Video.templateMediaEvent.getter();
    v130 = v225;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView);
    v131 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v130, &unk_100973A50);
    sub_10002B894(v129, &unk_100973A50);
    v132 = v127;
    v67 = v126;
    sub_10002B894(v132, &qword_100982460);
    sub_10002B894(v252, &qword_10096FB90);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v241;
    if (Strong)
    {
      v134 = Strong;
      v135 = [Strong superview];
      if (!v135)
      {
        goto LABEL_99;
      }

      v136 = v135;
      sub_100005744(0, &qword_100972EB0);
      v137 = v126;
      v138 = static NSObject.== infix(_:_:)();

      if (v138)
      {
        v139 = swift_unknownObjectWeakLoadStrong();
        if (v139)
        {
          v134 = v139;
          [v139 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v140 = swift_unknownObjectWeakLoadStrong();
    if (v140)
    {
      v141 = v140;
      [(__objc2_class_ro *)v67 addSubview:v140];
    }

    sub_1001B8790();
    [(__objc2_class_ro *)v67 setNeedsLayout];

    v142 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v143 = *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    v75 = v240;
    v144 = v219;
    if (v143)
    {
      [v143 removeFromSuperview];
      v145 = *(&v67->flags + v142);
    }

    else
    {
      v145 = 0;
    }

    v74 = v244;
    *(&v67->flags + v142) = 0;

    [(__objc2_class_ro *)v67 setNeedsLayout];

    (*(v227 + 8))(v234, v144);
LABEL_148:
    v181 = v238;
LABEL_149:
    [(__objc2_class_ro *)v67 setNeedsLayout];

    (*(v53 + 8))(v181, v239);
    sub_10002B894(v245, &unk_1009732A0);
    v76 = v248;
    goto LABEL_150;
  }

  v53 = v241;
  if (!v203)
  {
    goto LABEL_135;
  }

  result = Trailers.videos.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v184 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v185 = *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    if (v185)
    {
      [v185 removeFromSuperview];
      v186 = *(&v67->flags + v184);
    }

    else
    {
      v186 = 0;
    }

    v74 = v244;
    *(&v67->flags + v184) = 0;

    [(__objc2_class_ro *)v67 setNeedsLayout];
    v187 = swift_unknownObjectWeakLoadStrong();
    if (v187)
    {
      v188 = v187;
      sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView);
      v189 = [v188 superview];
      if (v189)
      {
        v190 = v189;
        sub_100005744(0, &qword_100972EB0);
        v191 = v67;
        v192 = static NSObject.== infix(_:_:)();

        v74 = v244;
        if (v192)
        {
          v193 = swift_unknownObjectWeakLoadStrong();
          if (v193)
          {
            v188 = v193;
            [v193 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v244;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v194 = swift_unknownObjectWeakLoadStrong();
    if (v194)
    {
      v195 = v194;
      [(__objc2_class_ro *)v67 addSubview:v194];
    }

    sub_1001B8790();
    [(__objc2_class_ro *)v67 setNeedsLayout];
    goto LABEL_148;
  }

  v182 = result;
  v183 = _CocoaArrayWrapper.endIndex.getter();
  result = v182;
  if (!v183)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_110:
    v146 = v67;
    v201 = v38;

    v147 = v205;
    v148 = v239;
    (a1)(v205, v238, v239);
    v149 = (*(v53 + 88))(v147, v148);
    v150 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v147, v148);
    if (v149 == v150)
    {
      v151 = 1;
      v152 = v214;
    }

    else
    {
      v153 = Trailers.mediaPlatform.getter();
      v152 = v214;
      sub_10061B788(v153, v214);

      v151 = 0;
    }

    v154 = v226;
    v155 = v207;
    v156 = v223;
    v157 = v222;
    v158 = v206;
    v159 = v221;
    (*(v206 + 56))(v152, v151, 1, v207);
    (*(v157 + 104))(v210, enum case for VideoFillMode.scaleAspectFill(_:), v156);
    Video.preview.getter();
    Artwork.size.getter();
    v160 = v209;
    AspectRatio.init(_:_:)();

    (*(v220 + 56))(v160, 0, 1, v159);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    v161 = v152;
    v162 = v208;
    sub_100031660(v161, v208, &qword_10097AE68);
    if ((*(v158 + 48))(v162, 1, v155) == 1)
    {
      sub_10002B894(v162, &qword_10097AE68);
    }

    else
    {
      sub_1001BABC8(v162);
    }

    v67 = v146;
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v163 = v224;
    Video.videoUrl.getter();
    v164 = type metadata accessor for URL();
    (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
    Video.templateMediaEvent.getter();
    v165 = v225;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView);
    v166 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v165, &unk_100973A50);
    sub_10002B894(v154, &unk_100973A50);
    sub_10002B894(v163, &qword_100982460);
    sub_10002B894(v252, &qword_10096FB90);
    v167 = swift_unknownObjectWeakLoadStrong();
    if (v167)
    {
      v168 = v167;
      v169 = [v167 superview];
      if (v169)
      {
        v170 = v169;
        sub_100005744(0, &qword_100972EB0);
        v171 = v67;
        v172 = static NSObject.== infix(_:_:)();

        v75 = v240;
        if ((v172 & 1) == 0)
        {
          goto LABEL_124;
        }

        v173 = swift_unknownObjectWeakLoadStrong();
        if (!v173)
        {
          goto LABEL_124;
        }

        v168 = v173;
        [v173 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v174 = swift_unknownObjectWeakLoadStrong();
    if (v174)
    {
      v175 = v174;
      [(__objc2_class_ro *)v67 addSubview:v174];
    }

    sub_1001B8790();
    [(__objc2_class_ro *)v67 setNeedsLayout];

    v176 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v177 = *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    v53 = v241;
    v178 = v238;
    if (v177)
    {
      [v177 removeFromSuperview];
      v179 = *(&v67->flags + v176);
    }

    else
    {
      v179 = 0;
    }

    v180 = v219;
    *(&v67->flags + v176) = 0;

    [(__objc2_class_ro *)v67 setNeedsLayout];

    (*(v227 + 8))(v213, v180);
    sub_10002B894(v214, &qword_10097AE68);
    v74 = v244;
    v181 = v178;
    goto LABEL_149;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031DC18()
{
  v1 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  return sub_1000AD1F8();
}

id sub_10031DCD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10031DDC0()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_10031DE14(void *a1)
{
  sub_100324190();
}

uint64_t (*sub_10031DE4C(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10031A268(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10031DF04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10031DFBC()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_10031E018(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_10031E0D8()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_100324304(&qword_1009912D0, 255, type metadata accessor for SearchTagsRibbonView);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_10031E184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10031E1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10031E244(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10031E2E0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10031E49C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_100324304(&qword_1009806B8, a2, type metadata accessor for AppSearchResultContentView);
  result = sub_100324304(&unk_1009806C0, v3, type metadata accessor for AppSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10031E520(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v2 - 8);
  v164 = &v161 - v3;
  v4 = type metadata accessor for LockupMediaLayout.DisplayType();
  v191 = *(v4 - 8);
  v192 = v4;
  __chkstk_darwin(v4);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v161 - v8;
  __chkstk_darwin(v9);
  v185 = &v161 - v10;
  v11 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v161 - v12;
  v14 = sub_10002849C(&unk_10096FC10);
  v189 = *(v14 - 8);
  v190 = v14;
  __chkstk_darwin(v14);
  v188 = &v161 - v15;
  v16 = type metadata accessor for SmallSearchLockupLayout();
  v199 = *(v16 - 8);
  v200 = v16;
  __chkstk_darwin(v16);
  v198 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v187 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LabelPlaceholderCompatibility();
  v195 = *(v19 - 8);
  v196 = v19;
  __chkstk_darwin(v19);
  v194 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OfferButtonMetrics();
  v213 = *(v21 - 8);
  v214 = v21;
  __chkstk_darwin(v21);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v212 = &v161 - v25;
  v216 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v211 = *(v216 - 8);
  __chkstk_darwin(v216);
  v197 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v217 = &v161 - v28;
  v29 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v29 - 8);
  v186 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v215 = &v161 - v32;
  v33 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v33 - 8);
  v34 = type metadata accessor for PageGrid();
  v193 = *(v34 - 8);
  __chkstk_darwin(v34);
  v210 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ScreenshotsDisplayStyle();
  v201 = *(v36 - 8);
  v202 = v36;
  __chkstk_darwin(v36);
  v38 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  sub_100324304(&qword_1009806D0, 255, &type metadata accessor for AppSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v40 = v254[0];
  if (!v254[0])
  {
    return result;
  }

  v162 = v6;
  v41 = AppSearchResult.lockup.getter();
  v207 = v38;
  v208 = v41;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.componentMeasuringSize(spanning:)();
  v168 = v40;
  v42 = dispatch thunk of AppSearchResult.shouldDisplayMedia.getter();
  v169 = v34;
  if (v42)
  {
    v184 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  }

  else
  {
    v184 = 0;
  }

  v43 = v205;

  v174 = Lockup.title.getter();
  v175 = v44;
  v45 = Lockup.subtitle.getter();
  v176 = v46;
  v177 = v45;
  v47 = Lockup.searchAdOpportunity.getter();

  if (v47 && (v48 = SearchAdOpportunity.searchAd.getter(), , v48))
  {
    v49 = SearchAd.advertisingText.getter();
    v178 = v50;
    v179 = v49;
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  v51 = v206;
  v209 = MixedMediaLockup.metadataRibbonItems.getter();
  v52 = v215;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  (*(v43 + 56))(v52, 0, 1, v51);
  v204 = MixedMediaLockup.searchTagRibbonItems.getter();
  v163 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v53 = v254[5];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v54 = v216;
  v55 = sub_1000056A8(v216, qword_1009CDC00);
  v181 = *(v211 + 16);
  v182 = v211 + 16;
  v181(v217, v55, v54);
  v56 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v166 = v13;
  v167 = a1;
  if (v56)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v57 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v57 = qword_100991028;
  }

  v58 = v214;
  v59 = sub_1000056A8(v214, v57);
  v60 = v213;
  (*(v213 + 16))(v23, v59, v58);
  (*(v60 + 32))(v212, v23, v58);
  v61 = [v53 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v180 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v183 = LayoutViewPlaceholder.init(representing:)();
  v62 = objc_opt_self();
  v172 = v62;
  v63 = [v62 preferredFontForTextStyle:UIFontTextStyleBody];
  v64 = type metadata accessor for Feature();
  v254[3] = v64;
  v65 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature);
  v254[4] = v65;
  v171 = v65;
  v66 = sub_1000056E0(v254);
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = *(v64 - 8);
  v69 = *(v68 + 104);
  v173 = v68 + 104;
  v170 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v69(v66, enum case for Feature.measurement_with_labelplaceholder(_:), v64);
  isFeatureEnabled(_:)();
  sub_100007000(v254);
  v70 = v194;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v203 = v53;
  v71 = v196;
  v195 = *(v195 + 8);
  (v195)(v70, v196);
  v72 = [v62 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v253[3] = v64;
  v253[4] = v65;
  v73 = sub_1000056E0(v253);
  v69(v73, v67, v64);
  isFeatureEnabled(_:)();
  sub_100007000(v253);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74 = v195;
  (v195)(v70, v71);
  v75 = [v172 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v252[3] = v64;
  v252[4] = v171;
  v76 = sub_1000056E0(v252);
  v69(v76, v170, v64);
  isFeatureEnabled(_:)();
  sub_100007000(v252);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74(v70, v71);
  v77 = v209;
  if ((sub_1000AE138(0, v209) & (v77 != 0)) == 1)
  {
    v78 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
    v79 = v203;
    v80 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v81 = v186;
    sub_100031660(v215, v186, &unk_1009912C0);
    v82 = v205;
    v83 = *(v205 + 48);
    v84 = v206;
    if (v83(v81, 1, v206) == 1)
    {
      v85 = v187;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v83(v81, 1, v84) != 1)
      {
        sub_10002B894(v81, &unk_1009912C0);
      }
    }

    else
    {
      v85 = v187;
      (*(v82 + 32))(v187, v81, v84);
    }

    v88 = v80;
    sub_1000AD91C(v209, v85, v88);

    (*(v82 + 8))(v85, v84);
    v86 = v180;
    swift_allocObject();
    v87 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v86 = v180;
    swift_allocObject();
    v87 = LayoutViewPlaceholder.init(representing:)();
  }

  v89 = v87;

  v90 = v204;
  if ((sub_1000AE138(v204, 0) & (v90 != 0)) == 1)
  {
    sub_100046528(v90, v163 & 1);
    swift_allocObject();
    v91 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    swift_allocObject();
    v91 = LayoutViewPlaceholder.init(representing:)();
  }

  v92 = v91;
  v181(v197, v217, v216);
  v251 = &protocol witness table for LayoutViewPlaceholder;
  v250 = v86;
  v93 = v86;
  v94 = v183;
  v249 = v183;
  v248 = 0;
  *&v246[40] = 0u;
  v247 = 0u;
  sub_10002C0AC(v254, v246);
  sub_10002C0AC(v253, &v245);
  v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;

  v95 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v238 = &protocol witness table for LayoutViewPlaceholder;
  v237 = v93;
  v236 = v95;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v229 = 0;
  v227 = 0u;
  v228 = 0u;
  v226 = 0;
  v225 = 0u;
  *&v224[40] = 0u;
  sub_10002C0AC(v252, v224);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v93;
  v220 = &protocol witness table for LayoutViewPlaceholder;
  v221 = v89;
  v219 = v93;
  v218 = v92;
  v96 = v198;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  v97 = type metadata accessor for TraitEnvironmentPlaceholder();
  v98 = sub_10002849C(&qword_100973210);
  v99 = swift_allocObject();
  v205 = xmmword_1007B0B70;
  *(v99 + 16) = xmmword_1007B0B70;
  v100 = v203;
  *(v99 + 32) = v203;
  v101 = v100;
  v206 = v97;
  v102 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
  v103 = v200;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v199 + 8))(v96, v103);
  sub_100007000(v252);
  sub_100007000(v253);
  sub_100007000(v254);
  (*(v213 + 8))(v212, v214);
  (*(v211 + 8))(v217, v216);
  sub_10002B894(v215, &unk_1009912C0);
  if ((v184 & 1) == 0)
  {

    (*(v193 + 8))(v210, v169);
    return (*(v201 + 8))(v207, v202);
  }

  v104 = v188;
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  swift_getKeyPath();
  v105 = v167;
  ItemLayoutContext.subscript.getter();

  v106 = v254[0];
  v107 = swift_allocObject();
  *(v107 + 16) = v205;
  *(v107 + 32) = v106;
  v108 = v106;
  v109 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1000320F0();
  v110 = v190;
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v189 + 8))(v104, v110);
  v217 = MixedMediaLockup.alignedRegionArtwork.getter();
  v111 = MixedMediaLockup.alignedRegionVideo.getter();
  v112 = MixedMediaLockup.screenshots.getter();
  if (v112 >> 62)
  {
    v113 = v112;
    v114 = _CocoaArrayWrapper.endIndex.getter();
    v112 = v113;
    if (v114)
    {
      goto LABEL_34;
    }

LABEL_40:

    v98 = 0;
    goto LABEL_41;
  }

  if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v112 & 0xC000000000000001) != 0)
  {
    v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v98 = *(v112 + 32);
  }

LABEL_41:
  v115 = MixedMediaLockup.trailers.getter();
  if (v115 >> 62)
  {
    v116 = v115;
    v117 = _CocoaArrayWrapper.endIndex.getter();
    v115 = v116;
    if (v117)
    {
      goto LABEL_43;
    }

LABEL_48:

    v216 = 0;
    goto LABEL_49;
  }

  if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v115 & 0xC000000000000001) != 0)
  {
    v216 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v216 = *(v115 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v118 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v94 = v254[0];
  sub_1004BF564(v166);

  v105 = MixedMediaLockup.alignedRegionArtwork.getter();
  v108 = MixedMediaLockup.alignedRegionVideo.getter();
  v119 = MixedMediaLockup.screenshots.getter();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = _CocoaArrayWrapper.endIndex.getter();
    v119 = v120;
    v109 = v207;
    if (v121)
    {
LABEL_51:
      if ((v119 & 0xC000000000000001) == 0)
      {
        if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v94 = *(v119 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v109 = v207;
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }
  }

  v94 = 0;
LABEL_57:
  v122 = MixedMediaLockup.trailers.getter();
  if (v122 >> 62)
  {
    v125 = v122;
    v126 = _CocoaArrayWrapper.endIndex.getter();
    v122 = v125;
    v215 = v98;
    if (v126)
    {
LABEL_59:
      if ((v122 & 0xC000000000000001) == 0)
      {
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v124 = *(v122 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v213 = _CocoaArrayWrapper.endIndex.getter();
        if (v94)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_62;
    }
  }

  else
  {
    v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v215 = v98;
    if (v123)
    {
      goto LABEL_59;
    }
  }

  v124 = 0;
LABEL_65:
  v127 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v214 = v111;
  if ((v127 & 1) == 0)
  {

    v130 = v191;
    v131 = v185;
    (*(v191 + 104))(v185, enum case for LockupMediaLayout.DisplayType.none(_:), v192);
LABEL_72:
    v134 = v166;
    v135 = v193;
LABEL_104:
    type metadata accessor for LockupMediaView();
    v159 = sub_100079F24();
    swift_getObjectType();
    v160 = v207;
    sub_1005B8730(v217, v214, v215, v216, v134, v131, v159, v207);

    swift_unknownObjectRelease();

    (*(v130 + 8))(v131, v192);
    sub_10002B894(v134, &unk_1009732A0);
    (*(v135 + 8))(v210, v169);
    return (*(v201 + 8))(v160, v202);
  }

  if (v108 | v105)
  {
    v132 = v165;
    AspectRatio.init(_:_:)();

    v130 = v191;
    v133 = v192;
    (*(v191 + 104))(v132, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v192);
    v131 = v185;
    (*(v130 + 32))(v185, v132, v133);
    goto LABEL_72;
  }

  v128 = sub_1001B9B24(v94, v124, 0, 1);
  v108 = v128;
  v109 = (v128 >> 62);
  if (v128 >> 62)
  {
    goto LABEL_81;
  }

  v213 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v94)
  {
LABEL_69:
    v129 = Screenshots.mediaPlatform.getter();
    goto LABEL_83;
  }

LABEL_82:
  v129 = 0;
LABEL_83:
  v136 = sub_1001B9E6C(v129);

  LODWORD(v211) = v136;
  if (v94)
  {
    v137 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v137 = 0;
  }

  v139 = v201;
  v138 = v202;
  v140 = v164;
  (*(v201 + 16))(v164, v207, v202);
  (*(v139 + 56))(v140, 0, 1, v138);
  v141 = sub_1001BA394(v137, v140);

  sub_10002B894(v140, &unk_100973C90);
  if (v109)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v142 = v162;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v142 = v162;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v108 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_91:

    v143 = dispatch thunk of Artwork.isLandscape.getter();

    if (v143)
    {

      v130 = v191;
      v144 = v192;
      v145 = v165;
      (*(v191 + 104))(v165, enum case for LockupMediaLayout.DisplayType.landscape(_:), v192);
LABEL_103:
      v131 = v185;
      v158 = v166;
      v135 = v193;
      (*(v130 + 32))(v185, v145, v144);
      v134 = v158;
      goto LABEL_104;
    }

LABEL_95:
    v146 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v147 = v141;
    v148 = v191;
    v149 = v142;
    v150 = v142;
    v144 = v192;
    v212 = *(v191 + 104);
    (v212)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v192);
    v151 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v209 = *(v148 + 8);
    v209(v150, v144);
    if (((v213 >= v151) & v147) != 0 || (v146 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v144), v152 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v153 = v209, v209(v150, v144), ((v213 >= v152) & v211) != 0) || (v146 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v144), v154 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v153(v150, v144), v213 >= v154))
    {
    }

    else
    {
      v146 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v212)(v150, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v144);
      v155 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v153(v150, v144);
      if (v213 != v155)
      {
        v156 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v145 = v165;
        v157 = v165;
LABEL_102:
        (v212)(v157, v156, v144);
        v130 = v191;
        goto LABEL_103;
      }
    }

    v145 = v165;
    v157 = v165;
    v156 = v146;
    goto LABEL_102;
  }

  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003200E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_10096FC10);
  v145 = *(v6 - 8);
  v146 = v6;
  __chkstk_darwin(v6);
  v144 = &v112 - v7;
  v8 = type metadata accessor for SmallSearchLockupLayout();
  v142 = *(v8 - 8);
  v143 = v8;
  __chkstk_darwin(v8);
  v141 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v134 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v137 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OfferButtonMetrics();
  v152 = *(v13 - 8);
  v153 = v13;
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v151 = &v112 - v17;
  v155 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v150 = *(v155 - 8);
  __chkstk_darwin(v155);
  v140 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v112 - v20;
  v21 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v21 - 8);
  v133 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v112 - v24;
  v25 = type metadata accessor for ScreenshotsDisplayStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v29 - 8);
  sub_10002C0AC(a1, v193);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for AppSearchResult();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v135 = v192[0];
  v136 = v28;
  AppSearchResult.lockup.getter();

  if (Lockup.icon.getter())
  {
    v130 = a2;
    v131 = v26;
    v129 = v25;
    v132 = v2;
    v31 = *&v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView];
    v32 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v33 = qword_10096EE80;
    v34 = *(v31 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v35, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    [v34 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v34 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v36 = *(v31 + v32);
    type metadata accessor for ArtworkView();
    sub_100324304(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
    v37 = v36;
    a2 = v130;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v26 = v131;
    v3 = v132;
    v25 = v129;
  }

  v38 = *(*&v3[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  sub_10032A784(a1, a2);

  v39 = v136;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((dispatch thunk of AppSearchResult.shouldDisplayMedia.getter() & 1) == 0 || (ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    goto LABEL_50;
  }

  v129 = v25;
  Lockup.title.getter();
  v117 = v40;
  v41 = Lockup.subtitle.getter();
  v118 = v42;
  v119 = v41;
  v43 = Lockup.searchAdOpportunity.getter();

  if (v43 && (v44 = SearchAdOpportunity.searchAd.getter(), , v44))
  {
    v45 = SearchAd.advertisingText.getter();
    v120 = v46;
    v121 = v45;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v128 = MixedMediaLockup.metadataRibbonItems.getter();
  v47 = v154;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  (*(v147 + 56))(v47, 0, 1, v148);
  v127 = MixedMediaLockup.searchTagRibbonItems.getter();
  v112 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v48 = [v3 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v49 = v155;
  v50 = sub_1000056A8(v155, qword_1009CDC00);
  v123 = *(v150 + 16);
  v124 = v150 + 16;
  v123(v156, v50, v49);
  v51 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v130 = a2;
  v131 = v26;
  v132 = v3;
  if ((v51 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v52 = qword_100991028;
    goto LABEL_23;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v52 = qword_100991010;
LABEL_23:
    v53 = v153;
    v54 = sub_1000056A8(v153, v52);
    v55 = v152;
    (*(v152 + 16))(v15, v54, v53);
    (*(v55 + 32))(v151, v15, v53);
    v56 = [v48 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v122 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v125 = LayoutViewPlaceholder.init(representing:)();
    v57 = objc_opt_self();
    v126 = v48;
    v58 = v57;
    v115 = v57;
    v59 = [v57 preferredFontForTextStyle:UIFontTextStyleBody];
    v60 = type metadata accessor for Feature();
    v193[3] = v60;
    v61 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature);
    v193[4] = v61;
    v114 = v61;
    v62 = sub_1000056E0(v193);
    v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v64 = *(v60 - 8);
    v65 = *(v64 + 104);
    v116 = v64 + 104;
    v113 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
    isFeatureEnabled(_:)();
    sub_100007000(v193);
    v66 = v137;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v67 = v139;
    v138 = *(v138 + 8);
    (v138)(v66, v139);
    v68 = [v58 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v192[3] = v60;
    v192[4] = v61;
    v69 = sub_1000056E0(v192);
    v65(v69, v63, v60);
    isFeatureEnabled(_:)();
    sub_100007000(v192);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v70 = v138;
    (v138)(v66, v67);
    v71 = [v115 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v191[3] = v60;
    v191[4] = v114;
    v72 = sub_1000056E0(v191);
    v65(v72, v113, v60);
    isFeatureEnabled(_:)();
    sub_100007000(v191);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v70(v66, v67);
    v73 = v128;
    LODWORD(v139) = sub_1000AE138(0, v128) & (v73 != 0);
    if (v139 == 1)
    {
      v74 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v75 = v126;
      v76 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v77 = v133;
      sub_100031660(v154, v133, &unk_1009912C0);
      v78 = v147;
      v79 = *(v147 + 48);
      v80 = v148;
      if (v79(v77, 1, v148) == 1)
      {
        v81 = v134;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v79(v77, 1, v80) != 1)
        {
          sub_10002B894(v77, &unk_1009912C0);
        }
      }

      else
      {
        v81 = v134;
        (*(v78 + 32))(v134, v77, v80);
      }

      v84 = v76;
      sub_1000AD91C(v128, v81, v84);

      (*(v78 + 8))(v81, v80);
      v82 = v122;
      swift_allocObject();
      v83 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v82 = v122;
      swift_allocObject();
      v83 = LayoutViewPlaceholder.init(representing:)();
    }

    v85 = v83;

    v86 = v127;
    if ((sub_1000AE138(v127, 0) & (v86 != 0)) == 1)
    {
      sub_100046528(v86, v112 & 1);
      swift_allocObject();
      v87 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v87 = LayoutViewPlaceholder.init(representing:)();
    }

    v88 = v87;
    v123(v140, v156, v155);
    v190 = &protocol witness table for LayoutViewPlaceholder;
    v189 = v82;
    v188 = v125;
    v187 = 0;
    *&v185[40] = 0u;
    v186 = 0u;
    sub_10002C0AC(v193, v185);
    sub_10002C0AC(v192, &v184);
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v180 = 0;
    v178 = 0u;
    v179 = 0u;

    v148 = v88;
    v89 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v177 = &protocol witness table for LayoutViewPlaceholder;
    v176 = v82;
    v175 = v89;
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v165 = 0;
    v164 = 0u;
    *&v163[40] = 0u;
    sub_10002C0AC(v191, v163);
    v161 = v82;
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v159 = &protocol witness table for LayoutViewPlaceholder;
    v160 = v85;
    v158 = v82;
    v157 = v88;
    v90 = v141;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v91 = swift_allocObject();
    v147 = xmmword_1007B0B70;
    *(v91 + 16) = xmmword_1007B0B70;
    v92 = v126;
    *(v91 + 32) = v126;
    v48 = v92;
    v93 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
    v94 = v143;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v142 + 8))(v90, v94);
    sub_100007000(v191);
    sub_100007000(v192);
    sub_100007000(v193);
    (*(v152 + 8))(v151, v153);
    (*(v150 + 8))(v156, v155);
    v95 = v144;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v96 = swift_allocObject();
    *(v96 + 16) = v147;
    *(v96 + 32) = v48;
    v97 = v48;
    v98 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    v99 = v146;
    dispatch thunk of AnyDimension.rawValue(in:)();

    (*(v145 + 8))(v95, v99);
    sub_10002B894(v154, &unk_1009912C0);
    v100 = v132;
    v15 = MixedMediaLockup.alignedRegionArtwork.getter();
    v101 = MixedMediaLockup.alignedRegionVideo.getter();
    v102 = MixedMediaLockup.screenshots.getter();
    if (v102 >> 62)
    {
      v104 = v102;
      v105 = _CocoaArrayWrapper.endIndex.getter();
      v102 = v104;
      v26 = v131;
      if (!v105)
      {
LABEL_40:

        v103 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = v131;
      if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    if ((v102 & 0xC000000000000001) != 0)
    {
      v48 = v102;
      v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v48 = v102;
      v103 = *(v102 + 32);
    }

LABEL_41:
    v106 = MixedMediaLockup.trailers.getter();
    if (!(v106 >> 62))
    {
      if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_43;
    }

    v108 = v106;
    v109 = _CocoaArrayWrapper.endIndex.getter();
    v106 = v108;
    if (!v109)
    {
      break;
    }

LABEL_43:
    if ((v106 & 0xC000000000000001) != 0)
    {
      v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_46;
    }

    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v107 = *(v106 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v107 = 0;
LABEL_49:
  v110 = [v100 traitCollection];
  v111 = v136;
  sub_1005B6FA0(v15, v101, v103, v107, v110, v130, v136);

  v39 = v111;

  v25 = v129;
LABEL_50:

  return (*(v26 + 8))(v39, v25);
}

void sub_100321518()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView();
    sub_100324304(&qword_100973D78, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v29);
    v10 = *&v9[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    type metadata accessor for VideoView();
    sub_100324304(&qword_100992450, 255, type metadata accessor for VideoView);
    v14 = v13;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v32, v25);
        type metadata accessor for ArtworkView();
        sub_100324304(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  type metadata accessor for ArtworkView();
  sub_100324304(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100321948(uint64_t a1, uint64_t a2)
{
  v267 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v260 = &v207[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v5 - 8);
  v231 = &v207[-v6];
  v7 = type metadata accessor for AspectRatio();
  v249 = *(v7 - 8);
  __chkstk_darwin(v7);
  v239 = &v207[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v248 = &v207[-v10];
  v11 = type metadata accessor for LockupMediaLayout.Metrics();
  v235 = *(v11 - 8);
  __chkstk_darwin(v11);
  v259 = &v207[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v13 - 8);
  v238 = &v207[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v263 = &v207[-v16];
  v17 = type metadata accessor for LockupMediaLayout.DisplayType();
  v250 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v207[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v229 = &v207[-v21];
  __chkstk_darwin(v22);
  v253 = &v207[-v23];
  __chkstk_darwin(v24);
  v232 = &v207[-v25];
  __chkstk_darwin(v26);
  v262 = &v207[-v27];
  v28 = sub_10002849C(&unk_10096FC10);
  v246 = *(v28 - 8);
  v247 = v28;
  __chkstk_darwin(v28);
  v245 = &v207[-v29];
  v30 = type metadata accessor for SmallSearchLockupLayout();
  v243 = *(v30 - 8);
  v244 = v30;
  __chkstk_darwin(v30);
  v242 = &v207[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v251 = *(v32 - 1);
  v252 = v32;
  __chkstk_darwin(v32);
  v234 = &v207[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v264 = type metadata accessor for LabelPlaceholderCompatibility();
  v240 = *(v264 - 8);
  __chkstk_darwin(v264);
  v35 = &v207[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for OfferButtonMetrics();
  v257 = *(v36 - 1);
  v258 = v36;
  __chkstk_darwin(v36);
  v38 = &v207[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v256 = &v207[-v40];
  v265 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v255 = *(v265 - 8);
  __chkstk_darwin(v265);
  v241 = &v207[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v266 = &v207[-v43];
  v44 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v44 - 8);
  v233 = &v207[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v261 = &v207[-v47];
  v48 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v48 - 8);
  v49 = type metadata accessor for PageGrid();
  v236 = *(v49 - 8);
  v237 = v49;
  __chkstk_darwin(v49);
  v254 = &v207[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = type metadata accessor for ScreenshotsDisplayStyle();
  v269 = *(v51 - 8);
  v270 = v51;
  __chkstk_darwin(v51);
  v272 = &v207[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AppSearchResult();
  sub_100324304(&qword_1009806D0, 255, &type metadata accessor for AppSearchResult);
  v271 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v310[0])
  {
    return result;
  }

  v230 = v19;
  v227 = v11;
  v268 = v310[0];
  AppSearchResult.lockup.getter();
  v314._rawValue = _swiftEmptyArrayStorage;

  if (Lockup.icon.getter())
  {
    if (qword_10096EE80 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v54, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    Artwork.config(_:mode:prefersLayeredImage:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v314._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v228 = v7;
  v55 = MixedMediaLockup.metadataRibbonItems.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v56 = v310[0];
  v57 = sub_10032AAE8(v55, v310[0]);

  sub_100394974(v57);
  v58 = v272;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v59 = MixedMediaLockup.screenshots.getter();
  if (v59 >> 62)
  {
    v131 = _CocoaArrayWrapper.endIndex.getter();
    v58 = v272;

    if (v131)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((dispatch thunk of AppSearchResult.shouldDisplayMedia.getter() & 1) == 0 || (ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {
    goto LABEL_52;
  }

  v61 = v271;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.columnWidth.getter();
  sub_10031E520(v61);
  v62 = Lockup.title.getter();
  v212 = v63;
  v213 = v62;
  v64 = Lockup.subtitle.getter();
  v214 = v65;
  v215 = v64;
  v66 = Lockup.searchAdOpportunity.getter();

  if (v66)
  {
    v67 = SearchAdOpportunity.searchAd.getter();

    v69 = v251;
    v68 = v252;
    if (v67)
    {
      v70 = SearchAd.advertisingText.getter();
      v216 = v71;
      v217 = v70;
    }

    else
    {
      v216 = 0;
      v217 = 0;
    }
  }

  else
  {
    v216 = 0;
    v217 = 0;
    v69 = v251;
    v68 = v252;
  }

  v225 = MixedMediaLockup.metadataRibbonItems.getter();
  v72 = v261;
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  (v69[7])(v72, 0, 1, v68);
  v224 = MixedMediaLockup.searchTagRibbonItems.getter();
  v73 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v74 = v313;
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v75 = v265;
  v76 = sub_1000056A8(v265, qword_1009CDC00);
  v77 = v255 + 16;
  v78 = *(v255 + 16);
  v78(v266, v76, v75);
  v79 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v226 = v17;
  v219 = v78;
  v220 = v77;
  v208 = v73;
  if ((v79 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v80 = qword_100991028;
    goto LABEL_27;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v80 = qword_100991010;
LABEL_27:
    v81 = v258;
    v82 = sub_1000056A8(v258, v80);
    v83 = v257;
    (*(v257 + 16))(v38, v82, v81);
    (*(v83 + 32))(v256, v38, v81);
    v84 = [v74 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v218 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v221 = LayoutViewPlaceholder.init(representing:)();
    v222 = objc_opt_self();
    v85 = [v222 preferredFontForTextStyle:UIFontTextStyleBody];
    v86 = type metadata accessor for Feature();
    v311 = v86;
    v87 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature);
    v312 = v87;
    v210 = v87;
    v88 = sub_1000056E0(v310);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v90 = *(v86 - 8);
    v91 = *(v90 + 104);
    v211 = v90 + 104;
    v91(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v86);
    v209 = v91;
    isFeatureEnabled(_:)();
    v223 = v74;
    sub_100007000(v310);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v92 = *(v240 + 8);
    v92(v35, v264);
    v93 = [v222 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v309[3] = v86;
    v309[4] = v87;
    v94 = sub_1000056E0(v309);
    v91(v94, v89, v86);
    isFeatureEnabled(_:)();
    sub_100007000(v309);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v92(v35, v264);
    v95 = [v222 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v308[3] = v86;
    v308[4] = v210;
    v96 = sub_1000056E0(v308);
    v209(v96, v89, v86);
    isFeatureEnabled(_:)();
    sub_100007000(v308);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v92(v35, v264);
    v97 = v225;
    LODWORD(v264) = sub_1000AE138(0, v225) & (v97 != 0);
    if (v264 == 1)
    {
      v98 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v99 = v223;
      v100 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v101 = v233;
      sub_100031660(v261, v233, &unk_1009912C0);
      v103 = v251;
      v102 = v252;
      v104 = v251[6];
      if (v104(v101, 1, v252) == 1)
      {
        v105 = v234;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v104(v101, 1, v102) != 1)
        {
          sub_10002B894(v101, &unk_1009912C0);
        }
      }

      else
      {
        v105 = v234;
        (v103[4])(v234, v101, v102);
      }

      v108 = v100;
      sub_1000AD91C(v225, v105, v108);

      (v103[1])(v105, v102);
      v106 = v218;
      swift_allocObject();
      v107 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v106 = v218;
      swift_allocObject();
      v107 = LayoutViewPlaceholder.init(representing:)();
    }

    v109 = v107;

    v110 = v224;
    if ((sub_1000AE138(v224, 0) & (v110 != 0)) == 1)
    {
      sub_100046528(v110, v208 & 1);
      swift_allocObject();
      v111 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v111 = LayoutViewPlaceholder.init(representing:)();
    }

    v112 = v111;
    v219(v241, v266, v265);
    v307 = &protocol witness table for LayoutViewPlaceholder;
    v306 = v106;
    v305 = v221;
    v304 = 0;
    *&v302[40] = 0u;
    v303 = 0u;
    sub_10002C0AC(v310, v302);
    sub_10002C0AC(v309, &v301);
    v300 = 0;
    v298 = 0u;
    v299 = 0u;
    v297 = 0;
    v295 = 0u;
    v296 = 0u;

    v252 = v112;
    v113 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v294 = &protocol witness table for LayoutViewPlaceholder;
    v293 = v106;
    v292 = v113;
    v291 = 0;
    v289 = 0u;
    v290 = 0u;
    v288 = 0;
    v286 = 0u;
    v287 = 0u;
    v285 = 0;
    v283 = 0u;
    v284 = 0u;
    v282 = 0;
    v281 = 0u;
    *&v280[40] = 0u;
    sub_10002C0AC(v308, v280);
    v279 = &protocol witness table for LayoutViewPlaceholder;
    v278 = v106;
    v277 = v109;
    v276 = &protocol witness table for LayoutViewPlaceholder;
    v275 = v106;
    v274 = v112;
    v114 = v242;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    v115 = sub_10002849C(&qword_100973210);
    v116 = swift_allocObject();
    v264 = xmmword_1007B0B70;
    *(v116 + 16) = xmmword_1007B0B70;
    v117 = v223;
    *(v116 + 32) = v223;
    v118 = v117;
    v119 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout);
    v120 = v244;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v243 + 8))(v114, v120);
    sub_100007000(v308);
    sub_100007000(v309);
    sub_100007000(v310);
    (*(v257 + 8))(v256, v258);
    (*(v255 + 8))(v266, v265);
    v74 = v245;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v121 = swift_allocObject();
    *(v121 + 16) = v264;
    *(v121 + 32) = v118;
    v122 = v118;
    v38 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    v123 = v247;
    dispatch thunk of AnyDimension.rawValue(in:)();

    (*(v246 + 8))(v74, v123);
    sub_10002B894(v261, &unk_1009912C0);
    v124 = MixedMediaLockup.alignedRegionArtwork.getter();
    v35 = MixedMediaLockup.alignedRegionVideo.getter();
    v125 = MixedMediaLockup.screenshots.getter();
    if (v125 >> 62)
    {
      v38 = v125;
      v126 = _CocoaArrayWrapper.endIndex.getter();
      v125 = v38;
    }

    else
    {
      v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v127 = v262;
    v128 = v230;
    if (v126)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v38 = v125;
        v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v125;
        v123 = *(v125 + 32);
      }
    }

    else
    {

      v123 = 0;
    }

    v129 = MixedMediaLockup.trailers.getter();
    if (v129 >> 62)
    {
      v38 = v129;
      v132 = _CocoaArrayWrapper.endIndex.getter();
      v129 = v38;
      v261 = v35;
      if (!v132)
      {
LABEL_57:

        v266 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v261 = v35;
      if (!v130)
      {
        goto LABEL_57;
      }
    }

    if ((v129 & 0xC000000000000001) != 0)
    {
      v38 = v129;
      v266 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_123:
        v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v129;
      v266 = *(v129 + 32);
    }

LABEL_58:
    v115 = MixedMediaLockup.alignedRegionArtwork.getter();
    v74 = MixedMediaLockup.alignedRegionVideo.getter();
    v125 = MixedMediaLockup.screenshots.getter();
    if (v125 >> 62)
    {
      v38 = v125;
      v133 = _CocoaArrayWrapper.endIndex.getter();
      v125 = v38;
      if (!v133)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v125 & 0xC000000000000001) == 0)
      {
        if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v125;
        v38 = *(v125 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v125;
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:

      goto LABEL_66;
    }

    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v134 = MixedMediaLockup.trailers.getter();
    if (v134 >> 62)
    {
      break;
    }

    v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v265 = v123;
    if (!v135)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v134 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v136 = *(v134 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v137 = v134;
  v138 = _CocoaArrayWrapper.endIndex.getter();
  v134 = v137;
  v265 = v123;
  if (v138)
  {
    goto LABEL_68;
  }

LABEL_73:

  v136 = 0;
LABEL_74:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v136 = v250;
    v38 = v226;
    (*(v250 + 104))(v127, enum case for LockupMediaLayout.DisplayType.none(_:), v226);
LABEL_82:
    v142 = v228;
    v140 = v249;
    goto LABEL_110;
  }

  if (v74 | v115)
  {
    v144 = v232;
    AspectRatio.init(_:_:)();

    v136 = v250;
    v38 = v226;
    (*(v250 + 104))(v144, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v226);
    (*(v136 + 32))(v127, v144, v38);
    goto LABEL_82;
  }

  v139 = sub_1001B9B24(v38, v136, 0, 1);
  v127 = v139;
  v140 = v139 >> 62;
  if (v139 >> 62)
  {
    goto LABEL_175;
  }

  v141 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v142 = v228;
    *&v264 = v141;
    if (v38)
    {
      v143 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v143 = 0;
    }

    LODWORD(v257) = sub_1001B9E6C(v143);

    v247 = v124;
    if (v38)
    {
      v145 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v145 = 0;
    }

    v146 = v269;
    v147 = v270;
    v148 = v231;
    (*(v269 + 16))(v231, v272, v270);
    (*(v146 + 56))(v148, 0, 1, v147);
    v128 = sub_1001BA394(v145, v148);

    sub_10002B894(v148, &unk_100973C90);
    if (v140)
    {
      v150 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v150 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v140 = v249;
    v124 = v247;
    if (!v150)
    {

      goto LABEL_97;
    }

    if ((v127 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v151 = dispatch thunk of Artwork.isLandscape.getter();

    if ((v151 & 1) == 0)
    {
LABEL_97:
      v153 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v154 = v250;
      v155 = v226;
      v156 = v229;
      v258 = *(v250 + 104);
      v258(v229, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v226);
      v157 = v128;
      v158 = LockupMediaLayout.DisplayType.numberOfViews.getter();
      v256 = *(v154 + 8);
      (v256)(v156, v155);
      if (((v264 >= v158) & v157) != 0)
      {

        v152 = v232;
        v159 = v232;
        v160 = v153;
      }

      else
      {
        v161 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v258(v156, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v155);
        v162 = LockupMediaLayout.DisplayType.numberOfViews.getter();
        v163 = v256;
        (v256)(v156, v155);
        if (((v264 >= v162) & v257) == 0)
        {
          v164 = v156;
          v165 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v258(v156, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v155);
          v166 = LockupMediaLayout.DisplayType.numberOfViews.getter();
          v163(v164, v155);
          v167 = v264 < v166;
          v168 = v164;
          v127 = v262;
          if (v167)
          {
            LODWORD(v257) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v258)(v168);
            v169 = LockupMediaLayout.DisplayType.numberOfViews.getter();

            v163(v168, v155);
            if (v264 == v169)
            {
              v152 = v232;
              v170 = v232;
              v171 = v257;
            }

            else
            {
              v171 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v152 = v232;
              v170 = v232;
            }
          }

          else
          {

            v152 = v232;
            v170 = v232;
            v171 = v165;
          }

          v258(v170, v171, v155);
          v38 = v155;
          v136 = v250;
          goto LABEL_108;
        }

        v152 = v232;
        v159 = v232;
        v160 = v161;
      }

      v258(v159, v160, v155);
      v38 = v155;
      v136 = v250;
      v127 = v262;
LABEL_108:
      v142 = v228;
      v140 = v249;
      v124 = v247;
      goto LABEL_109;
    }

    v136 = v250;
    v152 = v232;
    v38 = v226;
    (*(v250 + 104))(v232, enum case for LockupMediaLayout.DisplayType.landscape(_:), v226);
    v127 = v262;
LABEL_109:
    (*(v136 + 32))(v127, v152, v38);
    v128 = v230;
LABEL_110:
    v172 = sub_100079F24();
    (*(v140 + 56))(v263, 1, 1, v142);
    v251 = v172;
    v252 = [v172 traitCollection];
    v311 = &type metadata for CGFloat;
    v312 = &protocol witness table for CGFloat;
    v310[0] = 0x4021000000000000;
    sub_10002C0AC(v310, v309);
    v173 = *(v136 + 16);
    v271 = v136 + 16;
    *&v264 = v173;
    v173(v253, v127, v38);
    if (v261 | v124)
    {
      goto LABEL_129;
    }

    v174 = sub_1001B9B24(v265, v266, 0, 1);
    if (!(v174 >> 62))
    {
      if (!*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v174 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_175:
          v141 = _CocoaArrayWrapper.endIndex.getter();
          continue;
        }
      }

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      goto LABEL_130;
    }

    break;
  }

  v175 = v174;
  v176 = _CocoaArrayWrapper.endIndex.getter();
  v174 = v175;
  if (v176)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  AspectRatio.init(_:_:)();
LABEL_130:
  sub_100031660(v263, v238, &unk_1009732A0);
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v310);
  v177 = v239;
  LockupMediaLayout.Metrics.mediaAspectRatio.getter();
  AspectRatio.height(fromWidth:)();
  v178 = *(v140 + 8);
  v140 += 8;
  v178(v177, v142);
  if (v261)
  {
    v128 = v136;

    Video.preview.getter();
    v179 = Artwork.config(_:mode:prefersLayeredImage:)();
    v180 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
    v140 = *(v180 + 2);
    v181 = *(v180 + 3);
    v182 = v140 + 1;
    if (v140 >= v181 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v124)
  {

    v184 = Artwork.config(_:mode:prefersLayeredImage:)();
    v180 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
    v186 = *(v180 + 2);
    v185 = *(v180 + 3);
    if (v186 >= v185 >> 1)
    {
      v180 = sub_100033938((v185 > 1), v186 + 1, 1, v180);
    }

    (*(v235 + 8))(v259, v227);
    sub_10002B894(v263, &unk_1009732A0);
    *(v180 + 2) = v186 + 1;
    v187 = &v180[2 * v186];
    *(v187 + 4) = v184;
    *(v187 + 40) = 0;
    goto LABEL_180;
  }

  v188 = LockupMediaLayout.DisplayType.numberOfViews.getter();
  v189 = sub_1001B9B24(v265, v266, v188, 0);
  static LockupMediaLayout.mediaSize(using:fitting:with:)();
  v149 = v189;
  if (!(v189 >> 62))
  {
    result = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v235 + 8))(v259, v227);
    sub_10002B894(v263, &unk_1009732A0);
    v180 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v203 = v149;
  result = _CocoaArrayWrapper.endIndex.getter();
  v149 = v203;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v247 = v124;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v190 = 0;
  v258 = (v149 & 0xC000000000000001);
  v191 = (v136 + 88);
  LODWORD(v257) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v249) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v253 = (v136 + 8);
  v180 = _swiftEmptyArrayStorage;
  v255 = result;
  v256 = v149;
  while (2)
  {
    if (v258)
    {
      v182 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v182 = *(v149 + 8 * v190 + 32);
    }

    v192 = v226;
    (v264)(v128, v127, v226);
    v193 = (*v191)(v128, v192);
    if (v193 == v257)
    {
      (*v253)(v128, v192);
      goto LABEL_147;
    }

    if (v193 != v249)
    {
      v194 = dispatch thunk of Artwork.isLandscape.getter();
      (*v253)(v128, v226);
      if (v266)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v265)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v194 = 0;
    if (!v266)
    {
      goto LABEL_148;
    }

LABEL_151:
    v179 = v266;
    v196 = Trailers.videos.getter();
    if (!(v196 >> 62))
    {
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v265)
      {
LABEL_162:
        v195 = 0;
LABEL_163:
        type metadata accessor for Screenshots();
        v200 = v260;
        sub_10061B788(v195, v260);

        CGSize.subtracting(insets:)();
        v198 = Artwork.config(_:mode:prefersLayeredImage:)();
        sub_1001BABC8(v200);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_100033938(0, *(v180 + 2) + 1, 1, v180);
        }

        v140 = *(v180 + 2);
        v201 = *(v180 + 3);
        if (v140 >= v201 >> 1)
        {
          v180 = sub_100033938((v201 > 1), v140 + 1, 1, v180);
        }

        ++v190;

        *(v180 + 2) = v140 + 1;
        v202 = &v180[2 * v140];
        *(v202 + 4) = v198;
        *(v202 + 40) = v194 & 1;
        v149 = v256;
        v128 = v230;
        if (v255 == v190)
        {

          (*(v235 + 8))(v259, v227);
          sub_10002B894(v263, &unk_1009732A0);
          v136 = v250;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v179 = v196;
  v199 = _CocoaArrayWrapper.endIndex.getter();
  v196 = v179;
  if (!v199)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v196 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_156;
  }

  v181 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v181)
  {

LABEL_156:

    type metadata accessor for Artwork();
    Video.preview.getter();
    v197 = static Artwork.== infix(_:_:)();

    if (v197)
    {
      v198 = Artwork.config(_:mode:prefersLayeredImage:)();

      v127 = v262;
      goto LABEL_164;
    }

    v127 = v262;
    if (!v265)
    {
      goto LABEL_162;
    }

LABEL_149:
    v195 = Screenshots.mediaPlatform.getter();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v180 = sub_100033938((v181 > 1), v182, 1, v180);
LABEL_132:

  (*(v235 + 8))(v259, v227);
  sub_10002B894(v263, &unk_1009732A0);
  *(v180 + 2) = v182;
  v183 = &v180[2 * v140];
  *(v183 + 4) = v179;
  *(v183 + 40) = 0;
  v136 = v128;
LABEL_180:
  v204 = *(v180 + 2);
  if (v204)
  {
    v310[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v205 = 32;
    do
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v205 += 16;
      --v204;
    }

    while (v204);
    swift_unknownObjectRelease();

    (*(v136 + 8))(v262, v226);
    v206 = v310[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v136 + 8))(v127, v226);
    v206 = _swiftEmptyArrayStorage;
  }

  sub_100394974(v206);
  (*(v236 + 8))(v254, v237);
  v58 = v272;
LABEL_53:
  ArtworkLoader.prefetchArtwork(using:)(v314);

  return (*(v269 + 8))(v58, v270);
}